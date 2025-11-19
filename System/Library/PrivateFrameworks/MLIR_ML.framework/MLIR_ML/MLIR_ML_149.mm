void mlir::detail::TileOffsetRangeImpl::getDynamicTileOffsets(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v19 = a2;
  Context = mlir::AffineExpr::getContext(&v19);
  mlir::delinearize(v19, *(a1 + 128), *(a1 + 136), &v20);
  v6 = *(a1 + 64);
  v7 = v20;
  v8 = v21;
  v23 = v25;
  v24 = 0x600000000;
  if (v21 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (!v21)
  {
    v12 = 0;
    LODWORD(v24) = 0;
    if (v20 == v22)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = v25;
  v10 = v21;
  do
  {
    v11 = *v6++;
    *v9++ = v7[v11];
    --v10;
  }

  while (v10);
  v7 = v20;
  v12 = v24 + v8;
  LODWORD(v24) = v24 + v8;
  if (v20 != v22)
  {
LABEL_7:
    free(v7);
    v12 = v24;
  }

LABEL_8:
  v13 = v23;
  mlir::getAffineConstantExprs(*a1, *(a1 + 8), Context, &v20);
  v14 = v20;
  v15 = v21;
  *a3 = a3 + 16;
  *(a3 + 8) = 0x600000000;
  if (v12 | v15 && v12)
  {
    v16 = 8 * v12;
    do
    {
      v17 = mlir::AffineExpr::operator*(v13, *v14);
      v18 = *(a3 + 8);
      if (v18 >= *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a3 + 8 * v18) = v17;
      ++*(a3 + 8);
      ++v13;
      ++v14;
      v16 -= 8;
    }

    while (v16);
    v14 = v20;
  }

  if (v14 != v22)
  {
    free(v14);
  }

  if (v23 != v25)
  {
    free(v23);
  }
}

void mlir::getReassociationIndicesForReshape(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v23[0] = a1;
  v23[1] = a2;
  v22[0] = a3;
  v22[1] = a4;
  mlir::ShapedType::getShape(v23);
  v7 = v6;
  mlir::ShapedType::getShape(v22);
  v9 = v8;
  Shape = mlir::ShapedType::getShape(v23);
  v12 = v11;
  if (v7 <= v9)
  {
    mlir::ShapedType::getShape(v22);
    if (v12 >= v16)
    {
      *a5 = 0;
      a5[48] = 0;
    }

    else
    {
      v17 = mlir::ShapedType::getShape(v22);
      v19 = v18;
      v20 = mlir::ShapedType::getShape(v23);
      mlir::getReassociationIndicesForCollapse(v17, v19, v20, v21, a5);
    }
  }

  else
  {
    v13 = Shape;
    v14 = mlir::ShapedType::getShape(v22);
    mlir::getReassociationIndicesForCollapse(v13, v12, v14, v15, a5);
  }
}

void mlir::getReassociationIndicesForCollapse(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41[4] = *MEMORY[0x277D85DE8];
  if (a2 <= a4)
  {
    *a5 = 0;
    *(a5 + 48) = 0;
    return;
  }

  v39 = v41;
  v40 = 0x100000000;
  if (a4 >= 2)
  {
    llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow();
  }

  LODWORD(v9) = 0;
  v36 = v38;
  v37 = 0x200000000;
  while (1)
  {
    v10 = v40;
    if (a4 == v40)
    {
      break;
    }

    v11 = *(a3 + 8 * v40);
    v12 = v9;
    if (a2 <= v9)
    {
      v15 = 1;
LABEL_19:
      v17 = *(a1 + 8 * v12);
      if (v17 == 0x8000000000000000)
      {
LABEL_20:
        if (v11 != 0x8000000000000000 || v15 != 1)
        {
          goto LABEL_55;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v13 = 1;
      while (1)
      {
        v14 = *(a1 + 8 * v12);
        v15 = v14 * v13;
        if (v14 == 0x8000000000000000 || v15 >= v11)
        {
          break;
        }

        if (v37 >= HIDWORD(v37))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = (v9 + 1);
        *(v36 + v37) = v12;
        LODWORD(v37) = v37 + 1;
        v12 = v9;
        v13 *= v14;
        if (a2 <= v9)
        {
          goto LABEL_19;
        }
      }

      v15 = v13;
      v17 = *(a1 + 8 * v12);
      if (v17 == 0x8000000000000000)
      {
        goto LABEL_20;
      }
    }

    if (v11 == 0x8000000000000000)
    {
      goto LABEL_55;
    }

LABEL_25:
    if (v17 * v15 != v11)
    {
      goto LABEL_55;
    }

    if (v37 >= HIDWORD(v37))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v36 + v37) = v12;
    LODWORD(v37) = v37 + 1;
    __src = v35;
    v34 = 0x200000000;
    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::growAndEmplaceBack<llvm::SmallVector<long long,2u>>();
    }

    v18 = (v39 + 32 * v40);
    *v18 = v18 + 2;
    v18[1] = 0x200000000;
    if (v18 != &__src)
    {
      v19 = v34;
      if (v34)
      {
        if (__src == v35)
        {
          if (v34 >= 3uLL)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          memcpy(*v18, __src, 8 * v34);
          *(v18 + 2) = v19;
        }

        else
        {
          *v18 = __src;
          v20 = HIDWORD(v34);
          *(v18 + 2) = v19;
          *(v18 + 3) = v20;
          __src = v35;
          HIDWORD(v34) = 0;
        }

        LODWORD(v34) = 0;
      }
    }

    LODWORD(v40) = v40 + 1;
    if (__src != v35)
    {
      free(__src);
    }

    LODWORD(v9) = v9 + 1;
    llvm::SmallVectorImpl<long long>::swap(v39 + 8 * v40 - 8, &v36);
    if (a2 <= v9)
    {
      v10 = v40;
      break;
    }
  }

  if (a4 != v10)
  {
LABEL_55:
    *a5 = 0;
    *(a5 + 48) = 0;
    v27 = v36;
    if (v36 == v38)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  v21 = v9;
  if (a2 > v9)
  {
    v22 = v9 + 1;
    while (1)
    {
      v23 = *(a1 + 8 * v21);
      if (v23 != 0x8000000000000000 && v23 != 1)
      {
        goto LABEL_55;
      }

      if (v40)
      {
        v25 = v39 + 32 * v40;
        v26 = *(v25 - 6);
        if (v26 >= *(v25 - 5))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*(v25 - 4) + 8 * v26) = v21;
        ++*(v25 - 6);
      }

      v21 = v22++;
      if (a2 <= v21)
      {
        LODWORD(v10) = v40;
        break;
      }
    }
  }

  *a5 = a5 + 16;
  *(a5 + 8) = 0x100000000;
  if (v10)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(a5, &v39);
  }

  *(a5 + 48) = 1;
  v27 = v36;
  if (v36 != v38)
  {
LABEL_56:
    free(v27);
  }

LABEL_57:
  v28 = v39;
  if (v40)
  {
    v29 = v39 + 32 * v40 - 16;
    v30 = -32 * v40;
    do
    {
      v31 = *(v29 - 2);
      if (v29 != v31)
      {
        free(v31);
      }

      v29 -= 32;
      v30 += 32;
    }

    while (v30);
    v28 = v39;
  }

  if (v28 != v41)
  {
    free(v28);
  }
}

void mlir::composeReassociationIndices(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40[4] = *MEMORY[0x277D85DE8];
  v38 = v40;
  v39 = 0x100000000;
  if (a2 == a4)
  {
    goto LABEL_42;
  }

  if (a2 < a4)
  {
    v6 = a2;
  }

  else
  {
    v6 = a4;
  }

  if (a2 < a4)
  {
    v7 = a1;
  }

  else
  {
    v7 = a3;
  }

  if (a2 < a4)
  {
    v8 = a3;
  }

  else
  {
    v8 = a1;
  }

  if (a2 < a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = a2;
  }

  if (!v6)
  {
    *a5 = a5 + 16;
    *(a5 + 8) = 0x100000000;
    *(a5 + 48) = 1;
    return;
  }

  v10 = v7 + 32 * v6;
  v11 = 0;
  v12 = (v6 - 1) & 0x7FFFFFFFFFFFFFFLL;
  if (!v12)
  {
    v16 = v7;
    do
    {
LABEL_22:
      v11 += *(v16 + 8);
      v16 += 32;
    }

    while (v16 != v10);
    goto LABEL_23;
  }

  v13 = 0;
  v14 = v12 + 1;
  v15 = (v12 + 1) & 0xFFFFFFFFFFFFFFELL;
  v16 = v7 + 32 * v15;
  v17 = (v7 + 40);
  v18 = v15;
  do
  {
    v19 = *(v17 - 8);
    v20 = *v17;
    v17 += 16;
    v11 += v19;
    v13 += v20;
    v18 -= 2;
  }

  while (v18);
  v11 += v13;
  if (v14 != v15)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (v9 != v11)
  {
LABEL_42:
    *a5 = 0;
    *(a5 + 48) = 0;
    return;
  }

  do
  {
    v21 = *v7;
    v22 = *(v7 + 8);
    v35 = v37;
    v36 = 0x200000000;
    if (v22)
    {
      v23 = 0;
      v24 = 8 * v22;
      do
      {
        v25 = v8 + 32 * *v21;
        v26 = *(v25 + 8);
        if (v26 + v23 > HIDWORD(v36))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v26)
        {
          memcpy(v35 + 8 * v23, *v25, 8 * v26);
          v23 = v36;
        }

        v23 += v26;
        LODWORD(v36) = v23;
        ++v21;
        v24 -= 8;
      }

      while (v24);
    }

    if (v39 >= HIDWORD(v39))
    {
      if (v38 > &v35 || v38 + 32 * v39 <= &v35)
      {
        llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow();
      }

      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow();
    }

    v27 = v38 + 32 * v39;
    *v27 = v27 + 2;
    v27[1] = 0x200000000;
    if (v36)
    {
      llvm::SmallVectorImpl<long long>::operator=(v27, &v35);
    }

    LODWORD(v39) = v39 + 1;
    if (v35 != v37)
    {
      free(v35);
    }

    v7 += 32;
  }

  while (v7 != v10);
  v28 = v39;
  *a5 = a5 + 16;
  *(a5 + 8) = 0x100000000;
  if (v28)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(a5, &v38);
    v29 = v39;
    *(a5 + 48) = 1;
    v30 = v38;
    if (!v29)
    {
      goto LABEL_52;
    }

    v31 = 32 * v29;
    v32 = v38 + v31 - 16;
    v33 = -v31;
    do
    {
      v34 = *(v32 - 2);
      if (v32 != v34)
      {
        free(v34);
      }

      v32 -= 32;
      v33 += 32;
    }

    while (v33);
  }

  else
  {
    *(a5 + 48) = 1;
  }

  v30 = v38;
LABEL_52:
  if (v30 != v40)
  {
    free(v30);
  }
}

void mlir::convertReassociationIndicesToExprs(mlir::MLIRContext *a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[2] = *MEMORY[0x277D85DE8];
  *a4 = a4 + 16;
  *(a4 + 8) = 0x200000000;
  if (a3)
  {
    v5 = a2;
    v7 = &a2[4 * a3];
    do
    {
      v15 = v17;
      v16 = 0x200000000;
      v8 = *(v5 + 2);
      if (v8 >= 3)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (*(v5 + 2))
      {
        v9 = *v5;
        v10 = 8 * v8;
        do
        {
          AffineDimExpr = mlir::getAffineDimExpr(*v9, a1, v8);
          if (v16 >= HIDWORD(v16))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v15 + v16) = AffineDimExpr;
          LODWORD(v16) = v16 + 1;
          v9 += 2;
          v10 -= 8;
        }

        while (v10);
      }

      v12 = *(a4 + 8);
      v13 = *a4;
      if (v12 >= *(a4 + 12))
      {
        if (v13 > &v15 || v13 + 32 * v12 <= &v15)
        {
          llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::grow();
        }

        llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::grow();
      }

      v14 = (v13 + 32 * *(a4 + 8));
      *v14 = v14 + 2;
      v14[1] = 0x200000000;
      if (v16)
      {
        llvm::SmallVectorImpl<unsigned long>::operator=(v14, &v15);
      }

      ++*(a4 + 8);
      if (v15 != v17)
      {
        free(v15);
      }

      v5 += 4;
    }

    while (v5 != v7);
  }
}

uint64_t mlir::getReassociationIndicesAttribute(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v10 = *MEMORY[0x277D85DE8];
  if (((32 * a3) >> 5) >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = 32 * a3;
  if (a3)
  {
    v6 = a2 + v5;
    v7 = v9;
    do
    {
      *v7++ = mlir::Builder::getI64ArrayAttr(a1, *v3, *(v3 + 8));
      v3 += 32;
    }

    while (v3 != v6);
  }

  return mlir::Builder::getArrayAttr(a1, v9, (v5 >> 5));
}

void mlir::convertReassociationMapsToIndices(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13[2] = *MEMORY[0x277D85DE8];
  *a3 = a3 + 16;
  *(a3 + 8) = 0x200000000;
  if (a2)
  {
    v4 = a1;
    v5 = a1 + 32 * a2;
    do
    {
      v11 = v13;
      v12 = 0x200000000;
      v6 = *(v4 + 8);
      if (v6 >= 3)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (*(v4 + 8))
      {
        v7 = *v4;
        v8 = 8 * v6;
        do
        {
          mlir::AffineDimExpr::AffineDimExpr(&v10, *v7);
          Position = mlir::AffineDimExpr::getPosition(&v10);
          if (v12 >= HIDWORD(v12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v11 + v12) = Position;
          LODWORD(v12) = v12 + 1;
          ++v7;
          v8 -= 8;
        }

        while (v8);
      }

      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::push_back(a3, &v11);
      if (v11 != v13)
      {
        free(v11);
      }

      v4 += 32;
    }

    while (v4 != v5);
  }
}

uint64_t mlir::getSymbolLessAffineMaps@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = result;
    v5 = result + 32 * a2;
    v6 = result;
    do
    {
      if (*(v6 + 8))
      {
        mlir::AffineExpr::walk<void>();
      }

      v6 += 32;
    }

    while (v6 != v5);
    *a3 = a3 + 16;
    *(a3 + 8) = 0x400000000;
    if (a2 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    do
    {
      v7 = *v4;
      v8 = *(v4 + 8);
      Context = mlir::AffineExpr::getContext(*v4);
      result = mlir::AffineMap::get(1, 0, v7, v8, Context);
      v10 = *(a3 + 8);
      if (v10 >= *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a3 + 8 * v10) = result;
      ++*(a3 + 8);
      v4 += 32;
    }

    while (v4 != v5);
  }

  else
  {
    *a3 = a3 + 16;
    *(a3 + 8) = 0x400000000;
  }

  return result;
}

uint64_t mlir::isReassociationValid(mlir::AffineMap *a1, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    return 1;
  }

  v5 = a1;
  NumDims = mlir::AffineMap::getNumDims(a1);
  v7 = 0;
  v8 = 0;
  v9 = (v5 + 8 * a2);
  do
  {
    v17 = *v5;
    if (mlir::AffineMap::getNumDims(&v17) != NumDims || mlir::AffineMap::getNumSymbols(&v17))
    {
      goto LABEL_15;
    }

    Results = mlir::AffineMap::getResults(&v17);
    if (v11)
    {
      v12 = Results;
      v13 = 8 * v11;
      while (1)
      {
        v14 = *v12;
        v18 = *v12;
        if (mlir::AffineExpr::getKind(&v18) == 6)
        {
          mlir::AffineDimExpr::AffineDimExpr(&v18, v14);
          v16 = v18;
          if (!v18)
          {
            break;
          }
        }

        else
        {
          mlir::AffineDimExpr::AffineDimExpr(&v18, 0);
          v16 = v18;
          if (!v18)
          {
            break;
          }
        }

        if (v7 != mlir::AffineDimExpr::getPosition(&v16))
        {
          break;
        }

        ++v7;
        ++v12;
        v13 -= 8;
        if (!v13)
        {
          goto LABEL_3;
        }
      }

LABEL_15:
      if (a3)
      {
        *a3 = v8;
      }

      return 0;
    }

LABEL_3:
    ++v8;
    v5 = (v5 + 8);
  }

  while (v5 != v9);
  if (v7 == NumDims)
  {
    return 1;
  }

  result = 0;
  if (a3)
  {
    *a3 = a2 - 1;
  }

  return result;
}

uint64_t mlir::reshapeLikeShapesAreCompatible(uint64_t (*a1)(uint64_t, void **), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a8)
  {
    return 1;
  }

  v8 = 0;
  v9 = 0;
  v10 = a7 + 32 * a8;
  while (1)
  {
    v27 = 1;
    v11 = *(a7 + 8);
    v12 = 1;
    if (!v11)
    {
      break;
    }

    v13 = 0;
    v14 = (a5 + 8 * v8);
    v15 = &v14[v11];
    v12 = 1;
    do
    {
      while (*v14 == 0x8000000000000000)
      {
        ++v14;
        v13 = 1;
        if (v14 == v15)
        {
          goto LABEL_13;
        }
      }

      v12 *= *v14;
      v27 = v12;
      ++v14;
    }

    while (v14 != v15);
    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_13:
    if (*(a3 + 8 * v9) != 0x8000000000000000)
    {
      v19[0] = v9;
      v21[0] = "expected dimension ";
      v22 = v19;
      v23 = 2819;
      v24 = v21;
      v25 = " of collapsed type to be dynamic since one or more of the corresponding dimensions in the expanded type is dynamic";
      v16 = 770;
      goto LABEL_18;
    }

LABEL_4:
    v8 += v11;
    ++v9;
    a7 += 32;
    if (a7 == v10)
    {
      return 1;
    }
  }

  if (*(a3 + 8 * v9) == v12)
  {
    goto LABEL_4;
  }

  v18 = v9;
  v19[0] = "expected dimension ";
  v19[2] = &v18;
  v20 = 2819;
  v21[0] = v19;
  v22 = " of collapsed type to be static value of ";
  v23 = 770;
  v24 = v21;
  v25 = &v27;
  v16 = 3586;
LABEL_18:
  v26 = v16;
  return a1(a2, &v24);
}

uint64_t mlir::hasNonIdentityLayout(uint64_t a1)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  v5 = v1;
  if (!v1)
  {
    return 0;
  }

  v4[0] = mlir::MemRefType::getLayout(&v5);
  v4[1] = v2;
  return mlir::MemRefLayoutAttrInterface::isIdentity(v4) ^ 1;
}

uint64_t mlir::getSlicedDimensions@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v5 = a3;
  v6 = result;
  *a5 = 1;
  if (a2 > 0x39)
  {
    operator new();
  }

  v7 = (a2 << 58) | 1;
  if (a4)
  {
    v8 = 0;
    v9 = &a3[3 * a4];
    while (1)
    {
      ConstantIntValue = mlir::getConstantIntValue(*v5);
      v12 = v11;
      v13 = mlir::getConstantIntValue(v5[2]);
      v15 = v14;
      result = mlir::isEqualConstantIntOrValue(v5[1], *(v6 + 8 * v8));
      if (result)
      {
        if ((v15 & 1) != 0 && v13 == 1 && (v12 & 1) != 0 && !ConstantIntValue)
        {
          break;
        }
      }

      if ((v7 & 1) == 0)
      {
        v16 = v8 >> 6;
        v17 = *v7;
        v18 = *(*v7 + 8 * (v8 >> 6)) | (1 << v8);
LABEL_15:
        *(v17 + 8 * v16) = v18;
        goto LABEL_7;
      }

      v7 = v7 & 0xFC00000000000001 | (2 * (((1 << v8) | (v7 >> 1)) & ~(-1 << (v7 >> 58))));
LABEL_7:
      ++v8;
      v5 += 3;
      if (v5 == v9)
      {
        goto LABEL_19;
      }
    }

    if (v7)
    {
      v7 = ((2 * ~((-1 << (v7 >> 58)) | (1 << v8))) | 0xFC00000000000000) & v7 | 1;
      goto LABEL_7;
    }

    v16 = v8 >> 6;
    v17 = *v7;
    v18 = *(*v7 + 8 * (v8 >> 6)) & ~(1 << v8);
    goto LABEL_15;
  }

LABEL_19:
  *a5 = v7;
  return result;
}

uint64_t mlir::getLinearizedDimensions@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if (a2 >= 0x3A)
  {
    operator new();
  }

  v4 = (a2 << 58) | 1;
  if (a2)
  {
    v5 = 0;
    v6 = 32 * a2;
    v7 = (result + 8);
    do
    {
      v11 = *v7;
      v7 += 8;
      if (v11 < 2)
      {
        if (v4)
        {
          v4 = ((2 * ~((-1 << (v4 >> 58)) | (1 << v5))) | 0xFC00000000000000) & v4 | 1;
          goto LABEL_8;
        }

        v8 = v5 >> 6;
        v9 = *v4;
        v10 = *(*v4 + 8 * v8) & ~(1 << v5);
      }

      else
      {
        if (v4)
        {
          v4 = v4 & 0xFC00000000000001 | (2 * (((1 << v5) | (v4 >> 1)) & ~(-1 << (v4 >> 58))));
          goto LABEL_8;
        }

        v8 = v5 >> 6;
        v9 = *v4;
        v10 = *(*v4 + 8 * v8) | (1 << v5);
      }

      *(v9 + 8 * v8) = v10;
LABEL_8:
      ++v5;
      v6 -= 32;
    }

    while (v6);
  }

  *a3 = v4;
  return result;
}

__n128 mlir::SliceFromCollapseHelper::getExtractSliceParams@<Q0>(mlir::IndexType *this@<X1>, uint64_t *a2@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = mlir::IndexType::get(this, this);
  v44 = mlir::IntegerAttr::get(v7, 1uLL);
  v9 = mlir::IndexType::get(this, v8);
  v10 = mlir::IntegerAttr::get(v9, 0);
  *a4 = (a4 + 2);
  result.n128_u64[0] = 0x200000000;
  a4[1] = 0x200000000;
  if (*(a2 + 14) >= 3u)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v12 = *(a2 + 2);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    v15 = *a2;
    v16 = *a2 + 32 * v12;
    v17 = v10 & 0xFFFFFFFFFFFFFFFBLL;
    while (1)
    {
      v18 = a2[31];
      if (v18)
      {
        v21 = (1 << v14) & (v18 >> 1) & ~(-1 << (v18 >> 58));
        v20 = a2[30];
        if (v21)
        {
LABEL_11:
          if (v20)
          {
            if (((1 << v14) & (v20 >> 1) & ~(-1 << (v20 >> 58))) != 0)
            {
LABEL_13:
              v22 = (a3 + 16 * v13);
              v24 = *v22;
              v23 = v22[1];
              v25 = *(a4 + 2);
              if (v23 + v25 > *(a4 + 3))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v26 = *a4;
              v45 = v24;
              v46 = 0;
              v47 = &v44;
              v48 = 1;
              if (v23)
              {
                v27 = 0;
                v28 = (v26 + 24 * v25);
                do
                {
                  v29 = mlir::ValueRange::dereference_iterator(&v45, v27);
                  AsOpFoldResult = mlir::getAsOpFoldResult(v29);
                  v31 = *v47 & 0xFFFFFFFFFFFFFFFBLL;
                  *v28 = AsOpFoldResult;
                  v28[1] = v31;
                  v28[2] = v31;
                  v27 = v46 + 1;
                  v46 = v27;
                  v28 += 3;
                }

                while (v27 != v23);
                LODWORD(v25) = *(a4 + 2);
              }

              ++v13;
              goto LABEL_6;
            }
          }

          else if ((*(*v20 + 8 * (v14 >> 6)) & (1 << v14)) != 0)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        v19 = *(*v18 + 8 * (v14 >> 6)) & (1 << v14);
        v20 = a2[30];
        if (v19)
        {
          goto LABEL_11;
        }
      }

      if (v20)
      {
        if (((1 << v14) & (v20 >> 1) & ~(-1 << (v20 >> 58))) != 0)
        {
          goto LABEL_22;
        }

LABEL_29:
        v39 = (a2[22] + 24 * v14);
        v40 = *(a4 + 2);
        v41 = *a4;
        if (v40 >= *(a4 + 3))
        {
          if (v41 > v39 || v41 + 24 * v40 <= v39)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v42 = (v41 + 24 * *(a4 + 2));
        result = *v39;
        v42[1].n128_u64[0] = v39[1].n128_u64[0];
        *v42 = result;
        ++*(a4 + 2);
        ++v14;
        v15 += 32;
        if (v15 == v16)
        {
          return result;
        }
      }

      else
      {
        if ((*(*v20 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
        {
          goto LABEL_29;
        }

LABEL_22:
        v32 = *v15;
        v23 = *(v15 + 8);
        v25 = *(a4 + 2);
        if (v25 + v23 > *(a4 + 3))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v23)
        {
          v33 = (*a4 + 24 * v25);
          v34 = a2[6];
          v35 = v44 & 0xFFFFFFFFFFFFFFFBLL;
          v36 = 8 * v23;
          do
          {
            v37 = *v32++;
            v38 = *(v34 + 8 * v37);
            *v33 = v17;
            v33[1] = v38;
            v33[2] = v35;
            v33 += 3;
            v36 -= 8;
          }

          while (v36);
          LODWORD(v25) = *(a4 + 2);
        }

LABEL_6:
        *(a4 + 2) = v25 + v23;
        ++v14;
        v15 += 32;
        if (v15 == v16)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::SliceFromCollapseHelper::getInsertSliceParams@<X0>(void *a1@<X0>, mlir::IndexType *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v28[0] = a3;
  v28[1] = a4;
  v8 = mlir::IndexType::get(a2, a2);
  v9 = mlir::IntegerAttr::get(v8, 1uLL);
  v11 = mlir::IndexType::get(a2, v10);
  result = mlir::IntegerAttr::get(v11, 0);
  *a5 = a5 + 16;
  *(a5 + 8) = 0x200000000;
  v13 = a1[30];
  if ((v13 & 1) == 0)
  {
    if (*(v13 + 64) < 3uLL)
    {
      goto LABEL_6;
    }

LABEL_5:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v13 >> 58 >= 3)
  {
    goto LABEL_5;
  }

LABEL_6:
  v14 = 0;
  v15 = 0;
  v16 = v9 & 0xFFFFFFFFFFFFFFFBLL;
  v17 = result & 0xFFFFFFFFFFFFFFFBLL;
  while (1)
  {
    v22 = v14;
    v23 = a1[30];
    if (v23)
    {
      break;
    }

    if (*(v23 + 64) <= v22)
    {
      return result;
    }

    if ((*(*v23 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
    {
LABEL_7:
      *&v26 = v17;
      *(&v26 + 1) = *(a1[22] + 24 * v22 + 8);
      v27 = v16;
      v18 = *(a5 + 8);
      v19 = *a5;
      if (v18 >= *(a5 + 12))
      {
        if (v19 <= &v26 && v19 + 24 * v18 > &v26)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      goto LABEL_8;
    }

LABEL_15:
    v24 = a1[31];
    if (v24)
    {
      if (((1 << v22) & (v24 >> 1) & ~(-1 << (v24 >> 58))) == 0)
      {
        goto LABEL_7;
      }
    }

    else if ((*(*v24 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
    {
      goto LABEL_7;
    }

    result = mlir::ValueRange::dereference_iterator(v28, v15);
    *&v26 = result | 4;
    *(&v26 + 1) = v16;
    v27 = v16;
    v25 = *(a5 + 8);
    v19 = *a5;
    if (v25 >= *(a5 + 12))
    {
      if (v19 > &v26 || v19 + 24 * v25 <= &v26)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    ++v15;
LABEL_8:
    v20 = v19 + 24 * *(a5 + 8);
    v21 = v26;
    *(v20 + 16) = v27;
    *v20 = v21;
    ++*(a5 + 8);
    v14 = v22 + 1;
  }

  if (v23 >> 58 > v22)
  {
    if (((1 << v22) & (v23 >> 1) & ~(-1 << (v23 >> 58))) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  return result;
}

void mlir::getSimplifyCollapseShapeWithRankReducingSliceInfo(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v6 = a4;
  v80[6] = *MEMORY[0x277D85DE8];
  v62 = a1;
  __dst = a1;
  v78 = v80;
  v79 = 0x300000000;
  v7 = a2 + 32 * a3;
  if (a3)
  {
    v10 = a2;
    do
    {
      v17 = *v10;
      v18 = *(v10 + 8);
      Shape = mlir::RankedTensorType::getShape(&__dst);
      if (v18 < 2)
      {
LABEL_3:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = v79;
        if (v79 >= HIDWORD(v79))
        {
          goto LABEL_12;
        }
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v11 = 0;
        v22 = 8 * v18;
        do
        {
          if (*(Shape + 8 * *v17) != 1)
          {
            if (v21)
            {
              goto LABEL_3;
            }

            v11 = *v17;
            v20 = *v17 >> 8;
            v21 = 1;
          }

          ++v17;
          v22 -= 8;
        }

        while (v22);
        v13 = v20 << 8;
        v12 = v21;
        v14 = v79;
        if (v79 >= HIDWORD(v79))
        {
LABEL_12:
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }
      }

      v15 = &v78[16 * v14];
      *v15 = v13 | v11;
      v15[1] = v12;
      v16 = (v79 + 1);
      LODWORD(v79) = v79 + 1;
      v10 += 32;
    }

    while (v10 != v7);
    v23 = v78;
    if (v16)
    {
      v24 = 16 * v16;
      v25 = 8;
      v6 = a4;
      v4 = a3;
      while ((v78[v25] & 1) == 0)
      {
        v25 += 16;
        v24 -= 16;
        if (!v24)
        {
          v26 = 0;
          LOBYTE(__dst) = 0;
          v77 = 0;
          if (v78 == v80)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }
      }

      __dst = v76;
      v75 = 0x300000000;
      if (v78 != v80)
      {
        __dst = v78;
        v75 = __PAIR64__(HIDWORD(v79), v16);
        v78 = v80;
        v79 = 0;
        v26 = 1;
        v77 = 1;
        goto LABEL_19;
      }

      if (v16 >= 4)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(__dst, v78, 16 * v16);
      v23 = v78;
      LODWORD(v75) = v16;
      LODWORD(v79) = 0;
      v26 = 1;
      v77 = 1;
      if (v78 == v80)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v6 = a4;
      v4 = a3;
      v26 = 0;
      LOBYTE(__dst) = 0;
      v77 = 0;
      if (v78 == v80)
      {
        goto LABEL_19;
      }
    }

LABEL_18:
    free(v23);
    v26 = v77;
  }

  else
  {
    v26 = 0;
    LOBYTE(__dst) = 0;
    v77 = 0;
  }

LABEL_19:
  if ((v26 & 1) == 0)
  {
    *v6 = 0;
    *(v6 + 64) = 0;
    return;
  }

  v27 = 0;
  v78 = v80;
  v79 = 0x600000000;
  if (!v75 || !v4)
  {
    v39 = v80;
    goto LABEL_40;
  }

  v59 = v4;
  v60 = v6;
  v28 = 0;
  v29 = __dst;
  v30 = __dst + 16 * v75;
  v31 = a2;
  while (v29[8] == 1)
  {
    v32 = *v29;
    v33 = *(mlir::RankedTensorType::getShape(&v62) + 8 * v32);
    if (v79 >= HIDWORD(v79))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *&v78[8 * v79] = v33;
    v28 = v79 + 1;
    LODWORD(v79) = v79 + 1;
    v29 += 16;
    if (v29 == v30)
    {
      goto LABEL_39;
    }

LABEL_24:
    v31 += 32;
    if (v31 == v7)
    {
      goto LABEL_39;
    }
  }

  v34 = *v31;
  v35 = *(v31 + 8);
  if (v28 + v35 > HIDWORD(v79))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v35)
  {
    v36 = &v78[8 * v28];
    v37 = 8 * v35;
    do
    {
      v38 = *v34;
      v34 += 2;
      *v36++ = *(mlir::RankedTensorType::getShape(&v62) + 8 * v38);
      v37 -= 8;
    }

    while (v37);
    v28 = v79;
  }

  v28 += v35;
  LODWORD(v79) = v28;
  v29 += 16;
  if (v29 != v30)
  {
    goto LABEL_24;
  }

LABEL_39:
  v39 = v78;
  v27 = v28;
  v4 = v59;
  v6 = v60;
LABEL_40:
  ElementType = mlir::RankedTensorType::getElementType(&v62);
  v41 = mlir::RankedTensorType::get(v39, v27, ElementType, 0);
  v61 = v41;
  if (v4 == v79)
  {
    *v6 = v41;
    *(v6 + 8) = 0;
    *(v6 + 56) = 0;
    *(v6 + 64) = 1;
    goto LABEL_79;
  }

  v71 = v73;
  v72 = 0x100000000;
  v68 = v70;
  v69 = 0x200000000;
  mlir::RankedTensorType::getShape(&v61);
  if (v42 >= 1)
  {
    v43 = 0;
    v44 = 0;
    do
    {
      if (v69 >= HIDWORD(v69))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v68 + v69) = v43;
      v46 = v69 + 1;
      LODWORD(v69) = v69 + 1;
      if ((*(__dst + 16 * v44 + 8) & 1) != 0 || v46 == *(a2 + 32 * v44 + 8))
      {
        llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::push_back(&v71, &v68);
        LODWORD(v69) = 0;
        ++v44;
      }

      ++v43;
      mlir::RankedTensorType::getShape(&v61);
    }

    while (v43 < v45);
  }

  v47 = v61;
  v63 = v61;
  v64 = v66;
  v65 = 0x100000000;
  if (v72)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(&v64, &v71);
    v47 = v63;
  }

  v67 = 1;
  *v6 = v47;
  *(v6 + 8) = v6 + 24;
  *(v6 + 56) = 0;
  *(v6 + 16) = 0x100000000;
  if (!v65)
  {
    *(v6 + 56) = 1;
    *(v6 + 64) = 1;
    v49 = v64;
    v50 = v65;
    if (v65)
    {
      goto LABEL_56;
    }

LABEL_67:
    if (v49 != v66)
    {
      goto LABEL_68;
    }

    goto LABEL_69;
  }

  llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(v6 + 8, &v64);
  v48 = v67;
  *(v6 + 56) = 1;
  *(v6 + 64) = 1;
  if ((v48 & 1) == 0)
  {
    goto LABEL_69;
  }

  v49 = v64;
  v50 = v65;
  if (!v65)
  {
    goto LABEL_67;
  }

LABEL_56:
  v51 = 32 * v50;
  v52 = &v49[v51 - 16];
  v53 = -v51;
  do
  {
    v54 = *(v52 - 16);
    if (v52 != v54)
    {
      free(v54);
    }

    v52 -= 32;
    v53 += 32;
  }

  while (v53);
  v49 = v64;
  if (v64 == v66)
  {
    goto LABEL_69;
  }

LABEL_68:
  free(v49);
LABEL_69:
  if (v68 != v70)
  {
    free(v68);
  }

  v55 = v71;
  if (v72)
  {
    v56 = v71 + 32 * v72 - 16;
    v57 = -32 * v72;
    do
    {
      v58 = *(v56 - 2);
      if (v56 != v58)
      {
        free(v58);
      }

      v56 -= 32;
      v57 += 32;
    }

    while (v57);
    v55 = v71;
  }

  if (v55 != v73)
  {
    free(v55);
  }

LABEL_79:
  if (v78 != v80)
  {
    free(v78);
  }

  if ((v77 & 1) != 0 && __dst != v76)
  {
    free(__dst);
  }
}

void mlir::computePackingMetadata(uint64_t a1@<X0>, int64x2_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2;
  v53[2] = *MEMORY[0x277D85DE8];
  *a4 = a4 + 16;
  *(a4 + 8) = 0x600000000;
  *(a4 + 64) = a4 + 80;
  *(a4 + 72) = 0x600000000;
  *(a4 + 128) = a4 + 144;
  *(a4 + 136) = 0x100000000;
  if (a3 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3)
  {
    v7 = a2 + a3;
    v8 = (a3 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v8 > 2)
    {
      v16 = v8 + 1;
      v17 = v16 & 0x3FFFFFFFFFFFFFFCLL;
      if (v16 == (v16 & 0x3FFFFFFFFFFFFFFCLL))
      {
        do
        {
          v18 = vdupq_n_s64(*v4);
          v19 = 0uLL;
          v20 = a2 + 1;
          v21 = v17;
          v22 = 0uLL;
          do
          {
            v19 = vsubq_s64(v19, vcgtq_s64(v18, v20[-1]));
            v22 = vsubq_s64(v22, vcgtq_s64(v18, *v20));
            v20 += 2;
            v21 -= 4;
          }

          while (v21);
          v23 = *(a4 + 8);
          if (v23 >= *(a4 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*a4 + 8 * v23) = *v4 + vaddvq_s64(vaddq_s64(v22, v19)) + 1;
          ++*(a4 + 8);
          ++v4;
        }

        while (v4 != v7);
      }

      else
      {
        do
        {
          v24 = *v4;
          v25 = vdupq_n_s64(*v4);
          v26 = 0uLL;
          v27 = v17;
          v28 = a2 + 1;
          v29 = 0uLL;
          do
          {
            v26 = vsubq_s64(v26, vcgtq_s64(v25, v28[-1]));
            v29 = vsubq_s64(v29, vcgtq_s64(v25, *v28));
            v28 += 2;
            v27 -= 4;
          }

          while (v27);
          v30 = vaddvq_s64(vaddq_s64(v29, v26));
          v31 = 8 * a3 - 8 * v17;
          v32 = &a2->i64[v17];
          do
          {
            v33 = *v32++;
            if (v24 > v33)
            {
              ++v30;
            }

            v31 -= 8;
          }

          while (v31);
          v34 = *(a4 + 8);
          if (v34 >= *(a4 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*a4 + 8 * v34) = v24 + v30 + 1;
          ++*(a4 + 8);
          ++v4;
        }

        while (v4 != v7);
      }
    }

    else
    {
      v9 = a2;
      do
      {
        v10 = 0;
        v11 = *v9;
        v12 = 8 * a3;
        v13 = a2;
        do
        {
          v14 = *v13++;
          if (v11 > v14)
          {
            ++v10;
          }

          v12 -= 8;
        }

        while (v12);
        v15 = *(a4 + 8);
        if (v15 >= *(a4 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a4 + 8 * v15) = v11 + v10 + 1;
        ++*(a4 + 8);
        ++v9;
      }

      while (v9 != v7);
    }
  }

  v51 = *a4;
  v48 = v51 + 8 * *(a4 + 8);
  llvm::detail::DenseSetImpl<long long,llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,llvm::DenseMapInfo<long long,void>>::DenseSetImpl<long long *>(&v49, &v51, &v48);
  if (*(a4 + 140) < a1)
  {
    llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow();
  }

  if (a1 < 1)
  {
LABEL_65:
    llvm::deallocate_buffer(v49, (8 * v50));
  }

  v35 = 1;
  while (1)
  {
    v37 = *(a4 + 72);
    if (v37 >= *(a4 + 76))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a4 + 64) + 8 * v37) = v35 - 1;
    ++*(a4 + 72);
    if (v50)
    {
      v38 = (v50 - 1) & (37 * v35);
      v39 = *(v49 + v38);
      if (v35 == v39)
      {
LABEL_41:
        if (v38 != v50)
        {
          v51 = v53;
          v53[0] = v35 - 1;
          v53[1] = v35;
          v52 = 0x200000002;
          v43 = *(a4 + 136);
          v44 = *(a4 + 128);
          if (v43 >= *(a4 + 140))
          {
            if (v44 > &v51 || v44 + 32 * v43 <= &v51)
            {
              llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow();
            }

            llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow();
          }

          v45 = (v44 + 32 * *(a4 + 136));
          *v45 = v45 + 2;
          v45[1] = 0x200000000;
          if (v52)
          {
            llvm::SmallVectorImpl<long long>::operator=(v45, &v51);
          }

          ++*(a4 + 136);
          if (v51 != v53)
          {
            free(v51);
          }

          ++v35;
          goto LABEL_36;
        }
      }

      else
      {
        v46 = 1;
        while (v39 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v47 = v38 + v46++;
          v38 = v47 & (v50 - 1);
          v39 = *(v49 + v38);
          if (v35 == v39)
          {
            goto LABEL_41;
          }
        }
      }
    }

    v51 = v53;
    v53[0] = v35 - 1;
    v52 = 0x200000001;
    v40 = *(a4 + 136);
    v41 = *(a4 + 128);
    if (v40 >= *(a4 + 140))
    {
      if (v41 > &v51 || v41 + 32 * v40 <= &v51)
      {
        llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow();
      }

      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow();
    }

    v42 = (v41 + 32 * *(a4 + 136));
    *v42 = v42 + 2;
    v42[1] = 0x200000000;
    if (v52)
    {
      llvm::SmallVectorImpl<long long>::operator=(v42, &v51);
    }

    ++*(a4 + 136);
    if (v51 != v53)
    {
      free(v51);
    }

LABEL_36:
    if (v35++ >= a1)
    {
      goto LABEL_65;
    }
  }
}

char **llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(char **a1, char **a2)
{
  v2 = a1;
  if (a1 == a2)
  {
    return v2;
  }

  v4 = *(a2 + 2);
  v5 = *(a1 + 2);
  v41 = *(a2 + 2);
  if (v5 >= v4)
  {
    if (!v4)
    {
      v18 = *a1;
      v19 = &(*a1)[32 * v5];
      if (v19 == *a1)
      {
        goto LABEL_50;
      }

LABEL_43:
      v28 = (v19 - 16);
      do
      {
        v30 = *(v28 - 2);
        if (v28 != v30)
        {
          free(v30);
        }

        v29 = v28 - 16;
        v28 -= 32;
      }

      while (v29 != v18);
      goto LABEL_50;
    }

    v9 = 0;
    v10 = *a2;
    v11 = *a1;
    v12 = 32 * v4;
    while (1)
    {
      if (v10 == v11)
      {
        goto LABEL_12;
      }

      v13 = &v11[v9];
      v14 = &v10[v9];
      v15 = *&v10[v9 + 8];
      v16 = *&v11[v9 + 8];
      if (v16 >= v15)
      {
        if (v15)
        {
          memmove(*v13, *v14, 8 * v15);
        }

        goto LABEL_11;
      }

      if (*&v11[v9 + 12] < v15)
      {
        *(v13 + 2) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v16)
      {
        memmove(*v13, *v14, 8 * v16);
        v17 = *(v14 + 2) - v16;
        if (v17)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v16 = 0;
        v17 = *(v14 + 2);
        if (*(v14 + 2))
        {
LABEL_23:
          memcpy((*v13 + 8 * v16), (*v14 + 8 * v16), 8 * v17);
        }
      }

LABEL_11:
      *(v13 + 2) = v15;
LABEL_12:
      v9 += 32;
      if (v12 == v9)
      {
        v18 = &v11[v9];
        v19 = &(*v2)[32 * *(v2 + 2)];
        if (v19 == &v11[v9])
        {
          goto LABEL_50;
        }

        goto LABEL_43;
      }
    }
  }

  if (*(a1 + 3) < v4)
  {
    if (v5)
    {
      v6 = &(*a1)[32 * v5 - 16];
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
    }

    *(v2 + 2) = 0;
    llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow();
  }

  if (v5)
  {
    v20 = 0;
    v21 = *a2;
    v22 = *a1;
    while (1)
    {
      if (v21 == v22)
      {
        goto LABEL_29;
      }

      v23 = &v22[v20];
      v24 = &v21[v20];
      v25 = *&v21[v20 + 8];
      v26 = *&v22[v20 + 8];
      if (v26 >= v25)
      {
        if (v25)
        {
          memmove(*v23, *v24, 8 * v25);
        }

        goto LABEL_28;
      }

      if (*&v22[v20 + 12] < v25)
      {
        *(v23 + 2) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v26)
      {
        memmove(*v23, *v24, 8 * v26);
        v27 = *(v24 + 2) - v26;
        if (v27)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v26 = 0;
        v27 = *(v24 + 2);
        if (*(v24 + 2))
        {
LABEL_40:
          memcpy((*v23 + 8 * v26), (*v24 + 8 * v26), 8 * v27);
        }
      }

LABEL_28:
      *(v23 + 2) = v25;
LABEL_29:
      v20 += 32;
      if (32 * v5 == v20)
      {
        v2 = a1;
        v31 = *(a2 + 2);
        if (v5 != v31)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }
    }
  }

  v5 = 0;
  v31 = *(a2 + 2);
  if (*(a2 + 2))
  {
LABEL_52:
    v33 = *a2;
    v34 = *v2;
    v35 = 32 * v5;
    v36 = 32 * v31;
    do
    {
      v37 = &v34[v35];
      v38 = &v34[v35 + 16];
      *v37 = v38;
      *(v37 + 1) = 0x200000000;
      if (v33 != v34)
      {
        v39 = *&v33[v35 + 8];
        if (*&v33[v35 + 8])
        {
          if (v39 >= 3)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          memcpy(v38, *&v33[v35], 8 * *&v33[v35 + 8]);
          *(v37 + 2) = v39;
        }
      }

      v34 += 32;
      v36 -= 32;
      v33 += 32;
    }

    while (v35 != v36);
  }

LABEL_50:
  *(v2 + 2) = v41;
  return v2;
}

uint64_t llvm::detail::DenseSetImpl<long long,llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,llvm::DenseMapInfo<long long,void>>::DenseSetImpl<long long *>(uint64_t a1, void *a2, void *a3)
{
  v6 = (*a3 - *a2) >> 3;
  if ((v6 - 2147483649) < 0xFFFFFFFF80000000)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v7 = *a2;
    i = *a3;
    if (*a2 == *a3)
    {
      return a1;
    }

    goto LABEL_7;
  }

  v9 = 4 * (1 << -__clz(v6 - 1));
  v10 = (v9 / 3 + 1) | ((v9 / 3 + 1) >> 1);
  v11 = v10 | (v10 >> 2) | ((v10 | (v10 >> 2)) >> 4);
  LODWORD(v11) = (((v11 | (v11 >> 8)) >> 16) | v11 | (v11 >> 8)) + 1;
  *(a1 + 16) = v11;
  buffer = llvm::allocate_buffer(8 * v11, 8uLL);
  *a1 = buffer;
  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    memset_pattern16(buffer, &unk_257369640, 8 * v13);
  }

  v7 = *a2;
  for (i = *a3; v7 != i; ++v7)
  {
LABEL_7:
    llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, v7, &v15);
  }

  return a1;
}

_DWORD *llvm::SmallVectorImpl<long long>::swap(_DWORD *result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = *result;
    if (*result != result + 4 && *a2 != a2 + 16)
    {
      *result = *a2;
      *a2 = v4;
      v5 = result[2];
      result[2] = *(a2 + 8);
      *(a2 + 8) = v5;
      v6 = result[3];
      result[3] = *(a2 + 12);
      *(a2 + 12) = v6;
      return result;
    }

    if (result[3] < *(a2 + 8))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = result[2];
    if (*(a2 + 12) < v7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v8 = *(a2 + 8);
    if (v7 >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    if (!v9)
    {
      goto LABEL_27;
    }

    v10 = *result;
    v11 = *a2;
    if (v9 > 3 && (v10 < v11 + 8 * v9 ? (v12 = v11 >= v10 + 8 * v9) : (v12 = 1), v12))
    {
      v13 = v9 & 0xFFFFFFFC;
      v14 = (v10 + 16);
      v15 = (v11 + 16);
      v16 = v13;
      do
      {
        v17 = *(v14 - 1);
        v18 = *v14;
        v19 = *v15;
        *(v14 - 1) = *(v15 - 1);
        *v14 = v19;
        *(v15 - 1) = v17;
        *v15 = v18;
        v14 += 2;
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v13 == v9)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v13 = 0;
    }

    v20 = v9 - v13;
    v21 = 8 * v13;
    v22 = (v10 + v21);
    v23 = (v11 + v21);
    do
    {
      v24 = *v22;
      *v22++ = *v23;
      *v23++ = v24;
      --v20;
    }

    while (v20);
LABEL_27:
    if (v8 >= v7)
    {
      if (v8 > v7)
      {
        v26 = v8 - v7;
        result = memcpy((*result + 8 * v7), (*a2 + 8 * v9), 8 * (v8 - v9));
        v3[2] += v26;
        *(a2 + 8) = v9;
      }
    }

    else
    {
      v25 = v7 - v8;
      result = memcpy((*a2 + 8 * v8), (*result + 8 * v9), 8 * (v7 - v9));
      *(a2 + 8) += v25;
      v3[2] = v9;
    }
  }

  return result;
}

void *llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<unsigned int getMaxPosOfType<mlir::AffineDimExpr>(llvm::ArrayRef<llvm::SmallVector<mlir::AffineExpr,2u>>)::{lambda(mlir::AffineExpr)#1}>(int **a1, uint64_t a2)
{
  v7 = a2;
  if (mlir::AffineExpr::getKind(&v7) == 6)
  {
    result = mlir::AffineDimExpr::AffineDimExpr(&v7, a2);
    if (!v7)
    {
      return result;
    }
  }

  else
  {
    result = mlir::AffineDimExpr::AffineDimExpr(&v7, 0);
    if (!v7)
    {
      return result;
    }
  }

  v5 = *a1;
  result = mlir::AffineDimExpr::getPosition(&v7);
  v6 = *v5;
  if (*v5 <= result)
  {
    v6 = result;
  }

  **a1 = v6;
  return result;
}

const char *mlir::utils::stringifyIteratorType(int a1)
{
  v1 = "";
  if (a1 == 1)
  {
    v1 = "reduction";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "parallel";
  }
}

uint64_t mlir::utils::symbolizeIteratorType(uint64_t a1, uint64_t a2)
{
  if (a2 != 9)
  {
    if (a2 == 8 && *a1 == 0x6C656C6C61726170)
    {
      return 0x100000000;
    }

    return 0;
  }

  if (*a1 != 0x6F69746375646572 || *(a1 + 8) != 110)
  {
    return 0;
  }

  return 0x100000001;
}

uint64_t mlir::utils::symbolizeIteratorType(mlir::utils *this)
{
  v1 = this;
  v2 = 0x100000000;
  v3 = 0x100000000;
  v4 = 1;
  if (this != 1)
  {
    v3 = 0;
    v4 = 0;
  }

  if (this)
  {
    v2 = v3;
    v1 = v4;
  }

  return v1 | v2;
}

BOOL mlir::isRowMajorMatmul(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v17 = a1;
  mlir::ArrayAttr::getValue(&v17);
  if (v1 != 3)
  {
    return 0;
  }

  v18 = *mlir::ArrayAttr::getValue(&v17);
  Value = mlir::AffineMapAttr::getValue(&v18);
  v18 = *(mlir::ArrayAttr::getValue(&v17) + 8);
  v15 = mlir::AffineMapAttr::getValue(&v18);
  v18 = *(mlir::ArrayAttr::getValue(&v17) + 16);
  v14 = mlir::AffineMapAttr::getValue(&v18);
  if (mlir::AffineMap::getNumResults(&Value) != 2 || mlir::AffineMap::getNumResults(&v15) != 2 || mlir::AffineMap::getNumResults(&v14) != 2 || mlir::AffineMap::getNumInputs(&Value) != 3 || mlir::AffineMap::getNumInputs(&v15) != 3 || mlir::AffineMap::getNumInputs(&v14) != 3)
  {
    return 0;
  }

  v2 = mlir::AffineMap::getResult(&v14, 0);
  v3 = mlir::AffineMap::getResult(&v14, 1u);
  v4 = mlir::AffineMap::getResult(&Value, 1u);
  Context = mlir::Attribute::getContext(&v17);
  v18 = v2;
  v19 = v4;
  v6 = mlir::AffineMap::get(3, 0, &v18, 2, Context);
  v7 = mlir::AffineMapAttr::get(v6);
  v18 = v4;
  v19 = v3;
  v8 = mlir::AffineMap::get(3, 0, &v18, 2, Context);
  v9 = mlir::AffineMapAttr::get(v8);
  v18 = v2;
  v19 = v3;
  v10 = mlir::AffineMap::get(3, 0, &v18, 2, Context);
  v11 = mlir::AffineMapAttr::get(v10);
  v18 = v7;
  v19 = v9;
  v20 = v11;
  v12 = mlir::ArrayAttr::get(Context, &v18, 3);
  return v17 == v12;
}

BOOL mlir::isColumnMajorMatmul(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v17 = a1;
  mlir::ArrayAttr::getValue(&v17);
  if (v1 != 3)
  {
    return 0;
  }

  v18 = *mlir::ArrayAttr::getValue(&v17);
  Value = mlir::AffineMapAttr::getValue(&v18);
  v18 = *(mlir::ArrayAttr::getValue(&v17) + 8);
  v15 = mlir::AffineMapAttr::getValue(&v18);
  v18 = *(mlir::ArrayAttr::getValue(&v17) + 16);
  v14 = mlir::AffineMapAttr::getValue(&v18);
  if (mlir::AffineMap::getNumResults(&Value) != 2 || mlir::AffineMap::getNumResults(&v15) != 2 || mlir::AffineMap::getNumResults(&v14) != 2 || mlir::AffineMap::getNumInputs(&Value) != 3 || mlir::AffineMap::getNumInputs(&v15) != 3 || mlir::AffineMap::getNumInputs(&v14) != 3)
  {
    return 0;
  }

  v2 = mlir::AffineMap::getResult(&v14, 0);
  v3 = mlir::AffineMap::getResult(&v14, 1u);
  v4 = mlir::AffineMap::getResult(&Value, 0);
  Context = mlir::Attribute::getContext(&v17);
  v18 = v4;
  v19 = v3;
  v6 = mlir::AffineMap::get(3, 0, &v18, 2, Context);
  v7 = mlir::AffineMapAttr::get(v6);
  v18 = v2;
  v19 = v4;
  v8 = mlir::AffineMap::get(3, 0, &v18, 2, Context);
  v9 = mlir::AffineMapAttr::get(v8);
  v18 = v2;
  v19 = v3;
  v10 = mlir::AffineMap::get(3, 0, &v18, 2, Context);
  v11 = mlir::AffineMapAttr::get(v10);
  v18 = v7;
  v19 = v9;
  v20 = v11;
  v12 = mlir::ArrayAttr::get(Context, &v18, 3);
  return v17 == v12;
}

BOOL mlir::isRowMajorBatchMatmul(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v18 = a1;
  mlir::ArrayAttr::getValue(&v18);
  if (v1 != 3)
  {
    return 0;
  }

  v19 = *mlir::ArrayAttr::getValue(&v18);
  Value = mlir::AffineMapAttr::getValue(&v19);
  v19 = *(mlir::ArrayAttr::getValue(&v18) + 8);
  v16 = mlir::AffineMapAttr::getValue(&v19);
  v19 = *(mlir::ArrayAttr::getValue(&v18) + 16);
  v15 = mlir::AffineMapAttr::getValue(&v19);
  if (mlir::AffineMap::getNumResults(&Value) != 3 || mlir::AffineMap::getNumResults(&v16) != 3 || mlir::AffineMap::getNumResults(&v15) != 3 || mlir::AffineMap::getNumInputs(&Value) != 4 || mlir::AffineMap::getNumInputs(&v16) != 4 || mlir::AffineMap::getNumInputs(&v15) != 4)
  {
    return 0;
  }

  v2 = mlir::AffineMap::getResult(&v15, 0);
  v3 = mlir::AffineMap::getResult(&v15, 1u);
  v4 = mlir::AffineMap::getResult(&v15, 2u);
  v5 = mlir::AffineMap::getResult(&Value, 2u);
  Context = mlir::Attribute::getContext(&v18);
  v19 = v2;
  v20 = v3;
  v21 = v5;
  v7 = mlir::AffineMap::get(4, 0, &v19, 3, Context);
  v8 = mlir::AffineMapAttr::get(v7);
  v19 = v2;
  v20 = v5;
  v21 = v4;
  v9 = mlir::AffineMap::get(4, 0, &v19, 3, Context);
  v10 = mlir::AffineMapAttr::get(v9);
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v11 = mlir::AffineMap::get(4, 0, &v19, 3, Context);
  v12 = mlir::AffineMapAttr::get(v11);
  v19 = v8;
  v20 = v10;
  v21 = v12;
  v13 = mlir::ArrayAttr::get(Context, &v19, 3);
  return v18 == v13;
}

BOOL mlir::isVecmat(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v16 = a1;
  mlir::ArrayAttr::getValue(&v16);
  if (v1 != 3)
  {
    return 0;
  }

  v17 = *mlir::ArrayAttr::getValue(&v16);
  Value = mlir::AffineMapAttr::getValue(&v17);
  v17 = *(mlir::ArrayAttr::getValue(&v16) + 8);
  v14 = mlir::AffineMapAttr::getValue(&v17);
  v17 = *(mlir::ArrayAttr::getValue(&v16) + 16);
  v13 = mlir::AffineMapAttr::getValue(&v17);
  if (mlir::AffineMap::getNumResults(&Value) != 1 || mlir::AffineMap::getNumResults(&v14) != 2 || mlir::AffineMap::getNumResults(&v13) != 1 || mlir::AffineMap::getNumInputs(&Value) != 2 || mlir::AffineMap::getNumInputs(&v14) != 2 || mlir::AffineMap::getNumInputs(&v13) != 2)
  {
    return 0;
  }

  v2 = mlir::AffineMap::getResult(&Value, 0);
  v3 = mlir::AffineMap::getResult(&v13, 0);
  Context = mlir::Attribute::getContext(&v16);
  v17 = v2;
  v5 = mlir::AffineMap::get(2, 0, &v17, 1, Context);
  v6 = mlir::AffineMapAttr::get(v5);
  v17 = v2;
  v18 = v3;
  v7 = mlir::AffineMap::get(2, 0, &v17, 2, Context);
  v8 = mlir::AffineMapAttr::get(v7);
  v17 = v3;
  v9 = mlir::AffineMap::get(2, 0, &v17, 1, Context);
  v10 = mlir::AffineMapAttr::get(v9);
  v17 = v6;
  v18 = v8;
  v19 = v10;
  v11 = mlir::ArrayAttr::get(Context, &v17, 3);
  return v16 == v11;
}

BOOL mlir::isBatchVecmat(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v17 = a1;
  mlir::ArrayAttr::getValue(&v17);
  if (v1 != 3)
  {
    return 0;
  }

  v18 = *mlir::ArrayAttr::getValue(&v17);
  Value = mlir::AffineMapAttr::getValue(&v18);
  v18 = *(mlir::ArrayAttr::getValue(&v17) + 8);
  v15 = mlir::AffineMapAttr::getValue(&v18);
  v18 = *(mlir::ArrayAttr::getValue(&v17) + 16);
  v14 = mlir::AffineMapAttr::getValue(&v18);
  if (mlir::AffineMap::getNumResults(&Value) != 2 || mlir::AffineMap::getNumResults(&v15) != 3 || mlir::AffineMap::getNumResults(&v14) != 2 || mlir::AffineMap::getNumInputs(&Value) != 3 || mlir::AffineMap::getNumInputs(&v15) != 3 || mlir::AffineMap::getNumInputs(&v14) != 3)
  {
    return 0;
  }

  v2 = mlir::AffineMap::getResult(&Value, 0);
  v3 = mlir::AffineMap::getResult(&Value, 1u);
  v4 = mlir::AffineMap::getResult(&v14, 1u);
  Context = mlir::Attribute::getContext(&v17);
  v18 = v2;
  v19 = v3;
  v6 = mlir::AffineMap::get(3, 0, &v18, 2, Context);
  v7 = mlir::AffineMapAttr::get(v6);
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v8 = mlir::AffineMap::get(3, 0, &v18, 3, Context);
  v9 = mlir::AffineMapAttr::get(v8);
  v18 = v2;
  v19 = v4;
  v10 = mlir::AffineMap::get(3, 0, &v18, 2, Context);
  v11 = mlir::AffineMapAttr::get(v10);
  v18 = v7;
  v19 = v9;
  v20 = v11;
  v12 = mlir::ArrayAttr::get(Context, &v18, 3);
  return v17 == v12;
}

BOOL mlir::isMatvec(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v16 = a1;
  mlir::ArrayAttr::getValue(&v16);
  if (v1 != 3)
  {
    return 0;
  }

  v17 = *mlir::ArrayAttr::getValue(&v16);
  Value = mlir::AffineMapAttr::getValue(&v17);
  v17 = *(mlir::ArrayAttr::getValue(&v16) + 8);
  v14 = mlir::AffineMapAttr::getValue(&v17);
  v17 = *(mlir::ArrayAttr::getValue(&v16) + 16);
  v13 = mlir::AffineMapAttr::getValue(&v17);
  if (mlir::AffineMap::getNumResults(&Value) != 2 || mlir::AffineMap::getNumResults(&v14) != 1 || mlir::AffineMap::getNumResults(&v13) != 1 || mlir::AffineMap::getNumInputs(&Value) != 2 || mlir::AffineMap::getNumInputs(&v14) != 2 || mlir::AffineMap::getNumInputs(&v13) != 2)
  {
    return 0;
  }

  v2 = mlir::AffineMap::getResult(&v14, 0);
  v3 = mlir::AffineMap::getResult(&v13, 0);
  Context = mlir::Attribute::getContext(&v16);
  v17 = v3;
  v18 = v2;
  v5 = mlir::AffineMap::get(2, 0, &v17, 2, Context);
  v6 = mlir::AffineMapAttr::get(v5);
  v17 = v2;
  v7 = mlir::AffineMap::get(2, 0, &v17, 1, Context);
  v8 = mlir::AffineMapAttr::get(v7);
  v17 = v3;
  v9 = mlir::AffineMap::get(2, 0, &v17, 1, Context);
  v10 = mlir::AffineMapAttr::get(v9);
  v17 = v6;
  v18 = v8;
  v19 = v10;
  v11 = mlir::ArrayAttr::get(Context, &v17, 3);
  return v16 == v11;
}

BOOL mlir::isBatchMatvec(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v17 = a1;
  mlir::ArrayAttr::getValue(&v17);
  if (v1 != 3)
  {
    return 0;
  }

  v18 = *mlir::ArrayAttr::getValue(&v17);
  Value = mlir::AffineMapAttr::getValue(&v18);
  v18 = *(mlir::ArrayAttr::getValue(&v17) + 8);
  v15 = mlir::AffineMapAttr::getValue(&v18);
  v18 = *(mlir::ArrayAttr::getValue(&v17) + 16);
  v14 = mlir::AffineMapAttr::getValue(&v18);
  if (mlir::AffineMap::getNumResults(&Value) != 3 || mlir::AffineMap::getNumResults(&v15) != 2 || mlir::AffineMap::getNumResults(&v14) != 2 || mlir::AffineMap::getNumInputs(&Value) != 3 || mlir::AffineMap::getNumInputs(&v15) != 3 || mlir::AffineMap::getNumInputs(&v14) != 3)
  {
    return 0;
  }

  v2 = mlir::AffineMap::getResult(&Value, 0);
  v3 = mlir::AffineMap::getResult(&v15, 1u);
  v4 = mlir::AffineMap::getResult(&v14, 1u);
  Context = mlir::Attribute::getContext(&v17);
  v18 = v2;
  v19 = v4;
  v20 = v3;
  v6 = mlir::AffineMap::get(3, 0, &v18, 3, Context);
  v7 = mlir::AffineMapAttr::get(v6);
  v18 = v2;
  v19 = v3;
  v8 = mlir::AffineMap::get(3, 0, &v18, 2, Context);
  v9 = mlir::AffineMapAttr::get(v8);
  v18 = v2;
  v19 = v4;
  v10 = mlir::AffineMap::get(3, 0, &v18, 2, Context);
  v11 = mlir::AffineMapAttr::get(v10);
  v18 = v7;
  v19 = v9;
  v20 = v11;
  v12 = mlir::ArrayAttr::get(Context, &v18, 3);
  return v17 == v12;
}

void mlir::clone(mlir::OpBuilder *a1, mlir::Operation *this, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v19[38] = *MEMORY[0x277D85DE8];
  v12 = *(this + 3);
  v13 = *(this + 6);
  v19[0] = mlir::Operation::getAttrDictionary(this);
  Value = mlir::DictionaryAttr::getValue(v19);
  v16 = v15;
  mlir::BlockRange::BlockRange(v18, 0, 0);
  mlir::OperationState::OperationState(v19, v12, v13, a5, a6, a3, a4, v17, Value, v16, v18[0], v18[1], 0, 0);
  if ((*(this + 11) & 0x7FFFFF) != 0)
  {
    mlir::OperationState::addRegion(v19);
  }

  mlir::OpBuilder::create(a1, v19);
  mlir::OperationState::~OperationState(v19);
  llvm::deallocate_buffer(0, 0);
}

uint64_t mlir::cloneWithoutRegions(mlir::OpBuilder *a1, mlir::Operation *this, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v21[38] = *MEMORY[0x277D85DE8];
  v12 = *(this + 3);
  v13 = *(this + 6);
  v21[0] = mlir::Operation::getAttrDictionary(this);
  Value = mlir::DictionaryAttr::getValue(v21);
  v16 = v15;
  mlir::BlockRange::BlockRange(v20, 0, 0);
  mlir::OperationState::OperationState(v21, v12, v13, a5, a6, a3, a4, v17, Value, v16, v20[0], v20[1], 0, 0);
  if ((*(this + 11) & 0x7FFFFF) != 0)
  {
    mlir::OperationState::addRegion(v21);
  }

  v18 = mlir::OpBuilder::create(a1, v21);
  mlir::OperationState::~OperationState(v21);
  return v18;
}

void mlir::getPrunedAttributeList(mlir::Operation *this@<X0>, uint64_t a2@<X1>, const unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v27 = 0;
  v28 = 0;
  v29 = 0x800000000;
  if (a3)
  {
    v6 = a2;
    v7 = a2 + 16 * a3;
    do
    {
      v8 = *v6;
      v9 = *(v6 + 8);
      v6 += 16;
      v10 = llvm::StringMapImpl::hash(v8, v9, a3);
      llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace_with_hash<>(&v27, v8, v9, v10);
    }

    while (v6 != v7);
  }

  *a4 = a4 + 16;
  *(a4 + 8) = 0x300000000;
  *&v26 = mlir::Operation::getAttrDictionary(this);
  Value = mlir::DictionaryAttr::getValue(&v26);
  if (v12)
  {
    v13 = Value;
    v14 = 16 * v12;
    do
    {
      v26 = *v13;
      Name = mlir::NamedAttribute::getName(&v26);
      v16 = mlir::StringAttr::getValue(&Name);
      v18 = v17;
      v20 = llvm::StringMapImpl::hash(v16, v17, v19);
      Key = llvm::StringMapImpl::FindKey(&v27, v16, v18, v20);
      if (Key == -1 || Key == v28)
      {
        v15 = *(a4 + 8);
        if (v15 >= *(a4 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a4 + 16 * v15) = v26;
        ++*(a4 + 8);
      }

      ++v13;
      v14 -= 16;
    }

    while (v14);
  }

  if (HIDWORD(v28) && v28)
  {
    v22 = 0;
    do
    {
      v23 = *(v27 + v22);
      if (v23 != -8 && v23 != 0)
      {
        llvm::deallocate_buffer(v23, (*v23 + 9));
      }

      v22 += 8;
    }

    while (8 * v28 != v22);
  }

  free(v27);
}

BOOL mlir::isZeroIndex(unint64_t a1)
{
  if (a1 < 8)
  {
    return 0;
  }

  v1 = mlir::getConstantIntValue(a1) == 0;
  return (v2 & 1) != 0 && v1;
}

unint64_t mlir::getConstantIntValue(uint64_t a1)
{
  v1 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((a1 & 4) != 0 && v1)
  {
    v12 = 1;
    v13 = 0;
    v10 = &v11;
    v11 = 0;
    v14 = a1 & 0xFFFFFFFFFFFFFFF8;
    DefiningOp = mlir::Value::getDefiningOp(&v14);
    if (DefiningOp)
    {
      v15 = &v16;
      v16 = 0;
      if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v15, DefiningOp))
      {
        v3 = *(*(*(DefiningOp - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
        v4 = v3 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
        v5 = v4 || v3 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
        v6 = v5 || v3 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
        if (v6 && mlir::detail::constant_int_value_binder::match(&v10, v16))
        {
          if (v12 > 0x40)
          {
            DefiningOp = *v11;
          }

          else if (v12)
          {
            DefiningOp = (v11 << -v12) >> -v12;
          }

          else
          {
            DefiningOp = 0;
          }

          v8 = DefiningOp & 0xFFFFFFFFFFFFFF00;
          if (v12 < 0x41)
          {
            return v8 | DefiningOp;
          }

LABEL_29:
          if (v11)
          {
            MEMORY[0x259C63150](v11, 0x1000C8000313F17);
          }

          return v8 | DefiningOp;
        }
      }

      LOBYTE(DefiningOp) = 0;
    }

    v8 = 0;
    if (v12 < 0x41)
    {
      return v8 | DefiningOp;
    }

    goto LABEL_29;
  }

  if (!v1 || (a1 & 4) != 0)
  {
    goto LABEL_26;
  }

  v7 = *(*v1 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v1 = 0;
  }

  v16 = v1;
  if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    mlir::IntegerAttr::getValue(&v16, &v11);
    if (v12 > 0x40)
    {
      DefiningOp = *v11;
      MEMORY[0x259C63150]();
    }

    else if (v12)
    {
      DefiningOp = (v11 << -v12) >> -v12;
    }

    else
    {
      DefiningOp = 0;
    }

    v8 = DefiningOp & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
LABEL_26:
    LOBYTE(DefiningOp) = 0;
    v8 = 0;
  }

  return v8 | DefiningOp;
}

void mlir::getOffsetsSizesAndStrides(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1;
  v12[6] = *MEMORY[0x277D85DE8];
  v10 = v12;
  v11 = 0x600000000;
  v7 = v9;
  v8 = 0x600000000;
  v4 = v6;
  v5 = 0x600000000;
  if (a2 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2 > HIDWORD(v5))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2)
  {
    do
    {
      if (v11 >= HIDWORD(v11))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v10 + v11) = *v3;
      LODWORD(v11) = v11 + 1;
      if (v8 >= HIDWORD(v8))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v7 + v8) = v3[1];
      LODWORD(v8) = v8 + 1;
      if (v5 >= HIDWORD(v5))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v4 + v5) = v3[2];
      LODWORD(v5) = v5 + 1;
      v3 += 3;
    }

    while (v3 != &a1[3 * a2]);
  }

  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEES7_S7_EEC2B8nn200100IJLm0ELm1ELm2EEJS7_S7_S7_EJEJEJRS7_SA_SA_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_(a3, &v10, &v7, &v4);
  if (v4 != v6)
  {
    free(v4);
  }

  if (v7 != v9)
  {
    free(v7);
  }

  if (v10 != v12)
  {
    free(v10);
  }
}

uint64_t *mlir::dispatchIndexOpFoldResult(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result & 0xFFFFFFFFFFFFFFF8;
  if ((result & 4) != 0 && v4)
  {
    v5 = *(a2 + 8);
    if (v5 >= *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a2 + 8 * v5) = v4;
    ++*(a2 + 8);
    v6 = *(a3 + 8);
    if (v6 >= *(a3 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a3 + 8 * v6) = 0x8000000000000000;
    ++*(a3 + 8);
  }

  else
  {
    v9 = result & 0xFFFFFFFFFFFFFFF8;
    result = mlir::IntegerAttr::getValue(&v9, &v10);
    if (v11 > 0x40)
    {
      v7 = *v10;
    }

    else if (v11)
    {
      v7 = (v10 << -v11) >> -v11;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a3 + 8);
    if (v8 >= *(a3 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a3 + 8 * v8) = v7;
    ++*(a3 + 8);
    if (v11 >= 0x41)
    {
      result = v10;
      if (v10)
      {
        return MEMORY[0x259C63150](v10, 0x1000C8000313F17);
      }
    }
  }

  return result;
}

uint64_t *mlir::dispatchIndexOpFoldResults(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = result;
    v7 = 8 * a2;
    do
    {
      v8 = *v6++;
      result = mlir::dispatchIndexOpFoldResult(v8, a3, a4);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

unint64_t mlir::getAsOpFoldResult(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = &v4;
    v4 = 0;
    v5 = result;
    DefiningOp = mlir::Value::getDefiningOp(&v5);
    if (DefiningOp && mlir::detail::constant_op_binder<mlir::Attribute>::match(&v3, DefiningOp))
    {
      return v4 & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      return v1 | 4;
    }
  }

  return result;
}

uint64_t mlir::getAsOpFoldResult@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, unint64_t **a3@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  *a3 = (a3 + 2);
  a3[1] = 0x600000000;
  if (a2 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v13 = result;
  v14 = xmmword_25736B790;
  if (a2)
  {
    v5 = 0;
    v6 = *a3;
    do
    {
      result = mlir::ValueRange::dereference_iterator(&v13, v5);
      if (result)
      {
        v8 = result;
        v10 = &v11;
        v11 = 0;
        v12 = result;
        result = mlir::Value::getDefiningOp(&v12);
        if (result && (result = mlir::detail::constant_op_binder<mlir::Attribute>::match(&v10, result), result))
        {
          v7 = v11 & 0xFFFFFFFFFFFFFFFBLL;
        }

        else
        {
          v7 = v8 | 4;
        }
      }

      else
      {
        v7 = 0;
      }

      *v6++ = v7;
      v5 = v14 + 1;
      *&v14 = v5;
    }

    while (v5 != a2);
    v9 = *(a3 + 2);
  }

  else
  {
    v9 = 0;
  }

  *(a3 + 2) = v9 + a2;
  return result;
}

uint64_t mlir::getAsOpFoldResult@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a1;
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  mlir::ArrayAttr::getValue(&v9);
  if (v3 > *(a2 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  Value = mlir::ArrayAttr::getValue(&v9);
  result = mlir::ArrayAttr::getValue(&v9);
  v7 = (result + 8 * v6);
  if (v7 != Value)
  {
    v8 = *(a2 + 8);
    do
    {
      if (v8 >= *(a2 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a2 + 8 * v8) = *Value & 0xFFFFFFFFFFFFFFFBLL;
      v8 = *(a2 + 8) + 1;
      *(a2 + 8) = v8;
      ++Value;
    }

    while (Value != v7);
  }

  return result;
}

uint64_t mlir::getAsIndexOpFoldResult@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X8>)
{
  v5 = result;
  v7 = (a4 + 2);
  *a4 = (a4 + 2);
  a4[1] = 0x600000000;
  if (((8 * a3) >> 3) >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v8 = 0;
  v9 = 8 * a3;
  if (a3)
  {
    v10 = *a4;
    v11 = 8 * a3;
    do
    {
      v12 = *a2++;
      v13 = mlir::IndexType::get(v5, v7);
      result = mlir::IntegerAttr::get(v13, v12);
      *v10++ = result & 0xFFFFFFFFFFFFFFFBLL;
      v11 -= 8;
    }

    while (v11);
    v8 = *(a4 + 2);
  }

  *(a4 + 2) = v8 + (v9 >> 3);
  return result;
}

void mlir::getConstantIntValues(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v18[6] = *MEMORY[0x277D85DE8];
  __src = v18;
  v17 = 0x600000000;
  if (a2 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2)
  {
    v6 = 0;
    v7 = 8 * a2;
    v8 = v18;
    do
    {
      v9 = *a1++;
      ConstantIntValue = mlir::getConstantIntValue(v9);
      v6 |= v11 ^ 1;
      if (v11)
      {
        v12 = ConstantIntValue;
      }

      else
      {
        v12 = 0;
      }

      *v8++ = v12;
      v7 -= 8;
    }

    while (v7);
    v13 = v17 + v3;
    LODWORD(v17) = v13;
    if (v6)
    {
      v14 = 0;
      *a3 = 0;
      goto LABEL_21;
    }

    *a3 = a3 + 16;
    *(a3 + 8) = 0x600000000;
    v14 = 1;
    if (!v13 || &__src == a3)
    {
      goto LABEL_21;
    }

    if (__src == v18)
    {
      if (v13 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(*a3, __src, 8 * v13);
      *(a3 + 8) = v13;
    }

    else
    {
      *a3 = __src;
      v15 = HIDWORD(v17);
      *(a3 + 8) = v13;
      *(a3 + 12) = v15;
      __src = v18;
      HIDWORD(v17) = 0;
    }

    LODWORD(v17) = 0;
  }

  else
  {
    *a3 = a3 + 16;
    *(a3 + 8) = 0x600000000;
  }

  v14 = 1;
LABEL_21:
  *(a3 + 64) = v14;
  if (__src != v18)
  {
    free(__src);
  }
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

uint64_t mlir::isEqualConstantIntOrValueArray(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 8 * a2;
  do
  {
    v7 = *a1;
    v8 = *a3;
    ConstantIntValue = mlir::getConstantIntValue(*a1);
    v11 = v10;
    v12 = mlir::getConstantIntValue(v8);
    if ((v11 & 1) == 0 || (v13 & 1) == 0 || ConstantIntValue != v12)
    {
      result = 0;
      if ((v7 & 4) == 0 || (v7 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        return result;
      }

      if ((v7 & 0xFFFFFFFFFFFFFFF8) != (v8 & (v8 << 61 >> 63) & 0xFFFFFFFFFFFFFFF8))
      {
        return 0;
      }
    }

    ++a1;
    ++a3;
    v6 -= 8;
  }

  while (v6);
  return 1;
}

uint64_t mlir::getMixedValues@<X0>(uint64_t **this@<X4>, uint64_t result@<X0>, unint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X8>)
{
  v7 = result;
  v15[2] = *MEMORY[0x277D85DE8];
  v15[0] = a4;
  v15[1] = a5;
  *a6 = a6 + 16;
  *(a6 + 8) = 0x600000000;
  if (a3 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v9 = a3;
  if (a3)
  {
    v10 = 0;
    do
    {
      v12 = *v7++;
      v11 = v12;
      if (v12 == 0x8000000000000000)
      {
        result = mlir::ValueRange::dereference_iterator(v15, v10);
        v13 = result | 4;
        ++v10;
      }

      else
      {
        result = mlir::Builder::getI64IntegerAttr(this, v11);
        v13 = result & 0xFFFFFFFFFFFFFFFBLL;
      }

      v14 = *(a6 + 8);
      if (v14 >= *(a6 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a6 + 8 * v14) = v13;
      ++*(a6 + 8);
      --v9;
    }

    while (v9);
  }

  return result;
}

void mlir::decomposeMixedValues(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[6] = *MEMORY[0x277D85DE8];
  __src = v15;
  v14 = 0x600000000;
  v10 = v12;
  v11 = 0x600000000;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1;
    v5 = 8 * v3;
    do
    {
      while ((*v4 & 4) != 0)
      {
        if (v14 >= HIDWORD(v14))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(__src + v14) = 0x8000000000000000;
        LODWORD(v14) = v14 + 1;
        if (v11 >= HIDWORD(v11))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v10 + v11) = *v4 & 0xFFFFFFFFFFFFFFF8;
        LODWORD(v11) = v11 + 1;
        ++v4;
        v5 -= 8;
        if (!v5)
        {
          goto LABEL_14;
        }
      }

      v9 = *v4 & 0xFFFFFFFFFFFFFFF8;
      Int = mlir::IntegerAttr::getInt(&v9);
      if (v14 >= HIDWORD(v14))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(__src + v14) = Int;
      LODWORD(v14) = v14 + 1;
      ++v4;
      v5 -= 8;
    }

    while (v5);
LABEL_14:
    v7 = v14;
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000000;
    if (&__src != a2 && v7)
    {
      if (v7 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy((a2 + 16), __src, 8 * v7);
      *(a2 + 8) = v7;
    }
  }

  else
  {
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000000;
  }

  *(a2 + 64) = a2 + 80;
  *(a2 + 72) = 0x600000000;
  if ((a2 + 64) != &v10)
  {
    v8 = v11;
    if (v11)
    {
      if (v11 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy((a2 + 80), v10, 8 * v11);
      *(a2 + 72) = v8;
    }
  }

  if (v10 != v12)
  {
    free(v10);
  }

  if (__src != v15)
  {
    free(__src);
  }
}

void mlir::getValuesSortedByKey(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30[4] = *MEMORY[0x277D85DE8];
  v25[0] = a1;
  v25[1] = a2;
  v24[0] = a5;
  v24[1] = a6;
  if (a2)
  {
    v27 = v29;
    v28 = 0x600000000;
    if (a4 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (a4)
    {
      if (a4 < 4)
      {
        v10 = 0;
        v11 = v29;
        goto LABEL_16;
      }

      v10 = a4 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = &v29[a4 & 0xFFFFFFFFFFFFFFFCLL];
      v12 = v30;
      v13 = xmmword_2573686A0;
      v14 = vdupq_n_s64(2uLL);
      v15 = vdupq_n_s64(4uLL);
      v16 = a4 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v12[-1] = v13;
        *v12 = vaddq_s64(v13, v14);
        v13 = vaddq_s64(v13, v15);
        v12 += 2;
        v16 -= 4;
      }

      while (v16);
      while (a4 != v10)
      {
LABEL_16:
        *v11++ = v10++;
      }
    }

    LODWORD(v28) = a4;
    v26[0] = v24;
    v26[1] = v25;
    v19 = 126 - 2 * __clz(a4);
    if (a4)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN4mlirL24getValuesSortedByKeyImplINS2_9AttributeENS2_5ValueEEEN4llvm11SmallVectorIT0_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEENS6_8ArrayRefIT_EENSA_IS8_EENS6_12function_refIFbSB_SB_EEEEUlxxE_PxLb0EEEvT1_SK_S8_NS_15iterator_traitsISK_E15difference_typeEb(v29, &v29[a4], v26, v20, 1);
    *a7 = a7 + 16;
    *(a7 + 8) = 0x600000000;
    if (a4 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v28)
    {
      v21 = 0;
      v22 = *(a7 + 8);
      v23 = 8 * v28;
      do
      {
        if (v22 >= *(a7 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a7 + 8 * v22) = a3[*(v27 + v21)];
        v22 = *(a7 + 8) + 1;
        *(a7 + 8) = v22;
        v21 += 8;
      }

      while (v23 != v21);
    }

    if (v27 != v29)
    {
      free(v27);
    }
  }

  else
  {
    *a7 = a7 + 16;
    *(a7 + 8) = 0x600000000;
    if (((8 * a4) >> 3) >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v17 = 0;
    v18 = 8 * a4;
    if (a4)
    {
      memcpy(*a7, a3, v18);
      v17 = *(a7 + 8);
    }

    *(a7 + 8) = v17 + (v18 >> 3);
  }
}

{
  v30[4] = *MEMORY[0x277D85DE8];
  v25[0] = a1;
  v25[1] = a2;
  v24[0] = a5;
  v24[1] = a6;
  if (a2)
  {
    v27 = v29;
    v28 = 0x600000000;
    if (a4 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (a4)
    {
      if (a4 < 4)
      {
        v10 = 0;
        v11 = v29;
        goto LABEL_16;
      }

      v10 = a4 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = &v29[a4 & 0xFFFFFFFFFFFFFFFCLL];
      v12 = v30;
      v13 = xmmword_2573686A0;
      v14 = vdupq_n_s64(2uLL);
      v15 = vdupq_n_s64(4uLL);
      v16 = a4 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v12[-1] = v13;
        *v12 = vaddq_s64(v13, v14);
        v13 = vaddq_s64(v13, v15);
        v12 += 2;
        v16 -= 4;
      }

      while (v16);
      while (a4 != v10)
      {
LABEL_16:
        *v11++ = v10++;
      }
    }

    LODWORD(v28) = a4;
    v26[0] = v24;
    v26[1] = v25;
    v19 = 126 - 2 * __clz(a4);
    if (a4)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN4mlirL24getValuesSortedByKeyImplINS2_9AttributeENS2_5ValueEEEN4llvm11SmallVectorIT0_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEENS6_8ArrayRefIT_EENSA_IS8_EENS6_12function_refIFbSB_SB_EEEEUlxxE_PxLb0EEEvT1_SK_S8_NS_15iterator_traitsISK_E15difference_typeEb(v29, &v29[a4], v26, v20, 1);
    *a7 = a7 + 16;
    *(a7 + 8) = 0x600000000;
    if (a4 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v28)
    {
      v21 = 0;
      v22 = *(a7 + 8);
      v23 = 8 * v28;
      do
      {
        if (v22 >= *(a7 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a7 + 8 * v22) = a3[*(v27 + v21)];
        v22 = *(a7 + 8) + 1;
        *(a7 + 8) = v22;
        v21 += 8;
      }

      while (v23 != v21);
    }

    if (v27 != v29)
    {
      free(v27);
    }
  }

  else
  {
    *a7 = a7 + 16;
    *(a7 + 8) = 0x600000000;
    if (((8 * a4) >> 3) >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v17 = 0;
    v18 = 8 * a4;
    if (a4)
    {
      memcpy(*a7, a3, v18);
      v17 = *(a7 + 8);
    }

    *(a7 + 8) = v17 + (v18 >> 3);
  }
}

{
  v30[4] = *MEMORY[0x277D85DE8];
  v25[0] = a1;
  v25[1] = a2;
  v24[0] = a5;
  v24[1] = a6;
  if (a2)
  {
    v27 = v29;
    v28 = 0x600000000;
    if (a4 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (a4)
    {
      if (a4 < 4)
      {
        v10 = 0;
        v11 = v29;
        goto LABEL_16;
      }

      v10 = a4 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = &v29[a4 & 0xFFFFFFFFFFFFFFFCLL];
      v12 = v30;
      v13 = xmmword_2573686A0;
      v14 = vdupq_n_s64(2uLL);
      v15 = vdupq_n_s64(4uLL);
      v16 = a4 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v12[-1] = v13;
        *v12 = vaddq_s64(v13, v14);
        v13 = vaddq_s64(v13, v15);
        v12 += 2;
        v16 -= 4;
      }

      while (v16);
      while (a4 != v10)
      {
LABEL_16:
        *v11++ = v10++;
      }
    }

    LODWORD(v28) = a4;
    v26[0] = v24;
    v26[1] = v25;
    v19 = 126 - 2 * __clz(a4);
    if (a4)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN4mlirL24getValuesSortedByKeyImplINS2_9AttributeENS2_5ValueEEEN4llvm11SmallVectorIT0_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEENS6_8ArrayRefIT_EENSA_IS8_EENS6_12function_refIFbSB_SB_EEEEUlxxE_PxLb0EEEvT1_SK_S8_NS_15iterator_traitsISK_E15difference_typeEb(v29, &v29[a4], v26, v20, 1);
    *a7 = a7 + 16;
    *(a7 + 8) = 0x600000000;
    if (a4 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v28)
    {
      v21 = 0;
      v22 = *(a7 + 8);
      v23 = 8 * v28;
      do
      {
        if (v22 >= *(a7 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a7 + 8 * v22) = a3[*(v27 + v21)];
        v22 = *(a7 + 8) + 1;
        *(a7 + 8) = v22;
        v21 += 8;
      }

      while (v23 != v21);
    }

    if (v27 != v29)
    {
      free(v27);
    }
  }

  else
  {
    *a7 = a7 + 16;
    *(a7 + 8) = 0x600000000;
    if (((8 * a4) >> 3) >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v17 = 0;
    v18 = 8 * a4;
    if (a4)
    {
      memcpy(*a7, a3, v18);
      v17 = *(a7 + 8);
    }

    *(a7 + 8) = v17 + (v18 >> 3);
  }
}

uint64_t mlir::constantTripCount(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  ConstantIntValue = mlir::getConstantIntValue(a1);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = ConstantIntValue;
  v9 = mlir::getConstantIntValue(a2);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = v9;
  v12 = mlir::getConstantIntValue(a3);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = v11 - v8;
  if (v11 != v8)
  {
    if ((v12 ^ v14) < 0)
    {
      v14 /= v12;
    }

    else
    {
      if (v12 < 0)
      {
        v15 = v14 + 1;
      }

      else
      {
        v15 = v14 - 1;
      }

      return v15 / v12 + 1;
    }
  }

  return v14;
}

BOOL mlir::hasValidSizesOffsets(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 1;
  }

  v2 = *a1;
  v3 = 8 * v1 - 8;
  do
  {
    v4 = *v2++;
    result = v4 < 0x8000000000000001;
    v6 = v4 > 0x8000000000000000 || v3 == 0;
    v3 -= 8;
  }

  while (!v6);
  return result;
}

BOOL mlir::hasValidStrides(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 1;
  }

  v2 = *a1;
  v3 = 8 * v1 - 8;
  do
  {
    v4 = *v2++;
    result = v4 != 0;
    if (v4)
    {
      v6 = v3 == 0;
    }

    else
    {
      v6 = 1;
    }

    v3 -= 8;
  }

  while (!v6);
  return result;
}

uint64_t mlir::foldDynamicIndexList(uint64_t a1, int a2, char a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1;
    v5 = 0;
    v6 = 8 * v3;
    if (a2)
    {
      if (a3)
      {
        do
        {
          v7 = *v4;
          if ((*v4 & 4) != 0)
          {
            v16 = &v17;
            v17 = 0;
            v18 = v7 & 0xFFFFFFFFFFFFFFF8;
            DefiningOp = mlir::Value::getDefiningOp(&v18);
            if (DefiningOp)
            {
              if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v16, DefiningOp) && (mlir::getConstantIntValue(v17 & 0xFFFFFFFFFFFFFFFBLL) & 0x8000000000000000) == 0 && mlir::getConstantIntValue(v17 & 0xFFFFFFFFFFFFFFFBLL))
              {
                *v4 = v17 & 0xFFFFFFFFFFFFFFFBLL;
                v5 = 1;
              }
            }
          }

          ++v4;
          v6 -= 8;
        }

        while (v6);
      }

      else
      {
        do
        {
          v9 = *v4;
          if ((*v4 & 4) != 0)
          {
            v16 = &v17;
            v17 = 0;
            v18 = v9 & 0xFFFFFFFFFFFFFFF8;
            v10 = mlir::Value::getDefiningOp(&v18);
            if (v10)
            {
              if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v16, v10) && (mlir::getConstantIntValue(v17 & 0xFFFFFFFFFFFFFFFBLL) & 0x8000000000000000) == 0)
              {
                *v4 = v17 & 0xFFFFFFFFFFFFFFFBLL;
                v5 = 1;
              }
            }
          }

          ++v4;
          v6 -= 8;
        }

        while (v6);
      }
    }

    else if (a3)
    {
      do
      {
        v12 = *v4;
        if ((*v4 & 4) != 0)
        {
          v16 = &v17;
          v17 = 0;
          v18 = v12 & 0xFFFFFFFFFFFFFFF8;
          v13 = mlir::Value::getDefiningOp(&v18);
          if (v13)
          {
            if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v16, v13) && mlir::getConstantIntValue(v17 & 0xFFFFFFFFFFFFFFFBLL))
            {
              *v4 = v17 & 0xFFFFFFFFFFFFFFFBLL;
              v5 = 1;
            }
          }
        }

        ++v4;
        v6 -= 8;
      }

      while (v6);
    }

    else
    {
      do
      {
        v14 = *v4;
        if ((*v4 & 4) != 0)
        {
          v16 = &v17;
          v17 = 0;
          v18 = v14 & 0xFFFFFFFFFFFFFFF8;
          v15 = mlir::Value::getDefiningOp(&v18);
          if (v15)
          {
            if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v16, v15))
            {
              *v4 = v17 & 0xFFFFFFFFFFFFFFFBLL;
              v5 = 1;
            }
          }
        }

        ++v4;
        v6 -= 8;
      }

      while (v6);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t mlir::foldDynamicOffsetSizeList(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = 0;
    v3 = *a1;
    v4 = 8 * v1;
    do
    {
      v5 = *v3;
      if ((*v3 & 4) != 0)
      {
        v8 = &v9;
        v9 = 0;
        v10 = v5 & 0xFFFFFFFFFFFFFFF8;
        DefiningOp = mlir::Value::getDefiningOp(&v10);
        if (DefiningOp)
        {
          if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v8, DefiningOp) && (mlir::getConstantIntValue(v9 & 0xFFFFFFFFFFFFFFFBLL) & 0x8000000000000000) == 0)
          {
            *v3 = v9 & 0xFFFFFFFFFFFFFFFBLL;
            v2 = 1;
          }
        }
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t mlir::foldDynamicStrideList(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = 0;
    v3 = *a1;
    v4 = 8 * v1;
    do
    {
      v5 = *v3;
      if ((*v3 & 4) != 0)
      {
        v8 = &v9;
        v9 = 0;
        v10 = v5 & 0xFFFFFFFFFFFFFFF8;
        DefiningOp = mlir::Value::getDefiningOp(&v10);
        if (DefiningOp)
        {
          if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v8, DefiningOp) && mlir::getConstantIntValue(v9 & 0xFFFFFFFFFFFFFFFBLL))
          {
            *v3 = v9 & 0xFFFFFFFFFFFFFFFBLL;
            v2 = 1;
          }
        }
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEES7_S7_EEC2B8nn200100IJLm0ELm1ELm2EEJS7_S7_S7_EJEJEJRS7_SA_SA_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  if (a1 != a2)
  {
    v7 = *(a2 + 8);
    if (v7)
    {
      if (v7 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(a1 + 2, *a2, 8 * *(a2 + 8));
      *(a1 + 2) = v7;
    }
  }

  a1[8] = a1 + 10;
  a1[9] = 0x600000000;
  if (a1 + 8 != a3)
  {
    v8 = *(a3 + 8);
    if (v8)
    {
      if (v8 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(a1 + 10, *a3, 8 * *(a3 + 8));
      *(a1 + 18) = v8;
    }
  }

  a1[16] = a1 + 18;
  a1[17] = 0x600000000;
  if (a1 + 16 != a4)
  {
    v9 = *(a4 + 8);
    if (v9)
    {
      if (v9 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(a1 + 18, *a4, 8 * *(a4 + 8));
      *(a1 + 34) = v9;
    }
  }

  return a1;
}

uint64_t _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN4mlirL24getValuesSortedByKeyImplINS2_9AttributeENS2_5ValueEEEN4llvm11SmallVectorIT0_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEENS6_8ArrayRefIT_EENSA_IS8_EENS6_12function_refIFbSB_SB_EEEEUlxxE_PxLb0EEEvT1_SK_S8_NS_15iterator_traitsISK_E15difference_typeEb(uint64_t result, int8x16_t *a2, void **a3, uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v10 = &a2[-1].i64[1];
    v89 = a2;
    i64 = a2[-1].i64;
    v88 = &a2[-2].i64[1];
    v11 = v9;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = v11;
          v12 = (a2 - v11) >> 3;
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:

                return _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN4mlirL24getValuesSortedByKeyImplINS2_9AttributeENS2_5ValueEEEN4llvm11SmallVectorIT0_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEENS6_8ArrayRefIT_EENSA_IS8_EENS6_12function_refIFbSB_SB_EEEEUlxxE_PxLi0EEEbT1_SK_SK_S8_(v11->i64, &v11->i64[1], v10, a3);
              case 4:
                _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN4mlirL24getValuesSortedByKeyImplINS2_9AttributeENS2_5ValueEEEN4llvm11SmallVectorIT0_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEENS6_8ArrayRefIT_EENSA_IS8_EENS6_12function_refIFbSB_SB_EEEEUlxxE_PxLi0EEEbT1_SK_SK_S8_(v11->i64, &v11->i64[1], v11[1].i64, a3);
                result = (**a3)((*a3)[1], *(*a3[1] + 8 * a2[-1].i64[1]), *(*a3[1] + 8 * v11[1].i64[0]));
                if (result)
                {
                  v40 = v11[1].i64[0];
                  v11[1].i64[0] = a2[-1].i64[1];
                  a2[-1].i64[1] = v40;
                  result = (**a3)((*a3)[1], *(*a3[1] + 8 * v11[1].i64[0]), *(*a3[1] + 8 * v11->i64[1]));
                  if (result)
                  {
                    v42 = v11->i64[1];
                    v41 = v11[1].i64[0];
                    v43 = v11->i64[0];
                    v11->i64[1] = v41;
                    v11[1].i64[0] = v42;
                    result = (**a3)((*a3)[1], *(*a3[1] + 8 * v41), *(*a3[1] + 8 * v43));
                    if (result)
                    {
                      *v11 = vextq_s8(*v11, *v11, 8uLL);
                    }
                  }
                }

                return result;
              case 5:

                return _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZN4mlirL24getValuesSortedByKeyImplINS2_9AttributeENS2_5ValueEEEN4llvm11SmallVectorIT0_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEENS6_8ArrayRefIT_EENSA_IS8_EENS6_12function_refIFbSB_SB_EEEEUlxxE_PxLi0EEEvT1_SK_SK_SK_SK_S8_(v11->i64, &v11->i64[1], v11[1].i64, &v11[1].i64[1], v10, a3);
            }
          }

          else
          {
            if (v12 < 2)
            {
              return result;
            }

            if (v12 == 2)
            {
              result = (**a3)((*a3)[1], *(*a3[1] + 8 * a2[-1].i64[1]), *(*a3[1] + 8 * v11->i64[0]));
              if (result)
              {
                v39 = v11->i64[0];
                v11->i64[0] = a2[-1].i64[1];
                a2[-1].i64[1] = v39;
              }

              return result;
            }
          }

          if (v12 <= 23)
          {
            v44 = &v11->u64[1];
            v46 = v11 == a2 || v44 == a2;
            if (a5)
            {
              if (!v46)
              {
                v47 = 0;
                v48 = v11;
                do
                {
                  v51 = *v48;
                  v50 = v48[1];
                  v48 = v44;
                  result = (**a3)((*a3)[1], *(*a3[1] + 8 * v50), *(*a3[1] + 8 * v51));
                  if (result)
                  {
                    v52 = *v48;
                    v53 = v47;
                    do
                    {
                      *(&v11->i64[1] + v53) = *(v11->i64 + v53);
                      if (!v53)
                      {
                        v49 = v11;
                        goto LABEL_82;
                      }

                      result = (**a3)((*a3)[1], *(*a3[1] + 8 * v52), *(*a3[1] + 8 * *(&v11->i64[-1] + v53)));
                      v53 -= 8;
                    }

                    while ((result & 1) != 0);
                    v49 = (&v11->i64[1] + v53);
LABEL_82:
                    *v49 = v52;
                  }

                  v44 = (v48 + 1);
                  v47 += 8;
                }

                while (v48 + 1 != a2);
              }
            }

            else if (!v46)
            {
              do
              {
                v83 = v9->i64[0];
                v82 = v9->i64[1];
                v9 = v44;
                result = (**a3)((*a3)[1], *(*a3[1] + 8 * v82), *(*a3[1] + 8 * v83));
                if (result)
                {
                  v84 = v9->i64[0];
                  v85 = v9;
                  do
                  {
                    v86 = v85;
                    v87 = *--v85;
                    *v86 = v87;
                    result = (**a3)((*a3)[1], *(*a3[1] + 8 * v84), *(*a3[1] + 8 * *(v86 - 2)));
                  }

                  while ((result & 1) != 0);
                  *v85 = v84;
                }

                v44 = &v9->u64[1];
              }

              while (&v9->u64[1] != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v11 != a2)
            {
              v54 = (v12 - 2) >> 1;
              v91 = v54;
              do
              {
                v55 = v54;
                if (v91 >= v54)
                {
                  v56 = (2 * v54) | 1;
                  v57 = &v9->i64[v56];
                  if (2 * v54 + 2 < v12)
                  {
                    v58 = (**a3)((*a3)[1], *(*a3[1] + 8 * *v57), *(*a3[1] + 8 * v57[1]));
                    if (v58)
                    {
                      ++v57;
                    }

                    a2 = v89;
                    if (v58)
                    {
                      v56 = 2 * v55 + 2;
                    }
                  }

                  v59 = &v9->i64[v55];
                  result = (**a3)((*a3)[1], *(*a3[1] + 8 * *v57), *(*a3[1] + 8 * *v59));
                  if ((result & 1) == 0)
                  {
                    v60 = *v59;
                    do
                    {
                      v61 = v57;
                      *v59 = *v57;
                      if (v91 < v56)
                      {
                        break;
                      }

                      v62 = (2 * v56) | 1;
                      v57 = &v9->i64[v62];
                      v63 = 2 * v56 + 2;
                      if (v63 < v12 && (**a3)((*a3)[1], *(*a3[1] + 8 * *v57), *(*a3[1] + 8 * v57[1])))
                      {
                        ++v57;
                        v62 = v63;
                      }

                      result = (**a3)((*a3)[1], *(*a3[1] + 8 * *v57), *(*a3[1] + 8 * v60));
                      v59 = v61;
                      v56 = v62;
                    }

                    while (!result);
                    *v61 = v60;
                    a2 = v89;
                  }
                }

                v54 = v55 - 1;
              }

              while (v55);
              do
              {
                v65 = a2;
                v66 = 0;
                v92 = v9->i64[0];
                v67 = (v12 - 2) >> 1;
                v68 = v9;
                do
                {
                  while (1)
                  {
                    v72 = &v68[v66];
                    v71 = v72 + 1;
                    v73 = (2 * v66) | 1;
                    v74 = 2 * v66 + 2;
                    if (v74 < v12)
                    {
                      break;
                    }

                    v66 = (2 * v66) | 1;
                    *v68 = *v71;
                    v68 = v72 + 1;
                    if (v73 > v67)
                    {
                      goto LABEL_116;
                    }
                  }

                  v70 = v72[2];
                  v69 = v72 + 2;
                  result = (**a3)((*a3)[1], *(*a3[1] + 8 * *(v69 - 1)), *(*a3[1] + 8 * v70));
                  if (result)
                  {
                    v71 = v69;
                    v66 = v74;
                  }

                  else
                  {
                    v66 = v73;
                  }

                  *v68 = *v71;
                  v68 = v71;
                }

                while (v66 <= v67);
LABEL_116:
                a2 = (v65 - 8);
                if (v71 == &v65[-1].u64[1])
                {
                  *v71 = v92;
                }

                else
                {
                  *v71 = a2->i64[0];
                  a2->i64[0] = v92;
                  v75 = (v71 - v9 + 8) >> 3;
                  v64 = v75 < 2;
                  v76 = v75 - 2;
                  if (!v64)
                  {
                    v77 = v76 >> 1;
                    v78 = &v9->i64[v76 >> 1];
                    result = (**a3)((*a3)[1], *(*a3[1] + 8 * *v78), *(*a3[1] + 8 * *v71));
                    if (result)
                    {
                      v79 = a2;
                      v80 = *v71;
                      do
                      {
                        v81 = v78;
                        *v71 = *v78;
                        if (!v77)
                        {
                          break;
                        }

                        v77 = (v77 - 1) >> 1;
                        v78 = &v9->i64[v77];
                        result = (**a3)((*a3)[1], *(*a3[1] + 8 * *v78), *(*a3[1] + 8 * v80));
                        v71 = v81;
                      }

                      while ((result & 1) != 0);
                      *v81 = v80;
                      a2 = v79;
                    }
                  }
                }

                v64 = v12-- <= 2;
              }

              while (!v64);
            }

            return result;
          }

          v13 = &v11->i64[v12 >> 1];
          if (v12 < 0x81)
          {
            break;
          }

          _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN4mlirL24getValuesSortedByKeyImplINS2_9AttributeENS2_5ValueEEEN4llvm11SmallVectorIT0_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEENS6_8ArrayRefIT_EENSA_IS8_EENS6_12function_refIFbSB_SB_EEEEUlxxE_PxLi0EEEbT1_SK_SK_S8_(v9->i64, &v9->i64[v12 >> 1], v10, a3);
          v14 = v12 >> 1;
          _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN4mlirL24getValuesSortedByKeyImplINS2_9AttributeENS2_5ValueEEEN4llvm11SmallVectorIT0_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEENS6_8ArrayRefIT_EENSA_IS8_EENS6_12function_refIFbSB_SB_EEEEUlxxE_PxLi0EEEbT1_SK_SK_S8_(&v9->i64[1], &v9->i64[v14 - 1], i64, a3);
          _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN4mlirL24getValuesSortedByKeyImplINS2_9AttributeENS2_5ValueEEEN4llvm11SmallVectorIT0_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEENS6_8ArrayRefIT_EENSA_IS8_EENS6_12function_refIFbSB_SB_EEEEUlxxE_PxLi0EEEbT1_SK_SK_S8_(v9[1].i64, &v9->i64[v14 + 1], v88, a3);
          _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN4mlirL24getValuesSortedByKeyImplINS2_9AttributeENS2_5ValueEEEN4llvm11SmallVectorIT0_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEENS6_8ArrayRefIT_EENSA_IS8_EENS6_12function_refIFbSB_SB_EEEEUlxxE_PxLi0EEEbT1_SK_SK_S8_(&v9->i64[v14 - 1], v13, &v9->i64[v14 + 1], a3);
          v15 = v9->i64[0];
          v9->i64[0] = v9->i64[v14];
          v9->i64[v14] = v15;
          a2 = v89;
          --a4;
          if (a5)
          {
            goto LABEL_17;
          }

LABEL_16:
          if ((**a3)((*a3)[1], *(*a3[1] + 8 * v9[-1].i64[1]), *(*a3[1] + 8 * v9->i64[0])))
          {
            goto LABEL_17;
          }

          v30 = v9->i64[0];
          result = (**a3)((*a3)[1], *(*a3[1] + 8 * v9->i64[0]), *(*a3[1] + 8 * *v10));
          if (result)
          {
            v11 = v9;
            do
            {
              v31 = v11->i64[1];
              v11 = (v11 + 8);
              result = (**a3)((*a3)[1], *(*a3[1] + 8 * v30), *(*a3[1] + 8 * v31));
            }

            while ((result & 1) == 0);
          }

          else
          {
            v32 = &v9->u64[1];
            do
            {
              v11 = v32;
              if (v32 >= a2)
              {
                break;
              }

              v32 = (v32 + 8);
              result = (**a3)((*a3)[1], *(*a3[1] + 8 * v30), *(*a3[1] + 8 * v11->i64[0]));
            }

            while (!result);
          }

          v33 = a2;
          if (v11 < a2)
          {
            v33 = a2;
            do
            {
              v34 = v33[-1].i64[1];
              v33 = (v33 - 8);
              result = (**a3)((*a3)[1], *(*a3[1] + 8 * v30), *(*a3[1] + 8 * v34));
            }

            while ((result & 1) != 0);
          }

          while (v11 < v33)
          {
            v35 = v11->i64[0];
            v11->i64[0] = v33->i64[0];
            v33->i64[0] = v35;
            do
            {
              v36 = v11->i64[1];
              v11 = (v11 + 8);
            }

            while (!(**a3)((*a3)[1], *(*a3[1] + 8 * v30), *(*a3[1] + 8 * v36)));
            do
            {
              v37 = v33[-1].i64[1];
              v33 = (v33 - 8);
              result = (**a3)((*a3)[1], *(*a3[1] + 8 * v30), *(*a3[1] + 8 * v37));
            }

            while ((result & 1) != 0);
          }

          v38 = &v11[-1].i64[1];
          if (&v11[-1].u64[1] != v9)
          {
            v9->i64[0] = *v38;
          }

          a5 = 0;
          *v38 = v30;
        }

        _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN4mlirL24getValuesSortedByKeyImplINS2_9AttributeENS2_5ValueEEEN4llvm11SmallVectorIT0_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEENS6_8ArrayRefIT_EENSA_IS8_EENS6_12function_refIFbSB_SB_EEEEUlxxE_PxLi0EEEbT1_SK_SK_S8_(&v9->i64[v12 >> 1], v9->i64, v10, a3);
        --a4;
        if ((a5 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_17:
        v16 = 0;
        v17 = v9->i64[0];
        do
        {
          v18 = (**a3)((*a3)[1], *(*a3[1] + 8 * v9->i64[++v16]), *(*a3[1] + 8 * v17));
        }

        while ((v18 & 1) != 0);
        v19 = &v9->i8[v16 * 8];
        if (v16 == 1)
        {
          a2 = v89;
          do
          {
            if (v19 >= a2)
            {
              break;
            }

            v21 = a2[-1].i64[1];
            a2 = (a2 - 8);
          }

          while (((**a3)((*a3)[1], *(*a3[1] + 8 * v21), *(*a3[1] + 8 * v17)) & 1) == 0);
        }

        else
        {
          do
          {
            v20 = a2[-1].i64[1];
            a2 = (a2 - 8);
          }

          while (!(**a3)((*a3)[1], *(*a3[1] + 8 * v20), *(*a3[1] + 8 * v17)));
        }

        if (v19 >= a2)
        {
          v27 = (v19 - 8);
          if (v19 - 8 == v9)
          {
            goto LABEL_35;
          }

LABEL_34:
          v9->i64[0] = v27->i64[0];
          goto LABEL_35;
        }

        v22 = &v9->i64[v16];
        v23 = a2;
        do
        {
          v24 = *v22;
          *v22 = *v23;
          *v23 = v24;
          do
          {
            v25 = v22[1];
            ++v22;
          }

          while (((**a3)((*a3)[1], *(*a3[1] + 8 * v25), *(*a3[1] + 8 * v17)) & 1) != 0);
          do
          {
            v26 = *--v23;
          }

          while (!(**a3)((*a3)[1], *(*a3[1] + 8 * v26), *(*a3[1] + 8 * v17)));
        }

        while (v22 < v23);
        v27 = (v22 - 1);
        if (v27 != v9)
        {
          goto LABEL_34;
        }

LABEL_35:
        v27->i64[0] = v17;
        v28 = v19 >= a2;
        a2 = v89;
        if (v28)
        {
          break;
        }

LABEL_39:
        result = _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN4mlirL24getValuesSortedByKeyImplINS2_9AttributeENS2_5ValueEEEN4llvm11SmallVectorIT0_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEENS6_8ArrayRefIT_EENSA_IS8_EENS6_12function_refIFbSB_SB_EEEEUlxxE_PxLb0EEEvT1_SK_S8_NS_15iterator_traitsISK_E15difference_typeEb(v9, v27, a3, a4, a5 & 1);
        a5 = 0;
        v11 = &v27->u64[1];
      }

      v29 = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN4mlirL24getValuesSortedByKeyImplINS2_9AttributeENS2_5ValueEEEN4llvm11SmallVectorIT0_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEENS6_8ArrayRefIT_EENSA_IS8_EENS6_12function_refIFbSB_SB_EEEEUlxxE_PxEEbT1_SK_S8_(v9, v27, a3);
      v11 = &v27->u64[1];
      result = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN4mlirL24getValuesSortedByKeyImplINS2_9AttributeENS2_5ValueEEEN4llvm11SmallVectorIT0_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEENS6_8ArrayRefIT_EENSA_IS8_EENS6_12function_refIFbSB_SB_EEEEUlxxE_PxEEbT1_SK_S8_(&v27->u64[1], v89, a3);
      if (result)
      {
        break;
      }

      if (!v29)
      {
        goto LABEL_39;
      }
    }

    a2 = v27;
    if (!v29)
    {
      continue;
    }

    return result;
  }
}

uint64_t _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN4mlirL24getValuesSortedByKeyImplINS2_9AttributeENS2_5ValueEEEN4llvm11SmallVectorIT0_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEENS6_8ArrayRefIT_EENSA_IS8_EENS6_12function_refIFbSB_SB_EEEEUlxxE_PxLi0EEEbT1_SK_SK_S8_(uint64_t *a1, uint64_t *a2, uint64_t *a3, void **a4)
{
  v8 = (**a4)((*a4)[1], *(*a4[1] + 8 * *a2), *(*a4[1] + 8 * *a1));
  result = (**a4)((*a4)[1], *(*a4[1] + 8 * *a3), *(*a4[1] + 8 * *a2));
  if (v8)
  {
    v10 = *a1;
    if (result)
    {
      *a1 = *a3;
      *a3 = v10;
    }

    else
    {
      *a1 = *a2;
      *a2 = v10;
      result = (**a4)((*a4)[1], *(*a4[1] + 8 * *a3), *(*a4[1] + 8 * v10));
      if (result)
      {
        v13 = *a2;
        *a2 = *a3;
        *a3 = v13;
      }
    }
  }

  else if (result)
  {
    v11 = *a2;
    *a2 = *a3;
    *a3 = v11;
    result = (**a4)((*a4)[1], *(*a4[1] + 8 * *a2), *(*a4[1] + 8 * *a1));
    if (result)
    {
      v12 = *a1;
      *a1 = *a2;
      *a2 = v12;
    }
  }

  return result;
}

uint64_t _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZN4mlirL24getValuesSortedByKeyImplINS2_9AttributeENS2_5ValueEEEN4llvm11SmallVectorIT0_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEENS6_8ArrayRefIT_EENSA_IS8_EENS6_12function_refIFbSB_SB_EEEEUlxxE_PxLi0EEEvT1_SK_SK_SK_SK_S8_(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void **a6)
{
  _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN4mlirL24getValuesSortedByKeyImplINS2_9AttributeENS2_5ValueEEEN4llvm11SmallVectorIT0_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEENS6_8ArrayRefIT_EENSA_IS8_EENS6_12function_refIFbSB_SB_EEEEUlxxE_PxLi0EEEbT1_SK_SK_S8_(a1, a2, a3, a6);
  if ((**a6)((*a6)[1], *(*a6[1] + 8 * *a4), *(*a6[1] + 8 * *a3)))
  {
    v12 = *a3;
    *a3 = *a4;
    *a4 = v12;
    if ((**a6)((*a6)[1], *(*a6[1] + 8 * *a3), *(*a6[1] + 8 * *a2)))
    {
      v13 = *a2;
      *a2 = *a3;
      *a3 = v13;
      if ((**a6)((*a6)[1], *(*a6[1] + 8 * *a2), *(*a6[1] + 8 * *a1)))
      {
        v14 = *a1;
        *a1 = *a2;
        *a2 = v14;
      }
    }
  }

  result = (**a6)((*a6)[1], *(*a6[1] + 8 * *a5), *(*a6[1] + 8 * *a4));
  if (result)
  {
    v16 = *a4;
    *a4 = *a5;
    *a5 = v16;
    result = (**a6)((*a6)[1], *(*a6[1] + 8 * *a4), *(*a6[1] + 8 * *a3));
    if (result)
    {
      v17 = *a3;
      *a3 = *a4;
      *a4 = v17;
      result = (**a6)((*a6)[1], *(*a6[1] + 8 * *a3), *(*a6[1] + 8 * *a2));
      if (result)
      {
        v18 = *a2;
        *a2 = *a3;
        *a3 = v18;
        result = (**a6)((*a6)[1], *(*a6[1] + 8 * *a2), *(*a6[1] + 8 * *a1));
        if (result)
        {
          v19 = *a1;
          *a1 = *a2;
          *a2 = v19;
        }
      }
    }
  }

  return result;
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN4mlirL24getValuesSortedByKeyImplINS2_9AttributeENS2_5ValueEEEN4llvm11SmallVectorIT0_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEENS6_8ArrayRefIT_EENSA_IS8_EENS6_12function_refIFbSB_SB_EEEEUlxxE_PxEEbT1_SK_S8_(int8x16_t *a1, int8x16_t *a2, void **a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN4mlirL24getValuesSortedByKeyImplINS2_9AttributeENS2_5ValueEEEN4llvm11SmallVectorIT0_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEENS6_8ArrayRefIT_EENSA_IS8_EENS6_12function_refIFbSB_SB_EEEEUlxxE_PxLi0EEEbT1_SK_SK_S8_(a1->i64, &a1->i64[1], &a2[-1].i64[1], a3);
        break;
      case 4:
        _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN4mlirL24getValuesSortedByKeyImplINS2_9AttributeENS2_5ValueEEEN4llvm11SmallVectorIT0_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEENS6_8ArrayRefIT_EENSA_IS8_EENS6_12function_refIFbSB_SB_EEEEUlxxE_PxLi0EEEbT1_SK_SK_S8_(a1->i64, &a1->i64[1], a1[1].i64, a3);
        if ((**a3)((*a3)[1], *(*a3[1] + 8 * a2[-1].i64[1]), *(*a3[1] + 8 * a1[1].i64[0])))
        {
          v15 = a1[1].i64[0];
          a1[1].i64[0] = a2[-1].i64[1];
          a2[-1].i64[1] = v15;
          if ((**a3)((*a3)[1], *(*a3[1] + 8 * a1[1].i64[0]), *(*a3[1] + 8 * a1->i64[1])))
          {
            v17 = a1->i64[1];
            v16 = a1[1].i64[0];
            v18 = a1->i64[0];
            a1->i64[1] = v16;
            a1[1].i64[0] = v17;
            if ((**a3)((*a3)[1], *(*a3[1] + 8 * v16), *(*a3[1] + 8 * v18)))
            {
              *a1 = vextq_s8(*a1, *a1, 8uLL);
            }
          }
        }

        return 1;
      case 5:
        _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZN4mlirL24getValuesSortedByKeyImplINS2_9AttributeENS2_5ValueEEEN4llvm11SmallVectorIT0_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEENS6_8ArrayRefIT_EENSA_IS8_EENS6_12function_refIFbSB_SB_EEEEUlxxE_PxLi0EEEvT1_SK_SK_SK_SK_S8_(a1->i64, &a1->i64[1], a1[1].i64, &a1[1].i64[1], &a2[-1].i64[1], a3);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((**a3)((*a3)[1], *(*a3[1] + 8 * a2[-1].i64[1]), *(*a3[1] + 8 * a1->i64[0])))
    {
      v7 = a1->i64[0];
      a1->i64[0] = a2[-1].i64[1];
      a2[-1].i64[1] = v7;
    }

    return 1;
  }

LABEL_11:
  v8 = a1 + 1;
  _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN4mlirL24getValuesSortedByKeyImplINS2_9AttributeENS2_5ValueEEEN4llvm11SmallVectorIT0_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEENS6_8ArrayRefIT_EENSA_IS8_EENS6_12function_refIFbSB_SB_EEEEUlxxE_PxLi0EEEbT1_SK_SK_S8_(a1->i64, &a1->i64[1], a1[1].i64, a3);
  v9 = &a1[1].i64[1];
  if (&a1[1].u64[1] == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (!(**a3)((*a3)[1], *(*a3[1] + 8 * *v9), *(*a3[1] + 8 * v8->i64[0])))
  {
LABEL_20:
    v8 = v9;
    v10 += 8;
    if (++v9 == a2)
    {
      return 1;
    }
  }

  v12 = *v9;
  v13 = v10;
  do
  {
    *(&a1[1].i64[1] + v13) = *(a1[1].i64 + v13);
    if (v13 == -16)
    {
      a1->i64[0] = v12;
      if (++v11 != 8)
      {
        goto LABEL_20;
      }

      return v9 + 1 == a2;
    }

    v14 = (**a3)((*a3)[1], *(*a3[1] + 8 * v12), *(*a3[1] + 8 * *(&a1->i64[1] + v13)));
    v13 -= 8;
  }

  while ((v14 & 1) != 0);
  *(&a1[1].i64[1] + v13) = v12;
  if (++v11 != 8)
  {
    goto LABEL_20;
  }

  return v9 + 1 == a2;
}

BOOL mlir::complex::ConstantOp::isBuildableWith(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  v20 = v2;
  if (v2)
  {
    v3 = *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id ? a2 : 0;
    v19 = v3;
    if (v3)
    {
      mlir::ArrayAttr::getValue(&v20);
      if (v4 == 2)
      {
        ElementType = mlir::ComplexType::getElementType(&v19);
        Value = mlir::ArrayAttr::getValue(&v20);
        v7 = *Value;
        v8 = *(**Value + 136);
        if (v8 != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          v7 = 0;
        }

        v18 = v7;
        if (v8 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          v15 = *(mlir::ArrayAttr::getValue(&v20) + 8);
          v16 = *(*v15 + 136);
          if (v16 != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
          {
            v15 = 0;
          }

          v17 = v15;
          if (v16 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && mlir::FloatAttr::getType(&v18) == ElementType)
          {
            return mlir::FloatAttr::getType(&v17) == ElementType;
          }
        }

        else
        {
          v9 = mlir::ArrayAttr::getValue(&v20);
          v10 = *v9;
          v11 = *(**v9 + 136);
          if (v11 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v10 = 0;
          }

          v18 = v10;
          if (v11 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v12 = *(mlir::ArrayAttr::getValue(&v20) + 8);
            v13 = *(*v12 + 136);
            if (v13 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
            {
              v12 = 0;
            }

            v17 = v12;
            if (v13 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && mlir::IntegerAttr::getType(&v18) == ElementType)
            {
              return mlir::IntegerAttr::getType(&v17) == ElementType;
            }
          }
        }
      }
    }
  }

  return 0;
}

BOOL mlir::complex::ConstantOp::verify(mlir::Operation **this)
{
  v71 = *MEMORY[0x277D85DE8];
  v57 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  mlir::ArrayAttr::getValue(&v57);
  if (v2 == 2)
  {
    v60[0] = *(*this - 1) & 0xFFFFFFFFFFFFFFF8;
    ElementType = mlir::ComplexType::getElementType(v60);
    v4 = *(**mlir::ArrayAttr::getValue(&v57) + 136);
    v5 = v4 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    if (v5 && ((v6 = *(**(mlir::ArrayAttr::getValue(&v57) + 8) + 136), v6 != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id) ? (v7 = v6 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id) : (v7 = 1), v7))
    {
      Value = mlir::ArrayAttr::getValue(&v57);
      v54[0] = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*Value);
      v54[1] = v9;
      v10 = mlir::ArrayAttr::getValue(&v57);
      v53[0] = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*(v10 + 8));
      v53[1] = v11;
      if (ElementType == mlir::TypedAttr::getType(v54) && ElementType == mlir::TypedAttr::getType(v53))
      {
        return 1;
      }

      v56 = 257;
      mlir::OpState::emitOpError(this, v55, v60);
      if (v60[0])
      {
        LODWORD(v58) = 3;
        *(&v58 + 1) = "requires attribute's element types (";
        v59 = 36;
        if (v62 >= v63)
        {
          if (v61 > &v58 || v61 + 24 * v62 <= &v58)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v27 = v61 + 24 * v62;
        v28 = v58;
        *(v27 + 2) = v59;
        *v27 = v28;
        ++v62;
      }

      Type = mlir::TypedAttr::getType(v54);
      if (v60[0])
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v58, Type);
        if (v62 >= v63)
        {
          if (v61 > &v58 || v61 + 24 * v62 <= &v58)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v30 = v61 + 24 * v62;
        v31 = v58;
        *(v30 + 2) = v59;
        *v30 = v31;
        v32 = ++v62;
        if (v60[0])
        {
          LODWORD(v58) = 3;
          *(&v58 + 1) = ", ";
          v59 = 2;
          if (v32 >= v63)
          {
            if (v61 > &v58 || v61 + 24 * v32 <= &v58)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v33 = v61 + 24 * v62;
          v34 = v58;
          *(v33 + 2) = v59;
          *v33 = v34;
          ++v62;
        }
      }

      v35 = mlir::TypedAttr::getType(v53);
      if (v60[0])
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v58, v35);
        if (v62 >= v63)
        {
          if (v61 > &v58 || v61 + 24 * v62 <= &v58)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v36 = v61 + 24 * v62;
        v37 = v58;
        *(v36 + 2) = v59;
        *v36 = v37;
        v38 = ++v62;
        if (v60[0])
        {
          LODWORD(v58) = 3;
          *(&v58 + 1) = ") to match the element type of the op's return type (";
          v59 = 53;
          if (v38 >= v63)
          {
            if (v61 > &v58 || v61 + 24 * v38 <= &v58)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v39 = v61 + 24 * v62;
          v40 = v58;
          *(v39 + 2) = v59;
          *v39 = v40;
          ++v62;
          if (v60[0])
          {
            mlir::DiagnosticArgument::DiagnosticArgument(&v58, ElementType);
            if (v62 >= v63)
            {
              if (v61 > &v58 || v61 + 24 * v62 <= &v58)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v41 = v61 + 24 * v62;
            v42 = v58;
            *(v41 + 2) = v59;
            *v41 = v42;
            v43 = ++v62;
            if (v60[0])
            {
              LODWORD(v58) = 3;
              *(&v58 + 1) = ")";
              v59 = 1;
              if (v43 >= v63)
              {
                if (v61 > &v58 || v61 + 24 * v43 <= &v58)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v44 = v61 + 24 * v62;
              v45 = v58;
              *(v44 + 2) = v59;
              *v44 = v45;
              ++v62;
            }
          }
        }
      }

      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v60);
      if (v60[0])
      {
        mlir::InFlightDiagnostic::report(v60);
      }

      if (v70 == 1)
      {
        if (v69 != &v70)
        {
          free(v69);
        }

        v46 = __p;
        if (__p)
        {
          v47 = v68;
          v48 = __p;
          if (v68 != __p)
          {
            do
            {
              v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
            }

            while (v47 != v46);
            v48 = __p;
          }

          v68 = v46;
          operator delete(v48);
        }

        v16 = v65;
        if (!v65)
        {
          goto LABEL_82;
        }

        v49 = v66;
        v18 = v65;
        if (v66 == v65)
        {
          goto LABEL_81;
        }

        do
        {
          v51 = *--v49;
          v50 = v51;
          *v49 = 0;
          if (v51)
          {
            MEMORY[0x259C63150](v50, 0x1000C8077774924);
          }
        }

        while (v49 != v16);
        goto LABEL_80;
      }
    }

    else
    {
      v55[0] = "requires attribute's elements to be float or integer attributes";
      v56 = 259;
      mlir::OpState::emitOpError(this, v55, v60);
      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v60);
      if (v60[0])
      {
        mlir::InFlightDiagnostic::report(v60);
      }

      if (v70 == 1)
      {
        if (v69 != &v70)
        {
          free(v69);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v68;
          v23 = __p;
          if (v68 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v68 = v21;
          operator delete(v23);
        }

        v16 = v65;
        if (!v65)
        {
          goto LABEL_82;
        }

        v24 = v66;
        v18 = v65;
        if (v66 == v65)
        {
LABEL_81:
          v66 = v16;
          operator delete(v18);
LABEL_82:
          if (v61 != &v64)
          {
            free(v61);
          }

          return v12;
        }

        do
        {
          v26 = *--v24;
          v25 = v26;
          *v24 = 0;
          if (v26)
          {
            MEMORY[0x259C63150](v25, 0x1000C8077774924);
          }
        }

        while (v24 != v16);
LABEL_80:
        v18 = v65;
        goto LABEL_81;
      }
    }
  }

  else
  {
    v55[0] = "requires 'value' to be a complex constant, represented as array of two values";
    v56 = 259;
    mlir::OpState::emitOpError(this, v55, v60);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v60);
    if (v60[0])
    {
      mlir::InFlightDiagnostic::report(v60);
    }

    if (v70 == 1)
    {
      if (v69 != &v70)
      {
        free(v69);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v68;
        v15 = __p;
        if (v68 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v68 = v13;
        operator delete(v15);
      }

      v16 = v65;
      if (!v65)
      {
        goto LABEL_82;
      }

      v17 = v66;
      v18 = v65;
      if (v66 == v65)
      {
        goto LABEL_81;
      }

      do
      {
        v20 = *--v17;
        v19 = v20;
        *v17 = 0;
        if (v20)
        {
          MEMORY[0x259C63150](v19, 0x1000C8077774924);
        }
      }

      while (v17 != v16);
      goto LABEL_80;
    }
  }

  return v12;
}

uint64_t mlir::complex::BitcastOp::fold(uint64_t a1)
{
  v1 = *(*(*a1 + 72) + 24);
  v2 = *(*a1 - 8) ^ *(v1 + 8);
  v3 = v1 | 4;
  if (v2 >= 8)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

BOOL mlir::complex::BitcastOp::verify(mlir::Operation **this)
{
  v51 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v41 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v40 = *(v1 - 1) & 0xFFFFFFFFFFFFFFF8;
  if (v41 == v40)
  {
    return 1;
  }

  if (!mlir::Type::isIntOrFloat(&v41) && *(*v41 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v38[0] = "operand must be int/float/complex";
    v39 = 259;
    mlir::OpState::emitOpError(this, v38, v42);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
    if (v42[0])
    {
      mlir::InFlightDiagnostic::report(v42);
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v48;
        v7 = __p;
        if (v48 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v48 = v5;
        operator delete(v7);
      }

      v8 = v45;
      if (!v45)
      {
        goto LABEL_83;
      }

      v9 = v46;
      v10 = v45;
      if (v46 == v45)
      {
LABEL_82:
        v46 = v8;
        operator delete(v10);
LABEL_83:
        if (v43 != &v44)
        {
          free(v43);
        }

        return v2;
      }

      do
      {
        v12 = *--v9;
        v11 = v12;
        *v9 = 0;
        if (v12)
        {
          MEMORY[0x259C63150](v11, 0x1000C8077774924);
        }
      }

      while (v9 != v8);
LABEL_81:
      v10 = v45;
      goto LABEL_82;
    }

    return v2;
  }

  isIntOrFloat = mlir::Type::isIntOrFloat(&v40);
  v14 = v40;
  v15 = *(*v40 + 136);
  if (isIntOrFloat)
  {
    v16 = v41;
    v17 = *(*v41 + 136);
    if ((v17 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id) != (v15 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id))
    {
      if (v15 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

LABEL_65:
    v38[0] = "requires that either input or output has a complex type";
    v39 = 259;
    mlir::OpState::emitOpError(this, v38, v42);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
    if (v42[0])
    {
      mlir::InFlightDiagnostic::report(v42);
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
      }

      v32 = __p;
      if (__p)
      {
        v33 = v48;
        v34 = __p;
        if (v48 != __p)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v48 = v32;
        operator delete(v34);
      }

      v8 = v45;
      if (!v45)
      {
        goto LABEL_83;
      }

      v35 = v46;
      v10 = v45;
      if (v46 == v45)
      {
        goto LABEL_82;
      }

      do
      {
        v37 = *--v35;
        v36 = v37;
        *v35 = 0;
        if (v37)
        {
          MEMORY[0x259C63150](v36, 0x1000C8077774924);
        }
      }

      while (v35 != v8);
      goto LABEL_81;
    }

    return v2;
  }

  if (v15 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v38[0] = "result must be int/float/complex";
    v39 = 259;
    mlir::OpState::emitOpError(this, v38, v42);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
    if (v42[0])
    {
      mlir::InFlightDiagnostic::report(v42);
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v48;
        v20 = __p;
        if (v48 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v48 = v18;
        operator delete(v20);
      }

      v8 = v45;
      if (!v45)
      {
        goto LABEL_83;
      }

      v21 = v46;
      v10 = v45;
      if (v46 == v45)
      {
        goto LABEL_82;
      }

      do
      {
        v23 = *--v21;
        v22 = v23;
        *v21 = 0;
        if (v23)
        {
          MEMORY[0x259C63150](v22, 0x1000C8077774924);
        }
      }

      while (v21 != v8);
      goto LABEL_81;
    }

    return v2;
  }

  v16 = v41;
  if (*(*v41 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    goto LABEL_65;
  }

LABEL_44:
  v40 = v16;
  v41 = v14;
  v16 = v14;
  v17 = &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
LABEL_45:
  if (v17 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v24 = v16;
  }

  else
  {
    v24 = 0;
  }

  v38[0] = v24;
  v42[0] = mlir::ComplexType::getElementType(v38);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v42);
  if (mlir::Type::getIntOrFloatBitWidth(&v40) == 2 * IntOrFloatBitWidth)
  {
    return 1;
  }

  v38[0] = "casting bitwidths do not match";
  v39 = 259;
  mlir::OpState::emitOpError(this, v38, v42);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
  if (v42[0])
  {
    mlir::InFlightDiagnostic::report(v42);
  }

  if (v50 == 1)
  {
    if (v49 != &v50)
    {
      free(v49);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v48;
      v28 = __p;
      if (v48 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v48 = v26;
      operator delete(v28);
    }

    v8 = v45;
    if (!v45)
    {
      goto LABEL_83;
    }

    v29 = v46;
    v10 = v45;
    if (v46 == v45)
    {
      goto LABEL_82;
    }

    do
    {
      v31 = *--v29;
      v30 = v31;
      *v29 = 0;
      if (v31)
      {
        MEMORY[0x259C63150](v30, 0x1000C8077774924);
      }
    }

    while (v29 != v8);
    goto LABEL_81;
  }

  return v2;
}

uint64_t mlir::complex::CreateOp::fold(uint64_t a1)
{
  v5 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v5);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::ReOp,void>::id)
    {
      v3 = result;
      v5 = *(*(*a1 + 72) + 56);
      result = mlir::Value::getDefiningOp(&v5);
      if (result)
      {
        if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::ImOp,void>::id)
        {
          v4 = *(*(v3 + 72) + 24);
          if (v4 == *(*(result + 72) + 24))
          {
            return v4 | 4;
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
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t mlir::complex::ImOp::fold(uint64_t a1, uint64_t a2)
{
  v2 = **(a2 + 48);
  if (v2)
  {
    v3 = *(*v2 + 136);
    if (v3 != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v2 = 0;
    }

    v8 = v2;
    if (v3 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v4 = a1;
      mlir::ArrayAttr::getValue(&v8);
      a1 = v4;
      if (v5 == 2)
      {
        return *(mlir::ArrayAttr::getValue(&v8) + 8) & 0xFFFFFFFFFFFFFFFBLL;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v7 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v7);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::CreateOp,void>::id)
    {
      return *(*(result + 72) + 56) | 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t mlir::complex::ReOp::fold(uint64_t a1, uint64_t a2)
{
  v2 = **(a2 + 48);
  if (v2)
  {
    v3 = *(*v2 + 136);
    if (v3 != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v2 = 0;
    }

    v8 = v2;
    if (v3 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v4 = a1;
      mlir::ArrayAttr::getValue(&v8);
      a1 = v4;
      if (v5 == 2)
      {
        return *mlir::ArrayAttr::getValue(&v8) & 0xFFFFFFFFFFFFFFFBLL;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v7 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v7);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::CreateOp,void>::id)
    {
      return *(*(result + 72) + 24) | 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::complex::AddOp::fold(uint64_t *a1)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v20 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v20);
  if (!DefiningOp)
  {
    v20 = *(*(*a1 + 72) + 56);
    v5 = mlir::Value::getDefiningOp(&v20);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_9:
    v6 = *a1;
    goto LABEL_10;
  }

  v3 = *a1;
  if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::SubOp,void>::id)
  {
    v4 = *(DefiningOp + 72);
    if (*(*(v3 + 72) + 56) == *(v4 + 56))
    {
      goto LABEL_7;
    }
  }

  v20 = *(*(v3 + 72) + 56);
  v5 = mlir::Value::getDefiningOp(&v20);
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_5:
  v6 = *a1;
  if (*(*(v5 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::SubOp,void>::id || (v4 = *(v5 + 72), *(*(v6 + 72) + 24) != *(v4 + 56)))
  {
LABEL_10:
    v20 = *(*(v6 + 72) + 56);
    result = mlir::Value::getDefiningOp(&v20);
    if (!result)
    {
      return result;
    }

    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::ConstantOp,void>::id)
    {
      return 0;
    }

    v17 = *(result + 16 * ((*(result + 44) >> 23) & 1) + 64);
    v16 = *mlir::ArrayAttr::getValue(&v17);
    Value = mlir::FloatAttr::getValue(&v16, &v20);
    v10 = v21[0];
    v11 = llvm::APFloatBase::PPCDoubleDouble(Value);
    v12 = v21[1];
    if (v11 != v10)
    {
      v12 = &v20;
    }

    if ((*(v12 + 28) & 7) == 3)
    {
      v15 = *(mlir::ArrayAttr::getValue(&v17) + 8);
      mlir::FloatAttr::getValue(&v15, v18);
      v13 = v19[1];
      if (v11 != v19[0])
      {
        v13 = v18;
      }

      v14 = (v13[28] & 7) == 3;
      if (v11 != v19[0])
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v19);
        if (v11 == v21[0])
        {
          goto LABEL_20;
        }

LABEL_23:
        llvm::detail::IEEEFloat::~IEEEFloat(v21);
        if (!v14)
        {
          return 0;
        }

        goto LABEL_24;
      }

      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v19);
      if (v11 != v21[0])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v14 = 0;
      if (v11 != v10)
      {
        goto LABEL_23;
      }
    }

LABEL_20:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v21);
    if (!v14)
    {
      return 0;
    }

LABEL_24:
    v7 = *(*(*a1 + 72) + 24);
    return v7 | 4;
  }

LABEL_7:
  v7 = *(v4 + 24);
  return v7 | 4;
}

uint64_t mlir::complex::SubOp::fold(uint64_t *a1)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v18 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v18);
  if (!DefiningOp)
  {
    v3 = *a1;
    goto LABEL_6;
  }

  v3 = *a1;
  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::AddOp,void>::id || (v4 = *(DefiningOp + 72), *(*(v3 + 72) + 56) != *(v4 + 56)))
  {
LABEL_6:
    v18 = *(*(v3 + 72) + 56);
    result = mlir::Value::getDefiningOp(&v18);
    if (!result)
    {
      return result;
    }

    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::ConstantOp,void>::id)
    {
      return 0;
    }

    v15 = *(result + 16 * ((*(result + 44) >> 23) & 1) + 64);
    v14 = *mlir::ArrayAttr::getValue(&v15);
    Value = mlir::FloatAttr::getValue(&v14, &v18);
    v8 = v19[0];
    v9 = llvm::APFloatBase::PPCDoubleDouble(Value);
    v10 = v19[1];
    if (v9 != v8)
    {
      v10 = &v18;
    }

    if ((*(v10 + 28) & 7) == 3)
    {
      v13 = *(mlir::ArrayAttr::getValue(&v15) + 8);
      mlir::FloatAttr::getValue(&v13, v16);
      v11 = v17[1];
      if (v9 != v17[0])
      {
        v11 = v16;
      }

      v12 = (v11[28] & 7) == 3;
      if (v9 != v17[0])
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v17);
        if (v9 == v19[0])
        {
          goto LABEL_16;
        }

LABEL_19:
        llvm::detail::IEEEFloat::~IEEEFloat(v19);
        if (!v12)
        {
          return 0;
        }

        goto LABEL_20;
      }

      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v17);
      if (v9 != v19[0])
      {
        goto LABEL_19;
      }
    }

    else
    {
      v12 = 0;
      if (v9 != v8)
      {
        goto LABEL_19;
      }
    }

LABEL_16:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v19);
    if (!v12)
    {
      return 0;
    }

LABEL_20:
    v5 = *(*(*a1 + 72) + 24);
    return v5 | 4;
  }

  v5 = *(v4 + 24);
  return v5 | 4;
}

uint64_t mlir::complex::NegOp::fold(uint64_t a1)
{
  v2 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v2);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::NegOp,void>::id)
    {
      return *(*(result + 72) + 24) | 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::complex::LogOp::fold(uint64_t a1)
{
  v2 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v2);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::ExpOp,void>::id)
    {
      return *(*(result + 72) + 24) | 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::complex::ExpOp::fold(uint64_t a1)
{
  v2 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v2);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::LogOp,void>::id)
    {
      return *(*(result + 72) + 24) | 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::complex::ConjOp::fold(uint64_t a1)
{
  v2 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v2);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::ConjOp,void>::id)
    {
      return *(*(result + 72) + 24) | 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::complex::MulOp::fold(uint64_t a1)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v14 = *(*(*a1 + 72) + 56);
  result = mlir::Value::getDefiningOp(&v14);
  if (result)
  {
    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::ConstantOp,void>::id)
    {
      return 0;
    }

    v9 = *(result + 16 * ((*(result + 44) >> 23) & 1) + 64);
    v12 = *mlir::ArrayAttr::getValue(&v9);
    mlir::FloatAttr::getValue(&v12, &v14);
    v10 = *(mlir::ArrayAttr::getValue(&v9) + 8);
    Value = mlir::FloatAttr::getValue(&v10, &v12);
    v4 = v13[0];
    v5 = llvm::APFloatBase::PPCDoubleDouble(Value);
    v6 = v13[1];
    if (v5 != v4)
    {
      v6 = &v12;
    }

    if ((*(v6 + 28) & 7) != 3)
    {
      goto LABEL_18;
    }

    if (v5 == v15[0])
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v11, v15[0]);
    }

    llvm::detail::IEEEFloat::IEEEFloat(v11, v15[0], 1);
    if (v5 == v15[0])
    {
      v7 = llvm::detail::DoubleAPFloat::compare(v15, v11);
      if (v5 != v11[0])
      {
LABEL_11:
        llvm::detail::IEEEFloat::~IEEEFloat(v11);
        if (v7 == 1)
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v7 = llvm::detail::IEEEFloat::compare(v15, v11);
      if (v5 != v11[0])
      {
        goto LABEL_11;
      }
    }

    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v11);
    if (v7 == 1)
    {
LABEL_12:
      v8 = *(*(*a1 + 72) + 24) | 4;
      if (v5 == v13[0])
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }

LABEL_18:
    v8 = 0;
    if (v5 == v13[0])
    {
LABEL_13:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v13);
      if (v5 == v15[0])
      {
LABEL_14:
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v15);
        return v8;
      }

LABEL_20:
      llvm::detail::IEEEFloat::~IEEEFloat(v15);
      return v8;
    }

LABEL_19:
    llvm::detail::IEEEFloat::~IEEEFloat(v13);
    if (v5 == v15[0])
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  return result;
}

uint64_t mlir::complex::DivOp::fold(uint64_t a1, uint64_t a2)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v2 = *(*(a2 + 48) + 8);
  if (!v2)
  {
    return 0;
  }

  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v2 = 0;
  }

  v12 = v2;
  if (!v2)
  {
    return 0;
  }

  mlir::ArrayAttr::getValue(&v12);
  if (v4 != 2)
  {
    return 0;
  }

  v15 = *mlir::ArrayAttr::getValue(&v12);
  mlir::FloatAttr::getValue(&v15, v17);
  v13 = *(mlir::ArrayAttr::getValue(&v12) + 8);
  Value = mlir::FloatAttr::getValue(&v13, &v15);
  v6 = v16[0];
  v7 = llvm::APFloatBase::PPCDoubleDouble(Value);
  v8 = v16[1];
  if (v7 != v6)
  {
    v8 = &v15;
  }

  if ((*(v8 + 28) & 7) != 3)
  {
    goto LABEL_20;
  }

  if (v7 == v18[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v14, v18[0]);
  }

  llvm::detail::IEEEFloat::IEEEFloat(v14, v18[0], 1);
  if (v7 == v18[0])
  {
    v9 = llvm::detail::DoubleAPFloat::compare(v18, v14);
    if (v7 != v14[0])
    {
LABEL_12:
      llvm::detail::IEEEFloat::~IEEEFloat(v14);
      if (v9 == 1)
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v9 = llvm::detail::IEEEFloat::compare(v18, v14);
    if (v7 != v14[0])
    {
      goto LABEL_12;
    }
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v14);
  if (v9 == 1)
  {
LABEL_13:
    v10 = *(*(*a1 + 72) + 24) | 4;
    if (v7 == v16[0])
    {
      goto LABEL_14;
    }

LABEL_21:
    llvm::detail::IEEEFloat::~IEEEFloat(v16);
    if (v7 == v18[0])
    {
      goto LABEL_15;
    }

LABEL_22:
    llvm::detail::IEEEFloat::~IEEEFloat(v18);
    return v10;
  }

LABEL_20:
  v10 = 0;
  if (v7 != v16[0])
  {
    goto LABEL_21;
  }

LABEL_14:
  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v16);
  if (v7 != v18[0])
  {
    goto LABEL_22;
  }

LABEL_15:
  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v18);
  return v10;
}

uint64_t mlir::complex::detail::AbsOpGenericAdaptorBase::AbsOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 32), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 32), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 32), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 32), 0, 0);
  }

  return a1;
}

uint64_t mlir::complex::AbsOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v31 = v6;
  if (!v6)
  {
    a3(v34, a4);
    if (v34[0])
    {
      LODWORD(v32) = 3;
      *(&v32 + 1) = "expected DictionaryAttr to set properties";
      v33 = 41;
      if (v36 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v36 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v35 + 24 * v36;
      v23 = v32;
      *(v22 + 2) = v33;
      *v22 = v23;
      ++v36;
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }
    }

    if (v44 != 1)
    {
      return 0;
    }

    if (v43 != &v44)
    {
      free(v43);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v42;
      v26 = __p;
      if (v42 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v42 = v24;
      operator delete(v26);
    }

    v17 = v39;
    if (!v39)
    {
      goto LABEL_49;
    }

    v27 = v40;
    v19 = v39;
    if (v40 == v39)
    {
      goto LABEL_48;
    }

    do
    {
      v29 = *--v27;
      v28 = v29;
      *v27 = 0;
      if (v29)
      {
        MEMORY[0x259C63150](v28, 0x1000C8077774924);
      }
    }

    while (v27 != v17);
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v31, "fastmath", 8uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 53;
    if (v36 >= v37)
    {
      if (v35 > &v32 || v35 + 24 * v36 <= &v32)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v35 + 24 * v36;
    v11 = v32;
    *(v10 + 2) = v33;
    *v10 = v11;
    ++v36;
    if (v34[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v32, v9);
      if (v36 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v36 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v35 + 24 * v36;
      v13 = v32;
      *(v12 + 2) = v33;
      *v12 = v13;
      ++v36;
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }
    }
  }

  if (v44)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v42;
      v16 = __p;
      if (v42 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v42 = v14;
      operator delete(v16);
    }

    v17 = v39;
    if (!v39)
    {
      goto LABEL_49;
    }

    v18 = v40;
    v19 = v39;
    if (v40 == v39)
    {
LABEL_48:
      v40 = v17;
      operator delete(v19);
LABEL_49:
      if (v35 != &v38)
      {
        free(v35);
      }

      return 0;
    }

    do
    {
      v21 = *--v18;
      v20 = v21;
      *v18 = 0;
      if (v21)
      {
        MEMORY[0x259C63150](v20, 0x1000C8077774924);
      }
    }

    while (v18 != v17);
LABEL_47:
    v19 = v39;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::complex::AbsOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "fastmath", 8, *a2);
  if (v12 >= HIDWORD(v12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v11 + 16 * v12);
  *v4 = NamedAttr;
  v4[1] = v3;
  v5 = v11;
  v6 = __CFADD__(v12, 1);
  v7 = (v12 + 1);
  LODWORD(v12) = v12 + 1;
  if (v6)
  {
    result = 0;
    if (v11 == v13)
    {
      return result;
    }

    goto LABEL_9;
  }

  result = mlir::Builder::getDictionaryAttr(&v10, v11, v7);
  v5 = v11;
  if (v11 != v13)
  {
LABEL_9:
    v9 = result;
    free(v5);
    return v9;
  }

  return result;
}

unint64_t mlir::complex::AbsOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::AbsOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x6874616D74736166)
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::complex::AbsOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8 && *a2 == 0x6874616D74736166)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
      {
        v4 = a4;
      }

      else
      {
        v4 = 0;
      }

      *result = v4;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t mlir::complex::AbsOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "fastmath", 8uLL, *a2);
  }

  return result;
}

uint64_t mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
  {
    return 1;
  }

  a4(&v24, a5);
  if (v24)
  {
    LODWORD(v21) = 3;
    *(&v21 + 1) = "attribute '";
    v22 = 11;
    if (v27 >= v28)
    {
      if (v26 > &v21 || v26 + 24 * v27 <= &v21)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v26 + 24 * v27;
    v8 = v21;
    *(v7 + 2) = v22;
    *v7 = v8;
    ++v27;
    if (v24)
    {
      v23 = 261;
      *&v21 = a2;
      *(&v21 + 1) = a3;
      mlir::Diagnostic::operator<<(&v25, &v21);
      if (v24)
      {
        LODWORD(v21) = 3;
        *(&v21 + 1) = "' failed to satisfy constraint: Floating point fast math flags";
        v22 = 62;
        if (v27 >= v28)
        {
          if (v26 > &v21 || v26 + 24 * v27 <= &v21)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = v26 + 24 * v27;
        v10 = v21;
        *(v9 + 2) = v22;
        *v9 = v10;
        ++v27;
      }
    }
  }

  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v24);
  if (v24)
  {
    mlir::InFlightDiagnostic::report(&v24);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v33;
      v14 = __p;
      if (v33 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v33 = v12;
      operator delete(v14);
    }

    v15 = v30;
    if (v30)
    {
      v16 = v31;
      v17 = v30;
      if (v31 != v30)
      {
        do
        {
          v19 = *--v16;
          v18 = v19;
          *v16 = 0;
          if (v19)
          {
            MEMORY[0x259C63150](v18, 0x1000C8077774924);
          }
        }

        while (v16 != v15);
        v17 = v30;
      }

      v31 = v15;
      operator delete(v17);
    }

    if (v26 != &v29)
    {
      free(v26);
    }
  }

  return v11;
}

BOOL mlir::complex::AbsOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v2);
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 56))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  if (!v27)
  {
    return 1;
  }

  v5 = *(*v27 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
  {
    return 1;
  }

  v26[16] = 257;
  (*(*a1 + 16))(&v31, a1, v26);
  if (v31)
  {
    LODWORD(v28) = 3;
    *(&v28 + 1) = "expected ";
    v29 = 9;
    if (v34 >= v35)
    {
      if (v33 > &v28 || v33 + 24 * v34 <= &v28)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v33 + 24 * v34;
    v7 = v28;
    *(v6 + 2) = v29;
    *v6 = v7;
    ++v34;
  }

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::FastMathFlagsAttr]";
  *(&v28 + 1) = 80;
  v8 = llvm::StringRef::find(&v28, "DesiredTypeName = ", 0x12uLL, 0);
  if (v31)
  {
    if (*(&v28 + 1) >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = *(&v28 + 1);
    }

    v10 = 18;
    if (*(&v28 + 1) - v9 < 0x12)
    {
      v10 = *(&v28 + 1) - v9;
    }

    v11 = *(&v28 + 1) - v9 - v10;
    if (v11 >= v11 - 1)
    {
      --v11;
    }

    v30 = 261;
    *&v28 = v28 + v9 + v10;
    *(&v28 + 1) = v11;
    mlir::Diagnostic::operator<<(&v32, &v28);
    if (v31)
    {
      LODWORD(v28) = 3;
      *(&v28 + 1) = ", but got: ";
      v29 = 11;
      if (v34 >= v35)
      {
        if (v33 > &v28 || v33 + 24 * v34 <= &v28)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v33 + 24 * v34;
      v13 = v28;
      *(v12 + 2) = v29;
      *v12 = v13;
      ++v34;
      if (v31)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v28, v27);
        if (v34 >= v35)
        {
          if (v33 > &v28 || v33 + 24 * v34 <= &v28)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v14 = v33 + 24 * v34;
        v15 = v28;
        *(v14 + 2) = v29;
        *v14 = v15;
        ++v34;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  v17 = result;
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
    result = v17;
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
      result = v17;
    }

    v18 = __p;
    if (__p)
    {
      v19 = v40;
      v20 = __p;
      if (v40 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v40 = v18;
      operator delete(v20);
      result = v17;
    }

    v21 = v37;
    if (v37)
    {
      v22 = v38;
      v23 = v37;
      if (v38 != v37)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            MEMORY[0x259C63150](v24, 0x1000C8077774924);
          }
        }

        while (v22 != v21);
        v23 = v37;
      }

      v38 = v21;
      operator delete(v23);
      result = v17;
    }

    if (v33 != &v36)
    {
      free(v33);
      return v17;
    }
  }

  return result;
}

uint64_t mlir::complex::AbsOp::setFastmath(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::arith::FastMathFlagsAttr::get(Context, a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::complex::AbsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  result = mlir::OperationState::addOperands(a2, &v11, 1uLL);
  if (a5)
  {
    v9 = *(a2 + 256);
    if (!v9)
    {
      operator new();
    }

    *v9 = a5;
  }

  v10 = *(a2 + 72);
  if (v10 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v10) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::complex::AbsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v12 = a3;
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  if (a4)
  {
    v6 = *(a2 + 256);
    if (!v6)
    {
      operator new();
    }

    *v6 = a4;
  }

  __src = v18;
  v17 = 0x200000000;
  mlir::ValueRange::ValueRange(&v15, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v14, *(a2 + 224), *(a2 + 232));
  v19 = v15;
  if (v17 != 1)
  {
    if (!v17)
    {
      if (!HIDWORD(v17))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v17) = 1;
  }

  v13 = *(mlir::ValueRange::dereference_iterator(&v19, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::ComplexType::getElementType(&v13);
  v9 = __src;
  *__src = ElementType;
  v10 = v17;
  v11 = *(a2 + 72);
  if (v11 + v17 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v17)
  {
    memcpy((*(a2 + 64) + 8 * v11), v9, 8 * v17);
    LODWORD(v11) = *(a2 + 72);
  }

  *(a2 + 72) = v11 + v10;
  if (__src != v18)
  {
    free(__src);
  }
}

uint64_t mlir::complex::AbsOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v14[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a11, 8uLL);
    }

    *(a11 + 8) = 1;
  }

  v13 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  **a11 = mlir::ComplexType::getElementType(&v13);
  return 1;
}

unint64_t mlir::complex::AbsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a5;
  result = mlir::OperationState::addOperands(a2, &v15, 1uLL);
  if (a6)
  {
    v11 = *(a2 + 256);
    if (!v11)
    {
      operator new();
    }

    *v11 = a6;
  }

  v12 = *(a2 + 72);
  if (a4 + v12 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v13 = 0;
    v14 = *(a2 + 64) + 8 * v12;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v13);
      *(v14 + 8 * v13++) = result;
    }

    while (a4 != v13);
    LODWORD(v12) = *(a2 + 72);
  }

  *(a2 + 72) = v12 + a4;
  return result;
}

uint64_t mlir::complex::AbsOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v12 = a4;
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  result = mlir::arith::FastMathFlagsAttr::get(*a1, a5);
  v10 = *(a2 + 256);
  if (!v10)
  {
    operator new();
  }

  *v10 = result;
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v11) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::complex::AbsOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v14 = a3;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  v7 = mlir::arith::FastMathFlagsAttr::get(*a1, a4);
  v8 = *(a2 + 256);
  if (!v8)
  {
    operator new();
  }

  *v8 = v7;
  __src = v20;
  v19 = 0x200000000;
  mlir::ValueRange::ValueRange(&v17, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v16, *(a2 + 224), *(a2 + 232));
  v21 = v17;
  if (v19 != 1)
  {
    if (!v19)
    {
      if (!HIDWORD(v19))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v19) = 1;
  }

  v15 = *(mlir::ValueRange::dereference_iterator(&v21, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::ComplexType::getElementType(&v15);
  v11 = __src;
  *__src = ElementType;
  v12 = v19;
  v13 = *(a2 + 72);
  if (v13 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v13), v11, 8 * v19);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + v12;
  if (__src != v20)
  {
    free(__src);
  }
}

unint64_t mlir::complex::AbsOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v16 = a5;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  result = mlir::arith::FastMathFlagsAttr::get(*a1, a6);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = result;
  v13 = *(a2 + 72);
  if (a4 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v14 = 0;
    v15 = *(a2 + 64) + 8 * v13;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v14);
      *(v15 + 8 * v14++) = result;
    }

    while (a4 != v14);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + a4;
  return result;
}

uint64_t mlir::complex::AbsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  if (a8)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 8);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    result = (*(*v20 + 144))(v20, v19, v18, Dictionary, 0);
    if ((result & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  return result;
}

void mlir::complex::AbsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v27[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    *(a2 + 120) += a6;
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 8);
    if (*(v13 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v14 + 144))(v14, v13, v12, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  else
  {
    *(a2 + 120) = v11;
  }

  __src = v26;
  v25 = 0x200000000;
  v17 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v17);
  mlir::RegionRange::RegionRange(&v23, *(a2 + 224), *(a2 + 232));
  v27[0] = a3;
  v27[1] = a4;
  if (v25 != 1)
  {
    if (!v25)
    {
      if (!HIDWORD(v25))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v25) = 1;
  }

  v22 = *(mlir::ValueRange::dereference_iterator(v27, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::ComplexType::getElementType(&v22);
  v19 = __src;
  *__src = ElementType;
  v20 = v25;
  v21 = *(a2 + 72);
  if (v21 + v25 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v25)
  {
    memcpy((*(a2 + 64) + 8 * v21), v19, 8 * v25);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + v20;
  if (__src != v26)
  {
    free(__src);
  }
}

mlir::MLIRContext *mlir::complex::AbsOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v4 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v4);
  if (!*a2)
  {
    result = mlir::arith::FastMathFlagsAttr::get(result, 0);
    *a2 = result;
  }

  return result;
}

BOOL mlir::complex::AbsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v20[0] = v2;
  if ((mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20) & 1) == 0 || (mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v4 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  if (!mlir::complex::__mlir_ods_local_type_constraint_ComplexOps2(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
  {
    return 0;
  }

  v20[0] = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::ComplexType::getElementType(v20);
  if (*(*this + 9))
  {
    v7 = *this - 16;
  }

  else
  {
    v7 = 0;
  }

  if (ElementType == (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 1;
  }

  v18 = "failed to verify that complex element type matches result type";
  v19 = 259;
  mlir::OpState::emitOpError(this, &v18, v20);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  v9 = result;
  if (v20[0])
  {
    mlir::InFlightDiagnostic::report(v20);
    result = v9;
  }

  if (v28 == 1)
  {
    if (v27 != &v28)
    {
      free(v27);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v26;
      v12 = __p;
      if (v26 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v26 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v23;
    if (v23)
    {
      v14 = v24;
      v15 = v23;
      if (v24 != v23)
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
        v15 = v23;
      }

      v24 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v21 != &v22)
    {
      free(v21);
      return v9;
    }
  }

  return result;
}

uint64_t mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v60 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    goto LABEL_2;
  }

  v26 = a3;
  v27 = a4;
  v28 = a1;
  v49[0] = a2;
  v29 = *(*mlir::ComplexType::getElementType(v49) + 136);
  if (v29 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return 1;
  }

  v17 = 1;
  if (v29 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id)
  {
    a1 = v28;
    a4 = v27;
    a3 = v26;
    if (v29 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
LABEL_2:
      v46 = 261;
      v45[0] = a3;
      v45[1] = a4;
      mlir::Operation::emitOpError(v49, a1, v45);
      if (v49[0])
      {
        LODWORD(v47) = 3;
        *(&v47 + 1) = " #";
        v48 = 2;
        if (v51 >= v52)
        {
          if (v50 > &v47 || v50 + 24 * v51 <= &v47)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v7 = v50 + 24 * v51;
        v8 = v47;
        *(v7 + 2) = v48;
        *v7 = v8;
        v9 = ++v51;
        if (v49[0])
        {
          LODWORD(v47) = 5;
          *(&v47 + 1) = a5;
          if (v9 >= v52)
          {
            if (v50 > &v47 || v50 + 24 * v9 <= &v47)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v10 = v50 + 24 * v51;
          v11 = v47;
          *(v10 + 2) = v48;
          *v10 = v11;
          v12 = ++v51;
          if (v49[0])
          {
            LODWORD(v47) = 3;
            *(&v47 + 1) = " must be complex type with floating-point elements, but got ";
            v48 = 60;
            if (v12 >= v52)
            {
              if (v50 > &v47 || v50 + 24 * v12 <= &v47)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v13 = v50 + 24 * v51;
            v14 = v47;
            *(v13 + 2) = v48;
            *v13 = v14;
            ++v51;
            if (v49[0])
            {
              mlir::DiagnosticArgument::DiagnosticArgument(&v47, a2);
              if (v51 >= v52)
              {
                if (v50 > &v47 || v50 + 24 * v51 <= &v47)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v15 = v50 + 24 * v51;
              v16 = v47;
              *(v15 + 2) = v48;
              *v15 = v16;
              ++v51;
            }
          }
        }
      }

      v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
      if (v49[0])
      {
        mlir::InFlightDiagnostic::report(v49);
      }

      if (v59 == 1)
      {
        if (v58 != &v59)
        {
          free(v58);
        }

        v18 = __p;
        if (__p)
        {
          v19 = v57;
          v20 = __p;
          if (v57 != __p)
          {
            do
            {
              v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
            }

            while (v19 != v18);
            v20 = __p;
          }

          v57 = v18;
          operator delete(v20);
        }

        v21 = v54;
        if (v54)
        {
          v22 = v55;
          v23 = v54;
          if (v55 != v54)
          {
            do
            {
              v25 = *--v22;
              v24 = v25;
              *v22 = 0;
              if (v25)
              {
                MEMORY[0x259C63150](v24, 0x1000C8077774924);
              }
            }

            while (v22 != v21);
            v23 = v54;
          }

          v55 = v21;
          operator delete(v23);
        }

        if (v50 != &v53)
        {
          free(v50);
        }
      }
    }
  }

  return v17;
}

BOOL mlir::complex::__mlir_ods_local_type_constraint_ComplexOps2(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = *(*a2 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v5 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    v34 = 261;
    v33[0] = a3;
    v33[1] = a4;
    mlir::Operation::emitOpError(v37, a1, v33);
    if (v37[0])
    {
      LODWORD(v35) = 3;
      *(&v35 + 1) = " #";
      v36 = 2;
      if (v39 >= v40)
      {
        if (v38 > &v35 || v38 + 24 * v39 <= &v35)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v14 = v38 + 24 * v39;
      v15 = v35;
      *(v14 + 2) = v36;
      *v14 = v15;
      v16 = ++v39;
      if (v37[0])
      {
        LODWORD(v35) = 5;
        *(&v35 + 1) = a5;
        if (v16 >= v40)
        {
          if (v38 > &v35 || v38 + 24 * v16 <= &v35)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v17 = v38 + 24 * v39;
        v18 = v35;
        *(v17 + 2) = v36;
        *v17 = v18;
        v19 = ++v39;
        if (v37[0])
        {
          LODWORD(v35) = 3;
          *(&v35 + 1) = " must be floating-point, but got ";
          v36 = 33;
          if (v19 >= v40)
          {
            if (v38 > &v35 || v38 + 24 * v19 <= &v35)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v20 = v38 + 24 * v39;
          v21 = v35;
          *(v20 + 2) = v36;
          *v20 = v21;
          ++v39;
          if (v37[0])
          {
            mlir::DiagnosticArgument::DiagnosticArgument(&v35, a2);
            if (v39 >= v40)
            {
              if (v38 > &v35 || v38 + 24 * v39 <= &v35)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v22 = v38 + 24 * v39;
            v23 = v35;
            *(v22 + 2) = v36;
            *v22 = v23;
            ++v39;
          }
        }
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
    v24 = result;
    if (v37[0])
    {
      mlir::InFlightDiagnostic::report(v37);
      result = v24;
    }

    if (v47 == 1)
    {
      if (v46 != &v47)
      {
        free(v46);
        result = v24;
      }

      v25 = __p;
      if (__p)
      {
        v26 = v45;
        v27 = __p;
        if (v45 != __p)
        {
          do
          {
            v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
          }

          while (v26 != v25);
          v27 = __p;
        }

        v45 = v25;
        operator delete(v27);
        result = v24;
      }

      v28 = v42;
      if (v42)
      {
        v29 = v43;
        v30 = v42;
        if (v43 != v42)
        {
          do
          {
            v32 = *--v29;
            v31 = v32;
            *v29 = 0;
            if (v32)
            {
              MEMORY[0x259C63150](v31, 0x1000C8077774924);
            }
          }

          while (v29 != v28);
          v30 = v42;
        }

        v43 = v28;
        operator delete(v30);
        result = v24;
      }

      if (v38 != &v41)
      {
        free(v38);
        return v24;
      }
    }
  }

  return result;
}

BOOL mlir::complex::AbsOp::parse(mlir::complex::AbsOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v43[26] = *MEMORY[0x277D85DE8];
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v40[0] = v41;
  v40[1] = 1;
  v38 = 0;
  v39 = 0;
  v36 = &v38;
  v37 = 1;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v41, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 408))(this, "fastmath", 8) & 1) == 0)
  {
    goto LABEL_8;
  }

  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(this, &v39, 0))
  {
    return 0;
  }

  if (v39)
  {
    v6 = *(a2 + 32);
    if (!v6)
    {
      operator new();
    }

    *v6 = v39;
  }

LABEL_8:
  v33[0] = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 1);
  v43[0] = this;
  v43[1] = v33;
  v43[2] = a2;
  v8 = mlir::NamedAttrList::get(a2 + 112, **(v7 + 96));
  if (v8)
  {
    if ((mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::AbsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v43) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v43[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(this, v43))
  {
    return 0;
  }

  v38 = v43[0];
  v32 = v36;
  if (v37)
  {
    v9 = 8 * v37;
    v10 = v36;
    while (1)
    {
      v11 = *v10;
      v35 = v11;
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        break;
      }

      v43[0] = v11;
      v12 = *(*mlir::ComplexType::getElementType(v43) + 136);
      v13 = v12 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
      v14 = v13 || v12 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
      v15 = v14 || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
      v16 = v15 || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
      v17 = v16 || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
      v18 = v17 || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
      v19 = v18 || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
      v20 = v19 || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
      v21 = v20 || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
      v22 = v21 || v12 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
      v23 = v22 || v12 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
      v24 = v23 || v12 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
      v25 = v24 || v12 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
      v26 = v25 || v12 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
      if (!v26 && v12 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
      {
        break;
      }

      ++v10;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_66;
      }
    }

    v27 = (*(*this + 16))(this);
    v34 = 257;
    (*(*this + 24))(v43, this, v27, v33);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v43, "'complex' must be complex type with floating-point elements, but got ");
    mlir::InFlightDiagnostic::append<mlir::Type const&>(v28, &v35);
    v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v43);
    return v30;
  }

  else
  {
LABEL_66:
    v33[0] = *v32;
    v43[0] = mlir::ComplexType::getElementType(v33);
    mlir::OperationState::addTypes(a2, v43, 1);
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v40, &v36, v5, a2 + 16) & 1;
  }
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  v21[0] = a1;
  if (((*(*a1 + 448))(a1, &v20, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_5arith17FastMathFlagsAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v21) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v18 = "invalid kind of attribute specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v6, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
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
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

void mlir::complex::AbsOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v28[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  Context = mlir::Attribute::getContext((*this + 24));
  if (v6 != mlir::arith::FastMathFlagsAttr::get(Context, 0))
  {
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
    v11 = v10[4];
    if (v10[3] - v11 > 7uLL)
    {
      *v11 = 0x6874616D74736166;
      v10[4] += 8;
    }

    else
    {
      llvm::raw_ostream::write(v10, "fastmath", 8uLL);
    }

    v26 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
    if (((*(*a2 + 56))(a2) & 1) == 0)
    {
      v12 = (*(*a2 + 16))(a2);
      v13 = (*(*v12 + 80))(v12) + v12[4] - v12[2];
      mlir::arith::FastMathFlagsAttr::print(&v26, a2);
      if (v13 == (*(*v12 + 80))(v12) + v12[4] - v12[2])
      {
        (*(*a2 + 40))(a2, v26);
      }
    }
  }

  v26 = v28;
  v28[0] = "fastmath";
  v28[1] = 8;
  v27 = 0x200000001;
  v14 = mlir::Attribute::getContext((*this + 24));
  v15 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v15 && v15 == mlir::arith::FastMathFlagsAttr::get(v14, 0))
  {
    if (v27 >= HIDWORD(v27))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v16 = v26 + 16 * v27;
    *v16 = "fastmath";
    v16[1] = 8;
    LODWORD(v27) = v27 + 1;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v18, v26, v27);
  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (v20 >= *(v19 + 3))
  {
    llvm::raw_ostream::write(v19, 32);
  }

  else
  {
    *(v19 + 4) = v20 + 1;
    *v20 = 32;
  }

  v21 = (*(*a2 + 16))(a2);
  v22 = v21[4];
  if (v21[3] == v22)
  {
    llvm::raw_ostream::write(v21, ":", 1uLL);
  }

  else
  {
    *v22 = 58;
    ++v21[4];
  }

  v23 = (*(*a2 + 16))(a2);
  v24 = *(v23 + 4);
  if (v24 >= *(v23 + 3))
  {
    llvm::raw_ostream::write(v23, 32);
  }

  else
  {
    *(v23 + 4) = v24 + 1;
    *v24 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v26 != v28)
  {
    free(v26);
  }
}

uint64_t mlir::complex::detail::AddOpGenericAdaptorBase::AddOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 32), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 32), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 32), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 32), 0, 0);
  }

  return a1;
}

uint64_t mlir::complex::AddOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v31 = v6;
  if (!v6)
  {
    a3(v34, a4);
    if (v34[0])
    {
      LODWORD(v32) = 3;
      *(&v32 + 1) = "expected DictionaryAttr to set properties";
      v33 = 41;
      if (v36 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v36 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v35 + 24 * v36;
      v23 = v32;
      *(v22 + 2) = v33;
      *v22 = v23;
      ++v36;
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }
    }

    if (v44 != 1)
    {
      return 0;
    }

    if (v43 != &v44)
    {
      free(v43);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v42;
      v26 = __p;
      if (v42 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v42 = v24;
      operator delete(v26);
    }

    v17 = v39;
    if (!v39)
    {
      goto LABEL_49;
    }

    v27 = v40;
    v19 = v39;
    if (v40 == v39)
    {
      goto LABEL_48;
    }

    do
    {
      v29 = *--v27;
      v28 = v29;
      *v27 = 0;
      if (v29)
      {
        MEMORY[0x259C63150](v28, 0x1000C8077774924);
      }
    }

    while (v27 != v17);
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v31, "fastmath", 8uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 53;
    if (v36 >= v37)
    {
      if (v35 > &v32 || v35 + 24 * v36 <= &v32)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v35 + 24 * v36;
    v11 = v32;
    *(v10 + 2) = v33;
    *v10 = v11;
    ++v36;
    if (v34[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v32, v9);
      if (v36 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v36 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v35 + 24 * v36;
      v13 = v32;
      *(v12 + 2) = v33;
      *v12 = v13;
      ++v36;
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }
    }
  }

  if (v44)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v42;
      v16 = __p;
      if (v42 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v42 = v14;
      operator delete(v16);
    }

    v17 = v39;
    if (!v39)
    {
      goto LABEL_49;
    }

    v18 = v40;
    v19 = v39;
    if (v40 == v39)
    {
LABEL_48:
      v40 = v17;
      operator delete(v19);
LABEL_49:
      if (v35 != &v38)
      {
        free(v35);
      }

      return 0;
    }

    do
    {
      v21 = *--v18;
      v20 = v21;
      *v18 = 0;
      if (v21)
      {
        MEMORY[0x259C63150](v20, 0x1000C8077774924);
      }
    }

    while (v18 != v17);
LABEL_47:
    v19 = v39;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::complex::AddOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "fastmath", 8, *a2);
  if (v12 >= HIDWORD(v12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v11 + 16 * v12);
  *v4 = NamedAttr;
  v4[1] = v3;
  v5 = v11;
  v6 = __CFADD__(v12, 1);
  v7 = (v12 + 1);
  LODWORD(v12) = v12 + 1;
  if (v6)
  {
    result = 0;
    if (v11 == v13)
    {
      return result;
    }

    goto LABEL_9;
  }

  result = mlir::Builder::getDictionaryAttr(&v10, v11, v7);
  v5 = v11;
  if (v11 != v13)
  {
LABEL_9:
    v9 = result;
    free(v5);
    return v9;
  }

  return result;
}

unint64_t mlir::complex::AddOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::AddOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x6874616D74736166)
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::complex::AddOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8 && *a2 == 0x6874616D74736166)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
      {
        v4 = a4;
      }

      else
      {
        v4 = 0;
      }

      *result = v4;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t mlir::complex::AddOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "fastmath", 8uLL, *a2);
  }

  return result;
}

BOOL mlir::complex::AddOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v2);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::AddOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::complex::AddOp::setFastmath(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::arith::FastMathFlagsAttr::get(Context, a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::complex::AddOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a5;
  v13 = a4;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v12, 1uLL);
  if (a6)
  {
    v10 = *(a2 + 256);
    if (!v10)
    {
      operator new();
    }

    *v10 = a6;
  }

  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v11) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::complex::AddOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a3;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  if (a5)
  {
    v7 = *(a2 + 256);
    if (!v7)
    {
      operator new();
    }

    *v7 = a5;
  }

  __src = v19;
  v18 = 0x200000000;
  mlir::ValueRange::ValueRange(&v16, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v15, *(a2 + 224), *(a2 + 232));
  v20 = v16;
  if (v18 != 1)
  {
    if (!v18)
    {
      if (!HIDWORD(v18))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v18) = 1;
  }

  v9 = mlir::ValueRange::dereference_iterator(&v20, 0);
  v10 = __src;
  *__src = *(v9 + 8) & 0xFFFFFFFFFFFFFFF8;
  v11 = v18;
  v12 = *(a2 + 72);
  if (v12 + v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v18)
  {
    memcpy((*(a2 + 64) + 8 * v12), v10, 8 * v18);
    LODWORD(v12) = *(a2 + 72);
  }

  *(a2 + 72) = v12 + v11;
  if (__src != v19)
  {
    free(__src);
  }
}

uint64_t mlir::complex::AddOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v13[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a11, 8uLL);
    }

    *(a11 + 8) = 1;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

unint64_t mlir::complex::AddOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = a6;
  v17 = a5;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v16, 1uLL);
  if (a7)
  {
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    *v12 = a7;
  }

  v13 = *(a2 + 72);
  if (a4 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v14 = 0;
    v15 = *(a2 + 64) + 8 * v13;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v14);
      *(v15 + 8 * v14++) = result;
    }

    while (a4 != v14);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + a4;
  return result;
}

uint64_t mlir::complex::AddOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v13 = a5;
  v14 = a4;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  result = mlir::arith::FastMathFlagsAttr::get(*a1, a6);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = result;
  v12 = *(a2 + 72);
  if (v12 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v12) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::complex::AddOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v15 = a4;
  v16 = a3;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v8 = mlir::arith::FastMathFlagsAttr::get(*a1, a5);
  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  *v9 = v8;
  __src = v21;
  v20 = 0x200000000;
  mlir::ValueRange::ValueRange(&v18, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  v22 = v18;
  if (v20 != 1)
  {
    if (!v20)
    {
      if (!HIDWORD(v20))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v20) = 1;
  }

  v11 = mlir::ValueRange::dereference_iterator(&v22, 0);
  v12 = __src;
  *__src = *(v11 + 8) & 0xFFFFFFFFFFFFFFF8;
  v13 = v20;
  v14 = *(a2 + 72);
  if (v14 + v20 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v14), v12, 8 * v20);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + v13;
  if (__src != v21)
  {
    free(__src);
  }
}

unint64_t mlir::complex::AddOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v17 = a6;
  v18 = a5;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  result = mlir::arith::FastMathFlagsAttr::get(*a1, a7);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *v13 = result;
  v14 = *(a2 + 72);
  if (a4 + v14 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v15 = 0;
    v16 = *(a2 + 64) + 8 * v14;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v15);
      *(v16 + 8 * v15++) = result;
    }

    while (a4 != v15);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + a4;
  return result;
}

uint64_t mlir::complex::AddOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  if (a8)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 8);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    result = (*(*v20 + 144))(v20, v19, v18, Dictionary, 0);
    if ((result & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  return result;
}

void mlir::complex::AddOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v26[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    *(a2 + 120) += a6;
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 8);
    if (*(v13 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v14 + 144))(v14, v13, v12, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  else
  {
    *(a2 + 120) = v11;
  }

  __src = v25;
  v24 = 0x200000000;
  v17 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v17);
  mlir::RegionRange::RegionRange(&v22, *(a2 + 224), *(a2 + 232));
  v26[0] = a3;
  v26[1] = a4;
  if (v24 != 1)
  {
    if (!v24)
    {
      if (!HIDWORD(v24))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v24) = 1;
  }

  v18 = mlir::ValueRange::dereference_iterator(v26, 0);
  v19 = __src;
  *__src = *(v18 + 8) & 0xFFFFFFFFFFFFFFF8;
  v20 = v24;
  v21 = *(a2 + 72);
  if (v21 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v21), v19, 8 * v24);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + v20;
  if (__src != v25)
  {
    free(__src);
  }
}

mlir::MLIRContext *mlir::complex::AddOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v4 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v4);
  if (!*a2)
  {
    result = mlir::arith::FastMathFlagsAttr::get(result, 0);
    *a2 = result;
  }

  return result;
}

uint64_t mlir::complex::AddOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v7 = v2;
  if ((mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7) & 1) == 0 || (mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  return mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::complex::AddOp::parse(mlir::complex::AddOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11 = 0;
  (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 120))(this) & 1) == 0)
  {
    return 0;
  }

  (*(*this + 40))(this);
  if (((*(*this + 704))(this, v12, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*this + 408))(this, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(this, &v11, 0))
    {
      return 0;
    }

    if (v11)
    {
      v5 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::AddOpGenericAdaptorBase::Properties>(a2);
      *v5 = v11;
    }
  }

  v10 = (*(*this + 40))(this);
  if ((*(*this + 488))(this, a2 + 112))
  {
    v6 = *(a2 + 1);
    v9[0] = this;
    v9[1] = &v10;
    v9[2] = a2;
    v7 = mlir::NamedAttrList::get(a2 + 112, **(v6 + 96));
    if (!v7 || (mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v7, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::AddOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*this + 104))(this))
    {
      v10 = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(this, &v10))
      {
        v9[0] = v10;
        mlir::OperationState::addTypes(a2, v9, 1);
        if ((*(*this + 728))(this, v14, v9[0], a2 + 16))
        {
          return (*(*this + 728))(this, v12, v9[0], a2 + 16) & 1;
        }
      }
    }
  }

  return 0;
}

void mlir::complex::AddOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v34[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++v6[4];
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  Context = mlir::Attribute::getContext((*this + 24));
  if (v10 != mlir::arith::FastMathFlagsAttr::get(Context, 0))
  {
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

    v14 = (*(*a2 + 16))(a2);
    v15 = v14[4];
    if (v14[3] - v15 > 7uLL)
    {
      *v15 = 0x6874616D74736166;
      v14[4] += 8;
    }

    else
    {
      llvm::raw_ostream::write(v14, "fastmath", 8uLL);
    }

    v32 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
    if (((*(*a2 + 56))(a2) & 1) == 0)
    {
      v16 = (*(*a2 + 16))(a2);
      v17 = (*(*v16 + 80))(v16) + v16[4] - v16[2];
      mlir::arith::FastMathFlagsAttr::print(&v32, a2);
      if (v17 == (*(*v16 + 80))(v16) + v16[4] - v16[2])
      {
        (*(*a2 + 40))(a2, v32);
      }
    }
  }

  v32 = v34;
  v34[0] = "fastmath";
  v34[1] = 8;
  v33 = 0x200000001;
  v18 = mlir::Attribute::getContext((*this + 24));
  v19 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v19 && v19 == mlir::arith::FastMathFlagsAttr::get(v18, 0))
  {
    if (v33 >= HIDWORD(v33))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v20 = v32 + 16 * v33;
    *v20 = "fastmath";
    v20[1] = 8;
    LODWORD(v33) = v33 + 1;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v22, v32, v33);
  v23 = (*(*a2 + 16))(a2);
  v24 = *(v23 + 4);
  if (v24 >= *(v23 + 3))
  {
    llvm::raw_ostream::write(v23, 32);
  }

  else
  {
    *(v23 + 4) = v24 + 1;
    *v24 = 32;
  }

  v25 = (*(*a2 + 16))(a2);
  v26 = v25[4];
  if (v25[3] == v26)
  {
    llvm::raw_ostream::write(v25, ":", 1uLL);
  }

  else
  {
    *v26 = 58;
    ++v25[4];
  }

  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (v28 >= *(v27 + 3))
  {
    llvm::raw_ostream::write(v27, 32);
  }

  else
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 32;
  }

  if (*(*this + 9))
  {
    v29 = *this - 16;
  }

  else
  {
    v29 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v29, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v32 != v34)
  {
    free(v32);
  }
}