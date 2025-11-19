void mlir::detail::OperandStorage::~OperandStorage(mlir::detail::OperandStorage *this)
{
  v1 = *(this + 1);
  v2 = *(this + 1);
  if (v2)
  {
    v3 = 32 * v2;
    v4 = v1 + 1;
    do
    {
      v5 = *v4;
      if (*v4)
      {
        v6 = *(v4 - 1);
        *v5 = v6;
        if (v6)
        {
          *(v6 + 8) = v5;
        }
      }

      v4 += 4;
      v3 -= 32;
    }

    while (v3);
  }

  if ((*this & 0x80000000) != 0)
  {
    free(v1);
  }
}

uint64_t *mlir::detail::OperandStorage::setOperands(mlir::detail::OperandStorage *a1, mlir::Operation *a2, uint64_t a3, unsigned int a4)
{
  result = mlir::detail::OperandStorage::resize(a1, a2, a4);
  if (a4)
  {
    v7 = result;
    v8 = (a3 & 0xFFFFFFFFFFFFFFF8);
    v9 = a3 & 6;
    if ((a3 & 6) != 0 || !v8)
    {
      v16 = a4;
      if (v9 == 2 && v8)
      {
        v17 = v8 + 3;
        do
        {
          v18 = *v17;
          v19 = v7[1];
          if (v19)
          {
            v20 = *v7;
            *v19 = *v7;
            if (v20)
            {
              *(v20 + 8) = v19;
            }
          }

          v7[3] = v18;
          v21 = *v18;
          *v7 = *v18;
          v7[1] = v18;
          if (v21)
          {
            *(v21 + 8) = v7;
          }

          *v18 = v7;
          v7 += 4;
          v17 += 4;
          --v16;
        }

        while (v16);
      }

      else
      {
        for (i = 0; i != v16; ++i)
        {
          result = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, i);
          v23 = v7[1];
          if (v23)
          {
            v24 = *v7;
            *v23 = *v7;
            if (v24)
            {
              *(v24 + 8) = v23;
            }
          }

          v7[3] = result;
          v25 = *result;
          *v7 = *result;
          v7[1] = result;
          if (v25)
          {
            *(v25 + 8) = v7;
          }

          *result = v7;
          v7 += 4;
        }
      }
    }

    else
    {
      v10 = a4;
      do
      {
        v12 = *v8++;
        v11 = v12;
        v13 = v7[1];
        if (v13)
        {
          v14 = *v7;
          *v13 = *v7;
          if (v14)
          {
            *(v14 + 8) = v13;
          }
        }

        v7[3] = v11;
        v15 = *v11;
        *v7 = *v11;
        v7[1] = v11;
        if (v15)
        {
          *(v15 + 8) = v7;
        }

        *v11 = v7;
        v7 += 4;
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

uint64_t *mlir::detail::OperandStorage::resize(mlir::detail::OperandStorage *this, mlir::Operation *a2, unsigned int a3)
{
  v4 = *(this + 1);
  result = v4;
  v6 = *(this + 1);
  if (v6 >= a3)
  {
    if (v6 != a3)
    {
      v27 = a3;
      do
      {
        v28 = &v4[32 * v27];
        v29 = *(v28 + 1);
        if (v29)
        {
          v30 = *v28;
          *v29 = v30;
          if (v30)
          {
            *(v30 + 8) = v29;
          }
        }

        ++v27;
      }

      while (v6 != v27);
    }

    *(this + 1) = a3;
  }

  else
  {
    v7 = *this & 0x7FFFFFFF;
    if (v7 >= a3)
    {
      do
      {
        v20 = &v4[32 * v6];
        *v20 = 0;
        *(v20 + 1) = 0;
        *(v20 + 2) = a2;
        *(v20 + 3) = 0;
        LODWORD(v6) = *(this + 1) + 1;
        *(this + 1) = v6;
      }

      while (v6 != a3);
    }

    else
    {
      v8 = (v7 + 2) | ((v7 + 2) >> 1) | (((v7 + 2) | ((v7 + 2) >> 1)) >> 2);
      v9 = v8 | (v8 >> 4) | ((v8 | (v8 >> 4)) >> 8);
      v10 = (v9 >> 16) | v9;
      if (v10 + 1 > a3)
      {
        v12 = v10 + 1;
      }

      else
      {
        v12 = a3;
      }

      v13 = this;
      result = malloc_type_malloc(32 * v12, 0xE004003D73A93uLL);
      v15 = v13;
      if (v6)
      {
        v16 = (v4 + 24);
        v17 = 32 * v6;
        v18 = 32 * v6;
        v19 = result;
        do
        {
          *v19 = 0;
          v19[1] = 0;
          v21 = *(v16 - 2);
          v19[2] = *(v16 - 1);
          if (v21)
          {
            v22 = *(v16 - 3);
            *v21 = v22;
            if (v22)
            {
              *(v22 + 8) = v21;
            }
          }

          *(v16 - 2) = 0;
          *v19 = 0;
          v19[1] = 0;
          v19[3] = 0;
          v23 = *(v16 - 2);
          if (v23)
          {
            v24 = *(v16 - 3);
            *v23 = v24;
            if (v24)
            {
              *(v24 + 8) = v23;
            }
          }

          *(v16 - 2) = 0;
          *v19 = 0;
          v19[1] = 0;
          v19[3] = *v16;
          *v16 = 0;
          v25 = v19[3];
          if (v25)
          {
            v26 = *v25;
            *v19 = *v25;
            v19[1] = v25;
            if (v26)
            {
              *(v26 + 8) = v19;
            }

            *v25 = v19;
          }

          v19 += 4;
          v16 += 4;
          v18 -= 32;
        }

        while (v18);
        v31 = (v4 + 8);
        do
        {
          v32 = *v31;
          if (*v31)
          {
            v33 = *(v31 - 1);
            *v32 = v33;
            if (v33)
            {
              *(v33 + 8) = v32;
            }
          }

          v31 += 4;
          v17 -= 32;
        }

        while (v17);
      }

      for (i = *(v13 + 1); i != a3; *(v13 + 1) = i)
      {
        v35 = &result[4 * i];
        *v35 = 0;
        v35[1] = 0;
        v35[2] = a2;
        v35[3] = 0;
        i = *(v13 + 1) + 1;
      }

      if ((*v13 & 0x80000000) != 0)
      {
        v36 = result;
        free(*(v13 + 1));
        result = v36;
        v15 = v13;
      }

      *(v15 + 1) = result;
      *v15 = v12 | 0x80000000;
    }
  }

  return result;
}

uint64_t mlir::MutableOperandRange::MutableOperandRange(uint64_t a1, uint64_t a2, int a3, int a4, const void *a5, uint64_t a6)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  v9 = (a1 + 32);
  *(a1 + 16) = a1 + 32;
  v10 = a1 + 16;
  *(a1 + 24) = &_mh_execute_header;
  v11 = 3 * a6;
  v12 = (24 * a6) >> 3;
  v13 = -1431655765 * v12;
  if (0xAAAAAAAAAAAAAAABLL * v12 >= 2)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v10, v9, 0xAAAAAAAAAAAAAAABLL * v12, 24);
    v14 = *(a1 + 24);
    if (!a6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v14 = 0;
  if (a6)
  {
LABEL_5:
    memcpy((*(a1 + 16) + 24 * v14), a5, 8 * v11);
    v14 = *(a1 + 24);
  }

LABEL_6:
  *(a1 + 24) = v14 + v13;
  return a1;
}

uint64_t *mlir::ResultRange::use_begin@<X0>(uint64_t *this@<X0>, uint64_t *a2@<X8>)
{
  v2 = *this;
  v3 = this[1];
  *a2 = *this;
  a2[1] = 0;
  a2[2] = v2;
  a2[3] = v3;
  a2[4] = 0;
  if (v3)
  {
    v5 = 0;
    while (1)
    {
      this = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, v5);
      if (*this)
      {
        break;
      }

      if (v3 == ++v5)
      {
        v6 = 0;
        a2[1] = v3;
        goto LABEL_9;
      }
    }

    a2[1] = v5;
    if (v3 == v5)
    {
      v6 = 0;
    }

    else
    {
      this = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, v5);
      v6 = *this;
    }

LABEL_9:
    a2[4] = v6;
  }

  return this;
}

__n128 mlir::ResultRange::use_end@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = *this;
  *a2 = *this;
  a2[1] = result;
  a2[2].n128_u64[0] = 0;
  return result;
}

uint64_t *mlir::ResultRange::UseIterator::operator++(uint64_t *a1)
{
  mlir::detail::OpResultImpl::getNextResultAtOffset(*a1, a1[1]);
  v2 = a1[4];
  if (v2)
  {
    a1[4] = *v2;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(*a1, a1[1]);
  if (a1[4])
  {
    return a1;
  }

  v4 = a1[1] + 1;
  a1[1] = v4;
  if (v4 == a1[3])
  {
    a1[4] = 0;
    return a1;
  }

  else
  {
    while (1)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(*a1, v4);
      v6 = a1[1];
      v7 = a1[3];
      if (*NextResultAtOffset)
      {
        break;
      }

      v4 = v6 + 1;
      a1[1] = v4;
      if (v4 == v7)
      {
        a1[4] = 0;
        return a1;
      }
    }

    if (v6 == v7)
    {
      a1[4] = 0;
    }

    else
    {
      a1[4] = *mlir::detail::OpResultImpl::getNextResultAtOffset(*a1, v6);
    }

    return a1;
  }
}

unint64_t *mlir::ValueRange::ValueRange(unint64_t *result, uint64_t a2, unint64_t a3)
{
  *result = a2 & 0xFFFFFFFFFFFFFFF9;
  result[1] = a3;
  return result;
}

{
  *result = a2 & 0xFFFFFFFFFFFFFFF9 | 2;
  result[1] = a3;
  return result;
}

{
  *result = a2 & 0xFFFFFFFFFFFFFFF9 | 4;
  result[1] = a3;
  return result;
}

unint64_t mlir::ValueRange::offset_base(void *a1, uint64_t a2)
{
  v2 = *a1 & 6;
  v3 = *a1 & 0xFFFFFFFFFFFFFFF8;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    return v3 + 8 * a2;
  }

  if (v2 != 2 || v3 == 0)
  {
    return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, a2) & 0xFFFFFFFFFFFFFFF9 | 4;
  }

  else
  {
    return (v3 + 32 * a2) | 2;
  }
}

uint64_t mlir::ValueRange::dereference_iterator(void *a1, uint64_t a2)
{
  v2 = *a1 & 6;
  v3 = *a1 & 0xFFFFFFFFFFFFFFF8;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    return *(v3 + 8 * a2);
  }

  if (v2 != 2 || v3 == 0)
  {
    return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, a2);
  }

  else
  {
    return *(v3 + 32 * a2 + 24);
  }
}

mlir::NamedAttribute *sub_1001423DC(mlir::NamedAttribute *this, mlir::NamedAttribute *a2, uint64_t a3)
{
  v3 = this;
  v17 = a3;
  v4 = (a2 - this) >> 4;
  if (v4 >= 17)
  {
    Value = mlir::StringAttr::getValue(&v17);
    v7 = v6;
    while (1)
    {
      v8 = v4 >> 1;
      Name = mlir::NamedAttribute::getName((v3 + 16 * (v4 >> 1)));
      v9 = mlir::StringAttr::getValue(&Name);
      v11 = v10;
      v12 = v7 >= v10 ? v10 : v7;
      if (v12)
      {
        v13 = memcmp(v9, Value, v12);
        if (v13)
        {
          break;
        }
      }

      if (v11 == v7)
      {
        return (v3 + 16 * (v4 >> 1));
      }

      if (v11 < v7)
      {
        goto LABEL_3;
      }

LABEL_4:
      v4 = v8;
      if (v8 <= 0)
      {
        return v3;
      }
    }

    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_3:
    v3 = (v3 + 16 * (v4 >> 1) + 16);
    v8 = v4 + ~v8;
    goto LABEL_4;
  }

  if (this == a2)
  {
    return a2;
  }

  while (mlir::NamedAttribute::getName(v3) != a3)
  {
    v3 = (v3 + 16);
    if (v3 == a2)
    {
      return a2;
    }
  }

  return v3;
}

uint64_t sub_100142500()
{
  {
    sub_100281D88();
  }

  return llvm::getTypeName<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>>(void)::Name;
}

const char *sub_100142548()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::IsCommutative<Empty>]";
  v6 = 97;
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

uint64_t mlir::Pattern::Pattern(uint64_t a1, uint64_t a2, int a3, void *a4, unint64_t a5, __int16 a6, uint64_t a7)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 12) = a6;
  *(a1 + 16) = a7 & 0xFFFFFFFFFFFFFFFBLL;
  v8 = (a1 + 40);
  *(a1 + 24) = a1 + 40;
  v9 = a1 + 24;
  *(a1 + 32) = 0x200000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a1 + 88;
  *(a1 + 80) = 0;
  if (a5)
  {
    if (a5 >= 3)
    {
      v12 = a5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, v8, a5, 8);
      a5 = v12;
    }

    v13 = &a4[2 * a5];
    do
    {
      mlir::OperationName::OperationName(&v17, *a4, a4[1], a7);
      v14 = v17;
      v15 = *(a1 + 32);
      if (v15 >= *(a1 + 36))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v8, v15 + 1, 8);
        v15 = *(a1 + 32);
      }

      *(*(a1 + 24) + 8 * v15) = v14;
      ++*(a1 + 32);
      a4 += 2;
    }

    while (a4 != v13);
  }

  return a1;
}

uint64_t sub_100142774(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a2;
  v20 = 0;
  v21 = a4;
  v22 = 0;
  if (a3 && a5)
  {
    v7 = result;
    v8 = 0;
    do
    {
      v11 = mlir::ValueRange::dereference_iterator(&v19, v8);
      result = mlir::ValueRange::dereference_iterator(&v21, v22);
      v12 = *v11;
      if (*v11)
      {
        v13 = result;
        do
        {
          v14 = *v12;
          v15 = v12[2];
          (*(*v7 + 40))(v7, v15);
          v16 = v12[1];
          if (v16)
          {
            v17 = *v12;
            *v16 = *v12;
            if (v17)
            {
              v17[1] = v16;
            }
          }

          v12[3] = v13;
          v18 = *v13;
          *v12 = *v13;
          v12[1] = v13;
          if (v18)
          {
            *(v18 + 8) = v12;
          }

          *v13 = v12;
          result = (*(*v7 + 48))(v7, v15);
          v12 = v14;
        }

        while (v14);
      }

      v8 = v20 + 1;
      v9 = v22 + 1;
      v20 = v8;
      ++v22;
    }

    while (v8 != a3 && v9 != a5);
  }

  return result;
}

void *mlir::Region::Region(void *this, mlir::Operation *a2)
{
  *this = this;
  this[1] = this;
  this[2] = a2;
  return this;
}

void mlir::Region::dropAllReferences(mlir::Region *this)
{
  for (i = *(this + 1); i != this; i = *(i + 1))
  {
    if (i)
    {
      v3 = (i - 8);
    }

    else
    {
      v3 = 0;
    }

    mlir::Block::dropAllReferences(v3);
  }
}

void mlir::Region::~Region(mlir::Region *this)
{
  v2 = *(this + 1);
  if (v2 != this)
  {
    do
    {
      if (v2)
      {
        v3 = (v2 - 8);
      }

      else
      {
        v3 = 0;
      }

      mlir::Block::dropAllReferences(v3);
      v2 = *(v2 + 1);
    }

    while (v2 != this);
    v2 = *(this + 1);
  }

  if (v2 != this)
  {
    v4 = *(v2 + 1);
    if (v2)
    {
      v5 = (v2 - 8);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5[2];
    v5[3] &= 7uLL;
    v7 = v5[1];
    *v6 = v7;
    *(v7 + 8) = v6;
    v5[1] = 0;
    v5[2] = 0;
    mlir::Block::~Block((v2 - 8));
    operator delete();
  }
}

unint64_t mlir::Region::isProperAncestor(mlir::Region *this, mlir::Region *a2)
{
  if (this == a2)
  {
    return 0;
  }

  while (1)
  {
    result = *(*(a2 + 2) + 16);
    if (!result)
    {
      break;
    }

    result = mlir::Block::getParent(result);
    if (!result)
    {
      break;
    }

    a2 = result;
    if (result == this)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::Region::getRegionNumber(unint64_t this)
{
  v1 = *(this + 16);
  v2 = *(v1 + 44);
  if ((v2 & 0x7FFFFF) != 0)
  {
    return -1431655765 * ((this - (((v1 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v1 + 40))) >> 3);
  }

  else
  {
    return -1431655765 * (this >> 3);
  }
}

void mlir::Region::cloneInto(mlir::Operation::CloneOptions *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*a1 == a1)
  {
    return;
  }

  v5 = a1;
  v6 = *(a1 + 1);
  if (v6 != a1)
  {
    operator new();
  }

  if (v6)
  {
    v7 = (v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a4 + 10);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = a4[3];
  v10 = ((v7 >> 4) ^ (v7 >> 9)) & (v8 - 1);
  v11 = *(v9 + 16 * v10);
  if (v11 != v7)
  {
    v81 = 1;
    while (v11 != -4096)
    {
      v82 = v10 + v81++;
      v10 = v82 & (v8 - 1);
      v11 = *(v9 + 16 * v10);
      if (v11 == v7)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_10;
  }

LABEL_9:
  if (v10 == v8)
  {
LABEL_10:
    v12 = 0;
    goto LABEL_12;
  }

  v12 = *(v9 + 16 * v10 + 8);
LABEL_12:
  if (v12)
  {
    v13 = v12 + 8;
  }

  else
  {
    v13 = 0;
  }

  LOBYTE(v92) = mlir::Operation::CloneOptions::all(a1);
  v14 = mlir::Operation::CloneOptions::cloneRegions(&v92, 0);
  v15 = mlir::Operation::CloneOptions::cloneOperands(v14, 0);
  v16 = *(v5 + 1);
  if (v16 != v5 && v13 != a3)
  {
    v18 = *v15;
    v19 = v13;
    do
    {
      v21 = (v16 - 8);
      v86 = v16;
      if (!v16)
      {
        v21 = 0;
      }

      v22 = v21 + 4;
      v23 = v21[5];
      if (v23 != v21 + 4)
      {
        v24 = v19 - 8;
        if (!v19)
        {
          v24 = 0;
        }

        v25 = (v24 + 32);
        do
        {
          ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v23);
          v27 = mlir::Operation::clone(ValuePtr);
          llvm::ilist_traits<mlir::Operation>::addNodeToList(v25, v27);
          NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v27);
          v29 = *v25;
          *NodePtr = *v25;
          NodePtr[1] = v25;
          *(v29 + 8) = NodePtr;
          *v25 = NodePtr;
          llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v27);
          v23 = v23[1];
        }

        while (v23 != v22);
      }

      v19 = *(v19 + 8);
      v16 = *(v86 + 1);
      v5 = a1;
    }

    while (v16 != a1 && v19 != a3);
    v16 = *(a1 + 1);
  }

  v92 = v94;
  v93 = 0x600000000;
  if (v16 != v5 && v13 != a3)
  {
    while (1)
    {
      v31 = (v16 - 8);
      v87 = v16;
      if (!v16)
      {
        v31 = 0;
      }

      v32 = v13 - 8;
      v83 = v13;
      if (!v13)
      {
        v32 = 0;
      }

      v33 = *(v32 + 40);
      v34 = v31[5];
      v88 = v32 + 32;
      v89 = v31 + 4;
      if (v34 != v31 + 4 && v33 != v32 + 32)
      {
        break;
      }

LABEL_36:
      v13 = *(v83 + 8);
      v16 = *(v87 + 1);
      if (v16 == a1 || v13 == a3)
      {
        if (v92 != v94)
        {
          free(v92);
        }

        return;
      }
    }

    while (1)
    {
      v37 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v34);
      v38 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v33);
      v39 = *(v37 + 44);
      if ((v39 & 0x800000) != 0)
      {
        v40 = *(v37 + 68);
      }

      else
      {
        v40 = 0;
      }

      v41 = v93;
      if (v93 != v40)
      {
        if (v93 <= v40)
        {
          if (HIDWORD(v93) < v40)
          {
            v42 = v40;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v94, v40, 8);
            v40 = v42;
            v41 = v93;
          }

          if (v40 != v41)
          {
            v43 = v40;
            bzero(v92 + 8 * v41, 8 * (v40 - v41));
            v40 = v43;
          }
        }

        LODWORD(v93) = v40;
        v39 = *(v37 + 44);
      }

      if ((v39 & 0x800000) != 0)
      {
        v44 = *(v37 + 68);
        v45 = v92;
        if (v44)
        {
          v46 = *(v37 + 72);
          v47 = *(a4 + 4);
          if (v47)
          {
            v48 = 0;
            v49 = *a4;
            v50 = v47 - 1;
            v51 = v92;
            do
            {
              v52 = *(v46 + 32 * v48 + 24);
              v53 = 0x9DDFEA08EB382D69 * ((8 * v52 - 0xAE502812AA7333) ^ HIDWORD(v52));
              v54 = 0x9DDFEA08EB382D69 * (HIDWORD(v52) ^ (v53 >> 47) ^ v53);
              v55 = (-348639895 * ((v54 >> 47) ^ v54)) & v50;
              v56 = *(v49 + 16 * v55);
              if (v56 == v52)
              {
LABEL_69:
                if (v55 != v47)
                {
                  v52 = *(v49 + 16 * v55 + 8);
                }
              }

              else
              {
                v57 = 1;
                while (v56 != -4096)
                {
                  v58 = v55 + v57++;
                  v55 = v58 & v50;
                  v56 = *(v49 + 16 * v55);
                  if (v56 == v52)
                  {
                    goto LABEL_69;
                  }
                }
              }

              *v51++ = v52;
              ++v48;
            }

            while (v48 != v44);
          }

          else
          {
            if (v44 >= 5 && (v92 >= v46 + 32 * v44 || v46 + 24 >= v92 + 8 * v44))
            {
              v61 = v44 & 3;
              if ((v44 & 3) == 0)
              {
                v61 = 4;
              }

              v59 = v44 - v61;
              v60 = v92 + 8 * (v44 - v61);
              v62 = (v46 + 88);
              v63 = (v92 + 16);
              v64 = v59;
              do
              {
                v65 = v62 - 8;
                v66 = vld4q_f64(v65);
                v67 = vld4q_f64(v62);
                *(v63 - 1) = v66;
                *v63 = v67;
                v62 += 16;
                v63 += 2;
                v64 -= 4;
              }

              while (v64);
            }

            else
            {
              v59 = 0;
              v60 = v92;
            }

            v68 = v44 - v59;
            v69 = (v46 + 32 * v59 + 24);
            do
            {
              v70 = *v69;
              v69 += 4;
              *v60++ = v70;
              --v68;
            }

            while (v68);
          }
        }
      }

      else
      {
        v45 = v92;
      }

      mlir::ValueRange::ValueRange(&v90, v45, v40);
      mlir::Operation::setOperands(v38, v90, v91);
      v71 = *(v37 + 44);
      v72 = v71 & 0x7FFFFF;
      if ((v71 & 0x7FFFFF) != 0)
      {
        v73 = v37 + 16 * ((v71 >> 23) & 1) + ((v71 >> 21) & 0x7F8) + 32 * *(v37 + 40) + 64;
        v74 = *(v38 + 44);
        v75 = v74 & 0x7FFFFF;
        if ((v74 & 0x7FFFFF) != 0)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v73 = 0;
        v72 = 0;
        v74 = *(v38 + 44);
        v75 = v74 & 0x7FFFFF;
        if ((v74 & 0x7FFFFF) != 0)
        {
LABEL_89:
          if (v72)
          {
            v76 = v38 + 16 * ((v74 >> 23) & 1) + ((v74 >> 21) & 0x7F8) + 32 * *(v38 + 40) + 64;
            v77 = 24 * v72 - 24;
            v78 = 24 * v75 - 24;
            v79 = v76;
            do
            {
              mlir::Region::cloneInto(v73, v79, v76, a4);
              if (!v77)
              {
                break;
              }

              v73 += 24;
              v79 += 24;
              v77 -= 24;
              v76 += 24;
              v80 = v78;
              v78 -= 24;
            }

            while (v80);
          }
        }
      }

      v33 = *(v33 + 8);
      v34 = v34[1];
      if (v34 == v89 || v33 == v88)
      {
        goto LABEL_36;
      }
    }
  }
}

mlir::Operation *mlir::Region::findAncestorOpInRegion(mlir::Region *this, mlir::Operation *a2)
{
  while (1)
  {
    v4 = *(a2 + 2);
    if (!v4)
    {
      break;
    }

    Parent = mlir::Block::getParent(v4);
    if (!Parent)
    {
      break;
    }

    if (Parent != this)
    {
      a2 = *(Parent + 2);
      if (a2)
      {
        continue;
      }
    }

    return a2;
  }

  return 0;
}

uint64_t llvm::ilist_traits<mlir::Block>::transferNodesFromList(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != a2)
  {
    while (a3 != a4)
    {
      v4 = a3 - 8;
      if (!a3)
      {
        v4 = 0;
      }

      *(v4 + 24) = *(v4 + 24) & 7 | result;
      a3 = *(a3 + 8);
    }
  }

  return result;
}

void *mlir::Region::OpIterator::OpIterator(void *this, mlir::Region *a2, char a3)
{
  *this = a2;
  v3 = a2;
  if ((a3 & 1) == 0)
  {
    v3 = *(a2 + 1);
  }

  this[1] = v3;
  this[2] = 0;
  if (*a2 != a2)
  {
    for (; v3 != a2; this[1] = v3)
    {
      v4 = (v3 - 8);
      if (!v3)
      {
        v4 = 0;
      }

      if (v4[4] != (v4 + 4))
      {
        break;
      }

      v3 = *(v3 + 1);
    }

    if (v3 == a2)
    {
      v6 = 0;
    }

    else
    {
      if (v3)
      {
        v5 = v3 - 8;
      }

      else
      {
        v5 = 0;
      }

      v6 = *(v5 + 5);
    }

    this[2] = v6;
  }

  return this;
}

uint64_t *mlir::Region::OpIterator::operator++(uint64_t *result)
{
  v1 = result[1];
  v2 = result[2];
  v3 = v1 - 8;
  if (!v1)
  {
    v3 = 0;
  }

  v4 = v3 + 32;
  if (v2 == v4 || (v5 = *(v2 + 8), result[2] = v5, v5 == v4))
  {
    v6 = *(v1 + 8);
    result[1] = v6;
    for (i = *result; v6 != i; result[1] = v6)
    {
      v8 = v6 - 8;
      if (!v6)
      {
        v8 = 0;
      }

      if (*(v8 + 32) != v8 + 32)
      {
        break;
      }

      v6 = *(v6 + 8);
    }

    if (v6 == i)
    {
      result[2] = 0;
    }

    else
    {
      if (v6)
      {
        v9 = v6 - 8;
      }

      else
      {
        v9 = 0;
      }

      result[2] = *(v9 + 40);
    }
  }

  return result;
}

unint64_t *mlir::RegionRange::RegionRange(unint64_t *result, uint64_t a2, unint64_t a3)
{
  *result = a2 & 0xFFFFFFFFFFFFFFF9;
  result[1] = a3;
  return result;
}

{
  *result = a2 & 0xFFFFFFFFFFFFFFF9 | 2;
  result[1] = a3;
  return result;
}

unint64_t mlir::RegionRange::dereference_iterator(uint64_t *a1, uint64_t a2)
{
  v2 = *a1 & 6;
  v3 = *a1 & 0xFFFFFFFFFFFFFFF8;
  if (v2 == 2)
  {
    v4 = v3 == 0;
    v5 = *a1 < 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 && (v2 == 4 ? (v6 = v3 == 0, v5 = *a1 < 0) : (v6 = 1), v6))
  {
    return v3 + 24 * a2;
  }

  else
  {
    return *(v3 + 8 * a2);
  }
}

mlir::SymbolTable *mlir::SymbolTable::SymbolTable(mlir::SymbolTable *this, mlir::Operation *a2)
{
  *this = a2;
  *(this + 1) = 0;
  v4 = this + 8;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 8) = 0;
  Context = mlir::Attribute::getContext((a2 + 24));
  v23 = 261;
  v22[0] = "sym_name";
  v22[1] = 8;
  v7 = mlir::StringAttr::get(Context, v22, v6);
  v8 = *(((a2 + 16 * ((*(a2 + 11) >> 23) & 1) + ((*(a2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10) + 8);
  if (v8)
  {
    v9 = v8 - 8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 + 32;
  v11 = *(v9 + 40);
  if (v11 != v9 + 32)
  {
    v12 = v7;
    do
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v11);
      v22[0] = v12;
      v14 = v12;
      if (*(ValuePtr + 47))
      {
        Value = mlir::StringAttr::getValue(v22);
        InherentAttr = mlir::Operation::getInherentAttr(ValuePtr, Value, v16);
        if (v18)
        {
          goto LABEL_11;
        }

        v14 = v22[0];
      }

      InherentAttr = mlir::DictionaryAttr::get(ValuePtr + 56, v14);
LABEL_11:
      if (InherentAttr && *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v20 = InherentAttr;
        v21 = ValuePtr;
        sub_100078AB0(v4, &v20, &v21, v22);
      }

      v11 = *(v11 + 8);
    }

    while (v11 != v10);
  }

  return this;
}

uint64_t mlir::SymbolTable::getSymbolName(mlir::SymbolTable *this, mlir::Operation *a2)
{
  if (!*(this + 47) || (result = mlir::Operation::getInherentAttr(this, "sym_name", 8), (v4 & 1) == 0))
  {
    result = mlir::DictionaryAttr::get(this + 56, "sym_name", 8uLL);
  }

  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::SymbolTable::replaceAllSymbolUses(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = mlir::SymbolRefAttr::get(a2);
  sub_100146C08(&v7, a1, a3);
  if (v8)
  {
    sub_1001473E4(*v7, v6);
    operator new();
  }

  if (v7 != &v9)
  {
    free(v7);
  }

  return 1;
}

uint64_t mlir::SymbolTable::getSymbolVisibility(mlir::SymbolTable *this, mlir::Operation *a2)
{
  if (!*(this + 47) || (result = mlir::Operation::getInherentAttr(this, "sym_visibility", 14), (v4 & 1) == 0))
  {
    result = mlir::DictionaryAttr::get(this + 56, "sym_visibility", 0xEuLL);
  }

  if (result)
  {
    if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v5 = result;
    }

    else
    {
      v5 = 0;
    }

    v11 = v5;
    if (!v5)
    {
      return 0;
    }

    Value = mlir::StringAttr::getValue(&v11);
    if (v7 != 6)
    {
      return v7 == 7 && *Value == 1986622064 && *(Value + 3) == 1702125942;
    }

    v10 = *Value == 1953719662 && *(Value + 4) == 25701;
    return (2 * v10);
  }

  return result;
}

void mlir::SymbolTable::setSymbolVisibility(uint64_t a1, int a2)
{
  Context = mlir::Attribute::getContext((a1 + 24));
  if (a2)
  {
    v6 = "nested";
    if (a2 == 1)
    {
      v6 = "private";
    }

    v7 = 6;
    v14 = 261;
    if (a2 == 1)
    {
      v7 = 7;
    }

    v13[0] = v6;
    v13[1] = v7;
    v8 = mlir::StringAttr::get(Context, v13, v5);
    v9 = mlir::Attribute::getContext((a1 + 24));
    v17 = 261;
    v15 = "sym_visibility";
    v16 = 14;
    v11 = mlir::StringAttr::get(v9, &v15, v10);
    sub_1000A88A0(a1, v11, v8);
  }

  else
  {
    v17 = 261;
    v15 = "sym_visibility";
    v16 = 14;
    v12 = mlir::StringAttr::get(Context, &v15, v5);
    sub_1000A8998(a1, v12);
  }
}

mlir::SymbolTable *mlir::SymbolTable::getNearestSymbolTable(mlir::SymbolTable *this, mlir::Operation *a2)
{
  v2 = this;
  if ((*(this + 11) & 0x7FFFFF) == 1)
  {
    v3 = *(this + 6);
    if (*(v3 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v8 = *(v3 + 8);
      if (mlir::StringAttr::getReferencedDialect(&v8))
      {
        goto LABEL_8;
      }
    }

    else if (*(v3 + 24))
    {
      goto LABEL_8;
    }

    return 0;
  }

  else
  {
    while (1)
    {
LABEL_8:
      {
        sub_100281DDC();
      }

      if ((*(**(v2 + 6) + 32))(*(v2 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        break;
      }

      v4 = *(v2 + 2);
      if (!v4)
      {
        return 0;
      }

      ParentOp = mlir::Block::getParentOp(v4);
      v2 = ParentOp;
      if (!ParentOp)
      {
        break;
      }

      if ((*(ParentOp + 44) & 0x7FFFFF) == 1)
      {
        v6 = *(ParentOp + 48);
        if (*(v6 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
        {
          v8 = *(v6 + 8);
          if (!mlir::StringAttr::getReferencedDialect(&v8))
          {
            return 0;
          }
        }

        else if (!*(v6 + 24))
        {
          return 0;
        }
      }
    }
  }

  return v2;
}

uint64_t mlir::SymbolTable::lookupSymbolIn(unsigned int *a1, uint64_t a2)
{
  v2 = (((&a1[4 * ((a1[11] >> 23) & 1) + 17] + ((a1[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10]);
  if (*v2 != v2)
  {
    Context = mlir::Attribute::getContext((a1 + 6));
    v21 = 261;
    v20[0] = "sym_name";
    v20[1] = 8;
    v6 = mlir::StringAttr::get(Context, v20, v5);
    v7 = v2[1];
    v8 = v7 ? v7 - 8 : 0;
    v9 = v8 + 32;
    v10 = *(v8 + 40);
    if (v10 != v8 + 32)
    {
      v11 = v6;
      do
      {
        ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v10);
        v20[0] = v11;
        v13 = v11;
        if (*(ValuePtr + 47))
        {
          Value = mlir::StringAttr::getValue(v20);
          InherentAttr = mlir::Operation::getInherentAttr(ValuePtr, Value, v15);
          if (v17)
          {
            goto LABEL_13;
          }

          v13 = v20[0];
        }

        InherentAttr = mlir::DictionaryAttr::get(ValuePtr + 56, v13);
LABEL_13:
        if (InherentAttr)
        {
          if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v18 = InherentAttr;
          }

          else
          {
            v18 = 0;
          }

          if (v18 == a2)
          {
            return ValuePtr;
          }
        }

        else if (!a2)
        {
          return ValuePtr;
        }

        v10 = *(v10 + 8);
      }

      while (v10 != v9);
    }
  }

  return 0;
}

uint64_t mlir::SymbolTable::lookupSymbolIn(uint64_t a1, uint64_t a2)
{
  v5 = v7;
  v6 = 0x400000000;
  if (sub_100144090(a1, a2, &v5, sub_100146260, &v4))
  {
    v2 = *(v5 + v6 - 1);
    if (v5 == v7)
    {
      return v2;
    }

    goto LABEL_5;
  }

  v2 = 0;
  if (v5 != v7)
  {
LABEL_5:
    free(v5);
  }

  return v2;
}

uint64_t sub_100144090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v27 = a2;
  RootReference = mlir::SymbolRefAttr::getRootReference(&v27);
  result = a4(a5, a1, RootReference);
  if (result)
  {
    v11 = result;
    v12 = *(a3 + 8);
    if (v12 >= *(a3 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a3 + 8);
    }

    *(*a3 + 8 * v12) = v11;
    ++*(a3 + 8);
    NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v27);
    if (v14)
    {
      v15 = NestedReferences;
      v16 = v14;
      {
        sub_100281DDC();
      }

      result = (*(**(v11 + 48) + 32))(*(v11 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id);
      if (result)
      {
        if (&v15[v16 - 1] == v15)
        {
LABEL_19:
          LeafReference = mlir::SymbolRefAttr::getLeafReference(&v27);
          v22 = a4(a5, v11, LeafReference);
          v23 = *(a3 + 8);
          if (v23 >= *(a3 + 12))
          {
            v25 = v22;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v23 + 1, 8);
            v22 = v25;
            LODWORD(v23) = *(a3 + 8);
          }

          *(*a3 + 8 * v23) = v22;
          v24 = *(a3 + 8) + 1;
          *(a3 + 8) = v24;
          return *(*a3 + 8 * v24 - 8) != 0;
        }

        else
        {
          v17 = 8 * v16 - 8;
          while (1)
          {
            v26 = *v15;
            v18 = mlir::SymbolRefAttr::getRootReference(&v26);
            v19 = a4(a5, v11, v18);
            if (!v19)
            {
              return 0;
            }

            v11 = v19;
            {
              sub_100281DDC();
            }

            if (!(*(**(v11 + 48) + 32))(*(v11 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id))
            {
              return 0;
            }

            v20 = *(a3 + 8);
            if (v20 >= *(a3 + 12))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v20 + 1, 8);
              v20 = *(a3 + 8);
            }

            *(*a3 + 8 * v20) = v11;
            ++*(a3 + 8);
            ++v15;
            v17 -= 8;
            if (!v17)
            {
              goto LABEL_19;
            }
          }
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::SymbolTable::lookupNearestSymbolFrom(mlir::SymbolTable *a1, mlir::Operation *a2)
{
  NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(a1, a2);
  if (!NearestSymbolTable)
  {
    return 0;
  }

  v7 = v9;
  v8 = 0x400000000;
  if (sub_100144090(NearestSymbolTable, a2, &v7, sub_100146260, &v6))
  {
    v4 = *(v7 + v8 - 1);
    if (v7 == v9)
    {
      return v4;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if (v7 != v9)
  {
LABEL_7:
    free(v7);
  }

  return v4;
}

uint64_t mlir::detail::verifySymbolTable(mlir::detail *this, mlir::Operation *a2)
{
  v3 = *(this + 11);
  if ((v3 & 0x7FFFFF) == 1)
  {
    v4 = ((this + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10);
    v5 = *(v4 + 8);
    if (v5 != v4 && *(v5 + 8) == v4)
    {
      v54 = 0;
      v53[0] = 0;
      v53[1] = 0;
      for (i = *(v4 + 8); i != v4; i = *(i + 8))
      {
        v29 = i - 8;
        if (!i)
        {
          v29 = 0;
        }

        v30 = v29 + 32;
        for (j = *(v29 + 40); j != v30; j = *(j + 8))
        {
          ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
          v33 = ValuePtr;
          if (!*(ValuePtr + 47) || (InherentAttr = mlir::Operation::getInherentAttr(ValuePtr, "sym_name", 8), (v35 & 1) == 0))
          {
            InherentAttr = mlir::DictionaryAttr::get((v33 + 7), "sym_name", 8uLL);
          }

          if (InherentAttr)
          {
            v36 = *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id ? InherentAttr : 0;
            v52 = v36;
            if (v36)
            {
              v60 = v33[3];
              sub_1000B81AC(v53, &v52, &v60, &v50);
              if ((v51 & 1) == 0)
              {
                v56 = 257;
                mlir::Operation::emitError(&v60, v33, v55);
                v49[0] = mlir::StringAttr::getValue(&v52);
                v49[1] = v37;
                if (v60)
                {
                  sub_10007BBF0(&v61, "redefinition of symbol named '", v49, "'");
                }

                mlir::Diagnostic::attachNote(&v61, *(v50 + 8), 1);
              }
            }
          }
        }
      }

      v60 = 0;
      v61 = 0;
      v62 = 0;
      v55[0] = &v60;
      v38 = *(this + 11);
      v39 = v38 & 0x7FFFFF;
      if ((v38 & 0x7FFFFF) != 0)
      {
        v40 = ((this + 16 * ((v38 >> 23) & 1) + ((v38 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10);
      }

      else
      {
        v40 = 0;
        v39 = 0;
      }

      v41 = sub_100144C0C(v40, v39, sub_10014626C, v55);
      v10 = BYTE4(v41) & (v41 != 0);
      v42 = v60;
      if (v62)
      {
        v43 = (v60 + 8);
        v44 = 16 * v62;
        do
        {
          if ((*(v43 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            v45 = *v43;
            *v43 = 0;
            if (v45)
            {
              llvm::deallocate_buffer(*(v45 + 8), (16 * *(v45 + 24)), 8uLL);
              operator delete();
            }
          }

          v43 += 2;
          v44 -= 16;
        }

        while (v44);
        v42 = v60;
        v46 = (16 * v62);
      }

      else
      {
        v46 = 0;
      }

      llvm::deallocate_buffer(v42, v46, 8uLL);
      llvm::deallocate_buffer(v53[0], (16 * v54), 8uLL);
    }

    else
    {
      v56 = 257;
      mlir::Operation::emitOpError(&v60, this, v55);
      if (v60)
      {
        v57 = 3;
        v58 = "Operations with a 'SymbolTable' must have exactly one block";
        v59 = 59;
        v6 = &v57;
        v7 = v63;
        if (v64 >= v65)
        {
          if (v63 <= &v57 && v63 + 24 * v64 > &v57)
          {
            v48 = &v57 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v7 = v63;
            v6 = (v63 + v48);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v6 = &v57;
            v7 = v63;
          }
        }

        v8 = &v7[24 * v64];
        v9 = *v6;
        *(v8 + 2) = *(v6 + 2);
        *v8 = v9;
        ++v64;
      }

      v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
      if (v60)
      {
        mlir::InFlightDiagnostic::report(&v60);
      }

      if (v72 == 1)
      {
        if (v71 != &v72)
        {
          free(v71);
        }

        v11 = __p;
        if (__p)
        {
          v12 = v70;
          v13 = __p;
          if (v70 != __p)
          {
            do
            {
              v12 = sub_100052FFC(v12 - 1);
            }

            while (v12 != v11);
            v13 = __p;
          }

          v70 = v11;
          operator delete(v13);
        }

        v14 = v67;
        if (!v67)
        {
          goto LABEL_44;
        }

        v15 = v68;
        v16 = v67;
        if (v68 == v67)
        {
LABEL_43:
          v68 = v14;
          operator delete(v16);
LABEL_44:
          if (v63 != v66)
          {
            free(v63);
          }

          return v10;
        }

        do
        {
          v17 = *--v15;
          *v15 = 0;
          if (v17)
          {
            operator delete[]();
          }
        }

        while (v15 != v14);
LABEL_42:
        v16 = v67;
        goto LABEL_43;
      }
    }
  }

  else
  {
    v56 = 257;
    mlir::Operation::emitOpError(&v60, this, v55);
    if (v60)
    {
      v57 = 3;
      v58 = "Operations with a 'SymbolTable' must have exactly one region";
      v59 = 60;
      v18 = &v57;
      v19 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v57 && v63 + 24 * v64 > &v57)
        {
          v47 = &v57 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v19 = v63;
          v18 = (v63 + v47);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v18 = &v57;
          v19 = v63;
        }
      }

      v20 = &v19[24 * v64];
      v21 = *v18;
      *(v20 + 2) = *(v18 + 2);
      *v20 = v21;
      ++v64;
    }

    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v72 == 1)
    {
      if (v71 != &v72)
      {
        free(v71);
      }

      v22 = __p;
      if (__p)
      {
        v23 = v70;
        v24 = __p;
        if (v70 != __p)
        {
          do
          {
            v23 = sub_100052FFC(v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v70 = v22;
        operator delete(v24);
      }

      v14 = v67;
      if (!v67)
      {
        goto LABEL_44;
      }

      v25 = v68;
      v16 = v67;
      if (v68 == v67)
      {
        goto LABEL_43;
      }

      do
      {
        v26 = *--v25;
        *v25 = 0;
        if (v26)
        {
          operator delete[]();
        }
      }

      while (v25 != v14);
      goto LABEL_42;
    }
  }

  return v10;
}

uint64_t sub_100144C0C(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v7 = a1;
  v8 = a1 + 24 * a2;
  v37 = &v39;
  v38 = &_mh_execute_header;
  v9 = (24 * a2) >> 3;
  v10 = -1431655765 * v9;
  if (0xAAAAAAAAAAAAAAABLL * v9 < 2)
  {
    v11 = 0;
    if (a1 == v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, &v39, 0xAAAAAAAAAAAAAAABLL * v9, 8);
    v11 = v38;
    if (v7 == v8)
    {
      goto LABEL_10;
    }
  }

  v12 = (v37 + 8 * v11);
  v13 = 24 * a2 - 24;
  if (v13 < 0x48)
  {
    goto LABEL_35;
  }

  v14 = v13 / 0x18 + 1;
  v15 = v7;
  v12 += v14 & 0x1FFFFFFFFFFFFFFCLL;
  v7 += 24 * (v14 & 0x1FFFFFFFFFFFFFFCLL);
  v16 = (v37 + 8 * v11 + 16);
  v17 = v14 & 0x1FFFFFFFFFFFFFFCLL;
  do
  {
    v18 = vdupq_n_s64(v15);
    v16[-1] = vaddq_s64(v18, xmmword_10028FC90);
    *v16 = vaddq_s64(v18, xmmword_10028FD80);
    v15 += 96;
    v16 += 2;
    v17 -= 4;
  }

  while (v17);
  if (v14 != (v14 & 0x1FFFFFFFFFFFFFFCLL))
  {
LABEL_35:
    do
    {
      *v12++ = v7;
      v7 += 24;
    }

    while (v7 != v8);
  }

LABEL_10:
  v19 = v11 + v10;
  LODWORD(v38) = v19;
  if (v19)
  {
    v20 = 1;
    while (2)
    {
      v21 = *(v37 + v19 - 1);
      LODWORD(v38) = v19 - 1;
      mlir::Region::OpIterator::OpIterator(&v35, v21, 0);
      mlir::Region::OpIterator::OpIterator(v34, v21, 1);
      v22 = v36;
      v23 = v34[2];
      while (v22 != v23)
      {
        ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v22);
        v25 = a3(a4, ValuePtr);
        if ((v25 & 0x1FFFFFFFFLL) != 0x100000001)
        {
          v31 = v25 & 0xFF00000000;
          v20 = v25;
          v32 = v37;
          if (v37 != &v39)
          {
            goto LABEL_29;
          }

          return v31 | v20;
        }

        {
          sub_100281DDC();
        }

        if (((*(**(ValuePtr + 48) + 32))(*(ValuePtr + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
        {
          v26 = *(ValuePtr + 44);
          v27 = v26 & 0x7FFFFF;
          if ((v26 & 0x7FFFFF) != 0)
          {
            v28 = ValuePtr + 16 * ((v26 >> 23) & 1) + ((v26 >> 21) & 0x7F8) + 32 * *(ValuePtr + 40) + 64;
            v29 = v38;
            v30 = 24 * v27;
            do
            {
              if (v29 >= HIDWORD(v38))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, &v39, v29 + 1, 8);
                v29 = v38;
              }

              *(v37 + v29) = v28;
              v29 = v38 + 1;
              LODWORD(v38) = v38 + 1;
              v28 += 24;
              v30 -= 24;
            }

            while (v30);
          }
        }

        mlir::Region::OpIterator::operator++(&v35);
        v22 = v36;
      }

      v19 = v38;
      if (v38)
      {
        continue;
      }

      break;
    }

    v31 = &_mh_execute_header;
    v32 = v37;
    if (v37 != &v39)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v31 = &_mh_execute_header;
    v20 = 1;
    v32 = v37;
    if (v37 != &v39)
    {
LABEL_29:
      free(v32);
    }
  }

  return v31 | v20;
}

BOOL mlir::detail::verifySymbol(mlir::detail *this, mlir::Operation *a2)
{
  if (!*(this + 47) || (InherentAttr = mlir::Operation::getInherentAttr(this, "sym_name", 8), (v4 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(this + 56, "sym_name", 8uLL);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v67 = 257;
    mlir::Operation::emitOpError(&v72, this, v66);
    if (v72)
    {
      LODWORD(v68) = 3;
      v69 = "requires string attribute '";
      v70 = 27;
      v5 = &v68;
      v6 = v74;
      if (v75 >= v76)
      {
        if (v74 <= &v68 && v74 + 24 * v75 > &v68)
        {
          v59 = &v68 - v74;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
          v6 = v74;
          v5 = (v74 + v59);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
          v5 = &v68;
          v6 = v74;
        }
      }

      v7 = &v6[24 * v75];
      v8 = *v5;
      *(v7 + 2) = v5[2];
      *v7 = v8;
      ++v75;
      if (v72)
      {
        v71 = 261;
        v68 = "sym_name";
        v69 = 8;
        mlir::Diagnostic::operator<<(v73, &v68);
        if (v72)
        {
          LODWORD(v68) = 3;
          v69 = "'";
          v70 = 1;
          v9 = &v68;
          v10 = v74;
          if (v75 >= v76)
          {
            if (v74 <= &v68 && v74 + 24 * v75 > &v68)
            {
              v60 = &v68 - v74;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
              v10 = v74;
              v9 = (v74 + v60);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
              v9 = &v68;
              v10 = v74;
            }
          }

          v11 = &v10[24 * v75];
          v12 = *v9;
          *(v11 + 2) = v9[2];
          *v11 = v12;
          ++v75;
        }
      }
    }

    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v72);
    if (v72)
    {
      mlir::InFlightDiagnostic::report(&v72);
    }

    if (v83 == 1)
    {
      if (v82 != &v83)
      {
        free(v82);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v81;
        v16 = __p;
        if (v81 != __p)
        {
          do
          {
            v15 = sub_100052FFC(v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v81 = v14;
        operator delete(v16);
      }

      v17 = v78;
      if (!v78)
      {
        goto LABEL_94;
      }

      v18 = v79;
      v19 = v78;
      if (v79 == v78)
      {
LABEL_93:
        v79 = v17;
        operator delete(v19);
LABEL_94:
        if (v74 != v77)
        {
          free(v74);
        }

        return v13;
      }

      do
      {
        v20 = *--v18;
        *v18 = 0;
        if (v20)
        {
          operator delete[]();
        }
      }

      while (v18 != v17);
LABEL_92:
      v19 = v78;
      goto LABEL_93;
    }

    return v13;
  }

  if (!*(this + 47) || (v21 = mlir::Operation::getInherentAttr(this, "sym_visibility", 14), (v22 & 1) == 0))
  {
    v21 = mlir::DictionaryAttr::get(this + 56, "sym_visibility", 0xEuLL);
  }

  if (!v21)
  {
    return 1;
  }

  if (*(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  v65 = v23;
  if (!v23)
  {
    v30 = v21;
    v67 = 257;
    mlir::Operation::emitOpError(&v72, this, v66);
    if (v72)
    {
      LODWORD(v68) = 3;
      v69 = "requires visibility attribute '";
      v70 = 31;
      v31 = &v68;
      v32 = v74;
      if (v75 >= v76)
      {
        if (v74 <= &v68 && v74 + 24 * v75 > &v68)
        {
          v62 = &v68 - v74;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
          v32 = v74;
          v31 = (v74 + v62);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
          v31 = &v68;
          v32 = v74;
        }
      }

      v33 = &v32[24 * v75];
      v34 = *v31;
      *(v33 + 2) = v31[2];
      *v33 = v34;
      ++v75;
      if (v72)
      {
        v71 = 261;
        v68 = "sym_visibility";
        v69 = 14;
        mlir::Diagnostic::operator<<(v73, &v68);
        if (v72)
        {
          LODWORD(v68) = 3;
          v69 = "' to be a string attribute, but got ";
          v70 = 36;
          v35 = &v68;
          v36 = v74;
          if (v75 >= v76)
          {
            if (v74 <= &v68 && v74 + 24 * v75 > &v68)
            {
              v63 = &v68 - v74;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
              v36 = v74;
              v35 = (v74 + v63);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
              v35 = &v68;
              v36 = v74;
            }
          }

          v37 = &v36[24 * v75];
          v38 = *v35;
          *(v37 + 2) = v35[2];
          *v37 = v38;
          ++v75;
          if (v72)
          {
            v39 = &v68;
            mlir::DiagnosticArgument::DiagnosticArgument(&v68, v30);
            v40 = v74;
            if (v75 >= v76)
            {
              if (v74 <= &v68 && v74 + 24 * v75 > &v68)
              {
                v64 = &v68 - v74;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
                v40 = v74;
                v39 = (v74 + v64);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
                v39 = &v68;
                v40 = v74;
              }
            }

            v41 = &v40[24 * v75];
            v42 = *v39;
            *(v41 + 2) = v39[2];
            *v41 = v42;
            ++v75;
          }
        }
      }
    }

    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v72);
    if (v72)
    {
      mlir::InFlightDiagnostic::report(&v72);
    }

    if (v83 == 1)
    {
      if (v82 != &v83)
      {
        free(v82);
      }

      v43 = __p;
      if (__p)
      {
        v44 = v81;
        v45 = __p;
        if (v81 != __p)
        {
          do
          {
            v44 = sub_100052FFC(v44 - 1);
          }

          while (v44 != v43);
          v45 = __p;
        }

        v81 = v43;
        operator delete(v45);
      }

      v17 = v78;
      if (!v78)
      {
        goto LABEL_94;
      }

      v46 = v79;
      v19 = v78;
      if (v79 == v78)
      {
        goto LABEL_93;
      }

      do
      {
        v47 = *--v46;
        *v46 = 0;
        if (v47)
        {
          operator delete[]();
        }
      }

      while (v46 != v17);
      goto LABEL_92;
    }

    return v13;
  }

  Value = mlir::StringAttr::getValue(&v65);
  if (v25 != 7)
  {
    if (v25 != 6)
    {
      goto LABEL_72;
    }

    if (*Value != 1818391920 || *(Value + 4) != 25449)
    {
      v27 = *(Value + 4);
      v28 = *Value == 1953719662;
      v29 = 25701;
      goto LABEL_68;
    }

    return 1;
  }

  v27 = *(Value + 3);
  v28 = *Value == 1986622064;
  v29 = 1702125942;
LABEL_68:
  if (v28 && v27 == v29)
  {
    return 1;
  }

LABEL_72:
  v71 = 257;
  mlir::Operation::emitOpError(&v72, this, &v68);
  if (v72)
  {
    LODWORD(v66[0]) = 3;
    v66[1] = "visibility expected to be one of [public, private, nested], but got ";
    v66[2] = 74;
    v49 = v66;
    v50 = v74;
    if (v75 >= v76)
    {
      if (v74 <= v66 && v74 + 24 * v75 > v66)
      {
        v61 = v66 - v74;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
        v50 = v74;
        v49 = (v74 + v61);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
        v49 = v66;
        v50 = v74;
      }
    }

    v51 = &v50[24 * v75];
    v52 = *v49;
    *(v51 + 2) = v49[2];
    *v51 = v52;
    ++v75;
    if (v72)
    {
      mlir::Diagnostic::operator<<(v73, v65);
    }
  }

  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v72);
  if (v72)
  {
    mlir::InFlightDiagnostic::report(&v72);
  }

  if (v83 == 1)
  {
    if (v82 != &v83)
    {
      free(v82);
    }

    v53 = __p;
    if (__p)
    {
      v54 = v81;
      v55 = __p;
      if (v81 != __p)
      {
        do
        {
          v54 = sub_100052FFC(v54 - 1);
        }

        while (v54 != v53);
        v55 = __p;
      }

      v81 = v53;
      operator delete(v55);
    }

    v17 = v78;
    if (!v78)
    {
      goto LABEL_94;
    }

    v56 = v79;
    v19 = v78;
    if (v79 == v78)
    {
      goto LABEL_93;
    }

    do
    {
      v57 = *--v56;
      *v56 = 0;
      if (v57)
      {
        operator delete[]();
      }
    }

    while (v56 != v17);
    goto LABEL_92;
  }

  return v13;
}

void mlir::SymbolTable::getSymbolUses(mlir::SymbolTable *this@<X0>, mlir::Operation *a2@<X1>, uint64_t a3@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  sub_100146C08(&v16, this, a2);
  v5 = v16;
  if (v17)
  {
    v6 = 16 * v17;
    v7 = (v16 + 8);
    while (1)
    {
      v8 = *v7;
      v7 += 2;
      v13[0] = v5;
      v13[1] = __p;
      v9 = v8 & 0xFFFFFFFFFFFFFFF8;
      if ((v8 & 4) != 0 && v9)
      {
        v15[0] = sub_10014736C;
        v15[1] = v13;
        v14 = v15;
        if ((sub_100144C0C(v9, 1, sub_100146940, &v14) & 0x100000000) == 0)
        {
          goto LABEL_13;
        }
      }

      else if ((sub_100146598(v9, sub_10014736C, v13) & 0x100000000) == 0)
      {
LABEL_13:
        *a3 = 0;
        *(a3 + 24) = 0;
        if (v16 != v18)
        {
          free(v16);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        return;
      }

      v5 += 16;
      v6 -= 16;
      if (!v6)
      {
        v5 = v16;
        break;
      }
    }
  }

  if (v5 != v18)
  {
    free(v5);
  }

  v10 = v12;
  *a3 = *__p;
  *(a3 + 16) = v10;
  *(a3 + 24) = 1;
}

BOOL mlir::SymbolTable::symbolKnownUseEmpty(mlir::SymbolTable *this, mlir::Operation *a2, mlir::Operation *a3)
{
  sub_100146C08(&v16, this, a2);
  v3 = v16;
  if (!v17)
  {
    v6 = 1;
    if (v16 == v18)
    {
      return v6;
    }

    goto LABEL_15;
  }

  v4 = v16 + 16 * v17;
  do
  {
    while (1)
    {
      v13 = v3;
      v8 = *(v3 + 1);
      v9 = v8 & 0xFFFFFFFFFFFFFFF8;
      if ((v8 & 4) == 0 || !v9)
      {
        break;
      }

      v15[0] = sub_1001473BC;
      v15[1] = &v13;
      v14 = v15;
      v10 = sub_100144C0C(v9, 1, sub_100146940, &v14);
      v6 = (v10 & 0x1FFFFFFFFLL) == 0x100000001;
      v3 += 16;
      if ((v10 & 0x1FFFFFFFFLL) != 0x100000001 || v3 == v4)
      {
        goto LABEL_14;
      }
    }

    v5 = sub_100146598(v9, sub_1001473BC, &v13);
    v6 = (v5 & 0x1FFFFFFFFLL) == 0x100000001;
    v3 += 16;
  }

  while ((v5 & 0x1FFFFFFFFLL) == 0x100000001 && v3 != v4);
LABEL_14:
  v3 = v16;
  if (v16 != v18)
  {
LABEL_15:
    free(v3);
  }

  return v6;
}

uint64_t mlir::SymbolTableCollection::lookupSymbolIn(mlir::SymbolTableCollection *a1, mlir::Operation *a2, uint64_t a3)
{
  SymbolTable = mlir::SymbolTableCollection::getSymbolTable(a1, a2);
  v5 = *(SymbolTable + 24);
  if (v5)
  {
    v6 = *(SymbolTable + 8);
    v7 = v5 - 1;
    v8 = (v5 - 1) & ((a3 >> 4) ^ (a3 >> 9));
    v9 = *(v6 + 16 * v8);
    if (v9 == a3)
    {
      return *(v6 + 16 * v8 + 8);
    }

    v11 = 1;
    while (v9 != -4096)
    {
      v12 = v8 + v11++;
      v8 = v12 & v7;
      v9 = *(v6 + 16 * v8);
      if (v9 == a3)
      {
        return *(v6 + 16 * v8 + 8);
      }
    }
  }

  return 0;
}

uint64_t mlir::SymbolTableCollection::getSymbolTable(mlir::SymbolTableCollection *this, mlir::Operation *a2)
{
  v5 = a2;
  sub_100145EF8(this, &v5, &v3);
  if (v4 == 1)
  {
    operator new();
  }

  return *(v3 + 8);
}

uint64_t mlir::SymbolTableCollection::lookupSymbolIn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v8;
  v7 = 0x400000000;
  if (sub_100144090(a2, a3, &v6, sub_1001478C0, &v5))
  {
    v3 = *(v6 + v7 - 1);
    if (v6 == v8)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (v6 != v8)
  {
LABEL_5:
    free(v6);
  }

  return v3;
}

uint64_t mlir::SymbolTableCollection::lookupNearestSymbolFrom(uint64_t a1, mlir::SymbolTable *a2, uint64_t a3)
{
  NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(a2, a2);
  if (!NearestSymbolTable)
  {
    return 0;
  }

  v8 = a1;
  v9 = v11;
  v10 = 0x400000000;
  if (sub_100144090(NearestSymbolTable, a3, &v9, sub_1001478C0, &v8))
  {
    v6 = *(v9 + v10 - 1);
    if (v9 == v11)
    {
      return v6;
    }

    goto LABEL_7;
  }

  v6 = 0;
  if (v9 != v11)
  {
LABEL_7:
    free(v9);
  }

  return v6;
}

uint64_t sub_100145EF8@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v8 = (*result + 16 * v7);
  v9 = *v8;
  if (*a2 != *v8)
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
      v8 = (v5 + 16 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }

LABEL_5:
    v18 = v8;
    v11 = *(result + 8);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 12) > v4 >> 3)
    {
      *(result + 8) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        *v8 = *a2;
        v8[1] = 0;
        v5 = *result;
        v4 = *(result + 16);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v16 = result;
    v17 = a3;
    sub_100147958(result, v4);
    sub_10003D9D4(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 8);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 16 * v4;
  *(a3 + 16) = v10;
  return result;
}

uint64_t sub_10014607C(uint64_t a1)
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
      sub_100281E6C();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &CostModelSegmenter;
    v5 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;
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
    sub_100281E18();
    v3 = v21;
    a1 = v22;
    v4 = &CostModelSegmenter;
    v5 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;
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
    sub_100281E18();
    v4 = &CostModelSegmenter;
    v18 = v23;
  }

  base_props = v4[51].base_props;
  v20 = *(*v17 + 104);

  return v20(v17, base_props, v18);
}

unint64_t sub_10014626C(void *a1, uint64_t a2)
{
  if (!sub_1001462EC(a2) || !a2)
  {
    return 0x100000001;
  }

  v4 = sub_1001462EC(a2);
  return &_mh_execute_header & 0xFFFFFFFFFFFFFFFELL | (*v4)(v4, a2, *a1) & 1;
}

uint64_t sub_1001462EC(uint64_t a1)
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
      sub_100281F00();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &unk_1002C1000;
    v5 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id;
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
    sub_100281EAC();
    v3 = v21;
    a1 = v22;
    v4 = &unk_1002C1000;
    v5 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id;
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
    sub_100281EAC();
    v4 = &unk_1002C1000;
    v18 = v23;
  }

  v19 = v4[229];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

uint64_t sub_1001464D0()
{
  {
    sub_100281F40();
  }

  return llvm::getTypeName<mlir::SymbolUserOpInterface>(void)::Name;
}

const char *sub_100146518()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::SymbolUserOpInterface]";
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

uint64_t sub_100146598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 44) & 0x7FFFFF) == 1)
  {
    v6 = *(a1 + 48);
    if (*(v6 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
    {
      if (*(v6 + 24))
      {
        goto LABEL_4;
      }

LABEL_13:
      v8 = 0;
      v9 = 0;
      v7 = 0;
      return v9 | v7 | v8;
    }

    v16[0] = *(v6 + 8);
    if (!mlir::StringAttr::getReferencedDialect(v16))
    {
      goto LABEL_13;
    }
  }

LABEL_4:
  if (sub_100146718(a1, a2, a3))
  {
    {
      sub_100281DDC();
    }

    if ((*(**(a1 + 48) + 32))(*(a1 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      v7 = 0;
      v8 = &_mh_execute_header;
      v9 = 1;
    }

    else
    {
      v10 = *(a1 + 44);
      v11 = v10 & 0x7FFFFF;
      if ((v10 & 0x7FFFFF) != 0)
      {
        v12 = ((a1 + 16 * ((v10 >> 23) & 1) + ((v10 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
      }

      else
      {
        v12 = 0;
        v11 = 0;
      }

      v16[0] = a2;
      v16[1] = a3;
      v15 = v16;
      v13 = sub_100144C0C(v12, v11, sub_100146940, &v15);
      v7 = v13 & 0xFFFFFF00;
      v9 = v13;
      v8 = v13 & 0xFF00000000;
    }
  }

  else
  {
    v9 = 0;
    v7 = 0;
    v8 = &_mh_execute_header;
  }

  return v9 | v7 | v8;
}

uint64_t sub_100146718(mlir::Operation *a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v6 = a1;
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v10[0] = off_1002B7808;
  v10[1] = v7;
  v10[2] = &v6;
  v11 = v10;
  *(&v8[0] + 1) = sub_100130CBC(v8, v10);
  if (v11 == v10)
  {
    (*(*v11 + 32))(v11);
  }

  else if (v11)
  {
    (*(*v11 + 40))(v11);
  }

  v4 = mlir::AttrTypeWalker::walkImpl(v8, AttrDictionary, 0);
  sub_100130EE4(v8);
  return v4;
}

__n128 sub_1001468B8(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B7808;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001468E8(uint64_t a1, uint64_t a2)
{
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return 2 * ((**(a1 + 8))(*(*(a1 + 8) + 8), **(a1 + 16)) != 0);
  }

  else
  {
    return 1;
  }
}

unint64_t sub_100146940(uint64_t **a1, uint64_t a2)
{
  if ((*(a2 + 44) & 0x7FFFFF) != 1)
  {
    return sub_100146718(a2, **a1, (*a1)[1]) | &_mh_execute_header;
  }

  v2 = *(a2 + 48);
  if (*(v2 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v8 = *(v2 + 8);
    v4 = a1;
    v5 = a2;
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v8);
    a2 = v5;
    v7 = ReferencedDialect;
    a1 = v4;
    if (v7)
    {
      return sub_100146718(a2, **a1, (*a1)[1]) | &_mh_execute_header;
    }
  }

  else if (*(v2 + 24))
  {
    return sub_100146718(a2, **a1, (*a1)[1]) | &_mh_execute_header;
  }

  return 0;
}

void sub_1001469EC(uint64_t a1, _OWORD *a2)
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
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    sub_10002BC08();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    sub_10002BC08();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
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

uint64_t sub_100146B0C(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  if (a2 == a1)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v19 = v4;
  if (v4)
  {
    mlir::SymbolRefAttr::getNestedReferences(&v19);
    if (!v5)
    {
      return 0;
    }
  }

  RootReference = mlir::SymbolRefAttr::getRootReference(&v17);
  if (RootReference != mlir::SymbolRefAttr::getRootReference(&v18))
  {
    return 0;
  }

  NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v17);
  v9 = v8;
  v10 = mlir::SymbolRefAttr::getNestedReferences(&v18);
  if (v11 >= v9)
  {
    return 0;
  }

  if (v11)
  {
    v12 = 8 * v11 - 8;
    do
    {
      v14 = *NestedReferences++;
      v13 = v14;
      v15 = *v10++;
      v16 = v15 == v13;
      v2 = v15 == v13;
      v16 = !v16 || v12 == 0;
      v12 -= 8;
    }

    while (!v16);
    return v2;
  }

  return 1;
}

void sub_100146C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(a2, "sym_name", 8), (v7 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(a2 + 56, "sym_name", 8uLL);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v8 = InherentAttr;
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

  v66 = &v70;
  v67 = 4;
  v68 = 0;
  v69 = 1;
  v71 = v73;
  v72 = 0x400000000;
  ParentOp = a3;
  while (ParentOp != a2)
  {
    if (v69 == 1)
    {
      v10 = HIDWORD(v67);
      if (HIDWORD(v67))
      {
        v11 = 8 * HIDWORD(v67);
        v12 = v66;
        while (*v12 != ParentOp)
        {
          ++v12;
          v11 -= 8;
          if (!v11)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_22;
      }

LABEL_16:
      if (HIDWORD(v67) < v67)
      {
        ++HIDWORD(v67);
        *(v66 + v10) = ParentOp;
LABEL_19:
        v14 = v72;
        if (v72 >= HIDWORD(v72))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v73, v72 + 1, 8);
          v14 = v72;
        }

        *(v71 + v14) = ParentOp;
        LODWORD(v72) = v72 + 1;
        goto LABEL_22;
      }
    }

    llvm::SmallPtrSetImplBase::insert_imp_big(&v66, ParentOp);
    if (v13)
    {
      goto LABEL_19;
    }

LABEL_22:
    v15 = *(ParentOp + 16);
    if (v15)
    {
      ParentOp = mlir::Block::getParentOp(v15);
      if (ParentOp)
      {
        continue;
      }
    }

    v16 = *(a2 + 16);
    if (v16)
    {
      v17 = mlir::Block::getParentOp(v16);
    }

    else
    {
      v17 = 0;
    }

    v60 = a3;
    while (1)
    {
      if (v69 == 1)
      {
        if (HIDWORD(v67))
        {
          v22 = v66;
          v23 = 8 * HIDWORD(v67);
          while (*v22 != v17)
          {
            ++v22;
            v23 -= 8;
            if (!v23)
            {
              goto LABEL_42;
            }
          }

LABEL_44:
          v63 = v65;
          v64 = 0x200000001;
          Context = mlir::Attribute::getContext((a2 + 24));
          v27 = mlir::SymbolRefAttr::get(v8);
          v65[0] = v27;
          v28 = *(a2 + 16);
          if (v28)
          {
            v29 = mlir::Block::getParentOp(v28);
            if (v29 != v17)
            {
              goto LABEL_46;
            }

LABEL_78:
            if (v17 != a3)
            {
              goto LABEL_79;
            }

            goto LABEL_80;
          }

          v29 = 0;
          if (!v17)
          {
            goto LABEL_78;
          }

LABEL_46:
          v74 = &v76;
          v76 = v27;
          v75 = 0x100000001;
          v62 = 261;
          v61[0] = "sym_name";
          v61[1] = 8;
          v30 = mlir::StringAttr::get(Context, v61, v26);
          {
            goto LABEL_49;
          }

          while (2)
          {
            sub_100281DDC();
LABEL_49:
            if (!(*(**(v29 + 48) + 32))(*(v29 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id))
            {
LABEL_72:
              v49 = 0;
              v50 = v74;
              a3 = v60;
              if (v74 == &v76)
              {
                goto LABEL_74;
              }

              goto LABEL_73;
            }

            v61[0] = v30;
            v31 = v30;
            if (*(v29 + 47))
            {
              Value = mlir::StringAttr::getValue(v61);
              v34 = mlir::Operation::getInherentAttr(v29, Value, v33);
              if ((v35 & 1) == 0)
              {
                v31 = v61[0];
                goto LABEL_53;
              }
            }

            else
            {
LABEL_53:
              v34 = mlir::DictionaryAttr::get(v29 + 56, v31);
            }

            v36 = v34;
            if (!v34 || *(*v34 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
            {
              goto LABEL_72;
            }

            v37 = mlir::SymbolRefAttr::get(v34, v74, v75);
            v38 = v64;
            if (v64 >= HIDWORD(v64))
            {
              v48 = v37;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 8);
              v37 = v48;
              v38 = v64;
            }

            *(v63 + v38) = v37;
            LODWORD(v64) = v64 + 1;
            v39 = *(v29 + 16);
            if (v39)
            {
              v29 = mlir::Block::getParentOp(v39);
              if (v29 == v17)
              {
                goto LABEL_98;
              }
            }

            else
            {
              v29 = 0;
              if (!v17)
              {
LABEL_98:
                v49 = 1;
                v50 = v74;
                a3 = v60;
                if (v74 == &v76)
                {
LABEL_74:
                  if (v17 != a3)
                  {
                    if ((v49 & 1) == 0)
                    {
                      *a1 = a1 + 16;
                      *(a1 + 8) = 0x200000000;
                      goto LABEL_89;
                    }

LABEL_79:
                    *(a1 + 16) = *(v63 + v64 - 1);
                    *a1 = a1 + 16;
                    *(a1 + 24) = a3 & 0xFFFFFFFFFFFFFFFBLL;
                    *(a1 + 8) = 0x200000001;
LABEL_89:
                    if (v63 != v65)
                    {
                      free(v63);
                    }

                    v21 = v71;
                    if (v71 != v73)
                    {
LABEL_92:
                      free(v21);
                    }

                    goto LABEL_93;
                  }

LABEL_80:
                  *a1 = a1 + 16;
                  *(a1 + 8) = 0x200000000;
                  v51 = *(a2 + 16);
                  if (v51)
                  {
                    v51 = mlir::Block::getParentOp(v51);
                  }

                  if (v64)
                  {
                    v52 = 0;
                    v53 = 8 * v64;
                    do
                    {
                      v54 = *(v63 + v52);
                      v55 = *(v51 + 40);
                      v56 = *(v51 + 44);
                      v57 = *(a1 + 8);
                      if (v57 >= *(a1 + 12))
                      {
                        v59 = v51;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v57 + 1, 16);
                        v51 = v59;
                        v57 = *(a1 + 8);
                      }

                      v58 = (*a1 + 16 * v57);
                      *v58 = v54;
                      v58[1] = (((v51 + 16 * ((v56 >> 23) & 1) + ((v56 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v55) | 4;
                      ++*(a1 + 8);
                      v51 = *(v51 + 16);
                      if (v51)
                      {
                        v51 = mlir::Block::getParentOp(v51);
                      }

                      v52 += 8;
                    }

                    while (v53 != v52);
                  }

                  goto LABEL_89;
                }

LABEL_73:
                free(v50);
                goto LABEL_74;
              }
            }

            v40 = v74;
            v41 = mlir::SymbolRefAttr::get(v36);
            v42 = v74;
            v43 = v75;
            if (&v74[v75] == v40)
            {
              if (v75 >= HIDWORD(v75))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, &v76, v75 + 1, 8);
                v43 = v75;
                v42 = v74;
              }

              *&v42[8 * v43] = v41;
              LODWORD(v75) = v75 + 1;
              {
                continue;
              }
            }

            else
            {
              if (v75 >= HIDWORD(v75))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, &v76, v75 + 1, 8);
                v44 = v74;
                v43 = v75;
              }

              else
              {
                v44 = v74;
              }

              v45 = (v44 + v40 - v42);
              v44[v43] = v44[v43 - 1];
              v46 = v75;
              v47 = &v74[v75 - 1];
              if (v47 != v45)
              {
                memmove(v45 + 1, v45, v47 - v45);
                v46 = v75;
              }

              LODWORD(v75) = v46 + 1;
              *v45 = v41;
              {
                continue;
              }
            }

            goto LABEL_49;
          }
        }
      }

      else if (llvm::SmallPtrSetImplBase::doFind(&v66, v17))
      {
        goto LABEL_44;
      }

LABEL_42:
      v24 = v17[2];
      if (!v24)
      {
        v17 = 0;
        goto LABEL_44;
      }

      v17 = mlir::Block::getParentOp(v24);
      if (!v17)
      {
        goto LABEL_44;
      }
    }
  }

  v18 = *(a3 + 16);
  if (v18)
  {
    v18 = mlir::Block::getParentOp(v18);
  }

  NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(v18, v7);
  v20 = *(a2 + 16);
  if (v20)
  {
    v20 = mlir::Block::getParentOp(v20);
  }

  if (NearestSymbolTable == v20)
  {
    *(a1 + 16) = mlir::SymbolRefAttr::get(v8);
    *a1 = a1 + 16;
    *(a1 + 24) = a3 & 0xFFFFFFFFFFFFFFFBLL;
    *(a1 + 8) = 0x200000001;
    v21 = v71;
    if (v71 != v73)
    {
      goto LABEL_92;
    }
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x200000000;
    v21 = v71;
    if (v71 != v73)
    {
      goto LABEL_92;
    }
  }

LABEL_93:
  if ((v69 & 1) == 0)
  {
    free(v66);
  }
}

uint64_t sub_10014736C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v5 = a2;
  *(&v5 + 1) = a3;
  if (sub_100146B0C(**a1, a3))
  {
    sub_1001469EC(*(a1 + 8), &v5);
  }

  return 1;
}

uint64_t sub_1001473E4(void *a1, uint64_t a2)
{
  v14 = a1;
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  v15 = v3;
  if (v3)
  {
    mlir::SymbolRefAttr::getNestedReferences(&v15);
    if (!v4)
    {
      return a2;
    }
  }

  NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v14);
  v7 = v5;
  v15 = v17;
  v16 = 0x200000000;
  if (v5 >= 3)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v5, 8);
    v8 = v16;
    v9 = v15;
LABEL_10:
    memcpy(&v9[8 * v8], NestedReferences, 8 * v7);
    v10 = v16;
    v11 = v15;
    goto LABEL_11;
  }

  if (v5)
  {
    v8 = 0;
    v9 = v17;
    goto LABEL_10;
  }

  v10 = 0;
  v11 = v17;
LABEL_11:
  LODWORD(v16) = v10 + v7;
  *&v11[8 * (v10 + v7) - 8] = a2;
  RootReference = mlir::SymbolRefAttr::getRootReference(&v14);
  a2 = mlir::SymbolRefAttr::get(RootReference, v15, v16);
  if (v15 != v17)
  {
    free(v15);
  }

  return a2;
}

uint64_t sub_10014752C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = a2(a3, a1);
  if ((v6 & 0x1FFFFFFFFLL) == 0x100000001)
  {
    {
      sub_100281F94();
    }

    if (((*(**(a1 + 48) + 32))(*(a1 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
    {
      v7 = *(a1 + 44);
      v8 = v7 & 0x7FFFFF;
      if ((v7 & 0x7FFFFF) != 0)
      {
        v9 = ((a1 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
      }

      else
      {
        v9 = 0;
        v8 = 0;
      }

      v6 = sub_100144C0C(v9, v8, a2, a3);
    }
  }

  return v6 & 0xFFFFFFFFFFLL;
}

__n128 sub_100147694(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B7850;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1001476CC(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v18 = *a2;
    if (*a1[1] == v3)
    {
      v3 = *a1[2];
    }

    else
    {
      v6 = a3;
      v7 = sub_100146B0C(*a1[1], v3);
      a3 = v6;
      if (v7)
      {
        mlir::SymbolRefAttr::getNestedReferences(a1[1]);
        v9 = v8;
        NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v18);
        v12 = v10;
        if (!v9)
        {
          v3 = mlir::SymbolRefAttr::get(*a1[3], NestedReferences, v10);
LABEL_15:
          a3 = v6;
          goto LABEL_16;
        }

        v19 = v21;
        v20 = 0x400000000;
        if (v10 < 5)
        {
          if (!v10)
          {
            v15 = 0;
            v16 = v21;
LABEL_13:
            LODWORD(v20) = v15 + v12;
            *&v16[8 * v9 - 8] = *a1[4];
            RootReference = mlir::SymbolRefAttr::getRootReference(&v18);
            v3 = mlir::SymbolRefAttr::get(RootReference, v19, v20);
            if (v19 != v21)
            {
              free(v19);
            }

            goto LABEL_15;
          }

          v13 = 0;
          v14 = v21;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v10, 8);
          v13 = v20;
          v14 = v19;
        }

        memcpy(&v14[8 * v13], NestedReferences, 8 * v12);
        v15 = v20;
        v16 = v19;
        goto LABEL_13;
      }
    }

LABEL_16:
    *a3 = v3;
    *(a3 + 8) = 2;
    v4 = 1;
    goto LABEL_17;
  }

  v4 = 0;
  *a3 = 0;
LABEL_17:
  *(a3 + 16) = v4;
}

uint64_t sub_1001478C0(mlir::SymbolTableCollection **a1, mlir::Operation *a2, uint64_t a3)
{
  SymbolTable = mlir::SymbolTableCollection::getSymbolTable(*a1, a2);
  v5 = *(SymbolTable + 24);
  if (v5)
  {
    v6 = *(SymbolTable + 8);
    v7 = v5 - 1;
    v8 = (v5 - 1) & ((a3 >> 4) ^ (a3 >> 9));
    v9 = *(v6 + 16 * v8);
    if (v9 == a3)
    {
      return *(v6 + 16 * v8 + 8);
    }

    v11 = 1;
    while (v9 != -4096)
    {
      v12 = v8 + v11++;
      v8 = v12 & v7;
      v9 = *(v6 + 16 * v8);
      if (v9 == a3)
      {
        return *(v6 + 16 * v8 + 8);
      }
    }
  }

  return 0;
}

void sub_100147958(uint64_t a1, int a2)
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
  sub_100147A70(a1, v4, &v10[v4]);

  llvm::deallocate_buffer(v4, v10, 8uLL);
}

uint64_t sub_100147A70(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = a2;
  *(result + 8) = 0;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *result;
    v6 = (v4 - 1) & 0xFFFFFFFFFFFFFFFLL;
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
        goto LABEL_10;
      }
    }

    else
    {
      v9 = *result;
    }

    v12 = &v5[2 * v4];
    do
    {
      *v9 = -4096;
      v9 += 2;
    }

    while (v9 != v12);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v13 = *v3;
      if ((*v3 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v14 = *(result + 16) - 1;
        v15 = v14 & ((v13 >> 4) ^ (v13 >> 9));
        v16 = (*result + 16 * v15);
        v17 = *v16;
        if (v13 != *v16)
        {
          v20 = 0;
          v21 = 1;
          while (v17 != -4096)
          {
            if (v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = v17 == -8192;
            }

            if (v22)
            {
              v20 = v16;
            }

            v23 = v15 + v21++;
            v15 = v23 & v14;
            v16 = (*result + 16 * (v23 & v14));
            v17 = *v16;
            if (v13 == *v16)
            {
              goto LABEL_15;
            }
          }

          if (v20)
          {
            v16 = v20;
          }
        }

LABEL_15:
        v18 = v3[1];
        v3[1] = 0;
        *v16 = v13;
        v16[1] = v18;
        ++*(result + 8);
        v19 = v3[1];
        v3[1] = 0;
        if (v19)
        {
          llvm::deallocate_buffer(*(v19 + 8), (16 * *(v19 + 24)), 8uLL);
          operator delete();
        }
      }

      v3 += 2;
    }

    while (v3 != a3);
  }

  return result;
}

BOOL mlir::Type::isInteger(mlir::Type *this, int a2)
{
  v2 = *this;
  v3 = *(**this + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v2 = 0;
  }

  v5 = v2;
  return v3 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && mlir::IntegerType::getWidth(&v5) == a2;
}

BOOL mlir::Type::isSignlessInteger(mlir::Type *this, int a2)
{
  v2 = *this;
  v3 = *(**this + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v2 = 0;
  }

  v6 = v2;
  if (v3 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 0;
  }

  if (mlir::IntegerType::getSignedness(&v6))
  {
    return 0;
  }

  return mlir::IntegerType::getWidth(&v6) == a2;
}

BOOL mlir::Type::isSignedInteger(mlir::Type *this)
{
  v1 = *this;
  v2 = *(**this + 136);
  if (v2 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v1 = 0;
  }

  v4 = v1;
  return v2 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && mlir::IntegerType::getSignedness(&v4) == 1;
}

BOOL mlir::Type::isSignedInteger(mlir::Type *this, int a2)
{
  v2 = *this;
  v3 = *(**this + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v2 = 0;
  }

  v6 = v2;
  return v3 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && mlir::IntegerType::getSignedness(&v6) == 1 && mlir::IntegerType::getWidth(&v6) == a2;
}

BOOL mlir::Type::isUnsignedInteger(mlir::Type *this)
{
  v1 = *this;
  v2 = *(**this + 136);
  if (v2 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v1 = 0;
  }

  v4 = v1;
  return v2 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && mlir::IntegerType::getSignedness(&v4) == 2;
}

BOOL mlir::Type::isUnsignedInteger(mlir::Type *this, int a2)
{
  v2 = *this;
  v3 = *(**this + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v2 = 0;
  }

  v6 = v2;
  return v3 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && mlir::IntegerType::getSignedness(&v6) == 2 && mlir::IntegerType::getWidth(&v6) == a2;
}

BOOL mlir::Type::isIntOrFloat(uint64_t **this)
{
  v1 = **this;
  if (*(v1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 1;
  }

  {
    v12 = v1;
    sub_100278FD0();
    v2 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
    v3 = *(v12 + 8);
    v4 = *(v12 + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (!v4)
  {
    return 0;
  }

LABEL_4:
  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 == &v3[2 * v4])
  {
    return 0;
  }

  return *v5 == v2 && v5[1] != 0;
}

uint64_t mlir::Type::getIntOrFloatBitWidth(uint64_t **this)
{
  v1 = *this;
  v2 = **this;
  v3 = *(v2 + 136);
  v4 = v3 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
  if (v3 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v5 = *this;
  }

  else
  {
    v5 = 0;
  }

  v19 = v5;
  if (v4)
  {
    return mlir::IntegerType::getWidth(&v19);
  }

  {
    v17 = v2;
    v18 = v1;
    sub_100278FD0();
    v1 = v18;
    v6 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
    v7 = *(v17 + 8);
    v8 = *(v17 + 16);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_18:
    v19 = v1;
    v20 = 0;
    return mlir::FloatType::getWidth(&v19);
  }

  v6 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_7:
  v9 = v7;
  v10 = v8;
  do
  {
    v11 = v10 >> 1;
    v12 = &v9[2 * (v10 >> 1)];
    v14 = *v12;
    v13 = v12 + 2;
    v10 += ~(v10 >> 1);
    if (v14 < v6)
    {
      v9 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  while (v10);
  if (v9 == &v7[2 * v8] || *v9 != v6)
  {
    goto LABEL_18;
  }

  v16 = v9[1];
  v19 = v1;
  v20 = v16;
  return mlir::FloatType::getWidth(&v19);
}

unint64_t *mlir::TypeRange::TypeRange(unint64_t *result, uint64_t a2, unint64_t a3)
{
  *result = a2 & 0xFFFFFFFFFFFFFFF9 | 2;
  result[1] = a3;
  return result;
}

{
  *result = 0;
  result[1] = a3;
  if (a3)
  {
    v3 = a2 & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 6) == 4 && v3)
    {
      v3 |= 6uLL;
    }

    else
    {
      if (v3)
      {
        v4 = (a2 & 6) == 2;
      }

      else
      {
        v4 = 0;
      }

      if (v4)
      {
        v3 |= 4uLL;
      }
    }

    *result = v3;
  }

  return result;
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
  v4[0] = sub_10005E890(a1);
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
  v4[0] = sub_10005E890(v1);
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

BOOL mlir::verifyCompatibleShape(void *a1, void *a2)
{
  v17[0] = sub_10005E890(a1);
  v17[1] = v3;
  v4 = sub_10005E890(a2);
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

uint64_t mlir::verifyCompatibleShapes(uint64_t a1, unint64_t a2)
{
  v78 = v80;
  v79 = 0x800000000;
  if (a2 < 9)
  {
    if (!a2)
    {
      LODWORD(v79) = 0;
LABEL_11:
      v15 = 1;
      goto LABEL_111;
    }

    v4 = 0;
    v5 = v80;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v80, a2, 16);
    v4 = v79;
    v5 = v78;
  }

  v6 = 0;
  v7 = &v5[16 * v4];
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    *v7 = sub_10005E890(v8);
    v7[1] = v9;
    v7 += 2;
    ++v6;
  }

  while (a2 != v6);
  v10 = v78;
  v11 = (v79 + a2);
  LODWORD(v79) = v79 + a2;
  if (!v79)
  {
    goto LABEL_11;
  }

  v12 = 0;
  v13 = 16 * v11;
  v14 = v78 + 16 * v11;
  while (!*(v78 + v12))
  {
    v12 += 16;
    if (v13 == v12)
    {
      goto LABEL_11;
    }
  }

  v16 = 0;
  do
  {
    if (!*(v78 + v16))
    {
LABEL_27:
      v15 = 0;
      goto LABEL_111;
    }

    v16 += 16;
  }

  while (v13 != v16);
  if (!a2)
  {
    goto LABEL_30;
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  do
  {
    v20 = mlir::TypeRange::dereference_iterator(a1, v19);
    if (*(*v20 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v75 = v21;
    if (!v21 || (ScalableDims = mlir::VectorType::getScalableDims(&v75), v24 = v23, v25 = 1, (v26 = memchr(ScalableDims, 1, v23)) == 0) || v26 == &ScalableDims[v24])
    {
      v18 = 1;
      v25 = v17;
    }

    if (v25 & 1) != 0 && (v18)
    {
      goto LABEL_27;
    }

    ++v19;
    v17 = v25;
  }

  while (a2 != v19);
  v10 = v78;
  v14 = v78 + 16 * v79;
  if (v79)
  {
LABEL_30:
    while (1)
    {
      *v73 = *v10;
      if (mlir::ShapedType::hasRank(v73))
      {
        break;
      }

      if (++v10 == v14)
      {
        v10 = v14;
        break;
      }
    }

    v27 = v10;
    v10 = v78;
    v28 = v79;
  }

  else
  {
    v28 = 0;
    v27 = v78;
  }

  v29 = &v10[v28];
  v75 = v77;
  v76 = 0x800000000;
  if (v27 == v29)
  {
    v32 = 0;
    LODWORD(v30) = 0;
  }

  else
  {
    v30 = 0;
    v31 = v27;
    do
    {
      do
      {
        if (++v31 == v14)
        {
          break;
        }

        *v73 = *v31;
      }

      while ((mlir::ShapedType::hasRank(v73) & 1) == 0);
      ++v30;
    }

    while (v31 != v29);
    v32 = v76;
    v33 = v30 + v76;
    if (v33 > HIDWORD(v76))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v77, v33, 16);
      v32 = v76;
    }
  }

  if (v27 != v29)
  {
    v34 = (v75 + 16 * v32);
    do
    {
      *v34 = *v27;
      do
      {
        if (++v27 == v14)
        {
          break;
        }

        *v73 = *v27;
      }

      while ((mlir::ShapedType::hasRank(v73) & 1) == 0);
      ++v34;
    }

    while (v27 != v29);
    v32 = v76;
  }

  LODWORD(v76) = v32 + v30;
  if (!(v32 + v30))
  {
    goto LABEL_104;
  }

  mlir::ShapedType::getShape(v75);
  v36 = v35;
  if (!v76)
  {
LABEL_55:
    if (v36 >= 1)
    {
      v40 = 0;
      v41 = 0;
      while (1)
      {
        v42 = v75;
        v43 = (v75 + 16 * v76);
        if (!v76)
        {
          break;
        }

        v44 = 16 * v76;
        while (1)
        {
          v72 = *v42;
          mlir::ShapedType::getShape(&v72);
          if (v45 >= v40)
          {
            break;
          }

          v42 = (v42 + 16);
          v44 -= 16;
          if (!v44)
          {
            v42 = v43;
            break;
          }
        }

        v46 = v42;
        v42 = (v75 + 16 * v76);
        v73[0] = v74;
        v73[1] = 0x800000000;
        if (v46 == v42)
        {
          goto LABEL_101;
        }

        v47 = 0;
        v48 = v46;
        do
        {
          do
          {
            v48 = (v48 + 16);
            if (v48 == v43)
            {
              break;
            }

            v72 = *v48;
            mlir::ShapedType::getShape(&v72);
          }

          while (v49 < v40);
          ++v47;
        }

        while (v48 != v42);
        v50 = v73[1];
        v51 = v47 + LODWORD(v73[1]);
        if (v51 > HIDWORD(v73[1]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v73, v74, v51, 8);
          v50 = v73[1];
        }

LABEL_70:
        v52 = v73[0];
        if (v46 != v42)
        {
          v53 = v73[0] + 8 * v50;
          do
          {
            v54 = *v46;
            v46 = (v46 + 16);
            v72 = v54;
            for (*v53 = *(mlir::ShapedType::getShape(&v72) + 8 * v40); v46 != v43; v46 = (v46 + 16))
            {
              v72 = *v46;
              mlir::ShapedType::getShape(&v72);
              if (v55 >= v40)
              {
                break;
              }
            }

            ++v53;
          }

          while (v46 != v42);
          v50 = v73[1];
          v52 = v73[0];
        }

        v56 = v50 + v47;
        LODWORD(v73[1]) = v50 + v47;
        if (v50 + v47)
        {
          v57 = *v52;
          v58 = 8 * v56;
          v59 = v58;
          v60 = v52;
          do
          {
            v62 = *v60++;
            v61 = v62;
            if (v62 != 0x8000000000000000)
            {
              v57 = v61;
            }

            v59 -= 8;
          }

          while (v59);
          v63 = v58 - 8;
          v64 = v52;
          do
          {
            v66 = *v64++;
            v65 = v66;
            v68 = v66 == 0x8000000000000000 || v57 == v65;
            v69 = !v68 || v63 == 0;
            v63 -= 8;
          }

          while (!v69);
          v70 = !v68;
          if (v52 != v74)
          {
LABEL_96:
            free(v52);
          }
        }

        else
        {
          v70 = 0;
          if (v52 != v74)
          {
            goto LABEL_96;
          }
        }

        if (v70)
        {
          v15 = 0;
          goto LABEL_109;
        }

        v40 = ++v41;
        if (v36 <= v41)
        {
          v15 = 1;
          goto LABEL_109;
        }
      }

      v46 = v75;
      v73[0] = v74;
      v73[1] = 0x800000000;
LABEL_101:
      v50 = 0;
      LODWORD(v47) = 0;
      goto LABEL_70;
    }

LABEL_104:
    v15 = 1;
    goto LABEL_109;
  }

  v37 = v75;
  v38 = 16 * v76;
  while (1)
  {
    *v73 = *v37;
    mlir::ShapedType::getShape(v73);
    if (v39 != v36)
    {
      break;
    }

    v37 = (v37 + 16);
    v38 -= 16;
    if (!v38)
    {
      goto LABEL_55;
    }
  }

  v15 = 0;
LABEL_109:
  if (v75 != v77)
  {
    free(v75);
  }

LABEL_111:
  if (v78 != v80)
  {
    free(v78);
  }

  return v15;
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

void sub_100148BDC(void *a1, int *a2, unint64_t a3)
{
  v16 = v18;
  v17 = 0x600000000;
  if (!a3)
  {
    v9 = v18[0];
    *a1 = v18[0];
    *v9 = 0;
    v9[1] = a1;
    v10 = v18;
    v7 = v18;
    goto LABEL_15;
  }

  if (a3 < 7)
  {
    v6 = 0;
    v7 = v18;
    v8 = a3;
    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v16, v18, a3, 8);
  v6 = v17;
  v7 = v16;
  v8 = a3 - v17;
  if (a3 != v17)
  {
LABEL_7:
    bzero(&v7[v6], 8 * v8);
  }

  LODWORD(v17) = a3;
  v11 = a3;
  v12 = a1;
  do
  {
    v12 = *v12;
    v13 = *a2++;
    v7[v13] = v12;
    --v11;
  }

  while (v11);
  v9 = *v7;
  *a1 = *v7;
  *v9 = 0;
  v9[1] = a1;
  if (a3 == 1)
  {
    goto LABEL_11;
  }

  v10 = &v7[a3];
LABEL_15:
  v14 = v7 + 1;
  v15 = v9;
  do
  {
    v9 = *v14;
    *v15 = *v14;
    if (v9)
    {
      v9[1] = v15;
    }

    ++v14;
    v15 = v9;
  }

  while (v14 != v10);
LABEL_11:
  *v9 = 0;
  if (v7 != v18)
  {
    free(v7);
  }
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

uint64_t sub_100148E68(_BYTE *a1, uint64_t a2)
{
  v235 = v237;
  v2 = &v240;
  v237[0] = a2;
  v236 = 0x600000001;
  v3 = 1;
  while (1)
  {
    while (1)
    {
      v4 = v235 + 8 * v3;
      v5 = *(v4 - 1);
      *(v4 - 1) = v5 | 2;
      v6 = (v5 >> 2) & 1;
      v7 = v5 & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        LOBYTE(v6) = 1;
      }

      if ((v5 & 2) == 0)
      {
        break;
      }

      if ((v6 & 1) == 0)
      {
        v41 = v2;
        v238 = v2;
        v239 = 0x600000000;
        if (*a1 == 1)
        {
          v42 = *(v7 + 44);
          if ((v42 & 0x7FFFFF) != 0)
          {
            v43 = ((v7 + 16 * ((v42 >> 23) & 1) + ((v42 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v7 + 40);
            v44 = v43 + 24 * (v42 & 0x7FFFFF);
            do
            {
              for (i = *(v43 + 8); i != v43; i = *(i + 8))
              {
                v46 = i - 8;
                if (!i)
                {
                  v46 = 0;
                }

                v47 = v46 + 32;
                for (j = *(v46 + 40); j != v47; j = *(j + 8))
                {
                  ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
                  if ((*(ValuePtr + 44) & 0x7FFFFF) != 0)
                  {
                    v50 = ValuePtr;
                    {
                      sub_100282008();
                    }

                    if ((*(**(v50 + 48) + 32))(*(v50 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
                    {
                      v51 = v239;
                      if (v239 >= HIDWORD(v239))
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v238, v41, v239 + 1, 8);
                        v51 = v239;
                      }

                      *(v238 + v51) = v50;
                      LODWORD(v239) = v239 + 1;
                    }
                  }
                }
              }

              v43 += 24;
            }

            while (v43 != v44);
          }
        }

        Context = mlir::Attribute::getContext((v7 + 24));
        v232 = a1;
        v53 = v238;
        v54 = v239;
        v225 = v238;
        v234 = v239;
        if (v239)
        {
          v55 = Context;
          if (mlir::MLIRContext::isMultithreadingEnabled(Context) && v234 > 1)
          {
            mlir::ParallelDiagnosticHandler::ParallelDiagnosticHandler(v233, v55);
          }

          v82 = &v53[8 * v54];
          v83 = v225;
          if (v225 != v82)
          {
            while ((sub_100148E68(v232, *v83) & 1) != 0)
            {
              v83 = v225 + 1;
              v225 = v83;
              if (v83 == v82)
              {
                goto LABEL_152;
              }
            }

            v28 = 0;
LABEL_271:
            v2 = v41;
LABEL_272:
            v137 = v238;
            if (v238 == v2)
            {
              goto LABEL_274;
            }

            goto LABEL_273;
          }
        }

LABEL_152:
        v84 = *(v7 + 48);
        if (v84[2].__state_ != &mlir::detail::TypeIDResolver<void,void>::id)
        {
          v28 = (*&v84->__state_->__mut_.__m_.__opaque[40])(v84, v7);
          goto LABEL_271;
        }

        v251[0] = v84[1];
        ReferencedDialect = mlir::StringAttr::getReferencedDialect(v251);
        if (ReferencedDialect)
        {
          if ((*(ReferencedDialect + 40) & 1) == 0)
          {
            v86 = ReferencedDialect;
            v228.__state_ = "unregistered operation '";
            v231 = 259;
            mlir::Operation::emitError(v251, v7, &v228);
            if (v251[0].__state_)
            {
              mlir::Diagnostic::operator<<(&v251[1], *(v7 + 48));
              if (v251[0].__state_)
              {
                LODWORD(v263) = 3;
                v264 = "' found in dialect ('";
                v265 = 21;
                v87 = v253;
                if (v254 >= HIDWORD(v254))
                {
                  if (v253 <= &v263 && v253 + 24 * v254 > &v263)
                  {
                    v161 = &v263 - v253;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v255, v254 + 1, 24);
                    v87 = v253;
                    v88 = (v253 + v161);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v255, v254 + 1, 24);
                    v88 = &v263;
                    v87 = v253;
                  }
                }

                else
                {
                  v88 = &v263;
                }

                v89 = &v87[24 * v254];
                v90 = *v88;
                *(v89 + 2) = v88[2];
                *v89 = v90;
                LODWORD(v254) = v254 + 1;
                if (v251[0].__state_)
                {
                  v91 = *(v86 + 8);
                  v92 = *(v86 + 16);
                  v266 = 261;
                  v263 = v91;
                  v264 = v92;
                  mlir::Diagnostic::operator<<(&v251[1], &v263);
                  if (v251[0].__state_)
                  {
                    LODWORD(v263) = 3;
                    v264 = "') that does not allow unknown operations";
                    v265 = 41;
                    v93 = v253;
                    if (v254 >= HIDWORD(v254))
                    {
                      if (v253 <= &v263 && v253 + 24 * v254 > &v263)
                      {
                        v164 = &v263 - v253;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v255, v254 + 1, 24);
                        v93 = v253;
                        v94 = (v253 + v164);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v255, v254 + 1, 24);
                        v94 = &v263;
                        v93 = v253;
                      }
                    }

                    else
                    {
                      v94 = &v263;
                    }

                    v95 = &v93[24 * v254];
                    v96 = *v94;
                    *(v95 + 2) = v94[2];
                    *v95 = v96;
                    LODWORD(v254) = v254 + 1;
                  }
                }
              }
            }

            v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v251);
            if (v251[0].__state_)
            {
              mlir::InFlightDiagnostic::report(v251);
            }

            v2 = v41;
            if (v262[0] != 1)
            {
              goto LABEL_272;
            }

            if (v260 != v262)
            {
              free(v260);
            }

            v97 = __p[0];
            if (__p[0])
            {
              v98 = __p[1];
              v99 = __p[0];
              if (__p[1] != __p[0])
              {
                do
                {
                  v98 = sub_100052FFC(v98 - 1);
                }

                while (v98 != v97);
                v99 = __p[0];
              }

              __p[1] = v97;
              operator delete(v99);
            }

            v100 = v256;
            if (v256)
            {
              v101 = *(&v256 + 1);
              v102 = v256;
              if (*(&v256 + 1) == v256)
              {
                goto LABEL_302;
              }

              do
              {
                v103 = *--v101;
                *v101 = 0;
                if (v103)
                {
                  operator delete[]();
                }
              }

              while (v101 != v100);
LABEL_301:
              v102 = v256;
              goto LABEL_302;
            }

            goto LABEL_303;
          }
        }

        else
        {
          v136 = mlir::Attribute::getContext((v7 + 24));
          if ((mlir::MLIRContext::allowsUnregisteredDialects(v136) & 1) == 0)
          {
            v266 = 257;
            mlir::Operation::emitOpError(v251, v7, &v263);
            if (v251[0].__state_)
            {
              LODWORD(v228.__state_) = 3;
              v229 = "created with unregistered dialect. If this is intended, please call allowUnregisteredDialects() on the MLIRContext, or use -allow-unregistered-dialect with the MLIR opt tool used";
              v230 = 178;
              v138 = v253;
              if (v254 >= HIDWORD(v254))
              {
                if (v253 <= &v228 && v253 + 24 * v254 > &v228)
                {
                  v162 = &v228 - v253;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v255, v254 + 1, 24);
                  v138 = v253;
                  v139 = (v253 + v162);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v255, v254 + 1, 24);
                  v139 = &v228;
                  v138 = v253;
                }
              }

              else
              {
                v139 = &v228;
              }

              v140 = &v138[24 * v254];
              v141 = *&v139->__state_;
              v140[2].__state_ = v139[2].__state_;
              *&v140->__state_ = v141;
              LODWORD(v254) = v254 + 1;
            }

            v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v251);
            if (v251[0].__state_)
            {
              mlir::InFlightDiagnostic::report(v251);
            }

            v2 = v41;
            if (v262[0] != 1)
            {
              goto LABEL_272;
            }

            if (v260 != v262)
            {
              free(v260);
            }

            v142 = __p[0];
            if (__p[0])
            {
              v143 = __p[1];
              v144 = __p[0];
              if (__p[1] != __p[0])
              {
                do
                {
                  v143 = sub_100052FFC(v143 - 1);
                }

                while (v143 != v142);
                v144 = __p[0];
              }

              __p[1] = v142;
              operator delete(v144);
            }

            v100 = v256;
            if (v256)
            {
              v145 = *(&v256 + 1);
              v102 = v256;
              if (*(&v256 + 1) != v256)
              {
                do
                {
                  v146 = *--v145;
                  *v145 = 0;
                  if (v146)
                  {
                    operator delete[]();
                  }
                }

                while (v145 != v100);
                goto LABEL_301;
              }

LABEL_302:
              *(&v256 + 1) = v100;
              operator delete(v102);
            }

LABEL_303:
            if (v253 != v255)
            {
              free(v253);
            }

            goto LABEL_272;
          }
        }

        v28 = 1;
        goto LABEL_271;
      }

      mlir::SuccessorRange::SuccessorRange(v251, (v5 & 0xFFFFFFFFFFFFFFF8));
      state = v251[1].__state_;
      if (v251[1].__state_)
      {
        p_mut = &v251[0].__state_->__mut_;
        while (1)
        {
          Parent = mlir::Block::getParent(*p_mut);
          if (Parent != mlir::Block::getParent(v7))
          {
            break;
          }

          p_mut += 4;
          state = (state - 1);
          if (!state)
          {
            goto LABEL_34;
          }
        }

        v71 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(v7 + 32));
        v238 = "branching to block of a different region";
        LOWORD(v242) = 259;
        mlir::Operation::emitOpError(v251, v71, &v238);
        v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v251);
        if (v251[0].__state_)
        {
          mlir::InFlightDiagnostic::report(v251);
        }

        if (v262[0])
        {
          if (v260 != v262)
          {
            free(v260);
          }

          v72 = __p[0];
          if (__p[0])
          {
            v73 = __p[1];
            v74 = __p[0];
            if (__p[1] != __p[0])
            {
              do
              {
                v73 = sub_100052FFC(v73 - 1);
              }

              while (v73 != v72);
              v74 = __p[0];
            }

            __p[1] = v72;
            operator delete(v74);
          }

          v32 = v256;
          if (v256)
          {
            v75 = *(&v256 + 1);
            v34 = v256;
            if (*(&v256 + 1) != v256)
            {
              do
              {
                v76 = *--v75;
                *v75 = 0;
                if (v76)
                {
                  operator delete[]();
                }
              }

              while (v75 != v32);
              goto LABEL_277;
            }

LABEL_278:
            *(&v256 + 1) = v32;
            operator delete(v34);
          }

          goto LABEL_279;
        }

        goto LABEL_274;
      }

LABEL_34:
      if ((sub_10014C464(v7) & 1) == 0)
      {
        v24 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(v7 + 32));
        v25 = v24;
        {
          v26 = *(v24 + 48);
          if (v26[2] == &mlir::detail::TypeIDResolver<void,void>::id)
          {
            goto LABEL_275;
          }
        }

        else
        {
          sub_100279394();
          v26 = *(v25 + 6);
          if (v26[2] == &mlir::detail::TypeIDResolver<void,void>::id)
          {
            goto LABEL_275;
          }
        }

        if (((*(*v26 + 4))(v26, mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
        {
          v27 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(v7 + 32));
          v238 = "block with no terminator, has ";
          LOWORD(v242) = 259;
          mlir::Operation::emitError(v251, v27, &v238);
          if (v251[0].__state_)
          {
            mlir::Diagnostic::operator<<(&v251[1], v25);
          }

          v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v251);
          if (v251[0].__state_)
          {
            mlir::InFlightDiagnostic::report(v251);
          }

          if (v262[0] != 1)
          {
            goto LABEL_274;
          }

          if (v260 != v262)
          {
            free(v260);
          }

          v29 = __p[0];
          if (__p[0])
          {
            v30 = __p[1];
            v31 = __p[0];
            if (__p[1] != __p[0])
            {
              do
              {
                v30 = sub_100052FFC(v30 - 1);
              }

              while (v30 != v29);
              v31 = __p[0];
            }

            __p[1] = v29;
            operator delete(v31);
          }

          v32 = v256;
          if (v256)
          {
            v33 = *(&v256 + 1);
            v34 = v256;
            if (*(&v256 + 1) == v256)
            {
              goto LABEL_278;
            }

            do
            {
              v56 = *--v33;
              *v33 = 0;
              if (v56)
              {
                operator delete[]();
              }
            }

            while (v33 != v32);
LABEL_277:
            v34 = v256;
            goto LABEL_278;
          }

LABEL_279:
          v137 = v253;
          if (v253 == v255)
          {
LABEL_274:
            if ((v28 & 1) == 0)
            {
              goto LABEL_354;
            }

            goto LABEL_275;
          }

LABEL_273:
          free(v137);
          goto LABEL_274;
        }
      }

LABEL_275:
      v3 = v236 - 1;
      LODWORD(v236) = v3;
      if (!v3)
      {
        goto LABEL_387;
      }
    }

    if ((v6 & 1) == 0)
    {
      break;
    }

    v8 = *(v7 + 48);
    v9 = *(v7 + 56);
    if (v8 != v9)
    {
      while (*(*v8 + 16) == v7)
      {
        v8 += 8;
        if (v8 == v9)
        {
          goto LABEL_10;
        }
      }

      v65 = *(*v8 + 32);
      v238 = "block argument not owned by block";
      LOWORD(v242) = 259;
      mlir::emitError(v65, &v238, v251);
      v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v251);
      if (v251[0].__state_)
      {
        mlir::InFlightDiagnostic::report(v251);
      }

      if (v262[0])
      {
        if (v260 != v262)
        {
          free(v260);
        }

        v66 = __p[0];
        if (__p[0])
        {
          v67 = __p[1];
          v68 = __p[0];
          if (__p[1] != __p[0])
          {
            do
            {
              v67 = sub_100052FFC(v67 - 1);
            }

            while (v67 != v66);
            v68 = __p[0];
          }

          __p[1] = v66;
          operator delete(v68);
        }

        v18 = v256;
        if (v256)
        {
          v69 = *(&v256 + 1);
          v20 = v256;
          if (*(&v256 + 1) == v256)
          {
            goto LABEL_199;
          }

          do
          {
            v70 = *--v69;
            *v69 = 0;
            if (v70)
            {
              operator delete[]();
            }
          }

          while (v69 != v18);
          goto LABEL_198;
        }

        goto LABEL_200;
      }

      goto LABEL_202;
    }

LABEL_10:
    v10 = (v7 + 32);
    if (*(v7 + 32) == v7 + 32)
    {
      if ((sub_10014C464((v5 & 0xFFFFFFFFFFFFFFF8)) & 1) == 0)
      {
        v104 = mlir::Block::getParent((v5 & 0xFFFFFFFFFFFFFFF8));
        Loc = mlir::Region::getLoc(v104);
        v238 = "empty block: expect at least a terminator";
        LOWORD(v242) = 259;
        mlir::emitError(Loc, &v238, v251);
        v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v251);
        if (v251[0].__state_)
        {
          mlir::InFlightDiagnostic::report(v251);
        }

        if (v262[0] == 1)
        {
          if (v260 != v262)
          {
            free(v260);
          }

          v106 = __p[0];
          if (__p[0])
          {
            v107 = __p[1];
            v108 = __p[0];
            if (__p[1] != __p[0])
            {
              do
              {
                v107 = sub_100052FFC(v107 - 1);
              }

              while (v107 != v106);
              v108 = __p[0];
            }

            __p[1] = v106;
            operator delete(v108);
          }

          v18 = v256;
          if (v256)
          {
            v109 = *(&v256 + 1);
            v20 = v256;
            if (*(&v256 + 1) == v256)
            {
LABEL_199:
              *(&v256 + 1) = v18;
              operator delete(v20);
              goto LABEL_200;
            }

            do
            {
              v110 = *--v109;
              *v109 = 0;
              if (v110)
              {
                operator delete[]();
              }
            }

            while (v109 != v18);
LABEL_198:
            v20 = v256;
            goto LABEL_199;
          }

          goto LABEL_200;
        }

        goto LABEL_202;
      }
    }

    else
    {
      for (k = *(v7 + 40); k != v10; k = k[1])
      {
        v12 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(k);
        if (*(v12 + 40))
        {
          v13 = v12;
          if (v12 != llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*v10))
          {
            v238 = "operation with block successors must terminate its parent block";
            LOWORD(v242) = 259;
            mlir::Operation::emitError(v251, v13, &v238);
            v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v251);
            if (v251[0].__state_)
            {
              mlir::InFlightDiagnostic::report(v251);
            }

            if (v262[0] != 1)
            {
              goto LABEL_202;
            }

            if (v260 != v262)
            {
              free(v260);
            }

            v15 = __p[0];
            if (__p[0])
            {
              v16 = __p[1];
              v17 = __p[0];
              if (__p[1] != __p[0])
              {
                do
                {
                  v16 = sub_100052FFC(v16 - 1);
                }

                while (v16 != v15);
                v17 = __p[0];
              }

              __p[1] = v15;
              operator delete(v17);
            }

            v18 = v256;
            if (!v256)
            {
              goto LABEL_200;
            }

            v19 = *(&v256 + 1);
            v20 = v256;
            if (*(&v256 + 1) == v256)
            {
              goto LABEL_199;
            }

            do
            {
              v57 = *--v19;
              *v19 = 0;
              if (v57)
              {
                operator delete[]();
              }
            }

            while (v19 != v18);
            goto LABEL_198;
          }
        }
      }
    }

LABEL_203:
    if ((v5 & 4) != 0 && v7)
    {
      v114 = *(v7 + 32);
      v112 = (v7 + 32);
      for (m = v114; m != v112; m = *m)
      {
        v116 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(m);
        if ((*(v116 + 44) & 0x7FFFFF) == 0)
        {
          goto LABEL_206;
        }

        {
          sub_10027926C();
        }

        if (((*(**(v116 + 48) + 32))(*(v116 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
        {
LABEL_206:
          v115 = v236;
          if (v236 >= HIDWORD(v236))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v237, v236 + 1, 8);
            v115 = v236;
          }

          *(v235 + v115) = v116;
          LODWORD(v236) = v236 + 1;
        }
      }
    }

    else if (*a1 == 1)
    {
      v117 = *(v7 + 44);
      if ((v117 & 0x7FFFFF) != 0)
      {
        v118 = ((v7 + 16 * ((v117 >> 23) & 1) + ((v117 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v7 + 40);
        v119 = (v118 + 24 * (v117 & 0x7FFFFF));
        do
        {
          v121 = *(v119 - 3);
          v119 -= 3;
          v120 = v121;
          if (v121 != v119)
          {
            v122 = v236;
            do
            {
              if (v120)
              {
                v123 = (v120 - 1);
              }

              else
              {
                v123 = 0;
              }

              if (v122 >= HIDWORD(v236))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v237, v122 + 1, 8);
                *(v235 + v236) = v123 | 4;
              }

              else
              {
                *(v235 + v122) = v123 | 4;
              }

              v122 = v236 + 1;
              LODWORD(v236) = v236 + 1;
              v120 = *v120;
            }

            while (v120 != v119);
          }
        }

        while (v119 != v118);
      }
    }

    v3 = v236;
    if (!v236)
    {
LABEL_387:
      v166 = 1;
      v167 = v235;
      if (v235 == v237)
      {
        goto LABEL_356;
      }

LABEL_355:
      free(v167);
      goto LABEL_356;
    }
  }

  if ((*(v7 + 46) & 0x80) != 0)
  {
    v35 = *(v7 + 68);
    if (v35)
    {
      v36 = (*(v7 + 72) + 24);
      while (*v36)
      {
        v36 += 4;
        if (!--v35)
        {
          goto LABEL_58;
        }
      }

      v238 = "null operand found";
      LOWORD(v242) = 259;
      mlir::Operation::emitError(v251, (v5 & 0xFFFFFFFFFFFFFFF8), &v238);
      v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v251);
      if (v251[0].__state_)
      {
        mlir::InFlightDiagnostic::report(v251);
      }

      if ((v262[0] & 1) == 0)
      {
        goto LABEL_202;
      }

      if (v260 != v262)
      {
        free(v260);
      }

      v77 = __p[0];
      if (__p[0])
      {
        v78 = __p[1];
        v79 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v78 = sub_100052FFC(v78 - 1);
          }

          while (v78 != v77);
          v79 = __p[0];
        }

        __p[1] = v77;
        operator delete(v79);
      }

      v18 = v256;
      if (v256)
      {
        v80 = *(&v256 + 1);
        v20 = v256;
        if (*(&v256 + 1) == v256)
        {
          goto LABEL_199;
        }

        do
        {
          v81 = *--v80;
          *v80 = 0;
          if (v81)
          {
            operator delete[]();
          }
        }

        while (v80 != v18);
        goto LABEL_198;
      }

LABEL_200:
      v111 = v253;
      if (v253 == v255)
      {
LABEL_202:
        if (!v14)
        {
          goto LABEL_354;
        }

        goto LABEL_203;
      }

LABEL_201:
      free(v111);
      goto LABEL_202;
    }
  }

LABEL_58:
  v238 = sub_10008861C(v5 & 0xFFFFFFFFFFFFFFF8);
  v37 = mlir::DictionaryAttr::begin(&v238);
  v38 = mlir::DictionaryAttr::end(&v238);
  if (v37 == v38)
  {
LABEL_94:
    v58 = *(v7 + 48);
    if (v58[2] != &mlir::detail::TypeIDResolver<void,void>::id && ((*(*v58 + 8))(v58, v5 & 0xFFFFFFFFFFFFFFF8) & 1) == 0)
    {
      goto LABEL_354;
    }

    v59 = *(v7 + 44);
    v60 = *&v59 & 0x7FFFFFLL;
    if ((v59 & 0x7FFFFF) == 0)
    {
      goto LABEL_203;
    }

    if (sub_10012A3BC(v5 & 0xFFFFFFFFFFFFFFF8))
    {
      v61 = sub_10012A3BC(v5 & 0xFFFFFFFFFFFFFFF8);
      v62 = v5 & 0xFFFFFFFFFFFFFFF8;
      v225 = (v5 & 0xFFFFFFFFFFFFFFF8);
      v226 = v61;
      v238 = v2;
      v239 = 0x600000000;
      v63 = *(v7 + 44);
      if ((v63 & 0x7FFFFF) != 0)
      {
        goto LABEL_99;
      }
    }

    else
    {
      v62 = 0;
      v225 = 0;
      v226 = 0;
      v238 = v2;
      v239 = 0x600000000;
      v63 = *(v7 + 44);
      if ((v63 & 0x7FFFFF) != 0)
      {
LABEL_99:
        v64 = (v7 + 16 * ((v63 >> 23) & 1) + ((v63 >> 21) & 0x7F8) + 32 * *(v7 + 40) + 64);
        if (!v62)
        {
          goto LABEL_248;
        }

LABEL_232:
        v124 = 0;
        while (2)
        {
          if (v225)
          {
            RegionKind = mlir::RegionKindInterface::getRegionKind(&v225, v124);
            v126 = *v64;
            if (*(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id || RegionKind != 1)
            {
              goto LABEL_244;
            }

            if (v64 != v126)
            {
              if (v64 != *(v64[1] + 8))
              {
                v263 = "expects graph region #";
                v266 = 259;
                mlir::Operation::emitOpError(v251, (v5 & 0xFFFFFFFFFFFFFFF8), &v263);
                if (v251[0].__state_)
                {
                  LODWORD(v228.__state_) = 5;
                  v229 = v124;
                  v147 = v253;
                  if (v254 >= HIDWORD(v254))
                  {
                    if (v253 <= &v228 && v253 + 24 * v254 > &v228)
                    {
                      v163 = &v228 - v253;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v255, v254 + 1, 24);
                      v147 = v253;
                      v148 = (v253 + v163);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v255, v254 + 1, 24);
                      v148 = &v228;
                      v147 = v253;
                    }
                  }

                  else
                  {
                    v148 = &v228;
                  }

                  v149 = &v147[24 * v254];
                  v150 = *&v148->__state_;
                  v149[2].__state_ = v148[2].__state_;
                  *&v149->__state_ = v150;
                  v151 = (v254 + 1);
                  LODWORD(v254) = v254 + 1;
                  if (v251[0].__state_)
                  {
                    LODWORD(v228.__state_) = 3;
                    v229 = " to have 0 or 1 blocks";
                    v230 = 22;
                    v152 = v253;
                    if (v151 >= HIDWORD(v254))
                    {
                      if (v253 <= &v228 && v253 + 24 * v151 > &v228)
                      {
                        v165 = &v228 - v253;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v255, v151 + 1, 24);
                        v152 = v253;
                        v153 = (v253 + v165);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v255, v151 + 1, 24);
                        v153 = &v228;
                        v152 = v253;
                      }
                    }

                    else
                    {
                      v153 = &v228;
                    }

                    v154 = &v152[24 * v254];
                    v155 = *&v153->__state_;
                    v154[2].__state_ = v153[2].__state_;
                    *&v154->__state_ = v155;
                    LODWORD(v254) = v254 + 1;
                  }
                }

                v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v251);
                if (v251[0].__state_)
                {
                  mlir::InFlightDiagnostic::report(v251);
                }

                if (v262[0] == 1)
                {
                  if (v260 != v262)
                  {
                    free(v260);
                  }

                  v156 = __p[0];
                  if (__p[0])
                  {
                    v157 = __p[1];
                    v158 = __p[0];
                    if (__p[1] != __p[0])
                    {
                      do
                      {
                        v157 = sub_100052FFC(v157 - 1);
                      }

                      while (v157 != v156);
                      v158 = __p[0];
                    }

                    __p[1] = v156;
                    operator delete(v158);
                  }

                  v132 = v256;
                  if (v256)
                  {
                    v159 = *(&v256 + 1);
                    v134 = v256;
                    if (*(&v256 + 1) == v256)
                    {
LABEL_329:
                      *(&v256 + 1) = v132;
                      operator delete(v134);
                      goto LABEL_330;
                    }

                    do
                    {
                      v160 = *--v159;
                      *v159 = 0;
                      if (v160)
                      {
                        operator delete[]();
                      }
                    }

                    while (v159 != v132);
LABEL_328:
                    v134 = v256;
                    goto LABEL_329;
                  }

                  goto LABEL_330;
                }

                goto LABEL_267;
              }

LABEL_244:
              if (v64 != v126 && *(v64[1] - 8))
              {
                goto LABEL_250;
              }
            }

            ++v124;
            v64 += 3;
            if (v60 == v124)
            {
              goto LABEL_266;
            }

            continue;
          }

          break;
        }

        v126 = *v64;
        goto LABEL_244;
      }
    }

    v64 = 0;
    if (v62)
    {
      goto LABEL_232;
    }

LABEL_248:
    while (v64 == *v64 || !*(v64[1] - 8))
    {
      v64 += 3;
      if (!--v60)
      {
LABEL_266:
        v14 = 1;
        goto LABEL_267;
      }
    }

LABEL_250:
    v128 = *(v7 + 24);
    v263 = "entry block of region may not have predecessors";
    v266 = 259;
    mlir::emitError(v128, &v263, v251);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v251);
    if (v251[0].__state_)
    {
      mlir::InFlightDiagnostic::report(v251);
    }

    if (v262[0] == 1)
    {
      if (v260 != v262)
      {
        free(v260);
      }

      v129 = __p[0];
      if (__p[0])
      {
        v130 = __p[1];
        v131 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v130 = sub_100052FFC(v130 - 1);
          }

          while (v130 != v129);
          v131 = __p[0];
        }

        __p[1] = v129;
        operator delete(v131);
      }

      v132 = v256;
      if (v256)
      {
        v133 = *(&v256 + 1);
        v134 = v256;
        if (*(&v256 + 1) == v256)
        {
          goto LABEL_329;
        }

        do
        {
          v135 = *--v133;
          *v133 = 0;
          if (v135)
          {
            operator delete[]();
          }
        }

        while (v133 != v132);
        goto LABEL_328;
      }

LABEL_330:
      if (v253 != v255)
      {
        free(v253);
      }
    }

LABEL_267:
    v111 = v238;
    if (v238 == v2)
    {
      goto LABEL_202;
    }

    goto LABEL_201;
  }

  v39 = v38;
  while (1)
  {
    *&v251[0].__state_ = *v37;
    NameDialect = mlir::NamedAttribute::getNameDialect(v251);
    if (NameDialect)
    {
      if (((*(*NameDialect + 96))(NameDialect, v5 & 0xFFFFFFFFFFFFFFF8, v251[0].__state_, v251[1].__state_) & 1) == 0)
      {
        break;
      }
    }

    if (++v37 == v39)
    {
      goto LABEL_94;
    }
  }

LABEL_354:
  v166 = 0;
  v167 = v235;
  if (v235 != v237)
  {
    goto LABEL_355;
  }

LABEL_356:
  if (!v166)
  {
    return 0;
  }

  if ((*(a2 + 44) & 0x7FFFFF) != 0)
  {
    v225 = 0;
    v226 = 0;
    v227 = 0;
    v235 = v237;
    HIDWORD(v236) = 8;
    v237[0] = a2;
    v168 = 1;
    do
    {
      v169 = *(v235 + --v168);
      LODWORD(v236) = v168;
      v170 = *(v169 + 44);
      if ((v170 & 0x7FFFFF) != 0)
      {
        v171 = ((v169 + 16 * ((v170 >> 23) & 1) + ((v170 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v169 + 40);
        v220 = v171 + 24 * (v170 & 0x7FFFFF);
        do
        {
          v172 = *(v171 + 8);
          for (n = v171; v172 != n; v171 = n)
          {
            if (v172)
            {
              v173 = (v172 - 8);
            }

            else
            {
              v173 = 0;
            }

            isReachableFromEntry = mlir::detail::DominanceInfoBase<false>::isReachableFromEntry(&v225, v173);
            v174 = (v173 + 32);
            for (ii = *(v173 + 5); ii != v174; ii = ii[1])
            {
              v176 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(ii);
              v177 = v176;
              if (isReachableFromEntry && (*(v176 + 46) & 0x80) != 0)
              {
                v178 = *(v176 + 68);
                if (v178)
                {
                  v179 = 0;
                  v180 = *(v176 + 72);
                  v181 = 24;
                  while ((mlir::DominanceInfo::properlyDominates(&v225, *(v180 + v181), v177) & 1) != 0)
                  {
                    ++v179;
                    v181 += 32;
                    if (v178 == v179)
                    {
                      goto LABEL_375;
                    }
                  }

                  v263 = "operand #";
                  v266 = 259;
                  mlir::Operation::emitError(&v238, v177, &v263);
                  if (v238)
                  {
                    LODWORD(v228.__state_) = 5;
                    v229 = v179;
                    v183 = &v228;
                    v184 = __src;
                    if (v242 >= HIDWORD(v242))
                    {
                      if (__src <= &v228 && __src + 24 * v242 > &v228)
                      {
                        v218 = &v228 - __src;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v243, v242 + 1, 24);
                        v184 = __src;
                        v183 = (__src + v218);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v243, v242 + 1, 24);
                        v183 = &v228;
                        v184 = __src;
                      }
                    }

                    v185 = &v184[24 * v242];
                    v186 = *&v183->__state_;
                    v185[2].__state_ = v183[2].__state_;
                    *&v185->__state_ = v186;
                    v187 = (v242 + 1);
                    LODWORD(v242) = v242 + 1;
                    if (v238)
                    {
                      LODWORD(v228.__state_) = 3;
                      v229 = " does not dominate this use";
                      v230 = 27;
                      v188 = &v228;
                      v189 = __src;
                      if (v187 >= HIDWORD(v242))
                      {
                        if (__src <= &v228 && __src + 24 * v187 > &v228)
                        {
                          v219 = &v228 - __src;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v243, v187 + 1, 24);
                          v189 = __src;
                          v188 = (__src + v219);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v243, v187 + 1, 24);
                          v188 = &v228;
                          v189 = __src;
                        }
                      }

                      v190 = &v189[24 * v242];
                      v191 = *&v188->__state_;
                      v190[2].__state_ = v188[2].__state_;
                      *&v190->__state_ = v191;
                      LODWORD(v242) = v242 + 1;
                      v251[0].__state_ = v238;
                      LOBYTE(v251[1].__state_) = 0;
                      v262[0] = 0;
                      if (v250 != 1)
                      {
LABEL_434:
                        mlir::InFlightDiagnostic::abandon(&v238);
                        if (v238)
                        {
                          mlir::InFlightDiagnostic::report(&v238);
                        }

                        if (v250 == 1)
                        {
                          if (v248 != &v250)
                          {
                            free(v248);
                          }

                          v205 = v246[0];
                          if (v246[0])
                          {
                            v206 = v246[1];
                            v207 = v246[0];
                            if (v246[1] != v246[0])
                            {
                              do
                              {
                                v206 = sub_100052FFC(v206 - 1);
                              }

                              while (v206 != v205);
                              v207 = v246[0];
                            }

                            v246[1] = v205;
                            operator delete(v207);
                          }

                          v208 = v244;
                          if (v244)
                          {
                            v209 = *(&v244 + 1);
                            v210 = v244;
                            if (*(&v244 + 1) != v244)
                            {
                              do
                              {
                                v211 = *--v209;
                                *v209 = 0;
                                if (v211)
                                {
                                  operator delete[]();
                                }
                              }

                              while (v209 != v208);
                              v210 = v244;
                            }

                            *(&v244 + 1) = v208;
                            operator delete(v210);
                          }

                          if (__src != v243)
                          {
                            free(__src);
                          }
                        }

                        v263 = *(*(v177 + 72) + v181);
                        DefiningOp = mlir::Value::getDefiningOp(&v263);
                        if (DefiningOp)
                        {
                          mlir::Diagnostic::attachNote(&v251[1], *(DefiningOp + 24), 1);
                        }

                        v213 = v263[2];
                        mlir::Block::getParent(*(v177 + 16));
                        mlir::Block::getParent(v213);
                        v214 = mlir::Attribute::getContext((v177 + 24));
                        v216 = mlir::UnknownLoc::get(v214, v215);
                        if (mlir::Block::getParentOp(v213))
                        {
                          v216 = *(mlir::Block::getParentOp(v213) + 24);
                        }

                        mlir::Diagnostic::attachNote(&v251[1], v216, 1);
                      }
                    }

                    else
                    {
                      v251[0].__state_ = 0;
                      LOBYTE(v251[1].__state_) = 0;
                      v262[0] = 0;
                      if (v250 != 1)
                      {
                        goto LABEL_434;
                      }
                    }
                  }

                  else
                  {
                    v251[0].__state_ = 0;
                    LOBYTE(v251[1].__state_) = 0;
                    v262[0] = 0;
                    if (v250 != 1)
                    {
                      goto LABEL_434;
                    }
                  }

                  v251[1].__state_ = v239;
                  v252 = v240;
                  v253 = v255;
                  v254 = 0x400000000;
                  v192 = v242;
                  if (v242)
                  {
                    v193 = __src;
                    if (__src != v243)
                    {
                      v253 = __src;
                      v254 = v242;
                      __src = v243;
                      HIDWORD(v242) = 0;
                      goto LABEL_407;
                    }

                    if (v242 < 5)
                    {
                      v195 = v255;
                      v194 = v242;
LABEL_405:
                      memcpy(v195, v193, 24 * v194);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v253, v255, v242, 24);
                      v194 = v242;
                      if (v242)
                      {
                        v193 = __src;
                        v195 = v253;
                        goto LABEL_405;
                      }
                    }

                    LODWORD(v254) = v192;
LABEL_407:
                    LODWORD(v242) = 0;
                  }

                  v256 = v244;
                  v257 = v245;
                  v244 = 0uLL;
                  *__p = *v246;
                  v196 = v247;
                  v245 = 0;
                  v246[0] = 0;
                  v246[1] = 0;
                  v247 = 0;
                  v259 = v196;
                  v260 = v262;
                  v261 = 0;
                  v197 = v249;
                  if (v249)
                  {
                    if (v248 == &v250)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v262, v249, 24);
                      if (v249)
                      {
                        memcpy(v260, v248, 24 * v249);
                      }

                      LODWORD(v261) = v197;
                    }

                    else
                    {
                      v260 = v248;
                      v261 = v249;
                      v248 = &v250;
                      HIDWORD(v249) = 0;
                    }

                    LODWORD(v249) = 0;
                  }

                  v262[0] = 1;
                  if (v250)
                  {
                    if (v248 != &v250)
                    {
                      free(v248);
                    }

                    v198 = v246[0];
                    if (v246[0])
                    {
                      v199 = v246[1];
                      v200 = v246[0];
                      if (v246[1] != v246[0])
                      {
                        do
                        {
                          v199 = sub_100052FFC(v199 - 1);
                        }

                        while (v199 != v198);
                        v200 = v246[0];
                      }

                      v246[1] = v198;
                      operator delete(v200);
                    }

                    v201 = v244;
                    if (v244)
                    {
                      v202 = *(&v244 + 1);
                      v203 = v244;
                      if (*(&v244 + 1) != v244)
                      {
                        do
                        {
                          v204 = *--v202;
                          *v202 = 0;
                          if (v204)
                          {
                            operator delete[]();
                          }
                        }

                        while (v202 != v201);
                        v203 = v244;
                      }

                      *(&v244 + 1) = v201;
                      operator delete(v203);
                    }

                    if (__src != v243)
                    {
                      free(__src);
                    }

                    v250 = 0;
                  }

                  goto LABEL_434;
                }
              }

LABEL_375:
              if (*a1 == 1 && (*(v177 + 44) & 0x7FFFFF) != 0)
              {
                {
                  sub_10027926C();
                }

                if (((*(**(v177 + 48) + 32))(*(v177 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
                {
                  v182 = v236;
                  if (v236 >= HIDWORD(v236))
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v237, v236 + 1, 8);
                    v182 = v236;
                  }

                  *(v235 + v182) = v177;
                  LODWORD(v236) = v236 + 1;
                }
              }
            }

            v172 = *(v172 + 8);
          }

          v171 += 24;
        }

        while (v171 != v220);
        v168 = v236;
      }
    }

    while (v168);
    if (v235 != v237)
    {
      free(v235);
    }

    mlir::detail::DominanceInfoBase<false>::~DominanceInfoBase(&v225);
  }

  return 1;
}

uint64_t sub_10014B5F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result)
  {
    v3 = *(a2 + 24);
    if (v3)
    {
      if (v3 != a2)
      {
        v6 = *(a2 + 24);
        *(a2 + 24) = 0;
        goto LABEL_13;
      }

      v6 = v5;
      (*(*v3 + 24))(v3, v5);
      v3 = v6;
      if (v6)
      {
LABEL_13:
        if (v3 == v5)
        {
          v8 = v7;
          (*(*v3 + 24))(v3, v7);
        }

        else
        {
          v8 = v3;
          v6 = 0;
        }

LABEL_16:
        sub_10014B9EC();
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
    goto LABEL_16;
  }

  if ((result & 2) != 0)
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      if (v4 != a2)
      {
        v6 = *(a2 + 24);
        *(a2 + 24) = 0;
        goto LABEL_20;
      }

      v6 = v5;
      (*(*v4 + 24))(v4, v5);
      v4 = v6;
      if (v6)
      {
LABEL_20:
        if (v4 == v5)
        {
          v8 = v7;
          (*(*v4 + 24))(v4, v7);
        }

        else
        {
          v8 = v4;
          v6 = 0;
        }

LABEL_23:
        operator new();
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
    goto LABEL_23;
  }

  *a3 = 0;
  return result;
}

void sub_10014BBE4(uint64_t a1)
{
  *a1 = off_1002B7898;
  v2 = a1 + 144;
  v3 = *(a1 + 168);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));

  std::__shared_count::~__shared_count(a1);
}

void sub_10014BCCC(uint64_t a1)
{
  *a1 = off_1002B7898;
  v2 = a1 + 144;
  v3 = *(a1 + 168);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));
  std::__shared_count::~__shared_count(a1);

  operator delete();
}

void sub_10014BDC8(std::__assoc_sub_state *a1)
{
  std::__assoc_sub_state::wait(a1);

  std::__assoc_sub_state::__on_zero_shared(a1);
}

void sub_10014BE00(std::__assoc_sub_state *a1)
{
  sig = a1[1].__mut_.__m_.__sig;
  if (!sig)
  {
    v3 = sub_100033DA0();
    sub_10014BE64(v3);
  }

  (*(*sig + 48))(sig);

  std::__assoc_sub_state::set_value(a1);
}

void sub_10014BE64(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + (v4 >> 1));
  if (v4)
  {
    (*(*v6 + v5))();
    v7 = *a1;
    *a1 = 0;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5(v6);
    v7 = *a1;
    *a1 = 0;
    if (!v7)
    {
LABEL_6:
      operator delete();
    }
  }

  std::__thread_struct::~__thread_struct(v7);
  operator delete();
}

void sub_10014BF30(uint64_t a1)
{
  *a1 = off_1002B78C8;
  v2 = a1 + 144;
  v3 = *(a1 + 168);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));

  std::__shared_count::~__shared_count(a1);
}

void sub_10014C018(uint64_t a1)
{
  *a1 = off_1002B78C8;
  v2 = a1 + 144;
  v3 = *(a1 + 168);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));
  std::__shared_count::~__shared_count(a1);

  operator delete();
}

void sub_10014C114(std::__assoc_sub_state *a1)
{
  sig = a1[1].__mut_.__m_.__sig;
  if (sig)
  {
    (*(*sig + 48))(sig);

    std::__assoc_sub_state::set_value(a1);
  }

  else
  {
    v3 = sub_100033DA0();
    sub_10014C178(v3);
  }
}

std::shared_future<void> *sub_10014C178(std::shared_future<void> *a1)
{
  a1->__state_ = off_1002B78F8;
  std::shared_future<void>::~shared_future(a1 + 1);
  return a1;
}

void sub_10014C1BC(std::shared_future<void> *a1)
{
  a1->__state_ = off_1002B78F8;
  std::shared_future<void>::~shared_future(a1 + 1);

  operator delete();
}

uint64_t sub_10014C288(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002B78F8;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10014C2C4(std::shared_future<void> *a1)
{
  std::shared_future<void>::~shared_future(a1 + 1);

  operator delete(a1);
}

__n128 sub_10014C38C(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B7940;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_10014C3CC(uint64_t a1)
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
      if ((sub_100148E68(**(a1 + 40), *(**(a1 + 48) + 8 * add)) & 1) == 0)
      {
        atomic_store(1u, *(a1 + 8));
      }

      mlir::ParallelDiagnosticHandler::eraseOrderIDForThread(*(a1 + 32));
      v3 = atomic_load(*(a1 + 8));
    }

    while ((v3 & 1) == 0);
  }
}

uint64_t sub_10014C464(mlir::Block *a1)
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
    sub_10027E140();
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

BOOL mlir::parseSourceFile(uint64_t **a1, uint64_t a2, uint64_t ***a3, uint64_t *a4)
{
  v7 = **a1;
  if (a4)
  {
    v9 = *a3;
    v10 = (*(*v7 + 16))(**a1);
    *a4 = mlir::FileLineColLoc::get(v9, v10, v11, 0, 0);
  }

  llvm::MemoryBufferRef::MemoryBufferRef(v13, v7);
  if (!mlir::isBytecode(v13))
  {
    mlir::parseAsmSourceFile(a1, a2, a3, 0, 0);
  }

  llvm::MemoryBufferRef::MemoryBufferRef(v13, v7);
  return mlir::readBytecodeFile(v13, a2, a3);
}

BOOL mlir::parseSourceString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t ***a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  llvm::MemoryBuffer::getMemBuffer(a1, a2, a5, a6, &v18);
  if (!v18)
  {
    return 0;
  }

  llvm::SourceMgr::SourceMgr(&v15);
  v10 = v18;
  v18 = 0;
  v19[0] = v10;
  v19[1] = 0;
  v19[2] = 0;
  if (v16 >= v17)
  {
    v11 = sub_10003987C(&v15, v19);
  }

  else
  {
    v11 = llvm::SourceMgr::SrcBuffer::SrcBuffer(v16, v19) + 3;
  }

  v16 = v11;
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(v19);
  v12 = mlir::parseSourceFile(&v15, a3, a4, a7);
  llvm::SourceMgr::~SourceMgr(&v15);
  v14 = v18;
  v18 = 0;
  if (!v14)
  {
    return v12;
  }

  (*(*v14 + 8))(v14);
  return v12;
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
          v32 = a3;
          v33 = a2;
          v34 = a1;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 16);
          a2 = v33;
          a1 = v34;
          a3 = v32;
          v13 = *v34;
          v11 = *(v34 + 8);
        }

        else
        {
          v13 = *a1;
        }

        v14 = &v12[v13];
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
            goto LABEL_16;
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
            v37 = vld2q_f64(i64);
            v25 = v22[-3].i64;
            v38 = vld2q_f64(v25);
            *v22 = vzip1q_s64(v37.val[0], v37.val[1]);
            v22[1] = vzip2q_s64(v37.val[0], v37.val[1]);
            v22[-2] = vzip1q_s64(v38.val[0], v38.val[1]);
            v22[-1] = vzip2q_s64(v38.val[0], v38.val[1]);
            v22 -= 4;
            v23 -= 4;
          }

          while (v23);
          if (v20 != (v20 & 0x1FFFFFFFFFFFFFFCLL))
          {
LABEL_16:
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
    v28 = *a1;
  }

  if (v4 >= *(a1 + 12))
  {
    v30 = a2;
    v31 = a3;
    v35 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v11 + 1, 16);
    a2 = v30;
    a1 = v35;
    a3 = v31;
    v11 = *(v35 + 8);
    v3 = *v35;
  }

  v29 = &v3[16 * v11];
  *v29 = a2;
  *(v29 + 1) = a3;
  ++*(a1 + 8);
}

void mlir::StorageUniquer::~StorageUniquer(mlir::StorageUniquer *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    sub_10014F808(v2);
    operator delete();
  }
}

uint64_t sub_10014CCA4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v60 = a2;
  v12 = sub_10014DA2C(a1 + 208, &v60);
  v13 = *v12;
  v58 = a1;
  v14 = *(a1 + 256);
  explicit = atomic_load_explicit((*(*v12 + 16) + 8 * ((*(*v12 + 24) - 1) & a3)), memory_order_acquire);
  if (!explicit)
  {
    operator new();
  }

  v62 = a3;
  v63 = a4;
  v64 = a5;
  if ((v14 & 1) == 0)
  {
    LODWORD(v61) = a3;
    *(&v61 + 1) = 0;
    sub_10014DE44(&v66, explicit, &v61, &v62);
    v24 = v66;
    if ((v67 & 1) == 0)
    {
      return *(v66 + 8);
    }

    v25 = sub_10014EE98(v58);
    result = a6(a7, v25);
    *(v24 + 8) = result;
    return result;
  }

  off_1002C3468();
  if ((*v16 & 1) == 0)
  {
    sub_1002820A0();
  }

  off_1002C3450();
  v18 = v17;
  v19 = *v13;
  v20 = *v17;
  v21 = *v17 & 1;
  if (v21)
  {
    v22 = 4;
    v23 = v17 + 8;
  }

  else
  {
    v22 = *(v17 + 16);
    if (!v22)
    {
      v29 = 0;
      v35 = 0;
      *&v66 = 0;
      goto LABEL_18;
    }

    v23 = *(v17 + 8);
  }

  v27 = v22 - 1;
  v28 = v27 & ((v19 >> 4) ^ (v19 >> 9));
  v29 = v23 + 40 * v28;
  v30 = *v29;
  if (*v29 != v19)
  {
    v54 = 0;
    v55 = 1;
    while (v30 != -4096)
    {
      if (v54)
      {
        v56 = 0;
      }

      else
      {
        v56 = v30 == -8192;
      }

      if (v56)
      {
        v54 = v29;
      }

      v57 = v28 + v55++;
      v28 = v57 & v27;
      v29 = v23 + 40 * v28;
      v30 = *v29;
      if (*v29 == v19)
      {
        goto LABEL_13;
      }
    }

    if (v54)
    {
      v29 = v54;
    }

    *&v66 = v29;
    if (v21)
    {
      v35 = 4;
    }

    else
    {
      v35 = *(v17 + 16);
    }

LABEL_18:
    if (4 * (v20 >> 1) + 4 >= 3 * v35)
    {
      v35 *= 2;
    }

    else if (v35 + ~(v20 >> 1) - *(v17 + 4) > v35 >> 3)
    {
      goto LABEL_20;
    }

    sub_10014E534(v17, v35);
    sub_10014E48C(v18, v19, &v66);
    v20 = *v18;
    v29 = v66;
    v21 = *v18 & 1;
LABEL_20:
    *v18 = (v20 & 0xFFFFFFFE | v21) + 2;
    if (*v29 != -4096)
    {
      --v18[1];
    }

    *v29 = v19;
    *(v29 + 8) = 0u;
    *(v29 + 24) = 0u;
    operator new();
  }

LABEL_13:
  v31 = **(v29 + 8);
  if (!v31)
  {
    std::recursive_mutex::lock((*v13 + 40));
    v32 = *v13;
    v33 = *(*v13 + 8);
    if (v33 < *(*v13 + 12))
    {
      v34 = *v32 + 24 * v33;
      operator new();
    }

    sub_10014EA3C(v32);
  }

  LODWORD(v66) = a3;
  *(&v66 + 1) = 0;
  sub_10014DE44(&v61, v31, &v66, &v62);
  v36 = v61;
  result = *(v61 + 8);
  if (!result)
  {
    llvm::sys::RWMutexImpl::lock_shared((explicit + 24));
    v37 = *explicit;
    v38 = *(explicit + 16);
    if (v38)
    {
      v39 = v38 - 1;
      v40 = 1;
      v41 = v63;
      v42 = v64;
      v43 = v62 & (v38 - 1);
      v44 = v37 + 16 * v43;
      v45 = *(v44 + 8);
      if ((v45 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_28;
      }

      while (v45 != -4096)
      {
        while (1)
        {
          v46 = v43 + v40++;
          v43 = v46 & v39;
          v44 = v37 + 16 * (v46 & v39);
          v45 = *(v44 + 8);
          if ((v45 | 0x1000) == 0xFFFFFFFFFFFFF000)
          {
            break;
          }

LABEL_28:
          if (v41(v42))
          {
            if (v44 != *explicit + 16 * *(explicit + 16))
            {
              goto LABEL_33;
            }

            goto LABEL_35;
          }

          if (*(v44 + 8) == -4096)
          {
            goto LABEL_30;
          }
        }
      }

LABEL_30:
      v47 = *(explicit + 16);
      v44 = *explicit + 16 * v47;
      if (v44 != *explicit + 16 * v47)
      {
LABEL_33:
        v49 = *(v44 + 8);
        *(v36 + 8) = v49;
        llvm::sys::RWMutexImpl::unlock_shared((explicit + 24));
        return v49;
      }
    }

    else
    {
      v48 = *explicit;
    }

LABEL_35:
    llvm::sys::RWMutexImpl::unlock_shared((explicit + 24));
    llvm::sys::RWMutexImpl::lock((explicit + 24));
    LODWORD(v65) = v62;
    *(&v65 + 1) = 0;
    sub_10014DE44(&v66, explicit, &v65, &v62);
    v50 = v66;
    if (v67)
    {
      v51 = sub_10014EE98(v58);
      v52 = a6(a7, v51);
      *(v50 + 8) = v52;
    }

    else
    {
      v52 = *(v66 + 8);
    }

    *(v36 + 8) = v52;
    v53 = v52;
    llvm::sys::RWMutexImpl::unlock((explicit + 24));
    return v53;
  }

  return result;
}

uint64_t *sub_10014D624(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 24))
    {
      v2 = 0;
      do
      {
        v3 = atomic_load((*(v1 + 16) + 8 * v2));
        if (v3)
        {
          if (*(v1 + 32) && *(v3 + 8))
          {
            v4 = *(v3 + 16);
            if (v4)
            {
              v5 = 16 * v4;
              v6 = *v3;
              while ((*(v6 + 1) | 0x1000) == 0xFFFFFFFFFFFFF000)
              {
                v6 = (v6 + 16);
                v5 -= 16;
                if (!v5)
                {
                  goto LABEL_4;
                }
              }
            }

            else
            {
              v6 = *v3;
            }

            v7 = *v3 + 16 * v4;
            if (v6 != v7)
            {
              v8 = *(v6 + 1);
              do
              {
                (*(v1 + 32))(*(v1 + 40), v8);
                do
                {
                  v6 = (v6 + 16);
                  if (v6 == v7)
                  {
                    goto LABEL_4;
                  }

                  v8 = *(v6 + 1);
                }

                while ((v8 | 0x1000) == 0xFFFFFFFFFFFFF000);
              }

              while (v6 != v7);
            }
          }

LABEL_4:
          llvm::sys::RWMutexImpl::~RWMutexImpl((v3 + 24));
          llvm::deallocate_buffer(*v3, (16 * *(v3 + 16)), 8uLL);
          operator delete();
        }

        ++v2;
      }

      while (v2 != *(v1 + 24));
    }

    v9 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v9)
    {
      operator delete[]();
    }

    v10 = *(v1 + 8);
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    operator delete();
  }

  return result;
}

uint64_t mlir::StorageUniquer::getSingletonImpl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = a2;
  return *sub_100087050(v2 + 232, &v4);
}

uint64_t mlir::StorageUniquer::registerSingletonImpl(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v8 = a2;
  v4 = *a1;
  v7 = a3(a4, *a1 + 112);
  return sub_100078AB0(v4 + 232, &v8, &v7, v6);
}

void sub_10014D880(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002B7988;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10014D8D4(uint64_t a1)
{
  std::recursive_mutex::~recursive_mutex((a1 + 64));
  sub_10014D940(*(a1 + 24), (*(a1 + 24) + 24 * *(a1 + 32)));
  v2 = *(a1 + 24);
  if (v2 != (a1 + 40))
  {

    free(v2);
  }
}

void *sub_10014D940(void *result, void *a2)
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
        operator delete();
      }
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t *sub_10014DA2C(uint64_t a1, uint64_t *a2)
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
    sub_10014DC20(a1, v2);
    sub_10014DB9C(*v14, *(v14 + 16), *v13, &v15);
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

uint64_t sub_10014DB9C(uint64_t result, int a2, uint64_t a3, void *a4)
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

void sub_10014DC20(uint64_t a1, int a2)
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
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = buffer + 2;
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
        v15 = &buffer[2 * v11];
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
          sub_10014D624(v16 + 1);
        }

        v16 = (v16 + 16);
      }

      while (v16 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v17 = *(a1 + 16);
    if (v17)
    {
      if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_19;
      }

      v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
      v19 = buffer + 2;
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
        v21 = &buffer[2 * v17];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v21);
      }
    }
  }
}

uint64_t sub_10014DE44(uint64_t result, uint64_t a2, __int128 *a3, uint64_t a4)
{
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
    sub_10014EC7C(a2, v17);
    sub_10014EB90(*v22, *(v22 + 16), v23, &v24);
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

llvm **sub_10014E050(unsigned int *a1)
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
    v11 = *a1;
    v6 = a1 + 2;
    if (!v2)
    {
      goto LABEL_19;
    }

LABEL_13:
    v9 = (a1 + 42);
    if (v4 == a1 + 42)
    {
      goto LABEL_14;
    }

LABEL_22:
    v35 = v6;
    do
    {
      v13 = *(v4 + 4);
      if (v13)
      {
        v14 = std::__shared_weak_count::lock(v13);
        if (v14)
        {
          v15 = v14;
          v16 = *(v4 + 3);
          if (v16)
          {
            v17 = **(v4 + 1);
            std::recursive_mutex::lock((v16 + 40));
            v18 = *v16;
            v19 = *(v16 + 8);
            v20 = *v16 + 24 * v19;
            v21 = *v16;
            if (v19)
            {
              v22 = 24 * v19;
              v21 = *v16;
              while (*v21 != v17)
              {
                v21 += 3;
                v22 -= 24;
                if (!v22)
                {
                  v21 = (*v16 + 24 * v19);
                  break;
                }
              }
            }

            if (v21 + 3 != v20)
            {
              v23 = v21 + 4;
              do
              {
                v25 = *(v23 - 1);
                *(v23 - 1) = 0;
                v26 = *(v23 - 4);
                *(v23 - 4) = v25;
                if (v26)
                {
                  llvm::deallocate_buffer(*v26, (16 * *(v26 + 16)), 8uLL);
                  operator delete();
                }

                v27 = *v23;
                *v23 = 0;
                v23[1] = 0;
                v28 = *(v23 - 2);
                *(v23 - 3) = v27;
                if (v28)
                {
                  std::__shared_weak_count::__release_weak(v28);
                }

                v24 = v23 + 2;
                v23 += 3;
              }

              while (v24 != v20);
              LODWORD(v19) = *(v16 + 8);
              v18 = *v16;
            }

            v29 = v19 - 1;
            *(v16 + 8) = v29;
            sub_10014E3C4(&v18[3 * v29]);
            std::recursive_mutex::unlock((v16 + 40));
          }

          if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v15->__on_zero_shared)(v15);
            std::__shared_weak_count::__release_weak(v15);
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
    v6 = v35;
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

  v6 = a1 + 2;
  if (v2)
  {
    v8 = (a1 + 42);
  }

  else
  {
    v7 = a1[4];
    v8 = *(a1 + 1) + 40 * v7;
    if (!v7)
    {
      v12 = *(a1 + 1);
      goto LABEL_14;
    }

    v6 = *(a1 + 1);
  }

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
  if (v2)
  {
    goto LABEL_13;
  }

LABEL_19:
  v9 = *(a1 + 1) + 40 * a1[4];
  if (v4 != v9)
  {
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
  v30 = (v6 + 2);
  v31 = 40 * v10;
  do
  {
    if ((*(v30 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v32 = v30[2];
      if (v32)
      {
        std::__shared_weak_count::__release_weak(v32);
      }

      v33 = *v30;
      if (*v30 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v33->__on_zero_shared)(v33);
        std::__shared_weak_count::__release_weak(v33);
      }
    }

    v30 += 5;
    v31 -= 40;
  }

  while (v31);
  v2 = *v1;
LABEL_57:
  if ((v2 & 1) == 0)
  {
    llvm::deallocate_buffer(v1[1], (40 * *(v1 + 4)), 8uLL);
  }

  return v1;
}

uint64_t *sub_10014E3C4(uint64_t *a1)
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
    llvm::deallocate_buffer(*v7, (16 * *(v7 + 16)), 8uLL);
    operator delete();
  }

  return a1;
}

uint64_t sub_10014E48C(uint64_t result, uint64_t a2, void *a3)
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

void sub_10014E534(uint64_t a1, unsigned int a2)
{
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

  if (*a1)
  {
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
      v9 = &v21;
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

      goto LABEL_24;
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
    if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_14:
      if (v6 < 5)
      {
LABEL_16:
        sub_10014E7A0(a1, &v18, v9);
        return;
      }

LABEL_15:
      *a1 &= ~1u;
      v13 = a1;
      buffer = llvm::allocate_buffer((8 * (v6 + 4 * v6)), 8uLL);
      a1 = v13;
      *(v13 + 8) = buffer;
      *(v13 + 16) = v6;
      goto LABEL_16;
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

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v6 > 4)
  {
    v15 = a1;
    v16 = llvm::allocate_buffer((8 * (v6 + 4 * v6)), 8uLL);
    a1 = v15;
    *(v15 + 8) = v16;
    *(v15 + 16) = v6;
  }

  else
  {
    *a1 |= 1u;
  }

  sub_10014E7A0(a1, v7, &v7[5 * v8]);

  llvm::deallocate_buffer(v7, (40 * v8), 8uLL);
}

void sub_10014E7A0(int *a1, uint64_t *a2, uint64_t *a3)
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