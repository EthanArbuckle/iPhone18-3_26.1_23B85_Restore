void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIsEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFslEED0Ev(void *a1)
{
  *a1 = &unk_28689B370;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIsEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFslEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689B370;
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

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = *(a1 + 32);
  *(a2 + 42) = *(a1 + 42);
  *(a2 + 32) = result;
  *(a2 + 58) = 0;
  *(a2 + 62) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIsEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFslEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIsEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFslEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIsEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFslEEclEOl(uint64_t a1, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIsEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFslEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000002573958C9)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000002573958C9 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002573958C9))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002573958C9 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<short ()(long)>,short>,short>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689B400;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<short ()(long)>,short>,short>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689B400;
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

  JUMPOUT(0x259C63180);
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<short ()(long)>,short>,short>::at(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<int>(v4, v5);
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<int>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = mlir::SparseElementsAttr::try_value_begin_impl<int>(a1, v7);
  if (v7[48] == 1)
  {
    v5 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<int ()(long)>,int> &>(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t mlir::SparseElementsAttr::try_value_begin_impl<int>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a1 + 32);
  result = mlir::DenseElementsAttr::tryGetValues<int,void>(v7, v9);
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

      std::string::__throw_length_error[abi:nn200100]();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<int ()(long)>,int> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIiEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFilEED1Ev(void *result)
{
  *result = &unk_28689B460;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIiEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFilEED0Ev(void *a1)
{
  *a1 = &unk_28689B460;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIiEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFilEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689B460;
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

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = *(a1 + 32);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 32) = result;
  *(a2 + 60) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIiEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFilEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIiEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFilEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIiEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFilEEclEOl(uint64_t a1, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIiEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFilEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x8000000257395C8CLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x8000000257395C8CLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000257395C8CLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000257395C8CLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<int ()(long)>,int>,int>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689B4F0;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<int ()(long)>,int>,int>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689B4F0;
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

  JUMPOUT(0x259C63180);
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<int ()(long)>,int>,int>::at(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<long long>(v4, v5);
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<long long>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = mlir::SparseElementsAttr::try_value_begin_impl<long long>(a1, v7);
  if (v7[48] == 1)
  {
    v5 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long long ()(long)>,long long> &>(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<short>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned short>(a1, a3);
}

uint64_t mlir::SparseElementsAttr::try_value_begin_impl<long long>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a1 + 32);
  result = mlir::DenseElementsAttr::tryGetValues<long long,void>(v7, v9);
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

      std::string::__throw_length_error[abi:nn200100]();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long long ()(long)>,long long> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIxEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFxlEED1Ev(void *result)
{
  *result = &unk_28689B550;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIxEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFxlEED0Ev(void *a1)
{
  *a1 = &unk_28689B550;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIxEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFxlEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689B550;
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

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIxEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFxlEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIxEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFxlEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIxEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFxlEEclEOl(uint64_t a1, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIxEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFxlEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000025739604FLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000025739604FLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000025739604FLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000025739604FLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long long ()(long)>,long long>,long long>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689B5E0;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long long ()(long)>,long long>,long long>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689B5E0;
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

  JUMPOUT(0x259C63180);
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long long ()(long)>,long long>,long long>::at(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 48))(v2, &v6);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(v3, v4, v5);
  }
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<int>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned int>(a1, a3);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<long,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<long>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<long,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<unsigned long,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<unsigned long,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned long>(a1, a3);
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<long>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = mlir::SparseElementsAttr::try_value_begin_impl<long>(a1, v7);
  if (v7[48] == 1)
  {
    v5 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long ()(long)>,long> &>(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t mlir::SparseElementsAttr::try_value_begin_impl<long>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a1 + 32);
  result = mlir::DenseElementsAttr::tryGetValues<long long,void>(v7, v9);
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

      std::string::__throw_length_error[abi:nn200100]();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long ()(long)>,long> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIlEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFllEED1Ev(void *result)
{
  *result = &unk_28689B640;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIlEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFllEED0Ev(void *a1)
{
  *a1 = &unk_28689B640;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIlEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFllEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689B640;
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

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIlEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFllEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIlEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFllEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIlEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFllEEclEOl(uint64_t a1, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIlEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFllEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x8000000257396412)
  {
    return a1 + 8;
  }

  if (((v2 & 0x8000000257396412 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000257396412))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000257396412 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long ()(long)>,long>,long>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689B6D0;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long ()(long)>,long>,long>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689B6D0;
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

  JUMPOUT(0x259C63180);
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long ()(long)>,long>,long>::at(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned long>(v4, v5);
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned long>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = mlir::SparseElementsAttr::try_value_begin_impl<unsigned long>(a1, v7);
  if (v7[48] == 1)
  {
    v5 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long ()(long)>,unsigned long> &>(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<std::complex<llvm::APInt>,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<llvm::APInt>>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<std::complex<llvm::APInt>,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<std::complex<unsigned char>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<std::complex<unsigned char>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<unsigned char>>(a1, a3);
}

uint64_t mlir::SparseElementsAttr::try_value_begin_impl<unsigned long>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a1 + 32);
  result = mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(v7, v9);
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

      std::string::__throw_length_error[abi:nn200100]();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long ()(long)>,unsigned long> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implImEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFmlEED1Ev(void *result)
{
  *result = &unk_28689B730;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implImEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFmlEED0Ev(void *a1)
{
  *a1 = &unk_28689B730;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implImEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFmlEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689B730;
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

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implImEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFmlEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implImEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFmlEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implImEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFmlEEclEOl(uint64_t a1, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implImEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFmlEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000002573967D5)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000002573967D5 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002573967D5))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002573967D5 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long ()(long)>,unsigned long>,unsigned long>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689B7C0;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long ()(long)>,unsigned long>,unsigned long>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689B7C0;
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

  JUMPOUT(0x259C63180);
}

unint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long ()(long)>,unsigned long>,unsigned long>::at(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<llvm::APInt>>(v4, v5);
}

unint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<llvm::APInt>>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = mlir::SparseElementsAttr::try_value_begin_impl<std::complex<llvm::APInt>>(a1, v7);
  if (v7[48] == 1)
  {
    v5 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APInt> ()(long)>,std::complex<llvm::APInt>> &>(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

unint64_t mlir::SparseElementsAttr::try_value_begin_impl<std::complex<llvm::APInt>>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  mlir::SparseElementsAttr::getZeroValue<std::complex<llvm::APInt>>(a1, &v7);
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

      std::string::__throw_length_error[abi:nn200100]();
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
      result = MEMORY[0x259C63150](v9, 0x1000C8000313F17);
    }
  }

  if (v8 >= 0x41)
  {
    result = v7;
    if (v7)
    {
      return MEMORY[0x259C63150](v7, 0x1000C8000313F17);
    }
  }

  return result;
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APInt> ()(long)>,std::complex<llvm::APInt>> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

uint64_t mlir::SparseElementsAttr::getZeroValue<std::complex<llvm::APInt>>@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  ElementType = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getElementType(a1);
  result = mlir::IntegerType::getWidth(&ElementType);
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm5APIntEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEED1Ev(uint64_t a1)
{
  *a1 = &unk_28689B820;
  if (*(a1 + 88) >= 0x41u)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      MEMORY[0x259C63150](v2, 0x1000C8000313F17);
    }
  }

  if (*(a1 + 72) >= 0x41u)
  {
    v3 = *(a1 + 64);
    if (v3)
    {
      MEMORY[0x259C63150](v3, 0x1000C8000313F17);
    }
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm5APIntEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEED0Ev(uint64_t a1)
{
  *a1 = &unk_28689B820;
  if (*(a1 + 88) >= 0x41u)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      MEMORY[0x259C63150](v2, 0x1000C8000313F17);
    }
  }

  if (*(a1 + 72) >= 0x41u)
  {
    v3 = *(a1 + 64);
    if (v3)
    {
      MEMORY[0x259C63150](v3, 0x1000C8000313F17);
    }
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x259C63180);
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm5APIntEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEE7destroyEv(uint64_t a1)
{
  if (*(a1 + 88) >= 0x41u)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      MEMORY[0x259C63150](v2, 0x1000C8000313F17);
    }
  }

  if (*(a1 + 72) >= 0x41u)
  {
    v3 = *(a1 + 64);
    if (v3)
    {
      MEMORY[0x259C63150](v3, 0x1000C8000313F17);
    }
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;

    operator delete(v4);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm5APIntEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEE18destroy_deallocateEv(void *__p)
{
  if (*(__p + 22) >= 0x41u)
  {
    v2 = __p[10];
    if (v2)
    {
      MEMORY[0x259C63150](v2, 0x1000C8000313F17);
    }
  }

  if (*(__p + 18) >= 0x41u)
  {
    v3 = __p[8];
    if (v3)
    {
      MEMORY[0x259C63150](v3, 0x1000C8000313F17);
    }
  }

  v4 = __p[1];
  if (v4)
  {
    __p[2] = v4;
    operator delete(v4);
  }

  operator delete(__p);
}

uint64_t *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm5APIntEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEEclEOl@<X0>(uint64_t *result@<X0>, void *a2@<X1>, _DWORD *a3@<X8>)
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

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm5APIntEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x8000000257396BCCLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x8000000257396BCCLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000257396BCCLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000257396BCCLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm5APIntEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEEC2B8nn200100ERKSS_OSU_(uint64_t result, uint64_t a2)
{
  *result = &unk_28689B820;
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

    std::string::__throw_length_error[abi:nn200100]();
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APInt> ()(long)>,std::complex<llvm::APInt>>,std::complex<llvm::APInt>>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689B8B0;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APInt> ()(long)>,std::complex<llvm::APInt>>,std::complex<llvm::APInt>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689B8B0;
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

  JUMPOUT(0x259C63180);
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APInt> ()(long)>,std::complex<llvm::APInt>>,std::complex<llvm::APInt>>::at(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<unsigned char>>(v4, v5);
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<unsigned char>>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = mlir::SparseElementsAttr::try_value_begin_impl<std::complex<unsigned char>>(a1, v7);
  if (v7[48] == 1)
  {
    v5 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned char> ()(long)>,std::complex<unsigned char>> &>(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<std::complex<unsigned short>,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<unsigned short>>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<std::complex<unsigned short>,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<std::complex<unsigned int>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<std::complex<unsigned int>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<unsigned int>>(a1, a3);
}

uint64_t mlir::SparseElementsAttr::try_value_begin_impl<std::complex<unsigned char>>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a1 + 32);
  result = mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned char>,unsigned char,void>(v7, v9);
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

      std::string::__throw_length_error[abi:nn200100]();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned char> ()(long)>,std::complex<unsigned char>> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIhEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *result)
{
  *result = &unk_28689B8F8;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIhEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_28689B8F8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIhEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689B8F8;
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

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = *(a1 + 32);
  *(a2 + 42) = *(a1 + 42);
  *(a2 + 32) = result;
  *(a2 + 58) = 0;
  *(a2 + 62) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIhEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIhEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIhEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIhEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x8000000257396F8FLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x8000000257396F8FLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000257396F8FLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000257396F8FLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned char> ()(long)>,std::complex<unsigned char>>,std::complex<unsigned char>>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689B988;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned char> ()(long)>,std::complex<unsigned char>>,std::complex<unsigned char>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689B988;
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

  JUMPOUT(0x259C63180);
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned char> ()(long)>,std::complex<unsigned char>>,std::complex<unsigned char>>::at(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<unsigned short>>(v4, v5);
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<unsigned short>>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = mlir::SparseElementsAttr::try_value_begin_impl<std::complex<unsigned short>>(a1, v7);
  if (v7[48] == 1)
  {
    v5 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned short> ()(long)>,std::complex<unsigned short>> &>(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t mlir::SparseElementsAttr::try_value_begin_impl<std::complex<unsigned short>>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a1 + 32);
  result = mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned short>,unsigned short,void>(v7, v9);
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

      std::string::__throw_length_error[abi:nn200100]();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned short> ()(long)>,std::complex<unsigned short>> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexItEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *result)
{
  *result = &unk_28689B9E8;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexItEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_28689B9E8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexItEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689B9E8;
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

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = *(a1 + 32);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 32) = result;
  *(a2 + 60) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexItEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexItEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexItEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexItEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000002573973A4)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000002573973A4 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002573973A4))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002573973A4 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned short> ()(long)>,std::complex<unsigned short>>,std::complex<unsigned short>>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689BA78;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned short> ()(long)>,std::complex<unsigned short>>,std::complex<unsigned short>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689BA78;
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

  JUMPOUT(0x259C63180);
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned short> ()(long)>,std::complex<unsigned short>>,std::complex<unsigned short>>::at(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<unsigned int>>(v4, v5);
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<unsigned int>>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = mlir::SparseElementsAttr::try_value_begin_impl<std::complex<unsigned int>>(a1, v7);
  if (v7[48] == 1)
  {
    v5 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned int> ()(long)>,std::complex<unsigned int>> &>(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<std::complex<unsigned long long>,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<unsigned long long>>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<std::complex<unsigned long long>,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<std::complex<signed char>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<std::complex<signed char>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<signed char>>(a1, a3);
}

uint64_t mlir::SparseElementsAttr::try_value_begin_impl<std::complex<unsigned int>>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a1 + 32);
  result = mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned int>,unsigned int,void>(v7, v9);
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

      std::string::__throw_length_error[abi:nn200100]();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned int> ()(long)>,std::complex<unsigned int>> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIjEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *result)
{
  *result = &unk_28689BAD8;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIjEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_28689BAD8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIjEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689BAD8;
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

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIjEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIjEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIjEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIjEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000002573977B9)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000002573977B9 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002573977B9))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002573977B9 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned int> ()(long)>,std::complex<unsigned int>>,std::complex<unsigned int>>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689BB68;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned int> ()(long)>,std::complex<unsigned int>>,std::complex<unsigned int>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689BB68;
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

  JUMPOUT(0x259C63180);
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned int> ()(long)>,std::complex<unsigned int>>,std::complex<unsigned int>>::at(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<unsigned long long>>(v4, v5);
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<unsigned long long>>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = mlir::SparseElementsAttr::try_value_begin_impl<std::complex<unsigned long long>>(a1, v7);
  if (v7[48] == 1)
  {
    v5 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned long long> ()(long)>,std::complex<unsigned long long>> &>(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t mlir::SparseElementsAttr::try_value_begin_impl<std::complex<unsigned long long>>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a1 + 32);
  result = mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned long long>,unsigned long long,void>(v7, v9);
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

      std::string::__throw_length_error[abi:nn200100]();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned long long> ()(long)>,std::complex<unsigned long long>> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIyEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *result)
{
  *result = &unk_28689BBC8;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIyEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_28689BBC8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIyEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689BBC8;
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

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIyEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIyEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIyEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
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

  return *(*(a1 + 32) + 16 * v8);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIyEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x8000000257397BCELL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x8000000257397BCELL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000257397BCELL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000257397BCELL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned long long> ()(long)>,std::complex<unsigned long long>>,std::complex<unsigned long long>>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689BC58;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned long long> ()(long)>,std::complex<unsigned long long>>,std::complex<unsigned long long>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689BC58;
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

  JUMPOUT(0x259C63180);
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned long long> ()(long)>,std::complex<unsigned long long>>,std::complex<unsigned long long>>::at(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<signed char>>(v4, v5);
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<signed char>>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = mlir::SparseElementsAttr::try_value_begin_impl<std::complex<signed char>>(a1, v7);
  if (v7[48] == 1)
  {
    v5 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<signed char> ()(long)>,std::complex<signed char>> &>(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<std::complex<short>,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<short>>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<std::complex<short>,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<std::complex<int>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<std::complex<int>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<int>>(a1, a3);
}

uint64_t mlir::SparseElementsAttr::try_value_begin_impl<std::complex<signed char>>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a1 + 32);
  result = mlir::DenseElementsAttr::tryGetValues<std::complex<signed char>,signed char,void>(v7, v9);
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

      std::string::__throw_length_error[abi:nn200100]();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<signed char> ()(long)>,std::complex<signed char>> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIaEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *result)
{
  *result = &unk_28689BCB8;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIaEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_28689BCB8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIaEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689BCB8;
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

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = *(a1 + 32);
  *(a2 + 42) = *(a1 + 42);
  *(a2 + 32) = result;
  *(a2 + 58) = 0;
  *(a2 + 62) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIaEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIaEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIaEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIaEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x8000000257397FE3)
  {
    return a1 + 8;
  }

  if (((v2 & 0x8000000257397FE3 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000257397FE3))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000257397FE3 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<signed char> ()(long)>,std::complex<signed char>>,std::complex<signed char>>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689BD48;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<signed char> ()(long)>,std::complex<signed char>>,std::complex<signed char>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689BD48;
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

  JUMPOUT(0x259C63180);
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<signed char> ()(long)>,std::complex<signed char>>,std::complex<signed char>>::at(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<short>>(v4, v5);
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<short>>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = mlir::SparseElementsAttr::try_value_begin_impl<std::complex<short>>(a1, v7);
  if (v7[48] == 1)
  {
    v5 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<short> ()(long)>,std::complex<short>> &>(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t mlir::SparseElementsAttr::try_value_begin_impl<std::complex<short>>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a1 + 32);
  result = mlir::DenseElementsAttr::tryGetValues<std::complex<short>,short,void>(v7, v9);
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

      std::string::__throw_length_error[abi:nn200100]();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<short> ()(long)>,std::complex<short>> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIsEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *result)
{
  *result = &unk_28689BDA8;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIsEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_28689BDA8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIsEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689BDA8;
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

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = *(a1 + 32);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 32) = result;
  *(a2 + 60) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIsEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIsEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIsEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIsEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000002573983F8)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000002573983F8 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002573983F8))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002573983F8 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<short> ()(long)>,std::complex<short>>,std::complex<short>>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689BE38;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<short> ()(long)>,std::complex<short>>,std::complex<short>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689BE38;
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

  JUMPOUT(0x259C63180);
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<short> ()(long)>,std::complex<short>>,std::complex<short>>::at(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<int>>(v4, v5);
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<int>>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = mlir::SparseElementsAttr::try_value_begin_impl<std::complex<int>>(a1, v7);
  if (v7[48] == 1)
  {
    v5 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<int> ()(long)>,std::complex<int>> &>(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<std::complex<long long>,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<long long>>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<std::complex<long long>,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<llvm::APFloat,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::ElementsAttr::try_value_begin<llvm::APFloat>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<llvm::APFloat,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<llvm::APFloat>(a1, a3);
}

uint64_t mlir::SparseElementsAttr::try_value_begin_impl<std::complex<int>>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a1 + 32);
  result = mlir::DenseElementsAttr::tryGetValues<std::complex<int>,int,void>(v7, v9);
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

      std::string::__throw_length_error[abi:nn200100]();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<int> ()(long)>,std::complex<int>> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIiEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *result)
{
  *result = &unk_28689BE98;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIiEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_28689BE98;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIiEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689BE98;
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

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIiEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIiEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIiEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIiEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000025739880DLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000025739880DLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000025739880DLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000025739880DLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<int> ()(long)>,std::complex<int>>,std::complex<int>>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689BF28;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<int> ()(long)>,std::complex<int>>,std::complex<int>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689BF28;
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

  JUMPOUT(0x259C63180);
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<int> ()(long)>,std::complex<int>>,std::complex<int>>::at(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<long long>>(v4, v5);
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<long long>>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = mlir::SparseElementsAttr::try_value_begin_impl<std::complex<long long>>(a1, v7);
  if (v7[48] == 1)
  {
    v5 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<long long> ()(long)>,std::complex<long long>> &>(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t mlir::SparseElementsAttr::try_value_begin_impl<std::complex<long long>>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a1 + 32);
  result = mlir::DenseElementsAttr::tryGetValues<std::complex<long long>,long long,void>(v7, v9);
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

      std::string::__throw_length_error[abi:nn200100]();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<long long> ()(long)>,std::complex<long long>> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIxEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *result)
{
  *result = &unk_28689BF88;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIxEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_28689BF88;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIxEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689BF88;
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

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIxEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIxEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIxEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
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

  return *(*(a1 + 32) + 16 * v8);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIxEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x8000000257398C22)
  {
    return a1 + 8;
  }

  if (((v2 & 0x8000000257398C22 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000257398C22))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000257398C22 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<long long> ()(long)>,std::complex<long long>>,std::complex<long long>>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689C018;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<long long> ()(long)>,std::complex<long long>>,std::complex<long long>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689C018;
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

  JUMPOUT(0x259C63180);
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<long long> ()(long)>,std::complex<long long>>,std::complex<long long>>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 48))(v2, &v5);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<llvm::APFloat>(v3, v4);
  }
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<llvm::APFloat>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  mlir::SparseElementsAttr::try_value_begin_impl<llvm::APFloat>(a1, v6);
  if (v6[48] == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APFloat ()(long)>,llvm::APFloat> &>(v4, v6, &v5);
  }

  *a2 = 0;
  a2[16] = 0;
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<float,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<float>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<float,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<double,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<double,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<double>(a1, a3);
}

void mlir::SparseElementsAttr::try_value_begin_impl<llvm::APFloat>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  *v19 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getElementType(a1);
  FloatSemantics = mlir::FloatType::getFloatSemantics(v19);
  v5 = llvm::APFloatBase::PPCDoubleDouble(FloatSemantics);
  if (v5 == FloatSemantics)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v18, FloatSemantics);
  }

  llvm::detail::IEEEFloat::IEEEFloat(&v18, FloatSemantics);
  v15[0] = *(*a1 + 32);
  mlir::DenseElementsAttr::tryGetFloatValues(v15, v19);
  if (v21)
  {
    v6 = v19[0];
    v16 = *&v19[1];
    v17[0] = *v20;
    *(v17 + 15) = *&v20[15];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &v7);
    __p[1] = 0;
    v10 = 0;
    __p[0] = 0;
    if (v8 != v7)
    {
      if (((v8 - v7) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = v6;
    v12 = v16;
    *v13 = v17[0];
    *&v13[15] = *(v17 + 15);
    if (v5 == v18.n128_u64[0])
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(&v14, &v18);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(&v14, &v18);
    }

    v15[3] = 0;
    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  if (v5 == v18.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v18);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v18);
  }
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APFloat ()(long)>,llvm::APFloat> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm7APFloatEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEED1Ev(void *a1)
{
  *a1 = &unk_28689C078;
  v2 = (a1 + 10);
  v3 = a1[10];
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v3)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v2);
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm7APFloatEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_28689C078;
  v2 = (a1 + 10);
  v3 = a1[10];
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v3)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v2);
    v4 = a1[1];
    if (!v4)
    {
LABEL_4:

      JUMPOUT(0x259C63180);
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

void *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm7APFloatEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689C078;
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

    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = v5;
  *(a2 + 48) = v6;
  v8 = *(a1 + 80);
  v7 = (a1 + 80);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v8)
  {

    return llvm::detail::DoubleAPFloat::DoubleAPFloat((a2 + 80), v7);
  }

  else
  {

    return llvm::detail::IEEEFloat::IEEEFloat((a2 + 80), v7);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm7APFloatEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE7destroyEv(void *a1)
{
  v2 = (a1 + 10);
  v3 = a1[10];
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v3)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v2);
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm7APFloatEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE18destroy_deallocateEv(void *a1)
{
  v2 = (a1 + 10);
  v3 = a1[10];
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

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v2);
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

llvm::detail::IEEEFloat *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm7APFloatEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEEclEOl@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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
    return llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v13, a3);
  }

  else
  {
LABEL_5:
    v9 = (a1 + 80);
    v10 = *(a1 + 80);
    if (llvm::APFloatBase::PPCDoubleDouble(a1) == v10)
    {

      return llvm::detail::DoubleAPFloat::DoubleAPFloat((a3 + 8), v9);
    }

    else
    {

      return llvm::detail::IEEEFloat::IEEEFloat((a3 + 8), v9);
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm7APFloatEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x8000000257399035)
  {
    return a1 + 8;
  }

  if (((v2 & 0x8000000257399035 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000257399035))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000257399035 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APFloat ()(long)>,llvm::APFloat>,llvm::APFloat>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689C108;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APFloat ()(long)>,llvm::APFloat>,llvm::APFloat>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689C108;
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

  JUMPOUT(0x259C63180);
}

unint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APFloat ()(long)>,llvm::APFloat>,llvm::APFloat>::at(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<float>(v4, v5);
}

unint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<float>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = mlir::SparseElementsAttr::try_value_begin_impl<float>(a1, v7);
  if (v7[48] == 1)
  {
    v5 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<float ()(long)>,float> &>(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

unint64_t mlir::SparseElementsAttr::try_value_begin_impl<float>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a1 + 32);
  result = mlir::DenseElementsAttr::tryGetValues<float,void>(v7, v9);
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

      std::string::__throw_length_error[abi:nn200100]();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<float ()(long)>,float> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIfEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFflEED1Ev(void *result)
{
  *result = &unk_28689C150;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIfEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFflEED0Ev(void *a1)
{
  *a1 = &unk_28689C150;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIfEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFflEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689C150;
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

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = *(a1 + 32);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 32) = result;
  *(a2 + 60) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIfEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFflEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIfEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFflEE18destroy_deallocateEv(void *a1)
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

float _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIfEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFflEEclEOl(uint64_t a1, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIfEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFflEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000002573993C0)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000002573993C0 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002573993C0))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002573993C0 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<float ()(long)>,float>,float>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689C1E0;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<float ()(long)>,float>,float>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689C1E0;
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

  JUMPOUT(0x259C63180);
}

unint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<float ()(long)>,float>,float>::at(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<double>(v4, v5);
}

unint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<double>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = mlir::SparseElementsAttr::try_value_begin_impl<double>(a1, v7);
  if (v7[48] == 1)
  {
    v5 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<double ()(long)>,double> &>(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    _ZNK4mlir6detail17ElementsAttrTraitINS_24DenseIntOrFPElementsAttrEE12getValueImplINSt3__17complexIN4llvm7APFloatEEEJENS5_17integral_constantIbLb0EEEEEDaNS_6TypeIDET1__cold_1();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<std::complex<llvm::APFloat>,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<llvm::APFloat>>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<std::complex<llvm::APFloat>,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<std::complex<float>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<std::complex<float>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<float>>(a1, a3);
}

unint64_t mlir::SparseElementsAttr::try_value_begin_impl<double>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a1 + 32);
  result = mlir::DenseElementsAttr::tryGetValues<double,void>(v7, v9);
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

      std::string::__throw_length_error[abi:nn200100]();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<double ()(long)>,double> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIdEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFdlEED1Ev(void *result)
{
  *result = &unk_28689C240;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIdEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFdlEED0Ev(void *a1)
{
  *a1 = &unk_28689C240;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIdEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFdlEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689C240;
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

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIdEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFdlEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIdEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFdlEE18destroy_deallocateEv(void *a1)
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

double _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIdEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFdlEEclEOl(uint64_t a1, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIdEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFdlEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x8000000257399783)
  {
    return a1 + 8;
  }

  if (((v2 & 0x8000000257399783 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000257399783))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000257399783 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<double ()(long)>,double>,double>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689C2D0;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<double ()(long)>,double>,double>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689C2D0;
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

  JUMPOUT(0x259C63180);
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<double ()(long)>,double>,double>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 48))(v2, &v5);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<llvm::APFloat>>(v3, v4);
  }
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<llvm::APFloat>>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  mlir::SparseElementsAttr::try_value_begin_impl<std::complex<llvm::APFloat>>(a1, v6);
  if (v6[48] == 1)
  {
    v4 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APFloat> ()(long)>,std::complex<llvm::APFloat>> &>(v4, v6, &v5);
  }

  *a2 = 0;
  a2[16] = 0;
}

void mlir::SparseElementsAttr::try_value_begin_impl<std::complex<llvm::APFloat>>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  mlir::SparseElementsAttr::getZeroValue<std::complex<llvm::APFloat>>(a1, v23);
  v20[0] = *(*a1 + 32);
  ComplexFloatValues = mlir::DenseElementsAttr::tryGetComplexFloatValues(v20, v26);
  if (v28)
  {
    v5 = v26[0];
    v21 = *&v26[1];
    v22[0] = *v27;
    *(v22 + 15) = *&v27[15];
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

      std::string::__throw_length_error[abi:nn200100]();
    }

    v15 = v5;
    v16 = v21;
    *v17 = v22[0];
    *&v17[15] = *(v22 + 15);
    v7 = v24[0].n128_u64[0];
    v8 = llvm::APFloatBase::PPCDoubleDouble(v6);
    if (v8 == v7)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v18, v24);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(v18, v24);
    }

    if (v8 == v25.n128_u64[0])
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(&v19, &v25);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(&v19, &v25);
    }

    _ZNSt3__110__function12__value_funcIFNS_7complexIN4llvm7APFloatEEElEEC2B8nn200100IZNK4mlir18SparseElementsAttr20try_value_begin_implIS5_EENS3_9FailureOrINS3_15mapped_iteratorINS3_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISK_EEdeclL_ZNS_7declvalB8nn200100ISG_EEDTclsr3stdE9__declvalISI_ELi0EEEvEEEEEEEENS9_6detail17ElementsAttrTraitISA_E13OverloadTokenISI_EEEUllE_NS_9allocatorISV_EEEEOSI_RKT0_(v20);
  }

  *a2 = 0;
  a2[48] = 0;
  v9 = llvm::APFloatBase::PPCDoubleDouble(ComplexFloatValues);
  if (v9 == v25.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v25);
    if (v9 != v24[0].n128_u64[0])
    {
      goto LABEL_15;
    }

LABEL_18:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v24);
    return;
  }

  llvm::detail::IEEEFloat::~IEEEFloat(&v25);
  if (v9 == v24[0].n128_u64[0])
  {
    goto LABEL_18;
  }

LABEL_15:
  llvm::detail::IEEEFloat::~IEEEFloat(v24);
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APFloat> ()(long)>,std::complex<llvm::APFloat>> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void mlir::SparseElementsAttr::getZeroValue<std::complex<llvm::APFloat>>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v8[3] = *MEMORY[0x277D85DE8];
  ElementType = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getElementType(a1);
  FloatSemantics = mlir::FloatType::getFloatSemantics(&ElementType);
  v4 = llvm::APFloatBase::PPCDoubleDouble(FloatSemantics);
  if (v4 == FloatSemantics)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v8, FloatSemantics);
  }

  llvm::detail::IEEEFloat::IEEEFloat(v8, FloatSemantics);
  v5 = (a2 + 8);
  if (v4 != v8[0])
  {
    llvm::detail::IEEEFloat::IEEEFloat(v5, v8);
    v6 = (a2 + 40);
    if (v4 != v8[0])
    {
      goto LABEL_4;
    }

LABEL_9:
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v6, v8);
    if (v4 != v8[0])
    {
      goto LABEL_5;
    }

LABEL_10:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v8);
    return;
  }

  llvm::detail::DoubleAPFloat::DoubleAPFloat(v5, v8);
  v6 = (a2 + 40);
  if (v4 == v8[0])
  {
    goto LABEL_9;
  }

LABEL_4:
  llvm::detail::IEEEFloat::IEEEFloat(v6, v8);
  if (v4 == v8[0])
  {
    goto LABEL_10;
  }

LABEL_5:
  llvm::detail::IEEEFloat::~IEEEFloat(v8);
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm7APFloatEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEED1Ev(void *a1)
{
  *a1 = &unk_28689C330;
  v2 = (a1 + 14);
  v3 = a1[14];
  v4 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v4 != v3)
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v2);
    v5 = (a1 + 10);
    if (v4 != a1[10])
    {
      goto LABEL_3;
    }

LABEL_7:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
    v6 = a1[1];
    if (!v6)
    {
      return a1;
    }

    goto LABEL_4;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v2);
  v5 = (a1 + 10);
  if (v4 == a1[10])
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm7APFloatEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEED0Ev(void *a1)
{
  *a1 = &unk_28689C330;
  v2 = (a1 + 14);
  v3 = a1[14];
  v4 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v4 == v3)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v2);
    v5 = (a1 + 10);
    if (v4 != a1[10])
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
    v5 = (a1 + 10);
    if (v4 != a1[10])
    {
      goto LABEL_3;
    }
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
  v6 = a1[1];
  if (!v6)
  {
LABEL_5:

    JUMPOUT(0x259C63180);
  }

LABEL_4:
  a1[2] = v6;
  operator delete(v6);
  goto LABEL_5;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm7APFloatEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEE7destroyEv(void *a1)
{
  v2 = (a1 + 14);
  v3 = a1[14];
  v4 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v4 != v3)
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v2);
    v5 = (a1 + 10);
    if (v4 != a1[10])
    {
      goto LABEL_3;
    }

LABEL_8:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
    v6 = a1[1];
    if (!v6)
    {
      return;
    }

    goto LABEL_4;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v2);
  v5 = (a1 + 10);
  if (v4 == a1[10])
  {
    goto LABEL_8;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(v5);
  v6 = a1[1];
  if (!v6)
  {
    return;
  }

LABEL_4:
  a1[2] = v6;

  operator delete(v6);
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm7APFloatEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEE18destroy_deallocateEv(void *a1)
{
  v2 = (a1 + 14);
  v3 = a1[14];
  v4 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v4 == v3)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v2);
    v5 = (a1 + 10);
    if (v4 != a1[10])
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
    v5 = (a1 + 10);
    if (v4 != a1[10])
    {
      goto LABEL_3;
    }
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
  v6 = a1[1];
  if (v6)
  {
LABEL_4:
    a1[2] = v6;
    operator delete(v6);
  }

LABEL_5:

  operator delete(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm7APFloatEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x8000000257399B7ELL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x8000000257399B7ELL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000257399B7ELL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000257399B7ELL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t _ZNSt3__110__function12__alloc_funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm7APFloatEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEEC2B8nn200100ERKSS_OSU_(uint64_t a1, uint64_t a2)
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

    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v6;
  *(a1 + 24) = v5;
  v7 = *(a2 + 72);
  v8 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v8 == v7)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 72), (a2 + 72));
    v9 = (a1 + 104);
    v10 = (a2 + 104);
    if (v8 != *(a2 + 104))
    {
      goto LABEL_6;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat((a1 + 72), (a2 + 72));
    v9 = (a1 + 104);
    v10 = (a2 + 104);
    if (v8 != *(a2 + 104))
    {
LABEL_6:
      llvm::detail::IEEEFloat::IEEEFloat(v9, v10);
      return a1;
    }
  }

  llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, v10);
  return a1;
}

void _ZZNK4mlir18SparseElementsAttr20try_value_begin_implINSt3__17complexIN4llvm7APFloatEEEEENS4_9FailureOrINS4_15mapped_iteratorINS4_6detail15SafeIntIteratorIlLb0EEENS2_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS2_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS_6detail17ElementsAttrTraitIS0_E13OverloadTokenISD_EEENKUllE_clEl(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = (*(a1 + 8) - *a1) >> 3;
  if (!v6)
  {
LABEL_5:
    v9 = *(a1 + 72);
    v10 = llvm::APFloatBase::PPCDoubleDouble(a1);
    if (v10 == v9)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat((a3 + 8), (a1 + 72));
      v11 = (a3 + 40);
      v12 = (a1 + 104);
      if (v10 != *(a1 + 104))
      {
        goto LABEL_7;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat((a3 + 8), (a1 + 72));
      v11 = (a3 + 40);
      v12 = (a1 + 104);
      if (v10 != *(a1 + 104))
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
  mlir::DenseElementsAttr::ComplexFloatElementIterator::mapElement(&v17, &v14, a3);
  if (v20 >= 0x41 && v19)
  {
    MEMORY[0x259C63150](v19, 0x1000C8000313F17);
  }

  if (v18 >= 0x41 && v17)
  {
    MEMORY[0x259C63150](v17, 0x1000C8000313F17);
  }
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APFloat> ()(long)>,std::complex<llvm::APFloat>>,std::complex<llvm::APFloat>>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689C3C0;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APFloat> ()(long)>,std::complex<llvm::APFloat>>,std::complex<llvm::APFloat>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689C3C0;
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

  JUMPOUT(0x259C63180);
}

unint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APFloat> ()(long)>,std::complex<llvm::APFloat>>,std::complex<llvm::APFloat>>::at(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<float>>(v4, v5);
}

unint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<float>>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = mlir::SparseElementsAttr::try_value_begin_impl<std::complex<float>>(a1, v7);
  if (v7[48] == 1)
  {
    v5 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<float> ()(long)>,std::complex<float>> &>(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

mlir::SparseElementsAttr *mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>@<X0>(mlir::SparseElementsAttr *result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<std::complex<double>,void>::resolveTypeID(void)::id != a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = a3;
    v3 = result;
    v5 = a2;
    _ZNK4mlir6detail17ElementsAttrTraitINS_24DenseIntOrFPElementsAttrEE12getValueImplINSt3__17complexIdEEJENS5_17integral_constantIbLb1EEEEEDaNS_6TypeIDET1__cold_1();
    result = v3;
    a2 = v5;
    a3 = v7;
    if (mlir::detail::TypeIDResolver<std::complex<double>,void>::resolveTypeID(void)::id != v5)
    {
LABEL_3:
      {
        if (mlir::detail::TypeIDResolver<llvm::StringRef,void>::resolveTypeID(void)::id != a2)
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
        _ZNK4mlir6detail17ElementsAttrTraitINS_23DenseStringElementsAttrEE12getValueImplIN4llvm9StringRefEJENSt3__117integral_constantIbLb1EEEEEDaNS_6TypeIDET1__cold_1();
        result = v4;
        a3 = v8;
        if (mlir::detail::TypeIDResolver<llvm::StringRef,void>::resolveTypeID(void)::id != v6)
        {
          goto LABEL_5;
        }
      }

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<llvm::StringRef>(result);
    }
  }

  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<double>>(result, a3);
}

unint64_t mlir::SparseElementsAttr::try_value_begin_impl<std::complex<float>>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a1 + 32);
  result = mlir::DenseElementsAttr::tryGetValues<std::complex<float>,float,void>(v7, v9);
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

      std::string::__throw_length_error[abi:nn200100]();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<float> ()(long)>,std::complex<float>> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIfEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *result)
{
  *result = &unk_28689C408;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIfEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_28689C408;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIfEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689C408;
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

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIfEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIfEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *a1)
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

float _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIfEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIfEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x8000000257399F45)
  {
    return a1 + 8;
  }

  if (((v2 & 0x8000000257399F45 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000257399F45))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000257399F45 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<float> ()(long)>,std::complex<float>>,std::complex<float>>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689C498;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<float> ()(long)>,std::complex<float>>,std::complex<float>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689C498;
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

  JUMPOUT(0x259C63180);
}

unint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<float> ()(long)>,std::complex<float>>,std::complex<float>>::at(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<double>>(v4, v5);
}

unint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<std::complex<double>>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = mlir::SparseElementsAttr::try_value_begin_impl<std::complex<double>>(a1, v7);
  if (v7[48] == 1)
  {
    v5 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<double> ()(long)>,std::complex<double>> &>(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

unint64_t mlir::SparseElementsAttr::try_value_begin_impl<std::complex<double>>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a1 + 32);
  result = mlir::DenseElementsAttr::tryGetValues<std::complex<double>,double,void>(v7, v9);
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

      std::string::__throw_length_error[abi:nn200100]();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<double> ()(long)>,std::complex<double>> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIdEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *result)
{
  *result = &unk_28689C4F8;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIdEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_28689C4F8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIdEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689C4F8;
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

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIdEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIdEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *a1)
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

double _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIdEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
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

  return *(*(a1 + 32) + 16 * v8);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIdEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000025739A35ALL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000025739A35ALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000025739A35ALL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000025739A35ALL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<double> ()(long)>,std::complex<double>>,std::complex<double>>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689C588;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<double> ()(long)>,std::complex<double>>,std::complex<double>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689C588;
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

  JUMPOUT(0x259C63180);
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<double> ()(long)>,std::complex<double>>,std::complex<double>>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (!v2)
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<llvm::StringRef>(v4);
  }

  return (*(*v2 + 48))(v2, &v5);
}

void mlir::SparseElementsAttr::try_value_begin_impl<llvm::StringRef>(mlir::SparseElementsAttr *a1)
{
  v7 = *MEMORY[0x277D85DE8];
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

    std::string::__throw_length_error[abi:nn200100]();
  }

  operator new();
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::StringRef ()(long)>,llvm::StringRef> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEED1Ev(void *result)
{
  *result = &unk_28689C5E8;
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

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_28689C5E8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689C5E8;
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

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE18destroy_deallocateEv(void *a1)
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

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEEclEOl(uint64_t a1, void *a2)
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

  return *(*(a1 + 32) + 16 * v8);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000025739A771)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000025739A771 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000025739A771))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000025739A771 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::StringRef ()(long)>,llvm::StringRef>,llvm::StringRef>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689C678;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::StringRef ()(long)>,llvm::StringRef>,llvm::StringRef>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689C678;
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

  JUMPOUT(0x259C63180);
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::StringRef ()(long)>,llvm::StringRef>,llvm::StringRef>::at(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::StorageUserBase<mlir::SparseElementsAttr,mlir::Attribute,mlir::detail::SparseElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(v4);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18SparseElementsAttrES2_NSB_25SparseElementsAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18SparseElementsAttrES2_NSA_25SparseElementsAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8.i64[0] = a3;
  v8.i64[1] = a4;
  v7.i64[0] = a5;
  v7.i64[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::SparseElementsAttr>(a2, &v8, &v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::SparseElementsAttr>(void *a1, int64x2_t *a2, int64x2_t *a3)
{
  v24 = a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  v22 = *a3;
  v23 = v7;
  v8 = mlir::AttrTypeSubElementHandler<mlir::ShapedType,void>::replace(v3, v4, &v23, &v22);
  v10 = v9;
  if (v5)
  {
    v11 = v23.i64[0];
    v23 = vaddq_s64(v23, xmmword_25736B7B0);
    v5 = *v11;
  }

  if (v6)
  {
    v12 = v23.i64[0];
    v23 = vaddq_s64(v23, xmmword_25736B7B0);
    v6 = *v12;
  }

  mlir::Attribute::getContext(&v24);
  *&v25 = v8;
  *(&v25 + 1) = v10;
  Context = mlir::Type::getContext(&v25);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v26[0] = &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id;
  v26[1] = Context;
  v32[0] = _ZN4llvm12function_refIFvPN4mlir6detail25SparseElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_18SparseElementsAttrEJRNS1_10ShapedTypeENS1_20DenseIntElementsAttrERNS1_17DenseElementsAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
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
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id, -348639895 * ((v20 >> 47) ^ v20), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v28, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v27);
}

void mlir::AbstractAttribute::get<mlir::StridedLayoutAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::MemRefLayoutAttrInterface::Trait<mlir::StridedLayoutAttr>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::StridedLayoutAttr,mlir::Attribute,mlir::detail::StridedLayoutAttrStorage,mlir::detail::AttributeUniquer,mlir::MemRefLayoutAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_17StridedLayoutAttrES2_NSB_24StridedLayoutAttrStorageENSB_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_17StridedLayoutAttrES2_NSA_24StridedLayoutAttrStorageENSA_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
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

  if (v4 != v13)
  {
    free(v4);
  }
}

void mlir::detail::InterfaceMap::get<mlir::MemRefLayoutAttrInterface::Trait<mlir::StridedLayoutAttr>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::StridedLayoutAttr>::getAffineMap;
  v2[1] = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::StridedLayoutAttr>::isIdentity;
  v2[2] = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::StridedLayoutAttr>::verifyLayout;
  {
    v5 = v2;
    llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseMemRefType(void)::$_0>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::StridedLayoutAttr>::getAffineMap(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[1];
  Context = mlir::Attribute::getContext(&v7);
  return mlir::makeStridedLinearLayoutMap(v3, v2, v4, Context);
}

uint64_t mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::StridedLayoutAttr>::isIdentity(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[1];
  Context = mlir::Attribute::getContext(&v7);
  StridedLinearLayoutMap = mlir::makeStridedLinearLayoutMap(v3, v2, v4, Context);
  return mlir::AffineMap::isIdentity(&StridedLinearLayoutMap);
}

BOOL mlir::detail::StorageUserBase<mlir::StridedLayoutAttr,mlir::Attribute,mlir::detail::StridedLayoutAttrStorage,mlir::detail::AttributeUniquer,mlir::MemRefLayoutAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::detail::StorageUserBase<mlir::AffineMapAttr,mlir::Attribute,mlir::detail::AffineMapAttrStorage,mlir::detail::AttributeUniquer,mlir::MemRefLayoutAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke();
  return mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::StridedLayoutAttr>(uint64_t a1)
{
  v27[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  mlir::AttrTypeSubElementHandler<std::tuple<long long,llvm::ArrayRef<long long>>,void>::replace(&v12, &v24);
  Context = mlir::Attribute::getContext(&v14);
  v2 = v24;
  v20 = v24;
  v21 = v23;
  v22 = 0x600000000;
  v3 = v26;
  if (v26)
  {
    if (v26 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v23, v25, 8 * v26);
    LODWORD(v22) = v3;
    v2 = v20;
    v4 = v21;
  }

  else
  {
    v3 = 0;
    v4 = v23;
  }

  v5 = *v2;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id;
  v15[1] = Context;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir6detail24StridedLayoutAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_17StridedLayoutAttrEJxNS_8ArrayRefIxEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v19[1] = v15;
  v18[0] = v5;
  v18[1] = v4;
  v18[2] = v3;
  v7 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(v4, &v4[v3]);
  v8 = __ROR8__(v7 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v8 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v8 ^ 0xFF51AFD7ED558CCDLL)));
  v16[0] = v18;
  v16[1] = v19;
  v17 = v18;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id, (-348639895 * ((v9 >> 47) ^ v9)) ^ v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
  if (v21 != v23)
  {
    free(v21);
  }

  if (v25 != v27)
  {
    free(v25);
  }

  return ParametricStorageTypeImpl;
}

void mlir::AttrTypeSubElementHandler<std::tuple<long long,llvm::ArrayRef<long long>>,void>::replace(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[6] = *MEMORY[0x277D85DE8];
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(*(a1 + 8), *(a1 + 16), &__src);
  *(a2 + 8) = a2 + 24;
  *a2 = a1;
  *(a2 + 16) = 0x600000000;
  v4 = __src;
  if ((a2 + 8) != &__src)
  {
    v5 = v8;
    if (v8)
    {
      if (__src == v10)
      {
        if (v8 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy((a2 + 24), __src, 8 * v8);
        v4 = __src;
        *(a2 + 16) = v5;
      }

      else
      {
        *(a2 + 8) = __src;
        v6 = v9;
        *(a2 + 16) = v5;
        *(a2 + 20) = v6;
        __src = v10;
        v9 = 0;
        v4 = v10;
      }

      v8 = 0;
    }
  }

  if (v4 != v10)
  {
    free(v4);
  }
}

void mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[6] = *MEMORY[0x277D85DE8];
  __src = v14;
  v13 = 0x600000000;
  if (a2)
  {
    v3 = 8 * a2;
    do
    {
      while (1)
      {
        v4 = v13;
        if (v13 >= HIDWORD(v13))
        {
          break;
        }

        v5 = *a1++;
        *(__src + v13) = v5;
        LODWORD(v13) = v4 + 1;
        v3 -= 8;
        if (!v3)
        {
          goto LABEL_7;
        }
      }

      v6 = a1;
      v7 = a3;
      llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(&__src, a1);
      a3 = v7;
      a1 = v6 + 1;
      v3 -= 8;
    }

    while (v3);
LABEL_7:
    v8 = v13;
    v9 = __src;
    *a3 = a3 + 16;
    *(a3 + 8) = 0x600000000;
    if (v8 && &__src != a3)
    {
      if (v9 == v14)
      {
        if (v8 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = a3;
        memcpy(*a3, v9, 8 * v8);
        v9 = __src;
        *(v11 + 8) = v8;
      }

      else
      {
        *a3 = v9;
        v10 = HIDWORD(v13);
        *(a3 + 8) = v8;
        *(a3 + 12) = v10;
        __src = v14;
        HIDWORD(v13) = 0;
        v9 = v14;
      }

      LODWORD(v13) = 0;
    }

    if (v9 != v14)
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

void mlir::AbstractAttribute::get<mlir::StringAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[6] = *MEMORY[0x277D85DE8];
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::StringAttr>::getType;
  {
    v10 = v4;
    mlir::Builder::getZeroAttr();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v14);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::StringAttr,mlir::Attribute,mlir::detail::StringAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v13;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10StringAttrES2_NSB_17StringAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v12;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10StringAttrES2_NSA_17StringAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
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

BOOL mlir::detail::StorageUserBase<mlir::StringAttr,mlir::Attribute,mlir::detail::StringAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::detail::StorageUserBase<mlir::FloatAttr,mlir::Attribute,mlir::detail::FloatAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke();
  return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13SymbolRefAttrES2_NSB_20SymbolRefAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13SymbolRefAttrES2_NSA_20SymbolRefAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::SymbolRefAttr>(a2, v5);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::SymbolRefAttr>(uint64_t a1, uint64_t a2)
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
  v20[0] = _ZN4llvm12function_refIFvPN4mlir6detail20SymbolRefAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13SymbolRefAttrEJRNS1_10StringAttrERNS_8ArrayRefINS1_17FlatSymbolRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v20[1] = v16;
  v19[0] = v15;
  v19[1] = v3;
  v19[2] = v6;
  v9 = (v15 >> 4) ^ (v15 >> 9);
  v10 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(v3, &v3[2 * v6]);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v9 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v9 ^ 0xFF51AFD7ED558CCDLL)));
  v17[0] = v19;
  v17[1] = v20;
  v18 = v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8TypeAttrES2_NSB_15TypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8TypeAttrES2_NSA_15TypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::TypeAttr>(a2, v8, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::TypeAttr>(uint64_t a1, uint64_t a2, uint64_t **a3)
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
  v14[0] = _ZN4llvm12function_refIFvPN4mlir6detail15TypeAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_8TypeAttrEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v14[1] = v10;
  v13 = v9;
  v6 = 0x9DDFEA08EB382D69 * ((8 * ((v9 >> 4) ^ (v9 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v11[0] = &v13;
  v11[1] = v14;
  v12 = &v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v6 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::TypeAttrStorage * mlir::StorageUniquer::get<mlir::detail::TypeAttrStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::TypeAttrStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TypeAttrStorage * mlir::StorageUniquer::get<mlir::detail::TypeAttrStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::TypeAttrStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

void mlir::Dialect::addAttribute<mlir::DistinctAttr>(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  {
    mlir::Dialect::addAttribute<mlir::DistinctAttr>();
  }

  v2 = mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id;
  mlir::AbstractAttribute::get<mlir::DistinctAttr>(a1, v11);
  mlir::Dialect::addAttribute(a1, v2, v11);
  v3 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v4 = v15;
      }

      else
      {
        v4 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1]);
    }
  }

  v5 = v12;
  if (v13)
  {
    v6 = 16 * v13;
    v7 = (v12 + 8);
    do
    {
      v8 = *v7;
      v7 += 2;
      free(v8);
      v6 -= 16;
    }

    while (v6);
    v5 = v12;
  }

  if (v5 != &v14)
  {
    free(v5);
  }

  v9 = *(a1 + 32);
  {
    v10 = v9;
    mlir::DistinctAttr::create();
    v9 = v10;
  }

  mlir::MLIRContext::getAttributeUniquer(v9);
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::AbstractAttribute::get<mlir::DistinctAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  memset(v17, 0, sizeof(v17));
  v15 = v17;
  v16 = 0x300000000;
  *&v12 = mlir::detail::StorageUserBase<mlir::DistinctAttr,mlir::Attribute,mlir::detail::DistinctAttrStorage,mlir::detail::DistinctAttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v14 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  {
    v9 = a1;
    mlir::DistinctAttr::create();
    a1 = v9;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id;
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v16)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v15);
  }

  v4 = v14;
  *(a2 + 96) = v14;
  if (v4 >= 8)
  {
    if ((v4 & 2) != 0 && (v4 & 4) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 8))();
      (*((*(a2 + 96) & 0xFFFFFFFFFFFFFFF8) + 16))(&v12);
    }

    else
    {
      *(a2 + 72) = v12;
      *(a2 + 88) = v13;
    }
  }

  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12DistinctAttrES2_NSB_19DistinctAttrStorageENSB_24DistinctAttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v11;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12DistinctAttrES2_NSA_19DistinctAttrStorageENSA_24DistinctAttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v10;
  *(a2 + 136) = v3;
  *(a2 + 144) = "builtin.distinct";
  *(a2 + 152) = 16;
  v5 = v15;
  if (v16)
  {
    v6 = 16 * v16;
    v7 = (v15 + 8);
    do
    {
      v8 = *v7;
      v7 += 2;
      free(v8);
      v6 -= 16;
    }

    while (v6);
    v5 = v15;
  }

  if (v5 != v17)
  {
    free(v5);
  }
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12DistinctAttrES2_NSB_19DistinctAttrStorageENSB_24DistinctAttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

void *_ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12DistinctAttrES2_NSA_19DistinctAttrStorageENSA_24DistinctAttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::DistinctAttr>(a2, v5);
}

void *mlir::detail::replaceImmediateSubElementsImpl<mlir::DistinctAttr>(uint64_t a1, uint64_t **a2)
{
  v6 = a1;
  if (*(a1 + 8))
  {
    v2 = **a2;
  }

  else
  {
    v2 = 0;
  }

  Context = mlir::Attribute::getContext(&v6);
  Storage = mlir::detail::DistinctAttributeUniquer::allocateStorage(Context, v2);
  {
    mlir::DistinctAttr::create();
  }

  *Storage = mlir::AbstractAttribute::lookup(mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id, Context);
  return Storage;
}

uint64_t llvm::array_pod_sort_comparator<mlir::NamedAttribute>(uint64_t *a1, uint64_t *a2)
{
  if (mlir::NamedAttribute::operator<(a1, a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return mlir::NamedAttribute::operator<(a2, a1);
  }
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<mlir::NamedAttribute const*>(_DWORD *a1, _DWORD *a2)
{
  v93[1] = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    v82 = 0;
  }

  else
  {
    v2 = 0xBF58476D1CE4E5B9 * ((a1[2] >> 4) ^ (a1[2] >> 9) | (((*a1 >> 4) ^ (*a1 >> 9)) << 32));
    v3 = (v2 >> 31) ^ v2;
    *&v89 = v3;
    if (a1 + 4 == a2)
    {
      v82 = 8;
    }

    else
    {
      v4 = 0xBF58476D1CE4E5B9 * ((a1[6] >> 4) ^ (a1[6] >> 9) | (((a1[4] >> 4) ^ (a1[4] >> 9)) << 32));
      v5 = (v4 >> 31) ^ v4;
      *(&v89 + 1) = v5;
      if (a1 + 8 == a2)
      {
        v82 = 16;
      }

      else
      {
        v6 = 0xBF58476D1CE4E5B9 * ((a1[10] >> 4) ^ (a1[10] >> 9) | (((a1[8] >> 4) ^ (a1[8] >> 9)) << 32));
        v7 = (v6 >> 31) ^ v6;
        *&v90 = v7;
        if (a1 + 12 == a2)
        {
          v82 = 24;
        }

        else
        {
          v8 = 0xBF58476D1CE4E5B9 * ((a1[14] >> 4) ^ (a1[14] >> 9) | (((a1[12] >> 4) ^ (a1[12] >> 9)) << 32));
          v9 = (v8 >> 31) ^ v8;
          *(&v90 + 1) = v9;
          if (a1 + 16 == a2)
          {
            v82 = 32;
          }

          else
          {
            v10 = 0xBF58476D1CE4E5B9 * ((a1[18] >> 4) ^ (a1[18] >> 9) | (((a1[16] >> 4) ^ (a1[16] >> 9)) << 32));
            v11 = (v10 >> 31) ^ v10;
            *&v91 = v11;
            if (a1 + 20 == a2)
            {
              v82 = 40;
            }

            else
            {
              v12 = 0xBF58476D1CE4E5B9 * ((a1[22] >> 4) ^ (a1[22] >> 9) | (((a1[20] >> 4) ^ (a1[20] >> 9)) << 32));
              v13 = (v12 >> 31) ^ v12;
              *(&v91 + 1) = v13;
              if (a1 + 24 == a2)
              {
                v82 = 48;
              }

              else
              {
                v14 = 0xBF58476D1CE4E5B9 * ((a1[26] >> 4) ^ (a1[26] >> 9) | (((a1[24] >> 4) ^ (a1[24] >> 9)) << 32));
                v15 = (v14 >> 31) ^ v14;
                *&v92 = v15;
                if (a1 + 28 == a2)
                {
                  v82 = 56;
                }

                else
                {
                  v16 = 0xBF58476D1CE4E5B9 * ((a1[30] >> 4) ^ (a1[30] >> 9) | (((a1[28] >> 4) ^ (a1[28] >> 9)) << 32));
                  v17 = (v16 >> 31) ^ v16;
                  *(&v92 + 1) = v17;
                  v18 = a1 + 32;
                  if (a1 + 32 != a2)
                  {
                    v88 = &v90;
                    v19 = v11 + 0x4BF62CB950C3753ALL;
                    *(&v21 + 1) = v13 + v15 + v11 + 0x4BF62CB950C3753ALL;
                    *&v21 = 0x4BF62CB800000000;
                    v20 = v21 >> 44;
                    v22 = *(&v21 + 1) + v17;
                    *(&v21 + 1) = v15 + 0x61299596E4;
                    *&v21 = 0xBEB4006000000000;
                    v23 = v13 - 0x4B6D499041670D8DLL * (v21 >> 42) - 0x7323D61940A0DA1FLL;
                    v24 = v20 + v19 + __ROR8__(v23 + v7 + v19 + v17, 21);
                    v25 = v3 + 0x298DF016A9F64655 + v5 + v7 + v9;
                    *(&v21 + 1) = v3 + 0x298DF016A9F64655 + v5 + v7;
                    *&v21 = 0x298DF00000000000;
                    v26 = (v21 >> 44) + v3 + 0x298DF016A9F64655;
                    *(&v21 + 1) = v5 + 0x1EACB4B2AELL;
                    *&v21 = 0x8C2DD9BE00000000;
                    v27 = (0xB492B66FBE98F273 * (v21 >> 37)) ^ 0xF7ACCA5326449396;
                    v28 = v26 + __ROR8__(v27 + v3 + 0x298DF016A9F64655 + v9 - 0xAE502812AB8D92, 21);
                    v29 = 0x544962662A7EE1A4;
                    v30 = 64;
                    while (1)
                    {
                      v40 = 0xBF58476D1CE4E5B9 * ((v18[2] >> 4) ^ (v18[2] >> 9) | (((*v18 >> 4) ^ (*v18 >> 9)) << 32));
                      *&v89 = (v40 >> 31) ^ v40;
                      v41 = v18 + 4;
                      v42 = v18 + 4 == a2;
                      if (v18 + 4 == a2)
                      {
                        v50 = 0;
                        v51 = &v89 + 8;
                        v52 = 8;
                      }

                      else
                      {
                        v43 = 0xBF58476D1CE4E5B9 * ((v18[6] >> 4) ^ (v18[6] >> 9) | (((v18[4] >> 4) ^ (v18[4] >> 9)) << 32));
                        *(&v89 + 1) = (v43 >> 31) ^ v43;
                        v41 = v18 + 8;
                        v42 = v18 + 8 == a2;
                        if (v18 + 8 == a2)
                        {
                          v50 = 8;
                          v51 = v88;
                          v52 = 16;
                        }

                        else
                        {
                          v44 = 0xBF58476D1CE4E5B9 * ((v18[10] >> 4) ^ (v18[10] >> 9) | (((v18[8] >> 4) ^ (v18[8] >> 9)) << 32));
                          *&v90 = (v44 >> 31) ^ v44;
                          v41 = v18 + 12;
                          v42 = v18 + 12 == a2;
                          if (v18 + 12 == a2)
                          {
                            v50 = 16;
                            v51 = &v90 + 8;
                            v52 = 24;
                          }

                          else
                          {
                            v45 = 0xBF58476D1CE4E5B9 * ((v18[14] >> 4) ^ (v18[14] >> 9) | (((v18[12] >> 4) ^ (v18[12] >> 9)) << 32));
                            *(&v90 + 1) = (v45 >> 31) ^ v45;
                            v41 = v18 + 16;
                            v42 = v18 + 16 == a2;
                            if (v18 + 16 == a2)
                            {
                              v50 = 24;
                              v51 = &v91;
                              v52 = 32;
                            }

                            else
                            {
                              v46 = 0xBF58476D1CE4E5B9 * ((v18[18] >> 4) ^ (v18[18] >> 9) | (((v18[16] >> 4) ^ (v18[16] >> 9)) << 32));
                              *&v91 = (v46 >> 31) ^ v46;
                              v41 = v18 + 20;
                              v42 = v18 + 20 == a2;
                              if (v18 + 20 == a2)
                              {
                                v50 = 32;
                                v51 = &v91 + 8;
                                v52 = 40;
                              }

                              else
                              {
                                v47 = 0xBF58476D1CE4E5B9 * ((v18[22] >> 4) ^ (v18[22] >> 9) | (((v18[20] >> 4) ^ (v18[20] >> 9)) << 32));
                                *(&v91 + 1) = (v47 >> 31) ^ v47;
                                v41 = v18 + 24;
                                v42 = v18 + 24 == a2;
                                if (v18 + 24 == a2)
                                {
                                  v50 = 40;
                                  v51 = &v92;
                                  v52 = 48;
                                }

                                else
                                {
                                  v48 = 0xBF58476D1CE4E5B9 * ((v18[26] >> 4) ^ (v18[26] >> 9) | (((v18[24] >> 4) ^ (v18[24] >> 9)) << 32));
                                  *&v92 = (v48 >> 31) ^ v48;
                                  v41 = v18 + 28;
                                  v42 = v18 + 28 == a2;
                                  if (v18 + 28 != a2)
                                  {
                                    v49 = 0xBF58476D1CE4E5B9 * ((v18[30] >> 4) ^ (v18[30] >> 9) | (((v18[28] >> 4) ^ (v18[28] >> 9)) << 32));
                                    v18 += 32;
                                    *(&v92 + 1) = (v49 >> 31) ^ v49;
                                    v42 = v18 == a2;
                                    v50 = 56;
                                    v51 = v93;
                                    v52 = 64;
                                    goto LABEL_28;
                                  }

                                  v50 = 48;
                                  v51 = &v92 + 8;
                                  v52 = 56;
                                }
                              }
                            }
                          }
                        }
                      }

                      v18 = v41;
LABEL_28:
                      if ((v52 & 0x38) != 0)
                      {
                        v53 = 56 - v50;
                        v54 = v52;
                        if (v52 != 56 - v50)
                        {
                          do
                          {
                            v61 = v54;
                            v54 = v53;
                            v53 = v61 % v53;
                          }

                          while (v53);
                          v62 = (&v89 + v54);
                          do
                          {
                            v64 = *(v62 - 1);
                            v62 = (v62 - 1);
                            v63 = v64;
                            v65 = (v62 + v52);
                            v66 = v62;
                            do
                            {
                              v67 = v66;
                              v66 = v65;
                              *v67 = *v65;
                              v68 = v52 < v93 - v65;
                              v69 = &v89 + v52 - (v93 - v65);
                              v65 = (v65 + v52);
                              if (!v68)
                              {
                                v65 = v69;
                              }
                            }

                            while (v65 != v62);
                            *v66 = v63;
                          }

                          while (v62 != &v89);
                          goto LABEL_11;
                        }

                        v55 = v50 | 7;
                        if (55 - v50 < (v50 | 7uLL))
                        {
                          v55 = 55 - v50;
                        }

                        v56 = &v89;
                        if (&v89 < (&v89 | 9) + v50 + v55)
                        {
                          v57 = v52;
                          if (v51 < &v89 + v55 + 1)
                          {
                            goto LABEL_34;
                          }
                        }

                        if (v55 >= 0x1F)
                        {
                          v71 = v55 + 1;
                          v70 = (v55 + 1) & 0x60;
                          v72 = v89;
                          v73 = v90;
                          v74 = *(v51 + 1);
                          v89 = *(&v89 + v52);
                          v90 = v74;
                          *(&v89 + v52) = v72;
                          *(v51 + 1) = v73;
                          if (v70 != 32)
                          {
                            v75 = v91;
                            v76 = v92;
                            v77 = *(v51 + 3);
                            v91 = *(v51 + 2);
                            v92 = v77;
                            *(v51 + 2) = v75;
                            *(v51 + 3) = v76;
                          }

                          if (v71 == v70)
                          {
                            goto LABEL_11;
                          }

                          if ((v71 & 0x18) == 0)
                          {
                            v56 = &v89 + v70;
                            v57 = v52 + v70;
LABEL_34:
                            v58 = v56 + 1;
                            do
                            {
                              v59 = *(v58 - 1);
                              *(v58 - 1) = *(&v89 + v57);
                              *(&v89 + v57) = v59;
                              if (v58 == v51)
                              {
                                break;
                              }

                              ++v58;
                            }

                            while (v57++ != 63);
                            goto LABEL_11;
                          }
                        }

                        else
                        {
                          v70 = 0;
                        }

                        v78 = &v51[v70];
                        v79 = (&v89 + v70);
                        v80 = v55 - v70 + 1;
                        do
                        {
                          v81 = *v79;
                          *v79++ = *v78;
                          *v78 = v81;
                          v78 += 8;
                          v80 -= 8;
                        }

                        while (v80);
                      }

LABEL_11:
                      v31 = v23 + v25 + v29 + *(&v89 + 1);
                      v23 = *(&v91 + 1) + v25 - 0x4B6D499041670D8DLL * __ROR8__(v23 + v28 + v92, 42);
                      v32 = v27 + v22;
                      v33 = v89 - 0x4B6D499041670D8DLL * v28;
                      v34 = v22 + v33;
                      v35 = v33 + *(&v89 + 1) + v90;
                      v36 = __ROR8__(v35, 44) + v33;
                      v37 = __ROR8__(v32, 33);
                      v38 = (0xB492B66FBE98F273 * __ROR8__(v31, 37)) ^ v24;
                      v28 = v36 + __ROR8__(v38 + v34 + *(&v90 + 1), 21);
                      v29 = 0xB492B66FBE98F273 * v37;
                      v39 = 0xB492B66FBE98F273 * v37 + v24 + v91;
                      v25 = v35 + *(&v90 + 1);
                      v24 = __ROR8__(v23 + v90 + v39 + *(&v92 + 1), 21) + v39 + __ROR8__(*(&v91 + 1) + v92 + v39, 44);
                      v22 = *(&v91 + 1) + v92 + v39 + *(&v92 + 1);
                      v30 += v52;
                      v27 = v38;
                      if (v42)
                      {
                        v83 = 0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v25 ^ v22)) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ v22)));
                        v84 = 0x9DDFEA08EB382D69 * (v24 ^ ((0x9DDFEA08EB382D69 * (v28 ^ v24)) >> 47) ^ (0x9DDFEA08EB382D69 * (v28 ^ v24)));
                        v85 = 0x9DDFEA08EB382D69 * (v84 ^ (v84 >> 47)) - 0x4B6D499041670D8DLL * ((v30 ^ (v30 >> 47)) + v37);
                        v86 = 0x9DDFEA08EB382D69 * (v85 ^ (v38 - 0x4B6D499041670D8DLL * (v23 ^ (v23 >> 47)) - 0x622015F714C7D297 * (v83 ^ (v83 >> 47))));
                        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v85 ^ (v86 >> 47) ^ v86)) ^ ((0x9DDFEA08EB382D69 * (v85 ^ (v86 >> 47) ^ v86)) >> 47));
                      }
                    }
                  }

                  v82 = 64;
                }
              }
            }
          }
        }
      }
    }
  }

  return llvm::hashing::detail::hash_short(&v89, v82, 0xFF51AFD7ED558CCDLL);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
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
  v5 = &v3[2 * v2];
  do
  {
    v6 = *v4;
    v7 = v4[1];
    v4 += 2;
    v8 = *v3;
    v9 = v3[1];
    v3 += 2;
    result = v8 == v6 && v9 == v7;
  }

  while (result && v3 != v5);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *(*a1 + 8);
  if (v2)
  {
    v3 = **a1;
    v4 = 16 * v2;
    a2[10] += 16 * v2;
    v5 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = v5 + 16 * v2;
    if (*a2)
    {
      v7 = v6 > a2[1];
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v17 = a1;
      v18 = a2;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16 * v2, 16 * v2, 3);
      a2 = v18;
      v5 = Slow;
      a1 = v17;
    }

    else
    {
      *a2 = v6;
    }

    v8 = v5;
    do
    {
      v9 = *v3++;
      *v8++ = v9;
      v4 -= 16;
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  a2[10] += 24;
  v10 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10 + 3;
  if (*a2)
  {
    v12 = v11 > a2[1];
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v16 = a1;
    v10 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *v10 = 0;
    v10[1] = v5;
    v10[2] = v2;
    v13 = *(v16 + 8);
    v14 = *v13;
    if (!*v13)
    {
      return v10;
    }

    goto LABEL_16;
  }

  *a2 = v11;
  *v10 = 0;
  v10[1] = v5;
  v10[2] = v2;
  v13 = *(a1 + 8);
  v14 = *v13;
  if (*v13)
  {
LABEL_16:
    v14(*(v13 + 8), v10);
  }

  return v10;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute>>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
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
  v5 = &v3[2 * v2];
  do
  {
    v6 = *v4;
    v7 = v4[1];
    v4 += 2;
    v8 = *v3;
    v9 = v3[1];
    v3 += 2;
    result = v8 == v6 && v9 == v7;
  }

  while (result && v3 != v5);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute>>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *(*a1 + 8);
  if (v2)
  {
    v3 = **a1;
    v4 = 16 * v2;
    a2[10] += 16 * v2;
    v5 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = v5 + 16 * v2;
    if (*a2)
    {
      v7 = v6 > a2[1];
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v17 = a1;
      v18 = a2;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16 * v2, 16 * v2, 3);
      a2 = v18;
      v5 = Slow;
      a1 = v17;
    }

    else
    {
      *a2 = v6;
    }

    v8 = v5;
    do
    {
      v9 = *v3++;
      *v8++ = v9;
      v4 -= 16;
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  a2[10] += 24;
  v10 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10 + 3;
  if (*a2)
  {
    v12 = v11 > a2[1];
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v16 = a1;
    v10 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *v10 = 0;
    v10[1] = v5;
    v10[2] = v2;
    v13 = *(v16 + 8);
    v14 = *v13;
    if (!*v13)
    {
      return v10;
    }

    goto LABEL_16;
  }

  *a2 = v11;
  *v10 = 0;
  v10[1] = v5;
  v10[2] = v2;
  v13 = *(a1 + 8);
  v14 = *v13;
  if (*v13)
  {
LABEL_16:
    v14(*(v13 + 8), v10);
  }

  return v10;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,char const(&)[1],mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,char const(&)[1],mlir::NoneType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);
  if (v3 != *(*a1 + 8))
  {
    return 0;
  }

  if (v3 && (v4 = a2, v5 = memcmp(*(a2 + 16), *v2, v3), a2 = v4, v5))
  {
    return 0;
  }

  else
  {
    return *(a2 + 8) == *(v2 + 16);
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,char const(&)[1],mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,char const(&)[1],mlir::NoneType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, uint64_t *a2)
{
  v3 = mlir::detail::StringAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::detail::StringAttrStorage::construct(uint64_t *a1, void *a2)
{
  a1[10] += 40;
  v3 = *a1;
  v4 = a1[1];
  result = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = result + 5;
  if (v3)
  {
    v7 = v6 > v4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v23 = a2;
    result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 40, 40, 3);
    a2 = v23;
    v8 = v23[1];
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *a1 = v6;
    v8 = a2[1];
    if (v8)
    {
LABEL_6:
      v9 = *a2;
      v10 = v8 + 1;
      a1[10] += v8 + 1;
      v11 = *a1;
      if (*a1 && v10 + v11 <= a1[1])
      {
        *a1 = v10 + v11;
        if (v8 >= 8)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v24 = result;
        v25 = a1;
        v26 = a2;
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v25, v8 + 1, v10, 0);
        a2 = v26;
        v11 = Slow;
        result = v24;
        if (v8 >= 8)
        {
LABEL_9:
          v12 = v11;
          v13 = v9;
          if ((v11 - v9) >= 0x20)
          {
            if (v8 < 0x20)
            {
              v14 = 0;
              goto LABEL_16;
            }

            v14 = v8 & 0xFFFFFFFFFFFFFFE0;
            v15 = (v9 + 16);
            v16 = (v11 + 16);
            v17 = v8 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v18 = *v15;
              *(v16 - 1) = *(v15 - 1);
              *v16 = v18;
              v15 += 2;
              v16 += 2;
              v17 -= 32;
            }

            while (v17);
            if (v8 == v14)
            {
              goto LABEL_26;
            }

            if ((v8 & 0x18) != 0)
            {
LABEL_16:
              v12 = (v11 + (v8 & 0xFFFFFFFFFFFFFFF8));
              v13 = (v9 + (v8 & 0xFFFFFFFFFFFFFFF8));
              v19 = (v9 + v14);
              v20 = (v11 + v14);
              v21 = v14 - (v8 & 0xFFFFFFFFFFFFFFF8);
              do
              {
                v22 = *v19++;
                *v20++ = v22;
                v21 += 8;
              }

              while (v21);
              if (v8 == (v8 & 0xFFFFFFFFFFFFFFF8))
              {
                goto LABEL_26;
              }

              goto LABEL_25;
            }

            v13 = (v9 + v14);
            v12 = (v11 + v14);
          }

          do
          {
LABEL_25:
            v28 = *v13++;
            *v12++ = v28;
          }

          while (v13 != (v9 + v8));
LABEL_26:
          *(v11 + v8) = 0;
          goto LABEL_27;
        }
      }

      v12 = v11;
      v13 = v9;
      goto LABEL_25;
    }
  }

  v11 = 0;
LABEL_27:
  v29 = a2[2];
  *result = 0;
  result[1] = v29;
  result[2] = v11;
  result[3] = v8;
  result[4] = 0;
  return result;
}

void _ZN4llvm12function_refIFvPN4mlir6detail17StringAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10StringAttrEJRA1_KcNS1_8NoneTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_(uint64_t *a1, mlir::detail::StringAttrStorage *a2)
{
  mlir::detail::AttributeUniquer::initializeAttributeStorage(a2, a1[1], *a1);
  v4 = a1[1];

  mlir::detail::StringAttrStorage::initialize(a2, v4);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::NoneType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);
  if (v3 != *(*a1 + 8))
  {
    return 0;
  }

  if (v3 && (v4 = a2, v5 = memcmp(*(a2 + 16), *v2, v3), a2 = v4, v5))
  {
    return 0;
  }

  else
  {
    return *(a2 + 8) == *(v2 + 16);
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::NoneType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, uint64_t *a2)
{
  v3 = mlir::detail::StringAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void _ZN4llvm12function_refIFvPN4mlir6detail17StringAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10StringAttrEJNS_9StringRefENS1_8NoneTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_(uint64_t *a1, mlir::detail::StringAttrStorage *a2)
{
  mlir::detail::AttributeUniquer::initializeAttributeStorage(a2, a1[1], *a1);
  v4 = a1[1];

  mlir::detail::StringAttrStorage::initialize(a2, v4);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);
  if (v3 != *(*a1 + 8))
  {
    return 0;
  }

  if (v3 && (v4 = a2, v5 = memcmp(*(a2 + 16), *v2, v3), a2 = v4, v5))
  {
    return 0;
  }

  else
  {
    return *(a2 + 8) == *(v2 + 16);
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, uint64_t *a2)
{
  v3 = mlir::detail::StringAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void _ZN4llvm12function_refIFvPN4mlir6detail17StringAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10StringAttrEJNS_9StringRefERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_(uint64_t *a1, mlir::detail::StringAttrStorage *a2)
{
  mlir::detail::AttributeUniquer::initializeAttributeStorage(a2, a1[1], *a1);
  v4 = a1[1];

  mlir::detail::StringAttrStorage::initialize(a2, v4);
}

uint64_t mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APInt>(mlir::detail::StorageUniquerImpl **a1, const llvm::APInt *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v21[0] = a2;
  v21[1] = a3;
  v8 = *a5;
  v20 = *(a6 + 2);
  v9 = *a6;
  v18 = v8;
  v19 = v9;
  *(a6 + 2) = 0;
  v10 = (v8 >> 4) ^ (v8 >> 9);
  v11 = llvm::hash_value(&v19, a2);
  v12 = __ROR8__(v11 + 16, 16);
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v12 ^ 0xFF51AFD7ED558CCDLL ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ 0xFF51AFD7ED558CCDLL ^ v10)));
  v16[0] = &v18;
  v16[1] = v21;
  v17 = &v18;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v13 >> 47) ^ v13)) ^ v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APInt>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::IntegerType &,llvm::APInt &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APInt>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::IntegerType &,llvm::APInt &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
  if (v20 >= 0x41)
  {
    if (v19)
    {
      v15 = result;
      MEMORY[0x259C63150](v19, 0x1000C8000313F17);
      return v15;
    }
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APInt>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::IntegerType &,llvm::APInt &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(const void ***a1, uint64_t a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APInt>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::IntegerType &,llvm::APInt &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
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

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::DenseArrayAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::DenseArrayAttrImpl<BOOL>::parseWithoutBraces(mlir::AsmParser &,mlir::Type)::{lambda(void)#1}>(uint64_t *a1)
{
  v6 = 0;
  v2 = mlir::AsmParser::parseInteger<BOOL>(*a1, &v6);
  result = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = v4[1];
    if ((v5 + 1) > v4[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v4 + v5) = v6;
    ++v4[1];
    return 1;
  }

  return result;
}

uint64_t mlir::AsmParser::parseInteger<BOOL>(uint64_t a1, BOOL *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v17[0] = a1;
  v5 = mlir::AsmParser::parseOptionalIntegerAndCheck<BOOL,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<BOOL>(BOOL &)::{lambda(llvm::APInt &)#1}>(a1, a2, v17);
  if ((v5 & 0x100) == 0)
  {
    v15 = "expected integer value";
    v16 = 259;
    (*(*a1 + 24))(v17, a1, v4, &v15);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (v17[0])
    {
      mlir::InFlightDiagnostic::report(v17);
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v23;
        v8 = __p;
        if (v23 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v23 = v6;
        operator delete(v8);
      }

      v9 = v20;
      if (v20)
      {
        v10 = v21;
        v11 = v20;
        if (v21 != v20)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v20;
        }

        v21 = v9;
        operator delete(v11);
      }

      if (v18 != &v19)
      {
        free(v18);
      }
    }
  }

  return v5;
}

uint64_t mlir::AsmParser::parseOptionalIntegerAndCheck<BOOL,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<BOOL>(BOOL &)::{lambda(llvm::APInt &)#1}>(uint64_t a1, BOOL *a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v28 = 1;
  v27 = 0;
  v7 = (*(**a3 + 376))();
  if ((v7 & (v7 >> 8) & 1) == 0)
  {
    v12 = BYTE1(v7);
    return v7 | (v12 << 8);
  }

  llvm::APInt::sextOrTrunc(&v27, 8u, &v29);
  v8 = v30;
  if (v30 < 0x41)
  {
    v9 = v29 != 0;
    *a2 = v9;
    v10 = v28;
    v11 = v9;
    v30 = v28;
    if (v28 > 0x40)
    {
LABEL_16:
      llvm::APInt::initSlowCase(&v29);
    }

    goto LABEL_10;
  }

  v13 = v8 - llvm::APInt::countLeadingZerosSlowCase(&v29);
  v14 = v29;
  if (v13 <= 0x40)
  {
    *a2 = *v29 != 0;
LABEL_15:
    MEMORY[0x259C63150]();
    v10 = v28;
    v11 = *a2;
    v30 = v28;
    if (v28 > 0x40)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  *a2 = 1;
  if (v14)
  {
    goto LABEL_15;
  }

  v10 = v28;
  v11 = 1;
  v30 = v28;
  if (v28 > 0x40)
  {
    goto LABEL_16;
  }

LABEL_10:
  if (v10)
  {
    v15 = v11;
  }

  else
  {
    v15 = 0;
  }

  v29 = v15;
  if (v29 == v27)
  {
    LOBYTE(v7) = 1;
    v12 = 1;
  }

  else
  {
    v25 = "integer value too large";
    v26 = 259;
    (*(*a1 + 24))(&v29, a1, v6, &v25);
    if (v29)
    {
      mlir::InFlightDiagnostic::report(&v29);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v36;
        v18 = __p;
        if (v36 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v36 = v16;
        operator delete(v18);
      }

      v19 = v33;
      if (v33)
      {
        v20 = v34;
        v21 = v33;
        if (v34 != v33)
        {
          do
          {
            v23 = *--v20;
            v22 = v23;
            *v20 = 0;
            if (v23)
            {
              MEMORY[0x259C63150](v22, 0x1000C8077774924);
            }
          }

          while (v20 != v19);
          v21 = v33;
        }

        v34 = v19;
        operator delete(v21);
      }

      if (v31 != &v32)
      {
        free(v31);
      }
    }

    LOBYTE(v7) = 0;
    v12 = 1;
    if (v28 >= 0x41 && v27)
    {
      MEMORY[0x259C63150](v27, 0x1000C8000313F17);
      LOBYTE(v7) = 0;
    }
  }

  return v7 | (v12 << 8);
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::DenseArrayAttrImpl<signed char>::parseWithoutBraces(mlir::AsmParser &,mlir::Type)::{lambda(void)#1}>(uint64_t *a1)
{
  v6 = 0;
  v2 = mlir::AsmParser::parseInteger<signed char>(*a1, &v6);
  result = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = v4[1];
    if ((v5 + 1) > v4[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v4 + v5) = v6;
    ++v4[1];
    return 1;
  }

  return result;
}

uint64_t mlir::AsmParser::parseInteger<signed char>(uint64_t a1, _BYTE *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v17[0] = a1;
  v5 = mlir::AsmParser::parseOptionalIntegerAndCheck<signed char,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<signed char>(signed char &)::{lambda(llvm::APInt &)#1}>(a1, a2, v17);
  if ((v5 & 0x100) == 0)
  {
    v15 = "expected integer value";
    v16 = 259;
    (*(*a1 + 24))(v17, a1, v4, &v15);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (v17[0])
    {
      mlir::InFlightDiagnostic::report(v17);
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v23;
        v8 = __p;
        if (v23 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v23 = v6;
        operator delete(v8);
      }

      v9 = v20;
      if (v20)
      {
        v10 = v21;
        v11 = v20;
        if (v21 != v20)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v20;
        }

        v21 = v9;
        operator delete(v11);
      }

      if (v18 != &v19)
      {
        free(v18);
      }
    }
  }

  return v5;
}

uint64_t mlir::AsmParser::parseOptionalIntegerAndCheck<signed char,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<signed char>(signed char &)::{lambda(llvm::APInt &)#1}>(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v28 = 1;
  v27 = 0;
  v7 = (*(**a3 + 376))();
  if ((v7 & (v7 >> 8) & 1) == 0)
  {
    v12 = BYTE1(v7);
    return v7 | (v12 << 8);
  }

  llvm::APInt::sextOrTrunc(&v27, 8u, &v29);
  v8 = v30;
  if (v30 < 0x41)
  {
    v9 = v29;
    *a2 = v29;
    v10 = v28;
    v11 = v9;
    v30 = v28;
    if (v28 > 0x40)
    {
LABEL_15:
      llvm::APInt::initSlowCase(&v29);
    }

    goto LABEL_10;
  }

  v13 = v8 - llvm::APInt::countLeadingZerosSlowCase(&v29);
  v14 = v29;
  if (v13 <= 0x40)
  {
    *a2 = *v29;
LABEL_14:
    MEMORY[0x259C63150]();
    v10 = v28;
    v11 = *a2;
    v30 = v28;
    if (v28 > 0x40)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  *a2 = -1;
  if (v14)
  {
    goto LABEL_14;
  }

  v10 = v28;
  v11 = -1;
  v30 = v28;
  if (v28 > 0x40)
  {
    goto LABEL_15;
  }

LABEL_10:
  v15 = 0xFFFFFFFFFFFFFFFFLL >> -v10;
  if (!v10)
  {
    v15 = 0;
  }

  v29 = (v15 & v11);
  if (v29 == v27)
  {
    LOBYTE(v7) = 1;
    v12 = 1;
  }

  else
  {
    v25 = "integer value too large";
    v26 = 259;
    (*(*a1 + 24))(&v29, a1, v6, &v25);
    if (v29)
    {
      mlir::InFlightDiagnostic::report(&v29);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v36;
        v18 = __p;
        if (v36 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v36 = v16;
        operator delete(v18);
      }

      v19 = v33;
      if (v33)
      {
        v20 = v34;
        v21 = v33;
        if (v34 != v33)
        {
          do
          {
            v23 = *--v20;
            v22 = v23;
            *v20 = 0;
            if (v23)
            {
              MEMORY[0x259C63150](v22, 0x1000C8077774924);
            }
          }

          while (v20 != v19);
          v21 = v33;
        }

        v34 = v19;
        operator delete(v21);
      }

      if (v31 != &v32)
      {
        free(v31);
      }
    }

    LOBYTE(v7) = 0;
    v12 = 1;
    if (v28 >= 0x41 && v27)
    {
      MEMORY[0x259C63150](v27, 0x1000C8000313F17);
      LOBYTE(v7) = 0;
    }
  }

  return v7 | (v12 << 8);
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::DenseArrayAttrImpl<short>::parseWithoutBraces(mlir::AsmParser &,mlir::Type)::{lambda(void)#1}>(uint64_t *a1)
{
  v6 = 0;
  v2 = mlir::AsmParser::parseInteger<short>(*a1, &v6);
  result = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = v4[1];
    if ((v5 + 1) > v4[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v4 + 2 * v5) = v6;
    ++v4[1];
    return 1;
  }

  return result;
}

uint64_t mlir::AsmParser::parseInteger<short>(uint64_t a1, __int16 *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v17[0] = a1;
  v5 = mlir::AsmParser::parseOptionalIntegerAndCheck<short,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<short>(short &)::{lambda(llvm::APInt &)#1}>(a1, a2, v17);
  if ((v5 & 0x100) == 0)
  {
    v15 = "expected integer value";
    v16 = 259;
    (*(*a1 + 24))(v17, a1, v4, &v15);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (v17[0])
    {
      mlir::InFlightDiagnostic::report(v17);
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v23;
        v8 = __p;
        if (v23 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v23 = v6;
        operator delete(v8);
      }

      v9 = v20;
      if (v20)
      {
        v10 = v21;
        v11 = v20;
        if (v21 != v20)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v20;
        }

        v21 = v9;
        operator delete(v11);
      }

      if (v18 != &v19)
      {
        free(v18);
      }
    }
  }

  return v5;
}

uint64_t mlir::AsmParser::parseOptionalIntegerAndCheck<short,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<short>(short &)::{lambda(llvm::APInt &)#1}>(uint64_t a1, __int16 *a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v28 = 1;
  v27 = 0;
  v7 = (*(**a3 + 376))();
  if ((v7 & (v7 >> 8) & 1) == 0)
  {
    v12 = BYTE1(v7);
    return v7 | (v12 << 8);
  }

  llvm::APInt::sextOrTrunc(&v27, 0x10u, &v29);
  v8 = v30;
  if (v30 < 0x41)
  {
    v9 = v29;
    *a2 = v29;
    v10 = v28;
    v11 = v9;
    v30 = v28;
    if (v28 > 0x40)
    {
LABEL_15:
      llvm::APInt::initSlowCase(&v29);
    }

    goto LABEL_10;
  }

  v13 = v8 - llvm::APInt::countLeadingZerosSlowCase(&v29);
  v14 = v29;
  if (v13 <= 0x40)
  {
    *a2 = *v29;
LABEL_14:
    MEMORY[0x259C63150]();
    v10 = v28;
    v11 = *a2;
    v30 = v28;
    if (v28 > 0x40)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  *a2 = -1;
  if (v14)
  {
    goto LABEL_14;
  }

  v10 = v28;
  v11 = -1;
  v30 = v28;
  if (v28 > 0x40)
  {
    goto LABEL_15;
  }

LABEL_10:
  v15 = 0xFFFFFFFFFFFFFFFFLL >> -v10;
  if (!v10)
  {
    v15 = 0;
  }

  v29 = (v15 & v11);
  if (v29 == v27)
  {
    LOBYTE(v7) = 1;
    v12 = 1;
  }

  else
  {
    v25 = "integer value too large";
    v26 = 259;
    (*(*a1 + 24))(&v29, a1, v6, &v25);
    if (v29)
    {
      mlir::InFlightDiagnostic::report(&v29);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v36;
        v18 = __p;
        if (v36 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v36 = v16;
        operator delete(v18);
      }

      v19 = v33;
      if (v33)
      {
        v20 = v34;
        v21 = v33;
        if (v34 != v33)
        {
          do
          {
            v23 = *--v20;
            v22 = v23;
            *v20 = 0;
            if (v23)
            {
              MEMORY[0x259C63150](v22, 0x1000C8077774924);
            }
          }

          while (v20 != v19);
          v21 = v33;
        }

        v34 = v19;
        operator delete(v21);
      }

      if (v31 != &v32)
      {
        free(v31);
      }
    }

    LOBYTE(v7) = 0;
    v12 = 1;
    if (v28 >= 0x41 && v27)
    {
      MEMORY[0x259C63150](v27, 0x1000C8000313F17);
      LOBYTE(v7) = 0;
    }
  }

  return v7 | (v12 << 8);
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::DenseArrayAttrImpl<int>::parseWithoutBraces(mlir::AsmParser &,mlir::Type)::{lambda(void)#1}>(uint64_t *a1)
{
  v6 = 0;
  v2 = mlir::AsmParser::parseInteger<int>(*a1, &v6);
  result = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 8);
    if (v5 >= *(v4 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*v4 + 4 * v5) = v6;
    ++*(v4 + 8);
    return 1;
  }

  return result;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::DenseArrayAttrImpl<long long>::parseWithoutBraces(mlir::AsmParser &,mlir::Type)::{lambda(void)#1}>(uint64_t *a1)
{
  v5 = 0;
  if ((mlir::AsmParser::parseInteger<unsigned long long>(*a1, &v5) & 1) == 0)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = *(v2 + 8);
  if (v3 >= *(v2 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v2 + 8 * v3) = v5;
  ++*(v2 + 8);
  return 1;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::DenseArrayAttrImpl<float>::parseWithoutBraces(mlir::AsmParser &,mlir::Type)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = *a1;
  v7 = 0.0;
  if (((*(*v2 + 360))(v2, &v7) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v3 = v7;
  *(*v4 + 4 * v5) = v3;
  ++*(v4 + 8);
  return 1;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::DenseArrayAttrImpl<double>::parseWithoutBraces(mlir::AsmParser &,mlir::Type)::{lambda(void)#1}>(void *a1)
{
  v5 = 0;
  if (((*(**a1 + 360))(*a1, &v5) & 1) == 0)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = *(v2 + 8);
  if (v3 >= *(v2 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v2 + 8 * v3) = v5;
  ++*(v2 + 8);
  return 1;
}

void llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::moveElementsForGrow(unsigned int *a1, uint64_t a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return;
  }

  v5 = *a1;
  v6 = llvm::APFloatBase::PPCDoubleDouble(a1);
  v7 = (a2 + 40);
  v8 = v2 << 6;
  v9 = (v5 + 40);
  do
  {
    while (1)
    {
      v10 = v7 - 2;
      v11 = v9 - 2;
      if (v6 != v9[-2].n128_u64[0])
      {
        break;
      }

      llvm::detail::DoubleAPFloat::DoubleAPFloat(v10, v11);
      v12 = v7;
      v13 = v9;
      if (v6 != v9->n128_u64[0])
      {
        goto LABEL_8;
      }

LABEL_3:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v12, v13);
      v7 += 4;
      v9 += 4;
      v8 -= 64;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    llvm::detail::IEEEFloat::IEEEFloat(v10, v11);
    v12 = v7;
    v13 = v9;
    if (v6 == v9->n128_u64[0])
    {
      goto LABEL_3;
    }

LABEL_8:
    llvm::detail::IEEEFloat::IEEEFloat(v12, v13);
    v7 += 4;
    v9 += 4;
    v8 -= 64;
  }

  while (v8);
LABEL_9:
  v14 = a1[2];
  if (v14)
  {
    v15 = v14 << 6;
    v16 = (v15 + *a1 - 24);
    v17 = -v15;
    while (1)
    {
      if (v6 == *v16)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v16);
        v18 = (v16 - 32);
        if (v6 != *(v16 - 4))
        {
          goto LABEL_16;
        }

LABEL_11:
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v18);
        v16 = (v16 - 64);
        v17 += 64;
        if (!v17)
        {
          return;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v16);
        v18 = (v16 - 32);
        if (v6 == *(v16 - 4))
        {
          goto LABEL_11;
        }

LABEL_16:
        llvm::detail::IEEEFloat::~IEEEFloat(v18);
        v16 = (v16 - 64);
        v17 += 64;
        if (!v17)
        {
          return;
        }
      }
    }
  }
}

uint64_t mlir::detail::DenseIntOrFPElementsAttrStorage::getKey@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  *&v27 = result;
  *(&v27 + 1) = a2;
  if (!a4)
  {
    *a6 = result;
    *(a6 + 8) = a2;
    *(a6 + 24) = 0;
    *(a6 + 32) = 0;
    *(a6 + 16) = a3;
    goto LABEL_9;
  }

  v28[0] = mlir::ShapedType::getElementType(&v27);
  result = mlir::Type::isInteger(v28, 1);
  v10 = result;
  if (!a5)
  {
    Shape = mlir::ShapedType::getShape(&v27);
    NumElements = mlir::ShapedType::getNumElements(Shape, v17);
    if (v10)
    {
      return mlir::detail::DenseIntOrFPElementsAttrStorage::getKeyForBoolData(v27, *(&v27 + 1), a3, a4, NumElements, a6);
    }

    ElementType = mlir::ShapedType::getElementType(&v27);
    DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(ElementType);
    if (DenseElementBitWidth)
    {
      v21 = ((DenseElementBitWidth - (DenseElementBitWidth != 0)) >> 3) + 1;
    }

    else
    {
      v21 = (DenseElementBitWidth - (DenseElementBitWidth != 0)) >> 3;
    }

    if (a4 >= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = a4;
    }

    result = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a3, &a3[v22]);
    v23 = result;
    if (v21 == a4)
    {
LABEL_23:
      *a6 = v27;
      *(a6 + 16) = a3;
      *(a6 + 24) = v22;
      *(a6 + 32) = v23;
      goto LABEL_24;
    }

    v24 = &a3[v21];
    v25 = v21;
    while (1)
    {
      result = memcmp(a3, v24, v21);
      if (result)
      {
        break;
      }

      v25 += v21;
      v24 += v21;
      if (v25 == a4)
      {
        goto LABEL_23;
      }
    }

    v26 = v27;
    memset(v30, 0, sizeof(v30));
    memset(v29, 0, sizeof(v29));
    v31 = 0;
    v32 = 0xFF51AFD7ED558CCDLL;
    v28[0] = v23;
    v28[1] = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(v24, &a3[a4]);
    result = llvm::hashing::detail::hash_combine_recursive_helper::combine(v28, 0, v29, v30);
    *a6 = v26;
    *(a6 + 16) = a3;
    *(a6 + 24) = a4;
    *(a6 + 32) = result;
LABEL_9:
    *(a6 + 40) = 0;
    return result;
  }

  v11 = v27;
  if (!result)
  {
    result = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a3, &a3[a4]);
    *a6 = v11;
    *(a6 + 16) = a3;
    *(a6 + 24) = a4;
    *(a6 + 32) = result;
LABEL_24:
    *(a6 + 40) = 1;
    return result;
  }

  if (*a3)
  {
    v12 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatTrue;
  }

  else
  {
    v12 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatFalse;
  }

  v13 = *v12;
  v14 = HIDWORD(v13);
  v15 = 0x9DDFEA08EB382D69 * ((8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13));
  *a6 = v27;
  *(a6 + 8) = *(&v11 + 1);
  *(a6 + 16) = v12;
  *(a6 + 24) = 1;
  *(a6 + 32) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  *(a6 + 40) = 1;
  return result;
}

uint64_t mlir::detail::DenseIntOrFPElementsAttrStorage::getKeyForBoolData@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  v7 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatTrue;
  if ((v6 & 1) == 0)
  {
    v7 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatFalse;
  }

  if (a4 == 1)
  {
    LODWORD(v8) = *v7;
    if (v6 == v8)
    {
      v8 = v8;
LABEL_19:
      v16 = HIDWORD(v8);
      v17 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
      v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) ^ ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 47));
      v11 = 1;
      v13 = 1;
      goto LABEL_21;
    }
  }

  v9 = &a3[a4];
  if ((a5 & 7) == 0 || (v6 & 1) == 0)
  {
    v10 = &a3[a4];
    if (!a4)
    {
LABEL_18:
      v8 = *v7;
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  v10 = (v9 - 1);
  if (0xFFu >> (8 - (a5 & 7)) != *(v9 - 1))
  {
LABEL_20:
    v18 = result;
    v19 = a2;
    v20 = a6;
    v23 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a3, &a3[a4]);
    v7 = a3;
    v11 = a4;
    a2 = v19;
    a6 = v20;
    v12 = v23;
    result = v18;
    v13 = 0;
    goto LABEL_21;
  }

  if (a4 != 1)
  {
LABEL_12:
    if (v6)
    {
      v14 = -1;
    }

    else
    {
      v14 = 0;
    }

    v15 = a3;
    while (*v15 == v14)
    {
      if (++v15 == v10)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_20;
  }

  v11 = 1;
  v12 = 0xE58356463FB8AC99;
  v13 = 1;
  v7 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatTrue;
LABEL_21:
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = v7;
  *(a6 + 24) = v11;
  *(a6 + 32) = v12;
  *(a6 + 40) = v13;
  return result;
}