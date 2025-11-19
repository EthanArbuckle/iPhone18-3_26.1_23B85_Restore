uint64_t mlir::InFlightDiagnostic::operator<<<unsigned int>(uint64_t a1, unsigned int *a2)
{
  if (*a1)
  {
    v3 = *a2;
    v8 = 5;
    v9 = v3;
    v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v8, 1);
    v5 = *(a1 + 24) + 24 * *(a1 + 32);
    v6 = *v4;
    *(v5 + 16) = *(v4 + 16);
    *v5 = v6;
    ++*(a1 + 32);
  }

  return a1;
}

uint64_t ODIE::Compiler::Utils::CoreKernelsTypeBridges::anonymous namespace::computeTotalSizeInBytes(uint64_t a1)
{
  v2 = *(a1 + 8);
  v12 = (*(*(a1 + 16) + 8))();
  if (mlir::Type::isIntOrFloat(&v12))
  {
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v12);
    if (IntOrFloatBitWidth)
    {
      v4 = ((IntOrFloatBitWidth - (IntOrFloatBitWidth != 0)) >> 3) + 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  v5 = *(a1 + 8);
  v6 = (*(*(a1 + 16) + 24))();
  if (v7)
  {
    v8 = 8 * v7;
    v9 = 1;
    do
    {
      v10 = *v6++;
      v9 *= v10;
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v9 = 1;
  }

  return v9 * v4;
}

__int16 _ZN4ODIE8Compiler5Utils22CoreKernelsTypeBridges12_GLOBAL__N_114copyValuesIntoIDF16_EEvN4mlir17DenseElementsAttrEPv@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>)
{
  v5 = *(a1 + 8);
  v6 = (*(*(a1 + 16) + 8))();
  if (isValidIntOrFloat(v6, 2, 0, 1u))
  {
    v8 = *(a1 + 32);
    v2 = *(a1 + 24);
    v9 = *(a1 + 8);
    v10 = (*(*(a1 + 16) + 24))();
    if (v11)
    {
      v13 = 8 * v11;
      v7 = 1;
      do
      {
        v14 = *v10++;
        v7 *= v14;
        v13 -= 8;
      }

      while (v13);
      if (!v7)
      {
        return result;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  v15 = 0;
  do
  {
    if (v2)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    result = *(v8 + 2 * v16);
    *(a2 + 2 * v15++) = result;
  }

  while (v7 != v15);
  return result;
}

uint64_t mlir::DenseElementsAttr::tryGetValues<float,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 8);
  v5 = (*(*(*a1 + 16) + 8))();
  result = isValidIntOrFloat(v5, 4, 0, 1u);
  if (result)
  {
    v7 = *a1;
    v8 = *(*a1 + 32);
    v9 = *(*a1 + 24);
    v10 = *(*a1 + 8);
    v11 = *(v7 + 16);
    result = (*(v11 + 24))(v11, v10);
    if (v12)
    {
      v13 = 8 * v12;
      v14 = 1;
      do
      {
        v15 = *result;
        result += 8;
        v14 *= v15;
        v13 -= 8;
      }

      while (v13);
    }

    else
    {
      v14 = 1;
    }

    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = 0;
    *(a2 + 24) = v8;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
    v16 = 1;
    *(a2 + 48) = v10;
    *(a2 + 56) = v11;
  }

  else
  {
    v16 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v16;
  return result;
}

uint64_t mlir::DenseElementsAttr::tryGetValues<long long,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 8);
  v5 = (*(*(*a1 + 16) + 8))();
  result = isValidIntOrFloat(v5, 8, 1, 1u);
  if (result)
  {
    v7 = *a1;
    v8 = *(*a1 + 32);
    v9 = *(*a1 + 24);
    v10 = *(*a1 + 8);
    v11 = *(v7 + 16);
    result = (*(v11 + 24))(v11, v10);
    if (v12)
    {
      v13 = 8 * v12;
      v14 = 1;
      do
      {
        v15 = *result;
        result += 8;
        v14 *= v15;
        v13 -= 8;
      }

      while (v13);
    }

    else
    {
      v14 = 1;
    }

    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = 0;
    *(a2 + 24) = v8;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
    v16 = 1;
    *(a2 + 48) = v10;
    *(a2 + 56) = v11;
  }

  else
  {
    v16 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v16;
  return result;
}

_DWORD *mlir::DenseElementsAttr::tryGetValues<BOOL,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 8);
  result = (*(*(*a1 + 16) + 8))();
  if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (result[2] & 0x3FFFFFFF) == 1)
  {
    v6 = *a1;
    v7 = *(*a1 + 8);
    v8 = *(v6 + 16);
    v9 = *(v6 + 32);
    v10 = *(v6 + 24);
    result = (*(v8 + 24))(v8, v7);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = 1;
      do
      {
        v14 = *result;
        result += 2;
        v13 *= v14;
        v12 -= 8;
      }

      while (v12);
    }

    else
    {
      v13 = 1;
    }

    v16 = *(v6 + 32);
    v17 = *(v6 + 24);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = 0;
    *(a2 + 24) = v16;
    *(a2 + 32) = v17;
    *(a2 + 40) = v13;
    *(a2 + 48) = v7;
    *(a2 + 56) = v8;
    v15 = 1;
  }

  else
  {
    v15 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v15;
  return result;
}

uint64_t mlir::DenseElementsAttr::tryGetValues<signed char,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 8);
  v5 = (*(*(*a1 + 16) + 8))();
  result = isValidIntOrFloat(v5, 1, 1, 1u);
  if (result)
  {
    v7 = *a1;
    v8 = *(*a1 + 32);
    v9 = *(*a1 + 24);
    v10 = *(*a1 + 8);
    v11 = *(v7 + 16);
    result = (*(v11 + 24))(v11, v10);
    if (v12)
    {
      v13 = 8 * v12;
      v14 = 1;
      do
      {
        v15 = *result;
        result += 8;
        v14 *= v15;
        v13 -= 8;
      }

      while (v13);
    }

    else
    {
      v14 = 1;
    }

    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = 0;
    *(a2 + 24) = v8;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
    v16 = 1;
    *(a2 + 48) = v10;
    *(a2 + 56) = v11;
  }

  else
  {
    v16 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v16;
  return result;
}

uint64_t mlir::DenseElementsAttr::tryGetValues<short,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 8);
  v5 = (*(*(*a1 + 16) + 8))();
  result = isValidIntOrFloat(v5, 2, 1, 1u);
  if (result)
  {
    v7 = *a1;
    v8 = *(*a1 + 32);
    v9 = *(*a1 + 24);
    v10 = *(*a1 + 8);
    v11 = *(v7 + 16);
    result = (*(v11 + 24))(v11, v10);
    if (v12)
    {
      v13 = 8 * v12;
      v14 = 1;
      do
      {
        v15 = *result;
        result += 8;
        v14 *= v15;
        v13 -= 8;
      }

      while (v13);
    }

    else
    {
      v14 = 1;
    }

    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = 0;
    *(a2 + 24) = v8;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
    v16 = 1;
    *(a2 + 48) = v10;
    *(a2 + 56) = v11;
  }

  else
  {
    v16 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v16;
  return result;
}

uint64_t mlir::Diagnostic::operator<<<33ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<9ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<5ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<6ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

void llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
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

uint64_t llvm::SmallVectorImpl<mlir::Value>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<mlir::Value>::assignRemote(a1, a2);
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

{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 8 * v4);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        memmove(*a1, *a2, 8 * v5);
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4, 8);
    }

    v5 = 0;
LABEL_10:
    v6 = *(a2 + 8) - v5;
    if (v6)
    {
      memcpy((*a1 + 8 * v5), (*a2 + 8 * v5), 8 * v6);
    }

LABEL_12:
    *(a1 + 8) = v4;
  }

  return a1;
}

double llvm::SmallVectorImpl<mlir::Value>::assignRemote(uint64_t a1, uint64_t a2)
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

void llvm::SmallVectorImpl<long long>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 8);
        v2 = *(a1 + 8);
      }

      if (a2 != v2)
      {
        bzero((*a1 + 8 * v2), 8 * (a2 - v2));
      }
    }

    *(a1 + 8) = a2;
  }
}

uint64_t mlir::AffineExpr::walk<void>(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 8) > 4u)
  {
    return a2(a3, a1);
  }

  mlir::AffineExprVisitor<void mlir::AffineExpr::walk<void>(mlir::AffineExpr,llvm::function_ref<void ()(mlir::AffineExpr)>)::AffineExprWalker,void>::walkOperandsPostOrder(&v5, a1);
  return v5(v6, a1);
}

uint64_t **mlir::getAffineBinaryOpExpr(int a1, unint64_t a2, mlir::MLIRContext *a3)
{
  v4 = a2;
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return mlir::AffineExpr::ceilDiv(&v4, a3, a3);
      }

      return mlir::AffineExpr::operator%(&v4, a3, a3);
    }

    return mlir::AffineExpr::floorDiv(&v4, a3, a3);
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return mlir::AffineExpr::operator*(&v4, a3, a3);
      }

      return mlir::AffineExpr::operator%(&v4, a3, a3);
    }

    return mlir::AffineExpr::operator+(&v4, a3, a3);
  }
}

uint64_t mlir::AffineExpr::operator+(unint64_t *a1, unint64_t a2, mlir::MLIRContext *a3)
{
  v46 = a2;
  v4 = *a1;
  v48 = a2;
  v49 = v4;
  v5 = *(v4 + 2);
  if (v5 == 5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a2 + 8);
  if (v7 == 5)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (v5 == 5 || mlir::AffineExpr::isSymbolicOrConstant(&v49) && (mlir::AffineExpr::isSymbolicOrConstant(&v48) & 1) == 0)
    {
      v10 = &v48;
      v11 = v4;
LABEL_14:
      v12 = mlir::AffineExpr::operator+(v10, v11);
      goto LABEL_17;
    }

    if (v8)
    {
      v21 = *(v8 + 16);
      if (!v21)
      {
        return v4;
      }

      if (v5 <= 4)
      {
        if (v5 != 1)
        {
          if (!v5)
          {
            v22 = v4[3];
            v23 = 1;
            v24 = 1;
            if (v22)
            {
              v25 = v4;
              v26 = v4;
              if (*(v22 + 2) == 5)
              {
                v50 = v4[2];
                v12 = mlir::AffineExpr::operator+(&v50, (v22[2] + v21), v20);
                goto LABEL_17;
              }

LABEL_35:
              if (v7 >= 5)
              {
                v27 = 0;
              }

              else
              {
                v27 = a2;
              }

              if (v27 && *(v27 + 8) == 1 && ((v28 = *(v27 + 24)) != 0 ? (v29 = *(v28 + 8) == 5) : (v29 = 0), v29))
              {
                v30 = *(v28 + 16);
                v31 = *(v27 + 16);
              }

              else
              {
                v30 = 1;
                v31 = a2;
              }

              if (v26 == v31)
              {
                AffineConstantExpr = mlir::getAffineConstantExpr((v30 + v23), *v4, v20);
                v50 = v26;
                v12 = mlir::AffineExpr::operator*(&v50, AffineConstantExpr, v41);
                goto LABEL_17;
              }

              if (v24)
              {
                if (!*(v25 + 2))
                {
                  v43 = v25[3];
                  if (v43)
                  {
                    if (*(v43 + 2) == 5)
                    {
                      v47 = v25[2];
                      v50 = mlir::AffineExpr::operator+(&v47, a2);
                      v10 = &v50;
                      v11 = v43;
                      goto LABEL_14;
                    }
                  }
                }
              }

              if (!v27)
              {
                goto LABEL_19;
              }

              v32 = *(v27 + 16);
              v33 = *(v27 + 24);
              v50 = v33;
              if (*(v32 + 8) >= 5)
              {
                v32 = 0;
              }

              if (v33 && *(v33 + 8) == 5 && *(v33 + 16) == -1)
              {
                if (!v32)
                {
                  goto LABEL_18;
                }

                v35 = *(v32 + 8);
                if (v35 == 1)
                {
                  v44 = *(v32 + 16);
                  if (v44)
                  {
                    v45 = *(v44 + 8) == 3;
                  }

                  else
                  {
                    v45 = 0;
                  }

                  if (!v45)
                  {
                    goto LABEL_18;
                  }

                  v36 = *(v32 + 24);
                  if (*(v44 + 24) == v36 && v4 == *(v44 + 16))
                  {
                    goto LABEL_72;
                  }
                }

                if (v7 != 1)
                {
                  goto LABEL_18;
                }
              }

              else
              {
                if (v32)
                {
                  v34 = v7 == 1;
                }

                else
                {
                  v34 = 0;
                }

                if (!v34)
                {
                  goto LABEL_18;
                }

                v35 = *(v32 + 8);
              }

              if (v35 != 3)
              {
                goto LABEL_18;
              }

              v36 = *(v32 + 24);
              if (!v36 || *(v36 + 8) != 5)
              {
                goto LABEL_18;
              }

              v38 = *(v32 + 16);
              v39 = *(v36 + 16) >= 1 && v4 == v38;
              if (!v39 || v36 != mlir::AffineExpr::operator-(&v50, v19, v20))
              {
                goto LABEL_18;
              }

LABEL_72:
              v12 = mlir::AffineExpr::operator%(&v49, v36, v20);
              goto LABEL_17;
            }

LABEL_84:
            v25 = v4;
            goto LABEL_34;
          }

          v24 = 1;
          v25 = v4;
          goto LABEL_33;
        }

LABEL_75:
        v42 = v4[3];
        v23 = 1;
        v24 = 1;
        if (v42)
        {
          v25 = v4;
          v26 = v4;
          if (*(v42 + 2) == 5)
          {
            v23 = v42[2];
            v26 = v4[2];
            v24 = 1;
            v25 = v4;
          }

          goto LABEL_35;
        }

        goto LABEL_84;
      }
    }

    else if (v5 <= 4)
    {
      if (v5 != 1)
      {
        v23 = 1;
        v25 = v4;
        v24 = 1;
        goto LABEL_34;
      }

      goto LABEL_75;
    }

    v25 = 0;
    v24 = 0;
LABEL_33:
    v23 = 1;
LABEL_34:
    v26 = v4;
    goto LABEL_35;
  }

  v13 = v6[2];
  v14 = *(v8 + 16);
  if (__OFADD__(v13, v14))
  {
LABEL_19:
    v15 = **v4;
    LODWORD(v50) = 0;
    v16 = mlir::detail::TypeIDResolver<mlir::detail::AffineBinaryOpExprStorage,void>::resolveTypeID();
    return mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>((v15 + 352), 0, 0, v16, &v50, a1, &v46);
  }

  v12 = mlir::getAffineConstantExpr((v13 + v14), *v4, a3);
LABEL_17:
  v4 = v12;
  if (!v12)
  {
LABEL_18:
    v4 = *a1;
    goto LABEL_19;
  }

  return v4;
}

uint64_t mlir::AffineExpr::operator*(unint64_t *a1, unint64_t a2, mlir::MLIRContext *a3)
{
  v23 = a2;
  v4 = *a1;
  v26 = a2;
  v27 = v4;
  v5 = *(v4 + 8);
  if (v5 == 5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (*(a2 + 8) == 5)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v16 = *(v6 + 16);
    v17 = *(v7 + 16);
    if ((v16 * v17) >> 64 == (v16 * v17) >> 63)
    {
      AffineConstantExpr = mlir::getAffineConstantExpr((v16 * v17), *v4, a3);
      goto LABEL_27;
    }

LABEL_29:
    v20 = **v4;
    LODWORD(v27) = 1;
    v21 = mlir::detail::TypeIDResolver<mlir::detail::AffineBinaryOpExprStorage,void>::resolveTypeID();
    return mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>((v20 + 352), 0, 0, v21, &v27, a1, &v23);
  }

  v9 = a2;
  if ((mlir::AffineExpr::isSymbolicOrConstant(&v27) & 1) == 0 && !mlir::AffineExpr::isSymbolicOrConstant(&v26))
  {
    goto LABEL_29;
  }

  isSymbolicOrConstant = mlir::AffineExpr::isSymbolicOrConstant(&v26);
  if (v5 == 5 || (isSymbolicOrConstant & 1) == 0)
  {
    v18 = &v26;
    v19 = v4;
LABEL_26:
    AffineConstantExpr = mlir::AffineExpr::operator*(v18, v19);
LABEL_27:
    v9 = AffineConstantExpr;
    if (!AffineConstantExpr)
    {
LABEL_28:
      v4 = *a1;
      goto LABEL_29;
    }

    return v9;
  }

  if (!v7)
  {
    if (v5 != 1)
    {
      goto LABEL_29;
    }

    v13 = *(v4 + 24);
    v14 = *(v13 + 8);
LABEL_33:
    if (v14 != 5)
    {
      goto LABEL_29;
    }

    v24 = *(v4 + 16);
    v25 = mlir::AffineExpr::operator*(&v24, v9);
    v18 = &v25;
    v19 = v13;
    goto LABEL_26;
  }

  v12 = *(v7 + 16);
  if (v12 == 1)
  {
    v9 = v4;
    if (v4)
    {
      return v9;
    }

    goto LABEL_28;
  }

  if (v12)
  {
    if (v5 != 1)
    {
      goto LABEL_29;
    }

    v13 = *(v4 + 24);
    v14 = *(v13 + 8);
    if (v13 && v14 == 5)
    {
      v25 = *(v4 + 16);
      AffineConstantExpr = mlir::AffineExpr::operator*(&v25, (*(v13 + 16) * v12), v11);
      goto LABEL_27;
    }

    goto LABEL_33;
  }

  return v9;
}

uint64_t mlir::AffineExpr::floorDiv(unint64_t *a1, unint64_t a2, mlir::MLIRContext *a3)
{
  v26 = a2;
  v4 = *a1;
  if (*(*a1 + 8) == 5)
  {
    v5 = *a1;
  }

  else
  {
    v5 = 0;
  }

  if (!a2)
  {
    goto LABEL_25;
  }

  if (*(a2 + 8) != 5)
  {
    goto LABEL_25;
  }

  v7 = *(a2 + 16);
  if (!v7)
  {
    goto LABEL_25;
  }

  if (v5)
  {
    v8 = *(v5 + 16);
    if (v7 == -1 && v8 == 0x8000000000000000)
    {
      goto LABEL_25;
    }

    if (v8)
    {
      if ((v8 ^ v7) < 0)
      {
        v9 = (v8 + ((v7 >> 63) | 1)) / v7 - 1;
      }

      else
      {
        v9 = v8 / v7;
      }
    }

    else
    {
      v9 = 0;
    }

    AffineConstantExpr = mlir::getAffineConstantExpr(v9, *v4, a3);
  }

  else
  {
    if (mlir::getAffineConstantExpr(1, *a2, a3) == a2)
    {
      return v4;
    }

    v11 = *(v4 + 8);
    if (v11 > 4)
    {
LABEL_25:
      v16 = ***a1;
      LODWORD(v29) = 3;
      v17 = mlir::detail::TypeIDResolver<mlir::detail::AffineBinaryOpExprStorage,void>::resolveTypeID();
      return mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>((v16 + 352), 0, 0, v17, &v29, a1, &v26);
    }

    if (v11)
    {
      if (v11 != 1)
      {
        goto LABEL_25;
      }

      v12 = *(v4 + 24);
      if (!v12)
      {
        goto LABEL_25;
      }

      if (*(v12 + 8) != 5)
      {
        goto LABEL_25;
      }

      v13 = *(v12 + 16);
      v14 = *(a2 + 16);
      if (v13 % v14)
      {
        goto LABEL_25;
      }

      v29 = *(v4 + 16);
      AffineConstantExpr = mlir::AffineExpr::operator*(&v29, (v13 / v14), v10);
    }

    else
    {
      v29 = *(v4 + 16);
      LargestKnownDivisor = mlir::AffineExpr::getLargestKnownDivisor(&v29);
      v29 = *(v4 + 24);
      v20 = mlir::AffineExpr::getLargestKnownDivisor(&v29);
      v22 = *(a2 + 16);
      if (LargestKnownDivisor % v22 && v20 % v22)
      {
        goto LABEL_25;
      }

      v28 = *(v4 + 16);
      v29 = mlir::AffineExpr::floorDiv(&v28, v22, v21);
      v27 = *(v4 + 24);
      v24 = mlir::AffineExpr::floorDiv(&v27, *(a2 + 16), v23);
      AffineConstantExpr = mlir::AffineExpr::operator+(&v29, v24, v25);
    }
  }

  v4 = AffineConstantExpr;
  if (!AffineConstantExpr)
  {
    goto LABEL_25;
  }

  return v4;
}

uint64_t **mlir::AffineExpr::ceilDiv(unint64_t *a1, unint64_t a2, mlir::MLIRContext *a3)
{
  v16 = a2;
  result = *a1;
  v5 = *(result + 2);
  if (v5 == 5)
  {
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  if (!a2)
  {
    goto LABEL_30;
  }

  if (*(a2 + 8) != 5)
  {
    goto LABEL_30;
  }

  v7 = *(a2 + 16);
  if (!v7)
  {
    goto LABEL_30;
  }

  if (v6)
  {
    v8 = v6[2];
    if (v7 == -1 && v8 == 0x8000000000000000)
    {
      goto LABEL_30;
    }

    if (v8)
    {
      if ((v8 ^ v7) < 0)
      {
        v10 = v8 / v7;
      }

      else
      {
        if (v7 < 0)
        {
          v9 = v8 + 1;
        }

        else
        {
          v9 = v8 - 1;
        }

        v10 = v9 / v7 + 1;
      }
    }

    else
    {
      v10 = 0;
    }

    result = mlir::getAffineConstantExpr(v10, *result, a3);
  }

  else if (v7 != 1)
  {
    if (v5 != 1)
    {
      goto LABEL_30;
    }

    v11 = result[3];
    if (!v11 || *(v11 + 2) != 5)
    {
      goto LABEL_30;
    }

    v13 = v11[2];
    if (v13 % v7)
    {
      goto LABEL_30;
    }

    v17 = result[2];
    result = mlir::AffineExpr::operator*(&v17, (v13 / v7), a3);
  }

  if (result)
  {
    return result;
  }

  result = *a1;
LABEL_30:
  v14 = **result;
  LODWORD(v17) = 4;
  v15 = mlir::detail::TypeIDResolver<mlir::detail::AffineBinaryOpExprStorage,void>::resolveTypeID();
  return mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>((v14 + 352), 0, 0, v15, &v17, a1, &v16);
}

uint64_t mlir::AffineExpr::operator%(unint64_t *a1, unint64_t a2, mlir::MLIRContext *a3)
{
  v21 = a2;
  v4 = *a1;
  v23 = v4;
  if (*(v4 + 2) == 5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    if (*(a2 + 8) == 5)
    {
      v7 = *(a2 + 16);
      if (v7 >= 1)
      {
        if (v5)
        {
          v8 = *v4;
          v9 = ((v7 & ((v5[2] % v7) >> 63)) + v5[2] % v7);
          goto LABEL_9;
        }

        LargestKnownDivisor = mlir::AffineExpr::getLargestKnownDivisor(&v23);
        v12 = *(a2 + 16);
        if (!(LargestKnownDivisor % v12))
        {
          v8 = *v4;
          v9 = 0;
LABEL_9:
          result = mlir::getAffineConstantExpr(v9, v8, a3);
          if (result)
          {
            return result;
          }

          goto LABEL_27;
        }

        v13 = *(v4 + 2);
        if (v13 <= 4)
        {
          if (!v13)
          {
            v22 = v4[2];
            v16 = mlir::AffineExpr::getLargestKnownDivisor(&v22);
            v22 = v4[3];
            v17 = mlir::AffineExpr::getLargestKnownDivisor(&v22);
            v12 = *(a2 + 16);
            if (!(v16 % v12))
            {
              v18 = v4[3];
              goto LABEL_26;
            }

            if (!(v17 % v12))
            {
LABEL_25:
              v18 = v4[2];
LABEL_26:
              v22 = v18;
              result = mlir::AffineExpr::operator%(&v22, v12, a3);
              if (result)
              {
                return result;
              }

              goto LABEL_27;
            }

            v13 = *(v4 + 2);
          }

          if (v13 == 2)
          {
            v14 = v4[3];
            if (v14)
            {
              if (*(v14 + 2) == 5)
              {
                v15 = v14[2];
                if (v15 >= 1 && !(v15 % v12))
                {
                  goto LABEL_25;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_27:
  v19 = ***a1;
  LODWORD(v23) = 2;
  v20 = mlir::detail::TypeIDResolver<mlir::detail::AffineBinaryOpExprStorage,void>::resolveTypeID();
  return mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>((v19 + 352), 0, 0, v20, &v23, a1, &v21);
}

uint64_t **mlir::AffineExpr::replaceDimsAndSymbols(uint64_t ***a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  result = *a1;
  v11 = *(result + 2);
  if (v11 > 4)
  {
    if (v11 != 5)
    {
      if (v11 == 7)
      {
        v17 = *(result + 4);
        v18 = (a4 + 8 * v17);
        v19 = a5 > v17;
      }

      else
      {
        v20 = *(result + 4);
        v18 = (a2 + 8 * v20);
        v19 = a3 > v20;
      }

      if (v19)
      {
        v21 = v18;
      }

      else
      {
        v21 = a1;
      }

      return *v21;
    }
  }

  else
  {
    v12 = result[2];
    v13 = result[3];
    v22 = v13;
    v23 = v12;
    v14 = mlir::AffineExpr::replaceDimsAndSymbols(&v23, a2, a3, a4, a5);
    v15 = mlir::AffineExpr::replaceDimsAndSymbols(&v22, a2, a3, a4, a5);
    result = *a1;
    if (v12 != v14 || v13 != v15)
    {
      return mlir::getAffineBinaryOpExpr(*(result + 2), v14, v15);
    }
  }

  return result;
}

uint64_t **mlir::AffineExpr::shiftDims(uint64_t ***this, unsigned int a2, int a3, unsigned int a4)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x400000000;
  if (a4)
  {
    v8 = 0;
    do
    {
      AffineDimOrSymbol = getAffineDimOrSymbol(6u, v8, **this);
      llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v17, AffineDimOrSymbol);
      v8 = (v8 + 1);
    }

    while (a4 != v8);
  }

  v10 = a2 >= a4;
  v11 = a2 - a4;
  if (v11 != 0 && v10)
  {
    v12 = a4 + a3;
    do
    {
      v13 = getAffineDimOrSymbol(6u, v12, **this);
      llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v17, v13);
      v12 = (v12 + 1);
      --v11;
    }

    while (v11);
  }

  v14 = mlir::AffineExpr::replaceDimsAndSymbols(this, v17, v18, 0, 0);
  if (v17 != v19)
  {
    free(v17);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

uint64_t **mlir::AffineExpr::shiftSymbols(uint64_t ***this, unsigned int a2, int a3, unsigned int a4)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x400000000;
  if (a4)
  {
    v8 = 0;
    do
    {
      AffineDimOrSymbol = getAffineDimOrSymbol(7u, v8, **this);
      llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v17, AffineDimOrSymbol);
      v8 = (v8 + 1);
    }

    while (a4 != v8);
  }

  v10 = a2 >= a4;
  v11 = a2 - a4;
  if (v11 != 0 && v10)
  {
    v12 = a4 + a3;
    do
    {
      v13 = getAffineDimOrSymbol(7u, v12, **this);
      llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v17, v13);
      v12 = (v12 + 1);
      --v11;
    }

    while (v11);
  }

  v14 = mlir::AffineExpr::replaceDimsAndSymbols(this, 0, 0, v17, v18);
  if (v17 != v19)
  {
    free(v17);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t **mlir::AffineExpr::replace(uint64_t ***a1, uint64_t a2)
{
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>,mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::doFind<mlir::AffineExpr>(a2, a1);
  if (v4 && v4 != *a2 + 16 * *(a2 + 16))
  {
    return *(v4 + 8);
  }

  result = *a1;
  if (*(*a1 + 2) <= 4u)
  {
    v6 = result[2];
    v9 = result[3];
    v10 = v6;
    v7 = mlir::AffineExpr::replace(&v10, a2);
    v8 = mlir::AffineExpr::replace(&v9, a2);
    result = *a1;
    if (v10 != v7 || v9 != v8)
    {
      return mlir::getAffineBinaryOpExpr(*(result + 2), v7, v8);
    }
  }

  return result;
}

uint64_t **mlir::AffineExpr::replace(uint64_t ***a1, uint64_t a2, uint64_t a3)
{
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  v7 = a2;
  v8 = a3;
  llvm::DenseMapBase<llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>,mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(v9, &v7, &v8, &v6);
  v4 = mlir::AffineExpr::replace(a1, v9);
  MEMORY[0x25F891030](v9[0], 8);
  return v4;
}

uint64_t mlir::AffineExpr::isSymbolicOrConstant(mlir::AffineExpr *this)
{
  v1 = *this;
  v2 = *(*this + 8);
  if (v2 > 4)
  {
    return v2 == 5 || v2 == 7;
  }

  v6 = *(v1 + 16);
  result = mlir::AffineExpr::isSymbolicOrConstant(&v6);
  if (result)
  {
    v5 = *(v1 + 24);
    return mlir::AffineExpr::isSymbolicOrConstant(&v5);
  }

  return result;
}

uint64_t mlir::AffineExpr::isPureAffine(mlir::AffineExpr *this)
{
  v1 = *this;
  v2 = *(*this + 8);
  if (v2 > 4)
  {
    return 1;
  }

  if ((v2 - 2) < 3)
  {
    v8 = *(v1 + 16);
    result = mlir::AffineExpr::isPureAffine(&v8);
    if (result)
    {
      v4 = *(*(v1 + 24) + 8);
      return v4 == 5;
    }

    return result;
  }

  if (!v2)
  {
    v8 = *(v1 + 16);
    result = mlir::AffineExpr::isPureAffine(&v8);
    if (result)
    {
      v7 = *(v1 + 24);
      return mlir::AffineExpr::isPureAffine(&v7);
    }

    return result;
  }

  v5 = *(v1 + 16);
  v8 = v5;
  result = mlir::AffineExpr::isPureAffine(&v8);
  if (result)
  {
    v6 = *(v1 + 24);
    v7 = v6;
    result = mlir::AffineExpr::isPureAffine(&v7);
    if (result)
    {
      if (*(v5 + 8) != 5)
      {
        v4 = *(v6 + 8);
        return v4 == 5;
      }

      return 1;
    }
  }

  return result;
}

unint64_t mlir::AffineExpr::getLargestKnownDivisor(mlir::AffineExpr *this)
{
  v1 = *this;
  v2 = *(*this + 8);
  if (v2 > 2)
  {
    if ((v2 - 3) < 2)
    {
      v9 = *(v1 + 24);
      if (v9)
      {
        v10 = *(v9 + 8) == 5;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        if (*(v9 + 16))
        {
          v14 = *(v1 + 16);
          LargestKnownDivisor = mlir::AffineExpr::getLargestKnownDivisor(&v14);
          v12 = *(v9 + 16);
          v7 = LargestKnownDivisor / v12;
          if (!(LargestKnownDivisor % v12))
          {
            goto LABEL_12;
          }
        }
      }
    }

    else if ((v2 - 6) >= 2)
    {
      v7 = *(v1 + 16);
LABEL_12:
      if (v7 >= 0)
      {
        return v7;
      }

      else
      {
        return -v7;
      }
    }

    return 1;
  }

  if (v2)
  {
    v3 = v2 == 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v14 = *(v1 + 16);
    v8 = mlir::AffineExpr::getLargestKnownDivisor(&v14);
    v13 = *(v1 + 24);
    return mlir::AffineExpr::getLargestKnownDivisor(&v13) * v8;
  }

  else
  {
    v14 = *(v1 + 16);
    v4 = mlir::AffineExpr::getLargestKnownDivisor(&v14);
    v13 = *(v1 + 24);
    v5 = mlir::AffineExpr::getLargestKnownDivisor(&v13);

    return std::__gcd<unsigned long long>(v4, v5);
  }
}

uint64_t getAffineDimOrSymbol(unsigned int a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v5 = *a3;
  v6 = mlir::detail::TypeIDResolver<mlir::detail::AffineDimExprStorage,void>::resolveTypeID();
  v7 = *(v5 + 352);
  v14[0] = llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>;
  v14[1] = &v10;
  v8 = 0xBF58476D1CE4E5B9 * ((37 * a2) | ((37 * a1) << 32));
  v12 = &v13;
  v13 = a1 | (a2 << 32);
  v11[0] = &v13;
  v11[1] = v14;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v7, v6, (v8 >> 31) ^ v8, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::AffineDimExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>,mlir::TypeID,unsigned int,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineDimExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>,mlir::TypeID,unsigned int,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

uint64_t mlir::getAffineConstantExpr(mlir *this, void *a2, mlir::MLIRContext *a3)
{
  v7 = a2;
  v4 = *a2;
  v5 = mlir::detail::TypeIDResolver<mlir::detail::AffineConstantExprStorage,void>::resolveTypeID();
  v11[0] = llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>;
  v11[1] = &v7;
  v9 = &v10;
  v10 = this;
  v8[0] = &v10;
  v8[1] = v11;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 352), v5, 37 * this, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::AffineConstantExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>,mlir::TypeID,long long &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineConstantExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>,mlir::TypeID,long long &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::AffineExpr::operator+(void ***a1, mlir *this, mlir::MLIRContext *a3)
{
  AffineConstantExpr = mlir::getAffineConstantExpr(this, **a1, a3);

  return mlir::AffineExpr::operator+(a1, AffineConstantExpr);
}

uint64_t mlir::AffineExpr::operator*(void ***a1, mlir *this, mlir::MLIRContext *a3)
{
  AffineConstantExpr = mlir::getAffineConstantExpr(this, **a1, a3);

  return mlir::AffineExpr::operator*(a1, AffineConstantExpr);
}

uint64_t mlir::AffineExpr::operator-(unint64_t *a1, uint64_t a2, mlir::MLIRContext *a3)
{
  AffineConstantExpr = mlir::getAffineConstantExpr(0xFFFFFFFFFFFFFFFFLL, **a1, a3);

  return mlir::AffineExpr::operator*(a1, AffineConstantExpr, v5);
}

uint64_t mlir::AffineExpr::operator-(unint64_t *a1, void **a2, mlir::MLIRContext *a3)
{
  v9 = a2;
  AffineConstantExpr = mlir::getAffineConstantExpr(0xFFFFFFFFFFFFFFFFLL, *a2, a3);
  v6 = mlir::AffineExpr::operator*(&v9, AffineConstantExpr, v5);
  return mlir::AffineExpr::operator+(a1, v6, v7);
}

uint64_t mlir::AffineExpr::floorDiv(mlir::AffineExpr *this, mlir *a2, mlir::MLIRContext *a3)
{
  AffineConstantExpr = mlir::getAffineConstantExpr(a2, **this, a3);

  return mlir::AffineExpr::floorDiv(this, AffineConstantExpr);
}

uint64_t mlir::AffineExpr::operator%(void ***a1, mlir *this, mlir::MLIRContext *a3)
{
  AffineConstantExpr = mlir::getAffineConstantExpr(this, **a1, a3);

  return mlir::AffineExpr::operator%(a1, AffineConstantExpr);
}

void **mlir::getAffineExprFromFlatForm(uint64_t a1, uint64_t a2, mlir::MLIRContext *a3, int a4, unint64_t *a5, int a6, void *a7)
{
  v10 = a3;
  result = mlir::getAffineConstantExpr(0, a7, a3);
  v38 = result;
  v15 = a4 + v10;
  if (a4 + v10)
  {
    v16 = 0;
    v17 = -v10;
    v18 = v15;
    do
    {
      if (*(a1 + 8 * v16))
      {
        if (v16 >= v10)
        {
          v19 = 7;
          v20 = v17;
        }

        else
        {
          v19 = 6;
          v20 = v16;
        }

        AffineDimOrSymbol = getAffineDimOrSymbol(v19, v20, a7);
        AffineConstantExpr = mlir::getAffineConstantExpr(*(a1 + 8 * v16), *AffineDimOrSymbol, v21);
        v24 = mlir::AffineExpr::operator*(&AffineDimOrSymbol, AffineConstantExpr, v23);
        result = mlir::AffineExpr::operator+(&v38, v24, v25);
        v38 = result;
      }

      ++v16;
      v17 = (v17 + 1);
      --v18;
    }

    while (v18);
  }

  v26 = (a2 - 1);
  if (v15 < v26)
  {
    v27 = v26 - v15;
    v28 = (a1 + 8 * v15);
    do
    {
      v30 = *v28++;
      v29 = v30;
      if (v30)
      {
        v31 = mlir::getAffineConstantExpr(v29, **a5, v14);
        v33 = mlir::AffineExpr::operator*(a5, v31, v32);
        result = mlir::AffineExpr::operator+(&v38, v33, v34);
        v38 = result;
      }

      ++a5;
      --v27;
    }

    while (v27);
  }

  if (*(a1 + 8 * a2 - 8))
  {
    v35 = mlir::getAffineConstantExpr(*(a1 + 8 * a2 - 8), *result, v14);
    return mlir::AffineExpr::operator+(&v38, v35, v36);
  }

  return result;
}

void *std::vector<llvm::SmallVector<long long,8u>>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::SmallVector<long long,8u>>>(result, a2);
    }

    std::vector<llvm::SmallVector<long long,8u>>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

uint64_t mlir::SimpleAffineExprFlattener::visitMulExpr(uint64_t a1, uint64_t a2)
{
  v30[8] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  v28 = v30;
  *v29 = 0x800000000;
  if (*(v4 - 72))
  {
    llvm::SmallVectorImpl<long long>::operator=(&v28, v4 - 80);
    v4 = *(a1 + 16);
  }

  v5 = *(v4 - 80);
  if (v5 != (v4 - 64))
  {
    free(v5);
  }

  *(a1 + 16) = v4 - 80;
  if (*(*(a2 + 24) + 8) == 5)
  {
    v6 = v28;
    v7 = *(v4 - 152);
    if (v7)
    {
      v8 = *(v28 + (*(a1 + 36) + *(a1 + 32) + *(a1 + 40)));
      v9 = *(v4 - 160);
      v10 = 8 * v7;
      do
      {
        *v9++ *= v8;
        v10 -= 8;
      }

      while (v10);
    }

    v11 = 1;
  }

  else
  {
    v12 = (v4 - 160);
    v25 = v27;
    v26 = 0x800000000;
    if (*(v4 - 152))
    {
      llvm::SmallVectorImpl<long long>::operator=(&v25, v4 - 160);
      v13 = *(v4 - 152);
    }

    else
    {
      v13 = 0;
    }

    v14 = *a2;
    AffineExprFromFlatForm = mlir::getAffineExprFromFlatForm(*v12, v13, *(a1 + 32), *(a1 + 36), *(a1 + 48), *(a1 + 56), v14);
    v15 = mlir::getAffineExprFromFlatForm(v28, v29[0], *(a1 + 32), *(a1 + 36), *(a1 + 48), *(a1 + 56), v14);
    v16 = v25;
    v17 = v26;
    v18 = v28;
    v19 = v29[0];
    v21 = mlir::AffineExpr::operator*(&AffineExprFromFlatForm, v15, v20);
    v11 = mlir::SimpleAffineExprFlattener::addLocalVariableSemiAffine(a1, v16, v17, v18, v19, v21, v12);
    if (v25 != v27)
    {
      free(v25);
    }

    v6 = v28;
  }

  if (v6 != v30)
  {
    free(v6);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::SimpleAffineExprFlattener::addLocalVariableSemiAffine(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = 8 * v10;
    v12 = *(a1 + 48);
    while (*v12 != a6)
    {
      ++v12;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v12 = *(a1 + 48);
  }

  v13 = (v12 - v9) >> 3;
  if (v12 != (v9 + 8 * v10) && v13 != -1)
  {
    v15 = *a7;
    v18 = *(a7 + 8);
    if (v18)
    {
      bzero(*a7, 8 * v18);
    }

    v17 = *(a1 + 32) + *(a1 + 36) + v13;
    goto LABEL_19;
  }

LABEL_12:
  if ((*(*a1 + 24))(a1))
  {
    v15 = *a7;
    v16 = *(a7 + 8);
    if (v16)
    {
      bzero(*a7, 8 * v16);
    }

    v17 = *(a1 + 32) + *(a1 + 36) + *(a1 + 40) - 1;
LABEL_19:
    result = 1;
    v15[v17] = 1;
    return result;
  }

  return 0;
}

uint64_t mlir::SimpleAffineExprFlattener::visitAddExpr(uint64_t a1)
{
  v2 = *(a1 + 16);
  v4 = v2 - 80;
  v3 = *(v2 - 80);
  v5 = *(v2 - 72);
  if (v5)
  {
    v6 = *(v2 - 160);
    v7 = *(v2 - 80);
    do
    {
      v8 = *v7++;
      *v6++ += v8;
      --v5;
    }

    while (v5);
  }

  if (v3 != (v2 - 64))
  {
    free(v3);
  }

  *(a1 + 16) = v4;
  return 1;
}

uint64_t mlir::SimpleAffineExprFlattener::visitModExpr(uint64_t a1, uint64_t a2)
{
  v48[8] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  v46 = v48;
  *v47 = 0x800000000;
  if (*(v4 - 72))
  {
    llvm::SmallVectorImpl<long long>::operator=(&v46, v4 - 80);
    v4 = *(a1 + 16);
  }

  v5 = *(v4 - 80);
  if (v5 != (v4 - 64))
  {
    free(v5);
  }

  *(a1 + 16) = v4 - 80;
  v6 = (v4 - 160);
  v7 = *a2;
  if (*(*(a2 + 24) + 8) == 5)
  {
    v8 = *(v46 + (*(a1 + 36) + *(a1 + 32) + *(a1 + 40)));
    if (v8 < 1)
    {
      v14 = 0;
    }

    else
    {
      v9 = *(v4 - 152);
      if (v9)
      {
        v10 = *v6;
        v11 = *(v4 - 152);
        while (1)
        {
          v12 = *v10++;
          if (v12 % v8)
          {
            break;
          }

          if (!--v11)
          {
            goto LABEL_26;
          }
        }

        if (!v11)
        {
LABEL_26:
          bzero(*v6, 8 * v9);
          goto LABEL_46;
        }

        v43 = v45;
        v44 = 0x800000000;
        llvm::SmallVectorImpl<long long>::operator=(&v43, v4 - 160);
        v18 = *(v4 - 152);
        if (v18)
        {
          v19 = *(v4 - 160);
          v20 = 8 * v18;
          v21 = v8;
          do
          {
            v23 = *v19++;
            v22 = v23;
            if (v23 >= 0)
            {
              v24 = v22;
            }

            else
            {
              v24 = -v22;
            }

            v21 = std::__gcd<unsigned long long>(v21, v24);
            v20 -= 8;
          }

          while (v20);
        }

        else
        {
          v21 = v8;
        }

        v25 = v44;
        v26 = v43;
        if (v21 != 1)
        {
          if (v44)
          {
            v27 = 8 * v44;
            v28 = v43;
            do
            {
              *v28++ /= v21;
              v27 -= 8;
            }

            while (v27);
          }

          else
          {
            v25 = 0;
          }
        }

        v29 = v8 / v21;
        AffineExprFromFlatForm = mlir::getAffineExprFromFlatForm(v26, v25, *(a1 + 32), *(a1 + 36), *(a1 + 48), *(a1 + 56), v7);
        AffineConstantExpr = mlir::getAffineConstantExpr(v29, v7, v30);
        v33 = mlir::AffineExpr::floorDiv(&AffineExprFromFlatForm, AffineConstantExpr, v32);
        v34 = *(a1 + 48);
        v35 = *(a1 + 56);
        if (v35)
        {
          v36 = 8 * v35;
          v37 = *(a1 + 48);
          while (*v37 != v33)
          {
            ++v37;
            v36 -= 8;
            if (!v36)
            {
              goto LABEL_43;
            }
          }
        }

        else
        {
          v37 = *(a1 + 48);
        }

        if (v37 == (v34 + 8 * v35) || (v38 = (v37 - v34) >> 3, v38 == -1))
        {
LABEL_43:
          (*(*a1 + 16))(a1, v43, v44, v29, v33);
          *(*v6 + (*(a1 + 32) + *(a1 + 36) + *(a1 + 40) - 1)) = -v8;
        }

        else
        {
          v39 = *(a1 + 32) + v38 + *(a1 + 36);
          *(*v6 + v39) -= v8;
        }

        if (v43 != v45)
        {
          free(v43);
        }
      }

LABEL_46:
      v14 = 1;
    }
  }

  else
  {
    v43 = v45;
    v44 = 0x800000000;
    if (*(v4 - 152))
    {
      llvm::SmallVectorImpl<long long>::operator=(&v43, v4 - 160);
      v13 = *(v4 - 152);
    }

    else
    {
      v13 = 0;
    }

    AffineExprFromFlatForm = mlir::getAffineExprFromFlatForm(*v6, v13, *(a1 + 32), *(a1 + 36), *(a1 + 48), *(a1 + 56), v7);
    v15 = mlir::getAffineExprFromFlatForm(v46, v47[0], *(a1 + 32), *(a1 + 36), *(a1 + 48), *(a1 + 56), v7);
    v17 = mlir::AffineExpr::operator%(&AffineExprFromFlatForm, v15, v16);
    v14 = mlir::SimpleAffineExprFlattener::addLocalVariableSemiAffine(a1, v43, v44, v46, v47[0], v17, v4 - 160);
    if (v43 != v45)
    {
      free(v43);
    }
  }

  if (v46 != v48)
  {
    free(v46);
  }

  v40 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t mlir::SimpleAffineExprFlattener::visitDivExpr(uint64_t a1, uint64_t a2, int a3)
{
  v50[8] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = *(a1 + 16);
  v48 = v50;
  *v49 = 0x800000000;
  if (*(v7 - 72))
  {
    llvm::SmallVectorImpl<long long>::operator=(&v48, v7 - 80);
    v7 = *(a1 + 16);
  }

  v8 = *(v7 - 80);
  if (v8 != (v7 - 64))
  {
    free(v8);
  }

  *(a1 + 16) = v7 - 80;
  if (*(*(a2 + 24) + 8) == 5)
  {
    v9 = *(v48 + (*(a1 + 36) + *(a1 + 32) + *(a1 + 40)));
    if (v9 < 1)
    {
      v18 = 0;
    }

    else
    {
      v10 = *(v7 - 152);
      if (v10)
      {
        v11 = *(v7 - 160);
        v12 = 8 * v10;
        v13 = *(v48 + (*(a1 + 36) + *(a1 + 32) + *(a1 + 40)));
        do
        {
          v15 = *v11++;
          v14 = v15;
          if (v15 >= 0)
          {
            v16 = v14;
          }

          else
          {
            v16 = -v14;
          }

          v13 = std::__gcd<unsigned long long>(v13, v16);
          v12 -= 8;
        }

        while (v12);
      }

      else
      {
        v13 = *(v48 + (*(a1 + 36) + *(a1 + 32) + *(a1 + 40)));
      }

      if (v13 != 1)
      {
        v22 = *(v7 - 152);
        if (v22)
        {
          v23 = *(v7 - 160);
          v24 = 8 * v22;
          do
          {
            *v23++ /= v13;
            v24 -= 8;
          }

          while (v24);
        }
      }

      v25 = v9 / v13;
      if (v25 == 1)
      {
        v18 = 1;
      }

      else
      {
        AffineExprFromFlatForm = mlir::getAffineExprFromFlatForm(*(v7 - 160), *(v7 - 152), *(a1 + 32), *(a1 + 36), *(a1 + 48), *(a1 + 56), v6);
        AffineConstantExpr = mlir::getAffineConstantExpr(v25, v6, v26);
        if (a3)
        {
          v29 = mlir::AffineExpr::ceilDiv(&AffineExprFromFlatForm, AffineConstantExpr, v28);
        }

        else
        {
          v29 = mlir::AffineExpr::floorDiv(&AffineExprFromFlatForm, AffineConstantExpr, v28);
        }

        v30 = v29;
        v31 = *(a1 + 48);
        v32 = *(a1 + 56);
        if (v32)
        {
          v33 = 8 * v32;
          v34 = *(a1 + 48);
          while (*v34 != v29)
          {
            ++v34;
            v33 -= 8;
            if (!v33)
            {
              goto LABEL_44;
            }
          }
        }

        else
        {
          v34 = *(a1 + 48);
        }

        if (v34 == (v31 + 8 * v32) || (v35 = (v34 - v31) >> 3, v35 == -1))
        {
LABEL_44:
          if (a3)
          {
            v45 = v47;
            v46 = 0x800000000;
            if (*(v7 - 152))
            {
              llvm::SmallVectorImpl<long long>::operator=(&v45, v7 - 160);
              v39 = v45;
              v40 = v46;
            }

            else
            {
              v40 = 0;
              v39 = v47;
            }

            *&v39[8 * v40 - 8] = v25 + *&v39[8 * v40 - 8] - 1;
          }

          else
          {
            v45 = v47;
            v46 = 0x800000000;
            if (*(v7 - 152))
            {
              llvm::SmallVectorImpl<long long>::operator=(&v45, v7 - 160);
              v39 = v45;
              v40 = v46;
            }

            else
            {
              v40 = 0;
              v39 = v47;
            }
          }

          (*(*a1 + 16))(a1, v39, v40, v25, v30);
          if (v45 != v47)
          {
            free(v45);
          }

          v36 = *(v7 - 160);
          v41 = *(v7 - 152);
          if (v41)
          {
            bzero(*(v7 - 160), 8 * v41);
          }

          v38 = *(a1 + 32) + *(a1 + 36) + *(a1 + 40) - 1;
        }

        else
        {
          v36 = *(v7 - 160);
          v37 = *(v7 - 152);
          if (v37)
          {
            bzero(*(v7 - 160), 8 * v37);
          }

          v38 = *(a1 + 32) + v35 + *(a1 + 36);
        }

        v18 = 1;
        *(v36 + 8 * v38) = 1;
      }
    }
  }

  else
  {
    v45 = v47;
    v46 = 0x800000000;
    if (*(v7 - 152))
    {
      llvm::SmallVectorImpl<long long>::operator=(&v45, v7 - 160);
      v17 = *(v7 - 152);
    }

    else
    {
      v17 = 0;
    }

    AffineExprFromFlatForm = mlir::getAffineExprFromFlatForm(*(v7 - 160), v17, *(a1 + 32), *(a1 + 36), *(a1 + 48), *(a1 + 56), v6);
    v19 = mlir::getAffineExprFromFlatForm(v48, v49[0], *(a1 + 32), *(a1 + 36), *(a1 + 48), *(a1 + 56), v6);
    if (a3)
    {
      v21 = mlir::AffineExpr::ceilDiv(&AffineExprFromFlatForm, v19, v20);
    }

    else
    {
      v21 = mlir::AffineExpr::floorDiv(&AffineExprFromFlatForm, v19, v20);
    }

    v18 = mlir::SimpleAffineExprFlattener::addLocalVariableSemiAffine(a1, v45, v46, v48, v49[0], v21, v7 - 160);
    if (v45 != v47)
    {
      free(v45);
    }
  }

  if (v48 != v50)
  {
    free(v48);
  }

  v42 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t mlir::SimpleAffineExprFlattener::visitDimExpr(uint64_t a1, uint64_t a2)
{
  v11[32] = *MEMORY[0x277D85DE8];
  v4 = (*(a1 + 32) + *(a1 + 36) + *(a1 + 40) + 1);
  v9 = v11;
  v10 = 0x2000000000;
  llvm::SmallVectorImpl<long long>::assign(&v9, v4, 0);
  v5 = *(a1 + 16);
  if (v5 >= *(a1 + 24))
  {
    v6 = std::vector<llvm::SmallVector<long long,8u>>::__emplace_back_slow_path<llvm::SmallVector<long long,32u>>((a1 + 8), &v9);
  }

  else
  {
    *v5 = v5 + 2;
    v5[1] = 0x800000000;
    if (v10)
    {
      llvm::SmallVectorImpl<long long>::operator=(v5, &v9);
    }

    v6 = (v5 + 10);
  }

  *(a1 + 16) = v6;
  if (v9 != v11)
  {
    free(v9);
    v6 = *(a1 + 16);
  }

  *(*(v6 - 80) + 8 * *(a2 + 16)) = 1;
  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t mlir::SimpleAffineExprFlattener::visitSymbolExpr(uint64_t a1, uint64_t a2)
{
  v11[32] = *MEMORY[0x277D85DE8];
  v4 = (*(a1 + 32) + *(a1 + 36) + *(a1 + 40) + 1);
  v9 = v11;
  v10 = 0x2000000000;
  llvm::SmallVectorImpl<long long>::assign(&v9, v4, 0);
  v5 = *(a1 + 16);
  if (v5 >= *(a1 + 24))
  {
    v6 = std::vector<llvm::SmallVector<long long,8u>>::__emplace_back_slow_path<llvm::SmallVector<long long,32u>>((a1 + 8), &v9);
  }

  else
  {
    *v5 = v5 + 2;
    v5[1] = 0x800000000;
    if (v10)
    {
      llvm::SmallVectorImpl<long long>::operator=(v5, &v9);
    }

    v6 = (v5 + 10);
  }

  *(a1 + 16) = v6;
  if (v9 != v11)
  {
    free(v9);
    v6 = *(a1 + 16);
  }

  *(*(v6 - 80) + 8 * (*(a2 + 16) + *(a1 + 32))) = 1;
  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t mlir::SimpleAffineExprFlattener::visitConstantExpr(uint64_t a1, uint64_t a2)
{
  v11[32] = *MEMORY[0x277D85DE8];
  v4 = (*(a1 + 32) + *(a1 + 36) + *(a1 + 40) + 1);
  v9 = v11;
  v10 = 0x2000000000;
  llvm::SmallVectorImpl<long long>::assign(&v9, v4, 0);
  v5 = *(a1 + 16);
  if (v5 >= *(a1 + 24))
  {
    v6 = std::vector<llvm::SmallVector<long long,8u>>::__emplace_back_slow_path<llvm::SmallVector<long long,32u>>((a1 + 8), &v9);
  }

  else
  {
    *v5 = v5 + 2;
    v5[1] = 0x800000000;
    if (v10)
    {
      llvm::SmallVectorImpl<long long>::operator=(v5, &v9);
    }

    v6 = (v5 + 10);
  }

  *(a1 + 16) = v6;
  if (v9 != v11)
  {
    free(v9);
    v6 = *(a1 + 16);
  }

  *(*(v6 - 80) + 8 * (*(a1 + 36) + *(a1 + 32) + *(a1 + 40))) = *(a2 + 16);
  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

void mlir::SimpleAffineExprFlattener::addLocalFloorDivId(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v7 != v8)
  {
    v9 = v7;
    do
    {
      v10 = *v9;
      v9 += 10;
      v11 = v10 + 8 * (*(a1 + 36) + *(a1 + 32)) + 8 * *(a1 + 40);
      v12 = 0;
      llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(v7, v11, &v12);
      v7 = v9;
    }

    while (v9 != v8);
  }

  llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(a1 + 48, a5);
  ++*(a1 + 40);
}

uint64_t mlir::SimpleAffineExprFlattener::addLocalIdSemiAffine(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v8 != v9)
  {
    v10 = v8;
    do
    {
      v11 = *v10;
      v10 += 10;
      v12 = v11 + 8 * (*(a1 + 36) + *(a1 + 32)) + 8 * *(a1 + 40);
      v14 = 0;
      llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(v8, v12, &v14);
      v8 = v10;
    }

    while (v10 != v9);
  }

  llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(a1 + 48, a6);
  ++*(a1 + 40);
  return 1;
}

uint64_t **mlir::simplifyAffineExpr(uint64_t **a1, mlir::MLIRContext *a2, uint64_t a3)
{
  AffineExprFromFlatForm = a1;
  v135[8] = *MEMORY[0x277D85DE8];
  v111 = a1;
  if ((mlir::AffineExpr::isPureAffine(&v111) & 1) == 0)
  {
    AffineExprFromFlatForm = simplifySemiAffine(AffineExprFromFlatForm, a2, a3);
    v111 = AffineExprFromFlatForm;
  }

  v124 = &unk_286E771A8;
  v125 = 0;
  v126 = 0u;
  v127 = a2;
  v128 = a3;
  v129 = 0;
  *v130 = &v132;
  *v131 = 0x400000000;
  std::vector<llvm::SmallVector<long long,8u>>::reserve(&v125, 8uLL);
  if (mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkPostOrder(&v124, AffineExprFromFlatForm))
  {
    v6 = *(v126 - 80);
    v7 = *(v126 - 72);
    if ((mlir::AffineExpr::isPureAffine(&v111) & 1) != 0 || AffineExprFromFlatForm != mlir::getAffineExprFromFlatForm(v6, v7, a2, a3, *v130, v131[0], *AffineExprFromFlatForm))
    {
      if (mlir::AffineExpr::isPureAffine(&v111))
      {
        AffineExprFromFlatForm = mlir::getAffineExprFromFlatForm(v6, v7, a2, a3, *v130, v131[0], *AffineExprFromFlatForm);
LABEL_90:
        v95 = v126 - 80;
        v94 = *(v126 - 80);
        if (v94 != (v126 - 64))
        {
          free(v94);
        }

        *&v126 = v95;
        goto LABEL_93;
      }

      v105 = v6;
      v9 = *v130;
      v10 = v131[0];
      v109 = *AffineExprFromFlatForm;
      AffineConstantExpr = mlir::getAffineConstantExpr(0, *AffineExprFromFlatForm, v8);
      v119 = AffineConstantExpr;
      v117[0] = 0;
      v117[1] = 0;
      v118 = 0;
      v115[0] = 0;
      v115[1] = 0;
      v116 = 0;
      v133 = v135;
      v134 = 0x800000000;
      v12 = a3 + a2;
      v98 = a3 + a2;
      v99 = a2;
      v104 = v7;
      if (a3 + a2 <= a2)
      {
        v14 = 0;
        v22 = a2;
      }

      else
      {
        v100 = v10;
        v13 = 0;
        v14 = 0;
        v106 = a2;
        if (a2 <= a3)
        {
          v15 = a3;
        }

        else
        {
          v15 = a2;
        }

        v102 = a3;
        v16 = a3;
        v17 = v105 + 8 * a2;
        do
        {
          v18 = *(v17 + 8 * v13);
          if (v18)
          {
            v19 = v14 + 1;
            v20 = v13 + ((v14 + v15) << 32);
            AffineDimOrSymbol = getAffineDimOrSymbol(7u, v13, v109);
            llvm::SmallVectorTemplateBase<std::pair<unsigned int,int>,true>::push_back(&v133, v20);
            v120 = v20;
            v121[0] = v18;
            llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::try_emplace<long long>(&v112, v115, &v120, v121);
            v120 = v20;
            v121[0] = AffineDimOrSymbol;
            llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,mlir::AffineExpr,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,mlir::AffineExpr>>,std::pair<unsigned int,int>,mlir::AffineExpr,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(&v112, v117, &v120, v121);
            v14 = v19;
          }

          ++v13;
        }

        while (v16 != v13);
        v7 = v104;
        v12 = v98;
        v22 = v106;
        LODWORD(a3) = v102;
        v10 = v100;
      }

      v107 = v22;
      v112 = &v114;
      v113 = xmmword_25D0A0580;
      llvm::SmallVectorImpl<BOOL>::assign(&v112, ~(v22 + a3) + v7, 0);
      v23 = v105 + 8 * v12;
      if (v10)
      {
        v24 = 0;
        v25 = v99;
        if (v99 <= a3)
        {
          v25 = a3;
        }

        v101 = v25;
        v26 = 8 * v10;
        v103 = 0xFFFFFFFFLL;
        while (1)
        {
          v27 = *(v23 + 8 * v24);
          if (!v27)
          {
            goto LABEL_32;
          }

          v28 = v9[v24];
          v29 = *(v28 + 16);
          v30 = *(v29 + 8);
          if ((v30 & 0xFFFFFFFE) != 6)
          {
            goto LABEL_32;
          }

          v31 = *(v28 + 24);
          v32 = *(v31 + 8);
          if ((v32 - 6) < 2)
          {
            break;
          }

          if (v32 == 5)
          {
            v33 = *(v29 + 16);
            if (v30 == 6)
            {
              v35 = v33 | (v103 << 32);
              llvm::SmallVectorTemplateBase<std::pair<unsigned int,int>,true>::push_back(&v133, v35);
              v122 = v35;
              v123 = v27;
              llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::try_emplace<long long>(&v120, v115, &v122, &v123);
              v122 = v35;
              v123 = v28;
              llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,mlir::AffineExpr,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,mlir::AffineExpr>>,std::pair<unsigned int,int>,mlir::AffineExpr,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(&v120, v117, &v122, &v123);
              v103 = (v103 - 1);
              goto LABEL_31;
            }

LABEL_30:
            v36 = v33 | ((v14 + v101) << 32);
            llvm::SmallVectorTemplateBase<std::pair<unsigned int,int>,true>::push_back(&v133, v36);
            v122 = v36;
            v123 = v27;
            llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::try_emplace<long long>(&v120, v115, &v122, &v123);
            v122 = v36;
            v123 = v28;
            llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,mlir::AffineExpr,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,mlir::AffineExpr>>,std::pair<unsigned int,int>,mlir::AffineExpr,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(&v120, v117, &v122, &v123);
            ++v14;
            goto LABEL_31;
          }

LABEL_32:
          ++v24;
          v26 -= 8;
          if (!v26)
          {
            goto LABEL_35;
          }
        }

        v33 = *(v29 + 16);
        if (v30 == 6)
        {
          v34 = v33 | (*(v31 + 16) << 32);
          llvm::SmallVectorTemplateBase<std::pair<unsigned int,int>,true>::push_back(&v133, v34);
          v122 = v34;
          v123 = v27;
          llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::try_emplace<long long>(&v120, v115, &v122, &v123);
          v122 = v34;
          v123 = v28;
          llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,mlir::AffineExpr,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,mlir::AffineExpr>>,std::pair<unsigned int,int>,mlir::AffineExpr,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(&v120, v117, &v122, &v123);
LABEL_31:
          *(v112 + v24) = 1;
          goto LABEL_32;
        }

        goto LABEL_30;
      }

      v103 = 0xFFFFFFFFLL;
LABEL_35:
      v38 = v105;
      v37 = v107;
      if (v99)
      {
        v39 = 0;
        v40 = v103;
        do
        {
          v41 = *(v105 + 8 * v39);
          if (v41)
          {
            v42 = (v40 - 1);
            v43 = v39 + (v40 << 32);
            v44 = getAffineDimOrSymbol(6u, v39, v109);
            llvm::SmallVectorTemplateBase<std::pair<unsigned int,int>,true>::push_back(&v133, v43);
            v122 = v43;
            v123 = v41;
            llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::try_emplace<long long>(&v120, v115, &v122, &v123);
            v122 = v43;
            v123 = v44;
            v37 = v107;
            llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,mlir::AffineExpr,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,mlir::AffineExpr>>,std::pair<unsigned int,int>,mlir::AffineExpr,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(&v120, v117, &v122, &v123);
            v40 = v42;
          }

          ++v39;
        }

        while (v37 != v39);
      }

      v45 = 126 - 2 * __clz(v134);
      if (v134)
      {
        v46 = v45;
      }

      else
      {
        v46 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,false>(v133, &v133[2 * v134], v46, 1);
      if (!v134)
      {
LABEL_77:
        v83 = (v104 - 1);
        if (v98 < v83)
        {
          v84 = 0;
          v85 = v83 - v98;
          do
          {
            v86 = *(v23 + 8 * v84);
            if (v86 && (*(v112 + v84) & 1) == 0)
            {
              v87 = mlir::getAffineConstantExpr(v86, **v9, v47);
              v89 = mlir::AffineExpr::operator*(v9, v87, v88);
              AffineConstantExpr = mlir::AffineExpr::operator+(&v119, v89, v90);
              v119 = AffineConstantExpr;
            }

            ++v84;
            ++v9;
          }

          while (v85 != v84);
        }

        v91 = *(v38 + 8 * v104 - 8);
        if (v91)
        {
          v92 = mlir::getAffineConstantExpr(v91, *AffineConstantExpr, v47);
          v119 = mlir::AffineExpr::operator+(&v119, v92, v93);
        }

        if (v112 != &v114)
        {
          free(v112);
        }

        if (v133 != v135)
        {
          free(v133);
        }

        MEMORY[0x25F891030](v115[0], 8);
        MEMORY[0x25F891030](v117[0], 8);
        AffineExprFromFlatForm = v119;
        goto LABEL_90;
      }

      v48 = v133;
      v49 = &v133[2 * v134];
      v50 = v117[0];
      v51 = v118;
      v52 = v115[0];
      v53 = v116;
      v110 = v118 - 1;
      v108 = v116 - 1;
      while (1)
      {
        v54 = *v48;
        v55 = v48[1];
        if (v51)
        {
          v56 = 0xBF58476D1CE4E5B9 * ((37 * v55) | ((37 * v54) << 32));
          v57 = v110 & ((v56 >> 31) ^ v56);
          v58 = (v50 + 16 * v57);
          v60 = *v58;
          v59 = v58[1];
          if (v60 == v54 && v59 == v55)
          {
LABEL_51:
            v62 = *(v50 + 16 * v57 + 8);
            goto LABEL_60;
          }

          v63 = 1;
          while (v60 != -1 || v59 != 0x7FFFFFFF)
          {
            v64 = v57 + v63++;
            v57 = v64 & v110;
            v65 = (v50 + 16 * v57);
            v60 = *v65;
            v59 = v65[1];
            if (v60 == v54 && v59 == v55)
            {
              goto LABEL_51;
            }
          }
        }

        v62 = 0;
LABEL_60:
        v120 = v62;
        if (!v53)
        {
          goto LABEL_74;
        }

        v67 = 0xBF58476D1CE4E5B9 * ((37 * v55) | ((37 * v54) << 32));
        v68 = v108 & ((v67 >> 31) ^ v67);
        v69 = (v52 + 16 * v68);
        v71 = *v69;
        v70 = v69[1];
        if (v71 != v54 || v70 != v55)
        {
          v74 = 1;
          while (v71 != -1 || v70 != 0x7FFFFFFF)
          {
            v75 = v68 + v74++;
            v68 = v75 & v108;
            v76 = (v52 + 16 * v68);
            v71 = *v76;
            v70 = v76[1];
            if (v71 == v54 && v70 == v55)
            {
              goto LABEL_66;
            }
          }

LABEL_74:
          v73 = 0;
          goto LABEL_75;
        }

LABEL_66:
        v73 = *(v52 + 16 * v68 + 8);
LABEL_75:
        v78 = mlir::getAffineConstantExpr(v73, *v62, v47);
        v80 = mlir::AffineExpr::operator*(&v120, v78, v79);
        v82 = mlir::AffineExpr::operator+(&v119, v80, v81);
        v119 = v82;
        v48 += 2;
        if (v48 == v49)
        {
          AffineConstantExpr = v82;
          v38 = v105;
          goto LABEL_77;
        }
      }
    }
  }

LABEL_93:
  mlir::SimpleAffineExprFlattener::~SimpleAffineExprFlattener(&v124);
  v96 = *MEMORY[0x277D85DE8];
  return AffineExprFromFlatForm;
}

uint64_t **simplifySemiAffine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40[6] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v6 = a1;
  if (((1 << v3) & 0x1C) == 0)
  {
    if (((1 << v3) & 0xE0) != 0)
    {
      goto LABEL_55;
    }

    v7 = simplifySemiAffine(*(a1 + 16), a2, a3);
    v8 = simplifySemiAffine(*(v6 + 24), a2, a3);
    v9 = *MEMORY[0x277D85DE8];

    return mlir::getAffineBinaryOpExpr(v3, v7, v8);
  }

  v11 = simplifySemiAffine(*(a1 + 16), a2, a3);
  v12 = simplifySemiAffine(*(v6 + 24), a2, a3);
  v38 = v40;
  v39 = 0x600000000;
  getSummandExprs(v11, &v38);
  v14 = v39;
  if (!v39)
  {
LABEL_41:
    v16 = 0;
    goto LABEL_42;
  }

  v15 = 0;
  v16 = 1;
  v36 = v12;
  while (1)
  {
    v17 = *(v38 + v15);
    if (v17)
    {
      v18 = *(v17 + 8) == 1;
    }

    else
    {
      v18 = 0;
    }

    if (!v18)
    {
      goto LABEL_40;
    }

    v19 = *(v17 + 16);
    v20 = *(v19 + 8);
    v21 = v19 && v20 == 5;
    if (v21 && *(v19 + 16) == -1)
    {
      v19 = *(v17 + 24);
      v20 = *(v19 + 8);
    }

    else
    {
      v22 = *(v17 + 24);
      if (v22)
      {
        v23 = *(v22 + 8) == 5;
      }

      else
      {
        v23 = 0;
      }

      if (!v23 || *(v22 + 16) != -1)
      {
        goto LABEL_40;
      }
    }

    if (v20 == 2 && *(v19 + 24) == v12)
    {
      break;
    }

LABEL_40:
    v16 = ++v15 < v14;
    if (v15 == v14)
    {
      goto LABEL_41;
    }
  }

  v24 = v11;
  AffineConstantExpr = mlir::getAffineConstantExpr(0, *v11, v13);
  v27 = 0;
  v37 = AffineConstantExpr;
  do
  {
    if (v15 != v27)
    {
      v37 = mlir::AffineExpr::operator+(&v37, *(v38 + v27), v26);
    }

    ++v27;
  }

  while (v14 != v27);
  v37 = mlir::AffineExpr::operator-(&v37, *(v19 + 16), v26);
  v28 = mlir::simplifyAffineExpr(v37, a2, a3);
  if (v28)
  {
    v29 = *(v28 + 8) == 5;
  }

  else
  {
    v29 = 0;
  }

  if (!v29 || *(v28 + 16))
  {
    v11 = v24;
    v12 = v36;
    goto LABEL_40;
  }

  v11 = v24;
  v12 = v36;
LABEL_42:
  if (v38 != v40)
  {
    free(v38);
  }

  if (v16)
  {
LABEL_45:
    AffineBinaryOpExpr = mlir::getAffineConstantExpr(0, *v6, v13);
    goto LABEL_54;
  }

  v31 = simplifySemiAffine(*(v6 + 24), a2, a3);
  if (!v31 || *(v31 + 8) != 7)
  {
    v34 = *(v6 + 8);
LABEL_53:
    AffineBinaryOpExpr = mlir::getAffineBinaryOpExpr(v34, v11, v12);
    goto LABEL_54;
  }

  v32 = *(v31 + 16);
  v33 = *(v6 + 8);
  if ((canSimplifyDivisionBySymbol(*(v6 + 16), v32, v33, 0) & 1) == 0)
  {
    v34 = v33;
    goto LABEL_53;
  }

  if (v33 == 2)
  {
    goto LABEL_45;
  }

  AffineBinaryOpExpr = symbolicDivide(v11, v32, v33);
LABEL_54:
  v6 = AffineBinaryOpExpr;
LABEL_55:
  v35 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkPostOrder(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 > 3)
  {
    if (v4 > 5)
    {
      if (v4 == 6)
      {
        mlir::SimpleAffineExprFlattener::visitDimExpr(a1, a2);
      }

      else
      {
        mlir::SimpleAffineExprFlattener::visitSymbolExpr(a1, a2);
      }

      return 1;
    }

    if (v4 != 4)
    {
      mlir::SimpleAffineExprFlattener::visitConstantExpr(a1, a2);
      return 1;
    }

    if ((mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkOperandsPostOrder(a1, a2) & 1) == 0)
    {
      return 0;
    }

    v5 = a1;
    v6 = a2;
    v7 = 1;
    goto LABEL_24;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if ((mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkOperandsPostOrder(a1, a2) & 1) == 0)
      {
        return 0;
      }

      return mlir::SimpleAffineExprFlattener::visitModExpr(a1, a2);
    }

    if ((mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkOperandsPostOrder(a1, a2) & 1) == 0)
    {
      return 0;
    }

    v5 = a1;
    v6 = a2;
    v7 = 0;
LABEL_24:

    return mlir::SimpleAffineExprFlattener::visitDivExpr(v5, v6, v7);
  }

  if (!v4)
  {
    if (mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkOperandsPostOrder(a1, a2))
    {
      mlir::SimpleAffineExprFlattener::visitAddExpr(a1);
      return 1;
    }

    return 0;
  }

  if ((mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkOperandsPostOrder(a1, a2) & 1) == 0)
  {
    return 0;
  }

  return mlir::SimpleAffineExprFlattener::visitMulExpr(a1, a2);
}

unint64_t mlir::getBoundForAffineExpr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58[4] = *MEMORY[0x277D85DE8];
  if (!a1 || (v14 = *(a1 + 8), v14 > 4))
  {
LABEL_30:
    v50 = &unk_286E771A8;
    v51 = 0;
    v52 = 0u;
    v53 = a2;
    v54 = a3;
    v55 = 0;
    v56 = v58;
    v57 = 0x400000000;
    std::vector<llvm::SmallVector<long long,8u>>::reserve(&v51, 8uLL);
    if ((mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkPostOrder(&v50, a1) & 1) == 0 || v55)
    {
LABEL_32:
      LOBYTE(v17) = 0;
      v19 = 0;
LABEL_33:
      mlir::SimpleAffineExprFlattener::~SimpleAffineExprFlattener(&v50);
      goto LABEL_34;
    }

    v37 = (a3 + a2);
    if (!(a3 + a2))
    {
      v39 = 0;
LABEL_55:
      v17 = *(*(v52 - 80) + 8 * *(v52 - 72) - 8) + v39;
      v19 = v17 & 0xFFFFFFFFFFFFFF00;
      goto LABEL_33;
    }

    v38 = 0;
    v39 = 0;
    if (a8)
    {
      v40 = a4;
    }

    else
    {
      v40 = a6;
    }

    if (a8)
    {
      v41 = a6;
    }

    else
    {
      v41 = a4;
    }

    v42 = (v41 + 8);
    v43 = *(v52 - 80);
    while (1)
    {
      v45 = *v43++;
      v44 = v45;
      if (v45 < 1)
      {
        if ((v44 & 0x8000000000000000) == 0)
        {
          goto LABEL_48;
        }

        v46 = v40;
        if (*(v40 + 8) != 1)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if ((*v42 & 1) == 0)
        {
          goto LABEL_32;
        }

        v46 = (v41 + 16 * v38);
      }

      v39 += *v46 * v44;
LABEL_48:
      ++v38;
      v40 += 16;
      v42 += 16;
      if (!--v37)
      {
        goto LABEL_55;
      }
    }
  }

  if (v14 == 2)
  {
    v28 = *(a1 + 24);
    if (v28)
    {
      if (*(v28 + 8) == 5)
      {
        v29 = *(v28 + 16);
        if (v29 >= 1)
        {
          BoundForAffineExpr = mlir::getBoundForAffineExpr(*(a1 + 16), a2, a3, a4, a5, a6, a7, 0);
          v31 = v30;
          v32 = mlir::getBoundForAffineExpr(*(a1 + 16), a2, a3, a4, a5, a6, a7, a8);
          if ((v33 & 1) != 0 && (v31 & 1) != 0 && (!BoundForAffineExpr ? (v34 = 0) : (BoundForAffineExpr ^ v29) < 0 ? (v34 = (BoundForAffineExpr + 1) / v29 - 1) : (v34 = BoundForAffineExpr / v29), !v32 ? (v47 = 0) : (v32 ^ v29) < 0 ? (v47 = (v32 + 1) / v29 - 1) : (v47 = v32 / v29), v34 == v47))
          {
            v48 = BoundForAffineExpr;
            if (a8)
            {
              v48 = v32;
            }

            v17 = (v29 & ((v48 % v29) >> 63)) + v48 % v29;
          }

          else if (a8)
          {
            v17 = v29 - 1;
          }

          else
          {
            v17 = 0;
          }

          goto LABEL_72;
        }
      }
    }

    goto LABEL_30;
  }

  if (v14 != 4)
  {
    if (v14 == 3)
    {
      LOBYTE(v17) = 0;
      v18 = *(a1 + 24);
      if (v18)
      {
        v19 = 0;
        if (*(v18 + 8) == 5)
        {
          if (*(v18 + 16) >= 1)
          {
            v20 = *(a1 + 24);
            v21 = mlir::getBoundForAffineExpr(*(a1 + 16), a2, a3, a4, a5, a6, a7, a8);
            if (v22)
            {
              if (v21)
              {
                v23 = *(v20 + 16);
                if ((v23 ^ v21) < 0)
                {
                  v17 = (((v23 >> 63) | 1) + v21) / v23 - 1;
LABEL_72:
                  v19 = v17 & 0xFFFFFFFFFFFFFF00;
                  goto LABEL_34;
                }

LABEL_57:
                v17 = v21 / v23;
                goto LABEL_72;
              }

              goto LABEL_56;
            }
          }

LABEL_52:
          LOBYTE(v17) = 0;
          v19 = 0;
          goto LABEL_34;
        }

        goto LABEL_34;
      }

LABEL_53:
      v19 = 0;
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  LOBYTE(v17) = 0;
  v24 = *(a1 + 24);
  if (!v24)
  {
    goto LABEL_53;
  }

  v19 = 0;
  if (*(v24 + 8) == 5)
  {
    if (*(v24 + 16) >= 1)
    {
      v25 = *(a1 + 24);
      v21 = mlir::getBoundForAffineExpr(*(a1 + 16), a2, a3, a4, a5, a6, a7, a8);
      if (v26)
      {
        if (v21)
        {
          v23 = *(v25 + 16);
          if (((v23 ^ v21) & 0x8000000000000000) == 0)
          {
            v27 = v21 - 1;
            if (v23 < 0)
            {
              v27 = v21 + 1;
            }

            v17 = v27 / v23 + 1;
            goto LABEL_72;
          }

          goto LABEL_57;
        }

LABEL_56:
        v17 = 0;
        goto LABEL_72;
      }
    }

    goto LABEL_52;
  }

LABEL_34:
  v35 = *MEMORY[0x277D85DE8];
  return v19 | v17;
}

void mlir::SimpleAffineExprFlattener::~SimpleAffineExprFlattener(mlir::SimpleAffineExprFlattener *this)
{
  mlir::SimpleAffineExprFlattener::~SimpleAffineExprFlattener(this);

  JUMPOUT(0x25F891040);
}

{
  *this = &unk_286E771A8;
  v2 = *(this + 6);
  if (v2 != this + 64)
  {
    free(v2);
  }

  v3 = (this + 8);
  std::vector<llvm::SmallVector<long long,8u>>::__destroy_vector::operator()[abi:nn200100](&v3);
}

unint64_t std::__gcd<unsigned long long>(unint64_t result, unint64_t a2)
{
  v2 = result;
  v3 = result > a2;
  if (result >= a2)
  {
    result = a2;
  }

  if (!v3)
  {
    v2 = a2;
  }

  if (!result)
  {
    return v2;
  }

  v4 = v2 % result;
  if (v4)
  {
    v5 = v4 >> __clz(__rbit64(v4));
    v6 = result;
    do
    {
      v7 = v6 >> __clz(__rbit64(v6));
      v6 = v7 - v5;
      if (v5 > v7)
      {
        v6 = v5 - v7;
      }

      if (v5 >= v7)
      {
        v5 = v7;
      }
    }

    while (v6);
    return v5 << __clz(__rbit64(v4 | result));
  }

  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineDimExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>,mlir::TypeID,unsigned int,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  v5 = v3[1];
  *(v4 + 8) = *v3;
  *(v4 + 16) = v5;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), v4);
  }

  return v4;
}

unint64_t llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(unint64_t *a1, uint64_t a2, char a3)
{
  a1[10] += a2;
  v3 = ((1 << a3) + *a1 - 1) & -(1 << a3);
  v4 = v3 + a2;
  if (*a1)
  {
    v5 = v4 > a1[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, a2, a2, a3);
  }

  *a1 = v4;
  return v3;
}

unint64_t llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = 1 << a4;
  v6 = (1 << a4) - 1;
  v7 = v6 + a3;
  if ((v6 + a3) <= 0x1000)
  {
    llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::StartNewSlab(a1);
    result = (v6 + *a1) & -v5;
    *a1 = result + a3;
  }

  else
  {
    buffer = llvm::allocate_buffer((v6 + a3), 8uLL);
    llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back((a1 + 8), buffer, v7);
    return (buffer + v6) & -v5;
  }

  return result;
}

void llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(uint64_t a1, uint64_t a2, uint64_t a3)
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

void llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::StartNewSlab(uint64_t a1)
{
  v2 = *(a1 + 24) >> 7;
  if (v2 >= 0x1E)
  {
    LOBYTE(v2) = 30;
  }

  v3 = 4096 << v2;
  buffer = llvm::allocate_buffer((4096 << v2), 8uLL);
  llvm::SmallVectorTemplateBase<void *,true>::push_back(a1 + 16, buffer);
  *a1 = buffer;
  *(a1 + 8) = &buffer[v3];
}

void llvm::SmallVectorTemplateBase<void *,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

uint64_t mlir::detail::TypeIDResolver<mlir::detail::AffineDimExprStorage,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::detail::AffineDimExprStorage>();
      mlir::detail::TypeIDResolver<mlir::detail::AffineDimExprStorage,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1352);
}

uint64_t llvm::getTypeName<mlir::detail::AffineDimExprStorage>()
{
  {
    llvm::getTypeName<mlir::detail::AffineDimExprStorage>(void)::Name = llvm::detail::getTypeNameImpl<mlir::detail::AffineDimExprStorage>();
    unk_27FC17560 = v1;
  }

  return llvm::getTypeName<mlir::detail::AffineDimExprStorage>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::detail::AffineDimExprStorage>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::AffineDimExprStorage]";
  v6 = 96;
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

uint64_t canSimplifyDivisionBySymbol(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  while (1)
  {
    while (1)
    {
      v8 = *(a1 + 8);
      if (v8 > 0)
      {
        break;
      }

      v11 = canSimplifyDivisionBySymbol(*(a1 + 16), a2, a3, 0);
      a4 = 0;
      result = 0;
      if (!v11)
      {
        return result;
      }

LABEL_7:
      a1 = *(a1 + 24);
    }

    if (v8 > 2)
    {
      break;
    }

    if (v8 == 1)
    {
      a4 = 1;
      v9 = canSimplifyDivisionBySymbol(*(a1 + 16), a2, a3, 1);
      result = 1;
      if (v9)
      {
        return result;
      }

      goto LABEL_7;
    }

    a3 = 2;
    result = canSimplifyDivisionBySymbol(*(a1 + 16), a2, 2, 0);
    if (!result)
    {
      return result;
    }

    v12 = 24;
LABEL_14:
    a4 = 0;
    a1 = *(a1 + v12);
  }

  if (v8 <= 5)
  {
    if ((v8 - 3) >= 2)
    {
      return *(a1 + 16) == 0;
    }

    if (a4 & 1 | (v8 != a3))
    {
      return 0;
    }

    v12 = 16;
    goto LABEL_14;
  }

  if (v8 == 6)
  {
    return 0;
  }

  return *(a1 + 16) == a2;
}

uint64_t **symbolicDivide(uint64_t a1, uint64_t a2, mlir::MLIRContext *a3)
{
  v5 = *(a1 + 8);
  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v10 = *(a1 + 16);
        if (canSimplifyDivisionBySymbol(v10, a2, a3, 0))
        {
          v21 = symbolicDivide(v10, a2, a3);
          v12 = *(a1 + 24);
        }

        else
        {
          v21 = v10;
          v12 = symbolicDivide(*(a1 + 24), a2, a3);
        }

        return mlir::AffineExpr::operator*(&v21, v12, v11);
      }

      else
      {
        v18 = symbolicDivide(*(a1 + 16), a2, 2);
        v19 = symbolicDivide(*(a1 + 24), a2, *(a1 + 8));
        v21 = v18;
        return mlir::AffineExpr::operator%(&v21, v19, v20);
      }
    }

    else
    {
      v15 = symbolicDivide(*(a1 + 16), a2, a3);
      v16 = symbolicDivide(*(a1 + 24), a2, a3);
      v21 = v15;
      return mlir::AffineExpr::operator+(&v21, v16, v17);
    }
  }

  else
  {
    if (v5 > 5)
    {
      if (v5 == 6)
      {
        return 0;
      }

      v13 = *a1;
      v14 = 1;
    }

    else
    {
      if ((v5 - 3) < 2)
      {
        v6 = symbolicDivide(*(a1 + 16), a2, v5);
        v7 = *(a1 + 24);

        return mlir::getAffineBinaryOpExpr(v5, v6, v7);
      }

      if (*(a1 + 16))
      {
        return 0;
      }

      v13 = *a1;
      v14 = 0;
    }

    return mlir::getAffineConstantExpr(v14, v13, a3);
  }
}

void getSummandExprs(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1 && !*(a1 + 8))
  {
    do
    {
      getSummandExprs(*(v3 + 16), a2);
      v3 = *(v3 + 24);
      if (v3)
      {
        v4 = *(v3 + 8) == 0;
      }

      else
      {
        v4 = 0;
      }
    }

    while (v4);
  }

  llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(a2, v3);
}

void llvm::SmallVectorTemplateBase<std::pair<unsigned int,int>,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::try_emplace<long long>(uint64_t a1, uint64_t a2, int *a3, void *a4)
{
  v15 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::LookupBucketFor<std::pair<unsigned int,int>>(*a2, *(a2 + 16), *a3, a3[1], &v15);
  v9 = v15;
  v10 = *(a2 + 16);
  if (result)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v16 = v15;
  v12 = *(a2 + 8);
  if (4 * v12 + 4 >= 3 * v10)
  {
    v10 *= 2;
    goto LABEL_13;
  }

  if (v10 + ~v12 - *(a2 + 12) <= v10 >> 3)
  {
LABEL_13:
    llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::grow(a2, v10);
    result = llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::LookupBucketFor<std::pair<unsigned int,int>>(*a2, *(a2 + 16), *a3, a3[1], &v16);
    v12 = *(a2 + 8);
    v9 = v16;
  }

  *(a2 + 8) = v12 + 1;
  if (*v9 != -1 || *(v9 + 4) != 0x7FFFFFFF)
  {
    --*(a2 + 12);
  }

  *v9 = *a3;
  *(v9 + 4) = a3[1];
  *(v9 + 8) = *a4;
  v10 = *(a2 + 16);
  v11 = 1;
LABEL_11:
  v14 = *a2 + 16 * v10;
  *a1 = v9;
  *(a1 + 8) = v14;
  *(a1 + 16) = v11;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::LookupBucketFor<std::pair<unsigned int,int>>(uint64_t a1, int a2, int a3, int a4, void *a5)
{
  if (a2)
  {
    v5 = 0xBF58476D1CE4E5B9 * ((37 * a4) | ((37 * a3) << 32));
    v6 = a2 - 1;
    v7 = (a2 - 1) & ((v5 >> 31) ^ v5);
    v8 = (a1 + 16 * v7);
    v9 = *v8;
    v10 = v8[1];
    if (*v8 == a3 && v10 == a4)
    {
      v12 = 1;
    }

    else
    {
      v14 = 0;
      v15 = 1;
      while (v9 != -1 || v10 != 0x7FFFFFFF)
      {
        if (v14)
        {
          v16 = 0;
        }

        else
        {
          v16 = v10 == 0x80000000;
        }

        if (v16 && v9 == -2)
        {
          v14 = v8;
        }

        v18 = v7 + v15++;
        v7 = v18 & v6;
        v8 = (a1 + 16 * (v18 & v6));
        v9 = *v8;
        v10 = v8[1];
        v12 = 1;
        if (*v8 == a3 && v10 == a4)
        {
          goto LABEL_9;
        }
      }

      v12 = 0;
      if (v14)
      {
        v8 = v14;
      }
    }
  }

  else
  {
    v8 = 0;
    v12 = 0;
  }

LABEL_9:
  *a5 = v8;
  return v12;
}

char *llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::grow(uint64_t a1, int a2)
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
          *(v16 - 2) = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v17.i8[4])
        {
          *v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4 + 4;
      do
      {
        v20 = *(v19 - 4);
        v21 = *v19;
        if ((v20 != -1 || v21 != 0x7FFFFFFF) && (v20 != -2 || v21 != 0x80000000))
        {
          v33 = 0;
          llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::LookupBucketFor<std::pair<unsigned int,int>>(*a1, *(a1 + 16), v20, v21, &v33);
          v24 = v33;
          *v33 = *(v19 - 4);
          v24[1] = *v19;
          *(v24 + 1) = *(v19 + 4);
          ++*(a1 + 8);
        }

        v19 += 16;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = 0;
    v27 = v25 + 0xFFFFFFFFFFFFFFFLL;
    v28 = v27 & 0xFFFFFFFFFFFFFFFLL;
    v29 = (v27 & 0xFFFFFFFFFFFFFFFLL) - (v27 & 1) + 2;
    v30 = vdupq_n_s64(v28);
    v31 = result + 16;
    do
    {
      v32 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v26), xmmword_25D0A0500)));
      if (v32.i8[0])
      {
        *(v31 - 2) = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v32.i8[4])
      {
        *v31 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v26 += 2;
      v31 += 4;
    }

    while (v29 != v26);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,mlir::AffineExpr,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,mlir::AffineExpr>>,std::pair<unsigned int,int>,mlir::AffineExpr,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(uint64_t a1, uint64_t a2, int *a3, void *a4)
{
  v15 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,mlir::AffineExpr,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,mlir::AffineExpr>>,std::pair<unsigned int,int>,mlir::AffineExpr,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,mlir::AffineExpr>>::LookupBucketFor<std::pair<unsigned int,int>>(*a2, *(a2 + 16), *a3, a3[1], &v15);
  v9 = v15;
  v10 = *(a2 + 16);
  if (result)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v16 = v15;
  v12 = *(a2 + 8);
  if (4 * v12 + 4 >= 3 * v10)
  {
    v10 *= 2;
    goto LABEL_13;
  }

  if (v10 + ~v12 - *(a2 + 12) <= v10 >> 3)
  {
LABEL_13:
    llvm::DenseMap<std::pair<unsigned int,int>,mlir::AffineExpr,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,mlir::AffineExpr>>::grow(a2, v10);
    result = llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,mlir::AffineExpr,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,mlir::AffineExpr>>,std::pair<unsigned int,int>,mlir::AffineExpr,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,mlir::AffineExpr>>::LookupBucketFor<std::pair<unsigned int,int>>(*a2, *(a2 + 16), *a3, a3[1], &v16);
    v12 = *(a2 + 8);
    v9 = v16;
  }

  *(a2 + 8) = v12 + 1;
  if (*v9 != -1 || *(v9 + 4) != 0x7FFFFFFF)
  {
    --*(a2 + 12);
  }

  *v9 = *a3;
  *(v9 + 4) = a3[1];
  *(v9 + 8) = *a4;
  v10 = *(a2 + 16);
  v11 = 1;
LABEL_11:
  v14 = *a2 + 16 * v10;
  *a1 = v9;
  *(a1 + 8) = v14;
  *(a1 + 16) = v11;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,mlir::AffineExpr,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,mlir::AffineExpr>>,std::pair<unsigned int,int>,mlir::AffineExpr,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,mlir::AffineExpr>>::LookupBucketFor<std::pair<unsigned int,int>>(uint64_t a1, int a2, int a3, int a4, void *a5)
{
  if (a2)
  {
    v5 = 0xBF58476D1CE4E5B9 * ((37 * a4) | ((37 * a3) << 32));
    v6 = a2 - 1;
    v7 = (a2 - 1) & ((v5 >> 31) ^ v5);
    v8 = (a1 + 16 * v7);
    v9 = *v8;
    v10 = v8[1];
    if (*v8 == a3 && v10 == a4)
    {
      v12 = 1;
    }

    else
    {
      v14 = 0;
      v15 = 1;
      while (v9 != -1 || v10 != 0x7FFFFFFF)
      {
        if (v14)
        {
          v16 = 0;
        }

        else
        {
          v16 = v10 == 0x80000000;
        }

        if (v16 && v9 == -2)
        {
          v14 = v8;
        }

        v18 = v7 + v15++;
        v7 = v18 & v6;
        v8 = (a1 + 16 * (v18 & v6));
        v9 = *v8;
        v10 = v8[1];
        v12 = 1;
        if (*v8 == a3 && v10 == a4)
        {
          goto LABEL_9;
        }
      }

      v12 = 0;
      if (v14)
      {
        v8 = v14;
      }
    }
  }

  else
  {
    v8 = 0;
    v12 = 0;
  }

LABEL_9:
  *a5 = v8;
  return v12;
}

char *llvm::DenseMap<std::pair<unsigned int,int>,mlir::AffineExpr,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,mlir::AffineExpr>>::grow(uint64_t a1, int a2)
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
          *(v16 - 2) = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v17.i8[4])
        {
          *v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4 + 4;
      do
      {
        v20 = *(v19 - 4);
        v21 = *v19;
        if ((v20 != -1 || v21 != 0x7FFFFFFF) && (v20 != -2 || v21 != 0x80000000))
        {
          v33 = 0;
          llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,mlir::AffineExpr,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,mlir::AffineExpr>>,std::pair<unsigned int,int>,mlir::AffineExpr,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,mlir::AffineExpr>>::LookupBucketFor<std::pair<unsigned int,int>>(*a1, *(a1 + 16), v20, v21, &v33);
          v24 = v33;
          *v33 = *(v19 - 4);
          v24[1] = *v19;
          *(v24 + 1) = *(v19 + 4);
          ++*(a1 + 8);
        }

        v19 += 16;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = 0;
    v27 = v25 + 0xFFFFFFFFFFFFFFFLL;
    v28 = v27 & 0xFFFFFFFFFFFFFFFLL;
    v29 = (v27 & 0xFFFFFFFFFFFFFFFLL) - (v27 & 1) + 2;
    v30 = vdupq_n_s64(v28);
    v31 = result + 16;
    do
    {
      v32 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v26), xmmword_25D0A0500)));
      if (v32.i8[0])
      {
        *(v31 - 2) = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v32.i8[4])
      {
        *v31 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v26 += 2;
      v31 += 4;
    }

    while (v29 != v26);
  }

  return result;
}

void *llvm::SmallVectorImpl<BOOL>::assign(void *result, unint64_t a2, int __c)
{
  v5 = result;
  if (result[2] >= a2)
  {
    v7 = *result;
    v6 = result + 1;
    v8 = result[1];
    if (v8 >= a2)
    {
      v9 = a2;
    }

    else
    {
      v9 = result[1];
    }

    if (v9)
    {
      result = memset(v7, __c, v9);
    }

    if (a2 > v8)
    {
      result = memset(&v7[v8], __c, a2 - v8);
    }
  }

  else
  {
    result[1] = 0;
    llvm::SmallVectorBase<unsigned long long>::grow_pod(result, result + 3, a2, 1);
    result = memset(*v5, __c, a2);
    v6 = (v5 + 1);
  }

  *v6 = a2;
  return result;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,false>(unint64_t result, unsigned int *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 2;
  v9 = a2 - 1;
  v10 = v7;
  while (1)
  {
    v7 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v117 = *(a2 - 2);
        v118 = *v10;
        if (v117 < *v10 || v118 >= v117 && *(a2 - 1) < v10[1])
        {
          *v10 = v117;
          *(a2 - 2) = v118;
          v119 = v10[1];
          v10[1] = *(a2 - 1);
          *(a2 - 1) = v119;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      v113 = v10[2];
      v114 = *v10;
      if (v113 >= *v10 && (v114 < v113 || v10[3] >= v10[1]))
      {
        v180 = *(a2 - 2);
        if (v180 >= v113 && (v113 < v180 || *(a2 - 1) >= v10[3]))
        {
          return result;
        }

        v10[2] = v180;
        *(a2 - 2) = v113;
        v9 = v10 + 3;
        v181 = v10[3];
        v10[3] = *(a2 - 1);
        *(a2 - 1) = v181;
        v182 = v10[2];
        v183 = *v10;
        if (v182 >= *v10 && (v183 < v182 || v10[3] >= v10[1]))
        {
          return result;
        }

        *v10 = v182;
        v10[2] = v183;
        v116 = v10 + 1;
LABEL_341:
        v195 = *v116;
        *v116 = *v9;
        *v9 = v195;
        return result;
      }

      v115 = *(a2 - 2);
      if (v115 < v113)
      {
LABEL_216:
        *v10 = v115;
        v116 = v10 + 1;
        *(a2 - 2) = v114;
        goto LABEL_341;
      }

      if (v113 >= v115)
      {
        v192 = v10[3];
        if (*(a2 - 1) < v192)
        {
          goto LABEL_216;
        }
      }

      else
      {
        v192 = v10[3];
      }

      v193 = v10[1];
      v10[3] = v193;
      *v10 = v113;
      v10[1] = v192;
      v10[2] = v114;
      v194 = *(a2 - 2);
      if (v194 >= v114 && (v114 < v194 || *(a2 - 1) >= v193))
      {
        return result;
      }

      v10[2] = v194;
      *(a2 - 2) = v114;
      v116 = v10 + 3;
      goto LABEL_341;
    }

    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,0>(v10, v10 + 2, v10 + 4, a2 - 2);
    }

    if (v11 == 5)
    {
      break;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v131 = v10 + 2;
      v133 = v10 == a2 || v131 == a2;
      if (a4)
      {
        if (!v133)
        {
          v134 = 0;
          v135 = v10;
          do
          {
            v136 = v135;
            v135 = v131;
            v137 = v136[2];
            v138 = *v136;
            if (v137 < *v136 || v138 >= v137 && v136[3] < v136[1])
            {
              v140 = v136[2];
              v139 = v136[3];
              v141 = v136[1];
              v136[2] = v138;
              v135[1] = v141;
              v142 = v10;
              if (v136 != v10)
              {
                v143 = v134;
                do
                {
                  v144 = *(v10 + v143 - 8);
                  if (v144 <= v140)
                  {
                    if (v144 < v140)
                    {
                      v142 = v136;
                      goto LABEL_249;
                    }

                    v142 = (v10 + v143);
                    v145 = *(v10 + v143 - 4);
                    if (v145 <= v139)
                    {
                      goto LABEL_249;
                    }
                  }

                  else
                  {
                    v145 = *(v10 + v143 - 4);
                  }

                  v136 -= 2;
                  v146 = (v10 + v143);
                  *v146 = v144;
                  v146[1] = v145;
                  v143 -= 8;
                }

                while (v143);
                v142 = v10;
              }

LABEL_249:
              *v142 = v140;
              v142[1] = v139;
            }

            v131 = v135 + 2;
            v134 += 8;
          }

          while (v135 + 2 != a2);
        }
      }

      else if (!v133)
      {
        v184 = v10 + 1;
        do
        {
          v185 = v7;
          v7 = v131;
          v186 = v185[2];
          v187 = *v185;
          if (v186 < *v185 || v187 >= v186 && v185[3] < v185[1])
          {
            v188 = *v7;
            v189 = v7[1];
            for (i = v184; ; i -= 2)
            {
              v191 = *i;
              i[1] = v187;
              i[2] = v191;
              v187 = *(i - 3);
              if (v187 <= v188 && (v187 < v188 || *(i - 2) <= v189))
              {
                break;
              }
            }

            *(i - 1) = v188;
            *i = v189;
          }

          v131 = v7 + 2;
          v184 += 2;
        }

        while (v7 + 2 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v10 != a2)
      {
        v147 = (v11 - 2) >> 1;
        v148 = v147;
        do
        {
          v149 = v148;
          if (v147 >= v148)
          {
            v150 = (2 * v148) | 1;
            v151 = &v10[2 * v150];
            if (2 * v149 + 2 < v11)
            {
              v152 = v151[2];
              if (*v151 < v152 || v152 >= *v151 && v151[1] < v151[3])
              {
                v151 += 2;
                v150 = 2 * v149 + 2;
              }
            }

            v153 = &v10[2 * v149];
            v154 = *v151;
            if (*v151 >= *v153 && (*v153 < v154 || v151[1] >= v153[1]))
            {
              v155 = *v153;
              v156 = v153[1];
              *v153 = v154;
              v153[1] = v151[1];
              if (v147 >= v150)
              {
                while (1)
                {
                  v158 = 2 * v150;
                  v150 = (2 * v150) | 1;
                  v157 = &v10[2 * v150];
                  v159 = v158 + 2;
                  if (v159 < v11)
                  {
                    result = v157[2];
                    if (*v157 < result || result >= *v157 && (result = v157[1], result < v157[3]))
                    {
                      v157 += 2;
                      v150 = v159;
                    }
                  }

                  v160 = *v157;
                  if (*v157 < v155 || v160 <= v155 && v157[1] < v156)
                  {
                    break;
                  }

                  *v151 = v160;
                  v151[1] = v157[1];
                  v151 = v157;
                  if (v147 < v150)
                  {
                    goto LABEL_265;
                  }
                }
              }

              v157 = v151;
LABEL_265:
              *v157 = v155;
              v157[1] = v156;
            }
          }

          v148 = v149 - 1;
        }

        while (v149);
        do
        {
          v161 = 0;
          v162 = *v10;
          v163 = v10;
          do
          {
            v164 = v163;
            v165 = &v163[2 * v161];
            v163 = v165 + 2;
            v166 = 2 * v161;
            v161 = (2 * v161) | 1;
            v167 = v166 + 2;
            if (v167 < v11)
            {
              v168 = v165[4];
              result = v165[2];
              if (result < v168 || v168 >= result && v165[3] < v165[5])
              {
                v163 = v165 + 4;
                v161 = v167;
              }
            }

            *v164 = *v163;
            v164[1] = v163[1];
          }

          while (v161 <= ((v11 - 2) >> 1));
          if (v163 == a2 - 2)
          {
            *v163 = v162;
          }

          else
          {
            *v163 = *(a2 - 2);
            v163[1] = *(a2 - 1);
            *(a2 - 1) = v162;
            v169 = (v163 - v10 + 8) >> 3;
            v170 = v169 - 2;
            if (v169 >= 2)
            {
              v171 = v170 >> 1;
              v172 = &v10[2 * (v170 >> 1)];
              v173 = *v172;
              if (*v172 < *v163 || *v163 >= v173 && v172[1] < v163[1])
              {
                v174 = *v163;
                v175 = v163[1];
                *v163 = v173;
                v163[1] = v172[1];
                if (v170 >= 2)
                {
                  while (1)
                  {
                    v177 = v171 - 1;
                    v171 = (v171 - 1) >> 1;
                    v176 = &v10[2 * v171];
                    v178 = *v176;
                    if (*v176 >= v174)
                    {
                      if (v178 > v174)
                      {
                        break;
                      }

                      v179 = v176[1];
                      if (v179 >= v175)
                      {
                        break;
                      }
                    }

                    else
                    {
                      v179 = v176[1];
                    }

                    *v172 = v178;
                    v172[1] = v179;
                    v172 = &v10[2 * v171];
                    if (v177 <= 1)
                    {
                      goto LABEL_298;
                    }
                  }
                }

                v176 = v172;
LABEL_298:
                *v176 = v174;
                v176[1] = v175;
              }
            }
          }

          a2 -= 2;
          v97 = v11-- <= 2;
        }

        while (!v97);
      }

      return result;
    }

    v12 = &v10[2 * (v11 >> 1)];
    v13 = v12;
    if (v11 >= 0x81)
    {
      v14 = *v12;
      v15 = *v10;
      if (*v12 >= *v10 && (v15 < v14 || v12[1] >= v10[1]))
      {
        v22 = *v8;
        if (*v8 >= v14 && (v14 < v22 || *(a2 - 1) >= v12[1]))
        {
          goto LABEL_44;
        }

        *v12 = v22;
        *(a2 - 2) = v14;
        v23 = v12 + 1;
        v24 = v12[1];
        v12[1] = *(a2 - 1);
        *(a2 - 1) = v24;
        v25 = *v12;
        v26 = *v10;
        if (*v12 >= *v10 && (v26 < v25 || *v23 >= v10[1]))
        {
LABEL_44:
          v37 = v12 - 2;
          v38 = *(v12 - 2);
          v39 = v10[2];
          if (v38 >= v39 && (v39 < v38 || *(v12 - 1) >= v10[3]))
          {
            v42 = *(a2 - 4);
            if (v42 >= v38 && (v38 < v42 || *(a2 - 3) >= *(v12 - 1)))
            {
              goto LABEL_66;
            }

            *v37 = v42;
            *(a2 - 4) = v38;
            v43 = v12 - 1;
            v44 = *(v12 - 1);
            *(v12 - 1) = *(a2 - 3);
            *(a2 - 3) = v44;
            v45 = *v37;
            v46 = v10[2];
            if (*v37 >= v46 && (v46 < v45 || *v43 >= v10[3]))
            {
LABEL_66:
              v55 = v12[2];
              v53 = v12 + 2;
              v54 = v55;
              v56 = v10[4];
              if (v55 >= v56 && (v56 < v54 || v53[1] >= v10[5]))
              {
                v59 = *(a2 - 6);
                if (v59 >= v54 && (v54 < v59 || *(a2 - 5) >= v53[1]))
                {
                  goto LABEL_84;
                }

                *v53 = v59;
                *(a2 - 6) = v54;
                v60 = v53 + 1;
                v61 = v53[1];
                v53[1] = *(a2 - 5);
                *(a2 - 5) = v61;
                v62 = *v53;
                v63 = v10[4];
                if (*v53 >= v63 && (v63 < v62 || *v60 >= v10[5]))
                {
LABEL_84:
                  v68 = *v13;
                  v69 = *v37;
                  if (*v13 >= *v37 && (v69 < v68 || v13[1] >= v37[1]))
                  {
                    v73 = *v53;
                    if (*v53 < v68)
                    {
                      v74 = v13[1];
                      v75 = v53[1];
                      goto LABEL_91;
                    }

                    if (v68 < v73 || (v75 = v53[1], v74 = v13[1], v75 >= v74))
                    {
LABEL_103:
                      v80 = *v10;
                      *v10 = v68;
                      v21 = v10 + 1;
                      *v13 = v80;
                      v28 = v13 + 1;
                      goto LABEL_104;
                    }

LABEL_91:
                    *v13 = v73;
                    v13[1] = v75;
                    v76 = (v13 + 1);
                    *v53 = v68;
                    v53[1] = v74;
                    if (v73 >= v69 && (v69 < v73 || v75 >= v37[1]))
                    {
                      v68 = v73;
                      goto LABEL_103;
                    }

                    *v37 = v73;
                    v71 = (v37 + 1);
                    *v13 = v69;
LABEL_102:
                    v79 = *v71;
                    *v71 = *v76;
                    *v76 = v79;
                    v68 = *v13;
                    goto LABEL_103;
                  }

                  v70 = *v53;
                  if (*v53 >= v68)
                  {
                    if (v68 >= v70)
                    {
                      v77 = v13[1];
                      if (v53[1] < v77)
                      {
                        goto LABEL_86;
                      }
                    }

                    else
                    {
                      v77 = v13[1];
                    }

                    *v13 = v69;
                    v78 = v37[1];
                    v13[1] = v78;
                    *v37 = v68;
                    v37[1] = v77;
                    if (v70 >= v69 && (v69 < v70 || v53[1] >= v78))
                    {
                      v68 = v69;
                      goto LABEL_103;
                    }

                    *v13 = v70;
                    *v53 = v69;
                    v72 = (v53 + 1);
                    v71 = (v13 + 1);
                  }

                  else
                  {
LABEL_86:
                    *v37 = v70;
                    v71 = (v37 + 1);
                    *v53 = v69;
                    v72 = (v53 + 1);
                  }

                  v76 = v72;
                  goto LABEL_102;
                }

                v10[4] = v62;
                *v53 = v63;
                v58 = v10 + 5;
LABEL_83:
                v67 = *v58;
                *v58 = *v60;
                *v60 = v67;
                goto LABEL_84;
              }

              v57 = *(a2 - 6);
              if (v57 >= v54)
              {
                if (v54 >= v57)
                {
                  v64 = v53[1];
                  if (*(a2 - 5) < v64)
                  {
                    goto LABEL_68;
                  }
                }

                else
                {
                  v64 = v53[1];
                }

                v65 = v10[5];
                v10[4] = v54;
                v10[5] = v64;
                *v53 = v56;
                v53[1] = v65;
                v58 = v53 + 1;
                v66 = *(a2 - 6);
                if (v66 >= v56 && (v56 < v66 || *(a2 - 5) >= v65))
                {
                  goto LABEL_84;
                }

                *v53 = v66;
                *(a2 - 6) = v56;
              }

              else
              {
LABEL_68:
                v10[4] = v57;
                *(a2 - 6) = v56;
                v58 = v10 + 5;
              }

              v60 = a2 - 5;
              goto LABEL_83;
            }

            v10[2] = v45;
            *v37 = v46;
            v41 = v10 + 3;
LABEL_65:
            v52 = *v41;
            *v41 = *v43;
            *v43 = v52;
            goto LABEL_66;
          }

          v40 = *(a2 - 4);
          if (v40 >= v38)
          {
            if (v38 >= v40)
            {
              v47 = *(v12 - 1);
              if (*(a2 - 3) < v47)
              {
                goto LABEL_46;
              }
            }

            else
            {
              v47 = *(v12 - 1);
            }

            v50 = v10[3];
            v10[2] = v38;
            v10[3] = v47;
            *v37 = v39;
            *(v12 - 1) = v50;
            v41 = v12 - 1;
            v51 = *(a2 - 4);
            if (v51 >= v39 && (v39 < v51 || *(a2 - 3) >= v50))
            {
              goto LABEL_66;
            }

            *v37 = v51;
            *(a2 - 4) = v39;
          }

          else
          {
LABEL_46:
            v10[2] = v40;
            *(a2 - 4) = v39;
            v41 = v10 + 3;
          }

          v43 = a2 - 3;
          goto LABEL_65;
        }

        *v10 = v25;
        v17 = v10 + 1;
        *v12 = v26;
LABEL_43:
        v36 = *v17;
        *v17 = *v23;
        *v23 = v36;
        goto LABEL_44;
      }

      v16 = *v8;
      if (*v8 >= v14)
      {
        if (v14 >= v16)
        {
          v32 = v12[1];
          if (*(a2 - 1) < v32)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v32 = v12[1];
        }

        v34 = v10[1];
        *v10 = v14;
        v10[1] = v32;
        *v12 = v15;
        v12[1] = v34;
        v17 = v12 + 1;
        v35 = *v8;
        if (*v8 >= v15 && (v15 < v35 || *(a2 - 1) >= v34))
        {
          goto LABEL_44;
        }

        *v12 = v35;
      }

      else
      {
LABEL_15:
        *v10 = v16;
        v17 = v10 + 1;
      }

      *v8 = v15;
      v23 = a2 - 1;
      goto LABEL_43;
    }

    v18 = *v10;
    v19 = *v12;
    if (*v10 >= *v13 && (v19 < v18 || v10[1] >= v13[1]))
    {
      v27 = *v8;
      if (*v8 >= v18 && (v18 < v27 || *(a2 - 1) >= v10[1]))
      {
        goto LABEL_105;
      }

      *v10 = v27;
      *(a2 - 2) = v18;
      v28 = v10 + 1;
      v29 = v10[1];
      v10[1] = *(a2 - 1);
      *(a2 - 1) = v29;
      v30 = *v10;
      v31 = *v13;
      if (*v10 >= *v13 && (v31 < v30 || *v28 >= v13[1]))
      {
        goto LABEL_105;
      }

      *v13 = v30;
      *v10 = v31;
      v21 = v13 + 1;
      goto LABEL_104;
    }

    v20 = *v8;
    if (*v8 >= v18)
    {
      if (v18 < v20)
      {
        v33 = v10[1];
LABEL_58:
        v48 = v13[1];
        *v13 = v18;
        v13[1] = v33;
        *v10 = v19;
        v10[1] = v48;
        v21 = v10 + 1;
        v49 = *v8;
        if (*v8 >= v19 && (v19 < v49 || *(a2 - 1) >= v48))
        {
          goto LABEL_105;
        }

        *v10 = v49;
        *v8 = v19;
        goto LABEL_60;
      }

      v33 = v10[1];
      if (*(a2 - 1) >= v33)
      {
        goto LABEL_58;
      }
    }

    *v13 = v20;
    *v8 = v19;
    v21 = v13 + 1;
LABEL_60:
    v28 = a2 - 1;
LABEL_104:
    v81 = *v21;
    *v21 = *v28;
    *v28 = v81;
LABEL_105:
    --a3;
    if ((a4 & 1) != 0 || (v82 = *(v10 - 2), v82 < *v10) || *v10 >= v82 && *(v10 - 1) < v10[1])
    {
      v83 = 0;
      v84 = *v10;
      v85 = v10[1];
      while (1)
      {
        v86 = v10[v83 + 2];
        if (v86 >= v84 && (v86 > v84 || v10[v83 + 3] >= v85))
        {
          break;
        }

        v83 += 2;
      }

      v87 = &v10[v83 + 2];
      if (v83 * 4)
      {
        v88 = *v8;
        for (j = a2 - 2; v88 >= v84 && (v88 > v84 || j[1] >= v85); j -= 2)
        {
          v90 = *(j - 2);
          v88 = v90;
        }
      }

      else
      {
        j = a2;
        if (v87 < a2)
        {
          v91 = *v8;
          j = a2 - 2;
          if (*v8 >= v84)
          {
            j = a2 - 2;
            do
            {
              if (v91 <= v84)
              {
                if (v87 >= j || j[1] < v85)
                {
                  break;
                }
              }

              else if (v87 >= j)
              {
                break;
              }

              v92 = *(j - 2);
              j -= 2;
              v91 = v92;
            }

            while (v92 >= v84);
          }
        }
      }

      if (v87 >= j)
      {
        v10 = v87;
      }

      else
      {
        v93 = *j;
        v10 = v87;
        v94 = j;
        do
        {
          *v10 = v93;
          *v94 = v86;
          v95 = v10[1];
          v10[1] = v94[1];
          v94[1] = v95;
          do
          {
            do
            {
              v96 = v10[2];
              v10 += 2;
              v86 = v96;
              v97 = v96 > v84;
            }

            while (v96 < v84);
          }

          while (!v97 && v10[1] < v85);
          do
          {
            v98 = *(v94 - 2);
            v94 -= 2;
            v93 = v98;
          }

          while (v98 >= v84 && (v93 > v84 || v94[1] >= v85));
        }

        while (v10 < v94);
      }

      if (v10 - 2 != v7)
      {
        *v7 = *(v10 - 2);
        v7[1] = *(v10 - 1);
      }

      *(v10 - 2) = v84;
      *(v10 - 1) = v85;
      if (v87 < j)
      {
        goto LABEL_146;
      }

      v99 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *>(v7, v10 - 2);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *>(v10, a2);
      if (result)
      {
        a2 = v10 - 2;
        if (!v99)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v99)
      {
LABEL_146:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,false>(v7, v10 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v101 = *v10;
      v100 = v10[1];
      v102 = *v8;
      if (*v8 > *v10 || v102 >= v101 && *(a2 - 1) > v100)
      {
        do
        {
          v104 = v10[2];
          v10 += 2;
          v103 = v104;
        }

        while (v104 <= v101 && (v103 < v101 || v10[1] <= v100));
      }

      else
      {
          ;
        }
      }

      k = a2;
      if (v10 < a2)
      {
        for (k = a2 - 2; v102 > v101 || v102 >= v101 && k[1] > v100; k -= 2)
        {
          v106 = *(k - 2);
          v102 = v106;
        }
      }

      if (v10 < k)
      {
        v107 = *v10;
        v108 = *k;
        do
        {
          *v10 = v108;
          *k = v107;
          v109 = v10[1];
          v10[1] = k[1];
          k[1] = v109;
          do
          {
            v110 = v10[2];
            v10 += 2;
            v107 = v110;
          }

          while (v110 <= v101 && (v107 < v101 || v10[1] <= v100));
          do
          {
            do
            {
              v111 = *(k - 2);
              k -= 2;
              v108 = v111;
              v112 = v111 >= v101;
            }

            while (v111 > v101);
          }

          while (v112 && k[1] > v100);
        }

        while (v10 < k);
      }

      if (v10 - 2 != v7)
      {
        *v7 = *(v10 - 2);
        v7[1] = *(v10 - 1);
      }

      a4 = 0;
      *(v10 - 2) = v101;
      *(v10 - 1) = v100;
    }
  }

  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,0>(v10, v10 + 2, v10 + 4, v10 + 6);
  v120 = *(a2 - 2);
  v121 = v10[6];
  if (v120 < v121 || v121 >= v120 && *(a2 - 1) < v10[7])
  {
    v10[6] = v120;
    *(a2 - 2) = v121;
    v122 = v10[7];
    v10[7] = *(a2 - 1);
    *(a2 - 1) = v122;
    v123 = v10[6];
    v124 = v10[4];
    if (v123 >= v124)
    {
      if (v124 < v123)
      {
        return result;
      }

      v126 = v10[7];
      v125 = v10[5];
      if (v126 >= v125)
      {
        return result;
      }
    }

    else
    {
      v125 = v10[5];
      v126 = v10[7];
    }

    v10[4] = v123;
    v10[5] = v126;
    v10[6] = v124;
    v10[7] = v125;
    v127 = v10[2];
    if (v123 >= v127)
    {
      if (v127 < v123)
      {
        return result;
      }

      v128 = v10[3];
      if (v126 >= v128)
      {
        return result;
      }
    }

    else
    {
      v128 = v10[3];
    }

    v10[2] = v123;
    v10[3] = v126;
    v10[4] = v127;
    v10[5] = v128;
    v129 = *v10;
    if (v123 >= *v10)
    {
      if (v129 < v123)
      {
        return result;
      }

      v130 = v10[1];
      if (v126 >= v130)
      {
        return result;
      }
    }

    else
    {
      v130 = v10[1];
    }

    *v10 = v123;
    v10[1] = v126;
    v10[2] = v129;
    v10[3] = v130;
  }

  return result;
}

unsigned int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *a2;
  v5 = *result;
  if (*a2 < *result || v5 >= v4 && a2[1] < result[1])
  {
    v6 = *a3;
    if (*a3 < v4 || v4 >= v6 && a3[1] < a2[1])
    {
      *result = v6;
      v7 = (result + 1);
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v7 = (a2 + 1);
      v13 = result[1];
      result[1] = a2[1];
      a2[1] = v13;
      v14 = *a3;
      v5 = *a2;
      if (*a3 >= *a2 && (v5 < v14 || a3[1] >= v13))
      {
        goto LABEL_15;
      }

      *a2 = v14;
    }

    *a3 = v5;
    v10 = (a3 + 1);
    goto LABEL_14;
  }

  v8 = *a3;
  if (*a3 < v4 || v4 >= v8 && a3[1] < a2[1])
  {
    *a2 = v8;
    *a3 = v4;
    v10 = (a2 + 1);
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    v11 = *a2;
    v12 = *result;
    if (*a2 < *result || v12 >= v11 && *v10 < result[1])
    {
      *result = v11;
      v7 = (result + 1);
      *a2 = v12;
LABEL_14:
      v15 = *v7;
      *v7 = *v10;
      *v10 = v15;
    }
  }

LABEL_15:
  v16 = *a4;
  v17 = *a3;
  if (*a4 < *a3 || v17 >= v16 && a4[1] < a3[1])
  {
    *a3 = v16;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    if (*a3 < *a2 || v20 >= v19 && a3[1] < a2[1])
    {
      *a2 = v19;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a2;
      v23 = *result;
      if (*a2 < *result || v23 >= v22 && a2[1] < result[1])
      {
        *result = v22;
        *a2 = v23;
        v24 = result[1];
        result[1] = a2[1];
        a2[1] = v24;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *>(unsigned int *a1, unsigned int *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 2);
        v6 = *a1;
        if (v5 < *a1 || v6 >= v5 && *(a2 - 1) < a1[1])
        {
          *a1 = v5;
          *(a2 - 2) = v6;
          v7 = a1[1];
          a1[1] = *(a2 - 1);
          *(a2 - 1) = v7;
        }

        return 1;
      }

      goto LABEL_20;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      v20 = a1[2];
      v21 = *a1;
      if (v20 >= *a1 && (v21 < v20 || a1[3] >= a1[1]))
      {
        v30 = *(a2 - 2);
        if (v30 >= v20 && (v20 < v30 || *(a2 - 1) >= a1[3]))
        {
          return 1;
        }

        a1[2] = v30;
        *(a2 - 2) = v20;
        v24 = a1 + 3;
        v31 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v31;
        v32 = a1[2];
        v33 = *a1;
        if (v32 >= *a1 && (v33 < v32 || a1[3] >= a1[1]))
        {
          return 1;
        }

        *a1 = v32;
        a1[2] = v33;
        v23 = a1 + 1;
        goto LABEL_60;
      }

      v22 = *(a2 - 2);
      if (v22 < v20)
      {
LABEL_19:
        *a1 = v22;
        v23 = a1 + 1;
        *(a2 - 2) = v21;
        v24 = a2 - 1;
LABEL_60:
        v42 = *v23;
        *v23 = *v24;
        *v24 = v42;
        return 1;
      }

      if (v20 >= v22)
      {
        v38 = a1[3];
        if (*(a2 - 1) < v38)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v38 = a1[3];
      }

      v40 = a1[1];
      a1[3] = v40;
      *a1 = v20;
      a1[1] = v38;
      a1[2] = v21;
      v41 = *(a2 - 2);
      if (v41 >= v21 && (v21 < v41 || *(a2 - 1) >= v40))
      {
        return 1;
      }

      a1[2] = v41;
      *(a2 - 2) = v21;
      v24 = a2 - 1;
      v23 = a1 + 3;
      goto LABEL_60;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
      return 1;
    case 5:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
      v8 = *(a2 - 2);
      v9 = a1[6];
      if (v8 >= v9 && (v9 < v8 || *(a2 - 1) >= a1[7]))
      {
        return 1;
      }

      a1[6] = v8;
      *(a2 - 2) = v9;
      v10 = a1[7];
      a1[7] = *(a2 - 1);
      *(a2 - 1) = v10;
      v11 = a1[6];
      v12 = a1[4];
      if (v11 >= v12)
      {
        if (v12 < v11)
        {
          return 1;
        }

        v14 = a1[7];
        v13 = a1[5];
        if (v14 >= v13)
        {
          return 1;
        }
      }

      else
      {
        v13 = a1[5];
        v14 = a1[7];
      }

      a1[4] = v11;
      a1[5] = v14;
      a1[6] = v12;
      a1[7] = v13;
      v15 = a1[2];
      if (v11 >= v15)
      {
        if (v15 < v11)
        {
          return 1;
        }

        v16 = a1[3];
        if (v14 >= v16)
        {
          return 1;
        }
      }

      else
      {
        v16 = a1[3];
      }

      a1[2] = v11;
      a1[3] = v14;
      a1[4] = v15;
      a1[5] = v16;
      v17 = *a1;
      if (v11 >= *a1)
      {
        if (v17 < v11)
        {
          return 1;
        }

        v18 = a1[1];
        if (v14 >= v18)
        {
          return 1;
        }
      }

      else
      {
        v18 = a1[1];
      }

      *a1 = v11;
      a1[1] = v14;
      result = 1;
      a1[2] = v17;
      a1[3] = v18;
      return result;
  }

LABEL_20:
  v25 = a1 + 4;
  v26 = a1[2];
  v27 = *a1;
  if (v26 < *a1 || v27 >= v26 && a1[3] < a1[1])
  {
    v28 = *v25;
    if (*v25 < v26)
    {
LABEL_22:
      *a1 = v28;
      a1[4] = v27;
      v29 = (a1 + 1);
LABEL_64:
      v37 = (a1 + 5);
      goto LABEL_65;
    }

    if (v26 >= v28)
    {
      v39 = a1[3];
      if (a1[5] < v39)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v39 = a1[3];
    }

    v43 = a1[1];
    a1[3] = v43;
    v29 = (a1 + 3);
    *a1 = v26;
    a1[1] = v39;
    a1[2] = v27;
    if (v28 >= v27 && (v27 < v28 || a1[5] >= v43))
    {
      goto LABEL_66;
    }

    a1[2] = v28;
    a1[4] = v27;
    goto LABEL_64;
  }

  v34 = *v25;
  if (*v25 < v26)
  {
    v35 = a1[3];
    v36 = a1[5];
LABEL_33:
    a1[3] = v36;
    v37 = (a1 + 3);
    a1[2] = v34;
    a1[4] = v26;
    a1[5] = v35;
    if (v34 >= v27 && (v27 < v34 || v36 >= a1[1]))
    {
      goto LABEL_66;
    }

    *a1 = v34;
    a1[2] = v27;
    v29 = (a1 + 1);
LABEL_65:
    v44 = *v29;
    *v29 = *v37;
    *v37 = v44;
    goto LABEL_66;
  }

  if (v26 >= v34)
  {
    v36 = a1[5];
    v35 = a1[3];
    if (v36 < v35)
    {
      goto LABEL_33;
    }
  }

LABEL_66:
  v45 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (1)
  {
    v48 = *v25;
    if (*v45 < *v25 || v48 >= *v45 && v45[1] < v25[1])
    {
      v49 = *v45;
      v50 = v45[1];
      *v45 = v48;
      v45[1] = v25[1];
      v51 = v46;
      do
      {
        v52 = a1 + v51;
        v53 = *(a1 + v51 + 8);
        if (v53 <= v49)
        {
          if (v53 < v49)
          {
            v25 = (a1 + v51 + 16);
            goto LABEL_80;
          }

          v54 = *(a1 + v51 + 12);
          if (v54 <= v50)
          {
            goto LABEL_80;
          }
        }

        else
        {
          v54 = *(v52 + 3);
        }

        v25 -= 2;
        *(v52 + 4) = v53;
        *(a1 + v51 + 20) = v54;
        v51 -= 8;
      }

      while (v51 != -16);
      v25 = a1;
LABEL_80:
      *v25 = v49;
      v25[1] = v50;
      if (++v47 == 8)
      {
        return v45 + 2 == a2;
      }
    }

    v25 = v45;
    v46 += 8;
    v45 += 2;
    if (v45 == a2)
    {
      return 1;
    }
  }
}

void std::vector<llvm::SmallVector<long long,8u>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<llvm::SmallVector<long long,8u>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<llvm::SmallVector<long long,8u>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v5 = *(v3 - 80);
    v3 -= 80;
    v4 = v5;
    if ((v3 + 16) != v5)
    {
      free(v4);
    }
  }

  a1[1] = v2;
}

uint64_t mlir::AffineExprVisitor<void mlir::AffineExpr::walk<void>(mlir::AffineExpr,llvm::function_ref<void ()(mlir::AffineExpr)>)::AffineExprWalker,void>::walkOperandsPostOrder(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (*(v4 + 8) <= 4u)
  {
    mlir::AffineExprVisitor<void mlir::AffineExpr::walk<void>(mlir::AffineExpr,llvm::function_ref<void ()(mlir::AffineExpr)>)::AffineExprWalker,void>::walkOperandsPostOrder(a1, *(a2 + 16));
  }

  (*a1)(*(a1 + 8), v4);
  v5 = *(a2 + 24);
  if (*(v5 + 8) <= 4u)
  {
    mlir::AffineExprVisitor<void mlir::AffineExpr::walk<void>(mlir::AffineExpr,llvm::function_ref<void ()(mlir::AffineExpr)>)::AffineExprWalker,void>::walkOperandsPostOrder(a1, v5);
  }

  v7 = *a1;
  v6 = *(a1 + 8);

  return v7(v6, v5);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>,mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::doFind<mlir::AffineExpr>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
    LODWORD(v4) = -348639895 * ((v5 >> 47) ^ v5);
    v6 = v2 - 1;
    v7 = v4 & (v2 - 1);
    v8 = *(*a1 + 16 * v7);
    if (*a2 == v8)
    {
      return v3 + 16 * v7;
    }

    v10 = 1;
    while (v8 != -4096)
    {
      v11 = v7 + v10++;
      v7 = v11 & v6;
      v8 = *(v3 + 16 * v7);
      if (*a2 == v8)
      {
        return v3 + 16 * v7;
      }
    }
  }

  return 0;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>,mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>,mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::LookupBucketFor<mlir::AffineExpr>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>,mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::InsertIntoBucketImpl<mlir::AffineExpr>(a1, a2, v12);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>,mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::LookupBucketFor<mlir::AffineExpr>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
    v6 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v5 >> 47) ^ v5);
    LODWORD(v5) = -348639895 * ((v6 >> 47) ^ v6);
    v7 = v3 - 1;
    v8 = v5 & (v3 - 1);
    v9 = (*a1 + 16 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
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
        v9 = (v4 + 16 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }
    }
  }

  else
  {
    v9 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v9;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>,mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::InsertIntoBucketImpl<mlir::AffineExpr>(uint64_t a1, void *a2, void *a3)
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

  llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>,mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::LookupBucketFor<mlir::AffineExpr>(a1, a2, &v8);
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

char *llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>,mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x25F891030);
  }

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

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>,mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>,mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::LookupBucketFor<mlir::AffineExpr>(v5, a2, &v14);
      *v14 = *a2;
      v14[1] = a2[1];
      ++*(v5 + 8);
    }

    a2 += 2;
  }

  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineConstantExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>,mlir::TypeID,long long &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *(v4 + 8) = 5;
  *(v4 + 16) = *v3;
  v5 = *(a1 + 8);
  if (*v5)
  {
    (*v5)(*(v5 + 8), v4);
  }

  return v4;
}

uint64_t mlir::detail::TypeIDResolver<mlir::detail::AffineConstantExprStorage,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::detail::AffineConstantExprStorage>();
      mlir::detail::TypeIDResolver<mlir::detail::AffineConstantExprStorage,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1312);
}

uint64_t llvm::getTypeName<mlir::detail::AffineConstantExprStorage>()
{
  {
    llvm::getTypeName<mlir::detail::AffineConstantExprStorage>(void)::Name = llvm::detail::getTypeNameImpl<mlir::detail::AffineConstantExprStorage>();
    *algn_27FC17538 = v1;
  }

  return llvm::getTypeName<mlir::detail::AffineConstantExprStorage>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::detail::AffineConstantExprStorage>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::AffineConstantExprStorage]";
  v6 = 101;
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

uint64_t mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, unint64_t *a6, unint64_t *a7)
{
  v19[0] = a2;
  v19[1] = a3;
  v16 = *a5;
  v7 = *a7;
  v17 = *a6;
  v18 = v7;
  v8 = 0x9DDFEA08EB382D69 * ((8 * v17 - 0xAE502812AA7333) ^ HIDWORD(v17));
  v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v17) ^ (v8 >> 47) ^ v8);
  v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ ((0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7))) >> 47) ^ (0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7))));
  v11 = (1400339394 * ((v10 >> 47) ^ v10)) | (0xEB382D6900000000 * ((v9 >> 47) ^ v9));
  v12 = 0xBF58476D1CE4E5B9 * (((0xBF58476D1CE4E5B9 * v11) >> 31) ^ (484763065 * v11) | ((37 * v16) << 32));
  v14[0] = &v16;
  v14[1] = v19;
  v15 = &v16;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*a1, a4, (v12 >> 31) ^ v12, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::AffineBinaryOpExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(llvm::function_ref<void ()(mlir::detail::AffineBinaryOpExprStorage *)>,mlir::TypeID,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineBinaryOpExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(llvm::function_ref<void ()(mlir::detail::AffineBinaryOpExprStorage *)>,mlir::TypeID,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineBinaryOpExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(llvm::function_ref<void ()(mlir::detail::AffineBinaryOpExprStorage *)>,mlir::TypeID,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 32, 3);
  *(v4 + 8) = *v3;
  v5 = *(v3 + 8);
  *(v4 + 16) = v5;
  *(v4 + 24) = *(v3 + 16);
  *v4 = *v5;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(*(v6 + 8), v4);
  }

  return v4;
}

uint64_t mlir::detail::TypeIDResolver<mlir::detail::AffineBinaryOpExprStorage,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::detail::AffineBinaryOpExprStorage>();
      mlir::detail::TypeIDResolver<mlir::detail::AffineBinaryOpExprStorage,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1272);
}

uint64_t llvm::getTypeName<mlir::detail::AffineBinaryOpExprStorage>()
{
  {
    llvm::getTypeName<mlir::detail::AffineBinaryOpExprStorage>(void)::Name = llvm::detail::getTypeNameImpl<mlir::detail::AffineBinaryOpExprStorage>();
    unk_27FC17510 = v1;
  }

  return llvm::getTypeName<mlir::detail::AffineBinaryOpExprStorage>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::detail::AffineBinaryOpExprStorage>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::AffineBinaryOpExprStorage]";
  v6 = 101;
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

void llvm::SmallVectorImpl<mlir::AffineExpr>::append<mlir::AffineExpr const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::SmallVector<long long,8u>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::SmallVector<long long,8u>>,llvm::SmallVector<long long,8u>*>(uint64_t a1, void **a2, void **a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      *a4 = a4 + 2;
      a4[1] = 0x800000000;
      if (*(v7 + 8))
      {
        llvm::SmallVectorImpl<long long>::operator=(a4, v7);
      }

      v7 += 80;
      a4 += 10;
    }

    while (v7 != a3);
    do
    {
      v10 = *v6;
      v9 = v6 + 2;
      v8 = v10;
      if (v10 != v9)
      {
        free(v8);
      }

      v6 = (v9 + 8);
    }

    while (v6 != a3);
  }
}

uint64_t llvm::SmallVectorImpl<long long>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<long long>::assignRemote(a1, a2);
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

{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 8 * v4);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        memmove(*a1, *a2, 8 * v5);
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4, 8);
    }

    v5 = 0;
LABEL_10:
    v6 = *(a2 + 8) - v5;
    if (v6)
    {
      memcpy((*a1 + 8 * v5), (*a2 + 8 * v5), 8 * v6);
    }

LABEL_12:
    *(a1 + 8) = v4;
  }

  return a1;
}

double llvm::SmallVectorImpl<long long>::assignRemote(uint64_t a1, uint64_t a2)
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

void **std::__split_buffer<llvm::SmallVector<long long,8u>>::~__split_buffer(void **a1)
{
  std::__split_buffer<llvm::SmallVector<long long,8u>>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<llvm::SmallVector<long long,8u>>::clear[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    v5 = *(v1 - 80);
    v1 -= 80;
    v4 = v5;
    *(a1 + 16) = v1;
    if (v5 != (v1 + 16))
    {
      free(v4);
      v1 = *(a1 + 16);
    }
  }
}

void llvm::SmallVectorImpl<long long>::assign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 12) >= a2)
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    if (v4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = *(a1 + 8);
    }

    if (v5)
    {
      v6 = 0;
      v7 = (v5 + 1) & 0x1FFFFFFFELL;
      v8 = vdupq_n_s64(v5 - 1);
      v9 = (v3 + 8);
      do
      {
        v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
        if (v10.i8[0])
        {
          *(v9 - 1) = a3;
        }

        if (v10.i8[4])
        {
          *v9 = a3;
        }

        v6 += 2;
        v9 += 2;
      }

      while (v7 != v6);
    }

    v11 = a2 - v4;
    if (a2 > v4)
    {
      v12 = 0;
      v13 = vdupq_n_s64(v11 - 1);
      v14 = (v3 + 8 * v4 + 8);
      do
      {
        v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
        if (v15.i8[0])
        {
          *(v14 - 1) = a3;
        }

        if (v15.i8[4])
        {
          *v14 = a3;
        }

        v12 += 2;
        v14 += 2;
      }

      while (((v11 + 1) & 0xFFFFFFFFFFFFFFFELL) != v12);
    }

    *(a1 + 8) = a2;
  }

  else
  {
    llvm::SmallVectorTemplateBase<long long,true>::growAndAssign(a1, a2, a3);
  }
}

void llvm::SmallVectorTemplateBase<long long,true>::growAndAssign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 8);
  if (a2)
  {
    v6 = 0;
    v7 = vdupq_n_s64(a2 - 1);
    v8 = (*a1 + 8);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
      if (v9.i8[0])
      {
        *(v8 - 1) = a3;
      }

      if (v9.i8[4])
      {
        *v8 = a3;
      }

      v6 += 2;
      v8 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v6);
  }

  *(a1 + 8) = a2;
}

uint64_t std::vector<llvm::SmallVector<long long,8u>>::__emplace_back_slow_path<llvm::SmallVector<long long,32u>>(void ***a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<llvm::SmallVector<long long,8u>>::__throw_length_error[abi:nn200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v13[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::SmallVector<long long,8u>>>(a1, v6);
  }

  v7 = 80 * v2;
  *v7 = v7 + 16;
  *(v7 + 8) = 0x800000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<long long>::operator=(v7, a2);
  }

  v8 = a1[1];
  v9 = (v7 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::SmallVector<long long,8u>>,llvm::SmallVector<long long,8u>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  a1[1] = (v7 + 80);
  v11 = a1[2];
  a1[2] = 0;
  v13[2] = v10;
  v13[3] = v11;
  v13[0] = v10;
  v13[1] = v10;
  std::__split_buffer<llvm::SmallVector<long long,8u>>::~__split_buffer(v13);
  return v7 + 80;
}

uint64_t llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  if (*a1 + 8 * v6 == a2)
  {
    llvm::SmallVectorTemplateBase<long long,true>::push_back(a1, *a3);
    return *a1 + 8 * *(a1 + 8) - 8;
  }

  else
  {
    v7 = a2 - v5;
    if (v6 >= *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 8);
      v5 = *a1;
      v6 = *(a1 + 8);
    }

    v8 = (v5 + v7);
    v9 = (v5 + 8 * v6);
    *v9 = *(v9 - 1);
    if (v9 - 1 != v8)
    {
      memmove(v8 + 1, v8, (v9 - 1) - v8);
      LODWORD(v6) = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    *v8 = *a3;
  }

  return v8;
}

uint64_t mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkOperandsPostOrder(uint64_t a1, uint64_t a2)
{
  if (mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkPostOrder(a1, *(a2 + 16)))
  {
    return mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkPostOrder(a1, *(a2 + 24)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::AffineMap::getConstantMap(mlir::AffineMap *this, void *a2, mlir::MLIRContext *a3)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::getAffineConstantExpr(this, a2, a3);
  result = mlir::AffineMap::getImpl(0, 0, v5, 1, *v5[0]);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::AffineMap::getMultiDimIdentityMap(mlir::AffineMap *this, void *a2, mlir::MLIRContext *a3)
{
  v4 = this;
  v14[4] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = 0x400000000;
  if (this < 5)
  {
    if (!this)
    {
      v8 = 0;
      v7 = v14;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v12, v14, this, 8);
  }

  v5 = 0;
  do
  {
    AffineDimOrSymbol = getAffineDimOrSymbol(6u, v5, a2);
    llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v12, AffineDimOrSymbol);
    v5 = (v5 + 1);
  }

  while (v4 != v5);
  v7 = v12;
  v8 = v13;
LABEL_7:
  Impl = mlir::AffineMap::getImpl(v4, 0, v7, v8, a2);
  if (v12 != v14)
  {
    free(v12);
  }

  v10 = *MEMORY[0x277D85DE8];
  return Impl;
}

void llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 4);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 4 * v4) = a2;
  ++*(a1 + 8);
}

double mlir::AffineMap::inferFromExprList@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  if (a2)
  {
    v6 = a1;
    v18 = -1;
    v19 = -1;
    v7 = a1 + 16 * a2;
    v8 = a1;
    do
    {
      v9 = *(v8 + 8);
      if (v9)
      {
        v10 = *v8;
        v11 = 8 * v9;
        do
        {
          v12 = *v10++;
          v20[0] = &v19;
          v20[1] = &v18;
          mlir::AffineExpr::walk<void>(v12, llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<void mlir::getMaxDimAndSymbol<llvm::ArrayRef<mlir::AffineExpr>>(llvm::ArrayRef<llvm::ArrayRef<mlir::AffineExpr>>,long long &,long long &)::{lambda(mlir::AffineExpr)#1}>, v20);
          v11 -= 8;
        }

        while (v11);
      }

      v8 += 16;
    }

    while (v8 != v7);
    *a4 = a4 + 2;
    a4[1] = 0x400000000;
    if (a2 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 2, a2, 8);
    }

    do
    {
      v13 = *v6;
      v14 = *(v6 + 8);
      v6 += 16;
      Impl = mlir::AffineMap::getImpl(v19 + 1, v18 + 1, v13, v14, a3);
      llvm::SmallVectorTemplateBase<mlir::AffineMap,true>::push_back(a4, Impl);
    }

    while (v6 != v7);
  }

  else
  {
    *a4 = a4 + 2;
    *&result = 0x400000000;
    a4[1] = 0x400000000;
  }

  return result;
}

unint64_t mlir::AffineMap::getLargestKnownDivisorOfMapExprs(mlir::AffineMap *this)
{
  v1 = *(*this + 8);
  if (!v1)
  {
    return -1;
  }

  v2 = 0;
  v3 = 8 * v1;
  v4 = (*this + 24);
  do
  {
    v5 = *v4++;
    v9 = v5;
    LargestKnownDivisor = mlir::AffineExpr::getLargestKnownDivisor(&v9);
    v7 = std::__gcd<unsigned long long>(v2, LargestKnownDivisor);
    v2 = v7;
    v3 -= 8;
  }

  while (v3);
  if (!v7)
  {
    return -1;
  }

  return v2;
}

uint64_t mlir::AffineMap::isIdentity(mlir::AffineMap *this)
{
  v1 = **this;
  if (v1 == *(*this + 8))
  {
    if (!v1)
    {
      return 1;
    }

    v2 = 0;
    while (1)
    {
      v3 = *(*this + 24 + 8 * v2);
      v4 = v3 && *(v3 + 8) == 6;
      if (!v4 || v2 != *(v3 + 16))
      {
        break;
      }

      if (v1 == ++v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t mlir::AffineMap::isSymbolIdentity(mlir::AffineMap *this)
{
  v1 = *(*this + 4);
  if (v1 == *(*this + 8))
  {
    if (!v1)
    {
      return 1;
    }

    v2 = 0;
    while (1)
    {
      v3 = *(*this + 24 + 8 * v2);
      v4 = v3 && *(v3 + 8) == 6;
      if (!v4 || v2 != *(v3 + 16))
      {
        break;
      }

      if (v1 == ++v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t mlir::AffineMap::getConstantResults@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  v3 = *(*this + 8);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = (*this + 24);
    do
    {
      v6 = *v5++;
      v7 = *(v6 + 16);
      this = llvm::SmallVectorImpl<long long>::emplace_back<long long>(a2, &v7);
      v4 -= 8;
    }

    while (v4);
  }

  return this;
}

uint64_t llvm::SmallVectorImpl<long long>::emplace_back<long long>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<long long,true>::push_back(a1, *a2);
    v4 = *a1;
    v5 = *(a1 + 8);
  }

  else
  {
    v4 = *a1;
    *(*a1 + 8 * v3) = *a2;
    v5 = v3 + 1;
    *(a1 + 8) = v5;
  }

  return v4 + 8 * v5 - 8;
}

uint64_t mlir::AffineMap::constantFold(int **a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = 0x200000000;
  mlir::AffineMap::partialConstantFold(a1, a2, a3, &v16, a5);
  v7 = v17;
  if (v17)
  {
    v8 = v16;
    v9 = *(a4 + 8);
    if (v9 + v17 > *(a4 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v9 + v17, 8);
      v9 = *(a4 + 8);
    }

    v10 = (*a4 + 8 * v9);
    v11 = 8 * v7;
    do
    {
      v12 = *v8++;
      *v10++ = mlir::IntegerAttr::get(*(**(*a1 + 2) + 472), v12);
      v11 -= 8;
    }

    while (v11);
    *(a4 + 8) += v7;
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (v16 != v18)
  {
    free(v16);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t mlir::AffineMap::partialConstantFold(int **a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v25 = **a1;
  v26 = a2;
  v27 = a3;
  v28 = 0;
  v29 = v31;
  v30 = 0x400000000;
  v9 = v8[2];
  if (v9 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v9, 8);
    v8 = *a1;
    LODWORD(v9) = (*a1)[2];
  }

  if (!v9)
  {
LABEL_17:
    Impl = mlir::AffineMap::getImpl(*v8, v8[1], v29, v30, *(v8 + 2));
    goto LABEL_19;
  }

  v10 = 8 * v9;
  v11 = (v8 + 6);
  while (1)
  {
    v12 = *v11;
    if ((v14 & 1) == 0)
    {
      break;
    }

    v15 = mlir::IntegerAttr::get(*(**v12 + 472), v13);
    v16 = v15;
    v24 = v15;
    if (a5 && (v28 & 1) != 0)
    {
      goto LABEL_18;
    }

    if (!v15)
    {
      goto LABEL_13;
    }

    Int = mlir::IntegerAttr::getInt(&v24);
    AffineConstantExpr = mlir::getAffineConstantExpr(Int, *(**v16 + 32), v18);
    llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v29, AffineConstantExpr);
    if (a4)
    {
      v20 = mlir::IntegerAttr::getInt(&v24);
      llvm::SmallVectorTemplateBase<long long,true>::push_back(a4, v20);
    }

LABEL_15:
    ++v11;
    v10 -= 8;
    if (!v10)
    {
      v8 = *a1;
      goto LABEL_17;
    }
  }

  if (!a5 || (v28 & 1) == 0)
  {
LABEL_13:
    llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v29, v12);
    if (a4)
    {
      *(a4 + 8) = 0;
      a4 = 0;
    }

    goto LABEL_15;
  }

LABEL_18:
  Impl = 0;
  *a5 = 1;
LABEL_19:
  if (v29 != v31)
  {
    free(v29);
  }

  v22 = *MEMORY[0x277D85DE8];
  return Impl;
}

uint64_t mlir::AffineMap::replaceDimsAndSymbols(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, int a6, int a7)
{
  v26[8] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x800000000;
  v14 = *a1;
  v15 = *(*a1 + 8);
  if (v15 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, v15, 8);
    v14 = *a1;
    LODWORD(v15) = *(*a1 + 8);
  }

  if (v15)
  {
    v16 = 8 * v15;
    v17 = (v14 + 24);
    do
    {
      v18 = *v17++;
      v23 = v18;
      v19 = mlir::AffineExpr::replaceDimsAndSymbols(&v23, a2, a3, a4, a5);
      llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v24, v19);
      v16 -= 8;
    }

    while (v16);
    v14 = *a1;
  }

  Impl = mlir::AffineMap::getImpl(a6, a7, v24, v25, *(v14 + 16));
  if (v24 != v26)
  {
    free(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return Impl;
}

uint64_t mlir::AffineMap::replace(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = 0x400000000;
  v10 = *a1;
  v11 = *(*a1 + 8);
  if (v11 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v22, v11, 8);
    v10 = *a1;
    LODWORD(v11) = *(*a1 + 8);
  }

  if (v11)
  {
    v12 = 8 * v11;
    v13 = (v10 + 24);
    do
    {
      v14 = *v13++;
      v19 = v14;
      v15 = mlir::AffineExpr::replace(&v19, a2, a3);
      llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v20, v15);
      v12 -= 8;
    }

    while (v12);
    v10 = *a1;
  }

  Impl = mlir::AffineMap::getImpl(a4, a5, v20, v21, *(v10 + 16));
  if (v20 != v22)
  {
    free(v20);
  }

  v17 = *MEMORY[0x277D85DE8];
  return Impl;
}

uint64_t mlir::foldAttributesIntoMap(void **a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35[6] = *MEMORY[0x277D85DE8];
  v33 = v35;
  v34 = 0x600000000;
  v29 = a2;
  v30 = v32;
  v31 = 0x600000000;
  if (*a2)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(a3 + 8 * v10);
      if ((v11 & 4) != 0 || (v12 = v11 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        AffineDimOrSymbol = getAffineDimOrSymbol(6u, v9, *a1);
        llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v33, AffineDimOrSymbol);
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a5, *(a3 + 8 * v10) & 0xFFFFFFFFFFFFFFF8);
        ++v9;
      }

      else
      {
        v28 = v12;
        Int = mlir::IntegerAttr::getInt(&v28);
        AffineConstantExpr = mlir::getAffineConstantExpr(Int, *a1, v14);
        llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v33, AffineConstantExpr);
      }

      ++v10;
    }

    while (v10 < *a2);
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (a2[1])
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *(a3 + 8 * *a2 + 8 * v18);
      if ((v19 & 4) != 0 || (v20 = v19 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        v24 = getAffineDimOrSymbol(7u, v17, *a1);
        llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v30, v24);
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a5, *(a3 + 8 * *a2 + 8 * v18) & 0xFFFFFFFFFFFFFFF8);
        ++v17;
      }

      else
      {
        v28 = v20;
        v21 = mlir::IntegerAttr::getInt(&v28);
        v23 = mlir::getAffineConstantExpr(v21, *a1, v22);
        llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v30, v23);
      }

      ++v18;
    }

    while (v18 < a2[1]);
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v25 = mlir::AffineMap::replaceDimsAndSymbols(&v29, v33, v34, v30, v31, v9, v17);
  if (v30 != v32)
  {
    free(v30);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t mlir::simplifyAffineMap(int *a1)
{
  v13[8] = *MEMORY[0x277D85DE8];
  v11 = v13;
  v12 = 0x800000000;
  v2 = a1[2];
  if (v2)
  {
    v3 = 8 * v2;
    v4 = 6;
    do
    {
      v5 = mlir::simplifyAffineExpr(*&a1[v4], *a1, a1[1]);
      llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v11, v5);
      v4 += 2;
      v3 -= 8;
    }

    while (v3);
    v6 = v11;
    v7 = v12;
  }

  else
  {
    v7 = 0;
    v6 = v13;
  }

  Impl = mlir::AffineMap::getImpl(*a1, a1[1], v6, v7, *(a1 + 2));
  if (v11 != v13)
  {
    free(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
  return Impl;
}

uint64_t mlir::removeDuplicateExprs(uint64_t a1)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v7 = v9;
  v8 = 0x400000000;
  llvm::SmallVectorImpl<mlir::AffineExpr>::append<mlir::AffineExpr const*,void>(&v7, (a1 + 24), (a1 + 24 + 8 * v2));
  v3 = std::__unique[abi:nn200100]<std::_ClassicAlgPolicy,mlir::AffineExpr *,mlir::AffineExpr *,std::__equal_to &>(v7, v7 + v8);
  LODWORD(v8) = (v3 - v7) >> 3;
  Impl = mlir::AffineMap::getImpl(*a1, *(a1 + 4), v7, v8, *(a1 + 16));
  if (v7 != v9)
  {
    free(v7);
  }

  v5 = *MEMORY[0x277D85DE8];
  return Impl;
}

unint64_t *llvm::SmallBitVector::SmallBitVector(unint64_t *this, unsigned int a2, int a3)
{
  *this = 1;
  if (a2 > 0x39)
  {
    operator new();
  }

  v3 = 2 * ~(-1 << a2);
  if (!a3)
  {
    v3 = 0;
  }

  *this = v3 | (a2 << 58) | 1;
  return this;
}

llvm::BitVector *llvm::BitVector::BitVector(llvm::BitVector *this, int a2, uint64_t a3)
{
  v3 = a3;
  *this = this + 16;
  *(this + 1) = 0x600000000;
  llvm::SmallVectorImpl<unsigned long>::assign(this, (a2 + 63) >> 6, a3 << 63 >> 63);
  *(this + 16) = a2;
  if (v3 && (a2 & 0x3F) != 0)
  {
    v6 = *this + 8 * *(this + 2);
    *(v6 - 8) &= ~(-1 << (a2 & 0x3F));
  }

  return this;
}

void llvm::SmallVectorImpl<unsigned long>::assign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 12) >= a2)
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    if (v4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = *(a1 + 8);
    }

    if (v5)
    {
      v6 = 0;
      v7 = (v5 + 1) & 0x1FFFFFFFELL;
      v8 = vdupq_n_s64(v5 - 1);
      v9 = (v3 + 8);
      do
      {
        v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
        if (v10.i8[0])
        {
          *(v9 - 1) = a3;
        }

        if (v10.i8[4])
        {
          *v9 = a3;
        }

        v6 += 2;
        v9 += 2;
      }

      while (v7 != v6);
    }

    v11 = a2 - v4;
    if (a2 > v4)
    {
      v12 = 0;
      v13 = vdupq_n_s64(v11 - 1);
      v14 = (v3 + 8 * v4 + 8);
      do
      {
        v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
        if (v15.i8[0])
        {
          *(v14 - 1) = a3;
        }

        if (v15.i8[4])
        {
          *v14 = a3;
        }

        v12 += 2;
        v14 += 2;
      }

      while (((v11 + 1) & 0xFFFFFFFFFFFFFFFELL) != v12);
    }

    *(a1 + 8) = a2;
  }

  else
  {
    llvm::SmallVectorTemplateBase<unsigned long,true>::growAndAssign(a1, a2, a3);
  }
}

void llvm::SmallVectorTemplateBase<unsigned long,true>::growAndAssign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 8);
  if (a2)
  {
    v6 = 0;
    v7 = vdupq_n_s64(a2 - 1);
    v8 = (*a1 + 8);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
      if (v9.i8[0])
      {
        *(v8 - 1) = a3;
      }

      if (v9.i8[4])
      {
        *v8 = a3;
      }

      v6 += 2;
      v8 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v6);
  }

  *(a1 + 8) = a2;
}

unint64_t *llvm::SmallBitVector::set(unint64_t *this, unsigned int a2)
{
  v2 = *this;
  if (*this)
  {
    *this = v2 & 0xFC00000000000001 | (2 * (((1 << a2) | (v2 >> 1)) & ~(-1 << (v2 >> 58))));
  }

  else
  {
    *(*v2 + 8 * (a2 >> 6)) |= 1 << a2;
  }

  return this;
}

void llvm::SmallBitVector::~SmallBitVector(void ***this)
{
  v1 = *this;
  if ((*this & 1) == 0 && v1)
  {
    if (*v1 != v1 + 2)
    {
      free(*v1);
    }

    MEMORY[0x25F891040](v1, 0x1080C40EF38A13ELL);
  }
}

BOOL llvm::SmallBitVector::operator[](unint64_t *a1, unsigned int a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = (1 << a2) & (v2 >> 1) & ~(-1 << (v2 >> 58));
  }

  else
  {
    v3 = *(*v2 + 8 * (a2 >> 6)) & (1 << a2);
  }

  return v3 != 0;
}

unint64_t anonymous namespace::AffineExprConstantFolder::constantFoldImpl(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 <= 3)
  {
    if (v2 > 1)
    {
      v9 = a1;
      if (v2 == 2)
      {
      }

      else
      {
      }
    }

    else if (v2)
    {
    }

    else
    {
    }

    goto LABEL_16;
  }

  if (v2 > 5)
  {
    if (v2 == 6)
    {
      v4 = *(*(a1 + 8) + 8 * *(a2 + 16));
      if (!v4)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v4 = *(*(a1 + 8) + 8 * (*(a2 + 16) + *a1));
      if (!v4)
      {
        goto LABEL_21;
      }
    }

    v7 = *(*v4 + 136);
    if (v7 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v4 = 0;
    }

    v9 = v4;
    if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      Int = mlir::IntegerAttr::getInt(&v9);
      goto LABEL_23;
    }

LABEL_21:
    LOBYTE(Int) = 0;
    v6 = 0;
    return v6 | Int;
  }

  if (v2 != 4)
  {
    Int = *(a2 + 16);
LABEL_23:
    v6 = Int & 0xFFFFFFFFFFFFFF00;
    return v6 | Int;
  }

  v9 = a1;
LABEL_16:
  v6 = Int & 0xFFFFFFFFFFFFFF00;
  return v6 | Int;
}

unint64_t anonymous namespace::AffineExprConstantFolder::constantFoldBinExpr(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  {
    v13 = a3(a4, v10, v11);
    v14 = v13 & 0xFFFFFFFFFFFFFF00;
    v15 = v13;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  return v14 | v15;
}

uint64_t llvm::function_ref<std::optional<long long> ()(long long,long long)>::callback_fn<anonymous namespace::AffineExprConstantFolder::constantFoldImpl(mlir::AffineExpr)::{lambda(long long,long long)#3}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 0)
  {
    return (a3 & ((a2 % a3) >> 63)) + a2 % a3;
  }

  result = 0;
  *(*a1 + 24) = 1;
  return result;
}

uint64_t llvm::function_ref<std::optional<long long> ()(long long,long long)>::callback_fn<anonymous namespace::AffineExprConstantFolder::constantFoldImpl(mlir::AffineExpr)::{lambda(long long,long long)#4}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (a2)
    {
      if ((a3 ^ a2) < 0)
      {
        return (((a3 >> 63) | 1) + a2) / a3 - 1;
      }

      else
      {
        return a2 / a3;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    *(*a1 + 24) = 1;
  }

  return result;
}

uint64_t llvm::function_ref<std::optional<long long> ()(long long,long long)>::callback_fn<anonymous namespace::AffineExprConstantFolder::constantFoldImpl(mlir::AffineExpr)::{lambda(long long,long long)#5}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (a2)
    {
      if ((a3 ^ a2) < 0)
      {
        return a2 / a3;
      }

      else
      {
        if (a3 < 0)
        {
          v3 = a2 + 1;
        }

        else
        {
          v3 = a2 - 1;
        }

        return v3 / a3 + 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    *(*a1 + 24) = 1;
  }

  return result;
}

void llvm::SmallVectorTemplateBase<mlir::AffineMap,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

char *llvm::SmallVectorImpl<mlir::AffineExpr>::insert<mlir::AffineExpr const*,void>(uint64_t a1, uint64_t a2, uint64_t *__src, uint64_t *a4)
{
  v5 = __src;
  v7 = *a1;
  v8 = a2 - *a1;
  v9 = *(a1 + 8);
  if (*a1 + 8 * v9 == a2)
  {
    llvm::SmallVectorImpl<mlir::AffineExpr>::append<mlir::AffineExpr const*,void>(a1, __src, a4);
    return (*a1 + v8);
  }

  v10 = a4 - __src;
  v11 = a4 - __src;
  if (v9 + v11 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v9 + v11, 8);
    v7 = *a1;
    v9 = *(a1 + 8);
  }

  v12 = (v7 + v8);
  v13 = 8 * v9;
  v14 = (v7 + 8 * v9);
  v15 = 8 * v9 - v8;
  v16 = v15 >> 3;
  if (v15 >> 3 < v11)
  {
    v17 = v9 + (v10 >> 3);
    *(a1 + 8) = v17;
    if (v13 != v8)
    {
      memcpy((v7 + 8 * v17 - 8 * v16), v12, v15);
      v18 = v12;
      do
      {
        v19 = *v5++;
        *v18++ = v19;
        --v16;
      }

      while (v16);
    }

    if (v5 != a4)
    {
      memcpy(v14, v5, a4 - v5);
    }

    return v12;
  }

  llvm::SmallVectorImpl<mlir::AffineExpr>::append<std::move_iterator<mlir::AffineExpr*>,void>(a1, &v14[-8 * v11], (v7 + 8 * v9));
  if (&v14[-8 * v11] != v12)
  {
    memmove(&v12[8 * v11], v12, &v14[-8 * v11] - v12);
  }

  if (a4 == v5)
  {
    return v12;
  }

  return memmove(v12, v5, a4 - v5);
}

void llvm::SmallVectorImpl<mlir::AffineExpr>::append<std::move_iterator<mlir::AffineExpr*>,void>(uint64_t a1, char *a2, char *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - a2) >> 3);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    LODWORD(v7) = *(a1 + 8);
  }

  if (a3 != v4)
  {
    v9 = (*a1 + 8 * v7);
    do
    {
      v10 = *v4;
      v4 += 8;
      *v9++ = v10;
    }

    while (v4 != a3);
  }

  *(a1 + 8) = v7 + (v6 >> 3);
}

uint64_t *std::__unique[abi:nn200100]<std::_ClassicAlgPolicy,mlir::AffineExpr *,mlir::AffineExpr *,std::__equal_to &>(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    ++a1;
    while (a1 != a2)
    {
      v3 = *(a1 - 1);
      v2 = *a1++;
      if (v3 == v2)
      {
        a1 -= 2;
        goto LABEL_7;
      }
    }
  }

  v4 = a2;
  if (a1 != a2)
  {
LABEL_7:
    v5 = a1 + 2;
    if (a1 + 2 != a2)
    {
      v6 = *a1;
      do
      {
        v7 = v6;
        v6 = *v5;
        if (v7 != *v5)
        {
          a1[1] = v6;
          ++a1;
        }

        ++v5;
      }

      while (v5 != a2);
    }

    return a1 + 1;
  }

  return v4;
}

uint64_t **llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<void mlir::getMaxDimAndSymbol<llvm::ArrayRef<mlir::AffineExpr>>(llvm::ArrayRef<llvm::ArrayRef<mlir::AffineExpr>>,long long &,long long &)::{lambda(mlir::AffineExpr)#1}>(uint64_t **result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!a2 || v2 != 6)
  {
    if (!a2 || v2 != 7)
    {
      return result;
    }

    ++result;
  }

  v3 = *(a2 + 16);
  if (**result > v3)
  {
    v3 = **result;
  }

  **result = v3;
  return result;
}

void llvm::SmallVectorImpl<mlir::AffineExpr>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 8);
        v2 = *(a1 + 8);
      }

      if (a2 != v2)
      {
        bzero((*a1 + 8 * v2), 8 * (a2 - v2));
      }
    }

    *(a1 + 8) = a2;
  }
}

uint64_t mlir::AsmParser::parseTypeList(uint64_t a1, uint64_t a2)
{
  v3[0] = a1;
  v3[1] = a2;
  return (*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::AsmParser::parseTypeList(llvm::SmallVectorImpl<mlir::Type> &)::$_0>, v3, 0, 0);
}

llvm::raw_ostream *mlir::OpAsmPrinter::printFunctionalType(mlir::OpAsmPrinter *this, mlir::Operation *a2)
{
  result = (*(*this + 16))(this);
  v5 = result;
  v6 = *(result + 4);
  if (v6 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 40);
  }

  else
  {
    *(result + 4) = v6 + 1;
    *v6 = 40;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v7 = *(a2 + 17);
    if (v7)
    {
      v8 = *(a2 + 9);
      v9 = *(v8 + 24);
      v10 = v9 ? *(v9 + 8) & 0xFFFFFFFFFFFFFFF8 : 0;
      result = (*(*this + 32))(this, v10);
      if (v7 != 1)
      {
        v11 = v7 - 1;
        v12 = v8 + 56;
        do
        {
          v13 = *(v5 + 4);
          if (*(v5 + 3) - v13 > 1uLL)
          {
            *v13 = 8236;
            *(v5 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v5, ", ", 2uLL);
          }

          if (*v12)
          {
            v14 = *(*v12 + 8) & 0xFFFFFFFFFFFFFFF8;
          }

          else
          {
            v14 = 0;
          }

          result = (*(*this + 32))(this, v14);
          v12 += 32;
          --v11;
        }

        while (v11);
      }
    }
  }

  v15 = *(v5 + 4);
  if ((*(v5 + 3) - v15) > 4)
  {
    *(v15 + 4) = 32;
    *v15 = 1043144745;
    *(v5 + 4) += 5;
  }

  else
  {
    result = llvm::raw_ostream::write(v5, ") -> ", 5uLL);
  }

  if (*(a2 + 9) != 1 || (v16 = *(a2 - 1) & 0xFFFFFFFFFFFFFFF8) != 0 && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v18 = *(v5 + 4);
    if (v18 >= *(v5 + 3))
    {
      result = llvm::raw_ostream::write(v5, 40);
    }

    else
    {
      *(v5 + 4) = v18 + 1;
      *v18 = 40;
    }

    v19 = *(a2 + 9);
    if (v19)
    {
      v20 = a2 - 16;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      result = (*(*this + 32))(this, *(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
      if (v19 != 1)
      {
        v21 = v20 - 24;
        for (i = 1; i != v19; ++i)
        {
          v23 = *(v5 + 4);
          if (*(v5 + 3) - v23 > 1uLL)
          {
            *v23 = 8236;
            *(v5 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v5, ", ", 2uLL);
          }

          v24 = *(a2 - 1) & 7;
          v25 = (5 - v24);
          if (v25 >= i)
          {
            v26 = &v20[-16 * i];
          }

          else
          {
            v26 = &v21[8 * v25];
          }

          if (v24 == 6)
          {
            v27 = a2 - 24 * i - 16;
          }

          else
          {
            v27 = v26;
          }

          result = (*(*this + 32))(this, *(v27 + 1) & 0xFFFFFFFFFFFFFFF8);
          v21 -= 24;
        }
      }
    }

    v28 = *(v5 + 4);
    if (v28 >= *(v5 + 3))
    {

      return llvm::raw_ostream::write(v5, 41);
    }

    else
    {
      *(v5 + 4) = v28 + 1;
      *v28 = 41;
    }
  }

  else
  {
    v17 = *(*this + 32);

    return v17(this, v16);
  }

  return result;
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *a1, char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);
  }

  else
  {
    v4 = 0;
  }

  return llvm::raw_ostream::operator<<(a1, __s, v4);
}

BOOL mlir::OpAsmDialectInterface::parseResource(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  (*(*a2 + 24))(&v15, a2);
  if (v15)
  {
    mlir::Diagnostic::operator<<<25ul>(v16, "unknown 'resource' key '");
  }

  v4 = (*(*a2 + 16))(a2);
  if (v15)
  {
    v14 = 261;
    v12 = v4;
    v13 = v5;
    mlir::Diagnostic::operator<<(v16, &v12);
    if (v15)
    {
      mlir::Diagnostic::operator<<<16ul>(v16, "' for dialect '");
      if (v15)
      {
        v6 = *(a1 + 8);
        v8 = *(v6 + 8);
        v7 = *(v6 + 16);
        v14 = 261;
        v12 = v8;
        v13 = v7;
        mlir::Diagnostic::operator<<(v16, &v12);
        if (v15)
        {
          mlir::Diagnostic::operator<<<2ul>(v16, "'");
        }
      }
    }
  }

  v9 = v16[192];
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
  v10 = *MEMORY[0x277D85DE8];
  return (v9 & 1) == 0;
}

mlir::OpPrintingFlags *mlir::OpPrintingFlags::OpPrintingFlags(mlir::OpPrintingFlags *this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 4) = 100;
  *(this + 20) &= 0xFE00u;
  if (atomic_load(clOptions))
  {
    if (!atomic_load_explicit(clOptions, memory_order_acquire))
    {
    }

    if (*(clOptions[0] + 200))
    {
      if (!atomic_load_explicit(clOptions, memory_order_acquire))
      {
      }

      v3 = *(clOptions[0] + 312);
      if ((*(this + 8) & 1) == 0)
      {
        *(this + 8) = 1;
      }

      *this = v3;
    }

    if (!atomic_load_explicit(clOptions, memory_order_acquire))
    {
    }

    if (*(clOptions[0] + 8))
    {
      if (!atomic_load_explicit(clOptions, memory_order_acquire))
      {
      }

      *(this + 4) = *(clOptions[0] + 120);
    }

    if (!atomic_load_explicit(clOptions, memory_order_acquire))
    {
    }

    if (*(clOptions[0] + 384))
    {
      if (!atomic_load_explicit(clOptions, memory_order_acquire))
      {
      }

      v4 = *(clOptions[0] + 496);
      if ((*(this + 24) & 1) == 0)
      {
        *(this + 24) = 1;
      }

      *(this + 2) = v4;
    }

    if (!atomic_load_explicit(clOptions, memory_order_acquire))
    {
    }

    *(this + 20) = *(this + 20) & 0xFFFE | *(clOptions[0] + 680);
    if (!atomic_load_explicit(clOptions, memory_order_acquire))
    {
    }

    if (*(clOptions[0] + 864))
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *(this + 20) = *(this + 20) & 0xFFFD | v5;
    if (!atomic_load_explicit(clOptions, memory_order_acquire))
    {
    }

    if (*(clOptions[0] + 1048))
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *(this + 20) = *(this + 20) & 0xFFFB | v6;
    if (!atomic_load_explicit(clOptions, memory_order_acquire))
    {
    }

    if (*(clOptions[0] + 1232))
    {
      v7 = 16;
    }

    else
    {
      v7 = 0;
    }

    *(this + 20) = *(this + 20) & 0xFFEF | v7;
    if (!atomic_load_explicit(clOptions, memory_order_acquire))
    {
    }

    if (*(clOptions[0] + 1416))
    {
      v8 = 32;
    }

    else
    {
      v8 = 0;
    }

    *(this + 20) = *(this + 20) & 0xFFDF | v8;
    if (!atomic_load_explicit(clOptions, memory_order_acquire))
    {
    }

    if (*(clOptions[0] + 1600))
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    *(this + 20) = *(this + 20) & 0xFFF7 | v9;
    if (!atomic_load_explicit(clOptions, memory_order_acquire))
    {
    }

    if (*(clOptions[0] + 1784))
    {
      v10 = 64;
    }

    else
    {
      v10 = 0;
    }

    *(this + 20) = *(this + 20) & 0xFFBF | v10;
    if (!atomic_load_explicit(clOptions, memory_order_acquire))
    {
    }

    if (*(clOptions[0] + 1968))
    {
      v11 = 128;
    }

    else
    {
      v11 = 0;
    }

    *(this + 20) = *(this + 20) & 0xFF7F | v11;
    if (!atomic_load_explicit(clOptions, memory_order_acquire))
    {
    }

    if (*(clOptions[0] + 2152))
    {
      v12 = 256;
    }

    else
    {
      v12 = 0;
    }

    *(this + 20) = *(this + 20) & 0xFEFF | v12;
  }

  return this;
}

uint64_t mlir::OpPrintingFlags::shouldElideElementsAttr(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*(a1 + 8) == 1)
  {
    v4 = *a1;
    v5 = (*(a3 + 16))(a3);
    v7 = (*(v6 + 24))(v6, v5);
    if (v8)
    {
      v9 = 8 * v8;
      v10 = 1;
      do
      {
        v11 = *v7++;
        v10 *= v11;
        v9 -= 8;
      }

      while (v9);
    }

    else
    {
      v10 = 1;
    }

    if (v4 >= v10)
    {
      v12 = 0;
    }

    else
    {
      v13 = *(*a2 + 136);
      if (v13 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
      {
        v12 = a2[24] ^ 1;
      }

      else
      {
        v12 = 1;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t mlir::FallbackAsmResourceMap::getParserFor(uint64_t a1, void *a2, const unsigned __int8 *a3)
{
  if (a2)
  {
    std::string::basic_string[abi:nn200100](__p, a2, a3);
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v7 = 0;
  }

  v4 = llvm::MapVector<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>,llvm::StringMap<unsigned int,llvm::MallocAllocator>,llvm::SmallVector<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,0u>>::operator[](a1, __p, a3);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  result = *v4;
  if (!*v4)
  {
    operator new();
  }

  return result;
}

uint64_t llvm::MapVector<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>,llvm::StringMap<unsigned int,llvm::MallocAllocator>,llvm::SmallVector<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,0u>>::operator[](uint64_t a1, uint64_t a2, const unsigned __int8 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v22 = __p;
  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  v6 = &v22;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = __p.__r_.__value_.__r.__words[0];
  }

  v23 = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  __p.__r_.__value_.__r.__words[0] = v6;
  __p.__r_.__value_.__l.__size_ = size;
  LODWORD(__p.__r_.__value_.__r.__words[2]) = 0;
  v7 = *llvm::StringMap<unsigned int,llvm::MallocAllocator>::insert(a1, &__p, a3);
  if (v8)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    v21 = 0;
    v10 = *(a1 + 32);
    v11 = *(a1 + 24);
    p_p = &__p;
    if (v10 >= *(a1 + 36))
    {
      if (v11 <= &__p && v11 + 32 * v10 > &__p)
      {
        v19 = &__p - v11;
        llvm::SmallVectorTemplateBase<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,false>::grow(a1 + 24, v10 + 1);
        v11 = *(a1 + 24);
        p_p = &v19[v11];
      }

      else
      {
        llvm::SmallVectorTemplateBase<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,false>::grow(a1 + 24, v10 + 1);
        v11 = *(a1 + 24);
        p_p = &__p;
      }
    }

    v13 = v11 + 32 * *(a1 + 32);
    v14 = *&p_p->__r_.__value_.__l.__data_;
    *(v13 + 16) = *(&p_p->__r_.__value_.__l + 2);
    *v13 = v14;
    p_p->__r_.__value_.__r.__words[0] = 0;
    p_p->__r_.__value_.__l.__size_ = 0;
    data = p_p[1].__r_.__value_.__l.__data_;
    p_p->__r_.__value_.__r.__words[2] = 0;
    p_p[1].__r_.__value_.__r.__words[0] = 0;
    *(v13 + 24) = data;
    ++*(a1 + 32);
    v16 = v21;
    v21 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v9 = *(a1 + 32) - 1;
    *(v7 + 8) = v9;
  }

  else
  {
    v9 = *(v7 + 8);
  }

  v17 = *(a1 + 24);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  return v17 + 32 * v9 + 24;
}

uint64_t mlir::FallbackAsmResourceMap::getPrinters@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(this + 32))
  {
    v2 = *(this + 24) + 24;
    if (*(*v2 + 31) >= 0)
    {
      v3 = *v2 + 8;
    }

    else
    {
      v3 = *(*v2 + 8);
    }

    v4 = *(*v2 + 16);
    operator new();
  }

  return this;
}

uint64_t mlir::FallbackAsmResourceMap::ResourceCollection::parseResource(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 32))(a2);
  switch(v4)
  {
    case 2:
      (*(*a2 + 48))(__p, a2);
      if (v30 == 1)
      {
        v18 = (*(*a2 + 16))(a2);
        v25 = v18;
        v26 = v19;
        v20 = *(a1 + 40);
        if (v20 >= *(a1 + 44))
        {
          llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::growAndEmplaceBack<llvm::StringRef,std::string>(a1 + 32, &v25, __p);
        }

        else
        {
          v21 = v18;
          v22 = (*(a1 + 32) + 96 * v20);
          v33 = *__p;
          v34 = v29;
          __p[0] = 0;
          __p[1] = 0;
          v29 = 0;
          v36 = 2;
          mlir::FallbackAsmResourceMap::OpaqueAsmResource::OpaqueAsmResource(v22, v21, v19, &v33);
          if (v36 != -1)
          {
            (*(&off_286E775A8 + v36))(&v27, &v33);
          }

          ++*(a1 + 40);
        }

        if ((v30 & 1) != 0 && SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        break;
      }

      goto LABEL_25;
    case 1:
      v11 = (*(*a2 + 40))(a2);
      LOWORD(v25) = v11;
      if ((v11 & 0x100) != 0)
      {
        v12 = v11;
        v13 = (*(*a2 + 16))(a2);
        __p[0] = v13;
        __p[1] = v14;
        v15 = *(a1 + 40);
        if (v15 >= *(a1 + 44))
        {
          llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::growAndEmplaceBack<llvm::StringRef,BOOL &>(a1 + 32, __p, &v25);
        }

        else
        {
          v16 = v13;
          v17 = (*(a1 + 32) + 96 * v15);
          LOBYTE(v33) = v12;
          v36 = 1;
          mlir::FallbackAsmResourceMap::OpaqueAsmResource::OpaqueAsmResource(v17, v16, v14, &v33);
          if (v36 != -1)
          {
            (*(&off_286E775A8 + v36))(&v27, &v33);
          }

          ++*(a1 + 40);
        }

        break;
      }

      goto LABEL_25;
    case 0:
      (*(*a2 + 56))(__p, a2, llvm::function_ref<mlir::AsmResourceBlob ()(unsigned long,unsigned long)>::callback_fn<mlir::AsmParsedResourceEntry::parseAsBlob(void)::{lambda(unsigned long,unsigned long)#1}>, &v33);
      if (v32 == 1)
      {
        v5 = (*(*a2 + 16))(a2);
        v25 = v5;
        v26 = v6;
        v7 = *(a1 + 40);
        if (v7 >= *(a1 + 44))
        {
          llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::growAndEmplaceBack<llvm::StringRef,mlir::AsmResourceBlob>(a1 + 32, &v25, __p);
        }

        else
        {
          v8 = v5;
          v9 = v6;
          v10 = (*(a1 + 32) + 96 * v7);
          v33 = *__p;
          v34 = v29;
          llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(v35, &v30);
          v35[32] = v31;
          v36 = 0;
          mlir::FallbackAsmResourceMap::OpaqueAsmResource::OpaqueAsmResource(v10, v8, v9, &v33);
          if (v36 != -1)
          {
            (*(&off_286E775A8 + v36))(&v27, &v33);
          }

          ++*(a1 + 40);
        }

        if (v32)
        {
          mlir::AsmResourceBlob::~AsmResourceBlob(__p);
        }

        break;
      }

LABEL_25:
      result = 0;
      goto LABEL_26;
  }

  result = 1;
LABEL_26:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::AsmState::AsmState(uint64_t a1, mlir::Operation *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v17 = *a3;
  v18 = *(a3 + 16);
  v19 = *(a3 + 32);
  v4 = *(a3 + 40);
  v15 = *(a3 + 42);
  v16 = *(a3 + 46);
  if ((v4 & 0x14) != 0)
  {
    v5 = *(a3 + 16);
    v21 = *a3;
    v22 = v5;
    v23 = *(a3 + 32);
    v24 = v4;
    v25 = *(a3 + 42);
    v26 = *(a3 + 46);
  }

  else
  {
    {
      v7 = *llvm::get_threadid(void)::Self();
    }

    else
    {
      llvm::get_threadid(void)::$_0::operator()();
      v13 = llvm::get_threadid(void)::Self();
      *v13 = v14;
    }

    v20 = v7;
    v8 = *(***(a2 + 3) + 32);
    v9 = *v8;
    *&v21 = &v20;
    *(&v22 + 1) = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::CallbacksHolder<verifyOpAndAdjustFlags(mlir::Operation *,mlir::OpPrintingFlags)::$_0,verifyOpAndAdjustFlags(mlir::Operation *,mlir::OpPrintingFlags)::$_0,void>::Callbacks + 2;
    v10 = mlir::DiagnosticEngine::registerHandler((v9 + 32), &v21);
    llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::~UniqueFunctionBase(&v21);
    LOBYTE(v21) = 1;
    v12 = v4 | 4;
    if (v11)
    {
      v12 = v4;
    }

    v21 = v17;
    v22 = v18;
    v23 = v19;
    v24 = v12;
    v25 = v15;
    v26 = v16;
    if (v10)
    {
      mlir::DiagnosticEngine::eraseHandler((*v8 + 32), v10);
    }
  }

  operator new();
}

void mlir::AsmState::attachFallbackResourcePrinter(mlir::AsmState *this, mlir::FallbackAsmResourceMap *a2)
{
  mlir::FallbackAsmResourceMap::getPrinters(a2, v8);
  v3 = v8[0];
  v4 = v8[1];
  while (v3 != v4)
  {
    v5 = *v3;
    *v3 = 0;
    v7 = v5;
    llvm::SmallVectorImpl<std::unique_ptr<mlir::AsmResourcePrinter>>::emplace_back<std::unique_ptr<mlir::AsmResourcePrinter>>((*this + 56), &v7);
    v6 = v7;
    v7 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    ++v3;
  }

  v9 = v8;
  std::vector<std::unique_ptr<mlir::AsmResourcePrinter>>::__destroy_vector::operator()[abi:nn200100](&v9);
}

void mlir::AsmState::~AsmState(mlir::detail::AsmStateImpl **this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    mlir::detail::AsmStateImpl::~AsmStateImpl(v2);
    MEMORY[0x25F891040]();
  }
}

uint64_t llvm::SmallVectorImpl<std::unique_ptr<mlir::AsmResourcePrinter>>::emplace_back<std::unique_ptr<mlir::AsmResourcePrinter>>(unsigned int *a1, uint64_t *a2)
{
  v2 = a1[2];
  if (v2 >= a1[3])
  {
    return llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmResourcePrinter>,false>::growAndEmplaceBack<std::unique_ptr<mlir::AsmResourcePrinter>>(a1, a2);
  }

  v3 = *a1;
  v4 = *a2;
  *a2 = 0;
  *(v3 + 8 * v2) = v4;
  v5 = v2 + 1;
  a1[2] = v5;
  return v3 + 8 * v5 - 8;
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printTrailingLocation(llvm::raw_ostream *result, uint64_t a2, int a3)
{
  if (*(result + 28))
  {
    v5 = result;
    v6 = *result;
    v7 = *(v6 + 4);
    if (*(v6 + 3) == v7)
    {
      llvm::raw_ostream::write(v6, " ", 1uLL);
    }

    else
    {
      *v7 = 32;
      ++*(v6 + 4);
    }

    return mlir::AsmPrinter::Impl::printLocation(v5, a2, a3);
  }

  return result;
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printLocation(llvm::raw_ostream **a1, uint64_t a2, int a3)
{
  if ((a1[7] & 2) == 0)
  {
    v6 = *a1;
    v7 = *(*a1 + 4);
    if (*(*a1 + 3) - v7 > 3uLL)
    {
      *v7 = 677605228;
      *(v6 + 4) += 4;
      if (!a3)
      {
LABEL_10:
        mlir::AsmPrinter::Impl::printLocationInternal(a1, a2, 0, 1);
LABEL_11:
        result = *a1;
        v9 = *(*a1 + 4);
        if (v9 >= *(*a1 + 3))
        {

          return llvm::raw_ostream::write(result, 41);
        }

        else
        {
          *(result + 4) = v9 + 1;
          *v9 = 41;
        }

        return result;
      }
    }

    else
    {
      llvm::raw_ostream::write(v6, "loc(", 4uLL);
      if (!a3)
      {
        goto LABEL_10;
      }
    }

    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return mlir::AsmPrinter::Impl::printLocationInternal(a1, a2, 1, 1);
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printLocationInternal(uint64_t a1, uint64_t a2, char a3, char a4)
{
  while (1)
  {
    while (1)
    {
      if ((a4 & 1) == 0)
      {
        if (result)
        {
          return result;
        }
      }

      v8 = *(*a2 + 136);
      v9 = v8 != &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id || a2 == 0;
      if (v9)
      {
        break;
      }

      a4 = 0;
      a2 = *(a2 + 24);
    }

    if (v8 == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
    {
      v17 = *a1;
      if (a3)
      {
        v18 = "[unknown]";
      }

      else
      {
        v18 = "unknown";
      }

      if (a3)
      {
        v19 = 9;
      }

      else
      {
        v19 = 7;
      }

      goto LABEL_46;
    }

    if (v8 == &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id)
    {
      if (a3)
      {
        llvm::raw_ostream::operator<<(*a1, *((*(a2 + 8) & 0xFFFFFFFFFFFFFFF8) + 16), *((*(a2 + 8) & 0xFFFFFFFFFFFFFFF8) + 24));
      }

      else
      {
        mlir::AsmPrinter::Impl::printEscapedString(a1, *((*(a2 + 8) & 0xFFFFFFFFFFFFFFF8) + 16), *((*(a2 + 8) & 0xFFFFFFFFFFFFFFF8) + 24));
      }

      v26 = *(a2 + 8);
      if ((v26 & 4) != 0)
      {
        v28 = 28;
      }

      else
      {
        if ((v26 & 2) == 0)
        {
          v27 = 0;
LABEL_63:
          v32 = *(a2 + 8) & 6;
          if (v32)
          {
            v33 = *(a2 + 24);
          }

          else
          {
            v33 = 0;
          }

          v34 = *(a2 + 16);
          if (v27 != v33)
          {
            goto LABEL_72;
          }

          v35 = 16;
          if (v32 == 6)
          {
            v35 = 32;
          }

          if (v34 == *(a2 + v35))
          {
            v36 = *a1;
            v37 = *(v36 + 4);
            if (v37 >= *(v36 + 3))
            {
              llvm::raw_ostream::write(v36, 58);
            }

            else
            {
              *(v36 + 4) = v37 + 1;
              *v37 = 58;
            }

            write_unsigned<unsigned long long>(v36, *(a2 + 16), 0, 0, 0);
            v65 = *(v36 + 4);
            if (v65 >= *(v36 + 3))
            {
              llvm::raw_ostream::write(v36, 58);
            }

            else
            {
              *(v36 + 4) = v65 + 1;
              *v65 = 58;
            }

            if ((*(a2 + 8) & 6) != 0)
            {
              goto LABEL_135;
            }
          }

          else
          {
LABEL_72:
            v9 = v32 == 6;
            v38 = 16;
            if (v9)
            {
              v38 = 32;
            }

            v39 = *(a2 + v38);
            v36 = *a1;
            v41 = *(v36 + 3);
            v40 = *(v36 + 4);
            if (v34 == v39)
            {
              if (v40 >= v41)
              {
                llvm::raw_ostream::write(v36, 58);
              }

              else
              {
                *(v36 + 4) = v40 + 1;
                *v40 = 58;
              }

              write_unsigned<unsigned long long>(v36, *(a2 + 16), 0, 0, 0);
              v42 = *(v36 + 4);
              if (v42 >= *(v36 + 3))
              {
                llvm::raw_ostream::write(v36, 58);
              }

              else
              {
                *(v36 + 4) = v42 + 1;
                *v42 = 58;
              }

              if ((*(a2 + 8) & 6) != 0)
              {
                v44 = *(a2 + 24);
              }

              else
              {
                v44 = 0;
              }

              write_unsigned<unsigned long long>(v36, v44, 0, 0, 0);
              v58 = *(v36 + 4);
              if ((*(v36 + 3) - v58) > 4)
              {
                *(v58 + 4) = 58;
                *v58 = 544175136;
                *(v36 + 4) += 5;
              }

              else
              {
                v36 = llvm::raw_ostream::write(v36, " to :", 5uLL);
              }
            }

            else
            {
              if (v40 >= v41)
              {
                llvm::raw_ostream::write(v36, 58);
              }

              else
              {
                *(v36 + 4) = v40 + 1;
                *v40 = 58;
              }

              write_unsigned<unsigned long long>(v36, *(a2 + 16), 0, 0, 0);
              v43 = *(v36 + 4);
              if (v43 >= *(v36 + 3))
              {
                llvm::raw_ostream::write(v36, 58);
              }

              else
              {
                *(v36 + 4) = v43 + 1;
                *v43 = 58;
              }

              if ((*(a2 + 8) & 6) != 0)
              {
                v45 = *(a2 + 24);
              }

              else
              {
                v45 = 0;
              }

              write_unsigned<unsigned long long>(v36, v45, 0, 0, 0);
              v59 = *(v36 + 4);
              if (*(v36 + 3) - v59 > 3uLL)
              {
                *v59 = 544175136;
                *(v36 + 4) += 4;
              }

              else
              {
                v36 = llvm::raw_ostream::write(v36, " to ", 4uLL);
              }

              v60 = 16;
              if ((~*(a2 + 8) & 6) == 0)
              {
                v60 = 32;
              }

              write_unsigned<unsigned long long>(v36, *(a2 + v60), 0, 0, 0);
              v61 = *(v36 + 4);
              if (v61 >= *(v36 + 3))
              {
                llvm::raw_ostream::write(v36, 58);
              }

              else
              {
                *(v36 + 4) = v61 + 1;
                *v61 = 58;
              }
            }

            v62 = *(a2 + 8);
            if ((v62 & 4) != 0)
            {
              v64 = 28;
LABEL_136:
              v63 = *(a2 + v64);
              goto LABEL_137;
            }

            if ((v62 & 2) != 0)
            {
LABEL_135:
              v64 = 24;
              goto LABEL_136;
            }
          }

          v63 = 0;
LABEL_137:

          return write_unsigned<unsigned long long>(v36, v63, 0, 0, 0);
        }

        v28 = 24;
      }

      v27 = *(a2 + v28);
      goto LABEL_63;
    }

    if (v8 == &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id && a2 != 0)
    {
      result = mlir::AsmPrinter::Impl::printEscapedString(a1, *(*(a2 + 8) + 16), *(*(a2 + 8) + 24));
      v20 = *(a2 + 16);
      if (*(*v20 + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
      {
        return result;
      }

      v21 = *a1;
      v22 = *(*a1 + 32);
      if (v22 >= *(*a1 + 24))
      {
        llvm::raw_ostream::write(v21, 40);
      }

      else
      {
        *(v21 + 4) = v22 + 1;
        *v22 = 40;
      }

      mlir::AsmPrinter::Impl::printLocationInternal(a1, v20, a3 & 1, 0);
      result = *a1;
      v29 = *(*a1 + 32);
      if (v29 < *(*a1 + 24))
      {
        *(result + 4) = v29 + 1;
        v30 = 41;
LABEL_107:
        *v29 = v30;
        return result;
      }

      v31 = 41;
      goto LABEL_110;
    }

    if (v8 != &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id || a2 == 0)
    {
      break;
    }

    v14 = a2 + 8;
    v12 = *(a2 + 8);
    v13 = *(v14 + 8);
    if ((a3 & 1) == 0)
    {
      llvm::raw_ostream::operator<<(*a1, "callsite(", 9uLL);
      mlir::AsmPrinter::Impl::printLocationInternal(a1, v12, 0, 0);
      llvm::raw_ostream::operator<<(*a1, " at ", 4uLL);
      mlir::AsmPrinter::Impl::printLocationInternal(a1, v13, 0, 0);
      v17 = *a1;
      v18 = ")";
      v19 = 1;
LABEL_46:

      return llvm::raw_ostream::operator<<(v17, v18, v19);
    }

    mlir::AsmPrinter::Impl::printLocationInternal(a1, v12, 1, 0);
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id)
    {
      v15 = *a1;
      if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v15 = *a1;
    }

    ++*(a1 + 64);
    v16 = *(v15 + 4);
    if (v16 >= *(v15 + 3))
    {
      v15 = llvm::raw_ostream::write(v15, 10);
    }

    else
    {
      *(v15 + 4) = v16 + 1;
      *v16 = 10;
    }

LABEL_26:
    llvm::raw_ostream::operator<<(v15, " at ", 4uLL);
    a4 = 0;
    a3 = 1;
    a2 = v13;
  }

  if (v8 == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id && a2)
  {
    if ((a3 & 1) == 0)
    {
      llvm::raw_ostream::operator<<(*a1, "fused", 5uLL);
    }

    v23 = *(a2 + 24);
    if (v23)
    {
      v24 = *a1;
      v25 = *(*a1 + 32);
      if (v25 >= *(*a1 + 24))
      {
        llvm::raw_ostream::write(v24, 60);
      }

      else
      {
        *(v24 + 4) = v25 + 1;
        *v25 = 60;
      }

      mlir::AsmPrinter::Impl::printAttribute(a1, v23, 0);
      v46 = *a1;
      v47 = *(*a1 + 32);
      if (v47 >= *(*a1 + 24))
      {
        llvm::raw_ostream::write(v46, 62);
      }

      else
      {
        *(v46 + 4) = v47 + 1;
        *v47 = 62;
      }
    }

    v48 = *a1;
    v49 = *(*a1 + 32);
    if (v49 >= *(*a1 + 24))
    {
      llvm::raw_ostream::write(v48, 91);
    }

    else
    {
      *(v48 + 4) = v49 + 1;
      *v49 = 91;
    }

    v50 = *(a2 + 16);
    if (v50)
    {
      v51 = *(a2 + 8);
      mlir::AsmPrinter::Impl::printLocationInternal(a1, *v51, a3 & 1, 0);
      if (v50 != 1)
      {
        v52 = 8 * v50;
        v53 = v51 + 1;
        v54 = v52 - 8;
        do
        {
          v55 = *a1;
          v56 = *(*a1 + 32);
          if (*(*a1 + 24) - v56 > 1uLL)
          {
            *v56 = 8236;
            *(v55 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v55, ", ", 2uLL);
          }

          v57 = *v53++;
          mlir::AsmPrinter::Impl::printLocationInternal(a1, v57, a3 & 1, 0);
          v54 -= 8;
        }

        while (v54);
      }
    }

    result = *a1;
    v29 = *(*a1 + 32);
    if (v29 < *(*a1 + 24))
    {
      *(result + 4) = v29 + 1;
      v30 = 93;
      goto LABEL_107;
    }

    v31 = 93;
LABEL_110:

    return llvm::raw_ostream::write(result, v31);
  }

  return mlir::AsmPrinter::Impl::printAttribute(a1, a2, 0);
}

uint64_t anonymous namespace::AliasState::getAlias(uint64_t a1, uint64_t a2, llvm::raw_ostream *a3)
{
  v10 = a2;
  v5 = llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::doFind<void const*>(a1, &v10);
  v6 = v5 == *a1 + 16 * *(a1 + 16) || v5 == 0;
  v7 = (v5 + 8);
  if (v6)
  {
    v7 = (a1 + 32);
  }

  v8 = *v7;
  if (v8 == *(a1 + 32))
  {
    return 0;
  }

  return 1;
}

uint64_t mlir::AsmPrinter::Impl::printResourceHandle(uint64_t a1, void *a2)
{
  v4 = a2[2];
  __p[0] = mlir::detail::TypeIDResolver<mlir::OpAsmDialectInterface,void>::resolveTypeID();
  v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::doFind<mlir::TypeID>((v4 + 48), __p);
  (*(**(v5 + 8) + 40))(__p);
  if (v17 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (v17 >= 0)
  {
    v7 = v17;
  }

  else
  {
    v7 = __p[1];
  }

  printKeywordOrString(v6, v7, *a1);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *(a1 + 8);
  v9 = a2[2];
  v10 = *(v8 + 120);
  v18 = 0;
  v11 = llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>,mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>::LookupBucketFor<mlir::Dialect *>(v10, *(v8 + 136), v9, &v18);
  v12 = v18;
  if ((v11 & 1) == 0)
  {
    __p[0] = v18;
    v13 = *(v8 + 128);
    v14 = *(v8 + 136);
    if (4 * v13 + 4 >= 3 * v14)
    {
      v14 *= 2;
    }

    else if (v14 + ~v13 - *(v8 + 132) > v14 >> 3)
    {
LABEL_12:
      *(v8 + 128) = v13 + 1;
      if (*v12 != -4096)
      {
        --*(v8 + 132);
      }

      *v12 = v9;
      v12[1] = 0;
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = (v12 + 6);
      v12[5] = 0;
      return llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>::insert((v12 + 1), a2);
    }

    llvm::DenseMap<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>::grow(v8 + 120, v14);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>,mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>::LookupBucketFor<mlir::Dialect *>(*(v8 + 120), *(v8 + 136), v9, __p);
    v13 = *(v8 + 128);
    v12 = __p[0];
    goto LABEL_12;
  }

  return llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>::insert((v12 + 1), a2);
}

llvm::raw_ostream *printKeywordOrString(llvm::raw_ostream *a1, size_t a2, llvm::raw_ostream *a3)
{
  if (!a2)
  {
    goto LABEL_21;
  }

  v6 = *a1;
  v7 = MEMORY[0x277D85DE0];
  if ((v6 & 0x80000000) != 0)
  {
    if (!__maskrune(v6, 0x100uLL))
    {
      goto LABEL_6;
    }
  }

  else if ((*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x100) == 0)
  {
LABEL_6:
    if (*a1 == 95)
    {
      goto LABEL_7;
    }

LABEL_21:
    v13 = *(a3 + 4);
    if (*(a3 + 3) == v13)
    {
      llvm::raw_ostream::write(a3, "", 1uLL);
    }

    else
    {
      *v13 = 34;
      ++*(a3 + 4);
    }

    result = llvm::printEscapedString(a1, a2, a3);
    v14 = *(a3 + 4);
    if (v14 >= *(a3 + 3))
    {

      return llvm::raw_ostream::write(a3, 34);
    }

    else
    {
      *(a3 + 4) = v14 + 1;
      *v14 = 34;
    }

    return result;
  }

LABEL_7:
  v8 = a2 - 1;
  if (a2 != 1)
  {
    v9 = a1 + 1;
    do
    {
      v10 = *v9;
      if (v10 < 0)
      {
        if (__maskrune(*v9, 0x500uLL))
        {
          goto LABEL_17;
        }
      }

      else if ((*(v7 + 4 * v10 + 60) & 0x500) != 0)
      {
        goto LABEL_17;
      }

      if (v10 - 36 > 0x3B || ((1 << (v10 - 36)) & 0x800000000000401) == 0)
      {
        goto LABEL_21;
      }

LABEL_17:
      ++v9;
      --v8;
    }

    while (v8);
  }

  return llvm::raw_ostream::operator<<(a3, a1, a2);
}