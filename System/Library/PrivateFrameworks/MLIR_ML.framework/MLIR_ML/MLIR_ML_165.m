uint64_t mlir::presburger::computeSingleVarRepr(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, _DWORD *a6)
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = vaddvq_s32(*(a1 + 8));
  v37 = v39;
  v38 = 0x800000000;
  v9 = (v8 + 1);
  if (v8 == -1)
  {
    v9 = 0;
    v10 = v39;
  }

  else
  {
    if (v9 >= 9)
    {
      llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
    }

    v11 = v39;
    do
    {
      *v11 = 0;
      *(v11++ + 2) = 0;
    }

    while (v11 != &v39[v9]);
    v10 = v37;
    LODWORD(v38) = v8 + 1;
  }

  v35 = 0;
  v36 = 0;
  v12 = mlir::presburger::computeSingleVarRepr(a1, a2, a3, a4, v10, v9, &v35);
  v13 = v37;
  v14 = v38;
  __src = v34;
  v33 = 0x800000000;
  v15 = v34;
  if (v38)
  {
    if (v38 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v16 = v34;
    bzero(v34, 8 * v38);
    LODWORD(v33) = v14;
    v17 = 16 * v14;
    do
    {
      while (v13[2])
      {
        *v16++ = llvm::detail::SlowDynamicAPInt::operator long long(v13);
        v13 += 4;
        v17 -= 16;
        if (!v17)
        {
          goto LABEL_15;
        }
      }

      v18 = *v13;
      v13 += 4;
      *v16++ = v18;
      v17 -= 16;
    }

    while (v17);
LABEL_15:
    v15 = __src;
  }

  if (&__src != a5)
  {
    if (v15 != v34)
    {
      if (*a5 != a5 + 16)
      {
        free(*a5);
        v15 = __src;
      }

      *a5 = v15;
      *(a5 + 8) = v33;
      __src = v34;
      HIDWORD(v33) = 0;
      goto LABEL_30;
    }

    v19 = v33;
    v20 = *(a5 + 8);
    if (v20 >= v33)
    {
      if (v33)
      {
        memmove(*a5, v15, 8 * v33);
      }

      goto LABEL_29;
    }

    if (*(a5 + 12) < v33)
    {
      *(a5 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v20)
    {
      memmove(*a5, v15, 8 * v20);
      v21 = v33 - v20;
      if (v33 == v20)
      {
LABEL_29:
        *(a5 + 8) = v19;
LABEL_30:
        LODWORD(v33) = 0;
        v15 = __src;
        goto LABEL_31;
      }
    }

    else
    {
      v20 = 0;
      v21 = v33;
      if (!v33)
      {
        goto LABEL_29;
      }
    }

    memcpy((*a5 + 8 * v20), __src + 8 * v20, 8 * v21);
    goto LABEL_29;
  }

LABEL_31:
  if (v15 != v34)
  {
    free(v15);
  }

  if (v36)
  {
    v22 = llvm::detail::SlowDynamicAPInt::operator long long(&v35);
    v23 = v36;
    *a6 = v22;
    if (v23 > 0x40 && v35)
    {
      MEMORY[0x259C63150](v35, 0x1000C8000313F17);
    }
  }

  else
  {
    *a6 = v35;
  }

  v24 = v37;
  if (v38)
  {
    v25 = (v37 + 16 * v38 - 8);
    v26 = -16 * v38;
    v27 = v25;
    do
    {
      v29 = *v27;
      v27 -= 4;
      v28 = v29;
      if (v29)
      {
        if (v28 >= 0x41)
        {
          v30 = *(v25 - 1);
          if (v30)
          {
            MEMORY[0x259C63150](v30, 0x1000C8000313F17);
          }
        }
      }

      v25 = v27;
      v26 += 16;
    }

    while (v26);
    v24 = v37;
  }

  if (v24 != v39)
  {
    free(v24);
  }

  return v12;
}

uint64_t mlir::presburger::getInt64Vec@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a3 + 2;
  *a3 = a3 + 2;
  a3[1] = 0x800000000;
  if (a2)
  {
    v6 = result;
    if (a2 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(v4, 8 * a2);
    *(a3 + 2) = a2;
    v7 = 16 * a2;
    do
    {
      while (v6[2])
      {
        result = llvm::detail::SlowDynamicAPInt::operator long long(v6);
        *v4++ = result;
        v6 += 4;
        v7 -= 16;
        if (!v7)
        {
          return result;
        }
      }

      v8 = *v6;
      v6 += 4;
      result = v8;
      *v4++ = v8;
      v7 -= 16;
    }

    while (v7);
  }

  return result;
}

uint64_t mlir::presburger::getSubrangeBitVector@<X0>(uint64_t this@<X0>, char a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  if (this > 0x39)
  {
    operator new();
  }

  *a4 = (this << 58) | 1;
  if (a3)
  {
    *a4 = (this << 58) | 1 | (2 * ((((1 << (a3 + a2)) + (-1 << a2)) | (((this << 58) | 1uLL) >> 1)) & ~(-1 << (((this << 58) | 1uLL) >> 58))));
  }

  return this;
}

void mlir::presburger::mergeLocalVars(unsigned int *a1, unsigned int *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = a1[5];
  (*(*a1 + 24))(a1, 1, v4, a2[5]);
  (*(*a2 + 24))(a2, 1, 0, v4);
  mlir::presburger::IntegerRelation::getLocalReprs(a1);
}

uint64_t mlir::presburger::DivisionRepr::removeDuplicateDivs(uint64_t result)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *result;
  if (v1)
  {
    v2 = result;
    v3 = 0;
    for (i = 0; i != v1; ++i)
    {
      result = *(v2 + 288) + v3;
      if (*(result + 8))
      {
        result = llvm::detail::operator==(result, 0);
        if ((result & 1) == 0)
        {
LABEL_6:
          mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
        }
      }

      else if (*result)
      {
        goto LABEL_6;
      }

      v3 += 16;
    }

    v5 = *v2;
    if (*v2)
    {
      for (j = 0; j < v5; ++j)
      {
        result = *(v2 + 288) + 16 * j;
        if (*(result + 8))
        {
          result = llvm::detail::operator==(result, 0);
          v5 = *v2;
          if (result)
          {
            continue;
          }
        }

        else if (!*result)
        {
          continue;
        }

        v7 = j + 1;
        if (j + 1 < v5)
        {
          do
          {
            v8 = *(v2 + 288);
            result = v8 + 16 * v7;
            if (*(result + 8))
            {
              result = llvm::detail::operator==(result, 0);
              if (result)
              {
                goto LABEL_39;
              }

              v12 = *(v2 + 288);
              v9 = (v12 + 16 * j);
              v10 = v12 + 16 * v7;
              v11 = *(v9 + 2);
              if (v11)
              {
LABEL_23:
                v18 = v11;
                if (v11 > 0x40)
                {
                  llvm::APInt::initSlowCase(&v17, v9);
                }

                v17 = *v9;
                v13 = *(v10 + 8);
                if (!v13)
                {
LABEL_31:
                  llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v15, *v10);
                  goto LABEL_32;
                }

LABEL_27:
                v16 = v13;
                if (v13 > 0x40)
                {
                  llvm::APInt::initSlowCase(&v15, v10);
                }

                v15 = *v10;
LABEL_32:
                result = llvm::detail::SlowDynamicAPInt::operator!=(&v17, &v15);
                v14 = result;
                if (v16 >= 0x41)
                {
                  result = v15;
                  if (v15)
                  {
                    result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
                  }
                }

                if (v18 >= 0x41)
                {
                  result = v17;
                  if (v17)
                  {
                    result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
                  }
                }

                if ((v14 & 1) == 0)
                {
LABEL_20:
                  mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
                }

                goto LABEL_39;
              }
            }

            else
            {
              if (!*result)
              {
                goto LABEL_39;
              }

              v9 = (v8 + 16 * j);
              v10 = v8 + 16 * v7;
              v11 = *(v9 + 2);
              if (v11)
              {
                goto LABEL_23;
              }
            }

            if (*(v10 + 8))
            {
              llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v17, *v9);
              v13 = *(v10 + 8);
              if (!v13)
              {
                goto LABEL_31;
              }

              goto LABEL_27;
            }

            if (*v9 == *v10)
            {
              goto LABEL_20;
            }

LABEL_39:
            ++v7;
            v5 = *v2;
          }

          while (v7 < *v2);
        }
      }
    }
  }

  return result;
}

unsigned int *mlir::presburger::getDivUpperBound@<X0>(const llvm::APInt *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, llvm::APInt **a5@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  *a5 = (a5 + 2);
  a5[1] = 0x800000000;
  if (((16 * a2) >> 4) >= 9)
  {
    llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
  }

  v8 = 0;
  if (a2)
  {
    v9 = *a5;
    v10 = 16 * a2;
    do
    {
      *v9 = *a1;
      *(v9 + 2) = 0;
      v11 = *(a1 + 2);
      if (v11)
      {
        *(v9 + 2) = v11;
        if (v11 > 0x40)
        {
          llvm::APInt::initSlowCase(v9, a1);
        }

        *v9 = *a1;
      }

      a1 = (a1 + 16);
      v9 = (v9 + 16);
      v10 -= 16;
    }

    while (v10);
    v8 = *(a5 + 2);
  }

  *(a5 + 2) = v8 + a2;
  if (*(a3 + 8) || *a3 == 0x8000000000000000)
  {
    mlir::presburger::operator-(a3);
  }

  else
  {
    v15 = -*a3;
    v16 = 0;
  }

  result = (*a5 + 16 * a4);
  if (v16)
  {
    result = mlir::presburger::detail::computeUnimodularConeGeneratingFunction(result, v16, &v15);
    v13 = v16;
    if (!v16)
    {
      return result;
    }
  }

  else if (result[2] > 0x40 && *result)
  {
    v14 = *a5 + 16 * a4;
    MEMORY[0x259C63150](*result, 0x1000C8000313F17);
    result = v14;
    *v14 = v15;
    *(v14 + 8) = 0;
    v13 = v16;
    if (!v16)
    {
      return result;
    }
  }

  else
  {
    *result = v15;
    result[2] = 0;
    v13 = v16;
    if (!v16)
    {
      return result;
    }
  }

  if (v13 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      return MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  return result;
}

void *mlir::presburger::getDivLowerBound@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, unsigned int a4@<W3>, void *a5@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = (a5 + 2);
  *a5 = a5 + 2;
  a5[1] = 0x800000000;
  if (a2)
  {
    if (a2 >= 9)
    {
      llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
    }

    v9 = (a5 + 2);
    do
    {
      *v9 = 0;
      v9[2] = 0;
      v9 += 4;
    }

    while (v9 != &v8[4 * a2]);
    v8 = *a5;
    *(a5 + 2) = a2;
  }

  std::transform[abi:nn200100]<llvm::DynamicAPInt *,llvm::DynamicAPInt *,std::negate<llvm::DynamicAPInt>>(a1, a1 + 16 * a2, v8);
  result = (*a5 + 16 * a4);
  v11 = *(a3 + 2);
  if (v11)
  {
    result = llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(result, v11, a3);
    v24 = 1;
    v25 = 0;
    if (*(a3 + 2))
    {
      goto LABEL_33;
    }
  }

  else
  {
    v12 = *a3;
    if (*(result + 2) > 0x40u && *result)
    {
      v17 = result;
      MEMORY[0x259C63150](*result, 0x1000C8000313F17);
      result = v17;
    }

    *result = v12;
    *(result + 2) = 0;
    v24 = 1;
    v25 = 0;
    if (*(a3 + 2))
    {
      goto LABEL_33;
    }
  }

  if (!__OFSUB__(*a3, 1))
  {
    v22 = *a3 - 1;
    v23 = 0;
    goto LABEL_12;
  }

LABEL_33:
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a3, &v20);
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v24, &v18);
  result = llvm::detail::SlowDynamicAPInt::operator-(&v20, &v18, &v26);
  v23 = v27;
  if (v27 > 0x40)
  {
    llvm::APInt::initSlowCase(&v22, &v26);
  }

  v22 = v26;
  if (v19 >= 0x41)
  {
    result = v18;
    if (v18)
    {
      result = MEMORY[0x259C63150](v18, 0x1000C8000313F17);
    }
  }

  if (v21 >= 0x41)
  {
    result = v20;
    if (v20)
    {
      result = MEMORY[0x259C63150](v20, 0x1000C8000313F17);
    }
  }

LABEL_12:
  if (v25 > 0x40)
  {
    result = v24;
    if (v24)
    {
      result = MEMORY[0x259C63150](v24, 0x1000C8000313F17);
    }
  }

  v13 = *a5 + 16 * *(a5 + 2);
  v14 = (v13 - 16);
  if (!(*(v13 - 8) | v23))
  {
    if (!__OFADD__(*v14, v22))
    {
      *v14 += v22;
      goto LABEL_16;
    }

    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v13 - 16, &v18);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v22, &v24);
    result = llvm::detail::SlowDynamicAPInt::operator+(&v18, &v24, &v20);
    v15 = v21;
    v27 = v21;
    if (v21 > 0x40)
    {
      llvm::APInt::initSlowCase(&v26, &v20);
    }

    v26 = v20;
    if (v21)
    {
      goto LABEL_40;
    }

LABEL_20:
    v16 = v26;
    if (*(v13 - 8) > 0x40u)
    {
      result = *v14;
      if (*v14)
      {
        result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
      }
    }

    *(v13 - 16) = v16;
    *(v13 - 8) = 0;
    goto LABEL_22;
  }

  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v13 - 16, &v18);
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v22, &v24);
  result = llvm::detail::SlowDynamicAPInt::operator+(&v18, &v24, &v20);
  v15 = v21;
  v27 = v21;
  if (v21 > 0x40)
  {
    llvm::APInt::initSlowCase(&v26, &v20);
  }

  v26 = v20;
  if (!v21)
  {
    goto LABEL_20;
  }

LABEL_40:
  if (*(v13 - 8))
  {
    result = llvm::detail::SlowDynamicAPInt::operator=((v13 - 16), &v26);
  }

  else
  {
    *(v13 - 8) = v15;
    if (v15 > 0x40)
    {
      llvm::APInt::initSlowCase((v13 - 16), &v26);
    }

    *v14 = v26;
  }

LABEL_22:
  if (v27 > 0x40)
  {
    result = v26;
    if (v26)
    {
      result = MEMORY[0x259C63150](v26, 0x1000C8000313F17);
    }
  }

  if (v21 >= 0x41)
  {
    result = v20;
    if (v20)
    {
      result = MEMORY[0x259C63150](v20, 0x1000C8000313F17);
    }
  }

  if (v25 >= 0x41)
  {
    result = v24;
    if (v24)
    {
      result = MEMORY[0x259C63150](v24, 0x1000C8000313F17);
    }
  }

  if (v19 >= 0x41)
  {
    result = v18;
    if (v18)
    {
      result = MEMORY[0x259C63150](v18, 0x1000C8000313F17);
    }
  }

LABEL_16:
  if (v23 > 0x40)
  {
    result = v22;
    if (v22)
    {
      return MEMORY[0x259C63150](v22, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::presburger::gcdRange@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  *(a3 + 8) = 0;
  if (a2)
  {
    v3 = result + 16 * a2;
    while (1)
    {
      if (*(result + 8))
      {
        v6 = a3;
        v7 = result;
        if (llvm::detail::operator>=(result, 0))
        {
          result = v7;
          a3 = v6;
          v37 = *v7;
          v38 = 0;
          v5 = *(v7 + 8);
          if (!v5)
          {
            goto LABEL_25;
          }

          goto LABEL_6;
        }

        result = v7;
        if (*(v7 + 8))
        {
          llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v7, &v33);
          llvm::detail::SlowDynamicAPInt::operator-(&v33, &v35);
          v38 = v36;
          if (v36 > 0x40)
          {
            llvm::APInt::initSlowCase(&v37, &v35);
          }

          v37 = v35;
          a3 = v6;
          if (v34 >= 0x41 && v33)
          {
            MEMORY[0x259C63150](v33, 0x1000C8000313F17);
            a3 = v6;
          }

          result = v7;
          if (!(*(a3 + 8) | v38))
          {
LABEL_26:
            v8 = *a3;
            v9 = v37;
            if (*a3 == 0x8000000000000000)
            {
              v10 = 0;
            }

            else
            {
              v10 = -v8;
            }

            if (v8 >= 0)
            {
              v10 = *a3;
            }

            if (v37 == 0x8000000000000000)
            {
              v11 = 0;
            }

            else
            {
              v11 = -v37;
            }

            if (v37 < 0)
            {
              v9 = v11;
            }

            if (v10 >= v9)
            {
              v12 = v9;
            }

            else
            {
              v12 = v10;
            }

            if (v10 > v9)
            {
              v9 = v10;
            }

            if (v12)
            {
              v13 = v9 % v12;
              if (v13)
              {
                v14 = v13 >> __clz(__rbit64(v13));
                v15 = v12;
                do
                {
                  v16 = v15 >> __clz(__rbit64(v15));
                  v15 = v16 - v14;
                  if (v14 > v16)
                  {
                    v15 = v14 - v16;
                  }

                  if (v14 >= v16)
                  {
                    v14 = v16;
                  }
                }

                while (v15);
                v12 = v14 << __clz(__rbit64(v13 | v12));
              }
            }

            else
            {
              v12 = v9;
            }

            v39 = v12;
            v40 = 0;
LABEL_52:
            v17 = v39;
            if (*(a3 + 8) > 0x40u && *a3)
            {
              v24 = result;
              v25 = a3;
              MEMORY[0x259C63150](*a3, 0x1000C8000313F17);
              a3 = v25;
              result = v24;
            }

            *a3 = v17;
            *(a3 + 8) = 0;
            goto LABEL_54;
          }

          goto LABEL_76;
        }

        v4 = *v7;
        a3 = v6;
      }

      else
      {
        v4 = *result;
        if ((*result & 0x8000000000000000) == 0)
        {
          v37 = *result;
          v38 = 0;
          v5 = *(result + 8);
          if (!v5)
          {
            goto LABEL_25;
          }

LABEL_6:
          v38 = v5;
          if (v5 > 0x40)
          {
            llvm::APInt::initSlowCase(&v37, result);
          }

          v37 = *result;
          if (!(*(a3 + 8) | v38))
          {
            goto LABEL_26;
          }

          goto LABEL_76;
        }
      }

      if (v4 != 0x8000000000000000)
      {
        v37 = -v4;
        v38 = 0;
LABEL_25:
        if (!(*(a3 + 8) | v38))
        {
          goto LABEL_26;
        }

        goto LABEL_76;
      }

      v26 = a3;
      v27 = result;
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(result, &v33);
      llvm::detail::SlowDynamicAPInt::operator-(&v33, &v35);
      v38 = v36;
      if (v36 > 0x40)
      {
        llvm::APInt::initSlowCase(&v37, &v35);
      }

      v37 = v35;
      if (v34 >= 0x41 && v33)
      {
        MEMORY[0x259C63150](v33, 0x1000C8000313F17);
      }

      result = v27;
      a3 = v26;
      if (!(*(v26 + 8) | v38))
      {
        goto LABEL_26;
      }

LABEL_76:
      v28 = result;
      v29 = a3;
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a3, &v33);
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v37, &v31);
      llvm::detail::gcd(&v33, &v31, &v35);
      v40 = v36;
      if (v36 > 0x40)
      {
        llvm::APInt::initSlowCase(&v39, &v35);
      }

      v39 = v35;
      if (v32 >= 0x41 && v31)
      {
        MEMORY[0x259C63150](v31, 0x1000C8000313F17);
      }

      if (v34 >= 0x41 && v33)
      {
        MEMORY[0x259C63150](v33, 0x1000C8000313F17);
      }

      v30 = v40;
      result = v28;
      a3 = v29;
      if (!v40)
      {
        goto LABEL_52;
      }

      if (v29[2])
      {
        llvm::detail::SlowDynamicAPInt::operator=(v29, &v39);
        a3 = v29;
        result = v28;
      }

      else
      {
        v29[2] = v40;
        if (v30 > 0x40)
        {
          llvm::APInt::initSlowCase(v29, &v39);
        }

        *v29 = v39;
      }

LABEL_54:
      if (v40 > 0x40 && v39)
      {
        v18 = result;
        v19 = a3;
        MEMORY[0x259C63150](v39, 0x1000C8000313F17);
        a3 = v19;
        result = v18;
      }

      if (v38 > 0x40 && v37)
      {
        v20 = result;
        v21 = a3;
        MEMORY[0x259C63150](v37, 0x1000C8000313F17);
        a3 = v21;
        result = v20;
      }

      if (*(a3 + 8))
      {
        v22 = result;
        v23 = a3;
        result = llvm::detail::operator==(a3, 1);
        if (result)
        {
          return result;
        }

        a3 = v23;
        result = v22 + 16;
        if (v22 + 16 == v3)
        {
          return result;
        }
      }

      else
      {
        if (*a3 == 1)
        {
          return result;
        }

        result += 16;
        if (result == v3)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::presburger::normalizeRange@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v25 = *MEMORY[0x277D85DE8];
  result = mlir::presburger::gcdRange(a1, a2, a3);
  if (*(a3 + 8))
  {
    result = llvm::detail::operator==(a3, 0);
    if (result)
    {
      return result;
    }

    if (*(a3 + 8))
    {
      result = llvm::detail::operator==(a3, 1);
      if (result)
      {
        return result;
      }
    }

    else if (*a3 == 1)
    {
      return result;
    }
  }

  else if (*a3 < 2uLL)
  {
    return result;
  }

  if (a2)
  {
    v7 = 16 * a2;
    while (!(v4[2] | *(a3 + 8)))
    {
      v8 = *a3;
      if (*v4 == 0x8000000000000000 && v8 == -1)
      {
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v4, &v19);
        result = llvm::detail::SlowDynamicAPInt::operator-(&v19, &v23);
        v22 = v24;
        if (v24 > 0x40)
        {
          llvm::APInt::initSlowCase(&v21, &v23);
        }

        v21 = v23;
        if (v20 >= 0x41)
        {
          result = v19;
          if (v19)
          {
            result = MEMORY[0x259C63150](v19, 0x1000C8000313F17);
          }
        }

        v13 = v22;
        if (v22)
        {
          if (v4[2])
          {
            result = llvm::detail::SlowDynamicAPInt::operator=(v4, &v21);
          }

          else
          {
            v4[2] = v22;
            if (v13 > 0x40)
            {
              llvm::APInt::initSlowCase(v4, &v21);
            }

            *v4 = v21;
          }
        }

        else
        {
          v14 = v21;
          if (v4[2] > 0x40)
          {
            result = *v4;
            if (*v4)
            {
              v16 = v21;
              result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
              v14 = v16;
            }
          }

          *v4 = v14;
          v4[2] = 0;
        }

        v12 = v22;
        if (!v22)
        {
          goto LABEL_11;
        }

        goto LABEL_27;
      }

      *v4 /= v8;
LABEL_11:
      v4 += 4;
      v7 -= 16;
      if (!v7)
      {
        return result;
      }
    }

    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v4, &v21);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a3, &v17);
    result = llvm::detail::SlowDynamicAPInt::operator/(&v21, &v17, &v19);
    v10 = v20;
    v24 = v20;
    if (v20 > 0x40)
    {
      llvm::APInt::initSlowCase(&v23, &v19);
    }

    v23 = v19;
    if (v20)
    {
      if (v4[2])
      {
        result = llvm::detail::SlowDynamicAPInt::operator=(v4, &v23);
      }

      else
      {
        v4[2] = v20;
        if (v10 > 0x40)
        {
          llvm::APInt::initSlowCase(v4, &v23);
        }

        *v4 = v23;
      }
    }

    else
    {
      v11 = v23;
      if (v4[2] > 0x40)
      {
        result = *v4;
        if (*v4)
        {
          v15 = v23;
          result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
          v11 = v15;
        }
      }

      *v4 = v11;
      v4[2] = 0;
    }

    if (v24 > 0x40)
    {
      result = v23;
      if (v23)
      {
        result = MEMORY[0x259C63150](v23, 0x1000C8000313F17);
      }
    }

    if (v20 >= 0x41)
    {
      result = v19;
      if (v19)
      {
        result = MEMORY[0x259C63150](v19, 0x1000C8000313F17);
      }
    }

    if (v18 >= 0x41)
    {
      result = v17;
      if (v17)
      {
        result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
      }
    }

    v12 = v22;
LABEL_27:
    if (v12 >= 0x41)
    {
      result = v21;
      if (v21)
      {
        result = MEMORY[0x259C63150](v21, 0x1000C8000313F17);
      }
    }

    goto LABEL_11;
  }

  return result;
}

void mlir::presburger::normalizeDiv(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = a1;
  v38 = *MEMORY[0x277D85DE8];
  mlir::presburger::gcdRange(a1, a2, &v32);
  if (v33 | a3[2])
  {
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v32, &v28);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a3, &v34);
    llvm::detail::gcd(&v28, &v34, &v36);
    v31 = v37;
    if (v37 > 0x40)
    {
      llvm::APInt::initSlowCase(&v30, &v36);
    }

    v30 = v36;
    if (v35 >= 0x41 && v34)
    {
      MEMORY[0x259C63150](v34, 0x1000C8000313F17);
    }

    if (v29 >= 0x41 && v28)
    {
      MEMORY[0x259C63150](v28, 0x1000C8000313F17);
    }

    if (v33 >= 0x41 && v32)
    {
      MEMORY[0x259C63150](v32, 0x1000C8000313F17);
    }
  }

  else
  {
    v6 = *a3;
    if (v32 == 0x8000000000000000)
    {
      v7 = 0;
    }

    else
    {
      v7 = -v32;
    }

    if (v32 >= 0)
    {
      v7 = v32;
    }

    if (v6 == 0x8000000000000000)
    {
      v8 = 0;
    }

    else
    {
      v8 = -v6;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      v6 = v8;
    }

    if (v7 >= v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = v7;
    }

    if (v7 > v6)
    {
      v6 = v7;
    }

    if (v9)
    {
      v10 = v6 % v9;
      if (v10)
      {
        v11 = v10 >> __clz(__rbit64(v10));
        v12 = v9;
        do
        {
          v13 = v12 >> __clz(__rbit64(v12));
          v12 = v13 - v11;
          if (v11 > v13)
          {
            v12 = v11 - v13;
          }

          if (v11 >= v13)
          {
            v11 = v13;
          }
        }

        while (v12);
        v9 = v11 << __clz(__rbit64(v10 | v9));
      }
    }

    else
    {
      v9 = v6;
    }

    v30 = v9;
    v31 = 0;
  }

  if (!v31)
  {
    if (v30 == 1)
    {
      return;
    }

LABEL_30:
    if (a2)
    {
      v14 = 16 * a2;
      while (!(v5[2] | v31))
      {
        if (*v5 == 0x8000000000000000 && v30 == -1)
        {
          llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v5, &v28);
          llvm::detail::SlowDynamicAPInt::operator-(&v28, &v36);
          v35 = v37;
          if (v37 > 0x40)
          {
            llvm::APInt::initSlowCase(&v34, &v36);
          }

          v34 = v36;
          if (v29 >= 0x41 && v28)
          {
            MEMORY[0x259C63150](v28, 0x1000C8000313F17);
          }

          v19 = v35;
          if (v35)
          {
            if (v5[2])
            {
              llvm::detail::SlowDynamicAPInt::operator=(v5, &v34);
            }

            else
            {
              v5[2] = v35;
              if (v19 > 0x40)
              {
                llvm::APInt::initSlowCase(v5, &v34);
              }

              *v5 = v34;
            }
          }

          else
          {
            v20 = v34;
            if (v5[2] > 0x40 && *v5)
            {
              v27 = v34;
              MEMORY[0x259C63150](*v5, 0x1000C8000313F17);
              v20 = v27;
            }

            *v5 = v20;
            v5[2] = 0;
          }

          v18 = v35;
          if (!v35)
          {
            goto LABEL_38;
          }

          goto LABEL_54;
        }

        *v5 /= v30;
LABEL_38:
        v5 += 4;
        v14 -= 16;
        if (!v14)
        {
          goto LABEL_84;
        }
      }

      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v5, &v34);
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v30, &v32);
      llvm::detail::SlowDynamicAPInt::operator/(&v34, &v32, &v28);
      v16 = v29;
      v37 = v29;
      if (v29 > 0x40)
      {
        llvm::APInt::initSlowCase(&v36, &v28);
      }

      v36 = v28;
      if (v29)
      {
        if (v5[2])
        {
          llvm::detail::SlowDynamicAPInt::operator=(v5, &v36);
        }

        else
        {
          v5[2] = v29;
          if (v16 > 0x40)
          {
            llvm::APInt::initSlowCase(v5, &v36);
          }

          *v5 = v36;
        }
      }

      else
      {
        v17 = v36;
        if (v5[2] > 0x40 && *v5)
        {
          v26 = v36;
          MEMORY[0x259C63150](*v5, 0x1000C8000313F17);
          v17 = v26;
        }

        *v5 = v17;
        v5[2] = 0;
      }

      if (v37 > 0x40 && v36)
      {
        MEMORY[0x259C63150](v36, 0x1000C8000313F17);
      }

      if (v29 >= 0x41 && v28)
      {
        MEMORY[0x259C63150](v28, 0x1000C8000313F17);
      }

      if (v33 >= 0x41 && v32)
      {
        MEMORY[0x259C63150](v32, 0x1000C8000313F17);
      }

      v18 = v35;
LABEL_54:
      if (v18 >= 0x41 && v34)
      {
        MEMORY[0x259C63150](v34, 0x1000C8000313F17);
      }

      goto LABEL_38;
    }

LABEL_84:
    if (a3[2] | v31)
    {
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a3, &v34);
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v30, &v32);
      llvm::detail::SlowDynamicAPInt::operator/(&v34, &v32, &v28);
      v21 = v29;
      v37 = v29;
      if (v29 > 0x40)
      {
        llvm::APInt::initSlowCase(&v36, &v28);
      }

      v36 = v28;
      if (v29)
      {
        if (a3[2])
        {
          llvm::detail::SlowDynamicAPInt::operator=(a3, &v36);
        }

        else
        {
          a3[2] = v29;
          if (v21 > 0x40)
          {
            llvm::APInt::initSlowCase(a3, &v36);
          }

          *a3 = v36;
        }
      }

      else
      {
        v22 = v36;
        if (a3[2] > 0x40 && *a3)
        {
          MEMORY[0x259C63150](*a3, 0x1000C8000313F17);
        }

        *a3 = v22;
        a3[2] = 0;
      }

      if (v37 > 0x40 && v36)
      {
        MEMORY[0x259C63150](v36, 0x1000C8000313F17);
      }

      if (v29 >= 0x41 && v28)
      {
        MEMORY[0x259C63150](v28, 0x1000C8000313F17);
      }

      if (v33 >= 0x41 && v32)
      {
        MEMORY[0x259C63150](v32, 0x1000C8000313F17);
      }

      v23 = v35;
    }

    else
    {
      if (*a3 != 0x8000000000000000 || v30 != -1)
      {
        *a3 /= v30;
        goto LABEL_88;
      }

      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a3, &v28);
      llvm::detail::SlowDynamicAPInt::operator-(&v28, &v36);
      v35 = v37;
      if (v37 > 0x40)
      {
        llvm::APInt::initSlowCase(&v34, &v36);
      }

      v34 = v36;
      if (v29 >= 0x41 && v28)
      {
        MEMORY[0x259C63150](v28, 0x1000C8000313F17);
      }

      v24 = v35;
      if (v35)
      {
        if (a3[2])
        {
          llvm::detail::SlowDynamicAPInt::operator=(a3, &v34);
        }

        else
        {
          a3[2] = v35;
          if (v24 > 0x40)
          {
            llvm::APInt::initSlowCase(a3, &v34);
          }

          *a3 = v34;
        }
      }

      else
      {
        v25 = v34;
        if (a3[2] > 0x40 && *a3)
        {
          MEMORY[0x259C63150](*a3, 0x1000C8000313F17);
        }

        *a3 = v25;
        a3[2] = 0;
      }

      v23 = v35;
      if (!v35)
      {
        goto LABEL_88;
      }
    }

    if (v23 >= 0x41 && v34)
    {
      MEMORY[0x259C63150](v34, 0x1000C8000313F17);
    }

    goto LABEL_88;
  }

  if (!llvm::detail::operator==(&v30, 1))
  {
    goto LABEL_30;
  }

LABEL_88:
  if (v31 > 0x40)
  {
    if (v30)
    {
      MEMORY[0x259C63150](v30, 0x1000C8000313F17);
    }
  }
}

llvm::APInt *mlir::presburger::getNegatedCoeffs@<X0>(llvm::APInt *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  v15 = *MEMORY[0x277D85DE8];
  *a3 = a3 + 16;
  *(a3 + 8) = 0x800000000;
  if (a2 >= 9)
  {
    llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
  }

  if (a2)
  {
    v5 = 16 * a2;
    while (1)
    {
      if (*(v3 + 8) || *v3 == 0x8000000000000000)
      {
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v3, &v9);
        llvm::detail::SlowDynamicAPInt::operator-(&v9, &v11);
        v14 = v12;
        if (v12 > 0x40)
        {
          llvm::APInt::initSlowCase(&v13, &v11);
        }

        v13 = v11;
        if (v10 >= 0x41 && v9)
        {
          MEMORY[0x259C63150](v9, 0x1000C8000313F17);
        }
      }

      else
      {
        v13 = -*v3;
        v14 = 0;
      }

      v6 = *(a3 + 8);
      if (v6 >= *(a3 + 12))
      {
        llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::growAndEmplaceBack<llvm::DynamicAPInt>();
      }

      result = (*a3 + 16 * v6);
      *result = v13;
      *(result + 2) = 0;
      v7 = v14;
      if (v14)
      {
        break;
      }

      ++*(a3 + 8);
      v8 = v14;
      if (v14)
      {
        goto LABEL_24;
      }

LABEL_11:
      v3 += 16;
      v5 -= 16;
      if (!v5)
      {
        return result;
      }
    }

    *(result + 2) = v14;
    if (v7 > 0x40)
    {
      llvm::APInt::initSlowCase(result, &v13);
    }

    *result = v13;
    ++*(a3 + 8);
    v8 = v14;
    if (!v14)
    {
      goto LABEL_11;
    }

LABEL_24:
    if (v8 >= 0x41)
    {
      result = v13;
      if (v13)
      {
        result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
      }
    }

    goto LABEL_11;
  }

  return result;
}

void mlir::presburger::getComplementIneq(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  *a3 = a3 + 16;
  *(a3 + 8) = 0x800000000;
  if (a2 >= 9)
  {
    llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
  }

  if (a2)
  {
    v5 = 16 * a2;
    while (1)
    {
      if (*(a1 + 8) || *a1 == 0x8000000000000000)
      {
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a1, &v14);
        llvm::detail::SlowDynamicAPInt::operator-(&v14, &v16);
        v23 = v17;
        if (v17 > 0x40)
        {
          llvm::APInt::initSlowCase(&v22, &v16);
        }

        v22 = v16;
        if (v15 >= 0x41 && v14)
        {
          MEMORY[0x259C63150](v14, 0x1000C8000313F17);
        }
      }

      else
      {
        v22 = -*a1;
        v23 = 0;
      }

      v6 = *(a3 + 8);
      if (v6 >= *(a3 + 12))
      {
        llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::growAndEmplaceBack<llvm::DynamicAPInt>();
      }

      v7 = (*a3 + 16 * v6);
      *v7 = v22;
      *(v7 + 2) = 0;
      v8 = v23;
      if (v23)
      {
        break;
      }

      ++*(a3 + 8);
      v9 = v23;
      if (v23)
      {
        goto LABEL_24;
      }

LABEL_11:
      a1 += 16;
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_27;
      }
    }

    *(v7 + 2) = v23;
    if (v8 > 0x40)
    {
      llvm::APInt::initSlowCase(v7, &v22);
    }

    *v7 = v22;
    ++*(a3 + 8);
    v9 = v23;
    if (!v23)
    {
      goto LABEL_11;
    }

LABEL_24:
    if (v9 >= 0x41 && v22)
    {
      MEMORY[0x259C63150](v22, 0x1000C8000313F17);
    }

    goto LABEL_11;
  }

LABEL_27:
  v10 = *a3 + 16 * *(a3 + 8);
  v11 = (v10 - 16);
  v20 = 1;
  v21 = 0;
  if (*(v10 - 8) || __OFSUB__(*v11, 1))
  {
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v10 - 16, &v14);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v20, &v22);
    llvm::detail::SlowDynamicAPInt::operator-(&v14, &v22, &v16);
    v19 = v17;
    if (v17 > 0x40)
    {
      llvm::APInt::initSlowCase(&v18, &v16);
    }

    v18 = v16;
    if (v23 >= 0x41 && v22)
    {
      MEMORY[0x259C63150](v22, 0x1000C8000313F17);
    }

    if (v15 >= 0x41 && v14)
    {
      MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    }
  }

  else
  {
    v18 = *v11 - 1;
    v19 = 0;
  }

  if (v21 > 0x40 && v20)
  {
    MEMORY[0x259C63150](v20, 0x1000C8000313F17);
  }

  if (v19)
  {
    mlir::presburger::detail::getNonOrthogonalVector((v10 - 8), v19, &v18, (v10 - 16));
    v13 = v19;
    if (!v19)
    {
      return;
    }
  }

  else
  {
    v12 = v18;
    if (*(v10 - 8) > 0x40u && *v11)
    {
      MEMORY[0x259C63150](*v11, 0x1000C8000313F17);
      *(v10 - 16) = v12;
      *(v10 - 8) = 0;
      v13 = v19;
      if (!v19)
      {
        return;
      }
    }

    else
    {
      *(v10 - 16) = v18;
      *(v10 - 8) = 0;
      v13 = v19;
      if (!v19)
      {
        return;
      }
    }
  }

  if (v13 >= 0x41)
  {
    if (v18)
    {
      MEMORY[0x259C63150](v18, 0x1000C8000313F17);
    }
  }
}

uint64_t mlir::presburger::DivisionRepr::divValuesAt@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  LOBYTE(v8) = 0;
  v10 = 0;
  *a2 = a2 + 2;
  a2[1] = 0x400000000;
  result = llvm::SmallVectorImpl<std::optional<llvm::DynamicAPInt>>::assign(a2, v4, &v8);
  if (v10 == 1 && v9 > 0x40)
  {
    result = v8;
    if (v8)
    {
      result = MEMORY[0x259C63150](v8, 0x1000C8000313F17);
    }
  }

  v6 = *a1;
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((*(*a2 + 24 * i + 16) & 1) == 0)
      {
        mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
      }
    }
  }

  return result;
}

const llvm::APInt *std::inner_product[abi:nn200100]<llvm::DynamicAPInt const*,llvm::DynamicAPInt const*,llvm::DynamicAPInt>@<X0>(const llvm::APInt *result@<X0>, llvm::APInt *a2@<X2>, llvm::APInt *a3@<X3>, const llvm::APInt *a4@<X1>, llvm::APInt *a5@<X8>)
{
  v81 = *MEMORY[0x277D85DE8];
  while (result != a4)
  {
    v5 = *(result + 2);
    if (v5)
    {
      v8 = a4;
      v9 = a5;
      v10 = a3;
      v74 = *(result + 2);
      if (v5 > 0x40)
      {
        llvm::APInt::initSlowCase(&v73, result);
      }

      v11 = result;
      v73 = *result;
    }

    else
    {
      if (!*(a2 + 2))
      {
        if ((*result * *a2) >> 64 == (*result * *a2) >> 63)
        {
          v77 = *result * *a2;
          v78 = 0;
        }

        else
        {
          v33 = a4;
          v34 = a5;
          v35 = a3;
          v36 = result;
          v37 = a2;
          llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(result, &v73);
          llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v37, &v71);
          llvm::detail::SlowDynamicAPInt::operator*(&v73, &v71, &v75);
          v78 = v76;
          if (v76 > 0x40)
          {
            llvm::APInt::initSlowCase(&v77, &v75);
          }

          v77 = v75;
          if (v72 >= 0x41 && v71)
          {
            MEMORY[0x259C63150](v71, 0x1000C8000313F17);
          }

          if (v74 >= 0x41 && v73)
          {
            MEMORY[0x259C63150](v73, 0x1000C8000313F17);
          }

          a3 = v35;
          a5 = v34;
          a2 = v37;
          a4 = v33;
          result = v36;
        }

        goto LABEL_6;
      }

      v8 = a4;
      v9 = a5;
      v10 = a3;
      v11 = result;
      v27 = a2;
      llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v73, *result);
      a2 = v27;
    }

    v43 = *(a2 + 2);
    if (v43)
    {
      v72 = *(a2 + 2);
      if (v43 > 0x40)
      {
        llvm::APInt::initSlowCase(&v71, a2);
      }

      v44 = a2;
      v71 = *a2;
    }

    else
    {
      v44 = a2;
      llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v71, *a2);
    }

    llvm::detail::SlowDynamicAPInt::operator*(&v73, &v71, &v75);
    v78 = v76;
    if (v76 > 0x40)
    {
      llvm::APInt::initSlowCase(&v77, &v75);
    }

    v77 = v75;
    a3 = v10;
    a5 = v9;
    a2 = v44;
    a4 = v8;
    result = v11;
    if (v72 >= 0x41 && v71)
    {
      v45 = v11;
      v46 = a4;
      v47 = a5;
      v48 = a2;
      MEMORY[0x259C63150](v71, 0x1000C8000313F17);
      result = v45;
      a4 = v46;
      a2 = v48;
      a5 = v47;
      a3 = v10;
    }

    if (v74 >= 0x41 && v73)
    {
      v49 = result;
      v50 = a4;
      v51 = a3;
      v52 = a5;
      v53 = a2;
      MEMORY[0x259C63150](v73, 0x1000C8000313F17);
      result = v49;
      a4 = v50;
      a2 = v53;
      a5 = v52;
      a3 = v51;
    }

LABEL_6:
    v6 = *(a3 + 2);
    if (v6)
    {
      v12 = result;
      v13 = a4;
      v14 = a2;
      v15 = a5;
      v74 = *(a3 + 2);
      if (v6 > 0x40)
      {
        llvm::APInt::initSlowCase(&v73, a3);
      }

      v16 = a3;
      v73 = *a3;
      goto LABEL_48;
    }

    if (v78)
    {
      v12 = result;
      v13 = a4;
      v14 = a2;
      v15 = a5;
      v16 = a3;
      llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v73, *a3);
LABEL_48:
      if (v78)
      {
        v72 = v78;
        if (v78 > 0x40)
        {
          llvm::APInt::initSlowCase(&v71, &v77);
        }

        v71 = v77;
      }

      else
      {
        llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v71, v77);
      }

      llvm::detail::SlowDynamicAPInt::operator+(&v73, &v71, &v75);
      v80 = v76;
      if (v76 > 0x40)
      {
        llvm::APInt::initSlowCase(&v79, &v75);
      }

      v79 = v75;
      a3 = v16;
      a5 = v15;
      a2 = v14;
      a4 = v13;
      result = v12;
      if (v72 >= 0x41 && v71)
      {
        v54 = v12;
        v55 = a4;
        v56 = v16;
        v57 = v15;
        v58 = a2;
        MEMORY[0x259C63150](v71, 0x1000C8000313F17);
        result = v54;
        a4 = v55;
        a2 = v58;
        a5 = v57;
        a3 = v56;
      }

      if (v74 >= 0x41 && v73)
      {
        v59 = result;
        v60 = a4;
        v61 = a3;
        v62 = a5;
        v63 = a2;
        MEMORY[0x259C63150](v73, 0x1000C8000313F17);
        result = v59;
        a4 = v60;
        a2 = v63;
        a5 = v62;
        a3 = v61;
      }

      goto LABEL_78;
    }

    if (!__OFADD__(*a3, v77))
    {
      v79 = *a3 + v77;
      v80 = 0;
      goto LABEL_10;
    }

    v38 = result;
    v39 = a4;
    v40 = a2;
    v41 = a5;
    v42 = a3;
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a3, &v73);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v77, &v71);
    llvm::detail::SlowDynamicAPInt::operator+(&v73, &v71, &v75);
    v80 = v76;
    if (v76 > 0x40)
    {
      llvm::APInt::initSlowCase(&v79, &v75);
    }

    v79 = v75;
    if (v72 >= 0x41 && v71)
    {
      MEMORY[0x259C63150](v71, 0x1000C8000313F17);
    }

    if (v74 >= 0x41 && v73)
    {
      MEMORY[0x259C63150](v73, 0x1000C8000313F17);
    }

    a3 = v42;
    a5 = v41;
    a2 = v40;
    a4 = v39;
    result = v38;
LABEL_78:
    v64 = v80;
    if (v80)
    {
      if (*(a3 + 2))
      {
        v65 = a4;
        v66 = result;
        v67 = a3;
        v68 = a5;
        v69 = a2;
        llvm::detail::SlowDynamicAPInt::operator=(a3, &v79);
        result = v66;
        a4 = v65;
        a2 = v69;
        a5 = v68;
        a3 = v67;
      }

      else
      {
        *(a3 + 2) = v80;
        if (v64 > 0x40)
        {
          llvm::APInt::initSlowCase(a3, &v79);
        }

        *a3 = v79;
      }

      goto LABEL_12;
    }

LABEL_10:
    v7 = v79;
    if (*(a3 + 2) > 0x40u && *a3)
    {
      v28 = result;
      v29 = a4;
      v30 = a3;
      v31 = a5;
      v32 = a2;
      MEMORY[0x259C63150](*a3, 0x1000C8000313F17);
      result = v28;
      a4 = v29;
      a2 = v32;
      a5 = v31;
      a3 = v30;
    }

    *a3 = v7;
    *(a3 + 2) = 0;
LABEL_12:
    if (v80 > 0x40 && v79)
    {
      v17 = result;
      v18 = a4;
      v19 = a3;
      v20 = a5;
      v21 = a2;
      MEMORY[0x259C63150](v79, 0x1000C8000313F17);
      result = v17;
      a4 = v18;
      a2 = v21;
      a5 = v20;
      a3 = v19;
    }

    if (v78 > 0x40 && v77)
    {
      v22 = result;
      v23 = a4;
      v24 = a3;
      v25 = a5;
      v26 = a2;
      MEMORY[0x259C63150](v77, 0x1000C8000313F17);
      result = v22;
      a4 = v23;
      a2 = v26;
      a5 = v25;
      a3 = v24;
    }

    result = (result + 16);
    a2 = (a2 + 16);
  }

  *a5 = *a3;
  *(a5 + 2) = 0;
  v70 = *(a3 + 2);
  if (v70)
  {
    *(a5 + 2) = v70;
    if (v70 >= 0x41)
    {
      llvm::APInt::initSlowCase(a5, a3);
    }
  }

  return result;
}

uint64_t mlir::presburger::DivisionRepr::normalizeDivs(uint64_t this)
{
  v1 = *this;
  if (v1)
  {
    v2 = this;
    v3 = 0;
    v4 = 0;
    v5 = 16 * v1;
    do
    {
      this = *(v2 + 288) + v4;
      if (*(this + 8))
      {
        this = llvm::detail::operator==(this, 0);
        if ((this & 1) == 0)
        {
LABEL_6:
          mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
        }
      }

      else if (*this)
      {
        goto LABEL_6;
      }

      v4 += 16;
      ++v3;
    }

    while (v5 != v4);
  }

  return this;
}

void *llvm::SmallVectorImpl<llvm::DynamicAPInt>::erase(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *a1 + 16 * v4;
  if (a2 + 2 != v5)
  {
    v6 = a2;
    do
    {
      while (1)
      {
        v7 = *(v6 + 6);
        if (!v7)
        {
          break;
        }

        v10 = a1;
        llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v6, v7, v6 + 2);
        a1 = v10;
        v11 = v6 + 4;
        v6 += 2;
        if (v11 == v5)
        {
          goto LABEL_11;
        }
      }

      v8 = v6[2];
      if (*(v6 + 2) > 0x40u && *v6)
      {
        v12 = a1;
        MEMORY[0x259C63150](*v6, 0x1000C8000313F17);
        a1 = v12;
      }

      *v6 = v8;
      *(v6 + 2) = 0;
      v9 = v6 + 4;
      v6 += 2;
    }

    while (v9 != v5);
LABEL_11:
    LODWORD(v4) = *(a1 + 2);
    v3 = *a1;
  }

  v13 = v4 - 1;
  *(a1 + 2) = v13;
  v14 = v3 + 16 * v13;
  if (*(v14 + 8) <= 0x40u || !*v14)
  {
    return a2;
  }

  MEMORY[0x259C63150](*v14, 0x1000C8000313F17);
  return a2;
}

unint64_t llvm::SmallVectorImpl<llvm::DynamicAPInt>::insert(uint64_t a1, unint64_t a2, unint64_t a3, llvm::APInt *a4)
{
  v5 = *a1;
  v6 = a2 - *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  v9 = *a1 + 16 * v7;
  v10 = v7 + a3;
  if (v9 == a2)
  {
    if (v10 > v8)
    {
      if (v5 > a4 || a2 <= a4)
      {
        llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
      }

      llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
    }

    v21 = *(a1 + 8);
    if (a3)
    {
      v22 = (v5 + 16 * v21);
      v23 = a3;
      do
      {
        *v22 = *a4;
        *(v22 + 2) = 0;
        v24 = *(a4 + 2);
        if (v24)
        {
          *(v22 + 2) = v24;
          if (v24 > 0x40)
          {
            llvm::APInt::initSlowCase(v22, a4);
          }

          *v22 = *a4;
        }

        v22 = (v22 + 16);
        --v23;
      }

      while (v23);
      LODWORD(v21) = *(a1 + 8);
      v5 = *a1;
    }

    *(a1 + 8) = v21 + a3;
    return v5 + v6;
  }

  else
  {
    if (v10 > v8)
    {
      if (v5 > a4 || v9 <= a4)
      {
        llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
      }

      llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
    }

    v11 = *a1;
    result = a2;
    v13 = *(a1 + 8);
    v14 = 16 * v13;
    v15 = (v11 + 16 * v13);
    v16 = (16 * v13 - v6) >> 4;
    v17 = v16 - a3;
    if (v16 >= a3)
    {
      v25 = 16 * a3;
      if (v13 + ((16 * a3) >> 4) > *(a1 + 12))
      {
        llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
      }

      v26 = (v15 - v25);
      if (a3)
      {
        v27 = 0;
        v28 = *a1 + 16 * v13;
        do
        {
          v29 = v28 + v27;
          *v29 = *&v26[v27 / 4];
          *(v29 + 8) = 0;
          v30 = v26[v27 / 4 + 2];
          if (v30)
          {
            *(v29 + 8) = v30;
            if (v30 > 0x40)
            {
              llvm::APInt::initSlowCase((v28 + v27), &v26[v27 / 4]);
            }

            *v29 = *&v26[v27 / 4];
          }

          v27 += 16;
        }

        while (v25 != v27);
        LODWORD(v13) = *(a1 + 8);
      }

      *(a1 + 8) = v13 + a3;
      if (v26 != a2)
      {
        v31 = v11 - 16 * a3;
        v32 = a2 + v25 - v5;
        do
        {
          while (1)
          {
            v33 = v11 + v14;
            v34 = v31 + v14;
            v35 = *(v31 + v14 - 8);
            if (!v35)
            {
              break;
            }

            v37 = (v33 - 16);
            v38 = result;
            v39 = a3;
            v40 = a4;
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::insert_one_impl<llvm::DynamicAPInt>(v11 + v14, v35, (v34 - 16), v37);
            result = v38;
            a3 = v39;
            a4 = v40;
            v31 -= 16;
            v11 -= 16;
            v32 += 16;
            if (v14 == v32)
            {
              goto LABEL_49;
            }
          }

          v36 = *(v34 - 16);
          if (*(v33 - 8) > 0x40u)
          {
            v41 = *(v33 - 16);
            if (v41)
            {
              v71 = result;
              v42 = a4;
              v43 = a3;
              MEMORY[0x259C63150](v41, 0x1000C8000313F17);
              result = v71;
              a3 = v43;
              a4 = v42;
            }
          }

          *(v33 - 16) = v36;
          *(v33 - 8) = 0;
          v31 -= 16;
          v11 -= 16;
          v32 += 16;
        }

        while (v14 != v32);
      }

LABEL_49:
      if (result <= a4)
      {
        if (a4 >= *a1 + 16 * *(a1 + 8))
        {
          v44 = 0;
        }

        else
        {
          v44 = a3;
        }

        a4 = (a4 + 16 * v44);
      }

      if (a3)
      {
        v45 = result;
        do
        {
          while (1)
          {
            while (1)
            {
              v46 = *(a4 + 2);
              if (!v46)
              {
                break;
              }

              v48 = result;
              v49 = a3;
              v50 = a4;
              llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v45, v46, a4);
              result = v48;
              a4 = v50;
              v45 += 2;
              a3 = v49 - 1;
              if (v49 == 1)
              {
                return result;
              }
            }

            v47 = *a4;
            if (*(v45 + 2) > 0x40u)
            {
              if (*v45)
              {
                break;
              }
            }

            *v45 = v47;
            *(v45 + 2) = 0;
            v45 += 2;
            if (!--a3)
            {
              return result;
            }
          }

          v51 = result;
          v52 = a4;
          v53 = a3;
          MEMORY[0x259C63150](*v45, 0x1000C8000313F17);
          result = v51;
          a4 = v52;
          *v45 = v47;
          *(v45 + 2) = 0;
          v45 += 2;
          a3 = v53 - 1;
        }

        while (v53 != 1);
      }
    }

    else
    {
      *(a1 + 8) = v13 + a3;
      if (v14 != v6)
      {
        v54 = 0;
        v55 = v11 + 16 * (v13 + a3) - 16 * v16;
        do
        {
          v56 = v55 + v54;
          v57 = (result + v54);
          *v56 = *(result + v54);
          *(v56 + 8) = 0;
          v58 = *(result + v54 + 8);
          if (v58)
          {
            *(v56 + 8) = v58;
            if (v58 > 0x40)
            {
              llvm::APInt::initSlowCase((v55 + v54), v57);
            }

            *v56 = *v57;
          }

          v54 += 16;
        }

        while (v14 - v6 != v54);
      }

      if (result <= a4)
      {
        if (a4 >= *a1 + 16 * *(a1 + 8))
        {
          v18 = 0;
        }

        else
        {
          v18 = a3;
        }

        a4 = (a4 + 16 * v18);
      }

      if (v14 != v6)
      {
        v59 = result;
        v60 = v16;
        do
        {
          while (1)
          {
            while (1)
            {
              v61 = *(a4 + 2);
              if (!v61)
              {
                break;
              }

              v63 = result;
              v64 = a3;
              v65 = a4;
              llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v59, v61, a4);
              result = v63;
              a3 = v64;
              a4 = v65;
              v59 += 2;
              if (!--v60)
              {
                goto LABEL_11;
              }
            }

            v62 = *a4;
            if (*(v59 + 2) > 0x40u)
            {
              if (*v59)
              {
                break;
              }
            }

            *v59 = v62;
            *(v59 + 2) = 0;
            v59 += 2;
            if (!--v60)
            {
              goto LABEL_11;
            }
          }

          v66 = result;
          v67 = a4;
          v68 = a3;
          MEMORY[0x259C63150](*v59, 0x1000C8000313F17);
          result = v66;
          a3 = v68;
          a4 = v67;
          *v59 = v62;
          *(v59 + 2) = 0;
          v59 += 2;
          --v60;
        }

        while (v60);
      }

LABEL_11:
      if (a3 != v16)
      {
        do
        {
          *v15 = *a4;
          *(v15 + 2) = 0;
          v19 = *(a4 + 2);
          if (v19)
          {
            *(v15 + 2) = v19;
            if (v19 > 0x40)
            {
              llvm::APInt::initSlowCase(v15, a4);
            }

            *v15 = *a4;
          }

          v15 = (v15 + 16);
        }

        while (!__CFADD__(v17++, 1));
      }
    }
  }

  return result;
}

void mlir::presburger::DivisionRepr::print(mlir::presburger::DivisionRepr *this, llvm::raw_ostream *a2)
{
  v2 = *(a2 + 4);
  if ((*(a2 + 3) - v2) > 0xA)
  {
    *(v2 + 7) = 171602788;
    *v2 = *"Dividends:\n";
    *(a2 + 4) += 11;
  }

  else
  {
    llvm::raw_ostream::write(a2, "Dividends:\n", 0xBuLL);
  }

  mlir::presburger::Matrix<llvm::DynamicAPInt>::print();
}

void mlir::presburger::DivisionRepr::dump(mlir::presburger::DivisionRepr *this)
{
  v2 = llvm::errs(this);

  mlir::presburger::DivisionRepr::print(this, v2);
}

void *mlir::presburger::getDynamicAPIntVec@<X0>(void *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a3 + 2;
  *a3 = a3 + 2;
  a3[1] = 0x800000000;
  if (a2)
  {
    if (a2 >= 9)
    {
      llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
    }

    v4 = &v3[2 * a2];
    do
    {
      *v3 = 0;
      *(v3 + 2) = 0;
      v3 += 2;
    }

    while (v3 != v4);
    v5 = *a3;
    *(a3 + 2) = a2;
    v6 = 8 * a2;
    v7 = (v5 + 8);
    do
    {
      v8 = *result;
      if (*v7 > 0x40u)
      {
        if (*(v7 - 1))
        {
          v9 = result;
          MEMORY[0x259C63150](*(v7 - 1), 0x1000C8000313F17);
          result = v9;
        }
      }

      *(v7 - 1) = v8;
      *v7 = 0;
      v7 += 4;
      ++result;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t *mlir::presburger::dotProduct@<X0>(uint64_t *a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = 1;
  v11 = 0;
  v14 = 0;
  v15 = 0;
  result = mlir::presburger::Fraction::Fraction(a4, &v14, &v10);
  if (v15 > 0x40)
  {
    result = v14;
    if (v14)
    {
      result = MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    }
  }

  if (v11 > 0x40)
  {
    result = v10;
    if (v10)
    {
      result = MEMORY[0x259C63150](v10, 0x1000C8000313F17);
    }
  }

  v9 = a2;
  if (a2)
  {
    do
    {
      mlir::presburger::operator*(a1, a3, &v10);
      mlir::presburger::operator+(a4, &v10, &v14);
      result = mlir::presburger::Fraction::operator=(a4, &v14);
      if (v17 > 0x40)
      {
        result = v16;
        if (v16)
        {
          result = MEMORY[0x259C63150](v16, 0x1000C8000313F17);
        }
      }

      if (v15 > 0x40)
      {
        result = v14;
        if (v14)
        {
          result = MEMORY[0x259C63150](v14, 0x1000C8000313F17);
        }
      }

      if (v13 > 0x40)
      {
        result = v12;
        if (v12)
        {
          result = MEMORY[0x259C63150](v12, 0x1000C8000313F17);
        }
      }

      if (v11 > 0x40)
      {
        result = v10;
        if (v10)
        {
          result = MEMORY[0x259C63150](v10, 0x1000C8000313F17);
        }
      }

      a1 += 4;
      a3 += 4;
      --v9;
    }

    while (v9);
  }

  return result;
}

void mlir::presburger::multiplyPolynomials(int a1@<W1>, int a2@<W3>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2 + a1 != 1)
  {
    operator new();
  }
}

uint64_t mlir::presburger::isRangeZero(uint64_t *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  v3 = 32 * a2 - 32;
  do
  {
    v11 = 1;
    v12 = 0;
    v17 = 0;
    v18 = 0;
    mlir::presburger::Fraction::Fraction(&v13, &v17, &v11);
    if (v18 > 0x40 && v17)
    {
      MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }

    v4 = mlir::presburger::compare(a1, &v13);
    if (v16 > 0x40 && v15)
    {
      v7 = v4;
      MEMORY[0x259C63150](v15, 0x1000C8000313F17);
      v4 = v7;
    }

    if (v14 > 0x40 && v13)
    {
      v8 = v4;
      MEMORY[0x259C63150](v13, 0x1000C8000313F17);
      v4 = v8;
    }

    if (v12 > 0x40 && v11)
    {
      v9 = v4;
      MEMORY[0x259C63150](v11, 0x1000C8000313F17);
      v4 = v9;
    }

    v5 = v4 == 0;
    if (v4)
    {
      break;
    }

    a1 += 4;
    v6 = v3;
    v3 -= 32;
  }

  while (v6);
  return v5;
}

uint64_t *normalizeDivisionByGCD(uint64_t *result, uint64_t a2, llvm::APInt *a3)
{
  v103 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return result;
  }

  if (*(result + 2))
  {
    v74 = a2;
    v75 = a3;
    v76 = result;
    if (llvm::detail::operator>=(result, 0))
    {
      result = v76;
      v77 = *(v76 + 2);
      v97 = *v76;
      v98 = 0;
      a3 = v75;
      a2 = v74;
      if (v77)
      {
        v98 = v77;
        if (v77 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v97, v76);
        }
      }

      goto LABEL_7;
    }

    result = v76;
    if (*(v76 + 2))
    {
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v76, &v89);
      llvm::detail::SlowDynamicAPInt::operator-(&v89, &v101);
      v98 = v102;
      if (v102 > 0x40)
      {
        llvm::APInt::initSlowCase(&v97, &v101);
      }

      v97 = v101;
      if (v90 >= 0x41 && v89)
      {
        MEMORY[0x259C63150](v89, 0x1000C8000313F17);
      }

      a3 = v75;
      result = v76;
      a2 = v74;
      goto LABEL_7;
    }

    v3 = *v76;
    a3 = v75;
    a2 = v74;
    if (*v76 != 0x8000000000000000)
    {
      goto LABEL_5;
    }

    goto LABEL_254;
  }

  v3 = *result;
  if (*result < 0)
  {
    if (v3 != 0x8000000000000000)
    {
LABEL_5:
      v3 = -v3;
      goto LABEL_6;
    }

LABEL_254:
    v86 = a2;
    v87 = result;
    v88 = a3;
    mlir::presburger::operator-(result);
    a2 = v86;
    result = v87;
    a3 = v88;
    goto LABEL_7;
  }

LABEL_6:
  v97 = v3;
  v98 = 0;
LABEL_7:
  if (v98 | *(a3 + 2))
  {
    v69 = a2;
    v70 = result;
    v71 = a3;
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v97, &v89);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v71, &v99);
    llvm::detail::gcd(&v89, &v99, &v101);
    v96 = v102;
    if (v102 > 0x40)
    {
      llvm::APInt::initSlowCase(&v95, &v101);
    }

    v95 = v101;
    a2 = v69;
    if (v100 >= 0x41 && v99)
    {
      MEMORY[0x259C63150](v99, 0x1000C8000313F17);
      a2 = v69;
    }

    if (v90 >= 0x41 && v89)
    {
      MEMORY[0x259C63150](v89, 0x1000C8000313F17);
      a2 = v69;
    }

    a3 = v71;
    result = v70;
    if (v98 >= 0x41 && v97)
    {
      MEMORY[0x259C63150](v97, 0x1000C8000313F17, v71);
      a2 = v69;
      result = v70;
      a3 = v71;
    }
  }

  else
  {
    v4 = *a3;
    if (v97 == 0x8000000000000000)
    {
      v5 = 0;
    }

    else
    {
      v5 = -v97;
    }

    if (v97 >= 0)
    {
      v5 = v97;
    }

    if (v4 == 0x8000000000000000)
    {
      v6 = 0;
    }

    else
    {
      v6 = -v4;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      v4 = v6;
    }

    if (v5 >= v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = v5;
    }

    if (v5 > v4)
    {
      v4 = v5;
    }

    if (v7)
    {
      v8 = v4 % v7;
      if (v8)
      {
        v9 = v8 >> __clz(__rbit64(v8));
        v10 = v7;
        do
        {
          v11 = v10 >> __clz(__rbit64(v10));
          v10 = v11 - v9;
          if (v9 > v11)
          {
            v10 = v9 - v11;
          }

          if (v9 >= v11)
          {
            v9 = v11;
          }
        }

        while (v10);
        v7 = v9 << __clz(__rbit64(v8 | v7));
      }
    }

    else
    {
      v7 = v4;
    }

    v95 = v7;
    v96 = 0;
  }

  v12 = a2 - 1;
  if ((a2 - 1) >= 2)
  {
    v13 = 1;
    while (1)
    {
      v14 = &result[2 * v13];
      if (!*(v14 + 2))
      {
        break;
      }

      v28 = a2;
      v29 = result;
      v30 = a3;
      if (llvm::detail::operator>=(&result[2 * v13], 0))
      {
        v31 = *(v14 + 2);
        v93 = *v14;
        v94 = 0;
        a3 = v30;
        result = v29;
        a2 = v28;
        if (v31)
        {
          v94 = v31;
          if (v31 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v93, v14);
          }
        }
      }

      else
      {
        if (!*(v14 + 2))
        {
          v15 = *v14;
          a3 = v30;
          result = v29;
          a2 = v28;
          if (*v14 != 0x8000000000000000)
          {
            goto LABEL_39;
          }

LABEL_111:
          v46 = a2;
          v47 = result;
          v48 = a3;
          llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v14, &v89);
          llvm::detail::SlowDynamicAPInt::operator-(&v89, &v101);
          v94 = v102;
          if (v102 > 0x40)
          {
            llvm::APInt::initSlowCase(&v93, &v101);
          }

          v93 = v101;
          if (v90 >= 0x41 && v89)
          {
            MEMORY[0x259C63150](v89, 0x1000C8000313F17);
          }

          a3 = v48;
          result = v47;
          a2 = v46;
          goto LABEL_41;
        }

        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v14, &v89);
        llvm::detail::SlowDynamicAPInt::operator-(&v89, &v101);
        v94 = v102;
        if (v102 > 0x40)
        {
          llvm::APInt::initSlowCase(&v93, &v101);
        }

        v93 = v101;
        a3 = v30;
        result = v29;
        a2 = v28;
        if (v90 >= 0x41 && v89)
        {
          MEMORY[0x259C63150](v89, 0x1000C8000313F17, v30);
          a2 = v28;
          result = v29;
          a3 = v30;
        }
      }

LABEL_41:
      if (v94 | v96)
      {
        v25 = a2;
        v26 = result;
        v27 = a3;
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v93, &v89);
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v95, &v99);
        llvm::detail::gcd(&v89, &v99, &v101);
        v98 = v102;
        if (v102 > 0x40)
        {
          llvm::APInt::initSlowCase(&v97, &v101);
        }

        v97 = v101;
        if (v100 >= 0x41 && v99)
        {
          MEMORY[0x259C63150](v99, 0x1000C8000313F17);
        }

        if (v90 >= 0x41 && v89)
        {
          MEMORY[0x259C63150](v89, 0x1000C8000313F17);
        }

        a3 = v27;
        result = v26;
        a2 = v25;
        if (v98)
        {
          if (v96)
          {
            llvm::detail::SlowDynamicAPInt::operator=(&v95, &v97);
            a2 = v25;
            result = v26;
            a3 = v27;
          }

          else
          {
            v96 = v98;
            if (v98 > 0x40)
            {
              llvm::APInt::initSlowCase(&v95, &v97);
            }

            v95 = v97;
          }

          goto LABEL_70;
        }
      }

      else
      {
        v16 = v95;
        if (v93 == 0x8000000000000000)
        {
          v17 = 0;
        }

        else
        {
          v17 = -v93;
        }

        if (v93 >= 0)
        {
          v17 = v93;
        }

        if (v95 == 0x8000000000000000)
        {
          v18 = 0;
        }

        else
        {
          v18 = -v95;
        }

        if (v95 < 0)
        {
          v16 = v18;
        }

        if (v17 >= v16)
        {
          v19 = v16;
        }

        else
        {
          v19 = v17;
        }

        if (v17 > v16)
        {
          v16 = v17;
        }

        if (v19)
        {
          v20 = v16 % v19;
          if (v20)
          {
            v21 = v20 >> __clz(__rbit64(v20));
            v22 = v19;
            do
            {
              v23 = v22 >> __clz(__rbit64(v22));
              v22 = v23 - v21;
              if (v21 > v23)
              {
                v22 = v21 - v23;
              }

              if (v21 >= v23)
              {
                v21 = v23;
              }
            }

            while (v22);
            v19 = v21 << __clz(__rbit64(v20 | v19));
          }
        }

        else
        {
          v19 = v16;
        }

        v97 = v19;
        v98 = 0;
      }

      v24 = v97;
      if (v96 > 0x40 && v95)
      {
        v43 = result;
        v44 = a2;
        v45 = a3;
        MEMORY[0x259C63150](v95, 0x1000C8000313F17);
        a2 = v44;
        result = v43;
        a3 = v45;
      }

      v95 = v24;
      v96 = 0;
LABEL_70:
      if (v98 > 0x40 && v97)
      {
        v32 = result;
        v33 = a2;
        v34 = a3;
        MEMORY[0x259C63150](v97, 0x1000C8000313F17);
        a2 = v33;
        result = v32;
        a3 = v34;
      }

      if (v94 > 0x40 && v93)
      {
        v35 = result;
        v36 = a2;
        v37 = a3;
        MEMORY[0x259C63150](v93, 0x1000C8000313F17);
        a2 = v36;
        result = v35;
        a3 = v37;
      }

      if (v96)
      {
        v38 = result;
        v39 = a2;
        v40 = a3;
        v41 = llvm::detail::operator==(&v95, 1);
        a2 = v39;
        a3 = v40;
        v42 = v41;
        result = v38;
        if (v42)
        {
          goto LABEL_177;
        }
      }

      else if (v95 == 1)
      {
        goto LABEL_177;
      }

      if (++v13 == v12)
      {
        goto LABEL_118;
      }
    }

    v15 = *v14;
    if ((*v14 & 0x8000000000000000) == 0)
    {
      goto LABEL_40;
    }

    if (v15 != 0x8000000000000000)
    {
LABEL_39:
      v15 = -v15;
LABEL_40:
      v93 = v15;
      v94 = 0;
      goto LABEL_41;
    }

    goto LABEL_111;
  }

LABEL_118:
  v91 = v95;
  v92 = 0;
  if (v96)
  {
    v92 = v96;
    if (v96 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v91, &v95);
    }
  }

  v49 = 16 * a2;
  do
  {
    v50 = *(result + 2);
    if (v50)
    {
      v54 = a3;
      v90 = *(result + 2);
      if (v50 > 0x40)
      {
        llvm::APInt::initSlowCase(&v89, result);
      }

      v55 = result;
      v89 = *result;
      goto LABEL_144;
    }

    if (v92)
    {
      v54 = a3;
      v55 = result;
      llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v89, *result);
LABEL_144:
      if (v92)
      {
        v100 = v92;
        if (v92 > 0x40)
        {
          llvm::APInt::initSlowCase(&v99, &v91);
        }

        v99 = v91;
      }

      else
      {
        llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v99, v91);
      }

      llvm::detail::floorDiv(&v89, &v99, &v101);
      v98 = v102;
      if (v102 > 0x40)
      {
        llvm::APInt::initSlowCase(&v97, &v101);
      }

      v97 = v101;
      a3 = v54;
      result = v55;
      if (v100 >= 0x41 && v99)
      {
        v60 = v55;
        v61 = a3;
        MEMORY[0x259C63150](v99, 0x1000C8000313F17);
        result = v60;
        a3 = v61;
      }

      if (v90 >= 0x41 && v89)
      {
        v62 = result;
        v63 = a3;
        MEMORY[0x259C63150](v89, 0x1000C8000313F17);
        result = v62;
        a3 = v63;
      }

      goto LABEL_163;
    }

    v51 = *result;
    if (*result != 0x8000000000000000 || v91 != -1)
    {
      if (v51)
      {
        if ((v91 ^ v51) < 0)
        {
          v53 = (((v91 >> 63) | 1) + v51) / v91 - 1;
        }

        else
        {
          v53 = v51 / v91;
        }
      }

      else
      {
        v53 = 0;
      }

      v97 = v53;
      v98 = 0;
LABEL_132:
      *result = v53;
      *(result + 2) = 0;
      goto LABEL_133;
    }

    v58 = a3;
    v59 = result;
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(result, &v89);
    llvm::detail::SlowDynamicAPInt::operator-(&v89, &v101);
    v98 = v102;
    if (v102 > 0x40)
    {
      llvm::APInt::initSlowCase(&v97, &v101);
    }

    v97 = v101;
    if (v90 >= 0x41 && v89)
    {
      MEMORY[0x259C63150](v89, 0x1000C8000313F17);
    }

    a3 = v58;
    result = v59;
LABEL_163:
    v64 = v98;
    if (!v98)
    {
      v53 = v97;
      if (*(result + 2) >= 0x41u && *result)
      {
        v65 = result;
        v66 = a3;
        MEMORY[0x259C63150](*result, 0x1000C8000313F17);
        result = v65;
        a3 = v66;
      }

      goto LABEL_132;
    }

    if (*(result + 2))
    {
      v67 = result;
      v68 = a3;
      llvm::detail::SlowDynamicAPInt::operator=(result, &v97);
      result = v67;
      a3 = v68;
    }

    else
    {
      *(result + 2) = v98;
      if (v64 > 0x40)
      {
        llvm::APInt::initSlowCase(result, &v97);
      }

      *result = v97;
    }

LABEL_133:
    if (v98 > 0x40 && v97)
    {
      v56 = result;
      v57 = a3;
      MEMORY[0x259C63150](v97, 0x1000C8000313F17);
      result = v56;
      a3 = v57;
    }

    result += 2;
    v49 -= 16;
  }

  while (v49);
  if (v92 > 0x40)
  {
    result = v91;
    if (v91)
    {
      v78 = a3;
      result = MEMORY[0x259C63150](v91, 0x1000C8000313F17);
      a3 = v78;
    }
  }

  if (*(a3 + 2) | v96)
  {
    v72 = a3;
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a3, &v99);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v95, &v97);
    result = llvm::detail::SlowDynamicAPInt::operator/(&v99, &v97, &v89);
    v73 = v90;
    v102 = v90;
    if (v90 > 0x40)
    {
      llvm::APInt::initSlowCase(&v101, &v89);
    }

    v101 = v89;
    v79 = v72;
    if (v90)
    {
      if (v72[2])
      {
        result = llvm::detail::SlowDynamicAPInt::operator=(v72, &v101);
      }

      else
      {
        v72[2] = v90;
        if (v73 > 0x40)
        {
          llvm::APInt::initSlowCase(v72, &v101);
        }

        *v72 = v101;
      }
    }

    else
    {
      v80 = v101;
      if (v72[2] > 0x40)
      {
        result = *v72;
        if (*v72)
        {
          result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
          v79 = v72;
        }
      }

      *v79 = v80;
      v79[2] = 0;
    }

    if (v102 > 0x40)
    {
      result = v101;
      if (v101)
      {
        result = MEMORY[0x259C63150](v101, 0x1000C8000313F17);
      }
    }

    if (v90 >= 0x41)
    {
      result = v89;
      if (v89)
      {
        result = MEMORY[0x259C63150](v89, 0x1000C8000313F17);
      }
    }

    if (v98 >= 0x41)
    {
      result = v97;
      if (v97)
      {
        result = MEMORY[0x259C63150](v97, 0x1000C8000313F17);
      }
    }

    v81 = v100;
    goto LABEL_215;
  }

  if (*a3 != 0x8000000000000000 || v95 != -1)
  {
    *a3 /= v95;
    goto LABEL_177;
  }

  v82 = a3;
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a3, &v89);
  result = llvm::detail::SlowDynamicAPInt::operator-(&v89, &v101);
  v100 = v102;
  if (v102 > 0x40)
  {
    llvm::APInt::initSlowCase(&v99, &v101);
  }

  v99 = v101;
  if (v90 >= 0x41)
  {
    result = v89;
    if (v89)
    {
      result = MEMORY[0x259C63150](v89, 0x1000C8000313F17);
    }
  }

  v83 = v100;
  v84 = v82;
  if (v100)
  {
    if (v82[2])
    {
      result = llvm::detail::SlowDynamicAPInt::operator=(v82, &v99);
    }

    else
    {
      v82[2] = v100;
      if (v83 > 0x40)
      {
        llvm::APInt::initSlowCase(v82, &v99);
      }

      *v82 = v99;
    }
  }

  else
  {
    v85 = v99;
    if (v82[2] > 0x40)
    {
      result = *v82;
      if (*v82)
      {
        result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
        v84 = v82;
      }
    }

    *v84 = v85;
    v84[2] = 0;
  }

  v81 = v100;
  if (v100)
  {
LABEL_215:
    if (v81 >= 0x41)
    {
      result = v99;
      if (v99)
      {
        result = MEMORY[0x259C63150](v99, 0x1000C8000313F17);
      }
    }
  }

LABEL_177:
  if (v96 > 0x40)
  {
    result = v95;
    if (v95)
    {
      return MEMORY[0x259C63150](v95, 0x1000C8000313F17, a3);
    }
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<std::optional<llvm::DynamicAPInt>>::assign(uint64_t result, unint64_t a2, llvm::APInt *a3)
{
  if (*(result + 12) < a2)
  {

    llvm::SmallVectorTemplateBase<std::optional<llvm::DynamicAPInt>,false>::growAndAssign();
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
    v6 = a2;
    v7 = result;
    v8 = *result;
    do
    {
      std::__optional_storage_base<llvm::DynamicAPInt,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::DynamicAPInt,false>>(v8, a3);
      v8 += 6;
      --v5;
    }

    while (v5);
    result = v7;
    v4 = *(v7 + 8);
    a2 = v6;
  }

  v9 = v4 - a2;
  if (v4 >= a2)
  {
    if (v4 > a2)
    {
      v11 = 24 * v4;
      v12 = (v11 + *result - 8);
      v13 = 24 * a2 - v11;
      do
      {
        if (*v12 == 1 && *(v12 - 2) > 0x40u && *(v12 - 2))
        {
          v14 = result;
          v15 = a2;
          MEMORY[0x259C63150](*(v12 - 2), 0x1000C8000313F17);
          result = v14;
          a2 = v15;
        }

        v12 -= 24;
        v13 += 24;
      }

      while (v13);
    }
  }

  else
  {
    v10 = *result + 24 * v4;
    do
    {
      *v10 = 0;
      *(v10 + 16) = 0;
      if (*(a3 + 16) == 1)
      {
        *v10 = *a3;
        *(v10 + 8) = 0;
        v17 = *(a3 + 2);
        if (v17)
        {
          *(v10 + 8) = v17;
          if (v17 > 0x40)
          {
            llvm::APInt::initSlowCase(v10, a3);
          }

          *v10 = *a3;
        }

        *(v10 + 16) = 1;
      }

      v10 += 24;
    }

    while (!__CFADD__(v9++, 1));
  }

  *(result + 8) = a2;
  return result;
}

uint64_t mlir::verifyListOfOperandsOrIntegers(mlir::Operation *a1, uint64_t a2, uint64_t a3, unsigned int a4, int64x2_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v74 = *MEMORY[0x277D85DE8];
  v11 = a4;
  if (a6 == a4)
  {
    if (!a6)
    {
      v34 = 0;
      if (!a8)
      {
        return 1;
      }

LABEL_32:
      v57[0] = "expected ";
      v58 = 259;
      mlir::Operation::emitError(&v62, a1, v57);
      if (v62)
      {
        LODWORD(v59) = 5;
        *(&v59 + 1) = v34;
        if (v65 >= v66)
        {
          if (v64 > &v59 || v64 + 24 * v65 <= &v59)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v35 = v64 + 24 * v65;
        v36 = v59;
        *(v35 + 2) = v60;
        *v35 = v36;
        v37 = ++v65;
        if (v62)
        {
          LODWORD(v59) = 3;
          *(&v59 + 1) = " dynamic ";
          v60 = 9;
          if (v37 >= v66)
          {
            if (v64 > &v59 || v64 + 24 * v37 <= &v59)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v38 = v64 + 24 * v65;
          v39 = v59;
          *(v38 + 2) = v60;
          *v38 = v39;
          ++v65;
          if (v62)
          {
            v61 = 261;
            *&v59 = a2;
            *(&v59 + 1) = a3;
            mlir::Diagnostic::operator<<(v63, &v59);
            if (v62)
            {
              LODWORD(v59) = 3;
              *(&v59 + 1) = " values";
              v60 = 7;
              if (v65 >= v66)
              {
                if (v64 > &v59 || v64 + 24 * v65 <= &v59)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v40 = v64 + 24 * v65;
              v41 = v59;
              *(v40 + 2) = v60;
              *v40 = v41;
              ++v65;
            }
          }
        }
      }

      v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v62);
      if (v62)
      {
        mlir::InFlightDiagnostic::report(&v62);
      }

      if (v73 == 1)
      {
        if (v72 != &v73)
        {
          free(v72);
        }

        v42 = __p;
        if (__p)
        {
          v43 = v71;
          v44 = __p;
          if (v71 != __p)
          {
            do
            {
              v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
            }

            while (v43 != v42);
            v44 = __p;
          }

          v71 = v42;
          operator delete(v44);
        }

        v29 = v68;
        if (!v68)
        {
          goto LABEL_66;
        }

        v45 = v69;
        v31 = v68;
        if (v69 == v68)
        {
LABEL_65:
          v69 = v29;
          operator delete(v31);
LABEL_66:
          if (v64 != &v67)
          {
            free(v64);
          }

          return v25;
        }

        do
        {
          v47 = *--v45;
          v46 = v47;
          *v45 = 0;
          if (v47)
          {
            MEMORY[0x259C63150](v46, 0x1000C8077774924);
          }
        }

        while (v45 != v29);
LABEL_64:
        v31 = v68;
        goto LABEL_65;
      }

      return v25;
    }

    v12 = (a6 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v12 >= 3)
    {
      v48 = v12 + 1;
      v49 = (v12 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v14 = &a5->i64[v49];
      v50 = a5 + 1;
      v51 = 0uLL;
      v52 = vnegq_f64(0);
      v53 = v49;
      v54 = 0uLL;
      do
      {
        v51 = vsubq_s64(v51, vceqq_s64(v50[-1], v52));
        v54 = vsubq_s64(v54, vceqq_s64(*v50, v52));
        v50 += 2;
        v53 -= 4;
      }

      while (v53);
      v13 = vaddvq_s64(vaddq_s64(v54, v51));
      if (v48 == v49)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v13 = 0;
      v14 = a5;
    }

    do
    {
      v55 = *v14++;
      if (v55 == 0x8000000000000000)
      {
        ++v13;
      }
    }

    while (v14 != (a5 + 8 * a6));
LABEL_62:
    v34 = v13;
    if (a8 == v13)
    {
      return 1;
    }

    goto LABEL_32;
  }

  v57[0] = "expected ";
  v58 = 259;
  mlir::Operation::emitError(&v62, a1, v57);
  if (v62)
  {
    LODWORD(v59) = 5;
    *(&v59 + 1) = v11;
    if (v65 >= v66)
    {
      if (v64 > &v59 || v64 + 24 * v65 <= &v59)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v15 = v64 + 24 * v65;
    v16 = v59;
    *(v15 + 2) = v60;
    *v15 = v16;
    v17 = ++v65;
    if (v62)
    {
      LODWORD(v59) = 3;
      *(&v59 + 1) = " ";
      v60 = 1;
      if (v17 >= v66)
      {
        if (v64 > &v59 || v64 + 24 * v17 <= &v59)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v18 = v64 + 24 * v65;
      v19 = v59;
      *(v18 + 2) = v60;
      *v18 = v19;
      ++v65;
      if (v62)
      {
        v61 = 261;
        *&v59 = a2;
        *(&v59 + 1) = a3;
        mlir::Diagnostic::operator<<(v63, &v59);
        if (v62)
        {
          LODWORD(v59) = 3;
          *(&v59 + 1) = " values, got ";
          v60 = 13;
          if (v65 >= v66)
          {
            if (v64 > &v59 || v64 + 24 * v65 <= &v59)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v20 = v64 + 24 * v65;
          v21 = v59;
          *(v20 + 2) = v60;
          *v20 = v21;
          v22 = ++v65;
          if (v62)
          {
            LODWORD(v59) = 5;
            *(&v59 + 1) = a6;
            if (v22 >= v66)
            {
              if (v64 > &v59 || v64 + 24 * v22 <= &v59)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v23 = v64 + 24 * v65;
            v24 = v59;
            *(v23 + 2) = v60;
            *v23 = v24;
            ++v65;
          }
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v62);
  if (v62)
  {
    mlir::InFlightDiagnostic::report(&v62);
  }

  if (v73 == 1)
  {
    if (v72 != &v73)
    {
      free(v72);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v71;
      v28 = __p;
      if (v71 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v71 = v26;
      operator delete(v28);
    }

    v29 = v68;
    if (!v68)
    {
      goto LABEL_66;
    }

    v30 = v69;
    v31 = v68;
    if (v69 == v68)
    {
      goto LABEL_65;
    }

    do
    {
      v33 = *--v30;
      v32 = v33;
      *v30 = 0;
      if (v33)
      {
        MEMORY[0x259C63150](v32, 0x1000C8077774924);
      }
    }

    while (v30 != v29);
    goto LABEL_64;
  }

  return v25;
}

uint64_t mlir::detail::verifyOffsetSizeAndStrideOp(mlir::Operation *a1, uint64_t a2)
{
  v104 = *MEMORY[0x277D85DE8];
  v4 = (*(a2 + 8))(a2, a1);
  v6 = v5;
  (*(a2 + 64))(&v85, a2, a1);
  if (v86 == 1 && v4 == 1)
  {
    v9 = 0;
  }

  else
  {
    (*(a2 + 64))(&v100, a2, a1);
    v8 = v101;
    (*(a2 + 72))(&v98, a2, a1);
    v9 = v8 != DWORD2(v98);
    if (v98 != v99)
    {
      free(v98);
    }

    if (v100 != v102)
    {
      free(v100);
    }
  }

  if (v85 != &v87)
  {
    free(v85);
  }

  if (v9)
  {
    v81[0] = "expected mixed offsets rank to match mixed sizes rank (";
    v82 = 259;
    mlir::Operation::emitError(&v85, a1, v81);
    (*(a2 + 64))(&v100, a2, a1);
    if (v85)
    {
      LODWORD(v98) = 5;
      *(&v98 + 1) = v101;
      if (v89 >= v90)
      {
        if (v88 > &v98 || v88 + 24 * v89 <= &v98)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10 = v88 + 24 * v89;
      v11 = v98;
      *(v10 + 2) = v99[0];
      *v10 = v11;
      v12 = ++v89;
      if (v85)
      {
        LODWORD(v98) = 3;
        *(&v98 + 1) = " vs ";
        v99[0] = 4;
        if (v12 >= v90)
        {
          if (v88 > &v98 || v88 + 24 * v12 <= &v98)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v13 = v88 + 24 * v89;
        v14 = v98;
        *(v13 + 2) = v99[0];
        *v13 = v14;
        ++v89;
      }
    }

    (*(a2 + 72))(&v98, a2, a1);
    if (v85)
    {
      LODWORD(v83) = 5;
      *(&v83 + 1) = DWORD2(v98);
      if (v89 >= v90)
      {
        if (v88 > &v83 || v88 + 24 * v89 <= &v83)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v15 = v88 + 24 * v89;
      v16 = v83;
      *(v15 + 2) = v84;
      *v15 = v16;
      v17 = ++v89;
      if (v85)
      {
        LODWORD(v83) = 3;
        *(&v83 + 1) = ") so the rank of the result type is well-formed.";
        v84 = 48;
        if (v17 >= v90)
        {
          if (v88 > &v83 || v88 + 24 * v17 <= &v83)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v18 = v88 + 24 * v89;
        v19 = v83;
        *(v18 + 2) = v84;
        *v18 = v19;
        ++v89;
      }
    }

    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v85);
    if (v98 != v99)
    {
      free(v98);
    }

    if (v100 != v102)
    {
      free(v100);
    }

    if (v85)
    {
      mlir::InFlightDiagnostic::report(&v85);
    }

    if (v97 == 1)
    {
      if (v96 != &v97)
      {
        free(v96);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v95;
        v23 = __p;
        if (v95 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v95 = v21;
        operator delete(v23);
      }

      v24 = v92;
      if (!v92)
      {
        goto LABEL_112;
      }

      v25 = v93;
      v26 = v92;
      if (v93 == v92)
      {
LABEL_111:
        v93 = v24;
        operator delete(v26);
LABEL_112:
        if (v88 != &v91)
        {
          free(v88);
        }

        return v20;
      }

      do
      {
        v28 = *--v25;
        v27 = v28;
        *v25 = 0;
        if (v28)
        {
          MEMORY[0x259C63150](v27, 0x1000C8077774924);
        }
      }

      while (v25 != v24);
LABEL_110:
      v26 = v92;
      goto LABEL_111;
    }
  }

  else
  {
    (*(a2 + 72))(&v85, a2, a1);
    v29 = v86;
    (*(a2 + 80))(&v100, a2, a1);
    v30 = v101;
    if (v100 != v102)
    {
      free(v100);
    }

    if (v85 != &v87)
    {
      free(v85);
    }

    if (v29 == v30)
    {
      v31 = (*(a2 + 40))(a2, a1);
      v33 = v32;
      v34 = (*(a2 + 16))(a2, a1);
      mlir::ValueRange::ValueRange(&v85, v34, v35);
      if ((mlir::verifyListOfOperandsOrIntegers(a1, "offset", 6, v4, v31, v33, v85, v86) & 1) == 0)
      {
        return 0;
      }

      v36 = (*(a2 + 48))(a2, a1);
      v38 = v37;
      v39 = (*(a2 + 24))(a2, a1);
      mlir::ValueRange::ValueRange(&v85, v39, v40);
      if ((mlir::verifyListOfOperandsOrIntegers(a1, "size", 4, HIDWORD(v4), v36, v38, v85, v86) & 1) == 0)
      {
        return 0;
      }

      v41 = (*(a2 + 56))(a2, a1);
      v43 = v42;
      v44 = (*(a2 + 32))(a2, a1);
      mlir::ValueRange::ValueRange(&v85, v44, v45);
      if ((mlir::verifyListOfOperandsOrIntegers(a1, "stride", 6, v6, v41, v43, v85, v86) & 1) == 0)
      {
        return 0;
      }

      v46 = (*(a2 + 40))(a2, a1);
      if (v47)
      {
        v48 = 8 * v47;
        while (1)
        {
          v49 = *v46;
          if (*v46 >= 0x8000000000000001)
          {
            break;
          }

          ++v46;
          v48 -= 8;
          if (!v48)
          {
            goto LABEL_55;
          }
        }

        v100 = "expected offsets to be non-negative, but got ";
        v103 = 259;
        mlir::Operation::emitError(&v85, a1, &v100);
        if (v85)
        {
          LODWORD(v98) = 2;
          *(&v98 + 1) = v49;
          if (v89 >= v90)
          {
            if (v88 > &v98 || v88 + 24 * v89 <= &v98)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v70 = v88 + 24 * v89;
          v71 = v98;
          *(v70 + 2) = v99[0];
          *v70 = v71;
          ++v89;
        }

        v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v85);
        if (v85)
        {
          mlir::InFlightDiagnostic::report(&v85);
        }

        if (v97)
        {
          if (v96 != &v97)
          {
            free(v96);
          }

          v72 = __p;
          if (__p)
          {
            v73 = v95;
            v74 = __p;
            if (v95 != __p)
            {
              do
              {
                v73 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v73 - 1);
              }

              while (v73 != v72);
              v74 = __p;
            }

            v95 = v72;
            operator delete(v74);
          }

          v24 = v92;
          if (!v92)
          {
            goto LABEL_112;
          }

          v75 = v93;
          v26 = v92;
          if (v93 == v92)
          {
            goto LABEL_111;
          }

          do
          {
            v77 = *--v75;
            v76 = v77;
            *v75 = 0;
            if (v77)
            {
              MEMORY[0x259C63150](v76, 0x1000C8077774924);
            }
          }

          while (v75 != v24);
          goto LABEL_110;
        }
      }

      else
      {
LABEL_55:
        v50 = (*(a2 + 48))(a2, a1);
        if (v51)
        {
          v52 = 8 * v51;
          v20 = 1;
          while (1)
          {
            v53 = *v50;
            if (*v50 >= 0x8000000000000001)
            {
              break;
            }

            ++v50;
            v52 -= 8;
            if (!v52)
            {
              return v20;
            }
          }

          v100 = "expected sizes to be non-negative, but got ";
          v103 = 259;
          mlir::Operation::emitError(&v85, a1, &v100);
          if (v85)
          {
            LODWORD(v98) = 2;
            *(&v98 + 1) = v53;
            if (v89 >= v90)
            {
              if (v88 > &v98 || v88 + 24 * v89 <= &v98)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v79 = v88 + 24 * v89;
            v80 = v98;
            *(v79 + 2) = v99[0];
            *v79 = v80;
            ++v89;
          }

          v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v85);
          if (v85)
          {
            mlir::InFlightDiagnostic::report(&v85);
          }

          if (v97 == 1)
          {
            mlir::Diagnostic::~Diagnostic(&v86);
          }
        }

        else
        {
          return 1;
        }
      }
    }

    else
    {
      v81[0] = "expected mixed sizes rank to match mixed strides rank (";
      v82 = 259;
      mlir::Operation::emitError(&v85, a1, v81);
      (*(a2 + 72))(&v100, a2, a1);
      if (v85)
      {
        LODWORD(v98) = 5;
        *(&v98 + 1) = v101;
        if (v89 >= v90)
        {
          if (v88 > &v98 || v88 + 24 * v89 <= &v98)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v54 = v88 + 24 * v89;
        v55 = v98;
        *(v54 + 2) = v99[0];
        *v54 = v55;
        v56 = ++v89;
        if (v85)
        {
          LODWORD(v98) = 3;
          *(&v98 + 1) = " vs ";
          v99[0] = 4;
          if (v56 >= v90)
          {
            if (v88 > &v98 || v88 + 24 * v56 <= &v98)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v57 = v88 + 24 * v89;
          v58 = v98;
          *(v57 + 2) = v99[0];
          *v57 = v58;
          ++v89;
        }
      }

      (*(a2 + 80))(&v98, a2, a1);
      if (v85)
      {
        LODWORD(v83) = 5;
        *(&v83 + 1) = DWORD2(v98);
        if (v89 >= v90)
        {
          if (v88 > &v83 || v88 + 24 * v89 <= &v83)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v59 = v88 + 24 * v89;
        v60 = v83;
        *(v59 + 2) = v84;
        *v59 = v60;
        v61 = ++v89;
        if (v85)
        {
          LODWORD(v83) = 3;
          *(&v83 + 1) = ") so the rank of the result type is well-formed.";
          v84 = 48;
          if (v61 >= v90)
          {
            if (v88 > &v83 || v88 + 24 * v61 <= &v83)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v62 = v88 + 24 * v89;
          v63 = v83;
          *(v62 + 2) = v84;
          *v62 = v63;
          ++v89;
        }
      }

      v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v85);
      if (v98 != v99)
      {
        free(v98);
      }

      if (v100 != v102)
      {
        free(v100);
      }

      if (v85)
      {
        mlir::InFlightDiagnostic::report(&v85);
      }

      if (v97 == 1)
      {
        if (v96 != &v97)
        {
          free(v96);
        }

        v64 = __p;
        if (__p)
        {
          v65 = v95;
          v66 = __p;
          if (v95 != __p)
          {
            do
            {
              v65 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v65 - 1);
            }

            while (v65 != v64);
            v66 = __p;
          }

          v95 = v64;
          operator delete(v66);
        }

        v24 = v92;
        if (!v92)
        {
          goto LABEL_112;
        }

        v67 = v93;
        v26 = v92;
        if (v93 == v92)
        {
          goto LABEL_111;
        }

        do
        {
          v69 = *--v67;
          v68 = v69;
          *v67 = 0;
          if (v69)
          {
            MEMORY[0x259C63150](v68, 0x1000C8077774924);
          }
        }

        while (v67 != v24);
        goto LABEL_110;
      }
    }
  }

  return v20;
}

llvm::raw_ostream *mlir::printDynamicIndexList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v30[0] = a3;
  v30[1] = a4;
  v29[0] = a7;
  v29[1] = a8;
  v32[0] = a9;
  v32[1] = a10;
  v14 = 8 * a11 - 8;
  v15 = 0x7B3C5B28u >> v14;
  v16 = 0x7D3E5D29u >> v14;
  v17 = (*(*a1 + 16))(a1);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, v15);
    if (a6)
    {
LABEL_3:
      v28 = 0;
      v31[0] = v29;
      v31[1] = &v28;
      v31[2] = a1;
      v31[3] = v30;
      v31[4] = &v28 + 4;
      v31[5] = v32;
      mlir::printDynamicIndexList(mlir::OpAsmPrinter &,mlir::Operation *,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<BOOL>,mlir::TypeRange,mlir::AsmParser::Delimiter)::$_0::operator()(v31, *a5);
      if (a6 != 1)
      {
        v19 = 8 * a6;
        v20 = a5 + 1;
        v21 = v19 - 8;
        do
        {
          while (1)
          {
            v23 = (*(*a1 + 16))(a1);
            v24 = v23[4];
            if (v23[3] - v24 > 1uLL)
            {
              break;
            }

            llvm::raw_ostream::write(v23, ", ", 2uLL);
            v22 = *v20++;
            mlir::printDynamicIndexList(mlir::OpAsmPrinter &,mlir::Operation *,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<BOOL>,mlir::TypeRange,mlir::AsmParser::Delimiter)::$_0::operator()(v31, v22);
            v21 -= 8;
            if (!v21)
            {
              goto LABEL_8;
            }
          }

          *v24 = 8236;
          v23[4] += 2;
          v25 = *v20++;
          mlir::printDynamicIndexList(mlir::OpAsmPrinter &,mlir::Operation *,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<BOOL>,mlir::TypeRange,mlir::AsmParser::Delimiter)::$_0::operator()(v31, v25);
          v21 -= 8;
        }

        while (v21);
      }

LABEL_8:
      result = (*(*a1 + 16))(a1);
      v27 = *(result + 4);
      if (v27 >= *(result + 3))
      {
        return llvm::raw_ostream::write(result, v16);
      }

      goto LABEL_12;
    }
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = v15;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  result = (*(*a1 + 16))(a1);
  v27 = *(result + 4);
  if (v27 < *(result + 3))
  {
LABEL_12:
    *(result + 4) = v27 + 1;
    *v27 = v16;
    return result;
  }

  return llvm::raw_ostream::write(result, v16);
}

BOOL mlir::parseDynamicIndexList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44[4] = *MEMORY[0x277D85DE8];
  v29 = a5;
  v43[0] = v44;
  v43[1] = 0x400000000;
  v27 = xmmword_25736EFF0;
  v21 = a1;
  v22 = &v26;
  v23 = a2;
  v24 = v43;
  v25 = &v29;
  v26 = &v28;
  if ((*(*a1 + 392))())
  {
    (*(*a1 + 32))(a1);
    mlir::Builder::getDenseI64ArrayAttr();
  }

  v6 = (*(*a1 + 16))(a1);
  v20 = 257;
  (*(*a1 + 24))(v32, a1, v6, v19);
  if (v32[0])
  {
    LODWORD(v30) = 3;
    *(&v30 + 1) = "expected SSA value or integer";
    v31 = 29;
    if (v34 >= v35)
    {
      if (v33 > &v30 || v33 + 24 * v34 <= &v30)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v33 + 24 * v34;
    v8 = v30;
    *(v7 + 2) = v31;
    *v7 = v8;
    ++v34;
  }

  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
  if (v32[0])
  {
    mlir::InFlightDiagnostic::report(v32);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v40;
      v12 = __p;
      if (v40 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v40 = v10;
      operator delete(v12);
    }

    v13 = v37;
    if (v37)
    {
      v14 = v38;
      v15 = v37;
      if (v38 != v37)
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
        v15 = v37;
      }

      v38 = v13;
      operator delete(v15);
    }

    if (v33 != &v36)
    {
      free(v33);
    }
  }

  if (v26 != &v28)
  {
    free(v26);
  }

  if (v43[0] != v44)
  {
    free(v43[0]);
  }

  return v9;
}

uint64_t mlir::detail::sameOffsetsSizesAndStrides(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, void), uint64_t a6)
{
  v60[4] = *MEMORY[0x277D85DE8];
  (*(a2 + 40))(a2, a1);
  v13 = v12;
  (*(a4 + 40))(a4, a3);
  if (v13 != v14)
  {
    return 0;
  }

  (*(a2 + 48))(a2, a1);
  v16 = v15;
  (*(a4 + 48))(a4, a3);
  if (v16 != v17)
  {
    return 0;
  }

  (*(a2 + 56))(a2, a1);
  v19 = v18;
  (*(a4 + 56))(a4, a3);
  if (v19 != v20)
  {
    return 0;
  }

  (*(a2 + 64))(&__src, a2, a1);
  (*(a4 + 64))(&v49, a4, a3);
  __dst = v57;
  v56 = 0x400000000;
  v21 = v53;
  if (v53)
  {
    if (__src == v54)
    {
      if (v53 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(__dst, __src, 8 * v53);
      LODWORD(v56) = v21;
    }

    else
    {
      __dst = __src;
      v56 = v53;
      __src = v54;
      HIDWORD(v53) = 0;
    }

    LODWORD(v53) = 0;
  }

  v58 = v60;
  v59 = 0x400000000;
  v23 = v50;
  v24 = v49;
  if (v50)
  {
    if (v49 == v51)
    {
      if (v50 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v58, v49, 8 * v50);
      v24 = v49;
      LODWORD(v59) = v23;
    }

    else
    {
      v58 = v49;
      v59 = v50;
      v49 = v51;
      HIDWORD(v50) = 0;
      v24 = v51;
    }

    LODWORD(v50) = 0;
  }

  if (v24 != v51)
  {
    free(v24);
  }

  if (__src != v54)
  {
    free(__src);
  }

  v25 = v58;
  result = 1;
  if (v56 && v59)
  {
    v26 = __dst;
    v27 = 8 * v59 - 8;
    v28 = 8 * v56 - 8;
    do
    {
      result = a5(a6, *v26, *v25);
      if (!result)
      {
        break;
      }

      if (!v28)
      {
        break;
      }

      ++v26;
      ++v25;
      v29 = v27;
      v27 -= 8;
      v28 -= 8;
    }

    while (v29);
    v25 = v58;
  }

  if (v25 != v60)
  {
    v30 = result;
    free(v25);
    result = v30;
  }

  if (__dst != v57)
  {
    v31 = result;
    free(__dst);
    result = v31;
  }

  if (result)
  {
    (*(a2 + 72))(&__src, a2, a1);
    (*(a4 + 72))(&v49, a4, a3);
    __dst = v57;
    v56 = 0x400000000;
    v32 = v53;
    if (v53)
    {
      if (__src == v54)
      {
        if (v53 >= 5)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(__dst, __src, 8 * v53);
        LODWORD(v56) = v32;
      }

      else
      {
        __dst = __src;
        v56 = v53;
        __src = v54;
        HIDWORD(v53) = 0;
      }

      LODWORD(v53) = 0;
    }

    v58 = v60;
    v59 = 0x400000000;
    v33 = v50;
    v34 = v49;
    if (v50)
    {
      if (v49 == v51)
      {
        if (v50 >= 5)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(v58, v49, 8 * v50);
        v34 = v49;
        LODWORD(v59) = v33;
      }

      else
      {
        v58 = v49;
        v59 = v50;
        v49 = v51;
        HIDWORD(v50) = 0;
        v34 = v51;
      }

      LODWORD(v50) = 0;
    }

    if (v34 != v51)
    {
      free(v34);
    }

    if (__src != v54)
    {
      free(__src);
    }

    v35 = v58;
    result = 1;
    if (v56 && v59)
    {
      v36 = __dst;
      v37 = 8 * v59 - 8;
      v38 = 8 * v56 - 8;
      do
      {
        result = a5(a6, *v36, *v35);
        if (!result)
        {
          break;
        }

        if (!v38)
        {
          break;
        }

        ++v36;
        ++v35;
        v39 = v37;
        v37 -= 8;
        v38 -= 8;
      }

      while (v39);
      v35 = v58;
    }

    if (v35 != v60)
    {
      v40 = result;
      free(v35);
      result = v40;
    }

    if (__dst != v57)
    {
      v41 = result;
      free(__dst);
      result = v41;
    }

    if (result)
    {
      (*(a2 + 80))(&__src, a2, a1);
      (*(a4 + 80))(&v49, a4, a3);
      __dst = v57;
      v56 = 0x400000000;
      if (v53)
      {
        llvm::SmallVectorImpl<long long>::operator=(&__dst, &__src);
      }

      v58 = v60;
      v59 = 0x400000000;
      if (v50)
      {
        llvm::SmallVectorImpl<long long>::operator=(&v58, &v49);
      }

      if (v49 != v51)
      {
        free(v49);
      }

      if (__src != v54)
      {
        free(__src);
      }

      v42 = v58;
      result = 1;
      if (v56 && v59)
      {
        v43 = __dst;
        v44 = 8 * v56 - 8;
        v45 = 8 * v59 - 8;
        do
        {
          result = a5(a6, *v43, *v42);
          if (!result)
          {
            break;
          }

          if (!v44)
          {
            break;
          }

          ++v43;
          ++v42;
          v44 -= 8;
          v46 = v45;
          v45 -= 8;
        }

        while (v46);
        v42 = v58;
      }

      if (v42 != v60)
      {
        v47 = result;
        free(v42);
        result = v47;
      }

      if (__dst != v57)
      {
        v48 = result;
        free(__dst);
        return v48;
      }
    }
  }

  return result;
}

uint64_t mlir::detail::getNumDynamicEntriesUpToIdx(int64x2_t *a1, uint64_t a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = (a3 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v3 < 7)
  {
    LODWORD(v4) = 0;
    v5 = a1;
    do
    {
LABEL_8:
      v18 = *v5++;
      if (v18 == 0x8000000000000000)
      {
        v4 = (v4 + 1);
      }

      else
      {
        v4 = v4;
      }
    }

    while (v5 != (a1 + 8 * a3));
    return v4;
  }

  v7 = v3 + 1;
  v8 = (v3 + 1) & 0x3FFFFFFFFFFFFFF8;
  v5 = &a1->i64[v8];
  v9 = a1 + 2;
  v10 = 0uLL;
  v11 = vnegq_f64(0);
  v12 = v8;
  v13 = 0uLL;
  do
  {
    v14 = v9[-2];
    v15 = v9[-1];
    v16 = *v9;
    v17 = v9[1];
    v9 += 4;
    v10 = vsubq_s32(v10, vuzp1q_s32(vceqq_s64(v14, v11), vceqq_s64(v15, v11)));
    v13 = vsubq_s32(v13, vuzp1q_s32(vceqq_s64(v16, v11), vceqq_s64(v17, v11)));
    v12 -= 8;
  }

  while (v12);
  v4 = vaddvq_s32(vaddq_s32(v13, v10));
  if (v7 != v8)
  {
    goto LABEL_8;
  }

  return v4;
}

void *mlir::printDynamicIndexList(mlir::OpAsmPrinter &,mlir::Operation *,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<BOOL>,mlir::TypeRange,mlir::AsmParser::Delimiter)::$_0::operator()(uint64_t a1, unint64_t a2)
{
  if (!*(*a1 + 8) || *(**a1 + **(a1 + 8)) != 1)
  {
LABEL_5:
    v6 = *(a1 + 16);
    if (a2 == 0x8000000000000000)
    {
      goto LABEL_6;
    }

LABEL_14:
    v13 = (*(*v6 + 16))(v6);
    result = llvm::raw_ostream::operator<<(v13, a2);
    v12 = *a1;
    if (!*(*a1 + 8))
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v4 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v5 = v4[4];
  if (v4[3] != v5)
  {
    *v5 = 91;
    ++v4[4];
    goto LABEL_5;
  }

  llvm::raw_ostream::write(v4, "[", 1uLL);
  v6 = *(a1 + 16);
  if (a2 != 0x8000000000000000)
  {
    goto LABEL_14;
  }

LABEL_6:
  result = (*(*v6 + 160))(v6, *(**(a1 + 24) + 32 * **(a1 + 32) + 24));
  if (*(*(a1 + 40) + 8))
  {
    v8 = *(a1 + 16);
    v9 = (*(*v8 + 16))(v8);
    v10 = v9[4];
    if ((v9[3] - v10) > 2)
    {
      *(v10 + 2) = 32;
      *v10 = 14880;
      v9[4] += 3;
    }

    else
    {
      llvm::raw_ostream::write(v9, " : ", 3uLL);
    }

    v11 = mlir::TypeRange::dereference_iterator(**(a1 + 40), **(a1 + 32));
    result = (*(*v8 + 32))(v8, v11);
  }

  ++**(a1 + 32);
  v12 = *a1;
  if (*(*a1 + 8))
  {
LABEL_15:
    if (*(*v12 + **(a1 + 8)) == 1)
    {
      result = (*(**(a1 + 16) + 16))(*(a1 + 16));
      v14 = result[4];
      if (result[3] == v14)
      {
        result = llvm::raw_ostream::write(result, "]", 1uLL);
      }

      else
      {
        *v14 = 93;
        ++result[4];
      }
    }
  }

LABEL_19:
  ++**(a1 + 8);
  return result;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::parseDynamicIndexList(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::detail::DenseArrayAttrImpl<long long> &,mlir::detail::DenseArrayAttrImpl<BOOL> &,llvm::SmallVectorImpl<mlir::Type> *,mlir::AsmParser::Delimiter)::$_0>(uint64_t *a1)
{
  v24 = 0uLL;
  *&v25 = 0;
  v2 = (*(**a1 + 712))(*a1, &v24, 1);
  v3 = a1[1];
  v4 = (*(**a1 + 320))();
  v5 = v3[1];
  if ((v5 + 1) > v3[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*v3 + v5) = v4 & 1;
  ++v3[1];
  if (v2 & 0x100) != 0 && (v2)
  {
    v6 = a1[2];
    v7 = *(v6 + 8);
    v8 = *v6;
    if (v7 >= *(v6 + 12))
    {
      if (v8 > &v24 || v8 + 32 * v7 <= &v24)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = (v8 + 32 * *(v6 + 8));
    v10 = v25;
    *v9 = v24;
    v9[1] = v10;
    ++*(v6 + 8);
    v11 = a1[3];
    v12 = *(v11 + 8);
    if (v12 >= *(v11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*v11 + 8 * v12) = 0x8000000000000000;
    ++*(v11 + 8);
    v13 = *a1[4];
    if (v13)
    {
      v14 = *a1;
      v15 = *(v13 + 2);
      if (v15 >= *(v13 + 3))
      {
        v21 = *a1;
        v22 = llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::growAndEmplaceBack<>(*a1[4]);
        if (((*(*v21 + 576))(v21, v22) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v16 = *v13;
        *(*v13 + 8 * v15) = 0;
        v17 = v15 + 1;
        *(v13 + 2) = v17;
        if (((*(*v14 + 576))(v14, v16 + 8 * v17 - 8) & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (*(*a1[1] + *(a1[1] + 8) - 1) != 1)
    {
      return 1;
    }
  }

  else
  {
    v23 = 0;
    if ((mlir::AsmParser::parseInteger<unsigned long long>(*a1, &v23) & 1) == 0)
    {
      return 0;
    }

    v18 = a1[3];
    v19 = *(v18 + 8);
    if (v19 >= *(v18 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*v18 + 8 * v19) = v23;
    ++*(v18 + 8);
    if (*(*a1[1] + *(a1[1] + 8) - 1) != 1)
    {
      return 1;
    }
  }

  return ((*(**a1 + 336))(*a1) & 1) != 0;
}

uint64_t mlir::detail::verifyDestinationStyleOpInterface(mlir::detail *this, mlir::Operation *a2)
{
  v123[6] = *MEMORY[0x277D85DE8];
  if (this)
  {
    InterfaceFor = mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(this);
  }

  else
  {
    InterfaceFor = 0;
  }

  v121 = v123;
  v122 = 0x600000000;
  (*InterfaceFor)(v118, InterfaceFor, this);
  v5 = mlir::MutableOperandRange::begin(v118);
  v6 = mlir::MutableOperandRange::end(v118);
  if (v5 == v6)
  {
LABEL_21:
    v10 = 1;
    v11 = v119;
    if (v119 == v120)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v2 = v5;
  while (1)
  {
    while (1)
    {
      v8 = *(*(*(*(v2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        break;
      }

      if (v122 >= HIDWORD(v122))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v121[v122] = v5;
      LODWORD(v122) = v122 + 1;
      v2 += 32;
      v5 += 32;
      if (v2 == v6)
      {
        goto LABEL_21;
      }
    }

    if (v8 != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
    {
      break;
    }

    v2 += 32;
    v5 += 32;
    if (v2 == v6)
    {
      goto LABEL_21;
    }
  }

  *&v99 = "expected that operand #";
  v102 = 259;
  mlir::Operation::emitOpError(&v105, this, &v99);
  OperandNumber = mlir::OpOperand::getOperandNumber(v2);
  if (v105)
  {
    LODWORD(v103) = 5;
    *(&v103 + 1) = OperandNumber;
    if (v109 >= v110)
    {
      if (v108 > &v103 || v108 + 24 * v109 <= &v103)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v57 = v108 + 24 * v109;
    v58 = v103;
    *(v57 + 2) = v104;
    *v57 = v58;
    v59 = ++v109;
    if (v105)
    {
      LODWORD(v103) = 3;
      *(&v103 + 1) = " is a tensor or a memref";
      v104 = 24;
      if (v59 >= v110)
      {
        if (v108 > &v103 || v108 + 24 * v59 <= &v103)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v60 = v108 + 24 * v109;
      v61 = v103;
      *(v60 + 2) = v104;
      *v60 = v61;
      ++v109;
    }
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v105);
  if (v105)
  {
    mlir::InFlightDiagnostic::report(&v105);
  }

  if (v117 == 1)
  {
    if (v116 != &v117)
    {
      free(v116);
    }

    v62 = __p;
    if (__p)
    {
      v63 = v115;
      v64 = __p;
      if (v115 != __p)
      {
        do
        {
          v63 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v63 - 1);
        }

        while (v63 != v62);
        v64 = __p;
      }

      v115 = v62;
      operator delete(v64);
    }

    v65 = v112;
    if (v112)
    {
      v66 = v113;
      v67 = v112;
      if (v113 != v112)
      {
        do
        {
          v69 = *--v66;
          v68 = v69;
          *v66 = 0;
          if (v69)
          {
            MEMORY[0x259C63150](v68, 0x1000C8077774924);
          }
        }

        while (v66 != v65);
        v67 = v112;
      }

      v113 = v65;
      operator delete(v67);
    }

    if (v108 != v111)
    {
      free(v108);
    }
  }

  v10 = 0;
  v11 = v119;
  if (v119 != v120)
  {
LABEL_22:
    free(v11);
  }

LABEL_23:
  if (!v10)
  {
    goto LABEL_139;
  }

  v12 = *(this + 9);
  if (v12)
  {
    v13 = (this - 16);
  }

  else
  {
    v13 = 0;
  }

  v118[0] = v13;
  v118[1] = v12;
  mlir::ResultRange::getTypes(v118, &v105);
  v14 = 0;
  v15 = v106;
  v16 = v108;
  if (v106 != v108)
  {
    v14 = 0;
    v17 = v105;
    do
    {
      v18 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v17, v15) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      if (v18 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        ++v14;
      }

      ++v15;
    }

    while (v16 != v15);
  }

  if (v14 != v122)
  {
    v118[0] = "expected the number of tensor results (";
    v120[0] = 259;
    mlir::Operation::emitOpError(&v105, this, v118);
    v29 = *(this + 9);
    if (v29)
    {
      v30 = this - 16;
    }

    else
    {
      v30 = 0;
    }

    *&v103 = v30;
    *(&v103 + 1) = v29;
    mlir::ResultRange::getTypes(&v103, &v99);
    v31 = 0;
    v32 = *(&v99 + 1);
    v33 = v101;
    if (*(&v99 + 1) != v101)
    {
      v31 = 0;
      v34 = v99;
      do
      {
        v35 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v34, v32) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
        if (v35 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v35 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
        {
          ++v31;
        }

        ++v32;
      }

      while (v33 != v32);
    }

    if (v105)
    {
      LODWORD(v99) = 5;
      *(&v99 + 1) = v31;
      if (v109 >= v110)
      {
        if (v108 > &v99 || v108 + 24 * v109 <= &v99)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v37 = v108 + 24 * v109;
      v38 = v99;
      *(v37 + 2) = v100;
      *v37 = v38;
      v39 = ++v109;
      if (v105)
      {
        LODWORD(v99) = 3;
        *(&v99 + 1) = ") to be equal to the number of output tensors (";
        v100 = 47;
        if (v39 >= v110)
        {
          if (v108 > &v99 || v108 + 24 * v39 <= &v99)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v40 = v108 + 24 * v109;
        v41 = v99;
        *(v40 + 2) = v100;
        *v40 = v41;
        v42 = ++v109;
        if (v105)
        {
          LODWORD(v99) = 5;
          *(&v99 + 1) = v122;
          if (v42 >= v110)
          {
            if (v108 > &v99 || v108 + 24 * v42 <= &v99)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v43 = v108 + 24 * v109;
          v44 = v99;
          *(v43 + 2) = v100;
          *v43 = v44;
          v45 = ++v109;
          if (v105)
          {
            LODWORD(v99) = 3;
            *(&v99 + 1) = ")";
            v100 = 1;
            if (v45 >= v110)
            {
              if (v108 > &v99 || v108 + 24 * v45 <= &v99)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v46 = v108 + 24 * v109;
            v47 = v99;
            *(v46 + 2) = v100;
            *v46 = v47;
            ++v109;
          }
        }
      }
    }

    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v105);
    if (v105)
    {
      mlir::InFlightDiagnostic::report(&v105);
    }

    if (v117 != 1)
    {
      goto LABEL_139;
    }

    if (v116 != &v117)
    {
      free(v116);
    }

    v48 = __p;
    if (__p)
    {
      v49 = v115;
      v50 = __p;
      if (v115 != __p)
      {
        do
        {
          v49 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v49 - 1);
        }

        while (v49 != v48);
        v50 = __p;
      }

      v115 = v48;
      operator delete(v50);
    }

    v51 = v112;
    if (v112)
    {
      v52 = v113;
      v53 = v112;
      if (v113 != v112)
      {
        do
        {
          v55 = *--v52;
          v54 = v55;
          *v52 = 0;
          if (v55)
          {
            MEMORY[0x259C63150](v54, 0x1000C8077774924);
          }
        }

        while (v52 != v51);
        v53 = v112;
      }

      v113 = v51;
      operator delete(v53);
    }

    v97 = v108;
    if (v108 == v111)
    {
      goto LABEL_139;
    }

LABEL_138:
    free(v97);
    goto LABEL_139;
  }

  if (!v122)
  {
    v2 = 1;
    goto LABEL_139;
  }

  v20 = v121;
  v21 = 8 * v14;
  while (1)
  {
    v22 = *v20;
    (*InterfaceFor)(&v105, InterfaceFor, this);
    v23 = mlir::MutableOperandRange::operator mlir::OperandRange(&v105);
    v25 = v24;
    if (v107 != &v109)
    {
      free(v107);
    }

    v105 = v23;
    v106 = v25;
    v26 = mlir::OpOperand::getOperandNumber(v22);
    v27 = v26 - mlir::OperandRange::getBeginOperandIndex(&v105);
    v28 = v27 <= 5 ? (this - 16 * v27 - 16) : (this - 24 * v27 + 24);
    if ((*(*(v22 + 3) + 8) ^ *(v28 + 1)) >= 8)
    {
      break;
    }

    ++v20;
    v21 -= 8;
    if (!v21)
    {
      v2 = 1;
      goto LABEL_139;
    }
  }

  v118[0] = "expected type of operand #";
  v120[0] = 259;
  mlir::Operation::emitOpError(&v105, this, v118);
  v70 = mlir::OpOperand::getOperandNumber(v22);
  if (v105)
  {
    LODWORD(v99) = 5;
    *(&v99 + 1) = v70;
    if (v109 >= v110)
    {
      if (v108 > &v99 || v108 + 24 * v109 <= &v99)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v71 = v108 + 24 * v109;
    v72 = v99;
    *(v71 + 2) = v100;
    *v71 = v72;
    v73 = ++v109;
    if (v105)
    {
      LODWORD(v99) = 3;
      *(&v99 + 1) = " (";
      v100 = 2;
      if (v73 >= v110)
      {
        if (v108 > &v99 || v108 + 24 * v73 <= &v99)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v74 = v108 + 24 * v109;
      v75 = v99;
      *(v74 + 2) = v100;
      *v74 = v75;
      ++v109;
      if (v105)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v99, *(*(v22 + 3) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v109 >= v110)
        {
          if (v108 > &v99 || v108 + 24 * v109 <= &v99)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v76 = v108 + 24 * v109;
        v77 = v99;
        *(v76 + 2) = v100;
        *v76 = v77;
        v78 = ++v109;
        if (v105)
        {
          LODWORD(v99) = 3;
          *(&v99 + 1) = ")";
          v100 = 1;
          if (v78 >= v110)
          {
            if (v108 > &v99 || v108 + 24 * v78 <= &v99)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v79 = v108 + 24 * v109;
          v80 = v99;
          *(v79 + 2) = v100;
          *v79 = v80;
          v81 = ++v109;
          if (v105)
          {
            LODWORD(v99) = 3;
            *(&v99 + 1) = " to match type of corresponding result (";
            v100 = 40;
            if (v81 >= v110)
            {
              if (v108 > &v99 || v108 + 24 * v81 <= &v99)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v82 = v108 + 24 * v109;
            v83 = v99;
            *(v82 + 2) = v100;
            *v82 = v83;
            ++v109;
            if (v105)
            {
              mlir::DiagnosticArgument::DiagnosticArgument(&v99, *(v28 + 1) & 0xFFFFFFFFFFFFFFF8);
              if (v109 >= v110)
              {
                if (v108 > &v99 || v108 + 24 * v109 <= &v99)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v84 = v108 + 24 * v109;
              v85 = v99;
              *(v84 + 2) = v100;
              *v84 = v85;
              v86 = ++v109;
              if (v105)
              {
                LODWORD(v99) = 3;
                *(&v99 + 1) = ")";
                v100 = 1;
                if (v86 >= v110)
                {
                  if (v108 > &v99 || v108 + 24 * v86 <= &v99)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v87 = v108 + 24 * v109;
                v88 = v99;
                *(v87 + 2) = v100;
                *v87 = v88;
                ++v109;
              }
            }
          }
        }
      }
    }
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v105);
  if (v105)
  {
    mlir::InFlightDiagnostic::report(&v105);
  }

  if (v117)
  {
    if (v116 != &v117)
    {
      free(v116);
    }

    v89 = __p;
    if (__p)
    {
      v90 = v115;
      v91 = __p;
      if (v115 != __p)
      {
        do
        {
          v90 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v90 - 1);
        }

        while (v90 != v89);
        v91 = __p;
      }

      v115 = v89;
      operator delete(v91);
    }

    v92 = v112;
    if (v112)
    {
      v93 = v113;
      v94 = v112;
      if (v113 != v112)
      {
        do
        {
          v96 = *--v93;
          v95 = v96;
          *v93 = 0;
          if (v96)
          {
            MEMORY[0x259C63150](v95, 0x1000C8077774924);
          }
        }

        while (v93 != v92);
        v94 = v112;
      }

      v113 = v92;
      operator delete(v94);
    }

    v97 = v108;
    if (v108 != v111)
    {
      goto LABEL_138;
    }
  }

LABEL_139:
  if (v121 != v123)
  {
    free(v121);
  }

  return v2;
}

void mlir::mps::MPSResourceBlobManagerInterface::MPSResourceBlobManagerInterface(mlir::mps::MPSResourceBlobManagerInterface *this, mlir::Dialect *a2)
{
  v2 = this;
  {
    v4 = a2;
    mlir::mps::MPSResourceBlobManagerInterface::MPSResourceBlobManagerInterface();
    a2 = v4;
    v2 = this;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::mps::MPSResourceBlobManagerInterface,void>::resolveTypeID(void)::id;
  *(v2 + 1) = a2;
  *(v2 + 2) = v3;
  *v2 = &unk_286893368;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  *(v2 + 5) = 0x7000000000;
  llvm::sys::RWMutexImpl::RWMutexImpl((v2 + 48));
  *(v2 + 7) = 0;
  operator new();
}

void mlir::mps::MPSResourceBlobManagerInterface::~MPSResourceBlobManagerInterface(mlir::mps::MPSResourceBlobManagerInterface *this)
{
  *this = &unk_286893368;
  llvm::StringMap<mlir::mps::MPSResourceBlobEntry,llvm::MallocAllocator>::clear(this + 24);
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v3 = *(this + 8);
    *(this + 8) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  llvm::sys::RWMutexImpl::~RWMutexImpl(this + 6);
  llvm::StringMap<mlir::mps::MPSResourceBlobEntry,llvm::MallocAllocator>::~StringMap(this + 24);

  mlir::DialectInterface::~DialectInterface(this);
}

{
  *this = &unk_286893368;
  llvm::StringMap<mlir::mps::MPSResourceBlobEntry,llvm::MallocAllocator>::clear(this + 24);
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v3 = *(this + 8);
    *(this + 8) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  llvm::sys::RWMutexImpl::~RWMutexImpl(this + 6);
  llvm::StringMap<mlir::mps::MPSResourceBlobEntry,llvm::MallocAllocator>::~StringMap(this + 24);

  mlir::DialectInterface::~DialectInterface(this);
}

{
  *this = &unk_286893368;
  llvm::StringMap<mlir::mps::MPSResourceBlobEntry,llvm::MallocAllocator>::clear(this + 24);
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v3 = *(this + 8);
    *(this + 8) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  llvm::sys::RWMutexImpl::~RWMutexImpl(this + 6);
  llvm::StringMap<mlir::mps::MPSResourceBlobEntry,llvm::MallocAllocator>::~StringMap(this + 24);
  mlir::DialectInterface::~DialectInterface(this);

  JUMPOUT(0x259C63180);
}

uint64_t llvm::StringMap<mlir::mps::MPSResourceBlobEntry,llvm::MallocAllocator>::clear(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = *(result + 8);
    if (v1)
    {
      v2 = 0;
      do
      {
        v3 = *(*result + v2);
        if (v3 != -8 && v3 != 0)
        {
          v5 = *v3;
          if (*(v3 + 88) == 1)
          {
            v6 = v3[9];
            if (v6 >= 8)
            {
              v7 = v3 + 6;
              v8 = v3 + 6;
              if ((v6 & 2) == 0)
              {
                v8 = *v7;
              }

              (*(v6 & 0xFFFFFFFFFFFFFFF8))(v8, v3[3], v3[4], v3[5]);
              v9 = v3[9];
              if (v9 >= 8)
              {
                if ((v9 & 4) != 0)
                {
                  if ((v9 & 2) == 0)
                  {
                    v7 = *v7;
                  }

                  (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7);
                }

                if ((v9 & 2) == 0)
                {
                  llvm::deallocate_buffer(v3[6], v3[7]);
                }
              }
            }
          }

          llvm::deallocate_buffer(v3, (v5 + 113));
        }

        *(*result + v2) = 0;
        v2 += 8;
      }

      while (8 * v1 != v2);
    }

    *(result + 12) = 0;
    *(result + 16) = 0;
  }

  return result;
}

uint64_t mlir::mps::MPSResourceBlobManagerInterface::getManager(mlir::mps::MPSResourceBlobManagerInterface *this, mlir::MLIRContext *a2)
{
  LoadedDialect = mlir::MLIRContext::getLoadedDialect(this, "mps", 3);

  return mlir::Dialect::getRegisteredInterface<mlir::mps::MPSResourceBlobManagerInterface>(LoadedDialect);
}

uint64_t mlir::Dialect::getRegisteredInterface<mlir::mps::MPSResourceBlobManagerInterface>(uint64_t a1)
{
  {
    v1 = *(a1 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    v8 = a1;
    mlir::mps::MPSResourceBlobManagerInterface::MPSResourceBlobManagerInterface();
    a1 = v8;
    v1 = *(v8 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(a1 + 48);
  v3 = ((mlir::detail::TypeIDResolver<mlir::mps::MPSResourceBlobManagerInterface,void>::resolveTypeID(void)::id >> 4) ^ (mlir::detail::TypeIDResolver<mlir::mps::MPSResourceBlobManagerInterface,void>::resolveTypeID(void)::id >> 9)) & (v1 - 1);
  v4 = *(v2 + 16 * v3);
  if (v4 != mlir::detail::TypeIDResolver<mlir::mps::MPSResourceBlobManagerInterface,void>::resolveTypeID(void)::id)
  {
    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (v1 - 1);
      v4 = *(v2 + 16 * v3);
      if (v4 == mlir::detail::TypeIDResolver<mlir::mps::MPSResourceBlobManagerInterface,void>::resolveTypeID(void)::id)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

LABEL_4:
  if (v3 == v1)
  {
    return 0;
  }

  return *(v2 + 16 * v3 + 8);
}

uint64_t mlir::mps::MPSResourceBlobManagerInterface::allocateBufferTensorBlob@<X0>(mlir::mps::MPSResourceBlobManagerInterface *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(this + 8);
  result = (*(*v7 + 16))(v7);
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 48) = llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::CallbacksHolder<mlir::mps::MPSResourceBlobManagerInterface::allocateBufferTensorBlob(unsigned long,unsigned long)::$_0,mlir::mps::MPSResourceBlobManagerInterface::allocateBufferTensorBlob(unsigned long,unsigned long)::$_0,void>::Callbacks + 2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v7;
  *(a4 + 56) = 1;
  return result;
}

uint64_t mlir::mps::MPSResourceBlobManagerInterface::lookup(uint64_t a1, unsigned int *a2, unint64_t a3)
{
  llvm::sys::RWMutexImpl::lock_shared((a1 + 48));
  v7 = llvm::StringMapImpl::hash(a2, a3, v6);
  Key = llvm::StringMapImpl::FindKey((a1 + 24), a2, a3, v7);
  if (Key == -1 || Key == *(a1 + 32))
  {
    v9 = 0;
  }

  else
  {
    v9 = *(*(a1 + 24) + 8 * Key) + 8;
  }

  llvm::sys::RWMutexImpl::unlock_shared((a1 + 48));
  return v9;
}

BOOL mlir::mps::MPSResourceBlobManagerInterface::contains(uint64_t a1, unsigned int *a2, unint64_t a3)
{
  llvm::sys::RWMutexImpl::lock_shared((a1 + 48));
  v7 = llvm::StringMapImpl::hash(a2, a3, v6);
  Key = llvm::StringMapImpl::FindKey((a1 + 24), a2, a3, v7);
  if (Key == -1)
  {
    v10 = *(a1 + 32);
    v9 = v10;
  }

  else
  {
    v9 = Key;
    v10 = *(a1 + 32);
  }

  v11 = v9 != v10;
  llvm::sys::RWMutexImpl::unlock_shared((a1 + 48));
  return v11;
}

uint64_t mlir::mps::MPSResourceBlobManagerInterface::defineEntryValue(uint64_t a1, unsigned int *a2, unint64_t a3, __int128 *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  llvm::sys::RWMutexImpl::lock_shared((a1 + 48));
  v9 = llvm::StringMapImpl::hash(a2, a3, v8);
  Key = llvm::StringMapImpl::FindKey((a1 + 24), a2, a3, v9);
  if (Key == -1 || Key == *(a1 + 32))
  {
    v11 = 0;
  }

  else
  {
    v11 = *(*(a1 + 24) + 8 * Key) + 8;
  }

  result = llvm::sys::RWMutexImpl::unlock_shared((a1 + 48));
  v21 = *a4;
  v13 = *(a4 + 6);
  v22 = *(a4 + 2);
  v25 = v13;
  if (v13 >= 8)
  {
    if ((v13 & 2) != 0 && (v13 & 4) != 0)
    {
      (*((v13 & 0xFFFFFFFFFFFFFFF8) + 8))(&v23, a4 + 24);
      result = (*((v25 & 0xFFFFFFFFFFFFFFF8) + 16))(a4 + 24);
    }

    else
    {
      v23 = *(a4 + 24);
      v24 = *(a4 + 5);
    }

    *(a4 + 6) = 0;
  }

  v14 = *(a4 + 56);
  v26 = v14;
  if (*(v11 + 80))
  {
    result = mlir::AsmResourceBlob::operator=((v11 + 16), &v21);
    if (v25 >= 8)
    {
      v15 = (v25 & 2) != 0 ? &v23 : v23;
      result = (*(v25 & 0xFFFFFFFFFFFFFFF8))(v15, v21, *(&v21 + 1), v22);
      v16 = v25;
      if (v25 >= 8)
      {
        if ((v25 & 4) != 0)
        {
          if ((v25 & 2) != 0)
          {
            v17 = &v23;
          }

          else
          {
            v17 = v23;
          }

          result = (*((v25 & 0xFFFFFFFFFFFFFFF8) + 16))(v17);
        }

        if ((v16 & 2) == 0)
        {
          llvm::deallocate_buffer(v23, *(&v23 + 1));
        }
      }
    }
  }

  else
  {
    v18 = v22;
    *(v11 + 16) = v21;
    *(v11 + 32) = v18;
    v19 = v25;
    *(v11 + 64) = v25;
    if (v19 >= 8)
    {
      if ((v19 & 2) != 0 && (v19 & 4) != 0)
      {
        (*((v19 & 0xFFFFFFFFFFFFFFF8) + 8))(v11 + 40, &v23);
        result = (*((*(v11 + 64) & 0xFFFFFFFFFFFFFFF8) + 16))(&v23);
        v14 = v26;
      }

      else
      {
        v20 = v24;
        *(v11 + 40) = v23;
        *(v11 + 56) = v20;
      }
    }

    *(v11 + 72) = v14;
    *(v11 + 80) = 1;
  }

  *(v11 + 96) = 1;
  return result;
}

BOOL mlir::mps::MPSResourceBlobManagerInterface::insert@<W0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, const unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v29[4] = *MEMORY[0x277D85DE8];
  llvm::sys::RWMutexImpl::lock((a1 + 48));
  v26[0] = a1;
  v26[1] = a4;
  v10 = mlir::mps::MPSResourceBlobManagerInterface::insert(llvm::StringRef,std::optional<mlir::AsmResourceBlob>)::$_0::operator()(v26, a2, a3);
  if (v10)
  {
    v11 = *(a1 + 8);
    {
      v21 = v10;
      mlir::mps::MPSResourceBlobManagerInterface::insert();
      v10 = v21;
    }

    v12 = mlir::detail::TypeIDResolver<mlir::mps::MPSDialectResourceBlobHandle,void>::resolveTypeID(void)::id;
    *a5 = v10;
    a5[1] = v12;
    a5[2] = v11;
  }

  else
  {
    v27 = v29;
    v28 = xmmword_25736B040;
    if (a3 >= 0x21)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v13 = 0;
    if (a3)
    {
      memcpy(v27, a2, a3);
      v13 = v28;
    }

    v14 = &a3[v13];
    *&v28 = v14;
    if ((v14 + 1) > *(&v28 + 1))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v14[v27] = 95;
    *&v28 = v28 + 1;
    v15 = (a3 + 1);
    v16 = 1;
    while (1)
    {
      v23 = v16;
      v24 = &v23;
      v25 = 267;
      llvm::Twine::toVector(&v24, &v27);
      v17 = mlir::mps::MPSResourceBlobManagerInterface::insert(llvm::StringRef,std::optional<mlir::AsmResourceBlob>)::$_0::operator()(v26, v27, v28);
      if (v17)
      {
        break;
      }

      if (v28 == v15)
      {
        ++v16;
      }

      else
      {
        if (v28 <= v15)
        {
          if (*(&v28 + 1) < v15)
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          if (v15 != v28)
          {
            bzero(v27 + v28, v15 - v28);
          }
        }

        *&v28 = v15;
        ++v16;
      }
    }

    v18 = *(a1 + 8);
    {
      v22 = v17;
      mlir::DialectBytecodeReader::readResourceHandle<mlir::mps::MPSDialectResourceBlobHandle>();
      v17 = v22;
    }

    v19 = mlir::detail::TypeIDResolver<mlir::mps::MPSDialectResourceBlobHandle,void>::resolveTypeID(void)::id;
    *a5 = v17;
    a5[1] = v19;
    a5[2] = v18;
    if (v27 != v29)
    {
      free(v27);
    }
  }

  return llvm::sys::RWMutexImpl::unlock((a1 + 48));
}

uint64_t mlir::mps::MPSResourceBlobManagerInterface::insert(llvm::StringRef,std::optional<mlir::AsmResourceBlob>)::$_0::operator()(uint64_t *a1, unsigned int *a2, const unsigned __int8 *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  *v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = llvm::StringMapImpl::hash(a2, a3, a3);
  v8 = llvm::StringMap<mlir::mps::MPSResourceBlobEntry,llvm::MallocAllocator>::try_emplace_with_hash<mlir::mps::MPSResourceBlobEntry>((v6 + 24), a2, a3, v7, &v32);
  v10 = v9;
  if (v37 == 1 && v36 >= 8)
  {
    v11 = (v36 & 2) != 0 ? (&v34 + 8) : *(&v34 + 1);
    (*(v36 & 0xFFFFFFFFFFFFFFF8))(v11, v33, *(&v33 + 1), v34);
    v12 = v36;
    if (v36 >= 8)
    {
      if ((v36 & 4) != 0)
      {
        if ((v36 & 2) != 0)
        {
          v13 = &v34 + 8;
        }

        else
        {
          v13 = *(&v34 + 1);
        }

        (*((v36 & 0xFFFFFFFFFFFFFFF8) + 16))(v13);
      }

      if ((v12 & 2) == 0)
      {
        llvm::deallocate_buffer(*(&v34 + 1), v35[0]);
      }
    }
  }

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v14 = *v8;
  v15 = *v8 + 112;
  v16 = **v8;
  v17 = a1[1];
  LOBYTE(v25) = 0;
  v31 = 0;
  if (*(v17 + 64) == 1)
  {
    v18 = *(v17 + 2);
    v25 = *v17;
    v19 = *(v17 + 6);
    v26 = v18;
    v29 = v19;
    if (v19 >= 8)
    {
      if ((v19 & 2) != 0 && (v19 & 4) != 0)
      {
        (*((v19 & 0xFFFFFFFFFFFFFFF8) + 8))(&v27, v17 + 24);
        (*((v29 & 0xFFFFFFFFFFFFFFF8) + 16))(v17 + 24);
      }

      else
      {
        v20 = *(v17 + 24);
        v28 = *(v17 + 5);
        v27 = v20;
      }

      *(v17 + 6) = 0;
    }

    v30 = *(v17 + 56);
    v31 = 1;
  }

  v14[1] = v15;
  v14[2] = v16;
  std::__optional_storage_base<mlir::AsmResourceBlob,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<mlir::AsmResourceBlob,false>>(v14 + 3, &v25);
  *(v14 + 104) = *(v14 + 88);
  v14[12] = 0;
  if (v31 == 1 && v29 >= 8)
  {
    v22 = (v29 & 2) != 0 ? &v27 : v27;
    (*(v29 & 0xFFFFFFFFFFFFFFF8))(v22, v25, *(&v25 + 1), v26);
    v23 = v29;
    if (v29 >= 8)
    {
      if ((v29 & 4) != 0)
      {
        if ((v29 & 2) != 0)
        {
          v24 = &v27;
        }

        else
        {
          v24 = v27;
        }

        (*((v29 & 0xFFFFFFFFFFFFFFF8) + 16))(v24);
      }

      if ((v23 & 2) == 0)
      {
        llvm::deallocate_buffer(v27, *(&v27 + 1));
      }
    }
  }

  return *v8 + 8;
}

uint64_t *mlir::AsmResourceBlob::operator=(uint64_t *a1, uint64_t a2)
{
  v4 = (a1 + 3);
  v5 = a1[6];
  if (v5 >= 8)
  {
    v6 = *a1;
    v7 = a1[1];
    v8 = a1[2];
    v9 = a1 + 3;
    if ((v5 & 2) == 0)
    {
      v9 = *v4;
    }

    (*(v5 & 0xFFFFFFFFFFFFFFF8))(v9, v6, v7, v8);
  }

  *a1 = *a2;
  a1[2] = *(a2 + 16);
  if (a1 != a2)
  {
    v10 = a1[6];
    if (v10 >= 8)
    {
      if ((v10 & 4) != 0)
      {
        v11 = v4;
        if ((v10 & 2) == 0)
        {
          v11 = *v4;
        }

        (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v11);
      }

      if ((v10 & 2) == 0)
      {
        llvm::deallocate_buffer(a1[3], a1[4]);
      }
    }

    a1[6] = 0;
    v12 = *(a2 + 48);
    a1[6] = v12;
    if (v12 >= 8)
    {
      if ((v12 & 2) != 0 && (v12 & 4) != 0)
      {
        (*((v12 & 0xFFFFFFFFFFFFFFF8) + 8))(v4, a2 + 24);
        (*((a1[6] & 0xFFFFFFFFFFFFFFF8) + 16))(a2 + 24);
      }

      else
      {
        v13 = *(a2 + 24);
        v4[2] = *(a2 + 40);
        *v4 = v13;
      }

      *(a2 + 48) = 0;
    }
  }

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t *llvm::StringMap<mlir::mps::MPSResourceBlobEntry,llvm::MallocAllocator>::try_emplace_with_hash<mlir::mps::MPSResourceBlobEntry>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4, uint64_t a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 113, 8uLL);
    v13 = buffer + 112;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v11)
  {
    while (!v11 || v11 == -8)
    {
      v15 = v10[1];
      ++v10;
      v11 = v15;
    }

    return v10;
  }

  buffer = llvm::allocate_buffer(a3 + 113, 8uLL);
  v13 = buffer + 112;
  if (a3)
  {
LABEL_4:
    memcpy(v13, a2, a3);
  }

LABEL_5:
  *(v13 + a3) = 0;
  *buffer = a3;
  *(buffer + 8) = *a5;
  buffer[24] = 0;
  buffer[88] = 0;
  if (*(a5 + 80) == 1)
  {
    *(buffer + 24) = *(a5 + 16);
    *(buffer + 5) = *(a5 + 32);
    v14 = *(a5 + 64);
    *(buffer + 9) = v14;
    if (v14 >= 8)
    {
      if ((v14 & 2) != 0 && (v14 & 4) != 0)
      {
        (*((v14 & 0xFFFFFFFFFFFFFFF8) + 8))(buffer + 48, a5 + 40);
        (*((*(buffer + 9) & 0xFFFFFFFFFFFFFFF8) + 16))(a5 + 40);
      }

      else
      {
        *(buffer + 3) = *(a5 + 40);
        *(buffer + 8) = *(a5 + 56);
      }

      *(a5 + 64) = 0;
    }

    buffer[80] = *(a5 + 72);
    buffer[88] = 1;
  }

  *(buffer + 12) = *(a5 + 88);
  buffer[104] = *(a5 + 96);
  *v10 = buffer;
  ++*(a1 + 3);
  v10 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9));
  if (*v10)
  {
    v16 = *v10 == -8;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    do
    {
      v18 = v10[1];
      ++v10;
      v17 = v18;
      if (v18)
      {
        v19 = v17 == -8;
      }

      else
      {
        v19 = 1;
      }
    }

    while (v19);
  }

  return v10;
}

uint64_t *std::__optional_storage_base<mlir::AsmResourceBlob,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<mlir::AsmResourceBlob,false>>(uint64_t *result, uint64_t a2)
{
  if (*(result + 64) == *(a2 + 64))
  {
    if (*(result + 64))
    {

      return mlir::AsmResourceBlob::operator=(result, a2);
    }
  }

  else if (*(result + 64))
  {
    v2 = result[6];
    if (v2 >= 8)
    {
      v3 = result + 3;
      v4 = *result;
      v5 = result[1];
      v6 = result;
      v7 = result[2];
      v8 = result + 3;
      if ((v2 & 2) == 0)
      {
        v8 = *v3;
      }

      (*(v2 & 0xFFFFFFFFFFFFFFF8))(v8, v4, v5, v7);
      result = v6;
      v9 = v6[6];
      if (v9 >= 8)
      {
        if ((v9 & 4) != 0)
        {
          if ((v9 & 2) == 0)
          {
            v3 = *v3;
          }

          (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
          result = v6;
        }

        if ((v9 & 2) == 0)
        {
          llvm::deallocate_buffer(result[3], result[4]);
        }
      }
    }

    *(result + 64) = 0;
  }

  else
  {
    v10 = *a2;
    result[2] = *(a2 + 16);
    *result = v10;
    result[6] = 0;
    v11 = *(a2 + 48);
    result[6] = v11;
    if (v11 >= 8)
    {
      if ((v11 & 2) != 0 && (v11 & 4) != 0)
      {
        v13 = result;
        v14 = a2;
        (*((v11 & 0xFFFFFFFFFFFFFFF8) + 8))(result + 3, a2 + 24);
        (*((v13[6] & 0xFFFFFFFFFFFFFFF8) + 16))(v14 + 24);
        a2 = v14;
        result = v13;
      }

      else
      {
        v12 = *(a2 + 24);
        result[5] = *(a2 + 40);
        *(result + 3) = v12;
      }

      *(a2 + 48) = 0;
    }

    *(result + 56) = *(a2 + 56);
    *(result + 64) = 1;
  }

  return result;
}

const char *llvm::getTypeName<mlir::mps::MPSResourceBlobManagerInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::MPSResourceBlobManagerInterface]";
  v6 = 92;
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

uint64_t llvm::StringMap<mlir::mps::MPSResourceBlobEntry,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      do
      {
        v4 = *(*a1 + v3);
        if (v4 != -8 && v4 != 0)
        {
          v6 = *v4;
          if (*(v4 + 88) == 1)
          {
            v7 = v4[9];
            if (v7 >= 8)
            {
              v8 = v4 + 6;
              v9 = v4 + 6;
              if ((v7 & 2) == 0)
              {
                v9 = *v8;
              }

              (*(v7 & 0xFFFFFFFFFFFFFFF8))(v9, v4[3], v4[4], v4[5]);
              v10 = v4[9];
              if (v10 >= 8)
              {
                if ((v10 & 4) != 0)
                {
                  if ((v10 & 2) == 0)
                  {
                    v8 = *v8;
                  }

                  (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8);
                }

                if ((v10 & 2) == 0)
                {
                  llvm::deallocate_buffer(v4[6], v4[7]);
                }
              }
            }
          }

          llvm::deallocate_buffer(v4, (v6 + 113));
        }

        v3 += 8;
      }

      while (8 * v2 != v3);
    }
  }

  free(*a1);
  return a1;
}

void *mlir::createRawElementsAttr(void *a1, unsigned __int8 *a2, unint64_t a3)
{
  v28 = a1;
  v5 = mlir::TensorType::operator mlir::ShapedType(&v28);
  ElementsAttrStorageSize = mlir::mps::getElementsAttrStorageSize(v5, v6);
  ElementType = mlir::RankedTensorType::getElementType(&v28);
  isCompatibleWithDenseStorage = mlir::mps::isCompatibleWithDenseStorage(ElementType);
  if (ElementsAttrStorageSize != a3)
  {
    goto LABEL_21;
  }

  if (a3 >> 16)
  {
    goto LABEL_11;
  }

  if (a3)
  {
    v10 = 0;
    do
    {
      v11 = a2[v10++];
    }

    while (v10 < a3 && v11 == 0);
    if (v11)
    {
      if (((a3 < 0x41) & isCompatibleWithDenseStorage) == 0)
      {
        goto LABEL_11;
      }

LABEL_21:
      v24 = mlir::TensorType::operator mlir::ShapedType(&v28);
      v27 = mlir::DenseElementsAttr::getFromRawBuffer(v24, v25, a2, a3);
      return mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v27);
    }
  }

  if (isCompatibleWithDenseStorage)
  {
    goto LABEL_21;
  }

LABEL_11:
  result = mlir::mps::getBufferTensorAttr(v28, a2, a3);
  if (!result)
  {
    return result;
  }

  v14 = *result;
  {
    v15 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    if (!v17)
    {
      return result;
    }
  }

  else
  {
    v26 = result;
    mlir::memref::GlobalOp::verify();
    result = v26;
    v15 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    if (!v17)
    {
      return result;
    }
  }

  v18 = v16;
  v19 = v17;
  do
  {
    v20 = v19 >> 1;
    v21 = &v18[2 * (v19 >> 1)];
    v23 = *v21;
    v22 = v21 + 2;
    v19 += ~(v19 >> 1);
    if (v23 < v15)
    {
      v18 = v22;
    }

    else
    {
      v19 = v20;
    }
  }

  while (v19);
  return result;
}

uint64_t mlir::getElementsAttrRawData(uint64_t a1)
{
  result = mlir::DenseElementsAttr::classof(a1);
  if (result)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  v5 = v3;
  if (v3)
  {
    return mlir::DenseElementsAttr::getRawData(&v5);
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v4)
  {
    return mlir::mps::MPSBufferTensorAttr::getRawData(&v5);
  }

  return result;
}

uint64_t mlir::tryCreateMutableElementsAttr(void *a1, __n128 **a2)
{
  v23 = a1;
  v3 = mlir::TensorType::operator mlir::ShapedType(&v23);
  if (mlir::mps::getElementsAttrStorageSize(v3, v4) <= 0x40)
  {
    result = 0;
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  BufferTensorAttr = mlir::mps::getBufferTensorAttr(v23);
  v22 = BufferTensorAttr;
  if (!BufferTensorAttr)
  {
    goto LABEL_16;
  }

  v7 = BufferTensorAttr->n128_u64[0];
  {
    v8 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
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
    v20 = BufferTensorAttr;
    mlir::memref::GlobalOp::verify();
    BufferTensorAttr = v20;
    v8 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
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
    v17 = v11[1];
    goto LABEL_17;
  }

LABEL_16:
  v17 = 0;
LABEL_17:
  *a2 = BufferTensorAttr;
  a2[1] = v17;
  mlir::mps::MPSBufferTensorAttr::getHandle(&v22, &v21);
  if (*(v21.n128_u64[0] + 80))
  {
    v18 = v21.n128_u64[0] + 16;
  }

  else
  {
    v18 = 0;
  }

  return *v18;
}

void *mlir::convertElementsAttr(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a1;
  v28[0] = a1;
  v28[1] = a2;
  if (mlir::DenseElementsAttr::classof(a1))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v29 = v6;
  if (v6)
  {
    RawData = mlir::DenseElementsAttr::getRawData(&v29);
LABEL_11:
    v3 = RawData;
    v5 = v8;
    goto LABEL_12;
  }

  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  v29 = v9;
  if (v9)
  {
    RawData = mlir::mps::MPSBufferTensorAttr::getRawData(&v29);
    goto LABEL_11;
  }

LABEL_12:
  Type = mlir::ElementsAttr::getType(v28);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(Type);
  v12 = mlir::mps::isCompatibleWithDenseStorage(ElementTypeOrSelf) & (a3 | (v5 < 0x41));
  if (v12 == mlir::DenseElementsAttr::classof(v28[0]))
  {
    return v28[0];
  }

  if (v12)
  {
    ShapedType = mlir::ElementsAttr::getShapedType(v28);
    v29 = mlir::DenseElementsAttr::getFromRawBuffer(ShapedType, v14, v3, v5);
    return mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v29);
  }

  v16 = mlir::ElementsAttr::getType(v28);
  result = mlir::mps::getBufferTensorAttr(v16, v3, v5);
  if (result)
  {
    v17 = *result;
    {
      v18 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      if (!v20)
      {
        return result;
      }
    }

    else
    {
      v27 = result;
      mlir::memref::GlobalOp::verify();
      result = v27;
      v18 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      if (!v20)
      {
        return result;
      }
    }

    v21 = v19;
    v22 = v20;
    do
    {
      v23 = v22 >> 1;
      v24 = &v21[2 * (v22 >> 1)];
      v26 = *v24;
      v25 = v24 + 2;
      v22 += ~(v22 >> 1);
      if (v26 < v18)
      {
        v21 = v25;
      }

      else
      {
        v22 = v23;
      }
    }

    while (v22);
  }

  return result;
}

uint64_t mlir::reshapeElementsAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[0] = a3;
  v29[1] = a4;
  result = mlir::DenseElementsAttr::classof(a1);
  if (result)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  v27.n128_u64[0] = v8;
  if (v8)
  {
    v28 = mlir::DenseElementsAttr::reshape(&v27, a3, a4);
    return mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v28);
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  v28 = v9;
  if (v9)
  {
    Context = mlir::Type::getContext(v29);
    Shape = mlir::ShapedType::getShape(v29);
    v13 = v12;
    ElementType = mlir::ShapedType::getElementType(v29);
    v15 = mlir::RankedTensorType::get(Shape, v13, ElementType, 0);
    mlir::mps::MPSBufferTensorAttr::getHandle(&v28, &v27);
    result = mlir::mps::MPSBufferTensorAttr::get(Context, v15, &v27);
    if (result)
    {
      v16 = *result;
      {
        v17 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        if (!v19)
        {
          return result;
        }
      }

      else
      {
        v26 = result;
        mlir::memref::GlobalOp::verify();
        result = v26;
        v17 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        if (!v19)
        {
          return result;
        }
      }

      v20 = v18;
      v21 = v19;
      do
      {
        v22 = v21 >> 1;
        v23 = &v20[2 * (v21 >> 1)];
        v25 = *v23;
        v24 = v23 + 2;
        v21 += ~(v21 >> 1);
        if (v25 < v17)
        {
          v20 = v24;
        }

        else
        {
          v21 = v22;
        }
      }

      while (v21);
    }
  }

  return result;
}

__n128 *mlir::createElementsAttr(void *a1, _DWORD *a2, unint64_t a3)
{
  v62 = a1;
  ElementType = mlir::RankedTensorType::getElementType(&v62);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&ElementType);
  v58[1] = 0;
  ElementType = &v61;
  v60 = xmmword_25736EFF0;
  v58[0] = 0;
  MutableElementsAttr = mlir::tryCreateMutableElementsAttr(v62, v58);
  RawElementsAttr = v58[0];
  if (v58[0])
  {
    v9 = MutableElementsAttr;
    v10 = v7;
  }

  else
  {
    v11 = mlir::TensorType::operator mlir::ShapedType(&v62);
    ElementsAttrStorageSize = mlir::mps::getElementsAttrStorageSize(v11, v12);
    v10 = ElementsAttrStorageSize;
    if (v60 != ElementsAttrStorageSize)
    {
      if (v60 <= ElementsAttrStorageSize)
      {
        if (*(&v60 + 1) < ElementsAttrStorageSize)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        if (ElementsAttrStorageSize != v60)
        {
          bzero(&ElementType[v60], ElementsAttrStorageSize - v60);
        }
      }

      *&v60 = v10;
    }

    v9 = ElementType;
  }

  v57 = mlir::RankedTensorType::getElementType(&v62);
  __dst = v9;
  v55 = v10;
  if (mlir::Type::isInteger(&v57, 1) && a3 == 1)
  {
    v14 = a2[2];
    if (v14 > 0x40)
    {
      v15 = llvm::APInt::countLeadingZerosSlowCase(a2) == v14;
    }

    else
    {
      v15 = *a2 == 0;
    }

    v20 = v15;
    *v9 = v20 - 1;
    goto LABEL_28;
  }

  v57 = mlir::RankedTensorType::getElementType(&v62);
  if (mlir::Type::isInteger(&v57, 1))
  {
    if (!v10)
    {
      goto LABEL_28;
    }

    v16 = v10;
    v17 = v9;
    while (1)
    {
      while (1)
      {
        v27 = a3 - 8;
        v28 = a3 >= 8 ? 8 : a3;
        v29 = v28 <= 1 ? 1 : v28;
        if (a3)
        {
          break;
        }

        *v17++ = 0;
        a3 = -8;
        if (!--v16)
        {
          goto LABEL_28;
        }
      }

      v30 = a2[2];
      if (v30 > 0x40)
      {
        v26 = llvm::APInt::countLeadingZerosSlowCase(a2) != v30;
        if (a3 < 2)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v26 = *a2 != 0;
        if (a3 < 2)
        {
          goto LABEL_42;
        }
      }

      v31 = a2[6];
      if (v31 >= 0x41)
      {
        v32 = llvm::APInt::countLeadingZerosSlowCase((a2 + 4)) == v31;
      }

      else
      {
        v32 = *(a2 + 2) == 0;
      }

      if (v32)
      {
        v34 = 0;
      }

      else
      {
        v34 = 2;
      }

      v26 |= v34;
      if (a3 != 2)
      {
        v35 = a2[10];
        v36 = v35 >= 0x41 ? llvm::APInt::countLeadingZerosSlowCase((a2 + 8)) == v35 : *(a2 + 4) == 0;
        v37 = v36;
        v38 = v37 ? 0 : 4;
        v26 |= v38;
        if (a3 != 3)
        {
          v39 = a2[14];
          if (v39 >= 0x41)
          {
            if (llvm::APInt::countLeadingZerosSlowCase((a2 + 12)) == v39)
            {
              v41 = 0;
            }

            else
            {
              v41 = 8;
            }

            v26 |= v41;
            if (a3 != 4)
            {
LABEL_86:
              v42 = a2[18];
              if (v42 >= 0x41)
              {
                v43 = llvm::APInt::countLeadingZerosSlowCase((a2 + 16)) == v42;
              }

              else
              {
                v43 = *(a2 + 8) == 0;
              }

              if (v43)
              {
                v45 = 0;
              }

              else
              {
                v45 = 16;
              }

              v26 |= v45;
              if (a3 != 5)
              {
                v46 = a2[22];
                v47 = v46 >= 0x41 ? llvm::APInt::countLeadingZerosSlowCase((a2 + 20)) == v46 : *(a2 + 10) == 0;
                v48 = v47;
                v49 = v48 ? 0 : 32;
                v26 |= v49;
                if (a3 != 6)
                {
                  v50 = a2[26];
                  v51 = v50 >= 0x41 ? llvm::APInt::countLeadingZerosSlowCase((a2 + 24)) == v50 : *(a2 + 12) == 0;
                  v52 = v51;
                  v53 = v52 ? 0 : 64;
                  v26 |= v53;
                  if (a3 != 7)
                  {
                    v54 = a2[30];
                    if (v54 < 0x41)
                    {
                      v23 = *(a2 + 14) == 0;
                    }

                    else
                    {
                      v23 = llvm::APInt::countLeadingZerosSlowCase((a2 + 28)) == v54;
                    }

                    if (v23)
                    {
                      v25 = 0;
                    }

                    else
                    {
                      v25 = 0x80;
                    }

                    v26 |= v25;
                  }
                }
              }
            }
          }

          else
          {
            if (*(a2 + 6))
            {
              v40 = 8;
            }

            else
            {
              v40 = 0;
            }

            v26 |= v40;
            if (a3 != 4)
            {
              goto LABEL_86;
            }
          }
        }
      }

LABEL_42:
      a2 += 4 * v29;
      *v17++ = v26;
      a3 = v27;
      if (!--v16)
      {
        goto LABEL_28;
      }
    }
  }

  if (a3 >= 1)
  {
    v18 = IntOrFloatBitWidth >> 3;
    do
    {
      v19 = a2;
      if (a2[2] >= 0x41u)
      {
        v19 = *a2;
      }

      memcpy(v9, v19, v18);
      v9 += v18;
      a2 += 4;
      --a3;
    }

    while (a3);
  }

LABEL_28:
  if (!RawElementsAttr)
  {
    RawElementsAttr = mlir::createRawElementsAttr(v62, __dst, v55);
    v21 = ElementType;
    if (ElementType == &v61)
    {
      return RawElementsAttr;
    }

    goto LABEL_30;
  }

  v21 = ElementType;
  if (ElementType != &v61)
  {
LABEL_30:
    free(v21);
  }

  return RawElementsAttr;
}

__n128 *mlir::createElementsAttr(void *a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  ElementType = mlir::RankedTensorType::getElementType(&v30);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&ElementType);
  v26[1] = 0;
  ElementType = &v29;
  v28 = xmmword_25736EFF0;
  v26[0] = 0;
  MutableElementsAttr = mlir::tryCreateMutableElementsAttr(v30, v26);
  v23 = MutableElementsAttr;
  RawElementsAttr = v26[0];
  if (v26[0])
  {
    v22 = v7;
    if (a3 < 1)
    {
      goto LABEL_25;
    }

    goto LABEL_12;
  }

  v9 = mlir::TensorType::operator mlir::ShapedType(&v30);
  MutableElementsAttr = mlir::mps::getElementsAttrStorageSize(v9, v10);
  if (v28 != MutableElementsAttr)
  {
    if (v28 <= MutableElementsAttr)
    {
      if (*(&v28 + 1) < MutableElementsAttr)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      if (MutableElementsAttr != v28)
      {
        v11 = MutableElementsAttr;
        bzero(&ElementType[v28], MutableElementsAttr - v28);
        MutableElementsAttr = v11;
      }
    }

    *&v28 = MutableElementsAttr;
  }

  v22 = MutableElementsAttr;
  v23 = ElementType;
  if (a3 >= 1)
  {
LABEL_12:
    v12 = IntOrFloatBitWidth >> 3;
    v13 = llvm::APFloatBase::PPCDoubleDouble(MutableElementsAttr);
    v14 = (a2 + 8);
    v15 = v23;
    do
    {
      if (v13 == *v14)
      {
        llvm::detail::DoubleAPFloat::bitcastToAPInt(v14, &v24);
      }

      else
      {
        llvm::detail::IEEEFloat::bitcastToAPInt(v14, &v24);
      }

      v16 = v25;
      v17 = v24;
      if (v25 >= 0x41)
      {
        v18 = v24;
      }

      else
      {
        v18 = &v24;
      }

      memcpy(v15, v18, v12);
      if (v16 >= 0x41 && v17 != 0)
      {
        MEMORY[0x259C63150](v17, 0x1000C8000313F17);
      }

      v15 += v12;
      v14 = (v14 + 32);
      --a3;
    }

    while (a3);
  }

LABEL_25:
  if (!RawElementsAttr)
  {
    RawElementsAttr = mlir::createRawElementsAttr(v30, v23, v22);
    v20 = ElementType;
    if (ElementType == &v29)
    {
      return RawElementsAttr;
    }

    goto LABEL_27;
  }

  v20 = ElementType;
  if (ElementType != &v29)
  {
LABEL_27:
    free(v20);
  }

  return RawElementsAttr;
}

void *mlir::createSplatF16ElementsAttr(void *a1, float _S0)
{
  __asm { FCVT            H0, S0 }

  v8 = _H0;
  return mlir::createRawElementsAttr(a1, &v8, 2uLL);
}

void *mlir::rewriteElementsAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v526[5] = *MEMORY[0x277D85DE8];
  *&v516 = a1;
  *(&v516 + 1) = a2;
  v515[0] = a3;
  v515[1] = a4;
  v514[0] = mlir::ElementsAttr::getShapedType(&v516);
  v514[1] = v8;
  if (mlir::ShapedType::hasRank(v515))
  {
    Shape = mlir::ShapedType::getShape(v515);
    if (!v10)
    {
LABEL_6:
      v12 = v515;
      goto LABEL_8;
    }

    v11 = 8 * v10;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_6;
      }
    }
  }

  v12 = v514;
LABEL_8:
  v13 = mlir::ShapedType::getShape(v12);
  v15 = v14;
  ElementType = mlir::ShapedType::getElementType(v515);
  v513 = mlir::RankedTensorType::get(v13, v15, ElementType, 0);
  v17 = mlir::ShapedType::getElementType(v514);
  if (v17 == mlir::ShapedType::getElementType(v515))
  {
    *&v516 = mlir::convertElementsAttr(v516, *(&v516 + 1), a5);
    *(&v516 + 1) = v18;
    v19 = mlir::ShapedType::getShape(v514);
    if (v15 == v20 && !memcmp(v13, v19, 8 * v15))
    {
      return v516;
    }

    v21 = v516;
    v22 = mlir::TensorType::operator mlir::ShapedType(&v513);
    return mlir::reshapeElementsAttr(v21, *(&v21 + 1), v22, v23);
  }

  if (*(*mlir::ShapedType::getElementType(v514) + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id && *(*mlir::ShapedType::getElementType(v515) + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    return 0;
  }

  v521 = v523;
  v522 = xmmword_25738E870;
  if (mlir::ElementsAttr::isSplat(&v516))
  {
    v25 = mlir::RankedTensorType::getElementType(&v513);
    ElementsAttrStorageSize = (mlir::mps::getElementsAttrElementBitWidth(v25) + 7) >> 3;
    v27 = v522;
    v28 = v522 > ElementsAttrStorageSize;
    if (v522 == ElementsAttrStorageSize)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v29 = mlir::TensorType::operator mlir::ShapedType(&v513);
    ElementsAttrStorageSize = mlir::mps::getElementsAttrStorageSize(v29, v30);
    v27 = v522;
    v28 = v522 > ElementsAttrStorageSize;
    if (v522 == ElementsAttrStorageSize)
    {
      goto LABEL_23;
    }
  }

  if (!v28)
  {
    if (*(&v522 + 1) < ElementsAttrStorageSize)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    if (ElementsAttrStorageSize != v27)
    {
      bzero(v521 + v27, ElementsAttrStorageSize - v27);
    }
  }

  *&v522 = ElementsAttrStorageSize;
LABEL_23:
  v524 = mlir::RankedTensorType::getElementType(&v513);
  if (!mlir::Type::isUnsignedInteger(&v524, 8))
  {
    v524 = mlir::RankedTensorType::getElementType(&v513);
    if (mlir::Type::isInteger(&v524, 8))
    {
      v31 = v521;
      v520 = v516;
      Type = mlir::ElementsAttr::getType(&v520);
      if (Type)
      {
        v44 = *Type;
        {
          v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v46 = *(v44 + 8);
          v47 = *(v44 + 16);
          if (!v47)
          {
            goto LABEL_285;
          }
        }

        else
        {
          v168 = Type;
          mlir::mps::serialization::ExtractOp::inferReturnTypes();
          Type = v168;
          v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v46 = *(v44 + 8);
          v47 = *(v44 + 16);
          if (!v47)
          {
            goto LABEL_285;
          }
        }

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
        if (v48 != &v46[2 * v47] && *v48 == v45)
        {
          v169 = v48[1];
LABEL_286:
          v518 = Type;
          v519 = v169;
          v517 = mlir::ShapedType::getElementType(&v518);
          isSplat = mlir::ElementsAttr::isSplat(&v520);
          RawData = v520;
          if (mlir::DenseElementsAttr::classof(v520))
          {
            v171 = RawData;
          }

          else
          {
            v171 = 0;
          }

          v524 = v171;
          if (v171)
          {
            RawData = mlir::DenseElementsAttr::getRawData(&v524);
            v6 = v172;
            if (isSplat)
            {
              goto LABEL_291;
            }

LABEL_298:
            NumElements = mlir::ElementsAttr::getNumElements(v520, *(&v520 + 1));
            if (mlir::Type::isUnsignedInteger(&v517, 8))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

LABEL_300:
              for (i = 0; i != NumElements; ++i)
              {
                if (isSplat)
                {
                  v176 = 0;
                }

                else
                {
                  v176 = i;
                }

                v31[i] = RawData[v176];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isInteger(&v517, 8))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

LABEL_310:
              for (j = 0; j != NumElements; ++j)
              {
                if (isSplat)
                {
                  v178 = 0;
                }

                else
                {
                  v178 = j;
                }

                v31[j] = RawData[v178];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isUnsignedInteger(&v517, 16))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

LABEL_323:
              for (k = 0; k != NumElements; ++k)
              {
                if (isSplat)
                {
                  v180 = 0;
                }

                else
                {
                  v180 = k;
                }

                v31[k] = *&RawData[2 * v180];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isInteger(&v517, 16))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

LABEL_333:
              for (m = 0; m != NumElements; ++m)
              {
                if (isSplat)
                {
                  v182 = 0;
                }

                else
                {
                  v182 = m;
                }

                v31[m] = *&RawData[2 * v182];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isUnsignedInteger(&v517, 32))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

LABEL_343:
              for (n = 0; n != NumElements; ++n)
              {
                if (isSplat)
                {
                  v184 = 0;
                }

                else
                {
                  v184 = n;
                }

                v31[n] = *&RawData[4 * v184];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isInteger(&v517, 32))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

LABEL_353:
              for (ii = 0; ii != NumElements; ++ii)
              {
                if (isSplat)
                {
                  v186 = 0;
                }

                else
                {
                  v186 = ii;
                }

                v31[ii] = *&RawData[4 * v186];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isUnsignedInteger(&v517, 64))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

              if (NumElements < 8 || v31 < &RawData[8 * NumElements] && &v31[NumElements] > RawData)
              {
                v187 = 0;
LABEL_368:
                v188 = NumElements - v187;
                v189 = &v31[v187];
                v190 = &RawData[8 * v187];
                do
                {
                  v191 = *v190;
                  v190 += 8;
                  *v189++ = v191;
                  --v188;
                }

                while (v188);
                goto LABEL_944;
              }

              if (NumElements >= 0x20)
              {
                v187 = NumElements & 0x7FFFFFFFFFFFFFE0;
                v206 = (RawData + 128);
                v207 = v31 + 16;
                v208 = NumElements & 0x7FFFFFFFFFFFFFE0;
                do
                {
                  *&v209 = vqtbl4q_s8(v206[-2], xmmword_25738F050).u64[0];
                  *&v210 = vqtbl4q_s8(*v206, xmmword_25738F050).u64[0];
                  *(&v209 + 1) = vqtbl4q_s8(v206[-1], xmmword_25738F050).u64[0];
                  *(&v210 + 1) = vqtbl4q_s8(v206[1], xmmword_25738F050).u64[0];
                  *(v207 - 1) = v209;
                  *v207 = v210;
                  v206 += 4;
                  v207 += 2;
                  v208 -= 32;
                }

                while (v208);
                if (NumElements == v187)
                {
                  goto LABEL_944;
                }

                if ((NumElements & 0x18) == 0)
                {
                  goto LABEL_368;
                }
              }

              else
              {
                v187 = 0;
              }

              v211 = v187;
              v187 = NumElements & 0x7FFFFFFFFFFFFFF8;
              v212 = &RawData[8 * v211];
              v213 = &v31[v211];
              v214 = v211 - (NumElements & 0x7FFFFFFFFFFFFFF8);
              do
              {
                *v213 = vqtbl4q_s8(*v212, xmmword_25738F060).u64[0];
                v213 += 8;
                ++v212;
                v214 += 8;
              }

              while (v214);
              if (NumElements == v187)
              {
                goto LABEL_944;
              }

              goto LABEL_368;
            }

            if (mlir::Type::isInteger(&v517, 64))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

              if (NumElements < 8 || v31 < &RawData[8 * NumElements] && &v31[NumElements] > RawData)
              {
                v192 = 0;
LABEL_377:
                v193 = NumElements - v192;
                v194 = &v31[v192];
                v195 = &RawData[8 * v192];
                do
                {
                  v196 = *v195;
                  v195 += 8;
                  *v194++ = v196;
                  --v193;
                }

                while (v193);
                goto LABEL_944;
              }

              if (NumElements >= 0x20)
              {
                v192 = NumElements & 0x7FFFFFFFFFFFFFE0;
                v217 = (RawData + 128);
                v218 = v31 + 16;
                v219 = NumElements & 0x7FFFFFFFFFFFFFE0;
                do
                {
                  *&v220 = vqtbl4q_s8(v217[-2], xmmword_25738F050).u64[0];
                  *&v221 = vqtbl4q_s8(*v217, xmmword_25738F050).u64[0];
                  *(&v220 + 1) = vqtbl4q_s8(v217[-1], xmmword_25738F050).u64[0];
                  *(&v221 + 1) = vqtbl4q_s8(v217[1], xmmword_25738F050).u64[0];
                  *(v218 - 1) = v220;
                  *v218 = v221;
                  v217 += 4;
                  v218 += 2;
                  v219 -= 32;
                }

                while (v219);
                if (NumElements == v192)
                {
                  goto LABEL_944;
                }

                if ((NumElements & 0x18) == 0)
                {
                  goto LABEL_377;
                }
              }

              else
              {
                v192 = 0;
              }

              v222 = v192;
              v192 = NumElements & 0x7FFFFFFFFFFFFFF8;
              v223 = &RawData[8 * v222];
              v224 = &v31[v222];
              v225 = v222 - (NumElements & 0x7FFFFFFFFFFFFFF8);
              do
              {
                *v224 = vqtbl4q_s8(*v223, xmmword_25738F060).u64[0];
                v224 += 8;
                ++v223;
                v225 += 8;
              }

              while (v225);
              if (NumElements == v192)
              {
                goto LABEL_944;
              }

              goto LABEL_377;
            }

            if (mlir::Type::isF16(&v517))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

LABEL_384:
              for (jj = 0; jj != NumElements; ++jj)
              {
                if (isSplat)
                {
                  v198 = 0;
                }

                else
                {
                  v198 = jj;
                }

                v31[jj] = *&RawData[2 * v198];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isF32(&v517))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

LABEL_394:
              for (kk = 0; kk != NumElements; ++kk)
              {
                if (isSplat)
                {
                  v200 = 0;
                }

                else
                {
                  v200 = kk;
                }

                v31[kk] = *&RawData[4 * v200];
              }

              goto LABEL_944;
            }

            if (!mlir::Type::isF64(&v517))
            {
              if (!mlir::Type::isBF16(&v517))
              {
                goto LABEL_433;
              }

              if (NumElements < 1)
              {
                goto LABEL_944;
              }

              goto LABEL_427;
            }

            if (NumElements < 1)
            {
              goto LABEL_944;
            }

            if (NumElements < 4 || v31 < &RawData[8 * NumElements] && &v31[NumElements] > RawData)
            {
              v201 = 0;
LABEL_410:
              v202 = NumElements - v201;
              v203 = &v31[v201];
              v204 = &RawData[8 * v201];
              do
              {
                v205 = *v204++;
                *v203++ = v205;
                --v202;
              }

              while (v202);
              goto LABEL_944;
            }

            if (NumElements >= 0x10)
            {
              v201 = NumElements & 0x7FFFFFFFFFFFFFF0;
              v227 = NumElements & 0x7FFFFFFFFFFFFFF0;
              v228 = v31;
              v229 = RawData;
              do
              {
                *v228++ = vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(*v229), vcvtq_s64_f64(v229[1])), vuzp1q_s32(vcvtq_s64_f64(v229[2]), vcvtq_s64_f64(v229[3]))), vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(v229[4]), vcvtq_s64_f64(v229[5])), vuzp1q_s32(vcvtq_s64_f64(v229[6]), vcvtq_s64_f64(v229[7]))));
                v229 += 8;
                v227 -= 16;
              }

              while (v227);
              if (NumElements == v201)
              {
                goto LABEL_944;
              }

              if ((NumElements & 0xC) == 0)
              {
                goto LABEL_410;
              }
            }

            else
            {
              v201 = 0;
            }

            v230 = v201;
            v201 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
            v231 = &RawData[8 * v230];
            v232 = &v31[v230];
            v233 = v230 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
            do
            {
              v234 = *v231;
              v235 = v231[1];
              v231 += 2;
              *&v234.f64[0] = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(v234), vcvtq_s64_f64(v235)));
              *v232 = vuzp1_s8(*&v234.f64[0], *&v234.f64[0]).u32[0];
              v232 += 4;
              v233 += 4;
            }

            while (v233);
            if (NumElements == v201)
            {
              goto LABEL_944;
            }

            goto LABEL_410;
          }

          if (*(*RawData + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
          {
            v173 = RawData;
          }

          else
          {
            v173 = 0;
          }

          v524 = v173;
          if (v173)
          {
            RawData = mlir::mps::MPSBufferTensorAttr::getRawData(&v524);
            v6 = v174;
            if ((isSplat & 1) == 0)
            {
              goto LABEL_298;
            }
          }

          else if ((isSplat & 1) == 0)
          {
            goto LABEL_298;
          }

LABEL_291:
          if (mlir::Type::isUnsignedInteger(&v517, 8))
          {
            NumElements = 1;
            goto LABEL_300;
          }

          if (mlir::Type::isInteger(&v517, 8))
          {
            NumElements = 1;
            goto LABEL_310;
          }

          if (mlir::Type::isUnsignedInteger(&v517, 16))
          {
            NumElements = 1;
            goto LABEL_323;
          }

          if (mlir::Type::isInteger(&v517, 16))
          {
            NumElements = 1;
            goto LABEL_333;
          }

          if (mlir::Type::isUnsignedInteger(&v517, 32))
          {
            NumElements = 1;
            goto LABEL_343;
          }

          if (mlir::Type::isInteger(&v517, 32))
          {
            NumElements = 1;
            goto LABEL_353;
          }

          if (mlir::Type::isUnsignedInteger(&v517, 64) || mlir::Type::isInteger(&v517, 64))
          {
            goto LABEL_361;
          }

          if (mlir::Type::isF16(&v517))
          {
            NumElements = 1;
            goto LABEL_384;
          }

          if (mlir::Type::isF32(&v517))
          {
            NumElements = 1;
            goto LABEL_394;
          }

          if (mlir::Type::isF64(&v517))
          {
            goto LABEL_403;
          }

          NumElements = 1;
          if (!mlir::Type::isBF16(&v517))
          {
LABEL_433:
            if (!mlir::Type::isInteger(&v517, 1))
            {
LABEL_261:
              mlir::Type::getIntOrFloatBitWidth(&v517);
              IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v517);
              mlir::detail::unpackQuantizedData<unsigned char>(RawData, v6, v31, NumElements, IntOrFloatBitWidth);
              goto LABEL_944;
            }

            llvm::SmallVector<char,40u>::SmallVector(&v524, NumElements);
            mlir::detail::unpackBooleanData(RawData, v6, v524, v525);
            v134 = v524;
            if (NumElements < 1)
            {
              goto LABEL_437;
            }

            if (isSplat)
            {
              goto LABEL_436;
            }

            v226 = 0;
            if (NumElements >= 8 && (v31 - v524) >= 0x20)
            {
              if (NumElements < 0x20)
              {
                v226 = 0;
LABEL_466:
                v240 = v226;
                v226 = NumElements & 0x7FFFFFFFFFFFFFF8;
                v241 = &v134[v240];
                v242 = &v31[v240];
                v243 = v240 - (NumElements & 0x7FFFFFFFFFFFFFF8);
                do
                {
                  v244 = *v241;
                  v241 += 8;
                  *v242 = v244;
                  v242 += 8;
                  v243 += 8;
                }

                while (v243);
                if (NumElements == v226)
                {
                  goto LABEL_437;
                }

                goto LABEL_469;
              }

              v226 = NumElements & 0x7FFFFFFFFFFFFFE0;
              v236 = (v524 + 16);
              v237 = v31 + 16;
              v238 = NumElements & 0x7FFFFFFFFFFFFFE0;
              do
              {
                v239 = *v236;
                *(v237 - 1) = *(v236 - 1);
                *v237 = v239;
                v236 += 2;
                v237 += 2;
                v238 -= 32;
              }

              while (v238);
              if (NumElements == v226)
              {
                goto LABEL_437;
              }

              if ((NumElements & 0x18) != 0)
              {
                goto LABEL_466;
              }
            }

LABEL_469:
            v245 = NumElements - v226;
            v246 = &v31[v226];
            v247 = &v134[v226];
            do
            {
              v248 = *v247++;
              *v246++ = v248;
              --v245;
            }

            while (v245);
            goto LABEL_437;
          }

LABEL_427:
          for (mm = 0; mm != NumElements; ++mm)
          {
            if (isSplat)
            {
              v216 = 0;
            }

            else
            {
              v216 = mm;
            }

            v31[mm] = COERCE_FLOAT(*&RawData[2 * v216] << 16);
          }

          goto LABEL_944;
        }
      }

LABEL_285:
      v169 = 0;
      goto LABEL_286;
    }

    v524 = mlir::RankedTensorType::getElementType(&v513);
    if (mlir::Type::isUnsignedInteger(&v524, 16))
    {
      v54 = v521;
      v520 = v516;
      v55 = mlir::ElementsAttr::getType(&v520);
      if (!v55)
      {
        goto LABEL_476;
      }

      v56 = *v55;
      {
        v57 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v58 = *(v56 + 8);
        v59 = *(v56 + 16);
        if (v59)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v5 = v55;
        mlir::mps::serialization::ExtractOp::inferReturnTypes();
        v55 = v5;
        v57 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v58 = *(v56 + 8);
        v59 = *(v56 + 16);
        if (v59)
        {
LABEL_51:
          v60 = v58;
          v61 = v59;
          do
          {
            v62 = v61 >> 1;
            v63 = &v60[2 * (v61 >> 1)];
            v65 = *v63;
            v64 = v63 + 2;
            v61 += ~(v61 >> 1);
            if (v65 < v57)
            {
              v60 = v64;
            }

            else
            {
              v61 = v62;
            }
          }

          while (v61);
LABEL_474:
          if (v60 != &v58[2 * v59] && *v60 == v57)
          {
            v249 = v60[1];
LABEL_477:
            v518 = v55;
            v519 = v249;
            v517 = mlir::ShapedType::getElementType(&v518);
            v250 = mlir::ElementsAttr::isSplat(&v520);
            v251 = v520;
            if (mlir::DenseElementsAttr::classof(v520))
            {
              v252 = v251;
            }

            else
            {
              v252 = 0;
            }

            v524 = v252;
            if (v252)
            {
              v5 = mlir::DenseElementsAttr::getRawData(&v524);
              v6 = v253;
              if (v250)
              {
                goto LABEL_482;
              }

LABEL_489:
              v254 = mlir::ElementsAttr::getNumElements(v520, *(&v520 + 1));
              if (mlir::Type::isUnsignedInteger(&v517, 8))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

LABEL_491:
                for (nn = 0; nn != v254; ++nn)
                {
                  if (v250)
                  {
                    v258 = 0;
                  }

                  else
                  {
                    v258 = nn;
                  }

                  v54->i16[nn] = v5[v258];
                }

                goto LABEL_944;
              }

              if (mlir::Type::isInteger(&v517, 8))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

LABEL_501:
                for (i1 = 0; i1 != v254; ++i1)
                {
                  if (v250)
                  {
                    v260 = 0;
                  }

                  else
                  {
                    v260 = i1;
                  }

                  v54->i16[i1] = v5[v260];
                }

                goto LABEL_944;
              }

              if (mlir::Type::isUnsignedInteger(&v517, 16))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

LABEL_514:
                for (i2 = 0; i2 != v254; ++i2)
                {
                  if (v250)
                  {
                    v262 = 0;
                  }

                  else
                  {
                    v262 = i2;
                  }

                  v54->i16[i2] = *&v5[2 * v262];
                }

                goto LABEL_944;
              }

              if (mlir::Type::isInteger(&v517, 16))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

LABEL_524:
                for (i3 = 0; i3 != v254; ++i3)
                {
                  if (v250)
                  {
                    v264 = 0;
                  }

                  else
                  {
                    v264 = i3;
                  }

                  v54->i16[i3] = *&v5[2 * v264];
                }

                goto LABEL_944;
              }

              if (mlir::Type::isUnsignedInteger(&v517, 32))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

LABEL_534:
                if (v254 >= 2)
                {
                  v267 = 0;
                  v265 = v254 & 0x7FFFFFFFFFFFFFFELL;
                  v268 = &v54->i16[1];
                  do
                  {
                    if (v250)
                    {
                      v269 = 0;
                    }

                    else
                    {
                      v269 = v267;
                    }

                    if (v250)
                    {
                      v270 = 0;
                    }

                    else
                    {
                      v270 = v267 + 1;
                    }

                    v271 = *&v5[4 * v270];
                    *(v268 - 1) = *&v5[4 * v269];
                    *v268 = v271;
                    v268 += 2;
                    v267 += 2;
                  }

                  while (v267 != v265);
                  goto LABEL_913;
                }

                v265 = 0;
                do
                {
                  if (v250)
                  {
                    v501 = 0;
                  }

                  else
                  {
                    v501 = v265;
                  }

                  v54->i16[v265++] = *&v5[4 * v501];
LABEL_913:
                  ;
                }

                while (v254 != v265);
                goto LABEL_944;
              }

              if (mlir::Type::isInteger(&v517, 32))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

LABEL_540:
                if (v254 >= 2)
                {
                  v273 = 0;
                  v266 = v254 & 0x7FFFFFFFFFFFFFFELL;
                  v274 = &v54->i16[1];
                  do
                  {
                    if (v250)
                    {
                      v275 = 0;
                    }

                    else
                    {
                      v275 = v273;
                    }

                    if (v250)
                    {
                      v276 = 0;
                    }

                    else
                    {
                      v276 = v273 + 1;
                    }

                    v277 = *&v5[4 * v276];
                    *(v274 - 1) = *&v5[4 * v275];
                    *v274 = v277;
                    v274 += 2;
                    v273 += 2;
                  }

                  while (v273 != v266);
                  goto LABEL_919;
                }

                v266 = 0;
                do
                {
                  if (v250)
                  {
                    v502 = 0;
                  }

                  else
                  {
                    v502 = v266;
                  }

                  v54->i16[v266++] = *&v5[4 * v502];
LABEL_919:
                  ;
                }

                while (v254 != v266);
                goto LABEL_944;
              }

              if (mlir::Type::isUnsignedInteger(&v517, 64))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

                if (v254 < 4)
                {
                  v272 = 0;
LABEL_602:
                  v296 = v254 - v272;
                  v297 = &v54->i16[v272];
                  v298 = &v5[8 * v272];
                  do
                  {
                    v299 = *v298;
                    v298 += 8;
                    *v297++ = v299;
                    --v296;
                  }

                  while (v296);
                  goto LABEL_944;
                }

                if (v254 >= 0x10)
                {
                  v272 = v254 & 0x7FFFFFFFFFFFFFF0;
                  v286 = (v5 + 64);
                  v287 = v54 + 1;
                  v288 = v254 & 0x7FFFFFFFFFFFFFF0;
                  do
                  {
                    v289 = vuzp1q_s16(vuzp1q_s32(*v286, v286[1]), vuzp1q_s32(v286[2], v286[3]));
                    v287[-1] = vuzp1q_s16(vuzp1q_s32(v286[-4], v286[-3]), vuzp1q_s32(v286[-2], v286[-1]));
                    *v287 = v289;
                    v286 += 8;
                    v287 += 2;
                    v288 -= 16;
                  }

                  while (v288);
                  if (v254 == v272)
                  {
                    goto LABEL_944;
                  }

                  if ((v254 & 0xC) == 0)
                  {
                    goto LABEL_602;
                  }
                }

                else
                {
                  v272 = 0;
                }

                v290 = v272;
                v272 = v254 & 0x7FFFFFFFFFFFFFFCLL;
                v291 = &v5[8 * v290];
                v292 = (v54 + 2 * v290);
                v293 = v290 - (v254 & 0x7FFFFFFFFFFFFFFCLL);
                do
                {
                  v295 = *v291;
                  v294 = v291[1];
                  v291 += 2;
                  *v292++ = vmovn_s32(vuzp1q_s32(v295, v294));
                  v293 += 4;
                }

                while (v293);
                if (v254 == v272)
                {
                  goto LABEL_944;
                }

                goto LABEL_602;
              }

              if (mlir::Type::isInteger(&v517, 64))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

                if (v254 < 4)
                {
                  v278 = 0;
LABEL_628:
                  v320 = v254 - v278;
                  v321 = &v54->i16[v278];
                  v322 = &v5[8 * v278];
                  do
                  {
                    v323 = *v322;
                    v322 += 8;
                    *v321++ = v323;
                    --v320;
                  }

                  while (v320);
                  goto LABEL_944;
                }

                if (v254 >= 0x10)
                {
                  v278 = v254 & 0x7FFFFFFFFFFFFFF0;
                  v310 = (v5 + 64);
                  v311 = v54 + 1;
                  v312 = v254 & 0x7FFFFFFFFFFFFFF0;
                  do
                  {
                    v313 = vuzp1q_s16(vuzp1q_s32(*v310, v310[1]), vuzp1q_s32(v310[2], v310[3]));
                    v311[-1] = vuzp1q_s16(vuzp1q_s32(v310[-4], v310[-3]), vuzp1q_s32(v310[-2], v310[-1]));
                    *v311 = v313;
                    v310 += 8;
                    v311 += 2;
                    v312 -= 16;
                  }

                  while (v312);
                  if (v254 == v278)
                  {
                    goto LABEL_944;
                  }

                  if ((v254 & 0xC) == 0)
                  {
                    goto LABEL_628;
                  }
                }

                else
                {
                  v278 = 0;
                }

                v314 = v278;
                v278 = v254 & 0x7FFFFFFFFFFFFFFCLL;
                v315 = &v5[8 * v314];
                v316 = (v54 + 2 * v314);
                v317 = v314 - (v254 & 0x7FFFFFFFFFFFFFFCLL);
                do
                {
                  v319 = *v315;
                  v318 = v315[1];
                  v315 += 2;
                  *v316++ = vmovn_s32(vuzp1q_s32(v319, v318));
                  v317 += 4;
                }

                while (v317);
                if (v254 == v278)
                {
                  goto LABEL_944;
                }

                goto LABEL_628;
              }

              if (mlir::Type::isF16(&v517))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

LABEL_574:
                if (v254 >= 2)
                {
                  v281 = 0;
                  v279 = v254 & 0x7FFFFFFFFFFFFFFELL;
                  v282 = &v54->i16[1];
                  do
                  {
                    if (v250)
                    {
                      v283 = 0;
                    }

                    else
                    {
                      v283 = v281;
                    }

                    if (v250)
                    {
                      v284 = 0;
                    }

                    else
                    {
                      v284 = v281 + 1;
                    }

                    v285 = *&v5[2 * v284];
                    *(v282 - 1) = *&v5[2 * v283];
                    *v282 = v285;
                    v282 += 2;
                    v281 += 2;
                  }

                  while (v281 != v279);
                  goto LABEL_925;
                }

                v279 = 0;
                do
                {
                  if (v250)
                  {
                    v503 = 0;
                  }

                  else
                  {
                    v503 = v279;
                  }

                  v54->i16[v279++] = *&v5[2 * v503];
LABEL_925:
                  ;
                }

                while (v254 != v279);
                goto LABEL_944;
              }

              if (mlir::Type::isF32(&v517))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

LABEL_582:
                if (v254 >= 2)
                {
                  v305 = 0;
                  v280 = v254 & 0x7FFFFFFFFFFFFFFELL;
                  v306 = &v54->i16[1];
                  do
                  {
                    if (v250)
                    {
                      v307 = 0;
                    }

                    else
                    {
                      v307 = v305;
                    }

                    if (v250)
                    {
                      v308 = 0;
                    }

                    else
                    {
                      v308 = v305 + 1;
                    }

                    v309 = *&v5[4 * v308];
                    *(v306 - 1) = *&v5[4 * v307];
                    *v306 = v309;
                    v306 += 2;
                    v305 += 2;
                  }

                  while (v305 != v280);
                  goto LABEL_931;
                }

                v280 = 0;
                do
                {
                  if (v250)
                  {
                    v504 = 0;
                  }

                  else
                  {
                    v504 = v280;
                  }

                  v54->i16[v280++] = *&v5[4 * v504];
LABEL_931:
                  ;
                }

                while (v254 != v280);
                goto LABEL_944;
              }

              if (!mlir::Type::isF64(&v517))
              {
                if (!mlir::Type::isBF16(&v517))
                {
                  goto LABEL_639;
                }

                if (v254 < 1)
                {
                  goto LABEL_944;
                }

                goto LABEL_633;
              }

              if (v254 < 1)
              {
                goto LABEL_944;
              }

              if (v254 < 4)
              {
                v304 = 0;
LABEL_666:
                v353 = v254 - v304;
                v354 = &v54->i16[v304];
                v355 = &v5[8 * v304];
                do
                {
                  v356 = *v355++;
                  *v354++ = v356;
                  --v353;
                }

                while (v353);
                goto LABEL_944;
              }

              if (v254 >= 0x10)
              {
                v304 = v254 & 0x7FFFFFFFFFFFFFF0;
                v335 = (v5 + 64);
                v336 = &v54[1];
                v337 = v254 & 0x7FFFFFFFFFFFFFF0;
                do
                {
                  v338 = v335[3];
                  v339 = vmovn_s64(vcvtq_s64_f64(v335[-1]));
                  v340 = vmovn_s64(vcvtq_s64_f64(v335[-2]));
                  v341 = vmovn_s64(vcvtq_s64_f64(v335[-3]));
                  v342 = vmovn_s64(vcvtq_s64_f64(v335[-4]));
                  v343 = vqtbl4q_s8(*(&v300 - 1), xmmword_25738F040);
                  v344 = vmovn_s64(vcvtq_s64_f64(v338));
                  v345 = vmovn_s64(vcvtq_s64_f64(v335[2]));
                  v346 = vmovn_s64(vcvtq_s64_f64(v335[1]));
                  *&v338.f64[0] = vmovn_s64(vcvtq_s64_f64(*v335));
                  v336[-1] = v343;
                  *v336 = vqtbl4q_s8(*(&v300 - 3), xmmword_25738F040);
                  v335 += 8;
                  v336 += 2;
                  v337 -= 16;
                }

                while (v337);
                if (v254 == v304)
                {
                  goto LABEL_944;
                }

                if ((v254 & 0xC) == 0)
                {
                  goto LABEL_666;
                }
              }

              else
              {
                v304 = 0;
              }

              v347 = v304;
              v304 = v254 & 0x7FFFFFFFFFFFFFFCLL;
              v348 = &v5[8 * v347];
              v349 = (v54 + 2 * v347);
              v350 = v347 - (v254 & 0x7FFFFFFFFFFFFFFCLL);
              do
              {
                v351 = *v348;
                v352 = v348[1];
                v348 += 2;
                *v349++ = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(v351), vcvtq_s64_f64(v352)));
                v350 += 4;
              }

              while (v350);
              if (v254 == v304)
              {
                goto LABEL_944;
              }

              goto LABEL_666;
            }

            if (*(*v251 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
            {
              v255 = v251;
            }

            else
            {
              v255 = 0;
            }

            v524 = v255;
            if (v255)
            {
              v5 = mlir::mps::MPSBufferTensorAttr::getRawData(&v524);
              v6 = v256;
              if ((v250 & 1) == 0)
              {
                goto LABEL_489;
              }
            }

            else if ((v250 & 1) == 0)
            {
              goto LABEL_489;
            }

LABEL_482:
            if (mlir::Type::isUnsignedInteger(&v517, 8))
            {
              v254 = 1;
              goto LABEL_491;
            }

            if (mlir::Type::isInteger(&v517, 8))
            {
              v254 = 1;
              goto LABEL_501;
            }

            if (mlir::Type::isUnsignedInteger(&v517, 16))
            {
              v254 = 1;
              goto LABEL_514;
            }

            if (mlir::Type::isInteger(&v517, 16))
            {
              v254 = 1;
              goto LABEL_524;
            }

            if (mlir::Type::isUnsignedInteger(&v517, 32))
            {
              v254 = 1;
              goto LABEL_534;
            }

            if (mlir::Type::isInteger(&v517, 32))
            {
              v254 = 1;
              goto LABEL_540;
            }

            if (!mlir::Type::isUnsignedInteger(&v517, 64) && !mlir::Type::isInteger(&v517, 64))
            {
              if (mlir::Type::isF16(&v517))
              {
                v254 = 1;
                goto LABEL_574;
              }

              if (mlir::Type::isF32(&v517))
              {
                v254 = 1;
                goto LABEL_582;
              }

              if (!mlir::Type::isF64(&v517))
              {
                v254 = 1;
                if (!mlir::Type::isBF16(&v517))
                {
LABEL_639:
                  if (mlir::Type::isInteger(&v517, 1))
                  {
                    llvm::SmallVector<char,40u>::SmallVector(&v524, v254);
                    mlir::detail::unpackBooleanData(v5, v6, v524, v525);
                    v82 = v524;
                    if (v254 < 1)
                    {
                      goto LABEL_877;
                    }

                    if (v250)
                    {
                      if (v254 < 4 || v54 < (v524 + 1) && v524 < v54 + 2 * v254)
                      {
                        v326 = 0;
                        goto LABEL_646;
                      }

                      if (v254 >= 0x20)
                      {
                        v326 = v254 & 0x7FFFFFFFFFFFFFE0;
                        v357 = vld1_dup_s8(v524);
                        v358 = vmovl_s8(v357);
                        v359 = v54 + 2;
                        v360 = v254 & 0x7FFFFFFFFFFFFFE0;
                        do
                        {
                          v359[-2] = v358;
                          v359[-1] = v358;
                          *v359 = v358;
                          v359[1] = v358;
                          v359 += 4;
                          v360 -= 32;
                        }

                        while (v360);
                        if (v254 == v326)
                        {
                          goto LABEL_877;
                        }

                        if ((v254 & 0x1C) == 0)
                        {
LABEL_646:
                          v327 = v254 - v326;
                          v328 = &v54->i16[v326];
                          do
                          {
                            *v328++ = *v82;
                            --v327;
                          }

                          while (v327);
                          goto LABEL_877;
                        }
                      }

                      else
                      {
                        v326 = 0;
                      }

                      v361 = v326;
                      v326 = v254 & 0x7FFFFFFFFFFFFFFCLL;
                      v362 = vshr_n_s16(vshl_n_s16(vdup_n_s16(*v82), 8uLL), 8uLL);
                      v363 = (v54 + 2 * v361);
                      v364 = v361 - (v254 & 0x7FFFFFFFFFFFFFFCLL);
                      do
                      {
                        *v363++ = v362;
                        v364 += 4;
                      }

                      while (v364);
                      if (v254 != v326)
                      {
                        goto LABEL_646;
                      }

LABEL_877:
                      if (v82 == v526)
                      {
                        goto LABEL_944;
                      }

                      goto LABEL_95;
                    }

                    if (v254 < 8 || v54 < (v524 + v254) && v524 < v54 + 2 * v254)
                    {
                      v330 = 0;
                      goto LABEL_656;
                    }

                    if (v254 >= 0x20)
                    {
                      v330 = v254 & 0x7FFFFFFFFFFFFFE0;
                      v365 = (v524 + 16);
                      v366 = v54 + 2;
                      v367 = v254 & 0x7FFFFFFFFFFFFFE0;
                      do
                      {
                        v368 = *v365[-2].i8;
                        v369 = vmovl_s8(*v365);
                        v370 = vmovl_high_s8(*v365->i8);
                        v366[-2] = vmovl_s8(*v368.i8);
                        v366[-1] = vmovl_high_s8(v368);
                        *v366 = v369;
                        v366[1] = v370;
                        v366 += 4;
                        v365 += 4;
                        v367 -= 32;
                      }

                      while (v367);
                      if (v254 == v330)
                      {
                        goto LABEL_877;
                      }

                      if ((v254 & 0x18) == 0)
                      {
LABEL_656:
                        v331 = v254 - v330;
                        v332 = &v54->i16[v330];
                        v333 = v82 + v330;
                        do
                        {
                          v334 = *v333++;
                          *v332++ = v334;
                          --v331;
                        }

                        while (v331);
                        goto LABEL_877;
                      }
                    }

                    else
                    {
                      v330 = 0;
                    }

                    v371 = v330;
                    v330 = v254 & 0x7FFFFFFFFFFFFFF8;
                    v372 = (v82 + v371);
                    v373 = (v54 + 2 * v371);
                    v374 = v371 - (v254 & 0x7FFFFFFFFFFFFFF8);
                    do
                    {
                      v375 = *v372++;
                      *v373++ = vmovl_s8(v375);
                      v374 += 8;
                    }

                    while (v374);
                    if (v254 == v330)
                    {
                      goto LABEL_877;
                    }

                    goto LABEL_656;
                  }

LABEL_649:
                  mlir::Type::getIntOrFloatBitWidth(&v517);
                  v329 = mlir::Type::getIntOrFloatBitWidth(&v517);
                  mlir::detail::unpackQuantizedData<unsigned short>(v5, v6, v54, v254, v329);
                  goto LABEL_944;
                }

LABEL_633:
                for (i4 = 0; i4 != v254; ++i4)
                {
                  if (v250)
                  {
                    v325 = 0;
                  }

                  else
                  {
                    v325 = i4;
                  }

                  v54->i16[i4] = COERCE_FLOAT(*&v5[2 * v325] << 16);
                }

                goto LABEL_944;
              }

LABEL_824:
              v54->i16[0] = *v5;
              goto LABEL_944;
            }

LABEL_770:
            v54->i16[0] = *v5;
            goto LABEL_944;
          }

LABEL_476:
          v249 = 0;
          goto LABEL_477;
        }
      }

      v59 = 0;
      v60 = v58;
      goto LABEL_474;
    }

    v524 = mlir::RankedTensorType::getElementType(&v513);
    if (!mlir::Type::isInteger(&v524, 16))
    {
      v524 = mlir::RankedTensorType::getElementType(&v513);
      if (mlir::Type::isUnsignedInteger(&v524, 32))
      {
        mlir::copyElementsAttrData<unsigned int>(v516, *(&v516 + 1), v521);
        goto LABEL_944;
      }

      v524 = mlir::RankedTensorType::getElementType(&v513);
      if (mlir::Type::isInteger(&v524, 32))
      {
        mlir::copyElementsAttrData<int>(v516, *(&v516 + 1), v521);
        goto LABEL_944;
      }

      v524 = mlir::RankedTensorType::getElementType(&v513);
      if (mlir::Type::isUnsignedInteger(&v524, 64))
      {
        mlir::copyElementsAttrData<unsigned long long>(v516, *(&v516 + 1), v521);
        goto LABEL_944;
      }

      v524 = mlir::RankedTensorType::getElementType(&v513);
      if (mlir::Type::isInteger(&v524, 64))
      {
        mlir::copyElementsAttrData<long long>(v516, *(&v516 + 1), v521);
        goto LABEL_944;
      }

      v524 = mlir::RankedTensorType::getElementType(&v513);
      if (mlir::Type::isF16(&v524))
      {
        mlir::copyElementsAttrData<half>(v516, *(&v516 + 1), v521);
        goto LABEL_944;
      }

      v524 = mlir::RankedTensorType::getElementType(&v513);
      if (mlir::Type::isBF16(&v524))
      {
        mlir::copyElementsAttrData<__emulated_bf16>(v516, *(&v516 + 1), v521);
        goto LABEL_944;
      }

      v524 = mlir::RankedTensorType::getElementType(&v513);
      if (mlir::Type::isF32(&v524))
      {
        mlir::copyElementsAttrData<float>(v516, *(&v516 + 1), v521);
        goto LABEL_944;
      }

      v524 = mlir::RankedTensorType::getElementType(&v513);
      if (mlir::Type::isF64(&v524))
      {
        mlir::copyElementsAttrData<double>(v516, *(&v516 + 1), v521);
        goto LABEL_944;
      }

      v524 = mlir::RankedTensorType::getElementType(&v513);
      if (!mlir::Type::isInteger(&v524, 1))
      {
        v78 = mlir::RankedTensorType::getElementType(&v513);
        if (*(*v78 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v79 = v78;
        }

        else
        {
          v79 = 0;
        }

        v524 = v79;
        if (v79)
        {
          *&v520 = mlir::ComplexType::getElementType(&v524);
          if (mlir::Type::isF32(&v520))
          {
            mlir::copyElementsAttrData<complex_support::complex_fp<float,(void *)0>>(v516, *(&v516 + 1), v521);
          }

          else
          {
            *&v520 = mlir::ComplexType::getElementType(&v524);
            mlir::Type::isF16(&v520);
            mlir::copyElementsAttrData<complex_support::complex_fp<half,(void *)0>>(v516, *(&v516 + 1), v521);
          }
        }

        goto LABEL_944;
      }

      if (mlir::ElementsAttr::isSplat(&v516))
      {
        v77 = 1;
      }

      else
      {
        v80 = mlir::RankedTensorType::getShape(&v513);
        v77 = mlir::ShapedType::getNumElements(v80, v81);
      }

      llvm::SmallVector<char,40u>::SmallVector(&v524, v77);
      mlir::copyElementsAttrData<char>(v516, *(&v516 + 1), v524);
      mlir::detail::packBooleanData(v524, v525, v521, v522);
      v82 = v524;
      if (v524 == v526)
      {
        goto LABEL_944;
      }

LABEL_95:
      free(v82);
      goto LABEL_944;
    }

    v54 = v521;
    v520 = v516;
    v66 = mlir::ElementsAttr::getType(&v520);
    if (!v66)
    {
      goto LABEL_693;
    }

    v67 = *v66;
    {
      v68 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v69 = *(v67 + 8);
      v70 = *(v67 + 16);
      if (v70)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v5 = v66;
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v66 = v5;
      v68 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v69 = *(v67 + 8);
      v70 = *(v67 + 16);
      if (v70)
      {
LABEL_62:
        v71 = v69;
        v72 = v70;
        do
        {
          v73 = v72 >> 1;
          v74 = &v71[2 * (v72 >> 1)];
          v76 = *v74;
          v75 = v74 + 2;
          v72 += ~(v72 >> 1);
          if (v76 < v68)
          {
            v71 = v75;
          }

          else
          {
            v72 = v73;
          }
        }

        while (v72);
LABEL_691:
        if (v71 != &v69[2 * v70] && *v71 == v68)
        {
          v376 = v71[1];
LABEL_694:
          v518 = v66;
          v519 = v376;
          v517 = mlir::ShapedType::getElementType(&v518);
          v377 = mlir::ElementsAttr::isSplat(&v520);
          v378 = v520;
          if (mlir::DenseElementsAttr::classof(v520))
          {
            v379 = v378;
          }

          else
          {
            v379 = 0;
          }

          v524 = v379;
          if (v379)
          {
            v5 = mlir::DenseElementsAttr::getRawData(&v524);
            v6 = v380;
            if (v377)
            {
              goto LABEL_699;
            }

LABEL_706:
            v254 = mlir::ElementsAttr::getNumElements(v520, *(&v520 + 1));
            if (mlir::Type::isUnsignedInteger(&v517, 8))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

LABEL_708:
              for (i5 = 0; i5 != v254; ++i5)
              {
                if (v377)
                {
                  v384 = 0;
                }

                else
                {
                  v384 = i5;
                }

                v54->i16[i5] = v5[v384];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isInteger(&v517, 8))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

LABEL_718:
              for (i6 = 0; i6 != v254; ++i6)
              {
                if (v377)
                {
                  v386 = 0;
                }

                else
                {
                  v386 = i6;
                }

                v54->i16[i6] = v5[v386];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isUnsignedInteger(&v517, 16))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

LABEL_731:
              for (i7 = 0; i7 != v254; ++i7)
              {
                if (v377)
                {
                  v388 = 0;
                }

                else
                {
                  v388 = i7;
                }

                v54->i16[i7] = *&v5[2 * v388];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isInteger(&v517, 16))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

LABEL_741:
              for (i8 = 0; i8 != v254; ++i8)
              {
                if (v377)
                {
                  v390 = 0;
                }

                else
                {
                  v390 = i8;
                }

                v54->i16[i8] = *&v5[2 * v390];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isUnsignedInteger(&v517, 32))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

LABEL_751:
              if (v254 >= 2)
              {
                v393 = 0;
                v391 = v254 & 0x7FFFFFFFFFFFFFFELL;
                v394 = &v54->i16[1];
                do
                {
                  if (v377)
                  {
                    v395 = 0;
                  }

                  else
                  {
                    v395 = v393;
                  }

                  if (v377)
                  {
                    v396 = 0;
                  }

                  else
                  {
                    v396 = v393 + 1;
                  }

                  v397 = *&v5[4 * v396];
                  *(v394 - 1) = *&v5[4 * v395];
                  *v394 = v397;
                  v394 += 2;
                  v393 += 2;
                }

                while (v393 != v391);
                goto LABEL_937;
              }

              v391 = 0;
              do
              {
                if (v377)
                {
                  v505 = 0;
                }

                else
                {
                  v505 = v391;
                }

                v54->i16[v391++] = *&v5[4 * v505];
LABEL_937:
                ;
              }

              while (v254 != v391);
              goto LABEL_944;
            }

            if (mlir::Type::isInteger(&v517, 32))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

LABEL_757:
              if (v254 >= 2)
              {
                v399 = 0;
                v392 = v254 & 0x7FFFFFFFFFFFFFFELL;
                v400 = &v54->i16[1];
                do
                {
                  if (v377)
                  {
                    v401 = 0;
                  }

                  else
                  {
                    v401 = v399;
                  }

                  if (v377)
                  {
                    v402 = 0;
                  }

                  else
                  {
                    v402 = v399 + 1;
                  }

                  v403 = *&v5[4 * v402];
                  *(v400 - 1) = *&v5[4 * v401];
                  *v400 = v403;
                  v400 += 2;
                  v399 += 2;
                }

                while (v399 != v392);
                goto LABEL_943;
              }

              v392 = 0;
              do
              {
                if (v377)
                {
                  v506 = 0;
                }

                else
                {
                  v506 = v392;
                }

                v54->i16[v392++] = *&v5[4 * v506];
LABEL_943:
                ;
              }

              while (v254 != v392);
              goto LABEL_944;
            }

            if (mlir::Type::isUnsignedInteger(&v517, 64))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

              if (v254 < 4)
              {
                v398 = 0;
LABEL_820:
                v422 = v254 - v398;
                v423 = &v54->i16[v398];
                v424 = &v5[8 * v398];
                do
                {
                  v425 = *v424;
                  v424 += 8;
                  *v423++ = v425;
                  --v422;
                }

                while (v422);
                goto LABEL_944;
              }

              if (v254 >= 0x10)
              {
                v398 = v254 & 0x7FFFFFFFFFFFFFF0;
                v412 = (v5 + 64);
                v413 = v54 + 1;
                v414 = v254 & 0x7FFFFFFFFFFFFFF0;
                do
                {
                  v415 = vuzp1q_s16(vuzp1q_s32(*v412, v412[1]), vuzp1q_s32(v412[2], v412[3]));
                  v413[-1] = vuzp1q_s16(vuzp1q_s32(v412[-4], v412[-3]), vuzp1q_s32(v412[-2], v412[-1]));
                  *v413 = v415;
                  v412 += 8;
                  v413 += 2;
                  v414 -= 16;
                }

                while (v414);
                if (v254 == v398)
                {
                  goto LABEL_944;
                }

                if ((v254 & 0xC) == 0)
                {
                  goto LABEL_820;
                }
              }

              else
              {
                v398 = 0;
              }

              v416 = v398;
              v398 = v254 & 0x7FFFFFFFFFFFFFFCLL;
              v417 = &v5[8 * v416];
              v418 = (v54 + 2 * v416);
              v419 = v416 - (v254 & 0x7FFFFFFFFFFFFFFCLL);
              do
              {
                v421 = *v417;
                v420 = v417[1];
                v417 += 2;
                *v418++ = vmovn_s32(vuzp1q_s32(v421, v420));
                v419 += 4;
              }

              while (v419);
              if (v254 == v398)
              {
                goto LABEL_944;
              }

              goto LABEL_820;
            }

            if (mlir::Type::isInteger(&v517, 64))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

              if (v254 < 4)
              {
                v404 = 0;
LABEL_845:
                v446 = v254 - v404;
                v447 = &v54->i16[v404];
                v448 = &v5[8 * v404];
                do
                {
                  v449 = *v448;
                  v448 += 8;
                  *v447++ = v449;
                  --v446;
                }

                while (v446);
                goto LABEL_944;
              }

              if (v254 >= 0x10)
              {
                v404 = v254 & 0x7FFFFFFFFFFFFFF0;
                v436 = (v5 + 64);
                v437 = v54 + 1;
                v438 = v254 & 0x7FFFFFFFFFFFFFF0;
                do
                {
                  v439 = vuzp1q_s16(vuzp1q_s32(*v436, v436[1]), vuzp1q_s32(v436[2], v436[3]));
                  v437[-1] = vuzp1q_s16(vuzp1q_s32(v436[-4], v436[-3]), vuzp1q_s32(v436[-2], v436[-1]));
                  *v437 = v439;
                  v436 += 8;
                  v437 += 2;
                  v438 -= 16;
                }

                while (v438);
                if (v254 == v404)
                {
                  goto LABEL_944;
                }

                if ((v254 & 0xC) == 0)
                {
                  goto LABEL_845;
                }
              }

              else
              {
                v404 = 0;
              }

              v440 = v404;
              v404 = v254 & 0x7FFFFFFFFFFFFFFCLL;
              v441 = &v5[8 * v440];
              v442 = (v54 + 2 * v440);
              v443 = v440 - (v254 & 0x7FFFFFFFFFFFFFFCLL);
              do
              {
                v445 = *v441;
                v444 = v441[1];
                v441 += 2;
                *v442++ = vmovn_s32(vuzp1q_s32(v445, v444));
                v443 += 4;
              }

              while (v443);
              if (v254 == v404)
              {
                goto LABEL_944;
              }

              goto LABEL_845;
            }

            if (mlir::Type::isF16(&v517))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

LABEL_792:
              if (v254 >= 2)
              {
                v407 = 0;
                v405 = v254 & 0x7FFFFFFFFFFFFFFELL;
                v408 = &v54->i16[1];
                do
                {
                  if (v377)
                  {
                    v409 = 0;
                  }

                  else
                  {
                    v409 = v407;
                  }

                  if (v377)
                  {
                    v410 = 0;
                  }

                  else
                  {
                    v410 = v407 + 1;
                  }

                  v411 = *&v5[2 * v410];
                  *(v408 - 1) = *&v5[2 * v409];
                  *v408 = v411;
                  v408 += 2;
                  v407 += 2;
                }

                while (v407 != v405);
                goto LABEL_954;
              }

              v405 = 0;
              do
              {
                if (v377)
                {
                  v511 = 0;
                }

                else
                {
                  v511 = v405;
                }

                v54->i16[v405++] = *&v5[2 * v511];
LABEL_954:
                ;
              }

              while (v254 != v405);
              goto LABEL_944;
            }

            if (mlir::Type::isF32(&v517))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

LABEL_800:
              if (v254 >= 2)
              {
                v431 = 0;
                v406 = v254 & 0x7FFFFFFFFFFFFFFELL;
                v432 = &v54->i16[1];
                do
                {
                  if (v377)
                  {
                    v433 = 0;
                  }

                  else
                  {
                    v433 = v431;
                  }

                  if (v377)
                  {
                    v434 = 0;
                  }

                  else
                  {
                    v434 = v431 + 1;
                  }

                  v435 = *&v5[4 * v434];
                  *(v432 - 1) = *&v5[4 * v433];
                  *v432 = v435;
                  v432 += 2;
                  v431 += 2;
                }

                while (v431 != v406);
                goto LABEL_960;
              }

              v406 = 0;
              do
              {
                if (v377)
                {
                  v512 = 0;
                }

                else
                {
                  v512 = v406;
                }

                v54->i16[v406++] = *&v5[4 * v512];
LABEL_960:
                ;
              }

              while (v254 != v406);
              goto LABEL_944;
            }

            if (!mlir::Type::isF64(&v517))
            {
              if (!mlir::Type::isBF16(&v517))
              {
                goto LABEL_858;
              }

              if (v254 < 1)
              {
                goto LABEL_944;
              }

              goto LABEL_852;
            }

            if (v254 < 1)
            {
              goto LABEL_944;
            }

            if (v254 < 4)
            {
              v430 = 0;
LABEL_886:
              v478 = v254 - v430;
              v479 = &v54->i16[v430];
              v480 = &v5[8 * v430];
              do
              {
                v481 = *v480++;
                *v479++ = v481;
                --v478;
              }

              while (v478);
              goto LABEL_944;
            }

            if (v254 >= 0x10)
            {
              v430 = v254 & 0x7FFFFFFFFFFFFFF0;
              v460 = (v5 + 64);
              v461 = &v54[1];
              v462 = v254 & 0x7FFFFFFFFFFFFFF0;
              do
              {
                v463 = v460[3];
                v464 = vmovn_s64(vcvtq_s64_f64(v460[-1]));
                v465 = vmovn_s64(vcvtq_s64_f64(v460[-2]));
                v466 = vmovn_s64(vcvtq_s64_f64(v460[-3]));
                v467 = vmovn_s64(vcvtq_s64_f64(v460[-4]));
                v468 = vqtbl4q_s8(*(&v426 - 1), xmmword_25738F040);
                v469 = vmovn_s64(vcvtq_s64_f64(v463));
                v470 = vmovn_s64(vcvtq_s64_f64(v460[2]));
                v471 = vmovn_s64(vcvtq_s64_f64(v460[1]));
                *&v463.f64[0] = vmovn_s64(vcvtq_s64_f64(*v460));
                v461[-1] = v468;
                *v461 = vqtbl4q_s8(*(&v426 - 3), xmmword_25738F040);
                v460 += 8;
                v461 += 2;
                v462 -= 16;
              }

              while (v462);
              if (v254 == v430)
              {
                goto LABEL_944;
              }

              if ((v254 & 0xC) == 0)
              {
                goto LABEL_886;
              }
            }

            else
            {
              v430 = 0;
            }

            v472 = v430;
            v430 = v254 & 0x7FFFFFFFFFFFFFFCLL;
            v473 = &v5[8 * v472];
            v474 = (v54 + 2 * v472);
            v475 = v472 - (v254 & 0x7FFFFFFFFFFFFFFCLL);
            do
            {
              v476 = *v473;
              v477 = v473[1];
              v473 += 2;
              *v474++ = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(v476), vcvtq_s64_f64(v477)));
              v475 += 4;
            }

            while (v475);
            if (v254 == v430)
            {
              goto LABEL_944;
            }

            goto LABEL_886;
          }

          if (*(*v378 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
          {
            v381 = v378;
          }

          else
          {
            v381 = 0;
          }

          v524 = v381;
          if (v381)
          {
            v5 = mlir::mps::MPSBufferTensorAttr::getRawData(&v524);
            v6 = v382;
            if ((v377 & 1) == 0)
            {
              goto LABEL_706;
            }
          }

          else if ((v377 & 1) == 0)
          {
            goto LABEL_706;
          }

LABEL_699:
          if (mlir::Type::isUnsignedInteger(&v517, 8))
          {
            v254 = 1;
            goto LABEL_708;
          }

          if (mlir::Type::isInteger(&v517, 8))
          {
            v254 = 1;
            goto LABEL_718;
          }

          if (mlir::Type::isUnsignedInteger(&v517, 16))
          {
            v254 = 1;
            goto LABEL_731;
          }

          if (mlir::Type::isInteger(&v517, 16))
          {
            v254 = 1;
            goto LABEL_741;
          }

          if (mlir::Type::isUnsignedInteger(&v517, 32))
          {
            v254 = 1;
            goto LABEL_751;
          }

          if (mlir::Type::isInteger(&v517, 32))
          {
            v254 = 1;
            goto LABEL_757;
          }

          if (mlir::Type::isUnsignedInteger(&v517, 64) || mlir::Type::isInteger(&v517, 64))
          {
            goto LABEL_770;
          }

          if (mlir::Type::isF16(&v517))
          {
            v254 = 1;
            goto LABEL_792;
          }

          if (mlir::Type::isF32(&v517))
          {
            v254 = 1;
            goto LABEL_800;
          }

          if (mlir::Type::isF64(&v517))
          {
            goto LABEL_824;
          }

          v254 = 1;
          if (!mlir::Type::isBF16(&v517))
          {
LABEL_858:
            if (!mlir::Type::isInteger(&v517, 1))
            {
              goto LABEL_649;
            }

            llvm::SmallVector<char,40u>::SmallVector(&v524, v254);
            mlir::detail::unpackBooleanData(v5, v6, v524, v525);
            v82 = v524;
            if (v254 < 1)
            {
              goto LABEL_877;
            }

            if (v377)
            {
              if (v254 < 4 || v54 < (v524 + 1) && v524 < v54 + 2 * v254)
              {
                v452 = 0;
                goto LABEL_865;
              }

              if (v254 >= 0x20)
              {
                v452 = v254 & 0x7FFFFFFFFFFFFFE0;
                v482 = vld1_dup_s8(v524);
                v483 = vmovl_s8(v482);
                v484 = v54 + 2;
                v485 = v254 & 0x7FFFFFFFFFFFFFE0;
                do
                {
                  v484[-2] = v483;
                  v484[-1] = v483;
                  *v484 = v483;
                  v484[1] = v483;
                  v484 += 4;
                  v485 -= 32;
                }

                while (v485);
                if (v254 == v452)
                {
                  goto LABEL_877;
                }

                if ((v254 & 0x1C) == 0)
                {
LABEL_865:
                  v453 = v254 - v452;
                  v454 = &v54->i16[v452];
                  do
                  {
                    *v454++ = *v82;
                    --v453;
                  }

                  while (v453);
                  goto LABEL_877;
                }
              }

              else
              {
                v452 = 0;
              }

              v486 = v452;
              v452 = v254 & 0x7FFFFFFFFFFFFFFCLL;
              v487 = vshr_n_s16(vshl_n_s16(vdup_n_s16(*v82), 8uLL), 8uLL);
              v488 = (v54 + 2 * v486);
              v489 = v486 - (v254 & 0x7FFFFFFFFFFFFFFCLL);
              do
              {
                *v488++ = v487;
                v489 += 4;
              }

              while (v489);
              if (v254 == v452)
              {
                goto LABEL_877;
              }

              goto LABEL_865;
            }

            if (v254 < 8 || v54 < (v524 + v254) && v524 < v54 + 2 * v254)
            {
              v455 = 0;
              goto LABEL_875;
            }

            if (v254 >= 0x20)
            {
              v455 = v254 & 0x7FFFFFFFFFFFFFE0;
              v490 = (v524 + 16);
              v491 = v54 + 2;
              v492 = v254 & 0x7FFFFFFFFFFFFFE0;
              do
              {
                v493 = *v490[-2].i8;
                v494 = vmovl_s8(*v490);
                v495 = vmovl_high_s8(*v490->i8);
                v491[-2] = vmovl_s8(*v493.i8);
                v491[-1] = vmovl_high_s8(v493);
                *v491 = v494;
                v491[1] = v495;
                v491 += 4;
                v490 += 4;
                v492 -= 32;
              }

              while (v492);
              if (v254 == v455)
              {
                goto LABEL_877;
              }

              if ((v254 & 0x18) == 0)
              {
LABEL_875:
                v456 = v254 - v455;
                v457 = &v54->i16[v455];
                v458 = v82 + v455;
                do
                {
                  v459 = *v458++;
                  *v457++ = v459;
                  --v456;
                }

                while (v456);
                goto LABEL_877;
              }
            }

            else
            {
              v455 = 0;
            }

            v496 = v455;
            v455 = v254 & 0x7FFFFFFFFFFFFFF8;
            v497 = (v82 + v496);
            v498 = (v54 + 2 * v496);
            v499 = v496 - (v254 & 0x7FFFFFFFFFFFFFF8);
            do
            {
              v500 = *v497++;
              *v498++ = vmovl_s8(v500);
              v499 += 8;
            }

            while (v499);
            if (v254 == v455)
            {
              goto LABEL_877;
            }

            goto LABEL_875;
          }

LABEL_852:
          for (i9 = 0; i9 != v254; ++i9)
          {
            if (v377)
            {
              v451 = 0;
            }

            else
            {
              v451 = i9;
            }

            v54->i16[i9] = COERCE_FLOAT(*&v5[2 * v451] << 16);
          }

          goto LABEL_944;
        }

LABEL_693:
        v376 = 0;
        goto LABEL_694;
      }
    }

    v70 = 0;
    v71 = v69;
    goto LABEL_691;
  }

  v31 = v521;
  v520 = v516;
  v32 = mlir::ElementsAttr::getType(&v520);
  if (!v32)
  {
    goto LABEL_100;
  }

  v33 = *v32;
  {
    v83 = v32;
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v32 = v83;
    v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v35 = *(v33 + 8);
    v36 = *(v33 + 16);
    if (v36)
    {
      goto LABEL_27;
    }

LABEL_100:
    v84 = 0;
    goto LABEL_101;
  }

  v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v35 = *(v33 + 8);
  v36 = *(v33 + 16);
  if (!v36)
  {
    goto LABEL_100;
  }

LABEL_27:
  v37 = v35;
  v38 = v36;
  do
  {
    v39 = v38 >> 1;
    v40 = &v37[2 * (v38 >> 1)];
    v42 = *v40;
    v41 = v40 + 2;
    v38 += ~(v38 >> 1);
    if (v42 < v34)
    {
      v37 = v41;
    }

    else
    {
      v38 = v39;
    }
  }

  while (v38);
  if (v37 == &v35[2 * v36] || *v37 != v34)
  {
    goto LABEL_100;
  }

  v84 = v37[1];
LABEL_101:
  v518 = v32;
  v519 = v84;
  v517 = mlir::ShapedType::getElementType(&v518);
  v85 = mlir::ElementsAttr::isSplat(&v520);
  RawData = v520;
  if (mlir::DenseElementsAttr::classof(v520))
  {
    v87 = RawData;
  }

  else
  {
    v87 = 0;
  }

  v524 = v87;
  if (v87)
  {
    RawData = mlir::DenseElementsAttr::getRawData(&v524);
    v6 = v88;
    if (v85)
    {
      goto LABEL_106;
    }

    goto LABEL_113;
  }

  if (*(*RawData + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v90 = RawData;
  }

  else
  {
    v90 = 0;
  }

  v524 = v90;
  if (!v90)
  {
    if ((v85 & 1) == 0)
    {
      goto LABEL_113;
    }

LABEL_106:
    if (mlir::Type::isUnsignedInteger(&v517, 8))
    {
      NumElements = 1;
      goto LABEL_115;
    }

    if (mlir::Type::isInteger(&v517, 8))
    {
      NumElements = 1;
      goto LABEL_125;
    }

    if (mlir::Type::isUnsignedInteger(&v517, 16))
    {
      NumElements = 1;
      goto LABEL_138;
    }

    if (mlir::Type::isInteger(&v517, 16))
    {
      NumElements = 1;
      goto LABEL_148;
    }

    if (mlir::Type::isUnsignedInteger(&v517, 32))
    {
      NumElements = 1;
      goto LABEL_158;
    }

    if (mlir::Type::isInteger(&v517, 32))
    {
      NumElements = 1;
      goto LABEL_168;
    }

    if (!mlir::Type::isUnsignedInteger(&v517, 64) && !mlir::Type::isInteger(&v517, 64))
    {
      if (mlir::Type::isF16(&v517))
      {
        NumElements = 1;
        goto LABEL_198;
      }

      if (mlir::Type::isF32(&v517))
      {
        NumElements = 1;
        goto LABEL_208;
      }

      if (!mlir::Type::isF64(&v517))
      {
        NumElements = 1;
        if (!mlir::Type::isBF16(&v517))
        {
LABEL_246:
          if (mlir::Type::isInteger(&v517, 1))
          {
            llvm::SmallVector<char,40u>::SmallVector(&v524, NumElements);
            mlir::detail::unpackBooleanData(RawData, v6, v524, v525);
            v134 = v524;
            if (NumElements < 1)
            {
              goto LABEL_437;
            }

            if ((v85 & 1) == 0)
            {
              v135 = 0;
              if (NumElements < 8 || (v31 - v524) < 0x20)
              {
                goto LABEL_279;
              }

              if (NumElements >= 0x20)
              {
                v135 = NumElements & 0x7FFFFFFFFFFFFFE0;
                v155 = (v524 + 16);
                v156 = v31 + 16;
                v157 = NumElements & 0x7FFFFFFFFFFFFFE0;
                do
                {
                  v158 = *v155;
                  *(v156 - 1) = *(v155 - 1);
                  *v156 = v158;
                  v155 += 2;
                  v156 += 2;
                  v157 -= 32;
                }

                while (v157);
                if (NumElements == v135)
                {
                  goto LABEL_437;
                }

                if ((NumElements & 0x18) == 0)
                {
LABEL_279:
                  v164 = NumElements - v135;
                  v165 = &v31[v135];
                  v166 = &v134[v135];
                  do
                  {
                    v167 = *v166++;
                    *v165++ = v167;
                    --v164;
                  }

                  while (v164);
                  goto LABEL_437;
                }
              }

              else
              {
                v135 = 0;
              }

              v159 = v135;
              v135 = NumElements & 0x7FFFFFFFFFFFFFF8;
              v160 = &v134[v159];
              v161 = &v31[v159];
              v162 = v159 - (NumElements & 0x7FFFFFFFFFFFFFF8);
              do
              {
                v163 = *v160;
                v160 += 8;
                *v161 = v163;
                v161 += 8;
                v162 += 8;
              }

              while (v162);
              if (NumElements != v135)
              {
                goto LABEL_279;
              }

LABEL_437:
              if (v134 != v526)
              {
                free(v134);
              }

              goto LABEL_944;
            }

LABEL_436:
            memset(v31, *v134, NumElements);
            goto LABEL_437;
          }

          goto LABEL_261;
        }

        goto LABEL_240;
      }

LABEL_403:
      *v31 = *RawData;
      goto LABEL_944;
    }

LABEL_361:
    *v31 = *RawData;
    goto LABEL_944;
  }

  RawData = mlir::mps::MPSBufferTensorAttr::getRawData(&v524);
  v6 = v91;
  if (v85)
  {
    goto LABEL_106;
  }

LABEL_113:
  NumElements = mlir::ElementsAttr::getNumElements(v520, *(&v520 + 1));
  if (mlir::Type::isUnsignedInteger(&v517, 8))
  {
    if (NumElements >= 1)
    {
LABEL_115:
      for (i10 = 0; i10 != NumElements; ++i10)
      {
        if (v85)
        {
          v93 = 0;
        }

        else
        {
          v93 = i10;
        }

        v31[i10] = RawData[v93];
      }

      goto LABEL_944;
    }

    goto LABEL_944;
  }

  if (mlir::Type::isInteger(&v517, 8))
  {
    if (NumElements >= 1)
    {
LABEL_125:
      for (i11 = 0; i11 != NumElements; ++i11)
      {
        if (v85)
        {
          v95 = 0;
        }

        else
        {
          v95 = i11;
        }

        v31[i11] = RawData[v95];
      }

      goto LABEL_944;
    }

    goto LABEL_944;
  }

  if (mlir::Type::isUnsignedInteger(&v517, 16))
  {
    if (NumElements >= 1)
    {
LABEL_138:
      for (i12 = 0; i12 != NumElements; ++i12)
      {
        if (v85)
        {
          v97 = 0;
        }

        else
        {
          v97 = i12;
        }

        v31[i12] = *&RawData[2 * v97];
      }

      goto LABEL_944;
    }

    goto LABEL_944;
  }

  if (mlir::Type::isInteger(&v517, 16))
  {
    if (NumElements >= 1)
    {
LABEL_148:
      for (i13 = 0; i13 != NumElements; ++i13)
      {
        if (v85)
        {
          v99 = 0;
        }

        else
        {
          v99 = i13;
        }

        v31[i13] = *&RawData[2 * v99];
      }

      goto LABEL_944;
    }

    goto LABEL_944;
  }

  if (mlir::Type::isUnsignedInteger(&v517, 32))
  {
    if (NumElements >= 1)
    {
LABEL_158:
      for (i14 = 0; i14 != NumElements; ++i14)
      {
        if (v85)
        {
          v101 = 0;
        }

        else
        {
          v101 = i14;
        }

        v31[i14] = *&RawData[4 * v101];
      }

      goto LABEL_944;
    }

    goto LABEL_944;
  }

  if (mlir::Type::isInteger(&v517, 32))
  {
    if (NumElements >= 1)
    {
LABEL_168:
      for (i15 = 0; i15 != NumElements; ++i15)
      {
        if (v85)
        {
          v103 = 0;
        }

        else
        {
          v103 = i15;
        }

        v31[i15] = *&RawData[4 * v103];
      }

      goto LABEL_944;
    }

    goto LABEL_944;
  }

  if (mlir::Type::isUnsignedInteger(&v517, 64))
  {
    if (NumElements < 1)
    {
      goto LABEL_944;
    }

    if (NumElements < 8 || v31 < &RawData[8 * NumElements] && &v31[NumElements] > RawData)
    {
      v104 = 0;
LABEL_184:
      v105 = NumElements - v104;
      v106 = &v31[v104];
      v107 = &RawData[8 * v104];
      do
      {
        v108 = *v107;
        v107 += 8;
        *v106++ = v108;
        --v105;
      }

      while (v105);
      goto LABEL_944;
    }

    if (NumElements >= 0x20)
    {
      v104 = NumElements & 0x7FFFFFFFFFFFFFE0;
      v123 = (RawData + 128);
      v124 = v31 + 16;
      v125 = NumElements & 0x7FFFFFFFFFFFFFE0;
      do
      {
        *&v126 = vqtbl4q_s8(v123[-2], xmmword_25738F050).u64[0];
        *&v127 = vqtbl4q_s8(*v123, xmmword_25738F050).u64[0];
        *(&v126 + 1) = vqtbl4q_s8(v123[-1], xmmword_25738F050).u64[0];
        *(&v127 + 1) = vqtbl4q_s8(v123[1], xmmword_25738F050).u64[0];
        *(v124 - 1) = v126;
        *v124 = v127;
        v123 += 4;
        v124 += 2;
        v125 -= 32;
      }

      while (v125);
      if (NumElements == v104)
      {
        goto LABEL_944;
      }

      if ((NumElements & 0x18) == 0)
      {
        goto LABEL_184;
      }
    }

    else
    {
      v104 = 0;
    }

    v128 = v104;
    v104 = NumElements & 0x7FFFFFFFFFFFFFF8;
    v129 = &RawData[8 * v128];
    v130 = &v31[v128];
    v131 = v128 - (NumElements & 0x7FFFFFFFFFFFFFF8);
    do
    {
      *v130 = vqtbl4q_s8(*v129, xmmword_25738F060).u64[0];
      v130 += 8;
      ++v129;
      v131 += 8;
    }

    while (v131);
    if (NumElements == v104)
    {
      goto LABEL_944;
    }

    goto LABEL_184;
  }

  if (mlir::Type::isInteger(&v517, 64))
  {
    if (NumElements < 1)
    {
      goto LABEL_944;
    }

    if (NumElements < 8 || v31 < &RawData[8 * NumElements] && &v31[NumElements] > RawData)
    {
      v109 = 0;
LABEL_193:
      v110 = NumElements - v109;
      v111 = &v31[v109];
      v112 = &RawData[8 * v109];
      do
      {
        v113 = *v112;
        v112 += 8;
        *v111++ = v113;
        --v110;
      }

      while (v110);
      goto LABEL_944;
    }

    if (NumElements >= 0x20)
    {
      v109 = NumElements & 0x7FFFFFFFFFFFFFE0;
      v136 = (RawData + 128);
      v137 = v31 + 16;
      v138 = NumElements & 0x7FFFFFFFFFFFFFE0;
      do
      {
        *&v139 = vqtbl4q_s8(v136[-2], xmmword_25738F050).u64[0];
        *&v140 = vqtbl4q_s8(*v136, xmmword_25738F050).u64[0];
        *(&v139 + 1) = vqtbl4q_s8(v136[-1], xmmword_25738F050).u64[0];
        *(&v140 + 1) = vqtbl4q_s8(v136[1], xmmword_25738F050).u64[0];
        *(v137 - 1) = v139;
        *v137 = v140;
        v136 += 4;
        v137 += 2;
        v138 -= 32;
      }

      while (v138);
      if (NumElements == v109)
      {
        goto LABEL_944;
      }

      if ((NumElements & 0x18) == 0)
      {
        goto LABEL_193;
      }
    }

    else
    {
      v109 = 0;
    }

    v141 = v109;
    v109 = NumElements & 0x7FFFFFFFFFFFFFF8;
    v142 = &RawData[8 * v141];
    v143 = &v31[v141];
    v144 = v141 - (NumElements & 0x7FFFFFFFFFFFFFF8);
    do
    {
      *v143 = vqtbl4q_s8(*v142, xmmword_25738F060).u64[0];
      v143 += 8;
      ++v142;
      v144 += 8;
    }

    while (v144);
    if (NumElements == v109)
    {
      goto LABEL_944;
    }

    goto LABEL_193;
  }

  if (mlir::Type::isF16(&v517))
  {
    if (NumElements >= 1)
    {
LABEL_198:
      for (i16 = 0; i16 != NumElements; ++i16)
      {
        if (v85)
        {
          v115 = 0;
        }

        else
        {
          v115 = i16;
        }

        v31[i16] = *&RawData[2 * v115];
      }

      goto LABEL_944;
    }

    goto LABEL_944;
  }

  if (mlir::Type::isF32(&v517))
  {
    if (NumElements >= 1)
    {
LABEL_208:
      for (i17 = 0; i17 != NumElements; ++i17)
      {
        if (v85)
        {
          v117 = 0;
        }

        else
        {
          v117 = i17;
        }

        v31[i17] = *&RawData[4 * v117];
      }

      goto LABEL_944;
    }

    goto LABEL_944;
  }

  if (mlir::Type::isF64(&v517))
  {
    if (NumElements < 1)
    {
      goto LABEL_944;
    }

    if (NumElements < 4 || v31 < &RawData[8 * NumElements] && &v31[NumElements] > RawData)
    {
      v118 = 0;
LABEL_225:
      v119 = NumElements - v118;
      v120 = &v31[v118];
      v121 = &RawData[8 * v118];
      do
      {
        v122 = *v121++;
        *v120++ = v122;
        --v119;
      }

      while (v119);
      goto LABEL_944;
    }

    if (NumElements >= 0x10)
    {
      v118 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v146 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v147 = v31;
      v148 = RawData;
      do
      {
        *v147++ = vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(*v148), vcvtq_s64_f64(v148[1])), vuzp1q_s32(vcvtq_s64_f64(v148[2]), vcvtq_s64_f64(v148[3]))), vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(v148[4]), vcvtq_s64_f64(v148[5])), vuzp1q_s32(vcvtq_s64_f64(v148[6]), vcvtq_s64_f64(v148[7]))));
        v148 += 8;
        v146 -= 16;
      }

      while (v146);
      if (NumElements == v118)
      {
        goto LABEL_944;
      }

      if ((NumElements & 0xC) == 0)
      {
        goto LABEL_225;
      }
    }

    else
    {
      v118 = 0;
    }

    v149 = v118;
    v118 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v150 = &RawData[8 * v149];
    v151 = &v31[v149];
    v152 = v149 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v153 = *v150;
      v154 = v150[1];
      v150 += 2;
      *&v153.f64[0] = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(v153), vcvtq_s64_f64(v154)));
      *v151 = vuzp1_s8(*&v153.f64[0], *&v153.f64[0]).u32[0];
      v151 += 4;
      v152 += 4;
    }

    while (v152);
    if (NumElements == v118)
    {
      goto LABEL_944;
    }

    goto LABEL_225;
  }

  if (!mlir::Type::isBF16(&v517))
  {
    goto LABEL_246;
  }

  if (NumElements >= 1)
  {
LABEL_240:
    for (i18 = 0; i18 != NumElements; ++i18)
    {
      if (v85)
      {
        v133 = 0;
      }

      else
      {
        v133 = i18;
      }

      v31[i18] = COERCE_FLOAT(*&RawData[2 * v133] << 16);
    }
  }

LABEL_944:
  if (a5)
  {
    v507 = mlir::TensorType::operator mlir::ShapedType(&v513);
    v524 = mlir::DenseElementsAttr::getFromRawBuffer(v507, v508, v521, v522);
    result = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v524);
    v509 = v521;
    if (v521 == v523)
    {
      return result;
    }
  }

  else
  {
    result = mlir::createRawElementsAttr(v513, v521, v522);
    v509 = v521;
    if (v521 == v523)
    {
      return result;
    }
  }

  v510 = result;
  free(v509);
  return v510;
}