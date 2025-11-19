BOOL mlir::IntegerAttr::getAPSInt@<W0>(mlir::IntegerAttr *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *this;
  v7 = *(*this + 24);
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(&v6, (v3 + 16));
  }

  v6 = *(v3 + 16);
  v5 = *(v3 + 8);
  result = mlir::Type::isUnsignedInteger(&v5);
  *(a2 + 8) = v7;
  *a2 = v6;
  *(a2 + 12) = result;
  return result;
}

uint64_t mlir::IntegerAttr::getBoolAttrUnchecked(uint64_t a1, unsigned int a2)
{
  v9 = a1;
  Context = mlir::Type::getContext(&v9);
  v8 = 1;
  v7 = a2;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  v10[1] = Context;
  result = mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APInt>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail18IntegerAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11IntegerAttrEJRNS1_11IntegerTypeENS_5APIntEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_, v10, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, &v9, &v7);
  if (v8 >= 0x41)
  {
    if (v7)
    {
      v6 = result;
      MEMORY[0x259C63150](v7, 0x1000C8000313F17);
      return v6;
    }
  }

  return result;
}

BOOL mlir::BoolAttr::getValue(mlir::BoolAttr *this)
{
  v1 = *this;
  v2 = *(*this + 24);
  if (v2 > 0x40)
  {
    return llvm::APInt::countLeadingZerosSlowCase((v1 + 16)) != v2;
  }

  else
  {
    return *(v1 + 16) != 0;
  }
}

BOOL mlir::BoolAttr::classof(void *a1)
{
  result = 0;
  if (a1)
  {
    if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v5[1] = v1;
      v5[2] = v2;
      v5[0] = a1[1];
      return mlir::Type::isSignlessInteger(v5, 1);
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

{
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t mlir::DenseElementsAttr::AttributeElementIterator::operator*(void *a1)
{
  v97 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  __dst = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&__dst);
  v4 = ElementType;
  v5 = *(*ElementType + 136);
  if (ElementType && v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v34 = a1[1];
    v35 = *(v2 + 32);
    v36 = *(v2 + 24);
    __dst = *(v2 + 8);
    v37 = mlir::ShapedType::getElementType(&__dst);
    DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v37);
    if (v36)
    {
      v39 = 0;
    }

    else
    {
      v39 = v34;
    }

    if (DenseElementBitWidth == 1)
    {
      v40 = (*(v35 + (v39 >> 3)) >> (v39 & 7)) & 1;
      DWORD2(__dst) = 1;
      *&__dst = v40;
    }

    else
    {
      DWORD2(__dst) = DenseElementBitWidth;
      if (DenseElementBitWidth >= 0x41)
      {
        llvm::APInt::initSlowCase(&__dst);
      }

      *&__dst = 0;
      if (DenseElementBitWidth)
      {
        v41 = ((DenseElementBitWidth - (DenseElementBitWidth != 0)) >> 3) + 1;
      }

      else
      {
        v41 = 0;
      }

      if (v41)
      {
        memmove(&__dst, (v35 + ((((DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) & 0xFFFFFFFFFFFFFFF8) * v39) >> 3)), v41);
      }
    }

    result = mlir::IntegerAttr::get(v4, &__dst);
    if (DWORD2(__dst) >= 0x41 && __dst)
    {
      v42 = result;
      v43 = __dst;
LABEL_73:
      MEMORY[0x259C63150](v43, 0x1000C8000313F17);
      return v42;
    }
  }

  else
  {
    if (v5 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      v81 = ElementType;
      if (ElementType)
      {
        v22 = a1[1];
        v23 = *(v2 + 32);
        v24 = *(v2 + 24);
        __dst = *(v2 + 8);
        v25 = mlir::ShapedType::getElementType(&__dst);
        v26 = mlir::detail::getDenseElementBitWidth(v25);
        FloatSemantics = mlir::FloatType::getFloatSemantics(&v81);
        *&__dst = v23;
        *(&__dst + 1) = v24;
        v85 = v22;
        v86 = v26;
        v87 = FloatSemantics;
        llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&__dst, v89);
        *&v75 = v4;
        Context = mlir::Type::getContext(&v75);
        AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
        v91 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
        v92 = Context;
        ParametricStorageTypeImpl = mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERKNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, &v91, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v75, v89);
        v31 = *(&v89[0] + 1);
        if (llvm::APFloatBase::PPCDoubleDouble(ParametricStorageTypeImpl) != v31)
        {
          v32 = (v89 + 8);
LABEL_57:
          llvm::detail::IEEEFloat::~IEEEFloat(v32);
          return ParametricStorageTypeImpl;
        }

        v32 = (v89 + 8);
        goto LABEL_88;
      }
    }

    if (v5 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v44 = ElementType;
    }

    else
    {
      v44 = 0;
    }

    v77 = v44;
    if (v44)
    {
      v45 = mlir::ComplexType::getElementType(&v77);
      v46 = a1[1];
      v47 = *(v2 + 24);
      *&v75 = *(v2 + 32);
      *(&v75 + 1) = v47;
      *&v76 = v46;
      __dst = *(v2 + 8);
      *&__dst = mlir::ShapedType::getElementType(&__dst);
      v48 = mlir::ComplexType::getElementType(&__dst);
      *(&v76 + 1) = mlir::detail::getDenseElementBitWidth(v48);
      if (*(*v45 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        *&__dst = v45;
        v49 = mlir::FloatType::getFloatSemantics(&__dst);
        v89[0] = v75;
        v89[1] = v76;
        v90 = v49;
        mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(v89, &v91);
        mlir::DenseElementsAttr::ComplexFloatElementIterator::mapElement(&v91, v89, &__dst);
        if (v94 >= 0x41)
        {
          v50 = v93;
          if (v93)
          {
            v50 = MEMORY[0x259C63150](v93, 0x1000C8000313F17);
          }
        }

        if (v92 >= 0x41)
        {
          v50 = v91;
          if (v91)
          {
            v50 = MEMORY[0x259C63150](v91, 0x1000C8000313F17);
          }
        }

        v51 = *(&__dst + 1);
        v52 = llvm::APFloatBase::PPCDoubleDouble(v50);
        if (v52 == v51)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(&v92, (&__dst + 8));
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat(&v92, (&__dst + 8));
        }

        v78 = v45;
        v56 = mlir::Type::getContext(&v78);
        v57 = mlir::MLIRContext::getAttributeUniquer(v56);
        v81 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
        v82 = v56;
        v58 = mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(v57, _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERKNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, &v81, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v78, &v91);
        if (v52 == v92)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v92);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v92);
        }

        if (v52 == v88[0])
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(&v92, v88);
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat(&v92, v88);
        }

        v78 = v45;
        v59 = mlir::Type::getContext(&v78);
        v60 = mlir::MLIRContext::getAttributeUniquer(v59);
        v81 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
        v82 = v59;
        v61 = mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(v60, _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERKNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, &v81, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v78, &v91);
        if (v52 == v92)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v92);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v92);
        }

        v62 = mlir::Type::getContext(&v77);
        v83[0] = v58;
        v83[1] = v61;
        v63 = mlir::MLIRContext::getAttributeUniquer(v62);
        v95 = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
        v96 = v62;
        v91 = _ZN4llvm12function_refIFvPN4mlir6detail16ArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9ArrayAttrEJNS_8ArrayRefINS1_9AttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
        v92 = &v95;
        v81 = v83;
        v82 = 2;
        v64 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(v83, &__dst);
        v65 = HIDWORD(v64) ^ 0xFF51AFD7ED558CCDLL;
        v66 = 0x9DDFEA08EB382D69 * ((8 * v64 + 8) ^ v65);
        v78 = &v81;
        v79 = &v91;
        v80 = &v81;
        ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(v63, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v65 ^ (v66 >> 47) ^ v66)) >> 32) >> 15) ^ (-348639895 * (v65 ^ (v66 >> 47) ^ v66))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v80, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v78);
        if (v52 == v88[0])
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(v88);
          v32 = (&__dst + 8);
          if (v52 != *(&__dst + 1))
          {
            goto LABEL_57;
          }
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(v88);
          v32 = (&__dst + 8);
          if (v52 != *(&__dst + 1))
          {
            goto LABEL_57;
          }
        }

LABEL_88:
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v32);
        return ParametricStorageTypeImpl;
      }

      mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v75, &__dst);
      DWORD2(v89[0]) = DWORD2(__dst);
      if (DWORD2(__dst) > 0x40)
      {
        llvm::APInt::initSlowCase(v89, &__dst);
      }

      *&v89[0] = __dst;
      v67 = mlir::IntegerAttr::get(v45, v89);
      if (DWORD2(v89[0]) >= 0x41 && *&v89[0])
      {
        MEMORY[0x259C63150](*&v89[0], 0x1000C8000313F17);
      }

      DWORD2(v89[0]) = v86;
      if (v86 > 0x40)
      {
        llvm::APInt::initSlowCase(v89, &v85);
      }

      *&v89[0] = v85;
      v68 = mlir::IntegerAttr::get(v45, v89);
      if (DWORD2(v89[0]) >= 0x41 && *&v89[0])
      {
        MEMORY[0x259C63150](*&v89[0], 0x1000C8000313F17);
      }

      v69 = mlir::Type::getContext(&v77);
      v95 = v67;
      v96 = v68;
      v70 = mlir::MLIRContext::getAttributeUniquer(v69);
      v78 = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
      v79 = v69;
      *&v89[0] = _ZN4llvm12function_refIFvPN4mlir6detail16ArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9ArrayAttrEJNS_8ArrayRefINS1_9AttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
      *(&v89[0] + 1) = &v78;
      v91 = &v95;
      v92 = 2;
      v71 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(&v95, &v97);
      v72 = HIDWORD(v71) ^ 0xFF51AFD7ED558CCDLL;
      v73 = 0x9DDFEA08EB382D69 * ((8 * v71 + 8) ^ v72);
      v82 = v89;
      v83[0] = &v91;
      v81 = &v91;
      result = mlir::StorageUniquer::getParametricStorageTypeImpl(v70, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v72 ^ (v73 >> 47) ^ v73)) >> 32) >> 15) ^ (-348639895 * (v72 ^ (v73 >> 47) ^ v73))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v83, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v81);
      if (v86 >= 0x41 && v85)
      {
        v74 = result;
        MEMORY[0x259C63150](v85, 0x1000C8000313F17);
        result = v74;
      }

      if (DWORD2(__dst) >= 0x41 && __dst)
      {
        v42 = result;
        v43 = __dst;
        goto LABEL_73;
      }
    }

    else
    {
      v53 = *(v2 + 32);
      if ((*(v2 + 24) & 1) == 0)
      {
        v53 += 2 * a1[1];
      }

      LOWORD(v87) = 261;
      v55 = *v53;
      v54 = v53[1];
      *&__dst = v55;
      *(&__dst + 1) = v54;
      return mlir::StringAttr::get(&__dst, ElementType);
    }
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
  a1[3] = mlir::detail::getDenseElementBitWidth(ElementType);
  return a1;
}

{
  v4 = *(a2 + 24);
  *a1 = *(a2 + 32);
  a1[1] = v4;
  a1[2] = a3;
  v7 = *(a2 + 8);
  ElementType = mlir::ShapedType::getElementType(&v7);
  a1[3] = mlir::detail::getDenseElementBitWidth(ElementType);
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

llvm::detail::IEEEFloat *llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*@<X0>(llvm::APFloatBase *a1@<X0>, uint64_t a2@<X8>)
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
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a2 + 8), v11);
  }

LABEL_12:
  result = llvm::detail::IEEEFloat::IEEEFloat((a2 + 8), v11, &v12);
  if (v13 >= 0x41)
  {
    result = v12;
    if (v12)
    {
      return MEMORY[0x259C63150](v12, 0x1000C8000313F17);
    }
  }

  return result;
}

void *mlir::DenseElementsAttr::ComplexIntElementIterator::ComplexIntElementIterator(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  *a1 = *(a2 + 32);
  a1[1] = v4;
  a1[2] = a3;
  v7 = *(a2 + 8);
  *&v7 = mlir::ShapedType::getElementType(&v7);
  ElementType = mlir::ComplexType::getElementType(&v7);
  a1[3] = mlir::detail::getDenseElementBitWidth(ElementType);
  return a1;
}

{
  v4 = *(a2 + 24);
  *a1 = *(a2 + 32);
  a1[1] = v4;
  a1[2] = a3;
  v7 = *(a2 + 8);
  *&v7 = mlir::ShapedType::getElementType(&v7);
  ElementType = mlir::ComplexType::getElementType(&v7);
  a1[3] = mlir::detail::getDenseElementBitWidth(ElementType);
  return a1;
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
      return MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

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

unint64_t mlir::detail::getDenseElementBitWidth(uint64_t a1)
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
    DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(ElementType);
    return (2 * (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0))) & 0xFFFFFFFFFFFFFFF0;
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

uint64_t mlir::detail::DenseArrayAttrImpl<BOOL>::get(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = mlir::IntegerType::get(a1, 1, 0);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v14[1] = a1;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v18[1] = v14;
  v17[0] = v6;
  v17[1] = a3;
  v17[2] = a2;
  v17[3] = a3;
  v8 = (v6 >> 4) ^ (v6 >> 9);
  v9 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a2, a2 + a3);
  v10 = __ROR8__(a3 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v8 - 0x9AE16A3B2F90404FLL * v9 + 24;
  v11 = (__ROR8__(0xB492B66FBE98F273 * v8 - a3, 43) - 0x3C5A37A36834CED9 * a3 + __ROR8__((0x9AE16A3B2F90404FLL * v9) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v10;
  v12 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * v11) >> 47) ^ (0x9DDFEA08EB382D69 * v11));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

void mlir::detail::DenseArrayAttrImpl<BOOL>::print(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2);
  v3 = v2[4];
  if (v2[3] != v3)
  {
    *v3 = 91;
    ++v2[4];
    mlir::detail::DenseArrayAttrImpl<BOOL>::printWithoutBraces();
  }

  llvm::raw_ostream::write(v2, "[", 1uLL);
  mlir::detail::DenseArrayAttrImpl<BOOL>::printWithoutBraces();
}

void mlir::detail::DenseArrayAttrImpl<BOOL>::print(int a1, llvm::raw_ostream *this)
{
  v2 = *(this + 4);
  if (*(this + 3) != v2)
  {
    *v2 = 91;
    ++*(this + 4);
    mlir::detail::DenseArrayAttrImpl<BOOL>::printWithoutBraces();
  }

  llvm::raw_ostream::write(this, "[", 1uLL);
  mlir::detail::DenseArrayAttrImpl<BOOL>::printWithoutBraces();
}

void *mlir::detail::DenseArrayAttrImpl<BOOL>::printWithoutBraces(void *result, llvm::raw_ostream *this)
{
  v2 = *(*result + 32);
  if (v2)
  {
    v4 = *(*result + 24);
    if (*v4)
    {
      v5 = "true";
    }

    else
    {
      v5 = "false";
    }

    if (*v4)
    {
      v6 = 4;
    }

    else
    {
      v6 = 5;
    }

    v7 = *(this + 4);
    if (v6 <= *(this + 3) - v7)
    {
      result = memcpy(v7, v5, v6);
      *(this + 4) += v6;
      v8 = v2 - 1;
      if (!v8)
      {
        return result;
      }
    }

    else
    {
      result = llvm::raw_ostream::write(this, v5, v6);
      v8 = v2 - 1;
      if (!v8)
      {
        return result;
      }
    }

    v9 = v4 + 1;
    do
    {
      while (1)
      {
        v10 = *(this + 4);
        if (*(this + 3) - v10 > 1uLL)
        {
          *v10 = 8236;
          v11 = (*(this + 4) + 2);
          *(this + 4) = v11;
        }

        else
        {
          llvm::raw_ostream::write(this, ", ", 2uLL);
          v11 = *(this + 4);
        }

        v12 = *v9 ? "true" : "false";
        v13 = *v9 ? 4 : 5;
        if (v13 <= *(this + 3) - v11)
        {
          break;
        }

        result = llvm::raw_ostream::write(this, v12, v13);
        ++v9;
        if (!--v8)
        {
          return result;
        }
      }

      result = memcpy(v11, v12, v13);
      *(this + 4) += v13;
      ++v9;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlir::detail::DenseArrayAttrImpl<BOOL>::parse(mlir::AsmParser *a1)
{
  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 336))(a1) & 1) == 0)
  {
    mlir::detail::DenseArrayAttrImpl<BOOL>::parseWithoutBraces();
  }

  Context = mlir::AsmParser::getContext(a1);
  v3 = mlir::IntegerType::get(Context, 1, 0);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v11[1] = Context;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v15[1] = v11;
  v5 = (v3 >> 4) ^ (v3 >> 9);
  v14[0] = v3;
  memset(&v14[1], 0, 24);
  v6 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(0, 0);
  v7 = 0xB492B66FBE98F273 * v5 - 0x9AE16A3B2F90404FLL * v6 - 0x1A58D393752DFE12;
  v8 = (__ROR8__((0x9AE16A3B2F90404FLL * v6) ^ 0xFF51AFD7ED558CCDLL, 30) + __ROR8__(0xB492B66FBE98F273 * v5, 43)) ^ v7;
  v9 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * v8) >> 47) ^ (0x9DDFEA08EB382D69 * v8));
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v9 >> 47) ^ v9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::detail::DenseArrayAttrImpl<BOOL>::parseWithoutBraces(mlir::AsmParser *a1)
{
  v24[5] = *MEMORY[0x277D85DE8];
  v22 = v24;
  v23 = xmmword_2573695B0;
  v17 = a1;
  v18 = &v22;
  ParametricStorageTypeImpl = 0;
  if ((*(*a1 + 392))())
  {
    Context = mlir::AsmParser::getContext(a1);
    v4 = v22;
    v5 = v23;
    v6 = mlir::IntegerType::get(Context, 1, 0);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
    v14[1] = Context;
    v21[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
    v21[1] = v14;
    v17 = v6;
    v18 = v5;
    v19 = v4;
    v20 = v5;
    v8 = (v6 >> 4) ^ (v6 >> 9);
    v9 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(v4, v5 + v4);
    v10 = __ROR8__(v5 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v8 - 0x9AE16A3B2F90404FLL * v9 + 24;
    v11 = (__ROR8__(0xB492B66FBE98F273 * v8 - v5, 43) - 0x3C5A37A36834CED9 * v5 + __ROR8__((0x9AE16A3B2F90404FLL * v9) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v10;
    v12 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * v11) >> 47) ^ (0x9DDFEA08EB382D69 * v11));
    v15[0] = &v17;
    v15[1] = v21;
    v16 = &v17;
    ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
  }

  if (v22 != v24)
  {
    free(v22);
  }

  return ParametricStorageTypeImpl;
}

BOOL mlir::detail::DenseArrayAttrImpl<BOOL>::classof(void *a1)
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
    return v5 && mlir::IntegerType::getWidth(v6) == 1 && mlir::IntegerType::getSignedness(v6) == 0;
  }

  return result;
}

uint64_t mlir::detail::DenseArrayAttrImpl<signed char>::get(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = mlir::IntegerType::get(a1, 8, 0);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v14[1] = a1;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v18[1] = v14;
  v17[0] = v6;
  v17[1] = a3;
  v17[2] = a2;
  v17[3] = a3;
  v8 = (v6 >> 4) ^ (v6 >> 9);
  v9 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a2, a2 + a3);
  v10 = __ROR8__(a3 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v8 - 0x9AE16A3B2F90404FLL * v9 + 24;
  v11 = (__ROR8__(0xB492B66FBE98F273 * v8 - a3, 43) - 0x3C5A37A36834CED9 * a3 + __ROR8__((0x9AE16A3B2F90404FLL * v9) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v10;
  v12 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * v11) >> 47) ^ (0x9DDFEA08EB382D69 * v11));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

void mlir::detail::DenseArrayAttrImpl<signed char>::print(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2);

  mlir::detail::DenseArrayAttrImpl<signed char>::print();
}

void *mlir::detail::DenseArrayAttrImpl<signed char>::print(void *result, llvm::raw_ostream *this)
{
  v3 = result;
  v4 = *(this + 4);
  if (*(this + 3) == v4)
  {
    result = llvm::raw_ostream::write(this, "[", 1uLL);
    v5 = *v3;
    v6 = *(*v3 + 32);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *v4 = 91;
    ++*(this + 4);
    v5 = *result;
    v6 = *(*result + 32);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  v7 = *(v5 + 24);
  result = llvm::raw_ostream::operator<<(this, *v7);
  v8 = v6 - 1;
  if (v8)
  {
    v9 = v7 + 1;
    do
    {
      while (1)
      {
        v11 = *(this + 4);
        if (*(this + 3) - v11 > 1uLL)
        {
          break;
        }

        llvm::raw_ostream::write(this, ", ", 2uLL);
        v10 = *v9++;
        result = llvm::raw_ostream::operator<<(this, v10);
        if (!--v8)
        {
          goto LABEL_10;
        }
      }

      *v11 = 8236;
      *(this + 4) += 2;
      v12 = *v9++;
      result = llvm::raw_ostream::operator<<(this, v12);
      --v8;
    }

    while (v8);
  }

LABEL_10:
  v13 = *(this + 4);
  if (*(this + 3) == v13)
  {

    return llvm::raw_ostream::write(this, "]", 1uLL);
  }

  else
  {
    *v13 = 93;
    ++*(this + 4);
  }

  return result;
}

llvm::raw_ostream *mlir::detail::DenseArrayAttrImpl<signed char>::printWithoutBraces(llvm::raw_ostream *result, llvm::raw_ostream *a2)
{
  v2 = *(*result + 32);
  if (v2)
  {
    v4 = *(*result + 24);
    result = llvm::raw_ostream::operator<<(a2, *v4);
    v5 = v2 - 1;
    if (v5)
    {
      v6 = v4 + 1;
      do
      {
        while (1)
        {
          v8 = *(a2 + 4);
          if (*(a2 + 3) - v8 > 1uLL)
          {
            break;
          }

          llvm::raw_ostream::write(a2, ", ", 2uLL);
          v7 = *v6++;
          result = llvm::raw_ostream::operator<<(a2, v7);
          if (!--v5)
          {
            return result;
          }
        }

        *v8 = 8236;
        *(a2 + 4) += 2;
        v9 = *v6++;
        result = llvm::raw_ostream::operator<<(a2, v9);
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t mlir::detail::DenseArrayAttrImpl<signed char>::parse(mlir::AsmParser *a1)
{
  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 336))(a1) & 1) == 0)
  {
    mlir::detail::DenseArrayAttrImpl<signed char>::parseWithoutBraces();
  }

  Context = mlir::AsmParser::getContext(a1);
  v3 = mlir::IntegerType::get(Context, 8, 0);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v11[1] = Context;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v15[1] = v11;
  v5 = (v3 >> 4) ^ (v3 >> 9);
  v14[0] = v3;
  memset(&v14[1], 0, 24);
  v6 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(0, 0);
  v7 = 0xB492B66FBE98F273 * v5 - 0x9AE16A3B2F90404FLL * v6 - 0x1A58D393752DFE12;
  v8 = (__ROR8__((0x9AE16A3B2F90404FLL * v6) ^ 0xFF51AFD7ED558CCDLL, 30) + __ROR8__(0xB492B66FBE98F273 * v5, 43)) ^ v7;
  v9 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * v8) >> 47) ^ (0x9DDFEA08EB382D69 * v8));
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v9 >> 47) ^ v9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::detail::DenseArrayAttrImpl<signed char>::parseWithoutBraces(mlir::AsmParser *a1)
{
  v24[5] = *MEMORY[0x277D85DE8];
  v22 = v24;
  v23 = xmmword_2573695B0;
  v17 = a1;
  v18 = &v22;
  ParametricStorageTypeImpl = 0;
  if ((*(*a1 + 392))())
  {
    Context = mlir::AsmParser::getContext(a1);
    v4 = v22;
    v5 = v23;
    v6 = mlir::IntegerType::get(Context, 8, 0);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
    v14[1] = Context;
    v21[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
    v21[1] = v14;
    v17 = v6;
    v18 = v5;
    v19 = v4;
    v20 = v5;
    v8 = (v6 >> 4) ^ (v6 >> 9);
    v9 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(v4, v5 + v4);
    v10 = __ROR8__(v5 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v8 - 0x9AE16A3B2F90404FLL * v9 + 24;
    v11 = (__ROR8__(0xB492B66FBE98F273 * v8 - v5, 43) - 0x3C5A37A36834CED9 * v5 + __ROR8__((0x9AE16A3B2F90404FLL * v9) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v10;
    v12 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * v11) >> 47) ^ (0x9DDFEA08EB382D69 * v11));
    v15[0] = &v17;
    v15[1] = v21;
    v16 = &v17;
    ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
  }

  if (v22 != v24)
  {
    free(v22);
  }

  return ParametricStorageTypeImpl;
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

uint64_t mlir::detail::DenseArrayAttrImpl<short>::get(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = mlir::IntegerType::get(a1, 16, 0);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v14[1] = a1;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v18[1] = v14;
  v17[0] = v6;
  v17[1] = a3;
  v17[2] = a2;
  v17[3] = 2 * a3;
  v8 = (v6 >> 4) ^ (v6 >> 9);
  v9 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a2, a2 + 2 * a3);
  v10 = __ROR8__(a3 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v8 - 0x9AE16A3B2F90404FLL * v9 + 24;
  v11 = (__ROR8__(0xB492B66FBE98F273 * v8 - a3, 43) - 0x3C5A37A36834CED9 * a3 + __ROR8__((0x9AE16A3B2F90404FLL * v9) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v10;
  v12 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * v11) >> 47) ^ (0x9DDFEA08EB382D69 * v11));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

void mlir::detail::DenseArrayAttrImpl<short>::print(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2);

  mlir::detail::DenseArrayAttrImpl<short>::print();
}

void *mlir::detail::DenseArrayAttrImpl<short>::print(void *result, llvm::raw_ostream *this)
{
  v3 = result;
  v4 = *(this + 4);
  if (*(this + 3) == v4)
  {
    result = llvm::raw_ostream::write(this, "[", 1uLL);
    v5 = *v3;
    v6 = *(*v3 + 32);
    if (v6 < 2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *v4 = 91;
    ++*(this + 4);
    v5 = *result;
    v6 = *(*result + 32);
    if (v6 < 2)
    {
      goto LABEL_10;
    }
  }

  v7 = *(v5 + 24);
  v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
  result = llvm::raw_ostream::operator<<(this, *v7);
  v9 = v8 - 2;
  if (v9)
  {
    v10 = v7 + 1;
    do
    {
      while (1)
      {
        v12 = *(this + 4);
        if (*(this + 3) - v12 <= 1uLL)
        {
          break;
        }

        *v12 = 8236;
        *(this + 4) += 2;
        v11 = *v10++;
        result = llvm::raw_ostream::operator<<(this, v11);
        v9 -= 2;
        if (!v9)
        {
          goto LABEL_10;
        }
      }

      llvm::raw_ostream::write(this, ", ", 2uLL);
      v13 = *v10++;
      result = llvm::raw_ostream::operator<<(this, v13);
      v9 -= 2;
    }

    while (v9);
  }

LABEL_10:
  v14 = *(this + 4);
  if (*(this + 3) == v14)
  {

    return llvm::raw_ostream::write(this, "]", 1uLL);
  }

  else
  {
    *v14 = 93;
    ++*(this + 4);
  }

  return result;
}

llvm::raw_ostream *mlir::detail::DenseArrayAttrImpl<short>::printWithoutBraces(llvm::raw_ostream *result, llvm::raw_ostream *a2)
{
  v2 = *(*result + 32);
  if (v2 >= 2)
  {
    v4 = *(*result + 24);
    v5 = v2 & 0xFFFFFFFFFFFFFFFELL;
    result = llvm::raw_ostream::operator<<(a2, *v4);
    v6 = v5 - 2;
    if (v6)
    {
      v7 = v4 + 1;
      do
      {
        while (1)
        {
          v9 = *(a2 + 4);
          if (*(a2 + 3) - v9 <= 1uLL)
          {
            break;
          }

          *v9 = 8236;
          *(a2 + 4) += 2;
          v8 = *v7++;
          result = llvm::raw_ostream::operator<<(a2, v8);
          v6 -= 2;
          if (!v6)
          {
            return result;
          }
        }

        llvm::raw_ostream::write(a2, ", ", 2uLL);
        v10 = *v7++;
        result = llvm::raw_ostream::operator<<(a2, v10);
        v6 -= 2;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t mlir::detail::DenseArrayAttrImpl<short>::parse(mlir::AsmParser *a1)
{
  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 336))(a1) & 1) == 0)
  {
    mlir::detail::DenseArrayAttrImpl<short>::parseWithoutBraces();
  }

  Context = mlir::AsmParser::getContext(a1);
  v3 = mlir::IntegerType::get(Context, 16, 0);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v11[1] = Context;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v15[1] = v11;
  v5 = (v3 >> 4) ^ (v3 >> 9);
  v14[0] = v3;
  memset(&v14[1], 0, 24);
  v6 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(0, 0);
  v7 = 0xB492B66FBE98F273 * v5 - 0x9AE16A3B2F90404FLL * v6 - 0x1A58D393752DFE12;
  v8 = (__ROR8__((0x9AE16A3B2F90404FLL * v6) ^ 0xFF51AFD7ED558CCDLL, 30) + __ROR8__(0xB492B66FBE98F273 * v5, 43)) ^ v7;
  v9 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * v8) >> 47) ^ (0x9DDFEA08EB382D69 * v8));
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v9 >> 47) ^ v9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::detail::DenseArrayAttrImpl<short>::parseWithoutBraces(mlir::AsmParser *a1)
{
  v24[5] = *MEMORY[0x277D85DE8];
  v22 = v24;
  v23 = xmmword_2573934B0;
  v17 = a1;
  v18 = &v22;
  ParametricStorageTypeImpl = 0;
  if ((*(*a1 + 392))())
  {
    Context = mlir::AsmParser::getContext(a1);
    v4 = v22;
    v5 = v23;
    v6 = mlir::IntegerType::get(Context, 16, 0);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
    v14[1] = Context;
    v21[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
    v21[1] = v14;
    v17 = v6;
    v18 = v5;
    v19 = v4;
    v20 = 2 * v5;
    v8 = (v6 >> 4) ^ (v6 >> 9);
    v9 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(v4, v4 + 2 * v5);
    v10 = __ROR8__(v5 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v8 - 0x9AE16A3B2F90404FLL * v9 + 24;
    v11 = (__ROR8__(0xB492B66FBE98F273 * v8 - v5, 43) - 0x3C5A37A36834CED9 * v5 + __ROR8__((0x9AE16A3B2F90404FLL * v9) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v10;
    v12 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * v11) >> 47) ^ (0x9DDFEA08EB382D69 * v11));
    v15[0] = &v17;
    v15[1] = v21;
    v16 = &v17;
    ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
  }

  if (v22 != v24)
  {
    free(v22);
  }

  return ParametricStorageTypeImpl;
}

BOOL mlir::detail::DenseArrayAttrImpl<short>::classof(void *a1)
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
    return v5 && mlir::IntegerType::getWidth(v6) == 16 && mlir::IntegerType::getSignedness(v6) == 0;
  }

  return result;
}

uint64_t mlir::detail::DenseArrayAttrImpl<int>::get(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = mlir::IntegerType::get(a1, 32, 0);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v14[1] = a1;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v18[1] = v14;
  v17[0] = v6;
  v17[1] = a3;
  v17[2] = a2;
  v17[3] = 4 * a3;
  v8 = (v6 >> 4) ^ (v6 >> 9);
  v9 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a2, a2 + 4 * a3);
  v10 = __ROR8__(a3 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v8 - 0x9AE16A3B2F90404FLL * v9 + 24;
  v11 = (__ROR8__(0xB492B66FBE98F273 * v8 - a3, 43) - 0x3C5A37A36834CED9 * a3 + __ROR8__((0x9AE16A3B2F90404FLL * v9) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v10;
  v12 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * v11) >> 47) ^ (0x9DDFEA08EB382D69 * v11));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

void mlir::detail::DenseArrayAttrImpl<int>::print(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2);

  mlir::detail::DenseArrayAttrImpl<int>::print();
}

void *mlir::detail::DenseArrayAttrImpl<int>::print(void *result, llvm::raw_ostream *this)
{
  v3 = result;
  v4 = *(this + 4);
  if (*(this + 3) == v4)
  {
    result = llvm::raw_ostream::write(this, "[", 1uLL);
    v5 = *v3;
    v6 = *(*v3 + 32);
    if (v6 < 4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *v4 = 91;
    ++*(this + 4);
    v5 = *result;
    v6 = *(*result + 32);
    if (v6 < 4)
    {
      goto LABEL_10;
    }
  }

  v7 = *(v5 + 24);
  v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
  result = llvm::raw_ostream::operator<<(this, *v7);
  v9 = v8 - 4;
  if (v9)
  {
    v10 = v7 + 1;
    do
    {
      while (1)
      {
        v12 = *(this + 4);
        if (*(this + 3) - v12 <= 1uLL)
        {
          break;
        }

        *v12 = 8236;
        *(this + 4) += 2;
        v11 = *v10++;
        result = llvm::raw_ostream::operator<<(this, v11);
        v9 -= 4;
        if (!v9)
        {
          goto LABEL_10;
        }
      }

      llvm::raw_ostream::write(this, ", ", 2uLL);
      v13 = *v10++;
      result = llvm::raw_ostream::operator<<(this, v13);
      v9 -= 4;
    }

    while (v9);
  }

LABEL_10:
  v14 = *(this + 4);
  if (*(this + 3) == v14)
  {

    return llvm::raw_ostream::write(this, "]", 1uLL);
  }

  else
  {
    *v14 = 93;
    ++*(this + 4);
  }

  return result;
}

llvm::raw_ostream *mlir::detail::DenseArrayAttrImpl<int>::printWithoutBraces(llvm::raw_ostream *result, llvm::raw_ostream *a2)
{
  v2 = *(*result + 32);
  if (v2 >= 4)
  {
    v4 = *(*result + 24);
    v5 = v2 & 0xFFFFFFFFFFFFFFFCLL;
    result = llvm::raw_ostream::operator<<(a2, *v4);
    v6 = v5 - 4;
    if (v6)
    {
      v7 = v4 + 1;
      do
      {
        while (1)
        {
          v9 = *(a2 + 4);
          if (*(a2 + 3) - v9 <= 1uLL)
          {
            break;
          }

          *v9 = 8236;
          *(a2 + 4) += 2;
          v8 = *v7++;
          result = llvm::raw_ostream::operator<<(a2, v8);
          v6 -= 4;
          if (!v6)
          {
            return result;
          }
        }

        llvm::raw_ostream::write(a2, ", ", 2uLL);
        v10 = *v7++;
        result = llvm::raw_ostream::operator<<(a2, v10);
        v6 -= 4;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t mlir::detail::DenseArrayAttrImpl<int>::parse(mlir::AsmParser *a1)
{
  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 336))(a1) & 1) == 0)
  {
    mlir::detail::DenseArrayAttrImpl<int>::parseWithoutBraces();
  }

  Context = mlir::AsmParser::getContext(a1);
  v3 = mlir::IntegerType::get(Context, 32, 0);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v11[1] = Context;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v15[1] = v11;
  v5 = (v3 >> 4) ^ (v3 >> 9);
  v14[0] = v3;
  memset(&v14[1], 0, 24);
  v6 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(0, 0);
  v7 = 0xB492B66FBE98F273 * v5 - 0x9AE16A3B2F90404FLL * v6 - 0x1A58D393752DFE12;
  v8 = (__ROR8__((0x9AE16A3B2F90404FLL * v6) ^ 0xFF51AFD7ED558CCDLL, 30) + __ROR8__(0xB492B66FBE98F273 * v5, 43)) ^ v7;
  v9 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * v8) >> 47) ^ (0x9DDFEA08EB382D69 * v8));
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v9 >> 47) ^ v9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::detail::DenseArrayAttrImpl<int>::parseWithoutBraces(mlir::AsmParser *a1)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v22 = v24;
  v23 = 0xC00000000;
  v17 = a1;
  v18 = &v22;
  ParametricStorageTypeImpl = 0;
  if ((*(*a1 + 392))())
  {
    Context = mlir::AsmParser::getContext(a1);
    v4 = v22;
    v5 = v23;
    v6 = mlir::IntegerType::get(Context, 32, 0);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
    v14[1] = Context;
    v21[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
    v21[1] = v14;
    v17 = v6;
    v18 = v5;
    v19 = v4;
    v20 = 4 * v5;
    v8 = (v6 >> 4) ^ (v6 >> 9);
    v9 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(v4, v4 + 4 * v5);
    v10 = __ROR8__(v5 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v8 - 0x9AE16A3B2F90404FLL * v9 + 24;
    v11 = (__ROR8__(0xB492B66FBE98F273 * v8 - v5, 43) - 0x3C5A37A36834CED9 * v5 + __ROR8__((0x9AE16A3B2F90404FLL * v9) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v10;
    v12 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * v11) >> 47) ^ (0x9DDFEA08EB382D69 * v11));
    v15[0] = &v17;
    v15[1] = v21;
    v16 = &v17;
    ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
  }

  if (v22 != v24)
  {
    free(v22);
  }

  return ParametricStorageTypeImpl;
}

BOOL mlir::detail::DenseArrayAttrImpl<int>::classof(void *a1)
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
    return v5 && mlir::IntegerType::getWidth(v6) == 32 && mlir::IntegerType::getSignedness(v6) == 0;
  }

  return result;
}

uint64_t mlir::detail::DenseArrayAttrImpl<long long>::get(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = mlir::IntegerType::get(a1, 64, 0);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v14[1] = a1;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v18[1] = v14;
  v17[0] = v6;
  v17[1] = a3;
  v17[2] = a2;
  v17[3] = 8 * a3;
  v8 = (v6 >> 4) ^ (v6 >> 9);
  v9 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a2, &a2[a3]);
  v10 = __ROR8__(a3 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v8 - 0x9AE16A3B2F90404FLL * v9 + 24;
  v11 = (__ROR8__(0xB492B66FBE98F273 * v8 - a3, 43) - 0x3C5A37A36834CED9 * a3 + __ROR8__((0x9AE16A3B2F90404FLL * v9) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v10;
  v12 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * v11) >> 47) ^ (0x9DDFEA08EB382D69 * v11));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

void mlir::detail::DenseArrayAttrImpl<long long>::print(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2);

  mlir::detail::DenseArrayAttrImpl<long long>::print();
}

void *mlir::detail::DenseArrayAttrImpl<long long>::print(void *result, llvm::raw_ostream *this)
{
  v3 = result;
  v4 = *(this + 4);
  if (*(this + 3) == v4)
  {
    result = llvm::raw_ostream::write(this, "[", 1uLL);
    v5 = *v3;
    v6 = *(*v3 + 32);
    if (v6 < 8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *v4 = 91;
    ++*(this + 4);
    v5 = *result;
    v6 = *(*result + 32);
    if (v6 < 8)
    {
      goto LABEL_10;
    }
  }

  v7 = *(v5 + 24);
  v8 = v6 & 0xFFFFFFFFFFFFFFF8;
  result = llvm::raw_ostream::operator<<(this, *v7);
  v9 = v8 - 8;
  if (v9)
  {
    v10 = v7 + 1;
    do
    {
      while (1)
      {
        v12 = *(this + 4);
        if (*(this + 3) - v12 <= 1uLL)
        {
          break;
        }

        *v12 = 8236;
        *(this + 4) += 2;
        v11 = *v10++;
        result = llvm::raw_ostream::operator<<(this, v11);
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_10;
        }
      }

      llvm::raw_ostream::write(this, ", ", 2uLL);
      v13 = *v10++;
      result = llvm::raw_ostream::operator<<(this, v13);
      v9 -= 8;
    }

    while (v9);
  }

LABEL_10:
  v14 = *(this + 4);
  if (*(this + 3) == v14)
  {

    return llvm::raw_ostream::write(this, "]", 1uLL);
  }

  else
  {
    *v14 = 93;
    ++*(this + 4);
  }

  return result;
}

llvm::raw_ostream *mlir::detail::DenseArrayAttrImpl<long long>::printWithoutBraces(llvm::raw_ostream *result, llvm::raw_ostream *a2)
{
  v2 = *(*result + 32);
  if (v2 >= 8)
  {
    v4 = *(*result + 24);
    v5 = v2 & 0xFFFFFFFFFFFFFFF8;
    result = llvm::raw_ostream::operator<<(a2, *v4);
    v6 = v5 - 8;
    if (v6)
    {
      v7 = v4 + 1;
      do
      {
        while (1)
        {
          v9 = *(a2 + 4);
          if (*(a2 + 3) - v9 <= 1uLL)
          {
            break;
          }

          *v9 = 8236;
          *(a2 + 4) += 2;
          v8 = *v7++;
          result = llvm::raw_ostream::operator<<(a2, v8);
          v6 -= 8;
          if (!v6)
          {
            return result;
          }
        }

        llvm::raw_ostream::write(a2, ", ", 2uLL);
        v10 = *v7++;
        result = llvm::raw_ostream::operator<<(a2, v10);
        v6 -= 8;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t mlir::detail::DenseArrayAttrImpl<long long>::parse(mlir::AsmParser *a1)
{
  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 336))(a1) & 1) == 0)
  {
    mlir::detail::DenseArrayAttrImpl<long long>::parseWithoutBraces();
  }

  Context = mlir::AsmParser::getContext(a1);
  v3 = mlir::IntegerType::get(Context, 64, 0);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v11[1] = Context;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v15[1] = v11;
  v5 = (v3 >> 4) ^ (v3 >> 9);
  v14[0] = v3;
  memset(&v14[1], 0, 24);
  v6 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(0, 0);
  v7 = 0xB492B66FBE98F273 * v5 - 0x9AE16A3B2F90404FLL * v6 - 0x1A58D393752DFE12;
  v8 = (__ROR8__((0x9AE16A3B2F90404FLL * v6) ^ 0xFF51AFD7ED558CCDLL, 30) + __ROR8__(0xB492B66FBE98F273 * v5, 43)) ^ v7;
  v9 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * v8) >> 47) ^ (0x9DDFEA08EB382D69 * v8));
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v9 >> 47) ^ v9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::detail::DenseArrayAttrImpl<long long>::parseWithoutBraces(mlir::AsmParser *a1)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v22 = v24;
  v23 = 0x600000000;
  v17 = a1;
  v18 = &v22;
  ParametricStorageTypeImpl = 0;
  if ((*(*a1 + 392))())
  {
    Context = mlir::AsmParser::getContext(a1);
    v4 = v22;
    v5 = v23;
    v6 = mlir::IntegerType::get(Context, 64, 0);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
    v14[1] = Context;
    v21[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
    v21[1] = v14;
    v17 = v6;
    v18 = v5;
    v19 = v4;
    v20 = 8 * v5;
    v8 = (v6 >> 4) ^ (v6 >> 9);
    v9 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(v4, &v4[v5]);
    v10 = __ROR8__(v5 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v8 - 0x9AE16A3B2F90404FLL * v9 + 24;
    v11 = (__ROR8__(0xB492B66FBE98F273 * v8 - v5, 43) - 0x3C5A37A36834CED9 * v5 + __ROR8__((0x9AE16A3B2F90404FLL * v9) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v10;
    v12 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * v11) >> 47) ^ (0x9DDFEA08EB382D69 * v11));
    v15[0] = &v17;
    v15[1] = v21;
    v16 = &v17;
    ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
  }

  if (v22 != v24)
  {
    free(v22);
  }

  return ParametricStorageTypeImpl;
}

BOOL mlir::detail::DenseArrayAttrImpl<long long>::classof(void *a1)
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
    return v5 && mlir::IntegerType::getWidth(v6) == 64 && mlir::IntegerType::getSignedness(v6) == 0;
  }

  return result;
}

uint64_t mlir::detail::DenseArrayAttrImpl<float>::get(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3)
{
  v6 = mlir::Float32Type::get(a1, a2);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v14[1] = a1;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v18[1] = v14;
  v17[0] = v6;
  v17[1] = a3;
  v17[2] = a2;
  v17[3] = 4 * a3;
  v8 = (v6 >> 4) ^ (v6 >> 9);
  v9 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a2, a2 + 4 * a3);
  v10 = __ROR8__(a3 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v8 - 0x9AE16A3B2F90404FLL * v9 + 24;
  v11 = (__ROR8__(0xB492B66FBE98F273 * v8 - a3, 43) - 0x3C5A37A36834CED9 * a3 + __ROR8__((0x9AE16A3B2F90404FLL * v9) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v10;
  v12 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * v11) >> 47) ^ (0x9DDFEA08EB382D69 * v11));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

void mlir::detail::DenseArrayAttrImpl<float>::print(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2);

  mlir::detail::DenseArrayAttrImpl<float>::print();
}

void *mlir::detail::DenseArrayAttrImpl<float>::print(void *result, llvm::raw_ostream *this)
{
  v3 = result;
  v4 = *(this + 4);
  if (*(this + 3) == v4)
  {
    result = llvm::raw_ostream::write(this, "[", 1uLL);
    v5 = *v3;
    v6 = *(*v3 + 32);
    if (v6 < 4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *v4 = 91;
    ++*(this + 4);
    v5 = *result;
    v6 = *(*result + 32);
    if (v6 < 4)
    {
      goto LABEL_10;
    }
  }

  v7 = *(v5 + 24);
  v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
  result = llvm::raw_ostream::operator<<(this, *v7);
  v9 = v8 - 4;
  if (v9)
  {
    v10 = v7 + 1;
    do
    {
      while (1)
      {
        v12 = *(this + 4);
        if (*(this + 3) - v12 <= 1uLL)
        {
          break;
        }

        *v12 = 8236;
        *(this + 4) += 2;
        v11 = *v10++;
        result = llvm::raw_ostream::operator<<(this, v11);
        v9 -= 4;
        if (!v9)
        {
          goto LABEL_10;
        }
      }

      llvm::raw_ostream::write(this, ", ", 2uLL);
      v13 = *v10++;
      result = llvm::raw_ostream::operator<<(this, v13);
      v9 -= 4;
    }

    while (v9);
  }

LABEL_10:
  v14 = *(this + 4);
  if (*(this + 3) == v14)
  {

    return llvm::raw_ostream::write(this, "]", 1uLL);
  }

  else
  {
    *v14 = 93;
    ++*(this + 4);
  }

  return result;
}

llvm::raw_ostream *mlir::detail::DenseArrayAttrImpl<float>::printWithoutBraces(llvm::raw_ostream *result, llvm::raw_ostream *a2)
{
  v2 = *(*result + 32);
  if (v2 >= 4)
  {
    v4 = *(*result + 24);
    v5 = v2 & 0xFFFFFFFFFFFFFFFCLL;
    result = llvm::raw_ostream::operator<<(a2, *v4);
    v6 = v5 - 4;
    if (v6)
    {
      v7 = v4 + 1;
      do
      {
        while (1)
        {
          v9 = *(a2 + 4);
          if (*(a2 + 3) - v9 <= 1uLL)
          {
            break;
          }

          *v9 = 8236;
          *(a2 + 4) += 2;
          v8 = *v7++;
          result = llvm::raw_ostream::operator<<(a2, v8);
          v6 -= 4;
          if (!v6)
          {
            return result;
          }
        }

        llvm::raw_ostream::write(a2, ", ", 2uLL);
        v10 = *v7++;
        result = llvm::raw_ostream::operator<<(a2, v10);
        v6 -= 4;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t mlir::detail::DenseArrayAttrImpl<float>::parse(mlir::AsmParser *a1)
{
  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 336))(a1) & 1) == 0)
  {
    mlir::detail::DenseArrayAttrImpl<float>::parseWithoutBraces();
  }

  Context = mlir::AsmParser::getContext(a1);
  v4 = mlir::Float32Type::get(Context, v3);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v12[1] = Context;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v16[1] = v12;
  v6 = (v4 >> 4) ^ (v4 >> 9);
  v15[0] = v4;
  memset(&v15[1], 0, 24);
  v7 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(0, 0);
  v8 = 0xB492B66FBE98F273 * v6 - 0x9AE16A3B2F90404FLL * v7 - 0x1A58D393752DFE12;
  v9 = (__ROR8__((0x9AE16A3B2F90404FLL * v7) ^ 0xFF51AFD7ED558CCDLL, 30) + __ROR8__(0xB492B66FBE98F273 * v6, 43)) ^ v8;
  v10 = 0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * v9) >> 47) ^ (0x9DDFEA08EB382D69 * v9));
  v13[0] = v15;
  v13[1] = v16;
  v14 = v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v10 >> 47) ^ v10), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

uint64_t mlir::detail::DenseArrayAttrImpl<float>::parseWithoutBraces(mlir::AsmParser *a1)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v23 = v25;
  v24 = 0xC00000000;
  v18 = a1;
  v19 = &v23;
  ParametricStorageTypeImpl = 0;
  if ((*(*a1 + 392))())
  {
    Context = mlir::AsmParser::getContext(a1);
    v4 = v23;
    v5 = v24;
    v7 = mlir::Float32Type::get(Context, v6);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v15[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
    v15[1] = Context;
    v22[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
    v22[1] = v15;
    v18 = v7;
    v19 = v5;
    v20 = v4;
    v21 = 4 * v5;
    v9 = (v7 >> 4) ^ (v7 >> 9);
    v10 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(v4, v4 + 4 * v5);
    v11 = __ROR8__(v5 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v9 - 0x9AE16A3B2F90404FLL * v10 + 24;
    v12 = (__ROR8__(0xB492B66FBE98F273 * v9 - v5, 43) - 0x3C5A37A36834CED9 * v5 + __ROR8__((0x9AE16A3B2F90404FLL * v10) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v11;
    v13 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * v12) >> 47) ^ (0x9DDFEA08EB382D69 * v12));
    v16[0] = &v18;
    v16[1] = v22;
    v17 = &v18;
    ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v13 >> 47) ^ v13), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
  }

  if (v23 != v25)
  {
    free(v23);
  }

  return ParametricStorageTypeImpl;
}

BOOL mlir::detail::DenseArrayAttrImpl<float>::classof(void *a1)
{
  result = 0;
  if (a1)
  {
    if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v5[1] = v1;
      v5[2] = v2;
      v5[0] = a1[1];
      return mlir::Type::isF32(v5);
    }
  }

  return result;
}

uint64_t mlir::detail::DenseArrayAttrImpl<double>::get(mlir::Float64Type *a1, mlir::MLIRContext *a2, uint64_t a3)
{
  v6 = mlir::Float64Type::get(a1, a2);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v14[1] = a1;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v18[1] = v14;
  v17[0] = v6;
  v17[1] = a3;
  v17[2] = a2;
  v17[3] = 8 * a3;
  v8 = (v6 >> 4) ^ (v6 >> 9);
  v9 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a2, a2 + 8 * a3);
  v10 = __ROR8__(a3 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v8 - 0x9AE16A3B2F90404FLL * v9 + 24;
  v11 = (__ROR8__(0xB492B66FBE98F273 * v8 - a3, 43) - 0x3C5A37A36834CED9 * a3 + __ROR8__((0x9AE16A3B2F90404FLL * v9) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v10;
  v12 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * v11) >> 47) ^ (0x9DDFEA08EB382D69 * v11));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

void mlir::detail::DenseArrayAttrImpl<double>::print(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2);

  mlir::detail::DenseArrayAttrImpl<double>::print();
}

void *mlir::detail::DenseArrayAttrImpl<double>::print(void *result, llvm::raw_ostream *this)
{
  v3 = result;
  v4 = *(this + 4);
  if (*(this + 3) == v4)
  {
    result = llvm::raw_ostream::write(this, "[", 1uLL);
    v5 = *v3;
    v6 = *(*v3 + 32);
    if (v6 < 8)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *v4 = 91;
    ++*(this + 4);
    v5 = *result;
    v6 = *(*result + 32);
    if (v6 < 8)
    {
      goto LABEL_6;
    }
  }

  v7 = *(v5 + 24);
  v8 = v6 & 0xFFFFFFFFFFFFFFF8;
  v9 = *v7;
  result = llvm::raw_ostream::operator<<(this, v9);
  v10 = v8 - 8;
  if (v10)
  {
    v12 = v7 + 1;
    do
    {
      v15 = *(this + 4);
      if (*(this + 3) - v15 > 1uLL)
      {
        *v15 = 8236;
        *(this + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(this, ", ", 2uLL);
      }

      v13 = *v12++;
      v14 = v13;
      result = llvm::raw_ostream::operator<<(this, v14);
      v10 -= 8;
    }

    while (v10);
  }

LABEL_6:
  v11 = *(this + 4);
  if (*(this + 3) == v11)
  {

    return llvm::raw_ostream::write(this, "]", 1uLL);
  }

  else
  {
    *v11 = 93;
    ++*(this + 4);
  }

  return result;
}

llvm::raw_ostream *mlir::detail::DenseArrayAttrImpl<double>::printWithoutBraces(llvm::raw_ostream *result, llvm::raw_ostream *a2)
{
  v2 = *(*result + 32);
  if (v2 >= 8)
  {
    v4 = *(*result + 24);
    v5 = v2 & 0xFFFFFFFFFFFFFFF8;
    v6 = *v4;
    result = llvm::raw_ostream::operator<<(a2, v6);
    v7 = v5 - 8;
    if (v7)
    {
      v8 = v4 + 1;
      do
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

        v9 = *v8++;
        v10 = v9;
        result = llvm::raw_ostream::operator<<(a2, v10);
        v7 -= 8;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t mlir::detail::DenseArrayAttrImpl<double>::parse(mlir::AsmParser *a1)
{
  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 336))(a1) & 1) == 0)
  {
    mlir::detail::DenseArrayAttrImpl<double>::parseWithoutBraces();
  }

  Context = mlir::AsmParser::getContext(a1);
  v4 = mlir::Float64Type::get(Context, v3);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v12[1] = Context;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v16[1] = v12;
  v6 = (v4 >> 4) ^ (v4 >> 9);
  v15[0] = v4;
  memset(&v15[1], 0, 24);
  v7 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(0, 0);
  v8 = 0xB492B66FBE98F273 * v6 - 0x9AE16A3B2F90404FLL * v7 - 0x1A58D393752DFE12;
  v9 = (__ROR8__((0x9AE16A3B2F90404FLL * v7) ^ 0xFF51AFD7ED558CCDLL, 30) + __ROR8__(0xB492B66FBE98F273 * v6, 43)) ^ v8;
  v10 = 0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * v9) >> 47) ^ (0x9DDFEA08EB382D69 * v9));
  v13[0] = v15;
  v13[1] = v16;
  v14 = v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v10 >> 47) ^ v10), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

uint64_t mlir::detail::DenseArrayAttrImpl<double>::parseWithoutBraces(mlir::AsmParser *a1)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v23 = v25;
  v24 = 0x600000000;
  v18 = a1;
  v19 = &v23;
  ParametricStorageTypeImpl = 0;
  if ((*(*a1 + 392))())
  {
    Context = mlir::AsmParser::getContext(a1);
    v4 = v23;
    v5 = v24;
    v7 = mlir::Float64Type::get(Context, v6);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v15[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
    v15[1] = Context;
    v22[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
    v22[1] = v15;
    v18 = v7;
    v19 = v5;
    v20 = v4;
    v21 = 8 * v5;
    v9 = (v7 >> 4) ^ (v7 >> 9);
    v10 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(v4, &v4[v5]);
    v11 = __ROR8__(v5 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v9 - 0x9AE16A3B2F90404FLL * v10 + 24;
    v12 = (__ROR8__(0xB492B66FBE98F273 * v9 - v5, 43) - 0x3C5A37A36834CED9 * v5 + __ROR8__((0x9AE16A3B2F90404FLL * v10) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v11;
    v13 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * v12) >> 47) ^ (0x9DDFEA08EB382D69 * v12));
    v16[0] = &v18;
    v16[1] = v22;
    v17 = &v18;
    ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v13 >> 47) ^ v13), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
  }

  if (v23 != v25)
  {
    free(v23);
  }

  return ParametricStorageTypeImpl;
}

BOOL mlir::detail::DenseArrayAttrImpl<double>::classof(void *a1)
{
  result = 0;
  if (a1)
  {
    if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v5[1] = v1;
      v5[2] = v2;
      v5[0] = a1[1];
      return mlir::Type::isF64(v5);
    }
  }

  return result;
}

uint64_t mlir::DenseElementsAttr::get(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v86[4] = *MEMORY[0x277D85DE8];
  *&v71 = a1;
  *(&v71 + 1) = a2;
  ElementType = mlir::ShapedType::getElementType(&v71);
  v70 = ElementType;
  if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v7 = ElementType;
  }

  else
  {
    v7 = 0;
  }

  v73[0] = v7;
  if (v7)
  {
    v75 = mlir::ComplexType::getElementType(v73);
    isIntOrIndex = mlir::Type::isIntOrIndex(&v75);
    if (isIntOrIndex)
    {
      v75 = &v76 + 8;
      *&v76 = 0x100000000;
      if (a4 >= 2)
      {
        llvm::SmallVectorTemplateBase<std::complex<llvm::APInt>,false>::grow();
      }

      if (a4)
      {
        v11 = 8 * a4;
        do
        {
          v12 = *(*a3 + 8);
          v13 = *v12;
          v14 = v12[1];
          LODWORD(v81[0]) = *(*v12 + 24);
          if (LODWORD(v81[0]) > 0x40)
          {
            llvm::APInt::initSlowCase(&v80, (v13 + 16));
          }

          v80 = *(v13 + 16);
          LODWORD(v79[0]) = *(v14 + 24);
          if (LODWORD(v79[0]) > 0x40)
          {
            llvm::APInt::initSlowCase(&v78, (v14 + 16));
          }

          v78 = *(v14 + 16);
          DWORD2(v82) = v81[0];
          *&v82 = v80;
          v84 = v79[0];
          v83 = v78;
          if (v76 >= DWORD1(v76))
          {
            if (v75 > &v82 || v75 + 32 * v76 <= &v82)
            {
              llvm::SmallVectorTemplateBase<std::complex<llvm::APInt>,false>::grow();
            }

            llvm::SmallVectorTemplateBase<std::complex<llvm::APInt>,false>::grow();
          }

          v15 = v75 + 32 * v76;
          *(v15 + 2) = DWORD2(v82);
          *v15 = v82;
          DWORD2(v82) = 0;
          *(v15 + 6) = v84;
          *(v15 + 2) = v83;
          v84 = 0;
          LODWORD(v76) = v76 + 1;
          if (DWORD2(v82) >= 0x41 && v82)
          {
            MEMORY[0x259C63150](v82, 0x1000C8000313F17);
          }

          if (LODWORD(v79[0]) >= 0x41 && v78)
          {
            MEMORY[0x259C63150](v78, 0x1000C8000313F17);
          }

          if (LODWORD(v81[0]) >= 0x41 && v80)
          {
            MEMORY[0x259C63150](v80, 0x1000C8000313F17);
          }

          ++a3;
          v11 -= 8;
        }

        while (v11);
      }

      v16 = v75;
      v17 = v76;
      v82 = v71;
      v18 = mlir::ShapedType::getElementType(&v82);
      DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v18);
      if (DenseElementBitWidth == 1)
      {
        v20 = 0;
      }

      else
      {
        v20 = ((DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) >> 1) & 0x7FFFFFFFFFFFFFFCLL;
      }

      Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v82, *(&v82 + 1), v20, v16, 2 * v17);
      v22 = v75;
      if (v76)
      {
        v23 = -32 * v76;
        v24 = v75 + 32 * v76 - 16;
        do
        {
          if (*(v24 + 2) >= 0x41u && *v24)
          {
            MEMORY[0x259C63150](*v24, 0x1000C8000313F17);
          }

          if (*(v24 - 2) >= 0x41u)
          {
            v25 = *(v24 - 2);
            if (v25)
            {
              MEMORY[0x259C63150](v25, 0x1000C8000313F17);
            }
          }

          v24 -= 32;
          v23 += 32;
        }

        while (v23);
        v22 = v75;
      }

      if (v22 == (&v76 + 8))
      {
        return Raw;
      }

LABEL_154:
      free(v22);
      return Raw;
    }

    v75 = &v76 + 8;
    *&v76 = 0x100000000;
    if (a4 >= 2)
    {
      *&v82 = 0;
      llvm::SmallVectorBase<unsigned int>::mallocForGrow();
    }

    v26 = &v76 + 8;
    if (a4)
    {
      v27 = llvm::APFloatBase::PPCDoubleDouble(isIntOrIndex);
      v28 = 8 * a4;
      while (1)
      {
        v29 = *(*a3 + 8);
        v30 = v29[1];
        v31 = (*v29 + 24);
        if (v27 == *v31)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v81, v31);
          v32 = (v30 + 24);
          if (v27 != *(v30 + 24))
          {
LABEL_56:
            llvm::detail::IEEEFloat::IEEEFloat(v79, v32);
            if (v27 != v81[0])
            {
              goto LABEL_57;
            }

            goto LABEL_61;
          }
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat(v81, v31);
          v32 = (v30 + 24);
          if (v27 != *(v30 + 24))
          {
            goto LABEL_56;
          }
        }

        llvm::detail::DoubleAPFloat::DoubleAPFloat(v79, v32);
        if (v27 != v81[0])
        {
LABEL_57:
          llvm::detail::IEEEFloat::IEEEFloat((&v82 + 8), v81);
          if (v27 == v79[0])
          {
            goto LABEL_62;
          }

          goto LABEL_58;
        }

LABEL_61:
        llvm::detail::DoubleAPFloat::DoubleAPFloat(&v82 + 1, v81);
        if (v27 == v79[0])
        {
LABEL_62:
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v86, v79);
          goto LABEL_63;
        }

LABEL_58:
        llvm::detail::IEEEFloat::IEEEFloat(v86, v79);
LABEL_63:
        llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::push_back(&v75, &v82);
        if (v27 == v86[0])
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(v86);
          if (v27 == *(&v82 + 1))
          {
            goto LABEL_69;
          }

LABEL_65:
          llvm::detail::IEEEFloat::~IEEEFloat((&v82 + 8));
          if (v27 != v79[0])
          {
            goto LABEL_66;
          }

LABEL_70:
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(v79);
          if (v27 != v81[0])
          {
            goto LABEL_71;
          }

LABEL_53:
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(v81);
          ++a3;
          v28 -= 8;
          if (!v28)
          {
            goto LABEL_72;
          }
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(v86);
          if (v27 != *(&v82 + 1))
          {
            goto LABEL_65;
          }

LABEL_69:
          llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v82 + 8));
          if (v27 == v79[0])
          {
            goto LABEL_70;
          }

LABEL_66:
          llvm::detail::IEEEFloat::~IEEEFloat(v79);
          if (v27 == v81[0])
          {
            goto LABEL_53;
          }

LABEL_71:
          llvm::detail::IEEEFloat::~IEEEFloat(v81);
          ++a3;
          v28 -= 8;
          if (!v28)
          {
LABEL_72:
            v26 = v75;
            break;
          }
        }
      }
    }

    v33 = v76;
    v82 = v71;
    v34 = mlir::ShapedType::getElementType(&v82);
    v35 = mlir::detail::getDenseElementBitWidth(v34);
    if (v35 == 1)
    {
      v36 = 0;
    }

    else
    {
      v36 = ((v35 - (v35 != 0) + 8 * (v35 != 0)) >> 1) & 0x7FFFFFFFFFFFFFFCLL;
    }

    v37 = mlir::DenseIntOrFPElementsAttr::getRaw(v82, *(&v82 + 1), v36, v26, 2 * v33);
    Raw = v37;
    v38 = v75;
    v39 = v76;
    if (!v76)
    {
LABEL_85:
      if (v38 == (&v76 + 8))
      {
        return Raw;
      }

      v22 = v38;
      goto LABEL_154;
    }

    v40 = llvm::APFloatBase::PPCDoubleDouble(v37);
    v41 = (&v38[4 * v39 - 1] - 8);
    v42 = -64 * v39;
    while (1)
    {
      if (v40 == *v41)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v41);
        v43 = (v41 - 32);
        if (v40 != *(v41 - 4))
        {
          goto LABEL_83;
        }

LABEL_78:
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v43);
        v41 = (v41 - 64);
        v42 += 64;
        if (!v42)
        {
          goto LABEL_84;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v41);
        v43 = (v41 - 32);
        if (v40 == *(v41 - 4))
        {
          goto LABEL_78;
        }

LABEL_83:
        llvm::detail::IEEEFloat::~IEEEFloat(v43);
        v41 = (v41 - 64);
        v42 += 64;
        if (!v42)
        {
LABEL_84:
          v38 = v75;
          goto LABEL_85;
        }
      }
    }
  }

  if (mlir::Type::isIntOrIndexOrFloat(&v70))
  {
    v9 = mlir::detail::getDenseElementBitWidth(v70);
    if (v9 == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = (v9 + 8 * (v9 != 0) - (v9 != 0)) & 0xFFFFFFFFFFFFFFF8;
    }

    v44 = v10 * a4 - (v10 * a4 != 0);
    if (v10 * a4)
    {
      v45 = (v44 >> 3) + 1;
    }

    else
    {
      v45 = v44 >> 3;
    }

    v75 = v77;
    v76 = xmmword_25738FDE0;
    if (v45)
    {
      if (v45 >= 9)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      bzero(v75, v45);
      *&v76 = v45;
    }

    LODWORD(v81[0]) = 1;
    v80 = 0;
    v53 = a4;
    if (a4)
    {
      v54 = 0;
      do
      {
        v55 = *a3;
        if (*(**a3 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          DWORD2(v82) = *(v55 + 24);
          if (DWORD2(v82) > 0x40)
          {
            llvm::APInt::initSlowCase(&v82, (v55 + 16));
          }

          *&v82 = *(v55 + 16);
          if (LODWORD(v81[0]) >= 0x41)
          {
            v9 = v80;
            if (v80)
            {
              v9 = MEMORY[0x259C63150](v80, 0x1000C8000313F17);
            }
          }

          v80 = v82;
          v59 = DWORD2(v82);
          LODWORD(v81[0]) = DWORD2(v82);
          v60 = v75;
          v69 = DWORD2(v82);
          if (DWORD2(v82) > 0x40uLL)
          {
LABEL_136:
            llvm::APInt::initSlowCase(&v68, &v80);
          }

          goto LABEL_125;
        }

        v57 = *(v55 + 24);
        v56 = (v55 + 24);
        v58 = llvm::APFloatBase::PPCDoubleDouble(v9);
        if (v58 == v57)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(&v82 + 1, v56);
          if (v58 != *(&v82 + 1))
          {
LABEL_112:
            llvm::detail::IEEEFloat::bitcastToAPInt(&v82 + 1, &v78);
            if (LODWORD(v81[0]) < 0x41)
            {
              goto LABEL_123;
            }

            goto LABEL_121;
          }
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat((&v82 + 8), v56);
          if (v58 != *(&v82 + 1))
          {
            goto LABEL_112;
          }
        }

        llvm::detail::DoubleAPFloat::bitcastToAPInt((&v82 + 8), &v78);
        if (LODWORD(v81[0]) < 0x41)
        {
          goto LABEL_123;
        }

LABEL_121:
        if (v80)
        {
          MEMORY[0x259C63150](v80, 0x1000C8000313F17);
        }

LABEL_123:
        v80 = v78;
        LODWORD(v81[0]) = v79[0];
        LODWORD(v79[0]) = 0;
        if (v58 == *(&v82 + 1))
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v82 + 8));
          v60 = v75;
          v69 = v81[0];
          v59 = LODWORD(v81[0]);
          if (LODWORD(v81[0]) > 0x40uLL)
          {
            goto LABEL_136;
          }
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat((&v82 + 8));
          v60 = v75;
          v69 = v81[0];
          v59 = LODWORD(v81[0]);
          if (LODWORD(v81[0]) > 0x40uLL)
          {
            goto LABEL_136;
          }
        }

LABEL_125:
        v68 = v80;
        if (v59 == 1)
        {
          v63 = 1 << (v54 & 7);
          v64 = v54 >> 3;
          if (v68 == 1)
          {
            v60[v64] |= v63;
LABEL_139:
            if (v69 >= 0x41)
            {
              goto LABEL_140;
            }

            goto LABEL_105;
          }

          v60[v64] &= ~v63;
          if (v69 >= 0x41)
          {
            goto LABEL_140;
          }
        }

        else
        {
          if (v59)
          {
            v61 = ((v59 - (v59 != 0)) >> 3) + 1;
          }

          else
          {
            v61 = (v59 - (v59 != 0)) >> 3;
          }

          if (!v61)
          {
            goto LABEL_139;
          }

          if (v59 >= 0x41)
          {
            v62 = v68;
          }

          else
          {
            v62 = &v68;
          }

          v9 = memmove(&v60[v54 >> 3], v62, v61);
          if (v69 >= 0x41)
          {
LABEL_140:
            v9 = v68;
            if (v68)
            {
              v9 = MEMORY[0x259C63150](v68, 0x1000C8000313F17);
            }
          }
        }

LABEL_105:
        v54 += v10;
        ++a3;
        --v53;
      }

      while (v53);
    }

    if (a4 == 1 && mlir::Type::isInteger(&v70, 1))
    {
      if (*v75)
      {
        v65 = -1;
      }

      else
      {
        v65 = 0;
      }

      *v75 = v65;
    }

    Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v71, *(&v71 + 1), v75, v76);
    if (LODWORD(v81[0]) >= 0x41 && v80)
    {
      MEMORY[0x259C63150](v80, 0x1000C8000313F17);
    }

    v22 = v75;
    if (v75 != v77)
    {
      goto LABEL_154;
    }
  }

  else
  {
    v75 = &v76 + 8;
    *&v76 = 0x800000000;
    if (a4 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v46 = 0;
    if (a4)
    {
      v47 = 8 * a4;
      v46 = 0;
      do
      {
        if (v46 >= DWORD1(v76))
        {
          v67 = *(*a3 + 16);
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v75 + v46) = *(*a3 + 16);
        v46 = v76 + 1;
        LODWORD(v76) = v76 + 1;
        ++a3;
        v47 -= 8;
      }

      while (v47);
    }

    v48 = v75;
    v72 = v71;
    Context = mlir::Type::getContext(&v72);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v73[0] = &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
    v73[1] = Context;
    v80 = _ZN4llvm12function_refIFvPN4mlir6detail30DenseStringElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_23DenseStringElementsAttrEJRNS1_10ShapedTypeERNS_8ArrayRefINS_9StringRefEEEbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
    v81[0] = v73;
    mlir::detail::DenseStringElementsAttrStorage::getKey(v72, *(&v72 + 1), v48, v46, v46 == 1, &v82);
    v51 = __ROR8__(v85 + 16, 16);
    v52 = 0x9DDFEA08EB382D69 * (v51 ^ 0xFF51AFD7ED558CCDLL ^ (v82 >> 4) ^ (v82 >> 9));
    v74 = &v82;
    v78 = &v82;
    v79[0] = &v80;
    Raw = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v51 ^ (v52 >> 47) ^ v52)) >> 32) >> 15) ^ (-348639895 * (v51 ^ (v52 >> 47) ^ v52)))) ^ v85, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v74, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v78);
    v22 = v75;
    if (v75 != &v76 + 8)
    {
      goto LABEL_154;
    }
  }

  return Raw;
}

uint64_t mlir::DenseElementsAttr::get(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v10 = a1;
  v11 = a2;
  ElementType = mlir::ShapedType::getElementType(&v10);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(ElementType);
  if (DenseElementBitWidth == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) >> 1) & 0x7FFFFFFFFFFFFFFCLL;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(v10, v11, v8, a3, 2 * a4);
}

{
  v10 = a1;
  v11 = a2;
  ElementType = mlir::ShapedType::getElementType(&v10);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(ElementType);
  if (DenseElementBitWidth == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(v10, v11, v8, a3, a4);
}

void llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::push_back(unsigned int *a1, unint64_t a2)
{
  v4 = a1[2];
  v5 = *a1;
  if (v4 >= a1[3])
  {
    if (v5 > a2 || v5 + (v4 << 6) <= a2)
    {
      llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::grow();
    }

    llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::grow();
  }

  v6 = v5 + (a1[2] << 6);
  v7 = *(a2 + 8);
  v8 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v8 == v7)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((v6 + 8), (a2 + 8));
    v9 = (v6 + 40);
    v10 = (a2 + 40);
    if (v8 != *(a2 + 40))
    {
      goto LABEL_4;
    }

LABEL_6:
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, v10);
    goto LABEL_7;
  }

  llvm::detail::IEEEFloat::IEEEFloat(v6 + 8, a2 + 8);
  v9 = (v6 + 40);
  v10 = (a2 + 40);
  if (v8 == *(a2 + 40))
  {
    goto LABEL_6;
  }

LABEL_4:
  llvm::detail::IEEEFloat::IEEEFloat(v9, v10);
LABEL_7:
  ++a1[2];
}

uint64_t mlir::DenseElementsAttr::get(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v11 = a2;
  ElementType = mlir::ShapedType::getElementType(&v10);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(ElementType);
  if (DenseElementBitWidth == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) >> 1) & 0x7FFFFFFFFFFFFFFCLL;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(v10, v11, v8, a3, 2 * a4);
}

{
  v10 = a1;
  v11 = a2;
  ElementType = mlir::ShapedType::getElementType(&v10);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(ElementType);
  if (DenseElementBitWidth == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(v10, v11, v8, a3, a4);
}

uint64_t mlir::DenseElementsAttr::get(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v12 = a2;
  Context = mlir::Type::getContext(&v11);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  v13[1] = Context;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail30DenseStringElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_23DenseStringElementsAttrEJRNS1_10ShapedTypeERNS_8ArrayRefINS_9StringRefEEEbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v18[1] = v13;
  mlir::detail::DenseStringElementsAttrStorage::getKey(v11, v12, a3, a4, a4 == 1, v16);
  v8 = __ROR8__(v17 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ (v16[0] >> 4) ^ (v16[0] >> 9));
  v14[0] = v16;
  v14[1] = v18;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)))) ^ v17, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
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
  v19[0] = _ZN4llvm12function_refIFvPN4mlir6detail31DenseIntOrFPElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_24DenseIntOrFPElementsAttrEJRNS1_10ShapedTypeERNS_8ArrayRefIcEERbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v19[1] = v14;
  mlir::detail::DenseIntOrFPElementsAttrStorage::getKey(v12, v13, a3, a4, v11, v17);
  v8 = __ROR8__(v18 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ (v17[0] >> 4) ^ (v17[0] >> 9));
  v15[0] = v17;
  v15[1] = v19;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)))) ^ v18, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseIntOrFPElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseIntOrFPElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &>(llvm::function_ref<void ()(mlir::detail::DenseIntOrFPElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseIntOrFPElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseIntOrFPElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &>(llvm::function_ref<void ()(mlir::detail::DenseIntOrFPElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
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

uint64_t mlir::DenseIntOrFPElementsAttr::getRaw(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a1;
  v7 = ((32 * a5) >> 5) * a3;
  v8 = v7 - (v7 != 0);
  v27 = 32 * a5;
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

  if (a4 != a4 + 32 * a5)
  {
    v13 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v14 = 0;
    v15 = (a4 + 8);
    for (i = v27; i; i -= 32)
    {
      if (v13 == *v15)
      {
        a1 = llvm::detail::DoubleAPFloat::bitcastToAPInt(v15, &v30);
        v18 = v31;
        if (v31 != 1)
        {
LABEL_21:
          if (v18)
          {
            v21 = ((v18 - (v18 != 0)) >> 3) + 1;
          }

          else
          {
            v21 = (v18 - (v18 != 0)) >> 3;
          }

          if (v21)
          {
            if (v18 >= 0x41)
            {
              v22 = v30;
            }

            else
            {
              v22 = &v30;
            }

            a1 = memmove((v14 >> 3), v22, v21);
          }

          if (v18 >= 0x41)
          {
            a1 = v30;
            if (v30)
            {
              a1 = MEMORY[0x259C63150](v30, 0x1000C8000313F17);
            }
          }

          goto LABEL_15;
        }
      }

      else
      {
        a1 = llvm::detail::IEEEFloat::bitcastToAPInt(v15, &v30);
        v18 = v31;
        if (v31 != 1)
        {
          goto LABEL_21;
        }
      }

      v19 = 1 << (v14 & 7);
      v20 = (v14 >> 3);
      if (v30 == 1)
      {
        v17 = *v20 | v19;
      }

      else
      {
        v17 = *v20 & ~v19;
      }

      *v20 = v17;
LABEL_15:
      v14 += a3;
      v15 = (v15 + 32);
    }
  }

  if (v27 != 32)
  {
    return mlir::DenseIntOrFPElementsAttr::getRaw(v25, a2, 0, 0);
  }

  v11 = *(a4 + 8);
  v10 = (a4 + 8);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v11)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(v10, &v28);
    v12 = v29;
    if (v29 >= 0x41)
    {
LABEL_10:
      if (v28)
      {
        MEMORY[0x259C63150](v28, 0x1000C8000313F17);
      }

      return mlir::DenseIntOrFPElementsAttr::getRaw(v25, a2, 0, 0);
    }
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(v10, &v28);
    v12 = v29;
    if (v29 >= 0x41)
    {
      goto LABEL_10;
    }
  }

  if (v12 == 1)
  {
    if (MEMORY[0])
    {
      v23 = -1;
    }

    else
    {
      v23 = 0;
    }

    MEMORY[0] = v23;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(v25, a2, 0, 0);
}

BOOL mlir::DenseElementsAttr::isValidRawBuffer(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, BOOL *a5)
{
  v17[0] = a1;
  v17[1] = a2;
  ElementType = mlir::ShapedType::getElementType(v17);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(ElementType);
  if (DenseElementBitWidth == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) & 0xFFFFFFFFFFFFFFF8;
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

uint64_t mlir::DenseElementsAttr::isValidIntOrFloat(mlir::DenseElementsAttr *this, uint64_t a2, char a3, unsigned int a4)
{
  v9 = *(*this + 8);
  ElementType = mlir::ShapedType::getElementType(&v9);
  return isValidIntOrFloat(ElementType, a2, a3, a4);
}

uint64_t isValidIntOrFloat(uint64_t a1, uint64_t a2, char a3, unsigned int a4)
{
  v15 = a1;
  if (mlir::detail::getDenseElementBitWidth(a1) != 8 * a2)
  {
    return 0;
  }

  if (a3)
  {
    if (mlir::Type::isIndex(&v15))
    {
      return 1;
    }

    v13 = v15;
    if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v13 = 0;
    }

    v14 = v13;
    if (v13)
    {
      if (mlir::IntegerType::getSignedness(&v14))
      {
        return (mlir::IntegerType::getSignedness(&v14) != 1) ^ a4;
      }

      return 1;
    }

    return 0;
  }

  v8 = *(*a1 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  if (v8 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v8 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  if (v8 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v8 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v8 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

uint64_t mlir::DenseElementsAttr::isValidComplex(mlir::DenseElementsAttr *this, uint64_t a2, char a3, unsigned int a4)
{
  v9 = *(*this + 8);
  *&v9 = mlir::ShapedType::getElementType(&v9);
  ElementType = mlir::ComplexType::getElementType(&v9);
  return isValidIntOrFloat(ElementType, a2 / 2, a3, a4);
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
    DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(ElementType);
    v12 = *this;
    v19 = *(*this + 8);
    Shape = mlir::ShapedType::getShape(&v19);
    NumElements = mlir::ShapedType::getNumElements(Shape, v14);
    v16 = *(v12 + 32);
    v17 = *(v12 + 24);
    v19 = *(v12 + 8);
    *&v19 = mlir::ShapedType::getElementType(&v19);
    v18 = mlir::ComplexType::getElementType(&v19);
    result = mlir::detail::getDenseElementBitWidth(v18);
    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = 0;
    *(a2 + 24) = DenseElementBitWidth;
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

uint64_t mlir::DenseElementsAttr::getNumElements(mlir::DenseElementsAttr *this)
{
  v4 = *(*this + 8);
  Shape = mlir::ShapedType::getShape(&v4);
  return mlir::ShapedType::getNumElements(Shape, v2);
}

unint64_t mlir::DenseElementsAttr::tryGetFloatValues@<X0>(mlir::DenseElementsAttr *this@<X0>, uint64_t a2@<X8>)
{
  v38 = *(*this + 8);
  result = mlir::ShapedType::getElementType(&v38);
  v5 = *(*result + 136);
  v21 = v5 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  if (v21 && (v37 = result) != 0)
  {
    FloatSemantics = mlir::FloatType::getFloatSemantics(&v37);
    v24 = *(*this + 16);
    v36 = *(*this + 32);
    v25 = *(*this + 24);
    *&v38 = *(*this + 8);
    v23 = v38;
    *(&v38 + 1) = v24;
    ElementType = mlir::ShapedType::getElementType(&v38);
    DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(ElementType);
    v28 = *this;
    v38 = *(*this + 8);
    Shape = mlir::ShapedType::getShape(&v38);
    NumElements = mlir::ShapedType::getNumElements(Shape, v30);
    v32 = *(v28 + 32);
    v33 = *(v28 + 24);
    v38 = *(v28 + 8);
    v34 = mlir::ShapedType::getElementType(&v38);
    result = mlir::detail::getDenseElementBitWidth(v34);
    *a2 = v36;
    *(a2 + 8) = v25;
    *(a2 + 16) = 0;
    *(a2 + 24) = DenseElementBitWidth;
    *(a2 + 32) = FloatSemantics;
    *(a2 + 40) = v32;
    *(a2 + 48) = v33;
    *(a2 + 56) = NumElements;
    *(a2 + 64) = result;
    *(a2 + 72) = FloatSemantics;
    v35 = 1;
    *(a2 + 80) = v23;
    *(a2 + 88) = v24;
  }

  else
  {
    v35 = 0;
    *a2 = 0;
  }

  *(a2 + 96) = v35;
  return result;
}

unint64_t mlir::DenseElementsAttr::tryGetComplexFloatValues@<X0>(mlir::DenseElementsAttr *this@<X0>, uint64_t a2@<X8>)
{
  v40 = *(*this + 8);
  result = mlir::ShapedType::getElementType(&v40);
  if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  v39 = v5;
  if (v5)
  {
    result = mlir::ComplexType::getElementType(&v39);
    v6 = *(*result + 136);
    v22 = v6 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
    if (v22 && (v38 = result) != 0)
    {
      FloatSemantics = mlir::FloatType::getFloatSemantics(&v38);
      v25 = *(*this + 16);
      v37 = *(*this + 32);
      v26 = *(*this + 24);
      *&v40 = *(*this + 8);
      v24 = v40;
      *(&v40 + 1) = v25;
      *&v40 = mlir::ShapedType::getElementType(&v40);
      ElementType = mlir::ComplexType::getElementType(&v40);
      DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(ElementType);
      v29 = *this;
      v40 = *(*this + 8);
      Shape = mlir::ShapedType::getShape(&v40);
      NumElements = mlir::ShapedType::getNumElements(Shape, v31);
      v33 = *(v29 + 32);
      v34 = *(v29 + 24);
      v40 = *(v29 + 8);
      *&v40 = mlir::ShapedType::getElementType(&v40);
      v35 = mlir::ComplexType::getElementType(&v40);
      result = mlir::detail::getDenseElementBitWidth(v35);
      *a2 = v37;
      *(a2 + 8) = v26;
      *(a2 + 16) = 0;
      *(a2 + 24) = DenseElementBitWidth;
      *(a2 + 32) = FloatSemantics;
      *(a2 + 40) = v33;
      *(a2 + 48) = v34;
      *(a2 + 56) = NumElements;
      *(a2 + 64) = result;
      *(a2 + 72) = FloatSemantics;
      v36 = 1;
      *(a2 + 80) = v24;
      *(a2 + 88) = v25;
    }

    else
    {
      v36 = 0;
      *a2 = 0;
    }

    *(a2 + 96) = v36;
  }

  else
  {
    *a2 = 0;
    *(a2 + 96) = 0;
  }

  return result;
}

uint64_t mlir::DenseElementsAttr::reshape(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (*(result + 8) != a2)
  {
    return mlir::DenseIntOrFPElementsAttr::getRaw(a2, a3, *(result + 32), *(result + 40));
  }

  return result;
}

uint64_t mlir::DenseElementsAttr::resizeSplat(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (*(result + 8) != a2)
  {
    return mlir::DenseIntOrFPElementsAttr::getRaw(a2, a3, *(result + 32), *(result + 40));
  }

  return result;
}

uint64_t mlir::DenseElementsAttr::bitcast(uint64_t a1, uint64_t a2)
{
  *v7 = *(*a1 + 8);
  if (mlir::ShapedType::getElementType(v7) == a2)
  {
    return *a1;
  }

  LOBYTE(v8) = 0;
  v9 = 0;
  v5 = mlir::ShapedType::cloneWith(v7, &v8, a2);
  return mlir::DenseIntOrFPElementsAttr::getRaw(v5, v6, *(*a1 + 32), *(*a1 + 40));
}

uint64_t mlir::DenseIntElementsAttr::mapValues(uint64_t *a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, uint64_t, uint64_t *), uint64_t a4)
{
  v74[1] = *MEMORY[0x277D85DE8];
  v72 = v74;
  v73 = xmmword_25738FDE0;
  v67 = *(*a1 + 8);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(a2);
  NumElements = 1;
  v8 = (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) & 0xFFFFFFFFFFFFFFF8;
  if (DenseElementBitWidth == 1)
  {
    v8 = 1;
  }

  v60 = v8;
  *&v65 = mlir::ShapedType::getShape(&v67);
  *(&v65 + 1) = v9;
  v66 = 1;
  v68 = mlir::ShapedType::cloneWith(&v67, &v65, a2);
  v69 = v10;
  if ((*(*a1 + 24) & 1) == 0)
  {
    Shape = mlir::ShapedType::getShape(&v68);
    NumElements = mlir::ShapedType::getNumElements(Shape, v12);
  }

  v13 = NumElements * v60 - (NumElements * v60 != 0);
  if (NumElements * v60)
  {
    v14 = (v13 >> 3) + 1;
  }

  else
  {
    v14 = v13 >> 3;
  }

  if (v73 != v14)
  {
    if (v73 <= v14)
    {
      if (*(&v73 + 1) < v14)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      if (v14 != v73)
      {
        bzero(&v72[v73], v14 - v73);
      }
    }

    *&v73 = v14;
  }

  v15 = *a1;
  if (*(*a1 + 24) != 1)
  {
    v20 = *(v15 + 32);
    v65 = *(v15 + 8);
    ElementType = mlir::ShapedType::getElementType(&v65);
    v22 = mlir::detail::getDenseElementBitWidth(ElementType);
    v23 = *a1;
    v65 = *(*a1 + 8);
    v24 = mlir::ShapedType::getShape(&v65);
    v26 = mlir::ShapedType::getNumElements(v24, v25);
    v65 = *(v23 + 8);
    v27 = mlir::ShapedType::getElementType(&v65);
    mlir::detail::getDenseElementBitWidth(v27);
    if (!v26)
    {
      goto LABEL_113;
    }

    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = v22 - (v22 != 0);
    v32 = 8;
    if (!v22)
    {
      v32 = 0;
    }

    v33 = (v31 + v32) & 0xFFFFFFFFFFFFFFF8;
    v34 = v31 >> 3;
    if (v22)
    {
      v35 = v34 + 1;
    }

    else
    {
      v35 = v34;
    }

    v36 = v35;
    while (v22 != 1)
    {
      v64 = v22;
      if (v22 >= 0x41)
      {
        llvm::APInt::initSlowCase(&__dst);
      }

      __dst = 0;
      if (!v35)
      {
        v37 = 0;
        goto LABEL_29;
      }

      memmove(&__dst, (v20 + (v28 >> 3)), v35);
      v62 = v64;
      if (v64 > 0x40)
      {
        llvm::APInt::initSlowCase(&v61, &__dst);
      }

      v37 = __dst;
LABEL_36:
      v61 = v37;
      a3(&v65, a4, &v61);
      v38 = DWORD2(v65);
      v71 = DWORD2(v65);
      if (DWORD2(v65) > 0x40)
      {
        llvm::APInt::initSlowCase(&v70, &v65);
      }

      v70 = v65;
      if (DWORD2(v65) != 1)
      {
        if (DWORD2(v65))
        {
          v41 = ((DWORD2(v65) - (DWORD2(v65) != 0)) >> 3) + 1;
        }

        else
        {
          v41 = 0;
        }

        if (v41)
        {
          if (DWORD2(v65) >= 0x41uLL)
          {
            v42 = v70;
          }

          else
          {
            v42 = &v70;
          }

          memmove(&v72[v29 >> 3], v42, v41);
        }

        if (v38 >= 0x41 && v70)
        {
          MEMORY[0x259C63150](v70, 0x1000C8000313F17);
        }

        if (DWORD2(v65) < 0x41)
        {
          goto LABEL_57;
        }

LABEL_54:
        if (v65)
        {
          MEMORY[0x259C63150](v65, 0x1000C8000313F17);
        }

        goto LABEL_57;
      }

      v39 = 1 << (v29 & 7);
      v40 = v29 >> 3;
      if (v70 == 1)
      {
        v72[v40] |= v39;
        if (DWORD2(v65) >= 0x41)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v72[v40] &= ~v39;
        if (DWORD2(v65) >= 0x41)
        {
          goto LABEL_54;
        }
      }

LABEL_57:
      if (v62 >= 0x41 && v61)
      {
        MEMORY[0x259C63150](v61, 0x1000C8000313F17);
      }

      if (v64 >= 0x41 && __dst)
      {
        MEMORY[0x259C63150](__dst, 0x1000C8000313F17);
      }

      ++v30;
      v29 += v60;
      v28 += v33;
      v35 = v36;
      if (v26 == v30)
      {
        goto LABEL_113;
      }
    }

    v37 = (*(v20 + (v30 >> 3)) >> (v30 & 7)) & 1;
    v64 = 1;
    __dst = v37;
LABEL_29:
    v62 = v22;
    goto LABEL_36;
  }

  if (DenseElementBitWidth != 1)
  {
    v43 = *(v15 + 32);
    v65 = *(v15 + 8);
    v44 = mlir::ShapedType::getElementType(&v65);
    v45 = mlir::detail::getDenseElementBitWidth(v44);
    if (v45 == 1)
    {
      v46 = *v43 & 1;
      v64 = 1;
      __dst = v46;
    }

    else
    {
      v64 = v45;
      if (v45 >= 0x41)
      {
        llvm::APInt::initSlowCase(&__dst);
      }

      __dst = 0;
      if (v45)
      {
        v48 = ((v45 - (v45 != 0)) >> 3) + 1;
      }

      else
      {
        v48 = 0;
      }

      if (v48)
      {
        memmove(&__dst, v43, v48);
      }
    }

    a3(&v65, a4, &__dst);
    v53 = DWORD2(v65);
    v71 = DWORD2(v65);
    if (DWORD2(v65) > 0x40)
    {
      llvm::APInt::initSlowCase(&v70, &v65);
    }

    v70 = v65;
    if (DWORD2(v65) == 1)
    {
      v55 = *v72;
      if (v70 != 1)
      {
        *v72 = v55 & 0xFE;
        if (DWORD2(v65) < 0x41)
        {
          goto LABEL_110;
        }

        goto LABEL_107;
      }

      *v72 = v55 | 1;
    }

    else
    {
      if (DWORD2(v65))
      {
        v54 = ((DWORD2(v65) - (DWORD2(v65) != 0)) >> 3) + 1;
      }

      else
      {
        v54 = 0;
      }

      if (v54)
      {
        memmove(v72, &v70, v54);
      }

      if (v53 >= 0x41 && v70)
      {
        MEMORY[0x259C63150](v70, 0x1000C8000313F17);
        if (DWORD2(v65) < 0x41)
        {
          goto LABEL_110;
        }

LABEL_107:
        if (v65)
        {
          MEMORY[0x259C63150](v65, 0x1000C8000313F17);
        }

LABEL_110:
        if (v64 < 0x41)
        {
          goto LABEL_113;
        }

        v52 = __dst;
        if (!__dst)
        {
          goto LABEL_113;
        }

        goto LABEL_112;
      }
    }

    if (DWORD2(v65) < 0x41)
    {
      goto LABEL_110;
    }

    goto LABEL_107;
  }

  v16 = *(v15 + 32);
  v65 = *(v15 + 8);
  v17 = mlir::ShapedType::getElementType(&v65);
  v18 = mlir::detail::getDenseElementBitWidth(v17);
  if (v18 == 1)
  {
    v19 = (*v16 & 1);
    v71 = 1;
    v70 = v19;
  }

  else
  {
    v71 = v18;
    if (v18 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v70);
    }

    v70 = 0;
    if (v18)
    {
      v47 = ((v18 - (v18 != 0)) >> 3) + 1;
    }

    else
    {
      v47 = 0;
    }

    if (v47)
    {
      memmove(&v70, v16, v47);
    }
  }

  a3(&v65, a4, &v70);
  v49 = DWORD2(v65);
  if (DWORD2(v65) > 0x40)
  {
    v50 = llvm::APInt::countLeadingZerosSlowCase(&v65) == v49;
  }

  else
  {
    v50 = v65 == 0;
  }

  v51 = v50;
  *v72 = v51 - 1;
  if (DWORD2(v65) >= 0x41 && v65)
  {
    MEMORY[0x259C63150](v65, 0x1000C8000313F17);
  }

  if (v71 >= 0x41)
  {
    v52 = v70;
    if (v70)
    {
LABEL_112:
      MEMORY[0x259C63150](v52, 0x1000C8000313F17);
    }
  }

LABEL_113:
  result = mlir::DenseIntOrFPElementsAttr::getRaw(v68, v69, v72, v73);
  if (v72 != v74)
  {
    v57 = result;
    free(v72);
    return v57;
  }

  return result;
}

uint64_t mlir::DenseFPElementsAttr::mapValues(mlir::DenseElementsAttr *a1, uint64_t a2, void (*a3)(llvm::APFloatBase **__return_ptr, uint64_t, llvm::APFloatBase **), uint64_t a4)
{
  v61 = *MEMORY[0x277D85DE8];
  __dst = &v54;
  v53 = xmmword_25738FDE0;
  v45 = *(*a1 + 8);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(a2);
  v9 = DenseElementBitWidth;
  NumElements = 1;
  if (DenseElementBitWidth == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  *&v57 = mlir::ShapedType::getShape(&v45);
  *(&v57 + 1) = v12;
  LOBYTE(v58) = 1;
  v46 = mlir::ShapedType::cloneWith(&v45, &v57, a2);
  v47 = v13;
  if ((*(*a1 + 24) & 1) == 0)
  {
    Shape = mlir::ShapedType::getShape(&v46);
    NumElements = mlir::ShapedType::getNumElements(Shape, v15);
  }

  v16 = NumElements * v11 - (NumElements * v11 != 0);
  if (NumElements * v11)
  {
    v17 = (v16 >> 3) + 1;
  }

  else
  {
    v17 = v16 >> 3;
  }

  if (v53 != v17)
  {
    if (v53 <= v17)
    {
      if (*(&v53 + 1) < v17)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      if (v17 != v53)
      {
        bzero(__dst + v53, v17 - v53);
      }
    }

    *&v53 = v17;
  }

  if (*(*a1 + 24) != 1)
  {
    mlir::DenseElementsAttr::tryGetFloatValues(a1, &v57);
    v42 = v57;
    v43 = v58;
    v44 = v59;
    mlir::DenseElementsAttr::tryGetFloatValues(a1, &v57);
    v21 = v60;
    if (v43 == v60)
    {
LABEL_52:
      result = mlir::DenseIntOrFPElementsAttr::getRaw(v46, v47, __dst, v53);
      v32 = __dst;
      if (__dst == &v54)
      {
        return result;
      }

      goto LABEL_74;
    }

    v22 = 0;
    while (1)
    {
      v23 = llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v42, &v57);
      v24 = *(&v57 + 1);
      v25 = llvm::APFloatBase::PPCDoubleDouble(v23);
      if (v25 == v24)
      {
        llvm::detail::DoubleAPFloat::DoubleAPFloat(v56, (&v57 + 8));
      }

      else
      {
        llvm::detail::IEEEFloat::IEEEFloat(v56, (&v57 + 8));
      }

      a3(&v50, a4, &v55);
      v26 = v51;
      v49 = v51;
      if (v51 > 0x40)
      {
        llvm::APInt::initSlowCase(&v48, &v50);
      }

      v48 = v50;
      if (v51 != 1)
      {
        break;
      }

      v29 = 1 << (v22 & 7);
      v30 = v22 >> 3;
      if (v48 == 1)
      {
        *(__dst + v30) |= v29;
LABEL_43:
        if (v51 >= 0x41)
        {
          goto LABEL_44;
        }

        goto LABEL_47;
      }

      *(__dst + v30) &= ~v29;
      if (v51 >= 0x41)
      {
LABEL_44:
        if (v50)
        {
          MEMORY[0x259C63150](v50, 0x1000C8000313F17);
        }
      }

LABEL_47:
      if (v25 == v56[0])
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v56);
        if (v25 != *(&v57 + 1))
        {
          goto LABEL_51;
        }

LABEL_22:
        llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v57 + 8));
        *&v43 = v43 + 1;
        v22 += v11;
        if (v43 == v21)
        {
          goto LABEL_52;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v56);
        if (v25 == *(&v57 + 1))
        {
          goto LABEL_22;
        }

LABEL_51:
        llvm::detail::IEEEFloat::~IEEEFloat((&v57 + 8));
        *&v43 = v43 + 1;
        v22 += v11;
        if (v43 == v21)
        {
          goto LABEL_52;
        }
      }
    }

    if (v51)
    {
      v27 = ((v51 - (v51 != 0)) >> 3) + 1;
    }

    else
    {
      v27 = 0;
    }

    if (v27)
    {
      if (v51 >= 0x41uLL)
      {
        v28 = v48;
      }

      else
      {
        v28 = &v48;
      }

      memmove(__dst + (v22 >> 3), v28, v27);
    }

    if (v26 >= 0x41 && v48)
    {
      MEMORY[0x259C63150](v48, 0x1000C8000313F17);
      if (v51 >= 0x41)
      {
        goto LABEL_44;
      }

      goto LABEL_47;
    }

    goto LABEL_43;
  }

  if (v9 == 1)
  {
    mlir::DenseElementsAttr::tryGetFloatValues(a1, &v57);
    v42 = v57;
    v43 = v58;
    v44 = v59;
    llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v42, &v55);
    v18 = (a3)(&v50, a4, &v55);
    v19 = v51;
    if (v51 > 0x40)
    {
      v18 = llvm::APInt::countLeadingZerosSlowCase(&v50);
      v20 = v18 == v19;
    }

    else
    {
      v20 = v50 == 0;
    }

    v36 = v20;
    *__dst = v36 - 1;
    if (v51 >= 0x41)
    {
      v18 = v50;
      if (v50)
      {
        v18 = MEMORY[0x259C63150](v50, 0x1000C8000313F17);
      }
    }

    v37 = &v55;
    v38 = v56[0];
    if (llvm::APFloatBase::PPCDoubleDouble(v18) != v38)
    {
LABEL_73:
      llvm::detail::IEEEFloat::~IEEEFloat((v37 + 8));
      result = mlir::DenseIntOrFPElementsAttr::getRaw(v46, v47, __dst, v53);
      v32 = __dst;
      if (__dst == &v54)
      {
        return result;
      }

      goto LABEL_74;
    }

    goto LABEL_84;
  }

  mlir::DenseElementsAttr::tryGetFloatValues(a1, &v57);
  v42 = v57;
  v43 = v58;
  v44 = v59;
  llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v42, &v57);
  v33 = (a3)(&v55, a4, &v57);
  v34 = v56[0];
  v51 = v56[0];
  if (LODWORD(v56[0]) > 0x40)
  {
    llvm::APInt::initSlowCase(&v50, &v55);
  }

  v50 = v55;
  if (LODWORD(v56[0]) == 1)
  {
    v40 = *__dst;
    if (v50 != 1)
    {
      *__dst = v40 & 0xFE;
      if (LODWORD(v56[0]) < 0x41)
      {
        goto LABEL_83;
      }

      goto LABEL_80;
    }

    *__dst = v40 | 1;
  }

  else
  {
    if (LODWORD(v56[0]))
    {
      v35 = ((LODWORD(v56[0]) - (LODWORD(v56[0]) != 0)) >> 3) + 1;
    }

    else
    {
      v35 = 0;
    }

    if (v35)
    {
      v33 = memmove(__dst, &v50, v35);
    }

    if (v34 >= 0x41)
    {
      v33 = v50;
      if (v50)
      {
        v33 = MEMORY[0x259C63150](v50, 0x1000C8000313F17);
        if (LODWORD(v56[0]) < 0x41)
        {
          goto LABEL_83;
        }

        goto LABEL_80;
      }
    }
  }

  if (LODWORD(v56[0]) < 0x41)
  {
    goto LABEL_83;
  }

LABEL_80:
  v33 = v55;
  if (v55)
  {
    v33 = MEMORY[0x259C63150](v55, 0x1000C8000313F17);
  }

LABEL_83:
  v37 = &v57;
  v41 = *(&v57 + 1);
  if (llvm::APFloatBase::PPCDoubleDouble(v33) != v41)
  {
    goto LABEL_73;
  }

LABEL_84:
  llvm::detail::DoubleAPFloat::~DoubleAPFloat((v37 + 8));
  result = mlir::DenseIntOrFPElementsAttr::getRaw(v46, v47, __dst, v53);
  v32 = __dst;
  if (__dst == &v54)
  {
    return result;
  }

LABEL_74:
  v39 = result;
  free(v32);
  return v39;
}

unint64_t mlir::DenseIntOrFPElementsAttr::convertEndianOfCharForBEmachine(unint64_t this, int8x16_t *a2, char *a3, uint64_t a4)
{
  if (a3 == 64)
  {
    if (!a4)
    {
      return this;
    }

    v18 = (a4 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v18 < 3 || a2 - this < 0x20)
    {
      v22 = a2;
      v23 = this;
    }

    else
    {
      v19 = 0;
      v20 = v18 + 1;
      v21 = (v18 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v22 = &a2->i8[8 * v21];
      v23 = (this + 8 * v21);
      v24 = v21;
      v25 = this;
      do
      {
        i8 = a2[v19].i8;
        v27 = *v25;
        v28 = v25[1];
        v25 += 2;
        *i8 = v27;
        *(i8 + 1) = v28;
        v19 += 2;
        v24 -= 4;
      }

      while (v24);
      if (v20 == v21)
      {
        return this;
      }
    }

    do
    {
      v34 = *v23++;
      *v22 = v34;
      v22 += 8;
    }

    while (v23 != (this + 8 * a4));
    return this;
  }

  if (a3 == 32)
  {
    if (!a4)
    {
      return this;
    }

    v7 = (a4 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v7 < 7 || a2 - this < 0x20)
    {
      v11 = a2;
      v12 = this;
    }

    else
    {
      v8 = 0;
      v9 = v7 + 1;
      v10 = (v7 + 1) & 0x7FFFFFFFFFFFFFF8;
      v11 = &a2->i8[4 * v10];
      v12 = (this + 4 * v10);
      v13 = v10;
      v14 = this;
      do
      {
        v15 = a2[v8].i8;
        v16 = *v14;
        v17 = v14[1];
        v14 += 2;
        *v15 = v16;
        *(v15 + 1) = v17;
        v8 += 2;
        v13 -= 8;
      }

      while (v13);
      if (v9 == v10)
      {
        return this;
      }
    }

    do
    {
      v33 = *v12++;
      *v11 = v33;
      v11 += 4;
    }

    while (v12 != (this + 4 * a4));
    return this;
  }

  if (a3 != 16)
  {
    if (a3 < 8)
    {
      return this;
    }

    v29 = a3 >> 3;
    if (a3 < 0x40 || this + v29 > a2 && a2->u64 + v29 > this)
    {
      v30 = 0;
      goto LABEL_28;
    }

    if (a3 >= 0x100)
    {
      v30 = v29 & 0x1FFFFFFFFFFFFFE0;
      v48 = (v29 + this - 16);
      v49 = a2 + 1;
      v50 = v29 & 0x1FFFFFFFFFFFFFE0;
      do
      {
        v51 = vrev64q_s8(*v48);
        v52 = vrev64q_s8(v48[-1]);
        v49[-1] = vextq_s8(v51, v51, 8uLL);
        *v49 = vextq_s8(v52, v52, 8uLL);
        v48 -= 2;
        v49 += 2;
        v50 -= 32;
      }

      while (v50);
      if (v29 == v30)
      {
        return this;
      }

      if ((a3 & 0xC0) == 0)
      {
LABEL_28:
        v31 = v29 - v30;
        v32 = &a2->i8[v30];
        do
        {
          *v32++ = *(this - 1 + v31--);
        }

        while (v31);
        return this;
      }
    }

    else
    {
      v30 = 0;
    }

    v53 = v30;
    v30 = v29 & 0x1FFFFFFFFFFFFFF8;
    v54 = (v29 - v53 + this - 8);
    v55 = &a2->i8[v53];
    v56 = v53 - (v29 & 0x1FFFFFFFFFFFFFF8);
    do
    {
      v57 = *v54--;
      *v55++ = vrev64_s8(v57);
      v56 += 8;
    }

    while (v56);
    if (v29 == v30)
    {
      return this;
    }

    goto LABEL_28;
  }

  if (!a4)
  {
    return this;
  }

  v4 = (a4 - 1) & 0x7FFFFFFFFFFFFFFFLL;
  if (v4 < 3 || a2 - this < 0x20)
  {
    v35 = a2;
    v36 = this;
    goto LABEL_57;
  }

  v5 = v4 + 1;
  if (v4 < 0xF)
  {
    v6 = 0;
    goto LABEL_42;
  }

  v37 = 0;
  v6 = v5 & 0xFFFFFFFFFFFFFFF0;
  v38 = v5 & 0xFFFFFFFFFFFFFFF0;
  v39 = this;
  do
  {
    v40 = a2[v37].i8;
    v41 = *v39;
    v42 = v39[1];
    v39 += 2;
    *v40 = v41;
    *(v40 + 1) = v42;
    v37 += 2;
    v38 -= 16;
  }

  while (v38);
  if (v5 != v6)
  {
    if ((v5 & 0xC) == 0)
    {
      v36 = (this + 2 * v6);
      v35 = &a2->i8[2 * v6];
      goto LABEL_57;
    }

LABEL_42:
    v43 = 2 * (v5 & 0xFFFFFFFFFFFFFFFCLL);
    v35 = &a2->i8[v43];
    v36 = (this + v43);
    v44 = 2 * v6;
    v45 = (this + 2 * v6);
    v46 = v6 - (v5 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v47 = *v45++;
      *(a2->i64 + v44) = v47;
      v44 += 8;
      v46 += 4;
    }

    while (v46);
    if (v5 == (v5 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return this;
    }

    do
    {
LABEL_57:
      v58 = *v36++;
      *v35 = v58;
      v35 += 2;
    }

    while (v36 != (this + 2 * a4));
  }

  return this;
}

void *mlir::DenseIntOrFPElementsAttr::convertEndianOfArrayRefForBEmachine(char *a1, size_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v74[0] = a5;
  v74[1] = a6;
  Shape = mlir::ShapedType::getShape(v74);
  NumElements = mlir::ShapedType::getNumElements(Shape, v10);
  ElementType = mlir::ShapedType::getElementType(v74);
  if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v13 = ElementType;
  }

  else
  {
    v13 = 0;
  }

  v73 = v13;
  if (v13)
  {
    ElementType = mlir::ComplexType::getElementType(&v73);
    NumElements *= 2;
  }

  result = mlir::detail::getDenseElementBitWidth(ElementType);
  if (result == 1)
  {
    return memcpy(a3, a1, a2);
  }

  v15 = result + 8 * (result != 0) - (result != 0);
  v16 = v15 & 0xFFFFFFFFFFFFFFF8;
  if ((v15 & 0xFFFFFFFFFFFFFFF8) <= 8)
  {
    return memcpy(a3, a1, a2);
  }

  if (v16 == 64)
  {
    if (!NumElements)
    {
      return result;
    }

    v32 = (NumElements - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v32 < 3)
    {
      v33 = a1;
    }

    else
    {
      v33 = a1;
      if ((a3 - a1) >= 0x20)
      {
        v34 = 0;
        v35 = v32 + 1;
        v36 = v35 & 0x3FFFFFFFFFFFFFFCLL;
        v37 = &a3[v36];
        v33 = &a1[v36 * 8];
        v38 = v35 & 0x3FFFFFFFFFFFFFFCLL;
        v39 = a1;
        do
        {
          v40 = &a3[v34];
          v41 = *v39;
          v42 = v39[1];
          v39 += 2;
          *v40 = v41;
          v40[1] = v42;
          v34 += 4;
          v38 -= 4;
        }

        while (v38);
        a3 = v37;
        if (v35 == (v35 & 0x3FFFFFFFFFFFFFFCLL))
        {
          return result;
        }
      }
    }

    do
    {
      v49 = *v33;
      v33 += 8;
      *a3++ = v49;
    }

    while (v33 != &a1[8 * NumElements]);
    return result;
  }

  if (v16 == 32)
  {
    if (!NumElements)
    {
      return result;
    }

    v21 = (NumElements - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v21 < 7)
    {
      v22 = a1;
    }

    else
    {
      v22 = a1;
      if ((a3 - a1) >= 0x20)
      {
        v23 = 0;
        v24 = v21 + 1;
        v25 = 4 * (v24 & 0x7FFFFFFFFFFFFFF8);
        v26 = (a3 + v25);
        v22 = &a1[v25];
        v27 = v24 & 0x7FFFFFFFFFFFFFF8;
        v28 = a1;
        do
        {
          v29 = &a3[v23];
          v30 = *v28;
          v31 = v28[1];
          v28 += 2;
          *v29 = v30;
          v29[1] = v31;
          v23 += 4;
          v27 -= 8;
        }

        while (v27);
        a3 = v26;
        if (v24 == (v24 & 0x7FFFFFFFFFFFFFF8))
        {
          return result;
        }
      }
    }

    do
    {
      v48 = *v22;
      v22 += 4;
      *a3 = v48;
      a3 = (a3 + 4);
    }

    while (v22 != &a1[4 * NumElements]);
    return result;
  }

  if (v16 != 16)
  {
    v43 = v15 >> 3;
    if (v15 < 0x40 || (&a1[v43] > a3 ? (v44 = a3 + v43 > a1) : (v44 = 0), v44))
    {
      v45 = 0;
      goto LABEL_40;
    }

    if (v15 >= 0x100)
    {
      v45 = v43 & 0x1FFFFFFFFFFFFFE0;
      v62 = &a1[v43 - 16];
      v63 = (a3 + 2);
      v64 = v43 & 0x1FFFFFFFFFFFFFE0;
      do
      {
        v65 = vrev64q_s8(*v62);
        v66 = vrev64q_s8(v62[-1]);
        v63[-1] = vextq_s8(v65, v65, 8uLL);
        *v63 = vextq_s8(v66, v66, 8uLL);
        v62 -= 2;
        v63 += 2;
        v64 -= 32;
      }

      while (v64);
      if (v43 == v45)
      {
        return result;
      }

      if ((v15 & 0xC0) == 0)
      {
LABEL_40:
        v46 = v43 - v45;
        v47 = a3 + v45;
        do
        {
          *v47++ = a1[--v46];
        }

        while (v46);
        return result;
      }
    }

    else
    {
      v45 = 0;
    }

    v67 = v45;
    v45 = v43 & 0x1FFFFFFFFFFFFFF8;
    v68 = &a1[v43 - v67 - 8];
    v69 = (a3 + v67);
    v70 = v67 - (v43 & 0x1FFFFFFFFFFFFFF8);
    do
    {
      v71 = *v68--;
      *v69++ = vrev64_s8(v71);
      v70 += 8;
    }

    while (v70);
    if (v43 == v45)
    {
      return result;
    }

    goto LABEL_40;
  }

  if (!NumElements)
  {
    return result;
  }

  v17 = (NumElements - 1) & 0x7FFFFFFFFFFFFFFFLL;
  if (v17 < 3)
  {
    v18 = a1;
    goto LABEL_67;
  }

  v18 = a1;
  if ((a3 - a1) < 0x20)
  {
    goto LABEL_67;
  }

  v19 = v17 + 1;
  if (v17 >= 0xF)
  {
    v50 = 0;
    v20 = v19 & 0xFFFFFFFFFFFFFFF0;
    v51 = v19 & 0xFFFFFFFFFFFFFFF0;
    v52 = a1;
    do
    {
      v53 = &a3[v50];
      v54 = *v52;
      v55 = v52[1];
      v52 += 2;
      *v53 = v54;
      v53[1] = v55;
      v50 += 4;
      v51 -= 16;
    }

    while (v51);
    if (v19 == v20)
    {
      return result;
    }

    if ((v19 & 0xC) != 0)
    {
      goto LABEL_54;
    }

    v18 = &a1[2 * v20];
    a3 = (a3 + 2 * v20);
    do
    {
LABEL_67:
      v72 = *v18;
      v18 += 2;
      *a3 = v72;
      a3 = (a3 + 2);
    }

    while (v18 != &a1[2 * NumElements]);
    return result;
  }

  v20 = 0;
LABEL_54:
  v56 = 2 * (v19 & 0xFFFFFFFFFFFFFFFCLL);
  v57 = (a3 + v56);
  v18 = &a1[v56];
  v58 = 2 * v20;
  v59 = &a1[2 * v20];
  v60 = v20 - (v19 & 0xFFFFFFFFFFFFFFFCLL);
  do
  {
    v61 = *v59;
    v59 += 8;
    *(a3 + v58) = v61;
    v58 += 8;
    v60 += 4;
  }

  while (v60);
  a3 = v57;
  if (v19 != (v19 & 0xFFFFFFFFFFFFFFFCLL))
  {
    goto LABEL_67;
  }

  return result;
}

uint64_t mlir::DenseFPElementsAttr::classof(uint64_t a1)
{
  v1 = *(*a1 + 136);
  v3 = v1 != &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id || a1 == 0;
  v4 = !v3;
  if (v3)
  {
    return v4 & v1;
  }

  v13 = *(a1 + 8);
  v5 = *(*mlir::ShapedType::getElementType(&v13) + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return v4 & 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    LODWORD(v1) = 1;
    return v4 & v1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return v4 & 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    return v4 & 1;
  }

  LODWORD(v1) = 1;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
  {
    return v4 & v1;
  }

  v11 = v5 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  v12 = v5 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v11;
  return v4 & v12;
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
  v19[0] = _ZN4llvm12function_refIFvPN4mlir6detail32DenseResourceElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_25DenseResourceElementsAttrEJRNS1_10ShapedTypeERNS1_25DialectResourceBlobHandleINS1_14BuiltinDialectEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
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
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 32) >> 15) ^ (-348639895 * (v10 ^ (v11 >> 47) ^ v11)))) ^ v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseResourceElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseResourceElementsAttrStorage,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &>(llvm::function_ref<void ()(mlir::detail::DenseResourceElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseResourceElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseResourceElementsAttrStorage,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &>(llvm::function_ref<void ()(mlir::detail::DenseResourceElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

uint64_t mlir::DenseResourceElementsAttr::get(uint64_t a1, uint64_t a2, unsigned int *a3, const unsigned __int8 *a4, __int128 *a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v28 = a1;
  v29 = a2;
  *&v34[0] = mlir::Type::getContext(&v28);
  Dialect = mlir::MLIRContext::getOrLoadDialect(*&v34[0], "builtin", 7, &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::BuiltinDialect * mlir::MLIRContext::getOrLoadDialect<mlir::BuiltinDialect>(void)::{lambda(void)#1}>, v34);
  v9 = mlir::Dialect::getRegisteredInterface<mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>>(Dialect);
  v10 = v28;
  v11 = v29;
  v37 = *a5;
  v12 = *(a5 + 6);
  v38 = *(a5 + 2);
  v41 = v12;
  if (v12 >= 8)
  {
    if ((v12 & 2) != 0 && (v12 & 4) != 0)
    {
      v13 = v9;
      (*((v12 & 0xFFFFFFFFFFFFFFF8) + 8))(&v39, a5 + 24);
      (*((v41 & 0xFFFFFFFFFFFFFFF8) + 16))(a5 + 24);
      v9 = v13;
    }

    else
    {
      v39 = *(a5 + 24);
      v40 = *(a5 + 5);
    }

    *(a5 + 6) = 0;
  }

  v42 = *(a5 + 56);
  v43 = 1;
  mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>::insert(v9, a3, a4, &v37, &v26);
  *&v30 = v10;
  *(&v30 + 1) = v11;
  Context = mlir::Type::getContext(&v30);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v31[0] = &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id;
  v31[1] = Context;
  v36[0] = _ZN4llvm12function_refIFvPN4mlir6detail32DenseResourceElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_25DenseResourceElementsAttrEJRNS1_10ShapedTypeERNS1_25DialectResourceBlobHandleINS1_14BuiltinDialectEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v36[1] = v31;
  v34[0] = v30;
  v34[1] = v26;
  v35 = v27;
  v16 = 0x9DDFEA08EB382D69 * ((8 * v26 - 0xAE502812AA7333) ^ DWORD1(v26));
  v17 = 0x9DDFEA08EB382D69 * (DWORD1(v26) ^ (v16 >> 47) ^ v16);
  v18 = 0x9DDFEA08EB382D69 * (v17 ^ (v17 >> 47));
  v19 = __ROR8__(v18 + 16, 16);
  v20 = 0x9DDFEA08EB382D69 * (v19 ^ (v30 >> 4) ^ (v30 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v32[0] = v34;
  v32[1] = v36;
  v33 = v34;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v19 ^ (v20 >> 47) ^ v20)) >> 32) >> 15) ^ (-348639895 * (v19 ^ (v20 >> 47) ^ v20)))) ^ v18, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseResourceElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseResourceElementsAttrStorage,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &>(llvm::function_ref<void ()(mlir::detail::DenseResourceElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v33, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseResourceElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseResourceElementsAttrStorage,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &>(llvm::function_ref<void ()(mlir::detail::DenseResourceElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v32);
  if (v43 == 1 && v41 >= 8)
  {
    v22 = (v41 & 2) != 0 ? &v39 : v39;
    v23 = result;
    (*(v41 & 0xFFFFFFFFFFFFFFF8))(v22, v37, *(&v37 + 1), v38);
    result = v23;
    v24 = v41;
    if (v41 >= 8)
    {
      if ((v41 & 4) != 0)
      {
        if ((v41 & 2) != 0)
        {
          v25 = &v39;
        }

        else
        {
          v25 = v39;
        }

        (*((v41 & 0xFFFFFFFFFFFFFFF8) + 16))(v25);
        result = v23;
      }

      if ((v24 & 2) == 0)
      {
        llvm::deallocate_buffer(v39, *(&v39 + 1));
      }
    }
  }

  return result;
}

void mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>::insert(uint64_t a1@<X0>, unsigned int *a2@<X1>, const unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
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

  mlir::DialectResourceBlobManager::insert<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>(v8, v9, a2, a3, &v18, a5);
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
        llvm::deallocate_buffer(v20, *(&v20 + 1));
      }
    }
  }
}

uint64_t mlir::detail::DenseResourceElementsAttrBase<BOOL>::get(uint64_t a1, uint64_t a2, unsigned int *a3, const unsigned __int8 *a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = *a5;
  v5 = *(a5 + 48);
  v17 = *(a5 + 16);
  v20 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 2) != 0 && (v5 & 4) != 0)
    {
      v6 = a2;
      v7 = a1;
      v8 = a4;
      v9 = a3;
      v10 = a5;
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 8))(&v18, a5 + 24);
      (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v10 + 24);
      a5 = v10;
      a1 = v7;
      a2 = v6;
      a3 = v9;
      a4 = v8;
    }

    else
    {
      v18 = *(a5 + 24);
      v19 = *(a5 + 40);
    }

    *(a5 + 48) = 0;
  }

  v21 = *(a5 + 56);
  v11 = mlir::DenseResourceElementsAttr::get(a1, a2, a3, a4, &v16);
  if (v20 >= 8)
  {
    v12 = (v20 & 2) != 0 ? &v18 : v18;
    (*(v20 & 0xFFFFFFFFFFFFFFF8))(v12, v16, *(&v16 + 1), v17);
    v13 = v20;
    if (v20 >= 8)
    {
      if ((v20 & 4) != 0)
      {
        if ((v20 & 2) != 0)
        {
          v14 = &v18;
        }

        else
        {
          v14 = v18;
        }

        (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v14);
      }

      if ((v13 & 2) == 0)
      {
        llvm::deallocate_buffer(v18, *(&v18 + 1));
      }
    }
  }

  return v11;
}

uint64_t mlir::detail::DenseResourceElementsAttrBase<BOOL>::tryGetAsArrayRef@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 24);
  if (*(v2 + 80) == 1)
  {
    v4 = *(v2 + 16);
    v3 = *(v2 + 24);
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

BOOL mlir::detail::DenseResourceElementsAttrBase<BOOL>::classof(void *a1)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  v3 = v1;
  if (!v1)
  {
    return 0;
  }

  ElementType = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getElementType(&v3);
  return mlir::Type::isSignlessInteger(&ElementType, 1);
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getElementType(void **a1)
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
      llvm::isa<mlir::ElementsAttr,mlir::Attribute>();
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

uint64_t mlir::detail::DenseResourceElementsAttrBase<signed char>::get(uint64_t a1, uint64_t a2, unsigned int *a3, const unsigned __int8 *a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = *a5;
  v5 = *(a5 + 48);
  v17 = *(a5 + 16);
  v20 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 2) != 0 && (v5 & 4) != 0)
    {
      v6 = a2;
      v7 = a1;
      v8 = a4;
      v9 = a3;
      v10 = a5;
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 8))(&v18, a5 + 24);
      (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v10 + 24);
      a5 = v10;
      a1 = v7;
      a2 = v6;
      a3 = v9;
      a4 = v8;
    }

    else
    {
      v18 = *(a5 + 24);
      v19 = *(a5 + 40);
    }

    *(a5 + 48) = 0;
  }

  v21 = *(a5 + 56);
  v11 = mlir::DenseResourceElementsAttr::get(a1, a2, a3, a4, &v16);
  if (v20 >= 8)
  {
    v12 = (v20 & 2) != 0 ? &v18 : v18;
    (*(v20 & 0xFFFFFFFFFFFFFFF8))(v12, v16, *(&v16 + 1), v17);
    v13 = v20;
    if (v20 >= 8)
    {
      if ((v20 & 4) != 0)
      {
        if ((v20 & 2) != 0)
        {
          v14 = &v18;
        }

        else
        {
          v14 = v18;
        }

        (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v14);
      }

      if ((v13 & 2) == 0)
      {
        llvm::deallocate_buffer(v18, *(&v18 + 1));
      }
    }
  }

  return v11;
}

uint64_t mlir::detail::DenseResourceElementsAttrBase<signed char>::tryGetAsArrayRef@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 24);
  if (*(v2 + 80) == 1)
  {
    v4 = *(v2 + 16);
    v3 = *(v2 + 24);
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

BOOL mlir::detail::DenseResourceElementsAttrBase<signed char>::classof(void *a1)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  v5 = v1;
  if (v1 && ((ElementType = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getElementType(&v5), *(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v3 = 0) : (v3 = ElementType), (v6 = v3) != 0 && mlir::IntegerType::getWidth(&v6) == 8))
  {
    return mlir::IntegerType::getSignedness(&v6) != 2;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::DenseResourceElementsAttrBase<short>::get(uint64_t a1, uint64_t a2, unsigned int *a3, const unsigned __int8 *a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = *a5;
  v5 = *(a5 + 48);
  v17 = *(a5 + 16);
  v20 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 2) != 0 && (v5 & 4) != 0)
    {
      v6 = a2;
      v7 = a1;
      v8 = a4;
      v9 = a3;
      v10 = a5;
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 8))(&v18, a5 + 24);
      (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v10 + 24);
      a5 = v10;
      a1 = v7;
      a2 = v6;
      a3 = v9;
      a4 = v8;
    }

    else
    {
      v18 = *(a5 + 24);
      v19 = *(a5 + 40);
    }

    *(a5 + 48) = 0;
  }

  v21 = *(a5 + 56);
  v11 = mlir::DenseResourceElementsAttr::get(a1, a2, a3, a4, &v16);
  if (v20 >= 8)
  {
    v12 = (v20 & 2) != 0 ? &v18 : v18;
    (*(v20 & 0xFFFFFFFFFFFFFFF8))(v12, v16, *(&v16 + 1), v17);
    v13 = v20;
    if (v20 >= 8)
    {
      if ((v20 & 4) != 0)
      {
        if ((v20 & 2) != 0)
        {
          v14 = &v18;
        }

        else
        {
          v14 = v18;
        }

        (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v14);
      }

      if ((v13 & 2) == 0)
      {
        llvm::deallocate_buffer(v18, *(&v18 + 1));
      }
    }
  }

  return v11;
}

uint64_t mlir::detail::DenseResourceElementsAttrBase<short>::tryGetAsArrayRef@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 24);
  if (*(v2 + 80) == 1)
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 24) >> 1;
    *a2 = v3;
    *(a2 + 8) = v4;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

BOOL mlir::detail::DenseResourceElementsAttrBase<short>::classof(void *a1)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  v5 = v1;
  if (v1 && ((ElementType = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getElementType(&v5), *(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v3 = 0) : (v3 = ElementType), (v6 = v3) != 0 && mlir::IntegerType::getWidth(&v6) == 16))
  {
    return mlir::IntegerType::getSignedness(&v6) != 2;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::DenseResourceElementsAttrBase<int>::get(uint64_t a1, uint64_t a2, unsigned int *a3, const unsigned __int8 *a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = *a5;
  v5 = *(a5 + 48);
  v17 = *(a5 + 16);
  v20 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 2) != 0 && (v5 & 4) != 0)
    {
      v6 = a2;
      v7 = a1;
      v8 = a4;
      v9 = a3;
      v10 = a5;
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 8))(&v18, a5 + 24);
      (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v10 + 24);
      a5 = v10;
      a1 = v7;
      a2 = v6;
      a3 = v9;
      a4 = v8;
    }

    else
    {
      v18 = *(a5 + 24);
      v19 = *(a5 + 40);
    }

    *(a5 + 48) = 0;
  }

  v21 = *(a5 + 56);
  v11 = mlir::DenseResourceElementsAttr::get(a1, a2, a3, a4, &v16);
  if (v20 >= 8)
  {
    v12 = (v20 & 2) != 0 ? &v18 : v18;
    (*(v20 & 0xFFFFFFFFFFFFFFF8))(v12, v16, *(&v16 + 1), v17);
    v13 = v20;
    if (v20 >= 8)
    {
      if ((v20 & 4) != 0)
      {
        if ((v20 & 2) != 0)
        {
          v14 = &v18;
        }

        else
        {
          v14 = v18;
        }

        (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v14);
      }

      if ((v13 & 2) == 0)
      {
        llvm::deallocate_buffer(v18, *(&v18 + 1));
      }
    }
  }

  return v11;
}

uint64_t mlir::detail::DenseResourceElementsAttrBase<int>::tryGetAsArrayRef@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 24);
  if (*(v2 + 80) == 1)
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 24) >> 2;
    *a2 = v3;
    *(a2 + 8) = v4;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

BOOL mlir::detail::DenseResourceElementsAttrBase<int>::classof(void *a1)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  v5 = v1;
  if (v1 && ((ElementType = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getElementType(&v5), *(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v3 = 0) : (v3 = ElementType), (v6 = v3) != 0 && mlir::IntegerType::getWidth(&v6) == 32))
  {
    return mlir::IntegerType::getSignedness(&v6) != 2;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::DenseResourceElementsAttrBase<long long>::get(uint64_t a1, uint64_t a2, unsigned int *a3, const unsigned __int8 *a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = *a5;
  v5 = *(a5 + 48);
  v17 = *(a5 + 16);
  v20 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 2) != 0 && (v5 & 4) != 0)
    {
      v6 = a2;
      v7 = a1;
      v8 = a4;
      v9 = a3;
      v10 = a5;
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 8))(&v18, a5 + 24);
      (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v10 + 24);
      a5 = v10;
      a1 = v7;
      a2 = v6;
      a3 = v9;
      a4 = v8;
    }

    else
    {
      v18 = *(a5 + 24);
      v19 = *(a5 + 40);
    }

    *(a5 + 48) = 0;
  }

  v21 = *(a5 + 56);
  v11 = mlir::DenseResourceElementsAttr::get(a1, a2, a3, a4, &v16);
  if (v20 >= 8)
  {
    v12 = (v20 & 2) != 0 ? &v18 : v18;
    (*(v20 & 0xFFFFFFFFFFFFFFF8))(v12, v16, *(&v16 + 1), v17);
    v13 = v20;
    if (v20 >= 8)
    {
      if ((v20 & 4) != 0)
      {
        if ((v20 & 2) != 0)
        {
          v14 = &v18;
        }

        else
        {
          v14 = v18;
        }

        (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v14);
      }

      if ((v13 & 2) == 0)
      {
        llvm::deallocate_buffer(v18, *(&v18 + 1));
      }
    }
  }

  return v11;
}

uint64_t mlir::detail::DenseResourceElementsAttrBase<long long>::tryGetAsArrayRef@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 24);
  if (*(v2 + 80) == 1)
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 24) >> 3;
    *a2 = v3;
    *(a2 + 8) = v4;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

BOOL mlir::detail::DenseResourceElementsAttrBase<long long>::classof(void *a1)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  v5 = v1;
  if (v1 && ((ElementType = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getElementType(&v5), *(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v3 = 0) : (v3 = ElementType), (v6 = v3) != 0 && mlir::IntegerType::getWidth(&v6) == 64))
  {
    return mlir::IntegerType::getSignedness(&v6) != 2;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::DenseResourceElementsAttrBase<unsigned char>::get(uint64_t a1, uint64_t a2, unsigned int *a3, const unsigned __int8 *a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = *a5;
  v5 = *(a5 + 48);
  v17 = *(a5 + 16);
  v20 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 2) != 0 && (v5 & 4) != 0)
    {
      v6 = a2;
      v7 = a1;
      v8 = a4;
      v9 = a3;
      v10 = a5;
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 8))(&v18, a5 + 24);
      (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v10 + 24);
      a5 = v10;
      a1 = v7;
      a2 = v6;
      a3 = v9;
      a4 = v8;
    }

    else
    {
      v18 = *(a5 + 24);
      v19 = *(a5 + 40);
    }

    *(a5 + 48) = 0;
  }

  v21 = *(a5 + 56);
  v11 = mlir::DenseResourceElementsAttr::get(a1, a2, a3, a4, &v16);
  if (v20 >= 8)
  {
    v12 = (v20 & 2) != 0 ? &v18 : v18;
    (*(v20 & 0xFFFFFFFFFFFFFFF8))(v12, v16, *(&v16 + 1), v17);
    v13 = v20;
    if (v20 >= 8)
    {
      if ((v20 & 4) != 0)
      {
        if ((v20 & 2) != 0)
        {
          v14 = &v18;
        }

        else
        {
          v14 = v18;
        }

        (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v14);
      }

      if ((v13 & 2) == 0)
      {
        llvm::deallocate_buffer(v18, *(&v18 + 1));
      }
    }
  }

  return v11;
}

uint64_t mlir::detail::DenseResourceElementsAttrBase<unsigned char>::tryGetAsArrayRef@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 24);
  if (*(v2 + 80) == 1)
  {
    v4 = *(v2 + 16);
    v3 = *(v2 + 24);
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

BOOL mlir::detail::DenseResourceElementsAttrBase<unsigned char>::classof(void *a1)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  v5 = v1;
  if (v1 && ((ElementType = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getElementType(&v5), *(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v3 = 0) : (v3 = ElementType), (v6 = v3) != 0 && mlir::IntegerType::getWidth(&v6) == 8))
  {
    return mlir::IntegerType::getSignedness(&v6) != 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::DenseResourceElementsAttrBase<unsigned short>::get(uint64_t a1, uint64_t a2, unsigned int *a3, const unsigned __int8 *a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = *a5;
  v5 = *(a5 + 48);
  v17 = *(a5 + 16);
  v20 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 2) != 0 && (v5 & 4) != 0)
    {
      v6 = a2;
      v7 = a1;
      v8 = a4;
      v9 = a3;
      v10 = a5;
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 8))(&v18, a5 + 24);
      (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v10 + 24);
      a5 = v10;
      a1 = v7;
      a2 = v6;
      a3 = v9;
      a4 = v8;
    }

    else
    {
      v18 = *(a5 + 24);
      v19 = *(a5 + 40);
    }

    *(a5 + 48) = 0;
  }

  v21 = *(a5 + 56);
  v11 = mlir::DenseResourceElementsAttr::get(a1, a2, a3, a4, &v16);
  if (v20 >= 8)
  {
    v12 = (v20 & 2) != 0 ? &v18 : v18;
    (*(v20 & 0xFFFFFFFFFFFFFFF8))(v12, v16, *(&v16 + 1), v17);
    v13 = v20;
    if (v20 >= 8)
    {
      if ((v20 & 4) != 0)
      {
        if ((v20 & 2) != 0)
        {
          v14 = &v18;
        }

        else
        {
          v14 = v18;
        }

        (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v14);
      }

      if ((v13 & 2) == 0)
      {
        llvm::deallocate_buffer(v18, *(&v18 + 1));
      }
    }
  }

  return v11;
}

uint64_t mlir::detail::DenseResourceElementsAttrBase<unsigned short>::tryGetAsArrayRef@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 24);
  if (*(v2 + 80) == 1)
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 24) >> 1;
    *a2 = v3;
    *(a2 + 8) = v4;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

BOOL mlir::detail::DenseResourceElementsAttrBase<unsigned short>::classof(void *a1)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  v5 = v1;
  if (v1 && ((ElementType = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getElementType(&v5), *(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v3 = 0) : (v3 = ElementType), (v6 = v3) != 0 && mlir::IntegerType::getWidth(&v6) == 16))
  {
    return mlir::IntegerType::getSignedness(&v6) != 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::DenseResourceElementsAttrBase<unsigned int>::get(uint64_t a1, uint64_t a2, unsigned int *a3, const unsigned __int8 *a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = *a5;
  v5 = *(a5 + 48);
  v17 = *(a5 + 16);
  v20 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 2) != 0 && (v5 & 4) != 0)
    {
      v6 = a2;
      v7 = a1;
      v8 = a4;
      v9 = a3;
      v10 = a5;
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 8))(&v18, a5 + 24);
      (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v10 + 24);
      a5 = v10;
      a1 = v7;
      a2 = v6;
      a3 = v9;
      a4 = v8;
    }

    else
    {
      v18 = *(a5 + 24);
      v19 = *(a5 + 40);
    }

    *(a5 + 48) = 0;
  }

  v21 = *(a5 + 56);
  v11 = mlir::DenseResourceElementsAttr::get(a1, a2, a3, a4, &v16);
  if (v20 >= 8)
  {
    v12 = (v20 & 2) != 0 ? &v18 : v18;
    (*(v20 & 0xFFFFFFFFFFFFFFF8))(v12, v16, *(&v16 + 1), v17);
    v13 = v20;
    if (v20 >= 8)
    {
      if ((v20 & 4) != 0)
      {
        if ((v20 & 2) != 0)
        {
          v14 = &v18;
        }

        else
        {
          v14 = v18;
        }

        (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v14);
      }

      if ((v13 & 2) == 0)
      {
        llvm::deallocate_buffer(v18, *(&v18 + 1));
      }
    }
  }

  return v11;
}

uint64_t mlir::detail::DenseResourceElementsAttrBase<unsigned int>::tryGetAsArrayRef@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 24);
  if (*(v2 + 80) == 1)
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 24) >> 2;
    *a2 = v3;
    *(a2 + 8) = v4;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

BOOL mlir::detail::DenseResourceElementsAttrBase<unsigned int>::classof(void *a1)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  v5 = v1;
  if (v1 && ((ElementType = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getElementType(&v5), *(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v3 = 0) : (v3 = ElementType), (v6 = v3) != 0 && mlir::IntegerType::getWidth(&v6) == 32))
  {
    return mlir::IntegerType::getSignedness(&v6) != 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::DenseResourceElementsAttrBase<unsigned long long>::get(uint64_t a1, uint64_t a2, unsigned int *a3, const unsigned __int8 *a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = *a5;
  v5 = *(a5 + 48);
  v17 = *(a5 + 16);
  v20 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 2) != 0 && (v5 & 4) != 0)
    {
      v6 = a2;
      v7 = a1;
      v8 = a4;
      v9 = a3;
      v10 = a5;
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 8))(&v18, a5 + 24);
      (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v10 + 24);
      a5 = v10;
      a1 = v7;
      a2 = v6;
      a3 = v9;
      a4 = v8;
    }

    else
    {
      v18 = *(a5 + 24);
      v19 = *(a5 + 40);
    }

    *(a5 + 48) = 0;
  }

  v21 = *(a5 + 56);
  v11 = mlir::DenseResourceElementsAttr::get(a1, a2, a3, a4, &v16);
  if (v20 >= 8)
  {
    v12 = (v20 & 2) != 0 ? &v18 : v18;
    (*(v20 & 0xFFFFFFFFFFFFFFF8))(v12, v16, *(&v16 + 1), v17);
    v13 = v20;
    if (v20 >= 8)
    {
      if ((v20 & 4) != 0)
      {
        if ((v20 & 2) != 0)
        {
          v14 = &v18;
        }

        else
        {
          v14 = v18;
        }

        (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v14);
      }

      if ((v13 & 2) == 0)
      {
        llvm::deallocate_buffer(v18, *(&v18 + 1));
      }
    }
  }

  return v11;
}

uint64_t mlir::detail::DenseResourceElementsAttrBase<unsigned long long>::tryGetAsArrayRef@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 24);
  if (*(v2 + 80) == 1)
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 24) >> 3;
    *a2 = v3;
    *(a2 + 8) = v4;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

BOOL mlir::detail::DenseResourceElementsAttrBase<unsigned long long>::classof(void *a1)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  v5 = v1;
  if (v1 && ((ElementType = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getElementType(&v5), *(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v3 = 0) : (v3 = ElementType), (v6 = v3) != 0 && mlir::IntegerType::getWidth(&v6) == 64))
  {
    return mlir::IntegerType::getSignedness(&v6) != 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::DenseResourceElementsAttrBase<float>::get(uint64_t a1, uint64_t a2, unsigned int *a3, const unsigned __int8 *a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = *a5;
  v5 = *(a5 + 48);
  v17 = *(a5 + 16);
  v20 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 2) != 0 && (v5 & 4) != 0)
    {
      v6 = a2;
      v7 = a1;
      v8 = a4;
      v9 = a3;
      v10 = a5;
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 8))(&v18, a5 + 24);
      (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v10 + 24);
      a5 = v10;
      a1 = v7;
      a2 = v6;
      a3 = v9;
      a4 = v8;
    }

    else
    {
      v18 = *(a5 + 24);
      v19 = *(a5 + 40);
    }

    *(a5 + 48) = 0;
  }

  v21 = *(a5 + 56);
  v11 = mlir::DenseResourceElementsAttr::get(a1, a2, a3, a4, &v16);
  if (v20 >= 8)
  {
    v12 = (v20 & 2) != 0 ? &v18 : v18;
    (*(v20 & 0xFFFFFFFFFFFFFFF8))(v12, v16, *(&v16 + 1), v17);
    v13 = v20;
    if (v20 >= 8)
    {
      if ((v20 & 4) != 0)
      {
        if ((v20 & 2) != 0)
        {
          v14 = &v18;
        }

        else
        {
          v14 = v18;
        }

        (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v14);
      }

      if ((v13 & 2) == 0)
      {
        llvm::deallocate_buffer(v18, *(&v18 + 1));
      }
    }
  }

  return v11;
}

uint64_t mlir::detail::DenseResourceElementsAttrBase<float>::tryGetAsArrayRef@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 24);
  if (*(v2 + 80) == 1)
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 24) >> 2;
    *a2 = v3;
    *(a2 + 8) = v4;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

BOOL mlir::detail::DenseResourceElementsAttrBase<float>::classof(void *a1)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  v3 = v1;
  if (!v1)
  {
    return 0;
  }

  ElementType = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getElementType(&v3);
  return mlir::Type::isF32(&ElementType);
}

uint64_t mlir::detail::DenseResourceElementsAttrBase<double>::get(uint64_t a1, uint64_t a2, unsigned int *a3, const unsigned __int8 *a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = *a5;
  v5 = *(a5 + 48);
  v17 = *(a5 + 16);
  v20 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 2) != 0 && (v5 & 4) != 0)
    {
      v6 = a2;
      v7 = a1;
      v8 = a4;
      v9 = a3;
      v10 = a5;
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 8))(&v18, a5 + 24);
      (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v10 + 24);
      a5 = v10;
      a1 = v7;
      a2 = v6;
      a3 = v9;
      a4 = v8;
    }

    else
    {
      v18 = *(a5 + 24);
      v19 = *(a5 + 40);
    }

    *(a5 + 48) = 0;
  }

  v21 = *(a5 + 56);
  v11 = mlir::DenseResourceElementsAttr::get(a1, a2, a3, a4, &v16);
  if (v20 >= 8)
  {
    v12 = (v20 & 2) != 0 ? &v18 : v18;
    (*(v20 & 0xFFFFFFFFFFFFFFF8))(v12, v16, *(&v16 + 1), v17);
    v13 = v20;
    if (v20 >= 8)
    {
      if ((v20 & 4) != 0)
      {
        if ((v20 & 2) != 0)
        {
          v14 = &v18;
        }

        else
        {
          v14 = v18;
        }

        (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v14);
      }

      if ((v13 & 2) == 0)
      {
        llvm::deallocate_buffer(v18, *(&v18 + 1));
      }
    }
  }

  return v11;
}

uint64_t mlir::detail::DenseResourceElementsAttrBase<double>::tryGetAsArrayRef@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 24);
  if (*(v2 + 80) == 1)
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 24) >> 3;
    *a2 = v3;
    *(a2 + 8) = v4;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

BOOL mlir::detail::DenseResourceElementsAttrBase<double>::classof(void *a1)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  v3 = v1;
  if (!v1)
  {
    return 0;
  }

  ElementType = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getElementType(&v3);
  return mlir::Type::isF64(&ElementType);
}

uint64_t mlir::SparseElementsAttr::getZeroAPFloat@<X0>(mlir::SparseElementsAttr *this@<X0>, uint64_t a2@<X8>)
{
  ElementType = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getElementType(this);
  FloatSemantics = mlir::FloatType::getFloatSemantics(&ElementType);
  if (llvm::APFloatBase::PPCDoubleDouble(FloatSemantics) == FloatSemantics)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a2 + 8), FloatSemantics);
  }

  return llvm::detail::IEEEFloat::IEEEFloat(a2 + 8, FloatSemantics);
}

uint64_t mlir::SparseElementsAttr::getZeroAPInt@<X0>(mlir::SparseElementsAttr *this@<X0>, llvm::APInt *a2@<X8>)
{
  ElementType = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getElementType(this);
  result = mlir::IntegerType::getWidth(&ElementType);
  *(a2 + 2) = result;
  if (result > 0x40)
  {
    llvm::APInt::initSlowCase(a2);
  }

  *a2 = 0;
  return result;
}

llvm::APFloatBase *mlir::SparseElementsAttr::getZeroAttr(mlir::SparseElementsAttr *this)
{
  v39 = *MEMORY[0x277D85DE8];
  ElementType = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getElementType(this);
  v3 = *(*ElementType + 136);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {

    return mlir::FloatAttr::get(ElementType, 0.0);
  }

  else
  {
    if (v3 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v21 = ElementType;
    }

    else
    {
      v21 = 0;
    }

    v33 = v21;
    if (v21)
    {
      v22 = mlir::ComplexType::getElementType(&v33);
      v23 = *(*v22 + 136);
      if (v23 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
      {
        v24 = mlir::FloatAttr::get(v22, 0.0);
      }

      else
      {
        v24 = mlir::IntegerAttr::get(v22, 0);
      }

      v25 = v24;
      Context = mlir::Type::getContext(&v33);
      v38[0] = v25;
      v38[1] = v25;
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      v34[0] = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
      v34[1] = Context;
      v31[0] = _ZN4llvm12function_refIFvPN4mlir6detail16ArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9ArrayAttrEJNS_8ArrayRefINS1_9AttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
      v31[1] = v34;
      v37[0] = v38;
      v37[1] = 2;
      v28 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(v38, &v39);
      v29 = HIDWORD(v28) ^ 0xFF51AFD7ED558CCDLL;
      v30 = 0x9DDFEA08EB382D69 * ((8 * v28 + 8) ^ v29);
      v35[0] = v37;
      v35[1] = v31;
      v36 = v37;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v29 ^ (v30 >> 47) ^ v30)) >> 32) >> 15) ^ (-348639895 * (v29 ^ (v30 >> 47) ^ v30))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v36, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v35);
    }

    else if (*(**(*this + 32) + 136) == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
    {
      v32 = 257;
      return mlir::StringAttr::get(v31, ElementType);
    }

    else
    {

      return mlir::IntegerAttr::get(ElementType, 0);
    }
  }
}

void mlir::SparseElementsAttr::getFlattenedSparseIndices(mlir::SparseElementsAttr *this@<X0>, void *a2@<X8>)
{
  v24[9] = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v22 = *(*this + 24);
  mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(&v22, v23);
  v4 = v23[0];
  v5 = v23[1];
  v6 = v24[0];
  if (*(v22 + 24) == 1)
  {
    v21 = *(*this + 8);
    mlir::ShapedType::getShape(&v21);
    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }

    v23[0] = v24;
    HIDWORD(v23[1]) = 8;
    v9 = v4[v8];
    if (v7 >= 9)
    {
      LODWORD(v23[1]) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (!v7)
    {
      goto LABEL_37;
    }

    v13 = vdupq_n_s64(v7 - 1);
    v14 = v7 + 1;
    v15 = vmovn_s64(vcgeq_u64(v13, xmmword_2573686A0));
    if (v15.i8[0])
    {
      v24[0] = v9;
      v16 = v14 & 0x1E;
      if ((v15.i8[4] & 1) == 0)
      {
LABEL_14:
        if (v16 == 2)
        {
          goto LABEL_37;
        }

LABEL_21:
        v18 = vmovn_s64(vcgtq_u64(v13, xmmword_2573686B0));
        if (v18.i8[0])
        {
          v24[2] = v9;
          if ((v18.i8[4] & 1) == 0)
          {
LABEL_23:
            if (v16 == 4)
            {
              goto LABEL_37;
            }

LABEL_27:
            v19 = vmovn_s64(vcgtq_u64(v13, xmmword_2573686C0));
            if (v19.i8[0])
            {
              v24[4] = v9;
              if ((v19.i8[4] & 1) == 0)
              {
LABEL_29:
                if (v16 == 6)
                {
LABEL_37:
                  LODWORD(v23[1]) = v7;
                  *&v21 = mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getFlattenedIndex(this, v24);
                  std::vector<long long>::push_back[abi:nn200100](a2, &v21);
                  if (v23[0] != v24)
                  {
                    free(v23[0]);
                  }

                  return;
                }

LABEL_33:
                v20 = vmovn_s64(vcgtq_u64(v13, xmmword_2573695F0));
                if (v20.i8[0])
                {
                  v24[6] = v9;
                }

                if (v20.i8[4])
                {
                  v24[7] = v9;
                }

                goto LABEL_37;
              }
            }

            else if ((v19.i8[4] & 1) == 0)
            {
              goto LABEL_29;
            }

            v24[5] = v9;
            if (v16 == 6)
            {
              goto LABEL_37;
            }

            goto LABEL_33;
          }
        }

        else if ((v18.i8[4] & 1) == 0)
        {
          goto LABEL_23;
        }

        v24[3] = v9;
        if (v16 == 4)
        {
          goto LABEL_37;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v16 = v14 & 0x1E;
      if ((v15.i8[4] & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v24[1] = v9;
    if (v16 == 2)
    {
      goto LABEL_37;
    }

    goto LABEL_21;
  }

  *v23 = *(v22 + 8);
  v10 = *mlir::ShapedType::getShape(v23);
  *v23 = *(*this + 8);
  mlir::ShapedType::getShape(v23);
  if (v10)
  {
    v12 = v11;
    if (v5)
    {
      do
      {
        v23[0] = mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getFlattenedIndex(this, v4);
        std::vector<long long>::push_back[abi:nn200100](a2, v23);
        --v10;
      }

      while (v10);
    }

    else
    {
      v17 = &v4[v6];
      do
      {
        v23[0] = mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getFlattenedIndex(this, v17);
        std::vector<long long>::push_back[abi:nn200100](a2, v23);
        v17 += 8 * v12;
        --v10;
      }

      while (v10);
    }
  }
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getFlattenedIndex(void **a1, uint64_t a2)
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
    llvm::isa<mlir::ElementsAttr,mlir::Attribute>();
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

void mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_0::operator()(uint64_t a1, mlir::ShapedType **a2)
{
  v40 = *MEMORY[0x277D85DE8];
  (**a2)(&v28, *(*a2 + 1));
  if (v28)
  {
    LODWORD(v26) = 3;
    *(&v26 + 1) = "expected shape ([";
    v27 = 17;
    if (v31 >= v32)
    {
      if (v30 > &v26 || v30 + 24 * v31 <= &v26)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v30 + 24 * v31;
    v5 = v26;
    *(v4 + 2) = v27;
    *v4 = v5;
    ++v31;
  }

  Shape = mlir::ShapedType::getShape(a2[1]);
  if (v28)
  {
    *&v26 = ", ";
    llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<long long,6u>>(llvm::SmallVector<long long,6u> const&,char const*)::{lambda(llvm::SmallVector<long long,6u> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<long long,6u>>(llvm::SmallVector<long long,6u> const&,char const*)::{lambda(void)#1},void>(Shape, &Shape[v7], v29, v29, &v26);
    if (v28)
    {
      LODWORD(v26) = 3;
      *(&v26 + 1) = "]); inferred shape of indices literal ([";
      v27 = 40;
      if (v31 >= v32)
      {
        if (v30 > &v26 || v30 + 24 * v31 <= &v26)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v30 + 24 * v31;
      v9 = v26;
      *(v8 + 2) = v27;
      *v8 = v9;
      ++v31;
    }
  }

  v10 = mlir::ShapedType::getShape(a2[2]);
  if (v28)
  {
    *&v26 = ", ";
    llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<long long,6u>>(llvm::SmallVector<long long,6u> const&,char const*)::{lambda(llvm::SmallVector<long long,6u> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<long long,6u>>(llvm::SmallVector<long long,6u> const&,char const*)::{lambda(void)#1},void>(v10, &v10[v11], v29, v29, &v26);
    if (v28)
    {
      LODWORD(v26) = 3;
      *(&v26 + 1) = "]); inferred shape of values literal ([";
      v27 = 39;
      if (v31 >= v32)
      {
        if (v30 > &v26 || v30 + 24 * v31 <= &v26)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v30 + 24 * v31;
      v13 = v26;
      *(v12 + 2) = v27;
      *v12 = v13;
      ++v31;
    }
  }

  v14 = mlir::ShapedType::getShape(a2[3]);
  if (v28)
  {
    *&v26 = ", ";
    llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<long long,6u>>(llvm::SmallVector<long long,6u> const&,char const*)::{lambda(llvm::SmallVector<long long,6u> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<long long,6u>>(llvm::SmallVector<long long,6u> const&,char const*)::{lambda(void)#1},void>(v14, &v14[v15], v29, v29, &v26);
    if (v28)
    {
      LODWORD(v26) = 3;
      *(&v26 + 1) = "])";
      v27 = 2;
      if (v31 >= v32)
      {
        if (v30 > &v26 || v30 + 24 * v31 <= &v26)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v16 = v30 + 24 * v31;
      v17 = v26;
      *(v16 + 2) = v27;
      *v16 = v17;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v37;
      v20 = __p;
      if (v37 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v37 = v18;
      operator delete(v20);
    }

    v21 = v34;
    if (v34)
    {
      v22 = v35;
      v23 = v34;
      if (v35 != v34)
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
        v23 = v34;
      }

      v35 = v21;
      operator delete(v23);
    }

    if (v30 != &v33)
    {
      free(v30);
    }
  }
}

void mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_1::operator()(uint64_t a1, uint64_t **a2, unsigned int a3, unint64_t *a4, uint64_t a5)
{
  v44 = *MEMORY[0x277D85DE8];
  (**a2)(&v32, (*a2)[1]);
  if (v32)
  {
    LODWORD(v30) = 3;
    *(&v30 + 1) = "sparse index #";
    v31 = 14;
    if (v35 >= v36)
    {
      if (v34 > &v30 || v34 + 24 * v35 <= &v30)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v34 + 24 * v35;
    v11 = v30;
    *(v10 + 2) = v31;
    *v10 = v11;
    v12 = ++v35;
    if (v32)
    {
      LODWORD(v30) = 5;
      *(&v30 + 1) = a3;
      if (v12 >= v36)
      {
        if (v34 > &v30 || v34 + 24 * v12 <= &v30)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v34 + 24 * v35;
      v14 = v30;
      *(v13 + 2) = v31;
      *v13 = v14;
      v15 = ++v35;
      if (v32)
      {
        LODWORD(v30) = 3;
        *(&v30 + 1) = " is not contained within the value shape, with index=[";
        v31 = 54;
        if (v15 >= v36)
        {
          if (v34 > &v30 || v34 + 24 * v15 <= &v30)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = v34 + 24 * v35;
        v17 = v30;
        *(v16 + 2) = v31;
        *v16 = v17;
        ++v35;
        if (v32)
        {
          *&v30 = ", ";
          llvm::interleave<unsigned long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<unsigned long long>>(llvm::ArrayRef<unsigned long long> const&,char const*)::{lambda(llvm::ArrayRef<unsigned long long> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<unsigned long long>>(llvm::ArrayRef<unsigned long long> const&,char const*)::{lambda(void)#1},void>(a4, &a4[a5], v33, v33, &v30);
          if (v32)
          {
            LODWORD(v30) = 3;
            *(&v30 + 1) = "], and type=";
            v31 = 12;
            if (v35 >= v36)
            {
              if (v34 > &v30 || v34 + 24 * v35 <= &v30)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v18 = v34 + 24 * v35;
            v19 = v30;
            *(v18 + 2) = v31;
            *v18 = v19;
            ++v35;
            if (v32)
            {
              mlir::DiagnosticArgument::DiagnosticArgument(&v30, *a2[1]);
              if (v35 >= v36)
              {
                if (v34 > &v30 || v34 + 24 * v35 <= &v30)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v20 = v34 + 24 * v35;
              v21 = v30;
              *(v20 + 2) = v31;
              *v20 = v21;
              ++v35;
            }
          }
        }
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v32);
  if (v32)
  {
    mlir::InFlightDiagnostic::report(&v32);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v41;
      v24 = __p;
      if (v41 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v41 = v22;
      operator delete(v24);
    }

    v25 = v38;
    if (v38)
    {
      v26 = v39;
      v27 = v38;
      if (v39 != v38)
      {
        do
        {
          v29 = *--v26;
          v28 = v29;
          *v26 = 0;
          if (v29)
          {
            MEMORY[0x259C63150](v28, 0x1000C8077774924);
          }
        }

        while (v26 != v25);
        v27 = v38;
      }

      v39 = v25;
      operator delete(v27);
    }

    if (v34 != &v37)
    {
      free(v34);
    }
  }
}

void *mlir::DistinctAttr::create(uint64_t a1)
{
  v4 = a1;
  Context = mlir::Attribute::getContext(&v4);
  Storage = mlir::detail::DistinctAttributeUniquer::allocateStorage(Context, v4);
  {
    mlir::DistinctAttr::create();
  }

  *Storage = mlir::AbstractAttribute::lookup(mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id, Context);
  return Storage;
}

uint64_t mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ShapedType::getElementType(&v14);
  result = mlir::detail::getDenseElementBitWidth(v14);
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

__n128 llvm::interleave<unsigned long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<unsigned long long>>(llvm::ArrayRef<unsigned long long> const&,char const*)::{lambda(llvm::ArrayRef<unsigned long long> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<unsigned long long>>(llvm::ArrayRef<unsigned long long> const&,char const*)::{lambda(void)#1},void>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4, const char **a5)
{
  if (a1 != a2)
  {
    v29 = v5;
    v30 = v6;
    v11 = *(a3 + 16);
    v12 = *a1;
    v27.n128_u32[0] = 5;
    v27.n128_u64[1] = v12;
    v13 = *(a3 + 24);
    if (v13 >= *(a3 + 28))
    {
      if (v11 > &v27 || v11 + 24 * v13 <= &v27)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v11 + 24 * *(a3 + 24));
    result = v27;
    v14[1].n128_u64[0] = v28;
    *v14 = result;
    ++*(a3 + 24);
    for (i = a1 + 1; i != a2; ++i)
    {
      v17 = *a5;
      if (*a5)
      {
        v18 = strlen(*a5);
        v27.n128_u32[0] = 3;
        v27.n128_u64[1] = v17;
        v28 = v18;
        v19 = *(a4 + 24);
        v20 = *(a4 + 16);
        if (v19 >= *(a4 + 28))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v27.n128_u32[0] = 3;
        v27.n128_u64[1] = 0;
        v28 = 0;
        v19 = *(a4 + 24);
        v20 = *(a4 + 16);
        if (v19 >= *(a4 + 28))
        {
LABEL_11:
          if (v20 <= &v27 && v20 + 24 * v19 > &v27)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }
      }

      v21 = (v20 + 24 * *(a4 + 24));
      v22 = v27;
      v21[1].n128_u64[0] = v28;
      *v21 = v22;
      ++*(a4 + 24);
      v23 = *i;
      v27.n128_u32[0] = 5;
      v27.n128_u64[1] = v23;
      v24 = *(a3 + 24);
      v25 = *(a3 + 16);
      if (v24 >= *(a3 + 28))
      {
        if (v25 > &v27 || v25 + 24 * v24 <= &v27)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v26 = (v25 + 24 * *(a3 + 24));
      result = v27;
      v26[1].n128_u64[0] = v28;
      *v26 = result;
      ++*(a3 + 24);
    }
  }

  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineMapAttrStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapAttrStorage,mlir::AffineMap &>(llvm::function_ref<void ()(mlir::detail::AffineMapAttrStorage *)>,mlir::TypeID,mlir::AffineMap &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = Slow + 2;
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
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    *Slow = 0;
    Slow[1] = v2;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  Slow[1] = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(v6[1], Slow);
  }

  return Slow;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::ArrayAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::detail::ArrayAttrStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a1;
  if (!v2)
  {
    Slow = 0;
    goto LABEL_17;
  }

  v4 = *a2;
  v5 = 8 * v2;
  a1[10] += 8 * v2;
  Slow = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = Slow + 8 * v2;
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
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v2, 8 * v2, 3);
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
      v10 = Slow;
      v11 = v4;
      if (Slow - v4 >= 0x20)
      {
        v12 = (v9 >> 3) + 1;
        v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
        v10 = (Slow + v13);
        v11 = (v4 + v13);
        v14 = (v4 + 16);
        v15 = (Slow + 16);
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

  v10 = Slow;
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
    v20 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 24, 24, 3);
  }

  else
  {
    *a1 = v21;
  }

  *v20 = 0;
  v20[1] = Slow;
  v20[2] = v2;
  return v20;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type,long long,llvm::ArrayRef<char>>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type,long long,llvm::ArrayRef<char> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type,long long,llvm::ArrayRef<char>>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type,long long,llvm::ArrayRef<char> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::DenseArrayAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::detail::DenseArrayAttrStorage::construct(unint64_t *a1, uint64_t *a2)
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
  Slow = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = Slow + v4;
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
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v4, v4, 3);
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
      v15 = Slow;
      v16 = v5;
      goto LABEL_21;
    }
  }

  if (Slow - v5 < 0x20)
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
  v11 = (Slow + 16);
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
    v15 = (Slow + (v4 & 0xFFFFFFFFFFFFFFF8));
    v16 = (v5 + (v4 & 0xFFFFFFFFFFFFFFF8));
    do
    {
      *(Slow + v9) = *(v5 + v9);
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
  v15 = (Slow + v9);
  do
  {
LABEL_21:
    v18 = *v16++;
    *v15++ = v18;
  }

  while (v16 != (v5 + v4));
LABEL_22:
  v5 = Slow;
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
    v19 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 40, 40, 3);
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

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,long long &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,long long &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,long long &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,long long &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::DenseArrayAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::DenseArrayAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t mlir::detail::DenseStringElementsAttrStorage::getKey@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v8 = result;
  v22 = *MEMORY[0x277D85DE8];
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
    v17[0] = v12;
    v17[1] = llvm::hashing::detail::hash_combine_range_impl<llvm::StringRef const*>(v16, a3 + 16 * a4);
    result = llvm::hashing::detail::hash_combine_recursive_helper::combine(v17, 0, v18, v19);
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

unint64_t llvm::hashing::detail::hash_combine_range_impl<llvm::StringRef const*>(uint64_t a1, uint64_t a2)
{
  v97 = *MEMORY[0x277D85DE8];
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

  return llvm::hashing::detail::hash_short(&v89, v30, 0xFF51AFD7ED558CCDLL);
}

uint64_t llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
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

uint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__n128 **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[2];
  v10[1] = (*a1)[1];
  v10[2] = v4;
  v10[0] = v3;
  v6 = mlir::detail::DenseStringElementsAttrStorage::construct(a2, v10);
  v7 = v5;
  v8 = a1[1];
  if (v8->n128_u64[0])
  {
    (v8->n128_u64[0])(v8->n128_u64[1], v5, v6);
  }

  return v7;
}

__n128 mlir::detail::DenseStringElementsAttrStorage::construct(unint64_t *a1, __n128 *a2)
{
  v4 = a2[1].n128_u64[1];
  if (!v4)
  {
    a1[10] += 48;
    v10 = a1[1];
    Slow = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = Slow + 48;
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
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 48, 48, 3);
    }

    else
    {
      *a1 = v12;
    }

    v14 = a2[2].n128_u8[8];
    result = *a2;
    *Slow = 0;
    *(Slow + 8) = result;
    *(Slow + 24) = v14;
    *(Slow + 32) = 0;
    *(Slow + 40) = 0;
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
    v27 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v9, v9, 3);
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
    v35 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 48, 48, 3);
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

uint64_t mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v19[0] = a2;
  v19[1] = a3;
  v20 = *a5;
  v8 = (a6 + 8);
  v9 = *(a6 + 8);
  v10 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v10 == v9)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v22, v8);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v22, v8);
  }

  v12 = llvm::hash_value(&v21, v11);
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))));
  v17[0] = &v20;
  v17[1] = v19;
  v18 = &v20;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v14 >> 47) ^ v14)) ^ v12, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat const&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat const&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
  if (v10 == v22[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v22);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v22);
  }

  return ParametricStorageTypeImpl;
}

uint64_t llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat const&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(llvm::APFloatBase *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  v5 = *(a2 + 24);
  v3 = (a2 + 24);
  v4 = v5;
  v7 = v2[2];
  v6 = (v2 + 2);
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat const&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, llvm::APFloatBase *a2)
{
  v3 = mlir::detail::FloatAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::detail::FloatAttrStorage::construct(llvm::APFloatBase *a1, __n128 *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2->n128_u64[0];
  v4 = a2 + 1;
  v5 = a2[1].n128_u64[0];
  v6 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v6 == v5)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v12, v4);
    *(a1 + 10) += 48;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v12, v4);
    *(a1 + 10) += 48;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_12;
    }
  }

  Slow = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((Slow + 6) <= *(a1 + 1))
  {
    *a1 = Slow + 6;
    if (v6 == v12.n128_u64[0])
    {
      goto LABEL_13;
    }

LABEL_7:
    llvm::detail::IEEEFloat::IEEEFloat(&v11, &v12);
    *Slow = 0;
    Slow[1] = v3;
    v9 = (Slow + 3);
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
  Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 48, 48, 3);
  if (v6 != v12.n128_u64[0])
  {
    goto LABEL_7;
  }

LABEL_13:
  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v11, &v12);
  *Slow = 0;
  Slow[1] = v3;
  v9 = (Slow + 3);
  if (v6 != v11.n128_u64[0])
  {
    goto LABEL_8;
  }

LABEL_14:
  llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, &v11);
  if (v6 == v11.n128_u64[0])
  {
LABEL_15:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v11);
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
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v12);
    return Slow;
  }

LABEL_10:
  llvm::detail::IEEEFloat::~IEEEFloat(&v12);
  return Slow;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v19[0] = a2;
  v19[1] = a3;
  v20 = *a5;
  v8 = (a6 + 8);
  v9 = *(a6 + 8);
  v10 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v10 == v9)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v22, v8);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v22, v8);
  }

  v12 = llvm::hash_value(&v21, v11);
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))));
  v17[0] = &v20;
  v17[1] = v19;
  v18 = &v20;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v14 >> 47) ^ v14)) ^ v12, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
  if (v10 == v22[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v22);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v22);
  }

  return ParametricStorageTypeImpl;
}

uint64_t llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(llvm::APFloatBase *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  v5 = *(a2 + 24);
  v3 = (a2 + 24);
  v4 = v5;
  v7 = v2[2];
  v6 = (v2 + 2);
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, llvm::APFloatBase *a2)
{
  v3 = mlir::detail::FloatAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  v19[0] = a2;
  v19[1] = a3;
  v20 = *a5;
  v8 = (a6 + 8);
  v9 = *(a6 + 8);
  v10 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v10 == v9)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v22, v8);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v22, v8);
  }

  v12 = llvm::hash_value(&v21, v11);
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))));
  v17[0] = &v20;
  v17[1] = v19;
  v18 = &v20;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v14 >> 47) ^ v14)) ^ v12, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
  if (v10 == v22.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v22);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v22);
  }

  return ParametricStorageTypeImpl;
}

uint64_t llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(llvm::APFloatBase *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  v5 = *(a2 + 24);
  v3 = (a2 + 24);
  v4 = v5;
  v7 = v2[2];
  v6 = (v2 + 2);
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, llvm::APFloatBase *a2)
{
  v3 = mlir::detail::FloatAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt const&>(mlir::detail::StorageUniquerImpl **a1, const llvm::APInt *a2, uint64_t a3, uint64_t a4, uint64_t *a5, llvm::APInt *a6)
{
  v20[0] = a2;
  v20[1] = a3;
  v8 = *a5;
  v17 = *a5;
  v19 = *(a6 + 2);
  if (v19 > 0x40)
  {
    llvm::APInt::initSlowCase(&v18, a6);
  }

  v18 = *a6;
  v9 = (v8 >> 4) ^ (v8 >> 9);
  v10 = llvm::hash_value(&v18, a2);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)));
  v15[0] = &v17;
  v15[1] = v20;
  v16 = &v17;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt const&>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt const&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt const&>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt const&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
  if (v19 >= 0x41)
  {
    if (v18)
    {
      v14 = result;
      MEMORY[0x259C63150](v18, 0x1000C8000313F17);
      return v14;
    }
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt const&>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt const&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(const void ***a1, uint64_t a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt const&>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt const&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = *(*a1 + 4);
  v4 = **a1;
  v3 = (*a1)[1];
  *(*a1 + 4) = 0;
  a2[10] += 32;
  if (!*a2 || (Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 32 > a2[1]))
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    *Slow = 0;
    *(Slow + 8) = v4;
    *(Slow + 24) = v2;
    *(Slow + 16) = v3;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_4;
  }

  *a2 = Slow + 32;
  *Slow = 0;
  *(Slow + 8) = v4;
  *(Slow + 24) = v2;
  *(Slow + 16) = v3;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_4:
    v7(v6[1], Slow);
  }

  return Slow;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(mlir::detail::StorageUniquerImpl **a1, const llvm::APInt *a2, uint64_t a3, uint64_t a4, uint64_t *a5, llvm::APInt *a6)
{
  v20[0] = a2;
  v20[1] = a3;
  v8 = *a5;
  v17 = *a5;
  v19 = *(a6 + 2);
  if (v19 > 0x40)
  {
    llvm::APInt::initSlowCase(&v18, a6);
  }

  v18 = *a6;
  v9 = (v8 >> 4) ^ (v8 >> 9);
  v10 = llvm::hash_value(&v18, a2);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)));
  v15[0] = &v17;
  v15[1] = v20;
  v16 = &v17;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
  if (v19 >= 0x41)
  {
    if (v18)
    {
      v14 = result;
      MEMORY[0x259C63150](v18, 0x1000C8000313F17);
      return v14;
    }
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(const void ***a1, uint64_t a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = *(*a1 + 4);
  v4 = **a1;
  v3 = (*a1)[1];
  *(*a1 + 4) = 0;
  a2[10] += 32;
  if (!*a2 || (Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 32 > a2[1]))
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    *Slow = 0;
    *(Slow + 8) = v4;
    *(Slow + 24) = v2;
    *(Slow + 16) = v3;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_4;
  }

  *a2 = Slow + 32;
  *Slow = 0;
  *(Slow + 8) = v4;
  *(Slow + 24) = v2;
  *(Slow + 16) = v3;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_4:
    v7(v6[1], Slow);
  }

  return Slow;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APSInt const&>(mlir::detail::StorageUniquerImpl **a1, const llvm::APInt *a2, uint64_t a3, uint64_t a4, uint64_t *a5, llvm::APInt *a6)
{
  v20[0] = a2;
  v20[1] = a3;
  v8 = *a5;
  v17 = *a5;
  v19 = *(a6 + 2);
  if (v19 > 0x40)
  {
    llvm::APInt::initSlowCase(&v18, a6);
  }

  v18 = *a6;
  v9 = (v8 >> 4) ^ (v8 >> 9);
  v10 = llvm::hash_value(&v18, a2);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)));
  v15[0] = &v17;
  v15[1] = v20;
  v16 = &v17;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APSInt const&>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::IntegerType &,llvm::APSInt const&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APSInt const&>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::IntegerType &,llvm::APSInt const&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
  if (v19 >= 0x41)
  {
    if (v18)
    {
      v14 = result;
      MEMORY[0x259C63150](v18, 0x1000C8000313F17);
      return v14;
    }
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APSInt const&>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::IntegerType &,llvm::APSInt const&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(const void ***a1, uint64_t a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APSInt const&>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::IntegerType &,llvm::APSInt const&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = *(*a1 + 4);
  v4 = **a1;
  v3 = (*a1)[1];
  *(*a1 + 4) = 0;
  a2[10] += 32;
  if (!*a2 || (Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 32 > a2[1]))
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    *Slow = 0;
    *(Slow + 8) = v4;
    *(Slow + 24) = v2;
    *(Slow + 16) = v3;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_4;
  }

  *a2 = Slow + 32;
  *Slow = 0;
  *(Slow + 8) = v4;
  *(Slow + 24) = v2;
  *(Slow + 16) = v3;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_4:
    v7(v6[1], Slow);
  }

  return Slow;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APSInt &>(mlir::detail::StorageUniquerImpl **a1, const llvm::APInt *a2, uint64_t a3, uint64_t a4, uint64_t *a5, llvm::APInt *a6)
{
  v20[0] = a2;
  v20[1] = a3;
  v8 = *a5;
  v17 = *a5;
  v19 = *(a6 + 2);
  if (v19 > 0x40)
  {
    llvm::APInt::initSlowCase(&v18, a6);
  }

  v18 = *a6;
  v9 = (v8 >> 4) ^ (v8 >> 9);
  v10 = llvm::hash_value(&v18, a2);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)));
  v15[0] = &v17;
  v15[1] = v20;
  v16 = &v17;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APSInt &>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::IntegerType &,llvm::APSInt &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APSInt &>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::IntegerType &,llvm::APSInt &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
  if (v19 >= 0x41)
  {
    if (v18)
    {
      v14 = result;
      MEMORY[0x259C63150](v18, 0x1000C8000313F17);
      return v14;
    }
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APSInt &>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::IntegerType &,llvm::APSInt &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(const void ***a1, uint64_t a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APSInt &>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::IntegerType &,llvm::APSInt &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = *(*a1 + 4);
  v4 = **a1;
  v3 = (*a1)[1];
  *(*a1 + 4) = 0;
  a2[10] += 32;
  if (!*a2 || (Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 32 > a2[1]))
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    *Slow = 0;
    *(Slow + 8) = v4;
    *(Slow + 24) = v2;
    *(Slow + 16) = v3;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_4;
  }

  *a2 = Slow + 32;
  *Slow = 0;
  *(Slow + 8) = v4;
  *(Slow + 24) = v2;
  *(Slow + 16) = v3;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_4:
    v7(v6[1], Slow);
  }

  return Slow;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerSetAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetAttrStorage,mlir::IntegerSet &>(llvm::function_ref<void ()(mlir::detail::IntegerSetAttrStorage *)>,mlir::TypeID,mlir::IntegerSet &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = Slow + 2;
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
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    *Slow = 0;
    Slow[1] = v2;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  Slow[1] = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(v6[1], Slow);
  }

  return Slow;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::OpaqueAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueAttrStorage,mlir::StringAttr &,llvm::StringRef &,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::OpaqueAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueAttrStorage,mlir::StringAttr &,llvm::StringRef &,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::OpaqueAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, uint64_t *a2)
{
  v3 = mlir::detail::OpaqueAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::detail::OpaqueAttrStorage::construct(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  v4 = a2[3];
  if (!v3)
  {
    Slow = 0;
    goto LABEL_24;
  }

  v5 = a2[1];
  a1[10] += v3 + 1;
  Slow = *a1;
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
    v9 = Slow;
    v10 = v5;
    goto LABEL_22;
  }

  v20 = a1;
  Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v3 + 1, v3 + 1, 0);
  a1 = v20;
  if (v3 < 8)
  {
    goto LABEL_21;
  }

LABEL_7:
  v9 = Slow;
  v10 = v5;
  if ((Slow - v5) >= 0x20)
  {
    if (v3 < 0x20)
    {
      v11 = 0;
      goto LABEL_15;
    }

    v11 = v3 & 0xFFFFFFFFFFFFFFE0;
    v12 = (v5 + 16);
    v13 = (Slow + 16);
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
      v9 = (Slow + (v3 & 0xFFFFFFFFFFFFFFF8));
      v10 = (v5 + (v3 & 0xFFFFFFFFFFFFFFF8));
      v16 = (v5 + v11);
      v17 = (Slow + v11);
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
    v9 = (Slow + v11);
  }

  do
  {
LABEL_22:
    v21 = *v10++;
    *v9++ = v21;
  }

  while (v10 != (v5 + v3));
LABEL_23:
  *(Slow + v3) = 0;
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
    v22 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 40, 40, 3);
  }

  else
  {
    *a1 = v23;
  }

  *v22 = 0;
  v22[1] = v2;
  v22[2] = Slow;
  v22[3] = v3;
  v22[4] = v4;
  return v22;
}