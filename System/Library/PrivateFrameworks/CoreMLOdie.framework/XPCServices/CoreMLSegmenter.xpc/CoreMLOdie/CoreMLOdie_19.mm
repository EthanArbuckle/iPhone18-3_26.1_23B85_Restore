void *sub_1000E32B8(uint64_t **a1, void *a2)
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

void sub_1000E3370(uint64_t a1)
{
  sub_1000E47AC(a1, v9);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000E347C(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = sub_1000E4ECC;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = sub_1000E4ED4;
  v18 = &v10;
  v19 = sub_1000E4F20;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
  v22 = "builtin.array";
  v23 = 13;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000E35E0(uint64_t a1)
{
  sub_1000E5044(a1, v9);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000E36EC(uint64_t a1)
{
  sub_1000E5A24(a1, v9);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000E37F8(uint64_t a1)
{
  sub_1000EB44C(a1, v9);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000E3904(uint64_t a1)
{
  sub_1000EBB58(a1, v9);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000E3A10(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = sub_1000EC468;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = sub_1000EC470;
  v18 = &v10;
  v19 = sub_1000EC4D8;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
  v22 = "builtin.dictionary";
  v23 = 18;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000E3B74(uint64_t a1)
{
  sub_1000EC93C(a1, v9);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000E3C90(uint64_t a1)
{
  sub_1000ECE34(a1, v9);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000E3DAC(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = sub_1000ED1D4;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = nullsub_178;
  v18 = &v10;
  v19 = sub_1000ED1E0;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id;
  v22 = "builtin.integer_set";
  v23 = 19;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000E3F10(uint64_t a1)
{
  sub_1000ED318(a1, v9);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000E401C(uint64_t a1)
{
  sub_1000ED744(a1, v9);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000E4128(uint64_t a1)
{
  sub_100108C88(a1, v9);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000E4234(uint64_t a1)
{
  sub_100109504(a1, v9);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000E4340(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = sub_100109718;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = sub_100109720;
  v18 = &v10;
  v19 = sub_10010977C;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v22 = "builtin.symbol_ref";
  v23 = 18;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1000E44A4(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = sub_10010990C;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = sub_100109914;
  v18 = &v10;
  v19 = sub_100109944;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id;
  v22 = "builtin.type";
  v23 = 12;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

uint64_t sub_1000E4608(uint64_t a1)
{
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = sub_100109A90;
  v18 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = nullsub_181;
  v20 = v11;
  v21 = sub_100109A9C;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id;
  v24 = "builtin.unit";
  v25 = 12;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1], v17[2]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v8 = *(a1 + 32);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v8);
  v11[0] = v8;
  v11[1] = &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id;
  v13 = sub_100109B3C;
  v14 = v11;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id, sub_100109AA4, &v12);
}

void sub_1000E47AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000E48E8(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_1000E49F8;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_169;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_1000E4B24;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id;
  *(a2 + 144) = "builtin.affine_map";
  *(a2 + 152) = 18;
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

void sub_1000E48E8(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = sub_1000E49AC;
  v2[1] = sub_1000E49B4;
  v2[2] = sub_1000E49E0;
  if ((atomic_load_explicit(&qword_1002E0538, memory_order_acquire) & 1) == 0)
  {
    v5 = v2;
    sub_100299A00();
    v3 = v5;
  }

  v4 = qword_1002E0530;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL sub_1000E49F8(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0698, memory_order_acquire))
  {
    return qword_1002E0690 == a1;
  }

  sub_10029B92C();
  return qword_1002E0690 == a1;
}

uint64_t sub_1000E4A58()
{
  if ((atomic_load_explicit(&qword_1002E06B0, memory_order_acquire) & 1) == 0)
  {
    sub_10029B980();
  }

  return qword_1002E06A0;
}

const char *sub_1000E4AA0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::MemRefLayoutAttrInterface::Trait<Empty>]";
  v6 = 107;
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

uint64_t sub_1000E4B24(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v2 = *(a2 + 8);
  mlir::Attribute::getContext(&v10);
  v11 = v2;
  Context = mlir::AffineMap::getContext(&v11);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id;
  v12[1] = Context;
  v16[0] = sub_1000E0174;
  v16[1] = v12;
  v15 = v11;
  v5 = 0x9DDFEA08EB382D69 * ((8 * v11 - 0xAE502812AA7333) ^ HIDWORD(v11));
  v6 = (0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v5 >> 47) ^ v5)) >> 47);
  v7 = ((0x9DDFEA08EB382D69 * v6) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (((0x759C16B48 * v6) & 0x7FFFFFFF8) + 8));
  v13[0] = &v15;
  v13[1] = v16;
  v14 = &v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8))), sub_1000E00B4, &v14, sub_1000E00CC, v13);
}

uint64_t sub_1000E4C5C(uint64_t result, unint64_t *a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 16)
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
      *(result + 8) = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
      goto LABEL_39;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 < v7)
    {
      if (*(result + 12) < v7)
      {
        *(result + 8) = 0;
        v9 = a2;
        v10 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v7, 16);
        a2 = v9;
        v8 = 0;
        v11 = *v6;
        if (!*v6)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

      if (!v8)
      {
        v10 = result;
        v8 = 0;
        goto LABEL_36;
      }

      v15 = *result;
      v16 = (v8 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v16 >= 9)
      {
        if (v15 >= v2 + 16 * v8 || (v17 = *a2, v2 >= &v15[2 * v8]))
        {
          v30 = v16 + 1;
          v31 = 2 * (v30 & 0x1FFFFFFFFFFFFFFCLL);
          v32 = &v15[v31];
          v17 = (v2 + v31 * 8);
          v33 = (v2 + 32);
          v34 = v15 + 4;
          v35 = v30 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            v37 = *(v33 - 2);
            v36 = *(v33 - 1);
            v39 = *v33;
            v38 = v33[1];
            v33 += 4;
            *(v34 - 2) = v37;
            *(v34 - 1) = v36;
            *v34 = v39;
            v34[1] = v38;
            v34 += 4;
            v35 -= 4;
          }

          while (v35);
          v15 = v32;
          if (v30 == (v30 & 0x1FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        v17 = *a2;
      }

      v40 = (v2 + 16 * v8);
      do
      {
        *v15 = *v17;
        v15[1] = v17[1];
        v17 += 2;
        v15 += 2;
      }

      while (v17 != v40);
LABEL_35:
      v10 = result;
LABEL_36:
      v11 = v7 - v8;
      if (v7 == v8)
      {
LABEL_38:
        result = v10;
        *(v10 + 8) = v7;
        goto LABEL_39;
      }

LABEL_37:
      memcpy((*v10 + 16 * v8), (*a2 + 16 * v8), 16 * v11);
      goto LABEL_38;
    }

    if (v7)
    {
      v12 = *result;
      v13 = (v7 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v13 >= 9)
      {
        v18 = v12 >= v2 + 16 * v7 || v2 >= &v12[2 * v7];
        v14 = *a2;
        if (v18)
        {
          v19 = v13 + 1;
          v20 = 2 * (v19 & 0x1FFFFFFFFFFFFFFCLL);
          v21 = &v12[v20];
          v14 = (v2 + v20 * 8);
          v22 = (v2 + 32);
          v23 = v12 + 4;
          v24 = v19 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            v26 = *(v22 - 2);
            v25 = *(v22 - 1);
            v28 = *v22;
            v27 = v22[1];
            v22 += 4;
            *(v23 - 2) = v26;
            *(v23 - 1) = v25;
            *v23 = v28;
            v23[1] = v27;
            v23 += 4;
            v24 -= 4;
          }

          while (v24);
          v12 = v21;
          if (v19 == (v19 & 0x1FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        v14 = *a2;
      }

      v29 = (v2 + 16 * v7);
      do
      {
        *v12 = *v14;
        v12[1] = v14[1];
        v14 += 2;
        v12 += 2;
      }

      while (v14 != v29);
    }

LABEL_26:
    *(result + 8) = v7;
LABEL_39:
    *v6 = 0;
  }

  return result;
}

uint64_t sub_1000E4ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  if (v6)
  {
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      result = mlir::AttrTypeImmediateSubElementWalker::walk(v11, v9);
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1000E4F20(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  v12 = a2;
  if (a4 >= *(a2 + 16))
  {
    v5 = *(a2 + 16);
  }

  else
  {
    v5 = a4;
  }

  Context = mlir::Attribute::getContext(&v12);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
  v13[1] = Context;
  v17[0] = sub_1000E0AE4;
  v17[1] = v13;
  v16[0] = a3;
  v16[1] = v5;
  v8 = sub_1000E0184(a3, &a3[2 * v5]);
  v9 = HIDWORD(v8) ^ 0xFF51AFD7ED558CCDLL;
  v10 = 0x9DDFEA08EB382D69 * ((8 * v8 + 8) ^ v9);
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10))), sub_1000E08C8, &v15, sub_1000E0920, v14);
}

void sub_1000E5044(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = sub_1000E51E4;
  if ((atomic_load_explicit(&qword_1002E06C8, memory_order_acquire) & 1) == 0)
  {
    v10 = v4;
    sub_10029B9D4();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, off_1002E06C0, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    sub_1000E4C5C(a2 + 8, &v14);
  }

  *(a2 + 72) = sub_1000E52B4;
  *(a2 + 80) = v13;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = sub_1000E53DC;
  *(a2 + 112) = &v12;
  *(a2 + 120) = sub_1000E540C;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  *(a2 + 144) = "builtin.dense_array";
  *(a2 + 152) = 19;
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

uint64_t sub_1000E51E4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 24);
  v3 = *(a2 + 32);
  return result;
}

uint64_t sub_1000E51EC()
{
  if ((atomic_load_explicit(&qword_1002E06E0, memory_order_acquire) & 1) == 0)
  {
    sub_10029BA14();
  }

  return qword_1002E06D0;
}

const char *sub_1000E5234()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::BlobAttr]";
  v6 = 76;
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

BOOL sub_1000E52B4(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E06F0, memory_order_acquire))
  {
    return qword_1002E06E8 == a1;
  }

  sub_10029BA68();
  return qword_1002E06E8 == a1;
}

uint64_t sub_1000E5314()
{
  if ((atomic_load_explicit(&qword_1002E0708, memory_order_acquire) & 1) == 0)
  {
    sub_10029BABC();
  }

  return qword_1002E06F8;
}

const char *sub_1000E535C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::BlobAttr::Trait<Empty>]";
  v6 = 90;
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

uint64_t sub_1000E53DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t sub_1000E540C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8.i64[0] = a3;
  v8.i64[1] = a4;
  v7.i64[0] = a5;
  v7.i64[1] = a6;
  return sub_1000E5440(a2, &v8, &v7);
}

uint64_t sub_1000E5440(uint64_t a1, int64x2_t *a2, int64x2_t *a3)
{
  v23 = a1;
  v3 = *(a1 + 24);
  v22[0] = *(a1 + 8);
  v22[1] = v3;
  v4 = *a2;
  v21[0] = *a3;
  v21[1] = v4;
  sub_1000E56E8(v22, v21, &v35);
  mlir::Attribute::getContext(&v23);
  v5 = v35;
  v6 = v36;
  v30 = v35;
  v31 = v36;
  v32 = v34;
  v33 = xmmword_1002B0190;
  v7 = v38;
  if (!v38)
  {
    v10 = v34;
    goto LABEL_9;
  }

  if (v38 < 0x29)
  {
    v9 = v34;
    v8 = v38;
    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned long long>::grow_pod(&v32, v34, v38, 1);
  v8 = v38;
  if (v38)
  {
    v9 = v32;
LABEL_7:
    memcpy(v9, v37, v8);
  }

  *&v33 = v7;
  v5 = v30;
  v6 = v31;
  v10 = v32;
LABEL_9:
  v11 = *v6;
  v24 = v5;
  Context = mlir::Type::getContext(&v24);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v25[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v25[1] = Context;
  v29[0] = sub_1000E0D40;
  v29[1] = v25;
  v28[0] = v24;
  v28[1] = v11;
  v28[2] = v10;
  v28[3] = v7;
  v14 = (v24 >> 4) ^ (v24 >> 9);
  v15 = sub_10002D970(v10, v10 + v7);
  v16 = __ROR8__(v11 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v14 - 0x9AE16A3B2F90404FLL * v15 + 24;
  v17 = (__ROR8__(0xB492B66FBE98F273 * v14 - v11, 43) - 0x3C5A37A36834CED9 * v11 + __ROR8__((0x9AE16A3B2F90404FLL * v15) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v16;
  v18 = 0x9DDFEA08EB382D69 * (v16 ^ ((0x9DDFEA08EB382D69 * v17) >> 47) ^ (0x9DDFEA08EB382D69 * v17));
  v26[0] = v28;
  v26[1] = v29;
  v27 = v28;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v18 >> 47) ^ v18), sub_1000E0C84, &v27, sub_1000E0CF0, v26);
  if (v32 != v34)
  {
    free(v32);
  }

  if (v37 != &v39)
  {
    free(v37);
  }

  return ParametricStorageTypeImpl;
}

void sub_1000E56E8(uint64_t a1@<X0>, int64x2_t *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = a1 + 8;
  if (*a1)
  {
    v5 = *a2;
    *a2 = vaddq_s64(*a2, xmmword_1002B0E70);
    v6 = *v5.i64[0];
  }

  else
  {
    v6 = 0;
  }

  sub_1000E5840(*(a1 + 16), *(a1 + 24), &__src);
  v7 = (a3 + 40);
  *(a3 + 16) = a3 + 40;
  *a3 = v6;
  *(a3 + 8) = v4;
  *(a3 + 24) = xmmword_1002B0190;
  v8 = __src;
  if ((a3 + 16) == &__src)
  {
    goto LABEL_14;
  }

  v9 = __n;
  if (!__n)
  {
    goto LABEL_14;
  }

  if (__src != v14)
  {
    *(a3 + 16) = __src;
    *(a3 + 24) = v9;
    *(a3 + 32) = v13;
    return;
  }

  if (__n < 0x29)
  {
    v10 = __n;
    goto LABEL_12;
  }

  llvm::SmallVectorBase<unsigned long long>::grow_pod(a3 + 16, (a3 + 40), __n, 1);
  v8 = __src;
  v10 = __n;
  if (__n)
  {
    v7 = *(a3 + 16);
LABEL_12:
    memcpy(v7, v8, v10);
    v8 = __src;
  }

  *(a3 + 24) = v9;
  __n = 0;
LABEL_14:
  if (v8 != v14)
  {
    free(v8);
  }
}

void sub_1000E5840(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = v16;
  v3 = xmmword_1002B0190;
  v15 = xmmword_1002B0190;
  if (a2)
  {
    do
    {
      while (v15 < *(&v15 + 1))
      {
        v4 = *a1++;
        *(v14 + v15) = v4;
        *&v15 = v15 + 1;
        if (!--a2)
        {
          goto LABEL_6;
        }
      }

      v5 = a1;
      v6 = a2;
      v7 = a3;
      v13 = v3;
      sub_1000E59BC(&v14, a1);
      v3 = v13;
      a3 = v7;
      a1 = v5 + 1;
      a2 = v6 - 1;
    }

    while (v6 != 1);
LABEL_6:
    v8 = v14;
    v9 = v15;
    *a3 = a3 + 24;
    *(a3 + 8) = v3;
    if (v9 && &v14 != a3)
    {
      if (v8 != v16)
      {
        *a3 = v8;
        *(a3 + 8) = v9;
        *(a3 + 16) = *(&v15 + 1);
        return;
      }

      v10 = v9;
      if (v9 < 0x29 || (v11 = a3, llvm::SmallVectorBase<unsigned long long>::grow_pod(a3, (a3 + 24), v9, 1), a3 = v11, v8 = v14, (v10 = v15) != 0))
      {
        v12 = a3;
        memcpy(*a3, v8, v10);
        a3 = v12;
        v8 = v14;
      }

      *(a3 + 8) = v9;
      *&v15 = 0;
    }

    if (v8 != v16)
    {
      free(v8);
    }
  }

  else
  {
    *a3 = a3 + 24;
    *(a3 + 8) = xmmword_1002B0190;
  }
}

uint64_t sub_1000E59BC(void *a1, char *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if ((v3 + 1) > a1[2])
  {
    v7 = a1;
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v3 + 1, 1);
    a1 = v7;
    v3 = v7[1];
  }

  *(*a1 + v3) = v2;
  v4 = *a1;
  v5 = a1[1] + 1;
  a1[1] = v5;
  return v4 + v5 - 1;
}

void sub_1000E5A24(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000E5B60(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_1000EB220;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_176;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_1000EB444;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id;
  *(a2 + 144) = "builtin.dense_int_or_fp_elements";
  *(a2 + 152) = 32;
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

void sub_1000E5B60(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = sub_1000E5C0C;
  {
    v4 = v2;
    sub_10029BB10();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v3);

  sub_1000E5C14(a1);
}

void sub_1000E5C14(uint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0xE0040DD5D8FE3uLL);
  v3 = v2;
  *v2 = sub_1000E5D84;
  v2[1] = sub_1000E5E78;
  v2[2] = sub_1000E5E80;
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
    sub_10029BB10();
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
  sub_10029B8A0();
  v3 = v15;
LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v13, v3);
}

uint64_t sub_1000E5D84@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = a1;
  result = sub_1000E5E88(&v8, a2, v9);
  if (v11 == 1)
  {
    v6 = v9[0];
    *a3 = v9[0];
    *(a3 + 1) = v9[1];
    if (v6 == 1)
    {
      *(a3 + 8) = v10;
      *(a3 + 16) = 1;
      return result;
    }

    v7 = v10;
    v10 = 0;
    *(a3 + 8) = v7;
    *(a3 + 16) = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = sub_1000E9EB0(&v8, a2, a3);
    if ((v11 & 1) != 0 && (v9[0] & 1) == 0)
    {
LABEL_9:
      result = v10;
      v10 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t sub_1000E5E80(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  v3 = *(a2 + 16);
  return result;
}

uint64_t sub_1000E5E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E0718, memory_order_acquire))
  {
    if (qword_1002E0710 != a2)
    {
LABEL_3:

      return sub_1000E5FC0(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10029BB60();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002E0710 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000E61C0(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000E5FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E0740, memory_order_acquire))
  {
    if (qword_1002E0738 != a2)
    {
LABEL_3:

      return sub_1000E62B0(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10029BBB4();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002E0738 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000E64B0(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 2 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000E60F8()
{
  if ((atomic_load_explicit(&qword_1002E0730, memory_order_acquire) & 1) == 0)
  {
    sub_10029BC04();
  }

  return qword_1002E0720;
}

const char *sub_1000E6140()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = unsigned char]";
  v6 = 75;
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

uint64_t sub_1000E61C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ShapedType::getElementType(&v14);
  result = sub_1000DC620(v14);
  if (result != 8)
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

uint64_t sub_1000E62B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E0768, memory_order_acquire))
  {
    if (qword_1002E0760 != a2)
    {
LABEL_3:

      return sub_1000E65A0(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10029BC58();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002E0760 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000E67A0(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 4 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000E63E8()
{
  if ((atomic_load_explicit(&qword_1002E0758, memory_order_acquire) & 1) == 0)
  {
    sub_10029BCA8();
  }

  return qword_1002E0748;
}

const char *sub_1000E6430()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = unsigned short]";
  v6 = 76;
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

uint64_t sub_1000E64B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ShapedType::getElementType(&v14);
  result = sub_1000DC620(v14);
  if (result != 16)
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

uint64_t sub_1000E65A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E0790, memory_order_acquire))
  {
    if (qword_1002E0788 != a2)
    {
LABEL_3:

      return sub_1000E6890(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10029BCFC();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002E0788 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000DFDB8(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 8 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000E66D8()
{
  if ((atomic_load_explicit(&qword_1002E0780, memory_order_acquire) & 1) == 0)
  {
    sub_10029BD50();
  }

  return qword_1002E0770;
}

const char *sub_1000E6720()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = unsigned int]";
  v6 = 74;
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

uint64_t sub_1000E67A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ShapedType::getElementType(&v14);
  result = sub_1000DC620(v14);
  if (result != 32)
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

uint64_t sub_1000E6890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E07B8, memory_order_acquire))
  {
    if (qword_1002E07B0 != a2)
    {
LABEL_3:

      return sub_1000E6A90(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10029BDA4();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002E07B0 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000E6C90(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000E69C8()
{
  if ((atomic_load_explicit(&qword_1002E07A8, memory_order_acquire) & 1) == 0)
  {
    sub_10029BDF8();
  }

  return qword_1002E0798;
}

const char *sub_1000E6A10()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = unsigned long long]";
  v6 = 80;
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

uint64_t sub_1000E6A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E07E0, memory_order_acquire))
  {
    if (qword_1002E07D8 != a2)
    {
LABEL_3:

      return sub_1000E6D80(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10029BE4C();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002E07D8 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000E6F80(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 2 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000E6BC8()
{
  if ((atomic_load_explicit(&qword_1002E07D0, memory_order_acquire) & 1) == 0)
  {
    sub_10029BE9C();
  }

  return qword_1002E07C0;
}

const char *sub_1000E6C10()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = signed char]";
  v6 = 73;
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

uint64_t sub_1000E6C90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ShapedType::getElementType(&v14);
  result = sub_1000DC620(v14);
  if (result != 8)
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
  if (v13 && (!mlir::IntegerType::getSignedness(&v15) || (result = mlir::IntegerType::getSignedness(&v15), result == 1)))
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

uint64_t sub_1000E6D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E0808, memory_order_acquire))
  {
    if (qword_1002E0800 != a2)
    {
LABEL_3:

      return sub_1000E7070(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10029BEF0();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002E0800 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000E7270(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 4 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000E6EB8()
{
  if ((atomic_load_explicit(&qword_1002E07F8, memory_order_acquire) & 1) == 0)
  {
    sub_10029BF40();
  }

  return qword_1002E07E8;
}

const char *sub_1000E6F00()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = short]";
  v6 = 67;
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

uint64_t sub_1000E6F80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ShapedType::getElementType(&v14);
  result = sub_1000DC620(v14);
  if (result != 16)
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
  if (v13 && (!mlir::IntegerType::getSignedness(&v15) || (result = mlir::IntegerType::getSignedness(&v15), result == 1)))
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

uint64_t sub_1000E7070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E0830, memory_order_acquire))
  {
    if (qword_1002E0828 != a2)
    {
LABEL_3:

      return sub_1000E7360(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10029BF94();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002E0828 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000E7560(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 8 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000E71A8()
{
  if ((atomic_load_explicit(&qword_1002E0820, memory_order_acquire) & 1) == 0)
  {
    sub_10029BFE8();
  }

  return qword_1002E0810;
}

const char *sub_1000E71F0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = int]";
  v6 = 65;
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

uint64_t sub_1000E7270@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ShapedType::getElementType(&v14);
  result = sub_1000DC620(v14);
  if (result != 32)
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
  if (v13 && (!mlir::IntegerType::getSignedness(&v15) || (result = mlir::IntegerType::getSignedness(&v15), result == 1)))
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

uint64_t sub_1000E7360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E07E0, memory_order_acquire))
  {
    if (qword_1002E07D8 != a2)
    {
LABEL_3:

      return sub_1000E7650(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10029BE4C();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002E07D8 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000E6F80(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 2 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000E7498()
{
  if ((atomic_load_explicit(&qword_1002E0848, memory_order_acquire) & 1) == 0)
  {
    sub_10029C03C();
  }

  return qword_1002E0838;
}

const char *sub_1000E74E0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = long long]";
  v6 = 71;
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

uint64_t sub_1000E7560@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
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
  if (v13 && (!mlir::IntegerType::getSignedness(&v15) || (result = mlir::IntegerType::getSignedness(&v15), result == 1)))
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

uint64_t sub_1000E7650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E0740, memory_order_acquire))
  {
    if (qword_1002E0738 != a2)
    {
LABEL_3:

      return sub_1000E7788(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10029BBB4();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002E0738 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000E64B0(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 2 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000E7788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E0808, memory_order_acquire))
  {
    if (qword_1002E0800 != a2)
    {
LABEL_3:

      return sub_1000E78C0(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10029BEF0();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002E0800 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000E7270(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 4 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000E78C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E0768, memory_order_acquire))
  {
    if (qword_1002E0760 != a2)
    {
LABEL_3:

      return sub_1000E79F8(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10029BC58();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002E0760 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000E67A0(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 4 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000E79F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E0858, memory_order_acquire))
  {
    if (qword_1002E0850 != a2)
    {
LABEL_3:

      return sub_1000E7B30(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10029C090();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002E0850 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000E7560(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 8 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000E7B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E0880, memory_order_acquire))
  {
    if (qword_1002E0878 != a2)
    {
LABEL_3:

      return sub_1000E7D30(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10029C0E4();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002E0878 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000DFDB8(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 8 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000E7C68()
{
  if ((atomic_load_explicit(&qword_1002E0870, memory_order_acquire) & 1) == 0)
  {
    sub_10029C138();
  }

  return qword_1002E0860;
}

const char *sub_1000E7CB0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = long]";
  v6 = 66;
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

uint64_t sub_1000E7D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E08A8, memory_order_acquire))
  {
    if (qword_1002E08A0 != a2)
    {
LABEL_3:

      return sub_1000E7F30(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10029C18C();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002E08A0 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000E8130(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 2 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000E7E68()
{
  if ((atomic_load_explicit(&qword_1002E0898, memory_order_acquire) & 1) == 0)
  {
    sub_10029C1E0();
  }

  return qword_1002E0888;
}

const char *sub_1000E7EB0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = unsigned long]";
  v6 = 75;
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

uint64_t sub_1000E7F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E08D0, memory_order_acquire))
  {
    if (qword_1002E08C8 != a2)
    {
LABEL_3:

      return sub_1000E822C(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10029C234();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002E08C8 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000E842C(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 4 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000E8068()
{
  if ((atomic_load_explicit(&qword_1002E08C0, memory_order_acquire) & 1) == 0)
  {
    sub_10029C288();
  }

  return qword_1002E08B0;
}

const char *sub_1000E80B0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<unsigned char>]";
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

uint64_t sub_1000E8130@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v15);
  *&v15 = mlir::ComplexType::getElementType(&ElementType);
  result = sub_1000DC620(v15);
  if (result != 8)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result != 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v15);
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

uint64_t sub_1000E822C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E08F8, memory_order_acquire))
  {
    if (qword_1002E08F0 != a2)
    {
LABEL_3:

      return sub_1000E8528(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10029C2DC();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002E08F0 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000E8728(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 8 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000E8364()
{
  if ((atomic_load_explicit(&qword_1002E08E8, memory_order_acquire) & 1) == 0)
  {
    sub_10029C330();
  }

  return qword_1002E08D8;
}

const char *sub_1000E83AC()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<unsigned short>]";
  v6 = 90;
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

uint64_t sub_1000E842C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v15);
  *&v15 = mlir::ComplexType::getElementType(&ElementType);
  result = sub_1000DC620(v15);
  if (result != 16)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result != 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v15);
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

uint64_t sub_1000E8528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E0920, memory_order_acquire))
  {
    if (qword_1002E0918 != a2)
    {
LABEL_3:

      return sub_1000E8824(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10029C384();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002E0918 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000E8A24(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 16 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000E8660()
{
  if ((atomic_load_explicit(&qword_1002E0910, memory_order_acquire) & 1) == 0)
  {
    sub_10029C3D8();
  }

  return qword_1002E0900;
}

const char *sub_1000E86A8()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<unsigned int>]";
  v6 = 88;
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

uint64_t sub_1000E8728@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v15);
  *&v15 = mlir::ComplexType::getElementType(&ElementType);
  result = sub_1000DC620(v15);
  if (result != 32)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result != 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v15);
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

uint64_t sub_1000E8824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E0948, memory_order_acquire))
  {
    if (qword_1002E0940 != a2)
    {
LABEL_3:

      return sub_1000E8B20(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10029C42C();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002E0940 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000E8D20(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 2 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000E895C()
{
  if ((atomic_load_explicit(&qword_1002E0938, memory_order_acquire) & 1) == 0)
  {
    sub_10029C480();
  }

  return qword_1002E0928;
}

const char *sub_1000E89A4()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<unsigned long long>]";
  v6 = 94;
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

uint64_t sub_1000E8A24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v15);
  *&v15 = mlir::ComplexType::getElementType(&ElementType);
  result = sub_1000DC620(v15);
  if (result != 64)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result != 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v15);
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

uint64_t sub_1000E8B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E0970, memory_order_acquire))
  {
    if (qword_1002E0968 != a2)
    {
LABEL_3:

      return sub_1000E8E1C(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10029C4D4();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002E0968 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000E901C(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 4 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000E8C58()
{
  if ((atomic_load_explicit(&qword_1002E0960, memory_order_acquire) & 1) == 0)
  {
    sub_10029C528();
  }

  return qword_1002E0950;
}

const char *sub_1000E8CA0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<signed char>]";
  v6 = 87;
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

uint64_t sub_1000E8D20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v15);
  *&v15 = mlir::ComplexType::getElementType(&ElementType);
  result = sub_1000DC620(v15);
  if (result != 8)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result == 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v15);
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

uint64_t sub_1000E8E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E0998, memory_order_acquire))
  {
    if (qword_1002E0990 != a2)
    {
LABEL_3:

      return sub_1000E9118(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10029C57C();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002E0990 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000E9318(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 8 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000E8F54()
{
  if ((atomic_load_explicit(&qword_1002E0988, memory_order_acquire) & 1) == 0)
  {
    sub_10029C5D0();
  }

  return qword_1002E0978;
}

const char *sub_1000E8F9C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<short>]";
  v6 = 81;
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

uint64_t sub_1000E901C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v15);
  *&v15 = mlir::ComplexType::getElementType(&ElementType);
  result = sub_1000DC620(v15);
  if (result != 16)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result == 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v15);
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

uint64_t sub_1000E9118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E09C0, memory_order_acquire))
  {
    if (qword_1002E09B8 != a2)
    {
LABEL_3:

      return sub_1000E9414(a1, a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v4 = a1;
    v5 = a2;
    sub_10029C624();
    a2 = v5;
    a1 = v4;
    a3 = v13;
    if (qword_1002E09B8 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  v14 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v14);
  result = mlir::ShapedType::getNumElements(Shape, v9);
  if (result)
  {
    result = sub_1000E95C8(v7, &v14);
    if (v16)
    {
      v10 = *(*v7 + 24);
      if (BYTE8(v14))
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }

      v12 = v14 + 16 * v11;
      *v6 = 1;
      v6[1] = v10;
      *(v6 + 1) = v12;
      v6[16] = 1;
    }

    else
    {
      *v6 = 0;
      v6[16] = 0;
    }
  }

  else
  {
    *v6 = 1;
    *(v6 + 1) = 0;
    v6[16] = 1;
  }

  return result;
}

uint64_t sub_1000E9250()
{
  if ((atomic_load_explicit(&qword_1002E09B0, memory_order_acquire) & 1) == 0)
  {
    sub_10029C678();
  }

  return qword_1002E09A0;
}

const char *sub_1000E9298()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<int>]";
  v6 = 79;
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

uint64_t sub_1000E9318@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v15);
  *&v15 = mlir::ComplexType::getElementType(&ElementType);
  result = sub_1000DC620(v15);
  if (result != 32)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result == 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v15);
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

uint64_t sub_1000E9414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002E09E8, memory_order_acquire) & 1) == 0)
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10029C6CC();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002E09E0 != v4)
    {
      goto LABEL_3;
    }

LABEL_9:

    return sub_1000E96C4(a1, a3);
  }

  if (qword_1002E09E0 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002E0A10, memory_order_acquire))
  {
    if (qword_1002E0A08 != a2)
    {
LABEL_5:

      return sub_1000E9974(a1, a2, a3);
    }
  }

  else
  {
    v9 = a1;
    v5 = a2;
    v7 = a3;
    sub_10029C720();
    a2 = v5;
    a3 = v7;
    a1 = v9;
    if (qword_1002E0A08 != v5)
    {
      goto LABEL_5;
    }
  }

  return sub_1000E9880(a1, a3);
}

uint64_t sub_1000E9500()
{
  if ((atomic_load_explicit(&qword_1002E09D8, memory_order_acquire) & 1) == 0)
  {
    sub_10029C774();
  }

  return qword_1002E09C8;
}

const char *sub_1000E9548()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<long long>]";
  v6 = 85;
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

uint64_t sub_1000E95C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v15);
  *&v15 = mlir::ComplexType::getElementType(&ElementType);
  result = sub_1000DC620(v15);
  if (result != 64)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result == 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v15);
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

uint64_t sub_1000E96C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v12);
  result = mlir::ShapedType::getNumElements(Shape, v5);
  if (result)
  {
    v12 = *(*a1 + 8);
    ElementType = mlir::ShapedType::getElementType(&v12);
    result = sub_1000DDEF8(ElementType, 4, 0, 1u);
    if (result)
    {
      v8 = *(*a1 + 32);
      v12 = *(*a1 + 8);
      v9 = mlir::ShapedType::getShape(&v12);
      result = mlir::ShapedType::getNumElements(v9, v10);
      v11 = *(*a1 + 24);
      *a2 = 1;
      *(a2 + 1) = v11;
      *(a2 + 8) = v8;
      *(a2 + 16) = 1;
    }

    else
    {
      *a2 = 0;
      *(a2 + 16) = 0;
    }
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  return result;
}

uint64_t sub_1000E97B8()
{
  if ((atomic_load_explicit(&qword_1002E0A00, memory_order_acquire) & 1) == 0)
  {
    sub_10029C7C8();
  }

  return qword_1002E09F0;
}

const char *sub_1000E9800()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = float]";
  v6 = 67;
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

uint64_t sub_1000E9880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v12);
  result = mlir::ShapedType::getNumElements(Shape, v5);
  if (result)
  {
    v12 = *(*a1 + 8);
    ElementType = mlir::ShapedType::getElementType(&v12);
    result = sub_1000DDEF8(ElementType, 8, 0, 1u);
    if (result)
    {
      v8 = *(*a1 + 32);
      v12 = *(*a1 + 8);
      v9 = mlir::ShapedType::getShape(&v12);
      result = mlir::ShapedType::getNumElements(v9, v10);
      v11 = *(*a1 + 24);
      *a2 = 1;
      *(a2 + 1) = v11;
      *(a2 + 8) = v8;
      *(a2 + 16) = 1;
    }

    else
    {
      *a2 = 0;
      *(a2 + 16) = 0;
    }
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  return result;
}

uint64_t sub_1000E9974@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002E0A38, memory_order_acquire) & 1) == 0)
  {
    v7 = a3;
    v3 = result;
    v5 = a2;
    sub_10029C81C();
    result = v3;
    a2 = v5;
    a3 = v7;
    if (qword_1002E0A30 != v5)
    {
      goto LABEL_3;
    }

LABEL_7:

    return sub_1000E9B20(result, a3);
  }

  if (qword_1002E0A30 == a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002E0A60, memory_order_acquire))
  {
    if (qword_1002E0A58 != a2)
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
    sub_10029C870();
    result = v4;
    a3 = v8;
    if (qword_1002E0A58 != v6)
    {
      goto LABEL_5;
    }
  }

  return sub_1000E9CE8(result, a3);
}

uint64_t sub_1000E9A58()
{
  if ((atomic_load_explicit(&qword_1002E0A28, memory_order_acquire) & 1) == 0)
  {
    sub_10029C8C4();
  }

  return qword_1002E0A18;
}

const char *sub_1000E9AA0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = double]";
  v6 = 68;
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

uint64_t sub_1000E9B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v12);
  result = mlir::ShapedType::getNumElements(Shape, v5);
  if (result)
  {
    v12 = *(*a1 + 8);
    *&v12 = mlir::ShapedType::getElementType(&v12);
    ElementType = mlir::ComplexType::getElementType(&v12);
    result = sub_1000DDEF8(ElementType, 4, 0, 1u);
    if (result)
    {
      v8 = *(*a1 + 32);
      v12 = *(*a1 + 8);
      v9 = mlir::ShapedType::getShape(&v12);
      result = mlir::ShapedType::getNumElements(v9, v10);
      v11 = *(*a1 + 24);
      *a2 = 1;
      *(a2 + 1) = v11;
      *(a2 + 8) = v8;
      *(a2 + 16) = 1;
    }

    else
    {
      *a2 = 0;
      *(a2 + 16) = 0;
    }
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  return result;
}

uint64_t sub_1000E9C20()
{
  if ((atomic_load_explicit(&qword_1002E0A50, memory_order_acquire) & 1) == 0)
  {
    sub_10029C918();
  }

  return qword_1002E0A40;
}

const char *sub_1000E9C68()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<float>]";
  v6 = 81;
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

uint64_t sub_1000E9CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v12);
  result = mlir::ShapedType::getNumElements(Shape, v5);
  if (result)
  {
    v12 = *(*a1 + 8);
    *&v12 = mlir::ShapedType::getElementType(&v12);
    ElementType = mlir::ComplexType::getElementType(&v12);
    result = sub_1000DDEF8(ElementType, 8, 0, 1u);
    if (result)
    {
      v8 = *(*a1 + 32);
      v12 = *(*a1 + 8);
      v9 = mlir::ShapedType::getShape(&v12);
      result = mlir::ShapedType::getNumElements(v9, v10);
      v11 = *(*a1 + 24);
      *a2 = 1;
      *(a2 + 1) = v11;
      *(a2 + 8) = v8;
      *(a2 + 16) = 1;
    }

    else
    {
      *a2 = 0;
      *(a2 + 16) = 0;
    }
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  return result;
}

uint64_t sub_1000E9DE8()
{
  if ((atomic_load_explicit(&qword_1002E0A78, memory_order_acquire) & 1) == 0)
  {
    sub_10029C96C();
  }

  return qword_1002E0A68;
}

const char *sub_1000E9E30()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<double>]";
  v6 = 82;
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

mlir::DenseElementsAttr *sub_1000E9EB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E0A88, memory_order_acquire))
  {
    if (qword_1002E0A80 != a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v11 = *(*a1 + 8);
    v4 = a1;
    Shape = mlir::ShapedType::getShape(&v11);
    mlir::ShapedType::getNumElements(Shape, v6);
    v7 = *(*v4 + 24);
    operator new();
  }

  v9 = a2;
  v10 = a3;
  v8 = a1;
  sub_10029C9C0();
  a1 = v8;
  a2 = v9;
  a3 = v10;
  if (qword_1002E0A80 == v9)
  {
    goto LABEL_7;
  }

LABEL_3:

  return sub_1000E9FB8(a1, a2, a3);
}

mlir::DenseElementsAttr *sub_1000E9FB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002E0AB0, memory_order_acquire) & 1) == 0)
  {
    v11 = a3;
    v4 = a1;
    v5 = a2;
    sub_10029CA14();
    a2 = v5;
    a1 = v4;
    a3 = v11;
    if (qword_1002E0AA8 != v5)
    {
      goto LABEL_3;
    }

LABEL_9:
    v6 = a3;
    v7 = a1;
    result = sub_1000EA3F4(a1, &v13);
    if (v15)
    {
      v16[0] = v14[0];
      *(v16 + 15) = *(v14 + 15);
      v8 = *(*v7 + 24);
      operator new();
    }

    *v6 = 0;
    v6[16] = 0;
    return result;
  }

  if (qword_1002E0AA8 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002E0AD8, memory_order_acquire))
  {
    if (qword_1002E0AD0 != a2)
    {
LABEL_5:

      return sub_1000EA750(a1, a2, a3);
    }
  }

  else
  {
    v12 = a3;
    v9 = a1;
    v10 = a2;
    sub_10029CA68();
    a2 = v10;
    a1 = v9;
    a3 = v12;
    if (qword_1002E0AD0 != v10)
    {
      goto LABEL_5;
    }
  }

  return sub_1000EA678(a1, a3);
}

uint64_t sub_1000EA1B8()
{
  if ((atomic_load_explicit(&qword_1002E0AA0, memory_order_acquire) & 1) == 0)
  {
    sub_10029CABC();
  }

  return qword_1002E0A90;
}

const char *sub_1000EA200()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::Attribute]";
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

uint64_t sub_1000EA2FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16) + a2;
  v4[0] = *(a1 + 8);
  v4[1] = v2;
  return mlir::DenseElementsAttr::AttributeElementIterator::operator*(v4);
}

uint64_t sub_1000EA32C()
{
  if ((atomic_load_explicit(&qword_1002E0AC8, memory_order_acquire) & 1) == 0)
  {
    sub_10029CB10();
  }

  return qword_1002E0AB8;
}

const char *sub_1000EA374()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = llvm::APInt]";
  v6 = 73;
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

unint64_t sub_1000EA3F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = *(*a1 + 8);
  *&v19 = mlir::ShapedType::getElementType(&v19);
  result = mlir::Type::isIntOrIndex(&v19);
  if (result)
  {
    v6 = *(*a1 + 16);
    v7 = *(*a1 + 32);
    v8 = *(*a1 + 24);
    *&v19 = *(*a1 + 8);
    v5 = v19;
    *(&v19 + 1) = v6;
    ElementType = mlir::ShapedType::getElementType(&v19);
    v10 = sub_1000DC620(ElementType);
    v11 = *a1;
    v19 = *(*a1 + 8);
    Shape = mlir::ShapedType::getShape(&v19);
    NumElements = mlir::ShapedType::getNumElements(Shape, v13);
    v15 = *(v11 + 32);
    v16 = *(v11 + 24);
    v19 = *(v11 + 8);
    v17 = mlir::ShapedType::getElementType(&v19);
    result = sub_1000DC620(v17);
    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = 0;
    *(a2 + 24) = v10;
    *(a2 + 32) = v15;
    *(a2 + 40) = v16;
    *(a2 + 48) = NumElements;
    *(a2 + 56) = result;
    v18 = 1;
    *(a2 + 64) = v5;
    *(a2 + 72) = v6;
  }

  else
  {
    v18 = 0;
    *a2 = 0;
  }

  *(a2 + 80) = v18;
  return result;
}

void *sub_1000EA56C@<X0>(void *result@<X0>, uint64_t a2@<X1>, llvm::APInt *a3@<X8>)
{
  v3 = result[1];
  v4 = result[4];
  if (result[2])
  {
    v5 = 0;
  }

  else
  {
    v5 = result[3] + a2;
  }

  if (v4 == 1)
  {
    v6 = (*(v3 + (v5 >> 3)) >> (v5 & 7)) & 1;
    *(a3 + 2) = 1;
    *a3 = v6;
  }

  else
  {
    *(a3 + 2) = v4;
    if (v4 >= 0x41)
    {
      llvm::APInt::initSlowCase(a3);
    }

    *a3 = 0;
    if (v4)
    {
      v7 = ((v4 - (v4 != 0)) >> 3) + 1;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {

      return memmove(a3, (v3 + ((((v4 - (v4 != 0) + 8 * (v4 != 0)) & 0xFFFFFFFFFFFFFFF8) * v5) >> 3)), v7);
    }
  }

  return result;
}

BOOL sub_1000EA678@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v10 = *(*a1 + 8);
  *&v10 = mlir::ShapedType::getElementType(&v10);
  result = mlir::Type::isInteger(&v10, 1);
  if (result)
  {
    v5 = *(*a1 + 32);
    v6 = *(*a1 + 24);
    v10 = *(*a1 + 8);
    Shape = mlir::ShapedType::getShape(&v10);
    mlir::ShapedType::getNumElements(Shape, v8);
    v9 = *(*a1 + 24);
    operator new();
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

mlir::DenseElementsAttr *sub_1000EA750@<X0>(mlir::DenseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E0B00, memory_order_acquire))
  {
    if (qword_1002E0AF8 != a2)
    {
LABEL_3:

      return sub_1000EAA44(a1, a2, a3);
    }
  }

  else
  {
    v9 = a3;
    v4 = a1;
    v5 = a2;
    sub_10029CB64();
    a2 = v5;
    a1 = v4;
    a3 = v9;
    if (qword_1002E0AF8 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  result = mlir::DenseElementsAttr::tryGetComplexIntValues(a1, &v10);
  if (v12)
  {
    v13[0] = v11[0];
    *(v13 + 15) = *(v11 + 15);
    v8 = *(*v7 + 24);
    operator new();
  }

  *v6 = 0;
  v6[16] = 0;
  return result;
}

uint64_t sub_1000EA8C8()
{
  if ((atomic_load_explicit(&qword_1002E0AF0, memory_order_acquire) & 1) == 0)
  {
    sub_10029CBB8();
  }

  return qword_1002E0AE0;
}

const char *sub_1000EA910()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = BOOL]";
  v6 = 66;
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

uint64_t sub_1000EAA14(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 24) + a2;
  }

  return (*(*(a1 + 8) + (v2 >> 3)) >> (v2 & 7)) & 1;
}

mlir::DenseElementsAttr *sub_1000EAA44@<X0>(mlir::DenseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E0B28, memory_order_acquire))
  {
    if (qword_1002E0B20 != a2)
    {
LABEL_3:

      return sub_1000EAD4C(a1, a2, a3);
    }
  }

  else
  {
    v9 = a3;
    v4 = a1;
    v5 = a2;
    sub_10029CC0C();
    a2 = v5;
    a1 = v4;
    a3 = v9;
    if (qword_1002E0B20 != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  v7 = a1;
  result = mlir::DenseElementsAttr::tryGetFloatValues(a1, &v10);
  if (v13)
  {
    v14 = v11;
    *v15 = v12[0];
    *&v15[15] = *(v12 + 15);
    v8 = *(*v7 + 24);
    operator new();
  }

  *v6 = 0;
  v6[16] = 0;
  return result;
}

uint64_t sub_1000EABC8()
{
  if ((atomic_load_explicit(&qword_1002E0B18, memory_order_acquire) & 1) == 0)
  {
    sub_10029CC60();
  }

  return qword_1002E0B08;
}

const char *sub_1000EAC10()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<llvm::APInt>]";
  v6 = 87;
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

uint64_t *sub_1000EAD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v5 = *(a1 + 8);
  v3 = *(a1 + 32);
  v6 = *(a1 + 24) + a2;
  v7 = v3;
  return mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v5, a3);
}

mlir::DenseElementsAttr *sub_1000EAD4C@<X0>(mlir::DenseElementsAttr *result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E0B50, memory_order_acquire))
  {
    if (qword_1002E0B48 != a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = result;
    sub_10029CCB4();
    result = v7;
    if (qword_1002E0B48 != a2)
    {
      goto LABEL_6;
    }
  }

  v4 = result;
  result = mlir::DenseElementsAttr::tryGetComplexFloatValues(result, &v8);
  if (v11)
  {
    v12 = v9;
    *v13 = v10[0];
    *&v13[15] = *(v10 + 15);
    v5 = *(*v4 + 24);
    operator new();
  }

LABEL_6:
  *a3 = 0;
  a3[16] = 0;
  return result;
}

uint64_t sub_1000EAE88()
{
  if ((atomic_load_explicit(&qword_1002E0B40, memory_order_acquire) & 1) == 0)
  {
    sub_10029CD08();
  }

  return qword_1002E0B30;
}

const char *sub_1000EAED0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = llvm::APFloat]";
  v6 = 75;
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

const llvm::APInt *sub_1000EAFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  v3 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = v3 + a2;
  return sub_1000DC190(&v5, a3);
}

uint64_t sub_1000EB01C()
{
  if ((atomic_load_explicit(&qword_1002E0B68, memory_order_acquire) & 1) == 0)
  {
    sub_10029CD5C();
  }

  return qword_1002E0B58;
}

const char *sub_1000EB064()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<llvm::APFloat>]";
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

void sub_1000EB170(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = v4 + a2;
  mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v5, &v8);
  sub_1000D25AC(&v8, &v5, a3);
  if (v11 >= 0x41 && v10)
  {
    operator delete[]();
  }

  if (v9 >= 0x41)
  {
    if (v8)
    {
      operator delete[]();
    }
  }
}

BOOL sub_1000EB224(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    if (atomic_load_explicit(&qword_1002E0B78, memory_order_acquire))
    {
      return v1 == a1 || qword_1002E0B70 == a1;
    }
  }

  else
  {
    v5 = a1;
    sub_10029CDB0();
    a1 = v5;
    v1 = mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    if (atomic_load_explicit(&qword_1002E0B78, memory_order_acquire))
    {
      return v1 == a1 || qword_1002E0B70 == a1;
    }
  }

  v4 = v1;
  v6 = a1;
  sub_10029CE00();
  v1 = v4;
  a1 = v6;
  return v1 == a1 || qword_1002E0B70 == a1;
}

uint64_t sub_1000EB2B0()
{
  {
    sub_10029CE54();
  }

  return llvm::getTypeName<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>>(void)::Name;
}

const char *sub_1000EB2F8()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::TypedAttr::Trait<Empty>]";
  v6 = 91;
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

uint64_t sub_1000EB378()
{
  if ((atomic_load_explicit(&qword_1002E0B90, memory_order_acquire) & 1) == 0)
  {
    sub_10029CEA8();
  }

  return qword_1002E0B80;
}

const char *sub_1000EB3C0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ElementsAttr::Trait<Empty>]";
  v6 = 94;
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

void sub_1000EB44C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000EB588(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_1000EBB48;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = nullsub_177;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_1000EBB50;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  *(a2 + 144) = "builtin.dense_string_elements";
  *(a2 + 152) = 29;
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

void sub_1000EB588(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = sub_1000EB634;
  {
    v4 = v2;
    sub_10029BB10();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v3);

  sub_1000EB63C(a1);
}

void sub_1000EB63C(uint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0xE0040DD5D8FE3uLL);
  v3 = v2;
  *v2 = sub_1000EB7AC;
  v2[1] = sub_1000EB8A0;
  v2[2] = sub_1000EB8A8;
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
    sub_10029BB10();
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
  sub_10029B8A0();
  v3 = v15;
LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v13, v3);
}

void sub_1000EB7AC(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = a1;
  sub_1000EB8B0(&v8, a2, v9);
  if (v11 == 1)
  {
    v5 = v9[0];
    *a3 = v9[0];
    *(a3 + 1) = v9[1];
    if (v5 == 1)
    {
      *(a3 + 8) = v10;
      *(a3 + 16) = 1;
      return;
    }

    v6 = v10;
    v10 = 0;
    *(a3 + 8) = v6;
    *(a3 + 16) = 1;
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1000EBA64(&v8, a2, a3);
    if ((v11 & 1) != 0 && (v9[0] & 1) == 0)
    {
LABEL_9:
      v7 = v10;
      v10 = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }
  }
}

uint64_t sub_1000EB8A8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  v3 = *(a2 + 16);
  return result;
}

void sub_1000EB8B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (atomic_load_explicit(&qword_1002E0BA0, memory_order_acquire))
  {
    if (qword_1002E0B98 != a2)
    {
LABEL_3:
      *a3 = 0;
      *(a3 + 16) = 0;
      return;
    }
  }

  else
  {
    sub_10029CEFC();
    if (qword_1002E0B98 != a2)
    {
      goto LABEL_3;
    }
  }

  v12 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v12);
  if (mlir::ShapedType::getNumElements(Shape, v7))
  {
    v8 = *(*a1 + 32);
    v12 = *(*a1 + 8);
    v9 = mlir::ShapedType::getShape(&v12);
    mlir::ShapedType::getNumElements(v9, v10);
    v11 = *(*a1 + 24);
  }

  else
  {
    v11 = 0;
    v8 = 0;
  }

  *a3 = 1;
  *(a3 + 1) = v11;
  *(a3 + 8) = v8;
  *(a3 + 16) = 1;
}

uint64_t sub_1000EB99C()
{
  if ((atomic_load_explicit(&qword_1002E0BB8, memory_order_acquire) & 1) == 0)
  {
    sub_10029CF50();
  }

  return qword_1002E0BA8;
}

const char *sub_1000EB9E4()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = llvm::StringRef]";
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

uint64_t sub_1000EBA64@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002E0A88, memory_order_acquire) & 1) == 0)
  {
    v9 = result;
    sub_10029C9C0();
    result = v9;
    if (qword_1002E0A80 != a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = *(*result + 8);
    v4 = result;
    Shape = mlir::ShapedType::getShape(&v10);
    mlir::ShapedType::getNumElements(Shape, v6);
    v7 = *(*v4 + 24);
    operator new();
  }

  if (qword_1002E0A80 == a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  *a3 = 0;
  a3[16] = 0;
  return result;
}

void sub_1000EBB58(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000EBC94(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_1000EC09C;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = sub_1000EC17C;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_1000EC1AC;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id;
  *(a2 + 144) = "builtin.dense_resource_elements";
  *(a2 + 152) = 31;
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

void sub_1000EBC94(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = sub_1000EBD90;
  {
    v6 = v2;
    sub_10029BB10();
    v3 = v6;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v3);
  sub_1000EBD98(a1);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = sub_1000EC078;
  if ((atomic_load_explicit(&qword_1002E06C8, memory_order_acquire) & 1) == 0)
  {
    sub_10029CFA4();
  }

  v5 = off_1002E06C0;

  mlir::detail::InterfaceMap::insert(a1, v5, v4);
}

void sub_1000EBD98(uint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0xE0040DD5D8FE3uLL);
  v3 = v2;
  *v2 = sub_1000EBF08;
  v2[1] = sub_1000EBF14;
  v2[2] = sub_1000EBF44;
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
    sub_10029BB10();
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
  sub_10029B8A0();
  v3 = v15;
LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v13, v3);
}

uint64_t sub_1000EBF44(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  v3 = *(a2 + 16);
  return result;
}

uint64_t sub_1000EBF4C(void **a1)
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

          return mlir::ElementsAttr::getNumElements(v2, v13);
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

    return mlir::ElementsAttr::getNumElements(v2, v13);
  }

  v13 = 0;

  return mlir::ElementsAttr::getNumElements(v2, v13);
}

uint64_t sub_1000EC078(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(v2 + 80) != 1)
  {
    return 0;
  }

  result = *(v2 + 16);
  v4 = *(v2 + 24);
  return result;
}

BOOL sub_1000EC0A0(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    if (atomic_load_explicit(&qword_1002E0B78, memory_order_acquire))
    {
      goto LABEL_3;
    }

LABEL_15:
    v10 = a1;
    v7 = v1;
    sub_10029CE00();
    v1 = v7;
    a1 = v10;
    v2 = qword_1002E0B70;
    if (atomic_load_explicit(&qword_1002E06F0, memory_order_acquire))
    {
      return v1 == a1 || v2 == a1 || qword_1002E06E8 == a1;
    }

    goto LABEL_16;
  }

  v9 = a1;
  sub_10029CDB0();
  a1 = v9;
  v1 = mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  if ((atomic_load_explicit(&qword_1002E0B78, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = qword_1002E0B70;
  if (atomic_load_explicit(&qword_1002E06F0, memory_order_acquire))
  {
    return v1 == a1 || v2 == a1 || qword_1002E06E8 == a1;
  }

LABEL_16:
  v11 = a1;
  v6 = v2;
  v8 = v1;
  sub_10029CFF8();
  v2 = v6;
  v1 = v8;
  a1 = v11;
  return v1 == a1 || v2 == a1 || qword_1002E06E8 == a1;
}

uint64_t sub_1000EC17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t sub_1000EC1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a3;
  *(&v8 + 1) = a4;
  v7.i64[0] = a5;
  v7.i64[1] = a6;
  return sub_1000EC1E0(a2, &v8, &v7);
}

uint64_t sub_1000EC1E0(uint64_t a1, __int128 *a2, int64x2_t *a3)
{
  v18 = a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v19 = *(a1 + 24);
  v20 = *(a1 + 40);
  v5 = *a2;
  v16 = *a3;
  v17 = v5;
  v6 = sub_1000EC360(v3, v4, &v17, &v16);
  v8 = v7;
  mlir::Attribute::getContext(&v18);
  *&v21 = v6;
  *(&v21 + 1) = v8;
  Context = mlir::Type::getContext(&v21);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v22[0] = &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id;
  v22[1] = Context;
  v27[0] = sub_10010C238;
  v27[1] = v22;
  v25[0] = v21;
  v25[1] = v19;
  v26 = v20;
  v11 = 0x9DDFEA08EB382D69 * ((8 * v19 - 0xAE502812AA7333) ^ DWORD1(v19));
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (DWORD1(v19) ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (DWORD1(v19) ^ (v11 >> 47) ^ v11)) >> 47));
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ (LODWORD(v25[0]) >> 4) ^ (LODWORD(v25[0]) >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v24 = v25;
  v23[0] = v25;
  v23[1] = v27;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) >> 32) >> 15) ^ (-348639895 * (v13 ^ (v14 >> 47) ^ v14)))) ^ v12, sub_10010C140, &v24, sub_10010C170, v23);
}

void *sub_1000EC360(void *result, uint64_t a2, uint64_t a3, int64x2_t *a4)
{
  if (result)
  {
    v4 = *a4;
    *a4 = vaddq_s64(*a4, xmmword_1002B0E70);
    result = *v4.i64[0];
    if (*v4.i64[0])
    {
      v5 = *result;
      {
        v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v7 = *(v5 + 8);
        v8 = *(v5 + 16);
        if (!v8)
        {
          return result;
        }
      }

      else
      {
        v16 = v5;
        v17 = result;
        sub_100299384();
        result = v17;
        v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v7 = *(v16 + 8);
        v8 = *(v16 + 16);
        if (!v8)
        {
          return result;
        }
      }

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
      if (v9 != &v7[2 * v8] && *v9 == v6)
      {
        v15 = v9[1];
      }
    }
  }

  return result;
}

void sub_1000EC470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  if (v6)
  {
    v8 = 16 * v6;
    do
    {
      v9 = *v7++;
      v12 = v9;
      Name = mlir::NamedAttribute::getName(&v12);
      mlir::AttrTypeImmediateSubElementWalker::walk(v11, Name);
      mlir::AttrTypeImmediateSubElementWalker::walk(v11, *(&v12 + 1));
      v8 -= 16;
    }

    while (v8);
  }
}

uint64_t sub_1000EC4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8.i64[0] = a3;
  v8.i64[1] = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return sub_1000EC50C(a2, &v8, &v7);
}

uint64_t sub_1000EC50C(uint64_t a1, int64x2_t *a2, __int128 *a3)
{
  v15 = a1;
  v3 = *(a1 + 8);
  v13 = *a2;
  v14 = v3;
  v12 = *a3;
  sub_1000EC664(&v14, &v13, &v19);
  Context = mlir::Attribute::getContext(&v15);
  v16 = v18;
  v17 = 0x300000000;
  v5 = v20;
  if (v20)
  {
    v6 = Context;
    if (v20 < 4)
    {
      v8 = v18;
      v7 = v20;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v16, v18, v20, 16);
      v7 = v20;
      if (!v20)
      {
        goto LABEL_9;
      }

      v8 = v16;
    }

    memcpy(v8, v19, 16 * v7);
LABEL_9:
    LODWORD(v17) = v5;
    v9 = mlir::DictionaryAttr::get(v6, v16, v5);
    v10 = v16;
    if (v16 == v18)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = mlir::DictionaryAttr::get(Context, v18, 0);
  v10 = v16;
  if (v16 != v18)
  {
LABEL_10:
    free(v10);
  }

LABEL_11:
  if (v19 != &v21)
  {
    free(v19);
  }

  return v9;
}

void sub_1000EC664(uint64_t *a1@<X0>, int64x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  sub_1000EC78C(a1[1], a2, &__src);
  v5 = (a3 + 16);
  *a3 = a3 + 16;
  *(a3 + 8) = 0x300000000;
  v6 = v12;
  v7 = __src;
  if (v12)
  {
    v8 = &__src == a3;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_14;
  }

  if (__src == v14)
  {
    if (v12 < 4)
    {
      v10 = v12;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v12, 16);
      v10 = v12;
      v7 = __src;
      if (!v12)
      {
LABEL_12:
        *(a3 + 8) = v6;
        goto LABEL_13;
      }

      v5 = *a3;
    }

    memcpy(v5, v7, 16 * v10);
    v7 = __src;
    goto LABEL_12;
  }

  *a3 = __src;
  v9 = v13;
  *(a3 + 8) = v6;
  *(a3 + 12) = v9;
  __src = v14;
  v13 = 0;
  v7 = v14;
LABEL_13:
  v12 = 0;
LABEL_14:
  if (v7 != v14)
  {
    free(v7);
  }
}

void sub_1000EC78C(uint64_t a1@<X1>, int64x2_t *a2@<X2>, uint64_t a3@<X8>)
{
  __src = v14;
  v13 = 0x300000000;
  if (a1)
  {
    v5 = 16 * a1;
    do
    {
      while (1)
      {
        v6 = *a2;
        *a2 = vaddq_s64(*a2, xmmword_1002B0E80);
        mlir::NamedAttribute::NamedAttribute(&v11, *v6.i64[0], *(v6.i64[0] + 8));
        if (v13 >= HIDWORD(v13))
        {
          break;
        }

        *(__src + v13) = v11;
        LODWORD(v13) = v13 + 1;
        v5 -= 16;
        if (!v5)
        {
          goto LABEL_7;
        }
      }

      sub_10005FB60(&__src, &v11);
      v5 -= 16;
    }

    while (v5);
LABEL_7:
    v7 = v13;
    v8 = __src;
    *a3 = a3 + 16;
    *(a3 + 8) = 0x300000000;
    if (v7 && &__src != a3)
    {
      if (v8 == v14)
      {
        v10 = v7;
        if (v7 < 4 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v7, 16), v10 = v13, v8 = __src, v13))
        {
          memcpy(*a3, v8, 16 * v10);
          v8 = __src;
        }

        *(a3 + 8) = v7;
      }

      else
      {
        *a3 = v8;
        v9 = HIDWORD(v13);
        *(a3 + 8) = v7;
        *(a3 + 12) = v9;
        __src = v14;
        HIDWORD(v13) = 0;
        v8 = v14;
      }

      LODWORD(v13) = 0;
    }

    if (v8 != v14)
    {
      free(v8);
    }
  }

  else
  {
    *a3 = a3 + 16;
    *(a3 + 8) = 0x300000000;
  }
}

void sub_1000EC93C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = sub_1000ECADC;
  {
    v10 = v4;
    sub_10029D04C();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    sub_1000E4C5C(a2 + 8, &v14);
  }

  *(a2 + 72) = sub_1000ECAE4;
  *(a2 + 80) = v13;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = sub_1000ECB44;
  *(a2 + 112) = &v12;
  *(a2 + 120) = sub_1000ECC58;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
  *(a2 + 144) = "builtin.float";
  *(a2 + 152) = 13;
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

BOOL sub_1000ECAE4(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  sub_10029CDB0();
  return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void sub_1000ECB5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a1 + 2);
  v10 = a1[2];
  v13 = a1[1];
  v11 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v11 == v10)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v14, v9);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v14, v9);
  }

  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  mlir::AttrTypeImmediateSubElementWalker::walk(v12, v13);
  if (v11 == v14[0])
  {
    sub_10002B154(v14);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v14);
  }
}

uint64_t sub_1000ECC58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return sub_1000ECC8C(a2, v8, v7);
}

uint64_t sub_1000ECC8C(void *a1, uint64_t a2, uint64_t **a3)
{
  v12 = a1;
  v4 = (a1 + 2);
  v5 = a1[2];
  v15 = a1[1];
  v6 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v6 == v5)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v16, v4);
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v16, v4);
    if (v15)
    {
LABEL_3:
      v7 = **a3;
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:
  mlir::Attribute::getContext(&v12);
  v13 = v7;
  Context = mlir::Type::getContext(&v13);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
  v14[1] = Context;
  v10 = sub_1000E1A18(AttributeUniquer, sub_1000E1E74, v14, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v13, v16);
  if (v6 == v16[0])
  {
    sub_10002B154(v16);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v16);
  }

  return v10;
}

void sub_1000ECDD0(llvm::APFloatBase *a1, uint64_t a2)
{
  v2 = (a2 + 16);
  v3 = *(a2 + 16);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v3)
  {

    sub_10002B154(v2);
  }

  else
  {

    llvm::detail::IEEEFloat::~IEEEFloat(v2);
  }
}

void sub_1000ECE34(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = sub_1000ECFD4;
  {
    v10 = v4;
    sub_10029D04C();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    sub_1000E4C5C(a2 + 8, &v14);
  }

  *(a2 + 72) = sub_1000ECFDC;
  *(a2 + 80) = v13;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = sub_1000ED03C;
  *(a2 + 112) = &v12;
  *(a2 + 120) = sub_1000ED0EC;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  *(a2 + 144) = "builtin.integer";
  *(a2 + 152) = 15;
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

BOOL sub_1000ECFDC(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  sub_10029CDB0();
  return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t sub_1000ED03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  v9[4] = v7;
  v11 = *(a2 + 24);
  if (v11 > 0x40)
  {
    llvm::APInt::initSlowCase(&v10, (a2 + 16));
  }

  v10 = *(a2 + 16);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  result = mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
  if (v11 >= 0x41)
  {
    result = v10;
    if (v10)
    {
      operator delete[]();
    }
  }

  return result;
}

uint64_t sub_1000ED0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = a2;
  v5 = *(a2 + 8);
  v9 = *(a2 + 24);
  if (v9 > 0x40)
  {
    llvm::APInt::initSlowCase(&v8, (a2 + 16));
  }

  v8 = *(a2 + 16);
  if (v5)
  {
    v6 = *a5;
  }

  else
  {
    v6 = 0;
  }

  mlir::Attribute::getContext(&v10);
  result = mlir::IntegerAttr::get(v6, &v8);
  if (v9 >= 0x41)
  {
    if (v8)
    {
      operator delete[]();
    }
  }

  return result;
}

uint64_t sub_1000ED1A8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000ED1E0(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v2 = *(a2 + 8);
  mlir::Attribute::getContext(&v10);
  v11 = v2;
  Context = mlir::IntegerSet::getContext(&v11);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id;
  v12[1] = Context;
  v16[0] = sub_1000E296C;
  v16[1] = v12;
  v15 = v11;
  v5 = 0x9DDFEA08EB382D69 * ((8 * v11 - 0xAE502812AA7333) ^ HIDWORD(v11));
  v6 = (0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v5 >> 47) ^ v5)) >> 47);
  v7 = ((0x9DDFEA08EB382D69 * v6) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (((0x759C16B48 * v6) & 0x7FFFFFFF8) + 8));
  v13[0] = &v15;
  v13[1] = v16;
  v14 = &v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8))), sub_1000E28AC, &v14, sub_1000E28C4, v13);
}

void sub_1000ED318(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = sub_1000ED4B8;
  {
    v10 = v4;
    sub_10029D04C();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    sub_1000E4C5C(a2 + 8, &v14);
  }

  *(a2 + 72) = sub_1000ED4C0;
  *(a2 + 80) = v13;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = sub_1000ED520;
  *(a2 + 112) = &v12;
  *(a2 + 120) = sub_1000ED56C;
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

BOOL sub_1000ED4C0(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  sub_10029CDB0();
  return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t sub_1000ED520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t sub_1000ED570(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
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
  v26[0] = sub_1000E2BF0;
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
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id, -348639895 * ((v18 >> 47) ^ v18), sub_1000E297C, &v24, sub_1000E29FC, v23);
}

void sub_1000ED744(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000ED880(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000E4C5C(a2 + 8, &v11);
  }

  *(a2 + 72) = sub_1001089FC;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = sub_100108A00;
  *(a2 + 112) = &v9;
  *(a2 + 120) = sub_100108A58;
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

void sub_1000ED880(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = sub_1000ED92C;
  {
    v4 = v2;
    sub_10029BB10();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v3);

  sub_1000ED934(a1);
}

void sub_1000ED934(uint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0xE0040DD5D8FE3uLL);
  v3 = v2;
  *v2 = sub_1000EDAA4;
  v2[1] = sub_1000EDB20;
  v2[2] = sub_1000EDB50;
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
    sub_10029BB10();
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
  sub_10029B8A0();
  v3 = v15;
LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v13, v3);
}

void sub_1000EDAA4(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v5 = a1;
  if ((atomic_load_explicit(&qword_1002E0A88, memory_order_acquire) & 1) == 0)
  {
    v3 = a2;
    v4 = a3;
    sub_10029C9C0();
    a2 = v3;
    a3 = v4;
    if (qword_1002E0A80 != v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1000EDB58(&v5);
  }

  if (qword_1002E0A80 == a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1000EDCA8(&v5, a2, a3);
}

uint64_t sub_1000EDB50(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  v3 = *(a2 + 16);
  return result;
}

void sub_1000EDCA8(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002E0AB0, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10029CA14();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002E0AA8 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000EE9E8(a1, a3);
    return;
  }

  if (qword_1002E0AA8 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002E0AD8, memory_order_acquire))
  {
    if (qword_1002E0AD0 != a2)
    {
LABEL_5:

      sub_1000EFC1C(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10029CA68();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002E0AD0 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000EFACC(a1, a3);
}

void sub_1000EDD94(mlir::SparseElementsAttr *a1)
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

    sub_100003FC0();
  }

  operator new();
}

void sub_1000EE164(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
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

void *sub_1000EE3D8(void *result)
{
  *result = off_1002D6868;
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

void sub_1000EE430(void *a1)
{
  *a1 = off_1002D6868;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000EE56C(__n128 *a1, __n128 *a2)
{
  a2->n128_u64[0] = off_1002D6868;
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

    sub_100003FC0();
  }

  result = a1[2];
  a2[3].n128_u64[0] = a1[3].n128_u64[0];
  a2[2] = result;
  return result;
}

void sub_1000EE618(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000EE630(void *a1)
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

uint64_t sub_1000EE678(void *a1, void *a2)
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

uint64_t sub_1000EE6F0(uint64_t result)
{
  *result = off_1002D68B0;
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

void sub_1000EE7A8(uint64_t a1)
{
  *a1 = off_1002D68B0;
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

uint64_t sub_1000EE98C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_1000EE9E8(v4);
}

unint64_t sub_1000EE9E8@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000EEB38(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000EBF4C(a1) == 1;
    sub_1000EF004(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

unint64_t sub_1000EEB38@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  *&v11[0] = sub_1000DE9D4(a1);
  Width = mlir::IntegerType::getWidth(v11);
  if (Width > 0x40)
  {
    llvm::APInt::initSlowCase(&v7);
  }

  v7 = 0;
  v9[0] = *(*a1 + 32);
  result = sub_1000EA3F4(v9, v11);
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

      sub_100003FC0();
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

void sub_1000EF004(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
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

uint64_t sub_1000EF278(uint64_t a1)
{
  *a1 = off_1002D68E0;
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

void sub_1000EF2F0(uint64_t a1)
{
  *a1 = off_1002D68E0;
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

uint64_t sub_1000EF484(uint64_t result, uint64_t a2)
{
  *a2 = off_1002D68E0;
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

    sub_100003FC0();
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

void sub_1000EF56C(uint64_t a1)
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

void sub_1000EF5E0(_DWORD *__p)
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

char *sub_1000EF658@<X0>(char *result@<X0>, uint64_t a2@<X1>, llvm::APInt *a3@<X8>)
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

uint64_t sub_1000EF7D4(uint64_t result)
{
  *result = off_1002D6928;
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

void sub_1000EF88C(uint64_t a1)
{
  *a1 = off_1002D6928;
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

uint64_t sub_1000EFA70(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_1000EFACC(v4);
}

BOOL sub_1000EFACC@<W0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000EFD08(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000EBF4C(a1) == 1;
    sub_1000F0108(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_1000EFC1C(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002E0718, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10029D088();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002E0710 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000F099C(a1, a3);
    return;
  }

  if (qword_1002E0710 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002E0740, memory_order_acquire))
  {
    if (qword_1002E0738 != a2)
    {
LABEL_5:

      sub_1000F18B4(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10029BBB4();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002E0738 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000F1764(a1, a3);
}

BOOL sub_1000EFD08@<W0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
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

      sub_100003FC0();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000F0108(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
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

void *sub_1000F037C(void *result)
{
  *result = off_1002D6958;
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

void sub_1000F03D4(void *a1)
{
  *a1 = off_1002D6958;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000F0518(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D6958;
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

    sub_100003FC0();
  }

  result = *(a1 + 32);
  *(a2 + 41) = *(a1 + 41);
  *(a2 + 32) = result;
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

void sub_1000F05CC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000F05E4(void *a1)
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

uint64_t sub_1000F062C(uint64_t a1, void *a2)
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

uint64_t sub_1000F06A4(uint64_t result)
{
  *result = off_1002D69A0;
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

void sub_1000F075C(uint64_t a1)
{
  *a1 = off_1002D69A0;
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

uint64_t sub_1000F0940(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_1000F099C(v4);
}

uint64_t sub_1000F099C@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F0AEC(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000EBF4C(a1) == 1;
    sub_1000F0EE0(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t sub_1000F0AEC@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000E61C0(v7, v9);
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

      sub_100003FC0();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000F0EE0(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
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

void *sub_1000F1154(void *result)
{
  *result = off_1002D69D0;
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

void sub_1000F11AC(void *a1)
{
  *a1 = off_1002D69D0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000F12F0(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D69D0;
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

    sub_100003FC0();
  }

  result = *(a1 + 32);
  *(a2 + 41) = *(a1 + 41);
  *(a2 + 32) = result;
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

void sub_1000F13A4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000F13BC(void *a1)
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

uint64_t sub_1000F1404(uint64_t a1, void *a2)
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

uint64_t sub_1000F146C(uint64_t result)
{
  *result = off_1002D6A18;
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

void sub_1000F1524(uint64_t a1)
{
  *a1 = off_1002D6A18;
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

uint64_t sub_1000F1708(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_1000F1764(v4);
}

uint64_t sub_1000F1764@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F19A0(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000EBF4C(a1) == 1;
    sub_1000F1D94(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_1000F18B4(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002E0768, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10029BC58();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002E0760 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000F2618(a1, a3);
    return;
  }

  if (qword_1002E0760 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002E0790, memory_order_acquire))
  {
    if (qword_1002E0788 != a2)
    {
LABEL_5:

      sub_1000F3528(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10029D0DC();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002E0788 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000F33D8(a1, a3);
}

uint64_t sub_1000F19A0@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000E64B0(v7, v9);
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

      sub_100003FC0();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000F1D94(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
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

void *sub_1000F2008(void *result)
{
  *result = off_1002D6A48;
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

void sub_1000F2060(void *a1)
{
  *a1 = off_1002D6A48;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000F21A4(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D6A48;
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

    sub_100003FC0();
  }

  result = *(a1 + 32);
  *(a2 + 42) = *(a1 + 42);
  *(a2 + 32) = result;
  *(a2 + 58) = 0;
  *(a2 + 62) = 0;
  return result;
}

void sub_1000F2258(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000F2270(void *a1)
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

uint64_t sub_1000F22B8(uint64_t a1, void *a2)
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

uint64_t sub_1000F2320(uint64_t result)
{
  *result = off_1002D6A90;
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

void sub_1000F23D8(uint64_t a1)
{
  *a1 = off_1002D6A90;
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

uint64_t sub_1000F25BC(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_1000F2618(v4);
}

uint64_t sub_1000F2618@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F2768(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000EBF4C(a1) == 1;
    sub_1000F2B5C(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t sub_1000F2768@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000E67A0(v7, v9);
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

      sub_100003FC0();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void sub_1000F2B5C(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
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

void *sub_1000F2DD0(void *result)
{
  *result = off_1002D6AC0;
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

void sub_1000F2E28(void *a1)
{
  *a1 = off_1002D6AC0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

__n128 sub_1000F2F68(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002D6AC0;
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

    sub_100003FC0();
  }

  result = *(a1 + 32);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 32) = result;
  *(a2 + 60) = 0;
  return result;
}

void sub_1000F3018(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1000F3030(void *a1)
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

uint64_t sub_1000F3078(uint64_t a1, void *a2)
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

uint64_t sub_1000F30E0(uint64_t result)
{
  *result = off_1002D6B08;
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

void sub_1000F3198(uint64_t a1)
{
  *a1 = off_1002D6B08;
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

uint64_t sub_1000F337C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = sub_10000520C();
  return sub_1000F33D8(v4);
}

uint64_t sub_1000F33D8@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F3614(a1, v7);
  if (v8 == 1)
  {
    v5 = sub_1000EBF4C(a1) == 1;
    sub_1000F3A08(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_1000F3528(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1002E07B8, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    sub_10029D130();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (qword_1002E07B0 != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    sub_1000F426C(a1, a3);
    return;
  }

  if (qword_1002E07B0 == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (atomic_load_explicit(&qword_1002E07E0, memory_order_acquire))
  {
    if (qword_1002E07D8 != a2)
    {
LABEL_5:

      sub_1000F5184(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    sub_10029BE4C();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (qword_1002E07D8 != v4)
    {
      goto LABEL_5;
    }
  }

  sub_1000F5034(a1, a3);
}

uint64_t sub_1000F3614@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[0] = *(*a1 + 32);
  result = sub_1000DFDB8(v7, v9);
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

      sub_100003FC0();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}