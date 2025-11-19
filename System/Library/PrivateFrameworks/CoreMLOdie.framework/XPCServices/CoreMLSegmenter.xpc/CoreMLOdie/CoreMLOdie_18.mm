void mlir::Block::~Block(mlir::Block *this)
{
  sub_1000D57A0(this);
  v2 = *(this + 6);
  v3 = *(this + 7);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        operator delete();
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 6);
  }

  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v4 = *(this + 5);
  if (v4 != (this + 32))
  {
    do
    {
      v5 = *(v4 + 1);
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v4);
      llvm::ilist_traits<mlir::Operation>::removeNodeFromList(this + 32, ValuePtr);
      NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(ValuePtr);
      v8 = *NodePtr;
      v9 = NodePtr[1];
      *v9 = *NodePtr;
      *(v8 + 8) = v9;
      *NodePtr = 0;
      NodePtr[1] = 0;
      llvm::ilist_traits<mlir::Operation>::deleteNode(ValuePtr);
      v4 = v5;
    }

    while (v5 != (this + 32));
  }
}

void *sub_1000D57A0(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 40);
  if (v2 != (a1 + 32))
  {
    do
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v2);
      mlir::Operation::dropAllReferences(ValuePtr);
      v2 = v2[1];
    }

    while (v2 != v1);
  }

  while (1)
  {
    result = *v1;
    if (*v1 == v1)
    {
      break;
    }

    v4 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(result);
    llvm::ilist_traits<mlir::Operation>::removeNodeFromList(v1, v4);
    NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v4);
    v6 = *NodePtr;
    v7 = NodePtr[1];
    *v7 = *NodePtr;
    *(v6 + 8) = v7;
    *NodePtr = 0;
    NodePtr[1] = 0;
    llvm::ilist_traits<mlir::Operation>::deleteNode(v4);
  }

  return result;
}

uint64_t mlir::Block::getParentOp(mlir::Block *this)
{
  if ((*(this + 3) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    return *((*(this + 3) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::Block::isEntryBlock(mlir::Block *this)
{
  v1 = *((*(this + 3) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v1)
  {
    v2 = (v1 - 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 == this;
}

uint64_t mlir::Block::moveBefore(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = (result + 8);
  v4 = *(result + 16);
  if ((result + 8) != a3 && v4 != a3 && v4 != a3)
  {
    result = llvm::ilist_traits<mlir::Block>::transferNodesFromList(a2, *(result + 24) & 0xFFFFFFFFFFFFFFF8, v3, v4);
    if (v4 != v3)
    {
      v8 = *v4;
      v9 = *v3;
      *(v9 + 8) = v4;
      *v4 = v9;
      v10 = *a3;
      *(v8 + 8) = a3;
      *v3 = v10;
      *(v10 + 8) = v3;
      *a3 = v8;
    }
  }

  return result;
}

void mlir::Block::erase(mlir::Block *this)
{
  v1 = this + 8;
  if (!this)
  {
    v1 = 0;
  }

  v2 = (v1 - 8);
  if (this)
  {
    v3 = (v1 - 8);
  }

  else
  {
    v3 = 0;
  }

  llvm::ilist_traits<mlir::Block>::removeNodeFromList(*(this + 3) & 0xFFFFFFFFFFFFFFF8, v3);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  *v5 = v4;
  *(v4 + 8) = v5;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  mlir::Block::~Block(v2);

  operator delete();
}

void mlir::Block::dropAllReferences(mlir::Block *this)
{
  v1 = this + 32;
  v2 = *(this + 5);
  if (v2 != (this + 32))
  {
    do
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v2);
      mlir::Operation::dropAllReferences(ValuePtr);
      v2 = v2[1];
    }

    while (v2 != v1);
  }
}

void *mlir::Block::dropAllDefinedValueUses(void *this)
{
  v1 = this;
  v2 = this[6];
  v3 = this[7];
  while (v2 != v3)
  {
    v4 = *v2;
    while (1)
    {
      v5 = *v4;
      if (!*v4)
      {
        break;
      }

      v6 = v5[1];
      if (v6)
      {
        v7 = *v5;
        *v6 = *v5;
        if (v7)
        {
          *(v7 + 8) = v6;
        }
      }

      *v5 = 0;
      v5[1] = 0;
      v5[3] = 0;
    }

    ++v2;
  }

  v8 = this + 4;
  v9 = this[5];
  if (v9 != this + 4)
  {
    do
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v9);
      this = mlir::Operation::dropAllDefinedValueUses(ValuePtr);
      v9 = v9[1];
    }

    while (v9 != v8);
  }

  while (1)
  {
    v11 = *v1;
    if (!*v1)
    {
      break;
    }

    v12 = v11[1];
    if (v12)
    {
      v13 = *v11;
      *v12 = *v11;
      if (v13)
      {
        *(v13 + 8) = v12;
      }
    }

    *v11 = 0;
    v11[1] = 0;
    v11[3] = 0;
  }

  return this;
}

uint64_t mlir::Block::recomputeOpOrder(uint64_t this)
{
  *(this + 24) |= 4uLL;
  v1 = this + 32;
  v2 = *(this + 40);
  if (v2 != this + 32)
  {
    v3 = 5;
    do
    {
      this = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v2);
      *(this + 32) = v3;
      v2 = *(v2 + 8);
      v3 += 5;
    }

    while (v2 != v1);
  }

  return this;
}

uint64_t mlir::Block::addArguments(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = a1[6];
  v13 = a1[7] - v7;
  v8 = a3 + (v13 >> 3);
  if (v8 > (a1[8] - v7) >> 3)
  {
    if (!(v8 >> 61))
    {
      operator new();
    }

    sub_100003FC0();
  }

  if (a3 && a5)
  {
    mlir::TypeRange::dereference_iterator(a2, 0);
    v9 = *a4;
    v10 = (a1[7] - a1[6]) >> 3;
    operator new();
  }

  v11 = a1[7];
  return a1[6] + v13;
}

uint64_t mlir::Block::mightHaveTerminator(mlir::Block *this)
{
  v2 = this + 32;
  v1 = *(this + 4);
  if (v1 == v2)
  {
    return 0;
  }

  ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v1);
  {
    v7 = ValuePtr;
    sub_10029B7A4();
    v4 = *(v7 + 48);
    if (v4[2] != &mlir::detail::TypeIDResolver<void,void>::id)
    {
      goto LABEL_4;
    }

    return 1;
  }

  v4 = *(ValuePtr + 48);
  if (v4[2] == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return 1;
  }

LABEL_4:
  v5 = *(*v4 + 4);

  return v5();
}

uint64_t mlir::Block::getSinglePredecessor(mlir::Block *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  if (*v1)
  {
    return 0;
  }

  return *(v1[2] + 16);
}

void *mlir::SuccessorRange::SuccessorRange(void *this, mlir::Block *a2)
{
  *this = 0;
  this[1] = 0;
  v2 = *(a2 + 4);
  if (v2 != (a2 + 32))
  {
    v3 = *(a2 + 3) & 0xFFFFFFFFFFFFFFF8;
    v4 = *(v3 + 8);
    if (v4 == v3 || *(v4 + 8) != v3)
    {
      v5 = this;
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v2);
      this = v5;
      v7 = *(ValuePtr + 40);
      v5[1] = v7;
      if (v7)
      {
        *v5 = ValuePtr + 16 * ((*(ValuePtr + 44) >> 23) & 1) + ((*(ValuePtr + 44) >> 21) & 0x7F8) + 64;
      }
    }
  }

  return this;
}

unint64_t *mlir::SuccessorRange::SuccessorRange(unint64_t *this, Operation *a2)
{
  *this = 0;
  this[1] = 0;
  v2 = *(a2 + 10);
  this[1] = v2;
  if (v2)
  {
    *this = (a2 + 16 * ((*(a2 + 11) >> 23) & 1) + ((*(a2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8;
  }

  return this;
}

uint64_t *mlir::BlockRange::BlockRange(uint64_t *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = a3;
  if (a3)
  {
    *result = a2 | 4;
  }

  return result;
}

uint64_t mlir::BlockRange::dereference_iterator(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((a1 & 4) == 0)
  {
    v2 = 0;
  }

  v3 = v2 + 8 * a2;
  if (!(((a1 & 4) >> 2) | ((a1 & 0xFFFFFFFFFFFFFFF8) == 0)))
  {
    v3 = (a1 & 0xFFFFFFFFFFFFFFF8) + 32 * a2 + 24;
  }

  return *v3;
}

void *mlir::Builder::getF64Type(mlir::Float64Type **this, mlir::MLIRContext *a2)
{
  result = mlir::Float64Type::get(*this, a2);
  if (result)
  {
    v3 = *result;
    {
      v4 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      if (!v6)
      {
        return result;
      }
    }

    else
    {
      v14 = v3;
      v15 = result;
      sub_1002993D8();
      result = v15;
      v4 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
      v5 = *(v14 + 8);
      v6 = *(v14 + 16);
      if (!v6)
      {
        return result;
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
      v13 = v7[1];
    }
  }

  return result;
}

uint64_t mlir::Builder::getIntegerType(uint64_t **this, int a2, int a3)
{
  v3 = *this;
  if (a3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return mlir::IntegerType::get(v3, a2, v4);
}

uint64_t mlir::Builder::getIntegerAttr(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v11 = a2;
  isIndex = mlir::Type::isIndex(&v11);
  v5 = v11;
  if (isIndex)
  {
    v10 = 64;
    v9 = a3;
    result = mlir::IntegerAttr::get(v11, &v9);
    if (v10 < 0x41)
    {
      return result;
    }

    goto LABEL_10;
  }

  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v11);
  mlir::Type::isSignedInteger(&v11);
  v10 = IntOrFloatBitWidth;
  if (IntOrFloatBitWidth > 0x40)
  {
    llvm::APInt::initSlowCase(&v9);
  }

  v8 = 0xFFFFFFFFFFFFFFFFLL >> -IntOrFloatBitWidth;
  if (!IntOrFloatBitWidth)
  {
    v8 = 0;
  }

  v9 = v8 & a3;
  result = mlir::IntegerAttr::get(v5, &v9);
  if (v10 >= 0x41)
  {
LABEL_10:
    if (v9)
    {
      operator delete[]();
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create(void *a1, uint64_t a2)
{
  v3 = mlir::Operation::create(a2);
  v4 = a1[2];
  if (v4)
  {
    v5 = a1[3];
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v4 + 32, v3);
    NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v3);
    v7 = *v5;
    *NodePtr = *v5;
    NodePtr[1] = v5;
    *(v7 + 8) = NodePtr;
    *v5 = NodePtr;
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v3);
    v8 = a1[1];
    if (v8)
    {
      (*(*v8 + 16))(v8, v3, 0, 0);
    }
  }

  return v3;
}

uint64_t mlir::OpBuilder::tryFold(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = *(a2 + 36);
  v6 = a2 - 16;
  if (!v5)
  {
    v6 = 0;
  }

  v9 = v6;
  v10 = v5;
  if (a3[3] < v5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 4, v5, 8);
  }

  {
    sub_10029B7F8();
  }

  if ((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    v7 = 0;
    a3[2] = 0;
  }

  else
  {
    v11 = v13;
    v12 = 0x400000000;
    if (mlir::Operation::fold(a2))
    {
      v7 = 1;
    }

    else
    {
      v7 = 0;
      a3[2] = 0;
    }

    if (v11 != v13)
    {
      free(v11);
    }
  }

  return v7;
}

uint64_t mlir::OpBuilder::clone(mlir::Operation::CloneOptions *a1, Operation *a2, uint64_t a3)
{
  v6 = mlir::Operation::CloneOptions::all(a1);
  v7 = mlir::Operation::clone(a2, a3, v6);
  v8 = *(a1 + 2);
  if (v8)
  {
    v9 = *(a1 + 3);
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v8 + 32, v7);
    NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v7);
    v11 = *v9;
    *NodePtr = *v9;
    NodePtr[1] = v9;
    *(v11 + 8) = NodePtr;
    *v9 = NodePtr;
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v7);
    v12 = *(a1 + 1);
    if (v12)
    {
      (*(*v12 + 16))(v12, v7, 0, 0);
    }
  }

  v13 = *(a1 + 1);
  if (v13)
  {
    v14 = *(v7 + 44);
    if ((v14 & 0x7FFFFF) != 0)
    {
      v15 = ((v7 + 64 + 16 * ((v14 >> 23) & 1) + ((v14 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v7 + 40);
      v16 = v15 + 24 * (v14 & 0x7FFFFF);
      i = *(v15 + 8);
      if (i != v15)
      {
        goto LABEL_9;
      }

      while (1)
      {
        v15 += 24;
        if (v15 == v16)
        {
          break;
        }

        for (i = *(v15 + 8); i != v15; i = *(i + 8))
        {
LABEL_9:
          if (i)
          {
            v18 = i - 8;
          }

          else
          {
            v18 = 0;
          }

          (*(*v13 + 24))(v13, v18, 0, 0);
        }
      }

      v19 = *(v7 + 44);
      v29 = a1;
      if ((v19 & 0x7FFFFF) != 0)
      {
        v20 = ((v7 + 64 + 16 * ((v19 >> 23) & 1) + ((v19 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v7 + 40);
        v21 = v20 + 24 * (v19 & 0x7FFFFF);
        do
        {
          for (j = *(v20 + 8); j != v20; j = *(j + 8))
          {
            v23 = j - 8;
            if (!j)
            {
              v23 = 0;
            }

            v24 = *(v23 + 40);
            v25 = v23 + 32;
            if (v24 != v23 + 32)
            {
              do
              {
                v26 = *(v24 + 8);
                ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v24);
                sub_1000B05C8(ValuePtr, sub_1000D6B5C, &v29, 0);
                v24 = v26;
              }

              while (v26 != v25);
            }
          }

          v20 += 24;
        }

        while (v20 != v21);
      }
    }
  }

  return v7;
}

uint64_t mlir::OpBuilder::clone(mlir::OpBuilder *this, mlir::Operation *a2)
{
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v2 = mlir::OpBuilder::clone(this, a2, v4);
  llvm::deallocate_buffer(v9, (16 * v11), 8uLL);
  llvm::deallocate_buffer(v6, (16 * v8), 8uLL);
  llvm::deallocate_buffer(v4[0], (16 * v5), 8uLL);
  return v2;
}

uint64_t sub_1000D6A94()
{
  {
    sub_10029B84C();
  }

  return llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>(void)::Name;
}

const char *sub_1000D6ADC()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::ConstantLike<Empty>]";
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

uint64_t sub_1000D6B5C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = (*(**(*a1 + 8) + 16))(*(*a1 + 8), a2, 0, 0);
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    v6 = *(v3 + 8);
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v8 = v7 + 24 * (v5 & 0x7FFFFF);
    i = *(v7 + 8);
    if (i != v7)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v7 += 24;
      if (v7 == v8)
      {
        break;
      }

      for (i = *(v7 + 8); i != v7; i = *(i + 8))
      {
LABEL_5:
        if (i)
        {
          v10 = i - 8;
        }

        else
        {
          v10 = 0;
        }

        result = (*(*v6 + 24))(v6, v10, 0, 0);
      }
    }
  }

  return result;
}

uint64_t mlir::ElementsAttr::getElementType(uint64_t a1, uint64_t a2)
{
  v4[0] = (*(a2 + 16))(a2, a1);
  v4[1] = v2;
  return mlir::ShapedType::getElementType(v4);
}

uint64_t mlir::ElementsAttr::getNumElements(uint64_t a1, uint64_t a2)
{
  v6[0] = (*(a2 + 16))(a2, a1);
  v6[1] = v2;
  Shape = mlir::ShapedType::getShape(v6);
  return mlir::ShapedType::getNumElements(Shape, v4);
}

uint64_t mlir::ElementsAttr::isValidIndex(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v12[0] = a1;
  v12[1] = a2;
  mlir::ShapedType::getShape(v12);
  if (!v6 && a4 == 1 && !*a3)
  {
    return 1;
  }

  if (v6 == a4)
  {
    Shape = mlir::ShapedType::getShape(v12);
    if (a4 << 32)
    {
      v8 = 0;
      v9 = a4;
      while (1)
      {
        v10 = *(a3 + (v8 >> 29));
        if (v10 < 0 || v10 >= *(Shape + 8 * (v8 >> 32)))
        {
          break;
        }

        v8 += &_mh_execute_header;
        if (!--v9)
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t mlir::ElementsAttr::getFlattenedIndex(void *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  v3 = *a1;
  {
    v21 = a1;
    sub_100299384();
    a1 = v21;
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
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

  v13 = v7[1];
LABEL_15:
  v22[0] = a1;
  v22[1] = v13;
  mlir::ShapedType::getShape(v22);
  v15 = v14;
  Shape = mlir::ShapedType::getShape(v22);
  v17 = 0;
  if (v15 - 1 >= 0)
  {
    v18 = 8 * (v15 - 1);
    v19 = 1;
    do
    {
      v17 += *(a2 + v18) * v19;
      v19 *= *(Shape + v18);
      v18 -= 8;
    }

    while (v18 != -8);
  }

  return v17;
}

uint64_t mlir::detail::verifyAffineMapAsLayout(uint64_t a1, uint64_t a2, const char *a3, void (*a4)(void *__return_ptr, uint64_t), uint64_t a5)
{
  v40 = a1;
  if (a3 == mlir::AffineMap::getNumDims(&v40))
  {
    return 1;
  }

  a4(v44, a5);
  if (v44[0])
  {
    v41 = 3;
    v42 = "memref layout mismatch between rank and affine map: ";
    v43 = 52;
    v9 = &v41;
    v10 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v36 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v10 = v45;
        v9 = (v45 + v36);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v9 = &v41;
        v10 = v45;
      }
    }

    v11 = &v10[24 * v46];
    v12 = *v9;
    *(v11 + 2) = *(v9 + 2);
    *v11 = v12;
    v13 = ++v46;
    if (v44[0])
    {
      v41 = 5;
      v42 = a3;
      v14 = &v41;
      v15 = v45;
      if (v13 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v13 > &v41)
        {
          v38 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v13 + 1, 24);
          v15 = v45;
          v14 = (v45 + v38);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v13 + 1, 24);
          v14 = &v41;
          v15 = v45;
        }
      }

      v16 = &v15[24 * v46];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      v18 = ++v46;
      if (v44[0])
      {
        v41 = 3;
        v42 = " != ";
        v43 = 4;
        v19 = &v41;
        v20 = v45;
        if (v18 >= v47)
        {
          if (v45 <= &v41 && v45 + 24 * v18 > &v41)
          {
            v39 = &v41 - v45;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v18 + 1, 24);
            v20 = v45;
            v19 = (v45 + v39);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v18 + 1, 24);
            v19 = &v41;
            v20 = v45;
          }
        }

        v21 = &v20[24 * v46];
        v22 = *v19;
        *(v21 + 2) = *(v19 + 2);
        *v21 = v22;
        ++v46;
      }
    }
  }

  NumDims = mlir::AffineMap::getNumDims(&v40);
  if (v44[0])
  {
    v41 = 5;
    v42 = NumDims;
    v24 = &v41;
    v25 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v37 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v25 = v45;
        v24 = (v45 + v37);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v24 = &v41;
        v25 = v45;
      }
    }

    v26 = &v25[24 * v46];
    v27 = *v24;
    *(v26 + 2) = *(v24 + 2);
    *v26 = v27;
    ++v46;
  }

  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
  if (v44[0])
  {
    mlir::InFlightDiagnostic::report(v44);
  }

  if (v54 == 1)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v52;
      v30 = __p;
      if (v52 != __p)
      {
        do
        {
          v29 = sub_10005BEF4(v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v52 = v28;
      operator delete(v30);
    }

    v31 = v49;
    if (v49)
    {
      v32 = v50;
      v33 = v49;
      if (v50 != v49)
      {
        do
        {
          v34 = *--v32;
          *v32 = 0;
          if (v34)
          {
            operator delete[]();
          }
        }

        while (v32 != v31);
        v33 = v49;
      }

      v50 = v31;
      operator delete(v33);
    }

    if (v45 != v48)
    {
      free(v45);
    }
  }

  return v8;
}

uint64_t mlir::AffineMapAttr::get(unint64_t a1)
{
  v8 = a1;
  Context = mlir::AffineMap::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id;
  v9[1] = Context;
  v13[0] = sub_1000E0174;
  v13[1] = v9;
  v12 = v8;
  v3 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
  v4 = (0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), sub_1000E00B4, &v11, sub_1000E00CC, v10);
}

uint64_t mlir::ArrayAttr::get(mlir::MLIRContext *a1, _DWORD *a2, uint64_t a3)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
  v11[1] = a1;
  v15[0] = sub_1000E0AE4;
  v15[1] = v11;
  v14[0] = a2;
  v14[1] = a3;
  v7 = sub_1000E0184(a2, &a2[2 * a3]);
  v8 = HIDWORD(v7) ^ 0xFF51AFD7ED558CCDLL;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v7 + 8) ^ v8);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), sub_1000E08C8, &v13, sub_1000E0920, v12);
}

uint64_t mlir::ArrayAttr::getValue(mlir::ArrayAttr *this)
{
  v1 = *this;
  result = *(*this + 8);
  v3 = *(v1 + 16);
  return result;
}

uint64_t mlir::DenseArrayAttr::get(uint64_t a1, unsigned int a2, void *a3, uint64_t a4)
{
  v15 = a1;
  Context = mlir::Type::getContext(&v15);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v16[1] = Context;
  v20[0] = sub_1000E0D40;
  v20[1] = v16;
  v19[0] = v15;
  v19[1] = a2;
  v19[2] = a3;
  v19[3] = a4;
  v9 = (v15 >> 4) ^ (v15 >> 9);
  v10 = sub_10002D970(a3, a3 + a4);
  v11 = __ROR8__(a2 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v9 - 0x9AE16A3B2F90404FLL * v10 + 24;
  v12 = (__ROR8__(0xB492B66FBE98F273 * v9 - a2, 43) - 0x3C5A37A36834CED9 * a2 + __ROR8__((0x9AE16A3B2F90404FLL * v10) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v11;
  v13 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * v12) >> 47) ^ (0x9DDFEA08EB382D69 * v12));
  v17[0] = v19;
  v17[1] = v20;
  v18 = v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v13 >> 47) ^ v13), sub_1000E0C84, &v18, sub_1000E0CF0, v17);
}

uint64_t mlir::DenseArrayAttr::getRawData(mlir::DenseArrayAttr *this)
{
  v1 = *this;
  result = *(*this + 24);
  v3 = *(v1 + 32);
  return result;
}

uint64_t mlir::DenseStringElementsAttr::get(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v12 = a2;
  Context = mlir::Type::getContext(&v11);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  v13[1] = Context;
  v18[0] = sub_1000E1A08;
  v18[1] = v13;
  sub_1000E0D50(v11, v12, a3, a4, a4 == 1, v16);
  v8 = __ROR8__(v17 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ (v16[0] >> 4) ^ (v16[0] >> 9));
  v14[0] = v16;
  v14[1] = v18;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)))) ^ v17, sub_1000E16AC, &v15, sub_1000E1754, v14);
}

uint64_t mlir::DenseResourceElementsAttr::getType(mlir::DenseResourceElementsAttr *this)
{
  v1 = *this;
  result = *(*this + 8);
  v3 = *(v1 + 16);
  return result;
}

__n128 mlir::DenseResourceElementsAttr::getRawHandle@<Q0>(mlir::DenseResourceElementsAttr *this@<X0>, __n128 *a2@<X8>)
{
  v2 = *this;
  result = *(*this + 24);
  *a2 = result;
  a2[1].n128_u64[0] = *(v2 + 40);
  return result;
}

uint64_t mlir::DictionaryAttr::getValue(mlir::DictionaryAttr *this)
{
  v1 = *this;
  result = *(*this + 8);
  v3 = *(v1 + 16);
  return result;
}

uint64_t mlir::FloatAttr::get(uint64_t a1, const llvm::detail::IEEEFloat *a2)
{
  v6 = a1;
  Context = mlir::Type::getContext(&v6);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v7[0] = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
  v7[1] = Context;
  return sub_1000E1A18(AttributeUniquer, sub_1000E1E74, v7, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v6, a2);
}

llvm::APFloatBase *mlir::FloatAttr::get(void *a1, double a2)
{
  v42 = a1;
  if (!mlir::Type::isF64(&v42))
  {
    v3 = *v42;
    {
      v4 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v13 = v3;
      sub_100299348();
      v4 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
      v5 = *(v13 + 8);
      v6 = *(v13 + 16);
      if (!v6)
      {
        goto LABEL_14;
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
    if (v7 != &v5[2 * v6] && *v7 == v4 && v7[1])
    {
      v41 = 0;
      v21 = llvm::detail::IEEEFloat::IEEEFloat(&v43, a2);
      v22 = llvm::APFloatBase::IEEEdouble(v21);
      llvm::APFloat::Storage::Storage(&v45, &v43, v22);
      llvm::detail::IEEEFloat::~IEEEFloat(&v43);
      v23 = v42;
      if (v42)
      {
        v24 = *v42;
        {
          v25 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
          v26 = *(v24 + 8);
          v27 = *(v24 + 16);
          if (!v27)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v40 = v23;
          v34 = v24;
          sub_100299348();
          v23 = v40;
          v25 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
          v26 = *(v34 + 8);
          v27 = *(v34 + 16);
          if (!v27)
          {
            goto LABEL_31;
          }
        }

        v28 = v26;
        v29 = v27;
        do
        {
          v30 = v29 >> 1;
          v31 = &v28[2 * (v29 >> 1)];
          v33 = *v31;
          v32 = v31 + 2;
          v29 += ~(v29 >> 1);
          if (v33 < v25)
          {
            v28 = v32;
          }

          else
          {
            v29 = v30;
          }
        }

        while (v29);
        if (v28 != &v26[2 * v27] && *v28 == v25)
        {
          v35 = v28[1];
LABEL_32:
          v43 = v23;
          v44 = v35;
          FloatSemantics = mlir::FloatType::getFloatSemantics(&v43);
          llvm::APFloat::convert(&v45, FloatSemantics, 1, &v41);
          Context = mlir::Type::getContext(&v42);
          AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
          v43 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
          v44 = Context;
          v18 = sub_1000E1E84(AttributeUniquer, sub_1000E2114, &v43, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v42, &v45);
          v39 = v45.n128_u64[0];
          if (llvm::APFloatBase::PPCDoubleDouble(v18) == v39)
          {
            goto LABEL_33;
          }

          goto LABEL_15;
        }
      }

LABEL_31:
      v35 = 0;
      goto LABEL_32;
    }
  }

LABEL_14:
  v14 = mlir::Type::getContext(&v42);
  v15 = llvm::detail::IEEEFloat::IEEEFloat(&v43, a2);
  v16 = llvm::APFloatBase::IEEEdouble(v15);
  llvm::APFloat::Storage::Storage(&v45, &v43, v16);
  llvm::detail::IEEEFloat::~IEEEFloat(&v43);
  v17 = mlir::MLIRContext::getAttributeUniquer(v14);
  v43 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
  v44 = v14;
  v18 = sub_1000E2124(v17, sub_1000E23B4, &v43, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v42, &v45);
  v19 = v45.n128_u64[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v18) == v19)
  {
LABEL_33:
    sub_10002B154(&v45);
    return v18;
  }

LABEL_15:
  llvm::detail::IEEEFloat::~IEEEFloat(&v45);
  return v18;
}

void *mlir::FloatAttr::getValue@<X0>(mlir::FloatAttr *this@<X0>, llvm::detail::IEEEFloat *a2@<X8>)
{
  v3 = (*this + 16);
  v4 = *v3;
  if (llvm::APFloatBase::PPCDoubleDouble(this) == v4)
  {

    return llvm::detail::DoubleAPFloat::DoubleAPFloat(a2, v3);
  }

  else
  {

    return llvm::detail::IEEEFloat::IEEEFloat(a2, v3);
  }
}

uint64_t mlir::IntegerAttr::get(uint64_t a1, llvm::APInt *a2)
{
  v13 = a1;
  isSignlessInteger = mlir::Type::isSignlessInteger(&v13, 1);
  Context = mlir::Type::getContext(&v13);
  if (isSignlessInteger)
  {
    v5 = *(a2 + 2);
    if (v5 > 0x40)
    {
      v10 = Context;
      v11 = llvm::APInt::countLeadingZerosSlowCase(a2);
      Context = v10;
      v6 = v11 == v5;
    }

    else
    {
      v6 = *a2 == 0;
    }

    v12 = v6;
    return mlir::BoolAttr::get(Context, (v12 ^ 1u));
  }

  else
  {
    v7 = Context;
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v14[0] = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    v14[1] = v7;
    return sub_1000E23C4(AttributeUniquer, sub_1000E2628, v14, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, &v13, a2);
  }
}

uint64_t mlir::IntegerAttr::get(uint64_t a1, unint64_t a2)
{
  v11 = a1;
  if (mlir::Type::isIndex(&v11))
  {
    v10 = 64;
    v9 = a2;
  }

  else
  {
    v8 = v11;
    Width = mlir::IntegerType::getWidth(&v8);
    mlir::Type::isSignedInteger(&v8);
    v10 = Width;
    if (Width > 0x40)
    {
      llvm::APInt::initSlowCase(&v9);
    }

    v4 = 0xFFFFFFFFFFFFFFFFLL >> -Width;
    if (!Width)
    {
      v4 = 0;
    }

    v9 = v4 & a2;
  }

  Context = mlir::Type::getContext(&v11);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  v12[1] = Context;
  result = sub_1000E2638(AttributeUniquer, sub_1000E289C, v12, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, &v11, &v9);
  if (v10 >= 0x41)
  {
    if (v9)
    {
      operator delete[]();
    }
  }

  return result;
}

uint64_t *mlir::IntegerAttr::getValue@<X0>(uint64_t *this@<X0>, llvm::APInt *a2@<X8>)
{
  v2 = *this;
  v3 = *(*this + 24);
  *(a2 + 2) = v3;
  if (v3 > 0x40)
  {
    llvm::APInt::initSlowCase(a2, (v2 + 16));
  }

  *a2 = *(v2 + 16);
  return this;
}

uint64_t mlir::IntegerSetAttr::get(unint64_t a1)
{
  v8 = a1;
  Context = mlir::IntegerSet::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id;
  v9[1] = Context;
  v13[0] = sub_1000E296C;
  v13[1] = v9;
  v12 = v8;
  v3 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
  v4 = (0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), sub_1000E28AC, &v11, sub_1000E28C4, v10);
}

void mlir::OpaqueAttr::getChecked(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  Context = mlir::Attribute::getContext(&v6);
  sub_1000D80E8(a1, a2, Context, v6);
}

void mlir::OpaqueAttr::verify(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  mlir::Dialect::isValidNamespace();
}

uint64_t mlir::OpaqueAttr::getAttrData(mlir::OpaqueAttr *this)
{
  v1 = *this;
  result = *(*this + 16);
  v3 = *(v1 + 24);
  return result;
}

uint64_t mlir::SparseElementsAttr::get(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v15 = a1;
  *(&v15 + 1) = a2;
  Context = mlir::Type::getContext(&v15);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id;
  v16[1] = Context;
  v22[0] = sub_1000E2D08;
  v22[1] = v16;
  v19 = v15;
  v20 = a3;
  v21 = a4;
  v8 = (a3 >> 4) ^ (a3 >> 9);
  v9 = 0x9AE16A3B2F90404FLL * ((a4 >> 4) ^ (a4 >> 9));
  v10 = __ROR8__(0xB492B66FBE98F273 * ((v15 >> 4) ^ (v15 >> 9)) - v8, 43);
  v11 = __ROR8__(v9 ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * v8;
  v12 = __ROR8__(v8 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v9 - 0x4B6D499041670D8DLL * ((v15 >> 4) ^ (v15 >> 9)) + 24;
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * ((v11 + v10) ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v11 + v10) ^ v12)));
  v17[0] = &v19;
  v17[1] = v22;
  v18 = &v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id, -348639895 * ((v13 >> 47) ^ v13), sub_1000E2C00, &v18, sub_1000E2C48, v17);
}

uint64_t mlir::SparseElementsAttr::getChecked(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a3;
  v13 = a4;
  Context = mlir::Type::getContext(&v12);
  return sub_1000D8CFC(a1, a2, Context, v12, v13, a5, a6);
}

uint64_t sub_1000D8CFC(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((mlir::SparseElementsAttr::verify(a1, a2, a4, a5, a6, a7) & 1) == 0)
  {
    return 0;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a3);
  v20[0] = &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id;
  v20[1] = a3;
  v24[0] = sub_1000E2E20;
  v24[1] = v20;
  v23[0] = a4;
  v23[1] = a5;
  v23[2] = a6;
  v23[3] = a7;
  v13 = (a6 >> 4) ^ (a6 >> 9);
  v14 = 0x9AE16A3B2F90404FLL * ((a7 >> 4) ^ (a7 >> 9));
  v15 = __ROR8__(0xB492B66FBE98F273 * ((a4 >> 4) ^ (a4 >> 9)) - v13, 43);
  v16 = __ROR8__(v14 ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * v13;
  v17 = __ROR8__(v13 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v14 - 0x4B6D499041670D8DLL * ((a4 >> 4) ^ (a4 >> 9)) + 24;
  v18 = 0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * ((v16 + v15) ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v16 + v15) ^ v17)));
  v21[0] = v23;
  v21[1] = v24;
  v22 = v23;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id, -348639895 * ((v18 >> 47) ^ v18), sub_1000E2D18, &v22, sub_1000E2D60, v21);
}

uint64_t mlir::SparseElementsAttr::verify(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v78[0] = a1;
  v78[1] = a2;
  v76 = a3;
  v77 = a4;
  v75 = a5;
  v74 = *(a6 + 8);
  mlir::ShapedType::getShape(&v74);
  if (v9 != 1)
  {
    a1(&v82, a2);
    if (v82)
    {
      LODWORD(v79) = 3;
      v80 = "expected 1-d tensor for sparse element values";
      v81[0] = 45;
      v21 = &v79;
      v22 = v85;
      if (v86 >= v87)
      {
        if (v85 <= &v79 && v85 + 24 * v86 > &v79)
        {
          v70 = &v79 - v85;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
          v22 = v85;
          v21 = (v85 + v70);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
          v21 = &v79;
          v22 = v85;
        }
      }

      v23 = &v22[24 * v86];
      v24 = *v21;
      *(v23 + 2) = v21[2];
      *v23 = v24;
      ++v86;
    }

    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
    if (v82)
    {
      mlir::InFlightDiagnostic::report(&v82);
    }

    if (v94 != 1)
    {
      return v13;
    }

    if (v93 != &v94)
    {
      free(v93);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v92;
      v27 = __p;
      if (v92 != __p)
      {
        do
        {
          v26 = sub_10005BEF4(v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v92 = v25;
      operator delete(v27);
    }

    v17 = v89;
    if (!v89)
    {
      goto LABEL_86;
    }

    v28 = v90;
    v19 = v89;
    if (v90 == v89)
    {
      goto LABEL_85;
    }

    do
    {
      v29 = *--v28;
      *v28 = 0;
      if (v29)
      {
        operator delete[]();
      }
    }

    while (v28 != v17);
    goto LABEL_84;
  }

  v73 = *(a5 + 8);
  v72[0] = v78;
  v72[1] = &v76;
  v72[2] = &v73;
  v72[3] = &v74;
  mlir::ShapedType::getShape(&v76);
  v11 = v10;
  mlir::ShapedType::getShape(&v73);
  if (v12 != 2)
  {
    if (v12 != 1 || v11 != 1)
    {
      sub_1000DF2AC(&v82, v72);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
      if (v82)
      {
        mlir::InFlightDiagnostic::report(&v82);
      }

      if (v94 != 1)
      {
        return v13;
      }

      if (v93 != &v94)
      {
        free(v93);
      }

      v42 = __p;
      if (__p)
      {
        v43 = v92;
        v44 = __p;
        if (v92 != __p)
        {
          do
          {
            v43 = sub_10005BEF4(v43 - 1);
          }

          while (v43 != v42);
          v44 = __p;
        }

        v92 = v42;
        operator delete(v44);
      }

      v17 = v89;
      if (!v89)
      {
        goto LABEL_86;
      }

      v45 = v90;
      v19 = v89;
      if (v90 == v89)
      {
        goto LABEL_85;
      }

      do
      {
        v46 = *--v45;
        *v45 = 0;
        if (v46)
        {
          operator delete[]();
        }
      }

      while (v45 != v17);
      goto LABEL_84;
    }

LABEL_41:
    v30 = *mlir::ShapedType::getShape(&v73);
    if (v30 != *mlir::ShapedType::getShape(&v74))
    {
      sub_1000DF2AC(&v82, v72);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
      if (v82)
      {
        mlir::InFlightDiagnostic::report(&v82);
      }

      if (v94 != 1)
      {
        return v13;
      }

      if (v93 != &v94)
      {
        free(v93);
      }

      v47 = __p;
      if (__p)
      {
        v48 = v92;
        v49 = __p;
        if (v92 != __p)
        {
          do
          {
            v48 = sub_10005BEF4(v48 - 1);
          }

          while (v48 != v47);
          v49 = __p;
        }

        v92 = v47;
        operator delete(v49);
      }

      v17 = v89;
      if (!v89)
      {
        goto LABEL_86;
      }

      v50 = v90;
      v19 = v89;
      if (v90 == v89)
      {
        goto LABEL_85;
      }

      do
      {
        v51 = *--v50;
        *v50 = 0;
        if (v51)
        {
          operator delete[]();
        }
      }

      while (v50 != v17);
      goto LABEL_84;
    }

    v71[0] = v78;
    v71[1] = &v76;
    sub_1000DFDB8(&v75, &v82);
    v31 = v82;
    v32 = v83;
    v33 = v84;
    if ((*(v75 + 24) & 1) == 0)
    {
      if (!v30)
      {
        return 1;
      }

      v54 = 0;
      while (1)
      {
        v55 = (v32 & 1) != 0 ? 0 : v33;
        v56 = (v31 + 8 * v55);
        if ((mlir::ElementsAttr::isValidIndex(v76, v77, v56, v11) & 1) == 0)
        {
          break;
        }

        ++v54;
        v33 += v11;
        if (v30 == v54)
        {
          return 1;
        }
      }

      sub_1000DF7BC(&v82, v71, v54, v56, v11);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
      if (v82)
      {
        mlir::InFlightDiagnostic::report(&v82);
      }

      if (v94)
      {
        if (v93 != &v94)
        {
          free(v93);
        }

        v61 = __p;
        if (__p)
        {
          v62 = v92;
          v63 = __p;
          if (v92 != __p)
          {
            do
            {
              v62 = sub_10005BEF4(v62 - 1);
            }

            while (v62 != v61);
            v63 = __p;
          }

          v92 = v61;
          operator delete(v63);
        }

        v64 = v89;
        if (v89)
        {
          v65 = v90;
          v66 = v89;
          if (v90 != v89)
          {
            do
            {
              v67 = *--v65;
              *v65 = 0;
              if (v67)
              {
                operator delete[]();
              }
            }

            while (v65 != v64);
            v66 = v89;
          }

          v90 = v64;
          operator delete(v66);
        }

        v52 = v85;
        if (v85 != v88)
        {
          goto LABEL_87;
        }
      }

      return v13;
    }

    if (v83)
    {
      v34 = 0;
    }

    else
    {
      v34 = v84;
    }

    v79 = v81;
    HIDWORD(v80) = 6;
    v35 = *(v82 + 8 * v34);
    if (v11 >= 7)
    {
      LODWORD(v80) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, v11, 8);
      v36 = v79;
      v37 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      v38 = v11 & 3;
      v39 = vdupq_n_s64(v35);
      v40 = v79 + 2;
      v41 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        *(v40 - 1) = v39;
        *v40 = v39;
        v40 += 4;
        v41 -= 4;
      }

      while (v41);
      if (v11 != (v11 & 0xFFFFFFFFFFFFFFFCLL))
      {
        do
        {
          v36[v37++] = v35;
          --v38;
        }

        while (v38);
      }

LABEL_131:
      LODWORD(v80) = v11;
      if (mlir::ElementsAttr::isValidIndex(v76, v77, v36, v11))
      {
        v13 = 1;
      }

      else
      {
        sub_1000DF7BC(&v82, v71, 0, v79, v80);
        v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
        if (v82)
        {
          mlir::InFlightDiagnostic::report(&v82);
        }

        if (v94 == 1)
        {
          sub_10005BE10(&v83);
        }
      }

      v52 = v79;
      if (v79 != v81)
      {
        goto LABEL_87;
      }

      return v13;
    }

    if (!v11)
    {
      goto LABEL_130;
    }

    v57 = vdupq_n_s64(v11 - 1);
    v58 = v11 + 1;
    v59 = vmovn_s64(vcgeq_u64(v57, xmmword_1002B0D80));
    if (v59.i8[0])
    {
      v81[0] = v35;
      v60 = v58 & 0xE;
      if ((v59.i8[4] & 1) == 0)
      {
        goto LABEL_100;
      }
    }

    else
    {
      v60 = v58 & 0xE;
      if ((v59.i8[4] & 1) == 0)
      {
LABEL_100:
        if (v60 == 2)
        {
          goto LABEL_130;
        }

LABEL_120:
        v68 = vmovn_s64(vcgtq_u64(v57, xmmword_1002B0E30));
        if (v68.i8[0])
        {
          v81[2] = v35;
          if ((v68.i8[4] & 1) == 0)
          {
            goto LABEL_122;
          }
        }

        else if ((v68.i8[4] & 1) == 0)
        {
LABEL_122:
          if (v60 == 4)
          {
            goto LABEL_130;
          }

LABEL_126:
          v69 = vmovn_s64(vcgtq_u64(v57, xmmword_1002B0E40));
          if (v69.i8[0])
          {
            v81[4] = v35;
          }

          if (v69.i8[4])
          {
            v81[5] = v35;
          }

          goto LABEL_130;
        }

        v81[3] = v35;
        if (v60 != 4)
        {
          goto LABEL_126;
        }

LABEL_130:
        v36 = v81;
        goto LABEL_131;
      }
    }

    v81[1] = v35;
    if (v60 == 2)
    {
      goto LABEL_130;
    }

    goto LABEL_120;
  }

  if (*(mlir::ShapedType::getShape(&v73) + 8) == v11)
  {
    goto LABEL_41;
  }

  sub_1000DF2AC(&v82, v72);
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
  if (v82)
  {
    mlir::InFlightDiagnostic::report(&v82);
  }

  if (v94 != 1)
  {
    return v13;
  }

  if (v93 != &v94)
  {
    free(v93);
  }

  v14 = __p;
  if (__p)
  {
    v15 = v92;
    v16 = __p;
    if (v92 != __p)
    {
      do
      {
        v15 = sub_10005BEF4(v15 - 1);
      }

      while (v15 != v14);
      v16 = __p;
    }

    v92 = v14;
    operator delete(v16);
  }

  v17 = v89;
  if (!v89)
  {
    goto LABEL_86;
  }

  v18 = v90;
  v19 = v89;
  if (v90 != v89)
  {
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
LABEL_84:
    v19 = v89;
  }

LABEL_85:
  v90 = v17;
  operator delete(v19);
LABEL_86:
  v52 = v85;
  if (v85 != v88)
  {
LABEL_87:
    free(v52);
  }

  return v13;
}

uint64_t mlir::SparseElementsAttr::getType(mlir::SparseElementsAttr *this)
{
  v1 = *this;
  result = *(*this + 8);
  v3 = *(v1 + 16);
  return result;
}

uint64_t mlir::StridedLayoutAttr::get(mlir::MLIRContext *a1, uint64_t a2, void *a3, uint64_t a4)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id;
  v13[1] = a1;
  v17[0] = sub_1000E3058;
  v17[1] = v13;
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v9 = sub_10002D970(a3, &a3[a4]);
  v10 = __ROR8__(v9 + 16, 16);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ a2 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ a2 ^ 0xFF51AFD7ED558CCDLL)));
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id, (-348639895 * ((v11 >> 47) ^ v11)) ^ v9, sub_1000E2E30, &v15, sub_1000E2E90, v14);
}

uint64_t mlir::SymbolRefAttr::get(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v12 = a1;
  Context = mlir::Attribute::getContext(&v12);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v13[1] = Context;
  v17[0] = sub_1000E3290;
  v17[1] = v13;
  v16[0] = v12;
  v16[1] = a2;
  v16[2] = a3;
  v7 = (v12 >> 4) ^ (v12 >> 9);
  v8 = sub_1000E0184(a2, &a2[2 * a3]);
  v9 = __ROR8__(v8 + 16, 16);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ 0xFF51AFD7ED558CCDLL ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ 0xFF51AFD7ED558CCDLL ^ v7)));
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, (-348639895 * ((v10 >> 47) ^ v10)) ^ v8, sub_1000E3068, &v15, sub_1000E30D0, v14);
}

uint64_t mlir::SymbolRefAttr::getNestedReferences(mlir::SymbolRefAttr *this)
{
  v1 = *this;
  result = *(*this + 16);
  v3 = *(v1 + 24);
  return result;
}

uint64_t mlir::TypeAttr::get(uint64_t a1)
{
  v5 = a1;
  Context = mlir::Type::getContext(&v5);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v6[0] = &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id;
  v6[1] = Context;
  v10[0] = sub_1000E3360;
  v10[1] = v6;
  v9 = v5;
  v3 = 0x9DDFEA08EB382D69 * ((8 * ((v5 >> 4) ^ (v5 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v7[0] = &v9;
  v7[1] = v10;
  v8 = &v9;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v3 >> 47) ^ 0xED558CCD))), sub_1000E32A0, &v8, sub_1000E32B8, v7);
}

uint64_t sub_1000D9BC0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2)
  {
    v7 = mlir::NamedAttribute::operator<(a1, a1 + 2);
    if (v7)
    {
      v20 = *a1;
      v21 = *(a1 + 1);
      *(a3 + 8) = 0;
      if (*(a3 + 12) > 1u)
      {
LABEL_9:
        v8 = 0;
LABEL_14:
        v13 = (*a3 + 16 * v8);
        *v13 = v20;
        v13[1] = v21;
        *(a3 + 8) += 2;
        return v7 ^ 1u;
      }
    }

    else
    {
      v20 = *(a1 + 1);
      v21 = *a1;
      *(a3 + 8) = 0;
      if (*(a3 + 12) > 1u)
      {
        goto LABEL_9;
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), 2uLL, 16);
    v8 = *(a3 + 8);
    goto LABEL_14;
  }

  if (a2 == 1)
  {
    v19 = *a1;
    *(a3 + 8) = 0;
    if (*(a3 + 12))
    {
      v5 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), 1uLL, 16);
      v5 = *(a3 + 8);
    }

    result = 0;
    *(*a3 + 16 * v5) = v19;
    ++*(a3 + 8);
  }

  else if (a2)
  {
    v9 = 16 * a2;
    *(a3 + 8) = 0;
    v10 = (16 * a2) >> 4;
    if (v10 <= *(a3 + 12))
    {
      v12 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v10, 16);
      v12 = *(a3 + 8);
    }

    memcpy((*a3 + 16 * v12), a1, v9);
    v14 = a1;
    *(a3 + 8) += v9 >> 4;
    v15 = v9 - 16;
    do
    {
      if (!v15)
      {
        return 0;
      }

      v16 = v14 + 2;
      v17 = mlir::NamedAttribute::operator<(v14 + 2, v14);
      v15 -= 16;
      v14 = v16;
    }

    while (!v17);
    v18 = *(a3 + 8);
    if (v18 >= 2)
    {
      qsort(*a3, v18, 0x10uLL, sub_100109F48);
    }

    return 1;
  }

  else
  {
    result = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

uint64_t mlir::DictionaryAttr::sortInPlace(uint64_t **a1)
{
  v1 = *(a1 + 2);
  if (v1 < 2)
  {
    return 0;
  }

  v4 = *a1;
  if (v1 != 2)
  {
    for (i = 16 * v1 - 16; i; i -= 16)
    {
      v9 = v4 + 2;
      v10 = mlir::NamedAttribute::operator<(v4 + 2, v4);
      v4 = v9;
      if (v10)
      {
        v11 = *(a1 + 2);
        if (v11 >= 2)
        {
          qsort(*a1, v11, 0x10uLL, sub_100109F48);
        }

        return 1;
      }
    }

    return 0;
  }

  v5 = mlir::NamedAttribute::operator<(*a1, v4 + 2);
  if ((v5 & 1) == 0)
  {
    v6 = *a1;
    v7 = **a1;
    *v6 = *(*a1 + 1);
    *(v6 + 1) = v7;
  }

  return v5 ^ 1u;
}

void mlir::DictionaryAttr::findDuplicate(uint64_t **a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 2);
    if (v5 >= 2)
    {
      v10 = *a1;
      if (v5 == 2)
      {
        if ((mlir::NamedAttribute::operator<(*a1, v10 + 2) & 1) == 0)
        {
          v11 = *a1;
          v12 = **a1;
          *v11 = *(*a1 + 1);
          *(v11 + 1) = v12;
        }
      }

      else
      {
        v17 = 16 * v5 - 16;
        while (v17)
        {
          v18 = v10 + 2;
          v19 = mlir::NamedAttribute::operator<(v10 + 2, v10);
          v17 -= 16;
          v10 = v18;
          if (v19)
          {
            v20 = *(a1 + 2);
            if (v20 >= 2)
            {
              qsort(*a1, v20, 0x10uLL, sub_100109F48);
            }

            break;
          }
        }
      }
    }
  }

  v6 = *(a1 + 2);
  if (v6 <= 1)
  {
    goto LABEL_4;
  }

  v7 = *a1;
  if (v6 != 2)
  {
    v13 = 16 * v6 + 16;
    while (v13 != 32)
    {
      v14 = v7 + 2;
      v15 = *v7;
      v21 = *(v7 + 1);
      v22 = v15;
      Name = mlir::NamedAttribute::getName(&v22);
      v13 -= 16;
      v7 += 2;
      if (Name == mlir::NamedAttribute::getName(&v21))
      {
        if (!v13)
        {
          goto LABEL_4;
        }

        v9 = *(v14 - 1);
        goto LABEL_17;
      }
    }

    goto LABEL_4;
  }

  v8 = mlir::NamedAttribute::getName(v7);
  if (v8 != mlir::NamedAttribute::getName((v7 + 2)))
  {
LABEL_4:
    *a3 = 0;
    a3[16] = 0;
    return;
  }

  v9 = *v7;
LABEL_17:
  *a3 = v9;
  a3[16] = 1;
}

uint64_t mlir::DictionaryAttr::get(mlir::DictionaryAttr *this, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v20 = v22;
    v21 = 0x800000000;
    v6 = sub_1000D9BC0(a2, a3, &v20);
    if (v6)
    {
      v7 = v20;
    }

    else
    {
      v7 = a2;
    }

    if (v6)
    {
      v8 = v21;
    }

    else
    {
      v8 = a3;
    }

    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(this);
    v15[0] = &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
    v15[1] = this;
    v19[0] = sub_10010AA2C;
    v19[1] = v15;
    v18[0] = v7;
    v18[1] = v8;
    v10 = sub_100109F90(v7, &v7[4 * v8]);
    v11 = HIDWORD(v10) ^ 0xFF51AFD7ED558CCDLL;
    v12 = 0x9DDFEA08EB382D69 * ((8 * v10 + 8) ^ v11);
    v16[0] = v18;
    v16[1] = v19;
    v17 = v18;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 32) >> 15) ^ (-348639895 * (v11 ^ (v12 >> 47) ^ v12))), sub_10010A89C, &v17, sub_10010A8F4, v16);
    if (v20 != v22)
    {
      v14 = result;
      free(v20);
      return v14;
    }
  }

  else
  {

    return mlir::DictionaryAttr::getEmpty(this, a2);
  }

  return result;
}

uint64_t mlir::DictionaryAttr::getWithSorted(mlir::MLIRContext *a1, mlir::MLIRContext *a2, uint64_t a3)
{
  if (a3)
  {
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
    v12[0] = &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
    v12[1] = a1;
    v16[0] = sub_10010AA2C;
    v16[1] = v12;
    v15[0] = a2;
    v15[1] = a3;
    v8 = sub_100109F90(a2, a2 + 4 * a3);
    v9 = HIDWORD(v8) ^ 0xFF51AFD7ED558CCDLL;
    v10 = 0x9DDFEA08EB382D69 * ((8 * v8 + 8) ^ v9);
    v13[0] = v15;
    v13[1] = v16;
    v14 = v15;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10))), sub_10010A89C, &v14, sub_10010A8F4, v13);
  }

  else
  {

    return mlir::DictionaryAttr::getEmpty(a1, a2);
  }
}

uint64_t mlir::DictionaryAttr::get(uint64_t a1, const void *a2, size_t a3)
{
  v3 = (16 * *(*a1 + 16)) >> 4;
  if (v3 < 1)
  {
    return 0;
  }

  v6 = *(*a1 + 8);
  while (1)
  {
    v7 = v3 >> 1;
    v8 = &v6[2 * (v3 >> 1)];
    Name = mlir::NamedAttribute::getName(v8);
    v10 = *(Name + 24);
    if (a3 >= v10)
    {
      v11 = *(Name + 24);
    }

    else
    {
      v11 = a3;
    }

    if (v11)
    {
      v12 = memcmp(*(Name + 16), a2, v11);
      if (v12)
      {
        if ((v12 & 0x80000000) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_3;
      }
    }

    if (v10 == a3)
    {
      return *(v8 + 1);
    }

    if (v10 >= a3)
    {
      goto LABEL_4;
    }

LABEL_3:
    v6 = (v8 + 16);
    v7 = v3 + ~v7;
LABEL_4:
    v3 = v7;
    if (v7 <= 0)
    {
      return 0;
    }
  }
}

uint64_t mlir::DictionaryAttr::get(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v5 = (16 * v3) >> 4;
  if (v5 >= 17)
  {
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    while (1)
    {
      v8 = v5 >> 1;
      i = &v4[2 * (v5 >> 1)];
      Name = mlir::NamedAttribute::getName(i);
      v11 = *(Name + 24);
      v12 = v7 >= v11 ? *(Name + 24) : v7;
      if (v12)
      {
        v13 = memcmp(*(Name + 16), v6, v12);
        if (v13)
        {
          break;
        }
      }

      if (v11 == v7)
      {
        return *(i + 1);
      }

      if (v11 < v7)
      {
        goto LABEL_3;
      }

LABEL_4:
      v5 = v8;
      if (v8 <= 0)
      {
        return 0;
      }
    }

    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_3:
    v4 = (i + 16);
    v8 = v5 + ~v8;
    goto LABEL_4;
  }

  if (!v3)
  {
    return 0;
  }

  v14 = 16 * v3;
  for (i = *(*a1 + 8); mlir::NamedAttribute::getName(i) != a2; i = (i + 16))
  {
    v14 -= 16;
    if (!v14)
    {
      return 0;
    }
  }

  return *(i + 1);
}

uint64_t mlir::DictionaryAttr::contains(uint64_t a1, const void *a2, size_t a3)
{
  v3 = (16 * *(*a1 + 16)) >> 4;
  if (v3 < 1)
  {
    return 0;
  }

  v6 = *(*a1 + 8);
  while (1)
  {
    v7 = v3 >> 1;
    Name = mlir::NamedAttribute::getName((v6 + 16 * (v3 >> 1)));
    v9 = *(Name + 24);
    if (a3 >= v9)
    {
      v10 = *(Name + 24);
    }

    else
    {
      v10 = a3;
    }

    if (v10)
    {
      v11 = memcmp(*(Name + 16), a2, v10);
      if (v11)
      {
        if ((v11 & 0x80000000) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_3;
      }
    }

    if (v9 == a3)
    {
      return 1;
    }

    if (v9 >= a3)
    {
      goto LABEL_4;
    }

LABEL_3:
    v6 += 16 * (v3 >> 1) + 16;
    v7 = v3 + ~v7;
LABEL_4:
    v3 = v7;
    if (v7 <= 0)
    {
      return 0;
    }
  }
}

uint64_t mlir::DictionaryAttr::getEmptyUnchecked(mlir::DictionaryAttr *this, mlir::MLIRContext *a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(this);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
  v8[1] = this;
  v12[0] = sub_10010ABCC;
  v12[1] = v8;
  v11[0] = 0;
  v11[1] = 0;
  v4 = sub_100109F90(0, 0);
  v5 = HIDWORD(v4) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * ((8 * v4 + 8) ^ v5);
  v9[0] = v11;
  v9[1] = v12;
  v10 = v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), sub_10010AA3C, &v10, sub_10010AA94, v9);
}

void *mlir::StridedLayoutAttr::print(void *this, llvm::raw_ostream *a2)
{
  v3 = this;
  v4 = *(a2 + 4);
  if ((*(a2 + 3) - v4) > 8)
  {
    *(v4 + 8) = 91;
    *v4 = *"strided<[";
    *(a2 + 4) += 9;
    v5 = *this;
    v6 = *(*this + 24);
    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  this = llvm::raw_ostream::write(a2, "strided<[", 9uLL);
  v5 = *v3;
  v6 = *(*v3 + 24);
  if (v6)
  {
LABEL_5:
    v7 = *(v5 + 16);
    if (*v7 == 0x8000000000000000)
    {
      v8 = *(a2 + 4);
      if (*(a2 + 3) == v8)
      {
        this = llvm::raw_ostream::write(a2, "?", 1uLL);
        if (v6 == 1)
        {
          goto LABEL_12;
        }
      }

      else
      {
        *v8 = 63;
        ++*(a2 + 4);
        if (v6 == 1)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      this = llvm::raw_ostream::operator<<(a2, *v7);
      if (v6 == 1)
      {
        goto LABEL_12;
      }
    }

    v13 = v7 + 1;
    for (i = 8 * v6 - 8; i; i -= 8)
    {
      v15 = *(a2 + 4);
      if (*(a2 + 3) - v15 > 1uLL)
      {
        *v15 = 8236;
        *(a2 + 4) += 2;
        v16 = *v13;
        if (*v13 == 0x8000000000000000)
        {
LABEL_27:
          v17 = *(a2 + 4);
          if (*(a2 + 3) == v17)
          {
            this = llvm::raw_ostream::write(a2, "?", 1uLL);
          }

          else
          {
            *v17 = 63;
            ++*(a2 + 4);
          }

          goto LABEL_22;
        }
      }

      else
      {
        this = llvm::raw_ostream::write(a2, ", ", 2uLL);
        v16 = *v13;
        if (*v13 == 0x8000000000000000)
        {
          goto LABEL_27;
        }
      }

      this = llvm::raw_ostream::operator<<(a2, v16);
LABEL_22:
      ++v13;
    }
  }

LABEL_12:
  v9 = *(a2 + 4);
  if (*(a2 + 3) == v9)
  {
    this = llvm::raw_ostream::write(a2, "]", 1uLL);
    if (!*(*v3 + 8))
    {
      goto LABEL_33;
    }
  }

  else
  {
    *v9 = 93;
    ++*(a2 + 4);
    if (!*(*v3 + 8))
    {
LABEL_33:
      v12 = *(a2 + 4);
      if (*(a2 + 3) != v12)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }
  }

  v10 = *(a2 + 4);
  if ((*(a2 + 3) - v10) <= 9)
  {
    this = llvm::raw_ostream::write(a2, ", offset: ", 0xAuLL);
    v11 = *(*v3 + 8);
    if (v11 != 0x8000000000000000)
    {
      goto LABEL_18;
    }

LABEL_31:
    v18 = *(a2 + 4);
    if (*(a2 + 3) == v18)
    {
      this = llvm::raw_ostream::write(a2, "?", 1uLL);
      v12 = *(a2 + 4);
      if (*(a2 + 3) != v12)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }

    *v18 = 63;
    ++*(a2 + 4);
    goto LABEL_33;
  }

  *(v10 + 8) = 8250;
  *v10 = *", offset: ";
  *(a2 + 4) += 10;
  v11 = *(*v3 + 8);
  if (v11 == 0x8000000000000000)
  {
    goto LABEL_31;
  }

LABEL_18:
  this = llvm::raw_ostream::operator<<(a2, v11);
  v12 = *(a2 + 4);
  if (*(a2 + 3) != v12)
  {
LABEL_34:
    *v12 = 62;
    ++*(a2 + 4);
    return this;
  }

LABEL_36:

  return llvm::raw_ostream::write(a2, ">", 1uLL);
}

uint64_t mlir::makeStridedLinearLayoutMap(uint64_t a1, uint64_t a2, mlir *this, mlir::MLIRContext *a4)
{
  if (this == 0x8000000000000000)
  {
    AffineSymbolExpr = mlir::getAffineSymbolExpr(0, a4, 0x8000000000000000);
    v8 = 1;
    v18 = AffineSymbolExpr;
    if (!a2)
    {
      return mlir::AffineMap::get(a2, v8, AffineSymbolExpr);
    }
  }

  else
  {
    AffineSymbolExpr = mlir::getAffineConstantExpr(this, a4, this);
    v8 = 0;
    v18 = AffineSymbolExpr;
    if (!a2)
    {
      return mlir::AffineMap::get(a2, v8, AffineSymbolExpr);
    }
  }

  v9 = 0;
  v10 = 8 * a2;
  do
  {
    v14 = *(a1 + 8 * v9);
    AffineDimExpr = mlir::getAffineDimExpr(v9, a4, AffineSymbolExpr);
    if (v14 == 0x8000000000000000)
    {
      AffineConstantExpr = mlir::getAffineSymbolExpr(v8, a4, v15);
      v8 = (v8 + 1);
    }

    else
    {
      AffineConstantExpr = mlir::getAffineConstantExpr(v14, a4, v15);
    }

    v12 = mlir::AffineExpr::operator*(&AffineDimExpr, AffineConstantExpr);
    v13 = mlir::AffineExpr::operator+(&v18, v12);
    v18 = v13;
    v9 = (v9 + 1);
    v10 -= 8;
  }

  while (v10);
  AffineSymbolExpr = v13;
  return mlir::AffineMap::get(a2, v8, AffineSymbolExpr);
}

uint64_t mlir::StridedLayoutAttr::verifyLayout(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, uint64_t), uint64_t a5)
{
  if (a3 == *(*a1 + 24))
  {
    return 1;
  }

  a4(v22, a5);
  if (v22[0])
  {
    v19 = 3;
    v20 = "expected the number of strides to match the rank";
    v21 = 48;
    v6 = &v19;
    v7 = v23;
    if (v24 >= v25)
    {
      if (v23 <= &v19 && v23 + 24 * v24 > &v19)
      {
        v18 = &v19 - v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v7 = v23;
        v6 = (v23 + v18);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v6 = &v19;
        v7 = v23;
      }
    }

    v8 = &v7[24 * v24];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v24;
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = sub_10005BEF4(v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
      {
        do
        {
          v16 = *--v14;
          *v14 = 0;
          if (v16)
          {
            operator delete[]();
          }
        }

        while (v14 != v13);
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != v26)
    {
      free(v23);
    }
  }

  return v5;
}

uint64_t mlir::StringAttr::getEmptyStringAttrUnchecked(mlir::StringAttr *this, mlir::MLIRContext *a2)
{
  v3 = mlir::NoneType::get(this, a2);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(this);
  v7[0] = &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
  v7[1] = this;
  v11[0] = sub_10010AE54;
  v11[1] = v7;
  v10[0] = "";
  v10[1] = 0;
  v10[2] = v3;
  v5 = 0xBF58476D1CE4E5B9 * ((v3 >> 4) ^ (v3 >> 9) | (llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue("", 0) << 32));
  v8[0] = v10;
  v8[1] = v11;
  v9 = v10;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, (v5 >> 31) ^ v5, sub_10010ABDC, &v9, sub_10010AC4C, v8);
}

uint64_t mlir::StringAttr::get(mlir::StringAttr *this, size_t *a2, const llvm::Twine *a3)
{
  v4 = *(a2 + 32);
  if (v4 <= 1)
  {

    return mlir::StringAttr::get(this, a2);
  }

  v18 = v20;
  v19 = xmmword_1002B0260;
  if (*(a2 + 33) != 1)
  {
    goto LABEL_11;
  }

  if (v4 - 5 < 2)
  {
    v6 = *a2;
    v7 = a2[1];
    goto LABEL_20;
  }

  if (v4 != 4)
  {
    if (v4 == 3)
    {
      v6 = *a2;
      if (*a2)
      {
        v7 = strlen(*a2);
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_20;
    }

LABEL_11:
    llvm::Twine::toVector(a2, &v18);
    v6 = v18;
    v7 = v19;
    goto LABEL_20;
  }

  v8 = *(*a2 + 23);
  if (v8 >= 0)
  {
    v6 = *a2;
  }

  else
  {
    v6 = **a2;
  }

  if (v8 >= 0)
  {
    v7 = *(*a2 + 23);
  }

  else
  {
    v7 = *(*a2 + 8);
  }

LABEL_20:
  v9 = mlir::NoneType::get(this, a2);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(this);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
  v13[1] = this;
  v17[0] = sub_10010AF5C;
  v17[1] = v13;
  v16[0] = v6;
  v16[1] = v7;
  v16[2] = v9;
  v11 = 0xBF58476D1CE4E5B9 * ((v9 >> 4) ^ (v9 >> 9) | (llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(v6, v7) << 32));
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, (v11 >> 31) ^ v11, sub_10010AE9C, &v15, sub_10010AF0C, v14);
  if (v18 != v20)
  {
    v12 = result;
    free(v18);
    return v12;
  }

  return result;
}

uint64_t mlir::StringAttr::get(unsigned __int8 *a1, uint64_t a2)
{
  v14 = a2;
  v20 = v22;
  v21 = xmmword_1002B0260;
  Context = mlir::Type::getContext(&v14);
  v4 = a1;
  if (a1[33] != 1)
  {
    goto LABEL_14;
  }

  v5 = a1[32];
  if (v5 > 4)
  {
    if (v5 - 5 < 2)
    {
      v7 = *a1;
      v8 = *(v4 + 1);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v5 == 1)
  {
    v8 = 0;
    v7 = 0;
    goto LABEL_15;
  }

  if (v5 == 3)
  {
    v7 = *a1;
    if (*v4)
    {
      v8 = strlen(*v4);
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_15;
  }

  if (v5 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(a1, &v20);
    v7 = v20;
    v8 = v21;
    goto LABEL_15;
  }

  v6 = *(*a1 + 23);
  if (v6 >= 0)
  {
    v7 = *a1;
  }

  else
  {
    v7 = **a1;
  }

  if (v6 >= 0)
  {
    v8 = *(*v4 + 23);
  }

  else
  {
    v8 = *(*v4 + 8);
  }

LABEL_15:
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
  v15[1] = Context;
  v19[0] = sub_10010B064;
  v19[1] = v15;
  v18[0] = v7;
  v18[1] = v8;
  v10 = v14;
  v18[2] = v14;
  v11 = 0xBF58476D1CE4E5B9 * ((v10 >> 4) ^ (v10 >> 9) | (llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(v7, v8) << 32));
  v16[0] = v18;
  v16[1] = v19;
  v17 = v18;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, (v11 >> 31) ^ v11, sub_10010AFA4, &v17, sub_10010B014, v16);
  if (v20 != v22)
  {
    v13 = result;
    free(v20);
    return v13;
  }

  return result;
}

uint64_t mlir::StringAttr::getValue(mlir::StringAttr *this)
{
  v1 = *this;
  result = *(*this + 16);
  v3 = *(v1 + 24);
  return result;
}

uint64_t mlir::SymbolRefAttr::get(mlir::StringAttr *a1, size_t a2, const llvm::Twine *a3, _DWORD *a4, uint64_t a5)
{
  v15 = 261;
  v14[0] = a2;
  v14[1] = a3;
  v16 = mlir::StringAttr::get(a1, v14, a3);
  Context = mlir::Attribute::getContext(&v16);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v17[0] = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v17[1] = Context;
  v21[0] = sub_1000E3290;
  v21[1] = v17;
  v20[0] = v16;
  v20[1] = a4;
  v20[2] = a5;
  v9 = (v16 >> 4) ^ (v16 >> 9);
  v10 = sub_1000E0184(a4, &a4[2 * a5]);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)));
  v18[0] = v20;
  v18[1] = v21;
  v19 = v20;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, sub_1000E3068, &v19, sub_1000E30D0, v18);
}

uint64_t mlir::SymbolRefAttr::get(mlir::StringAttr *a1, size_t a2, const llvm::Twine *a3)
{
  v11 = 261;
  v10[0] = a2;
  v10[1] = a3;
  v12 = mlir::StringAttr::get(a1, v10, a3);
  Context = mlir::Attribute::getContext(&v12);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v13[1] = Context;
  v17[0] = sub_1000E3290;
  v17[1] = v13;
  v5 = (v12 >> 4) ^ (v12 >> 9);
  v16[1] = 0;
  v16[2] = 0;
  v16[0] = v12;
  v6 = sub_1000E0184(0, 0);
  v7 = __ROR8__(v6 + 16, 16);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v5)));
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, (-348639895 * ((v8 >> 47) ^ v8)) ^ v6, sub_1000E3068, &v15, sub_1000E30D0, v14);
}

uint64_t mlir::SymbolRefAttr::get(uint64_t a1)
{
  v8 = a1;
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v9[1] = Context;
  v13[0] = sub_1000E3290;
  v13[1] = v9;
  v3 = (v8 >> 4) ^ (v8 >> 9);
  v12[1] = 0;
  v12[2] = 0;
  v12[0] = v8;
  v4 = sub_1000E0184(0, 0);
  v5 = __ROR8__(v4 + 16, 16);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ 0xFF51AFD7ED558CCDLL ^ v3)));
  v10[0] = v12;
  v10[1] = v13;
  v11 = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, (-348639895 * ((v6 >> 47) ^ v6)) ^ v4, sub_1000E3068, &v11, sub_1000E30D0, v10);
}

uint64_t mlir::SymbolRefAttr::getLeafReference(mlir::SymbolRefAttr *this)
{
  v1 = *this;
  v2 = *(*this + 24);
  if (v2)
  {
    v1 = *(*(v1 + 16) + 8 * v2 - 8);
  }

  return *(v1 + 8);
}

uint64_t mlir::IntegerAttr::getBoolAttrUnchecked(uint64_t a1, unsigned int a2)
{
  v8 = a1;
  Context = mlir::Type::getContext(&v8);
  v7 = 1;
  v6 = a2;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  v9[1] = Context;
  result = sub_10010B0AC(AttributeUniquer, sub_10010B2F0, v9, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, &v8, &v6);
  if (v7 >= 0x41)
  {
    if (v6)
    {
      operator delete[]();
    }
  }

  return result;
}

void *mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t mlir::DenseElementsAttr::AttributeElementIterator::operator*(void *a1)
{
  v2 = *a1;
  __dst = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&__dst);
  v4 = ElementType;
  v5 = *(*ElementType + 136);
  if (ElementType && v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v19 = a1[1];
    v20 = *(v2 + 32);
    v21 = *(v2 + 24);
    __dst = *(v2 + 8);
    v22 = mlir::ShapedType::getElementType(&__dst);
    v23 = sub_1000DC620(v22);
    if (v21)
    {
      v24 = 0;
    }

    else
    {
      v24 = v19;
    }

    if (v23 == 1)
    {
      v25 = (*(v20 + (v24 >> 3)) >> (v24 & 7)) & 1;
      DWORD2(__dst) = 1;
      *&__dst = v25;
    }

    else
    {
      DWORD2(__dst) = v23;
      if (v23 >= 0x41)
      {
        llvm::APInt::initSlowCase(&__dst);
      }

      *&__dst = 0;
      if (v23)
      {
        v26 = ((v23 - (v23 != 0)) >> 3) + 1;
      }

      else
      {
        v26 = 0;
      }

      if (v26)
      {
        memmove(&__dst, (v20 + ((((v23 - (v23 != 0) + 8 * (v23 != 0)) & 0xFFFFFFFFFFFFFFF8) * v24) >> 3)), v26);
      }
    }

    result = mlir::IntegerAttr::get(v4, &__dst);
    if (DWORD2(__dst) < 0x41 || !__dst)
    {
      return result;
    }

LABEL_22:
    operator delete[]();
  }

  *&v69 = sub_100066208(ElementType);
  *(&v69 + 1) = v6;
  if (v69)
  {
    v7 = a1[1];
    v8 = *(v2 + 32);
    v9 = *(v2 + 24);
    __dst = *(v2 + 8);
    v10 = mlir::ShapedType::getElementType(&__dst);
    v11 = sub_1000DC620(v10);
    FloatSemantics = mlir::FloatType::getFloatSemantics(&v69);
    *&__dst = v8;
    *(&__dst + 1) = v9;
    v79 = v7;
    v80 = v11;
    v81 = FloatSemantics;
    sub_1000DC190(&__dst, v82);
    v75 = v4;
    Context = mlir::Type::getContext(&v75);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v84 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
    v85 = Context;
    ParametricStorageTypeImpl = sub_1000E1A18(AttributeUniquer, sub_1000E1E74, &v84, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v75, v82);
    v16 = *&v82[0];
    if (llvm::APFloatBase::PPCDoubleDouble(ParametricStorageTypeImpl) != v16)
    {
      p_dst = v82;
LABEL_7:
      llvm::detail::IEEEFloat::~IEEEFloat(p_dst);
      return ParametricStorageTypeImpl;
    }

    p_dst = v82;
    goto LABEL_38;
  }

  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v27 = v4;
  }

  else
  {
    v27 = 0;
  }

  v71 = v27;
  if (!v27)
  {
    v42 = *(v2 + 32);
    if ((*(v2 + 24) & 1) == 0)
    {
      v42 += 2 * a1[1];
    }

    LOWORD(v81) = 261;
    v44 = *v42;
    v43 = v42[1];
    *&__dst = v44;
    *(&__dst + 1) = v43;
    return mlir::StringAttr::get(&__dst, v4);
  }

  v28 = mlir::ComplexType::getElementType(&v71);
  v29 = a1[1];
  v30 = *(v2 + 24);
  *&v69 = *(v2 + 32);
  *(&v69 + 1) = v30;
  *&v70 = v29;
  __dst = *(v2 + 8);
  *&__dst = mlir::ShapedType::getElementType(&__dst);
  v31 = mlir::ComplexType::getElementType(&__dst);
  *(&v70 + 1) = sub_1000DC620(v31);
  v32 = *v28;
  if (*(*v28 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    {
      v33 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
      v34 = *(v32 + 8);
      v35 = *(v32 + 16);
      if (!v35)
      {
        goto LABEL_63;
      }
    }

    else
    {
      sub_100299348();
      v33 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
      v34 = *(v32 + 8);
      v35 = *(v32 + 16);
      if (!v35)
      {
        goto LABEL_63;
      }
    }

    v36 = v34;
    v37 = v35;
    do
    {
      v38 = v37 >> 1;
      v39 = &v36[2 * (v37 >> 1)];
      v41 = *v39;
      v40 = v39 + 2;
      v37 += ~(v37 >> 1);
      if (v41 < v33)
      {
        v36 = v40;
      }

      else
      {
        v37 = v38;
      }
    }

    while (v37);
    if (v36 != &v34[2 * v35] && *v36 == v33)
    {
      v52 = v36[1];
      goto LABEL_65;
    }

LABEL_63:
    v52 = 0;
LABEL_65:
    *&__dst = v28;
    *(&__dst + 1) = v52;
    v53 = mlir::FloatType::getFloatSemantics(&__dst);
    v82[0] = v69;
    v82[1] = v70;
    v83 = v53;
    mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(v82, &v84);
    sub_1000D25AC(&v84, v82, &__dst);
    if (v87 >= 0x41)
    {
      v54 = v86;
      if (v86)
      {
        operator delete[]();
      }
    }

    if (v85 >= 0x41)
    {
      v54 = v84;
      if (v84)
      {
        operator delete[]();
      }
    }

    v55 = __dst;
    v56 = llvm::APFloatBase::PPCDoubleDouble(v54);
    if (v56 == v55)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(&v84, &__dst);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(&v84, &__dst);
    }

    v72 = v28;
    v57 = mlir::Type::getContext(&v72);
    v58 = mlir::MLIRContext::getAttributeUniquer(v57);
    v75 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
    v76 = v57;
    v59 = sub_1000E1A18(v58, sub_1000E1E74, &v75, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v72, &v84);
    if (v56 == v84)
    {
      v60 = sub_10002B154(&v84);
      if (v56 != v80)
      {
        goto LABEL_76;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v84);
      if (v56 != v80)
      {
LABEL_76:
        llvm::detail::IEEEFloat::IEEEFloat(v60, &v80);
        goto LABEL_79;
      }
    }

    llvm::detail::DoubleAPFloat::DoubleAPFloat(v60, &v80);
LABEL_79:
    v72 = v28;
    v61 = mlir::Type::getContext(&v72);
    v62 = mlir::MLIRContext::getAttributeUniquer(v61);
    v75 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
    v76 = v61;
    v63 = sub_1000E1A18(v62, sub_1000E1E74, &v75, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v72, &v84);
    if (v56 == v84)
    {
      sub_10002B154(&v84);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v84);
    }

    v64 = mlir::Type::getContext(&v71);
    v77[0] = v59;
    v77[1] = v63;
    v65 = mlir::MLIRContext::getAttributeUniquer(v64);
    v88 = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
    v89 = v64;
    v84 = sub_1000E0AE4;
    v85 = &v88;
    v75 = v77;
    v76 = 2;
    v66 = sub_1000E0184(v77, &__dst);
    v67 = HIDWORD(v66) ^ 0xFF51AFD7ED558CCDLL;
    v68 = 0x9DDFEA08EB382D69 * ((8 * v66 + 8) ^ v67);
    v72 = &v75;
    v73 = &v84;
    v74 = &v75;
    ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(v65, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v67 ^ (v68 >> 47) ^ v68)) >> 32) >> 15) ^ (-348639895 * (v67 ^ (v68 >> 47) ^ v68))), sub_1000E08C8, &v74, sub_1000E0920, &v72);
    if (v56 == v80)
    {
      sub_10002B154(&v80);
      p_dst = &__dst;
      if (v56 != __dst)
      {
        goto LABEL_7;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v80);
      p_dst = &__dst;
      if (v56 != __dst)
      {
        goto LABEL_7;
      }
    }

LABEL_38:
    sub_10002B154(p_dst);
    return ParametricStorageTypeImpl;
  }

  mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v69, &__dst);
  DWORD2(v82[0]) = DWORD2(__dst);
  if (DWORD2(__dst) > 0x40)
  {
    llvm::APInt::initSlowCase(v82, &__dst);
  }

  *&v82[0] = __dst;
  v45 = mlir::IntegerAttr::get(v28, v82);
  if (DWORD2(v82[0]) >= 0x41 && *&v82[0])
  {
    operator delete[]();
  }

  DWORD2(v82[0]) = v80;
  if (v80 > 0x40)
  {
    llvm::APInt::initSlowCase(v82, &v79);
  }

  *&v82[0] = v79;
  v46 = mlir::IntegerAttr::get(v28, v82);
  if (DWORD2(v82[0]) >= 0x41 && *&v82[0])
  {
    operator delete[]();
  }

  v47 = mlir::Type::getContext(&v71);
  v88 = v45;
  v89 = v46;
  v48 = mlir::MLIRContext::getAttributeUniquer(v47);
  v72 = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
  v73 = v47;
  *&v82[0] = sub_1000E0AE4;
  *(&v82[0] + 1) = &v72;
  v84 = &v88;
  v85 = 2;
  v49 = sub_1000E0184(&v88, &v90);
  v50 = HIDWORD(v49) ^ 0xFF51AFD7ED558CCDLL;
  v51 = 0x9DDFEA08EB382D69 * ((8 * v49 + 8) ^ v50);
  v76 = v82;
  v77[0] = &v84;
  v75 = &v84;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v48, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v50 ^ (v51 >> 47) ^ v51)) >> 32) >> 15) ^ (-348639895 * (v50 ^ (v51 >> 47) ^ v51))), sub_1000E08C8, v77, sub_1000E0920, &v75);
  if (v80 >= 0x41 && v79)
  {
    operator delete[]();
  }

  if (DWORD2(__dst) >= 0x41 && __dst)
  {
    goto LABEL_22;
  }

  return result;
}

void *mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  *a1 = *(a2 + 32);
  a1[1] = v4;
  a1[2] = a3;
  v7 = *(a2 + 8);
  ElementType = mlir::ShapedType::getElementType(&v7);
  a1[3] = sub_1000DC620(ElementType);
  return a1;
}

uint64_t *mlir::DenseElementsAttr::IntElementIterator::operator*@<X0>(uint64_t *result@<X0>, llvm::APInt *a2@<X8>)
{
  if ((result[1] & 1) == 0)
  {
    v2 = result[2];
    v4 = result[3];
    v3 = *result;
    if (v4 != 1)
    {
      goto LABEL_3;
    }

LABEL_10:
    v6 = (*(v3 + (v2 >> 3)) >> (v2 & 7)) & 1;
    *(a2 + 2) = 1;
    *a2 = v6;
    return result;
  }

  v2 = 0;
  v3 = *result;
  v4 = result[3];
  if (v4 == 1)
  {
    goto LABEL_10;
  }

LABEL_3:
  *(a2 + 2) = v4;
  if (v4 >= 0x41)
  {
    llvm::APInt::initSlowCase(a2);
  }

  *a2 = 0;
  if (v4)
  {
    v5 = ((v4 - (v4 != 0)) >> 3) + 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {

    return memmove(a2, (v3 + ((((v4 - (v4 != 0) + 8 * (v4 != 0)) & 0xFFFFFFFFFFFFFFF8) * v2) >> 3)), v5);
  }

  return result;
}

const llvm::APInt *sub_1000DC190@<X0>(llvm::APFloatBase *a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 8))
  {
    v4 = 0;
    v5 = *a1;
    v6 = *(a1 + 3);
    if (v6 != 1)
    {
      goto LABEL_3;
    }

LABEL_10:
    v8 = ((*(v5 + (v4 >> 3)) >> (v4 & 7)) & 1);
    v13 = 1;
    v12 = v8;
    goto LABEL_11;
  }

  v4 = *(a1 + 2);
  v6 = *(a1 + 3);
  v5 = *a1;
  if (v6 == 1)
  {
    goto LABEL_10;
  }

LABEL_3:
  v13 = v6;
  if (v6 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v12);
  }

  v12 = 0;
  if (v6)
  {
    v7 = ((v6 - (v6 != 0)) >> 3) + 1;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
LABEL_11:
    v11 = *(a1 + 4);
    if (llvm::APFloatBase::PPCDoubleDouble(a1) == v11)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v10 = memmove(&v12, (v5 + ((((v6 - (v6 != 0) + 8 * (v6 != 0)) & 0xFFFFFFFFFFFFFFF8) * v4) >> 3)), v7);
  v11 = *(a1 + 4);
  if (llvm::APFloatBase::PPCDoubleDouble(v10) == v11)
  {
LABEL_16:
    llvm::detail::DoubleAPFloat::DoubleAPFloat(a2, v11);
  }

LABEL_12:
  result = llvm::detail::IEEEFloat::IEEEFloat(a2, v11, &v12);
  if (v13 >= 0x41)
  {
    result = v12;
    if (v12)
    {
      operator delete[]();
    }
  }

  return result;
}

uint64_t *mlir::DenseElementsAttr::ComplexIntElementIterator::operator*@<X0>(uint64_t *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = result;
  v4 = result[3];
  if (v4 == 1)
  {
    v5 = 1;
    if ((result[1] & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = (v4 - (v4 != 0) + 8 * (v4 != 0)) & 0xFFFFFFFFFFFFFFF8;
    if ((result[1] & 1) == 0)
    {
LABEL_3:
      v6 = 2 * v5 * result[2];
      v7 = *result;
      if (v4 != 1)
      {
        goto LABEL_4;
      }

LABEL_12:
      v9 = (*(v7 + (v6 >> 3)) >> (v6 & 6)) & 1;
      v18 = 1;
      v17 = v9;
      v10 = v6 + v5;
LABEL_15:
      v11 = (*(v7 + (v10 >> 3)) >> (v10 & 7)) & 1;
      v16 = 1;
      v15 = v11;
      goto LABEL_24;
    }
  }

  v6 = 0;
  v7 = *result;
  if (v4 == 1)
  {
    goto LABEL_12;
  }

LABEL_4:
  v18 = result[3];
  if (v4 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v17);
  }

  v17 = 0;
  if (v4)
  {
    v8 = ((v4 - (v4 != 0)) >> 3) + 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    result = memmove(&v17, (v7 + (v6 >> 3)), v8);
    v7 = *v2;
    v4 = v2[3];
    v10 = v6 + v5;
    if (v4 == 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = v6 + v5;
  }

  v16 = v4;
  if (v4 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v15);
  }

  v15 = 0;
  if (v4)
  {
    v12 = ((v4 - (v4 != 0)) >> 3) + 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    result = memmove(&v15, (v7 + (v10 >> 3)), v12);
  }

LABEL_24:
  v13 = v18;
  a2[2] = v18;
  if (v13 > 0x40)
  {
    llvm::APInt::initSlowCase(a2, &v17);
  }

  *a2 = v17;
  v14 = v16;
  a2[6] = v16;
  if (v14 > 0x40)
  {
    llvm::APInt::initSlowCase((a2 + 4), &v15);
  }

  *(a2 + 2) = v15;
  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      operator delete[]();
    }
  }

  return result;
}

uint64_t mlir::DenseElementsAttr::getRawStringData(mlir::DenseElementsAttr *this)
{
  v1 = *this;
  result = *(*this + 32);
  v3 = *(v1 + 40);
  return result;
}

uint64_t mlir::DenseElementsAttr::getRawData(mlir::DenseElementsAttr *this)
{
  v1 = *this;
  result = *(*this + 32);
  v3 = *(v1 + 40);
  return result;
}

void *mlir::DenseElementsAttr::BoolElementIterator::BoolElementIterator(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 24);
  *result = *(a2 + 32);
  result[1] = v3;
  result[2] = a3;
  return result;
}

uint64_t mlir::DenseElementsAttr::BoolElementIterator::operator*(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 8))
  {
    LOBYTE(v1) = *v1;
  }

  else
  {
    LODWORD(v1) = v1[*(a1 + 16) >> 3] >> (*(a1 + 16) & 7);
  }

  return v1 & 1;
}

unint64_t sub_1000DC620(uint64_t *a1)
{
  v6 = a1;
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  v5 = v1;
  if (v1)
  {
    ElementType = mlir::ComplexType::getElementType(&v5);
    v3 = sub_1000DC620(ElementType);
    return (2 * (v3 - (v3 != 0) + 8 * (v3 != 0))) & 0xFFFFFFFFFFFFFFF0;
  }

  else if (mlir::Type::isIndex(&v6))
  {
    return 64;
  }

  else
  {
    return mlir::Type::getIntOrFloatBitWidth(&v6);
  }
}

BOOL mlir::detail::DenseArrayAttrImpl<signed char>::classof(void *a1)
{
  result = 0;
  if (a1 && *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v6[1] = v1;
    v6[2] = v2;
    v5 = a1[1];
    if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v5 = 0;
    }

    v6[0] = v5;
    return v5 && mlir::IntegerType::getWidth(v6) == 8 && mlir::IntegerType::getSignedness(v6) == 0;
  }

  return result;
}

{
  return mlir::detail::DenseArrayAttrImpl<signed char>::classof(a1);
}

uint64_t mlir::DenseElementsAttr::get(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v80.n128_u64[0] = a1;
  v80.n128_u64[1] = a2;
  ElementType = mlir::ShapedType::getElementType(&v80);
  v79 = ElementType;
  if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v7 = ElementType;
  }

  else
  {
    v7 = 0;
  }

  v82[0] = v7;
  if (v7)
  {
    v84 = mlir::ComplexType::getElementType(v82);
    isIntOrIndex = mlir::Type::isIntOrIndex(&v84);
    if (isIntOrIndex)
    {
      v84 = &v85 + 8;
      *&v85 = &_mh_execute_header;
      if (a4 < 2)
      {
        if (!a4)
        {
          goto LABEL_42;
        }
      }

      else
      {
        sub_10010B87C(&v84, a4);
      }

      v14 = 8 * a4;
      do
      {
        v15 = *(*a3 + 8);
        v16 = *v15;
        v17 = v15[1];
        LODWORD(v90) = *(*v15 + 24);
        if (v90 > 0x40)
        {
          llvm::APInt::initSlowCase(&v89, (v16 + 16));
        }

        v89 = *(v16 + 16);
        LODWORD(v88) = *(v17 + 24);
        if (v88 > 0x40)
        {
          llvm::APInt::initSlowCase(&v87, (v17 + 16));
        }

        v87 = *(v17 + 16);
        v91.n128_u32[2] = v90;
        v91.n128_u64[0] = v89;
        LODWORD(v93) = v88;
        v92 = v87;
        v18 = v84;
        if (v85 >= DWORD1(v85))
        {
          if (v84 <= &v91 && v84 + 32 * v85 > &v91)
          {
            v21 = &v91 - v84;
            sub_10010B87C(&v84, v85 + 1);
            v18 = v84;
            v19 = (v84 + v21);
          }

          else
          {
            sub_10010B87C(&v84, v85 + 1);
            v19 = &v91;
            v18 = v84;
          }
        }

        else
        {
          v19 = &v91;
        }

        v20 = &v18[32 * v85];
        *(v20 + 2) = v19->n128_u32[2];
        *v20 = v19->n128_u64[0];
        v19->n128_u32[2] = 0;
        *(v20 + 6) = v19[1].n128_u32[2];
        *(v20 + 2) = v19[1].n128_u64[0];
        v19[1].n128_u32[2] = 0;
        LODWORD(v85) = v85 + 1;
        if (v93 >= 0x41 && v92)
        {
          operator delete[]();
        }

        if (v91.n128_u32[2] >= 0x41 && v91.n128_u64[0])
        {
          operator delete[]();
        }

        if (v88 >= 0x41 && v87)
        {
          operator delete[]();
        }

        if (v90 >= 0x41 && v89)
        {
          operator delete[]();
        }

        a3 += 8;
        v14 -= 8;
      }

      while (v14);
LABEL_42:
      v22 = v84;
      v23 = v85;
      v91 = v80;
      v24 = mlir::ShapedType::getElementType(&v91);
      v25 = sub_1000DC620(v24);
      if (v25 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = ((v25 - (v25 != 0) + 8 * (v25 != 0)) >> 1) & 0x7FFFFFFFFFFFFFFCLL;
      }

      Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v91.n128_i64[0], v91.n128_i64[1], v26, v22, 2 * v23);
      v28 = v84;
      if (v85)
      {
        v29 = -32 * v85;
        v30 = v84 + 32 * v85 - 16;
        do
        {
          if (*(v30 + 2) >= 0x41u && *v30)
          {
            operator delete[]();
          }

          if (*(v30 - 2) >= 0x41u && *(v30 - 2))
          {
            operator delete[]();
          }

          v30 -= 32;
          v29 += 32;
        }

        while (v29);
        v28 = v84;
      }

      if (v28 == (&v85 + 8))
      {
        return Raw;
      }

LABEL_162:
      free(v28);
      return Raw;
    }

    v84 = &v85 + 8;
    *&v85 = &_mh_execute_header;
    if (a4 < 2)
    {
      v31 = (&v85 + 8);
      if (!a4)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v91.n128_u64[0] = 0;
      v11 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v84, &v85 + 8, a4, 48, &v91);
      sub_10010BA28(&v84, v11);
      v12 = v91.n128_u32[0];
      isIntOrIndex = v84;
      if (v84 != &v85 + 8)
      {
        free(v84);
      }

      v84 = v11;
      DWORD1(v85) = v12;
    }

    v32 = llvm::APFloatBase::PPCDoubleDouble(isIntOrIndex);
    v33 = 8 * a4;
    while (1)
    {
      v34 = *(*a3 + 8);
      v35 = v34[1];
      v36 = (*v34 + 16);
      if (v32 == *v36)
      {
        llvm::detail::DoubleAPFloat::DoubleAPFloat(&v89, v36);
        v37 = (v35 + 16);
        if (v32 != *(v35 + 16))
        {
LABEL_62:
          llvm::detail::IEEEFloat::IEEEFloat(&v87, v37);
          if (v32 != v89)
          {
            goto LABEL_63;
          }

          goto LABEL_67;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::IEEEFloat(&v89, v36);
        v37 = (v35 + 16);
        if (v32 != *(v35 + 16))
        {
          goto LABEL_62;
        }
      }

      llvm::detail::DoubleAPFloat::DoubleAPFloat(&v87, v37);
      if (v32 != v89)
      {
LABEL_63:
        llvm::detail::IEEEFloat::IEEEFloat(&v91, &v89);
        if (v32 == v87)
        {
          goto LABEL_68;
        }

        goto LABEL_64;
      }

LABEL_67:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(&v91, &v89);
      if (v32 == v87)
      {
LABEL_68:
        llvm::detail::DoubleAPFloat::DoubleAPFloat(&v93, &v87);
        goto LABEL_69;
      }

LABEL_64:
      llvm::detail::IEEEFloat::IEEEFloat(&v93, &v87);
LABEL_69:
      sub_1000DD40C(&v84, &v91);
      if (v32 == v93)
      {
        sub_10002B154(&v93);
        if (v32 == v91.n128_u64[0])
        {
          goto LABEL_75;
        }

LABEL_71:
        llvm::detail::IEEEFloat::~IEEEFloat(&v91);
        if (v32 != v87)
        {
          goto LABEL_72;
        }

LABEL_76:
        sub_10002B154(&v87);
        if (v32 != v89)
        {
          goto LABEL_77;
        }

LABEL_59:
        sub_10002B154(&v89);
        a3 += 8;
        v33 -= 8;
        if (!v33)
        {
          goto LABEL_78;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v93);
        if (v32 != v91.n128_u64[0])
        {
          goto LABEL_71;
        }

LABEL_75:
        sub_10002B154(&v91);
        if (v32 == v87)
        {
          goto LABEL_76;
        }

LABEL_72:
        llvm::detail::IEEEFloat::~IEEEFloat(&v87);
        if (v32 == v89)
        {
          goto LABEL_59;
        }

LABEL_77:
        llvm::detail::IEEEFloat::~IEEEFloat(&v89);
        a3 += 8;
        v33 -= 8;
        if (!v33)
        {
LABEL_78:
          v31 = v84;
LABEL_79:
          v38 = v85;
          v91 = v80;
          v39 = mlir::ShapedType::getElementType(&v91);
          v40 = sub_1000DC620(v39);
          if (v40 == 1)
          {
            v41 = 0;
          }

          else
          {
            v41 = ((v40 - (v40 != 0) + 8 * (v40 != 0)) >> 1) & 0x7FFFFFFFFFFFFFFCLL;
          }

          v42 = mlir::DenseIntOrFPElementsAttr::getRaw(v91.n128_u64[0], v91.n128_i64[1], v41, v31, 2 * v38);
          Raw = v42;
          v43 = v84;
          v44 = v85;
          if (!v85)
          {
LABEL_91:
            if (v43 == (&v85 + 8))
            {
              return Raw;
            }

            v28 = v43;
            goto LABEL_162;
          }

          v45 = llvm::APFloatBase::PPCDoubleDouble(v42);
          v46 = (&v43[3 * v44 - 1] - 8);
          v47 = -48 * v44;
          while (1)
          {
            v48 = (v46 - 24);
            if (v45 == *v46)
            {
              sub_10002B154(v46);
              v49 = (v46 - 24);
              if (v45 == *v48)
              {
LABEL_84:
                sub_10002B154(v49);
                v46 = (v46 - 48);
                v47 += 48;
                if (!v47)
                {
                  goto LABEL_90;
                }

                continue;
              }
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v46);
              v49 = (v46 - 24);
              if (v45 == *v48)
              {
                goto LABEL_84;
              }
            }

            llvm::detail::IEEEFloat::~IEEEFloat(v49);
            v46 = (v46 - 48);
            v47 += 48;
            if (!v47)
            {
LABEL_90:
              v43 = v84;
              goto LABEL_91;
            }
          }
        }
      }
    }
  }

  if (!mlir::Type::isIntOrIndexOrFloat(&v79))
  {
    v84 = &v85 + 8;
    *&v85 = 0x800000000;
    if (a4 < 9)
    {
      v13 = 0;
      v54 = 0;
      if (!a4)
      {
        goto LABEL_106;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, &v85 + 8, a4, 16);
      v13 = v85;
    }

    v55 = 8 * a4;
    v54 = v13;
    do
    {
      v56 = *(*a3 + 16);
      if (v54 >= DWORD1(v85))
      {
        v76 = *(*a3 + 16);
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, &v85 + 8, v54 + 1, 16);
        v56 = v76;
        v54 = v85;
      }

      *(v84 + v54) = v56;
      v54 = v85 + 1;
      LODWORD(v85) = v85 + 1;
      a3 += 8;
      v55 -= 8;
    }

    while (v55);
LABEL_106:
    v57 = v84;
    v81 = v80;
    Context = mlir::Type::getContext(&v81);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v82[0] = &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
    v82[1] = Context;
    v89 = sub_1000E1A08;
    v90 = v82;
    sub_1000E0D50(v81.n128_u64[0], v81.n128_i64[1], v57, v54, v54 == 1, &v91);
    v60 = __ROR8__(v94 + 16, 16);
    v61 = 0x9DDFEA08EB382D69 * (v60 ^ 0xFF51AFD7ED558CCDLL ^ (v91.n128_u32[0] >> 4) ^ (v91.n128_u32[0] >> 9));
    v83 = &v91;
    v87 = &v91;
    v88 = &v89;
    Raw = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v60 ^ (v61 >> 47) ^ v61)) >> 32) >> 15) ^ (-348639895 * (v60 ^ (v61 >> 47) ^ v61)))) ^ v94, sub_1000E16AC, &v83, sub_1000E1754, &v87);
    v28 = v84;
    if (v84 == &v85 + 8)
    {
      return Raw;
    }

    goto LABEL_162;
  }

  v9 = sub_1000DC620(v79);
  if (v9 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = (v9 + 8 * (v9 != 0) - (v9 != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  v50 = v10 * a4 - (v10 * a4 != 0);
  if (v10 * a4)
  {
    v51 = (v50 >> 3) + 1;
  }

  else
  {
    v51 = v50 >> 3;
  }

  v84 = v86;
  v85 = xmmword_1002B0250;
  if (v51)
  {
    if (v51 < 9)
    {
      v52 = 0;
      v53 = v51;
    }

    else
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v84, v86, v51, 1);
      v52 = v85;
      v53 = v51 - v85;
      if (v51 == v85)
      {
        goto LABEL_110;
      }
    }

    bzero(v84 + v52, v53);
LABEL_110:
    *&v85 = v51;
  }

  LODWORD(v90) = 1;
  v89 = 0;
  v62 = a4;
  if (a4)
  {
    v63 = 0;
    do
    {
      v64 = (*a3 + 16);
      if (*(**a3 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        v91.n128_u32[2] = *(*a3 + 24);
        if (v91.n128_u32[2] > 0x40)
        {
          llvm::APInt::initSlowCase(&v91, v64);
        }

        v91.n128_u64[0] = *v64;
        if (v90 >= 0x41)
        {
          v9 = v89;
          if (v89)
          {
            operator delete[]();
          }
        }

        v89 = v91.n128_u64[0];
        v68 = v91.n128_u32[2];
        LODWORD(v90) = v91.n128_u32[2];
        v69 = v84;
        v78 = v91.n128_u32[2];
        if (v91.n128_u32[2] > 0x40uLL)
        {
LABEL_144:
          llvm::APInt::initSlowCase(&v77, &v89);
        }

        goto LABEL_133;
      }

      v65 = *v64;
      v66 = llvm::APFloatBase::PPCDoubleDouble(v9);
      if (v66 == v65)
      {
        v67 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v91, v64);
        if (v66 != v91.n128_u64[0])
        {
LABEL_120:
          llvm::detail::IEEEFloat::bitcastToAPInt(v67, &v87);
          if (v90 < 0x41)
          {
            goto LABEL_131;
          }

          goto LABEL_129;
        }
      }

      else
      {
        v67 = llvm::detail::IEEEFloat::IEEEFloat(&v91, v64);
        if (v66 != v91.n128_u64[0])
        {
          goto LABEL_120;
        }
      }

      llvm::detail::DoubleAPFloat::bitcastToAPInt(v67, &v87);
      if (v90 < 0x41)
      {
        goto LABEL_131;
      }

LABEL_129:
      if (v89)
      {
        operator delete[]();
      }

LABEL_131:
      v89 = v87;
      LODWORD(v90) = v88;
      LODWORD(v88) = 0;
      if (v66 == v91.n128_u64[0])
      {
        v9 = sub_10002B154(&v91);
        v69 = v84;
        v78 = v90;
        v68 = v90;
        if (v90 > 0x40uLL)
        {
          goto LABEL_144;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v91);
        v69 = v84;
        v78 = v90;
        v68 = v90;
        if (v90 > 0x40uLL)
        {
          goto LABEL_144;
        }
      }

LABEL_133:
      v77 = v89;
      if (v68 == 1)
      {
        v72 = 1 << (v63 & 7);
        v73 = v63 >> 3;
        if (v77 == 1)
        {
          v69[v73] |= v72;
LABEL_147:
          if (v78 >= 0x41)
          {
            goto LABEL_148;
          }

          goto LABEL_113;
        }

        v69[v73] &= ~v72;
        if (v78 >= 0x41)
        {
          goto LABEL_148;
        }
      }

      else
      {
        if (v68)
        {
          v70 = ((v68 - (v68 != 0)) >> 3) + 1;
        }

        else
        {
          v70 = 0;
        }

        if (!v70)
        {
          goto LABEL_147;
        }

        if (v68 >= 0x41)
        {
          v71 = v77;
        }

        else
        {
          v71 = &v77;
        }

        v9 = memmove(&v69[v63 >> 3], v71, v70);
        if (v78 >= 0x41)
        {
LABEL_148:
          v9 = v77;
          if (v77)
          {
            operator delete[]();
          }
        }
      }

LABEL_113:
      v63 += v10;
      a3 += 8;
      --v62;
    }

    while (v62);
  }

  if (a4 == 1 && mlir::Type::isInteger(&v79, 1))
  {
    if (*v84)
    {
      v74 = -1;
    }

    else
    {
      v74 = 0;
    }

    *v84 = v74;
  }

  Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v80.n128_i64[0], v80.n128_i64[1], v84, v85);
  if (v90 >= 0x41 && v89)
  {
    operator delete[]();
  }

  v28 = v84;
  if (v84 != v86)
  {
    goto LABEL_162;
  }

  return Raw;
}

uint64_t mlir::DenseElementsAttr::get(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v10 = a1;
  v11 = a2;
  ElementType = mlir::ShapedType::getElementType(&v10);
  v7 = sub_1000DC620(ElementType);
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - (v7 != 0) + 8 * (v7 != 0)) >> 1) & 0x7FFFFFFFFFFFFFFCLL;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(v10, v11, v8, a3, 2 * a4);
}

{
  v10 = a1;
  v11 = a2;
  ElementType = mlir::ShapedType::getElementType(&v10);
  v7 = sub_1000DC620(ElementType);
  if (v7 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = (v7 - (v7 != 0) + 8 * (v7 != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(v10, v11, v8, a3, a4);
}

void sub_1000DD40C(llvm::APFloatBase *a1, __n128 *a2)
{
  v2 = a2;
  v4 = *(a1 + 2);
  v5 = *a1;
  if (v4 >= *(a1 + 3))
  {
    if (v5 <= a2 && v5 + 48 * v4 > a2)
    {
      v12 = a2 - v5;
      sub_10010B9B0(a1, v4 + 1);
      v5 = *a1;
      v2 = &v12[*a1];
    }

    else
    {
      sub_10010B9B0(a1, v4 + 1);
      v5 = *a1;
    }
  }

  v6 = (v5 + 48 * *(a1 + 2));
  v7 = v2->n128_u64[0];
  v8 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v8 == v7)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v6, v2);
    v9 = (v6 + 24);
    v10 = (v2 + 24);
    if (v8 != v2[1].n128_u64[1])
    {
      goto LABEL_4;
    }

LABEL_6:
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, v10);
    goto LABEL_7;
  }

  llvm::detail::IEEEFloat::IEEEFloat(v6, v2);
  v9 = (v6 + 24);
  v10 = (v2 + 24);
  if (v8 == v2[1].n128_u64[1])
  {
    goto LABEL_6;
  }

LABEL_4:
  llvm::detail::IEEEFloat::IEEEFloat(v9, v10);
LABEL_7:
  ++*(a1 + 2);
}

uint64_t mlir::DenseElementsAttr::get(llvm::APFloatBase *a1, uint64_t a2, llvm::detail::DoubleAPFloat *a3, uint64_t a4)
{
  v10 = a1;
  v11 = a2;
  ElementType = mlir::ShapedType::getElementType(&v10);
  v7 = sub_1000DC620(ElementType);
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - (v7 != 0) + 8 * (v7 != 0)) >> 1) & 0x7FFFFFFFFFFFFFFCLL;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(v10, v11, v8, a3, 2 * a4);
}

{
  v10 = a1;
  v11 = a2;
  ElementType = mlir::ShapedType::getElementType(&v10);
  v7 = sub_1000DC620(ElementType);
  if (v7 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = (v7 - (v7 != 0) + 8 * (v7 != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(v10, v11, v8, a3, a4);
}

uint64_t mlir::DenseIntOrFPElementsAttr::getRaw(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  v12 = a1;
  v13 = a2;
  v11 = 0;
  mlir::DenseElementsAttr::isValidRawBuffer(a1, a2, a3, a4, &v11);
  Context = mlir::Type::getContext(&v12);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id;
  v14[1] = Context;
  v19[0] = sub_10010C130;
  v19[1] = v14;
  sub_10010BB74(v12, v13, a3, a4, v11, v17);
  v8 = __ROR8__(v18 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ (v17[0] >> 4) ^ (v17[0] >> 9));
  v15[0] = v17;
  v15[1] = v19;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)))) ^ v18, sub_10010BF80, &v16, sub_10010BFD8, v15);
}

uint64_t mlir::DenseElementsAttr::get(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = ((a4 - (a4 != 0)) >> 3) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    operator new();
  }

  if (a4)
  {
    if (!a4)
    {
      goto LABEL_13;
    }

    v5 = 0;
    v6 = *a3;
    v7 = 1;
    do
    {
      while (1)
      {
        v8 = a3[v5];
        v9 = v8 == v6;
        v10 = 1 << (v5 & 7);
        v11 = (v5 >> 3);
        if (v8 == 1)
        {
          break;
        }

        *v11 &= ~v10;
        v7 &= v9;
        if (a4 == ++v5)
        {
          goto LABEL_12;
        }
      }

      *v11 |= v10;
      v7 &= v9;
      ++v5;
    }

    while (a4 != v5);
LABEL_12:
    if (v7)
    {
LABEL_13:
      operator new();
    }
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(a1, a2, 0, 0);
}

uint64_t mlir::DenseIntOrFPElementsAttr::getRaw(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v6 = a4;
  v8 = a5 * a3 - (a5 * a3 != 0);
  if (a5 * a3)
  {
    v9 = (v8 >> 3) + 1;
  }

  else
  {
    v9 = v8 >> 3;
  }

  if (v9)
  {
    operator new();
  }

  if (a5)
  {
    v20 = a1;
    v21 = a2;
    v10 = 0;
    v11 = 16 * a5;
    do
    {
      v13 = v6[2];
      v23 = v13;
      if (v13 > 0x40)
      {
        llvm::APInt::initSlowCase(&v22, v6);
      }

      v22 = *v6;
      if (v13 == 1)
      {
        v14 = 1 << (v10 & 7);
        v15 = (v10 >> 3);
        if (v22 == 1)
        {
          v12 = *v15 | v14;
        }

        else
        {
          v12 = *v15 & ~v14;
        }

        *v15 = v12;
      }

      else
      {
        if (v13)
        {
          v16 = ((v13 - (v13 != 0)) >> 3) + 1;
        }

        else
        {
          v16 = 0;
        }

        if (v16)
        {
          memmove((v10 >> 3), &v22, v16);
        }
      }

      v6 += 4;
      v10 += a3;
      v11 -= 16;
    }

    while (v11);
    a1 = v20;
    a2 = v21;
    if (a5 == 1 && a4[2] == 1)
    {
      if (MEMORY[0])
      {
        v17 = -1;
      }

      else
      {
        v17 = 0;
      }

      MEMORY[0] = v17;
    }
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(a1, a2, 0, 0);
}

uint64_t mlir::DenseIntOrFPElementsAttr::getRaw(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, llvm::detail::DoubleAPFloat *a4, uint64_t a5)
{
  v24 = a1;
  v7 = 0xAAAAAAAAAAAAAAABLL * ((24 * a5) >> 3) * a3;
  v8 = v7 - (v7 != 0);
  v26 = 24 * a5;
  if (v7)
  {
    v9 = (v8 >> 3) + 1;
  }

  else
  {
    v9 = v8 >> 3;
  }

  if (v9)
  {
    operator new();
  }

  if (a4 != (a4 + 24 * a5))
  {
    v12 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v13 = 0;
    v14 = v26;
    v15 = a4;
    do
    {
      if (v12 == *v15)
      {
        a1 = llvm::detail::DoubleAPFloat::bitcastToAPInt(v15, &v29);
        v17 = v30;
        if (v30 != 1)
        {
LABEL_21:
          if (v17)
          {
            v20 = ((v17 - (v17 != 0)) >> 3) + 1;
          }

          else
          {
            v20 = (v17 - (v17 != 0)) >> 3;
          }

          if (v20)
          {
            if (v17 >= 0x41)
            {
              v21 = v29;
            }

            else
            {
              v21 = &v29;
            }

            a1 = memmove((v13 >> 3), v21, v20);
          }

          if (v17 >= 0x41)
          {
            a1 = v29;
            if (v29)
            {
              operator delete[]();
            }
          }

          goto LABEL_15;
        }
      }

      else
      {
        a1 = llvm::detail::IEEEFloat::bitcastToAPInt(v15, &v29);
        v17 = v30;
        if (v30 != 1)
        {
          goto LABEL_21;
        }
      }

      v18 = 1 << (v13 & 7);
      v19 = (v13 >> 3);
      if (v29 == 1)
      {
        v16 = *v19 | v18;
      }

      else
      {
        v16 = *v19 & ~v18;
      }

      *v19 = v16;
LABEL_15:
      v15 = (v15 + 24);
      v13 += a3;
      v14 -= 24;
    }

    while (v14);
  }

  if (v26 != 24)
  {
    return mlir::DenseIntOrFPElementsAttr::getRaw(v24, a2, 0, 0);
  }

  v10 = *a4;
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v10)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(a4, &v27);
    v11 = v28;
    if (v28 >= 0x41)
    {
LABEL_10:
      if (v27)
      {
        operator delete[]();
      }

      return mlir::DenseIntOrFPElementsAttr::getRaw(v24, a2, 0, 0);
    }
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(a4, &v27);
    v11 = v28;
    if (v28 >= 0x41)
    {
      goto LABEL_10;
    }
  }

  if (v11 == 1)
  {
    if (MEMORY[0])
    {
      v22 = -1;
    }

    else
    {
      v22 = 0;
    }

    MEMORY[0] = v22;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(v24, a2, 0, 0);
}

BOOL mlir::DenseElementsAttr::isValidRawBuffer(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, BOOL *a5)
{
  v17[0] = a1;
  v17[1] = a2;
  ElementType = mlir::ShapedType::getElementType(v17);
  v9 = sub_1000DC620(ElementType);
  if (v9 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = (v9 - (v9 != 0) + 8 * (v9 != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  v11 = 8 * a4;
  Shape = mlir::ShapedType::getShape(v17);
  NumElements = mlir::ShapedType::getNumElements(Shape, v13);
  *a5 = NumElements == 1;
  if (v10 != 1)
  {
    if (v11 != v10)
    {
      v15 = NumElements * v10;
      return v11 == v15;
    }

LABEL_9:
    result = 1;
    *a5 = 1;
    return result;
  }

  if (a4 == 1 && *a3 - 1 >= 0xFE)
  {
    goto LABEL_9;
  }

  v15 = (NumElements - (NumElements != 0) + 8 * (NumElements != 0)) & 0xFFFFFFFFFFFFFFF8;
  return v11 == v15;
}

uint64_t sub_1000DDEF8(uint64_t *a1, uint64_t a2, char a3, unsigned int a4)
{
  v20 = a1;
  if (sub_1000DC620(a1) != 8 * a2)
  {
    return 0;
  }

  if ((a3 & 1) == 0)
  {
    v8 = *a1;
    {
      v9 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      if (!v11)
      {
        return 0;
      }
    }

    else
    {
      sub_1002993D8();
      v9 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      if (!v11)
      {
        return 0;
      }
    }

    v12 = v10;
    v13 = v11;
    do
    {
      v14 = v13 >> 1;
      v15 = &v12[2 * (v13 >> 1)];
      v17 = *v15;
      v16 = v15 + 2;
      v13 += ~(v13 >> 1);
      if (v17 < v9)
      {
        v12 = v16;
      }

      else
      {
        v13 = v14;
      }
    }

    while (v13);
    if (v12 != &v10[2 * v11] && *v12 == v9)
    {
      return v12[1] != 0;
    }

    return 0;
  }

  if (mlir::Type::isIndex(&v20))
  {
    return 1;
  }

  v18 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v18 = 0;
  }

  v19 = v18;
  if (!v18)
  {
    return 0;
  }

  if (!mlir::IntegerType::getSignedness(&v19))
  {
    return 1;
  }

  return (mlir::IntegerType::getSignedness(&v19) != 1) ^ a4;
}

unint64_t mlir::DenseElementsAttr::tryGetComplexIntValues@<X0>(mlir::DenseElementsAttr *this@<X0>, uint64_t a2@<X8>)
{
  v19 = *(*this + 8);
  *&v19 = mlir::ShapedType::getElementType(&v19);
  result = mlir::ComplexType::getElementType(&v19);
  if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v7 = *(*this + 16);
    v8 = *(*this + 32);
    v9 = *(*this + 24);
    *&v19 = *(*this + 8);
    v6 = v19;
    *(&v19 + 1) = v7;
    *&v19 = mlir::ShapedType::getElementType(&v19);
    ElementType = mlir::ComplexType::getElementType(&v19);
    v11 = sub_1000DC620(ElementType);
    v12 = *this;
    v19 = *(*this + 8);
    Shape = mlir::ShapedType::getShape(&v19);
    NumElements = mlir::ShapedType::getNumElements(Shape, v14);
    v16 = *(v12 + 32);
    v17 = *(v12 + 24);
    v19 = *(v12 + 8);
    *&v19 = mlir::ShapedType::getElementType(&v19);
    v18 = mlir::ComplexType::getElementType(&v19);
    result = sub_1000DC620(v18);
    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = 0;
    *(a2 + 24) = v11;
    *(a2 + 32) = v16;
    *(a2 + 40) = v17;
    *(a2 + 48) = NumElements;
    *(a2 + 56) = result;
    v5 = 1;
    *(a2 + 64) = v6;
    *(a2 + 72) = v7;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 80) = v5;
  return result;
}

uint64_t mlir::DenseElementsAttr::getType(mlir::DenseElementsAttr *this)
{
  v1 = *this;
  result = *(*this + 8);
  v3 = *(v1 + 16);
  return result;
}

uint64_t mlir::DenseElementsAttr::getNumElements(mlir::DenseElementsAttr *this)
{
  v4 = *(*this + 8);
  Shape = mlir::ShapedType::getShape(&v4);
  return mlir::ShapedType::getNumElements(Shape, v2);
}

uint64_t mlir::DenseElementsAttr::tryGetFloatValues@<X0>(mlir::DenseElementsAttr *this@<X0>, uint64_t a2@<X8>)
{
  v23 = *(*this + 8);
  ElementType = mlir::ShapedType::getElementType(&v23);
  result = sub_100066208(ElementType);
  v22[0] = result;
  v22[1] = v6;
  if (result)
  {
    FloatSemantics = mlir::FloatType::getFloatSemantics(v22);
    v9 = *(*this + 16);
    v21 = *(*this + 32);
    v10 = *(*this + 24);
    *&v23 = *(*this + 8);
    v8 = v23;
    *(&v23 + 1) = v9;
    v11 = mlir::ShapedType::getElementType(&v23);
    v12 = sub_1000DC620(v11);
    v13 = *this;
    v23 = *(*this + 8);
    Shape = mlir::ShapedType::getShape(&v23);
    NumElements = mlir::ShapedType::getNumElements(Shape, v15);
    v17 = *(v13 + 32);
    v18 = *(v13 + 24);
    v23 = *(v13 + 8);
    v19 = mlir::ShapedType::getElementType(&v23);
    result = sub_1000DC620(v19);
    *a2 = v21;
    *(a2 + 8) = v10;
    *(a2 + 16) = 0;
    *(a2 + 24) = v12;
    *(a2 + 32) = FloatSemantics;
    *(a2 + 40) = v17;
    *(a2 + 48) = v18;
    *(a2 + 56) = NumElements;
    *(a2 + 64) = result;
    *(a2 + 72) = FloatSemantics;
    v20 = 1;
    *(a2 + 80) = v8;
    *(a2 + 88) = v9;
  }

  else
  {
    v20 = 0;
    *a2 = 0;
  }

  *(a2 + 96) = v20;
  return result;
}

uint64_t mlir::DenseElementsAttr::tryGetComplexFloatValues@<X0>(mlir::DenseElementsAttr *this@<X0>, uint64_t a2@<X8>)
{
  v25 = *(*this + 8);
  result = mlir::ShapedType::getElementType(&v25);
  if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  v24 = v5;
  if (v5)
  {
    ElementType = mlir::ComplexType::getElementType(&v24);
    result = sub_100066208(ElementType);
    v23[0] = result;
    v23[1] = v7;
    if (result)
    {
      FloatSemantics = mlir::FloatType::getFloatSemantics(v23);
      v10 = *(*this + 16);
      v22 = *(*this + 32);
      v11 = *(*this + 24);
      *&v25 = *(*this + 8);
      v9 = v25;
      *(&v25 + 1) = v10;
      *&v25 = mlir::ShapedType::getElementType(&v25);
      v12 = mlir::ComplexType::getElementType(&v25);
      v13 = sub_1000DC620(v12);
      v14 = *this;
      v25 = *(*this + 8);
      Shape = mlir::ShapedType::getShape(&v25);
      NumElements = mlir::ShapedType::getNumElements(Shape, v16);
      v18 = *(v14 + 32);
      v19 = *(v14 + 24);
      v25 = *(v14 + 8);
      *&v25 = mlir::ShapedType::getElementType(&v25);
      v20 = mlir::ComplexType::getElementType(&v25);
      result = sub_1000DC620(v20);
      *a2 = v22;
      *(a2 + 8) = v11;
      *(a2 + 16) = 0;
      *(a2 + 24) = v13;
      *(a2 + 32) = FloatSemantics;
      *(a2 + 40) = v18;
      *(a2 + 48) = v19;
      *(a2 + 56) = NumElements;
      *(a2 + 64) = result;
      *(a2 + 72) = FloatSemantics;
      v21 = 1;
      *(a2 + 80) = v9;
      *(a2 + 88) = v10;
    }

    else
    {
      v21 = 0;
      *a2 = 0;
    }

    *(a2 + 96) = v21;
  }

  else
  {
    *a2 = 0;
    *(a2 + 96) = 0;
  }

  return result;
}

BOOL mlir::DenseFPElementsAttr::classof(uint64_t a1)
{
  result = 0;
  v3 = *(*a1 + 136);
  v5 = v3 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (!a1 || !v5)
  {
    return result;
  }

  v17 = *(a1 + 8);
  v6 = *mlir::ShapedType::getElementType(&v17);
  {
    v7 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (v9)
    {
      goto LABEL_11;
    }

    return 0;
  }

  v16 = v6;
  sub_100299348();
  v7 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
  v8 = *(v16 + 8);
  v9 = *(v16 + 16);
  if (!v9)
  {
    return 0;
  }

LABEL_11:
  v10 = v8;
  v11 = v9;
  do
  {
    v12 = v11 >> 1;
    v13 = &v10[2 * (v11 >> 1)];
    v15 = *v13;
    v14 = v13 + 2;
    v11 += ~(v11 >> 1);
    if (v15 < v7)
    {
      v10 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  while (v11);
  if (v10 == &v8[2 * v9] || *v10 != v7)
  {
    return 0;
  }

  return v10[1] != 0;
}

BOOL mlir::DenseIntElementsAttr::classof(uint64_t a1)
{
  result = 0;
  v3 = *(*a1 + 136);
  v5 = v3 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (a1)
  {
    if (v5)
    {
      v6 = *(a1 + 8);
      ElementType = mlir::ShapedType::getElementType(&v6);
      return mlir::Type::isIntOrIndex(&ElementType);
    }
  }

  return result;
}

uint64_t mlir::DenseResourceElementsAttr::get(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *&v13 = a1;
  *(&v13 + 1) = a2;
  Context = mlir::Type::getContext(&v13);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id;
  v14[1] = Context;
  v19[0] = sub_10010C238;
  v19[1] = v14;
  v6 = *a3;
  v17[0] = v13;
  v17[1] = v6;
  v18 = *(a3 + 2);
  v7 = 0x9DDFEA08EB382D69 * ((8 * v6 - 0xAE502812AA7333) ^ DWORD1(v6));
  v8 = 0x9DDFEA08EB382D69 * (DWORD1(v6) ^ (v7 >> 47) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = __ROR8__(v9 + 16, 16);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v13 >> 4) ^ (v13 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v15[0] = v17;
  v15[1] = v19;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 32) >> 15) ^ (-348639895 * (v10 ^ (v11 >> 47) ^ v11)))) ^ v9, sub_10010C140, &v16, sub_10010C170, v15);
}

void sub_1000DE708(uint64_t a1@<X0>, int8x16_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *(a1 + 24);
  v9 = *(a1 + 8);
  LOBYTE(v18) = 0;
  v24 = 0;
  if (*(a4 + 64) == 1)
  {
    v18 = *a4;
    v10 = *(a4 + 48);
    v19 = *(a4 + 16);
    v22 = v10;
    if (v10 >= 8)
    {
      if ((v10 & 2) != 0 && (v10 & 4) != 0)
      {
        v11 = v8;
        v12 = v9;
        v13 = a5;
        v14 = a4;
        (*((v10 & 0xFFFFFFFFFFFFFFF8) + 8))(&v20, a4 + 24);
        (*((v22 & 0xFFFFFFFFFFFFFFF8) + 16))(v14 + 24);
        a4 = v14;
        v9 = v12;
        v8 = v11;
        a5 = v13;
      }

      else
      {
        v20 = *(a4 + 24);
        v21 = *(a4 + 40);
      }

      *(a4 + 48) = 0;
    }

    v23 = *(a4 + 56);
    v24 = 1;
  }

  sub_10010C310(v8, v9, a2, a3, &v18, a5);
  if (v24 == 1 && v22 >= 8)
  {
    v15 = (v22 & 2) != 0 ? &v20 : v20;
    (*(v22 & 0xFFFFFFFFFFFFFFF8))(v15, v18, *(&v18 + 1), v19);
    v16 = v22;
    if (v22 >= 8)
    {
      if ((v22 & 4) != 0)
      {
        if ((v22 & 2) != 0)
        {
          v17 = &v20;
        }

        else
        {
          v17 = v20;
        }

        (*((v22 & 0xFFFFFFFFFFFFFFF8) + 16))(v17);
      }

      if ((v16 & 2) == 0)
      {
        llvm::deallocate_buffer(v20, *(&v20 + 1), v21);
      }
    }
  }
}

uint64_t mlir::SparseElementsAttr::getZeroAPFloat@<X0>(mlir::SparseElementsAttr *this@<X0>, void *a2@<X8>)
{
  v3 = sub_1000DE9D4(this);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = *v3;
  {
    v17 = v3;
    sub_1002993D8();
    v3 = v17;
    v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_4:
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
  if (v8 == &v6[2 * v7] || *v8 != v5)
  {
    goto LABEL_14;
  }

  v14 = v8[1];
LABEL_15:
  v18[0] = v3;
  v18[1] = v14;
  FloatSemantics = mlir::FloatType::getFloatSemantics(v18);
  if (llvm::APFloatBase::PPCDoubleDouble(FloatSemantics) == FloatSemantics)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(a2, FloatSemantics);
  }

  return llvm::detail::IEEEFloat::IEEEFloat(a2, FloatSemantics);
}

uint64_t sub_1000DE9D4(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *v2;
    {
      v4 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      if (v6)
      {
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
        if (v7 != &v5[2 * v6])
        {
          if (*v7 == v4)
          {
            v13 = v7[1];
          }

          else
          {
            v13 = 0;
          }

          return mlir::ElementsAttr::getElementType(v2, v13);
        }
      }
    }

    else
    {
      v15 = v3;
      v16 = v2;
      sub_10029B8A0();
      v2 = v16;
      v4 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v5 = *(v15 + 8);
      v6 = *(v15 + 16);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v13 = 0;

    return mlir::ElementsAttr::getElementType(v2, v13);
  }

  v13 = 0;

  return mlir::ElementsAttr::getElementType(v2, v13);
}

llvm::APFloatBase *mlir::SparseElementsAttr::getZeroAttr(mlir::SparseElementsAttr *this)
{
  v2 = sub_1000DE9D4(this);
  v3 = *v2;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v35 = v2;
    v13 = v3;
    sub_1002993D8();
    v2 = v35;
    v4 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
    v5 = *(v13 + 8);
    v6 = *(v13 + 16);
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
  if (v7 != &v5[2 * v6] && *v7 == v4 && v7[1])
  {

    return mlir::FloatAttr::get(v2, 0.0);
  }

LABEL_13:
  if (*(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v14 = v2;
  }

  else
  {
    v14 = 0;
  }

  v38 = v14;
  if (v14)
  {
    ElementType = mlir::ComplexType::getElementType(&v38);
    v16 = *ElementType;
    {
      v17 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      if (!v19)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v27 = ElementType;
      sub_100299348();
      ElementType = v27;
      v17 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      if (!v19)
      {
        goto LABEL_38;
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
    if (v20 != &v18[2 * v19] && *v20 == v17 && v20[1])
    {
      v28 = mlir::FloatAttr::get(ElementType, 0.0);
      goto LABEL_39;
    }

LABEL_38:
    v28 = mlir::IntegerAttr::get(ElementType, 0);
LABEL_39:
    v29 = v28;
    Context = mlir::Type::getContext(&v38);
    v43[0] = v29;
    v43[1] = v29;
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v39[0] = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
    v39[1] = Context;
    v36[0] = sub_1000E0AE4;
    v36[1] = v39;
    v42[0] = v43;
    v42[1] = 2;
    v32 = sub_1000E0184(v43, &v44);
    v33 = HIDWORD(v32) ^ 0xFF51AFD7ED558CCDLL;
    v34 = 0x9DDFEA08EB382D69 * ((8 * v32 + 8) ^ v33);
    v41 = v42;
    v40[0] = v42;
    v40[1] = v36;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v33 ^ (v34 >> 47) ^ v34)) >> 32) >> 15) ^ (-348639895 * (v33 ^ (v34 >> 47) ^ v34))), sub_1000E08C8, &v41, sub_1000E0920, v40);
  }

  if (*(**(*this + 32) + 136) == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
  {
    v37 = 257;
    return mlir::StringAttr::get(v36, v2);
  }

  else
  {

    return mlir::IntegerAttr::get(v2, 0);
  }
}

void mlir::SparseElementsAttr::getFlattenedSparseIndices(mlir::SparseElementsAttr *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v29 = *(*this + 24);
  sub_1000DFDB8(&v29, v30);
  v4 = v30[0];
  v5 = v30[1];
  v6 = v31[0];
  if (*(v29 + 24) == 1)
  {
    v28 = *(*this + 8);
    mlir::ShapedType::getShape(&v28);
    v8 = v7;
    if (v5)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    v30[0] = v31;
    HIDWORD(v30[1]) = 8;
    v10 = v4[v9];
    if (v7 >= 9)
    {
      LODWORD(v30[1]) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v30, v31, v7, 8);
      v11 = v30[0];
      v12 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = v8 & 3;
      v14 = vdupq_n_s64(v10);
      v15 = (v30[0] + 16);
      v16 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15[-1] = v14;
        *v15 = v14;
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v8 != (v8 & 0xFFFFFFFFFFFFFFFCLL))
      {
        do
        {
          v11[v12++] = v10;
          --v13;
        }

        while (v13);
      }

      goto LABEL_42;
    }

    if (!v7)
    {
      goto LABEL_41;
    }

    v20 = vdupq_n_s64(v7 - 1);
    v21 = v7 + 1;
    v22 = vmovn_s64(vcgeq_u64(v20, xmmword_1002B0D80));
    if (v22.i8[0])
    {
      v31[0] = v10;
      v23 = v21 & 0x1E;
      if ((v22.i8[4] & 1) == 0)
      {
LABEL_18:
        if (v23 == 2)
        {
          goto LABEL_41;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v23 = v21 & 0x1E;
      if ((v22.i8[4] & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v31[1] = v10;
    if (v23 == 2)
    {
      goto LABEL_41;
    }

LABEL_25:
    v25 = vmovn_s64(vcgtq_u64(v20, xmmword_1002B0E30));
    if (v25.i8[0])
    {
      v31[2] = v10;
      if ((v25.i8[4] & 1) == 0)
      {
LABEL_27:
        if (v23 == 4)
        {
          goto LABEL_41;
        }

LABEL_31:
        v26 = vmovn_s64(vcgtq_u64(v20, xmmword_1002B0E40));
        if (v26.i8[0])
        {
          v31[4] = v10;
          if ((v26.i8[4] & 1) == 0)
          {
LABEL_33:
            if (v23 == 6)
            {
              goto LABEL_41;
            }

LABEL_37:
            v27 = vmovn_s64(vcgtq_u64(v20, xmmword_1002B0E60));
            if (v27.i8[0])
            {
              v31[6] = v10;
            }

            if (v27.i8[4])
            {
              v31[7] = v10;
            }

            goto LABEL_41;
          }
        }

        else if ((v26.i8[4] & 1) == 0)
        {
          goto LABEL_33;
        }

        v31[5] = v10;
        if (v23 != 6)
        {
          goto LABEL_37;
        }

LABEL_41:
        v11 = v31;
LABEL_42:
        LODWORD(v30[1]) = v8;
        *&v28 = sub_1000DF1B0(this, v11);
        sub_10003D98C(a2, &v28);
        if (v30[0] != v31)
        {
          free(v30[0]);
        }

        return;
      }
    }

    else if ((v25.i8[4] & 1) == 0)
    {
      goto LABEL_27;
    }

    v31[3] = v10;
    if (v23 == 4)
    {
      goto LABEL_41;
    }

    goto LABEL_31;
  }

  *v30 = *(v29 + 8);
  v17 = *mlir::ShapedType::getShape(v30);
  *v30 = *(*this + 8);
  mlir::ShapedType::getShape(v30);
  if (v17)
  {
    v19 = v18;
    if (v5)
    {
      do
      {
        v30[0] = sub_1000DF1B0(this, v4);
        sub_10003D98C(a2, v30);
        --v17;
      }

      while (v17);
    }

    else
    {
      v24 = &v4[v6];
      do
      {
        v30[0] = sub_1000DF1B0(this, v24);
        sub_10003D98C(a2, v30);
        v24 += 8 * v19;
        --v17;
      }

      while (v17);
    }
  }
}

uint64_t sub_1000DF1B0(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (!*a1)
  {
    goto LABEL_14;
  }

  v4 = *v3;
  {
    v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v17 = v4;
    v18 = v3;
    sub_10029B8A0();
    v3 = v18;
    v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v6 = *(v17 + 8);
    v7 = *(v17 + 16);
    if (!v7)
    {
      goto LABEL_14;
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
    goto LABEL_15;
  }

LABEL_14:
  v14 = 0;
LABEL_15:
  v19[0] = v3;
  v19[1] = v14;
  ShapedType = mlir::ElementsAttr::getShapedType(v19);
  return mlir::ElementsAttr::getFlattenedIndex(ShapedType, a2);
}

void sub_1000DF2AC(uint64_t a1, mlir::ShapedType **a2)
{
  (**a2)(&v40, *(*a2 + 1));
  if (v40)
  {
    LODWORD(v37) = 3;
    v38 = "expected shape ([";
    v39 = 17;
    v4 = &v37;
    v5 = v42;
    if (v43 >= v44)
    {
      if (v42 <= &v37 && v42 + 24 * v43 > &v37)
      {
        v33 = &v37 - v42;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v5 = v42;
        v4 = (v42 + v33);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v4 = &v37;
        v5 = v42;
      }
    }

    v6 = &v5[24 * v43];
    v7 = *v4;
    *(v6 + 2) = v4[2];
    *v6 = v7;
    ++v43;
  }

  Shape = mlir::ShapedType::getShape(a2[1]);
  if (v40)
  {
    v37 = ", ";
    sub_100066E2C(Shape, &Shape[v9], v41, v41, &v37);
    if (v40)
    {
      LODWORD(v37) = 3;
      v38 = "]); inferred shape of indices literal ([";
      v39 = 40;
      v10 = &v37;
      v11 = v42;
      if (v43 >= v44)
      {
        if (v42 <= &v37 && v42 + 24 * v43 > &v37)
        {
          v34 = &v37 - v42;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
          v11 = v42;
          v10 = (v42 + v34);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
          v10 = &v37;
          v11 = v42;
        }
      }

      v12 = &v11[24 * v43];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v43;
    }
  }

  v14 = mlir::ShapedType::getShape(a2[2]);
  if (v40)
  {
    v37 = ", ";
    sub_100066E2C(v14, &v14[v15], v41, v41, &v37);
    if (v40)
    {
      LODWORD(v37) = 3;
      v38 = "]); inferred shape of values literal ([";
      v39 = 39;
      v16 = &v37;
      v17 = v42;
      if (v43 >= v44)
      {
        if (v42 <= &v37 && v42 + 24 * v43 > &v37)
        {
          v35 = &v37 - v42;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
          v17 = v42;
          v16 = (v42 + v35);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
          v16 = &v37;
          v17 = v42;
        }
      }

      v18 = &v17[24 * v43];
      v19 = *v16;
      *(v18 + 2) = v16[2];
      *v18 = v19;
      ++v43;
    }
  }

  v20 = mlir::ShapedType::getShape(a2[3]);
  if (v40)
  {
    v37 = ", ";
    sub_100066E2C(v20, &v20[v21], v41, v41, &v37);
    if (v40)
    {
      LODWORD(v37) = 3;
      v38 = "])";
      v39 = 2;
      v22 = &v37;
      v23 = v42;
      if (v43 >= v44)
      {
        if (v42 <= &v37 && v42 + 24 * v43 > &v37)
        {
          v36 = &v37 - v42;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
          v23 = v42;
          v22 = (v42 + v36);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
          v22 = &v37;
          v23 = v42;
        }
      }

      v24 = &v23[24 * v43];
      v25 = *v22;
      *(v24 + 2) = v22[2];
      *v24 = v25;
      ++v43;
    }
  }

  sub_10006BAFC(a1, &v40);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v51 == 1)
  {
    if (v50 != &v51)
    {
      free(v50);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v49;
      v28 = __p;
      if (v49 != __p)
      {
        do
        {
          v27 = sub_10005BEF4(v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v49 = v26;
      operator delete(v28);
    }

    v29 = v46;
    if (v46)
    {
      v30 = v47;
      v31 = v46;
      if (v47 != v46)
      {
        do
        {
          v32 = *--v30;
          *v30 = 0;
          if (v32)
          {
            operator delete[]();
          }
        }

        while (v30 != v29);
        v31 = v46;
      }

      v47 = v29;
      operator delete(v31);
    }

    if (v42 != v45)
    {
      free(v42);
    }
  }
}

void sub_1000DF7BC(uint64_t a1, void **a2, unsigned int a3, uint64_t *a4, uint64_t a5)
{
  (**a2)(&v48, (*a2)[1]);
  if (v48)
  {
    LODWORD(v45) = 3;
    v46 = "sparse index #";
    v47 = 14;
    v10 = &v45;
    v11 = v50;
    if (v51 >= v52)
    {
      if (v50 <= &v45 && v50 + 24 * v51 > &v45)
      {
        v40 = &v45 - v50;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
        v11 = v50;
        v10 = (v50 + v40);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
        v10 = &v45;
        v11 = v50;
      }
    }

    v12 = &v11[24 * v51];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    v14 = ++v51;
    if (v48)
    {
      LODWORD(v45) = 5;
      v46 = a3;
      v15 = &v45;
      v16 = v50;
      if (v14 >= v52)
      {
        if (v50 <= &v45 && v50 + 24 * v14 > &v45)
        {
          v41 = &v45 - v50;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v14 + 1, 24);
          v16 = v50;
          v15 = (v50 + v41);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v14 + 1, 24);
          v15 = &v45;
          v16 = v50;
        }
      }

      v17 = &v16[24 * v51];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      v19 = ++v51;
      if (v48)
      {
        LODWORD(v45) = 3;
        v46 = " is not contained within the value shape, with index=[";
        v47 = 54;
        v20 = &v45;
        v21 = v50;
        if (v19 >= v52)
        {
          if (v50 <= &v45 && v50 + 24 * v19 > &v45)
          {
            v42 = &v45 - v50;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v19 + 1, 24);
            v21 = v50;
            v20 = (v50 + v42);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v19 + 1, 24);
            v20 = &v45;
            v21 = v50;
          }
        }

        v22 = &v21[24 * v51];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v51;
        if (v48)
        {
          v45 = ", ";
          sub_1000DFEA8(a4, &a4[a5], v49, v49, &v45);
          if (v48)
          {
            LODWORD(v45) = 3;
            v46 = "], and type=";
            v47 = 12;
            v24 = &v45;
            v25 = v50;
            if (v51 >= v52)
            {
              if (v50 <= &v45 && v50 + 24 * v51 > &v45)
              {
                v43 = &v45 - v50;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
                v25 = v50;
                v24 = (v50 + v43);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
                v24 = &v45;
                v25 = v50;
              }
            }

            v26 = &v25[24 * v51];
            v27 = *v24;
            *(v26 + 2) = v24[2];
            *v26 = v27;
            ++v51;
            if (v48)
            {
              v28 = *a2[1];
              v29 = &v45;
              mlir::DiagnosticArgument::DiagnosticArgument(&v45, v28);
              v30 = v50;
              if (v51 >= v52)
              {
                if (v50 <= &v45 && v50 + 24 * v51 > &v45)
                {
                  v44 = &v45 - v50;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
                  v30 = v50;
                  v29 = (v50 + v44);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
                  v29 = &v45;
                  v30 = v50;
                }
              }

              v31 = &v30[24 * v51];
              v32 = *v29;
              *(v31 + 2) = v29[2];
              *v31 = v32;
              ++v51;
            }
          }
        }
      }
    }
  }

  sub_10006BAFC(a1, &v48);
  if (v48)
  {
    mlir::InFlightDiagnostic::report(&v48);
  }

  if (v59 == 1)
  {
    if (v58 != &v59)
    {
      free(v58);
    }

    v33 = __p;
    if (__p)
    {
      v34 = v57;
      v35 = __p;
      if (v57 != __p)
      {
        do
        {
          v34 = sub_10005BEF4(v34 - 1);
        }

        while (v34 != v33);
        v35 = __p;
      }

      v57 = v33;
      operator delete(v35);
    }

    v36 = v54;
    if (v54)
    {
      v37 = v55;
      v38 = v54;
      if (v55 != v54)
      {
        do
        {
          v39 = *--v37;
          *v37 = 0;
          if (v39)
          {
            operator delete[]();
          }
        }

        while (v37 != v36);
        v38 = v54;
      }

      v55 = v36;
      operator delete(v38);
    }

    if (v50 != v53)
    {
      free(v50);
    }
  }
}

void *mlir::DistinctAttr::create(uint64_t a1)
{
  v4 = a1;
  Context = mlir::Attribute::getContext(&v4);
  Storage = mlir::detail::DistinctAttributeUniquer::allocateStorage(Context, v4);
  if ((atomic_load_explicit(&qword_1002E0670, memory_order_acquire) & 1) == 0)
  {
    sub_10029B8F0();
  }

  *Storage = mlir::AbstractAttribute::lookup(qword_1002E0668, Context);
  return Storage;
}

uint64_t sub_1000DFDB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ShapedType::getElementType(&v14);
  result = sub_1000DC620(v14);
  if (result != 64)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v14);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v14;
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v15 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v15) || (result = mlir::IntegerType::getSignedness(&v15), result != 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v14 = *(v5 + 8);
    v8 = v14;
    *(&v14 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v14);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

__n128 sub_1000DFEA8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void ***a5)
{
  if (a1 != a2)
  {
    v33 = v5;
    v34 = v6;
    v12 = (a3 + 16);
    v11 = *(a3 + 16);
    v13 = *a1;
    LODWORD(v29) = 5;
    v30 = v13;
    v14 = *(a3 + 24);
    v15 = &v29;
    if (v14 >= *(a3 + 28))
    {
      v27 = a1;
      if (v11 <= &v29 && v11 + 24 * v14 > &v29)
      {
        v28 = &v29 - v11;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (a3 + 32), v14 + 1, 24);
        v11 = *(a3 + 16);
        v15 = &v28[v11];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (a3 + 32), v14 + 1, 24);
        v11 = *(a3 + 16);
        v15 = &v29;
      }

      a1 = v27;
    }

    v16 = (v11 + 24 * *(a3 + 24));
    result = *v15;
    v16[1].n128_u64[0] = v15[1].n128_u64[0];
    *v16 = result;
    ++*(a3 + 24);
    for (i = a1 + 1; i != a2; ++i)
    {
      v19 = *a5;
      v20 = 1;
      v32 = 1;
      if (*v19)
      {
        v29 = v19;
        v20 = 3;
      }

      v31 = v20;
      mlir::Diagnostic::operator<<(a4, &v29);
      v21 = *i;
      LODWORD(v29) = 5;
      v30 = v21;
      v22 = *(a3 + 24);
      v23 = *(a3 + 16);
      if (v22 >= *(a3 + 28))
      {
        if (v23 <= &v29 && v23 + 24 * v22 > &v29)
        {
          v26 = &v29 - v23;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (a3 + 32), v22 + 1, 24);
          v23 = *v12;
          v24 = &v26[*v12];
          goto LABEL_8;
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (a3 + 32), v22 + 1, 24);
        v23 = *v12;
      }

      v24 = &v29;
LABEL_8:
      v25 = (v23 + 24 * *(a3 + 24));
      result = *v24;
      v25[1].n128_u64[0] = v24[1].n128_u64[0];
      *v25 = result;
      ++*(a3 + 24);
    }
  }

  return result;
}

void *sub_1000E00CC(uint64_t **a1, void *a2)
{
  v2 = **a1;
  a2[10] += 16;
  v3 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = v3 + 2;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v3 = sub_10003E4AC(a2, 16, 16, 3);
    *v3 = 0;
    v3[1] = v2;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return v3;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *v3 = 0;
  v3[1] = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(v6[1], v3);
  }

  return v3;
}

unint64_t sub_1000E0184(_DWORD *a1, _DWORD *a2)
{
  if (a1 == a2)
  {
    v67 = 0;
  }

  else
  {
    v2 = (*a1 >> 4) ^ (*a1 >> 9);
    *&v74 = v2;
    if (a1 + 2 == a2)
    {
      v67 = 8;
    }

    else
    {
      v3 = (a1[2] >> 4) ^ (a1[2] >> 9);
      *(&v74 + 1) = v3;
      if (a1 + 4 == a2)
      {
        v67 = 16;
      }

      else
      {
        v4 = (a1[4] >> 4) ^ (a1[4] >> 9);
        *&v75 = v4;
        if (a1 + 6 == a2)
        {
          v67 = 24;
        }

        else
        {
          v5 = (a1[6] >> 4) ^ (a1[6] >> 9);
          *(&v75 + 1) = v5;
          if (a1 + 8 == a2)
          {
            v67 = 32;
          }

          else
          {
            v6 = (a1[8] >> 4) ^ (a1[8] >> 9);
            *&v76 = v6;
            if (a1 + 10 == a2)
            {
              v67 = 40;
            }

            else
            {
              v7 = (a1[10] >> 4) ^ (a1[10] >> 9);
              *(&v76 + 1) = v7;
              if (a1 + 12 == a2)
              {
                v67 = 48;
              }

              else
              {
                v8 = (a1[12] >> 4) ^ (a1[12] >> 9);
                *&v77 = v8;
                if (a1 + 14 == a2)
                {
                  v67 = 56;
                }

                else
                {
                  v9 = (a1[14] >> 4) ^ (a1[14] >> 9);
                  *(&v77 + 1) = v9;
                  v10 = a1 + 16;
                  if (a1 + 16 != a2)
                  {
                    v73 = &v75 + 8;
                    v11 = v6 + 0x4BF62CB950C3753ALL;
                    *(&v13 + 1) = v7 + v8 + v6 + 0x4BF62CB950C3753ALL;
                    *&v13 = 0x4BF62CB900000000;
                    v12 = v13 >> 44;
                    v14 = *(&v13 + 1) + v9;
                    *(&v13 + 1) = v8 + 0x61299596E4;
                    *&v13 = 0xBEB4006120000000;
                    v15 = v12 + v11;
                    v16 = v7 - 0x4B6D499041670D8DLL * (v13 >> 42) - 0x7323D61940A0DA1FLL;
                    v17 = v15 + __ROR8__(v16 + v4 + v11 + v9, 21);
                    v18 = v2 + 0x298DF016A9F64655;
                    v19 = v2 + 0x298DF016A9F64655 + v3 + v4;
                    v20 = v19 + v5;
                    *(&v13 + 1) = v19;
                    *&v13 = 0x298DF00000000000;
                    v21 = (v13 >> 44) + v18;
                    *(&v13 + 1) = v3 + 0x1EACB4B2AELL;
                    *&v13 = 0x8C2DD9BEA0000000;
                    v22 = (0xB492B66FBE98F273 * (v13 >> 37)) ^ 0xF7ACCA5326449396;
                    v23 = v21 + __ROR8__(v22 + v18 + v5 - 0xAE502812AB8D92, 21);
                    v24 = 0x544962662A7EE1A4;
                    v25 = 64;
                    while (1)
                    {
                      v32 = v10 + 2;
                      *&v74 = (*v10 >> 4) ^ (*v10 >> 9);
                      v33 = v10 + 2 == a2;
                      if (v10 + 2 == a2)
                      {
                        v35 = 0;
                        v36 = &v74 + 8;
                        v37 = 8;
                      }

                      else
                      {
                        *(&v74 + 1) = (v10[2] >> 4) ^ (v10[2] >> 9);
                        v32 = v10 + 4;
                        v33 = v10 + 4 == a2;
                        if (v10 + 4 == a2)
                        {
                          v35 = 8;
                          v36 = &v75;
                          v37 = 16;
                        }

                        else
                        {
                          *&v75 = (v10[4] >> 4) ^ (v10[4] >> 9);
                          v32 = v10 + 6;
                          v33 = v10 + 6 == a2;
                          if (v10 + 6 == a2)
                          {
                            v35 = 16;
                            v36 = v73;
                            v37 = 24;
                          }

                          else
                          {
                            *(&v75 + 1) = (v10[6] >> 4) ^ (v10[6] >> 9);
                            v32 = v10 + 8;
                            v33 = v10 + 8 == a2;
                            if (v10 + 8 == a2)
                            {
                              v35 = 24;
                              v36 = &v76;
                              v37 = 32;
                            }

                            else
                            {
                              *&v76 = (v10[8] >> 4) ^ (v10[8] >> 9);
                              v32 = v10 + 10;
                              v33 = v10 + 10 == a2;
                              if (v10 + 10 == a2)
                              {
                                v35 = 32;
                                v36 = &v76 + 8;
                                v37 = 40;
                              }

                              else
                              {
                                *(&v76 + 1) = (v10[10] >> 4) ^ (v10[10] >> 9);
                                v32 = v10 + 12;
                                v33 = v10 + 12 == a2;
                                if (v10 + 12 == a2)
                                {
                                  v35 = 40;
                                  v36 = &v77;
                                  v37 = 48;
                                }

                                else
                                {
                                  *&v77 = (v10[12] >> 4) ^ (v10[12] >> 9);
                                  v32 = v10 + 14;
                                  v33 = v10 + 14 == a2;
                                  if (v10 + 14 != a2)
                                  {
                                    v34 = (v10[14] >> 4) ^ (v10[14] >> 9);
                                    v10 += 16;
                                    *(&v77 + 1) = v34;
                                    v33 = v10 == a2;
                                    v35 = 56;
                                    v36 = &v78;
                                    v37 = 64;
                                    goto LABEL_28;
                                  }

                                  v35 = 48;
                                  v36 = &v77 + 8;
                                  v37 = 56;
                                }
                              }
                            }
                          }
                        }
                      }

                      v10 = v32;
LABEL_28:
                      if ((v37 & 0x38) != 0)
                      {
                        v38 = 56 - v35;
                        v39 = v37;
                        if (v37 != 56 - v35)
                        {
                          do
                          {
                            v46 = v39;
                            v39 = v38;
                            v38 = v46 % v38;
                          }

                          while (v38);
                          v47 = (&v74 + v39);
                          do
                          {
                            v49 = *(v47 - 1);
                            v47 = (v47 - 1);
                            v48 = v49;
                            v50 = (v47 + v37);
                            v51 = v47;
                            do
                            {
                              v52 = v51;
                              v51 = v50;
                              *v52 = *v50;
                              v53 = v37 < &v78 - v50;
                              v54 = &v74 + v37 - (&v78 - v50);
                              v50 = (v50 + v37);
                              if (!v53)
                              {
                                v50 = v54;
                              }
                            }

                            while (v50 != v47);
                            *v51 = v48;
                          }

                          while (v47 != &v74);
                          goto LABEL_11;
                        }

                        v40 = v35 | 7;
                        if (55 - v35 < (v35 | 7uLL))
                        {
                          v40 = 55 - v35;
                        }

                        v41 = &v74;
                        if (&v74 < (&v74 | 9) + v35 + v40)
                        {
                          v42 = v37;
                          if (v36 < &v74 + v40 + 1)
                          {
                            goto LABEL_34;
                          }
                        }

                        if (v40 >= 0x1F)
                        {
                          v56 = v40 + 1;
                          v55 = (v40 + 1) & 0x60;
                          v57 = v74;
                          v58 = v75;
                          v59 = *(v36 + 1);
                          v74 = *(&v74 + v37);
                          v75 = v59;
                          *(&v74 + v37) = v57;
                          *(v36 + 1) = v58;
                          if (v55 != 32)
                          {
                            v60 = v76;
                            v61 = v77;
                            v62 = *(v36 + 3);
                            v76 = *(v36 + 2);
                            v77 = v62;
                            *(v36 + 2) = v60;
                            *(v36 + 3) = v61;
                          }

                          if (v56 == v55)
                          {
                            goto LABEL_11;
                          }

                          if ((v56 & 0x18) == 0)
                          {
                            v41 = &v74 + v55;
                            v42 = v37 + v55;
LABEL_34:
                            v43 = v41 + 1;
                            do
                            {
                              v44 = *(v43 - 1);
                              *(v43 - 1) = *(&v74 + v42);
                              *(&v74 + v42) = v44;
                              if (v43 == v36)
                              {
                                break;
                              }

                              ++v43;
                            }

                            while (v42++ != 63);
                            goto LABEL_11;
                          }
                        }

                        else
                        {
                          v55 = 0;
                        }

                        v63 = &v36[v55];
                        v64 = (&v74 + v55);
                        v65 = v40 - v55 + 1;
                        do
                        {
                          v66 = *v64;
                          *v64++ = *v63;
                          *v63 = v66;
                          v63 += 8;
                          v65 -= 8;
                        }

                        while (v65);
                      }

LABEL_11:
                      v26 = v16 + v20 + v24;
                      v16 = *(&v76 + 1) + v20 - 0x4B6D499041670D8DLL * __ROR8__(v16 + v23 + v77, 42);
                      v27 = v74 - 0x4B6D499041670D8DLL * v23;
                      v28 = v27 + *(&v74 + 1) + v75;
                      v29 = __ROR8__(v22 + v14, 33);
                      v30 = (0xB492B66FBE98F273 * __ROR8__(v26 + *(&v74 + 1), 37)) ^ v17;
                      v23 = __ROR8__(v28, 44) + v27 + __ROR8__(v30 + v14 + v27 + *(&v75 + 1), 21);
                      v24 = 0xB492B66FBE98F273 * v29;
                      v31 = 0xB492B66FBE98F273 * v29 + v17 + v76;
                      v20 = v28 + *(&v75 + 1);
                      v17 = __ROR8__(v16 + v75 + v31 + *(&v77 + 1), 21) + v31 + __ROR8__(*(&v76 + 1) + v77 + v31, 44);
                      v14 = *(&v76 + 1) + v77 + v31 + *(&v77 + 1);
                      v25 += v37;
                      v22 = v30;
                      if (v33)
                      {
                        v68 = 0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v20 ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v20 ^ v14)));
                        v69 = 0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * (v23 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ v17)));
                        v70 = 0x9DDFEA08EB382D69 * (v69 ^ (v69 >> 47)) - 0x4B6D499041670D8DLL * ((v25 ^ (v25 >> 47)) + v29);
                        v71 = 0x9DDFEA08EB382D69 * (v70 ^ (v30 - 0x4B6D499041670D8DLL * (v16 ^ (v16 >> 47)) - 0x622015F714C7D297 * (v68 ^ (v68 >> 47))));
                        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v70 ^ (v71 >> 47) ^ v71)) ^ ((0x9DDFEA08EB382D69 * (v70 ^ (v71 >> 47) ^ v71)) >> 47));
                      }
                    }
                  }

                  v67 = 64;
                }
              }
            }
          }
        }
      }
    }
  }

  return sub_10002D6F8(&v74, v67, 0xFF51AFD7ED558CCDLL);
}

BOOL sub_1000E08C8(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  v4 = **a1;
  v5 = 8 * v2 - 8;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = *v3++;
    result = v8 == v6;
    v10 = v8 != v6 || v5 == 0;
    v5 -= 8;
  }

  while (!v10);
  return result;
}

void *sub_1000E0920(uint64_t a1, unint64_t *a2)
{
  v3 = sub_1000E0970(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *sub_1000E0970(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a1;
  if (!v2)
  {
    v6 = 0;
    goto LABEL_17;
  }

  v4 = *a2;
  v5 = 8 * v2;
  a1[10] += 8 * v2;
  v6 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 + 8 * v2;
  if (v3)
  {
    v8 = v7 > a1[1];
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v18 = a1;
    v6 = sub_10003E4AC(a1, 8 * v2, 8 * v2, 3);
    a1 = v18;
    v9 = v5 - 8;
    if ((v5 - 8) >= 0x18)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *a1 = v7;
    v9 = v5 - 8;
    if ((v5 - 8) >= 0x18)
    {
LABEL_7:
      v10 = v6;
      v11 = v4;
      if (v6 - v4 >= 0x20)
      {
        v12 = (v9 >> 3) + 1;
        v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
        v10 = (v6 + v13);
        v11 = (v4 + v13);
        v14 = (v4 + 16);
        v15 = (v6 + 16);
        v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v17 = *v14;
          *(v15 - 1) = *(v14 - 1);
          *v15 = v17;
          v14 += 2;
          v15 += 2;
          v16 -= 4;
        }

        while (v16);
        if (v12 == (v12 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_16;
        }
      }

      goto LABEL_15;
    }
  }

  v10 = v6;
  v11 = v4;
  do
  {
LABEL_15:
    v19 = *v11++;
    *v10++ = v19;
  }

  while (v11 != (v4 + 8 * v2));
LABEL_16:
  v3 = *a1;
LABEL_17:
  a1[10] += 24;
  v20 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20 + 3;
  if (v3)
  {
    v22 = v21 > a1[1];
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v20 = sub_10003E4AC(a1, 24, 24, 3);
  }

  else
  {
    *a1 = v21;
  }

  *v20 = 0;
  v20[1] = v6;
  v20[2] = v2;
  return v20;
}

void *sub_1000E0AF4(unint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  if (!v4)
  {
    goto LABEL_23;
  }

  a1[10] += v4;
  v6 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 + v4;
  if (*a1)
  {
    v8 = v7 > a1[1];
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v17 = a1;
    v6 = sub_10003E4AC(a1, v4, v4, 3);
    a1 = v17;
    if (v4 < 8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *a1 = v7;
    if (v4 < 8)
    {
LABEL_20:
      v15 = v6;
      v16 = v5;
      goto LABEL_21;
    }
  }

  if (v6 - v5 < 0x20)
  {
    goto LABEL_20;
  }

  if (v4 < 0x20)
  {
    v9 = 0;
    goto LABEL_14;
  }

  v9 = v4 & 0xFFFFFFFFFFFFFFE0;
  v10 = (v5 + 16);
  v11 = (v6 + 16);
  v12 = v4 & 0xFFFFFFFFFFFFFFE0;
  do
  {
    v13 = *v10;
    *(v11 - 1) = *(v10 - 1);
    *v11 = v13;
    v10 += 2;
    v11 += 2;
    v12 -= 32;
  }

  while (v12);
  if (v4 == v9)
  {
    goto LABEL_22;
  }

  if ((v4 & 0x18) != 0)
  {
LABEL_14:
    v14 = v4 & 0xFFFFFFFFFFFFFFF8;
    v15 = (v6 + (v4 & 0xFFFFFFFFFFFFFFF8));
    v16 = (v5 + (v4 & 0xFFFFFFFFFFFFFFF8));
    do
    {
      *(v6 + v9) = *(v5 + v9);
      v9 += 8;
    }

    while (v14 != v9);
    if (v4 == v14)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v16 = (v5 + v9);
  v15 = (v6 + v9);
  do
  {
LABEL_21:
    v18 = *v16++;
    *v15++ = v18;
  }

  while (v16 != (v5 + v4));
LABEL_22:
  v5 = v6;
LABEL_23:
  a1[10] += 40;
  v19 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = v19 + 5;
  if (*a1)
  {
    v21 = v20 > a1[1];
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v19 = sub_10003E4AC(a1, 40, 40, 3);
  }

  else
  {
    *a1 = v20;
  }

  *v19 = 0;
  v19[1] = v2;
  v19[2] = v3;
  v19[3] = v5;
  v19[4] = v4;
  return v19;
}

BOOL sub_1000E0C84(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) == **a1 && *(a2 + 16) == v2[1] && (v3 = *(a2 + 32), v3 == v2[3]))
  {
    return memcmp(*(a2 + 24), v2[2], v3) == 0;
  }

  else
  {
    return 0;
  }
}

void *sub_1000E0CF0(uint64_t a1, unint64_t *a2)
{
  v3 = sub_1000E0AF4(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t sub_1000E0D50@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v8 = result;
  if (a4)
  {
    result = llvm::hash_value(*a3, *(a3 + 8));
    v12 = result;
    if (a5)
    {
      *a6 = v8;
      *(a6 + 8) = a2;
      *(a6 + 16) = a3;
      *(a6 + 24) = a4;
      *(a6 + 32) = result;
      *(a6 + 40) = 1;
      return result;
    }

    v13 = a4 - 1;
    if (a4 == 1)
    {
LABEL_6:
      *a6 = v8;
      *(a6 + 8) = a2;
      *(a6 + 16) = a3;
      *(a6 + 24) = 1;
      *(a6 + 32) = v12;
      *(a6 + 40) = 1;
      return result;
    }

    v14 = *(a3 + 8);
    if (v14)
    {
      v15 = *a3;
      v16 = a3 + 16;
      while (v14 == *(v16 + 8))
      {
        result = memcmp(v15, *v16, v14);
        if (result)
        {
          break;
        }

        v16 += 16;
        if (!--v13)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v16 = a3 + 16;
      while (!*(v16 + 8))
      {
        v16 += 16;
        if (!--v13)
        {
          goto LABEL_6;
        }
      }
    }

    memset(v19, 0, sizeof(v19));
    memset(v18, 0, sizeof(v18));
    v20 = 0;
    v21 = 0xFF51AFD7ED558CCDLL;
    __src[0] = v12;
    __src[1] = sub_1000E0EFC(v16, a3 + 16 * a4);
    result = sub_10002D330(__src, 0, v18, v19);
    *a6 = v8;
    *(a6 + 8) = a2;
    *(a6 + 16) = a3;
    *(a6 + 24) = a4;
    *(a6 + 32) = result;
  }

  else
  {
    *a6 = result;
    *(a6 + 8) = a2;
    *(a6 + 24) = 0;
    *(a6 + 32) = 0;
    *(a6 + 16) = a3;
  }

  *(a6 + 40) = 0;
  return result;
}

unint64_t sub_1000E0EFC(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v30 = 0;
  }

  else
  {
    v4 = llvm::hash_value(*a1, *(a1 + 8));
    v89 = v4;
    if (a1 + 16 == a2)
    {
      v30 = 8;
    }

    else
    {
      v5 = v4;
      v6 = llvm::hash_value(*(a1 + 16), *(a1 + 24));
      v90 = v6;
      if (a1 + 32 == a2)
      {
        v30 = 16;
      }

      else
      {
        v7 = v6;
        v8 = llvm::hash_value(*(a1 + 32), *(a1 + 40));
        v91 = v8;
        if (a1 + 48 == a2)
        {
          v30 = 24;
        }

        else
        {
          v9 = v8;
          v10 = llvm::hash_value(*(a1 + 48), *(a1 + 56));
          v92 = v10;
          if (a1 + 64 == a2)
          {
            v30 = 32;
          }

          else
          {
            v87 = v10;
            v11 = llvm::hash_value(*(a1 + 64), *(a1 + 72));
            v93 = v11;
            if (a1 + 80 == a2)
            {
              v30 = 40;
            }

            else
            {
              v12 = v11;
              v13 = llvm::hash_value(*(a1 + 80), *(a1 + 88));
              v94 = v13;
              if (a1 + 96 == a2)
              {
                v30 = 48;
              }

              else
              {
                v14 = v13;
                v15 = llvm::hash_value(*(a1 + 96), *(a1 + 104));
                v95 = v15;
                if (a1 + 112 == a2)
                {
                  v30 = 56;
                }

                else
                {
                  v16 = v15;
                  v17 = llvm::hash_value(*(a1 + 112), *(a1 + 120));
                  v96 = v17;
                  v18 = a1 + 128;
                  if (a1 + 128 != a2)
                  {
                    v84 = v17;
                    llvm::hash_value(*(a1 + 128), *(a1 + 136));
                    v19 = v14 + v16 + v12 + 0x4BF62CB950C3753ALL + v84;
                    v20 = __ROR8__(v14 + v16 + v12 + 0x4BF62CB950C3753ALL, 44) + v12 + 0x4BF62CB950C3753ALL;
                    v21 = v14 - 0x4B6D499041670D8DLL * __ROR8__(v16 - 0x414BFF9ED66A691CLL, 42) - 0x7323D61940A0DA1FLL;
                    v22 = v20 + __ROR8__(v21 + v9 + v12 + 0x4BF62CB950C3753ALL + v84, 21);
                    v23 = v5 + 0x298DF016A9F64655;
                    v24 = v5 + 0x298DF016A9F64655 + v7 + v9;
                    v25 = v24 + v87;
                    v26 = (0xB492B66FBE98F273 * __ROR8__(v7 - 0x73D22641534B4D52, 37)) ^ 0xF7ACCA5326449396;
                    v27 = __ROR8__(v24, 44) + v23 + __ROR8__(v26 + v23 + v87 - 0xAE502812AB8D92, 21);
                    v83 = ~&v89;
                    v28 = 0x544962662A7EE1A4;
                    v29 = 64;
                    while (1)
                    {
                      v85 = v26;
                      v86 = v19;
                      v88 = v22;
                      v89 = llvm::hash_value(*v18, *(v18 + 8));
                      v38 = v18 + 16;
                      if (v18 + 16 == a2)
                      {
                        v39 = &v90;
                        v40 = &v90;
                        v31 = 8;
                      }

                      else
                      {
                        v90 = llvm::hash_value(*(v18 + 16), *(v18 + 24));
                        v38 = v18 + 32;
                        if (v18 + 32 == a2)
                        {
                          v39 = &v91;
                          v40 = &v91;
                          v31 = 16;
                        }

                        else
                        {
                          v91 = llvm::hash_value(*(v18 + 32), *(v18 + 40));
                          v38 = v18 + 48;
                          if (v18 + 48 == a2)
                          {
                            v39 = &v92;
                            v40 = &v92;
                            v31 = 24;
                          }

                          else
                          {
                            v92 = llvm::hash_value(*(v18 + 48), *(v18 + 56));
                            v38 = v18 + 64;
                            if (v18 + 64 == a2)
                            {
                              v39 = &v93;
                              v40 = &v93;
                              v31 = 32;
                            }

                            else
                            {
                              v93 = llvm::hash_value(*(v18 + 64), *(v18 + 72));
                              v38 = v18 + 80;
                              if (v18 + 80 == a2)
                              {
                                v39 = &v94;
                                v40 = &v94;
                                v31 = 40;
                              }

                              else
                              {
                                v94 = llvm::hash_value(*(v18 + 80), *(v18 + 88));
                                v38 = v18 + 96;
                                if (v18 + 96 == a2)
                                {
                                  v39 = &v95;
                                  v40 = &v95;
                                  v31 = 48;
                                }

                                else
                                {
                                  v95 = llvm::hash_value(*(v18 + 96), *(v18 + 104));
                                  v38 = v18 + 112;
                                  if (v18 + 112 != a2)
                                  {
                                    v96 = llvm::hash_value(*(v18 + 112), *(v18 + 120));
                                    v38 = v18 + 128;
                                    if (v18 + 128 != a2)
                                    {
                                      llvm::hash_value(*(v18 + 128), *(v18 + 136));
                                    }

                                    v31 = 64;
                                    goto LABEL_19;
                                  }

                                  v39 = &v96;
                                  v40 = &v96;
                                  v31 = 56;
                                }
                              }
                            }
                          }
                        }
                      }

                      v41 = 64 - v31;
                      v42 = v31;
                      if (v31 != 64 - v31)
                      {
                        do
                        {
                          v49 = v42;
                          v42 = v41;
                          v41 = v49 % v41;
                        }

                        while (v41);
                        v50 = (&v89 + v42);
                        do
                        {
                          v52 = *(v50 - 1);
                          v50 = (v50 - 1);
                          v51 = v52;
                          v53 = &v50[v31 / 8];
                          v54 = v50;
                          do
                          {
                            v55 = v54;
                            v54 = v53;
                            *v55 = *v53;
                            v56 = (&v97 - v53);
                            v57 = __OFSUB__(v31, v56);
                            v59 = v31 - v56;
                            v58 = (v59 < 0) ^ v57;
                            v53 = (&v89 + v59);
                            if (v58)
                            {
                              v53 = &v54[v31 / 8];
                            }
                          }

                          while (v53 != v50);
                          *v54 = v51;
                        }

                        while (v50 != &v89);
                        goto LABEL_19;
                      }

                      v43 = v31 ^ 0x3F;
                      if (v39 + v83 < (v31 ^ 0x3FuLL))
                      {
                        v43 = v39 + v83;
                      }

                      v44 = &v89;
                      if (v43 < 3 || &v89 < (&v89 + v43 + v31 + 1) && v40 < (&v89 + v43 + 1))
                      {
                        v45 = v31;
                        goto LABEL_43;
                      }

                      v60 = v43 + 1;
                      if (v43 >= 0xF)
                      {
                        v61 = v60 & 0x70;
                        v62 = v89;
                        v63 = v90;
                        v64 = v40[1];
                        v89 = *(&v89 + v31);
                        v90 = v64;
                        *(&v89 + v31) = v62;
                        v40[1] = v63;
                        if (v61 != 16)
                        {
                          v65 = v91;
                          v66 = v92;
                          v67 = v40[3];
                          v91 = v40[2];
                          v92 = v67;
                          v40[2] = v65;
                          v40[3] = v66;
                          if (v61 != 32)
                          {
                            v68 = v93;
                            v69 = v94;
                            v70 = v40[5];
                            v93 = v40[4];
                            v94 = v70;
                            v40[4] = v68;
                            v40[5] = v69;
                            if (v61 != 48)
                            {
                              v71 = v95;
                              v72 = v96;
                              v73 = v40[7];
                              v95 = v40[6];
                              v96 = v73;
                              v40[6] = v71;
                              v40[7] = v72;
                            }
                          }
                        }

                        if (v60 == v61)
                        {
                          goto LABEL_19;
                        }

                        if ((v60 & 0xC) == 0)
                        {
                          v44 = (&v89 + v61);
                          v45 = v31 + v61;
LABEL_43:
                          v46 = (v44 + 1);
                          do
                          {
                            v47 = *(v46 - 1);
                            *(v46 - 1) = *(&v89 + v45);
                            *(&v89 + v45) = v47;
                            if (v46 == v39)
                            {
                              break;
                            }

                            v46 = (v46 + 1);
                          }

                          while (v45++ != 63);
                          goto LABEL_19;
                        }
                      }

                      else
                      {
                        v61 = 0;
                      }

                      v45 = v31 + (v60 & 0x7C);
                      v44 = (&v89 + (v60 & 0x7C));
                      v74 = (v40 + v61);
                      v75 = (&v89 + v61);
                      v76 = v61 - (v60 & 0x7C);
                      do
                      {
                        v77 = *v75;
                        *v75++ = *v74;
                        *v74++ = v77;
                        v76 += 4;
                      }

                      while (v76);
                      if (v60 != (v60 & 0x7C))
                      {
                        goto LABEL_43;
                      }

LABEL_19:
                      v32 = __ROR8__(v21 + v25 + v28 + v90, 37);
                      v21 = v94 + v25 - 0x4B6D499041670D8DLL * __ROR8__(v21 + v27 + v95, 42);
                      v33 = v89 - 0x4B6D499041670D8DLL * v27;
                      v34 = v33 + v90 + v91;
                      v35 = (0xB492B66FBE98F273 * v32) ^ v88;
                      v36 = __ROR8__(v85 + v86, 33);
                      v27 = __ROR8__(v34, 44) + v33 + __ROR8__(v35 + v86 + v33 + v92, 21);
                      v28 = 0xB492B66FBE98F273 * v36;
                      v37 = 0xB492B66FBE98F273 * v36 + v88 + v93;
                      v25 = v34 + v92;
                      v22 = __ROR8__(v21 + v91 + v37 + v96, 21) + v37 + __ROR8__(v94 + v95 + v37, 44);
                      v19 = v94 + v95 + v37 + v96;
                      v29 += v31;
                      v18 = v38;
                      v26 = v35;
                      if (v38 == a2)
                      {
                        v78 = 0x9DDFEA08EB382D69 * (v19 ^ ((0x9DDFEA08EB382D69 * (v25 ^ v19)) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ v19)));
                        v79 = v35 - 0x4B6D499041670D8DLL * (v21 ^ (v21 >> 47)) - 0x622015F714C7D297 * (v78 ^ (v78 >> 47));
                        v80 = 0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v27 ^ v22)) >> 47) ^ (0x9DDFEA08EB382D69 * (v27 ^ v22)));
                        v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v80 >> 47)) - 0x4B6D499041670D8DLL * ((v29 ^ (v29 >> 47)) + v36);
                        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v81 ^ ((0x9DDFEA08EB382D69 * (v81 ^ v79)) >> 47) ^ (0x9DDFEA08EB382D69 * (v81 ^ v79)))) ^ ((0x9DDFEA08EB382D69 * (v81 ^ ((0x9DDFEA08EB382D69 * (v81 ^ v79)) >> 47) ^ (0x9DDFEA08EB382D69 * (v81 ^ v79)))) >> 47));
                      }
                    }
                  }

                  v30 = 64;
                }
              }
            }
          }
        }
      }
    }
  }

  return sub_10002D6F8(&v89, v30, 0xFF51AFD7ED558CCDLL);
}

uint64_t sub_1000E16AC(void *a1, void *a2)
{
  v2 = *a1;
  if (**a1 != a2[1])
  {
    return 0;
  }

  v3 = v2[3];
  if (v3 != a2[5])
  {
    return 0;
  }

  if (v3)
  {
    v4 = v2[2];
    v5 = a2[4];
    v6 = v4 + 16 * v3;
    while (1)
    {
      v7 = *(v4 + 8);
      if (v7 != *(v5 + 8) || v7 && memcmp(*v4, *v5, v7))
      {
        break;
      }

      v4 += 16;
      v5 += 16;
      if (v4 == v6)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000E1754(__n128 **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[2];
  v10[1] = (*a1)[1];
  v10[2] = v4;
  v10[0] = v3;
  v6 = sub_1000E17C0(a2, v10);
  v7 = v5;
  v8 = a1[1];
  if (v8->n128_u64[0])
  {
    (v8->n128_u64[0])(v8->n128_u64[1], v5, v6);
  }

  return v7;
}

__n128 sub_1000E17C0(unint64_t *a1, __n128 *a2)
{
  v4 = a2[1].n128_u64[1];
  if (!v4)
  {
    a1[10] += 48;
    v10 = a1[1];
    v11 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = v11 + 48;
    if (*a1)
    {
      v13 = v12 > v10;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v11 = sub_10003E4AC(a1, 48, 48, 3);
    }

    else
    {
      *a1 = v12;
    }

    v14 = a2[2].n128_u8[8];
    result = *a2;
    *v11 = 0;
    *(v11 + 8) = result;
    *(v11 + 24) = v14;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    return result;
  }

  v5 = a2[1].n128_u64[0];
  if (a2[2].n128_u8[8])
  {
    LODWORD(v4) = 1;
  }

  v6 = v4;
  v7 = 16 * v4;
  if (v4 < 1)
  {
    v9 = 16 * v4;
  }

  else
  {
    if (v4 > 4)
    {
      v16 = v4 & 3;
      if ((v6 & 3) == 0)
      {
        v16 = 4;
      }

      v8 = v6 - v16;
      v17 = 0uLL;
      v18 = v7;
      v19 = (v5 + 40);
      v20 = v8;
      do
      {
        v21 = v19 - 4;
        v22 = vld2q_f64(v21);
        v23 = vld2q_f64(v19);
        v18 = vaddq_s64(v22, v18);
        v17 = vaddq_s64(v23, v17);
        v19 += 8;
        v20 -= 4;
      }

      while (v20);
      v9 = vaddvq_s64(vaddq_s64(v17, v18));
    }

    else
    {
      v8 = 0;
      v9 = v7;
    }

    v24 = (v5 + 16 * v8 + 8);
    v25 = v6 - v8;
    do
    {
      v26 = *v24;
      v24 += 2;
      v9 += v26;
      --v25;
    }

    while (v25);
  }

  a1[10] += v9;
  v27 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = v27 + v9;
  if (*a1)
  {
    v29 = v28 > a1[1];
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v27 = sub_10003E4AC(a1, v9, v9, 3);
    if (v6 >= 1)
    {
LABEL_26:
      v30 = (v27 + v7);
      v31 = (v5 + 8);
      v32 = (v27 + 8);
      v33 = v6;
      do
      {
        memcpy(v30, *(v31 - 1), *v31);
        v34 = *v31;
        v31 += 2;
        *(v32 - 1) = v30;
        *v32 = v34;
        v30 += v34;
        v32 += 2;
        --v33;
      }

      while (v33);
    }
  }

  else
  {
    *a1 = v28;
    if (v6 >= 1)
    {
      goto LABEL_26;
    }
  }

  a1[10] += 48;
  if (*a1 && (v35 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8, v35 + 48 <= a1[1]))
  {
    *a1 = v35 + 48;
  }

  else
  {
    v35 = sub_10003E4AC(a1, 48, 48, 3);
  }

  v36 = a2[2].n128_u8[8];
  result = *a2;
  *v35 = 0;
  *(v35 + 8) = result;
  *(v35 + 24) = v36;
  *(v35 + 32) = v27;
  *(v35 + 40) = v6;
  return result;
}

uint64_t sub_1000E1A18(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, const llvm::detail::IEEEFloat *a6)
{
  v19[0] = a2;
  v19[1] = a3;
  v20 = *a5;
  v9 = *a6;
  v10 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v10 == v9)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v21, a6);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v21, a6);
  }

  v12 = llvm::hash_value(v21, v11);
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))));
  v17[0] = &v20;
  v17[1] = v19;
  v18 = &v20;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v14 >> 47) ^ v14)) ^ v12, sub_1000E1BAC, &v18, sub_1000E1C58, v17);
  if (v10 == v21[0])
  {
    sub_10002B154(v21);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v21);
  }

  return ParametricStorageTypeImpl;
}

uint64_t sub_1000E1BAC(llvm::APFloatBase *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v3 = (a2 + 16);
  v4 = v5;
  v7 = v2[1];
  v6 = (v2 + 1);
  if (v4 != v7)
  {
    return 0;
  }

  v9 = v3;
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v4)
  {

    return llvm::detail::DoubleAPFloat::bitwiseIsEqual(v9, v6);
  }

  else
  {

    return llvm::detail::IEEEFloat::bitwiseIsEqual(v9, v6);
  }
}

__n128 *sub_1000E1C58(uint64_t a1, llvm::APFloatBase *a2)
{
  v3 = sub_1000E1CA8(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

__n128 *sub_1000E1CA8(llvm::APFloatBase *a1, void *a2)
{
  v3 = *a2;
  v4 = (a2 + 1);
  v5 = a2[1];
  v6 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v6 == v5)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v12, v4);
    *(a1 + 10) += 40;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v12, v4);
    *(a1 + 10) += 40;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_12;
    }
  }

  v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (&v8[2].n128_u64[1] <= *(a1 + 1))
  {
    *a1 = v8 + 40;
    if (v6 == v12.n128_u64[0])
    {
      goto LABEL_13;
    }

LABEL_7:
    llvm::detail::IEEEFloat::IEEEFloat(&v11, &v12);
    v8->n128_u64[0] = 0;
    v8->n128_u64[1] = v3;
    v9 = v8 + 1;
    if (v6 == v11.n128_u64[0])
    {
      goto LABEL_14;
    }

LABEL_8:
    llvm::detail::IEEEFloat::IEEEFloat(v9, &v11);
    if (v6 == v11.n128_u64[0])
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

LABEL_12:
  v8 = sub_10003E4AC(a1, 40, 40, 3);
  if (v6 != v12.n128_u64[0])
  {
    goto LABEL_7;
  }

LABEL_13:
  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v11, &v12);
  v8->n128_u64[0] = 0;
  v8->n128_u64[1] = v3;
  v9 = v8 + 1;
  if (v6 != v11.n128_u64[0])
  {
    goto LABEL_8;
  }

LABEL_14:
  llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, &v11);
  if (v6 == v11.n128_u64[0])
  {
LABEL_15:
    sub_10002B154(&v11);
    if (v6 == v12.n128_u64[0])
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

LABEL_9:
  llvm::detail::IEEEFloat::~IEEEFloat(&v11);
  if (v6 == v12.n128_u64[0])
  {
LABEL_16:
    sub_10002B154(&v12);
    return v8;
  }

LABEL_10:
  llvm::detail::IEEEFloat::~IEEEFloat(&v12);
  return v8;
}

uint64_t sub_1000E1E84(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, const llvm::detail::IEEEFloat *a6)
{
  v19[0] = a2;
  v19[1] = a3;
  v20 = *a5;
  v9 = *a6;
  v10 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v10 == v9)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v21, a6);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v21, a6);
  }

  v12 = llvm::hash_value(v21, v11);
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))));
  v17[0] = &v20;
  v17[1] = v19;
  v18 = &v20;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v14 >> 47) ^ v14)) ^ v12, sub_1000E2018, &v18, sub_1000E20C4, v17);
  if (v10 == v21[0])
  {
    sub_10002B154(v21);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v21);
  }

  return ParametricStorageTypeImpl;
}

uint64_t sub_1000E2018(llvm::APFloatBase *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v3 = (a2 + 16);
  v4 = v5;
  v7 = v2[1];
  v6 = (v2 + 1);
  if (v4 != v7)
  {
    return 0;
  }

  v9 = v3;
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v4)
  {

    return llvm::detail::DoubleAPFloat::bitwiseIsEqual(v9, v6);
  }

  else
  {

    return llvm::detail::IEEEFloat::bitwiseIsEqual(v9, v6);
  }
}

__n128 *sub_1000E20C4(uint64_t a1, llvm::APFloatBase *a2)
{
  v3 = sub_1000E1CA8(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t sub_1000E2124(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, __n128 *a6)
{
  v19[0] = a2;
  v19[1] = a3;
  v20 = *a5;
  v9 = a6->n128_u64[0];
  v10 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v10 == v9)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v21, a6);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v21, a6);
  }

  v12 = llvm::hash_value(&v21, v11);
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))));
  v17[0] = &v20;
  v17[1] = v19;
  v18 = &v20;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v14 >> 47) ^ v14)) ^ v12, sub_1000E22B8, &v18, sub_1000E2364, v17);
  if (v10 == v21.n128_u64[0])
  {
    sub_10002B154(&v21);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v21);
  }

  return ParametricStorageTypeImpl;
}

uint64_t sub_1000E22B8(llvm::APFloatBase *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v3 = (a2 + 16);
  v4 = v5;
  v7 = v2[1];
  v6 = (v2 + 1);
  if (v4 != v7)
  {
    return 0;
  }

  v9 = v3;
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v4)
  {

    return llvm::detail::DoubleAPFloat::bitwiseIsEqual(v9, v6);
  }

  else
  {

    return llvm::detail::IEEEFloat::bitwiseIsEqual(v9, v6);
  }
}

__n128 *sub_1000E2364(uint64_t a1, llvm::APFloatBase *a2)
{
  v3 = sub_1000E1CA8(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t sub_1000E23C4(uint64_t *a1, const llvm::APInt *a2, uint64_t a3, uint64_t a4, uint64_t *a5, llvm::APInt *a6)
{
  v19[0] = a2;
  v19[1] = a3;
  v8 = *a5;
  v16 = *a5;
  v18 = *(a6 + 2);
  if (v18 > 0x40)
  {
    llvm::APInt::initSlowCase(&v17, a6);
  }

  v17 = *a6;
  v9 = (v8 >> 4) ^ (v8 >> 9);
  v10 = llvm::hash_value(&v17, a2);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)));
  v14[0] = &v16;
  v14[1] = v19;
  v15 = &v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, sub_1000E2514, &v15, sub_1000E255C, v14);
  if (v18 >= 0x41)
  {
    if (v17)
    {
      operator delete[]();
    }
  }

  return result;
}

BOOL sub_1000E2514(const void ***a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  if (*(a2 + 24) > 0x40u)
  {
    return llvm::APInt::equalSlowCase((a2 + 16), v2 + 1);
  }

  return *(a2 + 16) == v2[1];
}

unint64_t sub_1000E255C(uint64_t **a1, void *a2)
{
  v2 = *(*a1 + 4);
  v4 = **a1;
  v3 = (*a1)[1];
  *(*a1 + 4) = 0;
  a2[10] += 32;
  if (!*a2 || (v5 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8, v5 + 32 > a2[1]))
  {
    v5 = sub_10003E4AC(a2, 32, 32, 3);
    *v5 = 0;
    *(v5 + 8) = v4;
    *(v5 + 24) = v2;
    *(v5 + 16) = v3;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *a2 = v5 + 32;
  *v5 = 0;
  *(v5 + 8) = v4;
  *(v5 + 24) = v2;
  *(v5 + 16) = v3;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_4:
    v7(v6[1], v5);
  }

  return v5;
}

uint64_t sub_1000E2638(uint64_t *a1, const llvm::APInt *a2, uint64_t a3, uint64_t a4, uint64_t *a5, llvm::APInt *a6)
{
  v19[0] = a2;
  v19[1] = a3;
  v8 = *a5;
  v16 = *a5;
  v18 = *(a6 + 2);
  if (v18 > 0x40)
  {
    llvm::APInt::initSlowCase(&v17, a6);
  }

  v17 = *a6;
  v9 = (v8 >> 4) ^ (v8 >> 9);
  v10 = llvm::hash_value(&v17, a2);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)));
  v14[0] = &v16;
  v14[1] = v19;
  v15 = &v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, sub_1000E2788, &v15, sub_1000E27D0, v14);
  if (v18 >= 0x41)
  {
    if (v17)
    {
      operator delete[]();
    }
  }

  return result;
}

BOOL sub_1000E2788(const void ***a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  if (*(a2 + 24) > 0x40u)
  {
    return llvm::APInt::equalSlowCase((a2 + 16), v2 + 1);
  }

  return *(a2 + 16) == v2[1];
}

unint64_t sub_1000E27D0(uint64_t **a1, void *a2)
{
  v2 = *(*a1 + 4);
  v4 = **a1;
  v3 = (*a1)[1];
  *(*a1 + 4) = 0;
  a2[10] += 32;
  if (!*a2 || (v5 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8, v5 + 32 > a2[1]))
  {
    v5 = sub_10003E4AC(a2, 32, 32, 3);
    *v5 = 0;
    *(v5 + 8) = v4;
    *(v5 + 24) = v2;
    *(v5 + 16) = v3;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *a2 = v5 + 32;
  *v5 = 0;
  *(v5 + 8) = v4;
  *(v5 + 24) = v2;
  *(v5 + 16) = v3;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_4:
    v7(v6[1], v5);
  }

  return v5;
}

void *sub_1000E28C4(uint64_t **a1, void *a2)
{
  v2 = **a1;
  a2[10] += 16;
  v3 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = v3 + 2;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v3 = sub_10003E4AC(a2, 16, 16, 3);
    *v3 = 0;
    v3[1] = v2;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return v3;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *v3 = 0;
  v3[1] = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(v6[1], v3);
  }

  return v3;
}

BOOL sub_1000E297C(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) == **a1 && (v3 = *(a2 + 24), v3 == v2[2]) && (!v3 || (v4 = a2, v5 = memcmp(*(a2 + 16), v2[1], v3), a2 = v4, !v5)))
  {
    return *(a2 + 32) == v2[3];
  }

  else
  {
    return 0;
  }
}

void *sub_1000E29FC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000E2A4C(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *sub_1000E2A4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  v4 = a2[3];
  if (!v3)
  {
    v6 = 0;
    goto LABEL_24;
  }

  v5 = a2[1];
  a1[10] += v3 + 1;
  v6 = *a1;
  v7 = v3 + 1 + *a1;
  if (*a1)
  {
    v8 = v7 > a1[1];
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    *a1 = v7;
    if (v3 >= 8)
    {
      goto LABEL_7;
    }

LABEL_21:
    v9 = v6;
    v10 = v5;
    goto LABEL_22;
  }

  v20 = a1;
  v6 = sub_10003E4AC(a1, v3 + 1, v3 + 1, 0);
  a1 = v20;
  if (v3 < 8)
  {
    goto LABEL_21;
  }

LABEL_7:
  v9 = v6;
  v10 = v5;
  if ((v6 - v5) >= 0x20)
  {
    if (v3 < 0x20)
    {
      v11 = 0;
      goto LABEL_15;
    }

    v11 = v3 & 0xFFFFFFFFFFFFFFE0;
    v12 = (v5 + 16);
    v13 = (v6 + 16);
    v14 = v3 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v15 = *v12;
      *(v13 - 1) = *(v12 - 1);
      *v13 = v15;
      v12 += 2;
      v13 += 2;
      v14 -= 32;
    }

    while (v14);
    if (v3 == v11)
    {
      goto LABEL_23;
    }

    if ((v3 & 0x18) != 0)
    {
LABEL_15:
      v9 = (v6 + (v3 & 0xFFFFFFFFFFFFFFF8));
      v10 = (v5 + (v3 & 0xFFFFFFFFFFFFFFF8));
      v16 = (v5 + v11);
      v17 = (v6 + v11);
      v18 = v11 - (v3 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v19 = *v16++;
        *v17++ = v19;
        v18 += 8;
      }

      while (v18);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v10 = (v5 + v11);
    v9 = (v6 + v11);
  }

  do
  {
LABEL_22:
    v21 = *v10++;
    *v9++ = v21;
  }

  while (v10 != (v5 + v3));
LABEL_23:
  *(v6 + v3) = 0;
LABEL_24:
  a1[10] += 40;
  v22 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = v22 + 5;
  if (*a1)
  {
    v24 = v23 > a1[1];
  }

  else
  {
    v24 = 1;
  }

  if (v24)
  {
    v22 = sub_10003E4AC(a1, 40, 40, 3);
  }

  else
  {
    *a1 = v23;
  }

  *v22 = 0;
  v22[1] = v2;
  v22[2] = v6;
  v22[3] = v3;
  v22[4] = v4;
  return v22;
}

BOOL sub_1000E2C00(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  if (a2[3] == v2[2])
  {
    return a2[4] == v2[3];
  }

  return 0;
}

unint64_t sub_1000E2C48(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = (*a1)[1];
  a2[10] += 40;
  v4 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v4 + 40;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v11 = v3;
    v12 = v2;
    v4 = sub_10003E4AC(a2, 40, 40, 3);
    *v4 = 0;
    *(v4 + 8) = v12;
    *(v4 + 24) = v11;
    v7 = a1[1];
    v8 = *v7;
    if (!*v7)
    {
      return v4;
    }

    goto LABEL_6;
  }

  *a2 = v5;
  *v4 = 0;
  *(v4 + 8) = v2;
  *(v4 + 24) = v3;
  v7 = a1[1];
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(*(v7 + 1), v4);
  }

  return v4;
}

BOOL sub_1000E2D18(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  if (a2[3] == v2[2])
  {
    return a2[4] == v2[3];
  }

  return 0;
}

unint64_t sub_1000E2D60(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = (*a1)[1];
  a2[10] += 40;
  v4 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v4 + 40;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v11 = v3;
    v12 = v2;
    v4 = sub_10003E4AC(a2, 40, 40, 3);
    *v4 = 0;
    *(v4 + 8) = v12;
    *(v4 + 24) = v11;
    v7 = a1[1];
    v8 = *v7;
    if (!*v7)
    {
      return v4;
    }

    goto LABEL_6;
  }

  *a2 = v5;
  *v4 = 0;
  *(v4 + 8) = v2;
  *(v4 + 24) = v3;
  v7 = a1[1];
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(*(v7 + 1), v4);
  }

  return v4;
}

BOOL sub_1000E2E30(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) == **a1 && (v3 = *(a2 + 24), v3 == v2[2]))
  {
    return memcmp(*(a2 + 16), v2[1], 8 * v3) == 0;
  }

  else
  {
    return 0;
  }
}

void *sub_1000E2E90(uint64_t a1, unint64_t *a2)
{
  v3 = sub_1000E2EE0(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *sub_1000E2EE0(unint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  v4 = *a1;
  if (!v3)
  {
    v7 = 0;
    goto LABEL_17;
  }

  v5 = a2[1];
  v6 = 8 * v3;
  a1[10] += 8 * v3;
  v7 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 + 8 * v3;
  if (v4)
  {
    v9 = v8 > a1[1];
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v19 = a1;
    v7 = sub_10003E4AC(a1, 8 * v3, 8 * v3, 3);
    a1 = v19;
    v10 = v6 - 8;
    if ((v6 - 8) >= 0x18)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *a1 = v8;
    v10 = v6 - 8;
    if ((v6 - 8) >= 0x18)
    {
LABEL_7:
      v11 = v7;
      v12 = v5;
      if (v7 - v5 >= 0x20)
      {
        v13 = (v10 >> 3) + 1;
        v14 = 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL);
        v11 = (v7 + v14);
        v12 = (v5 + v14);
        v15 = (v5 + 16);
        v16 = (v7 + 16);
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
          goto LABEL_16;
        }
      }

      goto LABEL_15;
    }
  }

  v11 = v7;
  v12 = v5;
  do
  {
LABEL_15:
    v20 = *v12++;
    *v11++ = v20;
  }

  while (v12 != (v5 + 8 * v3));
LABEL_16:
  v4 = *a1;
LABEL_17:
  a1[10] += 32;
  v21 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = v21 + 4;
  if (v4)
  {
    v23 = v22 > a1[1];
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    v21 = sub_10003E4AC(a1, 32, 32, 3);
  }

  else
  {
    *a1 = v22;
  }

  *v21 = 0;
  v21[1] = v2;
  v21[2] = v7;
  v21[3] = v3;
  return v21;
}

BOOL sub_1000E3068(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  v3 = a2[3];
  if (v3 != v2[2])
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = a2[2];
  v5 = v2[1];
  v6 = 8 * v3 - 8;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v4++;
    result = v9 == v7;
    v11 = v9 != v7 || v6 == 0;
    v6 -= 8;
  }

  while (!v11);
  return result;
}

void *sub_1000E30D0(uint64_t a1, unint64_t *a2)
{
  v3 = sub_1000E3120(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *sub_1000E3120(unint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  if (v3)
  {
    v4 = a2[1];
    v5 = 8 * v3;
    a1[10] += 8 * v3;
    v6 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
    v7 = v6 + 8 * v3;
    if (*a1)
    {
      v8 = v7 > a1[1];
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v18 = a1;
      v6 = sub_10003E4AC(a1, 8 * v3, 8 * v3, 3);
      a1 = v18;
      v9 = v5 - 8;
      if ((v5 - 8) >= 0x18)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *a1 = v7;
      v9 = v5 - 8;
      if ((v5 - 8) >= 0x18)
      {
LABEL_7:
        v10 = v6;
        v11 = v4;
        if (v6 - v4 >= 0x20)
        {
          v12 = (v9 >> 3) + 1;
          v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
          v10 = (v6 + v13);
          v11 = (v4 + v13);
          v14 = (v4 + 16);
          v15 = (v6 + 16);
          v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v17 = *v14;
            *(v15 - 1) = *(v14 - 1);
            *v15 = v17;
            v14 += 2;
            v15 += 2;
            v16 -= 4;
          }

          while (v16);
          if (v12 == (v12 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_16;
          }
        }

        goto LABEL_15;
      }
    }

    v10 = v6;
    v11 = v4;
    do
    {
LABEL_15:
      v19 = *v11++;
      *v10++ = v19;
    }

    while (v11 != (v4 + 8 * v3));
    goto LABEL_16;
  }

  v6 = 0;
LABEL_16:
  a1[10] += 32;
  v20 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20 + 4;
  if (*a1)
  {
    v22 = v21 > a1[1];
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v20 = sub_10003E4AC(a1, 32, 32, 3);
  }

  else
  {
    *a1 = v21;
  }

  *v20 = 0;
  v20[1] = v2;
  v20[2] = v6;
  v20[3] = v3;
  return v20;
}