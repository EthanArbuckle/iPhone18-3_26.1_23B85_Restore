void *mlir::ODIE::Compiler::detail::KeywordPrintableAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ExternAttr>::printAsKeyword(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  v7 = a2;
  v4 = (*(*a3 + 16))(a3);
  v5 = v4[4];
  if ((v4[3] - v5) > 5)
  {
    *(v5 + 4) = 28274;
    *v5 = 1702131813;
    v4[4] += 6;
  }

  else
  {
    llvm::raw_ostream::write(v4, "extern", 6uLL);
  }

  return mlir::ODIE::Compiler::CoreML::ExternAttr::print(&v7, a3);
}

BOOL mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ExternAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage,mlir::detail::AttributeUniquer,mlir::ODIE::Compiler::KeywordPrintableAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  sub_100285F20();
  return mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10ExternAttrES2_NSE_6detail17ExternAttrStorageENSA_16AttributeUniquerEJNSD_20KeywordPrintableAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  Context = mlir::Attribute::getContext(&v10);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id;
  v11[1] = Context;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17ExternAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_10ExternAttrEJNS_9StringRefEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v15[1] = v11;
  v14[0] = v2;
  v14[1] = v3;
  v6 = llvm::hash_value(v2, v3);
  v7 = HIDWORD(v6) ^ 0xFF51AFD7ED558CCDLL;
  v8 = 0x9DDFEA08EB382D69 * ((8 * v6 + 8) ^ v7);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

void sub_1001CA538(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::VerifiableTensorEncodingInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>::verifyEncoding;
  {
    v10 = v4;
    sub_100285FCC();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding,void>::resolveTypeID(void)::id, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    sub_1000DB1E0(a2 + 8, &v14);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,mlir::detail::AttributeUniquer,mlir::VerifiableTensorEncoding::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v13;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML18TensorEncodingAttrES2_NSF_6detail25TensorEncodingAttrStorageENSB_16AttributeUniquerEJNS1_24VerifiableTensorEncoding5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v12;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML18TensorEncodingAttrES2_NSE_6detail25TensorEncodingAttrStorageENSA_16AttributeUniquerEJNS1_24VerifiableTensorEncoding5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id;
  *(a2 + 144) = "coreml.tensor_encoding";
  *(a2 + 152) = 22;
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

BOOL mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,mlir::detail::AttributeUniquer,mlir::VerifiableTensorEncoding::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding::Trait<mlir::TypeID mlir::TypeID::get<mlir::VerifiableTensorEncoding::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  sub_100286010();
  return mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding::Trait<mlir::TypeID mlir::TypeID::get<mlir::VerifiableTensorEncoding::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t sub_1001CA77C()
{
  {
    sub_100286068();
  }

  return llvm::getTypeName<mlir::VerifiableTensorEncoding::Trait<mlir::TypeID mlir::TypeID::get<mlir::VerifiableTensorEncoding::Trait>(void)::Empty>>(void)::Name;
}

const char *sub_1001CA7C4()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::VerifiableTensorEncoding::Trait<Empty>]";
  v6 = 106;
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

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML18TensorEncodingAttrES2_NSE_6detail25TensorEncodingAttrStorageENSA_16AttributeUniquerEJNS1_24VerifiableTensorEncoding5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a3;
  *(&v8 + 1) = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return sub_1001CA87C(a2, &v8, &v7);
}

uint64_t sub_1001CA87C(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v17 = a1;
  v15 = *a2;
  v16 = *(a1 + 8);
  v14 = *a3;
  sub_1001CAA94(&v16, &v26);
  Context = mlir::Attribute::getContext(&v17);
  v23 = v25;
  v24 = 0xC00000000;
  v4 = v27;
  if (!v27)
  {
    v4 = 0;
    v7 = v25;
    goto LABEL_9;
  }

  if (v27 < 0xD)
  {
    v6 = v25;
    v5 = v27;
    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v27, 4);
  v5 = v27;
  if (v27)
  {
    v6 = v23;
LABEL_7:
    memcpy(v6, v26, 4 * v5);
  }

  LODWORD(v24) = v4;
  v7 = v23;
LABEL_9:
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v18[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id;
  v18[1] = Context;
  v22[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail25TensorEncodingAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_18TensorEncodingAttrEJNS_8ArrayRefIiEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v22[1] = v18;
  v21[0] = v7;
  v21[1] = v4;
  v9 = sub_10002C76C(v7, v7 + 4 * v4);
  v10 = HIDWORD(v9) ^ 0xFF51AFD7ED558CCDLL;
  v11 = 0x9DDFEA08EB382D69 * ((8 * v9 + 8) ^ v10);
  v19[0] = v21;
  v19[1] = v22;
  v20 = v21;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 32) >> 15) ^ (-348639895 * (v10 ^ (v11 >> 47) ^ v11))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,llvm::ArrayRef<int>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v20, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,llvm::ArrayRef<int>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v19);
  if (v23 != v25)
  {
    free(v23);
  }

  if (v26 != &v28)
  {
    free(v26);
  }

  return ParametricStorageTypeImpl;
}

void sub_1001CAA94(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001CABBC(*a1, *(a1 + 8), &__src);
  v3 = (a2 + 16);
  *a2 = a2 + 16;
  *(a2 + 8) = 0xC00000000;
  v4 = v10;
  v5 = __src;
  if (v10)
  {
    v6 = &__src == a2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_14;
  }

  if (__src == v12)
  {
    if (v10 < 0xD)
    {
      v8 = v10;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v10, 4);
      v8 = v10;
      v5 = __src;
      if (!v10)
      {
LABEL_12:
        *(a2 + 8) = v4;
        goto LABEL_13;
      }

      v3 = *a2;
    }

    memcpy(v3, v5, 4 * v8);
    v5 = __src;
    goto LABEL_12;
  }

  *a2 = __src;
  v7 = v11;
  *(a2 + 8) = v4;
  *(a2 + 12) = v7;
  __src = v12;
  v11 = 0;
  v5 = v12;
LABEL_13:
  v10 = 0;
LABEL_14:
  if (v5 != v12)
  {
    free(v5);
  }
}

void sub_1001CABBC(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __src = v15;
  v14 = 0xC00000000;
  if (a2)
  {
    v3 = 4 * a2;
    do
    {
      while (v14 < HIDWORD(v14))
      {
        v4 = *a1++;
        *(__src + v14) = v4;
        LODWORD(v14) = v14 + 1;
        v3 -= 4;
        if (!v3)
        {
          goto LABEL_7;
        }
      }

      v5 = a1;
      v6 = a3;
      sub_1001CAD50(&__src, a1);
      a3 = v6;
      a1 = v5 + 1;
      v3 -= 4;
    }

    while (v3);
LABEL_7:
    v7 = v14;
    v8 = __src;
    *a3 = a3 + 16;
    *(a3 + 8) = 0xC00000000;
    if (v7 && &__src != a3)
    {
      if (v8 == v15)
      {
        v10 = v7;
        if (v7 < 0xD || (v11 = a3, llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v7, 4), a3 = v11, v10 = v14, v8 = __src, v14))
        {
          v12 = a3;
          memcpy(*a3, v8, 4 * v10);
          a3 = v12;
          v8 = __src;
        }

        *(a3 + 8) = v7;
      }

      else
      {
        *a3 = v8;
        v9 = HIDWORD(v14);
        *(a3 + 8) = v7;
        *(a3 + 12) = v9;
        __src = v15;
        HIDWORD(v14) = 0;
        v8 = v15;
      }

      LODWORD(v14) = 0;
    }

    if (v8 != v15)
    {
      free(v8);
    }
  }

  else
  {
    *a3 = a3 + 16;
    *(a3 + 8) = 0xC00000000;
  }
}

uint64_t sub_1001CAD50(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    v6 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 4);
    a1 = v6;
    LODWORD(v3) = *(v6 + 8);
  }

  *(*a1 + 4 * v3) = v2;
  v4 = *(a1 + 8) + 1;
  *(a1 + 8) = v4;
  return *a1 + 4 * v4 - 4;
}

void sub_1001CADBC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001CAEF8(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000DB1E0(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ODIE::Compiler::ParamAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13ParamDeclAttrES2_NSF_6detail20ParamDeclAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENSE_18ParamAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13ParamDeclAttrES2_NSE_6detail20ParamDeclAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENSD_18ParamAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id;
  *(a2 + 144) = "coreml.param.decl";
  *(a2 + 152) = 17;
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

void sub_1001CAEF8(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>::getType;
  {
    v4 = v2;
    sub_1002855B8();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v3);

  sub_1001CAFB0(a1);
}

void sub_1001CAFB0(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x6004044C4A2DFuLL);
  v3 = v2;
  *v2 = 0;
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
    sub_1002855B8();
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
    *v3 = v7[1];
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

LABEL_13:
  *v3 = 0;
  {
    goto LABEL_14;
  }

LABEL_18:
  v15 = v3;
  sub_1002860BC();
  v3 = v15;
LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v13, v3);
}

uint64_t sub_1001CB100()
{
  {
    sub_100286114();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::ParamAttrInterface>(void)::Name;
}

const char *sub_1001CB148()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ParamAttrInterface]";
  v6 = 102;
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

BOOL mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ODIE::Compiler::ParamAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    v5 = a1;
    sub_100286168();
    a1 = v5;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v4 = v1;
    v6 = a1;
    sub_1002861C0();
    v1 = v4;
    a1 = v6;
  }

  return v1 == a1 || mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::ParamAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t sub_1001CB24C()
{
  {
    sub_100286218();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::ParamAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::ParamAttrInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *sub_1001CB294()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ParamAttrInterface::Trait<Empty>]";
  v6 = 116;
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

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13ParamDeclAttrES2_NSF_6detail20ParamDeclAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENSE_18ParamAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v10, v6);
  mlir::AttrTypeImmediateSubElementWalker::walk(v10, v7);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v10, v8);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13ParamDeclAttrES2_NSE_6detail20ParamDeclAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENSD_18ParamAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return sub_1001CB3A0(a2, v8, v7);
}

uint64_t sub_1001CB3A0(void *a1, uint64_t **a2, uint64_t **a3)
{
  v20 = a1;
  v3 = a1[2];
  v4 = *a2;
  if (a1[1])
  {
    v6 = *v4++;
    v5 = v6;
    v7 = a1[3];
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = 0;
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v5 = 0;
  v7 = a1[3];
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = **a3;
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_4:
  v9 = *v4;
LABEL_8:
  Context = mlir::Attribute::getContext(&v20);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v21[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id;
  v21[1] = Context;
  v25[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamDeclAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamDeclAttrEJNS1_10StringAttrENS1_4TypeENS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v25[1] = v21;
  v24[0] = v5;
  v24[1] = v8;
  v24[2] = v9;
  v12 = (v8 >> 4) ^ (v8 >> 9);
  v13 = 0xB492B66FBE98F273 * ((v5 >> 4) ^ (v5 >> 9));
  v14 = 0x9AE16A3B2F90404FLL * ((v9 >> 4) ^ (v9 >> 9));
  v15 = __ROR8__(v13 - v12, 43);
  v16 = __ROR8__(v14 ^ 0xFF51AFD7ED558CCDLL, 30);
  v17 = v13 + __ROR8__(v12 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v14 + 24;
  v18 = 0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * ((v15 - 0x3C5A37A36834CED9 * v12 + v16) ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v15 - 0x3C5A37A36834CED9 * v12 + v16) ^ v17)));
  v22[0] = v24;
  v22[1] = v25;
  v23 = v24;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id, -348639895 * ((v18 >> 47) ^ v18), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr,mlir::Type,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v23, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr,mlir::Type,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v22);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML18ParamDeclArrayAttrES2_NSF_6detail25ParamDeclArrayAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML18ParamDeclArrayAttrES2_NSE_6detail25ParamDeclArrayAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
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
  v13[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id;
  v13[1] = Context;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail25ParamDeclArrayAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_18ParamDeclArrayAttrEJNS_8ArrayRefINS4_13ParamDeclAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v17[1] = v13;
  v16[0] = a3;
  v16[1] = v5;
  v8 = sub_1000D6708(a3, &a3[2 * v5]);
  v9 = HIDWORD(v8) ^ 0xFF51AFD7ED558CCDLL;
  v10 = 0x9DDFEA08EB382D69 * ((8 * v8 + 8) ^ v9);
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

void sub_1001CB6D8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ParamRefAttr>::getType;
  {
    v10 = v4;
    sub_10028243C();
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

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ParamRefAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v13;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML12ParamRefAttrES2_NSF_6detail19ParamRefAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v12;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML12ParamRefAttrES2_NSE_6detail19ParamRefAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id;
  *(a2 + 144) = "coreml.param.ref";
  *(a2 + 152) = 16;
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

BOOL mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ParamRefAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  sub_100286168();
  return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML12ParamRefAttrES2_NSF_6detail19ParamRefAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML12ParamRefAttrES2_NSE_6detail19ParamRefAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return sub_1001CB968(a2, v8, v7);
}

uint64_t sub_1001CB968(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  v12 = a1;
  v3 = *(a1 + 16);
  if (!*(a1 + 8))
  {
    v4 = 0;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = **a2;
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = **a3;
LABEL_6:
  Context = mlir::Attribute::getContext(&v12);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id;
  v13[1] = Context;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail19ParamRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_12ParamRefAttrEJNS1_10StringAttrENS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v17[1] = v13;
  v16[0] = v4;
  v16[1] = v5;
  v8 = (v5 >> 4) ^ (v5 >> 9);
  v9 = __ROR8__(v8 + 16, 16);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v4 >> 4) ^ (v4 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10)))) ^ v8, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::StringAttr,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::StringAttr,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

void sub_1001CBA9C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001CBBD8(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000DB1E0(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ODIE::Compiler::ParamAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13ParamBindAttrES2_NSF_6detail20ParamBindAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENSE_18ParamAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13ParamBindAttrES2_NSE_6detail20ParamBindAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENSD_18ParamAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id;
  *(a2 + 144) = "coreml.param.bind";
  *(a2 + 152) = 17;
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

void sub_1001CBBD8(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ParamBindAttr>::getType;
  {
    v4 = v2;
    sub_1002855B8();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v3);

  sub_1001CAFB0(a1);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13ParamBindAttrES2_NSF_6detail20ParamBindAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENSE_18ParamAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v13[0] = a3;
  v13[1] = a4;
  v13[2] = a5;
  v13[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v13, v6);
  result = mlir::AttrTypeImmediateSubElementWalker::walk(v13, v7);
  if (v9)
  {
    v11 = 16 * v9;
    do
    {
      v12 = *v8;
      v8 += 2;
      result = mlir::AttrTypeImmediateSubElementWalker::walk(v13, v12);
      v11 -= 16;
    }

    while (v11);
  }

  return result;
}

void *_ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13ParamBindAttrES2_NSE_6detail20ParamBindAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENSD_18ParamAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a3;
  *(&v8 + 1) = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return sub_1001CBD38(a2, &v8, &v7);
}

void *sub_1001CBD38(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a1 + 24);
  v16 = *(a1 + 8);
  v17 = v3;
  v4 = *a2;
  v14 = *a3;
  v15 = v4;
  v18 = a1;
  v19[0] = &v15;
  v19[1] = &v14;
  sub_1001CBEBC(v19, &v16, &v16 + 1, &v17, &v25);
  mlir::Attribute::getContext(&v18);
  v5 = v25;
  v6 = v26;
  v20 = v25;
  v21 = v26;
  v22 = v24;
  v23 = 0x300000000;
  v7 = v28;
  if (!v28)
  {
    v7 = 0;
    v10 = v24;
    goto LABEL_9;
  }

  if (v28 < 4)
  {
    v9 = v24;
    v8 = v28;
    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v24, v28, 16);
  v8 = v28;
  if (v28)
  {
    v9 = v22;
LABEL_7:
    memcpy(v9, v27, 16 * v8);
  }

  LODWORD(v23) = v7;
  v5 = v20;
  v6 = v21;
  v10 = v22;
LABEL_9:
  v19[0] = v5;
  Context = mlir::Attribute::getContext(v19);
  v12 = mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(Context, v19[0], v6, v10, v7);
  if (v22 != v24)
  {
    free(v22);
  }

  if (v27 != &v29)
  {
    free(v27);
  }

  return v12;
}

void sub_1001CBEBC(int64x2_t **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  if (!*a2)
  {
    v9 = 0;
    v14 = *a3;
    v11 = a1[1];
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v8 = *v7;
  *v7 = vaddq_s64(*v7, xmmword_10028FD30);
  v9 = *v8.i64[0];
  v10 = *a3;
  v11 = a1[1];
  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = *v11;
  *v11 = vaddq_s64(*v11, xmmword_10028FD30);
  v13 = *v12.i64[0];
LABEL_6:
  sub_1001CC054(*a4, a4[1], v7, &__src);
  *(a5 + 16) = a5 + 32;
  *a5 = v9;
  *(a5 + 8) = v13;
  *(a5 + 24) = 0x300000000;
  v15 = __src;
  if ((a5 + 16) == &__src)
  {
    goto LABEL_17;
  }

  v16 = v20;
  if (!v20)
  {
    goto LABEL_17;
  }

  if (__src == v22)
  {
    if (v20 < 4)
    {
      v18 = v20;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a5 + 16, (a5 + 32), v20, 16);
      v18 = v20;
      v15 = __src;
      if (!v20)
      {
        goto LABEL_15;
      }
    }

    memcpy(*(a5 + 16), v15, 16 * v18);
    v15 = __src;
LABEL_15:
    *(a5 + 24) = v16;
    goto LABEL_16;
  }

  *(a5 + 16) = __src;
  v17 = v21;
  *(a5 + 24) = v16;
  *(a5 + 28) = v17;
  __src = v22;
  v21 = 0;
  v15 = v22;
LABEL_16:
  v20 = 0;
LABEL_17:
  if (v15 != v22)
  {
    free(v15);
  }
}

void sub_1001CC054(uint64_t a1@<X0>, uint64_t a2@<X1>, int64x2_t *a3@<X2>, uint64_t a4@<X8>)
{
  __src = v16;
  v15 = 0x300000000;
  if (a2)
  {
    v6 = a1;
    v7 = a1 + 16 * a2;
    do
    {
      while (1)
      {
        *&v13 = sub_1001CC1FC(*v6, *(v6 + 8), a3);
        *(&v13 + 1) = v8;
        if (v15 >= HIDWORD(v15))
        {
          break;
        }

        *(__src + v15) = v13;
        LODWORD(v15) = v15 + 1;
        v6 += 16;
        if (v6 == v7)
        {
          goto LABEL_7;
        }
      }

      sub_100056C68(&__src, &v13);
      v6 += 16;
    }

    while (v6 != v7);
LABEL_7:
    v9 = v15;
    v10 = __src;
    *a4 = a4 + 16;
    *(a4 + 8) = 0x300000000;
    if (v9 && &__src != a4)
    {
      if (v10 == v16)
      {
        v12 = v9;
        if (v9 < 4 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v9, 16), v12 = v15, v10 = __src, v15))
        {
          memcpy(*a4, v10, 16 * v12);
          v10 = __src;
        }

        *(a4 + 8) = v9;
      }

      else
      {
        *a4 = v10;
        v11 = HIDWORD(v15);
        *(a4 + 8) = v9;
        *(a4 + 12) = v11;
        __src = v16;
        HIDWORD(v15) = 0;
        v10 = v16;
      }

      LODWORD(v15) = 0;
    }

    if (v10 != v16)
    {
      free(v10);
    }
  }

  else
  {
    *a4 = a4 + 16;
    *(a4 + 8) = 0x300000000;
  }
}

void *sub_1001CC1FC(void *result, uint64_t a2, int64x2_t *a3)
{
  if (result)
  {
    v3 = *a3;
    *a3 = vaddq_s64(*a3, xmmword_10028FD30);
    result = *v3.i64[0];
    if (*v3.i64[0])
    {
      v4 = *result;
      {
        v5 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
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
        sub_1002855B8();
        result = v16;
        v5 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
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

void sub_1001CC30C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001CC448(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    sub_1000DB1E0(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ODIE::Compiler::ParamAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML17ParamConstantAttrES2_NSF_6detail24ParamConstantAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENSE_18ParamAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML17ParamConstantAttrES2_NSE_6detail24ParamConstantAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENSD_18ParamAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  *(a2 + 144) = "coreml.param.constant";
  *(a2 + 152) = 21;
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

void sub_1001CC448(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ParamConstantAttr>::getType;
  {
    v4 = v2;
    sub_1002855B8();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v3);

  sub_1001CAFB0(a1);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML17ParamConstantAttrES2_NSF_6detail24ParamConstantAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENSE_18ParamAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML17ParamConstantAttrES2_NSE_6detail24ParamConstantAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENSD_18ParamAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return sub_1001CC580(a2, v8, v7);
}

uint64_t sub_1001CC580(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  v12 = a1;
  v3 = *(a1 + 16);
  if (!*(a1 + 8))
  {
    v4 = 0;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = **a2;
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = **a3;
LABEL_6:
  mlir::Attribute::getContext(&v12);
  v13 = v4;
  Context = mlir::Attribute::getContext(&v13);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  v14[1] = Context;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_9AttributeERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
  v18[1] = v14;
  v17[0] = v13;
  v17[1] = v5;
  v8 = (v5 >> 4) ^ (v5 >> 9);
  v9 = __ROR8__(v8 + 16, 16);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ 0xFF51AFD7ED558CCDLL ^ (v13 >> 4) ^ (v13 >> 9));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10)))) ^ v8, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10IntentAttrES2_NSE_6detail17IntentAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17IntentAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_10IntentAttrEJNS4_6IntentEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v13[1] = v9;
  v12 = v2;
  v5 = HIDWORD(v2) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * ((8 * v2 + 8) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage,mlir::ODIE::Compiler::CoreML::Intent>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Intent &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage,mlir::ODIE::Compiler::CoreML::Intent>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Intent &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML14TargetSpecAttrES2_NSF_6detail21TargetSpecAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v9, v6);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML14TargetSpecAttrES2_NSE_6detail21TargetSpecAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return sub_1001CC83C(a2, v5);
}

uint64_t sub_1001CC83C(uint64_t a1, uint64_t **a2)
{
  v17 = a1;
  v2 = *(a1 + 48);
  v3 = *a2;
  if (!*(a1 + 40))
  {
    v4 = 0;
    v10 = *(a1 + 24);
    v15 = v10;
    v16 = *(a1 + 8);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v5 = *v3++;
  v4 = v5;
  v6 = *(a1 + 24);
  v15 = v6;
  v16 = *(a1 + 8);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = *v3;
LABEL_6:
  Context = mlir::Attribute::getContext(&v17);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v18[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id;
  v18[1] = Context;
  v25[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail21TargetSpecAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_14TargetSpecAttrEJNS_9StringRefESF_NS1_14DictionaryAttrESG_SF_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v25[1] = v18;
  v20 = v16;
  v21 = v15;
  v22 = v4;
  v23 = v9;
  v24[0] = v7;
  v24[1] = v8;
  memset(v27, 0, sizeof(v27));
  v28 = 0xFF51AFD7ED558CCDLL;
  v26 = llvm::hash_value(v16, *(&v16 + 1));
  v13 = sub_1001D1A0C(&v26, 0, v27, &v27[3] + 8, &v21, &v22, &v23, v24);
  v19 = &v20;
  v26 = &v20;
  *&v27[0] = v25;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id, v13, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr,mlir::DictionaryAttr,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr,mlir::DictionaryAttr,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v19, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr,mlir::DictionaryAttr,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr,mlir::DictionaryAttr,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v26);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML15ApproximateAttrES2_NSE_6detail22ApproximateAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail22ApproximateAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_15ApproximateAttrEJNS4_11ApproximateEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage,mlir::ODIE::Compiler::CoreML::Approximate>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Approximate &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage,mlir::ODIE::Compiler::CoreML::Approximate>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Approximate &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML15PaddingModeAttrES2_NSE_6detail22PaddingModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail22PaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_15PaddingModeAttrEJNS4_11PaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage,mlir::ODIE::Compiler::CoreML::PaddingMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::PaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage,mlir::ODIE::Compiler::CoreML::PaddingMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::PaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML21InterpolationModeAttrES2_NSE_6detail28InterpolationModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail28InterpolationModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_21InterpolationModeAttrEJNS4_17InterpolationModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage,mlir::ODIE::Compiler::CoreML::InterpolationMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::InterpolationMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage,mlir::ODIE::Compiler::CoreML::InterpolationMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::InterpolationMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML16SamplingModeAttrES2_NSE_6detail23SamplingModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SamplingModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail23SamplingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_16SamplingModeAttrEJNS4_12SamplingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SamplingModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SamplingModeAttrStorage,mlir::ODIE::Compiler::CoreML::SamplingMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::SamplingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SamplingModeAttrStorage,mlir::ODIE::Compiler::CoreML::SamplingMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::SamplingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML15ScatterModeAttrES2_NSE_6detail22ScatterModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail22ScatterModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_15ScatterModeAttrEJNS4_11ScatterModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage,mlir::ODIE::Compiler::CoreML::ScatterMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::ScatterMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage,mlir::ODIE::Compiler::CoreML::ScatterMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::ScatterMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

void sub_1001CCEF0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::FileResourceAttr>::getType;
  {
    v10 = v4;
    sub_10028243C();
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

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::FileResourceAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v13;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML16FileResourceAttrES2_NSF_6detail23FileResourceAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v12;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML16FileResourceAttrES2_NSE_6detail23FileResourceAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FileResourceAttr,void>::id;
  *(a2 + 144) = "coreml.file_resource";
  *(a2 + 152) = 20;
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

BOOL mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::FileResourceAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  sub_100286168();
  return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML16FileResourceAttrES2_NSF_6detail23FileResourceAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML16FileResourceAttrES2_NSE_6detail23FileResourceAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8.i64[0] = a3;
  v8.i64[1] = a4;
  v7.i64[0] = a5;
  v7.i64[1] = a6;
  return sub_1001CD190(a2, &v8, &v7);
}

uint64_t sub_1001CD190(void *a1, int64x2_t *a2, int64x2_t *a3)
{
  v26 = a1;
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = *a2;
  v24 = *a3;
  v25 = v7;
  v8 = sub_1000E28E4(v3, v4, &v25, &v24);
  v10 = v9;
  if (v6)
  {
    v11 = v25.i64[0];
    v25 = vaddq_s64(v25, xmmword_10028FD30);
    v6 = *v11;
  }

  if (v5)
  {
    v12 = v25.i64[0];
    v25 = vaddq_s64(v25, xmmword_10028FD30);
    v13 = *v12;
  }

  else
  {
    v13 = 0;
  }

  Context = mlir::Attribute::getContext(&v26);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v27[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FileResourceAttr,void>::id;
  v27[1] = Context;
  v31[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail23FileResourceAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_16FileResourceAttrEJNS1_10ShapedTypeENS1_10StringAttrENS1_11IntegerAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v31[1] = v27;
  v30[0] = v8;
  v30[1] = v10;
  v30[2] = v6;
  v30[3] = v13;
  v16 = (v6 >> 4) ^ (v6 >> 9);
  v17 = 0xB492B66FBE98F273 * ((v8 >> 4) ^ (v8 >> 9));
  v18 = 0x9AE16A3B2F90404FLL * ((v13 >> 4) ^ (v13 >> 9));
  v19 = __ROR8__(v17 - v16, 43);
  v20 = __ROR8__(v18 ^ 0xFF51AFD7ED558CCDLL, 30);
  v21 = v17 + __ROR8__(v16 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v18 + 24;
  v22 = 0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * ((v19 - 0x3C5A37A36834CED9 * v16 + v20) ^ v21)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v19 - 0x3C5A37A36834CED9 * v16 + v20) ^ v21)));
  v28[0] = v30;
  v28[1] = v31;
  v29 = v30;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FileResourceAttr,void>::id, -348639895 * ((v22 >> 47) ^ v22), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage,mlir::ShapedType,mlir::StringAttr,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage *)>,mlir::TypeID,mlir::ShapedType,mlir::StringAttr,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v29, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage,mlir::ShapedType,mlir::StringAttr,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage *)>,mlir::TypeID,mlir::ShapedType,mlir::StringAttr,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v28);
}

uint64_t sub_1001CD388(uint64_t a1)
{
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::OpaqueType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10OpaqueTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10OpaqueTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OpaqueType,void>::id;
  v24 = "coreml.opaque";
  v25 = 13;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OpaqueType,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OpaqueType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler6CoreML10OpaqueTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OpaqueType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t sub_1001CD530(uint64_t a1)
{
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::TypeType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML8TypeTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML8TypeTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id;
  v24 = "coreml.type";
  v25 = 11;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler6CoreML8TypeTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t sub_1001CD6D8(uint64_t a1)
{
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::SymbolType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10SymbolTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10SymbolTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id;
  v24 = "coreml.symbol";
  v25 = 13;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler6CoreML10SymbolTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

void sub_1001CD880(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ArrayType,mlir::Type,mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML9ArrayTypeES2_NSF_6detail16ArrayTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v18 = &v10;
  v19 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML9ArrayTypeES2_NSE_6detail16ArrayTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArrayType,void>::id;
  v22 = "coreml.array";
  v23 = 12;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArrayType,void>::id, &v11);
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

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer);
}

void sub_1001CD9E4(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ParamRefType,mlir::Type,mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML12ParamRefTypeES2_NSF_6detail19ParamRefTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v18 = &v10;
  v19 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML12ParamRefTypeES2_NSE_6detail19ParamRefTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id;
  v22 = "coreml.param_ref";
  v23 = 16;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id, &v11);
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

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer);
}

void sub_1001CDB48(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::SymbolRefType,mlir::Type,mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13SymbolRefTypeES2_NSF_6detail20SymbolRefTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v18 = &v10;
  v19 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13SymbolRefTypeES2_NSE_6detail20SymbolRefTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id;
  v22 = "coreml.symbol_ref";
  v23 = 17;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id, &v11);
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

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer);
}

void sub_1001CDCAC(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::HandleType,mlir::Type,mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10HandleTypeES2_NSF_6detail17HandleTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v18 = &v10;
  v19 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10HandleTypeES2_NSE_6detail17HandleTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id;
  v22 = "coreml.handle";
  v23 = 13;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id, &v11);
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

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer);
}

uint64_t sub_1001CDE10(uint64_t a1)
{
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::TokenType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML9TokenTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML9TokenTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id;
  v24 = "coreml.token";
  v25 = 12;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler6CoreML9TokenTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

void sub_1001CDFB8(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::AsyncValueType,mlir::Type,mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML14AsyncValueTypeES2_NSF_6detail21AsyncValueTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v18 = &v10;
  v19 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML14AsyncValueTypeES2_NSE_6detail21AsyncValueTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id;
  v22 = "coreml.async.value";
  v23 = 18;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id, &v11);
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

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer);
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
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

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler6CoreML10OpaqueTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler6CoreML8TypeTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler6CoreML10SymbolTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML9ArrayTypeES2_NSF_6detail16ArrayTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v9, v6);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML9ArrayTypeES2_NSE_6detail16ArrayTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8.i64[0] = a3;
  v8.i64[1] = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return sub_1001CE314(a2, &v8, &v7);
}

uint64_t sub_1001CE314(void *a1, int64x2_t *a2, __int128 *a3)
{
  v20 = a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v18 = *a3;
  v19 = *a2;
  v7 = sub_1001CC1FC(v3, v4, &v19);
  v9 = v8;
  v10 = sub_1001CC1FC(v5, v6, &v19);
  v12 = v11;
  Context = mlir::Type::getContext(&v20);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v21[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArrayType,void>::id;
  v21[1] = &Context;
  v26[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail16ArrayTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_9ArrayTypeEJNS1_9TypedAttrESF_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v26[1] = v21;
  v25[0] = v7;
  v25[1] = v9;
  v25[2] = v10;
  v25[3] = v12;
  v14 = (v10 >> 4) ^ (v10 >> 9);
  v15 = __ROR8__(v14 + 16, 16);
  v16 = 0x9DDFEA08EB382D69 * (v15 ^ (v7 >> 4) ^ (v7 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v23[0] = v25;
  v23[1] = v26;
  v24 = v25;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArrayType,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) >> 32) >> 15) ^ (-348639895 * (v15 ^ (v16 >> 47) ^ v16)))) ^ v14, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::TypedAttr,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage *)>,mlir::TypeID,mlir::TypedAttr,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v24, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::TypedAttr,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage *)>,mlir::TypeID,mlir::TypedAttr,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v23);
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML12ParamRefTypeES2_NSF_6detail19ParamRefTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML12ParamRefTypeES2_NSE_6detail19ParamRefTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v11.i64[0] = a3;
  v11.i64[1] = a4;
  v6 = sub_1001CC1FC(v4, v5, &v11);
  v8 = v7;
  mlir::Type::getContext(&v12);
  v13 = v6;
  v14 = v8;
  Context = mlir::Attribute::getContext(&v13);
  return mlir::ODIE::Compiler::CoreML::ParamRefType::get(Context, v13, v14);
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13SymbolRefTypeES2_NSF_6detail20SymbolRefTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13SymbolRefTypeES2_NSE_6detail20SymbolRefTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v12.i64[0] = a3;
  v12.i64[1] = a4;
  v6 = sub_1001CC1FC(v4, v5, &v12);
  v8 = v7;
  Context = mlir::Type::getContext(&v13);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id;
  v14[1] = &Context;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20SymbolRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_13SymbolRefTypeEJNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v19[1] = v14;
  v18[0] = v6;
  v18[1] = v8;
  v10 = 0x9DDFEA08EB382D69 * ((8 * ((v6 >> 4) ^ (v6 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v17 = v18;
  v16[0] = v18;
  v16[1] = v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v10 ^ (v10 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10HandleTypeES2_NSF_6detail17HandleTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10HandleTypeES2_NSE_6detail17HandleTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return sub_1001CE6C4(a2, v8, v7);
}

uint64_t sub_1001CE6C4(uint64_t a1, uint64_t a2, uint64_t **a3)
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

  Context = mlir::Type::getContext(&v7);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id;
  v8[1] = &Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17HandleTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_10HandleTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v13[1] = v8;
  v12 = v3;
  v5 = 0x9DDFEA08EB382D69 * ((8 * ((v3 >> 4) ^ (v3 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v5 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler6CoreML9TokenTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML14AsyncValueTypeES2_NSF_6detail21AsyncValueTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML14AsyncValueTypeES2_NSE_6detail21AsyncValueTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return sub_1001CE884(a2, v8, v7);
}

uint64_t sub_1001CE884(uint64_t a1, uint64_t a2, uint64_t **a3)
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

  Context = mlir::Type::getContext(&v7);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id;
  v8[1] = &Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail21AsyncValueTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_14AsyncValueTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v13[1] = v8;
  v12 = v3;
  v5 = 0x9DDFEA08EB382D69 * ((8 * ((v3 >> 4) ^ (v3 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v5 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

void *sub_1001CE990(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 136);
  if (a2 && v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v4 = *(**(a2 + 8) + 136);
    v5 = *a1;
    if (v4 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      v7 = *(v5 + 48);
      v8 = *(a2 + 8);

      return v7();
    }

    else
    {
      (*(v5 + 40))();
      v13 = (*(*a1 + 16))(a1);
      v14 = v13[4];
      if ((v13[3] - v14) > 2)
      {
        *(v14 + 2) = 32;
        *v14 = 14880;
        v13[4] += 3;
      }

      else
      {
        llvm::raw_ostream::write(v13, " : ", 3uLL);
      }

      v15 = *(a2 + 16);
      v16 = *(*a1 + 32);

      return v16(a1, v15);
    }
  }

  else if (a2 && v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {

    return mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(a1, a2);
  }

  else
  {
    v10 = *(*a1 + 40);

    return v10();
  }
}

uint64_t sub_1001CEB60(uint64_t a1, uint64_t a2)
{
  v57 = 0;
  v4 = (*(*a1 + 552))(a1, &v57);
  if ((v4 & 0x100) != 0)
  {
    if ((v4 & 1) == 0)
    {
      return 0;
    }

    ParametricStorageTypeImpl = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v57);
    if (!ParametricStorageTypeImpl)
    {
      goto LABEL_44;
    }

    v11 = *ParametricStorageTypeImpl;
    {
      v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      if (!v14)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v48 = ParametricStorageTypeImpl;
      sub_10028243C();
      ParametricStorageTypeImpl = v48;
      v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      if (!v14)
      {
        goto LABEL_44;
      }
    }

    v15 = v13;
    v16 = v14;
    do
    {
      v17 = v16 >> 1;
      v18 = &v15[2 * (v16 >> 1)];
      v20 = *v18;
      v19 = v18 + 2;
      v16 += ~(v16 >> 1);
      if (v20 < v12)
      {
        v15 = v19;
      }

      else
      {
        v16 = v17;
      }
    }

    while (v16);
  }

  else
  {
    v56 = 0;
    if ((mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(a1, &v56) & 1) == 0)
    {
      return 0;
    }

    v5 = v56;
    v6 = sub_100062D0C(v56);
    if (v6)
    {
      v8 = *(a2 + 8);
      if (v8 >= *(a2 + 12))
      {
        v46 = v7;
        v47 = v6;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v8 + 1, 16);
        v7 = v46;
        v6 = v47;
        LODWORD(v8) = *(a2 + 8);
      }

      v9 = (*a2 + 16 * v8);
      *v9 = v6;
      v9[1] = v7;
      goto LABEL_46;
    }

    if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      if ((*(*a1 + 112))(a1))
      {
        v55 = 0;
        if ((*(*a1 + 536))(a1, &v55))
        {
          v21 = v55;
          v58 = v5;
          Context = mlir::Attribute::getContext(&v58);
          AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
          v59 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
          v60 = Context;
          v66 = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_9AttributeERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
          v67 = &v59;
          v64 = v58;
          v65 = v21;
          v24 = (v21 >> 4) ^ (v21 >> 9);
          v25 = __ROR8__(v24 + 16, 16);
          v26 = 0x9DDFEA08EB382D69 * (v25 ^ (v58 >> 4) ^ (v58 >> 9) ^ 0xFF51AFD7ED558CCDLL);
          v61 = &v64;
          v62 = &v66;
          v63 = &v64;
          ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v25 ^ (v26 >> 47) ^ v26)) >> 32) >> 15) ^ (-348639895 * (v25 ^ (v26 >> 47) ^ v26)))) ^ v24, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v63, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v61);
          if (!ParametricStorageTypeImpl)
          {
            goto LABEL_44;
          }

          v27 = *ParametricStorageTypeImpl;
          {
            v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
            v13 = *(v27 + 8);
            v14 = *(v27 + 16);
            if (v14)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v54 = ParametricStorageTypeImpl;
            sub_10028243C();
            ParametricStorageTypeImpl = v54;
            v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
            v13 = *(v27 + 8);
            v14 = *(v27 + 16);
            if (v14)
            {
LABEL_24:
              v15 = v13;
              v28 = v14;
              do
              {
                v29 = v28 >> 1;
                v30 = &v15[2 * (v28 >> 1)];
                v32 = *v30;
                v31 = v30 + 2;
                v28 += ~(v28 >> 1);
                if (v32 < v12)
                {
                  v15 = v31;
                }

                else
                {
                  v28 = v29;
                }
              }

              while (v28);
              goto LABEL_16;
            }
          }

LABEL_52:
          v14 = 0;
          v15 = v13;
          goto LABEL_16;
        }
      }

      return 0;
    }

    v55 = 0;
    if (((*(*a1 + 576))(a1, &v55) & 1) == 0)
    {
      return 0;
    }

    v33 = v55;
    v58 = v5;
    v34 = mlir::Attribute::getContext(&v58);
    v35 = mlir::MLIRContext::getAttributeUniquer(v34);
    v59 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
    v60 = v34;
    v66 = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_9AttributeERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
    v67 = &v59;
    v64 = v58;
    v65 = v33;
    v36 = (v33 >> 4) ^ (v33 >> 9);
    v37 = __ROR8__(v36 + 16, 16);
    v38 = 0x9DDFEA08EB382D69 * (v37 ^ (v58 >> 4) ^ (v58 >> 9) ^ 0xFF51AFD7ED558CCDLL);
    v61 = &v64;
    v62 = &v66;
    v63 = &v64;
    ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(v35, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v37 ^ (v38 >> 47) ^ v38)) >> 32) >> 15) ^ (-348639895 * (v37 ^ (v38 >> 47) ^ v38)))) ^ v36, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v63, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v61);
    if (!ParametricStorageTypeImpl)
    {
      goto LABEL_44;
    }

    v39 = *ParametricStorageTypeImpl;
    {
      v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v13 = *(v39 + 8);
      v14 = *(v39 + 16);
      if (!v14)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v53 = ParametricStorageTypeImpl;
      sub_10028243C();
      ParametricStorageTypeImpl = v53;
      v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v13 = *(v39 + 8);
      v14 = *(v39 + 16);
      if (!v14)
      {
        goto LABEL_52;
      }
    }

    v15 = v13;
    v40 = v14;
    do
    {
      v41 = v40 >> 1;
      v42 = &v15[2 * (v40 >> 1)];
      v44 = *v42;
      v43 = v42 + 2;
      v40 += ~(v40 >> 1);
      if (v44 < v12)
      {
        v15 = v43;
      }

      else
      {
        v40 = v41;
      }
    }

    while (v40);
  }

LABEL_16:
  if (v15 != &v13[2 * v14] && *v15 == v12)
  {
    v49 = v15[1];
    v50 = *(a2 + 8);
    if (v50 < *(a2 + 12))
    {
      goto LABEL_45;
    }

LABEL_48:
    v52 = ParametricStorageTypeImpl;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v50 + 1, 16);
    ParametricStorageTypeImpl = v52;
    LODWORD(v50) = *(a2 + 8);
    goto LABEL_45;
  }

LABEL_44:
  v49 = 0;
  v50 = *(a2 + 8);
  if (v50 >= *(a2 + 12))
  {
    goto LABEL_48;
  }

LABEL_45:
  v51 = (*a2 + 16 * v50);
  *v51 = ParametricStorageTypeImpl;
  v51[1] = v49;
LABEL_46:
  ++*(a2 + 8);
  return 1;
}

unint64_t sub_1001CF118(_DWORD *a1, _DWORD *a2)
{
  if (a1 == a2)
  {
    v67 = 0;
  }

  else
  {
    v2 = (*a1 >> 4) ^ (*a1 >> 9);
    *&v74 = v2;
    if (a1 + 4 == a2)
    {
      v67 = 8;
    }

    else
    {
      v3 = (a1[4] >> 4) ^ (a1[4] >> 9);
      *(&v74 + 1) = v3;
      if (a1 + 8 == a2)
      {
        v67 = 16;
      }

      else
      {
        v4 = (a1[8] >> 4) ^ (a1[8] >> 9);
        *&v75 = v4;
        if (a1 + 12 == a2)
        {
          v67 = 24;
        }

        else
        {
          v5 = (a1[12] >> 4) ^ (a1[12] >> 9);
          *(&v75 + 1) = v5;
          if (a1 + 16 == a2)
          {
            v67 = 32;
          }

          else
          {
            v6 = (a1[16] >> 4) ^ (a1[16] >> 9);
            *&v76 = v6;
            if (a1 + 20 == a2)
            {
              v67 = 40;
            }

            else
            {
              v7 = (a1[20] >> 4) ^ (a1[20] >> 9);
              *(&v76 + 1) = v7;
              if (a1 + 24 == a2)
              {
                v67 = 48;
              }

              else
              {
                v8 = (a1[24] >> 4) ^ (a1[24] >> 9);
                *&v77 = v8;
                if (a1 + 28 == a2)
                {
                  v67 = 56;
                }

                else
                {
                  v9 = (a1[28] >> 4) ^ (a1[28] >> 9);
                  *(&v77 + 1) = v9;
                  v10 = a1 + 32;
                  if (a1 + 32 != a2)
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
                      v32 = v10 + 4;
                      *&v74 = (*v10 >> 4) ^ (*v10 >> 9);
                      v33 = v10 + 4 == a2;
                      if (v10 + 4 == a2)
                      {
                        v35 = 0;
                        v36 = &v74 + 8;
                        v37 = 8;
                      }

                      else
                      {
                        *(&v74 + 1) = (v10[4] >> 4) ^ (v10[4] >> 9);
                        v32 = v10 + 8;
                        v33 = v10 + 8 == a2;
                        if (v10 + 8 == a2)
                        {
                          v35 = 8;
                          v36 = &v75;
                          v37 = 16;
                        }

                        else
                        {
                          *&v75 = (v10[8] >> 4) ^ (v10[8] >> 9);
                          v32 = v10 + 12;
                          v33 = v10 + 12 == a2;
                          if (v10 + 12 == a2)
                          {
                            v35 = 16;
                            v36 = v73;
                            v37 = 24;
                          }

                          else
                          {
                            *(&v75 + 1) = (v10[12] >> 4) ^ (v10[12] >> 9);
                            v32 = v10 + 16;
                            v33 = v10 + 16 == a2;
                            if (v10 + 16 == a2)
                            {
                              v35 = 24;
                              v36 = &v76;
                              v37 = 32;
                            }

                            else
                            {
                              *&v76 = (v10[16] >> 4) ^ (v10[16] >> 9);
                              v32 = v10 + 20;
                              v33 = v10 + 20 == a2;
                              if (v10 + 20 == a2)
                              {
                                v35 = 32;
                                v36 = &v76 + 8;
                                v37 = 40;
                              }

                              else
                              {
                                *(&v76 + 1) = (v10[20] >> 4) ^ (v10[20] >> 9);
                                v32 = v10 + 24;
                                v33 = v10 + 24 == a2;
                                if (v10 + 24 == a2)
                                {
                                  v35 = 40;
                                  v36 = &v77;
                                  v37 = 48;
                                }

                                else
                                {
                                  *&v77 = (v10[24] >> 4) ^ (v10[24] >> 9);
                                  v32 = v10 + 28;
                                  v33 = v10 + 28 == a2;
                                  if (v10 + 28 != a2)
                                  {
                                    v34 = (v10[28] >> 4) ^ (v10[28] >> 9);
                                    v10 += 32;
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

  return sub_10002C4F4(&v74, v67, 0xFF51AFD7ED558CCDLL);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::Attribute,mlir::Type,llvm::ArrayRef<mlir::TypedAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::Type,llvm::ArrayRef<mlir::TypedAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  if (a2[2] != v2[1])
  {
    return 0;
  }

  v3 = a2[4];
  if (v3 != v2[3])
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = a2[3];
  v5 = v2[2];
  v6 = 16 * v3 - 16;
  do
  {
    v8 = *v5;
    v5 += 2;
    v7 = v8;
    v9 = *v4;
    v4 += 2;
    result = v9 == v7;
    v11 = v9 != v7 || v6 == 0;
    v6 -= 16;
  }

  while (!v11);
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::Attribute,mlir::Type,llvm::ArrayRef<mlir::TypedAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::Type,llvm::ArrayRef<mlir::TypedAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = sub_1001CF924(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t sub_1001CF924(unint64_t *a1, __int128 *a2)
{
  v2 = *a2;
  v3 = *(a2 + 3);
  if (v3)
  {
    v4 = *(a2 + 2);
    v5 = 16 * v3;
    a1[10] += 16 * v3;
    v6 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
    v7 = v6 + 16 * v3;
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
      v16 = a1;
      v19 = v2;
      v17 = sub_10003A984(a1, 16 * v3, 16 * v3, 3);
      v2 = v19;
      v6 = v17;
      a1 = v16;
    }

    else
    {
      *a1 = v7;
    }

    v9 = v6;
    do
    {
      v10 = *v4++;
      *v9++ = v10;
      v5 -= 16;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  a1[10] += 40;
  v11 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = v11 + 40;
  if (*a1)
  {
    v13 = v12 > a1[1];
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v18 = v2;
    v15 = sub_10003A984(a1, 40, 40, 3);
    v2 = v18;
    v11 = v15;
  }

  else
  {
    *a1 = v12;
  }

  *v11 = 0;
  *(v11 + 8) = v2;
  *(v11 + 24) = v6;
  *(v11 + 32) = v3;
  return v11;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  if (a2[2] != v2[1])
  {
    return 0;
  }

  v3 = a2[4];
  if (v3 != v2[3])
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = a2[3];
  v5 = v2[2];
  v6 = 16 * v3 - 16;
  do
  {
    v8 = *v5;
    v5 += 2;
    v7 = v8;
    v9 = *v4;
    v4 += 2;
    result = v9 == v7;
    v11 = v9 != v7 || v6 == 0;
    v6 -= 16;
  }

  while (!v11);
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = sub_1001CF924(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t sub_1001CFB20(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1[1];
  v5 = 257;
  return (*(*v1 + 24))(v1, v2, v4);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 24;
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
    v10 = v2;
    v3 = sub_10003A984(a2, 24, 24, 3);
    *v3 = 0;
    *(v3 + 8) = v10;
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
  *(v3 + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail19ParamRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_12ParamRefTypeEJRNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1001CFC7C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1[1];
  v5 = 257;
  return (*(*v1 + 24))(v1, v2, v4);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,llvm::ArrayRef<mlir::StringAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
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
    v7 = *v3++;
    v6 = v7;
    v8 = *v4++;
    result = v6 == v8;
    v10 = v6 != v8 || v5 == 0;
    v5 -= 8;
  }

  while (!v10);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,llvm::ArrayRef<mlir::StringAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = sub_1001CFD7C(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *sub_1001CFD7C(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = *a2;
    v4 = 8 * v2;
    a1[10] += 8 * v2;
    v5 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = v5 + 8 * v2;
    if (*a1)
    {
      v7 = v6 > a1[1];
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v17 = a1;
      v5 = sub_10003A984(a1, 8 * v2, 8 * v2, 3);
      a1 = v17;
      v8 = v4 - 8;
      if ((v4 - 8) >= 0x18)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *a1 = v6;
      v8 = v4 - 8;
      if ((v4 - 8) >= 0x18)
      {
LABEL_7:
        v9 = v5;
        v10 = v3;
        if (v5 - v3 >= 0x20)
        {
          v11 = (v8 >> 3) + 1;
          v12 = 8 * (v11 & 0x3FFFFFFFFFFFFFFCLL);
          v9 = (v5 + v12);
          v10 = (v3 + v12);
          v13 = (v3 + 16);
          v14 = (v5 + 16);
          v15 = v11 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v16 = *v13;
            *(v14 - 1) = *(v13 - 1);
            *v14 = v16;
            v13 += 2;
            v14 += 2;
            v15 -= 4;
          }

          while (v15);
          if (v11 == (v11 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_16;
          }
        }

        goto LABEL_15;
      }
    }

    v9 = v5;
    v10 = v3;
    do
    {
LABEL_15:
      v18 = *v10++;
      *v9++ = v18;
    }

    while (v10 != (v3 + 8 * v2));
    goto LABEL_16;
  }

  v5 = 0;
LABEL_16:
  a1[10] += 24;
  v19 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = v19 + 3;
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
    v19 = sub_10003A984(a1, 24, 24, 3);
  }

  else
  {
    *a1 = v20;
  }

  *v19 = 0;
  v19[1] = v5;
  v19[2] = v2;
  return v19;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,llvm::ArrayRef<mlir::StringAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
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
    v7 = *v3++;
    v6 = v7;
    v8 = *v4++;
    result = v6 == v8;
    v10 = v6 != v8 || v5 == 0;
    v5 -= 8;
  }

  while (!v10);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,llvm::ArrayRef<mlir::StringAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = sub_1001CFD7C(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::StringAttr,6u>,llvm::SmallVector<mlir::StringAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = *a1;
  Context = mlir::AsmParser::getContext(*a1);
  mlir::MLIRContext::getOrLoadDialect(Context, "builtin", 7);
  v8 = 0;
  if (!sub_1001D02C8(v2, &v8, 0))
  {
    return 0;
  }

  v4 = v8;
  v5 = *(a1 + 8);
  v6 = *(v5 + 8);
  if (v6 >= *(v5 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (v5 + 16), v6 + 1, 8);
    LODWORD(v6) = *(v5 + 8);
  }

  *(*v5 + 8 * v6) = v4;
  ++*(v5 + 8);
  return 1;
}

unint64_t sub_1001D0068(char *a1, uint64_t a2, void *a3, char *a4, _DWORD *a5, uint64_t a6)
{
  v14 = a2;
  v9 = sub_10002CAB8(a1, &v14, a3, a4, (*a5 >> 4) ^ (*a5 >> 9));
  v15 = v14;
  if (*(a6 + 8) == 1)
  {
    LOBYTE(v16[0]) = 1;
    *(v16 + 1) = (*a6 >> 4) ^ (*a6 >> 9);
    v10 = __ROR8__(*(v16 + 1) + 9, 9);
    v11 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v16[0] ^ 0xFF51AFD7ED558CCDLL ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v16[0] ^ 0xFF51AFD7ED558CCDLL ^ v10)))) ^ ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v16[0] ^ 0xFF51AFD7ED558CCDLL ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v16[0] ^ 0xFF51AFD7ED558CCDLL ^ v10)))) >> 47))) ^ *(v16 + 1);
  }

  else
  {
    v11 = 0xB2B24F688DC4164DLL;
  }

  v12 = sub_10002CAB8(a1, &v15, v9, a4, v11);
  return sub_10002C12C(a1, v15, v12, a4);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::Attribute>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  if (*(a2 + 16) != v2[1])
  {
    return 0;
  }

  v4 = *(v2 + 24);
  v5 = *(a2 + 32);
  result = v5 == v4;
  if (v5 == v4 && v5 != 0)
  {
    return *(a2 + 24) == v2[2];
  }

  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::Attribute>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
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
    v4 = sub_10003A984(a2, 40, 40, 3);
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

BOOL sub_1001D02C8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1);
  v19 = 0;
  if (((*(*a1 + 440))(a1, &v19, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = v19;
  if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v17 = "invalid kind of attribute specified";
  v18 = 259;
  (*(*a1 + 24))(v20, a1, v6, &v17);
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
          v11 = sub_100052FFC(v11 - 1);
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
          v16 = *--v14;
          *v14 = 0;
          if (v16)
          {
            operator delete[]();
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

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(const void ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (v2)
  {
    return memcmp(*(a2 + 8), **a1, v2) == 0;
  }

  return 1;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v2 = (*a1)[1];
  if (!v2)
  {
    v4 = 0;
    goto LABEL_24;
  }

  v3 = **a1;
  a2[10] += v2 + 1;
  v4 = *a2;
  v5 = v2 + 1 + *a2;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    *a2 = v5;
    if (v2 >= 8)
    {
      goto LABEL_7;
    }

LABEL_21:
    v7 = v4;
    v8 = v3;
    goto LABEL_22;
  }

  v18 = a1;
  v19 = a2;
  v20 = sub_10003A984(a2, v2 + 1, v2 + 1, 0);
  a2 = v19;
  v4 = v20;
  a1 = v18;
  if (v2 < 8)
  {
    goto LABEL_21;
  }

LABEL_7:
  v7 = v4;
  v8 = v3;
  if ((v4 - v3) >= 0x20)
  {
    if (v2 < 0x20)
    {
      v9 = 0;
      goto LABEL_15;
    }

    v9 = v2 & 0xFFFFFFFFFFFFFFE0;
    v10 = (v3 + 16);
    v11 = (v4 + 16);
    v12 = v2 & 0xFFFFFFFFFFFFFFE0;
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
    if (v2 == v9)
    {
      goto LABEL_23;
    }

    if ((v2 & 0x18) != 0)
    {
LABEL_15:
      v7 = (v4 + (v2 & 0xFFFFFFFFFFFFFFF8));
      v8 = (v3 + (v2 & 0xFFFFFFFFFFFFFFF8));
      v14 = (v3 + v9);
      v15 = (v4 + v9);
      v16 = v9 - (v2 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v17 = *v14++;
        *v15++ = v17;
        v16 += 8;
      }

      while (v16);
      if (v2 == (v2 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v8 = (v3 + v9);
    v7 = (v4 + v9);
  }

  do
  {
LABEL_22:
    v21 = *v8++;
    *v7++ = v21;
  }

  while (v8 != (v3 + v2));
LABEL_23:
  *(v4 + v2) = 0;
LABEL_24:
  a2[10] += 24;
  v22 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = v22 + 3;
  if (*a2)
  {
    v24 = v23 > a2[1];
  }

  else
  {
    v24 = 1;
  }

  if (v24)
  {
    v28 = a1;
    v22 = sub_10003A984(a2, 24, 24, 3);
    *v22 = 0;
    v22[1] = v4;
    v22[2] = v2;
    v25 = v28[1];
    v26 = *v25;
    if (!*v25)
    {
      return v22;
    }

    goto LABEL_29;
  }

  *a2 = v23;
  *v22 = 0;
  v22[1] = v4;
  v22[2] = v2;
  v25 = a1[1];
  v26 = *v25;
  if (*v25)
  {
LABEL_29:
    v26(v25[1], v22);
  }

  return v22;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,llvm::ArrayRef<int>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = sub_1001D0804(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *sub_1001D0804(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a1;
  if (!v2)
  {
    v6 = 0;
    goto LABEL_17;
  }

  v4 = *a2;
  v5 = 4 * v2;
  a1[10] += 4 * v2;
  v6 = (v3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v7 = v6 + 4 * v2;
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
    v6 = sub_10003A984(a1, 4 * v2, 4 * v2, 2);
    a1 = v18;
    v9 = v5 - 4;
    if ((v5 - 4) >= 0x1C)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *a1 = v7;
    v9 = v5 - 4;
    if ((v5 - 4) >= 0x1C)
    {
LABEL_7:
      v10 = v6;
      v11 = v4;
      if (v6 - v4 >= 0x20)
      {
        v12 = (v9 >> 2) + 1;
        v13 = 4 * (v12 & 0x7FFFFFFFFFFFFFF8);
        v10 = (v6 + v13);
        v11 = (v4 + v13);
        v14 = (v4 + 16);
        v15 = (v6 + 16);
        v16 = v12 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v17 = *v14;
          *(v15 - 1) = *(v14 - 1);
          *v15 = v17;
          v14 += 2;
          v15 += 2;
          v16 -= 8;
        }

        while (v16);
        if (v12 == (v12 & 0x7FFFFFFFFFFFFFF8))
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

  while (v11 != (v4 + 4 * v2));
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
    v20 = sub_10003A984(a1, 24, 24, 3);
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

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<int,12u>,llvm::SmallVector<int,12u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = *a1;
  v8 = 0;
  v3 = sub_100101884(v2, &v8);
  result = 0;
  if (v3)
  {
    v5 = v8;
    v6 = a1[1];
    v7 = *(v6 + 8);
    if (v7 >= *(v6 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (v6 + 16), v7 + 1, 4);
      LODWORD(v7) = *(v6 + 8);
    }

    *(*v6 + 4 * v7) = v5;
    ++*(v6 + 8);
    return 1;
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr,mlir::Type,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  if (a2[2] == v2[1])
  {
    return a2[3] == v2[2];
  }

  return 0;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr,mlir::Type,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = *(*a1 + 2);
  a2[10] += 32;
  v4 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v4 + 32;
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
    v11 = v2;
    v4 = sub_10003A984(a2, 32, 32, 3);
    *v4 = 0;
    *(v4 + 8) = v11;
    *(v4 + 24) = v3;
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

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type &,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type &,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  if (a2[2] == v2[1])
  {
    return a2[3] == v2[2];
  }

  return 0;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type &,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type &,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = *(*a1 + 2);
  a2[10] += 32;
  v4 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v4 + 32;
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
    v11 = v2;
    v4 = sub_10003A984(a2, 32, 32, 3);
    *v4 = 0;
    *(v4 + 8) = v11;
    *(v4 + 24) = v3;
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

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  if (a2[2] == v2[1])
  {
    return a2[3] == v2[2];
  }

  return 0;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = *(*a1 + 2);
  a2[10] += 32;
  v4 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v4 + 32;
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
    v11 = v2;
    v4 = sub_10003A984(a2, 32, 32, 3);
    *v4 = 0;
    *(v4 + 8) = v11;
    *(v4 + 24) = v3;
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

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = sub_1001CFD7C(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,6u>,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = *a1;
  Context = mlir::AsmParser::getContext(*a1);
  mlir::MLIRContext::getOrLoadDialect(Context, "coreml", 6);
  v8 = 0;
  if (!sub_1001D0EF0(v2, &v8, 0))
  {
    return 0;
  }

  v4 = v8;
  v5 = *(a1 + 8);
  v6 = *(v5 + 8);
  if (v6 >= *(v5 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (v5 + 16), v6 + 1, 8);
    LODWORD(v6) = *(v5 + 8);
  }

  *(*v5 + 8 * v6) = v4;
  ++*(v5 + 8);
  return 1;
}

BOOL sub_1001D0EF0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1);
  v19 = 0;
  v20[0] = a1;
  if (((*(*a1 + 448))(a1, &v19, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML13ParamDeclAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_, v20) & 1) == 0)
  {
    return 0;
  }

  v7 = v19;
  if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v17 = "invalid kind of attribute specified";
  v18 = 259;
  (*(*a1 + 24))(v20, a1, v6, &v17);
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
          v11 = sub_100052FFC(v11 - 1);
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
          v16 = *--v14;
          *v14 = 0;
          if (v16)
          {
            operator delete[]();
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

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML13ParamDeclAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_(uint64_t *a1, uint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t sub_1001D1198(uint64_t result, uint64_t *a2, mlir::AsmPrinter *a3, void *a4, uint64_t a5)
{
  if (result != a2)
  {
    v23[9] = v5;
    v23[10] = v6;
    v11 = result;
    v12 = *result;
    v23[0] = v12;
    result = (*(*a3 + 56))(a3, v12);
    if ((result & 1) == 0)
    {
      v13 = (*(*a3 + 16))(a3);
      v14 = (*(*v13 + 80))(v13) + v13[4] - v13[2];
      mlir::ODIE::Compiler::CoreML::ParamDeclAttr::print(v23, a3);
      result = (*(*v13 + 80))(v13);
      if (v14 == result + v13[4] - v13[2])
      {
        result = (*(*a3 + 40))(a3, v12);
      }
    }

    for (i = (v11 + 8); i != a2; ++i)
    {
      v16 = *a5;
      v17 = *(a5 + 8);
      v18 = a4[4];
      if (v17 <= a4[3] - v18)
      {
        if (v17)
        {
          v19 = *(a5 + 8);
          memcpy(v18, v16, v17);
          a4[4] += v19;
        }
      }

      else
      {
        llvm::raw_ostream::write(a4, v16, v17);
      }

      v20 = *i;
      v23[0] = v20;
      result = (*(*a3 + 56))(a3, v20);
      if ((result & 1) == 0)
      {
        v21 = (*(*a3 + 16))(a3);
        v22 = (*(*v21 + 80))(v21) + v21[4] - v21[2];
        mlir::ODIE::Compiler::CoreML::ParamDeclAttr::print(v23, a3);
        result = (*(*v21 + 80))(v21);
        if (v22 == result + v21[4] - v21[2])
        {
          result = (*(*a3 + 40))(a3, v20);
        }
      }
    }
  }

  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::StringAttr,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 24;
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
    v10 = v2;
    v3 = sub_10003A984(a2, 24, 24, 3);
    *v3 = 0;
    *(v3 + 8) = v10;
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
  *(v3 + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), v3);
  }

  return v3;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 24;
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
    v10 = v2;
    v3 = sub_10003A984(a2, 24, 24, 3);
    *v3 = 0;
    *(v3 + 8) = v10;
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
  *(v3 + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), v3);
  }

  return v3;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 24;
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
    v10 = v2;
    v3 = sub_10003A984(a2, 24, 24, 3);
    *v3 = 0;
    *(v3 + 8) = v10;
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
  *(v3 + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), v3);
  }

  return v3;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypedAttr &,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypedAttr &,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 24;
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
    v10 = v2;
    v3 = sub_10003A984(a2, 24, 24, 3);
    *v3 = 0;
    *(v3 + 8) = v10;
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
  *(v3 + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), v3);
  }

  return v3;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 24;
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
    v10 = v2;
    v3 = sub_10003A984(a2, 24, 24, 3);
    *v3 = 0;
    *(v3 + 8) = v10;
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
  *(v3 + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), v3);
  }

  return v3;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage,mlir::ODIE::Compiler::CoreML::Intent>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Intent &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
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
    v3 = sub_10003A984(a2, 16, 16, 3);
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

unint64_t sub_1001D1A0C(char *a1, uint64_t a2, void *a3, char *a4, uint64_t a5, _DWORD *a6, _DWORD *a7, uint64_t a8)
{
  v21 = a2;
  v14 = llvm::hash_value(*a5, *(a5 + 8));
  v15 = sub_10002CAB8(a1, &v21, a3, a4, v14);
  v22 = v21;
  v16 = sub_10002CAB8(a1, &v22, v15, a4, (*a6 >> 4) ^ (*a6 >> 9));
  v23 = v22;
  v17 = sub_10002CAB8(a1, &v23, v16, a4, (*a7 >> 4) ^ (*a7 >> 9));
  v24 = v23;
  v18 = llvm::hash_value(*a8, *(a8 + 8));
  v19 = sub_10002CAB8(a1, &v24, v17, a4, v18);
  return sub_10002C12C(a1, v24, v19, a4);
}

BOOL sub_1001D1B1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  if (v2 && memcmp(*(a1 + 8), *a2, v2))
  {
    return 0;
  }

  v5 = *(a1 + 32);
  if (v5 != *(a2 + 24) || v5 && memcmp(*(a1 + 24), *(a2 + 16), v5))
  {
    return 0;
  }

  if (*(a1 + 40) != *(a2 + 32))
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 40))
  {
    return 0;
  }

  v6 = *(a1 + 64);
  if (v6 != *(a2 + 56))
  {
    return 0;
  }

  if (v6)
  {
    return memcmp(*(a1 + 56), *(a2 + 48), v6) == 0;
  }

  return 1;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr,mlir::DictionaryAttr,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr,mlir::DictionaryAttr,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = sub_1001D1C54(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t sub_1001D1C54(unint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = a2[3];
  v5 = *(a2 + 2);
  v7 = a2[6];
  v6 = a2[7];
  if (v3)
  {
    v8 = *a2;
    v9 = v3 + 1;
    a1[10] += v3 + 1;
    v10 = *a1;
    if (*a1 && v9 + v10 <= a1[1])
    {
      *a1 = v9 + v10;
      if (v3 >= 8)
      {
LABEL_5:
        v11 = v10;
        v12 = v8;
        if ((v10 - v8) < 0x20)
        {
          goto LABEL_22;
        }

        if (v3 >= 0x20)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFFE0;
          v16 = (v8 + 16);
          v17 = (v10 + 16);
          v18 = v3 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v19 = *v16;
            *(v17 - 1) = *(v16 - 1);
            *v17 = v19;
            v16 += 2;
            v17 += 2;
            v18 -= 32;
          }

          while (v18);
          if (v3 == v13)
          {
LABEL_23:
            *(v10 + v3) = 0;
            if (v4)
            {
              goto LABEL_24;
            }

LABEL_9:
            v14 = 0;
            if (v6)
            {
              goto LABEL_43;
            }

LABEL_10:
            v15 = 0;
            goto LABEL_64;
          }

          if ((v3 & 0x18) == 0)
          {
            v12 = (v8 + v13);
            v11 = (v10 + v13);
            goto LABEL_22;
          }
        }

        else
        {
          v13 = 0;
        }

        v11 = (v10 + (v3 & 0xFFFFFFFFFFFFFFF8));
        v12 = (v8 + (v3 & 0xFFFFFFFFFFFFFFF8));
        v20 = (v8 + v13);
        v21 = (v10 + v13);
        v22 = v13 - (v3 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v23 = *v20++;
          *v21++ = v23;
          v22 += 8;
        }

        while (v22);
        if (v3 == (v3 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_23;
        }

        do
        {
LABEL_22:
          v26 = *v12++;
          *v11++ = v26;
        }

        while (v12 != (v8 + v3));
        goto LABEL_23;
      }
    }

    else
    {
      v24 = a1;
      v63 = v5;
      v25 = sub_10003A984(a1, v9, v3 + 1, 0);
      v5 = v63;
      v10 = v25;
      a1 = v24;
      if (v3 >= 8)
      {
        goto LABEL_5;
      }
    }

    v11 = v10;
    v12 = v8;
    goto LABEL_22;
  }

  v10 = 0;
  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_24:
  v27 = v4 + 1;
  a1[10] += v4 + 1;
  v14 = *a1;
  if (*a1 && v27 + v14 <= a1[1])
  {
    *a1 = v27 + v14;
    if (v4 >= 8)
    {
      goto LABEL_27;
    }

LABEL_40:
    v28 = v14;
    v29 = v2;
    goto LABEL_41;
  }

  v39 = a1;
  v64 = v5;
  v40 = sub_10003A984(a1, v27, v4 + 1, 0);
  v5 = v64;
  v14 = v40;
  a1 = v39;
  if (v4 < 8)
  {
    goto LABEL_40;
  }

LABEL_27:
  v28 = v14;
  v29 = v2;
  if ((v14 - v2) < 0x20)
  {
    goto LABEL_41;
  }

  if (v4 < 0x20)
  {
    v30 = 0;
LABEL_34:
    v28 = (v14 + (v4 & 0xFFFFFFFFFFFFFFF8));
    v29 = (v2 + (v4 & 0xFFFFFFFFFFFFFFF8));
    v35 = (v2 + v30);
    v36 = (v14 + v30);
    v37 = v30 - (v4 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v38 = *v35++;
      *v36++ = v38;
      v37 += 8;
    }

    while (v37);
    if (v4 == (v4 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_42;
    }

    do
    {
LABEL_41:
      v41 = *v29++;
      *v28++ = v41;
    }

    while (v29 != (v2 + v4));
    goto LABEL_42;
  }

  v30 = v4 & 0xFFFFFFFFFFFFFFE0;
  v31 = (v2 + 16);
  v32 = (v14 + 16);
  v33 = v4 & 0xFFFFFFFFFFFFFFE0;
  do
  {
    v34 = *v31;
    *(v32 - 1) = *(v31 - 1);
    *v32 = v34;
    v31 += 2;
    v32 += 2;
    v33 -= 32;
  }

  while (v33);
  if (v4 != v30)
  {
    if ((v4 & 0x18) == 0)
    {
      v29 = (v2 + v30);
      v28 = (v14 + v30);
      goto LABEL_41;
    }

    goto LABEL_34;
  }

LABEL_42:
  *(v14 + v4) = 0;
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_43:
  a1[10] += v6 + 1;
  v15 = *a1;
  v42 = v6 + 1 + *a1;
  if (*a1)
  {
    v43 = v42 > a1[1];
  }

  else
  {
    v43 = 1;
  }

  if (!v43)
  {
    *a1 = v42;
    if (v6 >= 8)
    {
      goto LABEL_48;
    }

LABEL_61:
    v44 = v15;
    v45 = v7;
    goto LABEL_62;
  }

  v55 = a1;
  v65 = v5;
  v56 = sub_10003A984(a1, v6 + 1, v6 + 1, 0);
  v5 = v65;
  v15 = v56;
  a1 = v55;
  if (v6 < 8)
  {
    goto LABEL_61;
  }

LABEL_48:
  v44 = v15;
  v45 = v7;
  if ((v15 - v7) >= 0x20)
  {
    if (v6 < 0x20)
    {
      v46 = 0;
      goto LABEL_55;
    }

    v46 = v6 & 0xFFFFFFFFFFFFFFE0;
    v47 = (v7 + 16);
    v48 = (v15 + 16);
    v49 = v6 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v50 = *v47;
      *(v48 - 1) = *(v47 - 1);
      *v48 = v50;
      v47 += 2;
      v48 += 2;
      v49 -= 32;
    }

    while (v49);
    if (v6 == v46)
    {
      goto LABEL_63;
    }

    if ((v6 & 0x18) != 0)
    {
LABEL_55:
      v44 = (v15 + (v6 & 0xFFFFFFFFFFFFFFF8));
      v45 = (v7 + (v6 & 0xFFFFFFFFFFFFFFF8));
      v51 = (v7 + v46);
      v52 = (v15 + v46);
      v53 = v46 - (v6 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v54 = *v51++;
        *v52++ = v54;
        v53 += 8;
      }

      while (v53);
      if (v6 == (v6 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v45 = (v7 + v46);
    v44 = (v15 + v46);
  }

  do
  {
LABEL_62:
    v57 = *v45++;
    *v44++ = v57;
  }

  while (v45 != (v7 + v6));
LABEL_63:
  *(v15 + v6) = 0;
LABEL_64:
  a1[10] += 72;
  v58 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = v58 + 72;
  if (*a1)
  {
    v60 = v59 > a1[1];
  }

  else
  {
    v60 = 1;
  }

  if (v60)
  {
    v66 = v5;
    v62 = sub_10003A984(a1, 72, 72, 3);
    v5 = v66;
    v58 = v62;
  }

  else
  {
    *a1 = v59;
  }

  *v58 = 0;
  *(v58 + 8) = v10;
  *(v58 + 16) = v3;
  *(v58 + 24) = v14;
  *(v58 + 32) = v4;
  *(v58 + 40) = v5;
  *(v58 + 56) = v15;
  *(v58 + 64) = v6;
  return v58;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage,mlir::ODIE::Compiler::CoreML::Approximate>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Approximate &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 16;
  v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 16;
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
    v3 = sub_10003A984(a2, 16, 16, 3);
    *v3 = 0;
    *(v3 + 8) = v2;
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
  *(v3 + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), v3);
  }

  return v3;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage,mlir::ODIE::Compiler::CoreML::PaddingMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::PaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 16;
  v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 16;
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
    v3 = sub_10003A984(a2, 16, 16, 3);
    *v3 = 0;
    *(v3 + 8) = v2;
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
  *(v3 + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), v3);
  }

  return v3;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage,mlir::ODIE::Compiler::CoreML::InterpolationMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::InterpolationMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 16;
  v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 16;
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
    v3 = sub_10003A984(a2, 16, 16, 3);
    *v3 = 0;
    *(v3 + 8) = v2;
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
  *(v3 + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), v3);
  }

  return v3;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SamplingModeAttrStorage,mlir::ODIE::Compiler::CoreML::SamplingMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::SamplingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 16;
  v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 16;
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
    v3 = sub_10003A984(a2, 16, 16, 3);
    *v3 = 0;
    *(v3 + 8) = v2;
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
  *(v3 + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), v3);
  }

  return v3;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage,mlir::ODIE::Compiler::CoreML::ScatterMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::ScatterMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 16;
  v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 16;
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
    v3 = sub_10003A984(a2, 16, 16, 3);
    *v3 = 0;
    *(v3 + 8) = v2;
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
  *(v3 + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), v3);
  }

  return v3;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage,mlir::ShapedType,mlir::StringAttr,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage *)>,mlir::TypeID,mlir::ShapedType,mlir::StringAttr,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage,mlir::ShapedType,mlir::StringAttr,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage *)>,mlir::TypeID,mlir::ShapedType,mlir::StringAttr,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
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
    v4 = sub_10003A984(a2, 40, 40, 3);
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

BOOL sub_1001D25D0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1);
  v19 = 0;
  if (((*(*a1 + 440))(a1, &v19, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = v19;
  if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v17 = "invalid kind of attribute specified";
  v18 = 259;
  (*(*a1 + 24))(v20, a1, v6, &v17);
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
          v11 = sub_100052FFC(v11 - 1);
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
          v16 = *--v14;
          *v14 = 0;
          if (v16)
          {
            operator delete[]();
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::TypedAttr,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage *)>,mlir::TypeID,mlir::TypedAttr,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
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
    v4 = sub_10003A984(a2, 40, 40, 3);
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

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail16ArrayTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_9ArrayTypeEJNS1_9TypedAttrESF_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::TypedAttr &,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
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
    v4 = sub_10003A984(a2, 40, 40, 3);
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

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail16ArrayTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_9ArrayTypeEJRNS1_9TypedAttrESG_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 24;
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
    v10 = v2;
    v3 = sub_10003A984(a2, 24, 24, 3);
    *v3 = 0;
    *(v3 + 8) = v10;
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
  *(v3 + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20SymbolRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_13SymbolRefTypeEJNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 24;
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
    v10 = v2;
    v3 = sub_10003A984(a2, 24, 24, 3);
    *v3 = 0;
    *(v3 + 8) = v10;
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
  *(v3 + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20SymbolRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_13SymbolRefTypeEJRNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
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
    v3 = sub_10003A984(a2, 16, 16, 3);
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

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17HandleTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_10HandleTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
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
    v3 = sub_10003A984(a2, 16, 16, 3);
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

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail21AsyncValueTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_14AsyncValueTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1001D2E68(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a3 = a4;
  *(a3 + 32) = 259;
  sub_100038624(a2, a3, a1);

  llvm::report_fatal_error(v4, 1);
}

uint64_t mlir::ODIE::Compiler::CoreML::getCoreMLTensorEncoding(uint64_t a1)
{
  v20 = a1;
  if (!a1)
  {
    return 0;
  }

  v1 = *(*a1 + 136);
  v2 = v1 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
  v3 = v1 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id ? a1 : 0;
  v19 = v3;
  if (!v2)
  {
    return 0;
  }

  result = mlir::RankedTensorType::getEncoding(&v19);
  if (!result || *(*result + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id)
  {
    mlir::RankedTensorType::getShape(&v19);
    v21 = v23;
    v22 = 0xC00000000;
    if (!v5)
    {
      goto LABEL_23;
    }

    v6 = v5;
    if (v5 < 0xD)
    {
      v7 = 0;
      v8 = v5;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v5, 4);
      v7 = v22;
      v8 = v6 - v22;
      if (v6 == v22)
      {
LABEL_16:
        LODWORD(v22) = v6;
        if (v6 >= 1)
        {
          v9 = v21;
          v10 = v6 & 0x7FFFFFFF;
          if (v10 > 7)
          {
            v11 = v10 - (v6 & 7);
            v12 = xmmword_10028FC70;
            v13 = (v21 + 16);
            v14.i64[0] = 0x400000004;
            v14.i64[1] = 0x400000004;
            v15.i64[0] = 0x800000008;
            v15.i64[1] = 0x800000008;
            v16 = v11;
            do
            {
              v13[-1] = v12;
              *v13 = vaddq_s32(v12, v14);
              v12 = vaddq_s32(v12, v15);
              v13 += 2;
              v16 -= 8;
            }

            while (v16);
            if ((v6 & 7) == 0)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v11 = 0;
          }

          do
          {
            v9[v11] = v11;
            ++v11;
          }

          while (v10 != v11);
        }

LABEL_23:
        Context = mlir::Type::getContext(&v20);
        result = mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::get(Context, v21, v22);
        if (v21 != v23)
        {
          v18 = result;
          free(v21);
          return v18;
        }

        return result;
      }
    }

    bzero(v21 + 4 * v7, 4 * v8);
    goto LABEL_16;
  }

  return result;
}

void *sub_1001D3060(void *result, unint64_t a2)
{
  *result = result + 2;
  result[1] = 0xC00000000;
  if (a2)
  {
    if (a2 < 0xD)
    {
      v4 = 0;
      v5 = a2;
    }

    else
    {
      v3 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 2, a2, 4);
      result = v3;
      v4 = *(v3 + 2);
      v5 = a2 - v4;
      if (a2 == v4)
      {
        goto LABEL_7;
      }
    }

    v6 = result;
    bzero((*result + 4 * v4), 4 * v5);
    result = v6;
LABEL_7:
    *(result + 2) = a2;
  }

  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::EqualOp::fold(uint64_t a1)
{
  v1 = *(*a1 + 72);
  v2 = *(v1 + 24);
  if (v2 != *(v1 + 56))
  {
    return 0;
  }

  v18 = (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::TensorType::hasRank(&v18))
  {
    return 0;
  }

  Shape = mlir::TensorType::getShape(&v18);
  if (v5)
  {
    v6 = 8 * v5;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

LABEL_7:
  v20 = 40;
  v21[0] = 1;
  v18 = v21;
  v19 = 1;
  v16 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = mlir::TensorType::getShape(&v16);
  v9 = v8;
  Context = mlir::Attribute::getContext((*a1 + 24));
  v11 = mlir::IntegerType::get(Context, 1, 0);
  v17 = mlir::RankedTensorType::get(v7, v9, v11, 0);
  v12 = sub_10005CD80(&v17);
  result = mlir::DenseElementsAttr::get(v12, v13, v18, v19) & 0xFFFFFFFFFFFFFFFBLL;
  if (v18 != v21)
  {
    v15 = result;
    free(v18);
    return v15;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReshapeOp::fold(uint64_t a1)
{
  v2 = *(*(*a1 + 72) + 24);
  v3 = *(v2 + 8) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::TensorType::hasRank(&v23))
  {
    Shape = mlir::TensorType::getShape(&v23);
    if (!v5)
    {
LABEL_6:
      if (v23 == v3)
      {
        return v2 | 4;
      }

      else
      {
        return 0;
      }
    }

    v6 = 8 * v5;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_6;
      }
    }
  }

  v22 = *(*(*a1 + 72) + 56);
  DefiningOp = mlir::Value::getDefiningOp(&v22);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GetShapeOp,void>::id || *(*(DefiningOp + 72) + 24) != v2)
  {
    if (v23 != v3)
    {
      return 0;
    }

    v9 = mlir::TensorType::getShape(&v23);
    if (!v10)
    {
      return 0;
    }

    v11 = (v10 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v11 >= 3)
    {
      v14 = v11 + 1;
      v15 = (v11 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v13 = (v9 + 8 * v15);
      v16 = (v9 + 16);
      v17 = 0uLL;
      v18 = vnegq_f64(0);
      v19 = v15;
      v20 = 0uLL;
      do
      {
        v17 = vsubq_s64(v17, vceqq_s64(v16[-1], v18));
        v20 = vsubq_s64(v20, vceqq_s64(*v16, v18));
        v16 += 2;
        v19 -= 4;
      }

      while (v19);
      v12 = vaddvq_s64(vaddq_s64(v20, v17));
      if (v14 == v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v12 = 0;
      v13 = v9;
    }

    do
    {
      v21 = *v13++;
      if (v21 == 0x8000000000000000)
      {
        ++v12;
      }
    }

    while (v13 != (v9 + 8 * v10));
LABEL_23:
    if (v12 == 1)
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    return 0;
  }

  return v2 | 4;
}

uint64_t mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::fold(uint64_t a1)
{
  v2 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v12 = v2;
  if (mlir::TensorType::hasRank(&v12))
  {
    Shape = mlir::TensorType::getShape(&v12);
    if (v4)
    {
      v5 = 8 * v4;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v5 -= 8;
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (mlir::TensorType::hasRank(&v11))
      {
        v6 = mlir::TensorType::getShape(&v11);
        if (v7)
        {
          v8 = 8 * v7;
          while (*v6 != 0x8000000000000000)
          {
            ++v6;
            v8 -= 8;
            if (!v8)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          v9 = *(*(*a1 + 72) + 24);
          if ((*(v9 + 8) ^ *(*a1 - 8)) <= 7)
          {
            return v9 | 4;
          }
        }
      }
    }
  }

  return 0;
}

BOOL mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::verify(mlir::Operation **this)
{
  v2 = *this;
  v50 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v49 = *(v2 - 1) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::TensorType::hasRank(&v50))
  {
    Shape = mlir::TensorType::getShape(&v50);
    if (v4)
    {
      v5 = 8 * v4;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v5 -= 8;
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (mlir::TensorType::hasRank(&v49))
      {
        v6 = mlir::TensorType::getShape(&v49);
        if (v7)
        {
          v8 = 8 * v7;
          while (*v6 != 0x8000000000000000)
          {
            ++v6;
            v8 -= 8;
            if (!v8)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          v9 = mlir::TensorType::getShape(&v50);
          v11 = v10;
          v12 = mlir::TensorType::getShape(&v49);
          if (v11)
          {
            v14 = v12;
            v15 = 8 * v13;
            v16 = 8 * v11;
            result = 1;
            while (v15)
            {
              if (*v9 > *v14)
              {
                v48 = 257;
                mlir::OpState::emitError(this, v47, v54);
                if (v54[0])
                {
                  v51 = 3;
                  v52 = "broadcast_in_dims op is decreasing number of elements. Input type ";
                  v53 = 66;
                  v18 = &v51;
                  v19 = v55;
                  if (v56 >= v57)
                  {
                    if (v55 <= &v51 && v55 + 24 * v56 > &v51)
                    {
                      v43 = &v51 - v55;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
                      v19 = v55;
                      v18 = (v55 + v43);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
                      v18 = &v51;
                      v19 = v55;
                    }
                  }

                  v20 = &v19[24 * v56];
                  v21 = *v18;
                  *(v20 + 2) = *(v18 + 2);
                  *v20 = v21;
                  ++v56;
                  if (v54[0])
                  {
                    v22 = &v51;
                    mlir::DiagnosticArgument::DiagnosticArgument(&v51, v50);
                    v23 = v55;
                    if (v56 >= v57)
                    {
                      if (v55 <= &v51 && v55 + 24 * v56 > &v51)
                      {
                        v44 = &v51 - v55;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
                        v23 = v55;
                        v22 = (v55 + v44);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
                        v22 = &v51;
                        v23 = v55;
                      }
                    }

                    v24 = &v23[24 * v56];
                    v25 = *v22;
                    *(v24 + 2) = *(v22 + 2);
                    *v24 = v25;
                    v26 = ++v56;
                    if (v54[0])
                    {
                      v51 = 3;
                      v52 = " output type ";
                      v53 = 13;
                      v27 = &v51;
                      v28 = v55;
                      if (v26 >= v57)
                      {
                        if (v55 <= &v51 && v55 + 24 * v26 > &v51)
                        {
                          v45 = &v51 - v55;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v26 + 1, 24);
                          v28 = v55;
                          v27 = (v55 + v45);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v26 + 1, 24);
                          v27 = &v51;
                          v28 = v55;
                        }
                      }

                      v29 = &v28[24 * v56];
                      v30 = *v27;
                      *(v29 + 2) = *(v27 + 2);
                      *v29 = v30;
                      ++v56;
                      if (v54[0])
                      {
                        v31 = &v51;
                        mlir::DiagnosticArgument::DiagnosticArgument(&v51, v49);
                        v32 = v55;
                        if (v56 >= v57)
                        {
                          if (v55 <= &v51 && v55 + 24 * v56 > &v51)
                          {
                            v46 = &v51 - v55;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
                            v32 = v55;
                            v31 = (v55 + v46);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
                            v31 = &v51;
                            v32 = v55;
                          }
                        }

                        v33 = &v32[24 * v56];
                        v34 = *v31;
                        *(v33 + 2) = *(v31 + 2);
                        *v33 = v34;
                        ++v56;
                      }
                    }
                  }
                }

                result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v54);
                v35 = result;
                if (v54[0])
                {
                  mlir::InFlightDiagnostic::report(v54);
                  result = v35;
                }

                if (v64)
                {
                  if (v63 != &v64)
                  {
                    free(v63);
                    result = v35;
                  }

                  v36 = __p;
                  if (__p)
                  {
                    v37 = v62;
                    v38 = __p;
                    if (v62 != __p)
                    {
                      do
                      {
                        v37 = sub_100052FFC(v37 - 1);
                      }

                      while (v37 != v36);
                      v38 = __p;
                    }

                    v62 = v36;
                    operator delete(v38);
                    result = v35;
                  }

                  v39 = v59;
                  if (v59)
                  {
                    v40 = v60;
                    v41 = v59;
                    if (v60 != v59)
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
                      v41 = v59;
                    }

                    v60 = v39;
                    operator delete(v41);
                    result = v35;
                  }

                  if (v55 != v58)
                  {
                    free(v55);
                    return v35;
                  }
                }

                return result;
              }

              ++v9;
              ++v14;
              v15 -= 8;
              v16 -= 8;
              if (!v16)
              {
                return result;
              }
            }
          }
        }
      }
    }
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::BroadcastToOp::fold(uint64_t a1)
{
  v2 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (sub_1001D3AFC(v2, v3))
  {
    v4 = v2 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    return *(*(*a1 + 72) + 24) | 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001D3AFC(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  v10 = a1;
  if (mlir::TensorType::hasRank(&v10))
  {
    Shape = mlir::TensorType::getShape(&v10);
    if (v3)
    {
      v4 = 8 * v3;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v4 -= 8;
        if (!v4)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (mlir::TensorType::hasRank(&v9))
      {
        v5 = mlir::TensorType::getShape(&v9);
        if (!v6)
        {
          return 1;
        }

        v7 = 8 * v6;
        while (*v5 != 0x8000000000000000)
        {
          ++v5;
          v7 -= 8;
          if (!v7)
          {
            return 1;
          }
        }
      }
    }
  }

  result = mlir::ODIE::Compiler::getSymbolicTypeAffineMap(v10);
  if (result)
  {
    return mlir::ODIE::Compiler::getSymbolicTypeAffineMap(v9) != 0;
  }

  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::fold(uint64_t a1)
{
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  v4 = *(v2 + 56);
  v45 = (v3[1] & 0xFFFFFFFFFFFFFFF8);
  if (!*mlir::RankedTensorType::getShape(&v45))
  {
    return v4 | 4;
  }

  v45 = (v4[1] & 0xFFFFFFFFFFFFFFF8);
  if (!*mlir::RankedTensorType::getShape(&v45) || v3 == v4)
  {
    return v3 | 4;
  }

  sub_1001D3EEC(&v45, v3);
  sub_1001D3EEC(&v41, v4);
  if (v48 != 1 || v44 != 1)
  {
    result = 0;
    goto LABEL_17;
  }

  v38 = v40;
  v39 = 0x600000000;
  BroadcastedShape = mlir::OpTrait::util::getBroadcastedShape(v45, v46, v41, v42, &v38);
  v6 = v38;
  if (BroadcastedShape)
  {
    if (v39)
    {
      v7 = 0;
      while (*(v38 + v7) != 0x8000000000000000)
      {
        v7 += 8;
        if (8 * v39 == v7)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_24;
    }

LABEL_11:
    sub_1001D3060(&v35, v39);
    v8 = v39;
    if (v39)
    {
      v9 = v38;
      v10 = v35;
      v11 = (v39 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v11 <= 6)
      {
        v12 = 0;
        v13 = v38;
LABEL_29:
        v25 = &v9[8 * v8];
        v26 = &v10[4 * v12];
        do
        {
          v27 = *v13;
          v13 += 8;
          *v26 = v27;
          v26 += 4;
        }

        while (v13 != v25);
        goto LABEL_31;
      }

      v17 = v11 + 1;
      v12 = (v11 + 1) & 0x3FFFFFFFFFFFFFF8;
      v13 = v38 + 8 * v12;
      v18 = (v35 + 16);
      v19 = (v38 + 32);
      v20 = v12;
      do
      {
        v22 = v19[-2];
        v21 = v19[-1];
        v24 = *v19;
        v23 = v19[1];
        v19 += 4;
        v18[-1] = vuzp1q_s32(v22, v21);
        *v18 = vuzp1q_s32(v24, v23);
        v18 += 2;
        v20 -= 8;
      }

      while (v20);
      if (v17 != v12)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    v34 = v36;
    Context = mlir::Attribute::getContext((*a1 + 24));
    v29 = mlir::IntegerType::get(Context, 32, 1u);
    v33 = mlir::RankedTensorType::get(&v34, 1, v29, 0);
    v30 = sub_10005CD80(&v33);
    result = mlir::DenseElementsAttr::getRawIntOrFloat(v30) & 0xFFFFFFFFFFFFFFFBLL;
    if (v35 != &v37)
    {
      v31 = result;
      free(v35);
      result = v31;
    }

    v6 = v38;
    if (v38 == v40)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_24:
  result = 0;
  if (v38 != v40)
  {
LABEL_34:
    v32 = result;
    free(v6);
    result = v32;
  }

LABEL_17:
  if (v44 == 1 && v41 != &v43)
  {
    v15 = result;
    free(v41);
    result = v15;
  }

  if (v48 == 1 && v45 != &v47)
  {
    v16 = result;
    free(v45);
    return v16;
  }

  return result;
}

void sub_1001D3EEC(uint64_t a1, uint64_t *a2)
{
  v3 = a2;
  __src = 0;
  v55 = 0;
  v52 = a2;
  p_src = &__src;
  __dst = a2;
  DefiningOp = mlir::Value::getDefiningOp(&__dst);
  if (!DefiningOp || !sub_100250A7C(&p_src, DefiningOp))
  {
    v7 = mlir::Value::getDefiningOp(&v52);
    if (!v7 || *(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GetShapeOp,void>::id)
    {
      *a1 = 0;
      *(a1 + 64) = 0;
      return;
    }

    v3 = (*(*(*(v7 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v3)
    {
      goto LABEL_59;
    }

    v2 = *v3;
    {
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v2 + 8);
      v10 = *(v2 + 16);
      if (!v10)
      {
        goto LABEL_59;
      }

      goto LABEL_13;
    }

LABEL_56:
    sub_100289E80();
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v2 + 8);
    v10 = *(v2 + 16);
    if (!v10)
    {
      goto LABEL_59;
    }

LABEL_13:
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
      v42 = v11[1];
LABEL_60:
      __dst = v3;
      v59 = v42;
      Shape = mlir::ShapedType::getShape(&__dst);
      v45 = v43;
      __src = v56;
      v55 = 0x600000000;
      if (v43 < 7)
      {
        if (!v43)
        {
          v48 = 0;
          v41 = v56;
          goto LABEL_65;
        }

        v46 = 0;
        v47 = v56;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v56, v43, 8);
        v46 = v55;
        v47 = __src;
      }

      memcpy(&v47[8 * v46], Shape, 8 * v45);
      v48 = v55;
      v41 = __src;
LABEL_65:
      *a1 = a1 + 16;
      *(a1 + 8) = 0x600000000;
      v49 = (v48 + v45);
      LODWORD(v55) = v49;
      if (v49 && &__src != a1)
      {
        if (v41 == v56)
        {
          v51 = v49;
          if (v49 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v49, 8), v51 = v55, v41 = __src, v55))
          {
            memcpy(*a1, v41, 8 * v51);
            v41 = __src;
          }

          *(a1 + 8) = v49;
        }

        else
        {
          *a1 = v41;
          v50 = HIDWORD(v55);
          *(a1 + 8) = v49;
          *(a1 + 12) = v50;
          __src = v56;
          HIDWORD(v55) = 0;
          v41 = v56;
        }

        LODWORD(v55) = 0;
      }

      *(a1 + 64) = 1;
      if (v41 != v56)
      {
        goto LABEL_53;
      }

      return;
    }

LABEL_59:
    v42 = 0;
    goto LABEL_60;
  }

  sub_1001F2F84(v3, &__src);
  if ((v57 & 1) == 0)
  {
    sub_10024F430();
    goto LABEL_56;
  }

  __dst = v60;
  v59 = 0xC00000000;
  v6 = v55;
  if (v55)
  {
    if (__src == v56)
    {
      v17 = v55;
      if (v55 < 0xD || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v60, v55, 4), (v17 = v55) != 0))
      {
        memcpy(__dst, __src, 4 * v17);
      }

      LODWORD(v59) = v6;
      LODWORD(v55) = 0;
      if ((v57 & 1) == 0)
      {
        __src = v56;
        v55 = 0x600000000;
        v18 = v6;
        if (v6 >= 7)
        {
          goto LABEL_28;
        }

LABEL_32:
        v19 = 0;
        v20 = v56;
        v21 = v18;
        if (!v18)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    else
    {
      __dst = __src;
      v59 = v55;
      __src = v56;
      v55 = 0;
    }
  }

  if (__src != v56)
  {
    free(__src);
    v6 = v59;
  }

  __src = v56;
  v55 = 0x600000000;
  if (!v6)
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    v20 = v56;
    goto LABEL_50;
  }

  v18 = v6;
  if (v6 < 7)
  {
    goto LABEL_32;
  }

LABEL_28:
  llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v56, v18, 8);
  v19 = v55;
  v20 = __src;
  v21 = v18 - v55;
  if (v18 != v55)
  {
LABEL_33:
    bzero(&v20[8 * v19], 8 * v21);
  }

LABEL_34:
  LODWORD(v55) = v6;
  v22 = v59;
  if (!v59)
  {
    goto LABEL_42;
  }

  v23 = __dst;
  v24 = (v59 - 1) & 0x3FFFFFFFFFFFFFFFLL;
  if (v24 <= 6)
  {
    v25 = 0;
    v26 = __dst;
LABEL_40:
    v36 = &v23[4 * v22];
    v37 = &v20[8 * v25];
    do
    {
      v38 = *v26++;
      *v37++ = v38;
    }

    while (v26 != v36);
    goto LABEL_42;
  }

  v27 = v24 + 1;
  v25 = (v24 + 1) & 0x7FFFFFFFFFFFFFF8;
  v26 = (__dst + 4 * v25);
  v28 = v20 + 32;
  v29 = __dst + 16;
  v30 = v25;
  do
  {
    v31 = *(v29 - 1);
    *&v32 = v31;
    *(&v32 + 1) = SDWORD1(v31);
    v33 = v32;
    *&v32 = SDWORD2(v31);
    *(&v32 + 1) = SHIDWORD(v31);
    v34 = v32;
    *&v32 = *v29;
    *(&v32 + 1) = HIDWORD(*v29);
    v35 = v32;
    *&v32 = *(v29 + 1);
    *(&v32 + 1) = HIDWORD(*v29);
    *(v28 - 2) = v33;
    *(v28 - 1) = v34;
    *v28 = v35;
    v28[1] = v32;
    v28 += 4;
    v29 += 32;
    v30 -= 8;
  }

  while (v30);
  if (v27 != v25)
  {
    goto LABEL_40;
  }

LABEL_42:
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  if (&__src != a1)
  {
    if (v20 == v56)
    {
      v40 = v6;
      if (v6 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v18, 8), v40 = v55, v20 = __src, v55))
      {
        memcpy(*a1, v20, 8 * v40);
        v20 = __src;
      }

      *(a1 + 8) = v6;
    }

    else
    {
      *a1 = v20;
      v39 = HIDWORD(v55);
      *(a1 + 8) = v6;
      *(a1 + 12) = v39;
      __src = v56;
      HIDWORD(v55) = 0;
      v20 = v56;
    }

    LODWORD(v55) = 0;
  }

LABEL_50:
  *(a1 + 64) = 1;
  if (v20 != v56)
  {
    free(v20);
  }

  v41 = __dst;
  if (__dst != v60)
  {
LABEL_53:
    free(v41);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AndOp::fold(uint64_t a1)
{
  v1 = *(*a1 + 72);
  v2 = *(v1 + 24);
  if (v2 == *(v1 + 56))
  {
    return v2 | 4;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::OrOp::fold(uint64_t a1)
{
  v1 = *(*a1 + 72);
  v2 = *(v1 + 24);
  if (v2 == *(v1 + 56))
  {
    return v2 | 4;
  }

  else
  {
    return 0;
  }
}

void sub_1001D4484(uint64_t a1, const void *a2, uint64_t a3)
{
  v5 = 8 * a3;
  v6 = *(a1 + 72);
  v7 = v6 + ((8 * a3) >> 3);
  if (v7 > *(a1 + 76))
  {
    v8 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 64, (a1 + 80), v7, 8);
    a2 = v8;
    LODWORD(v6) = *(a1 + 72);
  }

  if (a3)
  {
    memcpy((*(a1 + 64) + 8 * v6), a2, v5);
    LODWORD(v6) = *(a1 + 72);
  }

  *(a1 + 72) = v6 + (v5 >> 3);
}

__n128 mlir::ODIE::Compiler::CoreML::IfOp::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *(*a1 + 36);
    if (v5)
    {
      v6 = *a1 - 16;
    }

    else
    {
      v6 = 0;
    }

    v22 = 0;
    v7 = &v22;
    mlir::ValueRange::ValueRange(v23, v6, v5);
    v8 = *(a3 + 8);
    v9 = *a3;
    if (v8 >= *(a3 + 12))
    {
LABEL_13:
      if (v9 <= &v22 && v9 + 24 * v8 > &v22)
      {
        v20 = &v23[-1] - v9;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v8 + 1, 24);
        v9 = *a3;
        v7 = &v20[*a3];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v8 + 1, 24);
        v9 = *a3;
        v7 = &v22;
      }
    }
  }

  else
  {
    v22 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    v10 = &v22;
    mlir::ValueRange::ValueRange(v23, 0, 0);
    v11 = *(a3 + 8);
    v12 = *a3;
    if (v11 >= *(a3 + 12))
    {
      if (v12 <= &v22 && v12 + 24 * v11 > &v22)
      {
        v21 = &v23[-1] - v12;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v11 + 1, 24);
        v12 = *a3;
        v10 = &v21[*a3];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v11 + 1, 24);
        v12 = *a3;
        v10 = &v22;
      }
    }

    v13 = v12 + 24 * *(a3 + 8);
    v14 = *v10;
    *(v13 + 16) = v10[2];
    *v13 = v14;
    ++*(a3 + 8);
    v15 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    v17 = *(v15 + 24);
    v16 = v15 + 24;
    if (v17 == v16)
    {
      v22 = 0;
    }

    else
    {
      v22 = v16;
    }

    v7 = &v22;
    mlir::ValueRange::ValueRange(v23, 0, 0);
    v8 = *(a3 + 8);
    v9 = *a3;
    if (v8 >= *(a3 + 12))
    {
      goto LABEL_13;
    }
  }

  v18 = (v9 + 24 * *(a3 + 8));
  result = *v7;
  v18[1].n128_u64[0] = v7[1].n128_u64[0];
  *v18 = result;
  ++*(a3 + 8);
  return result;
}

unint64_t *mlir::ODIE::Compiler::CoreML::IfOp::getEntrySuccessorRegions(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  v21[0] = v6;
  v7 = *(a4 + 8);
  if (v7 >= *(a4 + 12))
  {
    sub_1002533E4(a4, v21);
  }

  else
  {
    v8 = (*a4 + 24 * v7);
    *v8 = v6;
    mlir::ValueRange::ValueRange(v8 + 1, 0, 0);
    ++*(a4 + 8);
  }

  v9 = *a1;
  v10 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  v12 = *(v10 + 24);
  v11 = v10 + 24;
  if (v12 == v11)
  {
    v16 = *(v9 + 36);
    v17 = v9 - 16;
    if (v16)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v21[0] = v18;
    v21[1] = v16;
    v19 = *(a4 + 8);
    if (v19 < *(a4 + 12))
    {
      v20 = (*a4 + 24 * v19);
      *v20 = 0;
      result = mlir::ValueRange::ValueRange(v20 + 1, v18, v16);
      goto LABEL_11;
    }

    return sub_1002534FC(a4, v21);
  }

  else
  {
    v21[0] = v11;
    v13 = *(a4 + 8);
    if (v13 < *(a4 + 12))
    {
      v14 = (*a4 + 24 * v13);
      *v14 = v11;
      result = mlir::ValueRange::ValueRange(v14 + 1, 0, 0);
LABEL_11:
      ++*(a4 + 8);
      return result;
    }

    return sub_1002533E4(a4, v21);
  }
}

unint64_t *mlir::ODIE::Compiler::CoreML::WhileOp::getSuccessorRegions(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *a1;
    v5 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
    if (v5 + 3 != a2)
    {
      v7 = *(v4 + 36);
      if (v7)
      {
        v8 = v4 - 16;
      }

      else
      {
        v8 = 0;
      }

      v19 = v8;
      v20 = v7;
      v9 = *(a3 + 8);
      if (v9 >= *(a3 + 12))
      {
        sub_1002534FC(a3, &v19);
      }

      else
      {
        v10 = (*a3 + 24 * v9);
        *v10 = 0;
        mlir::ValueRange::ValueRange(v10 + 1, v8, v7);
        ++*(a3 + 8);
      }

      v11 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
      v5 = (v11 + 24);
      v21 = (v11 + 24);
      if (*(v11 + 24) != v11 + 24)
      {
        v12 = *(v11 + 32);
        goto LABEL_13;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v5 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
  }

  v21 = v5;
  if (*v5 != v5)
  {
    v12 = v5[1];
LABEL_13:
    if (v12)
    {
      v13 = v12 - 8;
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v13 + 48);
    v15 = (*(v13 + 56) - v14) >> 3;
    v19 = v14;
    v20 = v15;
    v16 = *(a3 + 8);
    if (v16 < *(a3 + 12))
    {
      goto LABEL_17;
    }

    return sub_100253610(a3, &v21, &v19);
  }

LABEL_18:
  v14 = 0;
  v15 = 0;
  v19 = 0;
  v20 = 0;
  v16 = *(a3 + 8);
  if (v16 < *(a3 + 12))
  {
LABEL_17:
    v17 = (*a3 + 24 * v16);
    *v17 = v5;
    result = mlir::ValueRange::ValueRange(v17 + 1, v14, v15);
    ++*(a3 + 8);
    return result;
  }

  return sub_100253610(a3, &v21, &v19);
}

BOOL mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a4[1] == 1)
  {
    v9 = (*(mlir::ValueRange::dereference_iterator(a4, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v9)
    {
      v10 = *v9;
      {
        v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v12 = *(v10 + 8);
        v13 = *(v10 + 16);
        if (!v13)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_100289EC4();
        v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v12 = *(v10 + 8);
        v13 = *(v10 + 16);
        if (!v13)
        {
          goto LABEL_18;
        }
      }

      v14 = v12;
      v15 = v13;
      do
      {
        v16 = v15 >> 1;
        v17 = &v14[2 * (v15 >> 1)];
        v19 = *v17;
        v18 = v17 + 2;
        v15 += ~(v15 >> 1);
        if (v19 < v11)
        {
          v14 = v18;
        }

        else
        {
          v15 = v16;
        }
      }

      while (v15);
      if (v14 != &v12[2 * v13] && *v14 == v11)
      {
        v21 = v14[1];
LABEL_19:
        v34[0] = v9;
        v34[1] = v21;
        Shape = mlir::ShapedType::getShape(v34);
        v24 = v22;
        v35 = v37;
        v36 = 0x300000000;
        v25 = (8 * v22) >> 3;
        if (v25 < 4)
        {
          v26 = 0;
          v27 = 8 * v22;
          if (!v22)
          {
LABEL_24:
            LODWORD(v36) = v26 + (v27 >> 3);
            v37[3] = 0;
            v37[4] = 0;
            v38 = 1;
            v28 = *(a9 + 8);
            v29 = *a9;
            v30 = &v35;
            if (v28 >= *(a9 + 12))
            {
              if (v29 <= &v35 && v29 + (v28 << 6) > &v35)
              {
                v33 = &v35 - v29;
                sub_100253724(a9, v28 + 1);
                v29 = *a9;
                v30 = &v33[*a9];
              }

              else
              {
                sub_100253724(a9, v28 + 1);
                v29 = *a9;
                v30 = &v35;
              }
            }

            v31 = v29 + (*(a9 + 8) << 6);
            *v31 = v31 + 16;
            *(v31 + 8) = 0x300000000;
            if (*(v30 + 2))
            {
              sub_100056AF0(v31, v30);
            }

            v32 = *(v30 + 5);
            *(v31 + 56) = *(v30 + 56);
            *(v31 + 40) = v32;
            ++*(a9 + 8);
            if (v35 != v37)
            {
              free(v35);
            }

            return 1;
          }
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v25, 8);
          v26 = v36;
          v27 = 8 * v24;
          if (!v24)
          {
            goto LABEL_24;
          }
        }

        memcpy(v35 + 8 * v26, Shape, v27);
        v26 = v36;
        goto LABEL_24;
      }
    }

LABEL_18:
    v21 = 0;
    goto LABEL_19;
  }

  return sub_1001D4DAC(a2, a3, "expected exactly 1 operand");
}

BOOL sub_1001D4DAC(uint64_t a1, char a2, const char *a3)
{
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, v21);
  if (v21[0])
  {
    v18 = 3;
    v19 = a3;
    v20 = strlen(a3);
    v4 = &v18;
    v5 = v22;
    if (v23 >= v24)
    {
      if (v22 <= &v18 && v22 + 24 * v23 > &v18)
      {
        v17 = &v18 - v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v5 = v22;
        v4 = (v22 + v17);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v4 = &v18;
        v5 = v22;
      }
    }

    v6 = &v5[24 * v23];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v23;
  }

  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v29;
      v11 = __p;
      if (v29 != __p)
      {
        do
        {
          v10 = sub_100052FFC(v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v29 = v9;
      operator delete(v11);
    }

    v12 = v26;
    if (v26)
    {
      v13 = v27;
      v14 = v26;
      if (v27 != v26)
      {
        do
        {
          v15 = *--v13;
          *v13 = 0;
          if (v15)
          {
            operator delete[]();
          }
        }

        while (v13 != v12);
        v14 = v26;
      }

      v27 = v12;
      operator delete(v14);
    }

    if (v22 != v25)
    {
      free(v22);
    }
  }

  return v8;
}

uint64_t mlir::ODIE::Compiler::CoreML::CastOp::fold(uint64_t *a1)
{
  v6 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v6);
  if (DefiningOp)
  {
    v3 = *a1;
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
    {
      v4 = *(*(DefiningOp + 72) + 24);
      if ((*(v3 - 8) ^ *(v4 + 8)) <= 7)
      {
        return v4 | 4;
      }
    }
  }

  else
  {
    v3 = *a1;
  }

  v4 = *(*(v3 + 72) + 24);
  if ((*(v3 - 8) ^ *(v4 + 8)) <= 7)
  {
    return v4 | 4;
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::CastOp::decomposeComplexOperation(uint64_t *a1, void *a2)
{
  if (*(*mlir::getElementTypeOrSelf(*(*(*a1 + 72) + 24)) + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    return 1;
  }

  v5 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = *v5;
  {
    sub_100289EC4();
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_6:
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
    goto LABEL_16;
  }

  v16 = v10[1];
LABEL_17:
  v46[0] = v5;
  v46[1] = v16;
  *&v47 = mlir::ShapedType::getElementType(v46);
  ElementType = mlir::ComplexType::getElementType(&v47);
  v44 = sub_1001D5370(a2, *(*(*a1 + 72) + 24), *(*a1 + 24));
  v45 = v18;
  v19 = (*(v44 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v19)
  {
    goto LABEL_31;
  }

  v20 = *v19;
  {
    v41 = v19;
    v30 = v20;
    sub_100289E80();
    v19 = v41;
    v21 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v22 = *(v30 + 8);
    v23 = *(v30 + 16);
    if (v23)
    {
      goto LABEL_20;
    }

LABEL_31:
    v31 = 0;
    goto LABEL_32;
  }

  v21 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v22 = *(v20 + 8);
  v23 = *(v20 + 16);
  if (!v23)
  {
    goto LABEL_31;
  }

LABEL_20:
  v24 = v22;
  v25 = v23;
  do
  {
    v26 = v25 >> 1;
    v27 = &v24[2 * (v25 >> 1)];
    v29 = *v27;
    v28 = v27 + 2;
    v25 += ~(v25 >> 1);
    if (v29 < v21)
    {
      v24 = v28;
    }

    else
    {
      v25 = v26;
    }
  }

  while (v25);
  if (v24 == &v22[2 * v23] || *v24 != v21)
  {
    goto LABEL_31;
  }

  v31 = v24[1];
LABEL_32:
  v43[0] = v19;
  v43[1] = v31;
  LOBYTE(v47) = 0;
  v48 = 0;
  *&v47 = mlir::ShapedType::cloneWith(v43, &v47, ElementType);
  *(&v47 + 1) = v32;
  v43[0] = sub_1001D54D4(a2, *(*a1 + 24), &v47, &v44);
  v42 = sub_1001D54D4(a2, *(*a1 + 24), &v47, &v45);
  v33 = sub_1001D5614(a2, *(*a1 + 24), v46, v43, &v42);
  v34 = *a1;
  if (*(v33 + 36))
  {
    v35 = v33 - 16;
  }

  else
  {
    v35 = 0;
  }

  for (i = mlir::detail::OpResultImpl::getNextResultAtOffset(v35, 0); ; *i = v37)
  {
    v37 = *(v34 - 16);
    if (!v37)
    {
      break;
    }

    v38 = v37[1];
    if (v38)
    {
      v39 = *v37;
      *v38 = *v37;
      if (v39)
      {
        *(v39 + 8) = v38;
      }
    }

    v37[3] = i;
    v37[1] = i;
    v40 = *i;
    *v37 = *i;
    if (v40)
    {
      *(v40 + 8) = v37;
    }
  }

  return 1;
}

uint64_t sub_1001D5370(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v5 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = *v5;
  {
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v21 = v6;
    sub_100289EC4();
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v8 = *(v21 + 8);
    v9 = *(v21 + 16);
    if (!v9)
    {
      goto LABEL_14;
    }
  }

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
  if (v10 != &v8[2 * v9] && *v10 == v7)
  {
    v16 = v10[1];
    goto LABEL_15;
  }

LABEL_14:
  v16 = 0;
LABEL_15:
  v22[0] = v5;
  v22[1] = v16;
  *&v24 = mlir::ShapedType::getElementType(v22);
  ElementType = mlir::ComplexType::getElementType(&v24);
  LOBYTE(v24) = 0;
  v25 = 0;
  *&v24 = mlir::ShapedType::cloneWith(v22, &v24, ElementType);
  *(&v24 + 1) = v18;
  v19 = sub_10024F448(a1, a3, &v24, &v23);
  sub_10024F584(a1, a3, &v24, &v23);
  return v19;
}

uint64_t sub_1001D54D4(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    sub_100285E30(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v18[0] = *a4 - 16;
  mlir::OperationState::addOperands(v19, v18, 1uLL);
  v12 = v21;
  if (v21 >= v22)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, &v23, v21 + 1, 8);
    v12 = v21;
  }

  *(v20 + 8 * v12) = v11;
  ++v21;
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

uint64_t sub_1001D5614(void *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateComplexOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    sub_100289F1C(v22, v21, v20);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  v13 = *a3;
  v14 = *a5 - 16;
  v21[0] = *a4 - 16;
  v20[0] = v14;
  mlir::OperationState::addOperands(v22, v21, 1uLL);
  mlir::OperationState::addOperands(v22, v20, 1uLL);
  v15 = v24;
  if (v24 >= v25)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, &v26, v24 + 1, 8);
    v15 = v24;
  }

  *(v23 + 8 * v15) = v13;
  ++v24;
  v16 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateComplexOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v17;
}

unint64_t mlir::ODIE::Compiler::CoreML::GetShapeOp::fold(uint64_t a1)
{
  v33 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v33))
  {
    return 0;
  }

  Shape = mlir::TensorType::getShape(&v33);
  if (v3)
  {
    v4 = 8 * v3;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v4 -= 8;
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  v6 = mlir::TensorType::getShape(&v33);
  v7 = v5;
  v35 = v37;
  v36 = 0xC00000000;
  v8 = (8 * v5) >> 3;
  if (v8 < 0xD)
  {
    v9 = 0;
    v10 = 0;
    v11 = 8 * v5;
    if (!v5)
    {
      goto LABEL_18;
    }

LABEL_11:
    v13 = (v35 + 4 * v9);
    v14 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v14 >= 7)
    {
      v17 = v14 + 1;
      v18 = (v14 + 1) & 0x3FFFFFFFFFFFFFF8;
      v15 = &v13->i8[4 * v18];
      v16 = (v6 + 8 * v18);
      v19 = (v6 + 32);
      v20 = v13 + 1;
      v21 = v18;
      do
      {
        v23 = v19[-2];
        v22 = v19[-1];
        v25 = *v19;
        v24 = v19[1];
        v19 += 4;
        v20[-1] = vuzp1q_s32(v23, v22);
        *v20 = vuzp1q_s32(v25, v24);
        v20 += 2;
        v21 -= 8;
      }

      while (v21);
      if (v17 == v18)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v15 = v13;
      v16 = v6;
    }

    do
    {
      v26 = *v16++;
      *v15 = v26;
      v15 += 4;
    }

    while (v16 != (v6 + v11));
LABEL_17:
    v10 = v36;
    goto LABEL_18;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v8, 4);
  v9 = v36;
  v10 = v36;
  v11 = 8 * v7;
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_18:
  LODWORD(v36) = v10 + (v11 >> 3);
  mlir::TensorType::getShape(&v33);
  v34 = v27;
  Context = mlir::Attribute::getContext((*a1 + 24));
  v29 = mlir::IntegerType::get(Context, 32, 1u);
  v32 = mlir::RankedTensorType::get(&v34, 1, v29, 0);
  v30 = sub_10005CD80(&v32);
  result = mlir::DenseElementsAttr::getRawIntOrFloat(v30) & 0xFFFFFFFFFFFFFFFBLL;
  if (v35 != v37)
  {
    v31 = result;
    free(v35);
    return v31;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GetShapeOp::inferReturnTypes(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v24 = a6;
    v25[0] = 0;
    v26 = 0;
    v27 = a9;
    v28 = a10;
    if (a6)
    {
      v14 = a4;
      Context = mlir::Attribute::getContext(&v24);
      if (v26 == 1)
      {
        v26 = 0;
      }

      mlir::OperationName::OperationName(v25, "coreml.get_shape", 16, Context);
      v26 = 1;
      a4 = v14;
    }

    v29 = a4;
    v30 = 1;
    v31[0] = a4;
    v31[1] = 0;
    v16 = *(mlir::ValueRange::dereference_iterator(v31, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = 0;
    }

    v31[0] = v16;
    if (v16)
    {
      mlir::RankedTensorType::getShape(v31);
      v23 = v17;
      v18 = mlir::IntegerType::get(a1, 32, 1u);
      v19 = mlir::RankedTensorType::get(&v23, 1, v18, 0);
      v20 = *(a11 + 8);
      if (v20 >= *(a11 + 12))
      {
        v22 = v19;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v20 + 1, 8);
        v19 = v22;
        LODWORD(v20) = *(a11 + 8);
      }

      *(*a11 + 8 * v20) = v19;
      ++*(a11 + 8);
      return 1;
    }

    else
    {
      return sub_1001D4DAC(a2, a3, "expected operand to be ranked tensor");
    }
  }

  else
  {

    return sub_1001D4DAC(a2, a3, "expected exactly 1 operand");
  }
}

void mlir::ODIE::Compiler::CoreML::ModuleOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v3 = *this;
  if (*this)
  {
    v4 = sub_10014607C(*this);
  }

  else
  {
    v4 = 0;
  }

  sub_1001D5C08(v3, v4, 0, 0, a2);
}

void sub_1001D5C08(mlir::Operation *a1, mlir::Operation *a2, const void *a3, unint64_t a4, uint64_t a5)
{
  v24[0] = a1;
  v24[1] = a2;
  v8 = (*(*a5 + 16))(a5);
  v9 = v8[4];
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, " ", 1uLL);
  }

  else
  {
    *v9 = 32;
    ++v8[4];
  }

  NameAttr = mlir::SymbolOpInterface::getNameAttr(v24);
  Value = mlir::StringAttr::getValue(&NameAttr);
  (*(*a5 + 88))(a5, Value, v11);
  NameAttr = v28;
  v27 = 0x300000000;
  if (a4 < 4)
  {
    if (!a4)
    {
      LODWORD(v27) = 0;
      v14 = v24[0];
      if (!sub_100181E38(v24[0]))
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v12 = 0;
    v13 = v28;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&NameAttr, v28, a4, 16);
    v12 = v27;
    v13 = NameAttr;
  }

  memcpy(&v13[16 * v12], a3, 16 * a4);
  LODWORD(v27) = v27 + a4;
  v14 = v24[0];
  if (!sub_100181E38(v24[0]))
  {
    goto LABEL_10;
  }

LABEL_9:
  if (!v14)
  {
LABEL_10:
    v16 = v27;
    goto LABEL_16;
  }

  v15 = sub_100181E38(v14);
  (*(v15 + 32))(v15, v14, a5);
  v17 = v27;
  if (v27 >= HIDWORD(v27))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&NameAttr, v28, v27 + 1, 16);
    v17 = v27;
  }

  v18 = NameAttr + 16 * v17;
  *v18 = "param_decls";
  v18[1] = 11;
  v16 = v27 + 1;
  LODWORD(v27) = v27 + 1;
LABEL_16:
  if (v16 >= HIDWORD(v27))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&NameAttr, v28, v16 + 1, 16);
    v16 = v27;
  }

  v19 = NameAttr + 16 * v16;
  *v19 = "sym_name";
  v19[1] = 8;
  LODWORD(v27) = v27 + 1;
  AttrDictionary = mlir::Operation::getAttrDictionary(v24[0]);
  v20 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a5 + 200))(a5, v20, v21, NameAttr, v27);
  v22 = (*(*a5 + 16))(a5);
  v23 = v22[4];
  if (v22[3] == v23)
  {
    llvm::raw_ostream::write(v22, " ", 1uLL);
  }

  else
  {
    *v23 = 32;
    ++v22[4];
  }

  (*(*a5 + 224))(a5, ((v24[0] + 16 * ((*(v24[0] + 11) >> 23) & 1) + ((*(v24[0] + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v24[0] + 10), 0, 0, 0);
  if (NameAttr != v28)
  {
    free(NameAttr);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::ModuleOp>::parseParameterList(const char *a1, mlir::Attribute *a2)
{
  v16 = v18;
  v17 = 0x600000000;
  v12 = a1;
  v13 = &v16;
  if ((*(*a1 + 392))(a1, 7))
  {
    v4 = (*(*a1 + 32))(a1);
    v5 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*v4, v16, v17);
    Context = mlir::Attribute::getContext(a2);
    v14 = 261;
    v12 = "param_decls";
    v13 = 11;
    v8 = mlir::StringAttr::get(Context, &v12, v7);
    mlir::NamedAttribute::NamedAttribute(v15, v8, v5);
    mlir::NamedAttrList::push_back(a2 + 112, v15[0], v15[1]);
    v9 = 1;
    v10 = v16;
    if (v16 == v18)
    {
      return v9;
    }

    goto LABEL_5;
  }

  v9 = 0;
  v10 = v16;
  if (v16 != v18)
  {
LABEL_5:
    free(v10);
  }

  return v9;
}

uint64_t mlir::ODIE::Compiler::CoreML::ModuleOp::specialize(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (!*a1)
  {
    if (sub_1001D6658(0, 0, a2, a3))
    {
      goto LABEL_3;
    }

    return 0;
  }

  v7 = sub_100181E38(*a1);
  if (!sub_1001D6658(v6, v7, a2, a3))
  {
    return 0;
  }

LABEL_3:
  v8 = *a1;
  v9 = *a1 + 64;
  v27 = *(v9 + 16 * ((*(*a1 + 44) >> 23) & 1));
  mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::getValue(&v27);
  v27 = v29;
  v28 = 0x600000000;
  v26 = *(v9 + 16 * ((*(v8 + 44) >> 23) & 1));
  Value = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::getValue(&v26);
  if (v11)
  {
    v12 = Value;
    v13 = 8 * v11;
    do
    {
      v26 = *v12;
      Name = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::getName(&v26);
      v16 = mlir::StringAttr::getValue(&Name);
      v18 = v17;
      v19 = llvm::StringMapImpl::hash(v16, v17);
      Key = llvm::StringMapImpl::FindKey(a2, v16, v18, v19);
      if (Key == -1 || Key == *(a2 + 8))
      {
        v14 = v26;
        v15 = v28;
        if (v28 >= HIDWORD(v28))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v28 + 1, 8);
          v15 = v28;
        }

        *(v27 + v15) = v14;
        LODWORD(v28) = v28 + 1;
      }

      ++v12;
      v13 -= 8;
    }

    while (v13);
  }

  v21 = v27;
  v22 = v28;
  Context = mlir::Attribute::getContext((v8 + 24));
  *(v9 + 16 * ((*(v8 + 44) >> 23) & 1)) = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(Context, v21, v22);
  if (v27 != v29)
  {
    free(v27);
  }

  return 1;
}

BOOL sub_1001D6658(mlir::ForwardIterator *a1, uint64_t a2, void **a3, uint64_t a4)
{
  v23[0] = a1;
  v23[1] = a2;
  v22 = 0;
  v20 = 0u;
  *v21 = 0u;
  *v18 = 0u;
  *__p = 0u;
  v24 = off_1002BDD78;
  v25 = a3;
  v27 = &v24;
  mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::addReplacement(v18, &v24);
  if (v27 == &v24)
  {
    ((*v27)[4])(v27);
  }

  else if (v27)
  {
    ((*v27)[5])(v27);
  }

  v24 = v23;
  v25 = v18;
  v26 = a4;
  v6 = sub_1000A8D90(a1, sub_10024F840, &v24, 0);
  llvm::deallocate_buffer(v21[0], (16 * v22), 8uLL);
  v7 = __p[1];
  if (__p[1])
  {
    v8 = v20;
    v9 = __p[1];
    if (v20 != __p[1])
    {
      v10 = v20 - 32;
      do
      {
        v11 = *(v8 - 1);
        v8 -= 32;
        if (v8 == v11)
        {
          (*(*v11 + 32))(v11);
        }

        else if (v11)
        {
          (*(*v11 + 40))(v11);
        }

        v10 -= 32;
      }

      while (v8 != v7);
      v9 = __p[1];
    }

    *&v20 = v7;
    operator delete(v9);
  }

  v12 = v18[0];
  if (v18[0])
  {
    v13 = v18[1];
    v14 = v18[0];
    if (v18[1] != v18[0])
    {
      v15 = v18[1] - 32;
      do
      {
        v16 = *(v13 - 1);
        v13 -= 32;
        if (v13 == v16)
        {
          (*(*v16 + 32))(v16);
        }

        else if (v16)
        {
          (*(*v16 + 40))(v16);
        }

        v15 -= 32;
      }

      while (v13 != v12);
      v14 = v18[0];
    }

    v18[1] = v12;
    operator delete(v14);
  }

  return v6 != 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ModuleOp::readProperties(uint64_t a1, mlir::Attribute *a2)
{
  mlir::ODIE::Compiler::CoreML::CoreMLDialectVersion::get(a1, v7);
  v4 = *(a2 + 32);
  if (!v4)
  {
    operator new();
  }

  if (v7[1])
  {
    if ((sub_1001D69EC(a1, v4) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    Context = mlir::Attribute::getContext(a2);
    *v4 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(Context, 0, 0);
  }

  return sub_10010FB18(a1, v4 + 1) & 1;
}

uint64_t sub_1001D69EC(uint64_t a1, uint64_t *a2)
{
  v31 = 0;
  if (((*(*a1 + 48))(a1, &v31) & 1) == 0)
  {
    return 0;
  }

  v4 = v31;
  v5 = *(*v31 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
  {
    return 1;
  }

  v30[16] = 257;
  (*(*a1 + 16))(&v36, a1, v30);
  if (v36)
  {
    LODWORD(v32) = 3;
    v33 = "expected ";
    v34 = 9;
    v6 = &v32;
    v7 = v38;
    if (v39 >= v40)
    {
      if (v38 <= &v32 && v38 + 24 * v39 > &v32)
      {
        v27 = &v32 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v7 = v38;
        v6 = (v38 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v6 = &v32;
        v7 = v38;
      }
    }

    v8 = &v7[24 * v39];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v39;
  }

  {
    if (v36)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_100289FA4();
    if (v36)
    {
LABEL_10:
      v35 = 261;
      v32 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr>(void)::Name;
      v33 = unk_1002C2D80;
      mlir::Diagnostic::operator<<(&v37, &v32);
      if (v36)
      {
        LODWORD(v32) = 3;
        v33 = ", but got: ";
        v34 = 11;
        v10 = &v32;
        v11 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v32 && v38 + 24 * v39 > &v32)
          {
            v28 = &v32 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v11 = v38;
            v10 = (v38 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v10 = &v32;
            v11 = v38;
          }
        }

        v12 = &v11[24 * v39];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v39;
        if (v36)
        {
          v14 = &v32;
          mlir::DiagnosticArgument::DiagnosticArgument(&v32, v31);
          v15 = v38;
          if (v39 >= v40)
          {
            if (v38 <= &v32 && v38 + 24 * v39 > &v32)
            {
              v29 = &v32 - v38;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
              v15 = v38;
              v14 = (v38 + v29);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
              v14 = &v32;
              v15 = v38;
            }
          }

          v16 = &v15[24 * v39];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v39;
        }
      }
    }
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v45;
      v21 = __p;
      if (v45 != __p)
      {
        do
        {
          v20 = sub_100052FFC(v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v45 = v19;
      operator delete(v21);
    }

    v22 = v42;
    if (v42)
    {
      v23 = v43;
      v24 = v42;
      if (v43 != v42)
      {
        do
        {
          v25 = *--v23;
          *v23 = 0;
          if (v25)
          {
            operator delete[]();
          }
        }

        while (v23 != v22);
        v24 = v42;
      }

      v43 = v22;
      operator delete(v24);
    }

    if (v38 != v41)
    {
      free(v38);
    }
  }

  return v18;
}

uint64_t mlir::ODIE::Compiler::CoreML::ModuleOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 16))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::print(uint64_t *a1, uint64_t a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  (*(*a2 + 40))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80));
  v18 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80);
  result = mlir::SymbolRefAttr::getRootReference(&v18);
  v7 = *a1;
  v8 = (*(*a1 + 44) >> 23) & 1;
  if (result != *(*a1 + 16 * v8 + 72))
  {
    v9 = (*(*a2 + 16))(a2);
    v10 = v9[4];
    if (v9[3] - v10 > 3uLL)
    {
      *v10 = 544432416;
      v9[4] += 4;
    }

    else
    {
      llvm::raw_ostream::write(v9, " as ", 4uLL);
    }

    v18 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72);
    Value = mlir::StringAttr::getValue(&v18);
    result = (*(*a2 + 88))(a2, Value, v12);
    v7 = *a1;
    v8 = (*(*a1 + 44) >> 23) & 1;
  }

  v18 = *(v7 + 16 * v8 + 64);
  if (v18)
  {
    v13 = mlir::StringAttr::getValue(&v18);
    v15 = v14;
    v16 = (*(*a2 + 16))(a2);
    v17 = v16[4];
    if ((v16[3] - v17) > 5)
    {
      *(v17 + 4) = 8301;
      *v17 = 1869768224;
      v16[4] += 6;
    }

    else
    {
      llvm::raw_ostream::write(v16, " from ", 6uLL);
    }

    return (*(*a2 + 80))(a2, v13, v15);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::ImportOp::parse(mlir::ODIE::Compiler::CoreML::ImportOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v4 = *(a2 + 32);
  if (!v4)
  {
    operator new();
  }

  v13 = 0;
  if (!sub_1001D73D0(this, &v13, 0))
  {
    return 0;
  }

  v4[2] = v13;
  if ((*(*this + 408))(this, "as", 2))
  {
    v9 = 0;
    if ((sub_1002782F8(this) & 1) == 0)
    {
      return 0;
    }

    v4[1] = v9;
  }

  else
  {
    v4[1] = mlir::SymbolRefAttr::getRootReference(&v13);
  }

  if ((*(*this + 408))(this, "from", 4))
  {
    __p[0] = 0;
    __p[1] = 0;
    v12 = 0;
    v5 = sub_100163AAC(this, __p);
    if (v5)
    {
      v6 = (*(*this + 32))(this);
      v10 = 260;
      v9 = __p;
      *v4 = mlir::Builder::getStringAttr(v6, &v9, v7);
      if (SHIBYTE(v12) < 0)
      {
        goto LABEL_12;
      }
    }

    else if (SHIBYTE(v12) < 0)
    {
LABEL_12:
      operator delete(__p[0]);
      return (v5 & 1) != 0;
    }

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1001D73D0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1);
  v19 = 0;
  if (((*(*a1 + 440))(a1, &v19, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = v19;
  if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v17 = "invalid kind of attribute specified";
  v18 = 259;
  (*(*a1 + 24))(v20, a1, v6, &v17);
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
          v11 = sub_100052FFC(v11 - 1);
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
          v16 = *--v14;
          *v14 = 0;
          if (v16)
          {
            operator delete[]();
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

void mlir::ODIE::Compiler::CoreML::ClassOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v3 = *this;
  if (*this)
  {
    v4 = sub_10014607C(*this);
  }

  else
  {
    v4 = 0;
  }

  sub_1001D5C08(v3, v4, 0, 0, a2);
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::ClassOp>::parseParameterList(const char *a1, mlir::Attribute *a2)
{
  v16 = v18;
  v17 = 0x600000000;
  v12 = a1;
  v13 = &v16;
  if ((*(*a1 + 392))(a1, 7))
  {
    v4 = (*(*a1 + 32))(a1);
    v5 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*v4, v16, v17);
    Context = mlir::Attribute::getContext(a2);
    v14 = 261;
    v12 = "param_decls";
    v13 = 11;
    v8 = mlir::StringAttr::get(Context, &v12, v7);
    mlir::NamedAttribute::NamedAttribute(v15, v8, v5);
    mlir::NamedAttrList::push_back(a2 + 112, v15[0], v15[1]);
    v9 = 1;
    v10 = v16;
    if (v16 == v18)
    {
      return v9;
    }

    goto LABEL_5;
  }

  v9 = 0;
  v10 = v16;
  if (v16 != v18)
  {
LABEL_5:
    free(v10);
  }

  return v9;
}

uint64_t mlir::ODIE::Compiler::CoreML::ClassOp::specialize(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (!*a1)
  {
    if (sub_1001D6658(0, 0, a2, a3))
    {
      goto LABEL_3;
    }

    return 0;
  }

  v7 = sub_100181E38(*a1);
  if (!sub_1001D6658(v6, v7, a2, a3))
  {
    return 0;
  }

LABEL_3:
  v8 = *a1;
  v9 = *a1 + 64;
  v27 = *(v9 + 16 * ((*(*a1 + 44) >> 23) & 1));
  mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::getValue(&v27);
  v27 = v29;
  v28 = 0x600000000;
  v26 = *(v9 + 16 * ((*(v8 + 44) >> 23) & 1));
  Value = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::getValue(&v26);
  if (v11)
  {
    v12 = Value;
    v13 = 8 * v11;
    do
    {
      v26 = *v12;
      Name = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::getName(&v26);
      v16 = mlir::StringAttr::getValue(&Name);
      v18 = v17;
      v19 = llvm::StringMapImpl::hash(v16, v17);
      Key = llvm::StringMapImpl::FindKey(a2, v16, v18, v19);
      if (Key == -1 || Key == *(a2 + 8))
      {
        v14 = v26;
        v15 = v28;
        if (v28 >= HIDWORD(v28))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v28 + 1, 8);
          v15 = v28;
        }

        *(v27 + v15) = v14;
        LODWORD(v28) = v28 + 1;
      }

      ++v12;
      v13 -= 8;
    }

    while (v13);
  }

  v21 = v27;
  v22 = v28;
  Context = mlir::Attribute::getContext((v8 + 24));
  *(v9 + 16 * ((*(v8 + 44) >> 23) & 1)) = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(Context, v21, v22);
  if (v27 != v29)
  {
    free(v27);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  AttrDictionary = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  Value = mlir::StringAttr::getValue(&AttrDictionary);
  (*(*a2 + 88))(a2, Value, v7);
  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if ((v8[3] - v9) > 2)
  {
    *(v9 + 2) = 32;
    *v9 = 14880;
    v8[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v8, " : ", 3uLL);
  }

  AttrDictionary = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10);
  v10 = mlir::TypeAttr::getValue(&AttrDictionary);
  (*(*a2 + 32))(a2, v10);
  v11 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v12 = *(v11 + 88);
  if (v12)
  {
    v13 = *(v11 + 96);
    v14 = sub_1002518CC(v12);
    if (v14)
    {
      v15 = v14;
      v16 = (*(*a2 + 16))(a2);
      v17 = v16[4];
      if ((v16[3] - v17) > 2)
      {
        *(v17 + 2) = 32;
        *v17 = 15648;
        v16[4] += 3;
        if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
        {
          goto LABEL_11;
        }
      }

      else
      {
        llvm::raw_ostream::write(v16, " = ", 3uLL);
        if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
        {
LABEL_11:
          (*(*a2 + 48))(a2, v15);
          goto LABEL_14;
        }
      }

      mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(a2, v15);
    }
  }

LABEL_14:
  v36 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v36)
  {
    mlir::IntegerAttr::getValue(&v36, &AttrDictionary);
    if (v38 >= 0x41)
    {
      v18 = AttrDictionary;
    }

    else
    {
      v18 = &AttrDictionary;
    }

    v19 = *v18;
    if (v38 >= 0x41 && AttrDictionary)
    {
      operator delete[]();
    }

    v20 = (*(*a2 + 16))(a2);
    v21 = v20[4];
    if (v20[3] - v21 > 0xCuLL)
    {
      qmemcpy(v21, " alignInBits(", 13);
      v20[4] += 13;
    }

    else
    {
      llvm::raw_ostream::write(v20, " alignInBits(", 0xDuLL);
    }

    v22 = (*(*a2 + 16))(a2);
    llvm::raw_ostream::operator<<(v22, v19);
    v23 = (*(*a2 + 16))(a2);
    v24 = v23[4];
    if (v23[3] == v24)
    {
      llvm::raw_ostream::write(v23, ")", 1uLL);
    }

    else
    {
      *v24 = 41;
      ++v23[4];
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v25 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v27 = v26;
  v36 = *(*(*(*this + 6) + 96) + 8);
  AttrDictionary = mlir::StringAttr::getValue(&v36);
  v38 = v28;
  v35 = *(*(*(*this + 6) + 96) + 24);
  v39 = mlir::StringAttr::getValue(&v35);
  v40 = v29;
  v34 = **(*(*this + 6) + 96);
  v41 = mlir::StringAttr::getValue(&v34);
  v42 = v30;
  v33 = *(*(*(*this + 6) + 96) + 16);
  v43 = mlir::StringAttr::getValue(&v33);
  v44 = v31;
  return (*(*a2 + 200))(a2, v25, v27, &AttrDictionary, 4);
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::parse(mlir::ODIE::Compiler::CoreML::MemberOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v14 = 0;
  v15 = 0;
  if ((sub_1002782F8(this) & 1) == 0 || ((*(*this + 104))(this) & 1) == 0 || ((*(*this + 536))(this, &v14) & 1) == 0)
  {
    return 0;
  }

  mlir::NamedAttribute::NamedAttribute(&v16, *(*(*(a2 + 1) + 96) + 8), v15);
  mlir::NamedAttrList::push_back(a2 + 112, v16, v17);
  v5 = *(*(*(a2 + 1) + 96) + 16);
  v6 = mlir::TypeAttr::get(v14);
  mlir::NamedAttribute::NamedAttribute(&v16, v5, v6);
  mlir::NamedAttrList::push_back(a2 + 112, v16, v17);
  if ((*(*this + 144))(this))
  {
    v13[0] = 0;
    v13[1] = 0;
    if ((mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(this, v13) & 1) == 0)
    {
      return 0;
    }

    mlir::NamedAttribute::NamedAttribute(&v16, *(*(*(a2 + 1) + 96) + 24), v13[0]);
    mlir::NamedAttrList::push_back(a2 + 112, v16, v17);
  }

  if (((*(*this + 408))(this, "alignInBits", 11) & 1) == 0)
  {
    return (*(*this + 496))(this, a2 + 112) & 1;
  }

  v16 = 0;
  if ((*(*this + 280))(this) & 1) != 0 && (sub_1001D8260(this, &v16) & 1) != 0 && ((*(*this + 296))(this))
  {
    v7 = **(*(a2 + 1) + 96);
    v8 = (*(*this + 32))(this);
    v9 = (*(*this + 32))(this);
    IntegerType = mlir::Builder::getIntegerType(v9, 64, 0);
    IntegerAttr = mlir::Builder::getIntegerAttr(v8, IntegerType, v16);
    sub_1001D8224(a2, v7, IntegerAttr);
    return (*(*this + 496))(this, a2 + 112) & 1;
  }

  return 0;
}

uint64_t sub_1001D8260(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 40))(a1);
  v16[0] = a1;
  v5 = sub_100253AD4(a1, a2, v16);
  if ((v5 & 0x100) == 0)
  {
    v14 = "expected integer value";
    v15 = 259;
    (*(*a1 + 24))(v16, a1, v4, &v14);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
    if (v16[0])
    {
      mlir::InFlightDiagnostic::report(v16);
    }

    if (v24 == 1)
    {
      if (v23 != &v24)
      {
        free(v23);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v22;
        v8 = __p;
        if (v22 != __p)
        {
          do
          {
            v7 = sub_100052FFC(v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v22 = v6;
        operator delete(v8);
      }

      v9 = v19;
      if (v19)
      {
        v10 = v20;
        v11 = v19;
        if (v20 != v19)
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
          v11 = v19;
        }

        v20 = v9;
        operator delete(v11);
      }

      if (v17 != &v18)
      {
        free(v17);
      }
    }
  }

  return v5;
}

BOOL mlir::ODIE::Compiler::CoreML::MemberOp::verify(mlir::Operation **this)
{
  v2 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v3 = *(v2 + 88);
  if (!v3)
  {
    return 1;
  }

  v4 = *(v2 + 96);
  v5 = sub_1002518CC(v3);
  if (!v5)
  {
    return 1;
  }

  v23[0] = v5;
  v23[1] = v6;
  v24 = 1;
  Type = mlir::TypedAttr::getType(v23);
  v28[0] = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10);
  if (Type == mlir::TypeAttr::getValue(v28))
  {
    return 1;
  }

  v22[16] = 257;
  mlir::OpState::emitError(this, v22, v28);
  if (v28[0])
  {
    v25 = 3;
    v26 = "default value type and member type must match";
    v27 = 45;
    v10 = &v25;
    v11 = v29;
    if (v30 >= v31)
    {
      if (v29 <= &v25 && v29 + 24 * v30 > &v25)
      {
        v21 = &v25 - v29;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
        v11 = v29;
        v10 = (v29 + v21);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
        v10 = &v25;
        v11 = v29;
      }
    }

    v12 = &v11[24 * v30];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v30;
  }

  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
  if (v28[0])
  {
    mlir::InFlightDiagnostic::report(v28);
  }

  if (v38 == 1)
  {
    if (v37 != &v38)
    {
      free(v37);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v36;
      v16 = __p;
      if (v36 != __p)
      {
        do
        {
          v15 = sub_100052FFC(v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v36 = v14;
      operator delete(v16);
    }

    v17 = v33;
    if (v33)
    {
      v18 = v34;
      v19 = v33;
      if (v34 != v33)
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
        v19 = v33;
      }

      v34 = v17;
      operator delete(v19);
    }

    if (v29 != v32)
    {
      free(v29);
    }
  }

  return v8;
}