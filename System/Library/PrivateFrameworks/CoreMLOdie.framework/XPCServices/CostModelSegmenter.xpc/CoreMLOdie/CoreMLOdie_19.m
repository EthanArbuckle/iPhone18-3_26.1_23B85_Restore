uint64_t sub_1000E372C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) >= 0x41u)
  {
    result = *(a2 + 16);
    if (result)
    {
      operator delete[]();
    }
  }

  return result;
}

uint64_t sub_1000E3764(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v2 = *(a2 + 8);
  mlir::Attribute::getContext(&v10);
  v11 = v2;
  Context = mlir::IntegerSet::getContext(&v11);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id;
  v12[1] = Context;
  v16[0] = sub_1000D8EF0;
  v16[1] = v12;
  v15 = v11;
  v5 = 0x9DDFEA08EB382D69 * ((8 * v11 - 0xAE502812AA7333) ^ HIDWORD(v11));
  v6 = (0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v5 >> 47) ^ v5)) >> 47);
  v7 = ((0x9DDFEA08EB382D69 * v6) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (((0x759C16B48 * v6) & 0x7FFFFFFF8) + 8));
  v13[0] = &v15;
  v13[1] = v16;
  v14 = &v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8))), sub_1000D8E30, &v14, sub_1000D8E48, v13);
}

void sub_1000E389C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = sub_1000E3A3C;
  {
    v10 = v4;
    sub_10027CBF0();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    sub_1000DB1E0(a2 + 8, &v14);
  }

  *(a2 + 72) = sub_1000E3A44;
  *(a2 + 80) = v13;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = sub_1000E3AA4;
  *(a2 + 112) = &v12;
  *(a2 + 120) = sub_1000E3AF0;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id;
  *(a2 + 144) = "builtin.opaque";
  *(a2 + 152) = 14;
  v6 = v14;
  if (v15)
  {
    v7 = 16 * v15;
    v8 = (v14 + 8);
    do
    {
      v9 = *v8;
      v8 += 2;
      free(v9);
      v7 -= 16;
    }

    while (v7);
    v6 = v14;
  }

  if (v6 != v16)
  {
    free(v6);
  }
}

BOOL sub_1000E3A44(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  sub_10027C954();
  return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t sub_1000E3AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 32);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v9, v6);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
}

uint64_t sub_1000E3AF4(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v20 = a2;
  v5 = a2[4];
  if (!a2[1])
  {
    v6 = 0;
    v7 = a2[2];
    v8 = a2[3];
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v6 = *a3;
  v7 = a2[2];
  v8 = a2[3];
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = *a5;
LABEL_6:
  mlir::Attribute::getContext(&v20);
  v21 = v6;
  Context = mlir::Attribute::getContext(&v21);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v22[0] = &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id;
  v22[1] = Context;
  v26[0] = sub_1000D9174;
  v26[1] = v22;
  v25[0] = v21;
  v25[1] = v7;
  v25[2] = v8;
  v25[3] = v9;
  v12 = (v21 >> 4) ^ (v21 >> 9);
  v13 = llvm::hash_value(v7, v8);
  v14 = 0x9AE16A3B2F90404FLL * ((v9 >> 4) ^ (v9 >> 9));
  v15 = __ROR8__(v14 ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * v13;
  v16 = 0xB492B66FBE98F273 * v12 - v14 + __ROR8__(v13 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 + 24;
  v17 = (v15 + __ROR8__(0xB492B66FBE98F273 * v12 - v13, 43)) ^ v16;
  v18 = 0x9DDFEA08EB382D69 * (v16 ^ ((0x9DDFEA08EB382D69 * v17) >> 47) ^ (0x9DDFEA08EB382D69 * v17));
  v23[0] = v25;
  v23[1] = v26;
  v24 = v25;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id, -348639895 * ((v18 >> 47) ^ v18), sub_1000D8F00, &v24, sub_1000D8F80, v23);
}

void sub_1000E3CC8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000E3E04(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000DB1E0(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_1000FEF80;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = sub_1000FEF84;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_1000FEFDC;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id;
  *(a2 + 144) = "builtin.sparse_elements";
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

void sub_1000E3E04(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = sub_1000E3EB0;
  {
    v4 = v2;
    sub_10027B6B4();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v3);

  sub_1000E3EB8(a1);
}

void sub_1000E3EB8(uint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0xE0040DD5D8FE3uLL);
  v3 = v2;
  *v2 = sub_1000E4028;
  v2[1] = sub_1000E40A4;
  v2[2] = sub_1000E40D4;
  v2[3] = 0;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = v2;
    sub_10027B6B4();
    v3 = v14;
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

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
  if (v7 != &v5[2 * v6] && *v7 == v4)
  {
    v3[3] = v7[1];
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

LABEL_13:
  v3[3] = 0;
  {
    goto LABEL_14;
  }

LABEL_18:
  v15 = v3;
  sub_10027B444();
  v3 = v15;
LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v13, v3);
}

void sub_1000E4028(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v5 = a1;
  if ((atomic_load_explicit(&qword_1002C0A80, memory_order_acquire) & 1) == 0)
  {
    v3 = a2;
    v4 = a3;
    sub_10027C564();
    a2 = v3;
    a3 = v4;
    if (qword_1002C0A78 != v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1000E40DC(&v5);
  }

  if (qword_1002C0A78 == a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1000E422C(&v5, a2, a3);
}

uint64_t sub_1000E40D4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  v3 = *(a2 + 16);
  return result;
}

void sub_1000E422C(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002C0AA8, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10027C5B8();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002C0AA0 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000E4F6C(a1, a3);
    return;
  }

  if (qword_1002C0AA0 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002C0AD0, memory_order_acquire))
  {
    if (qword_1002C0AC8 != a2)
    {
LABEL_5:

      sub_1000E61A0(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10027C60C();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002C0AC8 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000E6050(a1, a3);
}

void sub_1000E4318(mlir::SparseElementsAttr *a1)
{
  mlir::SparseElementsAttr::getZeroAttr(a1);
  v6 = *(*(*a1 + 32) + 8);
  Shape = mlir::ShapedType::getShape(&v6);
  mlir::ShapedType::getNumElements(Shape, v3);
  mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
  if (v5 != __p)
  {
    if (((v5 - __p) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  operator new();
}

void sub_1000E46E8(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000E495C(void *result)
{
  *result = off_1002B63C8;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000E49B4(void *a1)
{
  *a1 = off_1002B63C8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000E4AF0(__n128 *a1, __n128 *a2)
{
  a2->n128_u64[0] = off_1002B63C8;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2[1].n128_u64[1] = 0;
  v3 = a1->n128_u64[1];
  v2 = a1[1].n128_u64[0];
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  result = a1[2];
  a2[3].n128_u64[0] = a1[3].n128_u64[0];
  a2[2] = result;
  return result;
}

void sub_1000E4B9C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000E4BB4(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000E4BFC(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2] - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return a1[6];
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return a1[6];
    }
  }

  v8 = a1[5] - v4;
  v9[0] = a1[4];
  v9[1] = v8;
  return mlir::DenseElementsAttr::AttributeElementIterator::operator*(v9);
}

uint64_t sub_1000E4C74(uint64_t result)
{
  *result = off_1002B6410;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000E4D2C(uint64_t a1)
{
  *a1 = off_1002B6410;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000E4F10(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000E4F6C(v4);
}

unint64_t sub_1000E4F6C@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E50BC(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000E24D0(a1) == 1;
    sub_1000E5588(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

unint64_t sub_1000E50BC@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  *&v11[0] = sub_1000D4F58(a1);
  Width = mlir::IntegerType::getWidth(v11);
  if (Width > 0x40)
  {
    llvm::APInt::initSlowCase(&v7);
  }

  v7 = 0;
  v9[0] = *(*a1 + 32);
  result = sub_1000E0978(v9, v11);
  if (v12)
  {
    v10[0] = *(v11 + 1);
    *(v10 + 15) = v11[1];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    Width = 0;
    v9[3] = 0;
    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  if (Width >= 0x41)
  {
    result = v7;
    if (v7)
    {
      operator delete[]();
    }
  }

  return result;
}

void sub_1000E5588(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

uint64_t sub_1000E57FC(uint64_t a1)
{
  *a1 = off_1002B6440;
  if (*(a1 + 72) >= 0x41u && *(a1 + 64))
  {
    operator delete[]();
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1000E5874(uint64_t a1)
{
  *a1 = off_1002B6440;
  if (*(a1 + 72) >= 0x41u && *(a1 + 64))
  {
    operator delete[]();
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_1000E5A08(uint64_t result, uint64_t a2)
{
  *a2 = off_1002B6440;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(result + 8);
  v2 = *(result + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  v4 = *(result + 48);
  *(a2 + 32) = *(result + 32);
  *(a2 + 48) = v4;
  v5 = *(result + 72);
  *(a2 + 72) = v5;
  if (v5 > 0x40)
  {

    llvm::APInt::initSlowCase((a2 + 64), (result + 64));
  }

  *(a2 + 64) = *(result + 64);
  return result;
}

void sub_1000E5AF0(uint64_t a1)
{
  if (*(a1 + 72) >= 0x41u && *(a1 + 64))
  {
    operator delete[]();
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;

    operator delete(v2);
  }
}

void sub_1000E5B64(_DWORD *__p)
{
  if (__p[18] >= 0x41u && *(__p + 8))
  {
    operator delete[]();
  }

  v2 = *(__p + 1);
  if (v2)
  {
    *(__p + 2) = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

char *sub_1000E5BDC@<X0>(char *result@<X0>, uint64_t a2@<X1>, llvm::APInt *a3@<X8>)
{
  v3 = *result;
  v4 = (*(result + 1) - *result) >> 3;
  if (!v4)
  {
LABEL_5:
    v7 = *(result + 16);
    *(a3 + 2) = v7;
    if (v7 > 0x40)
    {

      llvm::APInt::initSlowCase(a3, (result + 56));
    }

    v8 = *(result + 7);
    goto LABEL_15;
  }

  v5 = 0;
  while (1)
  {
    v6 = *v3++;
    if (v6 == a2)
    {
      break;
    }

    --v5;
    LODWORD(v4) = v4 - 1;
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  v9 = *(result + 3);
  v10 = *(result + 6);
  if (result[32])
  {
    v11 = 0;
  }

  else
  {
    v11 = *(result + 5) - v5;
  }

  if (v10 == 1)
  {
    v8 = (*(v9 + (v11 >> 3)) >> (v11 & 7)) & 1;
    *(a3 + 2) = 1;
LABEL_15:
    *a3 = v8;
    return result;
  }

  *(a3 + 2) = v10;
  if (v10 >= 0x41)
  {
    llvm::APInt::initSlowCase(a3);
  }

  *a3 = 0;
  if (v10)
  {
    v12 = ((v10 - (v10 != 0)) >> 3) + 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {

    return memmove(a3, (v9 + ((((v10 - (v10 != 0) + 8 * (v10 != 0)) & 0xFFFFFFFFFFFFFFF8) * v11) >> 3)), v12);
  }

  return result;
}

uint64_t sub_1000E5D58(uint64_t result)
{
  *result = off_1002B6488;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000E5E10(uint64_t a1)
{
  *a1 = off_1002B6488;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000E5FF4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000E6050(v4);
}

BOOL sub_1000E6050@<W0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E628C(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000E24D0(a1) == 1;
    sub_1000E668C(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_1000E61A0(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002C0710, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10027CC2C();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002C0708 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000E6F20(a1, a3);
    return;
  }

  if (qword_1002C0708 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002C0738, memory_order_acquire))
  {
    if (qword_1002C0730 != a2)
    {
LABEL_5:

      sub_1000E7E38(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10027B758();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002C0730 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000E7CE8(a1, a3);
}

BOOL sub_1000E628C@<W0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(*a1 + 32);
  v12[0] = *(v4 + 8);
  *&v12[0] = mlir::ShapedType::getElementType(v12);
  result = mlir::Type::isInteger(v12, 1);
  if (result)
  {
    v6 = *(v4 + 32);
    v7 = *(v4 + 24);
    v12[0] = *(v4 + 8);
    Shape = mlir::ShapedType::getShape(v12);
    mlir::ShapedType::getNumElements(Shape, v9);
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v11 != __p)
    {
      if (((v11 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000E668C(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000E6900(void *result)
{
  *result = off_1002B64B8;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000E6958(void *a1)
{
  *a1 = off_1002B64B8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000E6A9C(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B64B8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  result = *(a1 + 32);
  *(a2 + 41) = *(a1 + 41);
  *(a2 + 32) = result;
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

void sub_1000E6B50(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000E6B68(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000E6BB0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56) & 1;
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56) & 1;
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return (*(*(a1 + 32) + (v8 >> 3)) >> (v8 & 7)) & 1;
}

uint64_t sub_1000E6C28(uint64_t result)
{
  *result = off_1002B6500;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000E6CE0(uint64_t a1)
{
  *a1 = off_1002B6500;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000E6EC4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000E6F20(v4);
}

uint64_t sub_1000E6F20@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E7070(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000E24D0(a1) == 1;
    sub_1000E7464(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t sub_1000E7070@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000DC744(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000E7464(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000E76D8(void *result)
{
  *result = off_1002B6530;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000E7730(void *a1)
{
  *a1 = off_1002B6530;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000E7874(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B6530;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  result = *(a1 + 32);
  *(a2 + 41) = *(a1 + 41);
  *(a2 + 32) = result;
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

void sub_1000E7928(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000E7940(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000E7988(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + v8);
}

uint64_t sub_1000E79F0(uint64_t result)
{
  *result = off_1002B6578;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000E7AA8(uint64_t a1)
{
  *a1 = off_1002B6578;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000E7C8C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000E7CE8(v4);
}

uint64_t sub_1000E7CE8@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E7F24(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000E24D0(a1) == 1;
    sub_1000E8318(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_1000E7E38(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002C0760, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10027B7FC();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002C0758 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000E8B9C(a1, a3);
    return;
  }

  if (qword_1002C0758 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002C0788, memory_order_acquire))
  {
    if (qword_1002C0780 != a2)
    {
LABEL_5:

      sub_1000E9AAC(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10027CC80();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002C0780 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000E995C(a1, a3);
}

uint64_t sub_1000E7F24@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000DCA34(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000E8318(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000E858C(void *result)
{
  *result = off_1002B65A8;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000E85E4(void *a1)
{
  *a1 = off_1002B65A8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000E8728(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B65A8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  result = *(a1 + 32);
  *(a2 + 42) = *(a1 + 42);
  *(a2 + 32) = result;
  *(a2 + 58) = 0;
  *(a2 + 62) = 0;
  return result;
}

void sub_1000E87DC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000E87F4(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000E883C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 2 * v8);
}

uint64_t sub_1000E88A4(uint64_t result)
{
  *result = off_1002B65F0;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000E895C(uint64_t a1)
{
  *a1 = off_1002B65F0;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000E8B40(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000E8B9C(v4);
}

uint64_t sub_1000E8B9C@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E8CEC(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000E24D0(a1) == 1;
    sub_1000E90E0(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t sub_1000E8CEC@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000DCD24(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000E90E0(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000E9354(void *result)
{
  *result = off_1002B6620;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000E93AC(void *a1)
{
  *a1 = off_1002B6620;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000E94EC(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B6620;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  result = *(a1 + 32);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 32) = result;
  *(a2 + 60) = 0;
  return result;
}

void sub_1000E959C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000E95B4(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000E95FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 4 * v8);
}

uint64_t sub_1000E9664(uint64_t result)
{
  *result = off_1002B6668;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000E971C(uint64_t a1)
{
  *a1 = off_1002B6668;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000E9900(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000E995C(v4);
}

uint64_t sub_1000E995C@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E9B98(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000E24D0(a1) == 1;
    sub_1000E9F8C(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_1000E9AAC(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002C07B0, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10027CCD4();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002C07A8 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000EA7F0(a1, a3);
    return;
  }

  if (qword_1002C07A8 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002C07D8, memory_order_acquire))
  {
    if (qword_1002C07D0 != a2)
    {
LABEL_5:

      sub_1000EB708(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10027B9F0();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002C07D0 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000EB5B8(a1, a3);
}

uint64_t sub_1000E9B98@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000D633C(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000E9F8C(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000EA200(void *result)
{
  *result = off_1002B6698;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000EA258(void *a1)
{
  *a1 = off_1002B6698;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000EA38C(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B6698;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void sub_1000EA430(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000EA448(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000EA490(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 8 * v8);
}

uint64_t sub_1000EA4F8(uint64_t result)
{
  *result = off_1002B66E0;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000EA5B0(uint64_t a1)
{
  *a1 = off_1002B66E0;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000EA794(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000EA7F0(v4);
}

uint64_t sub_1000EA7F0@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000EA940(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000E24D0(a1) == 1;
    sub_1000EAD34(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t sub_1000EA940@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000DD214(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000EAD34(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000EAFA8(void *result)
{
  *result = off_1002B6710;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000EB000(void *a1)
{
  *a1 = off_1002B6710;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000EB144(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B6710;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  result = *(a1 + 32);
  *(a2 + 41) = *(a1 + 41);
  *(a2 + 32) = result;
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

void sub_1000EB1F8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000EB210(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000EB258(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + v8);
}

uint64_t sub_1000EB2C0(uint64_t result)
{
  *result = off_1002B6758;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000EB378(uint64_t a1)
{
  *a1 = off_1002B6758;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000EB55C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000EB5B8(v4);
}

uint64_t sub_1000EB5B8@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000EB7F4(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000E24D0(a1) == 1;
    sub_1000EBBE8(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_1000EB708(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002C0800, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10027BA94();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002C07F8 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000EC46C(a1, a3);
    return;
  }

  if (qword_1002C07F8 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002C0828, memory_order_acquire))
  {
    if (qword_1002C0820 != a2)
    {
LABEL_5:

      sub_1000ED37C(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10027CD28();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002C0820 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000ED22C(a1, a3);
}

uint64_t sub_1000EB7F4@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000DD504(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000EBBE8(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000EBE5C(void *result)
{
  *result = off_1002B6788;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000EBEB4(void *a1)
{
  *a1 = off_1002B6788;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000EBFF8(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B6788;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  result = *(a1 + 32);
  *(a2 + 42) = *(a1 + 42);
  *(a2 + 32) = result;
  *(a2 + 58) = 0;
  *(a2 + 62) = 0;
  return result;
}

void sub_1000EC0AC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000EC0C4(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000EC10C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 2 * v8);
}

uint64_t sub_1000EC174(uint64_t result)
{
  *result = off_1002B67D0;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000EC22C(uint64_t a1)
{
  *a1 = off_1002B67D0;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000EC410(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000EC46C(v4);
}

uint64_t sub_1000EC46C@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000EC5BC(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000E24D0(a1) == 1;
    sub_1000EC9B0(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t sub_1000EC5BC@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000DD7F4(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000EC9B0(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000ECC24(void *result)
{
  *result = off_1002B6800;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000ECC7C(void *a1)
{
  *a1 = off_1002B6800;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000ECDBC(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B6800;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  result = *(a1 + 32);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 32) = result;
  *(a2 + 60) = 0;
  return result;
}

void sub_1000ECE6C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000ECE84(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000ECECC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 4 * v8);
}

uint64_t sub_1000ECF34(uint64_t result)
{
  *result = off_1002B6848;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000ECFEC(uint64_t a1)
{
  *a1 = off_1002B6848;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000ED1D0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000ED22C(v4);
}

uint64_t sub_1000ED22C@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000ED468(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000E24D0(a1) == 1;
    sub_1000ED85C(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_1000ED37C(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002C07D8, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10027B9F0();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002C07D0 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000EB5B8(a1, a3);
    return;
  }

  if (qword_1002C07D0 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002C0738, memory_order_acquire))
  {
    if (qword_1002C0730 != a2)
    {
LABEL_5:

      sub_1000EE0C0(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10027B758();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002C0730 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000E7CE8(a1, a3);
}

uint64_t sub_1000ED468@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000DDAE4(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000ED85C(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000EDAD0(void *result)
{
  *result = off_1002B6878;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000EDB28(void *a1)
{
  *a1 = off_1002B6878;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000EDC5C(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B6878;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void sub_1000EDD00(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000EDD18(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000EDD60(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 8 * v8);
}

uint64_t sub_1000EDDC8(uint64_t result)
{
  *result = off_1002B68C0;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000EDE80(uint64_t a1)
{
  *a1 = off_1002B68C0;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000EE064(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000EE0C0(v4);
}

void sub_1000EE0C0(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002C0800, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10027BA94();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002C07F8 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000EC46C(a1, a3);
    return;
  }

  if (qword_1002C07F8 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002C0760, memory_order_acquire))
  {
    if (qword_1002C0758 != a2)
    {
LABEL_5:

      sub_1000EE1AC(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10027B7FC();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002C0758 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000E8B9C(a1, a3);
}

void sub_1000EE1AC(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002C0850, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10027CD7C();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002C0848 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000EE298(a1, a3);
    return;
  }

  if (qword_1002C0848 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002C0878, memory_order_acquire))
  {
    if (qword_1002C0870 != a2)
    {
LABEL_5:

      sub_1000EF190(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10027CDD0();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002C0870 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000EF040(a1, a3);
}

uint64_t sub_1000EE298@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000EE3E8(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000E24D0(a1) == 1;
    sub_1000EE7DC(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t sub_1000EE3E8@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000DDAE4(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000EE7DC(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000EEA50(void *result)
{
  *result = off_1002B68F0;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000EEAA8(void *a1)
{
  *a1 = off_1002B68F0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000EEBDC(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B68F0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void sub_1000EEC80(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000EEC98(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000EECE0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 8 * v8);
}

uint64_t sub_1000EED48(uint64_t result)
{
  *result = off_1002B6938;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000EEE00(uint64_t a1)
{
  *a1 = off_1002B6938;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000EEFE4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000EF040(v4);
}

uint64_t sub_1000EF040@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000EF27C(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000E24D0(a1) == 1;
    sub_1000EF670(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_1000EF190(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002C0AF8, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10027C708();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002C0AF0 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000EFED4(a1, a3);
    return;
  }

  if (qword_1002C0AF0 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002C08A0, memory_order_acquire))
  {
    if (qword_1002C0898 != a2)
    {
LABEL_5:

      sub_1000F11C4(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10027CE24();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002C0898 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000F1074(a1, a3);
}

uint64_t sub_1000EF27C@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000D633C(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000EF670(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000EF8E4(void *result)
{
  *result = off_1002B6968;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000EF93C(void *a1)
{
  *a1 = off_1002B6968;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000EFA70(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B6968;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void sub_1000EFB14(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000EFB2C(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000EFB74(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 8 * v8);
}

uint64_t sub_1000EFBDC(uint64_t result)
{
  *result = off_1002B69B0;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000EFC94(uint64_t a1)
{
  *a1 = off_1002B69B0;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000EFE78(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000EFED4(v4);
}

unint64_t sub_1000EFED4@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F0024(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000E24D0(a1) == 1;
    sub_1000F0508(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

unint64_t sub_1000F0024@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1000F077C(a1, &v7);
  v11[0] = *(*a1 + 32);
  result = mlir::DenseElementsAttr::tryGetComplexIntValues(v11, v13);
  if (v14)
  {
    v12[0] = *(v13 + 1);
    *(v12 + 15) = v13[1];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    v8 = 0;
    v10 = 0;
    v11[3] = 0;
    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      operator delete[]();
    }
  }

  if (v8 >= 0x41)
  {
    result = v7;
    if (v7)
    {
      operator delete[]();
    }
  }

  return result;
}

void sub_1000F0508(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

uint64_t sub_1000F077C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1000D4F58(a1);
  result = mlir::IntegerType::getWidth(&v6);
  v5 = result;
  if (result > 0x40)
  {
    llvm::APInt::initSlowCase(&v4);
  }

  v4 = 0;
  *(a2 + 8) = result;
  *a2 = 0;
  *(a2 + 24) = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_1000F086C(uint64_t a1)
{
  *a1 = off_1002B69E0;
  if (*(a1 + 88) >= 0x41u && *(a1 + 80))
  {
    operator delete[]();
  }

  if (*(a1 + 72) >= 0x41u && *(a1 + 64))
  {
    operator delete[]();
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1000F090C(uint64_t a1)
{
  *a1 = off_1002B69E0;
  if (*(a1 + 88) >= 0x41u && *(a1 + 80))
  {
    operator delete[]();
  }

  if (*(a1 + 72) >= 0x41u && *(a1 + 64))
  {
    operator delete[]();
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  operator delete();
}

void sub_1000F0A2C(uint64_t a1)
{
  if (*(a1 + 88) >= 0x41u && *(a1 + 80))
  {
    operator delete[]();
  }

  if (*(a1 + 72) >= 0x41u && *(a1 + 64))
  {
    operator delete[]();
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;

    operator delete(v2);
  }
}

void sub_1000F0AC4(_DWORD *__p)
{
  if (__p[22] >= 0x41u && *(__p + 10))
  {
    operator delete[]();
  }

  if (__p[18] >= 0x41u && *(__p + 8))
  {
    operator delete[]();
  }

  v2 = *(__p + 1);
  if (v2)
  {
    *(__p + 2) = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t *sub_1000F0B58@<X0>(uint64_t *result@<X0>, void *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = result[1];
  v4 = result[2] - v3;
  if ((v4 & 0x7FFFFFFF8) != 0)
  {
    v5 = 0;
    v6 = -(v4 >> 3);
    while (1)
    {
      v7 = *v3++;
      if (v7 == *a2)
      {
        break;
      }

      if (v6 == --v5)
      {
        goto LABEL_5;
      }
    }

    v11 = *(result + 2);
    v10 = result[7];
    v12 = result[6] - v5;
    v13 = v10;
    return mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v11, a3);
  }

  else
  {
LABEL_5:
    v8 = *(result + 18);
    a3[2] = v8;
    if (v8 > 0x40)
    {
      llvm::APInt::initSlowCase(a3, (result + 8));
    }

    *a3 = result[8];
    v9 = *(result + 22);
    a3[6] = v9;
    if (v9 > 0x40)
    {

      llvm::APInt::initSlowCase((a3 + 4), (result + 10));
    }

    *(a3 + 2) = result[10];
  }

  return result;
}

uint64_t sub_1000F0C60(uint64_t result, uint64_t a2)
{
  *result = off_1002B69E0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  v2 = *(a2 + 8);
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  v3 = *(a2 + 40);
  *(result + 32) = *(a2 + 24);
  *(result + 48) = v3;
  v4 = *(a2 + 64);
  *(result + 72) = v4;
  if (v4 > 0x40)
  {
    llvm::APInt::initSlowCase((result + 64), (a2 + 56));
  }

  *(result + 64) = *(a2 + 56);
  v5 = *(a2 + 80);
  *(result + 88) = v5;
  if (v5 > 0x40)
  {
    llvm::APInt::initSlowCase((result + 80), (a2 + 72));
  }

  *(result + 80) = *(a2 + 72);
  return result;
}

uint64_t sub_1000F0D7C(uint64_t result)
{
  *result = off_1002B6A28;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000F0E34(uint64_t a1)
{
  *a1 = off_1002B6A28;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000F1018(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000F1074(v4);
}

uint64_t sub_1000F1074@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F12B0(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000E24D0(a1) == 1;
    sub_1000F16A4(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_1000F11C4(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002C08C8, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10027CE78();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002C08C0 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000F1F28(a1, a3);
    return;
  }

  if (qword_1002C08C0 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002C08F0, memory_order_acquire))
  {
    if (qword_1002C08E8 != a2)
    {
LABEL_5:

      sub_1000F2E38(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10027CECC();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002C08E8 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000F2CE8(a1, a3);
}

uint64_t sub_1000F12B0@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000DE6B4(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000F16A4(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000F1918(void *result)
{
  *result = off_1002B6A58;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000F1970(void *a1)
{
  *a1 = off_1002B6A58;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000F1AB4(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B6A58;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  result = *(a1 + 32);
  *(a2 + 42) = *(a1 + 42);
  *(a2 + 32) = result;
  *(a2 + 58) = 0;
  *(a2 + 62) = 0;
  return result;
}

void sub_1000F1B68(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000F1B80(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000F1BC8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 2 * v8);
}

uint64_t sub_1000F1C30(uint64_t result)
{
  *result = off_1002B6AA0;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000F1CE8(uint64_t a1)
{
  *a1 = off_1002B6AA0;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000F1ECC(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000F1F28(v4);
}

uint64_t sub_1000F1F28@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F2078(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000E24D0(a1) == 1;
    sub_1000F246C(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t sub_1000F2078@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000DE9B0(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000F246C(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000F26E0(void *result)
{
  *result = off_1002B6AD0;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000F2738(void *a1)
{
  *a1 = off_1002B6AD0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000F2878(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B6AD0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  result = *(a1 + 32);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 32) = result;
  *(a2 + 60) = 0;
  return result;
}

void sub_1000F2928(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000F2940(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000F2988(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 4 * v8);
}

uint64_t sub_1000F29F0(uint64_t result)
{
  *result = off_1002B6B18;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000F2AA8(uint64_t a1)
{
  *a1 = off_1002B6B18;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000F2C8C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000F2CE8(v4);
}

uint64_t sub_1000F2CE8@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F2F24(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000E24D0(a1) == 1;
    sub_1000F3318(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_1000F2E38(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002C0918, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10027CF20();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002C0910 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000F3B7C(a1, a3);
    return;
  }

  if (qword_1002C0910 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002C0940, memory_order_acquire))
  {
    if (qword_1002C0938 != a2)
    {
LABEL_5:

      sub_1000F4A98(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10027CF74();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002C0938 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000F4948(a1, a3);
}

uint64_t sub_1000F2F24@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000DECAC(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000F3318(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000F358C(void *result)
{
  *result = off_1002B6B48;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000F35E4(void *a1)
{
  *a1 = off_1002B6B48;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000F3718(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B6B48;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void sub_1000F37BC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000F37D4(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000F381C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 8 * v8);
}

uint64_t sub_1000F3884(uint64_t result)
{
  *result = off_1002B6B90;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000F393C(uint64_t a1)
{
  *a1 = off_1002B6B90;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000F3B20(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000F3B7C(v4);
}

uint64_t sub_1000F3B7C@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F3CCC(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000E24D0(a1) == 1;
    sub_1000F40C4(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t sub_1000F3CCC@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000DEFA8(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000F40C4(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000F4338(void *result)
{
  *result = off_1002B6BC0;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000F4390(void *a1)
{
  *a1 = off_1002B6BC0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000F44CC(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B6BC0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void sub_1000F4578(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000F4590(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000F45D8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v9 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v9 = 0;
    }

    v10 = (*(a1 + 32) + 16 * v9);
    v11 = v10[1];
    return *v10;
  }

  else
  {
LABEL_5:
    v7 = *(a1 + 64);
    return *(a1 + 56);
  }
}

uint64_t sub_1000F4650(uint64_t result)
{
  *result = off_1002B6C08;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000F4708(uint64_t a1)
{
  *a1 = off_1002B6C08;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000F48EC(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000F4948(v4);
}

uint64_t sub_1000F4948@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F4B84(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000E24D0(a1) == 1;
    sub_1000F4F78(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_1000F4A98(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002C0968, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10027CFC8();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002C0960 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000F57FC(a1, a3);
    return;
  }

  if (qword_1002C0960 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002C0990, memory_order_acquire))
  {
    if (qword_1002C0988 != a2)
    {
LABEL_5:

      sub_1000F670C(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10027D01C();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002C0988 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000F65BC(a1, a3);
}

uint64_t sub_1000F4B84@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000DF2A4(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000F4F78(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000F51EC(void *result)
{
  *result = off_1002B6C38;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000F5244(void *a1)
{
  *a1 = off_1002B6C38;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000F5388(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B6C38;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  result = *(a1 + 32);
  *(a2 + 42) = *(a1 + 42);
  *(a2 + 32) = result;
  *(a2 + 58) = 0;
  *(a2 + 62) = 0;
  return result;
}

void sub_1000F543C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000F5454(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000F549C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 2 * v8);
}

uint64_t sub_1000F5504(uint64_t result)
{
  *result = off_1002B6C80;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000F55BC(uint64_t a1)
{
  *a1 = off_1002B6C80;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000F57A0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000F57FC(v4);
}

uint64_t sub_1000F57FC@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F594C(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000E24D0(a1) == 1;
    sub_1000F5D40(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t sub_1000F594C@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000DF5A0(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000F5D40(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000F5FB4(void *result)
{
  *result = off_1002B6CB0;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000F600C(void *a1)
{
  *a1 = off_1002B6CB0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000F614C(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B6CB0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  result = *(a1 + 32);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 32) = result;
  *(a2 + 60) = 0;
  return result;
}

void sub_1000F61FC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000F6214(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000F625C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 4 * v8);
}

uint64_t sub_1000F62C4(uint64_t result)
{
  *result = off_1002B6CF8;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000F637C(uint64_t a1)
{
  *a1 = off_1002B6CF8;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000F6560(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000F65BC(v4);
}

uint64_t sub_1000F65BC@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F67F8(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000E24D0(a1) == 1;
    sub_1000F6BEC(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_1000F670C(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002C09B8, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10027D070();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002C09B0 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000F7450(a1, a3);
    return;
  }

  if (qword_1002C09B0 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002C0B20, memory_order_acquire))
  {
    if (qword_1002C0B18 != a2)
    {
LABEL_5:

      sub_1000F836C(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10027C7B0();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002C0B18 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000F821C(a1, a3);
}

uint64_t sub_1000F67F8@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000DF89C(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000F6BEC(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000F6E60(void *result)
{
  *result = off_1002B6D28;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000F6EB8(void *a1)
{
  *a1 = off_1002B6D28;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000F6FEC(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B6D28;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void sub_1000F7090(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000F70A8(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000F70F0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 8 * v8);
}

uint64_t sub_1000F7158(uint64_t result)
{
  *result = off_1002B6D70;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000F7210(uint64_t a1)
{
  *a1 = off_1002B6D70;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000F73F4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000F7450(v4);
}

uint64_t sub_1000F7450@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F75A0(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000E24D0(a1) == 1;
    sub_1000F7998(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t sub_1000F75A0@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000DFB4C(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000F7998(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000F7C0C(void *result)
{
  *result = off_1002B6DA0;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000F7C64(void *a1)
{
  *a1 = off_1002B6DA0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000F7DA0(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B6DA0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void sub_1000F7E4C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000F7E64(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000F7EAC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v9 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v9 = 0;
    }

    v10 = (*(a1 + 32) + 16 * v9);
    v11 = v10[1];
    return *v10;
  }

  else
  {
LABEL_5:
    v7 = *(a1 + 64);
    return *(a1 + 56);
  }
}

uint64_t sub_1000F7F24(uint64_t result)
{
  *result = off_1002B6DE8;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000F7FDC(uint64_t a1)
{
  *a1 = off_1002B6DE8;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000F81C0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000F821C(v4);
}

void sub_1000F821C(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1000F8458(a1, v6);
  if (v7 == 1)
  {
    v4 = sub_1000E24D0(a1) == 1;
    sub_1000F89C4(v4, v6, &v5);
  }

  *a2 = 0;
  a2[16] = 0;
}

void sub_1000F836C(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002C09E0, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10027D0C4();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002C09D8 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000F9464(a1, a3);
    return;
  }

  if (qword_1002C09D8 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002C0A08, memory_order_acquire))
  {
    if (qword_1002C0A00 != a2)
    {
LABEL_5:

      sub_1000FA380(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10027D118();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002C0A00 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000FA230(a1, a3);
}

void sub_1000F8458(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  mlir::SparseElementsAttr::getZeroAPFloat(a1, &v20);
  v17[0] = *(*a1 + 32);
  FloatValues = mlir::DenseElementsAttr::tryGetFloatValues(v17, v21);
  if (v23)
  {
    v5 = v21[0];
    v18 = *&v21[1];
    *v19 = *v22;
    *&v19[15] = *&v22[15];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &v9);
    __p[1] = 0;
    v12 = 0;
    __p[0] = 0;
    if (v10 != v9)
    {
      if (((v10 - v9) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    v13 = v5;
    v14 = v18;
    *v15 = *v19;
    *&v15[15] = *&v19[15];
    v7 = v20.n128_u64[0];
    if (llvm::APFloatBase::PPCDoubleDouble(v6) == v7)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v16, &v20);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(v16, &v20);
    }

    v17[3] = 0;
    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  v8 = llvm::APFloatBase::PPCDoubleDouble(FloatValues);
  if (v8 == v20.n128_u64[0])
  {
    sub_100029F40(&v20);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v20);
  }
}

void sub_1000F89C4(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000F8C38(void *a1)
{
  *a1 = off_1002B6E18;
  v2 = (a1 + 9);
  v3 = a1[9];
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v3)
  {
    sub_100029F40(v2);
    v4 = a1[1];
    if (!v4)
    {
      return a1;
    }

    goto LABEL_3;
  }

  llvm::detail::IEEEFloat::~IEEEFloat(v2);
  v4 = a1[1];
  if (v4)
  {
LABEL_3:
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_1000F8CC0(void *a1)
{
  *a1 = off_1002B6E18;
  v2 = (a1 + 9);
  v3 = a1[9];
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v3)
  {
    sub_100029F40(v2);
    v4 = a1[1];
    if (!v4)
    {
LABEL_4:

      operator delete();
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v2);
    v4 = a1[1];
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  a1[2] = v4;
  operator delete(v4);
  goto LABEL_4;
}

void *sub_1000F8E74(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B6E18;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = v5;
  *(a2 + 48) = v6;
  v8 = *(a1 + 72);
  v7 = (a1 + 72);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v8)
  {

    return llvm::detail::DoubleAPFloat::DoubleAPFloat((a2 + 72), v7);
  }

  else
  {

    return llvm::detail::IEEEFloat::IEEEFloat((a2 + 72), v7);
  }
}

void sub_1000F8F74(void *a1)
{
  v2 = (a1 + 9);
  v3 = a1[9];
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v3)
  {
    sub_100029F40(v2);
    v4 = a1[1];
    if (!v4)
    {
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v2);
    v4 = a1[1];
    if (!v4)
    {
      return;
    }
  }

  a1[2] = v4;

  operator delete(v4);
}

void sub_1000F8FF4(void *a1)
{
  v2 = (a1 + 9);
  v3 = a1[9];
  if (llvm::APFloatBase::PPCDoubleDouble(a1) != v3)
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v2);
    v4 = a1[1];
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_100029F40(v2);
  v4 = a1[1];
  if (v4)
  {
LABEL_3:
    a1[2] = v4;
    operator delete(v4);
  }

LABEL_4:

  operator delete(a1);
}

const llvm::APInt *sub_1000F9070@<X0>(uint64_t a1@<X0>, void *a2@<X1>, llvm::detail::IEEEFloat *a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16) - v4;
  if ((v5 & 0x7FFFFFFF8) != 0)
  {
    v6 = 0;
    v7 = -(v5 >> 3);
    while (1)
    {
      v8 = *v4++;
      if (v8 == *a2)
      {
        break;
      }

      if (v7 == --v6)
      {
        goto LABEL_5;
      }
    }

    v13 = *(a1 + 32);
    v12 = *(a1 + 48);
    v15 = *(a1 + 56);
    v14 = v12 - v6;
    return sub_1000D2714(&v13, a3);
  }

  else
  {
LABEL_5:
    v9 = (a1 + 72);
    v10 = *(a1 + 72);
    if (llvm::APFloatBase::PPCDoubleDouble(a1) == v10)
    {

      return llvm::detail::DoubleAPFloat::DoubleAPFloat(a3, v9);
    }

    else
    {

      return llvm::detail::IEEEFloat::IEEEFloat(a3, v9);
    }
  }
}

uint64_t sub_1000F916C(uint64_t result)
{
  *result = off_1002B6E60;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000F9224(uint64_t a1)
{
  *a1 = off_1002B6E60;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000F9408(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000F9464(v4);
}

uint64_t sub_1000F9464@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F95B4(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000E24D0(a1) == 1;
    sub_1000F99B4(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t sub_1000F95B4@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(*a1 + 32);
  v13[0] = *(v4 + 8);
  ElementType = mlir::ShapedType::getElementType(v13);
  result = sub_1000D447C(ElementType, 4, 0, 1u);
  if (result)
  {
    v7 = *(v4 + 32);
    v8 = *(v4 + 24);
    v13[0] = *(v4 + 8);
    Shape = mlir::ShapedType::getShape(v13);
    mlir::ShapedType::getNumElements(Shape, v10);
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v12 != __p)
    {
      if (((v12 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000F99B4(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000F9C28(void *result)
{
  *result = off_1002B6E90;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000F9C80(void *a1)
{
  *a1 = off_1002B6E90;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000F9DC0(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B6E90;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  result = *(a1 + 32);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 32) = result;
  *(a2 + 60) = 0;
  return result;
}

void sub_1000F9E70(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000F9E88(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

float sub_1000F9ED0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 4 * v8);
}

uint64_t sub_1000F9F38(uint64_t result)
{
  *result = off_1002B6ED8;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000F9FF0(uint64_t a1)
{
  *a1 = off_1002B6ED8;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000FA1D4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000FA230(v4);
}

uint64_t sub_1000FA230@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000FA46C(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000E24D0(a1) == 1;
    sub_1000FA86C(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_1000FA380(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002C0B48, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10027C858();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002C0B40 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000FB0D0(a1, a3);
    return;
  }

  if (qword_1002C0B40 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002C0A30, memory_order_acquire))
  {
    if (qword_1002C0A28 != a2)
    {
LABEL_5:

      sub_1000FC690(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10027C3C0();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002C0A28 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000FC540(a1, a3);
}

uint64_t sub_1000FA46C@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(*a1 + 32);
  v13[0] = *(v4 + 8);
  ElementType = mlir::ShapedType::getElementType(v13);
  result = sub_1000D447C(ElementType, 8, 0, 1u);
  if (result)
  {
    v7 = *(v4 + 32);
    v8 = *(v4 + 24);
    v13[0] = *(v4 + 8);
    Shape = mlir::ShapedType::getShape(v13);
    mlir::ShapedType::getNumElements(Shape, v10);
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v12 != __p)
    {
      if (((v12 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000FA86C(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000FAAE0(void *result)
{
  *result = off_1002B6F08;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000FAB38(void *a1)
{
  *a1 = off_1002B6F08;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000FAC6C(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B6F08;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void sub_1000FAD10(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000FAD28(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

double sub_1000FAD70(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 8 * v8);
}

uint64_t sub_1000FADD8(uint64_t result)
{
  *result = off_1002B6F50;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000FAE90(uint64_t a1)
{
  *a1 = off_1002B6F50;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000FB074(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000FB0D0(v4);
}

void sub_1000FB0D0(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1000FB220(a1, v6);
  if (v7 == 1)
  {
    v4 = sub_1000E24D0(a1) == 1;
    sub_1000FB77C(v4, v6, &v5);
  }

  *a2 = 0;
  a2[16] = 0;
}

void sub_1000FB220(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1000FB9F0(a1, &v23);
  v20[0] = *(*a1 + 32);
  ComplexFloatValues = mlir::DenseElementsAttr::tryGetComplexFloatValues(v20, v25);
  if (v27)
  {
    v5 = v25[0];
    v21 = *&v25[1];
    v22[0] = *v26;
    *(v22 + 15) = *&v26[15];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &v10);
    v13 = 0;
    v14 = 0;
    __p = 0;
    if (v11 != v10)
    {
      if (((v11 - v10) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    v15 = v5;
    v16 = v21;
    *v17 = v22[0];
    *&v17[15] = *(v22 + 15);
    v7 = v23.n128_u64[0];
    v8 = llvm::APFloatBase::PPCDoubleDouble(v6);
    if (v8 == v7)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(&v18, &v23);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(&v18, &v23);
    }

    if (v8 == v24.n128_u64[0])
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(&v19, &v24);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(&v19, &v24);
    }

    sub_1000FBAEC(v20);
  }

  *a2 = 0;
  a2[48] = 0;
  v9 = llvm::APFloatBase::PPCDoubleDouble(ComplexFloatValues);
  if (v9 == v24.n128_u64[0])
  {
    sub_100029F40(&v24);
    if (v9 != v23.n128_u64[0])
    {
      goto LABEL_15;
    }

LABEL_18:
    sub_100029F40(&v23);
    return;
  }

  llvm::detail::IEEEFloat::~IEEEFloat(&v24);
  if (v9 == v23.n128_u64[0])
  {
    goto LABEL_18;
  }

LABEL_15:
  llvm::detail::IEEEFloat::~IEEEFloat(&v23);
}

void sub_1000FB77C(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void sub_1000FB9F0(mlir::SparseElementsAttr *a1@<X0>, llvm::detail::IEEEFloat *a2@<X8>)
{
  ZeroAPFloat = mlir::SparseElementsAttr::getZeroAPFloat(a1, v7);
  v4 = v7[0];
  v5 = llvm::APFloatBase::PPCDoubleDouble(ZeroAPFloat);
  if (v5 != v4)
  {
    llvm::detail::IEEEFloat::IEEEFloat(a2, v7);
    v6 = (a2 + 24);
    if (v5 != v7[0])
    {
      goto LABEL_3;
    }

LABEL_7:
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v6, v7);
    if (v5 != v7[0])
    {
      goto LABEL_4;
    }

LABEL_8:
    sub_100029F40(v7);
    return;
  }

  llvm::detail::DoubleAPFloat::DoubleAPFloat(a2, v7);
  v6 = (a2 + 24);
  if (v5 == v7[0])
  {
    goto LABEL_7;
  }

LABEL_3:
  llvm::detail::IEEEFloat::IEEEFloat(v6, v7);
  if (v5 == v7[0])
  {
    goto LABEL_8;
  }

LABEL_4:
  llvm::detail::IEEEFloat::~IEEEFloat(v7);
}

void *sub_1000FBBF4(void *a1)
{
  *a1 = off_1002B6F80;
  v2 = (a1 + 12);
  v3 = a1[12];
  v4 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v4 != v3)
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v2);
    v5 = (a1 + 9);
    if (v4 != a1[9])
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_100029F40(v5);
    v6 = a1[1];
    if (!v6)
    {
      return a1;
    }

    goto LABEL_4;
  }

  sub_100029F40(v2);
  v5 = (a1 + 9);
  if (v4 == a1[9])
  {
    goto LABEL_7;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(v5);
  v6 = a1[1];
  if (v6)
  {
LABEL_4:
    a1[2] = v6;
    operator delete(v6);
  }

  return a1;
}

void sub_1000FBCA8(void *a1)
{
  *a1 = off_1002B6F80;
  v2 = (a1 + 12);
  v3 = a1[12];
  v4 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v4 == v3)
  {
    sub_100029F40(v2);
    v5 = (a1 + 9);
    if (v4 != a1[9])
    {
LABEL_3:
      llvm::detail::IEEEFloat::~IEEEFloat(v5);
      v6 = a1[1];
      if (!v6)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v2);
    v5 = (a1 + 9);
    if (v4 != a1[9])
    {
      goto LABEL_3;
    }
  }

  sub_100029F40(v5);
  v6 = a1[1];
  if (!v6)
  {
LABEL_5:

    operator delete();
  }

LABEL_4:
  a1[2] = v6;
  operator delete(v6);
  goto LABEL_5;
}

void sub_1000FBE1C(void *a1)
{
  v2 = (a1 + 12);
  v3 = a1[12];
  v4 = (a1 + 9);
  v5 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v5 != v3)
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v2);
    v6 = v4;
    if (v5 != *v4)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_100029F40(v6);
    v7 = a1[1];
    if (!v7)
    {
      return;
    }

    goto LABEL_4;
  }

  sub_100029F40(v2);
  v6 = v4;
  if (v5 == *v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(v6);
  v7 = a1[1];
  if (!v7)
  {
    return;
  }

LABEL_4:
  a1[2] = v7;

  operator delete(v7);
}

void sub_1000FBED8(void *a1)
{
  v2 = (a1 + 12);
  v3 = a1[12];
  v4 = (a1 + 9);
  v5 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v5 == v3)
  {
    sub_100029F40(v2);
    v6 = v4;
    if (v5 != *v4)
    {
LABEL_3:
      llvm::detail::IEEEFloat::~IEEEFloat(v6);
      v7 = a1[1];
      if (!v7)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v2);
    v6 = v4;
    if (v5 != *v4)
    {
      goto LABEL_3;
    }
  }

  sub_100029F40(v6);
  v7 = a1[1];
  if (v7)
  {
LABEL_4:
    a1[2] = v7;
    operator delete(v7);
  }

LABEL_5:

  operator delete(a1);
}

uint64_t sub_1000FBF98(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v6;
  *(a1 + 24) = v5;
  v7 = *(a2 + 64);
  v8 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v8 == v7)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 64), (a2 + 64));
    v9 = (a1 + 88);
    v10 = (a2 + 88);
    if (v8 != *(a2 + 88))
    {
      goto LABEL_6;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat((a1 + 64), (a2 + 64));
    v9 = (a1 + 88);
    v10 = (a2 + 88);
    if (v8 != *(a2 + 88))
    {
LABEL_6:
      llvm::detail::IEEEFloat::IEEEFloat(v9, v10);
      return a1;
    }
  }

  llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, v10);
  return a1;
}

void sub_1000FC0B0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = (*(a1 + 8) - *a1) >> 3;
  if (!v6)
  {
LABEL_5:
    v9 = *(a1 + 64);
    v10 = llvm::APFloatBase::PPCDoubleDouble(a1);
    if (v10 == v9)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(a3, (a1 + 64));
      v11 = (a3 + 3);
      v12 = (a1 + 88);
      if (v10 != *(a1 + 88))
      {
        goto LABEL_7;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(a3, (a1 + 64));
      v11 = (a3 + 3);
      v12 = (a1 + 88);
      if (v10 != *(a1 + 88))
      {
LABEL_7:

        llvm::detail::IEEEFloat::IEEEFloat(v11, v12);
        return;
      }
    }

    llvm::detail::DoubleAPFloat::DoubleAPFloat(v11, v12);
    return;
  }

  v7 = 0;
  while (1)
  {
    v8 = *v5++;
    if (v8 == a2)
    {
      break;
    }

    --v7;
    LODWORD(v6) = v6 - 1;
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  v14 = *(a1 + 24);
  v13 = *(a1 + 40);
  v16 = *(a1 + 48);
  v15 = v13 - v7;
  mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v14, &v17);
  sub_1000C9214(&v17, &v14, a3);
  if (v20 >= 0x41 && v19)
  {
    operator delete[]();
  }

  if (v18 >= 0x41 && v17)
  {
    operator delete[]();
  }
}

uint64_t sub_1000FC248(uint64_t result)
{
  *result = off_1002B6FC8;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000FC300(uint64_t a1)
{
  *a1 = off_1002B6FC8;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000FC4E4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000FC540(v4);
}

uint64_t sub_1000FC540@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000FC774(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000E24D0(a1) == 1;
    sub_1000FCB80(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

mlir::SparseElementsAttr *sub_1000FC690@<X0>(mlir::SparseElementsAttr *result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002C0A58, memory_order_acquire))
  {
    if (qword_1002C0A50 != a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = a3;
    v3 = result;
    v5 = a2;
    sub_10027C414();
    result = v3;
    a2 = v5;
    a3 = v7;
    if (qword_1002C0A50 != v5)
    {
LABEL_3:
      if (atomic_load_explicit(&qword_1002C0B98, memory_order_acquire))
      {
        if (qword_1002C0B90 != a2)
        {
LABEL_5:
          *a3 = 0;
          a3[16] = 0;
          return result;
        }
      }

      else
      {
        v8 = a3;
        v4 = result;
        v6 = a2;
        sub_10027CAA0();
        result = v4;
        a3 = v8;
        if (qword_1002C0B90 != v6)
        {
          goto LABEL_5;
        }
      }

      sub_1000FE1D8(result);
    }
  }

  return sub_1000FD3F4(result, a3);
}

uint64_t sub_1000FC774@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(*a1 + 32);
  v13[0] = *(v4 + 8);
  *&v13[0] = mlir::ShapedType::getElementType(v13);
  ElementType = mlir::ComplexType::getElementType(v13);
  result = sub_1000D447C(ElementType, 4, 0, 1u);
  if (result)
  {
    v7 = *(v4 + 32);
    v8 = *(v4 + 24);
    v13[0] = *(v4 + 8);
    Shape = mlir::ShapedType::getShape(v13);
    mlir::ShapedType::getNumElements(Shape, v10);
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v12 != __p)
    {
      if (((v12 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000FCB80(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000FCDF4(void *result)
{
  *result = off_1002B6FF8;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000FCE4C(void *a1)
{
  *a1 = off_1002B6FF8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000FCF80(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B6FF8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void sub_1000FD024(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000FD03C(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

float sub_1000FD084(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v9 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v9 = 0;
    }

    v10 = (*(a1 + 32) + 8 * v9);
    v11 = v10[1];
    return *v10;
  }

  else
  {
LABEL_5:
    v7 = *(a1 + 60);
    return *(a1 + 56);
  }
}

uint64_t sub_1000FD0FC(uint64_t result)
{
  *result = off_1002B7040;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000FD1B4(uint64_t a1)
{
  *a1 = off_1002B7040;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000FD398(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000FD3F4(v4);
}

uint64_t sub_1000FD3F4@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000FD544(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000E24D0(a1) == 1;
    sub_1000FD954(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t sub_1000FD544@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(*a1 + 32);
  v13[0] = *(v4 + 8);
  *&v13[0] = mlir::ShapedType::getElementType(v13);
  ElementType = mlir::ComplexType::getElementType(v13);
  result = sub_1000D447C(ElementType, 8, 0, 1u);
  if (result)
  {
    v7 = *(v4 + 32);
    v8 = *(v4 + 24);
    v13[0] = *(v4 + 8);
    Shape = mlir::ShapedType::getShape(v13);
    mlir::ShapedType::getNumElements(Shape, v10);
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v12 != __p)
    {
      if (((v12 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10002BC08();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000FD954(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000FDBC8(void *result)
{
  *result = off_1002B7070;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000FDC20(void *a1)
{
  *a1 = off_1002B7070;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000FDD5C(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B7070;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void sub_1000FDE08(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000FDE20(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

double sub_1000FDE68(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v9 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v9 = 0;
    }

    v10 = (*(a1 + 32) + 16 * v9);
    v11 = v10[1];
    return *v10;
  }

  else
  {
LABEL_5:
    v7 = *(a1 + 64);
    return *(a1 + 56);
  }
}

uint64_t sub_1000FDEE0(uint64_t result)
{
  *result = off_1002B70B8;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000FDF98(uint64_t a1)
{
  *a1 = off_1002B70B8;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000FE17C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000FE1D8(v4);
}

void sub_1000FE328(mlir::SparseElementsAttr *a1)
{
  v2 = *(*a1 + 32);
  v3 = *(v2 + 32);
  v4 = *(v2 + 24);
  v9 = *(v2 + 8);
  Shape = mlir::ShapedType::getShape(&v9);
  mlir::ShapedType::getNumElements(Shape, v6);
  mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
  if (v8 != __p)
  {
    if (((v8 - __p) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  operator new();
}

void sub_1000FE6FC(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[1] = a1;
  v4 = *a2;
  v5[0] = 0;
  v7 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = a2[4];
    if (v3)
    {
      if (v3 == a2 + 1)
      {
        v6 = v5;
        (*(*v3 + 24))(v3, v5);
      }

      else
      {
        v6 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  operator new();
}

void *sub_1000FE970(void *result)
{
  *result = off_1002B70E8;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1000FE9C8(void *a1)
{
  *a1 = off_1002B70E8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000FEB04(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B70E8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10002BC08();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void sub_1000FEBB0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000FEBC8(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000FEC10(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v9 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v9 = 0;
    }

    v10 = (*(a1 + 32) + 16 * v9);
    v11 = v10[1];
    return *v10;
  }

  else
  {
LABEL_5:
    v7 = *(a1 + 64);
    return *(a1 + 56);
  }
}

uint64_t sub_1000FEC88(uint64_t result)
{
  *result = off_1002B7130;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void sub_1000FED40(uint64_t a1)
{
  *a1 = off_1002B7130;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  operator delete();
}

uint64_t sub_1000FEF24(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_100033DA0();
  return sub_1000FEF80(v4);
}

uint64_t sub_1000FEF84(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2[1];
  v7 = a2[3];
  v8 = a2[4];
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v10, v6);
  mlir::AttrTypeImmediateSubElementWalker::walk(v10, v7);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v10, v8);
}

uint64_t sub_1000FEFDC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8.i64[0] = a3;
  v8.i64[1] = a4;
  v7.i64[0] = a5;
  v7.i64[1] = a6;
  return sub_1000FF010(a2, &v8, &v7);
}

uint64_t sub_1000FF010(void *a1, int64x2_t *a2, int64x2_t *a3)
{
  v24 = a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  v22 = *a3;
  v23 = v7;
  v8 = sub_1000E28E4(v3, v4, &v23, &v22);
  v10 = v9;
  if (v5)
  {
    v11 = v23.i64[0];
    v23 = vaddq_s64(v23, xmmword_10028FD30);
    v5 = *v11;
  }

  if (v6)
  {
    v12 = v23.i64[0];
    v23 = vaddq_s64(v23, xmmword_10028FD30);
    v6 = *v12;
  }

  mlir::Attribute::getContext(&v24);
  *&v25 = v8;
  *(&v25 + 1) = v10;
  Context = mlir::Type::getContext(&v25);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v26[0] = &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id;
  v26[1] = Context;
  v32[0] = sub_1000D928C;
  v32[1] = v26;
  v29 = v25;
  v30 = v5;
  v31 = v6;
  v15 = (v5 >> 4) ^ (v5 >> 9);
  v16 = 0x9AE16A3B2F90404FLL * ((v6 >> 4) ^ (v6 >> 9));
  v17 = __ROR8__(0xB492B66FBE98F273 * ((v29 >> 4) ^ (v29 >> 9)) - v15, 43);
  v18 = __ROR8__(v16 ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * v15;
  v19 = __ROR8__(v15 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v16 - 0x4B6D499041670D8DLL * ((v29 >> 4) ^ (v29 >> 9)) + 24;
  v20 = 0x9DDFEA08EB382D69 * (v19 ^ ((0x9DDFEA08EB382D69 * ((v18 + v17) ^ v19)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v18 + v17) ^ v19)));
  v27[0] = &v29;
  v27[1] = v32;
  v28 = &v29;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id, -348639895 * ((v20 >> 47) ^ v20), sub_1000D9184, &v28, sub_1000D91CC, v27);
}

void sub_1000FF20C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000FF348(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000DB1E0(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_1000FF4F8;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_162;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_1000FF55C;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id;
  *(a2 + 144) = "builtin.strided_layout";
  *(a2 + 152) = 22;
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

void sub_1000FF348(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = sub_1000FF40C;
  v2[1] = sub_1000FF460;
  v2[2] = sub_1000FF4C0;
  if ((atomic_load_explicit(&qword_1002C0530, memory_order_acquire) & 1) == 0)
  {
    v5 = v2;
    sub_1002795F8();
    v3 = v5;
  }

  v4 = qword_1002C0528;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t sub_1000FF40C(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[1];
  Context = mlir::Attribute::getContext(&v7);
  return mlir::makeStridedLinearLayoutMap(v3, v2, v4, Context);
}

uint64_t sub_1000FF460(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[1];
  Context = mlir::Attribute::getContext(&v7);
  StridedLinearLayoutMap = mlir::makeStridedLinearLayoutMap(v3, v2, v4, Context);
  return mlir::AffineMap::isIdentity(&StridedLinearLayoutMap);
}

BOOL sub_1000FF4F8(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002C0690, memory_order_acquire))
  {
    return qword_1002C0688 == a1;
  }

  sub_10027D16C();
  return qword_1002C0688 == a1;
}

uint64_t sub_1000FF55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a3;
  *(&v8 + 1) = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return sub_1000FF590(a2, &v8, &v7);
}

uint64_t sub_1000FF590(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v20 = a1;
  v18 = *(a1 + 8);
  v19 = *(a1 + 16);
  v16 = *a3;
  v17 = *a2;
  sub_1000FF7C0(&v18, &v30);
  Context = mlir::Attribute::getContext(&v20);
  v4 = v30;
  v26 = v30;
  v27 = v29;
  v28 = 0x600000000;
  v5 = v32;
  if (!v32)
  {
    v5 = 0;
    v8 = v29;
    goto LABEL_9;
  }

  if (v32 < 7)
  {
    v7 = v29;
    v6 = v32;
    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v32, 8);
  v6 = v32;
  if (v32)
  {
    v7 = v27;
LABEL_7:
    memcpy(v7, v31, 8 * v6);
  }

  LODWORD(v28) = v5;
  v4 = v26;
  v8 = v27;
LABEL_9:
  v9 = *v4;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v21[0] = &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id;
  v21[1] = Context;
  v25[0] = sub_1000D95DC;
  v25[1] = v21;
  v24[0] = v9;
  v24[1] = v8;
  v24[2] = v5;
  v11 = sub_10002C76C(v8, &v8[v5]);
  v12 = __ROR8__(v11 + 16, 16);
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v9 ^ v12 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ v12 ^ 0xFF51AFD7ED558CCDLL)));
  v22[0] = v24;
  v22[1] = v25;
  v23 = v24;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id, (-348639895 * ((v13 >> 47) ^ v13)) ^ v11, sub_1000D93B4, &v23, sub_1000D9414, v22);
  if (v27 != v29)
  {
    free(v27);
  }

  if (v31 != &v33)
  {
    free(v31);
  }

  return ParametricStorageTypeImpl;
}

void sub_1000FF7C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000FF8F8(*(a1 + 8), *(a1 + 16), &__src);
  v4 = (a2 + 24);
  *(a2 + 8) = a2 + 24;
  *a2 = a1;
  *(a2 + 16) = 0x600000000;
  v5 = __src;
  if ((a2 + 8) == &__src)
  {
    goto LABEL_12;
  }

  v6 = v10;
  if (!v10)
  {
    goto LABEL_12;
  }

  if (__src == v12)
  {
    if (v10 < 7)
    {
      v8 = v10;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 8, (a2 + 24), v10, 8);
      v8 = v10;
      v5 = __src;
      if (!v10)
      {
LABEL_10:
        *(a2 + 16) = v6;
        goto LABEL_11;
      }

      v4 = *(a2 + 8);
    }

    memcpy(v4, v5, 8 * v8);
    v5 = __src;
    goto LABEL_10;
  }

  *(a2 + 8) = __src;
  v7 = v11;
  *(a2 + 16) = v6;
  *(a2 + 20) = v7;
  __src = v12;
  v11 = 0;
  v5 = v12;
LABEL_11:
  v10 = 0;
LABEL_12:
  if (v5 != v12)
  {
    free(v5);
  }
}

void sub_1000FF8F8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __src = v16;
  v15 = 0x600000000;
  if (a2)
  {
    v3 = 8 * a2;
    do
    {
      while (1)
      {
        v4 = v15;
        if (v15 >= HIDWORD(v15))
        {
          break;
        }

        v5 = *a1++;
        *(__src + v15) = v5;
        LODWORD(v15) = v4 + 1;
        v3 -= 8;
        if (!v3)
        {
          goto LABEL_7;
        }
      }

      v6 = a1;
      v7 = a3;
      sub_1000AC328(&__src, a1);
      a3 = v7;
      a1 = v6 + 1;
      v3 -= 8;
    }

    while (v3);
LABEL_7:
    v8 = v15;
    v9 = __src;
    *a3 = a3 + 16;
    *(a3 + 8) = 0x600000000;
    if (v8 && &__src != a3)
    {
      if (v9 == v16)
      {
        v11 = v8;
        if (v8 < 7 || (v12 = a3, llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v8, 8), a3 = v12, v11 = v15, v9 = __src, v15))
        {
          v13 = a3;
          memcpy(*a3, v9, 8 * v11);
          a3 = v13;
          v9 = __src;
        }

        *(a3 + 8) = v8;
      }

      else
      {
        *a3 = v9;
        v10 = HIDWORD(v15);
        *(a3 + 8) = v8;
        *(a3 + 12) = v10;
        __src = v16;
        HIDWORD(v15) = 0;
        v9 = v16;
      }

      LODWORD(v15) = 0;
    }

    if (v9 != v16)
    {
      free(v9);
    }
  }

  else
  {
    *a3 = a3 + 16;
    *(a3 + 8) = 0x600000000;
  }
}

void sub_1000FFA88(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = sub_1000FFC28;
  {
    v10 = v4;
    sub_10027CBF0();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    sub_1000DB1E0(a2 + 8, &v14);
  }

  *(a2 + 72) = sub_1000FFC30;
  *(a2 + 80) = v13;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_163;
  *(a2 + 112) = &v12;
  *(a2 + 120) = sub_1000FFC94;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
  *(a2 + 144) = "builtin.string";
  *(a2 + 152) = 14;
  v6 = v14;
  if (v15)
  {
    v7 = 16 * v15;
    v8 = (v14 + 8);
    do
    {
      v9 = *v8;
      v8 += 2;
      free(v9);
      v7 -= 16;
    }

    while (v7);
    v6 = v14;
  }

  if (v6 != v16)
  {
    free(v6);
  }
}

BOOL sub_1000FFC30(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  sub_10027C954();
  return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t sub_1000FFCA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a5;
  v12[3] = a6;
  result = mlir::AttrTypeImmediateSubElementWalker::walk(v12, v6);
  if (v8)
  {
    v10 = 8 * v8;
    do
    {
      v11 = *v7++;
      result = mlir::AttrTypeImmediateSubElementWalker::walk(v12, v11);
      v10 -= 8;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_1000FFD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return sub_1000FFD34(a2, v5);
}

uint64_t sub_1000FFD34(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v3 = *a2;
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    --v2;
    v5 = *v3;
    v3 += 2;
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  if (v2 >= *(a1 + 24))
  {
    v6 = *(a1 + 24);
  }

  else
  {
    v6 = v2;
  }

  mlir::Attribute::getContext(&v14);
  v15 = v4;
  Context = mlir::Attribute::getContext(&v15);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v16[1] = Context;
  v20[0] = sub_1000D9814;
  v20[1] = v16;
  v19[0] = v15;
  v19[1] = v3;
  v19[2] = v6;
  v9 = (v15 >> 4) ^ (v15 >> 9);
  v10 = sub_1000D6708(v3, &v3[2 * v6]);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v9 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v9 ^ 0xFF51AFD7ED558CCDLL)));
  v17[0] = v19;
  v17[1] = v20;
  v18 = v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, sub_1000D95EC, &v18, sub_1000D9654, v17);
}

uint64_t sub_1000FFE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t sub_1000FFEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return sub_1000FFEFC(a2, v8, v7);
}

uint64_t sub_1000FFEFC(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v8 = a1;
  if (*(a1 + 8))
  {
    v3 = **a3;
  }

  else
  {
    v3 = 0;
  }

  mlir::Attribute::getContext(&v8);
  v9 = v3;
  Context = mlir::Type::getContext(&v9);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id;
  v10[1] = Context;
  v14[0] = sub_1000D98E4;
  v14[1] = v10;
  v13 = v9;
  v6 = 0x9DDFEA08EB382D69 * ((8 * ((v9 >> 4) ^ (v9 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v11[0] = &v13;
  v11[1] = v14;
  v12 = &v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v6 >> 47) ^ 0xED558CCD))), sub_1000D9824, &v12, sub_1000D983C, v11);
}

void *sub_100100028(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  v2 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = v2 + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v2 = sub_10003A984(a2, 8, 8, 3);
    *v2 = 0;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return v2;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *v2 = 0;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], v2);
  }

  return v2;
}

void sub_1001000D0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_1002C0668, memory_order_acquire) & 1) == 0)
  {
    sub_10027D1C0();
  }

  v2 = qword_1002C0660;
  sub_10010021C(a1, v12);
  mlir::Dialect::addAttribute(a1, v2, v12);
  v3 = v17;
  if (v17 >= 8)
  {
    if ((v17 & 4) != 0)
    {
      if ((v17 & 2) != 0)
      {
        v4 = v16;
      }

      else
      {
        v4 = v16[0];
      }

      (*((v17 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v16[0], v16[1], v16[2]);
    }
  }

  v5 = v13;
  if (v14)
  {
    v6 = 16 * v14;
    v7 = (v13 + 8);
    do
    {
      v8 = *v7;
      v7 += 2;
      free(v8);
      v6 -= 16;
    }

    while (v6);
    v5 = v13;
  }

  if (v5 != &v15)
  {
    free(v5);
  }

  v9 = *(a1 + 32);
  if ((atomic_load_explicit(&qword_1002C0668, memory_order_acquire) & 1) == 0)
  {
    v11 = v9;
    sub_10027B494();
    v9 = v11;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v9);
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}