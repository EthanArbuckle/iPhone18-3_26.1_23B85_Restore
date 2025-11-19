void *sub_10011E4A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = *(a3 + 16);
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    v8 = a2[5];
    v9 = a2[6];
    if ((*(a3 + 16) & 1) == 0)
    {
      v5 = a2[1];
      v6 = a2[2];
    }

    v10 = a4;
    v11 = a2[4];
    goto LABEL_7;
  }

  if (*(a3 + 16))
  {
    v9 = a2[2];
    v10 = a4;
    v11 = 0;
    v8 = 0;
LABEL_7:
    v13 = mlir::MemRefType::get(v5, v6, v10, v11, v8, v9);
    return sub_10011E578(&v13);
  }

  v13 = mlir::UnrankedMemRefType::get(a4, a2[2]);
  return sub_10011E578(&v13);
}

uint64_t sub_10011E570(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  v3 = *(a2 + 16);
  return result;
}

void *sub_10011E578(void **a1)
{
  result = *a1;
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v13 = v2;
      v14 = result;
      sub_10027F2B8();
      result = v14;
      v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v4 = *(v13 + 8);
      v5 = *(v13 + 16);
      if (!v5)
      {
        return result;
      }
    }

    v6 = v4;
    v7 = v5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[2 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 2;
      v7 += ~(v7 >> 1);
      if (v11 < v3)
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
    if (v6 != &v4[2 * v5] && *v6 == v3)
    {
      v12 = v6[1];
    }
  }

  return result;
}

BOOL sub_10011E674(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002C0D08, memory_order_acquire))
  {
    return qword_1002C0D00 == a1;
  }

  sub_10027F308();
  return qword_1002C0D00 == a1;
}

uint64_t sub_10011E6D4()
{
  if ((atomic_load_explicit(&qword_1002C0D20, memory_order_acquire) & 1) == 0)
  {
    sub_10027F35C();
  }

  return qword_1002C0D10;
}

const char *sub_10011E71C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ShapedType::Trait<Empty>]";
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

uint64_t sub_10011E79C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[6];
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v10, v6);
  mlir::AttrTypeImmediateSubElementWalker::walk(v10, v7);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v10, v8);
}

uint64_t sub_10011E7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a3;
  *(&v8 + 1) = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return sub_10011E828(a2, &v8, &v7);
}

uint64_t sub_10011E828(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a1 + 8);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  v16 = a1;
  v11 = *a2;
  v12 = v3;
  v10 = *a3;
  v17[0] = &v11;
  v17[1] = &v10;
  sub_10011E9A8(v17, &v12, &v13, &v14, &v15, &v23);
  mlir::Type::getContext(&v16);
  v18 = v20;
  v19 = 0x600000000;
  v4 = v24;
  if (!v24)
  {
    v4 = 0;
    v7 = v20;
    goto LABEL_9;
  }

  if (v24 < 7)
  {
    v6 = v20;
    v5 = v24;
    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v18, v20, v24, 8);
  v5 = v24;
  if (v24)
  {
    v6 = v18;
LABEL_7:
    memcpy(v6, v23, 8 * v5);
  }

  LODWORD(v19) = v4;
  v7 = v18;
LABEL_9:
  v21 = v27;
  v20[6] = v26;
  v22 = v28;
  v8 = mlir::MemRefType::get(v7, v4, v26, v27, *(&v27 + 1), v28);
  if (v18 != v20)
  {
    free(v18);
  }

  if (v23 != &v25)
  {
    free(v23);
  }

  return v8;
}

void sub_10011E9A8(int64x2_t **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  sub_1000FF8F8(*a2, *(a2 + 8), &__src);
  v13 = a1[1];
  if (!*a3)
  {
    v15 = 0;
    v16 = sub_10011EB7C(*a4, *(a4 + 8), *a1);
    if (*a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = 0;
    goto LABEL_6;
  }

  v14 = *v13;
  *v13 = vaddq_s64(*v13, xmmword_10028FD30);
  v15 = *v14.i64[0];
  v16 = sub_10011EB7C(*a4, *(a4 + 8), *a1);
  if (!*a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = **a1;
  **a1 = vaddq_s64(v18, xmmword_10028FD30);
  v19 = *v18.i64[0];
LABEL_6:
  *a6 = a6 + 16;
  *(a6 + 8) = 0x600000000;
  v20 = v27;
  v21 = __src;
  if (v27 && &__src != a6)
  {
    if (__src == v29)
    {
      v23 = v17;
      v24 = v16;
      v25 = v27;
      if (v27 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a6, (a6 + 16), v27, 8), v25 = v27, v21 = __src, v27))
      {
        memcpy(*a6, v21, 8 * v25);
        v21 = __src;
      }

      *(a6 + 8) = v20;
      v16 = v24;
      v17 = v23;
    }

    else
    {
      *a6 = __src;
      v22 = v28;
      *(a6 + 8) = v20;
      *(a6 + 12) = v22;
      __src = v29;
      v28 = 0;
      v21 = v29;
    }

    v27 = 0;
  }

  *(a6 + 64) = v15;
  *(a6 + 72) = v16;
  *(a6 + 80) = v17;
  *(a6 + 88) = v19;
  if (v21 != v29)
  {
    free(v21);
  }
}

void *sub_10011EB7C(void *result, uint64_t a2, int64x2_t *a3)
{
  if (result)
  {
    v3 = *a3;
    *a3 = vaddq_s64(*a3, xmmword_10028FD30);
    result = *v3.i64[0];
    if (*v3.i64[0])
    {
      v4 = *result;
      if (atomic_load_explicit(&qword_1002C0530, memory_order_acquire))
      {
        v5 = qword_1002C0528;
        v6 = *(v4 + 8);
        v7 = *(v4 + 16);
        if (!v7)
        {
          return result;
        }
      }

      else
      {
        v15 = v4;
        v16 = result;
        sub_10027F3B0();
        result = v16;
        v5 = qword_1002C0528;
        v6 = *(v15 + 8);
        v7 = *(v15 + 16);
        if (!v7)
        {
          return result;
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
        v14 = v8[1];
      }
    }
  }

  return result;
}

uint64_t sub_10011EC98(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t sub_10011ECD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t sub_10011ED04(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return sub_10011ED38(a2, v5);
}

uint64_t sub_10011ED38(void *a1, uint64_t **a2)
{
  v11 = a1;
  v2 = a1[2];
  v3 = a1[3];
  if (a1[1])
  {
    v4 = **a2;
  }

  else
  {
    v4 = 0;
  }

  mlir::Type::getContext(&v11);
  v12 = v4;
  Context = mlir::Attribute::getContext(&v12);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id;
  v13[1] = &Context;
  v18[0] = sub_100117A24;
  v18[1] = v13;
  v17[0] = v12;
  v17[1] = v2;
  v17[2] = v3;
  v6 = (v12 >> 4) ^ (v12 >> 9);
  v7 = llvm::hash_value(v2, v3);
  v8 = __ROR8__(v7 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ v6)));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id, (-348639895 * ((v9 >> 47) ^ v9)) ^ v7, sub_1001177D0, &v16, sub_100117834, v15);
}

void sub_10011EE8C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10011EFC8(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000DB1E0(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_10011F114;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = sub_10011F26C;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_10011F2B4;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
  *(a2 + 144) = "builtin.tensor";
  *(a2 + 152) = 14;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_10011EFC8(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v3 = v2;
  *v2 = sub_10011F09C;
  v2[1] = sub_10011F0E8;
  v2[2] = sub_10011F0F0;
  v2[3] = sub_10011F10C;
  {
    v5 = v2;
    sub_10027F2B8();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void *sub_10011F09C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v7 = a2;
  v5 = *a3;
  v6 = *(a3 + 2);
  v8 = mlir::TensorType::cloneWith(&v7, &v5, a4);
  return sub_10005CD80(&v8);
}

uint64_t sub_10011F10C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  v3 = *(a2 + 16);
  return result;
}

BOOL sub_10011F118(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002C0D08, memory_order_acquire))
  {
    v1 = qword_1002C0D00;
    if (atomic_load_explicit(&qword_1002C0D30, memory_order_acquire))
    {
      return v1 == a1 || qword_1002C0D28 == a1;
    }
  }

  else
  {
    v5 = a1;
    sub_10027F308();
    a1 = v5;
    v1 = qword_1002C0D00;
    if (atomic_load_explicit(&qword_1002C0D30, memory_order_acquire))
    {
      return v1 == a1 || qword_1002C0D28 == a1;
    }
  }

  v4 = v1;
  v6 = a1;
  sub_10027F400();
  v1 = v4;
  a1 = v6;
  return v1 == a1 || qword_1002C0D28 == a1;
}

uint64_t sub_10011F1A4()
{
  if ((atomic_load_explicit(&qword_1002C0D48, memory_order_acquire) & 1) == 0)
  {
    sub_10027F454();
  }

  return qword_1002C0D38;
}

const char *sub_10011F1EC()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ValueSemantics<Empty>]";
  v6 = 89;
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

uint64_t sub_10011F26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v9, v6);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
}

uint64_t sub_10011F2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a3;
  *(&v8 + 1) = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return sub_10011F2E8(a2, &v8, &v7);
}

uint64_t sub_10011F2E8(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a1 + 24);
  v13 = *(a1 + 8);
  v14 = v3;
  v4 = *a2;
  v11 = *a3;
  v12 = v4;
  v15 = a1;
  v16[0] = &v12;
  v16[1] = &v11;
  sub_10011F440(v16, &v13, &v14, &v14 + 1, &v20);
  mlir::Type::getContext(&v15);
  v17 = v19;
  v18 = 0x600000000;
  v5 = v21;
  if (!v21)
  {
    v5 = 0;
    v8 = v19;
    goto LABEL_9;
  }

  if (v21 < 7)
  {
    v7 = v19;
    v6 = v21;
    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v17, v19, v21, 8);
  v6 = v21;
  if (v21)
  {
    v7 = v17;
LABEL_7:
    memcpy(v7, v20, 8 * v6);
  }

  LODWORD(v18) = v5;
  v8 = v17;
LABEL_9:
  v19[6] = v23;
  v19[7] = v24;
  v9 = mlir::RankedTensorType::get(v8, v5, v23, v24);
  if (v17 != v19)
  {
    free(v17);
  }

  if (v20 != &v22)
  {
    free(v20);
  }

  return v9;
}

void sub_10011F440(int64x2_t **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  sub_1000FF8F8(*a2, *(a2 + 8), &__src);
  if (!*a3)
  {
    v13 = 0;
    if (*a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v11 = a1[1];
  v12 = *v11;
  *v11 = vaddq_s64(*v11, xmmword_10028FD30);
  v13 = *v12.i64[0];
  if (!*a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = **a1;
  **a1 = vaddq_s64(v14, xmmword_10028FD30);
  v15 = *v14.i64[0];
LABEL_6:
  *a5 = a5 + 16;
  *(a5 + 8) = 0x600000000;
  v16 = v21;
  v17 = __src;
  if (v21 && &__src != a5)
  {
    if (__src == v23)
    {
      v19 = v21;
      if (v21 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v21, 8), v19 = v21, v17 = __src, v21))
      {
        memcpy(*a5, v17, 8 * v19);
        v17 = __src;
      }

      *(a5 + 8) = v16;
    }

    else
    {
      *a5 = __src;
      v18 = v22;
      *(a5 + 8) = v16;
      *(a5 + 12) = v18;
      __src = v23;
      v22 = 0;
      v17 = v23;
    }

    v21 = 0;
  }

  *(a5 + 64) = v13;
  *(a5 + 72) = v15;
  if (v17 != v23)
  {
    free(v17);
  }
}

uint64_t sub_10011F5E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = mlir::TypeRange::TypeRange(&v15, a2 + 16, *(a2 + 8));
  v11 = v15;
  v12 = v16;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      v14 = mlir::TypeRange::dereference_iterator(v11, i);
      result = mlir::AttrTypeImmediateSubElementWalker::walk(&v15, v14);
    }
  }

  return result;
}

uint64_t sub_10011F698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return sub_10011F6CC(a2, v8, v7);
}

uint64_t sub_10011F6CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = a1;
  mlir::TypeRange::TypeRange(&v16, a1 + 16, *(a1 + 8));
  if (a3[1] >= v17)
  {
    v4 = v17;
  }

  else
  {
    v4 = a3[1];
  }

  mlir::TypeRange::TypeRange(&v16, *a3, v4);
  v5 = v16;
  v6 = v17;
  Context = mlir::Type::getContext(&v10);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id;
  v11[1] = &Context;
  v16 = sub_100117E84;
  v17 = v11;
  v15[0] = v5;
  v15[1] = v6;
  v8 = sub_1001169D0(v5, 0, v5, v6);
  v13[1] = &v16;
  v14 = v15;
  v13[0] = v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id, v8, sub_100117CEC, &v14, sub_100117DA8, v13);
}

void sub_10011F7FC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10011F938(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000DB1E0(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_10011FAE0;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = sub_10011FB40;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_10011FB88;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id;
  *(a2 + 144) = "builtin.unranked_memref";
  *(a2 + 152) = 23;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_10011F938(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v3 = v2;
  *v2 = sub_10011FA0C;
  v2[1] = sub_10011FAB0;
  v2[2] = sub_10011FAB8;
  v2[3] = sub_10011FAD4;
  {
    v5 = v2;
    sub_10027F2B8();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void *sub_10011FA0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = *(a3 + 16);
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    v8 = a2[5];
    v9 = a2[6];
    if ((*(a3 + 16) & 1) == 0)
    {
      v5 = a2[1];
      v6 = a2[2];
    }

    v10 = a4;
    v11 = a2[4];
    goto LABEL_7;
  }

  if (*(a3 + 16))
  {
    v9 = a2[2];
    v10 = a4;
    v11 = 0;
    v8 = 0;
LABEL_7:
    v13 = mlir::MemRefType::get(v5, v6, v10, v11, v8, v9);
    return sub_10011E578(&v13);
  }

  v13 = mlir::UnrankedMemRefType::get(a4, a2[2]);
  return sub_10011E578(&v13);
}

BOOL sub_10011FAE0(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002C0D08, memory_order_acquire))
  {
    return qword_1002C0D00 == a1;
  }

  sub_10027F308();
  return qword_1002C0D00 == a1;
}

uint64_t sub_10011FB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v9, v6);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
}

uint64_t sub_10011FB88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v9 = a2;
  v5 = *(a2 + 16);
  if (!*(a2 + 8))
  {
    v6 = 0;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = *a5;
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = *a3;
LABEL_6:
  mlir::Type::getContext(&v9);
  return mlir::UnrankedMemRefType::get(v6, v7);
}

void sub_10011FBE8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10011FD24(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000DB1E0(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_10011FE74;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = sub_10011FE78;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_10011FEA8;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  *(a2 + 144) = "builtin.unranked_tensor";
  *(a2 + 152) = 23;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_10011FD24(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v3 = v2;
  *v2 = sub_10011FDF8;
  v2[1] = sub_10011FE44;
  v2[2] = sub_10011FE4C;
  v2[3] = sub_10011FE68;
  {
    v5 = v2;
    sub_10027F2B8();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void *sub_10011FDF8(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v7 = a2;
  v5 = *a3;
  v6 = *(a3 + 2);
  v8 = mlir::TensorType::cloneWith(&v7, &v5, a4);
  return sub_10005CD80(&v8);
}

uint64_t sub_10011FE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t sub_10011FEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return sub_10011FEDC(a2, v8, v7);
}

uint64_t sub_10011FEDC(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v7 = a1;
  if (*(a1 + 8))
  {
    v3 = **a3;
  }

  else
  {
    v3 = 0;
  }

  mlir::Type::getContext(&v7);
  v8 = v3;
  Context = mlir::Type::getContext(&v8);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v9[1] = &Context;
  v14[0] = sub_100118260;
  v14[1] = v9;
  v13 = v8;
  v5 = 0x9DDFEA08EB382D69 * ((8 * ((v8 >> 4) ^ (v8 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v12 = &v13;
  v11[0] = &v13;
  v11[1] = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v5 >> 47) ^ 0xED558CCD))), sub_1001181A0, &v12, sub_1001181B8, v11);
}

void sub_10011FFF8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100120134(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000DB1E0(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_10012032C;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = sub_100120330;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_100120360;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
  *(a2 + 144) = "builtin.vector";
  *(a2 + 152) = 14;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }
}

void sub_100120134(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v3 = v2;
  *v2 = sub_100120208;
  v2[1] = sub_100120314;
  v2[2] = sub_10012031C;
  v2[3] = sub_100120324;
  {
    v5 = v2;
    sub_10027F2B8();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void *sub_100120208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 16))
  {
    v4 = *a3;
    v5 = (a3 + 8);
  }

  else
  {
    v5 = (a2 + 16);
    v4 = *(a2 + 8);
  }

  result = mlir::VectorType::get(v4, *v5, a4, *(a2 + 32), *(a2 + 40));
  if (result)
  {
    v7 = *result;
    {
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      if (!v10)
      {
        return result;
      }
    }

    else
    {
      v18 = v7;
      v19 = result;
      sub_10027F2B8();
      result = v19;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v18 + 8);
      v10 = *(v18 + 16);
      if (!v10)
      {
        return result;
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
    }
  }

  return result;
}

uint64_t sub_100120324(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  v3 = *(a2 + 16);
  return result;
}

uint64_t sub_100120330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 24);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t sub_100120360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a3;
  *(&v8 + 1) = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return sub_100120394(a2, &v8, &v7);
}

uint64_t sub_100120394(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a1 + 8);
  v17 = *(a1 + 24);
  v18 = *(a1 + 32);
  v15 = *a2;
  v16 = v3;
  v14 = *a3;
  v19 = a1;
  v20[0] = &v15;
  v20[1] = &v14;
  sub_100120584(v20, &v16, &v17, &v18, &v28);
  mlir::Type::getContext(&v19);
  v21 = v23;
  v22 = 0x600000000;
  v4 = v29;
  if (v29)
  {
    if (v29 < 7)
    {
      v6 = v23;
      v5 = v29;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v29, 8);
      v5 = v29;
      if (!v29)
      {
LABEL_7:
        LODWORD(v22) = v4;
        goto LABEL_8;
      }

      v6 = v21;
    }

    memcpy(v6, v28, 8 * v5);
    goto LABEL_7;
  }

LABEL_8:
  v7 = v31;
  v8 = v33;
  v24 = v31;
  v25 = v27;
  v26 = xmmword_10028F060;
  if (!v33)
  {
    v11 = v27;
    goto LABEL_16;
  }

  if (v33 < 0x29)
  {
    v10 = v27;
    v9 = v33;
    goto LABEL_14;
  }

  llvm::SmallVectorBase<unsigned long long>::grow_pod(&v25, v27, v33, 1);
  v9 = v33;
  if (v33)
  {
    v10 = v25;
LABEL_14:
    memcpy(v10, v32, v9);
  }

  *&v26 = v8;
  v4 = v22;
  v7 = v24;
  v11 = v25;
LABEL_16:
  v12 = mlir::VectorType::get(v21, v4, v7, v11, v8);
  if (v25 != v27)
  {
    free(v25);
  }

  if (v21 != v23)
  {
    free(v21);
  }

  if (v32 != &v34)
  {
    free(v32);
  }

  if (v28 != &v30)
  {
    free(v28);
  }

  return v12;
}

void sub_100120584(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  sub_1000FF8F8(*a2, *(a2 + 8), &__src);
  v11 = a1[1];
  if (*a3)
  {
    v12 = *v11;
    *v11 = vaddq_s64(*v11, xmmword_10028FD30);
    v13 = *v12.i64[0];
  }

  else
  {
    v13 = 0;
  }

  v14 = *a1;
  sub_100120798(*a4, *(a4 + 8), &v21);
  *a5 = a5 + 16;
  *(a5 + 8) = 0x600000000;
  v15 = v26;
  if (v26 && &__src != a5)
  {
    if (__src == v28)
    {
      v17 = v26;
      if (v26 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v26, 8), (v17 = v26) != 0))
      {
        memcpy(*a5, __src, 8 * v17);
      }

      *(a5 + 8) = v15;
    }

    else
    {
      *a5 = __src;
      v16 = v27;
      *(a5 + 8) = v15;
      *(a5 + 12) = v16;
      __src = v28;
      v27 = 0;
    }

    v26 = 0;
  }

  *(a5 + 72) = a5 + 96;
  *(a5 + 64) = v13;
  *(a5 + 80) = xmmword_10028F060;
  v18 = v21;
  if ((a5 + 72) != &v21)
  {
    v19 = v22;
    if (v22)
    {
      if (v21 != v24)
      {
        *(a5 + 72) = v21;
        *(a5 + 80) = v19;
        *(a5 + 88) = v23;
        goto LABEL_23;
      }

      v20 = v22;
      if (v22 < 0x29 || (llvm::SmallVectorBase<unsigned long long>::grow_pod(a5 + 72, (a5 + 96), v22, 1), v18 = v21, (v20 = v22) != 0))
      {
        memcpy(*(a5 + 72), v18, v20);
        v18 = v21;
      }

      *(a5 + 80) = v19;
      v22 = 0;
    }
  }

  if (v18 != v24)
  {
    free(v18);
  }

LABEL_23:
  if (__src != v28)
  {
    free(__src);
  }
}

void sub_100120798(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = v17;
  v3 = xmmword_10028F060;
  v16 = xmmword_10028F060;
  if (a2)
  {
    do
    {
      while (1)
      {
        v4 = v16;
        if (v16 >= *(&v16 + 1))
        {
          break;
        }

        v5 = *a1++;
        *(v15 + v16) = v5;
        *&v16 = v4 + 1;
        if (!--a2)
        {
          goto LABEL_6;
        }
      }

      v6 = a1;
      v7 = a2;
      v8 = a3;
      v14 = v3;
      sub_1000DBF40(&v15, a1);
      v3 = v14;
      a3 = v8;
      a1 = v6 + 1;
      a2 = v7 - 1;
    }

    while (v7 != 1);
LABEL_6:
    v9 = v15;
    v10 = v16;
    *a3 = a3 + 24;
    *(a3 + 8) = v3;
    if (v10 && &v15 != a3)
    {
      if (v9 != v17)
      {
        *a3 = v9;
        *(a3 + 8) = v10;
        *(a3 + 16) = *(&v16 + 1);
        return;
      }

      v11 = v10;
      if (v10 < 0x29 || (v12 = a3, llvm::SmallVectorBase<unsigned long long>::grow_pod(a3, (a3 + 24), v10, 1), a3 = v12, v9 = v15, (v11 = v16) != 0))
      {
        v13 = a3;
        memcpy(*a3, v9, v11);
        a3 = v13;
        v9 = v15;
      }

      *(a3 + 8) = v10;
      *&v16 = 0;
    }

    if (v9 != v17)
    {
      free(v9);
    }
  }

  else
  {
    *a3 = a3 + 24;
    *(a3 + 8) = xmmword_10028F060;
  }
}

BOOL sub_100120910(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  return v3 == *(*a1 + 8) && !memcmp(*(a2 + 8), *v2, 8 * v3) && *(a2 + 24) == *(v2 + 16) && *(a2 + 32) == *(v2 + 24) && *(a2 + 48) == *(v2 + 40);
}

unint64_t sub_10012099C(uint64_t a1, void *a2)
{
  v3 = sub_1001209EC(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t sub_1001209EC(void *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = *(a2 + 3);
  v5 = a2[5];
  v6 = *a1;
  if (v2)
  {
    v7 = *a2;
    v8 = 8 * v2;
    a1[10] += 8 * v2;
    if (v6 && (v9 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8, v9 + v8 <= a1[1]))
    {
      *a1 = v9 + v8;
      v10 = v8 - 8;
      if ((v8 - 8) >= 0x18)
      {
LABEL_5:
        v11 = v9;
        v12 = v7;
        if (v9 - v7 >= 0x20)
        {
          v13 = (v10 >> 3) + 1;
          v14 = 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL);
          v11 = (v9 + v14);
          v12 = (v7 + v14);
          v15 = (v7 + 16);
          v16 = (v9 + 16);
          v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v18 = *v15;
            *(v16 - 1) = *(v15 - 1);
            *v16 = v18;
            v15 += 2;
            v16 += 2;
            v17 -= 4;
          }

          while (v17);
          if (v13 == (v13 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_14;
          }
        }

        goto LABEL_13;
      }
    }

    else
    {
      v19 = a1;
      v25 = v4;
      v20 = sub_10003A984(a1, 8 * v2, 8 * v2, 3);
      v4 = v25;
      v9 = v20;
      a1 = v19;
      v10 = v8 - 8;
      if ((v8 - 8) >= 0x18)
      {
        goto LABEL_5;
      }
    }

    v11 = v9;
    v12 = v7;
    do
    {
LABEL_13:
      v21 = *v12++;
      *v11++ = v21;
    }

    while (v12 != (v7 + 8 * v2));
LABEL_14:
    v6 = *a1;
    goto LABEL_15;
  }

  v9 = 0;
LABEL_15:
  a1[10] += 56;
  if (v6 && (v22 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8, v22 + 56 <= a1[1]))
  {
    *a1 = v22 + 56;
  }

  else
  {
    v26 = v4;
    v24 = sub_10003A984(a1, 56, 56, 3);
    v4 = v26;
    v22 = v24;
  }

  *v22 = 0;
  *(v22 + 8) = v9;
  *(v22 + 16) = v2;
  *(v22 + 24) = v3;
  *(v22 + 32) = v4;
  *(v22 + 48) = v5;
  return v22;
}

uint64_t sub_100120B90(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::ShapedType::cloneWith(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *v3;
  v7 = *a2;
  v8 = *(a2 + 2);
  return v5(v3, v4, &v7, a3);
}

uint64_t mlir::FloatType::getWidth(mlir::FloatType *this)
{
  v1 = (**(this + 1))(*(this + 1), *this);

  return llvm::APFloatBase::semanticsSizeInBits(v1);
}

uint64_t mlir::ShapedType::getNumElements(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v2)
    {
      v3 = v2 + 1;
      v4 = (v2 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v5 = &a1[v4];
      v6 = a1 + 1;
      v7 = 1;
      v8 = v4;
      v9 = 1;
      do
      {
        v7 *= *(v6 - 1);
        v9 *= *v6;
        v6 += 2;
        v8 -= 2;
      }

      while (v8);
      v10 = v9 * v7;
      if (v3 == v4)
      {
        return v10;
      }
    }

    else
    {
      v10 = 1;
      v5 = a1;
    }

    do
    {
      v12 = *v5++;
      v10 *= v12;
    }

    while (v5 != &a1[a2]);
    return v10;
  }

  return 1;
}

uint64_t mlir::DiagnosticArgument::DiagnosticArgument(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = a2;
  return result;
}

{
  *result = 4;
  *(result + 8) = a2;
  return result;
}

void mlir::DiagnosticArgument::print(mlir::DiagnosticArgument *this, llvm::raw_ostream *a2)
{
  v2 = *this;
  if (*this > 2)
  {
    switch(v2)
    {
      case 3:
        v6 = *(this + 1);
        v5 = *(this + 2);
        v7 = *(a2 + 4);
        if (v5 <= *(a2 + 3) - v7)
        {
          if (v5)
          {
            v10 = a2;
            v11 = v5;
            memcpy(v7, v6, v5);
            *(v10 + 4) += v11;
          }
        }

        else
        {

          llvm::raw_ostream::write(a2, v6, v5);
        }

        break;
      case 4:
        v9 = *(a2 + 4);
        if (v9 >= *(a2 + 3))
        {
          v12 = this;
          a2 = llvm::raw_ostream::write(a2, 39);
          this = v12;
        }

        else
        {
          *(a2 + 4) = v9 + 1;
          *v9 = 39;
        }

        v15 = *(this + 1);
        v13 = a2;
        mlir::Type::print(&v15, a2);
        v14 = *(v13 + 4);
        if (v14 >= *(v13 + 3))
        {
          llvm::raw_ostream::write(v13, 39);
        }

        else
        {
          *(v13 + 4) = v14 + 1;
          *v14 = 39;
        }

        break;
      case 5:
        v4 = *(this + 1);

        llvm::raw_ostream::operator<<(a2, v4);
        break;
    }
  }

  else if (v2)
  {
    if (v2 == 1)
    {
      v8 = *(this + 1);

      llvm::raw_ostream::operator<<(a2, v8);
    }

    else if (v2 == 2)
    {
      v3 = *(this + 1);

      llvm::raw_ostream::operator<<(a2, v3);
    }
  }

  else
  {
    v15 = *(this + 1);
    mlir::Attribute::print(&v15, a2);
  }
}

uint64_t mlir::Diagnostic::operator<<(uint64_t a1, char a2)
{
  v13 = 264;
  LOBYTE(v12) = a2;
  v3 = sub_100121200(&v12);
  v4 = *(a1 + 16);
  v14 = 3;
  v15 = v3;
  v16 = v5;
  v6 = *(a1 + 24);
  v7 = &v14;
  if (v6 >= *(a1 + 28))
  {
    if (v4 <= &v14 && v4 + 24 * v6 > &v14)
    {
      v11 = &v14 - v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v6 + 1, 24);
      v4 = *(a1 + 16);
      v7 = &v11[v4];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v6 + 1, 24);
      v4 = *(a1 + 16);
      v7 = &v14;
    }
  }

  v8 = v4 + 24 * *(a1 + 24);
  v9 = *v7;
  *(v8 + 16) = *(v7 + 2);
  *v8 = v9;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<(uint64_t a1, void ***a2)
{
  v3 = sub_100121200(a2);
  v4 = *(a1 + 16);
  v12 = 3;
  v13 = v3;
  v14 = v5;
  v6 = *(a1 + 24);
  v7 = &v12;
  if (v6 >= *(a1 + 28))
  {
    if (v4 <= &v12 && v4 + 24 * v6 > &v12)
    {
      v11 = &v12 - v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v6 + 1, 24);
      v4 = *(a1 + 16);
      v7 = &v11[v4];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v6 + 1, 24);
      v4 = *(a1 + 16);
      v7 = &v12;
    }
  }

  v8 = v4 + 24 * *(a1 + 24);
  v9 = *v7;
  *(v8 + 16) = *(v7 + 2);
  *v8 = v9;
  ++*(a1 + 24);
  return a1;
}

{
  v3 = sub_100121200(a2);
  v4 = *(a1 + 16);
  v12 = 3;
  v13 = v3;
  v14 = v5;
  v6 = *(a1 + 24);
  v7 = &v12;
  if (v6 >= *(a1 + 28))
  {
    if (v4 <= &v12 && v4 + 24 * v6 > &v12)
    {
      v11 = &v12 - v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v6 + 1, 24);
      v4 = *(a1 + 16);
      v7 = &v11[v4];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v6 + 1, 24);
      v4 = *(a1 + 16);
      v7 = &v12;
    }
  }

  v8 = v4 + 24 * *(a1 + 24);
  v9 = *v7;
  *(v8 + 16) = *(v7 + 2);
  *v8 = v9;
  ++*(a1 + 24);
  return a1;
}

void **sub_100121200(void ***a1)
{
  v9 = v11;
  v10 = xmmword_10028F190;
  if (*(a1 + 33) == 1)
  {
    v1 = *(a1 + 32);
    if (v1 > 4)
    {
      if (v1 - 5 < 2)
      {
        v3 = *a1;
        v6 = a1[1];
        v5 = v11;
        if (v6)
        {
          goto LABEL_18;
        }

        goto LABEL_19;
      }
    }

    else
    {
      switch(v1)
      {
        case 1u:
          return 0;
        case 3u:
          v3 = *a1;
          if (!*a1)
          {
            return v3;
          }

          v8 = strlen(*a1);
          v5 = v11;
          if (!v8)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        case 4u:
          v2 = *(*a1 + 23);
          if (v2 >= 0)
          {
            v3 = *a1;
          }

          else
          {
            v3 = **a1;
          }

          if (v2 >= 0)
          {
            v4 = *(*a1 + 23);
          }

          else
          {
            v4 = (*a1)[1];
          }

          v5 = v11;
          if (!v4)
          {
            goto LABEL_19;
          }

LABEL_18:
          operator new[]();
      }
    }
  }

  llvm::Twine::toVector(a1, &v9);
  v5 = v9;
  v3 = v9;
  if (v10)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (v5 != v11)
  {
    free(v5);
  }

  return v3;
}

__n128 mlir::Diagnostic::operator<<(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v10 = 0;
  v11 = a2;
  v3 = *(a1 + 24);
  v4 = &v10;
  if (v3 >= *(a1 + 28))
  {
    if (v2 <= &v10 && v2 + 24 * v3 > &v10)
    {
      v8 = &v10 - v2;
      v9 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v3 + 1, 24);
      a1 = v9;
      v2 = *(v9 + 16);
      v4 = &v8[v2];
    }

    else
    {
      v7 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v3 + 1, 24);
      a1 = v7;
      v2 = *(v7 + 16);
      v4 = &v10;
    }
  }

  v5 = (v2 + 24 * *(a1 + 24));
  result = *v4;
  v5[1].n128_u64[0] = v4[1].n128_u64[0];
  *v5 = result;
  ++*(a1 + 24);
  return result;
}

uint64_t mlir::Diagnostic::operator<<(uint64_t a1, uint64_t a2)
{
  v12[0] = *(a2 + 8);
  Value = mlir::StringAttr::getValue(v12);
  v4 = *(a1 + 16);
  LODWORD(v12[0]) = 3;
  v12[1] = Value;
  v12[2] = v5;
  v6 = *(a1 + 24);
  v7 = v12;
  if (v6 >= *(a1 + 28))
  {
    if (v4 <= v12 && v4 + 24 * v6 > v12)
    {
      v11 = v12 - v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v6 + 1, 24);
      v4 = *(a1 + 16);
      v7 = &v11[v4];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v6 + 1, 24);
      v4 = *(a1 + 16);
      v7 = v12;
    }
  }

  v8 = v4 + 24 * *(a1 + 24);
  v9 = *v7;
  *(v8 + 16) = *(v7 + 2);
  *v8 = v9;
  ++*(a1 + 24);
  return a1;
}

{
  v28 = 0;
  v29 = a2;
  v27[0] = 0;
  v27[1] = 0;
  v20 = 0;
  v24 = 0;
  v25 = 1;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v19 = &off_1002B45C0;
  v26 = v27;
  llvm::raw_ostream::SetBufferAndMode(&v19, 0, 0, 0);
  mlir::OpPrintingFlags::OpPrintingFlags(&v14);
  v3 = *(a1 + 8);
  mlir::OpPrintingFlags::useLocalScope(&v14, 1);
  mlir::OpPrintingFlags::elideLargeElementsAttrs(&v14, 16);
  if (v3 == 2)
  {
    mlir::OpPrintingFlags::printGenericOpForm(&v14, 1);
  }

  v17[0] = v14;
  v17[1] = v15;
  v18 = v16;
  mlir::Value::print(&v29, &v19, v17);
  LOWORD(v18) = 260;
  *&v17[0] = v27;
  v4 = sub_100121200(v17);
  v5 = a1 + 16;
  v6 = *(a1 + 16);
  LODWORD(v14) = 3;
  *(&v14 + 1) = v4;
  *&v15 = v7;
  v8 = *(a1 + 24);
  v9 = &v14;
  if (v8 >= *(a1 + 28))
  {
    if (v6 <= &v14 && v6 + 24 * v8 > &v14)
    {
      v13 = &v14 - v6;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (a1 + 32), v8 + 1, 24);
      v6 = *(a1 + 16);
      v9 = &v13[v6];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (a1 + 32), v8 + 1, 24);
      v6 = *(a1 + 16);
      v9 = &v14;
    }
  }

  v10 = v6 + 24 * *(a1 + 24);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  ++*(a1 + 24);
  llvm::raw_ostream::~raw_ostream(&v19);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

  return a1;
}

void mlir::Diagnostic::appendOp(mlir::Diagnostic *this, mlir::Operation *a2, const mlir::OpPrintingFlags *a3)
{
  memset(&v19, 0, sizeof(v19));
  v12 = 0;
  v16 = 0;
  v17 = 1;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v11 = &off_1002B45C0;
  v18 = &v19;
  llvm::raw_ostream::SetBufferAndMode(&v11, 0, 0, 0);
  v6 = *(a3 + 1);
  v7 = *a3;
  v8 = v6;
  v9 = *(a3 + 2);
  LODWORD(a3) = *(this + 2);
  mlir::OpPrintingFlags::useLocalScope(&v7, 1);
  mlir::OpPrintingFlags::elideLargeElementsAttrs(&v7, 16);
  if (a3 == 2)
  {
    mlir::OpPrintingFlags::printGenericOpForm(&v7, 1);
  }

  v10[0] = v7;
  v10[1] = v8;
  v10[2] = v9;
  mlir::Operation::print(a2, &v11, v10);
}

void mlir::Diagnostic::attachNote(uint64_t *a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v3 = *a1;
  }

  operator new();
}

void mlir::InFlightDiagnostic::report(mlir::InFlightDiagnostic *this)
{
  if (*this)
  {
    mlir::detail::DiagnosticEngineImpl::emit(**this, this + 1);
    *this = 0;
  }

  if (*(this + 200) == 1)
  {
    sub_100052F18(this + 1);
    *(this + 200) = 0;
  }
}

void mlir::detail::DiagnosticEngineImpl::emit(uint64_t a1, uint64_t *a2)
{
  std::recursive_mutex::lock(a1);
  v5 = *(a1 + 120);
  v6 = *(a1 + 112) + 40 * v5;
  v7 = (v6 - 32);
  v8 = -40 * v5;
  while (v8)
  {
    v9 = *(v6 - 8);
    if ((v9 & 2) == 0)
    {
      v10 = *v7;
    }

    v6 -= 40;
    v4 = (*(v9 & 0xFFFFFFFFFFFFFFF8))();
    v7 -= 5;
    v8 += 40;
    if (v4)
    {
      goto LABEL_22;
    }
  }

  if (*(a2 + 2) != 2)
  {
    goto LABEL_22;
  }

  v11 = llvm::errs(v4);
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
  {
LABEL_10:
    v13 = *(v11 + 4);
    if (*(v11 + 3) - v13 <= 6uLL)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v18 = *a2;
  mlir::Attribute::print(&v18, v11);
  v12 = *(v11 + 4);
  if (*(v11 + 3) - v12 <= 1uLL)
  {
    llvm::raw_ostream::write(v11, ": ", 2uLL);
    goto LABEL_10;
  }

  *v12 = 8250;
  *(v11 + 4) += 2;
  v13 = *(v11 + 4);
  if (*(v11 + 3) - v13 <= 6uLL)
  {
LABEL_11:
    llvm::raw_ostream::write(v11, "error: ", 7uLL);
    v14 = *(a2 + 6);
    if (!v14)
    {
      goto LABEL_17;
    }

LABEL_15:
    v15 = a2[2];
    v16 = 24 * v14;
    do
    {
      mlir::DiagnosticArgument::print(v15, v11);
      v15 = (v15 + 24);
      v16 -= 24;
    }

    while (v16);
    goto LABEL_17;
  }

LABEL_14:
  *(v13 + 3) = 540701295;
  *v13 = 1869771365;
  *(v11 + 4) += 7;
  v14 = *(a2 + 6);
  if (v14)
  {
    goto LABEL_15;
  }

LABEL_17:
  v17 = *(v11 + 4);
  if (v17 < *(v11 + 3))
  {
    *(v11 + 4) = v17 + 1;
    *v17 = 10;
    if (*(v11 + 4) == *(v11 + 2))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  llvm::raw_ostream::write(v11, 10);
  if (*(v11 + 4) != *(v11 + 2))
  {
LABEL_21:
    llvm::raw_ostream::flush_nonempty(v11);
  }

LABEL_22:
  std::recursive_mutex::unlock(a1);
}

void mlir::DiagnosticEngine::~DiagnosticEngine(std::recursive_mutex **this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    sub_1001256D4(this, v1);
  }
}

uint64_t mlir::DiagnosticEngine::registerHandler(std::recursive_mutex **a1, __int128 *a2)
{
  v4 = *a1;
  std::recursive_mutex::lock(*a1);
  v5 = *a1;
  v6 = *&(*a1)[3].__m_.__opaque[8];
  *&v5[3].__m_.__opaque[8] = v6 + 1;
  v7 = *(a2 + 3);
  v11 = v6;
  v14 = v7;
  if (v7 >= 8)
  {
    if ((v7 & 2) != 0 && (v7 & 4) != 0)
    {
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 8))(&v12, a2);
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(a2);
    }

    else
    {
      v12 = *a2;
      v13 = *(a2 + 2);
    }

    *(a2 + 3) = 0;
  }

  sub_1001257C8(v5[1].__m_.__opaque, &v11, &v12);
  v8 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v9 = &v12;
      }

      else
      {
        v9 = v12;
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v9);
    }

    if ((v8 & 2) == 0)
    {
      llvm::deallocate_buffer(v12, *(&v12 + 1), v13);
    }
  }

  std::recursive_mutex::unlock(v4);
  return v6;
}

void mlir::DiagnosticEngine::eraseHandler(std::recursive_mutex **this, uint64_t a2)
{
  v4 = *this;
  std::recursive_mutex::lock(*this);
  v5 = *this;
  v6 = *(*this)[1].__m_.__opaque;
  if (v6)
  {
    v7 = &v5[1].__m_.__opaque[8];
    v8 = 2;
  }

  else
  {
    v7 = *&v5[1].__m_.__opaque[8];
    v8 = *&v5[1].__m_.__opaque[16];
    if (!v8)
    {
      v9 = 0;
      v10 = 0;
LABEL_4:
      v11 = &v7[16 * v10];
      v12 = &v7[16 * v9];
      goto LABEL_17;
    }
  }

  v13 = v8 - 1;
  v14 = (v8 - 1) & (((0xBF58476D1CE4E5B9 * a2) >> 31) ^ (484763065 * a2));
  v15 = *&v7[16 * v14];
  if (v15 == a2)
  {
LABEL_7:
    v11 = &v7[16 * v14];
    if ((v6 & 1) == 0)
    {
      v12 = *&v5[1].__m_.__opaque[8] + 16 * *&v5[1].__m_.__opaque[16];
      goto LABEL_17;
    }
  }

  else
  {
    v16 = 1;
    while (v15 != -1)
    {
      v17 = v14 + v16++;
      v14 = v17 & v13;
      v15 = *&v7[16 * v14];
      if (v15 == a2)
      {
        goto LABEL_7;
      }
    }

    if ((v6 & 1) == 0)
    {
      v7 = *&v5[1].__m_.__opaque[8];
      v9 = *&v5[1].__m_.__opaque[16];
      v10 = v9;
      goto LABEL_4;
    }

    v11 = &v5[1].__m_.__opaque[40];
  }

  v12 = &v5[1].__m_.__opaque[40];
LABEL_17:
  v18 = v11 == v12;
  v19 = &v5[1].__m_.__opaque[48];
  if (!v18)
  {
    v19 = v11 + 8;
  }

  v20 = *v19;
  if (v20 != *&v5[1].__m_.__opaque[48])
  {
    sub_100126298((*this)[1].__m_.__opaque, (*&v5[1].__m_.__opaque[40] + 40 * v20));
  }

  std::recursive_mutex::unlock(v4);
}

void sub_100122120(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v31 = a2;
  Context = mlir::Attribute::getContext(&v31);
  DiagEngine = mlir::MLIRContext::getDiagEngine(Context);
  v9 = v31;
  *a1 = DiagEngine;
  *(a1 + 8) = v9;
  *(a1 + 16) = a3;
  *(a1 + 24) = a1 + 40;
  v10 = (a1 + 24);
  *(a1 + 136) = 0u;
  *(a1 + 32) = 0x400000000;
  *(a1 + 152) = 0u;
  *(a1 + 200) = 1;
  *(a1 + 168) = 0u;
  *(a1 + 184) = a1 + 200;
  *(a1 + 192) = 0;
  if (*(a4 + 32) >= 2u)
  {
    LODWORD(v20) = 3;
    v21 = sub_100121200(a4);
    v22 = v11;
    v12 = *(a1 + 32);
    v13 = *(a1 + 24);
    v14 = &v20;
    if (v12 >= *(a1 + 36))
    {
      if (v13 <= &v20 && v13 + 24 * v12 > &v20)
      {
        v19 = &v20 - v13;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v12 + 1, 24);
        v13 = *v10;
        v14 = &v19[*v10];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v12 + 1, 24);
        v13 = *v10;
        v14 = &v20;
      }
    }

    v15 = v13 + 24 * *(a1 + 32);
    v16 = *v14;
    *(v15 + 16) = v14[2];
    *v15 = v16;
    ++*(a1 + 32);
  }

  if (mlir::MLIRContext::shouldPrintStackTraceOnDiagnostic(Context))
  {
    __p = 0;
    v29 = 0;
    v30 = 0;
    LODWORD(v21) = 0;
    v25 = 0;
    v26 = 1;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    v20 = &off_1002B45C0;
    p_p = &__p;
    llvm::raw_ostream::SetBufferAndMode(&v20, 0, 0, 0);
    llvm::sys::PrintStackTrace(&v20, 0);
    llvm::raw_ostream::~raw_ostream(&v20);
    v17 = HIBYTE(v30);
    if (v30 < 0)
    {
      v17 = v29;
    }

    if (v17)
    {
      v18 = *(a1 + 8);
      operator new();
    }

    if (v30 < 0)
    {
      operator delete(__p);
    }
  }
}

void mlir::ScopedDiagnosticHandler::~ScopedDiagnosticHandler(mlir::MLIRContext **this)
{
  if (*this)
  {
    DiagEngine = mlir::MLIRContext::getDiagEngine(this[1]);
    mlir::DiagnosticEngine::eraseHandler(DiagEngine, *this);
  }
}

void mlir::ParallelDiagnosticHandler::~ParallelDiagnosticHandler(mlir::ParallelDiagnosticHandler *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

void mlir::ParallelDiagnosticHandler::setOrderIDForThread(mlir::ParallelDiagnosticHandler *this, uint64_t a2)
{
  v3 = *this;
  threadid = llvm::get_threadid(this);
  std::recursive_mutex::lock((v3 + 16));
  *sub_100122B68(v3 + 88, &threadid) = a2;
  std::recursive_mutex::unlock((v3 + 16));
}

void mlir::ParallelDiagnosticHandler::eraseOrderIDForThread(mlir::ParallelDiagnosticHandler *this)
{
  v1 = *this;
  threadid = llvm::get_threadid(this);
  std::recursive_mutex::lock((v1 + 16));
  v3 = *(v1 + 104);
  if (v3)
  {
    v4 = *(v1 + 88);
    v5 = v3 - 1;
    v6 = (v3 - 1) & (((0xBF58476D1CE4E5B9 * threadid) >> 31) ^ (484763065 * threadid));
    v7 = *(v4 + 16 * v6);
    if (threadid == v7)
    {
LABEL_3:
      *(v4 + 16 * v6) = -2;
      *(v1 + 96) = vadd_s32(*(v1 + 96), 0x1FFFFFFFFLL);
    }

    else
    {
      v8 = 1;
      while (v7 != -1)
      {
        v9 = v6 + v8++;
        v6 = v9 & v5;
        v7 = *(v4 + 16 * v6);
        if (threadid == v7)
        {
          goto LABEL_3;
        }
      }
    }
  }

  std::recursive_mutex::unlock((v1 + 16));
}

void sub_10012274C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = v8 >> 3;
  v10 = (v8 >> 3) + 1;
  if (v10 >> 61)
  {
    sub_10002BC08();
  }

  v11 = v3 - v7;
  if (v11 >> 2 > v10)
  {
    v10 = v11 >> 2;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 61))
    {
      operator new();
    }

    sub_10002BC08();
  }

  v13 = *a2;
  *a2 = 0;
  *(8 * v9) = v13;
  v6 = 8 * v9 + 8;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

uint64_t sub_10012286C(uint64_t a1, mlir::MLIRContext *a2)
{
  v4 = llvm::PrettyStackTraceEntry::PrettyStackTraceEntry(a1);
  *v4 = off_1002B7558;
  std::recursive_mutex::recursive_mutex((v4 + 16));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = a2;
  DiagEngine = mlir::MLIRContext::getDiagEngine(a2);
  *&v9 = a1;
  v11 = &off_1002C0D50 + 2;
  *(a1 + 136) = mlir::DiagnosticEngine::registerHandler(DiagEngine, &v9);
  v6 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      if ((v11 & 2) != 0)
      {
        v7 = &v9;
      }

      else
      {
        v7 = v9;
      }

      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v7);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v9, *(&v9 + 1), v10);
    }
  }

  return a1;
}

void sub_10012296C(uint64_t a1)
{
  sub_100123450(a1);

  operator delete();
}

void sub_1001229A4(uint64_t a1, llvm::raw_ostream *this)
{
  if (*(a1 + 112) != *(a1 + 120))
  {
    v7[3] = v2;
    v7[4] = v3;
    v4 = *(this + 4);
    if (*(this + 3) - v4 > 0x16uLL)
    {
      qmemcpy(v4, "In-Flight Diagnostics:\n", 23);
      *(this + 4) += 23;
    }

    else
    {
      v5 = a1;
      v6 = this;
      llvm::raw_ostream::write(this, "In-Flight Diagnostics:\n", 0x17uLL);
      this = v6;
      a1 = v5;
    }

    v7[0] = this;
    sub_100123538(a1, sub_10012545C, v7);
  }
}

uint64_t sub_100122A58(llvm *a1, uint64_t *a2)
{
  v3 = *a1;
  threadid = llvm::get_threadid(a1);
  v18 = threadid;
  std::recursive_mutex::lock((v3 + 16));
  v5 = *(v3 + 104);
  if (!v5)
  {
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v6 = *(v3 + 88);
  v7 = v5 - 1;
  v8 = v7 & (((0xBF58476D1CE4E5B9 * threadid) >> 31) ^ (484763065 * threadid));
  v9 = *(v6 + 16 * v8);
  if (threadid != v9)
  {
    v15 = 1;
    while (v9 != -1)
    {
      v16 = v8 + v15++;
      v8 = v16 & v7;
      v9 = *(v6 + 16 * (v16 & v7));
      if (threadid == v9)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_11;
  }

LABEL_3:
  v10 = sub_100122B68(v3 + 88, &v18);
  v11 = *(v3 + 120);
  v12 = (v3 + 112);
  if (v11 >= *(v3 + 128))
  {
    v13 = sub_100122CE4(v12, v10, a2);
  }

  else
  {
    sub_100122E18(v12, *(v3 + 120), v10, a2);
    v13 = v11 + 200;
  }

  *(v3 + 120) = v13;
  v14 = 1;
LABEL_12:
  std::recursive_mutex::unlock((v3 + 16));
  return v14;
}

void *sub_100122B68(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = (v2 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v5 = (*a1 + 16 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -1)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -2;
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
    sub_100123240(a1, v2);
    sub_1000605C8(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -1)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

uint64_t sub_100122CE4(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = 0x8F5C28F5C28F5C29 * ((a1[1] - *a1) >> 3) + 1;
  if (v3 > 0x147AE147AE147AELL)
  {
    sub_10002BC08();
  }

  if (0x1EB851EB851EB852 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1EB851EB851EB852 * ((a1[2] - *a1) >> 3);
  }

  if (0x8F5C28F5C28F5C29 * ((a1[2] - *a1) >> 3) >= 0xA3D70A3D70A3D7)
  {
    v5 = 0x147AE147AE147AELL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x147AE147AE147AELL)
    {
      operator new();
    }

    sub_10002BC08();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  sub_100122E18(a1, v6, a2, a3);
  v7 = a1[1];
  v8 = v6 + *a1 - v7;
  sub_10012311C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6 + 200;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6 + 200;
}

void sub_100122E18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a3;
  v23 = *a4;
  v24 = *(a4 + 2);
  __src = v27;
  v26 = 0x400000000;
  if (*(a4 + 6))
  {
    sub_1000A8718(&__src, a4 + 2);
  }

  *v28 = *(a4 + 8);
  v7 = a4[18];
  a4[16] = 0;
  a4[17] = 0;
  __p = *(a4 + 19);
  v8 = a4[21];
  v29 = v7;
  a4[18] = 0;
  a4[19] = 0;
  a4[20] = 0;
  a4[21] = 0;
  v31 = v8;
  v32 = &v34;
  v33 = 0;
  if (*(a4 + 46))
  {
    sub_1000A8718(&v32, a4 + 22);
  }

  *a2 = v6;
  *(a2 + 8) = v23;
  *(a2 + 16) = v24;
  *(a2 + 24) = a2 + 40;
  *(a2 + 32) = 0x400000000;
  if ((a2 + 24) != &__src)
  {
    v9 = v26;
    if (v26)
    {
      if (__src != v27)
      {
        *(a2 + 24) = __src;
        v10 = HIDWORD(v26);
        *(a2 + 32) = v9;
        *(a2 + 36) = v10;
        __src = v27;
        HIDWORD(v26) = 0;
LABEL_15:
        LODWORD(v26) = 0;
        goto LABEL_16;
      }

      if (v26 < 5)
      {
        v11 = v26;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 24, (a2 + 40), v26, 24);
        v11 = v26;
        if (!v26)
        {
          goto LABEL_14;
        }
      }

      memcpy(*(a2 + 24), __src, 24 * v11);
LABEL_14:
      *(a2 + 32) = v9;
      goto LABEL_15;
    }
  }

LABEL_16:
  *(a2 + 184) = a2 + 200;
  v13 = v31;
  v12 = v32;
  *(a2 + 152) = v29;
  *(a2 + 136) = *v28;
  v28[0] = 0;
  v28[1] = 0;
  *(a2 + 160) = __p;
  *(a2 + 176) = v13;
  v29 = 0;
  __p = 0uLL;
  v31 = 0;
  *(a2 + 192) = 0;
  if ((a2 + 184) != &v32)
  {
    v14 = v33;
    if (v33)
    {
      if (v12 == &v34)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 184, (a2 + 200), v33, 24);
        v12 = v32;
        if (v33)
        {
          memcpy(*(a2 + 184), v32, 24 * v33);
          v12 = v32;
        }

        *(a2 + 192) = v14;
      }

      else
      {
        *(a2 + 184) = v12;
        v15 = HIDWORD(v33);
        *(a2 + 192) = v14;
        *(a2 + 196) = v15;
        v32 = &v34;
        HIDWORD(v33) = 0;
        v12 = &v34;
      }

      LODWORD(v33) = 0;
    }
  }

  if (v12 != &v34)
  {
    free(v12);
  }

  v16 = __p;
  if (__p)
  {
    v17 = *(&__p + 1);
    v18 = __p;
    if (*(&__p + 1) != __p)
    {
      do
      {
        v17 = sub_100052FFC(v17 - 1);
      }

      while (v17 != v16);
      v18 = __p;
    }

    *(&__p + 1) = v16;
    operator delete(v18);
  }

  v19 = v28[0];
  if (v28[0])
  {
    v20 = v28[1];
    v21 = v28[0];
    if (v28[1] != v28[0])
    {
      do
      {
        v22 = *--v20;
        *v20 = 0;
        if (v22)
        {
          operator delete[]();
        }
      }

      while (v20 != v19);
      v21 = v28[0];
    }

    v28[1] = v19;
    operator delete(v21);
  }

  if (__src != v27)
  {
    free(__src);
  }
}

void sub_10012311C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      v9 = (a4 + v7);
      *(a4 + v7) = *(v6 + v7);
      v10 = *(v6 + v7 + 8);
      v11 = *(v6 + v7 + 16);
      *(a4 + v7 + 24) = a4 + v7 + 40;
      v12 = a4 + v7 + 24;
      *(v12 - 8) = v11;
      *(v12 - 16) = v10;
      *(v12 + 8) = 0x400000000;
      if (*(v6 + v7 + 32))
      {
        sub_1000A8718(v12, (v8 + 24));
      }

      v9[17] = 0;
      v9[18] = 0;
      v9[19] = 0;
      *(v9 + 17) = *(v8 + 136);
      v9[19] = *(v8 + 152);
      *(v8 + 136) = 0;
      *(v8 + 144) = 0;
      *(v8 + 152) = 0;
      v9[20] = 0;
      v9[21] = 0;
      v9[22] = 0;
      *(v9 + 10) = *(v8 + 160);
      v9[22] = *(v8 + 176);
      *(v8 + 160) = 0;
      *(v8 + 168) = 0;
      *(v8 + 176) = 0;
      v9[23] = v9 + 25;
      v9[24] = 0;
      v13 = (v9 + 23);
      if (*(v8 + 192))
      {
        sub_1000A8718(v13, (v6 + v7 + 184));
      }

      v7 += 200;
    }

    while (v8 + 200 != a3);
    while (v6 != a3)
    {
      sub_100052F18((v6 + 8));
      v6 += 200;
    }
  }
}

void sub_100123240(uint64_t a1, int a2)
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
  v10 = buffer;
  *a1 = buffer;
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
      v10 = &buffer[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = buffer + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -1;
        *v13 = -1;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -1;
          v10 += 2;
        }

        while (v10 != &buffer[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v25 = *v17;
        if (*v17 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v26 = v16 & (((0xBF58476D1CE4E5B9 * v25) >> 31) ^ (484763065 * v25));
          v23 = &buffer[2 * v26];
          v27 = *v23;
          if (v25 != *v23)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -1)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -2;
              }

              if (v30)
              {
                v28 = v23;
              }

              v31 = v26 + v29++;
              v26 = v31 & v16;
              v23 = &buffer[2 * (v31 & v16)];
              v27 = *v23;
              if (v25 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v28)
            {
              v23 = v28;
            }
          }

LABEL_23:
          v24 = *(v17 + 1);
          *v23 = v25;
          v23[1] = v24;
          *(a1 + 8) = ++v15;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v18 = *(a1 + 16);
    if (v18)
    {
      if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_18;
      }

      v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
      v20 = buffer + 2;
      v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v20 - 2) = -1;
        *v20 = -1;
        v20 += 4;
        v21 -= 2;
      }

      while (v21);
      if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_18:
        v22 = &buffer[2 * v18];
        do
        {
          *v10 = -1;
          v10 += 2;
        }

        while (v10 != v22);
      }
    }
  }
}

void sub_100123450(uint64_t a1)
{
  *a1 = off_1002B7558;
  DiagEngine = mlir::MLIRContext::getDiagEngine(*(a1 + 144));
  mlir::DiagnosticEngine::eraseHandler(DiagEngine, *(a1 + 136));
  v3 = *(a1 + 112);
  if (v3 != *(a1 + 120))
  {
    v7 = a1;
    sub_100123538(a1, sub_100125418, &v7);
    v3 = *(a1 + 112);
  }

  if (v3)
  {
    v4 = *(a1 + 120);
    v5 = v3;
    if (v4 != v3)
    {
      do
      {
        v6 = v4 - 200;
        sub_100052F18(v4 - 24);
        v4 = v6;
      }

      while (v6 != v3);
      v5 = *(a1 + 112);
    }

    *(a1 + 120) = v3;
    operator delete(v5);
  }

  llvm::deallocate_buffer(*(a1 + 88), (16 * *(a1 + 104)), 8uLL);
  std::recursive_mutex::~recursive_mutex((a1 + 16));
  llvm::PrettyStackTraceEntry::~PrettyStackTraceEntry(a1);
}

void sub_100123538(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = *(a1 + 112);
  v7 = *(a1 + 120);
  if (v7 - v6 < 1)
  {
    v10 = 0;
LABEL_7:
    sub_10012365C(v6, v7, &v15, 0x8F5C28F5C28F5C29 * ((v7 - v6) >> 3), 0, v10);
    v13 = *(a1 + 112);
    i = *(a1 + 120);
    if (v13 != i)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = 0x8F5C28F5C28F5C29 * ((v7 - v6) >> 3);
    while (1)
    {
      v9 = operator new(200 * v8, &std::nothrow);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    v14 = v9;
    sub_10012365C(v6, v7, &v15, 0x8F5C28F5C28F5C29 * ((v7 - v6) >> 3), v9, v8);
    operator delete(v14);
    v13 = *(a1 + 112);
    for (i = *(a1 + 120); v13 != i; v13 += 200)
    {
LABEL_10:
      a2(a3, v13 + 8);
    }
  }
}

void sub_10012365C(uint64_t *a1, unint64_t *a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v6 = a1;
    if (a4 == 2)
    {
      v8 = *(a2 - 25);
      v7 = (a2 - 25);
      if (v8 < *a1)
      {

        sub_100124590(a1, v7);
      }
    }

    else
    {
      v9 = a4;
      if (a4 <= 0)
      {

        sub_1001238E8(a1, a2);
      }

      else
      {
        v12 = a4 >> 1;
        v13 = &a1[25 * (a4 >> 1)];
        v14 = a4 - (a4 >> 1);
        if (a4 <= a6)
        {
          sub_100123D7C(a1, v13, a3, a4 >> 1, a5);
          v18 = &a5[25 * v12];
          sub_100123D7C(&v6[25 * (v9 >> 1)], a2, a3, v9 - (v9 >> 1), v18);
          v19 = &a5[25 * v9];
          v20 = v18;
          v21 = a5;
          while (v20 != v19)
          {
            if (*v20 >= *v21)
            {
              *v6 = *v21;
              sub_100124764((v6 + 1), v21 + 1);
              v21 += 25;
              v6 += 25;
              if (v21 == v18)
              {
                goto LABEL_21;
              }
            }

            else
            {
              *v6 = *v20;
              sub_100124764((v6 + 1), v20 + 1);
              v20 += 25;
              v6 += 25;
              if (v21 == v18)
              {
LABEL_21:
                if (v20 != v19)
                {
                  v22 = 0;
                  do
                  {
                    v23 = &v20[v22 + 25];
                    v6[v22] = v20[v22];
                    sub_100124764(&v6[v22 + 1], &v20[v22 + 1]);
                    v22 += 25;
                  }

                  while (v23 != v19);
                }

                goto LABEL_28;
              }
            }
          }

          if (v21 != v18)
          {
            v24 = 0;
            do
            {
              v25 = &v21[v24 + 25];
              v6[v24] = v21[v24];
              sub_100124764(&v6[v24 + 1], &v21[v24 + 1]);
              v24 += 25;
            }

            while (v25 != v18);
          }

LABEL_28:
          if (a5)
          {
            v26 = a5 + 1;
            do
            {
              v26 = sub_100052F18(v26) + 25;
              --v9;
            }

            while (v9);
          }
        }

        else
        {
          sub_10012365C(a1, v13, a3, v12, a5, a6);
          sub_10012365C(v13, a2, a3, v14, a5, a6);

          sub_1001241D8(v6, v13, a2, a3, v12, v14, a5, a6);
        }
      }
    }
  }
}

void sub_1001238E8(unint64_t *a1, unint64_t *a2)
{
  if (a1 == a2)
  {
    return;
  }

  v2 = a2;
  v4 = a1 + 25;
  if (a1 + 25 == a2)
  {
    return;
  }

  v5 = &v54;
  v6 = a1;
  while (2)
  {
    v7 = v4;
    v8 = *v4;
    if (v8 >= *v6)
    {
      goto LABEL_4;
    }

    v45 = v6[26];
    v46 = *(v6 + 54);
    v44 = v8;
    v47[0] = v48;
    v47[1] = 0x400000000;
    if (*(v6 + 58))
    {
      sub_1000A8718(v47, v6 + 28);
    }

    *v49 = *(v6 + 21);
    v50 = v6[44];
    v6[42] = 0;
    v6[43] = 0;
    *__p = *(v6 + 45);
    v9 = v6[47];
    v6[44] = 0;
    v6[45] = 0;
    v6[46] = 0;
    v6[47] = 0;
    v52 = v9;
    v53[0] = v5;
    v10 = v5;
    v53[1] = 0;
    if (*(v6 + 98))
    {
      sub_1000A8718(v53, v6 + 48);
    }

    v11 = *v6;
    v12 = v7;
    while (1)
    {
      v13 = v6;
      *v12 = v11;
      v15 = (v6 + 1);
      v14 = v6[1];
      *(v12 + 4) = *(v6 + 4);
      v12[1] = v14;
      v16 = v6[3];
      v17 = v6 + 5;
      if (v16 == v17)
      {
        v20 = *(v13 + 8);
        v21 = *(v12 + 8);
        if (v21 >= v20)
        {
          if (v20)
          {
            memmove(v12[3], v16, 24 * v20);
          }
        }

        else
        {
          if (*(v12 + 9) < v20)
          {
            *(v12 + 8) = 0;
            llvm::SmallVectorBase<unsigned int>::grow_pod((v12 + 3), v12 + 5, v20, 24);
            v21 = 0;
            v22 = *(v13 + 8);
            if (!*(v13 + 8))
            {
              goto LABEL_25;
            }

            goto LABEL_24;
          }

          if (v21)
          {
            memmove(v12[3], v16, 24 * v21);
            v22 = *(v13 + 8) - v21;
            if (!v22)
            {
              goto LABEL_25;
            }

            goto LABEL_24;
          }

          v21 = 0;
          v22 = *(v13 + 8);
          if (*(v13 + 8))
          {
LABEL_24:
            memcpy((v12[3] + 24 * v21), (v13[3] + 24 * v21), 24 * v22);
          }
        }

LABEL_25:
        *(v12 + 8) = v20;
        *(v13 + 8) = 0;
        v19 = v12[17];
        if (!v19)
        {
          goto LABEL_33;
        }

LABEL_26:
        v23 = v12 + 18;
        v24 = v12[18];
        v25 = v19;
        if (v24 != v19)
        {
          do
          {
            v26 = *--v24;
            *v24 = 0;
            if (v26)
            {
              operator delete[]();
            }
          }

          while (v24 != v19);
          v25 = v12[17];
        }

        *v23 = v19;
        operator delete(v25);
        *v23 = 0;
        v12[19] = 0;
        goto LABEL_33;
      }

      v18 = v12[3];
      if (v18 != v12 + 5)
      {
        free(v18);
        v16 = v13[3];
      }

      v12[3] = v16;
      v12[4] = v13[4];
      v13[3] = v17;
      v13[4] = 0;
      v19 = v12[17];
      if (v19)
      {
        goto LABEL_26;
      }

LABEL_33:
      *(v12 + 17) = *(v13 + 17);
      v12[19] = v13[19];
      v13[17] = 0;
      v13[18] = 0;
      v13[19] = 0;
      v27 = v12[20];
      if (v27)
      {
        v29 = v12 + 21;
        v28 = v12[21];
        v30 = v12[20];
        if (v28 != v27)
        {
          do
          {
            v28 = sub_100052FFC(v28 - 1);
          }

          while (v28 != v27);
          v30 = v12[20];
        }

        *v29 = v27;
        operator delete(v30);
        *v29 = 0;
        v12[22] = 0;
      }

      v32 = (v13 + 24);
      v31 = *(v13 + 48);
      *(v12 + 10) = *(v13 + 10);
      v12[22] = v13[22];
      v13[20] = 0;
      v13[21] = 0;
      v13[22] = 0;
      if (v31)
      {
        break;
      }

      *(v12 + 48) = 0;
      v35 = v44;
      if (v13 == a1)
      {
        goto LABEL_48;
      }

LABEL_44:
      v6 = v13 - 25;
      v11 = *(v13 - 25);
      v12 = v13;
      if (v35 >= v11)
      {
        goto LABEL_49;
      }
    }

    v33 = v12[23];
    if (v33 != v12 + 25)
    {
      free(v33);
      v31 = *v32;
    }

    v12[23] = v13[23];
    v34 = *(v13 + 49);
    *(v12 + 48) = v31;
    *(v12 + 49) = v34;
    v13[23] = (v13 + 25);
    *(v13 + 49) = 0;
    *v32 = 0;
    v35 = v44;
    if (v13 != a1)
    {
      goto LABEL_44;
    }

LABEL_48:
    v13 = a1;
LABEL_49:
    *v13 = v35;
    sub_100124764(v15, &v45);
    v5 = v10;
    if (v53[0] != v10)
    {
      free(v53[0]);
    }

    v36 = __p[0];
    v2 = a2;
    if (__p[0])
    {
      v37 = __p[1];
      v38 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v37 = sub_100052FFC(v37 - 1);
        }

        while (v37 != v36);
        v38 = __p[0];
      }

      __p[1] = v36;
      operator delete(v38);
    }

    v39 = v49[0];
    if (v49[0])
    {
      v40 = v49[1];
      v41 = v49[0];
      if (v49[1] != v49[0])
      {
        do
        {
          v42 = *--v40;
          *v40 = 0;
          if (v42)
          {
            operator delete[]();
          }
        }

        while (v40 != v39);
        v41 = v49[0];
      }

      v49[1] = v39;
      operator delete(v41);
    }

    if (v47[0] != v48)
    {
      free(v47[0]);
    }

LABEL_4:
    v4 = v7 + 25;
    v6 = v7;
    if (v7 + 25 != v2)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_100123D7C(uint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    return result;
  }

  v7 = result;
  if (a4 == 2)
  {
    v13 = *(a2 - 25);
    v14 = a5 + 40;
    if (v13 >= *result)
    {
      *a5 = *result;
      v18 = *(result + 8);
      *(a5 + 16) = *(result + 16);
      *(a5 + 8) = v18;
      *(a5 + 24) = v14;
      *(a5 + 32) = 0x400000000;
      if (*(result + 32))
      {
        sub_1000A8718(a5 + 24, (result + 24));
      }

      *(a5 + 136) = 0;
      *(a5 + 144) = 0;
      *(a5 + 152) = 0;
      *(a5 + 136) = *(v7 + 136);
      *(a5 + 152) = *(v7 + 152);
      *(v7 + 136) = 0;
      *(v7 + 144) = 0;
      *(v7 + 152) = 0;
      *(a5 + 160) = 0;
      *(a5 + 168) = 0;
      *(a5 + 176) = 0;
      *(a5 + 160) = *(v7 + 160);
      *(a5 + 176) = *(v7 + 176);
      *(v7 + 160) = 0;
      *(v7 + 168) = 0;
      *(v7 + 176) = 0;
      *(a5 + 184) = a5 + 200;
      *(a5 + 192) = 0;
      if (*(v7 + 192))
      {
        sub_1000A8718(a5 + 184, (v7 + 184));
      }

      *(a5 + 200) = *(a2 - 25);
      v19 = *(a2 - 24);
      v20 = *(a2 - 46);
      *(a5 + 224) = a5 + 240;
      result = a5 + 224;
      *(a5 + 216) = v20;
      *(a5 + 208) = v19;
      *(a5 + 232) = 0x400000000;
      if (*(a2 - 42))
      {
        result = sub_1000A8718(result, a2 - 22);
      }

      *(a5 + 336) = 0;
      *(a5 + 344) = 0;
      *(a5 + 352) = 0;
      *(a5 + 336) = *(a2 - 4);
      *(a5 + 352) = *(a2 - 6);
      *(a2 - 8) = 0;
      *(a2 - 7) = 0;
      *(a2 - 6) = 0;
      *(a5 + 360) = 0;
      *(a5 + 368) = 0;
      *(a5 + 376) = 0;
      *(a5 + 360) = *(a2 - 5);
      *(a5 + 376) = *(a2 - 3);
      *(a2 - 5) = 0;
      *(a2 - 4) = 0;
      *(a2 - 3) = 0;
      *(a5 + 384) = a5 + 400;
      *(a5 + 392) = 0;
      if (*(a2 - 2))
      {
        v11 = (a2 - 2);
        v12 = a5 + 384;
        goto LABEL_29;
      }
    }

    else
    {
      *a5 = v13;
      v15 = *(a2 - 24);
      *(a5 + 16) = *(a2 - 46);
      *(a5 + 8) = v15;
      *(a5 + 24) = v14;
      *(a5 + 32) = 0x400000000;
      if (*(a2 - 42))
      {
        sub_1000A8718(a5 + 24, a2 - 22);
      }

      *(a5 + 136) = 0;
      *(a5 + 144) = 0;
      *(a5 + 152) = 0;
      *(a5 + 136) = *(a2 - 4);
      *(a5 + 152) = *(a2 - 6);
      *(a2 - 8) = 0;
      *(a2 - 7) = 0;
      *(a2 - 6) = 0;
      *(a5 + 160) = 0;
      *(a5 + 168) = 0;
      *(a5 + 176) = 0;
      *(a5 + 160) = *(a2 - 5);
      *(a5 + 176) = *(a2 - 3);
      *(a2 - 5) = 0;
      *(a2 - 4) = 0;
      *(a2 - 3) = 0;
      *(a5 + 184) = a5 + 200;
      *(a5 + 192) = 0;
      if (*(a2 - 2))
      {
        sub_1000A8718(a5 + 184, a2 - 2);
      }

      *(a5 + 200) = *v7;
      v16 = *(v7 + 8);
      v17 = *(v7 + 16);
      *(a5 + 224) = a5 + 240;
      result = a5 + 224;
      *(a5 + 216) = v17;
      *(a5 + 208) = v16;
      *(a5 + 232) = 0x400000000;
      if (*(v7 + 32))
      {
        result = sub_1000A8718(result, (v7 + 24));
      }

      *(a5 + 336) = 0;
      *(a5 + 344) = 0;
      *(a5 + 352) = 0;
      *(a5 + 336) = *(v7 + 136);
      *(a5 + 352) = *(v7 + 152);
      *(v7 + 136) = 0;
      *(v7 + 144) = 0;
      *(v7 + 152) = 0;
      *(a5 + 360) = 0;
      *(a5 + 368) = 0;
      *(a5 + 376) = 0;
      *(a5 + 360) = *(v7 + 160);
      *(a5 + 376) = *(v7 + 176);
      *(v7 + 160) = 0;
      *(v7 + 168) = 0;
      *(v7 + 176) = 0;
      *(a5 + 384) = a5 + 400;
      *(a5 + 392) = 0;
      if (*(v7 + 192))
      {
        v12 = a5 + 384;
        v11 = (v7 + 184);
        goto LABEL_29;
      }
    }
  }

  else if (a4 == 1)
  {
    *a5 = *result;
    v8 = *(result + 8);
    v9 = *(result + 16);
    *(a5 + 24) = a5 + 40;
    result = a5 + 24;
    *(a5 + 16) = v9;
    *(a5 + 8) = v8;
    *(a5 + 32) = 0x400000000;
    if (*(v7 + 32))
    {
      result = sub_1000A8718(result, (v7 + 24));
    }

    *(a5 + 136) = 0;
    *(a5 + 144) = 0;
    *(a5 + 152) = 0;
    *(a5 + 136) = *(v7 + 136);
    *(a5 + 152) = *(v7 + 152);
    *(v7 + 136) = 0;
    *(v7 + 144) = 0;
    *(v7 + 152) = 0;
    *(a5 + 160) = 0;
    *(a5 + 168) = 0;
    *(a5 + 176) = 0;
    *(a5 + 160) = *(v7 + 160);
    *(a5 + 176) = *(v7 + 176);
    *(v7 + 160) = 0;
    *(v7 + 168) = 0;
    *(v7 + 176) = 0;
    *(a5 + 184) = a5 + 200;
    *(a5 + 192) = 0;
    v10 = a5 + 184;
    if (*(v7 + 192))
    {
      v11 = (v7 + 184);
      v12 = v10;
LABEL_29:

      return sub_1000A8718(v12, v11);
    }
  }

  else if (a4 > 8)
  {
    v21 = a4 >> 1;
    v22 = 200 * (a4 >> 1);
    sub_10012365C(result, v22 + result, a3, v21, a5, v21);
    sub_10012365C(v22 + v7, a2, a3, a4 - v21, a5 + v22, a4 - v21);

    return sub_100124DA0(v7, v22 + v7, v22 + v7, a2, a5);
  }

  else
  {

    return sub_1001248E0(result, a2, a5);
  }

  return result;
}

void sub_1001241D8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  if (!a6)
  {
    return;
  }

  while (a6 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return;
    }

    v10 = 0;
    v11 = -a5;
    while (*a2 >= a1[v10 / 8])
    {
      v10 += 200;
      if (__CFADD__(v11++, 1))
      {
        return;
      }
    }

    v13 = -v11;
    v54 = &a1[v10 / 8];
    if (-v11 >= a6)
    {
      if (v11 == -1)
      {
        v46 = &a1[v10 / 8];

        sub_100124590(v46, a2);
        return;
      }

      v22 = v13 / 2;
      v16 = &a1[25 * (v13 / 2) + v10 / 8];
      v15 = a2;
      if (a2 != a3)
      {
        v24 = 0x8F5C28F5C28F5C29 * (a3 - a2);
        v15 = a2;
        do
        {
          v25 = v24 >> 1;
          v26 = &v15[25 * (v24 >> 1)];
          v28 = *v26;
          v27 = (v26 + 25);
          v24 += ~(v24 >> 1);
          if (v28 < *v16)
          {
            v15 = v27;
          }

          else
          {
            v24 = v25;
          }
        }

        while (v24);
      }

      v14 = 0x8F5C28F5C28F5C29 * (v15 - a2);
      v23 = v15;
      if (a2 != v16)
      {
LABEL_27:
        v23 = v16;
        if (a2 != v15)
        {
          v47 = v14;
          v48 = a8;
          v49 = a4;
          v52 = a6;
          v53 = a1;
          v51 = a3;
          sub_100124590(v16, a2);
          v23 = v16 + 25;
          v29 = a2 + 25;
          for (i = a7; v29 != v15; v29 += 25)
          {
            if (v23 == a2)
            {
              a2 = v29;
            }

            sub_100124590(v23, v29);
            v23 += 25;
          }

          if (v23 != a2)
          {
            v30 = v23;
            v31 = a2;
            while (1)
            {
              sub_100124590(v30, v31);
              v31 += 25;
              v32 = v30 + 25 == a2;
              if (v31 == v15)
              {
                if (v30 + 25 == a2)
                {
                  break;
                }

                v31 = a2 + 25;
                v30 += 50;
                while (1)
                {
                  sub_100124590(v30 - 25, a2);
                  v32 = v30 == a2;
                  if (v31 != v15)
                  {
                    break;
                  }

                  v33 = v30 == a2;
                  v30 += 25;
                  if (v33)
                  {
                    goto LABEL_44;
                  }
                }
              }

              else
              {
                v30 += 25;
              }

              if (v32)
              {
                a2 = v31;
              }
            }
          }

LABEL_44:
          a3 = v51;
          a6 = v52;
          a1 = v53;
          a4 = v49;
          a7 = i;
          v14 = v47;
          a8 = v48;
        }
      }
    }

    else
    {
      v14 = a6 / 2;
      v15 = &a2[25 * (a6 / 2)];
      v16 = a2;
      if (a2 - a1 != v10)
      {
        v17 = 0x8F5C28F5C28F5C29 * ((a2 - a1 - v10) >> 3);
        v16 = &a1[v10 / 8];
        do
        {
          v18 = v17 >> 1;
          v19 = &v16[25 * (v17 >> 1)];
          v21 = *v19;
          v20 = v19 + 25;
          v17 += ~(v17 >> 1);
          if (*v15 < v21)
          {
            v17 = v18;
          }

          else
          {
            v16 = v20;
          }
        }

        while (v17);
      }

      v22 = 0x8F5C28F5C28F5C29 * ((v16 - a1 - v10) >> 3);
      v23 = &a2[25 * (a6 / 2)];
      if (a2 != v16)
      {
        goto LABEL_27;
      }
    }

    v34 = -v11 - v22;
    v35 = a6 - v14;
    if (v22 + v14 >= a6 - (v22 + v14) - v11)
    {
      v38 = a4;
      v44 = v22;
      v41 = a7;
      v45 = a7;
      v43 = a8;
      v35 = v14;
      sub_1001241D8(v23, v15, a3, a4, v34, a6 - v14, v45);
      a2 = v16;
      a5 = v44;
      a3 = v23;
      a1 = v54;
    }

    else
    {
      v36 = &a1[v10 / 8];
      v37 = a3;
      v38 = a4;
      v39 = v34;
      v40 = v22;
      v41 = a7;
      v42 = a7;
      v43 = a8;
      sub_1001241D8(v36, v16, v23, a4, v40, v14, v42);
      a5 = v39;
      a3 = v37;
      a1 = v23;
      a2 = v15;
    }

    a6 = v35;
    a4 = v38;
    a8 = v43;
    a7 = v41;
    if (!v35)
    {
      return;
    }
  }

  sub_1001250E4(a1, a2, a3, a4, a5, a6, a7);
}

void sub_100124590(uint64_t *a1, uint64_t *a2)
{
  v4 = (a1 + 1);
  v13 = *a1;
  v14 = a1[1];
  v15 = *(a1 + 4);
  v16[0] = v17;
  v16[1] = 0x400000000;
  if (*(a1 + 8))
  {
    sub_1000A8718(v16, a1 + 3);
  }

  *v18 = *(a1 + 17);
  v19 = a1[19];
  a1[17] = 0;
  a1[18] = 0;
  *__p = *(a1 + 10);
  v5 = a1[22];
  a1[19] = 0;
  a1[20] = 0;
  a1[21] = 0;
  a1[22] = 0;
  v21 = v5;
  v22[0] = &v23;
  v22[1] = 0;
  if (*(a1 + 48))
  {
    sub_1000A8718(v22, a1 + 23);
  }

  *a1 = *a2;
  sub_100124764(v4, a2 + 1);
  *a2 = v13;
  sub_100124764((a2 + 1), &v14);
  if (v22[0] != &v23)
  {
    free(v22[0]);
  }

  v6 = __p[0];
  if (__p[0])
  {
    v7 = __p[1];
    v8 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = sub_100052FFC(v7 - 1);
      }

      while (v7 != v6);
      v8 = __p[0];
    }

    __p[1] = v6;
    operator delete(v8);
  }

  v9 = v18[0];
  if (v18[0])
  {
    v10 = v18[1];
    v11 = v18[0];
    if (v18[1] != v18[0])
    {
      do
      {
        v12 = *--v10;
        *v10 = 0;
        if (v12)
        {
          operator delete[]();
        }
      }

      while (v10 != v9);
      v11 = v18[0];
    }

    v18[1] = v9;
    operator delete(v11);
  }

  if (v16[0] != v17)
  {
    free(v16[0]);
  }
}

uint64_t sub_100124764(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  sub_1000A8718(a1 + 16, a2 + 2);
  v5 = (a1 + 128);
  v6 = *(a1 + 128);
  if (v6)
  {
    v7 = *(a1 + 136);
    v8 = *(a1 + 128);
    if (v7 != v6)
    {
      do
      {
        v9 = *--v7;
        *v7 = 0;
        if (v9)
        {
          operator delete[]();
        }
      }

      while (v7 != v6);
      v8 = *v5;
    }

    *(a1 + 136) = v6;
    operator delete(v8);
    *v5 = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
  }

  *(a1 + 128) = *(a2 + 8);
  *(a1 + 144) = a2[18];
  a2[16] = 0;
  a2[17] = 0;
  a2[18] = 0;
  v10 = (a1 + 152);
  v11 = *(a1 + 152);
  if (v11)
  {
    v12 = *(a1 + 160);
    v13 = *(a1 + 152);
    if (v12 != v11)
    {
      do
      {
        v12 = sub_100052FFC(v12 - 1);
      }

      while (v12 != v11);
      v13 = *v10;
    }

    *(a1 + 160) = v11;
    operator delete(v13);
    *v10 = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
  }

  *(a1 + 152) = *(a2 + 19);
  *(a1 + 168) = a2[21];
  a2[19] = 0;
  a2[20] = 0;
  a2[21] = 0;
  if (a1 != a2)
  {
    v15 = (a2 + 23);
    v14 = *(a2 + 46);
    if (v14)
    {
      v16 = *(a1 + 176);
      if (v16 != (a1 + 192))
      {
        free(v16);
        v14 = *v15;
      }

      *(a1 + 176) = a2[22];
      v17 = *(a2 + 47);
      *(a1 + 184) = v14;
      *(a1 + 188) = v17;
      a2[22] = (a2 + 24);
      *(a2 + 47) = 0;
    }

    else
    {
      v15 = (a1 + 184);
    }

    *v15 = 0;
  }

  return a1;
}

uint64_t sub_1001248E0(uint64_t result, unint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    *a3 = *result;
    v6 = *(result + 8);
    v7 = *(result + 16);
    *(a3 + 24) = a3 + 40;
    *(a3 + 16) = v7;
    *(a3 + 8) = v6;
    *(a3 + 32) = 0x400000000;
    if (*(result + 32))
    {
      sub_1000A8718(a3 + 24, (result + 24));
    }

    *(a3 + 136) = 0;
    *(a3 + 144) = 0;
    *(a3 + 152) = 0;
    *(a3 + 136) = *(v5 + 17);
    *(a3 + 152) = v5[19];
    v5[17] = 0;
    v5[18] = 0;
    v5[19] = 0;
    *(a3 + 160) = 0;
    *(a3 + 168) = 0;
    *(a3 + 176) = 0;
    *(a3 + 160) = *(v5 + 10);
    *(a3 + 176) = v5[22];
    v5[20] = 0;
    v5[21] = 0;
    v5[22] = 0;
    *(a3 + 184) = a3 + 200;
    *(a3 + 192) = 0;
    result = a3 + 184;
    if (*(v5 + 48))
    {
      result = sub_1000A8718(result, v5 + 23);
    }

    v8 = v5 + 25;
    if (v5 + 25 != a2)
    {
      v9 = a3;
      do
      {
        v11 = v5;
        v5 = v8;
        v12 = *v8;
        v13 = v9 + 240;
        if (v12 >= *v9)
        {
          *(v9 + 200) = v12;
          v38 = v11[26];
          *(v9 + 216) = *(v11 + 54);
          *(v9 + 208) = v38;
          *(v9 + 224) = v13;
          *(v9 + 232) = 0x400000000;
          if (*(v11 + 58))
          {
            result = sub_1000A8718(v9 + 224, v11 + 28);
          }

          *(v9 + 336) = 0;
          *(v9 + 344) = 0;
          *(v9 + 352) = 0;
          *(v9 + 336) = *(v11 + 21);
          *(v9 + 352) = v11[44];
          v11[42] = 0;
          v11[43] = 0;
          v11[44] = 0;
          *(v9 + 360) = 0;
          *(v9 + 368) = 0;
          *(v9 + 376) = 0;
          *(v9 + 360) = v11[45];
          *(v9 + 368) = *(v11 + 23);
          v11[45] = 0;
          v11[46] = 0;
          v11[47] = 0;
          *(v9 + 384) = v9 + 400;
          *(v9 + 392) = 0;
          if (*(v11 + 98))
          {
            result = sub_1000A8718(v9 + 384, v11 + 48);
          }
        }

        else
        {
          v14 = *(v9 + 8);
          *(v9 + 200) = *v9;
          *(v9 + 208) = v14;
          *(v9 + 216) = *(v9 + 16);
          *(v9 + 224) = v13;
          *(v9 + 232) = 0x400000000;
          if (*(v9 + 32))
          {
            sub_1000A8718(v9 + 224, (v9 + 24));
          }

          *(v9 + 336) = *(v9 + 136);
          *(v9 + 352) = *(v9 + 152);
          *(v9 + 136) = 0;
          *(v9 + 144) = 0;
          *(v9 + 360) = *(v9 + 160);
          v15 = *(v9 + 176);
          *(v9 + 152) = 0;
          *(v9 + 160) = 0;
          *(v9 + 168) = 0;
          *(v9 + 176) = 0;
          *(v9 + 376) = v15;
          *(v9 + 384) = v9 + 400;
          *(v9 + 392) = 0;
          if (*(v9 + 192))
          {
            sub_1000A8718(v9 + 384, (v9 + 184));
          }

          v10 = a3;
          if (v9 != a3)
          {
            v10 = v9;
            v16 = v9;
            while (1)
            {
              v18 = *(v16 - 200);
              v16 -= 200;
              v17 = v18;
              if (*v5 >= v18)
              {
                break;
              }

              v19 = *(v10 - 192);
              *v10 = v17;
              *(v10 + 8) = v19;
              *(v10 + 16) = *(v10 - 184);
              v20 = *(v10 - 176);
              if (v20 != (v10 - 160))
              {
                v21 = *(v10 + 24);
                if (v21 != (v10 + 40))
                {
                  free(v21);
                  v20 = *(v10 - 176);
                }

                *(v10 + 24) = v20;
                *(v10 + 32) = *(v10 - 168);
                *(v10 - 176) = v10 - 160;
                *(v10 - 168) = 0;
                v22 = *(v10 + 136);
                if (!v22)
                {
                  goto LABEL_42;
                }

LABEL_35:
                v26 = *(v10 + 144);
                v27 = v22;
                if (v26 != v22)
                {
                  do
                  {
                    v28 = *--v26;
                    *v26 = 0;
                    if (v28)
                    {
                      operator delete[]();
                    }
                  }

                  while (v26 != v22);
                  v27 = *(v10 + 136);
                }

                *(v10 + 144) = v22;
                operator delete(v27);
                goto LABEL_42;
              }

              v23 = *(v10 - 168);
              v24 = *(v10 + 32);
              if (v24 >= v23)
              {
                if (v23)
                {
                  memmove(*(v10 + 24), v20, 24 * v23);
                }
              }

              else if (*(v10 + 36) >= v23)
              {
                if (v24)
                {
                  memmove(*(v10 + 24), v20, 24 * v24);
                  v25 = *(v10 - 168) - v24;
                  if (!v25)
                  {
                    goto LABEL_34;
                  }

LABEL_33:
                  memcpy((*(v10 + 24) + 24 * v24), (*(v10 - 176) + 24 * v24), 24 * v25);
                  goto LABEL_34;
                }

                v24 = 0;
                v25 = *(v10 - 168);
                if (*(v10 - 168))
                {
                  goto LABEL_33;
                }
              }

              else
              {
                *(v10 + 32) = 0;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v10 + 24, (v10 + 40), v23, 24);
                v24 = 0;
                v25 = *(v10 - 168);
                if (*(v10 - 168))
                {
                  goto LABEL_33;
                }
              }

LABEL_34:
              *(v10 + 32) = v23;
              *(v10 - 168) = 0;
              v22 = *(v10 + 136);
              if (v22)
              {
                goto LABEL_35;
              }

LABEL_42:
              v29 = (v10 - 64);
              *(v10 + 136) = *(v10 - 64);
              *(v10 + 152) = *(v10 - 48);
              v29[1] = 0;
              v29[2] = 0;
              *v29 = 0;
              v30 = *(v10 + 160);
              if (v30)
              {
                v31 = *(v10 + 168);
                v32 = *(v10 + 160);
                if (v31 != v30)
                {
                  do
                  {
                    v31 = sub_100052FFC(v31 - 1);
                  }

                  while (v31 != v30);
                  v32 = *(v10 + 160);
                }

                *(v10 + 168) = v30;
                operator delete(v32);
              }

              v33 = (v10 - 40);
              v35 = (v10 - 8);
              v34 = *(v10 - 8);
              *(v10 + 160) = *(v10 - 40);
              *(v10 + 176) = *(v10 - 24);
              v33[1] = 0;
              v33[2] = 0;
              *v33 = 0;
              if (v34)
              {
                v36 = *(v10 + 184);
                if (v36 != (v10 + 200))
                {
                  free(v36);
                  v34 = *v35;
                }

                *(v10 + 184) = *(v10 - 16);
                v37 = *(v10 - 4);
                *(v10 + 192) = v34;
                *(v10 + 196) = v37;
                *(v10 - 16) = v10;
                *(v10 - 4) = 0;
                *v35 = 0;
                v10 = v16;
                if (v16 == a3)
                {
LABEL_8:
                  v10 = a3;
                  break;
                }
              }

              else
              {
                *(v10 + 192) = 0;
                v10 = v16;
                if (v16 == a3)
                {
                  goto LABEL_8;
                }
              }
            }
          }

          *v10 = *v5;
          result = sub_100124764(v10 + 8, v11 + 26);
        }

        v9 += 200;
        v8 = v5 + 25;
      }

      while (v5 + 25 != a2);
    }
  }

  return result;
}

uint64_t sub_100124DA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  if (result == a2)
  {
LABEL_24:
    if (a3 != a4)
    {
      v20 = 0;
      do
      {
        v21 = (v5 + v20);
        v22 = a3 + v20;
        *(v5 + v20) = *(a3 + v20);
        v23 = *(a3 + v20 + 8);
        v24 = *(a3 + v20 + 16);
        *(v5 + v20 + 24) = v5 + v20 + 40;
        result = v5 + v20 + 24;
        *(result - 8) = v24;
        *(result - 16) = v23;
        *(result + 8) = 0x400000000;
        if (*(a3 + v20 + 32))
        {
          result = sub_1000A8718(result, (v22 + 24));
        }

        v21[17] = 0;
        v21[18] = 0;
        v21[19] = 0;
        *(v21 + 17) = *(v22 + 136);
        v21[19] = *(v22 + 152);
        *(v22 + 136) = 0;
        *(v22 + 144) = 0;
        *(v22 + 152) = 0;
        v21[20] = 0;
        v21[21] = 0;
        v21[22] = 0;
        *(v21 + 10) = *(v22 + 160);
        v21[22] = *(v22 + 176);
        *(v22 + 160) = 0;
        *(v22 + 168) = 0;
        *(v22 + 176) = 0;
        v21[23] = v21 + 25;
        v21[24] = 0;
        v25 = (v21 + 23);
        if (*(v22 + 192))
        {
          result = sub_1000A8718(v25, (a3 + v20 + 184));
        }

        v20 += 200;
      }

      while (v22 + 200 != a4);
    }
  }

  else
  {
    v9 = result;
    v10 = a5 + 200;
    while (a3 != a4)
    {
      v11 = (v10 - 192);
      result = v10 - 176;
      v12 = v10 - 160;
      if (*a3 >= *v9)
      {
        *(v10 - 200) = *v9;
        v14 = *(v9 + 8);
        *(v10 - 184) = *(v9 + 16);
        *v11 = v14;
        *(v10 - 176) = v12;
        *(v10 - 168) = 0x400000000;
        if (*(v9 + 32))
        {
          result = sub_1000A8718(result, (v9 + 24));
        }

        *(v10 - 64) = 0;
        *(v10 - 56) = 0;
        *(v10 - 48) = 0;
        *(v10 - 64) = *(v9 + 136);
        *(v10 - 48) = *(v9 + 152);
        *(v9 + 136) = 0;
        *(v9 + 144) = 0;
        *(v9 + 152) = 0;
        *(v10 - 40) = 0;
        *(v10 - 32) = 0;
        *(v10 - 24) = 0;
        *(v10 - 40) = *(v9 + 160);
        *(v10 - 24) = *(v9 + 176);
        *(v9 + 160) = 0;
        *(v9 + 168) = 0;
        *(v9 + 176) = 0;
        *(v10 - 16) = v10;
        *(v10 - 8) = 0;
        if (*(v9 + 192))
        {
          result = sub_1000A8718(v10 - 16, (v9 + 184));
        }

        v9 += 200;
        v10 += 200;
        if (v9 == a2)
        {
LABEL_23:
          v5 = v10 - 200;
          goto LABEL_24;
        }
      }

      else
      {
        *(v10 - 200) = *a3;
        v13 = *(a3 + 8);
        *(v10 - 184) = *(a3 + 16);
        *v11 = v13;
        *(v10 - 176) = v12;
        *(v10 - 168) = 0x400000000;
        if (*(a3 + 32))
        {
          result = sub_1000A8718(result, (a3 + 24));
        }

        *(v10 - 64) = 0;
        *(v10 - 56) = 0;
        *(v10 - 48) = 0;
        *(v10 - 64) = *(a3 + 136);
        *(v10 - 48) = *(a3 + 152);
        *(a3 + 136) = 0;
        *(a3 + 144) = 0;
        *(a3 + 152) = 0;
        *(v10 - 40) = 0;
        *(v10 - 32) = 0;
        *(v10 - 24) = 0;
        *(v10 - 40) = *(a3 + 160);
        *(v10 - 24) = *(a3 + 176);
        *(a3 + 160) = 0;
        *(a3 + 168) = 0;
        *(a3 + 176) = 0;
        *(v10 - 16) = v10;
        *(v10 - 8) = 0;
        if (*(a3 + 192))
        {
          result = sub_1000A8718(v10 - 16, (a3 + 184));
        }

        a3 += 200;
        v10 += 200;
        if (v9 == a2)
        {
          goto LABEL_23;
        }
      }
    }

    if (v9 != a2)
    {
      v15 = 0;
      do
      {
        v16 = v10 + v15;
        v17 = v9 + v15;
        *(v10 + v15 - 200) = *(v9 + v15);
        v18 = *(v9 + v15 + 8);
        v19 = *(v9 + v15 + 16);
        *(v10 + v15 - 176) = v10 + v15 - 160;
        result = v10 + v15 - 176;
        *(result - 8) = v19;
        *(result - 16) = v18;
        *(result + 8) = 0x400000000;
        if (*(v9 + v15 + 32))
        {
          result = sub_1000A8718(result, (v17 + 24));
        }

        *(v16 - 64) = 0;
        *(v16 - 56) = 0;
        *(v16 - 48) = 0;
        *(v16 - 64) = *(v17 + 136);
        *(v16 - 48) = *(v17 + 152);
        *(v17 + 136) = 0;
        *(v17 + 144) = 0;
        *(v17 + 152) = 0;
        *(v16 - 40) = 0;
        *(v16 - 32) = 0;
        *(v16 - 24) = 0;
        *(v16 - 40) = *(v17 + 160);
        *(v16 - 24) = *(v17 + 176);
        *(v17 + 160) = 0;
        *(v17 + 168) = 0;
        *(v17 + 176) = 0;
        *(v16 - 16) = v16;
        *(v16 - 8) = 0;
        if (*(v17 + 192))
        {
          result = sub_1000A8718(v16 - 16, (v9 + v15 + 184));
        }

        v15 += 200;
      }

      while (v17 + 200 != a2);
    }
  }

  return result;
}

void *sub_1001250E4(void *result, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = a2;
  v10 = result;
  if (a5 <= a6)
  {
    if (result == a2)
    {
      return result;
    }

    v18 = 0;
    v12 = 0;
    do
    {
      v19 = &a7[v18];
      v20 = &v10[v18];
      a7[v18] = v10[v18];
      v21 = v10[v18 + 1];
      v22 = v10[v18 + 2];
      a7[v18 + 3] = &a7[v18 + 5];
      v23 = &a7[v18 + 3];
      *(v23 - 8) = v22;
      *(v23 - 16) = v21;
      *(v23 + 8) = 0x400000000;
      if (LODWORD(v10[v18 + 4]))
      {
        sub_1000A8718(v23, v20 + 3);
      }

      v19[17] = 0;
      v19[18] = 0;
      v19[19] = 0;
      *(v19 + 17) = *(v20 + 17);
      v19[19] = v20[19];
      v20[17] = 0;
      v20[18] = 0;
      v20[19] = 0;
      v19[20] = 0;
      v19[21] = 0;
      v19[22] = 0;
      *(v19 + 10) = *(v20 + 10);
      v19[22] = v20[22];
      v20[20] = 0;
      v20[21] = 0;
      v20[22] = 0;
      v19[23] = v19 + 25;
      v19[24] = 0;
      v24 = (v19 + 23);
      if (*(v20 + 48))
      {
        sub_1000A8718(v24, &v10[v18 + 23]);
      }

      ++v12;
      v18 += 25;
    }

    while (v20 + 25 != v9);
    v32 = &a7[v18];
    v33 = &a7[v18 - 25];
    v34 = a7;
    while (v9 != a3)
    {
      if (*v9 >= *v34)
      {
        *v10 = *v34;
        result = sub_100124764((v10 + 1), v34 + 1);
        v34 += 25;
        v10 += 25;
        if (v32 == v34)
        {
          goto LABEL_40;
        }
      }

      else
      {
        *v10 = *v9;
        result = sub_100124764((v10 + 1), v9 + 1);
        v9 += 25;
        v10 += 25;
        if (v32 == v34)
        {
          goto LABEL_40;
        }
      }
    }

    v37 = 0;
    do
    {
      v38 = &v34[v37];
      v10[v37] = v34[v37];
      result = sub_100124764(&v10[v37 + 1], &v34[v37 + 1]);
      v37 += 25;
    }

    while (v33 != v38);
  }

  else
  {
    if (a2 == a3)
    {
      return result;
    }

    v11 = 0;
    v12 = 0;
    do
    {
      v13 = &a7[v11];
      v14 = &v9[v11];
      a7[v11] = v9[v11];
      v15 = v9[v11 + 1];
      v16 = v9[v11 + 2];
      a7[v11 + 3] = &a7[v11 + 5];
      result = &a7[v11 + 3];
      *(result - 2) = v16;
      *(result - 2) = v15;
      result[1] = 0x400000000;
      if (LODWORD(v9[v11 + 4]))
      {
        result = sub_1000A8718(result, v14 + 3);
      }

      v13[17] = 0;
      v13[18] = 0;
      v13[19] = 0;
      *(v13 + 17) = *(v14 + 17);
      v13[19] = v14[19];
      v14[17] = 0;
      v14[18] = 0;
      v14[19] = 0;
      v13[20] = 0;
      v13[21] = 0;
      v13[22] = 0;
      *(v13 + 10) = *(v14 + 10);
      v13[22] = v14[22];
      v14[20] = 0;
      v14[21] = 0;
      v14[22] = 0;
      v13[23] = v13 + 25;
      v13[24] = 0;
      v17 = (v13 + 23);
      if (*(v14 + 48))
      {
        result = sub_1000A8718(v17, &v9[v11 + 23]);
      }

      ++v12;
      v11 += 25;
    }

    while (v14 + 25 != a3);
    v25 = a3 - 25;
    v26 = &a7[v11];
    while (v9 != v10)
    {
      v27 = *(v26 - 25);
      v28 = *(v9 - 25);
      v29 = v27 >= v28;
      if (v27 <= v28)
      {
        v27 = *(v9 - 25);
      }

      if (v29)
      {
        v30 = v26;
      }

      else
      {
        v30 = v9;
      }

      if (v29)
      {
        v26 -= 25;
      }

      else
      {
        v9 -= 25;
      }

      *v25 = v27;
      v31 = v25 - 25;
      result = sub_100124764((v25 + 1), v30 - 24);
      v25 = v31;
      if (v26 == a7)
      {
        goto LABEL_40;
      }
    }

    if (v26 != a7)
    {
      v35 = v25;
      do
      {
        v36 = *(v26 - 25);
        v26 -= 25;
        *v35 = v36;
        v35 -= 25;
        result = sub_100124764((v25 + 1), v26 + 1);
        v25 = v35;
      }

      while (v26 != a7);
    }
  }

LABEL_40:
  if (a7 && v12)
  {
    result = a7 + 1;
    do
    {
      result = sub_100052F18(result) + 25;
      --v12;
    }

    while (v12);
  }

  return result;
}

void sub_100125418(uint64_t a1, uint64_t *a2)
{
  v3 = *mlir::MLIRContext::getDiagEngine(*(*a1 + 144));

  mlir::detail::DiagnosticEngineImpl::emit(v3, a2);
}

void sub_100125460(llvm::raw_ostream **a1, uint64_t *a2)
{
  llvm::raw_ostream::indent(*a1, 4u);
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
  {
LABEL_4:
    v6 = *(a2 + 2);
    if (v6 <= 1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v4 = *a1;
  v18 = *a2;
  mlir::Attribute::print(&v18, v4);
  v5 = *(v4 + 4);
  if (*(v4 + 3) - v5 <= 1uLL)
  {
    llvm::raw_ostream::write(v4, ": ", 2uLL);
    goto LABEL_4;
  }

  *v5 = 8250;
  *(v4 + 4) += 2;
  v6 = *(a2 + 2);
  if (v6 <= 1)
  {
LABEL_5:
    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_23;
      }

      v7 = *a1;
      v8 = *(*a1 + 4);
      if ((*(*a1 + 3) - v8) <= 8)
      {
        llvm::raw_ostream::write(v7, "warning: ", 9uLL);
        goto LABEL_23;
      }

      *(v8 + 8) = 32;
      *v8 = *"warning: ";
      v12 = *(v7 + 4) + 9;
    }

    else
    {
      v7 = *a1;
      v10 = *(*a1 + 4);
      if ((*(*a1 + 3) - v10) <= 5)
      {
        llvm::raw_ostream::write(v7, "note: ", 6uLL);
        goto LABEL_23;
      }

      *(v10 + 4) = 8250;
      *v10 = 1702129518;
      v12 = *(v7 + 4) + 6;
    }

    goto LABEL_22;
  }

LABEL_10:
  if (v6 == 3)
  {
    v7 = *a1;
    v11 = *(*a1 + 4);
    if (*(*a1 + 3) - v11 <= 7uLL)
    {
      llvm::raw_ostream::write(v7, "remark: ", 8uLL);
      goto LABEL_23;
    }

    *v11 = 0x203A6B72616D6572;
    v12 = *(v7 + 4) + 8;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_23;
    }

    v7 = *a1;
    v9 = *(*a1 + 4);
    if (*(*a1 + 3) - v9 <= 6uLL)
    {
      llvm::raw_ostream::write(v7, "error: ", 7uLL);
      goto LABEL_23;
    }

    *(v9 + 3) = 540701295;
    *v9 = 1869771365;
    v12 = *(v7 + 4) + 7;
  }

LABEL_22:
  *(v7 + 4) = v12;
LABEL_23:
  v13 = *a1;
  v14 = *(a2 + 6);
  if (v14)
  {
    v15 = a2[2];
    v16 = 24 * v14;
    do
    {
      mlir::DiagnosticArgument::print(v15, v13);
      v15 = (v15 + 24);
      v16 -= 24;
    }

    while (v16);
  }

  v17 = *(v13 + 4);
  if (v17 >= *(v13 + 3))
  {
    llvm::raw_ostream::write(v13, 10);
  }

  else
  {
    *(v13 + 4) = v17 + 1;
    *v17 = 10;
  }
}

void sub_1001256D4(int a1, std::recursive_mutex *this)
{
  if (this)
  {
    v3 = *&this[1].__m_.__opaque[40];
    v4 = *&this[1].__m_.__opaque[48];
    if (v4)
    {
      v5 = v3 + 40 * v4 - 32;
      v6 = -40 * v4;
      do
      {
        v7 = *(v5 + 24);
        if (v7 >= 8)
        {
          if ((v7 & 4) != 0)
          {
            v8 = v5;
            if ((v7 & 2) == 0)
            {
              v8 = *v5;
            }

            (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))(v8);
          }

          if ((v7 & 2) == 0)
          {
            llvm::deallocate_buffer(*v5, *(v5 + 8), *(v5 + 16));
          }
        }

        v5 -= 40;
        v6 += 40;
      }

      while (v6);
      v3 = *&this[1].__m_.__opaque[40];
    }

    if (v3 != &this[2])
    {
      free(v3);
    }

    if ((this[1].__m_.__opaque[0] & 1) == 0)
    {
      llvm::deallocate_buffer(*&this[1].__m_.__opaque[8], (16 * *&this[1].__m_.__opaque[16]), 8uLL);
    }

    std::recursive_mutex::~recursive_mutex(this);

    operator delete();
  }
}

uint64_t sub_1001257C8(unsigned int *a1, void *a2, uint64_t a3)
{
  v13 = *a2;
  v14 = 0;
  sub_100125924(a1, &v13, &v14, &v15);
  if (v16 != 1)
  {
    return *(a1 + 5) + 40 * *(v15 + 8);
  }

  v6 = a1[12];
  *(v15 + 8) = v6;
  v12 = a3;
  v13 = a2;
  if (v6 >= a1[13])
  {
    sub_10012604C(a1 + 10, &std::piecewise_construct, &v13, &v12);
    v11 = a1[12];
  }

  else
  {
    v7 = *(a1 + 5) + 40 * v6;
    *v7 = *a2;
    *(v7 + 32) = 0;
    v8 = *(a3 + 24);
    *(v7 + 32) = v8;
    if (v8 >= 8)
    {
      if ((v8 & 2) != 0 && (v8 & 4) != 0)
      {
        (*((v8 & 0xFFFFFFFFFFFFFFF8) + 8))(v7 + 8, a3);
        (*((*(v7 + 32) & 0xFFFFFFFFFFFFFFF8) + 16))(a3);
      }

      else
      {
        v9 = *a3;
        *(v7 + 24) = *(a3 + 16);
        *(v7 + 8) = v9;
      }

      *(a3 + 24) = 0;
    }

    v11 = a1[12] + 1;
    a1[12] = v11;
  }

  return *(a1 + 5) + 40 * v11 - 40;
}

unsigned int *sub_100125924@<X0>(unsigned int *result@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result + 2;
  v4 = *result;
  v6 = *result & 1;
  if (v6)
  {
    v7 = 2;
    v8 = result + 2;
  }

  else
  {
    v7 = result[4];
    if (!v7)
    {
      v11 = 0;
      v14 = 0;
      v24 = 0;
      goto LABEL_11;
    }

    v8 = *(result + 1);
  }

  v9 = v7 - 1;
  v10 = (v7 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
  v11 = &v8[4 * v10];
  v12 = *v11;
  if (*a2 == *v11)
  {
LABEL_6:
    if (v6)
    {
      v13 = 2;
    }

    else
    {
      v5 = *(result + 1);
      v13 = result[4];
    }

    *a4 = v11;
    *(a4 + 8) = &v5[4 * v13];
    *(a4 + 16) = 0;
    return result;
  }

  v16 = 0;
  v17 = 1;
  while (v12 != -1)
  {
    if (v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v12 == -2;
    }

    if (v18)
    {
      v16 = v11;
    }

    v19 = v10 + v17++;
    v10 = v19 & v9;
    v11 = &v8[4 * (v19 & v9)];
    v12 = *v11;
    if (*a2 == *v11)
    {
      goto LABEL_6;
    }
  }

  if (v16)
  {
    v11 = v16;
  }

  v24 = v11;
  if (v6)
  {
    v14 = 2;
  }

  else
  {
    v14 = result[4];
  }

LABEL_11:
  if (4 * (v4 >> 1) + 4 >= 3 * v14)
  {
    v14 *= 2;
    goto LABEL_34;
  }

  if (v14 + ~(v4 >> 1) - result[1] <= v14 >> 3)
  {
LABEL_34:
    v22 = a2;
    v23 = result;
    v20 = a3;
    v21 = a4;
    sub_100125BD4(result, v14);
    sub_100125B0C(v23, v22, &v24);
    a2 = v22;
    result = v23;
    a3 = v20;
    a4 = v21;
    v4 = *v23;
    v11 = v24;
    v6 = *v23 & 1;
  }

  *result = (v4 & 0xFFFFFFFE | v6) + 2;
  if (*v11 != -1)
  {
    --result[1];
  }

  *v11 = *a2;
  v11[2] = *a3;
  if (*result)
  {
    v15 = 2;
  }

  else
  {
    v5 = *(result + 1);
    v15 = result[4];
  }

  *a4 = v11;
  *(a4 + 8) = &v5[4 * v15];
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_100125B0C(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 2;
LABEL_5:
    v5 = v4 - 1;
    v6 = (v4 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v7 = (v3 + 16 * v6);
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
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v3 + 16 * (v13 & v5));
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

void sub_100125BD4(unsigned int *a1, unsigned int a2)
{
  if (a2 >= 3)
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

  v6 = *a1;
  if ((*a1 & 1) == 0)
  {
    v7 = *(a1 + 1);
    v8 = a1[4];
    if (a2 > 2)
    {
      v20 = a2;
      buffer = llvm::allocate_buffer((16 * a2), 8uLL);
      *(a1 + 1) = buffer;
      *(a1 + 2) = v20;
      v22 = *a1;
      v9 = (v7 + 16 * v8);
      *a1 = *a1 & 1;
      if ((v22 & 1) == 0)
      {
        v23 = &buffer[2 * v20];
        v24 = 16 * v20 - 16;
        if (v24 < 0x10)
        {
          v26 = buffer;
          do
          {
LABEL_26:
            *v26 = -1;
            v26 += 2;
          }

          while (v26 != v23);
LABEL_27:
          if (v8)
          {
            v29 = v7;
            do
            {
              v35 = *v29;
              if (*v29 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                if (*a1)
                {
                  v31 = 1;
                  v30 = (a1 + 2);
                }

                else
                {
                  v30 = *(a1 + 1);
                  v31 = a1[4] - 1;
                }

                v32 = v31 & (((0xBF58476D1CE4E5B9 * v35) >> 31) ^ (484763065 * v35));
                v33 = &v30[4 * v32];
                v34 = *v33;
                if (v35 != *v33)
                {
                  v36 = 0;
                  v37 = 1;
                  while (v34 != -1)
                  {
                    if (v36)
                    {
                      v38 = 0;
                    }

                    else
                    {
                      v38 = v34 == -2;
                    }

                    if (v38)
                    {
                      v36 = v33;
                    }

                    v39 = v32 + v37++;
                    v32 = v39 & v31;
                    v33 = &v30[4 * (v39 & v31)];
                    v34 = *v33;
                    if (v35 == *v33)
                    {
                      goto LABEL_31;
                    }
                  }

                  if (v36)
                  {
                    v33 = v36;
                  }
                }

LABEL_31:
                *v33 = v35;
                *(v33 + 2) = *(v29 + 2);
                *a1 += 2;
              }

              v29 = (v29 + 16);
            }

            while (v29 != v9);
          }

          llvm::deallocate_buffer(v7, (16 * v8), 8uLL);
          return;
        }

LABEL_20:
        v25 = (v24 >> 4) + 1;
        v26 = &buffer[2 * (v25 & 0x1FFFFFFFFFFFFFFELL)];
        v27 = buffer + 2;
        v28 = v25 & 0x1FFFFFFFFFFFFFFELL;
        do
        {
          *(v27 - 2) = -1;
          *v27 = -1;
          v27 += 4;
          v28 -= 2;
        }

        while (v28);
        if (v25 == (v25 & 0x1FFFFFFFFFFFFFFELL))
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v9 = (v7 + 16 * v8);
      *a1 = 1;
    }

    v23 = a1 + 10;
    buffer = a1 + 2;
    v24 = 16;
    goto LABEL_20;
  }

  v10 = *(a1 + 1);
  v11 = &v53;
  if (v10 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v53 = *(a1 + 1);
    v54 = a1[4];
    v11 = &v55;
    v12 = *(a1 + 3);
    if (v12 > 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_10:
      if (a2 < 3)
      {
        goto LABEL_11;
      }

      goto LABEL_53;
    }
  }

  else
  {
    v12 = *(a1 + 3);
    if (v12 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_10;
    }
  }

  *v11 = v12;
  *(v11 + 2) = a1[8];
  v11 += 2;
  if (a2 < 3)
  {
LABEL_11:
    *a1 = v6 & 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_54:
    v14 = (a1 + 10);
    v10 = a1 + 2;
    v15 = 16;
    goto LABEL_14;
  }

LABEL_53:
  *a1 = v6 & 0xFFFFFFFE;
  v40 = a2;
  v10 = llvm::allocate_buffer((16 * a2), 8uLL);
  *(a1 + 1) = v10;
  *(a1 + 2) = v40;
  v41 = *a1;
  *a1 = *a1 & 1;
  if (v41)
  {
    goto LABEL_54;
  }

LABEL_12:
  v13 = a1[4];
  if (!v13)
  {
    goto LABEL_57;
  }

  v14 = &v10[2 * v13];
  v15 = v14 - v10 - 16;
  if (v15 < 0x10)
  {
    v17 = v10;
    do
    {
LABEL_56:
      *v17 = -1;
      v17 += 16;
    }

    while (v17 != v14);
    goto LABEL_57;
  }

LABEL_14:
  v16 = (v15 >> 4) + 1;
  v17 = &v10[2 * (v16 & 0x1FFFFFFFFFFFFFFELL)];
  v18 = v10 + 2;
  v19 = v16 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    *(v18 - 2) = -1;
    *v18 = -1;
    v18 += 4;
    v19 -= 2;
  }

  while (v19);
  if (v16 != (v16 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_56;
  }

LABEL_57:
  if (&v53 != v11)
  {
    v42 = &v53;
    do
    {
      v48 = *v42;
      if (*v42 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        if (*a1)
        {
          v44 = 1;
          v43 = (a1 + 2);
        }

        else
        {
          v43 = *(a1 + 1);
          v44 = a1[4] - 1;
        }

        v45 = v44 & (((0xBF58476D1CE4E5B9 * v48) >> 31) ^ (484763065 * v48));
        v46 = &v43[4 * v45];
        v47 = *v46;
        if (v48 != *v46)
        {
          v49 = 0;
          v50 = 1;
          while (v47 != -1)
          {
            if (v49)
            {
              v51 = 0;
            }

            else
            {
              v51 = v47 == -2;
            }

            if (v51)
            {
              v49 = v46;
            }

            v52 = v45 + v50++;
            v45 = v52 & v44;
            v46 = &v43[4 * (v52 & v44)];
            v47 = *v46;
            if (v48 == *v46)
            {
              goto LABEL_61;
            }
          }

          if (v49)
          {
            v46 = v49;
          }
        }

LABEL_61:
        *v46 = v48;
        *(v46 + 2) = *(v42 + 2);
        *a1 += 2;
      }

      v42 += 2;
    }

    while (v42 != v11);
  }
}

uint64_t sub_10012604C(unsigned int *a1, uint64_t a2, void **a3, __int128 **a4)
{
  v16 = 0;
  v7 = a1 + 4;
  v8 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 4, 0, 40, &v16);
  v9 = &v8[40 * a1[2]];
  v10 = *a4;
  *v9 = **a3;
  *(v9 + 4) = 0;
  v11 = *(v10 + 3);
  *(v9 + 4) = v11;
  if (v11 >= 8)
  {
    if ((v11 & 2) != 0 && (v11 & 4) != 0)
    {
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 8))(v9 + 8, v10);
      (*((*(v9 + 4) & 0xFFFFFFFFFFFFFFF8) + 16))(v10);
    }

    else
    {
      v12 = *v10;
      *(v9 + 3) = *(v10 + 2);
      *(v9 + 8) = v12;
    }

    *(v10 + 3) = 0;
  }

  sub_100126160(a1, v8);
  v13 = v16;
  if (*a1 != v7)
  {
    free(*a1);
  }

  *a1 = v8;
  v14 = a1[2] + 1;
  a1[2] = v14;
  a1[3] = v13;
  return &v8[40 * v14 - 40];
}

void sub_100126160(unsigned int *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2)
  {
    v4 = (*a1 + 32);
    v5 = (a2 + 32);
    v6 = 40 * v2;
    do
    {
      *(v5 - 4) = *(v4 - 4);
      *v5 = 0;
      v8 = *v4;
      *v5 = *v4;
      if (v8 >= 8)
      {
        v9 = v5 - 3;
        if ((v8 & 2) != 0 && (v8 & 4) != 0)
        {
          (*((v8 & 0xFFFFFFFFFFFFFFF8) + 8))(v9, v4 - 3);
          (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v4 - 3);
        }

        else
        {
          v7 = *(v4 - 3);
          *(v5 - 1) = *(v4 - 1);
          *v9 = v7;
        }

        *v4 = 0;
      }

      v4 += 5;
      v5 += 5;
      v6 -= 40;
    }

    while (v6);
    v10 = a1[2];
    if (v10)
    {
      v11 = *a1 + 40 * v10 - 32;
      v12 = -40 * v10;
      do
      {
        v13 = *(v11 + 24);
        if (v13 >= 8)
        {
          if ((v13 & 4) != 0)
          {
            v14 = v11;
            if ((v13 & 2) == 0)
            {
              v14 = *v11;
            }

            (*((v13 & 0xFFFFFFFFFFFFFFF8) + 16))(v14);
          }

          if ((v13 & 2) == 0)
          {
            llvm::deallocate_buffer(*v11, *(v11 + 8), *(v11 + 16));
          }
        }

        v11 -= 40;
        v12 += 40;
      }

      while (v12);
    }
  }
}

void *sub_100126298(int *a1, void *a2)
{
  v4 = (a1 + 2);
  if (*a1)
  {
    v5 = 2;
    v6 = a1 + 2;
  }

  else
  {
    v5 = a1[4];
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = *(a1 + 1);
  }

  v7 = v5 - 1;
  v8 = (v5 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
  v9 = *&v6[4 * (v7 & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2)))];
  if (*a2 == v9)
  {
LABEL_6:
    *&v6[4 * v8] = -2;
    v10 = a1[1] + 1;
    *a1 -= 2;
    a1[1] = v10;
  }

  else
  {
    v24 = 1;
    while (v9 != -1)
    {
      v25 = v8 + v24++;
      v8 = v25 & v7;
      v9 = *&v6[4 * v8];
      if (*a2 == v9)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  v11 = a1 + 10;
  sub_1001264E8(&v26, (a2 + 5), *(a1 + 5) + 40 * a1[12], a2);
  v12 = a1[12] - 1;
  a1[12] = v12;
  v13 = *v11 + 40 * v12;
  v14 = *(v13 + 32);
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v15 = (v13 + 8);
      if ((v14 & 2) == 0)
      {
        v15 = *v15;
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v15);
    }

    if ((v14 & 2) == 0)
    {
      llvm::deallocate_buffer(*(v13 + 8), *(v13 + 16), *(v13 + 24));
    }
  }

  v16 = *(a1 + 5);
  if ((v16 + 40 * a1[12]) != a2)
  {
    v17 = *a1;
    if (*a1 > 1)
    {
      v19 = (a1 + 10);
      if ((v17 & 1) != 0 || (v4 = *(a1 + 1), v20 = a1[4], v19 = v4 + 16 * v20, v18 = v4, v20))
      {
        v18 = v4;
        while (*v18 >= 0xFFFFFFFFFFFFFFFELL)
        {
          v18 += 16;
          if (v18 == v19)
          {
            v18 = v19;
            break;
          }
        }

        if (*a1)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      if (v17)
      {
        v18 = (a1 + 10);
        v19 = v4 + 32;
        goto LABEL_26;
      }

      v18 = *(a1 + 1) + 16 * a1[4];
      v19 = v18;
    }

    v11 = (*(a1 + 1) + 16 * a1[4]);
LABEL_26:
    if (v18 != v11)
    {
      v21 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v16) >> 3);
      do
      {
        v22 = *(v18 + 8);
        if (v21 < v22)
        {
          *(v18 + 8) = v22 - 1;
        }

        do
        {
          v18 += 16;
        }

        while (v18 != v19 && *v18 >= 0xFFFFFFFFFFFFFFFELL);
      }

      while (v18 != v11);
    }
  }

  return a2;
}

uint64_t sub_1001264E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    v9 = a4 + v7;
    *(a4 + v7) = *(a2 + v7);
    v10 = (a4 + v7 + 8);
    if (a2 != a4)
    {
      v11 = *(v9 + 32);
      if (v11 >= 8)
      {
        if ((v11 & 4) != 0)
        {
          v12 = (a4 + v7 + 8);
          if ((v11 & 2) == 0)
          {
            v12 = *v10;
          }

          (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v12);
        }

        if ((v11 & 2) == 0)
        {
          llvm::deallocate_buffer(*v10, *(a4 + v7 + 16), *(a4 + v7 + 24));
        }
      }

      *(v9 + 32) = 0;
      v13 = *(a2 + v7 + 32);
      *(v9 + 32) = v13;
      if (v13 >= 8)
      {
        if ((v13 & 2) != 0 && (v13 & 4) != 0)
        {
          (*((v13 & 0xFFFFFFFFFFFFFFF8) + 8))(a4 + v7 + 8, a2 + v7 + 8);
          (*((*(v9 + 32) & 0xFFFFFFFFFFFFFFF8) + 16))(a2 + v7 + 8);
        }

        else
        {
          v8 = *(a2 + v7 + 8);
          *(a4 + v7 + 24) = *(a2 + v7 + 24);
          *v10 = v8;
        }

        *(a2 + v7 + 32) = 0;
      }
    }

    v7 += 40;
  }

  while (a2 + v7 != v6);
  return v6;
}

uint64_t mlir::Dialect::Dialect(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = off_1002B7580;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a5;
  *(result + 32) = a4;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  return result;
}

void mlir::Dialect::~Dialect(llvm **this)
{
  *this = off_1002B7580;
  llvm::deallocate_buffer(this[9], (16 * *(this + 22)), 8uLL);
  v2 = *(this + 16);
  v3 = this[6];
  if (v2)
  {
    v4 = (v3 + 8);
    v5 = 16 * v2;
    do
    {
      if ((*(v4 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v6 = *v4;
        *v4 = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }
      }

      v4 += 2;
      v5 -= 16;
    }

    while (v5);
    v3 = this[6];
    v7 = (16 * *(this + 16));
  }

  else
  {
    v7 = 0;
  }

  llvm::deallocate_buffer(v3, v7, 8uLL);
}

{
  *this = off_1002B7580;
  llvm::deallocate_buffer(this[9], (16 * *(this + 22)), 8uLL);
  v2 = *(this + 16);
  v3 = this[6];
  if (v2)
  {
    v4 = (v3 + 8);
    v5 = 16 * v2;
    do
    {
      if ((*(v4 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v6 = *v4;
        *v4 = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }
      }

      v4 += 2;
      v5 -= 16;
    }

    while (v5);
    v3 = this[6];
    v7 = (16 * *(this + 16));
  }

  else
  {
    v7 = 0;
  }

  llvm::deallocate_buffer(v3, v7, 8uLL);
}

{
  *this = off_1002B7580;
  llvm::deallocate_buffer(this[9], (16 * *(this + 22)), 8uLL);
  v2 = *(this + 16);
  v3 = this[6];
  if (v2)
  {
    v4 = (v3 + 8);
    v5 = 16 * v2;
    do
    {
      if ((*(v4 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v6 = *v4;
        *v4 = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }
      }

      v4 += 2;
      v5 -= 16;
    }

    while (v5);
    v3 = this[6];
    v7 = (16 * *(this + 16));
  }

  else
  {
    v7 = 0;
  }

  llvm::deallocate_buffer(v3, v7, 8uLL);

  operator delete();
}

uint64_t mlir::Dialect::parseAttribute(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 16))(a2);
  v26 = 257;
  (*(*a2 + 24))(&v31, a2, v4, v25);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "dialect '";
    v29 = 9;
    v5 = &v27;
    v6 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v23 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v6 = v33;
        v5 = (v33 + v23);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v5 = &v27;
        v6 = v33;
      }
    }

    v7 = &v6[24 * v34];
    v8 = *v5;
    *(v7 + 2) = v5[2];
    *v7 = v8;
    ++v34;
    if (v31)
    {
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      v30 = 261;
      v27 = v9;
      v28 = v10;
      mlir::Diagnostic::operator<<(&v32, &v27);
      if (v31)
      {
        LODWORD(v27) = 3;
        v28 = "' provides no attribute parsing hook";
        v29 = 36;
        v11 = &v27;
        v12 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v24 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = v33;
            v11 = (v33 + v24);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v11 = &v27;
            v12 = v33;
          }
        }

        v13 = &v12[24 * v34];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v34;
        if (v31)
        {
          mlir::InFlightDiagnostic::report(&v31);
        }
      }
    }
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v40;
      v17 = __p;
      if (v40 != __p)
      {
        do
        {
          v16 = sub_100052FFC(v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v40 = v15;
      operator delete(v17);
    }

    v18 = v37;
    if (v37)
    {
      v19 = v38;
      v20 = v37;
      if (v38 != v37)
      {
        do
        {
          v21 = *--v19;
          *v19 = 0;
          if (v21)
          {
            operator delete[]();
          }
        }

        while (v19 != v18);
        v20 = v37;
      }

      v38 = v18;
      operator delete(v20);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return 0;
}

uint64_t mlir::Dialect::parseType(mlir::Dialect *this, mlir::DialectAsmParser *a2, const llvm::Twine *a3)
{
  if (*(this + 41) == 1)
  {
    v5 = *(this + 4);
    v6 = *(this + 1);
    v7 = *(this + 2);
    LOWORD(v41) = 261;
    v38 = v6;
    v39 = v7;
    v8 = mlir::StringAttr::get(v5, &v38, a3);
    v9 = (*(*a2 + 656))(a2);
    return mlir::OpaqueType::get(v8, v9, v10);
  }

  else
  {
    v12 = (*(*a2 + 16))(a2);
    v33 = 257;
    (*(*a2 + 24))(&v38, a2, v12, v32);
    if (v38)
    {
      LODWORD(v34) = 3;
      v35 = "dialect '";
      v36 = 9;
      v13 = &v34;
      v14 = v40;
      if (v41 >= v42)
      {
        if (v40 <= &v34 && v40 + 24 * v41 > &v34)
        {
          v30 = &v34 - v40;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
          v14 = v40;
          v13 = (v40 + v30);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
          v13 = &v34;
          v14 = v40;
        }
      }

      v15 = &v14[24 * v41];
      v16 = *v13;
      *(v15 + 2) = v13[2];
      *v15 = v16;
      ++v41;
      if (v38)
      {
        v17 = *(this + 1);
        v18 = *(this + 2);
        v37 = 261;
        v34 = v17;
        v35 = v18;
        mlir::Diagnostic::operator<<(&v39, &v34);
        if (v38)
        {
          LODWORD(v34) = 3;
          v35 = "' provides no type parsing hook";
          v36 = 31;
          v19 = &v34;
          v20 = v40;
          if (v41 >= v42)
          {
            if (v40 <= &v34 && v40 + 24 * v41 > &v34)
            {
              v31 = &v34 - v40;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
              v20 = v40;
              v19 = (v40 + v31);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
              v19 = &v34;
              v20 = v40;
            }
          }

          v21 = &v20[24 * v41];
          v22 = *v19;
          *(v21 + 2) = v19[2];
          *v21 = v22;
          ++v41;
          if (v38)
          {
            mlir::InFlightDiagnostic::report(&v38);
          }
        }
      }
    }

    if (v49 == 1)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v47;
        v25 = __p;
        if (v47 != __p)
        {
          do
          {
            v24 = sub_100052FFC(v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v47 = v23;
        operator delete(v25);
      }

      v26 = v44;
      if (v44)
      {
        v27 = v45;
        v28 = v44;
        if (v45 != v44)
        {
          do
          {
            v29 = *--v27;
            *v27 = 0;
            if (v29)
            {
              operator delete[]();
            }
          }

          while (v27 != v26);
          v28 = v44;
        }

        v45 = v26;
        operator delete(v28);
      }

      if (v40 != v43)
      {
        free(v40);
      }
    }

    return 0;
  }
}

uint64_t mlir::Dialect::addInterface(int32x2_t *a1, void *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 16);
  v4 = a1[11].i32[0];
  if (v4)
  {
    v5 = a1[3];
    v6 = a1[9];
    v7 = 0xBF58476D1CE4E5B9 * ((v3 >> 4) ^ (v3 >> 9) | (((v5.i32[0] >> 4) ^ (v5.i32[0] >> 9)) << 32));
    v8 = v4 - 1;
    v9 = v8 & ((v7 >> 31) ^ v7);
    v10 = (*&v6 + 16 * v9);
    v12 = v10->i64[0];
    v11 = v10->i64[1];
    if (v10->i64[0] == *&v5 && v11 == v3)
    {
LABEL_7:
      *v10 = vdupq_n_s64(0xFFFFFFFFFFFFE000);
      a1[10] = vadd_s32(a1[10], 0x1FFFFFFFFLL);
      v3 = *(v2 + 16);
    }

    else
    {
      v15 = 1;
      while (v12 != -4096 || v11 != -4096)
      {
        v16 = v9 + v15++;
        v9 = v16 & v8;
        v10 = (*&v6 + 16 * v9);
        v12 = v10->i64[0];
        v11 = v10->i64[1];
        if (v10->i64[0] == *&v5 && v11 == v3)
        {
          goto LABEL_7;
        }
      }
    }
  }

  v18 = v3;
  return sub_1001271D0(&a1[6], &v18, a2, v19);
}

uint64_t sub_1001271D0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v9 = (*result + 16 * v8);
  v10 = *v9;
  if (*a2 != *v9)
  {
    v15 = 0;
    v16 = 1;
    while (v10 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v10 == -8192;
      }

      if (v17)
      {
        v15 = v9;
      }

      v18 = v8 + v16++;
      v8 = v18 & v7;
      v9 = (v6 + 16 * (v18 & v7));
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v15)
    {
      v9 = v15;
    }

LABEL_5:
    v22 = v9;
    v12 = *(result + 8);
    if (4 * v12 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v12 - *(result + 12) > v5 >> 3)
    {
      *(result + 8) = v12 + 1;
      if (*v9 == -4096)
      {
LABEL_9:
        v13 = *a2;
        v14 = *a3;
        *a3 = 0;
        *v9 = v13;
        v9[1] = v14;
        v6 = *result;
        v5 = *(result + 16);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v19 = result;
    v20 = a4;
    v21 = a3;
    sub_100127FD8(result, v5);
    sub_10003D9D4(v19, a2, &v22);
    a3 = v21;
    result = v19;
    a4 = v20;
    v9 = v22;
    ++*(v19 + 8);
    if (*v9 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v11 = 0;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v11;
  return result;
}

uint64_t mlir::detail::DialectInterfaceCollectionBase::DialectInterfaceCollectionBase(uint64_t a1, mlir::MLIRContext *this, uint64_t a3)
{
  *a1 = off_1002B7600;
  *(a1 + 8) = 0;
  v5 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = a1 + 32;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  mlir::MLIRContext::getLoadedDialects(this, &v17);
  v7 = v17;
  v8 = v18;
  if (v17 != v18)
  {
    do
    {
      v9 = *(*v7 + 64);
      if (v9)
      {
        v10 = *(*v7 + 48);
        v11 = (v9 - 1) & ((a3 >> 4) ^ (a3 >> 9));
        v12 = *(v10 + 16 * v11);
        if (v12 == a3)
        {
LABEL_6:
          if (v11 != v9)
          {
            v16 = *(v10 + 16 * v11 + 8);
            if (v16)
            {
              sub_100128270(v5, &v16, v19);
              sub_1001274B8(v6, &v16);
            }
          }
        }

        else
        {
          v13 = 1;
          while (v12 != -4096)
          {
            v14 = v11 + v13++;
            v11 = v14 & (v9 - 1);
            v12 = *(v10 + 16 * v11);
            if (v12 == a3)
            {
              goto LABEL_6;
            }
          }
        }
      }

      v7 += 8;
    }

    while (v7 != v8);
    v7 = v17;
  }

  if (v7)
  {
    v18 = v7;
    operator delete(v7);
  }

  return a1;
}

void sub_1001274B8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_10002BC08();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_10002BC08();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void mlir::detail::DialectInterfaceCollectionBase::~DialectInterfaceCollectionBase(mlir::detail::DialectInterfaceCollectionBase *this)
{
  *this = off_1002B7600;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  llvm::deallocate_buffer(*(this + 1), (8 * *(this + 6)), 8uLL);
}

{
  *this = off_1002B7600;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  llvm::deallocate_buffer(*(this + 1), (8 * *(this + 6)), 8uLL);
}

{
  *this = off_1002B7600;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  llvm::deallocate_buffer(*(this + 1), (8 * *(this + 6)), 8uLL);

  operator delete();
}

mlir::DialectRegistry *mlir::DialectRegistry::DialectRegistry(mlir::DialectRegistry *this)
{
  *(this + 8) = 0u;
  *this = this + 8;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 6) = this + 64;
  *(this + 7) = 0;
  v3[0] = off_1002B7620;
  v4 = v3;
  mlir::DialectRegistry::insert(this, &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id, "builtin", 7uLL, v3);
  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))();
  }

  return this;
}

uint64_t (*mlir::DialectRegistry::getDialectAllocator(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  v5[0] = a2;
  v5[1] = a3;
  if (a1 + 8 == sub_100128860(a1, v5))
  {
    return 0;
  }

  else
  {
    return sub_100128988;
  }
}

_BYTE *mlir::DialectRegistry::insert(uint64_t a1, size_t a2, void *__src, size_t __len, uint64_t a5)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10002BC08();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  HIBYTE(v21) = __len;
  if (__len)
  {
    memmove(&v20, __src, __len);
    *(&v20 + __len) = 0;
    v22 = a2;
    v10 = *(a5 + 24);
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_9:
    v24 = 0;
    *__p = v20;
    v13 = v21;
    v20 = 0uLL;
    v21 = 0;
    v26 = v13;
    v27 = a2;
    v29 = 0;
    goto LABEL_16;
  }

  LOBYTE(v20) = 0;
  v22 = a2;
  v10 = *(a5 + 24);
  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v10 == a5)
  {
    v24 = v23;
    (*(*v10 + 24))(v10, v23);
    v12 = v22;
    v11 = v24;
  }

  else
  {
    v11 = (*(*v10 + 16))(v10);
    v24 = v11;
    v12 = a2;
  }

  *__p = v20;
  v14 = v21;
  v21 = 0;
  v20 = 0uLL;
  v26 = v14;
  v27 = v12;
  if (v11)
  {
    if (v11 == v23)
    {
      v29 = v28;
      (*(*v11 + 24))(v11, v28);
    }

    else
    {
      v29 = v11;
      v24 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

LABEL_16:
  v17 = sub_1001289DC(a1, __p);
  v18 = v15;
  if (v29 == v28)
  {
    (*(*v29 + 32))(v29);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v29)
    {
      (*(*v29 + 40))(v29, v15, v16);
    }

    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
LABEL_20:
      result = v24;
      if (v24 != v23)
      {
        goto LABEL_21;
      }

LABEL_27:
      result = (*(*result + 32))(result);
      if (v18)
      {
        return result;
      }

      goto LABEL_28;
    }
  }

  operator delete(__p[0]);
  result = v24;
  if (v24 == v23)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  if ((v18 & 1) == 0)
  {
LABEL_28:
    if (v17[7] != a2)
    {
      v28[0] = 1283;
      __p[0] = "Trying to register different dialects for the same namespace: ";
      v26 = __src;
      v27 = __len;
      llvm::report_fatal_error(__p, 1);
    }
  }

  return result;
}

void mlir::DialectRegistry::applyExtensions(mlir::DialectRegistry *this, size_t *a2)
{
  v42 = a2;
  v2 = *(this + 14);
  if (v2)
  {
    v3 = 0;
    v41 = a2[4];
    v5 = a2[1];
    v4 = a2[2];
    v6 = *(this + 6);
    v7 = v6 + 16 * v2;
    do
    {
      v8 = v7 - v6;
      v9 = (v7 - v6) >> 4;
      v43 = v45;
      v44 = 0x600000000;
      if (v9 < 7)
      {
        v10 = v45;
        v11 = 0;
        v12 = v45;
        v13 = v8 - 16;
        if (v8 - 16 < 0xA0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, (v7 - v6) >> 4, 8);
        v10 = v43;
        v11 = v44;
        v12 = v43 + 8 * v44;
        v13 = v8 - 16;
        if (v8 - 16 < 0xA0)
        {
          goto LABEL_15;
        }
      }

      v14 = v13 >> 4;
      if (v12 >= v6 + (v13 & 0xFFFFFFFFFFFFFFF0) + 16 || v6 + 8 >= &v10[8 * v14 + 8 + 8 * v11])
      {
        v15 = v14 + 1;
        v16 = v15 & 3;
        if ((v15 & 3) == 0)
        {
          v16 = 4;
        }

        v17 = v15 - v16;
        v12 += 8 * v17;
        v18 = v6 + 16 * v17;
        v19 = (v6 + 40);
        v20 = &v10[8 * v11 + 16];
        do
        {
          v21 = v19 - 4;
          v22 = vld2q_f64(v21);
          v23 = vld2q_f64(v19);
          *(v20 - 1) = v22;
          *v20 = v23;
          v19 += 8;
          v20 += 2;
          v17 -= 4;
        }

        while (v17);
        v6 = v18;
      }

LABEL_15:
      v3 += v9;
      do
      {
        *v12 = *(v6 + 8);
        v12 += 8;
        v6 += 16;
      }

      while (v6 != v7);
      v24 = v11 + (v8 >> 4);
      LODWORD(v44) = v24;
      if (!v24)
      {
        goto LABEL_50;
      }

      v40 = v3;
      v25 = &v10[8 * v24];
      while (2)
      {
        v26 = *v10;
        v27 = *(*v10 + 8);
        v28 = *(*v10 + 16);
        if (v28 == 1)
        {
          if (*(v27 + 8) != v4 || v4 && memcmp(*v27, v5, v4))
          {
            goto LABEL_20;
          }

LABEL_19:
          (*(*v26 + 16))(v26, v41, &v42, 1);
          goto LABEL_20;
        }

        if (!v28)
        {
          goto LABEL_19;
        }

        v29 = 16 * v28;
        if (v4)
        {
          v30 = 16 * v28;
          v31 = *(*v10 + 8);
          while (*(v31 + 8) != v4 || memcmp(*v31, v5, v4))
          {
            v31 += 16;
            v30 -= 16;
            if (!v30)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
          v32 = 16 * v28;
          v31 = *(*v10 + 8);
          while (*(v31 + 8))
          {
            v31 += 16;
            v32 -= 16;
            if (!v32)
            {
              goto LABEL_20;
            }
          }
        }

        if (v31 == v27 + 16 * v28)
        {
          goto LABEL_20;
        }

        v46 = v48;
        v47 = 0x600000000;
        if (v28 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v48, v28, 8);
        }

        v33 = v41;
        do
        {
          if (v27 == v31)
          {
            LoadedDialect = v42;
            v35 = v47;
            if (v47 < HIDWORD(v47))
            {
              goto LABEL_43;
            }

LABEL_46:
            v36 = LoadedDialect;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v48, v35 + 1, 8);
            LoadedDialect = v36;
            v33 = v41;
            v35 = v47;
            goto LABEL_43;
          }

          LoadedDialect = mlir::MLIRContext::getLoadedDialect(v33, *v27, *(v27 + 8));
          if (!LoadedDialect)
          {
            goto LABEL_47;
          }

          v35 = v47;
          if (v47 >= HIDWORD(v47))
          {
            goto LABEL_46;
          }

LABEL_43:
          *(v46 + v35) = LoadedDialect;
          LODWORD(v47) = v47 + 1;
          v27 += 16;
          v29 -= 16;
        }

        while (v29);
        (*(*v26 + 16))(v26, v33, v46);
LABEL_47:
        if (v46 != v48)
        {
          free(v46);
        }

LABEL_20:
        v10 += 8;
        if (v10 != v25)
        {
          continue;
        }

        break;
      }

      v10 = v43;
      v3 = v40;
LABEL_50:
      v37 = *(this + 6);
      v38 = *(this + 14);
      if (v10 != v45)
      {
        free(v10);
      }

      v6 = v37 + 16 * v3;
      v7 = v37 + 16 * v38;
    }

    while (v3 != v38);
  }
}

void sub_100127FD8(uint64_t a1, int a2)
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
  if (!v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (!v11)
    {
      return;
    }

    v12 = (v11 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v15 = &buffer[2 * v14];
      v16 = buffer + 2;
      v17 = v14;
      do
      {
        *(v16 - 2) = -4096;
        *v16 = -4096;
        v16 += 4;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return;
      }
    }

    else
    {
      v15 = buffer;
    }

    v18 = &buffer[2 * v11];
    do
    {
      *v15 = -4096;
      v15 += 2;
    }

    while (v15 != v18);
    return;
  }

  v10 = (16 * v3);
  sub_1001280F0(a1, v4, &v10[v4]);

  llvm::deallocate_buffer(v4, v10, 8uLL);
}

uint64_t sub_1001280F0(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = *result;
    v8 = (v6 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v8)
    {
      v9 = v8 + 1;
      v10 = (v8 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v11 = &v7[2 * v10];
      v12 = v7 + 2;
      v13 = v10;
      do
      {
        *(v12 - 2) = -4096;
        *v12 = -4096;
        v12 += 4;
        v13 -= 2;
      }

      while (v13);
      if (v9 == v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = *result;
    }

    v14 = &v7[2 * v6];
    do
    {
      *v11 = -4096;
      v11 += 2;
    }

    while (v11 != v14);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v15 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v16 = *(v5 + 16) - 1;
        v17 = v16 & ((v15 >> 4) ^ (v15 >> 9));
        v18 = (*v5 + 16 * v17);
        v19 = *v18;
        if (v15 != *v18)
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
            v17 = v24 & v16;
            v18 = (*v5 + 16 * (v24 & v16));
            v19 = *v18;
            if (v15 == *v18)
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
        v20 = v4[1];
        v4[1] = 0;
        *v18 = v15;
        v18[1] = v20;
        ++*(v5 + 8);
        result = v4[1];
        v4[1] = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      v4 += 2;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t sub_100128270@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = HIDWORD(*(*a2 + 8));
  v7 = 0x9DDFEA08EB382D69 * ((8 * *(*a2 + 8) - 0xAE502812AA7333) ^ v6);
  LODWORD(v7) = -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)));
  v8 = v4 - 1;
  v9 = v7 & (v4 - 1);
  v10 = (*result + 8 * v9);
  v11 = *v10;
  if (*a2 != *v10)
  {
    v14 = 0;
    v15 = 1;
    while (v11 != -4096)
    {
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v11 == -8192;
      }

      if (v16)
      {
        v14 = v10;
      }

      v17 = v9 + v15++;
      v9 = v17 & v8;
      v10 = (v5 + 8 * (v17 & v8));
      v11 = *v10;
      if (*a2 == *v10)
      {
        goto LABEL_3;
      }
    }

    if (v14)
    {
      v10 = v14;
    }

LABEL_5:
    v20 = v10;
    v13 = *(result + 8);
    if (4 * v13 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v13 - *(result + 12) > v4 >> 3)
    {
      *(result + 8) = v13 + 1;
      if (*v10 == -4096)
      {
LABEL_9:
        *v10 = *a2;
        v5 = *result;
        v4 = *(result + 16);
        v12 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v18 = result;
    v19 = a3;
    sub_100128528(result, v4);
    sub_100128434(v18, a2, &v20);
    result = v18;
    a3 = v19;
    v10 = v20;
    ++*(v18 + 8);
    if (*v10 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v12 = 0;
LABEL_10:
  *a3 = v10;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v12;
  return result;
}

uint64_t sub_100128434(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = HIDWORD(*(*a2 + 8));
    v6 = 0x9DDFEA08EB382D69 * ((8 * *(*a2 + 8) - 0xAE502812AA7333) ^ v5);
    LODWORD(v5) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v3 - 1;
    v8 = v5 & (v3 - 1);
    v9 = (*a1 + 8 * v8);
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
        v9 = (v4 + 8 * (v15 & v7));
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

      *a3 = v9;
    }
  }

  else
  {
    v9 = 0;
    result = 0;
LABEL_5:
    *a3 = v9;
  }

  return result;
}

void sub_100128528(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((8 * v8), 8uLL);
  v10 = buffer;
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_41;
      }

      v13 = v12 + 1;
      v10 = &buffer->i8[8 * (v13 & 0x3FFFFFFFFFFFFFFCLL)];
      v14 = buffer + 1;
      v15 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v16 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v14[-1] = v15;
        *v14 = v15;
        v14 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 8;
        }

        while (v10 != buffer + 8 * v11);
      }
    }

    if (v3)
    {
      v17 = 0;
      v18 = v11 - 1;
      v19 = v4;
      do
      {
        v28 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = HIDWORD(*(v28 + 8));
          v30 = 0x9DDFEA08EB382D69 * ((8 * *(v28 + 8) - 0xAE502812AA7333) ^ v29);
          v31 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v29 ^ (v30 >> 47) ^ v30)) >> 32) >> 15) ^ (-348639895 * (v29 ^ (v30 >> 47) ^ v30)))) & v18;
          v27 = &buffer->i8[8 * v31];
          v32 = *v27;
          if (v28 != *v27)
          {
            v33 = 0;
            v34 = 1;
            while (v32 != -4096)
            {
              if (v33)
              {
                v35 = 0;
              }

              else
              {
                v35 = v32 == -8192;
              }

              if (v35)
              {
                v33 = v27;
              }

              v36 = v31 + v34++;
              v31 = v36 & v18;
              v27 = &buffer->i8[8 * (v36 & v18)];
              v32 = *v27;
              if (v28 == *v27)
              {
                goto LABEL_23;
              }
            }

            if (v33)
            {
              v27 = v33;
            }
          }

LABEL_23:
          *v27 = v28;
          *(a1 + 8) = ++v17;
        }

        v19 = (v19 + 8);
      }

      while (v19 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v20 = *(a1 + 16);
    if (v20)
    {
      v21 = (v20 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v21 < 3)
      {
        goto LABEL_18;
      }

      v22 = v21 + 1;
      v10 = &buffer->i8[8 * (v22 & 0x3FFFFFFFFFFFFFFCLL)];
      v23 = buffer + 1;
      v24 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v25 = v22 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v23[-1] = v24;
        *v23 = v24;
        v23 += 2;
        v25 -= 4;
      }

      while (v25);
      if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_18:
        v26 = &buffer->i8[8 * v20];
        do
        {
          *v10 = -4096;
          v10 += 8;
        }

        while (v10 != v26);
      }
    }
  }
}

uint64_t sub_100128860(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *a2;
  v5 = *(a2 + 8);
  result = a1 + 8;
  do
  {
    v8 = result;
    v9 = *(v3 + 55);
    if (v9 >= 0)
    {
      v10 = *(v3 + 55);
    }

    else
    {
      v10 = *(v3 + 40);
    }

    if (v5 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v5;
    }

    if (v11 && (v9 >= 0 ? (v12 = (v3 + 32)) : (v12 = *(v3 + 32)), (v13 = memcmp(v12, v4, v11)) != 0))
    {
      v7 = (v3 + ((v13 >> 28) & 8));
      v14 = v13;
      result = v3;
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v10 >= v5)
      {
        v7 = v3;
        result = v3;
        goto LABEL_4;
      }

      v7 = (v3 + 8);
    }

    result = v8;
LABEL_4:
    v3 = *v7;
  }

  while (*v7);
  if (result == v2)
  {
    return v2;
  }

  v15 = *(result + 55);
  if (v15 >= 0)
  {
    v16 = *(result + 55);
  }

  else
  {
    v16 = *(result + 40);
  }

  if (v16 >= v5)
  {
    v17 = v5;
  }

  else
  {
    v17 = v16;
  }

  if (v17 && (v15 >= 0 ? (v18 = (result + 32)) : (v18 = *(result + 32)), v19 = result, v20 = memcmp(v4, v18, v17), result = v19, v20))
  {
    if (v20 < 0)
    {
      return v2;
    }
  }

  else if (v5 < v16)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100128988(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1001289DC(v4);
}

void *sub_1001289DC(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

uint64_t *mlir::DialectResourceBlobManager::update(uint64_t a1, int8x16_t *a2, unint64_t a3, uint64_t a4)
{
  llvm::sys::RWMutexImpl::lock_shared(a1);
  v8 = llvm::StringMapImpl::hash(a2, a3);
  Key = llvm::StringMapImpl::FindKey((a1 + 16), a2, a3, v8);
  if (Key == -1 || Key == *(a1 + 24))
  {
    v10 = 0;
    result = llvm::sys::RWMutexImpl::unlock_shared(a1);
    if (MEMORY[0x50] == 1)
    {
LABEL_4:

      return sub_100129178((v10 + 16), a4);
    }
  }

  else
  {
    v10 = *(*(a1 + 16) + 8 * Key) + 8;
    result = llvm::sys::RWMutexImpl::unlock_shared(a1);
    if (*(v10 + 80) == 1)
    {
      goto LABEL_4;
    }
  }

  v12 = *a4;
  *(v10 + 32) = *(a4 + 16);
  *(v10 + 16) = v12;
  *(v10 + 64) = 0;
  v13 = *(a4 + 48);
  *(v10 + 64) = v13;
  if (v13 >= 8)
  {
    if ((v13 & 2) != 0 && (v13 & 4) != 0)
    {
      (*((v13 & 0xFFFFFFFFFFFFFFF8) + 8))(v10 + 40, a4 + 24);
      result = (*((*(v10 + 64) & 0xFFFFFFFFFFFFFFF8) + 16))(a4 + 24);
    }

    else
    {
      v14 = *(a4 + 24);
      *(v10 + 56) = *(a4 + 40);
      *(v10 + 40) = v14;
    }

    *(a4 + 48) = 0;
  }

  *(v10 + 72) = *(a4 + 56);
  *(v10 + 80) = 1;
  return result;
}

uint64_t mlir::DialectResourceBlobManager::insert(pthread_rwlock_t **a1, int8x16_t *a2, unint64_t a3, uint64_t a4)
{
  llvm::sys::RWMutexImpl::lock(a1);
  v20[0] = a1;
  v20[1] = a4;
  v8 = sub_100128F1C(v20, a2, a3);
  if (v8)
  {
    goto LABEL_20;
  }

  v21 = v23;
  v22 = xmmword_10028F130;
  if (a3 >= 0x21)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v21, v23, a3, 1);
    v9 = v22;
LABEL_5:
    memcpy(v21 + v9, a2, a3);
    v9 = v22;
    goto LABEL_6;
  }

  v9 = 0;
  if (a3)
  {
    goto LABEL_5;
  }

LABEL_6:
  v10 = v9 + a3;
  *&v22 = v10;
  if ((v10 + 1) > *(&v22 + 1))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v21, v23, v10 + 1, 1);
    v10 = v22;
  }

  *(v21 + v10) = 95;
  *&v22 = v22 + 1;
  v11 = a3 + 1;
  v12 = 1;
  while (1)
  {
    v17 = v12;
    v18 = &v17;
    v19 = 267;
    llvm::Twine::toVector(&v18, &v21);
    v8 = sub_100128F1C(v20, v21, v22);
    if (v8)
    {
      break;
    }

    v13 = v22;
    if (v22 == v11)
    {
      ++v12;
    }

    else
    {
      if (v22 <= v11)
      {
        if (*(&v22 + 1) < v11)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&v21, v23, v11, 1);
          v13 = v22;
        }

        if (v11 != v13)
        {
          bzero(v21 + v13, v11 - v13);
        }
      }

      *&v22 = v11;
      ++v12;
    }
  }

  if (v21 != v23)
  {
    v14 = v8;
    free(v21);
    v8 = v14;
  }

LABEL_20:
  v15 = v8;
  llvm::sys::RWMutexImpl::unlock(a1);
  return v15;
}

uint64_t sub_100128F1C(uint64_t *a1, int8x16_t *a2, unint64_t a3)
{
  v6 = *a1;
  v37 = 0;
  *v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v7 = llvm::StringMapImpl::hash(a2, a3);
  v8 = sub_10012928C((v6 + 16), a2, a3, v7, &v32);
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
        llvm::deallocate_buffer(*(&v34 + 1), v35[0], v35[1]);
      }
    }
  }

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v14 = *v8;
  v15 = *v8 + 96;
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
  sub_100129444(v14 + 3, &v25);
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
        llvm::deallocate_buffer(v27, *(&v27 + 1), v28);
      }
    }
  }

  return *v8 + 8;
}

uint64_t *sub_100129178(uint64_t *a1, uint64_t a2)
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
        llvm::deallocate_buffer(a1[3], a1[4], a1[5]);
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

uint64_t *sub_10012928C(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4, uint64_t a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer((a3 + 97), 8uLL);
    v13 = buffer + 96;
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

  buffer = llvm::allocate_buffer((a3 + 97), 8uLL);
  v13 = buffer + 96;
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

uint64_t *sub_100129444(uint64_t *result, uint64_t a2)
{
  if (*(result + 64) == *(a2 + 64))
  {
    if (*(result + 64))
    {

      return sub_100129178(result, a2);
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
          llvm::deallocate_buffer(result[3], result[4], result[5]);
          result = v6;
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

uint64_t llvm::DominatorTreeBase<mlir::Block,false>::getNodeIndexForInsert(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v13 = *(a1 + 32);
  sub_100053E00(a1 + 88, &v15, &v13, v14);
  v3 = *(v14[0] + 8);
  v4 = *(a1 + 32);
  v5 = (v3 + 1);
  if (v4 <= v3 && v4 != v5)
  {
    if (v4 <= v5)
    {
      if (*(a1 + 36) < v5)
      {
        sub_10012A5A0(a1 + 24, (v3 + 1));
        v4 = *(a1 + 32);
      }

      if (v5 != v4)
      {
        bzero((*(a1 + 24) + 8 * v4), 8 * (v5 - v4));
      }
    }

    else
    {
      v7 = 8 * v4;
      v8 = 8 * v5 - v7;
      v9 = (v7 + *(a1 + 24) - 8);
      do
      {
        v10 = *v9;
        *v9 = 0;
        if (v10)
        {
          v11 = *(v10 + 24);
          if (v11 != (v10 + 40))
          {
            free(v11);
          }

          operator delete();
        }

        --v9;
        v8 += 8;
      }

      while (v8);
    }

    *(a1 + 32) = v5;
  }

  return v3;
}

{
  return llvm::DominatorTreeBase<mlir::Block,false>::getNodeIndexForInsert(a1, a2);
}

BOOL llvm::DominatorTreeBase<mlir::Block,false>::properlyDominates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v3 = *(a1 + 104);
  if (!v3)
  {
    return 1;
  }

  v4 = *(a1 + 88);
  v5 = v3 - 1;
  v6 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = *(v4 + 16 * v6);
  if (v7 == a2)
  {
LABEL_4:
    if (v6 != v3)
    {
      v8 = *(v4 + 16 * v6 + 8);
      if (*(a1 + 32) > v8)
      {
        v9 = *(*(a1 + 24) + 8 * v8);
        goto LABEL_14;
      }
    }
  }

  else
  {
    v11 = 1;
    while (v7 != -4096)
    {
      v12 = v6 + v11++;
      v6 = v12 & v5;
      v7 = *(v4 + 16 * v6);
      if (v7 == a2)
      {
        goto LABEL_4;
      }
    }
  }

  v9 = 0;
LABEL_14:
  v13 = v5 & ((a3 >> 4) ^ (a3 >> 9));
  v14 = *(v4 + 16 * v13);
  if (v14 != a3)
  {
    v21 = 1;
    while (v14 != -4096)
    {
      v22 = v13 + v21++;
      v13 = v22 & v5;
      v14 = *(v4 + 16 * v13);
      if (v14 == a3)
      {
        goto LABEL_15;
      }
    }

    return 1;
  }

LABEL_15:
  if (v13 == v3)
  {
    return 1;
  }

  v15 = *(v4 + 16 * v13 + 8);
  if (*(a1 + 32) <= v15)
  {
    return 1;
  }

  v16 = *(*(a1 + 24) + 8 * v15);
  if (v16 == v9 || v16 == 0)
  {
    return 1;
  }

  if (!v9)
  {
    return 0;
  }

  if (*(v16 + 8) == v9)
  {
    return 1;
  }

  if (*(v9 + 8) == v16)
  {
    return 0;
  }

  v18 = *(v9 + 16);
  if (v18 >= *(v16 + 16))
  {
    return 0;
  }

  if (*(a1 + 128) == 1)
  {
    if (*(v16 + 72) < *(v9 + 72))
    {
      return 0;
    }

    return *(v16 + 76) <= *(v9 + 76);
  }

  v19 = *(a1 + 132) + 1;
  *(a1 + 132) = v19;
  if (v19 > 0x20)
  {
    llvm::DominatorTreeBase<mlir::Block,false>::updateDFSNumbers(a1);
    if (*(v16 + 72) < *(v9 + 72))
    {
      return 0;
    }

    return *(v16 + 76) <= *(v9 + 76);
  }

  do
  {
    v20 = v16;
    v16 = *(v16 + 8);
  }

  while (v16 && *(v16 + 16) >= v18);
  return v20 == v9;
}

void llvm::DominatorTreeBase<mlir::Block,false>::updateDFSNumbers(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    *(a1 + 132) = 0;
  }

  else
  {
    v15 = v18;
    v17 = 32;
    v1 = *(a1 + 112);
    if (v1)
    {
      v2 = *(v1 + 24);
      v18[0] = *(a1 + 112);
      v18[1] = v2;
      v3 = 1;
      v16 = 1;
      *(v1 + 72) = 0;
      v4 = 1;
      do
      {
        while (1)
        {
          v5 = v15;
          v6 = v4;
          v7 = v15 + 16 * v4;
          v9 = *(v7 - 2);
          v8 = *(v7 - 1);
          if (v8 != (*(v9 + 24) + 8 * *(v9 + 32)))
          {
            break;
          }

          *(v9 + 76) = v3;
          v4 = v6 - 1;
          v16 = v6 - 1;
          ++v3;
          if (v6 == 1)
          {
            goto LABEL_10;
          }
        }

        v10 = *v8;
        *(v7 - 1) = v8 + 1;
        v11 = *(v10 + 24);
        if (v6 >= v17)
        {
          v13 = a1;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v18, v6 + 1, 16);
          a1 = v13;
          v6 = v16;
          v5 = v15;
        }

        v12 = &v5[16 * v6];
        *v12 = v10;
        *(v12 + 1) = v11;
        v4 = ++v16;
        *(v10 + 72) = v3++;
      }

      while (v4);
LABEL_10:
      v14 = v15;
      *(a1 + 132) = 0;
      *(a1 + 128) = 1;
      if (v14 != v18)
      {
        free(v14);
      }
    }
  }
}

{
  llvm::DominatorTreeBase<mlir::Block,false>::updateDFSNumbers(a1);
}

void llvm::DominatorTreeBase<mlir::Block,false>::createNode()
{
  operator new();
}

{
  llvm::DominatorTreeBase<mlir::Block,false>::createNode();
}

void llvm::DominatorTreeBase<mlir::Block,false>::reset(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = 8 * v2;
    v4 = *(a1 + 24) - 8;
    do
    {
      v5 = *(v4 + v3);
      *(v4 + v3) = 0;
      if (v5)
      {
        v6 = *(v5 + 24);
        if (v6 != (v5 + 40))
        {
          free(v6);
        }

        operator delete();
      }

      v3 -= 8;
    }

    while (v3);
  }

  *(a1 + 32) = 0;
  v7 = *(a1 + 96);
  if (v7 || *(a1 + 100))
  {
    v8 = *(a1 + 104);
    if (v8 > 4 * v7 && v8 >= 0x41)
    {
      sub_10012F044(a1 + 88);
      goto LABEL_23;
    }

    if (v8)
    {
      v9 = *(a1 + 88);
      v10 = (v8 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v10)
      {
        v11 = v10 + 1;
        v12 = (v10 + 1) & 0x1FFFFFFFFFFFFFFELL;
        v13 = (v9 + 16 * v12);
        v14 = (v9 + 16);
        v15 = v12;
        do
        {
          *(v14 - 2) = -4096;
          *v14 = -4096;
          v14 += 4;
          v15 -= 2;
        }

        while (v15);
        if (v11 == v12)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v13 = *(a1 + 88);
      }

      v16 = (v9 + 16 * v8);
      do
      {
        *v13 = -4096;
        v13 += 2;
      }

      while (v13 != v16);
    }

LABEL_22:
    *(a1 + 96) = 0;
  }

LABEL_23:
  *(a1 + 8) = 0;
  *(a1 + 132) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
}

{
  llvm::DominatorTreeBase<mlir::Block,false>::reset(a1);
}

uint64_t mlir::detail::DominanceInfoBase<false>::~DominanceInfoBase(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  v4 = *(a1 + 16);
  if (v2)
  {
    v5 = v3;
    if (v4)
    {
      v6 = 16 * v4;
      v5 = v3;
      while ((*v5 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v5 = (v5 + 16);
        v6 -= 16;
        if (!v6)
        {
          goto LABEL_28;
        }
      }
    }

    v7 = (v3 + 16 * v4);
    if (v5 != v7)
    {
      do
      {
        v8 = *(v5 + 1) & 0xFFFFFFFFFFFFFFF8;
        if (v8)
        {
          llvm::deallocate_buffer(*(v8 + 88), (16 * *(v8 + 104)), 8uLL);
          v9 = *(v8 + 24);
          v10 = *(v8 + 32);
          if (v10)
          {
            v11 = 8 * v10;
            v12 = v9 - 8;
            do
            {
              v13 = *&v12[v11];
              *&v12[v11] = 0;
              if (v13)
              {
                v14 = *(v13 + 24);
                if (v14 != (v13 + 40))
                {
                  free(v14);
                }

                operator delete();
              }

              v11 -= 8;
            }

            while (v11);
            v9 = *(v8 + 24);
          }

          if (v9 != (v8 + 40))
          {
            free(v9);
          }

          if (*v8 != v8 + 16)
          {
            free(*v8);
          }

          operator delete();
        }

        do
        {
          v5 = (v5 + 16);
        }

        while (v5 != v7 && (*v5 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v5 != v7);
      v3 = *a1;
      v4 = *(a1 + 16);
    }
  }

LABEL_28:
  llvm::deallocate_buffer(v3, (16 * v4), 8uLL);
  return a1;
}

{
  return mlir::detail::DominanceInfoBase<false>::~DominanceInfoBase(a1);
}

uint64_t mlir::detail::DominanceInfoBase<false>::getDominanceInfo(uint64_t a1, void *a2, int a3)
{
  v15 = a2;
  v16 = 4;
  sub_1000B81AC(a1, &v15, &v16, &v13);
  v5 = v13;
  if (v14)
  {
    if (*a2 == a2 || *(a2[1] + 8) != a2)
    {
      goto LABEL_4;
    }

    v6 = a2[2];
    if (v6)
    {
      if (*(*(v6 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        v8 = *(v13 + 8) & 0xFFFFFFFFFFFFFFFBLL;
LABEL_5:
        *(v5 + 8) = v8;
        return *(v5 + 8);
      }

      v7 = sub_10012A3BC(a2[2]);
      if (v7)
      {
        v7 = sub_10012A3BC(v6);
      }

      else
      {
        v6 = 0;
      }

      v15 = v6;
      v16 = v7;
      if (v6)
      {
        RegionNumber = mlir::Region::getRegionNumber(a2);
        hasSSADominance = mlir::RegionKindInterface::hasSSADominance(&v15, RegionNumber);
        v11 = 4;
        if (!hasSSADominance)
        {
          v11 = 0;
        }

        v8 = *(v5 + 8) & 0xFFFFFFFFFFFFFFFBLL | v11;
        goto LABEL_5;
      }
    }
  }

  else if (a3 && *(v13 + 8) <= 7uLL && (*a2 == a2 || *(a2[1] + 8) != a2))
  {
LABEL_4:
    operator new();
  }

  return *(v5 + 8);
}

{
  return mlir::detail::DominanceInfoBase<false>::getDominanceInfo(a1, a2, a3);
}

BOOL mlir::detail::DominanceInfoBase<false>::isReachableFromEntry(uint64_t a1, mlir::Block *this)
{
  Parent = mlir::Block::getParent(this);
  v5 = Parent[1];
  if (v5)
  {
    v6 = (v5 - 8);
  }

  else
  {
    v6 = 0;
  }

  if (v6 == this)
  {
    return 1;
  }

  v7 = mlir::detail::DominanceInfoBase<false>::getDominanceInfo(a1, Parent, 1) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 104);
  if (v8)
  {
    v9 = *(v7 + 88);
    v10 = (v8 - 1) & ((this >> 4) ^ (this >> 9));
    v11 = *(v9 + 16 * v10);
    if (v11 == this)
    {
LABEL_7:
      if (v10 != v8)
      {
        v12 = *(v9 + 16 * v10 + 8);
        if (*(v7 + 32) > v12)
        {
          return *(*(v7 + 24) + 8 * v12) != 0;
        }
      }
    }

    else
    {
      v14 = 1;
      while (v11 != -4096)
      {
        v15 = v10 + v14++;
        v10 = v15 & (v8 - 1);
        v11 = *(v9 + 16 * v10);
        if (v11 == this)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return 0;
}

{
  return mlir::detail::DominanceInfoBase<false>::isReachableFromEntry(a1, this);
}

BOOL mlir::detail::DominanceInfoBase<false>::properlyDominatesImpl(uint64_t a1, mlir::Block *this, mlir::Block *a3, mlir::Block *a4, mlir::Block *a5, char a6)
{
  Parent = mlir::Block::getParent(this);
  if (this == a4 && a3 == a5)
  {
    return (mlir::detail::DominanceInfoBase<false>::getDominanceInfo(a1, Parent, 0) & 4) == 0;
  }

  if (Parent == mlir::Block::getParent(a4))
  {
    goto LABEL_16;
  }

  if (!Parent)
  {
    return 0;
  }

  if (mlir::Block::getParent(a4) == Parent)
  {
    goto LABEL_12;
  }

  ParentOp = mlir::Block::getParentOp(a4);
  if (!ParentOp)
  {
    a4 = 0;
    a5 = 0;
LABEL_12:
    if (!a4)
    {
      return 0;
    }

    goto LABEL_13;
  }

  AncestorOpInRegion = mlir::Region::findAncestorOpInRegion(Parent, ParentOp);
  a5 = AncestorOpInRegion;
  if (!AncestorOpInRegion)
  {
    return 0;
  }

  a4 = *(AncestorOpInRegion + 2);
  if (!a4)
  {
    return 0;
  }

LABEL_13:
  if (a4 == this && a5 == a3 && (a6 & 1) != 0)
  {
    return 1;
  }

LABEL_16:
  if (a4 != this)
  {
    v16 = mlir::detail::DominanceInfoBase<false>::getDominanceInfo(a1, Parent, 1) & 0xFFFFFFFFFFFFFFF8;

    return llvm::DominatorTreeBase<mlir::Block,false>::properlyDominates(v16, this, a4);
  }

  v17 = mlir::Block::getParent(this);
  if ((mlir::detail::DominanceInfoBase<false>::getDominanceInfo(a1, v17, 0) & 4) == 0)
  {
    return 1;
  }

  if (a5 == a3 || (this + 32) == a3)
  {
    return 0;
  }

  if ((this + 32) == a5)
  {
    return 1;
  }

  ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(a3);
  v19 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(a5);

  return mlir::Operation::isBeforeInBlock(ValuePtr, v19);
}

{
  return mlir::detail::DominanceInfoBase<false>::properlyDominatesImpl(a1, this, a3, a4, a5, a6);
}

uint64_t mlir::DominanceInfo::properlyDominates(uint64_t a1, uint64_t a2, mlir::Block **a3)
{
  v11 = a2;
  if (a2 && (*(a2 + 8) & 7) == 7)
  {
    v4 = *(a2 + 16);
    v5 = a3[2];
    if (v4 == v5)
    {
      return 1;
    }

    else
    {
      v6 = *(v4 + 5);
      v7 = *(v5 + 5);

      return mlir::detail::DominanceInfoBase<false>::properlyDominatesImpl(a1, v4, v6, v5, v7, 1);
    }
  }

  else
  {
    DefiningOp = mlir::Value::getDefiningOp(&v11);
    return mlir::detail::DominanceInfoBase<false>::properlyDominatesImpl(a1, DefiningOp[2], DefiningOp, a3[2], a3, 0);
  }
}

uint64_t sub_10012A3BC(uint64_t a1)
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
      sub_10027F4FC();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &unk_1002C1000;
    v5 = mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id;
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
    sub_10027F4A8();
    v3 = v21;
    a1 = v22;
    v4 = &unk_1002C1000;
    v5 = mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id;
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
    sub_10027F4A8();
    v4 = &unk_1002C1000;
    v18 = v23;
  }

  v19 = v4[283];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}