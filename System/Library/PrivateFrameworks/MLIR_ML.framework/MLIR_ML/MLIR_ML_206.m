uint64_t *mlir::TypeRange::TypeRange(uint64_t *result, uint64_t a2, uint64_t a3)
{
  *result = a2 | 6;
  result[1] = a3;
  return result;
}

{
  *result = a2 | 6;
  result[1] = a3;
  return result;
}

uint64_t mlir::TypeRange::offset_base(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = v2 & 6;
  if (!v4 && v3)
  {
    return v3 + 8 * a2;
  }

  if (v4 == 4 && v3)
  {
    return (v3 + 32 * a2) | 4;
  }

  if (v4 == 6 && v3)
  {
    return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, a2) | 6;
  }

  if (v4 == 2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return (v6 + 8 * a2) | 2;
}

unint64_t mlir::TypeRange::dereference_iterator(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = v2 & 6;
  if (!v4 && v3)
  {
    return *(*(v3 + 8 * a2) + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  if (v4 == 4 && v3)
  {
    return *(*(v3 + 32 * a2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  if (v4 == 6 && v3)
  {
    return *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, a2) + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  if (v4 == 2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return *(v6 + 8 * a2);
}

uint64_t mlir::getElementTypeOrSelf(void *a1)
{
  v4[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(a1);
  v4[1] = v2;
  if (v4[0])
  {
    return mlir::ShapedType::getElementType(v4);
  }

  else
  {
    return a1;
  }
}

uint64_t mlir::getElementTypeOrSelf(uint64_t a1)
{
  v1 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  v4[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v1);
  v4[1] = v2;
  if (v4[0])
  {
    return mlir::ShapedType::getElementType(v4);
  }

  else
  {
    return v1;
  }
}

void *mlir::getElementTypeOrSelf(void *a1)
{
  result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a1);
  v6[0] = result;
  v6[1] = v2;
  if (result)
  {
    Type = mlir::TypedAttr::getType(v6);
    result = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(Type);
    v4 = result;
    v7[0] = result;
    v7[1] = v5;
    if (result)
    {
      result = mlir::ShapedType::getElementType(v7);
    }

    if (!v4)
    {
      return Type;
    }
  }

  return result;
}

uint64_t mlir::getFlattenedTypes@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  *a2 = a2 + 2;
  a2[1] = 0xA00000000;
  return mlir::TupleType::getFlattenedTypes(&v3, a2);
}

BOOL mlir::isOpaqueTypeWithName(uint64_t a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  if (!v5)
  {
    return 0;
  }

  DialectNamespace = mlir::OpaqueType::getDialectNamespace(&v15);
  Value = mlir::StringAttr::getValue(&DialectNamespace);
  if (v11 != a3 || v11 && memcmp(Value, a2, v11))
  {
    return 0;
  }

  TypeData = mlir::OpaqueType::getTypeData(&v15);
  if (v13 != a5)
  {
    return 0;
  }

  if (v13)
  {
    return memcmp(TypeData, a4, v13) == 0;
  }

  return 1;
}

uint64_t mlir::verifyCompatibleShape(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (a2)
  {
    for (i = 8 * a2 - 8; ; i -= 8)
    {
      v5 = i;
      if (*a1 != 0x8000000000000000 && *a3 != 0x8000000000000000 && *a1 != *a3)
      {
        break;
      }

      ++a1;
      ++a3;
      if (!v5)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

BOOL mlir::verifyCompatibleShape(void *a1, void *a2)
{
  v17[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(a1);
  v17[1] = v3;
  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(a2);
  v16[0] = v4;
  v16[1] = v5;
  if (v17[0])
  {
    if (v4)
    {
      if (!mlir::ShapedType::hasRank(v17) || !mlir::ShapedType::hasRank(v16))
      {
        return 1;
      }

      Shape = mlir::ShapedType::getShape(v17);
      v8 = v7;
      v9 = mlir::ShapedType::getShape(v16);
      if (v8 == v10)
      {
        if (v8)
        {
          for (i = 8 * v8 - 8; ; i -= 8)
          {
            v13 = i;
            if (*Shape != 0x8000000000000000 && *v9 != 0x8000000000000000 && *Shape != *v9)
            {
              break;
            }

            ++Shape;
            ++v9;
            v12 = 1;
            if (!v13)
            {
              return v12;
            }
          }

          return 0;
        }

        return 1;
      }
    }

    return 0;
  }

  return v4 == 0;
}

uint64_t mlir::verifyCompatibleShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v7 = 0;
  while (1)
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v7);
    v9 = mlir::TypeRange::dereference_iterator(a3, v7);
    if (!mlir::verifyCompatibleShape(v8, v9))
    {
      break;
    }

    if (a2 == ++v7)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t mlir::verifyCompatibleDims(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = *a1;
  v3 = 8 * a2;
  v4 = a1;
  do
  {
    v6 = *v4++;
    v5 = v6;
    if (v6 != 0x8000000000000000)
    {
      v2 = v5;
    }

    v3 -= 8;
  }

  while (v3);
  v7 = 8 * a2 - 8;
  do
  {
    v9 = *a1++;
    v8 = v9;
    v11 = v9 == 0x8000000000000000 || v2 == v8;
    v12 = !v11 || v7 == 0;
    v7 -= 8;
  }

  while (!v12);
  return v11;
}

uint64_t mlir::verifyCompatibleShapes(uint64_t a1, unint64_t a2)
{
  v76[16] = *MEMORY[0x277D85DE8];
  v74 = v76;
  v75 = 0x800000000;
  if (a2 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (!a2)
  {
    LODWORD(v75) = 0;
LABEL_10:
    v13 = 1;
    goto LABEL_110;
  }

  v4 = 0;
  v5 = v76;
  do
  {
    v6 = mlir::TypeRange::dereference_iterator(a1, v4);
    *v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v6);
    v5[1] = v7;
    v5 += 2;
    ++v4;
  }

  while (a2 != v4);
  v8 = v74;
  v9 = (v75 + a2);
  LODWORD(v75) = v75 + a2;
  if (!v75)
  {
    goto LABEL_10;
  }

  v10 = 0;
  v11 = 16 * v9;
  v12 = v74 + 16 * v9;
  while (!*(v74 + v10))
  {
    v10 += 16;
    if (v11 == v10)
    {
      goto LABEL_10;
    }
  }

  v14 = 0;
  do
  {
    if (!*(v74 + v14))
    {
LABEL_26:
      v13 = 0;
      goto LABEL_110;
    }

    v14 += 16;
  }

  while (v11 != v14);
  if (!a2)
  {
    goto LABEL_29;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  do
  {
    v18 = mlir::TypeRange::dereference_iterator(a1, v17);
    if (*(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v71 = v19;
    if (!v19 || (ScalableDims = mlir::VectorType::getScalableDims(&v71), v22 = v21, v23 = 1, (v24 = memchr(ScalableDims, 1, v21)) == 0) || v24 == &ScalableDims[v22])
    {
      v16 = 1;
      v23 = v15;
    }

    if (v23 & 1) != 0 && (v16)
    {
      goto LABEL_26;
    }

    ++v17;
    v15 = v23;
  }

  while (a2 != v17);
  v8 = v74;
  v12 = v74 + 16 * v75;
  if (v75)
  {
LABEL_29:
    while (1)
    {
      *v69 = *v8;
      if (mlir::ShapedType::hasRank(v69))
      {
        break;
      }

      if (++v8 == v12)
      {
        v8 = v12;
        break;
      }
    }

    v25 = v8;
    v8 = v74;
    v26 = v75;
  }

  else
  {
    v26 = 0;
    v25 = v74;
  }

  v27 = &v8[v26];
  v71 = v73;
  v72 = 0x800000000;
  if (v25 == v27)
  {
    v30 = 0;
    LODWORD(v28) = 0;
  }

  else
  {
    v28 = 0;
    v29 = v25;
    do
    {
      do
      {
        if (++v29 == v12)
        {
          break;
        }

        *v69 = *v29;
      }

      while ((mlir::ShapedType::hasRank(v69) & 1) == 0);
      ++v28;
    }

    while (v29 != v27);
    v30 = v72;
    if (v28 + v72 > HIDWORD(v72))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  if (v25 != v27)
  {
    v31 = (v71 + 16 * v30);
    do
    {
      *v31 = *v25;
      do
      {
        if (++v25 == v12)
        {
          break;
        }

        *v69 = *v25;
      }

      while ((mlir::ShapedType::hasRank(v69) & 1) == 0);
      ++v31;
    }

    while (v25 != v27);
    v30 = v72;
  }

  LODWORD(v72) = v30 + v28;
  if (!(v30 + v28))
  {
    goto LABEL_103;
  }

  mlir::ShapedType::getShape(v71);
  v33 = v32;
  if (!v72)
  {
LABEL_54:
    if (v33 >= 1)
    {
      v37 = 0;
      v38 = 0;
      while (1)
      {
        v39 = v71;
        v40 = (v71 + 16 * v72);
        if (!v72)
        {
          break;
        }

        v41 = 16 * v72;
        while (1)
        {
          v68 = *v39;
          mlir::ShapedType::getShape(&v68);
          if (v42 >= v37)
          {
            break;
          }

          v39 = (v39 + 16);
          v41 -= 16;
          if (!v41)
          {
            v39 = v40;
            break;
          }
        }

        v43 = v39;
        v39 = (v71 + 16 * v72);
        v69[0] = v70;
        v69[1] = 0x800000000;
        if (v43 == v39)
        {
          goto LABEL_100;
        }

        v44 = 0;
        v45 = v43;
        do
        {
          do
          {
            v45 = (v45 + 16);
            if (v45 == v40)
            {
              break;
            }

            v68 = *v45;
            mlir::ShapedType::getShape(&v68);
          }

          while (v46 < v37);
          ++v44;
        }

        while (v45 != v39);
        v47 = v69[1];
        if (v44 + LODWORD(v69[1]) > HIDWORD(v69[1]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

LABEL_69:
        v48 = v69[0];
        if (v43 != v39)
        {
          v49 = v69[0] + 8 * v47;
          do
          {
            v50 = *v43;
            v43 = (v43 + 16);
            v68 = v50;
            for (*v49 = *(mlir::ShapedType::getShape(&v68) + 8 * v37); v43 != v40; v43 = (v43 + 16))
            {
              v68 = *v43;
              mlir::ShapedType::getShape(&v68);
              if (v51 >= v37)
              {
                break;
              }
            }

            ++v49;
          }

          while (v43 != v39);
          v47 = v69[1];
          v48 = v69[0];
        }

        v52 = v47 + v44;
        LODWORD(v69[1]) = v47 + v44;
        if (v47 + v44)
        {
          v53 = *v48;
          v54 = 8 * v52;
          v55 = v54;
          v56 = v48;
          do
          {
            v58 = *v56++;
            v57 = v58;
            if (v58 != 0x8000000000000000)
            {
              v53 = v57;
            }

            v55 -= 8;
          }

          while (v55);
          v59 = v54 - 8;
          v60 = v48;
          do
          {
            v62 = *v60++;
            v61 = v62;
            v64 = v62 == 0x8000000000000000 || v53 == v61;
            v65 = !v64 || v59 == 0;
            v59 -= 8;
          }

          while (!v65);
          v66 = !v64;
          if (v48 != v70)
          {
LABEL_95:
            free(v48);
          }
        }

        else
        {
          v66 = 0;
          if (v48 != v70)
          {
            goto LABEL_95;
          }
        }

        if (v66)
        {
          v13 = 0;
          goto LABEL_108;
        }

        v37 = ++v38;
        if (v33 <= v38)
        {
          v13 = 1;
          goto LABEL_108;
        }
      }

      v43 = v71;
      v69[0] = v70;
      v69[1] = 0x800000000;
LABEL_100:
      v47 = 0;
      LODWORD(v44) = 0;
      goto LABEL_69;
    }

LABEL_103:
    v13 = 1;
    goto LABEL_108;
  }

  v34 = v71;
  v35 = 16 * v72;
  while (1)
  {
    *v69 = *v34;
    mlir::ShapedType::getShape(v69);
    if (v36 != v33)
    {
      break;
    }

    v34 = (v34 + 16);
    v35 -= 16;
    if (!v35)
    {
      goto LABEL_54;
    }
  }

  v13 = 0;
LABEL_108:
  if (v71 != v73)
  {
    free(v71);
  }

LABEL_110:
  if (v74 != v76)
  {
    free(v74);
  }

  return v13;
}

uint64_t mlir::OperandElementTypeIterator::mapElement(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    v15 = v3;
    v16 = v2;
    mlir::tensor::ExpandShapeOp::fold();
    v2 = v16;
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v15 + 8);
    v6 = *(v15 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = v2;
    v18 = 0;
    return mlir::ShapedType::getElementType(&v17);
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 == &v5[2 * v6] || *v7 != v4)
  {
    goto LABEL_14;
  }

  v14 = v7[1];
  v17 = v2;
  v18 = v14;
  return mlir::ShapedType::getElementType(&v17);
}

uint64_t mlir::ResultElementTypeIterator::mapElement(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    v15 = v3;
    v16 = v2;
    mlir::tensor::ExpandShapeOp::fold();
    v2 = v16;
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v15 + 8);
    v6 = *(v15 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = v2;
    v18 = 0;
    return mlir::ShapedType::getElementType(&v17);
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 == &v5[2 * v6] || *v7 != v4)
  {
    goto LABEL_14;
  }

  v14 = v7[1];
  v17 = v2;
  v18 = v14;
  return mlir::ShapedType::getElementType(&v17);
}

unint64_t mlir::insertTypesInto(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31[2] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v9 = a6;
    v10 = 0;
    if (a6)
    {
      v12 = a3;
      v13 = 0;
      v14 = &a3[a4];
      v15 = 0;
      v29 = v14;
      do
      {
        v30 = mlir::TypeRange::dereference_iterator(a5, v13);
        v10 = *v12;
        v16 = v10 - v15;
        v17 = *(a7 + 8);
        if (v10 - v15 + v17 > *(a7 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v10 == v15)
        {
          v18 = v17 + v16;
          *(a7 + 8) = v18;
          if (v18 >= *(a7 + 12))
          {
            goto LABEL_14;
          }
        }

        else
        {
          v20 = a5;
          v21 = v9;
          v22 = (*a7 + 8 * v17);
          do
          {
            *v22++ = mlir::TypeRange::dereference_iterator(a1, v15++);
          }

          while (v10 != v15);
          v23 = *(a7 + 12);
          v9 = v21;
          a5 = v20;
          v14 = v29;
          v18 = *(a7 + 8) + v16;
          *(a7 + 8) = v18;
          if (v18 >= v23)
          {
LABEL_14:
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }
        }

        *(*a7 + 8 * v18) = v30;
        v19 = *(a7 + 8) + 1;
        *(a7 + 8) = v19;
        if (++v12 == v14)
        {
          break;
        }

        ++v13;
        v15 = v10;
      }

      while (v13 != v9);
    }

    else
    {
      v19 = *(a7 + 8);
    }

    v24 = a2 - v10;
    if (a2 - v10 + v19 > *(a7 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (a2 != v10)
    {
      v25 = (*a7 + 8 * v19);
      do
      {
        *v25++ = mlir::TypeRange::dereference_iterator(a1, v10++);
      }

      while (a2 != v10);
      v19 = *(a7 + 8);
    }

    v26 = v19 + v24;
    *(a7 + 8) = v26;
    mlir::TypeRange::TypeRange(v31, *a7, v26);
    return v31[0];
  }

  return a1;
}

unint64_t mlir::filterTypesOut(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 8);
  if (v5)
  {
    v8 = *a3;
    v9 = 8 * v5;
    while (!*v8)
    {
      ++v8;
      v9 -= 8;
      if (!v9)
      {
        return a1;
      }
    }

    v10 = a2;
    if (a2)
    {
      v11 = 0;
      do
      {
        if (((*(*a3 + 8 * (v11 >> 6)) >> v11) & 1) == 0)
        {
          v12 = mlir::TypeRange::dereference_iterator(a1, v11);
          v15 = v12;
          v13 = *(a4 + 8);
          if (v13 < *(a4 + 12))
          {
            *(*a4 + 8 * v13) = v12;
            *(a4 + 8) = v13 + 1;
          }

          else
          {
            llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(a4, &v15);
          }
        }

        ++v11;
      }

      while (v10 != v11);
    }

    mlir::TypeRange::TypeRange(v16, *a4, *(a4 + 8));
    return v16[0];
  }

  return a1;
}

void mlir::IRUnit::print(void *a1, llvm::raw_ostream *a2, const mlir::OpPrintingFlags *a3)
{
  v3 = *a1 & 6;
  v4 = (*a1 & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v21 = (*a1 & 0xFFFFFFFFFFFFFFF8);

    mlir::Operation::print(v21, a2, a3);
  }

  if (v3 == 2 && v4 != 0)
  {

    printRegion(a2, v4, a3);
    return;
  }

  if (v3 != 4 || v4 == 0)
  {
    return;
  }

  Parent = mlir::Block::getParent((*a1 & 0xFFFFFFFFFFFFFFF8));
  v11 = *(Parent + 1);
  if (v11)
  {
    v12 = (v11 - 8);
  }

  else
  {
    v12 = 0;
  }

  if (v12 == v4)
  {
    v16 = 0;
    v15 = a2;
    v17 = *(a2 + 4);
    if (*(a2 + 3) - v17 <= 6uLL)
    {
      goto LABEL_22;
    }

LABEL_31:
    *(v17 + 3) = 589327203;
    *v17 = 1668246594;
    *(v15 + 4) += 7;
    v19 = llvm::raw_ostream::operator<<(v15, v16);
    v20 = *(v19 + 4);
    if ((*(v19 + 3) - v20) > 4)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v13 = 0;
  v14 = (v12 + 8);
  v15 = a2;
  do
  {
    v14 = v14[1];
    v13 += 0x100000000;
  }

  while (v14 != (v4 + 8));
  v16 = v13 >> 32;
  v17 = *(a2 + 4);
  if (*(a2 + 3) - v17 > 6uLL)
  {
    goto LABEL_31;
  }

LABEL_22:
  v18 = llvm::raw_ostream::write(v15, "Block #", 7uLL);
  v19 = llvm::raw_ostream::operator<<(v18, v16);
  v20 = *(v19 + 4);
  if ((*(v19 + 3) - v20) > 4)
  {
LABEL_23:
    *(v20 + 4) = 32;
    *v20 = 1919903264;
    *(v19 + 4) += 5;
    goto LABEL_33;
  }

LABEL_32:
  llvm::raw_ostream::write(v19, " for ", 5uLL);
LABEL_33:
  v22 = a3;
  shouldSkipRegions = mlir::OpPrintingFlags::shouldSkipRegions(a3);
  v24 = mlir::OpPrintingFlags::skipRegions(v22, 1);
  printRegion(a2, Parent, v24);
  if ((shouldSkipRegions & 1) == 0)
  {

    mlir::Block::print(v4, a2);
  }
}

double printRegion(llvm::raw_ostream *this, mlir::Region *a2, mlir::OpPrintingFlags *a3)
{
  v3 = this;
  v4 = *(this + 4);
  v5 = *(this + 3) - v4;
  if (a2)
  {
    if (v5 > 7)
    {
      *v4 = 0x23206E6F69676552;
      *(this + 4) += 8;
      v8 = this;
    }

    else
    {
      v8 = llvm::raw_ostream::write(this, "Region #", 8uLL);
    }

    RegionNumber = mlir::Region::getRegionNumber(a2);
    v13 = llvm::raw_ostream::operator<<(v8, RegionNumber);
    v14 = *(v13 + 4);
    if (*(v13 + 3) - v14 > 7uLL)
    {
      *v14 = 0x20706F20726F6620;
      *(v13 + 4) += 8;
      v15 = *(a2 + 2);
      if (v15)
      {
LABEL_11:

        mlir::Operation::print(v15, v3, a3);
      }
    }

    else
    {
      llvm::raw_ostream::write(v13, " for op ", 8uLL);
      v15 = *(a2 + 2);
      if (v15)
      {
        goto LABEL_11;
      }
    }

    v16 = *(v3 + 4);
    if ((*(v3 + 3) - v16) <= 0x12)
    {
      v9 = "<Operation:nullptr>";
      this = v3;
      v10 = 19;

LABEL_7:
      llvm::raw_ostream::write(this, v9, v10);
      return result;
    }

    *(v16 + 15) = 1047688304;
    result = *"<Operation:nullptr>";
    *v16 = *"<Operation:nullptr>";
    *(v3 + 4) += 19;
  }

  else
  {
    if (v5 <= 0xF)
    {
      v9 = "<Region:nullptr>";
      v10 = 16;

      goto LABEL_7;
    }

    result = *"<Region:nullptr>";
    *v4 = *"<Region:nullptr>";
    *(this + 4) += 16;
  }

  return result;
}

llvm::raw_ostream *mlir::operator<<(llvm::raw_ostream *a1, void *a2)
{
  mlir::OpPrintingFlags::OpPrintingFlags(v9);
  v4 = mlir::OpPrintingFlags::skipRegions(v9, 1);
  v5 = mlir::OpPrintingFlags::useLocalScope(v4);
  v7 = v5[1];
  v6 = v5[2];
  v10[0] = *v5;
  v10[1] = v7;
  v10[2] = v6;
  mlir::IRUnit::print(a2, a1, v10);
  return a1;
}

uint64_t mlir::Value::getDefiningOp(mlir::Value *this)
{
  v1 = *this;
  if ((~*(*this + 8) & 7) == 0)
  {
    v1 = 0;
  }

  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8) & 7;
  if (v2 == 6)
  {
    return v1 + 24 * *(v1 + 16) + 120;
  }

  else
  {
    return v1 + 16 * v2 + 16;
  }
}

uint64_t mlir::Value::getLoc(mlir::Value *this)
{
  if ((~*(*this + 8) & 7) != 0)
  {
    v1 = *this;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    return *(*this + 32);
  }

  v2 = *(v1 + 8) & 7;
  if (v2 == 6)
  {
    v3 = v1 + 24 * *(v1 + 16) + 120;
    if (v3)
    {
      return *(v3 + 24);
    }

    return *(*this + 32);
  }

  return *(v1 + 16 * v2 + 40);
}

uint64_t *mlir::Value::setLoc(uint64_t *result, uint64_t a2)
{
  if ((~*(*result + 8) & 7) != 0)
  {
    v2 = *result;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
LABEL_8:
    *(*result + 32) = a2;
    return result;
  }

  v3 = *(v2 + 8) & 7;
  if (v3 == 6)
  {
    v4 = v2 + 24 * *(v2 + 16) + 120;
    if (v4)
    {
      *(v4 + 24) = a2;
      return result;
    }

    goto LABEL_8;
  }

  *(v2 + 16 * v3 + 40) = a2;
  return result;
}

mlir::Block *mlir::Value::getParentRegion(mlir::Value *this)
{
  if ((~*(*this + 8) & 7) != 0)
  {
    v1 = *this;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    return mlir::Block::getParent(*(*this + 16));
  }

  v2 = *(v1 + 8) & 7;
  if (v2 != 6)
  {
    result = *(v1 + 16 * v2 + 32);
    if (!result)
    {
      return result;
    }

    return mlir::Block::getParent(result);
  }

  v3 = v1 + 24 * *(v1 + 16) + 120;
  if (!v3)
  {
    return mlir::Block::getParent(*(*this + 16));
  }

  result = *(v3 + 16);
  if (!result)
  {
    return result;
  }

  return mlir::Block::getParent(result);
}

uint64_t mlir::Value::getParentBlock(mlir::Value *this)
{
  v1 = *this;
  if ((~*(*this + 8) & 7) != 0)
  {
    v2 = *this;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    return *(v1 + 16);
  }

  v3 = *(v2 + 8) & 7;
  if (v3 == 6)
  {
    v4 = v2 + 24 * *(v2 + 16) + 120;
    if (v4)
    {
      v1 = v4;
    }

    return *(v1 + 16);
  }

  return *(v2 + 16 * v3 + 32);
}

uint64_t ***mlir::Value::replaceAllUsesExcept(uint64_t ***result, uint64_t *a2, uint64_t ****this)
{
  v3 = **result;
  if (v3)
  {
    v6 = *this;
    v7 = this[1];
    if (v7 != *this)
    {
      while (1)
      {
        v8 = *v3;
        v9 = v3[2];
        if (v7 == v6)
        {
          break;
        }

        result = llvm::SmallPtrSetImplBase::doFind(this, v9);
        v6 = *this;
        v7 = this[1];
        if (!result)
        {
          if (v7 == v6)
          {
            v10 = 20;
          }

          else
          {
            v10 = 16;
          }

          v11 = *(this + v10);
LABEL_16:
          result = &v7[v11];
        }

LABEL_17:
        if (v7 == v6)
        {
          v13 = 20;
        }

        else
        {
          v13 = 16;
        }

        if (result == &v7[*(this + v13)])
        {
          v14 = v3[1];
          if (v14)
          {
            v15 = *v3;
            *v14 = *v3;
            if (v15)
            {
              v15[1] = v14;
            }
          }

          v3[3] = a2;
          v16 = *a2;
          *v3 = *a2;
          v3[1] = a2;
          if (v16)
          {
            *(v16 + 8) = v3;
          }

          *a2 = v3;
        }

        v3 = v8;
        if (!v8)
        {
          return result;
        }
      }

      v11 = *(this + 5);
      if (v11)
      {
        v12 = 8 * v11;
        result = v6;
        while (*result != v9)
        {
          ++result;
          v12 -= 8;
          if (!v12)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v17 = *(this + 5);
    if (v17)
    {
      v18 = 8 * v17;
      v19 = &v7[v17];
      do
      {
        v20 = v3;
        v3 = *v3;
        v21 = v18;
        v22 = v6;
        while (*v22 != v20[2])
        {
          ++v22;
          v21 -= 8;
          if (!v21)
          {
            goto LABEL_35;
          }
        }

        if (v22 != v19)
        {
          continue;
        }

LABEL_35:
        v23 = v20[1];
        if (v23)
        {
          *v23 = v3;
          if (v3)
          {
            v3[1] = v23;
          }
        }

        v20[3] = a2;
        v24 = *a2;
        *v20 = *a2;
        v20[1] = a2;
        if (v24)
        {
          *(v24 + 8) = v20;
        }

        *a2 = v20;
      }

      while (v3);
    }

    else
    {
      do
      {
        v25 = *v3;
        v26 = v3[1];
        if (v26)
        {
          *v26 = v25;
          if (v25)
          {
            v25[1] = v26;
          }
        }

        v3[3] = a2;
        v27 = *a2;
        *v3 = *a2;
        v3[1] = a2;
        if (v27)
        {
          *(v27 + 8) = v3;
        }

        *a2 = v3;
        v3 = v25;
      }

      while (v25);
    }
  }

  return result;
}

uint64_t ***mlir::Value::replaceAllUsesExcept(uint64_t ***result, uint64_t *a2, uint64_t a3)
{
  v3 = **result;
  if (v3)
  {
    do
    {
      v4 = *v3;
      if (v3[2] != a3)
      {
        v5 = v3[1];
        if (v5)
        {
          *v5 = v4;
          if (v4)
          {
            v4[1] = v5;
          }
        }

        v3[3] = a2;
        v6 = *a2;
        *v3 = *a2;
        v3[1] = a2;
        if (v6)
        {
          *(v6 + 8) = v3;
        }

        *a2 = v3;
      }

      v3 = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t ***mlir::Value::replaceUsesWithIf(uint64_t ***result, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t *), uint64_t a4)
{
  v4 = **result;
  if (v4)
  {
    do
    {
      v8 = *v4;
      result = a3(a4, v4);
      if (result)
      {
        v9 = v4[1];
        if (v9)
        {
          v10 = *v4;
          *v9 = *v4;
          if (v10)
          {
            v10[1] = v9;
          }
        }

        v4[3] = a2;
        v11 = *a2;
        *v4 = *a2;
        v4[1] = a2;
        if (v11)
        {
          *(v11 + 8) = v4;
        }

        *a2 = v4;
      }

      v4 = v8;
    }

    while (v8);
  }

  return result;
}

BOOL mlir::Value::isUsedOutsideOfBlock(mlir::Value *this, mlir::Block *a2)
{
  v2 = *this;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    v3 = *(v2[2] + 16);
    result = v3 != a2;
    if (v3 != a2)
    {
      return result;
    }
  }

  return 0;
}

void mlir::IRObjectWithUseList<mlir::OpOperand>::shuffleUseList(void *a1, unsigned int *a2, unint64_t a3)
{
  v14[5] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v6 = v13;
    *a1 = v13;
    *v6 = 0;
    v6[1] = a1;
    v7 = &v13;
    goto LABEL_10;
  }

  if (a3 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  bzero(&v13, 8 * a3);
  v8 = a3;
  v9 = a1;
  do
  {
    v9 = *v9;
    v10 = *a2++;
    v14[v10 - 1] = v9;
    --v8;
  }

  while (v8);
  v6 = v13;
  *a1 = v13;
  *v6 = 0;
  v6[1] = a1;
  if (a3 != 1)
  {
    v7 = &v14[a3 - 1];
LABEL_10:
    v11 = v14;
    v12 = v6;
    do
    {
      v6 = *v11;
      *v12 = *v11;
      if (v6)
      {
        v6[1] = v12;
      }

      ++v11;
      v12 = v6;
    }

    while (v11 != v7);
  }

  *v6 = 0;
}

uint64_t mlir::detail::OpResultImpl::getOwner(mlir::detail::OpResultImpl *this)
{
  if (!this)
  {
    return this + 24 * *(this + 2) + 120;
  }

  v1 = *(this + 1) & 7;
  if (v1 == 6)
  {
    return this + 24 * *(this + 2) + 120;
  }

  else
  {
    return this + 16 * v1 + 16;
  }
}

uint64_t mlir::detail::OpResultImpl::getNextResultAtOffset(uint64_t this, uint64_t a2)
{
  if (a2)
  {
    if (this)
    {
      v2 = *(this + 8) & 7;
      if (v2 != 6)
      {
        v3 = (5 - v2);
        if (a2 <= v3)
        {
          this -= 16 * a2;
          return this;
        }

        this -= 16 * v3;
        a2 -= v3;
      }
    }

    this -= 24 * a2;
  }

  return this;
}

uint64_t mlir::OpResult::getNumInline(uint64_t this)
{
  if (this >= 6)
  {
    return 6;
  }

  else
  {
    return this;
  }
}

uint64_t mlir::OpResult::getNumTrailing(mlir::OpResult *this)
{
  if (this >= 6)
  {
    return (this - 6);
  }

  else
  {
    return 0;
  }
}

uint64_t *mlir::OperandRange::getTypes@<X0>(uint64_t *this@<X0>, uint64_t *a2@<X8>)
{
  v2 = *this;
  v3 = this[1];
  *a2 = *this;
  a2[1] = 0;
  a2[2] = v2;
  a2[3] = v3;
  return this;
}

uint64_t *mlir::OperandRange::getType@<X0>(uint64_t *this@<X0>, uint64_t *a2@<X8>)
{
  v2 = *this;
  v3 = this[1];
  *a2 = *this;
  a2[1] = 0;
  a2[2] = v2;
  a2[3] = v3;
  return this;
}

uint64_t *mlir::ResultRange::getTypes@<X0>(uint64_t *this@<X0>, uint64_t *a2@<X8>)
{
  v2 = *this;
  v3 = this[1];
  *a2 = *this;
  a2[1] = 0;
  a2[2] = v2;
  a2[3] = v3;
  return this;
}

uint64_t *mlir::ResultRange::getType@<X0>(uint64_t *this@<X0>, uint64_t *a2@<X8>)
{
  v2 = *this;
  v3 = this[1];
  *a2 = *this;
  a2[1] = 0;
  a2[2] = v2;
  a2[3] = v3;
  return this;
}

__n128 mlir::ValueRange::getTypes@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  a2->n128_u64[1] = 0;
  result = *this;
  a2->n128_u64[0] = this->n128_u64[0];
  a2[1] = result;
  return result;
}

__n128 mlir::ValueRange::getType@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  a2->n128_u64[1] = 0;
  result = *this;
  a2->n128_u64[0] = this->n128_u64[0];
  a2[1] = result;
  return result;
}

__n128 std::__function::__func<std::function<mlir::TypeRange ()(unsigned int)> mlir::TypeRangeRange::getRangeFn<mlir::OperandRangeRange>(mlir::OperandRangeRange const&)::{lambda(unsigned int)#1},std::allocator<std::function<mlir::TypeRange ()(unsigned int)> mlir::TypeRangeRange::getRangeFn<mlir::OperandRangeRange>(mlir::OperandRangeRange const&)::{lambda(unsigned int)#1}>,mlir::TypeRange ()(unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689D608;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::function<mlir::TypeRange ()(unsigned int)> mlir::TypeRangeRange::getRangeFn<mlir::OperandRangeRange>(mlir::OperandRangeRange const&)::{lambda(unsigned int)#1},std::allocator<std::function<mlir::TypeRange ()(unsigned int)> mlir::TypeRangeRange::getRangeFn<mlir::OperandRangeRange>(mlir::OperandRangeRange const&)::{lambda(unsigned int)#1}>,mlir::TypeRange ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir14TypeRangeRange10getRangeFnINS_17OperandRangeRangeEEENSt3__18functionIFNS_9TypeRangeEjEEERKT_EUljE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir14TypeRangeRange10getRangeFnINS_17OperandRangeRangeEEENSt3__18functionIFNS_9TypeRangeEjEEERKT_EUljE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir14TypeRangeRange10getRangeFnINS_17OperandRangeRangeEEENSt3__18functionIFNS_9TypeRangeEjEEERKT_EUljE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir14TypeRangeRange10getRangeFnINS_17OperandRangeRangeEEENSt3__18functionIFNS_9TypeRangeEjEEERKT_EUljE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t anonymous namespace::OperationVerifier::verifyOpAndDominance(_anonymous_namespace_::OperationVerifier *this, mlir::Operation *a2)
{
  v197 = *MEMORY[0x277D85DE8];
  v179 = v181;
  v181[0] = a2;
  v2 = 1;
  v180 = 0x600000001;
  while (1)
  {
    while (1)
    {
      v3 = v179 + 8 * v2;
      v4 = *(v3 - 1);
      *(v3 - 1) = v4 | 2;
      v5 = v4 & 0xFFFFFFFFFFFFFFF8;
      if ((v4 & 2) == 0)
      {
        break;
      }

      if ((v4 & 4) == 0)
      {
        DiscardableAttrDictionary = &v184;
        v183 = 0x600000000;
        if (*this == 1)
        {
          v12 = *(v5 + 44);
          if ((v12 & 0x7FFFFF) != 0)
          {
            v13 = ((v5 + 16 * ((v12 >> 23) & 1) + ((v12 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v5 + 40);
            v14 = v13 + 24 * (v12 & 0x7FFFFF);
            do
            {
              for (i = *(v13 + 8); i != v13; i = *(i + 8))
              {
                v16 = i - 8;
                if (!i)
                {
                  v16 = 0;
                }

                v17 = v16 + 32;
                for (j = *(v16 + 40); j != v17; j = *(j + 8))
                {
                  ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
                  if ((*(ValuePtr + 44) & 0x7FFFFF) != 0)
                  {
                    v20 = ValuePtr;
                    {
                    }

                    if ((*(**(v20 + 48) + 32))(*(v20 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
                    {
                      if (v183 >= HIDWORD(v183))
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      *(DiscardableAttrDictionary + v183) = v20;
                      LODWORD(v183) = v183 + 1;
                    }
                  }
                }
              }

              v13 += 24;
            }

            while (v13 != v14);
          }
        }

        Context = mlir::Attribute::getContext((v5 + 24));
        v49 = DiscardableAttrDictionary;
        v50 = v183;
        v172 = this;
        *&v173 = DiscardableAttrDictionary;
        v176 = v183;
        if (v183)
        {
          v51 = Context;
          if (mlir::MLIRContext::isMultithreadingEnabled(Context) && v176 > 1)
          {
            mlir::ParallelDiagnosticHandler::ParallelDiagnosticHandler(&v169, v51);
          }

          v81 = &v49[8 * v50];
          v82 = v173;
          if (v173 != v81)
          {
            {
              v82 = (v173 + 8);
              *&v173 = v82;
              if (v82 == v81)
              {
                goto LABEL_148;
              }
            }

            v41 = 0;
LABEL_150:
            v84 = DiscardableAttrDictionary;
            if (DiscardableAttrDictionary == &v184)
            {
              goto LABEL_152;
            }

            goto LABEL_151;
          }
        }

LABEL_148:
        v83 = *(v5 + 48);
        if (*(v83 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
        {
          v41 = (*(*v83 + 72))(v83, v5);
          goto LABEL_150;
        }

        *&v186 = *(v83 + 8);
        ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v186);
        if (ReferencedDialect)
        {
          if ((*(ReferencedDialect + 40) & 1) == 0)
          {
            v86 = ReferencedDialect;
            *&v169 = "unregistered operation '";
            v171 = 259;
            mlir::Operation::emitError(&v186, v5, &v169);
            if (v186)
            {
              mlir::Diagnostic::operator<<(&v186 + 8, *(v5 + 48));
              if (v186)
              {
                LODWORD(v173) = 3;
                *(&v173 + 1) = "' found in dialect ('";
                v174 = 21;
                if (v188 >= v189)
                {
                  if (v187 > &v173 || v187 + 24 * v188 <= &v173)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v87 = v187 + 24 * v188;
                v88 = v173;
                *(v87 + 2) = v174;
                *v87 = v88;
                ++v188;
                if (v186)
                {
                  v89 = *(v86 + 8);
                  v90 = *(v86 + 16);
                  v175 = 261;
                  *&v173 = v89;
                  *(&v173 + 1) = v90;
                  mlir::Diagnostic::operator<<(&v186 + 8, &v173);
                  if (v186)
                  {
                    LODWORD(v173) = 3;
                    *(&v173 + 1) = "') that does not allow unknown operations";
                    v174 = 41;
                    if (v188 >= v189)
                    {
                      if (v187 > &v173 || v187 + 24 * v188 <= &v173)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v91 = v187 + 24 * v188;
                    v92 = v173;
                    *(v91 + 2) = v174;
                    *v91 = v92;
                    ++v188;
                  }
                }
              }
            }

            v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v186);
            if (v186)
            {
              mlir::InFlightDiagnostic::report(&v186);
            }

            if (v196[0] != 1)
            {
              goto LABEL_150;
            }

            if (__dst != v196)
            {
              free(__dst);
            }

            v93 = __p;
            if (__p)
            {
              v94 = v194;
              v95 = __p;
              if (v194 != __p)
              {
                do
                {
                  v94 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v94 - 1);
                }

                while (v94 != v93);
                v95 = __p;
              }

              v194 = v93;
              operator delete(v95);
            }

            v96 = v191;
            if (v191)
            {
              v97 = v192;
              v98 = v191;
              if (v192 == v191)
              {
                goto LABEL_295;
              }

              do
              {
                v100 = *--v97;
                v99 = v100;
                *v97 = 0;
                if (v100)
                {
                  MEMORY[0x259C63150](v99, 0x1000C8077774924);
                }
              }

              while (v97 != v96);
LABEL_294:
              v98 = v191;
              goto LABEL_295;
            }

            goto LABEL_296;
          }
        }

        else
        {
          v136 = mlir::Attribute::getContext((v5 + 24));
          if ((mlir::MLIRContext::allowsUnregisteredDialects(v136) & 1) == 0)
          {
            v175 = 257;
            mlir::Operation::emitOpError(&v186, v5, &v173);
            if (v186)
            {
              LODWORD(v169) = 3;
              *(&v169 + 1) = "created with unregistered dialect. If this is intended, please call allowUnregisteredDialects() on the MLIRContext, or use -allow-unregistered-dialect with the MLIR opt tool used";
              v170 = 178;
              if (v188 >= v189)
              {
                if (v187 > &v169 || v187 + 24 * v188 <= &v169)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v137 = v187 + 24 * v188;
              v138 = v169;
              *(v137 + 2) = v170;
              *v137 = v138;
              ++v188;
            }

            v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v186);
            if (v186)
            {
              mlir::InFlightDiagnostic::report(&v186);
            }

            if (v196[0] != 1)
            {
              goto LABEL_150;
            }

            if (__dst != v196)
            {
              free(__dst);
            }

            v139 = __p;
            if (__p)
            {
              v140 = v194;
              v141 = __p;
              if (v194 != __p)
              {
                do
                {
                  v140 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v140 - 1);
                }

                while (v140 != v139);
                v141 = __p;
              }

              v194 = v139;
              operator delete(v141);
            }

            v96 = v191;
            if (v191)
            {
              v142 = v192;
              v98 = v191;
              if (v192 != v191)
              {
                do
                {
                  v144 = *--v142;
                  v143 = v144;
                  *v142 = 0;
                  if (v144)
                  {
                    MEMORY[0x259C63150](v143, 0x1000C8077774924);
                  }
                }

                while (v142 != v96);
                goto LABEL_294;
              }

LABEL_295:
              v192 = v96;
              operator delete(v98);
            }

LABEL_296:
            if (v187 != v190)
            {
              free(v187);
            }

            goto LABEL_150;
          }
        }

        v41 = 1;
        goto LABEL_150;
      }

      mlir::SuccessorRange::SuccessorRange(&v186, (v4 & 0xFFFFFFFFFFFFFFF8));
      v34 = *(&v186 + 1);
      if (*(&v186 + 1))
      {
        v35 = (v186 + 24);
        while (1)
        {
          Parent = mlir::Block::getParent(*v35);
          if (Parent != mlir::Block::getParent(v5))
          {
            break;
          }

          v35 += 4;
          if (!--v34)
          {
            goto LABEL_62;
          }
        }

        v68 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(v5 + 32));
        DiscardableAttrDictionary = "branching to block of a different region";
        LOWORD(v185) = 259;
        mlir::Operation::emitOpError(&v186, v68, &DiscardableAttrDictionary);
        v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v186);
        if (v186)
        {
          mlir::InFlightDiagnostic::report(&v186);
        }

        if (v196[0])
        {
          if (__dst != v196)
          {
            free(__dst);
          }

          v69 = __p;
          if (__p)
          {
            v70 = v194;
            v71 = __p;
            if (v194 != __p)
            {
              do
              {
                v70 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v70 - 1);
              }

              while (v70 != v69);
              v71 = __p;
            }

            v194 = v69;
            operator delete(v71);
          }

          v45 = v191;
          if (v191)
          {
            v72 = v192;
            v47 = v191;
            if (v192 != v191)
            {
              do
              {
                v74 = *--v72;
                v73 = v74;
                *v72 = 0;
                if (v74)
                {
                  MEMORY[0x259C63150](v73, 0x1000C8077774924);
                }
              }

              while (v72 != v45);
              goto LABEL_271;
            }

LABEL_272:
            v192 = v45;
            operator delete(v47);
          }

          goto LABEL_273;
        }

        goto LABEL_152;
      }

LABEL_62:
      if ((mayBeValidWithoutTerminator(v5) & 1) == 0)
      {
        v37 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(v5 + 32));
        v38 = v37;
        {
          v39 = *(v37 + 48);
          if (v39[2] == &mlir::detail::TypeIDResolver<void,void>::id)
          {
            goto LABEL_153;
          }
        }

        else
        {
          v39 = *(v38 + 6);
          if (v39[2] == &mlir::detail::TypeIDResolver<void,void>::id)
          {
            goto LABEL_153;
          }
        }

        if (((*(*v39 + 4))(v39, mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
        {
          v40 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(v5 + 32));
          DiscardableAttrDictionary = "block with no terminator, has ";
          LOWORD(v185) = 259;
          mlir::Operation::emitError(&v186, v40, &DiscardableAttrDictionary);
          if (v186)
          {
            mlir::Diagnostic::operator<<((&v186 + 8), v38);
          }

          v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v186);
          if (v186)
          {
            mlir::InFlightDiagnostic::report(&v186);
          }

          if (v196[0] != 1)
          {
            goto LABEL_152;
          }

          if (__dst != v196)
          {
            free(__dst);
          }

          v42 = __p;
          if (__p)
          {
            v43 = v194;
            v44 = __p;
            if (v194 != __p)
            {
              do
              {
                v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
              }

              while (v43 != v42);
              v44 = __p;
            }

            v194 = v42;
            operator delete(v44);
          }

          v45 = v191;
          if (v191)
          {
            v46 = v192;
            v47 = v191;
            if (v192 == v191)
            {
              goto LABEL_272;
            }

            do
            {
              v53 = *--v46;
              v52 = v53;
              *v46 = 0;
              if (v53)
              {
                MEMORY[0x259C63150](v52, 0x1000C8077774924);
              }
            }

            while (v46 != v45);
LABEL_271:
            v47 = v191;
            goto LABEL_272;
          }

LABEL_273:
          v84 = v187;
          if (v187 == v190)
          {
LABEL_152:
            if ((v41 & 1) == 0)
            {
              goto LABEL_345;
            }

            goto LABEL_153;
          }

LABEL_151:
          free(v84);
          goto LABEL_152;
        }
      }

LABEL_153:
      v2 = v180 - 1;
      LODWORD(v180) = v2;
      if (!v2)
      {
        goto LABEL_358;
      }
    }

    if ((v4 & 4) == 0)
    {
      break;
    }

    v21 = *(v5 + 48);
    v22 = *(v5 + 56);
    if (v21 != v22)
    {
      while (*(*v21 + 16) == v5)
      {
        v21 += 8;
        if (v21 == v22)
        {
          goto LABEL_39;
        }
      }

      v61 = *(*v21 + 32);
      DiscardableAttrDictionary = "block argument not owned by block";
      LOWORD(v185) = 259;
      mlir::emitError(v61, &DiscardableAttrDictionary, &v186);
      v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v186);
      if (v186)
      {
        mlir::InFlightDiagnostic::report(&v186);
      }

      if (v196[0])
      {
        if (__dst != v196)
        {
          free(__dst);
        }

        v62 = __p;
        if (__p)
        {
          v63 = v194;
          v64 = __p;
          if (v194 != __p)
          {
            do
            {
              v63 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v63 - 1);
            }

            while (v63 != v62);
            v64 = __p;
          }

          v194 = v62;
          operator delete(v64);
        }

        v31 = v191;
        if (v191)
        {
          v65 = v192;
          v33 = v191;
          if (v192 == v191)
          {
            goto LABEL_198;
          }

          do
          {
            v67 = *--v65;
            v66 = v67;
            *v65 = 0;
            if (v67)
            {
              MEMORY[0x259C63150](v66, 0x1000C8077774924);
            }
          }

          while (v65 != v31);
          goto LABEL_197;
        }

        goto LABEL_199;
      }

      goto LABEL_201;
    }

LABEL_39:
    v23 = (v5 + 32);
    if (*(v5 + 32) != v5 + 32)
    {
      for (k = *(v5 + 40); ; k = k[1])
      {
        if (k == v23)
        {
          goto LABEL_202;
        }

        v25 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(k);
        if (*(v25 + 40))
        {
          v26 = v25;
          if (v25 != llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*v23))
          {
            break;
          }
        }
      }

      DiscardableAttrDictionary = "operation with block successors must terminate its parent block";
      LOWORD(v185) = 259;
      mlir::Operation::emitError(&v186, v26, &DiscardableAttrDictionary);
      v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v186);
      if (v186)
      {
        mlir::InFlightDiagnostic::report(&v186);
      }

      if (v196[0] == 1)
      {
        if (__dst != v196)
        {
          free(__dst);
        }

        v28 = __p;
        if (__p)
        {
          v29 = v194;
          v30 = __p;
          if (v194 != __p)
          {
            do
            {
              v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
            }

            while (v29 != v28);
            v30 = __p;
          }

          v194 = v28;
          operator delete(v30);
        }

        v31 = v191;
        if (v191)
        {
          v32 = v192;
          v33 = v191;
          if (v192 == v191)
          {
            goto LABEL_198;
          }

          do
          {
            v55 = *--v32;
            v54 = v55;
            *v32 = 0;
            if (v55)
            {
              MEMORY[0x259C63150](v54, 0x1000C8077774924);
            }
          }

          while (v32 != v31);
          goto LABEL_197;
        }

        goto LABEL_199;
      }

      goto LABEL_201;
    }

    if ((mayBeValidWithoutTerminator((v4 & 0xFFFFFFFFFFFFFFF8)) & 1) == 0)
    {
      v101 = mlir::Block::getParent((v4 & 0xFFFFFFFFFFFFFFF8));
      Loc = mlir::Region::getLoc(v101);
      DiscardableAttrDictionary = "empty block: expect at least a terminator";
      LOWORD(v185) = 259;
      mlir::emitError(Loc, &DiscardableAttrDictionary, &v186);
      v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v186);
      if (v186)
      {
        mlir::InFlightDiagnostic::report(&v186);
      }

      if (v196[0] == 1)
      {
        if (__dst != v196)
        {
          free(__dst);
        }

        v103 = __p;
        if (__p)
        {
          v104 = v194;
          v105 = __p;
          if (v194 != __p)
          {
            do
            {
              v104 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v104 - 1);
            }

            while (v104 != v103);
            v105 = __p;
          }

          v194 = v103;
          operator delete(v105);
        }

        v31 = v191;
        if (v191)
        {
          v106 = v192;
          v33 = v191;
          if (v192 == v191)
          {
LABEL_198:
            v192 = v31;
            operator delete(v33);
            goto LABEL_199;
          }

          do
          {
            v108 = *--v106;
            v107 = v108;
            *v106 = 0;
            if (v108)
            {
              MEMORY[0x259C63150](v107, 0x1000C8077774924);
            }
          }

          while (v106 != v31);
LABEL_197:
          v33 = v191;
          goto LABEL_198;
        }

LABEL_199:
        v109 = v187;
        if (v187 != v190)
        {
LABEL_200:
          free(v109);
        }
      }

LABEL_201:
      if (!v27)
      {
        goto LABEL_345;
      }
    }

LABEL_202:
    if ((v4 & 4) != 0)
    {
      v119 = *(v5 + 32);
      v117 = (v5 + 32);
      for (m = v119; m != v117; m = *m)
      {
        v120 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(m);
        if ((*(v120 + 44) & 0x7FFFFF) == 0)
        {
          goto LABEL_217;
        }

        {
        }

        if (((*(**(v120 + 48) + 32))(*(v120 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
        {
LABEL_217:
          if (v180 >= HIDWORD(v180))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v179 + v180) = v120;
          LODWORD(v180) = v180 + 1;
        }
      }
    }

    else if (*this == 1)
    {
      v110 = *(v5 + 44);
      if ((v110 & 0x7FFFFF) != 0)
      {
        v111 = ((v5 + 16 * ((v110 >> 23) & 1) + ((v110 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v5 + 40);
        v112 = (v111 + 24 * (v110 & 0x7FFFFF));
        do
        {
          v114 = *(v112 - 3);
          v112 -= 3;
          v113 = v114;
          if (v114 != v112)
          {
            v115 = v180;
            do
            {
              if (v113)
              {
                v116 = (v113 - 1);
              }

              else
              {
                v116 = 0;
              }

              if (v115 >= HIDWORD(v180))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              *(v179 + v115) = v116 | 4;
              v115 = v180 + 1;
              LODWORD(v180) = v180 + 1;
              v113 = *v113;
            }

            while (v113 != v112);
          }
        }

        while (v112 != v111);
      }
    }

    v2 = v180;
    if (!v180)
    {
LABEL_358:
      v156 = 1;
      v157 = v179;
      if (v179 == v181)
      {
        goto LABEL_347;
      }

LABEL_346:
      free(v157);
      goto LABEL_347;
    }
  }

  if ((*(v5 + 46) & 0x80) != 0)
  {
    v6 = *(v5 + 68);
    if (v6)
    {
      v7 = (*(v5 + 72) + 24);
      while (*v7)
      {
        v7 += 4;
        if (!--v6)
        {
          goto LABEL_10;
        }
      }

      DiscardableAttrDictionary = "null operand found";
      LOWORD(v185) = 259;
      mlir::Operation::emitError(&v186, (v4 & 0xFFFFFFFFFFFFFFF8), &DiscardableAttrDictionary);
      v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v186);
      if (v186)
      {
        mlir::InFlightDiagnostic::report(&v186);
      }

      if (v196[0])
      {
        if (__dst != v196)
        {
          free(__dst);
        }

        v75 = __p;
        if (__p)
        {
          v76 = v194;
          v77 = __p;
          if (v194 != __p)
          {
            do
            {
              v76 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v76 - 1);
            }

            while (v76 != v75);
            v77 = __p;
          }

          v194 = v75;
          operator delete(v77);
        }

        v31 = v191;
        if (v191)
        {
          v78 = v192;
          v33 = v191;
          if (v192 == v191)
          {
            goto LABEL_198;
          }

          do
          {
            v80 = *--v78;
            v79 = v80;
            *v78 = 0;
            if (v80)
            {
              MEMORY[0x259C63150](v79, 0x1000C8077774924);
            }
          }

          while (v78 != v31);
          goto LABEL_197;
        }

        goto LABEL_199;
      }

      goto LABEL_201;
    }
  }

LABEL_10:
  DiscardableAttrDictionary = mlir::Operation::getDiscardableAttrDictionary((v4 & 0xFFFFFFFFFFFFFFF8));
  v8 = mlir::DictionaryAttr::begin(&DiscardableAttrDictionary);
  v9 = mlir::DictionaryAttr::end(&DiscardableAttrDictionary);
  if (v8 == v9)
  {
LABEL_92:
    v56 = *(v5 + 48);
    if (v56[2] != &mlir::detail::TypeIDResolver<void,void>::id && ((*(*v56 + 8))(v56, v4 & 0xFFFFFFFFFFFFFFF8) & 1) == 0)
    {
      goto LABEL_345;
    }

    v57 = *(v5 + 44);
    v58 = *&v57 & 0x7FFFFFLL;
    if ((v57 & 0x7FFFFF) == 0)
    {
      goto LABEL_202;
    }

    InterfaceFor = mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(v4 & 0xFFFFFFFFFFFFFFF8);
    if (InterfaceFor)
    {
      InterfaceFor = mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(v4 & 0xFFFFFFFFFFFFFFF8);
      v60 = (v4 & 0xFFFFFFFFFFFFFFF8);
    }

    else
    {
      v60 = 0;
    }

    v166 = v60;
    v167 = InterfaceFor;
    DiscardableAttrDictionary = &v184;
    v183 = 0x600000000;
    v121 = *(v5 + 44);
    if ((v121 & 0x7FFFFF) != 0)
    {
      v122 = (v5 + 16 * ((v121 >> 23) & 1) + ((v121 >> 21) & 0x7F8) + 32 * *(v5 + 40) + 64);
      if (!v60)
      {
        goto LABEL_248;
      }

LABEL_232:
      v123 = 0;
      while (2)
      {
        if (v166)
        {
          RegionKind = mlir::RegionKindInterface::getRegionKind(&v166, v123);
          v125 = *v122;
          if (*(*(v5 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id || RegionKind != 1)
          {
            goto LABEL_244;
          }

          if (v122 != v125)
          {
            if (v122 != *(v122[1] + 8))
            {
              *&v173 = "expects graph region #";
              v175 = 259;
              mlir::Operation::emitOpError(&v186, (v4 & 0xFFFFFFFFFFFFFFF8), &v173);
              if (v186)
              {
                LODWORD(v169) = 5;
                *(&v169 + 1) = v123;
                if (v188 >= v189)
                {
                  if (v187 > &v169 || v187 + 24 * v188 <= &v169)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v145 = v187 + 24 * v188;
                v146 = v169;
                *(v145 + 2) = v170;
                *v145 = v146;
                v147 = ++v188;
                if (v186)
                {
                  LODWORD(v169) = 3;
                  *(&v169 + 1) = " to have 0 or 1 blocks";
                  v170 = 22;
                  if (v147 >= v189)
                  {
                    if (v187 > &v169 || v187 + 24 * v147 <= &v169)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v148 = v187 + 24 * v188;
                  v149 = v169;
                  *(v148 + 2) = v170;
                  *v148 = v149;
                  ++v188;
                }
              }

              v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v186);
              if (v186)
              {
                mlir::InFlightDiagnostic::report(&v186);
              }

              if (v196[0] == 1)
              {
                if (__dst != v196)
                {
                  free(__dst);
                }

                v150 = __p;
                if (__p)
                {
                  v151 = v194;
                  v152 = __p;
                  if (v194 != __p)
                  {
                    do
                    {
                      v151 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v151 - 1);
                    }

                    while (v151 != v150);
                    v152 = __p;
                  }

                  v194 = v150;
                  operator delete(v152);
                }

                v131 = v191;
                if (v191)
                {
                  v153 = v192;
                  v133 = v191;
                  if (v192 == v191)
                  {
LABEL_320:
                    v192 = v131;
                    operator delete(v133);
                    goto LABEL_321;
                  }

                  do
                  {
                    v155 = *--v153;
                    v154 = v155;
                    *v153 = 0;
                    if (v155)
                    {
                      MEMORY[0x259C63150](v154, 0x1000C8077774924);
                    }
                  }

                  while (v153 != v131);
LABEL_319:
                  v133 = v191;
                  goto LABEL_320;
                }

                goto LABEL_321;
              }

              goto LABEL_267;
            }

LABEL_244:
            if (v122 != v125 && *(v122[1] - 8))
            {
              goto LABEL_250;
            }
          }

          ++v123;
          v122 += 3;
          if (v58 == v123)
          {
            goto LABEL_266;
          }

          continue;
        }

        break;
      }

      v125 = *v122;
      goto LABEL_244;
    }

    v122 = 0;
    if (v60)
    {
      goto LABEL_232;
    }

LABEL_248:
    while (v122 == *v122 || !*(v122[1] - 8))
    {
      v122 += 3;
      if (!--v58)
      {
LABEL_266:
        v27 = 1;
        goto LABEL_267;
      }
    }

LABEL_250:
    v127 = *(v5 + 24);
    *&v173 = "entry block of region may not have predecessors";
    v175 = 259;
    mlir::emitError(v127, &v173, &v186);
    v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v186);
    if (v186)
    {
      mlir::InFlightDiagnostic::report(&v186);
    }

    if (v196[0] == 1)
    {
      if (__dst != v196)
      {
        free(__dst);
      }

      v128 = __p;
      if (__p)
      {
        v129 = v194;
        v130 = __p;
        if (v194 != __p)
        {
          do
          {
            v129 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v129 - 1);
          }

          while (v129 != v128);
          v130 = __p;
        }

        v194 = v128;
        operator delete(v130);
      }

      v131 = v191;
      if (v191)
      {
        v132 = v192;
        v133 = v191;
        if (v192 == v191)
        {
          goto LABEL_320;
        }

        do
        {
          v135 = *--v132;
          v134 = v135;
          *v132 = 0;
          if (v135)
          {
            MEMORY[0x259C63150](v134, 0x1000C8077774924);
          }
        }

        while (v132 != v131);
        goto LABEL_319;
      }

LABEL_321:
      if (v187 != v190)
      {
        free(v187);
      }
    }

LABEL_267:
    v109 = DiscardableAttrDictionary;
    if (DiscardableAttrDictionary != &v184)
    {
      goto LABEL_200;
    }

    goto LABEL_201;
  }

  v10 = v9;
  while (1)
  {
    v186 = *v8;
    NameDialect = mlir::NamedAttribute::getNameDialect(&v186);
    if (NameDialect)
    {
      if (((*(*NameDialect + 96))(NameDialect, v4 & 0xFFFFFFFFFFFFFFF8, v186, *(&v186 + 1)) & 1) == 0)
      {
        break;
      }
    }

    if (++v8 == v10)
    {
      goto LABEL_92;
    }
  }

LABEL_345:
  v156 = 0;
  v157 = v179;
  if (v179 != v181)
  {
    goto LABEL_346;
  }

LABEL_347:
  if (!v156)
  {
    return 0;
  }

  if ((*(a2 + 11) & 0x7FFFFF) != 0)
  {
    v166 = 0;
    v167 = 0;
    v168 = 0;
    v179 = v181;
    HIDWORD(v180) = 8;
    v181[0] = a2;
    v158 = 1;
    while (1)
    {
      v159 = *(v179 + --v158);
      LODWORD(v180) = v158;
      v160 = *(v159 + 44);
      if ((v160 & 0x7FFFFF) != 0)
      {
        v161 = ((v159 + 16 * ((v160 >> 23) & 1) + ((v160 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v159 + 40);
        v163 = v161 + 24 * (v160 & 0x7FFFFF);
        do
        {
          if (*(v161 + 8) != v161)
          {
            mlir::detail::DominanceInfoBase<false>::isReachableFromEntry();
          }

          v161 += 24;
        }

        while (v161 != v163);
        v158 = v180;
      }

      if (!v158)
      {
        if (v179 != v181)
        {
          free(v179);
        }

        mlir::detail::DominanceInfoBase<false>::~DominanceInfoBase();
      }
    }
  }

  return 1;
}

__n128 std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0>(mlir::MLIRContext *,mlir::Operation **,mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&)::{lambda(void)#1},std::allocator<anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689D698;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0>(mlir::MLIRContext *,mlir::Operation **,mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&)::{lambda(void)#1},std::allocator<anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = atomic_load(*(a1 + 8));
  if ((v1 & 1) == 0)
  {
    do
    {
      add = atomic_fetch_add(*(a1 + 16), 1u);
      if (add >= **(a1 + 24))
      {
        break;
      }

      mlir::ParallelDiagnosticHandler::setOrderIDForThread(*(a1 + 32), add);
      {
        atomic_store(1u, *(a1 + 8));
      }

      mlir::ParallelDiagnosticHandler::eraseOrderIDForThread(*(a1 + 32));
      v3 = atomic_load(*(a1 + 8));
    }

    while ((v3 & 1) == 0);
  }
}

uint64_t std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0>(mlir::MLIRContext *,mlir::Operation **,mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&)::{lambda(void)#1},std::allocator<anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir23failableParallelForEachIPPNS_9OperationEZN12_GLOBAL__N_117OperationVerifier12verifyOnExitERS1_E3$_0EEN4llvm13LogicalResultEPNS_11MLIRContextET_SC_OT0_EUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir23failableParallelForEachIPPNS_9OperationEZN12_GLOBAL__N_117OperationVerifier12verifyOnExitERS1_E3$_0EEN4llvm13LogicalResultEPNS_11MLIRContextET_SC_OT0_EUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir23failableParallelForEachIPPNS_9OperationEZN12_GLOBAL__N_117OperationVerifier12verifyOnExitERS1_E3$_0EEN4llvm13LogicalResultEPNS_11MLIRContextET_SC_OT0_EUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir23failableParallelForEachIPPNS_9OperationEZN12_GLOBAL__N_117OperationVerifier12verifyOnExitERS1_E3$_0EEN4llvm13LogicalResultEPNS_11MLIRContextET_SC_OT0_EUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mayBeValidWithoutTerminator(mlir::Block *a1)
{
  if (!mlir::Block::getParent(a1))
  {
    return 1;
  }

  Parent = mlir::Block::getParent(a1);
  v3 = *(Parent + 8);
  if (v3 == Parent || *(v3 + 8) != Parent)
  {
    return 0;
  }

  ParentOp = mlir::Block::getParentOp(a1);
  if (!ParentOp)
  {
    return 1;
  }

  {
    v8 = ParentOp;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>();
    v6 = *(v8 + 48);
    if (v6[2] != &mlir::detail::TypeIDResolver<void,void>::id)
    {
      goto LABEL_8;
    }

    return 1;
  }

  v6 = *(ParentOp + 48);
  if (v6[2] == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return 1;
  }

LABEL_8:
  v7 = *(*v6 + 4);

  return v7();
}

void *mlir::WalkStage::WalkStage(void *this, mlir::Operation *a2)
{
  *this = *(a2 + 11) & 0x7FFFFF;
  return this;
}

{
  *this = *(a2 + 11) & 0x7FFFFF;
  return this;
}

uint64_t mlir::ForwardIterator::makeIterable(mlir::ForwardIterator *this, mlir::Operation *a2)
{
  v2 = *(this + 11);
  if ((v2 & 0x7FFFFF) != 0)
  {
    return this + 32 * *(this + 10) + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 64;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::walk(uint64_t a1, void (*a2)(uint64_t, uint64_t, int *), uint64_t a3)
{
  v6 = *(a1 + 44);
  v15 = v6 & 0x7FFFFF;
  v16 = 0;
  if ((v6 & 0x7FFFFF) != 0)
  {
    v7 = ((a1 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
    v8 = v7 + 24 * (v6 & 0x7FFFFF);
    do
    {
      a2(a3, a1, &v15);
      ++v16;
      for (i = *(v7 + 8); i != v7; i = *(i + 8))
      {
        v10 = i - 8;
        if (!i)
        {
          v10 = 0;
        }

        v11 = v10 + 32;
        v12 = *(v10 + 40);
        if (v12 != v10 + 32)
        {
          do
          {
            ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v12);
            mlir::detail::walk(ValuePtr, a2, a3);
            v12 = *(v12 + 8);
          }

          while (v12 != v11);
        }
      }

      v7 += 24;
    }

    while (v7 != v8);
  }

  return (a2)(a3, a1, &v15);
}

uint64_t mlir::detail::walk(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, int *), uint64_t a3)
{
  v6 = *(a1 + 44);
  v17 = v6 & 0x7FFFFF;
  v18 = 0;
  if ((v6 & 0x7FFFFF) == 0)
  {
    return a2(a3, a1, &v17);
  }

  v7 = ((a1 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  v8 = v7 + 24 * (v6 & 0x7FFFFF);
  while (1)
  {
    result = a2(a3, a1, &v17);
    if (!result)
    {
      break;
    }

    if (result == 2)
    {
      return 1;
    }

    ++v18;
    for (i = *(v7 + 8); i != v7; i = *(i + 8))
    {
      v11 = i - 8;
      if (!i)
      {
        v11 = 0;
      }

      v12 = *(v11 + 40);
      v13 = v11 + 32;
      while (v12 != v13)
      {
        v14 = *(v12 + 8);
        ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v12);
        v16 = mlir::detail::walk(ValuePtr, a2, a3);
        v12 = v14;
        if (!v16)
        {
          return 0;
        }
      }
    }

    v7 += 24;
    if (v7 == v8)
    {
      return a2(a3, a1, &v17);
    }
  }

  return result;
}

void mlir::PDLValue::print(mlir::PDLValue *this, llvm::raw_ostream *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *this;
  if (*this)
  {
    v4 = *(this + 2);
    if (v4 > 2)
    {
      switch(v4)
      {
        case 3:
          v8 = *(v3 + 8);
          if (v8)
          {
            v9 = *v3;
            v14 = mlir::TypeRange::dereference_iterator(v9, 0);
            mlir::Type::print(&v14, a2);
            if (v8 != 1)
            {
              for (i = 1; i != v8; ++i)
              {
                v11 = *(a2 + 4);
                if (*(a2 + 3) - v11 > 1uLL)
                {
                  *v11 = 8236;
                  *(a2 + 4) += 2;
                }

                else
                {
                  llvm::raw_ostream::write(a2, ", ", 2uLL);
                }

                v14 = mlir::TypeRange::dereference_iterator(v9, i);
                mlir::Type::print(&v14, a2);
              }
            }
          }

          break;
        case 4:
          v14 = *this;
          mlir::Value::print(&v14, a2);
          break;
        case 5:
          v6 = *(v3 + 8);
          v14 = *v3;
          v15 = 0;
          if (v6)
          {
            v13 = mlir::ValueRange::dereference_iterator(&v14, 0);
            mlir::Value::print(&v13, a2);
            if (++v15 != v6)
            {
              do
              {
                v7 = *(a2 + 4);
                if (*(a2 + 3) - v7 > 1uLL)
                {
                  *v7 = 8236;
                  *(a2 + 4) += 2;
                }

                else
                {
                  llvm::raw_ostream::write(a2, ", ", 2uLL);
                }

                v13 = mlir::ValueRange::dereference_iterator(&v14, v15);
                mlir::Value::print(&v13, a2);
                ++v15;
              }

              while (v15 != v6);
            }
          }

          break;
      }
    }

    else if (v4)
    {
      if (v4 == 1)
      {
        mlir::OpPrintingFlags::OpPrintingFlags(&v14);
        v12 = mlir::OpPrintingFlags::useLocalScope(&v14);
        mlir::Operation::print(v3, a2, v12);
      }

      if (v4 == 2)
      {
        v14 = *this;
        mlir::Type::print(&v14, a2);
      }
    }

    else
    {
      v14 = *this;
      mlir::Attribute::print(&v14, a2);
    }
  }

  else
  {
    v5 = *(a2 + 4);
    if (*(a2 + 3) - v5 > 0xEuLL)
    {
      qmemcpy(v5, "<NULL-PDLValue>", 15);
      *(a2 + 4) += 15;
    }

    else
    {

      llvm::raw_ostream::write(a2, "<NULL-PDLValue>", 0xFuLL);
    }
  }
}

void *mlir::PDLValue::print(void *result, int a2)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        if (a2 != 2)
        {
          return result;
        }

        v2 = result[4];
        if (result[3] - v2 <= 3uLL)
        {
          v3 = "Type";
          v4 = 4;
          return llvm::raw_ostream::write(result, v3, v4);
        }

        *v2 = 1701869908;
        v10 = result[4] + 4;
        goto LABEL_28;
      }

      v6 = result[4];
      if ((result[3] - v6) <= 8)
      {
        v3 = "Operation";
        v4 = 9;
        return llvm::raw_ostream::write(result, v3, v4);
      }

      v8 = 110;
      v9 = "Operation";
    }

    else
    {
      v6 = result[4];
      if ((result[3] - v6) <= 8)
      {
        v3 = "Attribute";
        v4 = 9;
        return llvm::raw_ostream::write(result, v3, v4);
      }

      v8 = 101;
      v9 = "Attribute";
    }

    goto LABEL_26;
  }

  switch(a2)
  {
    case 3:
      v6 = result[4];
      if ((result[3] - v6) <= 8)
      {
        v3 = "TypeRange";
        v4 = 9;
        return llvm::raw_ostream::write(result, v3, v4);
      }

      v8 = 101;
      v9 = "TypeRange";
LABEL_26:
      *(v6 + 8) = v8;
      *v6 = *v9;
      v10 = result[4] + 9;
      break;
    case 4:
      v7 = result[4];
      if ((result[3] - v7) <= 4)
      {
        v3 = "Value";
        v4 = 5;
        return llvm::raw_ostream::write(result, v3, v4);
      }

      *(v7 + 4) = 101;
      *v7 = 1970037078;
      v10 = result[4] + 5;
      break;
    case 5:
      v5 = result[4];
      if ((result[3] - v5) <= 9)
      {
        v3 = "ValueRange";
        v4 = 10;
        return llvm::raw_ostream::write(result, v3, v4);
      }

      *(v5 + 8) = 25959;
      *v5 = *"ValueRange";
      v10 = result[4] + 10;
      break;
    default:
      return result;
  }

LABEL_28:
  result[4] = v10;
  return result;
}

uint64_t mlir::PDLPatternModule::mergeIn(uint64_t result, uint64_t *a2, const unsigned __int8 *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  if (!*a2)
  {
    return result;
  }

  v4 = result;
  v5 = a2[12];
  v6 = *(a2 + 26);
  if (!v6)
  {
    v7 = a2[12];
    v12 = &v5[v6];
    if (v5 == v12)
    {
      goto LABEL_30;
    }

    goto LABEL_15;
  }

  v7 = a2[12];
  if (*v5)
  {
    v8 = *v5 == -8;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    do
    {
      v10 = v7[1];
      ++v7;
      v9 = v10;
      if (v10)
      {
        v11 = v9 == -8;
      }

      else
      {
        v11 = 1;
      }
    }

    while (v11);
  }

  v12 = &v5[v6];
  if (v7 != v12)
  {
LABEL_15:
    v13 = *v7;
    do
    {
      v14 = *v13;
      v15 = *(v13 + 32);
      if (v15)
      {
        if (v15 == v13 + 8)
        {
          v56 = v55;
          (*(*v15 + 24))(v15, v55);
        }

        else
        {
          v56 = *(v13 + 32);
          *(v13 + 32) = 0;
        }
      }

      else
      {
        v56 = 0;
      }

      v16 = llvm::StringMapImpl::hash((v13 + 40), v14, a3);
      llvm::StringMap<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>,llvm::MallocAllocator>::try_emplace_with_hash<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>>((v4 + 96), (v13 + 40), v14, v16, v55);
      result = v56;
      if (v56 == v55)
      {
        result = (*(*v56 + 32))(v56);
      }

      else if (v56)
      {
        result = (*(*v56 + 40))();
      }

      do
      {
        v17 = v7[1];
        ++v7;
        v13 = v17;
        if (v17)
        {
          v18 = v13 == -8;
        }

        else
        {
          v18 = 1;
        }
      }

      while (v18);
    }

    while (v7 != v12);
  }

LABEL_30:
  v19 = a2[15];
  v20 = *(a2 + 32);
  if (v20)
  {
    v21 = a2[15];
    if (*v19)
    {
      v22 = *v19 == -8;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      do
      {
        v24 = v21[1];
        ++v21;
        v23 = v24;
        if (v24)
        {
          v25 = v23 == -8;
        }

        else
        {
          v25 = 1;
        }
      }

      while (v25);
    }

    v26 = &v19[v20];
    if (v21 == v26)
    {
      goto LABEL_58;
    }

    goto LABEL_43;
  }

  v21 = a2[15];
  v26 = &v19[v20];
  if (v19 != v26)
  {
LABEL_43:
    v27 = *v21;
    do
    {
      v28 = *v27;
      v29 = *(v27 + 32);
      if (v29)
      {
        if (v29 == v27 + 8)
        {
          v54 = v53;
          (*(*v29 + 24))(v29, v53);
        }

        else
        {
          v54 = *(v27 + 32);
          *(v27 + 32) = 0;
        }
      }

      else
      {
        v54 = 0;
      }

      v30 = llvm::StringMapImpl::hash((v27 + 40), v28, a3);
      llvm::StringMap<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>,llvm::MallocAllocator>::try_emplace_with_hash<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>>((v4 + 120), (v27 + 40), v28, v30, v53);
      result = v54;
      if (v54 == v53)
      {
        result = (*(*v54 + 32))(v54);
      }

      else if (v54)
      {
        result = (*(*v54 + 40))();
      }

      do
      {
        v31 = v21[1];
        ++v21;
        v27 = v31;
        if (v31)
        {
          v32 = v27 == -8;
        }

        else
        {
          v32 = 1;
        }
      }

      while (v32);
    }

    while (v21 != v26);
  }

LABEL_58:
  v33 = *(a2 + 4);
  if (v33)
  {
    v34 = a2[1];
    v35 = 8 * v33;
    do
    {
      v36 = *(v4 + 16);
      if (v36 >= *(v4 + 20))
      {
        llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::PDLPatternConfigSet>,false>::growAndEmplaceBack<std::unique_ptr<mlir::PDLPatternConfigSet>>();
      }

      v37 = *(v4 + 8);
      v38 = *v34;
      *v34++ = 0;
      *(v37 + 8 * v36) = v38;
      *(v4 + 16) = v36 + 1;
      v35 -= 8;
    }

    while (v35);
  }

  if (*(a2 + 20))
  {
    v39 = *(a2 + 22);
    if (v39)
    {
      v40 = 16 * v39;
      v41 = a2[9];
      while ((*v41 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v41 += 2;
        v40 -= 16;
        if (!v40)
        {
          goto LABEL_69;
        }
      }
    }

    else
    {
      v41 = a2[9];
    }

    v51 = a2[9] + 16 * v39;
    while (v41 != v51)
    {
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>(v4 + 72, v41, v41 + 1, &v52);
      do
      {
        v41 += 2;
      }

      while (v41 != v51 && (*v41 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }
  }

LABEL_69:
  if (!*v4)
  {
    v48 = *a2;
    *a2 = 0;
    goto LABEL_80;
  }

  v42 = *(((*v4 + 16 * ((*(*v4 + 44) >> 23) & 1) + ((*(*v4 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*v4 + 40) + 8);
  v8 = v42 == 0;
  v43 = v42 - 8;
  if (v8)
  {
    v43 = 0;
  }

  v44 = *(((*a2 + 16 * ((*(*a2 + 44) >> 23) & 1) + ((*(*a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a2 + 40) + 8);
  if (v44)
  {
    v45 = v44 - 8;
  }

  else
  {
    v45 = 0;
  }

  v46 = (v45 + 32);
  if (*(v45 + 32) != v45 + 32 && v45 != v43)
  {
    v4 = v43 + 32;
    v47 = *(v45 + 40);
    result = llvm::ilist_traits<mlir::Operation>::transferNodesFromList(v43 + 32, v45 + 32, v47, v45 + 32);
    if (v47 != v46)
    {
      v48 = *v46;
      v49 = *v47;
      *(v49 + 8) = v46;
      *v46 = v49;
      v50 = *v4;
      *(v48 + 8) = v4;
      *v47 = v50;
      *(v50 + 8) = v47;
LABEL_80:
      *v4 = v48;
    }
  }

  return result;
}

uint64_t *mlir::PDLPatternModule::registerConstraintFunction(uint64_t a1, unsigned int *a2, const unsigned __int8 *a3, uint64_t a4)
{
  v8 = llvm::StringMapImpl::hash(a2, a3, a3);

  return llvm::StringMap<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>,llvm::MallocAllocator>::try_emplace_with_hash<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>>((a1 + 96), a2, a3, v8, a4);
}

uint64_t *mlir::PDLPatternModule::registerRewriteFunction(uint64_t a1, unsigned int *a2, const unsigned __int8 *a3, uint64_t a4)
{
  v8 = llvm::StringMapImpl::hash(a2, a3, a3);

  return llvm::StringMap<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>,llvm::MallocAllocator>::try_emplace_with_hash<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>>((a1 + 120), a2, a3, v8, a4);
}

uint64_t mlir::PDLPatternModule::attachConfigToPatterns(uint64_t a1, mlir::ForwardIterator *a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a3;
  return mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::PDLPatternModule::attachConfigToPatterns(mlir::ModuleOp,mlir::PDLPatternConfigSet &)::$_0>, v4, 1);
}

void *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::PDLPatternModule::attachConfigToPatterns(mlir::ModuleOp,mlir::PDLPatternConfigSet &)::$_0>(uint64_t *a1, uint64_t a2)
{
  v7 = a2;
  v3 = *a1;
  {
    v6 = a2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    a2 = v6;
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v5 = a1[1];
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v3 + 72, &v7);
    *result = v5;
  }

  return result;
}

uint64_t *llvm::StringMap<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>,llvm::MallocAllocator>::try_emplace_with_hash<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4, uint64_t a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 41, 8uLL);
    v13 = buffer + 5;
    if (a3)
    {
LABEL_4:
      memcpy(v13, a2, a3);
    }
  }

  else
  {
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

    buffer = llvm::allocate_buffer(a3 + 41, 8uLL);
    v13 = buffer + 5;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v13 + a3) = 0;
  *buffer = a3;
  v14 = *(a5 + 24);
  if (v14)
  {
    if (v14 == a5)
    {
      buffer[4] = buffer + 1;
      (*(*v14 + 24))(v14);
    }

    else
    {
      buffer[4] = v14;
      *(a5 + 24) = 0;
    }
  }

  else
  {
    buffer[4] = 0;
  }

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

void openInputFileImpl(void *a1, const void *a2, std::string::size_type a3, uint64_t a4, unsigned __int16 a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v27 = 261;
  v26.__r_.__value_.__r.__words[0] = a2;
  v26.__r_.__value_.__l.__size_ = a3;
  llvm::MemoryBuffer::getFileOrSTDIN(&v26, 0, 1, a5, &v29);
  if ((v30 & 1) == 0 || (v25 = v29, !v29.__val_))
  {
    *a1 = *&v29.__val_;
    return;
  }

  if (!a4)
  {
    *a1 = 0;
    return;
  }

  if (a2)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (a3 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = a3;
    if (a3)
    {
      memmove(&__dst, a2, a3);
    }

    __dst.__r_.__value_.__s.__data_[a3] = 0;
  }

  else
  {
    memset(&__dst, 0, sizeof(__dst));
  }

  v9 = std::string::insert(&__dst, 0, "cannot open input file '");
  v10 = v9->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v24, "': ");
  v12 = v11->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  std::error_code::message(&__p, &v25);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v15 = std::string::append(&v26, p_p, size);
  v16 = v15->__r_.__value_.__r.__words[0];
  v28[0] = v15->__r_.__value_.__l.__size_;
  *(v28 + 7) = *(&v15->__r_.__value_.__r.__words[1] + 7);
  v17 = HIBYTE(v15->__r_.__value_.__r.__words[2]);
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  v18 = v28[0];
  *a4 = v16;
  *(a4 + 8) = v18;
  *(a4 + 15) = *(v28 + 7);
  *(a4 + 23) = v17;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_26:
      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_32;
    }
  }

  else if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_26;
  }

  operator delete(v26.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_27:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_33:
    operator delete(__dst.__r_.__value_.__l.__data_);
    v20 = v30;
    *a1 = 0;
    if (v20)
    {
      return;
    }

    goto LABEL_34;
  }

LABEL_32:
  operator delete(v24.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_33;
  }

LABEL_28:
  v19 = v30;
  *a1 = 0;
  if (v19)
  {
    return;
  }

LABEL_34:
  v21 = *&v29.__val_;
  *&v29.__val_ = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }
}

void mlir::openOutputFile()
{
  v1 = *MEMORY[0x277D85DE8];
  v0.__val_ = 0;
  v0.__cat_ = std::system_category();
  operator new();
}

void mlir::detail::InterfaceMap::insert(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    do
    {
      v7 = v6 >> 1;
      v8 = &v5[16 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 16;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v5 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
    v11 = *(a1 + 8);
    if (v5 != &v3[16 * v4])
    {
      if (*v5 == a2)
      {

        free(a3);
      }

      else
      {
        v12 = (v5 - v3);
        if (v4 >= *(a1 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v13 = *a1;
        v14 = &v12[*a1];
        *&v13[16 * v11] = *&v13[16 * v11 - 16];
        v15 = *a1;
        v16 = *(a1 + 8);
        v17 = *a1 + 16 * v16;
        v18 = (v17 - 16);
        if ((v17 - 16) != &v12[v13])
        {
          v19 = &v3[16 * v16 + v15] - &v5[v13] - 32;
          if (v19 < 0x30)
          {
            goto LABEL_15;
          }

          v20 = (v19 >> 4) + 1;
          v21 = 16 * (v20 & 0x1FFFFFFFFFFFFFFCLL);
          v17 -= v21;
          v18 -= v21;
          v22 = &v15[16 * v16 - 32];
          v23 = v20 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            i64 = v22[-1].i64;
            v30 = vld2q_f64(i64);
            v25 = v22[-3].i64;
            v31 = vld2q_f64(v25);
            *v22 = vzip1q_s64(v30.val[0], v30.val[1]);
            v22[1] = vzip2q_s64(v30.val[0], v30.val[1]);
            v22[-2] = vzip1q_s64(v31.val[0], v31.val[1]);
            v22[-1] = vzip2q_s64(v31.val[0], v31.val[1]);
            v22 -= 4;
            v23 -= 4;
          }

          while (v23);
          if (v20 != (v20 & 0x1FFFFFFFFFFFFFFCLL))
          {
LABEL_15:
            v26 = (v17 - 8);
            do
            {
              v27 = *(v18 - 2);
              v18 -= 16;
              *(v26 - 1) = v27;
              *v26 = *(v18 + 1);
              v26 -= 2;
            }

            while (v18 != v14);
          }
        }

        *(a1 + 8) = v16 + 1;
        *v14 = a2;
        *(v14 + 1) = a3;
      }

      return;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v28 = &v3[16 * v11];
  *v28 = a2;
  *(v28 + 1) = a3;
  ++*(a1 + 8);
}

uint64_t mlir::thread_safe_nulls(mlir *this)
{
  {
    mlir::thread_safe_nulls();
  }

  return mlir::thread_safe_nulls(void)::stream();
}

void mlir::StorageUniquer::StorageUniquer(mlir::StorageUniquer *this)
{
  operator new();
}

{
  operator new();
}

void mlir::StorageUniquer::~StorageUniquer(llvm ***this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    mlir::detail::StorageUniquerImpl::~StorageUniquerImpl(v2);
  }
}

{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    mlir::detail::StorageUniquerImpl::~StorageUniquerImpl(v2);
  }
}

uint64_t mlir::detail::StorageUniquerImpl::getOrCreate(mlir::detail::StorageUniquerImpl *a1, uint64_t a2, unsigned int a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v55 = a2;
  v13 = *v12;
  v53 = a1;
  v14 = *(a1 + 256);
  explicit = atomic_load_explicit((*(*v12 + 16) + 8 * ((*(*v12 + 24) - 1) & a3)), memory_order_acquire);
  if (!explicit)
  {
    operator new();
  }

  v57 = a3;
  v58 = a4;
  v59 = a5;
  if ((v14 & 1) == 0)
  {
    LODWORD(v56) = a3;
    *(&v56 + 1) = 0;
    v23 = v61;
    if ((v62 & 1) == 0)
    {
      return *(v61 + 8);
    }

    ThreadSafeAllocator = mlir::detail::StorageUniquerImpl::getThreadSafeAllocator(v53);
    result = a6(a7, ThreadSafeAllocator);
    *(v23 + 8) = result;
    return result;
  }

  {
    mlir::detail::StorageUniquerImpl::getOrCreate();
  }

  v17 = v16;
  v18 = *v13;
  v19 = *v16;
  v20 = *v16 & 1;
  if (v20)
  {
    v21 = 4;
    v22 = v16 + 8;
  }

  else
  {
    v21 = *(v16 + 16);
    if (!v21)
    {
      v28 = 0;
      v31 = 0;
      *&v61 = 0;
      goto LABEL_18;
    }

    v22 = *(v16 + 8);
  }

  v26 = v21 - 1;
  v27 = v26 & ((v18 >> 4) ^ (v18 >> 9));
  v28 = v22 + 40 * v27;
  v29 = *v28;
  if (*v28 != v18)
  {
    v49 = 0;
    v50 = 1;
    while (v29 != -4096)
    {
      if (v49)
      {
        v51 = 0;
      }

      else
      {
        v51 = v29 == -8192;
      }

      if (v51)
      {
        v49 = v28;
      }

      v52 = v27 + v50++;
      v27 = v52 & v26;
      v28 = v22 + 40 * v27;
      v29 = *v28;
      if (*v28 == v18)
      {
        goto LABEL_13;
      }
    }

    if (v49)
    {
      v28 = v49;
    }

    *&v61 = v28;
    if (v20)
    {
      v31 = 4;
    }

    else
    {
      v31 = *(v16 + 16);
    }

LABEL_18:
    if (4 * (v19 >> 1) + 4 >= 3 * v31)
    {
      v31 *= 2;
    }

    else if (v31 + ~(v19 >> 1) - *(v16 + 4) > v31 >> 3)
    {
      goto LABEL_20;
    }

    v19 = *v17;
    v28 = v61;
    v20 = *v17 & 1;
LABEL_20:
    *v17 = (v19 & 0xFFFFFFFE | v20) + 2;
    if (*v28 != -4096)
    {
      --v17[1];
    }

    *v28 = v18;
    *(v28 + 8) = 0u;
    *(v28 + 24) = 0u;
    operator new();
  }

LABEL_13:
  v30 = **(v28 + 8);
  if (!v30)
  {
    std::recursive_mutex::lock((*v13 + 40));
    if (*(*v13 + 8) < *(*v13 + 12))
    {
      operator new();
    }
  }

  LODWORD(v61) = a3;
  *(&v61 + 1) = 0;
  v32 = v56;
  result = *(v56 + 8);
  if (!result)
  {
    llvm::sys::RWMutexImpl::lock_shared((explicit + 24));
    v33 = *explicit;
    v34 = *(explicit + 16);
    if (!v34)
    {
      goto LABEL_35;
    }

    v35 = v34 - 1;
    v36 = 1;
    v37 = v58;
    v38 = v59;
    v39 = v57 & (v34 - 1);
    v40 = v33 + 16 * v39;
    v41 = *(v40 + 8);
    if ((v41 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_28;
    }

    while (v41 != -4096)
    {
      while (1)
      {
        v42 = v39 + v36++;
        v39 = v42 & v35;
        v40 = v33 + 16 * (v42 & v35);
        v41 = *(v40 + 8);
        if ((v41 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          break;
        }

LABEL_28:
        if (v37(v38))
        {
          if (v40 != *explicit + 16 * *(explicit + 16))
          {
            goto LABEL_33;
          }

          goto LABEL_35;
        }

        if (*(v40 + 8) == -4096)
        {
          goto LABEL_30;
        }
      }
    }

LABEL_30:
    v43 = *(explicit + 16);
    v40 = *explicit + 16 * v43;
    if (v40 != *explicit + 16 * v43)
    {
LABEL_33:
      v44 = *(v40 + 8);
      *(v32 + 8) = v44;
      llvm::sys::RWMutexImpl::unlock_shared((explicit + 24));
      return v44;
    }

    else
    {
LABEL_35:
      llvm::sys::RWMutexImpl::unlock_shared((explicit + 24));
      llvm::sys::RWMutexImpl::lock((explicit + 24));
      LODWORD(v60) = v57;
      *(&v60 + 1) = 0;
      v45 = v61;
      if (v62)
      {
        v46 = mlir::detail::StorageUniquerImpl::getThreadSafeAllocator(v53);
        v47 = a6(a7, v46);
        *(v45 + 8) = v47;
      }

      else
      {
        v47 = *(v61 + 8);
      }

      *(v32 + 8) = v47;
      v48 = v47;
      llvm::sys::RWMutexImpl::unlock((explicit + 24));
      return v48;
    }
  }

  return result;
}

uint64_t *std::unique_ptr<anonymous namespace::ParametricStorageUniquer>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 24))
    {
      v3 = 0;
      do
      {
        v4 = atomic_load((*(v2 + 16) + 8 * v3));
        if (v4)
        {
          if (*(v2 + 32) && *(v4 + 8))
          {
            v5 = *(v4 + 16);
            if (v5)
            {
              v6 = 16 * v5;
              v7 = *v4;
              while ((*(v7 + 1) | 0x1000) == 0xFFFFFFFFFFFFF000)
              {
                v7 = (v7 + 16);
                v6 -= 16;
                if (!v6)
                {
                  goto LABEL_4;
                }
              }
            }

            else
            {
              v7 = *v4;
            }

            v8 = *v4 + 16 * v5;
            if (v7 != v8)
            {
              v9 = *(v7 + 1);
              do
              {
                (*(v2 + 32))(*(v2 + 40), v9);
                do
                {
                  v7 = (v7 + 16);
                  if (v7 == v8)
                  {
                    goto LABEL_4;
                  }

                  v9 = *(v7 + 1);
                }

                while ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000);
              }

              while (v7 != v8);
            }
          }

LABEL_4:
          llvm::sys::RWMutexImpl::~RWMutexImpl((v4 + 24));
          llvm::deallocate_buffer(*v4, (16 * *(v4 + 16)));
        }

        ++v3;
      }

      while (v3 != *(v2 + 24));
    }

    v10 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v10)
    {
      MEMORY[0x259C63150](v10, 0x20C8093837F09);
    }

    v11 = *(v2 + 8);
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    MEMORY[0x259C63180](v2, 0x10A0C40E20AF11ELL);
  }

  return a1;
}

uint64_t mlir::StorageUniquer::getSingletonImpl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = a2;
  return *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v2 + 232, &v4);
}

BOOL mlir::StorageUniquer::isSingletonStorageInitialized(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 248);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*a1 + 232);
  v4 = v2 - 1;
  v5 = v4 & ((a2 >> 4) ^ (a2 >> 9));
  v6 = *(v3 + 16 * v5);
  if (v6 == a2)
  {
    return 1;
  }

  v8 = 1;
  do
  {
    result = v6 != -4096;
    if (v6 == -4096)
    {
      break;
    }

    v9 = v5 + v8++;
    v5 = v9 & v4;
    v6 = *(v3 + 16 * v5);
    result = 1;
  }

  while (v6 != a2);
  return result;
}

BOOL mlir::StorageUniquer::isParametricStorageInitialized(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 224);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*a1 + 208);
  v4 = v2 - 1;
  v5 = v4 & ((a2 >> 4) ^ (a2 >> 9));
  v6 = *(v3 + 16 * v5);
  if (v6 == a2)
  {
    return 1;
  }

  v8 = 1;
  do
  {
    result = v6 != -4096;
    if (v6 == -4096)
    {
      break;
    }

    v9 = v5 + v8++;
    v5 = v9 & v4;
    v6 = *(v3 + 16 * v5);
    result = 1;
  }

  while (v6 != a2);
  return result;
}

uint64_t mlir::StorageUniquer::registerSingletonImpl(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v8 = a2;
  v4 = *a1;
  v7 = a3(a4, *a1 + 112);
  return llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>(v4 + 232, &v8, &v7, v6);
}

uint64_t mlir::detail::StorageUniquerImpl::mutate(mlir::detail::StorageUniquerImpl *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v17 = a2;
  if (*(a1 + 256))
  {
    v9 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v10 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v9 >> 47) ^ v9);
    explicit = atomic_load_explicit((*(*v8 + 16) + 8 * ((-348639895 * ((v10 >> 47) ^ v10)) & (*(*v8 + 24) - 1))), memory_order_acquire);
    if (!explicit)
    {
      operator new();
    }

    llvm::sys::RWMutexImpl::lock((explicit + 24));
    ThreadSafeAllocator = mlir::detail::StorageUniquerImpl::getThreadSafeAllocator(a1);
    v13 = a4(a5, ThreadSafeAllocator);
    llvm::sys::RWMutexImpl::unlock((explicit + 24));
    return v13;
  }

  else
  {
    v15 = mlir::detail::StorageUniquerImpl::getThreadSafeAllocator(a1);

    return a4(a5, v15);
  }
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28689D718;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState>>::__on_zero_shared(uint64_t a1)
{
  std::recursive_mutex::~recursive_mutex((a1 + 64));
  llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Owner,false>::destroy_range(*(a1 + 24), (*(a1 + 24) + 24 * *(a1 + 32)));
  v2 = *(a1 + 24);
  if (v2 != (a1 + 40))
  {

    free(v2);
  }
}

uint64_t llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Owner,false>::destroy_range(uint64_t result, void *a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = *(v2 - 1);
      if (v4)
      {
        v5 = std::__shared_weak_count::lock(v4);
        if (v5)
        {
          v6 = *(v2 - 2);
          if (v6)
          {
            *v6 = 0;
            atomic_store(0, (v6 + 8));
          }

          if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v9 = v5;
            (v5->__on_zero_shared)();
            std::__shared_weak_count::__release_weak(v9);
            v7 = *(v2 - 1);
            if (!v7)
            {
              goto LABEL_11;
            }

LABEL_10:
            std::__shared_weak_count::__release_weak(v7);
            goto LABEL_11;
          }
        }

        v7 = *(v2 - 1);
        if (v7)
        {
          goto LABEL_10;
        }
      }

LABEL_11:
      v8 = *(v2 - 3);
      v2 -= 3;
      result = v8;
      *v2 = 0;
      if (v8)
      {
        result = MEMORY[0x259C63180](result, 0x20C4093837F09);
      }
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>,mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>::operator[](uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 16 * v4);
    v6 = *v5;
    if (*v5 == *a2)
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
      if (*v5 == *a2)
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>,mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>::LookupBucketFor<mlir::TypeID>(uint64_t result, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (result + 16 * v5);
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
        v6 = (result + 16 * (v11 & v4));
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>,mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>::grow(uint64_t a1, int a2)
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
          if (*v22 != v24)
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
              if (*v22 == v24)
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

uint64_t llvm::detail::DenseSetImpl<anonymous namespace::ParametricStorageUniquer::HashedStorage,llvm::DenseMap<anonymous namespace::ParametricStorageUniquer::HashedStorage,llvm::detail::DenseSetEmpty,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo,llvm::detail::DenseSetPair<anonymous namespace::ParametricStorageUniquer::HashedStorage>>,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>::insert_as<anonymous namespace::ParametricStorageUniquer::LookupKey>(uint64_t result, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v25 = *a3;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = *a2;
    v7 = v4 - 1;
    v8 = 1;
    v9 = *a4 & (v4 - 1);
    v10 = *a2 + 16 * v9;
    v11 = *(v10 + 8);
    if ((v11 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }

    while (v11 != -4096)
    {
      while (1)
      {
        if (v5)
        {
          v12 = 0;
        }

        else
        {
          v12 = v11 == -8192;
        }

        if (v12)
        {
          v5 = v10;
        }

        v13 = v9 + v8++;
        v9 = v13 & v7;
        v10 = v6 + 16 * (v13 & v7);
        v11 = *(v10 + 8);
        if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          break;
        }

LABEL_10:
        v14 = a2;
        v15 = result;
        v16 = a4;
        if ((*(a4 + 8))(*(a4 + 16), v11))
        {
          v19 = 0;
          result = v15;
          a2 = v14;
          goto LABEL_22;
        }

        v11 = *(v10 + 8);
        result = v15;
        a2 = v14;
        a4 = v16;
        if (v11 == -4096)
        {
          goto LABEL_12;
        }
      }
    }

LABEL_12:
    if (v5)
    {
      v10 = v5;
    }

    v17 = *(a2 + 16);
  }

  else
  {
    v17 = 0;
    v10 = 0;
  }

  v24 = v10;
  v18 = *(a2 + 8);
  if (4 * v18 + 4 >= 3 * v17)
  {
    v17 *= 2;
LABEL_24:
    v21 = result;
    v22 = a2;
    v23 = a4;
    a2 = v22;
    result = v21;
    v10 = v24;
    ++*(v22 + 8);
    if (*(v10 + 8) == -4096)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v17 + ~v18 - *(a2 + 12) <= v17 >> 3)
  {
    goto LABEL_24;
  }

  *(a2 + 8) = v18 + 1;
  if (*(v10 + 8) != -4096)
  {
LABEL_19:
    --*(a2 + 12);
  }

LABEL_20:
  *v10 = v25;
  v19 = 1;
LABEL_22:
  v20 = *a2 + 16 * *(a2 + 16);
  *result = v10;
  *(result + 8) = v20;
  *(result + 16) = v19;
  return result;
}

llvm **mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::CacheType::~CacheType(int *a1)
{
  v1 = a1;
  v2 = *a1;
  if (*a1 <= 1)
  {
    if (v2)
    {
      v3 = a1 + 2;
      v4 = a1 + 42;
      v5 = 4;
    }

    else
    {
      v3 = *(a1 + 1);
      v5 = a1[4];
      v4 = &v3[10 * v5];
    }

    v8 = &v3[10 * v5];
    v6 = a1 + 2;
    if (!v2)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v6 = a1 + 2;
  if (v2)
  {
    v8 = (a1 + 42);
    goto LABEL_8;
  }

  v7 = a1[4];
  v8 = *(a1 + 1) + 40 * v7;
  if (v7)
  {
    v6 = *(a1 + 1);
LABEL_8:
    v4 = v6;
    while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v4 += 10;
      if (v4 == v8)
      {
        v4 = v8;
        break;
      }
    }

    v6 = a1 + 2;
    if ((v2 & 1) == 0)
    {
LABEL_19:
      v9 = *(a1 + 1) + 40 * a1[4];
      if (v4 == v9)
      {
        goto LABEL_14;
      }

LABEL_22:
      v33 = v6;
      do
      {
        v11 = *(v4 + 4);
        if (v11)
        {
          v12 = std::__shared_weak_count::lock(v11);
          if (v12)
          {
            v13 = v12;
            v14 = *(v4 + 3);
            if (v14)
            {
              v15 = **(v4 + 1);
              std::recursive_mutex::lock((v14 + 40));
              v16 = *v14;
              v17 = *(v14 + 8);
              v18 = *v14 + 24 * v17;
              v19 = *v14;
              if (v17)
              {
                v20 = 24 * v17;
                v19 = *v14;
                while (*v19 != v15)
                {
                  v19 += 3;
                  v20 -= 24;
                  if (!v20)
                  {
                    v19 = (*v14 + 24 * v17);
                    break;
                  }
                }
              }

              if (v19 + 3 != v18)
              {
                v21 = v19 + 4;
                do
                {
                  v23 = *(v21 - 1);
                  *(v21 - 1) = 0;
                  v24 = *(v21 - 4);
                  *(v21 - 4) = v23;
                  if (v24)
                  {
                    llvm::deallocate_buffer(*v24, (16 * *(v24 + 16)));
                  }

                  v25 = *v21;
                  *v21 = 0;
                  v21[1] = 0;
                  v26 = *(v21 - 2);
                  *(v21 - 3) = v25;
                  if (v26)
                  {
                    std::__shared_weak_count::__release_weak(v26);
                  }

                  v22 = v21 + 2;
                  v21 += 3;
                }

                while (v22 != v18);
                LODWORD(v17) = *(v14 + 8);
                v16 = *v14;
              }

              v27 = v17 - 1;
              *(v14 + 8) = v27;
              std::recursive_mutex::unlock((v14 + 40));
            }

            if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v13->__on_zero_shared)(v13);
              std::__shared_weak_count::__release_weak(v13);
            }
          }
        }

        do
        {
          v4 += 10;
        }

        while (v4 != v8 && (*v4 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v4 != v9);
      v6 = v33;
      v1 = a1;
      v2 = *a1;
      if ((*a1 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_47:
      v10 = 4;
      goto LABEL_48;
    }

LABEL_13:
    v9 = (a1 + 42);
    if (v4 == a1 + 42)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_14:
  if (v2)
  {
    goto LABEL_47;
  }

LABEL_15:
  v10 = *(v1 + 4);
  if (!v10)
  {
    goto LABEL_57;
  }

  v6 = *v6;
LABEL_48:
  v28 = (v6 + 2);
  v29 = 40 * v10;
  do
  {
    if ((*(v28 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v30 = v28[2];
      if (v30)
      {
        std::__shared_weak_count::__release_weak(v30);
      }

      v31 = *v28;
      if (*v28 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v31->__on_zero_shared)(v31);
        std::__shared_weak_count::__release_weak(v31);
      }
    }

    v28 += 5;
    v29 -= 40;
  }

  while (v29);
  v2 = *v1;
LABEL_57:
  if ((v2 & 1) == 0)
  {
    llvm::deallocate_buffer(v1[1], (40 * *(v1 + 4)));
  }

  return v1;
}

uint64_t *mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Owner::~Owner(uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = a1[1];
      if (v4)
      {
        *v4 = 0;
        atomic_store(0, (v4 + 8));
      }

      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = v3;
        (v3->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    v6 = a1[2];
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    llvm::deallocate_buffer(*v7, (16 * *(v7 + 16)));
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer>>,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer>>::LookupBucketFor<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *>(uint64_t result, uint64_t a2, void *a3)
{
  v3 = result + 8;
  if (*result)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(result + 16);
    if (!v4)
    {
      *a3 = 0;
      return result;
    }

    v3 = *(result + 8);
  }

  v5 = v4 - 1;
  v6 = ((a2 >> 4) ^ (a2 >> 9)) & (v4 - 1);
  v7 = (v3 + 40 * v6);
  v8 = *v7;
  if (*v7 == a2)
  {
LABEL_6:
    *a3 = v7;
  }

  else
  {
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
      v6 = v12 & v5;
      v7 = (v3 + 40 * (v12 & v5));
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_6;
      }
    }

    if (v9)
    {
      v7 = v9;
    }

    *a3 = v7;
  }

  return result;
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer>>,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer>>::grow(uint64_t a1, unsigned int a2)
{
  v21[15] = *MEMORY[0x277D85DE8];
  v2 = (a2 - 1) | ((a2 - 1) >> 1);
  v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
  v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
  if ((v4 + 1) > 0x40)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 64;
  }

  if (a2 >= 5)
  {
    v6 = v5;
  }

  else
  {
    v6 = a2;
  }

  if ((*a1 & 1) == 0)
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (v6 > 4)
    {
      v15 = a1;
      buffer = llvm::allocate_buffer(8 * (v6 + 4 * v6), 8uLL);
      a1 = v15;
      *(v15 + 8) = buffer;
      *(v15 + 16) = v6;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::deallocate_buffer(v7, (40 * v8));
  }

  v9 = &v18;
  if ((*(a1 + 8) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v10 = *(a1 + 48);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = *(a1 + 8);
    v17 = *(a1 + 32);
    v19 = *(a1 + 16);
    v20 = v17;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v9 = v21;
    v10 = *(a1 + 48);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_12:
      v11 = *(a1 + 88);
      if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_13;
      }

      goto LABEL_23;
    }
  }

  *v9 = v10;
  *(v9 + 1) = *(a1 + 56);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(v9 + 3) = *(a1 + 72);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v9 += 5;
  v11 = *(a1 + 88);
  if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_13:
    v12 = *(a1 + 128);
    if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_14;
    }

LABEL_24:
    *v9 = v12;
    *(v9 + 1) = *(a1 + 136);
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(v9 + 3) = *(a1 + 152);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    v9 += 5;
    if (v6 < 5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_23:
  *v9 = v11;
  *(v9 + 1) = *(a1 + 96);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(v9 + 3) = *(a1 + 112);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v9 += 5;
  v12 = *(a1 + 128);
  if ((v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    goto LABEL_24;
  }

LABEL_14:
  if (v6 >= 5)
  {
LABEL_15:
    *a1 &= ~1u;
    v13 = a1;
    v14 = llvm::allocate_buffer(8 * (v6 + 4 * v6), 8uLL);
    a1 = v13;
    *(v13 + 8) = v14;
    *(v13 + 16) = v6;
  }

LABEL_16:
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer>>,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer>>::moveFromOldBuckets(int *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *a1;
  *a1 = *a1 & 1;
  v7 = a1 + 2;
  if (v6)
  {
    v10 = (a1 + 42);
    v9 = (a1 + 2);
    v11 = 120;
  }

  else
  {
    v8 = a1[4];
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = *(a1 + 1);
    v10 = &v9[40 * v8];
    v11 = v10 - v9 - 40;
    if (v11 < 0x28)
    {
      v13 = *(a1 + 1);
      do
      {
LABEL_10:
        *v13 = -4096;
        v13 += 40;
      }

      while (v13 != v10);
      goto LABEL_11;
    }
  }

  v12 = v11 / 0x28 + 1;
  v13 = &v9[40 * (v12 & 0xFFFFFFFFFFFFFFELL)];
  v14 = v12 & 0xFFFFFFFFFFFFFFELL;
  do
  {
    *v9 = -4096;
    *(v9 + 5) = -4096;
    v9 += 80;
    v14 -= 2;
  }

  while (v14);
  if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
  {
    goto LABEL_10;
  }

LABEL_11:
  if (a2 != a3)
  {
    do
    {
      v15 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*a1)
        {
          v17 = 3;
          v16 = v7;
        }

        else
        {
          v16 = *(a1 + 1);
          v17 = a1[4] - 1;
        }

        v18 = v17 & ((v15 >> 4) ^ (v15 >> 9));
        v19 = &v16[10 * v18];
        v20 = *v19;
        if (*v19 != v15)
        {
          v23 = 0;
          v24 = 1;
          while (v20 != -4096)
          {
            if (v23)
            {
              v25 = 0;
            }

            else
            {
              v25 = v20 == -8192;
            }

            if (v25)
            {
              v23 = v19;
            }

            v26 = v18 + v24++;
            v18 = v26 & v17;
            v19 = &v16[10 * (v26 & v17)];
            v20 = *v19;
            if (*v19 == v15)
            {
              goto LABEL_19;
            }
          }

          if (v23)
          {
            v19 = v23;
          }
        }

LABEL_19:
        *v19 = v15;
        *(v19 + 1) = *(v4 + 1);
        v4[1] = 0;
        v4[2] = 0;
        *(v19 + 3) = *(v4 + 3);
        v4[3] = 0;
        v4[4] = 0;
        *a1 += 2;
        v21 = v4[4];
        if (v21)
        {
          std::__shared_weak_count::__release_weak(v21);
        }

        v22 = v4[2];
        if (v22)
        {
          if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v22->__on_zero_shared)(v22);
            std::__shared_weak_count::__release_weak(v22);
          }
        }
      }

      v4 += 5;
    }

    while (v4 != a3);
  }
}

void std::__shared_ptr_emplace<std::pair<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo> *,std::atomic<BOOL>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28689D768;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<anonymous namespace::ParametricStorageUniquer::HashedStorage,llvm::detail::DenseSetEmpty,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo,llvm::detail::DenseSetPair<anonymous namespace::ParametricStorageUniquer::HashedStorage>>,anonymous namespace::ParametricStorageUniquer::HashedStorage,llvm::detail::DenseSetEmpty,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo,llvm::detail::DenseSetPair<anonymous namespace::ParametricStorageUniquer::HashedStorage>>::LookupBucketFor<anonymous namespace::ParametricStorageUniquer::LookupKey>(uint64_t result, int a2, uint64_t a3, uint64_t *a4)
{
  if (a2)
  {
    v4 = 0;
    v5 = a2 - 1;
    v6 = 1;
    v7 = *a3 & (a2 - 1);
    v8 = result + 16 * v7;
    v9 = *(v8 + 8);
    if ((v9 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }

    while (v9 != -4096)
    {
      while (1)
      {
        if (v4)
        {
          v10 = 0;
        }

        else
        {
          v10 = v9 == -8192;
        }

        if (v10)
        {
          v4 = v8;
        }

        v11 = v7 + v6++;
        v7 = v11 & v5;
        v8 = result + 16 * (v11 & v5);
        v9 = *(v8 + 8);
        if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          break;
        }

LABEL_10:
        v12 = result;
        v13 = a4;
        v14 = a3;
        result = (*(a3 + 8))(*(a3 + 16));
        if (result)
        {
          a4 = v13;
          goto LABEL_17;
        }

        v9 = *(v8 + 8);
        a4 = v13;
        a3 = v14;
        result = v12;
        if (v9 == -4096)
        {
          goto LABEL_12;
        }
      }
    }

LABEL_12:
    if (v4)
    {
      v8 = v4;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_17:
  *a4 = v8;
  return result;
}

_OWORD *llvm::DenseMapBase<llvm::DenseMap<anonymous namespace::ParametricStorageUniquer::HashedStorage,llvm::detail::DenseSetEmpty,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo,llvm::detail::DenseSetPair<anonymous namespace::ParametricStorageUniquer::HashedStorage>>,anonymous namespace::ParametricStorageUniquer::HashedStorage,llvm::detail::DenseSetEmpty,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo,llvm::detail::DenseSetPair<anonymous namespace::ParametricStorageUniquer::HashedStorage>>::grow(uint64_t a1, int a2)
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
      v12 = (v11 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_10;
      }

      v13 = v12 + 1;
      v10 = &result[v13 & 0x1FFFFFFFFFFFFFFCLL];
      v14 = result + 2;
      v15 = v13 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        *(v14 - 2) = xmmword_25736EEE0;
        *(v14 - 1) = xmmword_25736EEE0;
        *v14 = xmmword_25736EEE0;
        v14[1] = xmmword_25736EEE0;
        v14 += 4;
        v15 -= 4;
      }

      while (v15);
      if (v13 != (v13 & 0x1FFFFFFFFFFFFFFCLL))
      {
LABEL_10:
        v16 = &result[v11];
        do
        {
          *v10++ = xmmword_25736EEE0;
        }

        while (v10 != v16);
      }
    }

    if (v3)
    {
      v17 = v4;
      do
      {
        v25 = *(v17 + 1);
        if ((v25 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = *(a1 + 16) - 1;
          v27 = v26 & *v17;
          v24 = *a1 + 16 * v27;
          v28 = *(v24 + 8);
          if (v28 != v25)
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
                v29 = v24;
              }

              v32 = v27 + v30++;
              v27 = v32 & v26;
              v24 = *a1 + 16 * (v32 & v26);
              v28 = *(v24 + 8);
              if (v28 == v25)
              {
                goto LABEL_24;
              }
            }

            if (v29)
            {
              v24 = v29;
            }
          }

LABEL_24:
          *v24 = *v17;
          ++*(a1 + 8);
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
    v19 = (v18 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v19 < 3)
    {
      goto LABEL_19;
    }

    v20 = v19 + 1;
    v10 = &result[v20 & 0x1FFFFFFFFFFFFFFCLL];
    v21 = result + 2;
    v22 = v20 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      *(v21 - 2) = xmmword_25736EEE0;
      *(v21 - 1) = xmmword_25736EEE0;
      *v21 = xmmword_25736EEE0;
      v21[1] = xmmword_25736EEE0;
      v21 += 4;
      v22 -= 4;
    }

    while (v22);
    if (v20 != (v20 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_19:
      v23 = &result[v18];
      do
      {
        *v10++ = xmmword_25736EEE0;
      }

      while (v10 != v23);
    }
  }

  return result;
}

uint64_t mlir::detail::StorageUniquerImpl::getThreadSafeAllocator(mlir::detail::StorageUniquerImpl *this)
{
  if ((*(this + 256) & 1) == 0)
  {
    return this + 112;
  }

  result = *mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::get(this);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::get(uint64_t *a1)
{
  {
    mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::get();
  }

  v2 = mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::getStaticCache(void)::cache();
  v3 = *a1;
  v16 = *a1;
  v4 = v2 + 8;
  if (*v2)
  {
    v5 = 4;
  }

  else
  {
    v5 = *(v2 + 16);
    if (!v5)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v4 = *(v2 + 8);
  }

  v6 = v5 - 1;
  v7 = v6 & ((v3 >> 4) ^ (v3 >> 9));
  v8 = v4 + 40 * v7;
  v9 = *v8;
  if (v3 != *v8)
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
      v8 = v4 + 40 * v7;
      v9 = *v8;
      if (v3 == *v8)
      {
        goto LABEL_8;
      }
    }

    if (v12)
    {
      v11 = v12;
    }

    else
    {
      v11 = v8;
    }

LABEL_13:
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>::InsertIntoBucket<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *>(v2, v11, &v16);
  }

LABEL_8:
  result = **(v8 + 8);
  if (!result)
  {
    std::recursive_mutex::lock((*a1 + 40));
    if (*(*a1 + 8) < *(*a1 + 12))
    {
      operator new();
    }

    llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Owner,false>::growAndEmplaceBack<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer &>();
  }

  return result;
}

int *mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::CacheType::~CacheType(uint64_t a1)
{
  v2 = *a1;
  if (*a1 <= 1u)
  {
    if (v2)
    {
      v3 = a1 + 8;
      v4 = a1 + 168;
      v5 = 4;
    }

    else
    {
      v3 = *(a1 + 8);
      v5 = *(a1 + 16);
      v4 = v3 + 40 * v5;
    }

    v7 = v3 + 40 * v5;
    if (!v2)
    {
      goto LABEL_16;
    }

LABEL_12:
    v8 = a1 + 168;
    if (v4 == a1 + 168)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  if (v2)
  {
    v4 = a1 + 8;
    v7 = a1 + 168;
LABEL_8:
    while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v4 += 40;
      if (v4 == v7)
      {
        v4 = v7;
        break;
      }
    }

    if (*a1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = v4 + 40 * v6;
    if (v6)
    {
      goto LABEL_8;
    }
  }

LABEL_16:
  v8 = *(a1 + 8) + 40 * *(a1 + 16);
  if (v4 == v8)
  {
    goto LABEL_28;
  }

  do
  {
LABEL_19:
    v9 = *(v4 + 32);
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = v10;
        v12 = *(v4 + 24);
        if (v12)
        {
          mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState::remove(v12, **(v4 + 8));
        }

        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }

    do
    {
      v4 += 40;
    }

    while (v4 != v7 && (*v4 | 0x1000) == 0xFFFFFFFFFFFFF000);
  }

  while (v4 != v8);
LABEL_28:

  return llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::~SmallDenseMap(a1);
}

void mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState::remove(uint64_t a1, uint64_t a2)
{
  std::recursive_mutex::lock((a1 + 40));
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a1 + 24 * v5;
  if (v5)
  {
    v7 = 24 * v5;
    while (*v4 != a2)
    {
      v4 += 3;
      v7 -= 24;
      if (!v7)
      {
        v4 = v6;
        break;
      }
    }
  }

  if (v4 + 3 != v6)
  {
    v8 = v4 + 4;
    do
    {
      v10 = *(v8 - 1);
      *(v8 - 1) = 0;
      v11 = *(v8 - 4);
      *(v8 - 4) = v10;
      if (v11)
      {
        MEMORY[0x259C63180](v11, 0x20C4093837F09);
      }

      v12 = *v8;
      *v8 = 0;
      v8[1] = 0;
      v13 = *(v8 - 2);
      *(v8 - 3) = v12;
      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      v9 = v8 + 2;
      v8 += 3;
    }

    while (v9 != v6);
  }

  llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Owner,false>::pop_back(a1);

  std::recursive_mutex::unlock((a1 + 40));
}

uint64_t llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Owner,false>::pop_back(uint64_t a1)
{
  v1 = *(a1 + 8) - 1;
  *(a1 + 8) = v1;
  v2 = (*a1 + 24 * v1);
  v3 = v2[2];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v2[1];
      if (v5)
      {
        *v5 = 0;
        atomic_store(0, (v5 + 8));
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v4;
        (v4->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    v7 = v2[2];
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  result = *v2;
  *v2 = 0;
  if (result)
  {

    JUMPOUT(0x259C63180);
  }

  return result;
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>::InsertIntoBucket<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *>(_DWORD *a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v9 = a2;
  v4 = *a1;
  v5 = *a1 >> 1;
  if (*a1)
  {
    v6 = 4;
  }

  else
  {
    v6 = a1[4];
  }

  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - a1[1] > v6 >> 3)
  {
    goto LABEL_6;
  }

  v7 = a1;
  v8 = a3;
  llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::LookupBucketFor<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *>(v7, v8, &v9);
  a1 = v7;
  a3 = v8;
  v4 = *v7;
  v3 = v9;
LABEL_6:
  *a1 = v4 + 2;
  if (*v3 != -4096)
  {
    --a1[1];
  }

  *v3 = *a3;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  operator new();
}

void std::__shared_ptr_emplace<std::pair<mlir::StorageUniquer::StorageAllocator **,std::atomic<BOOL>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28689D7B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28689D808;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState>>::__on_zero_shared(uint64_t a1)
{
  std::recursive_mutex::~recursive_mutex((a1 + 64));
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[24 * v3 - 24];
    do
    {
      v4 += 24;
    }

    while (v4);
    v2 = *(a1 + 24);
  }

  if (v2 != (a1 + 40))
  {

    free(v2);
  }
}

uint64_t OUTLINED_FUNCTION_0_20(uint64_t result, double a2)
{
  *result = a2;
  *(result + 8) = -4096;
  *(result + 48) = -4096;
  *(result + 88) = -4096;
  *(result + 128) = -4096;
  return result;
}

void mlir::TimingManager::~TimingManager(mlir::TimingManager *this)
{
  v1 = *(this + 1);
  *this = &unk_28689D858;
  *(this + 1) = 0;
  if (v1)
  {
    v2 = *(v1 + 152);
    if (v2)
    {
      if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v2->__on_zero_shared)(v2);
        std::__shared_weak_count::__release_weak(v2);
      }
    }

    llvm::sys::RWMutexImpl::~RWMutexImpl((v1 + 128));
    free(*(v1 + 96));
    v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v1);
    MEMORY[0x259C63180](v3, 0x10B0C40B1EEE74BLL);
  }
}

mlir::TimingManager *mlir::TimingManager::getRootTimer(mlir::TimingManager *this)
{
  (*(*this + 16))(this);
  if (v2)
  {
    return this;
  }

  else
  {
    return 0;
  }
}

mlir::TimingManager *mlir::TimingManager::getRootScope@<X0>(mlir::TimingManager *this@<X0>, mlir::TimingManager **a2@<X8>)
{
  v5 = (*(*this + 16))(this);
  if (v4)
  {
    result = this;
  }

  else
  {
    result = 0;
  }

  if (v4)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  *a2 = result;
  a2[1] = v7;
  if (result)
  {
    v8 = *(*result + 24);

    return v8();
  }

  return result;
}

uint64_t mlir::TimingIdentifier::get(unsigned int *a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::get((v5 + 144));
  v8 = llvm::StringMapImpl::hash(a1, a2, v7);
  v9 = llvm::StringMap<long long,llvm::MallocAllocator>::try_emplace_with_hash<>(v6, a1, a2, v8);
  v10 = *v9;
  if (*(*v9 + 8))
  {
    return *(*v9 + 8);
  }

  llvm::sys::RWMutexImpl::lock_shared((v5 + 128));
  v13 = llvm::StringMapImpl::hash(a1, a2, v12);
  Key = llvm::StringMapImpl::FindKey((v5 + 96), a1, a2, v13);
  if (Key == -1 || Key == *(v5 + 104))
  {
    llvm::sys::RWMutexImpl::unlock_shared((v5 + 128));
    llvm::sys::RWMutexImpl::lock((v5 + 128));
    v16 = llvm::StringMapImpl::hash(a1, a2, v15);
    v17 = llvm::StringMap<std::nullopt_t,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul> &>::try_emplace_with_hash<>(v5 + 96, a1, a2, v16);
    v18 = *v17;
    *(v10 + 8) = *v17;
    llvm::sys::RWMutexImpl::unlock((v5 + 128));
    return v18;
  }

  else
  {
    v19 = *(*(v5 + 96) + 8 * Key);
    *(v10 + 8) = v19;
    llvm::sys::RWMutexImpl::unlock_shared((v5 + 128));
    return v19;
  }
}

void mlir::DefaultTimingManager::~DefaultTimingManager(mlir::DefaultTimingManager *this)
{
  *this = &unk_28689D8A0;
  mlir::DefaultTimingManager::print(this);
}

{
  *this = &unk_28689D8A0;
  mlir::DefaultTimingManager::print(this);
}

{
  *this = &unk_28689D8A0;
  mlir::DefaultTimingManager::print(this);
}

void mlir::DefaultTimingManager::print(mlir::DefaultTimingManager *this)
{
  v2 = *(this + 2);
  if (*v2 == 1)
  {
    v3 = *(v2 + 8);
  }

  operator new();
}

uint64_t mlir::DefaultTimingManager::setOutput(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 24);
  *(a1 + 24) = v3;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t anonymous namespace::TimerImpl::print(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v21 = vdivq_f64(vcvtq_f64_s64(*(a1 + 8)), vdupq_n_s64(0x41CDCD6500000000uLL));
  (*(***(a1 + 192) + 16))(**(a1 + 192), &v21);
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
    v25 = v21;
    v22 = 0;
    v23 = 0;
    v24 = 0x1800000000;
    *&v27.f64[0] = &unk_28689D910;
    *&v27.f64[1] = &v22;
    v28 = &v27;
    v29 = &v27;
    v26 = a1;
    v5 = v22;
    if (v23)
    {
      if (!*v22 || *v22 == -8)
      {
        do
        {
          v8 = *(v5 + 1);
          v5 += 8;
          v7 = v8;
          if (v8)
          {
            v9 = v7 == -8;
          }

          else
          {
            v9 = 1;
          }
        }

        while (v9);
      }
    }

    v10 = v22 + 8 * v23;
    if (v5 != v10)
    {
      operator new();
    }

    if (v29 == &v27)
    {
      (*(*&v29->f64[0] + 32))(v29);
      if (!HIDWORD(v23))
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v29)
      {
        (*(*&v29->f64[0] + 40))();
      }

      if (!HIDWORD(v23))
      {
LABEL_33:
        free(v22);
        v27 = v21;
        v11 = *(a1 + 96);
        v12.f64[0] = v21.f64[0];
        if (!v11)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }
    }

    if (v23)
    {
      v13 = 0;
      do
      {
        v14 = *(v22 + v13);
        if (v14 != -8 && v14 != 0)
        {
          llvm::deallocate_buffer(v14, (*v14 + 25));
        }

        v13 += 8;
      }

      while (8 * v23 != v13);
    }

    goto LABEL_33;
  }

  v27 = v21;
  v11 = *(a1 + 96);
  v12.f64[0] = v21.f64[0];
  if (!v11)
  {
    goto LABEL_37;
  }

LABEL_34:
  v12.f64[1] = v27.f64[1];
  v16 = (*(a1 + 88) + 8);
  v17 = 16 * v11;
  v18 = vdupq_n_s64(0xC1CDCD6500000000);
  do
  {
    v19 = *v16;
    v16 += 2;
    v12 = vaddq_f64(v12, vdivq_f64(vcvtq_f64_s64(*(v19 + 8)), v18));
    v17 -= 16;
  }

  while (v17);
  v27.f64[1] = v12.f64[1];
LABEL_37:
  v27.f64[0] = v12.f64[0];
  (*(***(a1 + 192) + 40))(**(a1 + 192), "Rest", 4, &v27, &v21, 0);
  (*(***(a1 + 192) + 40))(**(a1 + 192), "Total", 5, &v21, &v21, 1);
  return (*(***(a1 + 192) + 24))(**(a1 + 192));
}

uint64_t *std::unique_ptr<anonymous namespace::TimerImpl>::operator=[abi:nn200100](uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *result;
  *result = v2;
  if (v3)
  {
    std::mutex::~mutex((v3 + 128));
    v4 = *(v3 + 120);
    v5 = *(v3 + 104);
    if (v4)
    {
      v6 = v5 + 32;
      v7 = 48 * v4;
      do
      {
        if (*(v6 - 32) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          llvm::deallocate_buffer(*(v6 - 24), (16 * *(v6 - 8)));
        }

        v6 += 48;
        v7 -= 48;
      }

      while (v7);
      v5 = *(v3 + 104);
      v8 = 48 * *(v3 + 120);
    }

    else
    {
      v8 = 0;
    }

    llvm::deallocate_buffer(v5, v8);
  }

  return result;
}

void anonymous namespace::TimerImpl::dump(_anonymous_namespace_::TimerImpl *this, llvm::raw_ostream *a2, int a3, int a4)
{
  v34 = *(this + 8);
  v8 = (2 * a3);
  if (v8 >= 0x17)
  {
    operator new();
  }

  v40 = 2 * a3;
  if (v8)
  {
    memset(__b, 32, v8);
  }

  v33 = vdupq_n_s64(0x41CDCD6500000000uLL);
  v35 = vcvtq_f64_s64(v34);
  *(__b + v8) = 0;
  if ((v40 & 0x80u) == 0)
  {
    v9 = __b;
  }

  else
  {
    v9 = __b[0];
  }

  if ((v40 & 0x80u) == 0)
  {
    v10 = v40;
  }

  else
  {
    v10 = __b[1];
  }

  v11 = llvm::raw_ostream::write(a2, v9, v10);
  v12 = *(this + 55);
  if (v12 >= 0)
  {
    v13 = this + 32;
  }

  else
  {
    v13 = *(this + 4);
  }

  if (v12 >= 0)
  {
    v14 = *(this + 55);
  }

  else
  {
    v14 = *(this + 5);
  }

  v15 = llvm::raw_ostream::write(v11, v13, v14);
  v16 = *(v15 + 4);
  if (*(v15 + 3) - v16 > 1uLL)
  {
    *v16 = 23328;
    *(v15 + 4) += 2;
  }

  else
  {
    v15 = llvm::raw_ostream::write(v15, " [", 2uLL);
  }

  v36 = vdivq_f64(v35, v33);
  v17 = llvm::raw_ostream::operator<<(v15, *(this + 3));
  v18 = v17[4];
  if (v17[3] == v18)
  {
    v17 = llvm::raw_ostream::write(v17, "]", 1uLL);
  }

  else
  {
    *v18 = 93;
    ++v17[4];
  }

  v37[0] = &unk_28689D9A0;
  v37[1] = "  %7.4f / %7.4f";
  v38 = vextq_s8(v36, v36, 8uLL);
  llvm::raw_ostream::operator<<(v17, v37);
  if (v40 < 0)
  {
    operator delete(__b[0]);
  }

  if (!a4 || *(this + 3) == a4)
  {
LABEL_30:
    v20 = *(a2 + 4);
    if (*(a2 + 3) != v20)
    {
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  v19 = *(a2 + 4);
  if (*(a2 + 3) - v19 <= 3uLL)
  {
    llvm::raw_ostream::write(a2, " (*)", 4uLL);
    goto LABEL_30;
  }

  *v19 = 690628640;
  *(a2 + 4) += 4;
  v20 = *(a2 + 4);
  if (*(a2 + 3) != v20)
  {
LABEL_31:
    *v20 = 10;
    ++*(a2 + 4);
    v21 = *(this + 24);
    if (!v21)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

LABEL_34:
  llvm::raw_ostream::write(a2, "\n", 1uLL);
  v21 = *(this + 24);
  if (!v21)
  {
    goto LABEL_37;
  }

LABEL_35:
  v22 = (*(this + 11) + 8);
  v23 = 16 * v21;
  do
  {
    v24 = *v22;
    v22 += 2;
    v23 -= 16;
  }

  while (v23);
LABEL_37:
  if (*(this + 28))
  {
    v25 = *(this + 30);
    if (v25)
    {
      v26 = 48 * v25;
      for (i = *(this + 13); *i >= 0xFFFFFFFFFFFFFFFELL; i += 48)
      {
        v26 -= 48;
        if (!v26)
        {
          return;
        }
      }
    }

    else
    {
      i = *(this + 13);
    }

    v28 = *(this + 13) + 48 * v25;
    while (i != v28)
    {
      v29 = *(i + 40);
      if (v29)
      {
        v30 = (*(i + 32) + 8);
        v31 = 16 * v29;
        do
        {
          v32 = *v30;
          v30 += 2;
          v31 -= 16;
        }

        while (v31);
      }

      do
      {
        i += 48;
      }

      while (i != v28 && *i >= 0xFFFFFFFFFFFFFFFELL);
    }
  }
}

uint64_t mlir::DefaultTimingManager::dumpAsList(mlir::DefaultTimingManager *this, llvm::raw_ostream *a2)
{
  v3 = *(*(this + 2) + 8);
  v4 = *(*(this + 2) + 8);
}

uint64_t mlir::DefaultTimingManager::dumpAsTree(mlir::DefaultTimingManager *this, llvm::raw_ostream *a2)
{
  v3 = *(*(this + 2) + 8);
  v4 = *(*(this + 2) + 8);
}

uint64_t mlir::DefaultTimingManager::rootTimer(mlir::DefaultTimingManager *this)
{
  v1 = *(this + 2);
  if (*v1 == 1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep mlir::DefaultTimingManager::startTimer(mlir::DefaultTimingManager *this, std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep *a2)
{
  result = std::chrono::steady_clock::now().__d_.__rep_;
  *a2 = result;
  return result;
}

int64x2_t mlir::DefaultTimingManager::stopTimer(mlir::DefaultTimingManager *this, char *a2)
{
  result = vaddq_s64(*(a2 + 8), vdupq_n_s64(std::chrono::steady_clock::now().__d_.__rep_ - *a2));
  *(a2 + 8) = result;
  return result;
}

uint64_t mlir::DefaultTimingManager::nestTimer(llvm *a1, uint64_t a2, unint64_t a3, void (*a4)(void **__return_ptr, uint64_t), uint64_t a5)
{
  v25 = a3;
  threadid = llvm::get_threadid(a1);
  if (threadid != *(a2 + 24))
  {
    v11 = threadid;
    std::mutex::lock((a2 + 128));
    v12 = *(a2 + 104);
    v13 = *(a2 + 120);
    if (v13)
    {
      v14 = v13 - 1;
      v15 = (v13 - 1) & (((0xBF58476D1CE4E5B9 * v11) >> 31) ^ (484763065 * v11));
      v16 = (v12 + 48 * v15);
      v17 = *v16;
      if (*v16 == v11)
      {
LABEL_22:
        std::mutex::unlock((a2 + 128));
        return v24;
      }

      v18 = 0;
      v19 = 1;
      while (v17 != -1)
      {
        if (v18)
        {
          v20 = 0;
        }

        else
        {
          v20 = v17 == -2;
        }

        if (v20)
        {
          v18 = v16;
        }

        v21 = v15 + v19++;
        v15 = v21 & v14;
        v16 = (v12 + 48 * (v21 & v14));
        v17 = *v16;
        if (*v16 == v11)
        {
          goto LABEL_22;
        }
      }

      if (v18)
      {
        v16 = v18;
      }
    }

    else
    {
      v16 = 0;
    }

    v26 = v16;
    v22 = *(a2 + 112);
    if (4 * v22 + 4 >= 3 * v13)
    {
      v13 *= 2;
    }

    else if (v13 + ~v22 - *(a2 + 116) > v13 >> 3)
    {
      *(a2 + 112) = v22 + 1;
      if (*v16 == -1)
      {
LABEL_21:
        *v16 = v11;
        v16[1] = 0;
        v16[2] = 0;
        v16[3] = 0;
        v16[4] = (v16 + 6);
        v16[5] = 0;
        goto LABEL_22;
      }

LABEL_20:
      --*(a2 + 116);
      goto LABEL_21;
    }

    v16 = v26;
    ++*(a2 + 112);
    if (*v16 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }
}

void mlir::registerDefaultTimingManagerCLOptions(mlir *this)
{
  if (!atomic_load_explicit(options, memory_order_acquire))
  {
  }
}

_BYTE **mlir::applyDefaultTimingManagerCLOptions(_BYTE **this, mlir::DefaultTimingManager *a2)
{
  if (!atomic_load(options))
  {
    return this;
  }

  v3 = this;
  if (atomic_load_explicit(options, memory_order_acquire))
  {
    *this[2] = *(options[0] + 128);
    if (atomic_load_explicit(options, memory_order_acquire))
    {
      goto LABEL_4;
    }
  }

  else
  {
    *v3[2] = *(options[0] + 128);
    if (atomic_load_explicit(options, memory_order_acquire))
    {
LABEL_4:
      *(v3[2] + 1) = *(options[0] + 320);
      if (atomic_load_explicit(options, memory_order_acquire))
      {
        goto LABEL_5;
      }

LABEL_11:
      if (*(options[0] + 920))
      {
        goto LABEL_6;
      }

LABEL_12:
      llvm::errs(this);
      operator new();
    }
  }

  *(v3[2] + 1) = *(options[0] + 320);
  if (!atomic_load_explicit(options, memory_order_acquire))
  {
    goto LABEL_11;
  }

LABEL_5:
  if (!*(options[0] + 920))
  {
    goto LABEL_12;
  }

LABEL_6:
  if (atomic_load_explicit(options, memory_order_acquire))
  {
    if (*(options[0] + 920) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (*(options[0] + 920) == 1)
    {
LABEL_8:
      llvm::errs(this);
      operator new();
    }
  }

  this = 0;
  v5 = v3[3];
  v3[3] = 0;
  if (v5)
  {
    v4 = *(*v5 + 8);

    return v4(v5);
  }

  return this;
}

uint64_t anonymous namespace::TimerImpl::addAsyncUserTime(_anonymous_namespace_::TimerImpl *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    v3 = 0;
    v4 = (*(this + 11) + 8);
    v5 = 16 * v2;
    do
    {
      v6 = *v4;
      v4 += 2;
      v5 -= 16;
    }

    while (v5);
    if (!*(this + 28))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if (!*(this + 28))
    {
      goto LABEL_11;
    }
  }

  v7 = *(this + 30);
  if (v7)
  {
    v8 = 48 * v7;
    v9 = *(this + 13);
    while (*v9 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v9 += 48;
      v8 -= 48;
      if (!v8)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v9 = *(this + 13);
  }

  v11 = *(this + 13) + 48 * v7;
  while (v9 != v11)
  {
    v12 = *(v9 + 40);
    if (v12)
    {
      v13 = (*(v9 + 32) + 8);
      v14 = 16 * v12;
      do
      {
        v15 = *v13;
        v13 += 2;
        v3 += *(v15 + 2);
        v14 -= 16;
      }

      while (v14);
    }

    do
    {
      v9 += 48;
    }

    while (v9 != v11 && *v9 >= 0xFFFFFFFFFFFFFFFELL);
  }

LABEL_11:
  *(this + 2) += v3;
  return v3;
}

uint64_t anonymous namespace::TimerImpl::mergeAsyncChildren(_anonymous_namespace_::TimerImpl *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    v3 = (*(this + 11) + 8);
    v4 = 16 * v2;
    do
    {
      v5 = *v3;
      v3 += 2;
      v4 -= 16;
    }

    while (v4);
  }
}

uint64_t anonymous namespace::TimerImpl::mergeChildren(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = result;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = 48 * v5;
    v7 = *a2;
    while (*v7 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v7 = (v7 + 48);
      v6 -= 48;
      if (!v6)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = *a2;
  }

  v8 = *a2 + 48 * v5;
  if (v7 != v8)
  {
    do
    {
      do
      {
        v7 = (v7 + 48);
      }

      while (v7 != v8 && *v7 >= 0xFFFFFFFFFFFFFFFELL);
    }

    while (v7 != v8);
    v3 = *(a2 + 8);
    if (!*(a2 + 8))
    {
      return result;
    }
  }

  else
  {
LABEL_9:
    if (!*(a2 + 8))
    {
      return result;
    }
  }

  v9 = *(a2 + 16);
  v10 = *a2;
  if (v9 <= 4 * v3 || v9 < 0x41)
  {
    if (v9)
    {
      v14 = (v10 + 48 * v9);
      do
      {
        if (*v10 == -2)
        {
          *v10 = -1;
        }

        else if (*v10 != -1)
        {
          v15 = *(v10 + 4);
          v16 = *(v10 + 10);
          if (v16)
          {
            v17 = 16 * v16;
            v18 = &v15[v17 - 8];
            v19 = -v17;
            do
            {
              v19 += 16;
            }

            while (v19);
            v15 = *(v10 + 4);
          }

          if (v15 != v10 + 48)
          {
            free(v15);
          }

          llvm::deallocate_buffer(*(v10 + 1), (16 * *(v10 + 6)));
        }

        v10 = (v10 + 48);
      }

      while (v10 != v14);
    }

    *(a2 + 8) = 0;
  }

  else
  {
    v11 = 48 * v9;
    v12 = v10 + 32;
    v13 = 48 * v9;
    do
    {
      if (*(v12 - 32) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        llvm::deallocate_buffer(*(v12 - 24), (16 * *(v12 - 8)));
      }

      v12 += 48;
      v13 -= 48;
    }

    while (v13);
    v20 = 1 << (33 - __clz(v3 - 1));
    if (v20 <= 64)
    {
      v20 = 64;
    }

    if (v3)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v21 != *(a2 + 16))
    {
      llvm::deallocate_buffer(*a2, v11);
    }

    *(a2 + 8) = 0;
    if (v21)
    {
      v22 = *a2;
      v23 = 48 * v21 - 48;
      if (v23 < 0x30)
      {
        v24 = *a2;
LABEL_50:
        v28 = (v22 + 48 * v21);
        do
        {
          *v24 = -1;
          v24 = (v24 + 48);
        }

        while (v24 != v28);
        return result;
      }

      v25 = v23 / 0x30 + 1;
      v24 = (v22 + 48 * (v25 & 0xFFFFFFFFFFFFFFELL));
      v26 = *a2;
      v27 = v25 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *v26 = -1;
        *(v26 + 6) = -1;
        v26 = (v26 + 96);
        v27 -= 2;
      }

      while (v27);
      if (v25 != (v25 & 0xFFFFFFFFFFFFFFELL))
      {
        goto LABEL_50;
      }
    }
  }

  return result;
}

{
  v3 = result + 64;
  if (!*(result + 96))
  {
    llvm::deallocate_buffer(*(result + 64), (16 * *(result + 80)));
  }

  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 24);
    v6 = v5 + 16 * v4;
    do
    {
      v7 = (v5 + 8);
      v31 = *v5;
      v9 = *v8;
      if (*v8)
      {
        v10 = *v7;
        v11 = *(*v7 + 8);
        v12 = *(v9 + 16);
        if (*(v9 + 8) > v11)
        {
          v11 = *(v9 + 8);
        }

        *(v9 + 8) = v11;
        *(v9 + 16) = v12 + *(v10 + 16);
        v13 = *v7;
        *v7 = 0;
        if (v13)
        {
          std::mutex::~mutex((v13 + 128));
          v14 = *(v13 + 120);
          v15 = *(v13 + 104);
          if (v14)
          {
            v16 = v15 + 32;
            v17 = 48 * v14;
            do
            {
              if (*(v16 - 32) <= 0xFFFFFFFFFFFFFFFDLL)
              {
                llvm::deallocate_buffer(*(v16 - 24), (16 * *(v16 - 8)));
              }

              v16 += 48;
              v17 -= 48;
            }

            while (v17);
            v15 = *(v13 + 104);
            v18 = 48 * *(v13 + 120);
          }

          else
          {
            v18 = 0;
          }

          llvm::deallocate_buffer(v15, v18);
        }
      }

      else
      {
      }

      v5 += 16;
    }

    while (v5 != v6);
  }

  if (!*(a2 + 8))
  {
LABEL_22:
    v20 = *(a2 + 32);
    if (!v20)
    {
      goto LABEL_38;
    }

    goto LABEL_23;
  }

  v19 = *(a2 + 16);
  if (v19 > 4 * *(a2 + 8) && v19 >= 0x41)
  {
    result = llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::shrink_and_clear(a2);
    goto LABEL_22;
  }

  if (v19)
  {
    v23 = *a2;
    v24 = (v19 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v24)
    {
      v25 = v24 + 1;
      v26 = (v24 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v27 = &v23[2 * v26];
      v28 = v23 + 2;
      v29 = v26;
      do
      {
        *(v28 - 2) = -4096;
        *v28 = -4096;
        v28 += 4;
        v29 -= 2;
      }

      while (v29);
      if (v25 == v26)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v27 = *a2;
    }

    v30 = &v23[2 * v19];
    do
    {
      *v27 = -4096;
      v27 += 2;
    }

    while (v27 != v30);
  }

LABEL_37:
  *(a2 + 8) = 0;
  v20 = *(a2 + 32);
  if (!v20)
  {
    goto LABEL_38;
  }

LABEL_23:
  v21 = *(a2 + 24) - 8;
  v22 = 16 * v20;
  do
  {
    result = *(v21 + v22);
    *(v21 + v22) = 0;
    if (result)
    {
    }

    v22 -= 16;
  }

  while (v22);
LABEL_38:
  *(a2 + 32) = 0;
  return result;
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,false>::destroy_range(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v2 -= 16;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>::~pair(uint64_t a1)
{
  return a1;
}

{
  return a1;
}

uint64_t llvm::MapVector<void const*,std::unique_ptr<anonymous namespace::TimerImpl>,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>>::operator[](uint64_t a1, unint64_t *a2)
{
  v16 = *a2;
  v17 = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>,mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::try_emplace<unsigned int>(a1, &v16, &v17, &v14);
  v4 = v14;
  if (v15)
  {
    v5 = *(a1 + 24);
    v6 = *a2;
    v12 = 0;
    v13 = v6;
    v7 = *(a1 + 32);
    if (v7 >= *(a1 + 36))
    {
      if (v5 > &v13 || v5 + 16 * v7 <= &v13)
      {
      }
    }

    v8 = *(a1 + 32);
    v9 = v13;
    *(&v13 + 1) = 0;
    *(v5 + 16 * v8) = v9;
    *(a1 + 32) = v8 + 1;
    v10 = *(a1 + 32) - 1;
    *(v4 + 8) = v10;
  }

  else
  {
    v10 = *(v14 + 8);
  }

  return *(a1 + 24) + 16 * v10 + 8;
}

std::mutex **std::unique_ptr<anonymous namespace::TimerImpl>::reset[abi:nn200100](std::mutex **result, std::mutex *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::mutex::~mutex(v2 + 2);
  }

  return result;
}

void anonymous namespace::TimerImpl::~TimerImpl(_anonymous_namespace_::TimerImpl *this)
{
  std::mutex::~mutex(this + 2);
  llvm::deallocate_buffer(*(this + 13), (48 * *(this + 30)));
}

uint64_t sub_2571431E4()
{
  if (*(v0 + 55) < 0)
  {
    operator delete(*(v0 + 32));
  }

  return v0;
}

void llvm::DenseMap<unsigned long long,llvm::MapVector<void const*,std::unique_ptr<anonymous namespace::TimerImpl>,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::MapVector<void const*,std::unique_ptr<anonymous namespace::TimerImpl>,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>>>>::~DenseMap(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  if (v2)
  {
    v4 = v3 + 8;
    v5 = 48 * v2;
    while (*(v4 - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      v4 += 48;
      v5 -= 48;
      if (!v5)
      {
        llvm::deallocate_buffer(*a1, (48 * *(a1 + 16)));
      }
    }
  }

  llvm::deallocate_buffer(v3, 0);
}

void llvm::MapVector<void const*,std::unique_ptr<anonymous namespace::TimerImpl>,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>>::~MapVector(uint64_t a1)
{
  llvm::deallocate_buffer(*a1, (16 * *(a1 + 16)));
}

{
  llvm::deallocate_buffer(*a1, (16 * *(a1 + 16)));
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::MapVector<void const*,std::unique_ptr<anonymous namespace::TimerImpl>,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::MapVector<void const*,std::unique_ptr<anonymous namespace::TimerImpl>,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>>>>,unsigned long long,llvm::MapVector<void const*,std::unique_ptr<anonymous namespace::TimerImpl>,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::MapVector<void const*,std::unique_ptr<anonymous namespace::TimerImpl>,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>>>>::destroyAll(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 48 * v1;
    result = *result + 8;
    do
    {
      if (*(result - 8) <= 0xFFFFFFFFFFFFFFFDLL)
      {
      }

      result += 48;
      v2 -= 48;
    }

    while (v2);
  }

  return result;
}

uint64_t llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>::~SmallVector(uint64_t a1)
{
  if (*a1 != a1 + 16)
  {
    free(*a1);
  }

  return a1;
}

{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = -v4;
    v6 = v2 + v4 - 16;
    do
    {
      v5 += 16;
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

uint64_t anonymous namespace::TimerImpl::printAsTree(uint64_t this, TimeRecord *a2, unsigned int a3, double a4, double a5)
{
  v6 = this;
  *v17 = a4;
  *&v17[1] = a5;
  v7 = a2;
  if ((*(this + 56) & 1) == 0)
  {
    v8 = **(this + 192);
    v9 = *(v6 + 55);
    if (v9 >= 0)
    {
      v10 = v6 + 32;
    }

    else
    {
      v10 = *(v6 + 32);
    }

    if (v9 >= 0)
    {
      v11 = *(v6 + 55);
    }

    else
    {
      v11 = *(v6 + 40);
    }

    v16 = vdivq_f64(vcvtq_f64_s64(*(v6 + 8)), vdupq_n_s64(0x41CDCD6500000000uLL));
    this = (*(*v8 + 48))(v8, a2, v10, v11, &v16, v17);
    v7 = (a2 + 2);
  }

  v12 = *(v6 + 96);
  if (v12)
  {
    v13 = (*(v6 + 88) + 8);
    v14 = 16 * v12;
    do
    {
      v15 = *v13;
      v13 += 2;
      v14 -= 16;
    }

    while (v14);
  }

  if ((*(v6 + 56) & 1) == 0)
  {
    return (*(***(v6 + 192) + 56))(**(v6 + 192), a2, 0);
  }

  return this;
}

__n128 std::__function::__func<anonymous namespace::TimerImpl::printAsList(mlir::TimeRecord)::{lambda(anonymous namespace::TimerImpl*)#1},std::allocator<anonymous namespace::TimerImpl::printAsList(mlir::TimeRecord)::{lambda(anonymous namespace::TimerImpl*)#1}>,void ()(anonymous namespace::TimerImpl*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689D910;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t *std::__function::__func<anonymous namespace::TimerImpl::printAsList(mlir::TimeRecord)::{lambda(anonymous namespace::TimerImpl*)#1},std::allocator<anonymous namespace::TimerImpl::printAsList(mlir::TimeRecord)::{lambda(anonymous namespace::TimerImpl*)#1}>,void ()(anonymous namespace::TimerImpl*)>::operator()(uint64_t a1, uint64_t a2, const unsigned __int8 *a3)
{
  v4 = *(a1 + 8);
  v5 = *a2 + 32;
  v6 = *(*a2 + 55);
  if (v6 >= 0)
  {
    v7 = (*a2 + 32);
  }

  else
  {
    v7 = *(*a2 + 32);
  }

  if (v6 >= 0)
  {
    v8 = *(*a2 + 55);
  }

  else
  {
    v8 = *(*a2 + 40);
  }

  v16 = vdivq_f64(vcvtq_f64_s64(*(*a2 + 8)), vdupq_n_s64(0x41CDCD6500000000uLL));
  v9 = llvm::StringMapImpl::hash(v7, v8, a3);
  result = llvm::StringMap<mlir::TimeRecord,llvm::MallocAllocator>::try_emplace_with_hash<>(v4, v7, v8, v9);
  *(*result + 8) = vaddq_f64(v16, *(*result + 8));
  v11 = *(v5 + 64);
  if (v11)
  {
    v12 = 16 * v11;
    for (i = (*(v5 + 56) + 8); ; i += 2)
    {
      v14 = *(*(a1 + 16) + 24);
      v17 = *i;
      if (!v14)
      {
        break;
      }

      result = (*(*v14 + 48))(v14, &v17);
      v12 -= 16;
      if (!v12)
      {
        return result;
      }
    }

    v15 = std::__throw_bad_function_call[abi:nn200100]();
  }

  return result;
}

uint64_t std::__function::__func<anonymous namespace::TimerImpl::printAsList(mlir::TimeRecord)::{lambda(anonymous namespace::TimerImpl*)#1},std::allocator<anonymous namespace::TimerImpl::printAsList(mlir::TimeRecord)::{lambda(anonymous namespace::TimerImpl*)#1}>,void ()(anonymous namespace::TimerImpl*)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN12_GLOBAL__N_19TimerImpl11printAsListEN4mlir10TimeRecordEEUlPS0_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN12_GLOBAL__N_19TimerImpl11printAsListEN4mlir10TimeRecordEEUlPS0_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN12_GLOBAL__N_19TimerImpl11printAsListEN4mlir10TimeRecordEEUlPS0_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN12_GLOBAL__N_19TimerImpl11printAsListEN4mlir10TimeRecordEEUlPS0_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t *llvm::StringMap<mlir::TimeRecord,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 25, 8uLL);
    v11 = buffer + 3;
    if (a3)
    {
LABEL_4:
      memcpy(v11, a2, a3);
    }
  }

  else
  {
    if (v9)
    {
      while (!v9 || v9 == -8)
      {
        v16 = v8[1];
        ++v8;
        v9 = v16;
      }

      return v8;
    }

    buffer = llvm::allocate_buffer(a3 + 25, 8uLL);
    v11 = buffer + 3;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  buffer[1] = 0;
  buffer[2] = 0;
  *buffer = a3;
  *v8 = buffer;
  ++*(a1 + 3);
  v8 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v7));
  if (*v8)
  {
    v12 = *v8 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v8[1];
      ++v8;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  return v8;
}

uint64_t anonymous namespace::TimerImpl::printAsList(mlir::TimeRecord)::{lambda(std::pair<llvm::StringRef,mlir::TimeRecord> const*,std::pair<llvm::StringRef,mlir::TimeRecord> const*)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v3 < v2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v2 < v3;
  }
}

uint64_t anonymous namespace::TimerImpl::nestTail(uint64_t a1, uint64_t *a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4)
{
  result = *a2;
  if (!*a2)
  {
    a3(__p, a4);
    operator new();
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::MapVector<void const*,std::unique_ptr<anonymous namespace::TimerImpl>,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::MapVector<void const*,std::unique_ptr<anonymous namespace::TimerImpl>,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>>>>,unsigned long long,llvm::MapVector<void const*,std::unique_ptr<anonymous namespace::TimerImpl>,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::MapVector<void const*,std::unique_ptr<anonymous namespace::TimerImpl>,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>>>>::LookupBucketFor<unsigned long long>(uint64_t result, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (a2 - 1) & (((0xBF58476D1CE4E5B9 * a3) >> 31) ^ (484763065 * a3));
    v6 = (result + 48 * v5);
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
      while (v7 != -1)
      {
        if (v8)
        {
          v10 = 0;
        }

        else
        {
          v10 = v7 == -2;
        }

        if (v10)
        {
          v8 = v6;
        }

        v11 = v5 + v9++;
        v5 = v11 & v4;
        v6 = (result + 48 * (v11 & v4));
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

void *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::MapVector<void const*,std::unique_ptr<anonymous namespace::TimerImpl>,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::MapVector<void const*,std::unique_ptr<anonymous namespace::TimerImpl>,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>>>>,unsigned long long,llvm::MapVector<void const*,std::unique_ptr<anonymous namespace::TimerImpl>,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::MapVector<void const*,std::unique_ptr<anonymous namespace::TimerImpl>,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(48 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 48 * v10 - 48;
    if (v11 >= 0x30)
    {
      v16 = v11 / 0x30 + 1;
      v12 = &result[6 * (v16 & 0xFFFFFFFFFFFFFFELL)];
      v17 = result;
      v18 = v16 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *v17 = -1;
        v17[6] = -1;
        v17 += 12;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_16:
        if (v3)
        {
          v20 = v4;
          do
          {
            v21 = *v20;
            if (*v20 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v22 = *(a1 + 16) - 1;
              v23 = v22 & (((0xBF58476D1CE4E5B9 * v21) >> 31) ^ (484763065 * v21));
              v24 = *a1 + 48 * v23;
              v25 = *v24;
              if (*v24 != v21)
              {
                v33 = 0;
                v34 = 1;
                while (v25 != -1)
                {
                  if (v33)
                  {
                    v35 = 0;
                  }

                  else
                  {
                    v35 = v25 == -2;
                  }

                  if (v35)
                  {
                    v33 = v24;
                  }

                  v36 = v23 + v34++;
                  v23 = v36 & v22;
                  v24 = *a1 + 48 * v23;
                  v25 = *v24;
                  if (*v24 == v21)
                  {
                    goto LABEL_22;
                  }
                }

                if (v33)
                {
                  v24 = v33;
                }
              }

LABEL_22:
              *(v24 + 8) = 0;
              *(v24 + 16) = 0;
              *v24 = v21;
              *(v24 + 24) = 0;
              *(v24 + 8) = *(v20 + 1);
              *(v20 + 1) = 0;
              *(v24 + 16) = *(v20 + 4);
              *(v20 + 4) = 0;
              v26 = *(v24 + 20);
              *(v24 + 20) = *(v20 + 5);
              *(v20 + 5) = v26;
              v27 = *(v24 + 24);
              *(v24 + 24) = *(v20 + 6);
              *(v24 + 32) = v24 + 48;
              *(v20 + 6) = v27;
              *(v24 + 40) = 0;
              v28 = *(v20 + 10);
              v29 = *(v20 + 4);
              if (v24 == v20 || !v28)
              {
                ++*(a1 + 8);
                if (v28)
                {
                  v31 = &v29[16 * v28 - 8];
                  v32 = -16 * v28;
                  do
                  {
                    v32 += 16;
                  }

                  while (v32);
                  v29 = *(v20 + 4);
                }
              }

              else
              {
                if (v29 == v20 + 48)
                {
                }

                *(v24 + 32) = v29;
                v30 = *(v20 + 11);
                *(v24 + 40) = v28;
                *(v24 + 44) = v30;
                *(v20 + 4) = v20 + 48;
                *(v20 + 11) = 0;
                v29 = v20 + 48;
                *(v20 + 10) = 0;
                ++*(a1 + 8);
              }

              if (v29 != v20 + 48)
              {
                free(v29);
              }

              llvm::deallocate_buffer(*(v20 + 1), (16 * *(v20 + 6)));
            }

            v20 = (v20 + 48);
          }

          while (v20 != (v4 + 48 * v3));
        }

        llvm::deallocate_buffer(v4, (48 * v3));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = &result[6 * v10];
    do
    {
      *v12 = -1;
      v12 += 6;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 48 * v13 - 48;
    if (v14 < 0x30)
    {
      v15 = result;
LABEL_51:
      v40 = &result[6 * v13];
      do
      {
        *v15 = -1;
        v15 += 6;
      }

      while (v15 != v40);
      return result;
    }

    v37 = v14 / 0x30 + 1;
    v15 = &result[6 * (v37 & 0xFFFFFFFFFFFFFFELL)];
    v38 = result;
    v39 = v37 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v38 = -1;
      v38[6] = -1;
      v38 += 12;
      v39 -= 2;
    }

    while (v39);
    if (v37 != (v37 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_51;
    }
  }

  return result;
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::PerInstanceState>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28689D9D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::PerInstanceState>>::__on_zero_shared(uint64_t a1)
{
  std::recursive_mutex::~recursive_mutex((a1 + 64));
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[24 * v3 - 24];
    do
    {
      v5 = mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::Owner::~Owner(v5) - 3;
      v4 += 24;
    }

    while (v4);
    v2 = *(a1 + 24);
  }

  if (v2 != (a1 + 40))
  {

    free(v2);
  }
}

uint64_t *mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::Owner::~Owner(uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = a1[1];
      if (v4)
      {
        *v4 = 0;
        atomic_store(0, (v4 + 8));
      }

      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = v3;
        (v3->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    v6 = a1[2];
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    if (*(v7 + 12))
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *(*v7 + v9);
          if (v10 != -8 && v10 != 0)
          {
            llvm::deallocate_buffer(v10, (*v10 + 17));
          }

          v9 += 8;
        }

        while (8 * v8 != v9);
      }
    }

    free(*v7);
    MEMORY[0x259C63180](v7, 0x1080C40468F112ELL);
  }

  return a1;
}

uint64_t mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::get(uint64_t *a1)
{
  {
    mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::get();
  }

  v2 = mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::getStaticCache(void)::cache();
  v3 = *a1;
  v16 = *a1;
  v4 = v2 + 8;
  if (*v2)
  {
    v5 = 4;
  }

  else
  {
    v5 = *(v2 + 16);
    if (!v5)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v4 = *(v2 + 8);
  }

  v6 = v5 - 1;
  v7 = v6 & ((v3 >> 4) ^ (v3 >> 9));
  v8 = v4 + 40 * v7;
  v9 = *v8;
  if (v3 != *v8)
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
      v8 = v4 + 40 * v7;
      v9 = *v8;
      if (v3 == *v8)
      {
        goto LABEL_8;
      }
    }

    if (v12)
    {
      v11 = v12;
    }

    else
    {
      v11 = v8;
    }

LABEL_13:
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::Observer>>,mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::Observer>>::InsertIntoBucket<mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::PerInstanceState *>(v2, v11, &v16);
  }

LABEL_8:
  result = **(v8 + 8);
  if (!result)
  {
    std::recursive_mutex::lock((*a1 + 40));
    if (*(*a1 + 8) < *(*a1 + 12))
    {
      operator new();
    }

    llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::Owner,false>::growAndEmplaceBack<mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::Observer &>();
  }

  return result;
}

int *mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::CacheType::~CacheType(uint64_t a1)
{
  v1 = *a1;
  if (*a1 <= 1u)
  {
    if (v1)
    {
      v2 = a1 + 8;
      v3 = a1 + 168;
      v4 = 4;
    }

    else
    {
      v2 = *(a1 + 8);
      v4 = *(a1 + 16);
      v3 = v2 + 40 * v4;
    }

    v6 = v2 + 40 * v4;
    if (!v1)
    {
      goto LABEL_16;
    }

LABEL_12:
    v7 = a1 + 168;
    if (v3 == a1 + 168)
    {
      goto LABEL_50;
    }

    goto LABEL_17;
  }

  if (v1)
  {
    v3 = a1 + 8;
    v6 = a1 + 168;
LABEL_8:
    while ((*v3 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v3 += 40;
      if (v3 == v6)
      {
        v3 = v6;
        break;
      }
    }

    if (*a1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = v3 + 40 * v5;
    if (v5)
    {
      goto LABEL_8;
    }
  }

LABEL_16:
  v7 = *(a1 + 8) + 40 * *(a1 + 16);
  if (v3 == v7)
  {
    goto LABEL_50;
  }

LABEL_17:
  v30 = v7;
  do
  {
    v8 = *(v3 + 32);
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = v9;
        v11 = *(v3 + 24);
        if (v11)
        {
          v12 = **(v3 + 8);
          std::recursive_mutex::lock((v11 + 40));
          v13 = *v11;
          v14 = *(v11 + 8);
          v15 = *v11 + 24 * v14;
          v16 = *v11;
          if (v14)
          {
            v17 = 24 * v14;
            v16 = *v11;
            while (*v16 != v12)
            {
              v16 += 24;
              v17 -= 24;
              if (!v17)
              {
                v16 = *v11 + 24 * v14;
                break;
              }
            }
          }

          v18 = v16 + 24;
          if (v16 + 24 != v15)
          {
            do
            {
              v19 = *v18;
              *v18 = 0;
              v20 = *v16;
              *v16 = v19;
              if (v20)
              {
                if (*(v20 + 12))
                {
                  v21 = *(v20 + 8);
                  if (v21)
                  {
                    v22 = 0;
                    do
                    {
                      v23 = *(*v20 + v22);
                      if (v23 != -8 && v23 != 0)
                      {
                        llvm::deallocate_buffer(v23, (*v23 + 17));
                      }

                      v22 += 8;
                    }

                    while (8 * v21 != v22);
                  }
                }

                free(*v20);
                MEMORY[0x259C63180](v20, 0x1080C40468F112ELL);
              }

              v25 = *(v18 + 8);
              *(v18 + 8) = 0;
              *(v18 + 16) = 0;
              v26 = *(v16 + 16);
              *(v16 + 8) = v25;
              if (v26)
              {
                std::__shared_weak_count::__release_weak(v26);
              }

              v18 += 24;
              v16 += 24;
            }

            while (v18 != v15);
            LODWORD(v14) = *(v11 + 8);
            v13 = *v11;
          }

          v27 = v14 - 1;
          *(v11 + 8) = v27;
          mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::Owner::~Owner((v13 + 24 * v27));
          std::recursive_mutex::unlock((v11 + 40));
          v7 = v30;
        }

        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }
    }

    do
    {
      v3 += 40;
    }

    while (v3 != v6 && (*v3 | 0x1000) == 0xFFFFFFFFFFFFF000);
  }

  while (v3 != v7);
LABEL_50:

  return llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::~SmallDenseMap(a1);
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::Observer>>,mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::Observer>>::InsertIntoBucket<mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::PerInstanceState *>(_DWORD *a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v9 = a2;
  v4 = *a1;
  v5 = *a1 >> 1;
  if (*a1)
  {
    v6 = 4;
  }

  else
  {
    v6 = a1[4];
  }

  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - a1[1] > v6 >> 3)
  {
    goto LABEL_6;
  }

  v7 = a1;
  v8 = a3;
  llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::LookupBucketFor<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *>(v7, v8, &v9);
  a1 = v7;
  a3 = v8;
  v4 = *v7;
  v3 = v9;
LABEL_6:
  *a1 = v4 + 2;
  if (*v3 != -4096)
  {
    --a1[1];
  }

  *v3 = *a3;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  operator new();
}

void std::__shared_ptr_emplace<std::pair<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator> *,std::atomic<BOOL>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28689DA28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

uint64_t *llvm::StringMap<std::nullopt_t,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul> &>::try_emplace_with_hash<>(uint64_t a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 16);
  }

  else if (v9)
  {
    while (!v9 || v9 == -8)
    {
      v10 = v8[1];
      ++v8;
      v9 = v10;
    }

    return v8;
  }

  v11 = *(a1 + 24);
  v11[10] += a3 + 9;
  Slow = ((*v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = Slow + a3 + 9;
  if (*v11)
  {
    v14 = v13 > v11[1];
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    *v11 = v13;
    v15 = Slow + 1;
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v11, a3 + 9, a3 + 9, 3);
  v15 = Slow + 1;
  if (a3)
  {
LABEL_14:
    memcpy(v15, a2, a3);
  }

LABEL_15:
  *(v15 + a3) = 0;
  *Slow = a3;
  *v8 = Slow;
  ++*(a1 + 12);
  v8 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v7));
  if (*v8)
  {
    v16 = *v8 == -8;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    do
    {
      v18 = v8[1];
      ++v8;
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

  return v8;
}

_anonymous_namespace_::TimerImpl **std::unique_ptr<anonymous namespace::TimerImpl>::~unique_ptr[abi:nn200100](_anonymous_namespace_::TimerImpl **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
  }

  return a1;
}

void anonymous namespace::OutputTextStrategy::printHeader(_anonymous_namespace_::OutputTextStrategy *this, const TimeRecord *a2)
{
  v2 = *(this + 1);
  v3 = *(v2 + 32);
  if ((*(v2 + 24) - v3) > 2)
  {
    *(v3 + 2) = 61;
    *v3 = 15677;
    *(v2 + 32) += 3;
  }

  else
  {
    llvm::raw_ostream::write(*(this + 1), "===", 3uLL);
  }

  operator new();
}

llvm::raw_ostream *anonymous namespace::OutputTextStrategy::printFooter(_anonymous_namespace_::OutputTextStrategy *this)
{
  result = *(this + 1);
  if (*(result + 4) != *(result + 2))
  {
    return llvm::raw_ostream::flush_nonempty(result);
  }

  return result;
}

void *anonymous namespace::OutputTextStrategy::printTime(_anonymous_namespace_::OutputTextStrategy *this, const TimeRecord *a2, const TimeRecord *a3)
{
  v5 = *&a3->value;
  v6 = *&a3->scale;
  if (v6 != *&a3->value)
  {
    v8 = *(this + 1);
    v9 = *&a2->scale;
    v14 = &unk_28689D9A0;
    v15 = "  %8.4f (%5.1f%%)";
    v16 = v9;
    v17 = v9 * 100.0 / v6;
    llvm::raw_ostream::operator<<(v8, &v14);
    v5 = *&a3->value;
  }

  v10 = *(this + 1);
  value = a2->value;
  v12 = *&a2->value * 100.0;
  v14 = &unk_28689D9A0;
  v15 = "  %8.4f (%5.1f%%)  ";
  v16 = *&value;
  v17 = v12 / v5;
  return llvm::raw_ostream::operator<<(v10, &v14);
}

void *anonymous namespace::OutputTextStrategy::printListEntry(void *a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5)
{
  (*(*a1 + 32))(a1, a4, a5);
  result = a1[1];
  v9 = result[4];
  if (a3 <= result[3] - v9)
  {
    if (a3)
    {
      v10 = a1[1];
      memcpy(result[4], a2, a3);
      result = v10;
      v9 = (v10[4] + a3);
      v10[4] = v9;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(result, a2, a3);
    v9 = result[4];
  }

  if (result[3] == v9)
  {

    return llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  else
  {
    *v9 = 10;
    ++result[4];
  }

  return result;
}

void *anonymous namespace::OutputTextStrategy::printTreeEntry(void **a1, unsigned int a2, const void *a3, size_t a4, uint64_t a5, uint64_t a6)
{
  ((*a1)[4])(a1, a5, a6);
  result = llvm::raw_ostream::indent(a1[1], a2);
  v11 = result[4];
  if (a4 <= result[3] - v11)
  {
    if (a4)
    {
      v12 = result;
      memcpy(result[4], a3, a4);
      result = v12;
      v11 = (v12[4] + a4);
      v12[4] = v11;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(result, a3, a4);
    v11 = result[4];
  }

  if (result[3] == v11)
  {

    return llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  else
  {
    *v11 = 10;
    ++result[4];
  }

  return result;
}

void *llvm::object_deleter<anonymous namespace::DefaultTimingManagerOptions>::call(void *result)
{
  if (result)
  {
    v1 = result;
    result[99] = &unk_28689DD58;
    v2 = result + 170;
    v3 = result[173];
    if (v3 == v2)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v1[118] = &unk_28689DE90;
    v4 = v1[120];
    if (v4 != v1 + 122)
    {
      free(v4);
    }

    v1[99] = &unk_28689F010;
    v5 = v1[111];
    if (v5 != v1[110])
    {
      free(v5);
    }

    v6 = v1[107];
    if (v6 != v1 + 109)
    {
      free(v6);
    }

    v1[24] = &unk_28689DB28;
    v7 = v1[98];
    if (v7 == v1 + 95)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v1[43] = &unk_28689DC60;
    v8 = v1[45];
    if (v8 != v1 + 47)
    {
      free(v8);
    }

    v1[24] = &unk_28689F010;
    v9 = v1[36];
    if (v9 != v1[35])
    {
      free(v9);
    }

    v10 = v1[32];
    if (v10 != v1 + 34)
    {
      free(v10);
    }

    *v1 = &unk_28689F938;
    v11 = v1[23];
    if (v11 == v1 + 20)
    {
      (*(*v11 + 32))(v11);
      *v1 = &unk_28689F010;
      v12 = v1[12];
      if (v12 != v1[11])
      {
LABEL_27:
        free(v12);
      }
    }

    else
    {
      if (v11)
      {
        (*(*v11 + 40))(v11);
      }

      *v1 = &unk_28689F010;
      v12 = v1[12];
      if (v12 != v1[11])
      {
        goto LABEL_27;
      }
    }

    v13 = v1[8];
    if (v13 != v1 + 10)
    {
      free(v13);
    }

    JUMPOUT(0x259C63180);
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::DefaultTimingManager::DisplayMode,false,llvm::cl::parser<mlir::DefaultTimingManager::DisplayMode>>::opt<char [20],llvm::cl::desc,llvm::cl::initializer<mlir::DefaultTimingManager::DisplayMode>,llvm::cl::ValuesClass>(uint64_t a1, const char *a2, _OWORD *a3, int **a4, uint64_t *a5)
{
  *a1 = &unk_28689F010;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  *(a1 + 64) = a1 + 80;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v11 = *(a1 + 72);
  if (v11 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 64) + 8 * v11) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_28689DBD8;
  *(a1 + 144) = 0;
  *a1 = &unk_28689DB28;
  *(a1 + 152) = &unk_28689DC60;
  *(a1 + 160) = a1;
  *(a1 + 168) = a1 + 184;
  *(a1 + 176) = 0x800000000;
  *(a1 + 568) = &unk_28689DCC8;
  *(a1 + 592) = a1 + 568;
  v12 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v12);
  *(a1 + 32) = *a3;
  v13 = **a4;
  *(a1 + 128) = v13;
  *(a1 + 148) = 1;
  *(a1 + 144) = v13;
  v14 = *(a5 + 2);
  if (v14)
  {
    v15 = *a5;
    v16 = v15 + 40 * v14;
    do
    {
      llvm::cl::parser<mlir::DefaultTimingManager::DisplayMode>::addLiteralOption<int>(a1 + 152, *v15, *(v15 + 8), (v15 + 16), *(v15 + 24), *(v15 + 32));
      v15 += 40;
    }

    while (v15 != v16);
  }

  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::cl::opt<mlir::DefaultTimingManager::DisplayMode,false,llvm::cl::parser<mlir::DefaultTimingManager::DisplayMode>>::handleOccurrence(uint64_t a1, __int16 a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v7 = a1;
  v23 = 0;
  v8 = *(*(a1 + 160) + 24);
  if (v8)
  {
    a3 = a5;
  }

  if (v8)
  {
    a4 = a6;
  }

  v11 = *(a1 + 176);
  if (v11)
  {
    v12 = *(a1 + 168);
    v13 = 0;
    v14 = (v12 + 8);
    if (a4)
    {
      v15 = (v12 + 8);
      while (1)
      {
        v16 = *v15;
        v15 += 6;
        if (v16 == a4)
        {
          a1 = memcmp(*(v14 - 1), a3, a4);
          if (!a1)
          {
            break;
          }
        }

        ++v13;
        v14 = v15;
        if (v11 == v13)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      while (1)
      {
        v17 = *v14;
        v14 += 6;
        if (!v17)
        {
          break;
        }

        if (v11 == ++v13)
        {
          goto LABEL_17;
        }
      }
    }

    v18 = *(v12 + 48 * v13 + 40);
    v23 = v18;
  }

  else
  {
LABEL_17:
    v25 = 1283;
    v24[0] = "Cannot find option named '";
    v24[2] = a3;
    v24[3] = a4;
    v26[0] = v24;
    v26[2] = "'!";
    v27 = 770;
    v19 = llvm::errs(a1);
    if (llvm::cl::Option::error(v7, v26, 0, 0, v19))
    {
      return 1;
    }

    v18 = 0;
  }

  *(v7 + 128) = v18;
  *(v7 + 12) = a2;
  v21 = *(v7 + 592);
  if (v21)
  {
    (*(*v21 + 48))(v21, &v23);
    return 0;
  }

  else
  {
    v22 = std::__throw_bad_function_call[abi:nn200100]();
    return llvm::cl::opt<mlir::DefaultTimingManager::DisplayMode,false,llvm::cl::parser<mlir::DefaultTimingManager::DisplayMode>>::getValueExpectedFlagDefault(v22);
  }
}