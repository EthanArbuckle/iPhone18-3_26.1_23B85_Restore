BOOL mlir::anec::MaxPool::verifyWithANEC(mlir::Operation **a1, mlir::ShapedType *a2, unint64_t a3)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  ANECPoolLayerDescInitialize();
  ZinIrPoolingTypeToCFString(2u);
  v28[0] = v29;
  v28[1] = 0x600000000;
  v26[0] = v27;
  v26[1] = 0x600000000;
  v24[0] = v25;
  v24[1] = 0x600000000;
  mlir::ShapedType::getShape(a2);
  v8 = v7;
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v10 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v12 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v10 + 16 * v11 - 32), **(*(*a1 + 6) + 96));
  mlir::getValues<unsigned long>(v12, v28);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v13 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v14 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v16 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v13 + 32), (v14 + 16 * v15), *(*(*(*a1 + 6) + 96) + 16));
  mlir::getValues<unsigned long>(v16, v26);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v17 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v18 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v20 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v17 + 16), (v18 + 16 * v19 - 16), *(*(*(*a1 + 6) + 96) + 8));
  mlir::getValues<unsigned long>(v20, v24);
  mlir::anec::getIndexFromDim(1, v8);
  if ((v21 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  mlir::ShapedType::getShape(a2);
  if (v24[0] != v25)
  {
    free(v24[0]);
  }

  if (v26[0] != v27)
  {
    free(v26[0]);
  }

  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  return mlir::anec::verifyPoolWithANEC(v6, a2, a3);
}

BOOL mlir::anec::L2NormPool::verifyWithANEC(mlir::Operation **a1, mlir::ShapedType *a2, unint64_t a3)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  ANECPoolLayerDescInitialize();
  ZinIrPoolingTypeToCFString(1u);
  v28[0] = v29;
  v28[1] = 0x600000000;
  v26[0] = v27;
  v26[1] = 0x600000000;
  v24[0] = v25;
  v24[1] = 0x600000000;
  mlir::ShapedType::getShape(a2);
  v8 = v7;
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v10 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v12 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v10 + 16 * v11 - 32), **(*(*a1 + 6) + 96));
  mlir::getValues<unsigned long>(v12, v28);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v13 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v14 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v16 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v13 + 32), (v14 + 16 * v15), *(*(*(*a1 + 6) + 96) + 16));
  mlir::getValues<unsigned long>(v16, v26);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v17 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v18 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v20 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v17 + 16), (v18 + 16 * v19 - 16), *(*(*(*a1 + 6) + 96) + 8));
  mlir::getValues<unsigned long>(v20, v24);
  mlir::anec::getIndexFromDim(1, v8);
  if ((v21 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  mlir::ShapedType::getShape(a2);
  if (v24[0] != v25)
  {
    free(v24[0]);
  }

  if (v26[0] != v27)
  {
    free(v26[0]);
  }

  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  return mlir::anec::verifyPoolWithANEC(v6, a2, a3);
}

uint64_t mlir::anec::verifyANECAveragePoolOp(uint64_t a1)
{
  if ((*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  if (*(a1 + 36))
  {
    v2 = a1 - 16;
  }

  else
  {
    v2 = 0;
  }

  v3 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v5 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v5 + 16 * v6), *(*(*(a1 + 48) + 96) + 24));
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v7 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v8 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v7 + 16), (v8 + 16 * v9 - 16), *(*(*(a1 + 48) + 96) + 16));
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v10 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v11 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v10, (v11 + 16 * v12 - 32), *(*(*(a1 + 48) + 96) + 8));
}

uint64_t mlir::anec::AveragePool::getStride(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 24));
}

uint64_t mlir::anec::AveragePool::getPadding(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 16));
}

uint64_t mlir::anec::verifyANECMaxPoolOp(uint64_t a1)
{
  if ((*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  if (*(a1 + 36))
  {
    v2 = a1 - 16;
  }

  else
  {
    v2 = 0;
  }

  v3 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v5 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v5 + 16 * v6), *(*(*(a1 + 48) + 96) + 16));
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v7 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v8 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v7 + 16), (v8 + 16 * v9 - 16), *(*(*(a1 + 48) + 96) + 8));
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v10 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v11 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v10, (v11 + 16 * v12 - 32), **(*(a1 + 48) + 96));
}

uint64_t mlir::anec::MaxPool::getStride(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 16));
}

uint64_t mlir::anec::MaxPool::getPadding(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 8));
}

uint64_t mlir::anec::MaxPool::getKsize(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 32), **(*(*this + 6) + 96));
}

void mlir::anec::AveragePool::addOpToNetwork(uint64_t *a1)
{
  v1 = *a1;
  __p[3] = 0;
  __p[4] = 0;
  mlir::anec::computeOpKeyString(v1, __p);
  if (*(v1 + 36))
  {
    v2 = v1 - 16;
  }

  else
  {
    v2 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(v1);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v1);
  v4 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v4 + 16 * v5 - 16), *(*(*(v1 + 48) + 96) + 16));
  AttrDictionary = mlir::Operation::getAttrDictionary(v1);
  v6 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v1);
  v7 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v6 + 32), (v7 + 16 * v8), *(*(*(v1 + 48) + 96) + 24));
  AttrDictionary = mlir::Operation::getAttrDictionary(v1);
  v9 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v1);
  v10 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v9, (v10 + 16 * v11 - 32), *(*(*(v1 + 48) + 96) + 8));
  mlir::anec::addPoolOpCommon();
}

void mlir::anec::MaxPool::addOpToNetwork(uint64_t *a1)
{
  v1 = *a1;
  __p[3] = 0;
  __p[4] = 0;
  mlir::anec::computeOpKeyString(v1, __p);
  if (*(v1 + 36))
  {
    v2 = v1 - 16;
  }

  else
  {
    v2 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(v1);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v1);
  v4 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v4 + 16 * v5 - 16), *(*(*(v1 + 48) + 96) + 8));
  AttrDictionary = mlir::Operation::getAttrDictionary(v1);
  v6 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v1);
  v7 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v6 + 32), (v7 + 16 * v8), *(*(*(v1 + 48) + 96) + 16));
  AttrDictionary = mlir::Operation::getAttrDictionary(v1);
  v9 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v1);
  v10 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v9, (v10 + 16 * v11 - 32), **(*(v1 + 48) + 96));
  mlir::anec::addPoolOpCommon();
}

void mlir::anec::L2NormPool::addOpToNetwork(uint64_t *a1)
{
  v1 = *a1;
  __p[3] = 0;
  __p[4] = 0;
  mlir::anec::computeOpKeyString(v1, __p);
  if (*(v1 + 36))
  {
    v2 = v1 - 16;
  }

  else
  {
    v2 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(v1);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v1);
  v4 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v4 + 16 * v5 - 16), *(*(*(v1 + 48) + 96) + 8));
  AttrDictionary = mlir::Operation::getAttrDictionary(v1);
  v6 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v1);
  v7 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v6 + 32), (v7 + 16 * v8), *(*(*(v1 + 48) + 96) + 16));
  AttrDictionary = mlir::Operation::getAttrDictionary(v1);
  v9 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v1);
  v10 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v9, (v10 + 16 * v11 - 32), **(*(v1 + 48) + 96));
  mlir::anec::addPoolOpCommon();
}

BOOL mlir::anec::inferReductionOpReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v41[6] = *MEMORY[0x277D85DE8];
  v31 = a6;
  v13 = mlir::TypeRange::dereference_iterator(a9, 0);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8))
  {
    v29 = 0;
    v30 = 0;
    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "input type must be ranked shaped type");
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  v29 = v13;
  v30 = v14;
  if (!v13 || (mlir::ShapedType::hasRank(&v29) & 1) == 0)
  {
    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "input type must be ranked shaped type");
  }

  v39 = v41;
  v40 = 0x600000000;
  v15 = mlir::DictionaryAttr::get(&v31, "axes", 4uLL);
  v28 = v15;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v36, v15, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v28);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v32, v15, NumElements);
  for (; v38[0] != v33; ++v38[0])
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v36, &v34);
    if (v35 >= 0x41)
    {
      v25 = v34;
    }

    else
    {
      v25 = &v34;
    }

    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v39 + v40) = *v25;
    LODWORD(v40) = v40 + 1;
    if (v35 >= 0x41 && v34)
    {
      MEMORY[0x259C63150](v34, 0x1000C8000313F17);
    }
  }

  v36 = v38;
  v37 = 0x600000000;
  Shape = mlir::ShapedType::getShape(&v29);
  if (mlir::inferReductionOpReturnShape(a2, a3, Shape, v18, v39, v40, 1, &v36))
  {
    v19 = v36;
    v20 = v37;
    ElementType = mlir::ShapedType::getElementType(&v29);
    v22 = mlir::MemRefType::get(v19, v20, ElementType, 0, 0, 0);
    v23 = *(a11 + 8);
    if (v23 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v23) = v22;
    ++*(a11 + 8);
    result = 1;
  }

  else
  {
    result = 0;
  }

  if (v36 != v38)
  {
    v26 = result;
    free(v36);
    result = v26;
  }

  if (v39 != v41)
  {
    v27 = result;
    free(v39);
    return v27;
  }

  return result;
}

uint64_t mlir::anec::anonymous namespace::TranslateToANECDesc(uint64_t a1, unint64_t a2, __CFString **a3)
{
  v18[6] = *MEMORY[0x277D85DE8];
  ANECReductionLayerDescInitialize();
  v6 = *(*(a1 + 48) + 16);
  if (a1 && v6 == &mlir::detail::TypeIDResolver<mlir::anec::ReduceAvg,void>::id)
  {
    v7 = @"Avg";
  }

  else if (v6 == &mlir::detail::TypeIDResolver<mlir::anec::ReduceMax,void>::id)
  {
    v7 = @"Max";
  }

  else if (v6 == &mlir::detail::TypeIDResolver<mlir::anec::ReduceMin,void>::id)
  {
    v7 = @"Min";
  }

  else
  {
    if (v6 != &mlir::detail::TypeIDResolver<mlir::anec::ReduceSum,void>::id)
    {
      if (*(a1 + 47))
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    v7 = @"Sum";
  }

  *a3 = v7;
  if (*(a1 + 47))
  {
LABEL_13:
    InherentAttr = mlir::Operation::getInherentAttr(a1, "axes", 4);
    if (v9)
    {
      goto LABEL_15;
    }
  }

LABEL_14:
  InherentAttr = mlir::DictionaryAttr::get(a1 + 56, "axes", 4uLL);
LABEL_15:
  v16 = v18;
  v17 = 0x600000000;
  mlir::getValues<unsigned long>(InherentAttr, &v16);
  v10 = v17;
  a3[3] = v17;
  v11 = v16;
  if (v10)
  {
    v12 = (a3 + 4);
    v13 = 8 * v10;
    do
    {
      v14 = *v11++;
      v13 -= 8;
    }

    while (v13);
    v11 = v16;
  }

  a3[1] = @"Bypass";
  if (v11 != v18)
  {
    free(v11);
  }

  return 1;
}

BOOL mlir::anec::verifyReductionWithANEC(uint64_t a1, mlir::anec::_anonymous_namespace_ *a2, uint64_t a3, unint64_t a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = 1;
  *buffer = 1;
  v22[0] = 0;
  ANECUnitValidatorCreate();
  v28[0] = v29;
  v28[1] = 0x100000000;
  v20 = 0;
  v21 = 0;
  if (ANECValidateReductionLayer())
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v22);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, "Invalid configuration", 21);
    std::stringbuf::str();
    v22[0] = *MEMORY[0x277D82818];
    v8 = *(MEMORY[0x277D82818] + 72);
    *(v22 + *(v22[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v23 = v8;
    v24 = MEMORY[0x277D82878] + 16;
    if (v26 < 0)
    {
      operator delete(v25[7].__locale_);
    }

    v24 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v25);
    std::iostream::~basic_iostream();
    MEMORY[0x259C630C0](&v27);
    LOWORD(v25[0].__locale_) = 260;
    v22[0] = &v18;
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v9 = v35;
      if (v35)
      {
        v10 = v36;
        v11 = v35;
        if (v36 != v35)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = v35;
        }

        v36 = v9;
        operator delete(v11);
      }

      v12 = v33;
      if (v33)
      {
        v13 = v34;
        v14 = v33;
        if (v34 != v33)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              MEMORY[0x259C63150](v15, 0x1000C8077774924);
            }
          }

          while (v13 != v12);
          v14 = v33;
        }

        v34 = v12;
        operator delete(v14);
      }

      if (v31 != &v32)
      {
        free(v31);
      }
    }

    if (v19 < 0)
    {
      operator delete(v18);
    }
  }

  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  ANECUnitValidatorDelete();
  return v7;
}

BOOL mlir::anec::ReduceAvg::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = *MEMORY[0x277D85DE8];
  v26 = a6;
  v27[0] = 0;
  v28 = 0;
  v29 = a7;
  v30 = a8;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v26);
    if (v28 == 1)
    {
      v28 = 0;
    }

    mlir::OperationName::OperationName(v27, "anec.reduce_avg", 15, Context);
    v28 = 1;
    a1 = v16;
  }

  v31 = a4;
  v32 = a5;
  v18 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v19 = a2;
  }

  else
  {
    v19 = v18;
  }

  v20 = mlir::anec::ReduceAvgAdaptor::verify(&v26, v19);
  return (v20 & 1) != 0 && mlir::anec::inferReductionOpReturnTypes(v20, a2, a3, v21, v22, a6, v23, v24, a9, a10, a11);
}

uint64_t mlir::anec::ReduceAvgAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v38 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v38); i != mlir::DictionaryAttr::end(&v38); i += 2)
  {
    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v36[0] = v14;
        v36[1] = v15;
        Type = mlir::ElementsAttr::getType(v36);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v39[0] = v17;
        v39[1] = Type;
        mlir::ShapedType::getShape(v39);
        if (!v18)
        {
          goto LABEL_55;
        }

        v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v34[0] = v14;
        v34[1] = v19;
        v20 = mlir::ElementsAttr::getType(v34);
        v21 = v20;
        if (v20)
        {
          v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
        }

        v35[0] = v21;
        v35[1] = v20;
        mlir::ShapedType::getShape(v35);
        if (v22 == 1)
        {
LABEL_55:
          if (mlir::hasUniqueValues(v14))
          {
            v31 = v14;
            v32[0] = mlir::DenseElementsAttr::getType(&v31);
            v32[1] = v23;
            ElementType = mlir::ShapedType::getElementType(v32);
            if (mlir::Type::isUnsignedInteger(&ElementType, 64))
            {
              return 1;
            }
          }
        }
      }

      v36[0] = "'anec.reduce_avg' op attribute 'axes' failed to satisfy constraint: ui64 unique elements attribute of ranks 0/1";
      v37 = 259;
      mlir::emitError(a2, v36, v39);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
      if (v39[0])
      {
        mlir::InFlightDiagnostic::report(v39);
      }

      if (v47 == 1)
      {
        if (v46 != &v47)
        {
          free(v46);
        }

        v24 = __p;
        if (__p)
        {
          v25 = v45;
          v26 = __p;
          if (v45 != __p)
          {
            do
            {
              v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
            }

            while (v25 != v24);
            v26 = __p;
          }

          v45 = v24;
          operator delete(v26);
        }

        v9 = v42;
        if (v42)
        {
          v27 = v43;
          v11 = v42;
          if (v43 != v42)
          {
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

            while (v27 != v9);
            goto LABEL_48;
          }

          goto LABEL_49;
        }

        goto LABEL_50;
      }

      return v5;
    }
  }

  v36[0] = "'anec.reduce_avg' op requires attribute 'axes'";
  v37 = 259;
  mlir::emitError(a2, v36, v39);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
  if (v39[0])
  {
    mlir::InFlightDiagnostic::report(v39);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v45;
      v8 = __p;
      if (v45 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v45 = v6;
      operator delete(v8);
    }

    v9 = v42;
    if (v42)
    {
      v10 = v43;
      v11 = v42;
      if (v43 != v42)
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
LABEL_48:
        v11 = v42;
      }

LABEL_49:
      v43 = v9;
      operator delete(v11);
    }

LABEL_50:
    if (v40 != &v41)
    {
      free(v40);
    }
  }

  return v5;
}

BOOL mlir::anec::ReduceAvg::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::getReductionZinIrUnitInfo();
  }

  v12 = "network should not be nullptr";
  v13 = 259;
  mlir::OpState::emitError(a1, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
      {
        do
        {
          v10 = *--v7;
          v9 = v10;
          *v7 = 0;
          if (v10)
          {
            MEMORY[0x259C63150](v9, 0x1000C8077774924);
          }
        }

        while (v7 != v6);
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

BOOL mlir::anec::ReduceMax::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = *MEMORY[0x277D85DE8];
  v26 = a6;
  v27[0] = 0;
  v28 = 0;
  v29 = a7;
  v30 = a8;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v26);
    if (v28 == 1)
    {
      v28 = 0;
    }

    mlir::OperationName::OperationName(v27, "anec.reduce_max", 15, Context);
    v28 = 1;
    a1 = v16;
  }

  v31 = a4;
  v32 = a5;
  v18 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v19 = a2;
  }

  else
  {
    v19 = v18;
  }

  v20 = mlir::anec::ReduceMaxAdaptor::verify(&v26, v19);
  return (v20 & 1) != 0 && mlir::anec::inferReductionOpReturnTypes(v20, a2, a3, v21, v22, a6, v23, v24, a9, a10, a11);
}

uint64_t mlir::anec::ReduceMaxAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v38 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v38); i != mlir::DictionaryAttr::end(&v38); i += 2)
  {
    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v36[0] = v14;
        v36[1] = v15;
        Type = mlir::ElementsAttr::getType(v36);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v39[0] = v17;
        v39[1] = Type;
        mlir::ShapedType::getShape(v39);
        if (!v18)
        {
          goto LABEL_55;
        }

        v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v34[0] = v14;
        v34[1] = v19;
        v20 = mlir::ElementsAttr::getType(v34);
        v21 = v20;
        if (v20)
        {
          v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
        }

        v35[0] = v21;
        v35[1] = v20;
        mlir::ShapedType::getShape(v35);
        if (v22 == 1)
        {
LABEL_55:
          if (mlir::hasUniqueValues(v14))
          {
            v31 = v14;
            v32[0] = mlir::DenseElementsAttr::getType(&v31);
            v32[1] = v23;
            ElementType = mlir::ShapedType::getElementType(v32);
            if (mlir::Type::isUnsignedInteger(&ElementType, 64))
            {
              return 1;
            }
          }
        }
      }

      v36[0] = "'anec.reduce_max' op attribute 'axes' failed to satisfy constraint: ui64 unique elements attribute of ranks 0/1";
      v37 = 259;
      mlir::emitError(a2, v36, v39);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
      if (v39[0])
      {
        mlir::InFlightDiagnostic::report(v39);
      }

      if (v47 == 1)
      {
        if (v46 != &v47)
        {
          free(v46);
        }

        v24 = __p;
        if (__p)
        {
          v25 = v45;
          v26 = __p;
          if (v45 != __p)
          {
            do
            {
              v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
            }

            while (v25 != v24);
            v26 = __p;
          }

          v45 = v24;
          operator delete(v26);
        }

        v9 = v42;
        if (v42)
        {
          v27 = v43;
          v11 = v42;
          if (v43 != v42)
          {
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

            while (v27 != v9);
            goto LABEL_48;
          }

          goto LABEL_49;
        }

        goto LABEL_50;
      }

      return v5;
    }
  }

  v36[0] = "'anec.reduce_max' op requires attribute 'axes'";
  v37 = 259;
  mlir::emitError(a2, v36, v39);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
  if (v39[0])
  {
    mlir::InFlightDiagnostic::report(v39);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v45;
      v8 = __p;
      if (v45 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v45 = v6;
      operator delete(v8);
    }

    v9 = v42;
    if (v42)
    {
      v10 = v43;
      v11 = v42;
      if (v43 != v42)
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
LABEL_48:
        v11 = v42;
      }

LABEL_49:
      v43 = v9;
      operator delete(v11);
    }

LABEL_50:
    if (v40 != &v41)
    {
      free(v40);
    }
  }

  return v5;
}

BOOL mlir::anec::ReduceMin::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = *MEMORY[0x277D85DE8];
  v26 = a6;
  v27[0] = 0;
  v28 = 0;
  v29 = a7;
  v30 = a8;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v26);
    if (v28 == 1)
    {
      v28 = 0;
    }

    mlir::OperationName::OperationName(v27, "anec.reduce_min", 15, Context);
    v28 = 1;
    a1 = v16;
  }

  v31 = a4;
  v32 = a5;
  v18 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v19 = a2;
  }

  else
  {
    v19 = v18;
  }

  v20 = mlir::anec::ReduceMinAdaptor::verify(&v26, v19);
  return (v20 & 1) != 0 && mlir::anec::inferReductionOpReturnTypes(v20, a2, a3, v21, v22, a6, v23, v24, a9, a10, a11);
}

uint64_t mlir::anec::ReduceMinAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v38 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v38); i != mlir::DictionaryAttr::end(&v38); i += 2)
  {
    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v36[0] = v14;
        v36[1] = v15;
        Type = mlir::ElementsAttr::getType(v36);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v39[0] = v17;
        v39[1] = Type;
        mlir::ShapedType::getShape(v39);
        if (!v18)
        {
          goto LABEL_55;
        }

        v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v34[0] = v14;
        v34[1] = v19;
        v20 = mlir::ElementsAttr::getType(v34);
        v21 = v20;
        if (v20)
        {
          v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
        }

        v35[0] = v21;
        v35[1] = v20;
        mlir::ShapedType::getShape(v35);
        if (v22 == 1)
        {
LABEL_55:
          if (mlir::hasUniqueValues(v14))
          {
            v31 = v14;
            v32[0] = mlir::DenseElementsAttr::getType(&v31);
            v32[1] = v23;
            ElementType = mlir::ShapedType::getElementType(v32);
            if (mlir::Type::isUnsignedInteger(&ElementType, 64))
            {
              return 1;
            }
          }
        }
      }

      v36[0] = "'anec.reduce_min' op attribute 'axes' failed to satisfy constraint: ui64 unique elements attribute of ranks 0/1";
      v37 = 259;
      mlir::emitError(a2, v36, v39);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
      if (v39[0])
      {
        mlir::InFlightDiagnostic::report(v39);
      }

      if (v47 == 1)
      {
        if (v46 != &v47)
        {
          free(v46);
        }

        v24 = __p;
        if (__p)
        {
          v25 = v45;
          v26 = __p;
          if (v45 != __p)
          {
            do
            {
              v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
            }

            while (v25 != v24);
            v26 = __p;
          }

          v45 = v24;
          operator delete(v26);
        }

        v9 = v42;
        if (v42)
        {
          v27 = v43;
          v11 = v42;
          if (v43 != v42)
          {
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

            while (v27 != v9);
            goto LABEL_48;
          }

          goto LABEL_49;
        }

        goto LABEL_50;
      }

      return v5;
    }
  }

  v36[0] = "'anec.reduce_min' op requires attribute 'axes'";
  v37 = 259;
  mlir::emitError(a2, v36, v39);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
  if (v39[0])
  {
    mlir::InFlightDiagnostic::report(v39);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v45;
      v8 = __p;
      if (v45 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v45 = v6;
      operator delete(v8);
    }

    v9 = v42;
    if (v42)
    {
      v10 = v43;
      v11 = v42;
      if (v43 != v42)
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
LABEL_48:
        v11 = v42;
      }

LABEL_49:
      v43 = v9;
      operator delete(v11);
    }

LABEL_50:
    if (v40 != &v41)
    {
      free(v40);
    }
  }

  return v5;
}

BOOL mlir::anec::ReduceSum::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = *MEMORY[0x277D85DE8];
  v26 = a6;
  v27[0] = 0;
  v28 = 0;
  v29 = a7;
  v30 = a8;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v26);
    if (v28 == 1)
    {
      v28 = 0;
    }

    mlir::OperationName::OperationName(v27, "anec.reduce_sum", 15, Context);
    v28 = 1;
    a1 = v16;
  }

  v31 = a4;
  v32 = a5;
  v18 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v19 = a2;
  }

  else
  {
    v19 = v18;
  }

  v20 = mlir::anec::ReduceSumAdaptor::verify(&v26, v19);
  return (v20 & 1) != 0 && mlir::anec::inferReductionOpReturnTypes(v20, a2, a3, v21, v22, a6, v23, v24, a9, a10, a11);
}

uint64_t mlir::anec::ReduceSumAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v38 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v38); i != mlir::DictionaryAttr::end(&v38); i += 2)
  {
    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v36[0] = v14;
        v36[1] = v15;
        Type = mlir::ElementsAttr::getType(v36);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v39[0] = v17;
        v39[1] = Type;
        mlir::ShapedType::getShape(v39);
        if (!v18)
        {
          goto LABEL_55;
        }

        v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v34[0] = v14;
        v34[1] = v19;
        v20 = mlir::ElementsAttr::getType(v34);
        v21 = v20;
        if (v20)
        {
          v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
        }

        v35[0] = v21;
        v35[1] = v20;
        mlir::ShapedType::getShape(v35);
        if (v22 == 1)
        {
LABEL_55:
          if (mlir::hasUniqueValues(v14))
          {
            v31 = v14;
            v32[0] = mlir::DenseElementsAttr::getType(&v31);
            v32[1] = v23;
            ElementType = mlir::ShapedType::getElementType(v32);
            if (mlir::Type::isUnsignedInteger(&ElementType, 64))
            {
              return 1;
            }
          }
        }
      }

      v36[0] = "'anec.reduce_sum' op attribute 'axes' failed to satisfy constraint: ui64 unique elements attribute of ranks 0/1";
      v37 = 259;
      mlir::emitError(a2, v36, v39);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
      if (v39[0])
      {
        mlir::InFlightDiagnostic::report(v39);
      }

      if (v47 == 1)
      {
        if (v46 != &v47)
        {
          free(v46);
        }

        v24 = __p;
        if (__p)
        {
          v25 = v45;
          v26 = __p;
          if (v45 != __p)
          {
            do
            {
              v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
            }

            while (v25 != v24);
            v26 = __p;
          }

          v45 = v24;
          operator delete(v26);
        }

        v9 = v42;
        if (v42)
        {
          v27 = v43;
          v11 = v42;
          if (v43 != v42)
          {
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

            while (v27 != v9);
            goto LABEL_48;
          }

          goto LABEL_49;
        }

        goto LABEL_50;
      }

      return v5;
    }
  }

  v36[0] = "'anec.reduce_sum' op requires attribute 'axes'";
  v37 = 259;
  mlir::emitError(a2, v36, v39);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
  if (v39[0])
  {
    mlir::InFlightDiagnostic::report(v39);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v45;
      v8 = __p;
      if (v45 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v45 = v6;
      operator delete(v8);
    }

    v9 = v42;
    if (v42)
    {
      v10 = v43;
      v11 = v42;
      if (v43 != v42)
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
LABEL_48:
        v11 = v42;
      }

LABEL_49:
      v43 = v9;
      operator delete(v11);
    }

LABEL_50:
    if (v40 != &v41)
    {
      free(v40);
    }
  }

  return v5;
}

BOOL mlir::anec::GOC::mutateOpForReshapeSwap(uint64_t a1, const void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v53[5] = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v8 = 8 * a5;
    while (!*a4)
    {
      ++a4;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

LABEL_5:
  v9 = (*(*(*(*a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v51 = v9;
  v52 = v10;
  Shape = mlir::ShapedType::getShape(&v51);
  if (mlir::ShapedType::getNumElements(Shape, v13) == 1)
  {
    v14 = (*(*(*(*a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
    v15 = v14 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8) : 0;
    v48 = v14;
    v49 = v15;
    v16 = mlir::ShapedType::getShape(&v48);
    if (mlir::ShapedType::getNumElements(v16, v17) == 1)
    {
      return 1;
    }
  }

  v18 = (*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v18)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  v48 = v18;
  v49 = v19;
  v21 = mlir::ShapedType::getShape(&v48);
  v51 = v53;
  v52 = 0x500000000;
  if (((8 * v20) >> 3) >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v22 = 0;
  v23 = 8 * v20;
  if (v20)
  {
    memcpy(v51, v21, v23);
    v22 = v52;
  }

  v24 = v22 + (v23 >> 3);
  LODWORD(v52) = v24;
  if (v24 <= 4)
  {
    llvm::SmallVectorImpl<long long>::insert(&v51, v51, 5 - v24, 1uLL);
  }

  v48 = v50;
  v49 = 0x500000000;
  if (((8 * a3) >> 3) >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v25 = 0;
  if (a3)
  {
    memcpy(v48, a2, 8 * a3);
    v25 = v49;
  }

  v26 = v25 + a3;
  LODWORD(v49) = v26;
  if (v26 <= 4)
  {
    llvm::SmallVectorImpl<long long>::insert(&v48, v48, 5 - v26, 1uLL);
  }

  IndexFromDim = mlir::anec::getIndexFromDim(1, v52);
  if (v28)
  {
    v29 = IndexFromDim;
    memset_pattern16(&v44, &unk_257369660, 0x20uLL);
    v30 = v51;
    v31 = v44;
    if (v52 && v49)
    {
      v32 = 0;
      v33 = v46;
      v34 = v47;
      v35 = v45;
      v36 = 8 * v49 - 8;
      v37 = 8 * v52 - 8;
      do
      {
        if (v32 >= v29)
        {
          if (v32 > v29)
          {
            v33 *= *(v51 + v32);
            v46 = v33;
            v34 *= *(v48 + v32);
            v47 = v34;
          }
        }

        else
        {
          v31 *= *(v51 + v32);
          v44 = v31;
          v35 *= *(v48 + v32);
          v45 = v35;
        }

        if (!v37)
        {
          break;
        }

        ++v32;
        v38 = v36;
        v36 -= 8;
        v37 -= 8;
      }

      while (v38);
    }

    else
    {
      v35 = v45;
      v33 = v46;
      v34 = v47;
    }

    v11 = v31 == v35 && v33 == v34;
    if (v48 != v50)
    {
      free(v48);
      v30 = v51;
    }

    if (v30 != v53)
    {
      free(v30);
    }

    return v11;
  }

  v41 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::anec::GOC::verifyWithANEC(v41, v42, v43);
}

BOOL mlir::anec::GOC::verifyWithANEC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v58 = *MEMORY[0x277D85DE8];
  ANECGOCLayerDescInitialize();
  *buffer = *(*(*a1 + 72) + 56);
  DefiningOp = mlir::Value::getDefiningOp(buffer);
  if (!DefiningOp)
  {
    goto LABEL_25;
  }

  {
    v35 = DefiningOp;
    DefiningOp = v35;
  }

  if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    *buffer = *(*(*a1 + 72) + 88);
    v7 = mlir::Value::getDefiningOp(buffer);
    if (v7)
    {
      {
        v36 = v7;
        v7 = v36;
      }

      if ((*(**(v7 + 48) + 32))(*(v7 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        v47[0] = v48;
        v47[1] = 0x100000000;
        v8 = 1;
        *buffer = 1;
        v41[0] = 0;
        ANECUnitValidatorCreate();
        v39 = 0;
        v40 = 0;
        if (ANECValidateGOCLayer())
        {
          v9 = *a1;
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v41);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v42, "Invalid configuration", 21);
          std::stringbuf::str();
          v41[0] = *MEMORY[0x277D82818];
          v10 = *(MEMORY[0x277D82818] + 72);
          *(v41 + *(v41[0] - 3)) = *(MEMORY[0x277D82818] + 64);
          v42 = v10;
          v43 = MEMORY[0x277D82878] + 16;
          if (v45 < 0)
          {
            operator delete(v44[7].__locale_);
          }

          v43 = MEMORY[0x277D82868] + 16;
          std::locale::~locale(v44);
          std::iostream::~basic_iostream();
          MEMORY[0x259C630C0](&v46);
          LOWORD(v44[0].__locale_) = 260;
          v41[0] = &v37;
          v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
          if (*buffer)
          {
            mlir::InFlightDiagnostic::report(buffer);
          }

          if (v57[0] == 1)
          {
            if (v56 != v57)
            {
              free(v56);
            }

            v11 = v54;
            if (v54)
            {
              v12 = v55;
              v13 = v54;
              if (v55 != v54)
              {
                do
                {
                  v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
                }

                while (v12 != v11);
                v13 = v54;
              }

              v55 = v11;
              operator delete(v13);
            }

            v14 = v52;
            if (v52)
            {
              v15 = v53;
              v16 = v52;
              if (v53 != v52)
              {
                do
                {
                  v26 = *--v15;
                  v25 = v26;
                  *v15 = 0;
                  if (v26)
                  {
                    MEMORY[0x259C63150](v25, 0x1000C8077774924);
                  }
                }

                while (v15 != v14);
                v16 = v52;
              }

              v53 = v14;
              operator delete(v16);
            }

            if (v50 != v51)
            {
              free(v50);
            }
          }

          if (v38 < 0)
          {
            operator delete(v37);
          }
        }

        ANECUnitValidatorDelete();
        v33 = v47[0];
        if (v47[0] == v48)
        {
          return v8;
        }

LABEL_63:
        free(v33);
        return v8;
      }
    }

    v41[0] = "failed: bias operand must be a constant";
    LOWORD(v44[0].__locale_) = 259;
    mlir::OpState::emitOpError(a1, v41, buffer);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v57[0] == 1)
    {
      if (v56 != v57)
      {
        free(v56);
      }

      v27 = v54;
      if (v54)
      {
        v28 = v55;
        v29 = v54;
        if (v55 != v54)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = v54;
        }

        v55 = v27;
        operator delete(v29);
      }

      v20 = v52;
      if (v52)
      {
        v30 = v53;
        v22 = v52;
        if (v53 != v52)
        {
          do
          {
            v32 = *--v30;
            v31 = v32;
            *v30 = 0;
            if (v32)
            {
              MEMORY[0x259C63150](v31, 0x1000C8077774924);
            }
          }

          while (v30 != v20);
LABEL_60:
          v22 = v52;
          goto LABEL_61;
        }

        goto LABEL_61;
      }

      goto LABEL_62;
    }
  }

  else
  {
LABEL_25:
    v41[0] = "failed: scale operand must be a constant";
    LOWORD(v44[0].__locale_) = 259;
    mlir::OpState::emitOpError(a1, v41, buffer);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v57[0] == 1)
    {
      if (v56 != v57)
      {
        free(v56);
      }

      v17 = v54;
      if (v54)
      {
        v18 = v55;
        v19 = v54;
        if (v55 != v54)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = v54;
        }

        v55 = v17;
        operator delete(v19);
      }

      v20 = v52;
      if (v52)
      {
        v21 = v53;
        v22 = v52;
        if (v53 != v52)
        {
          do
          {
            v24 = *--v21;
            v23 = v24;
            *v21 = 0;
            if (v24)
            {
              MEMORY[0x259C63150](v23, 0x1000C8077774924);
            }
          }

          while (v21 != v20);
          goto LABEL_60;
        }

LABEL_61:
        v53 = v20;
        operator delete(v22);
      }

LABEL_62:
      v33 = v50;
      if (v50 == v51)
      {
        return v8;
      }

      goto LABEL_63;
    }
  }

  return v8;
}

void mlir::anec::GOC::addOpToNetwork(mlir::anec **a1, uint64_t a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  __p[0] = *(*(*a1 + 9) + 56);
  DefiningOp = mlir::Value::getDefiningOp(__p);
  mlir::anec::ANECIRWeightSerializer::lookupConstant(a3, DefiningOp);
  __p[0] = *(*(*a1 + 9) + 88);
  v6 = mlir::Value::getDefiningOp(__p);
  mlir::anec::ANECIRWeightSerializer::lookupConstant(a3, v6);
  mlir::anec::computeOpKeyString(*a1, __p);
  operator new();
}

void mlir::anec::ANECIRUnit::AddInput(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v10 = a3;
  v5 = *(a1 + 72);
  v6 = *(a1 + 64);
  if (v5 >= *(a1 + 76))
  {
    if (v6 > &__p || v6 + 32 * v5 <= &__p)
    {
      llvm::SmallVectorTemplateBase<std::pair<std::string,mlir::anec::ANECIRDataType>,false>::grow();
    }

    llvm::SmallVectorTemplateBase<std::pair<std::string,mlir::anec::ANECIRDataType>,false>::grow();
  }

  v7 = v6 + 32 * *(a1 + 72);
  v8 = *&__p.__r_.__value_.__l.__data_;
  *(v7 + 16) = *(&__p.__r_.__value_.__l + 2);
  *v7 = v8;
  memset(&__p, 0, sizeof(__p));
  *(v7 + 24) = v10;
  ++*(a1 + 72);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t mlir::anec::GOC::getExecutionCost(uint64_t *a1, uint64_t a2)
{
  v13 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v13);
  if (!result)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v5 = *(*(result + 48) + 16);
    if (v5 != &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
    {
      break;
    }

    v12[0] = *(*(result + 72) + 24);
    result = mlir::Value::getDefiningOp(v12);
    if (!result)
    {
      goto LABEL_6;
    }
  }

  if (v5 != &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id)
  {
LABEL_6:
    v6 = (*(v13 + 8) & 0xFFFFFFFFFFFFFFF8);
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
    if (v7)
    {
      v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
    }

    else
    {
      v6 = 0;
    }

    v12[0] = v6;
    v12[1] = v7;
    Shape = mlir::ShapedType::getShape(v12);
    mlir::ShapedType::getNumElements(Shape, v9);
    v10 = *a1;
    ElementType = mlir::ShapedType::getElementType(v12);
  }

  return result;
}

uint64_t mlir::anec::GOC::fold(uint64_t a1, uint64_t a2)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v4 = *(*(*(*a1 + 72) + 24) + 8);
  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  result = 0;
  if ((*(NextResultAtOffset + 8) ^ v4) <= 7)
  {
    v8 = *(*(a2 + 40) + 8);
    if (mlir::DenseFPElementsAttr::classof(v8))
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v18 = v9;
    v10 = *(*(a2 + 40) + 16);
    if (mlir::DenseFPElementsAttr::classof(v10))
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v17 = v11;
    if (!v9 || !mlir::DenseElementsAttr::isSplat(&v18))
    {
      return 0;
    }

    mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v18, v19);
    v12 = llvm::APFloat::convertToFloat(v19);
    v13 = v20[0];
    v15 = llvm::APFloatBase::PPCDoubleDouble(v14);
    if (v15 == v13)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v20);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v20);
    }

    result = 0;
    if (v12 == 1.0)
    {
      if (v11)
      {
        if (mlir::DenseElementsAttr::isSplat(&v17))
        {
          mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v17, v19);
          v16 = llvm::APFloat::convertToFloat(v19);
          if (v15 == v20[0])
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v20);
            if (v16 != 0.0)
            {
              return 0;
            }
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(v20);
            if (v16 != 0.0)
            {
              return 0;
            }
          }

          return *(*(*a1 + 72) + 24) | 4;
        }

        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::anec::Softmax::mutateOpForReshapeSwap(mlir::Operation **a1, const void *a2, uint64_t a3)
{
  v76[5] = *MEMORY[0x277D85DE8];
  v6 = (*(*(*(*a1 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v74 = v6;
  v75 = v7;
  mlir::ShapedType::getShape(&v74);
  v9 = v8;
  v74 = v76;
  v75 = 0x500000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v11 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v13 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v11 + 16 * v12), **(*(*a1 + 6) + 96));
  mlir::getValues<long long>(v13, &v74);
  v14 = v75;
  if (v75)
  {
    v15 = v74;
    v16 = (v75 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v17 = v74;
    if (v16 <= 2)
    {
      goto LABEL_9;
    }

    v18 = v16 + 1;
    v19 = vdupq_n_s64(v9);
    v17 = v74 + 8 * (v18 & 0x3FFFFFFFFFFFFFFCLL);
    v20 = (v74 + 16);
    v21 = vdupq_n_s64(5uLL);
    v22 = v18 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v23 = vaddq_s64(vsubq_s64(*v20, v19), v21);
      v20[-1] = vaddq_s64(vsubq_s64(v20[-1], v19), v21);
      *v20 = v23;
      v20 += 2;
      v22 -= 4;
    }

    while (v22);
    if (v18 != (v18 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_9:
      v24 = &v15[8 * v14];
      do
      {
        *v17 = *v17 - v9 + 5;
        v17 += 8;
      }

      while (v17 != v24);
    }
  }

  v25 = (*(*(*(*a1 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v25)
  {
    v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
  }

  else
  {
    v26 = 0;
  }

  v68 = v25;
  v69 = v26;
  Shape = mlir::ShapedType::getShape(&v68);
  AttrDictionary = v73;
  v72 = 0x500000000;
  if (((8 * v27) >> 3) >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v29 = 0;
  v30 = 8 * v27;
  if (v27)
  {
    memcpy(AttrDictionary, Shape, v30);
    v29 = v72;
  }

  v31 = v29 + (v30 >> 3);
  LODWORD(v72) = v31;
  if (v31 < 5)
  {
    llvm::SmallVectorImpl<long long>::insert(&AttrDictionary, AttrDictionary, 5 - v31, 1uLL);
  }

  v68 = v70;
  v69 = 0x500000000;
  if (((8 * a3) >> 3) >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v32 = 0;
  if (a3)
  {
    memcpy(v68, a2, 8 * a3);
    v32 = v69;
  }

  v33 = v32 + a3;
  LODWORD(v69) = v33;
  if (v33 <= 4)
  {
    llvm::SmallVectorImpl<long long>::insert(&v68, v68, 5 - v33, 1uLL);
  }

  if (!v75)
  {
    v35 = 0;
    v36 = 4;
    goto LABEL_38;
  }

  v34 = (v75 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v34 > 2)
  {
    v38 = v34 + 1;
    v39 = (v34 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v37 = (v74 + 8 * v39);
    v40 = (v74 + 16);
    v41 = vdupq_n_s64(4uLL);
    v42 = 0uLL;
    v43 = v39;
    v44 = v41;
    v45 = 0uLL;
    do
    {
      v46 = v40[-1];
      v41 = vbslq_s8(vcgtq_s64(v41, v46), v46, v41);
      v44 = vbslq_s8(vcgtq_s64(v44, *v40), *v40, v44);
      v42 = vbslq_s8(vcgtq_s64(v42, v46), v42, v46);
      v45 = vbslq_s8(vcgtq_s64(v45, *v40), v45, *v40);
      v40 += 2;
      v43 -= 4;
    }

    while (v43);
    v47 = vbslq_s8(vcgtq_s64(v44, v41), v41, v44);
    v48 = vextq_s8(v47, v47, 8uLL).u64[0];
    v36 = vbsl_s8(vcgtd_s64(v48, v47.i64[0]), *v47.i8, v48);
    v49 = vbslq_s8(vcgtq_s64(v42, v45), v42, v45);
    v50 = vextq_s8(v49, v49, 8uLL).u64[0];
    v35 = vbsl_s8(vcgtd_s64(v49.i64[0], v50), *v49.i8, v50);
    if (v38 == v39)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v35 = 0;
    v36 = 4;
    v37 = v74;
  }

  do
  {
    v52 = *v37++;
    v51 = v52;
    if (*&v52 < *&v36)
    {
      v36 = v51;
    }

    if (*&v35 <= *&v51)
    {
      v35 = v51;
    }
  }

  while (v37 != (v74 + 8 * v75));
LABEL_38:
  memset_pattern16(&v64, &unk_257369660, 0x20uLL);
  v53 = AttrDictionary;
  v54 = v64;
  if (v72 && v69)
  {
    v55 = 0;
    v56 = v66;
    v57 = v67;
    v58 = v65;
    v59 = 8 * v69 - 8;
    v60 = 8 * v72 - 8;
    do
    {
      if (v55 >= *&v36)
      {
        if (v55 > *&v35)
        {
          v56 *= *(AttrDictionary + v55);
          v66 = v56;
          v57 *= *(v68 + v55);
          v67 = v57;
        }
      }

      else
      {
        v54 *= *(AttrDictionary + v55);
        v64 = v54;
        v58 *= *(v68 + v55);
        v65 = v58;
      }

      if (!v60)
      {
        break;
      }

      ++v55;
      v61 = v59;
      v59 -= 8;
      v60 -= 8;
    }

    while (v61);
  }

  else
  {
    v58 = v65;
    v56 = v66;
    v57 = v67;
  }

  if (v68 != v70)
  {
    free(v68);
    v53 = AttrDictionary;
  }

  if (v53 != v73)
  {
    free(v53);
  }

  if (v74 != v76)
  {
    free(v74);
  }

  return v54 == v58 && v56 == v57;
}

uint64_t mlir::getValues<long long>(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v13, a1, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v15);
  for (result = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v11, a1, NumElements); v14 != v12; ++v14)
  {
    result = mlir::DenseElementsAttr::IntElementIterator::operator*(v13, &v9);
    v6 = v10;
    if (v10 > 0x40)
    {
      v7 = *v9;
    }

    else if (v10)
    {
      v7 = v9 << -v10 >> -v10;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a2 + 8);
    if (v8 >= *(a2 + 12))
    {
      result = llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a2, v7);
      if (v10 >= 0x41)
      {
LABEL_12:
        result = v9;
        if (v9)
        {
          result = MEMORY[0x259C63150](v9, 0x1000C8000313F17);
        }
      }
    }

    else
    {
      *(*a2 + 8 * v8) = v7;
      *(a2 + 8) = v8 + 1;
      if (v6 >= 0x41)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t mlir::anec::Softmax::getAxes(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
}

BOOL mlir::anec::Softmax::verifyWithANEC(mlir::Operation **a1, mlir::ShapedType *a2, unint64_t a3)
{
  v55 = *MEMORY[0x277D85DE8];
  ANECSoftmaxLayerDescInitialize();
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v7 = mlir::DictionaryAttr::getValue(buffer);
  v34[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v7 + 16 * v8), **(*(*a1 + 6) + 96));
  v34[1] = mlir::DenseElementsAttr::getNumElements(v34);
  mlir::ShapedType::getShape(a2);
  v10 = v9;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(buffer, v34[0], 0);
  v11 = v34[0];
  NumElements = mlir::DenseElementsAttr::getNumElements(v34);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v36, v11, NumElements);
  if (v46 != v37)
  {
    v24 = &v35;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v42);
      v25 = v43;
      if (v43 >= 0x41)
      {
        if (v25 - llvm::APInt::countLeadingZerosSlowCase(&v42) <= 0x40)
        {
          v26 = *v42;
        }

        else
        {
          v26 = -1;
        }
      }

      else
      {
        v26 = v42;
      }

      if (v43 >= 0x41 && v42)
      {
        MEMORY[0x259C63150](v42, 0x1000C8000313F17);
      }

      ++v46;
      ++v24;
    }

    while (v46 != v37);
  }

  v42 = v44;
  v43 = 0x100000000;
  *buffer = 1;
  v36[0] = 0;
  ANECUnitValidatorCreate();
  v32 = 0;
  v33 = 0;
  if (ANECValidateSoftmaxLayer())
  {
    v13 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v36);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v37, "Invalid configuration", 21);
    std::stringbuf::str();
    v36[0] = *MEMORY[0x277D82818];
    v14 = *(MEMORY[0x277D82818] + 72);
    *(v36 + *(v36[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v37 = v14;
    v38 = MEMORY[0x277D82878] + 16;
    if (v40 < 0)
    {
      operator delete(v39[7].__locale_);
    }

    v38 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v39);
    std::iostream::~basic_iostream();
    MEMORY[0x259C630C0](&v41);
    v31 = 260;
    v30 = &v28;
    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v54 == 1)
    {
      if (v53 != &v54)
      {
        free(v53);
      }

      v16 = v51;
      if (v51)
      {
        v17 = v52;
        v18 = v51;
        if (v52 != v51)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = v51;
        }

        v52 = v16;
        operator delete(v18);
      }

      v19 = v49;
      if (v49)
      {
        v20 = v50;
        v21 = v49;
        if (v50 != v49)
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
          v21 = v49;
        }

        v50 = v19;
        operator delete(v21);
      }

      if (v47 != &v48)
      {
        free(v47);
      }
    }

    if (v29 < 0)
    {
      operator delete(v28);
    }
  }

  else
  {
    v15 = 1;
  }

  ANECUnitValidatorDelete();
  if (v42 != v44)
  {
    free(v42);
  }

  return v15;
}

uint64_t mlir::anec::anonymous namespace::getANECDimension(mlir::anec::_anonymous_namespace_ *this, unint64_t a2)
{
  DimFromIndex = mlir::anec::getDimFromIndex(this, a2);
  if ((DimFromIndex & 0x100000000) != 0)
  {
    v3 = dword_257373FEC[DimFromIndex];
  }

  else
  {
    v3 = 5;
  }

  if ((atomic_load_explicit(&_MergedGlobals_2, memory_order_acquire) & 1) == 0)
  {
  }

  v4 = qword_27F8741D0;
  if (!qword_27F8741D0)
  {
LABEL_12:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v4;
      v6 = *(v4 + 32);
      if (v3 >= v6)
      {
        break;
      }

      v4 = *v5;
      if (!*v5)
      {
        goto LABEL_12;
      }
    }

    if (v6 >= v3)
    {
      return v5[5];
    }

    v4 = v5[1];
    if (!v4)
    {
      goto LABEL_12;
    }
  }
}

BOOL mlir::anec::Softmax::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::Softmax::getZinIrUnitInfo();
  }

  v12 = "network should not be nullptr";
  v13 = 259;
  mlir::OpState::emitError(a1, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
      {
        do
        {
          v10 = *--v7;
          v9 = v10;
          *v7 = 0;
          if (v10)
          {
            MEMORY[0x259C63150](v9, 0x1000C8077774924);
          }
        }

        while (v7 != v6);
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

BOOL mlir::anec::spaceTransformInferReturnTypesCommon(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, int a7, uint64_t a8)
{
  v51[5] = *MEMORY[0x277D85DE8];
  v46[0] = a3;
  v46[1] = a4;
  if (a3)
  {
    Shape = mlir::ShapedType::getShape(v46);
    mlir::ShapedType::getShape(v46);
    v12 = v11;
    v49 = v51;
    v50 = 0x500000000;
    IndexFromDim = mlir::anec::getIndexFromDim(0, v11);
    v14 = mlir::anec::getIndexFromDim(1, v12);
    v15 = mlir::anec::getIndexFromDim(3, v12);
    v16 = mlir::anec::getIndexFromDim(4, v12);
    v17 = *(Shape + 8 * IndexFromDim);
    v18 = *(Shape + 8 * v14);
    v19 = *(Shape + 8 * v15);
    v20 = *(Shape + 8 * v16);
    v47[0] = v48;
    v47[1] = 0x300000000;
    mlir::getValues<unsigned long>(a5, v47);
    v21 = *v47[0];
    v22 = *(v47[0] + 1);
    if (*v47[0] <= 1)
    {
      v21 = 1;
    }

    if (v22 <= 1)
    {
      v22 = 1;
    }

    if (*(v47[0] + 2) <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = *(v47[0] + 2);
    }

    v24 = v22 * v21 * v23;
    if (a7)
    {
      v25 = v19 / v22;
      v26 = v24 * v18;
      v27 = v24 * v17;
      if (a6)
      {
        v28 = v26;
      }

      else
      {
        v17 = v27;
        v28 = v18;
      }

      v29 = v20 / v21;
    }

    else
    {
      v25 = v22 * v19;
      v29 = v21 * v20;
      if (a6)
      {
        v28 = v18 / v24;
      }

      else
      {
        v17 /= v24;
        v28 = v18;
      }
    }

    if (v50 >= HIDWORD(v50))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v49 + v50) = v17;
    v31 = v50 + 1;
    LODWORD(v50) = v50 + 1;
    if (v12 == 5)
    {
      v32 = mlir::anec::getIndexFromDim(2, 5uLL);
      if ((v33 & 1) == 0)
      {
        v36 = 0;
LABEL_34:
        if (v47[0] != v48)
        {
          free(v47[0]);
        }

        if (v49 != v51)
        {
          free(v49);
        }

        return v36;
      }

      v34 = *(Shape + 8 * v32);
      if (a7)
      {
        v35 = v34 / v23;
      }

      else
      {
        v35 = v34 * v23;
      }

      if (v50 >= HIDWORD(v50))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v49 + v50) = v35;
      v31 = v50 + 1;
      LODWORD(v50) = v50 + 1;
    }

    if (v31 >= HIDWORD(v50))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v49 + v31) = v28;
    v37 = v50 + 1;
    LODWORD(v50) = v37;
    if (v37 >= HIDWORD(v50))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v49 + v37) = v25;
    v38 = v50 + 1;
    LODWORD(v50) = v38;
    if (v38 >= HIDWORD(v50))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v49 + v38) = v29;
    LODWORD(v50) = v50 + 1;
    v39 = v50;
    v40 = v49;
    ElementType = mlir::ShapedType::getElementType(v46);
    v42 = mlir::MemRefType::get(v40, v39, ElementType, 0, 0, 0);
    v43 = *(a8 + 8);
    if (v43 >= *(a8 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a8 + 8 * v43) = v42;
    ++*(a8 + 8);
    v36 = 1;
    goto LABEL_34;
  }

  return mlir::emitOptionalError<char const(&)[24]>(a1, a2, "Expected a ShapedType for my input!");
}

BOOL mlir::anec::ChannelToSpace::inferPromotedReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = *MEMORY[0x277D85DE8];
  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v21 = v19;
  if (v19)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v22 = 0;
  }

  v30 = a6;
  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = a7;
  v34 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(&v31, "anec.channel_to_space", 21, Context);
    v32 = 1;
  }

  v35 = a4;
  v36 = a5;
  v24 = mlir::UnknownLoc::get(a1, v20);
  if (a3)
  {
    v25 = a2;
  }

  else
  {
    v25 = v24;
  }

  if ((mlir::anec::ChannelToSpaceAdaptor::verify(&v30, v25) & 1) == 0)
  {
    return 0;
  }

  v26 = mlir::DictionaryAttr::begin(&v30);
  v27 = mlir::DictionaryAttr::end(&v30);
  v28 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v26, v27, **(v31 + 96));
  return mlir::anec::spaceTransformInferReturnTypesCommon(a2, a3, v21, v22, v28, 1, 0, a11);
}

uint64_t mlir::anec::ChannelToSpaceAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v33 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v33); i != mlir::DictionaryAttr::end(&v33); i += 2)
  {
    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v31[0] = v14;
        v31[1] = v15;
        Type = mlir::ElementsAttr::getType(v31);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v35[0] = v17;
        v35[1] = Type;
        Shape = mlir::ShapedType::getShape(v35);
        v34 = 3;
        if (v19 == 1 && *Shape == v34)
        {
          v28 = v14;
          v29[0] = mlir::DenseElementsAttr::getType(&v28);
          v29[1] = v20;
          ElementType = mlir::ShapedType::getElementType(v29);
          if (mlir::Type::isUnsignedInteger(&ElementType, 64))
          {
            return 1;
          }
        }
      }

      v31[0] = "'anec.channel_to_space' op attribute 'factors' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      v32 = 259;
      mlir::emitError(a2, v31, v35);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v41;
          v23 = __p;
          if (v41 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v41 = v21;
          operator delete(v23);
        }

        v9 = v38;
        if (v38)
        {
          v24 = v39;
          v11 = v38;
          if (v39 != v38)
          {
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

            while (v24 != v9);
            goto LABEL_45;
          }

          goto LABEL_46;
        }

        goto LABEL_47;
      }

      return v5;
    }
  }

  v31[0] = "'anec.channel_to_space' op requires attribute 'factors'";
  v32 = 259;
  mlir::emitError(a2, v31, v35);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v41;
      v8 = __p;
      if (v41 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v41 = v6;
      operator delete(v8);
    }

    v9 = v38;
    if (v38)
    {
      v10 = v39;
      v11 = v38;
      if (v39 != v38)
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
LABEL_45:
        v11 = v38;
      }

LABEL_46:
      v39 = v9;
      operator delete(v11);
    }

LABEL_47:
    if (v36 != &v37)
    {
      free(v36);
    }
  }

  return v5;
}

BOOL mlir::anec::ChannelToSpace::verifyWithANEC(mlir::Operation **a1, uint64_t a2, unint64_t a3)
{
  v48 = *MEMORY[0x277D85DE8];
  ANECChannelToSpaceLayerDescInitialize();
  v37[0] = v38;
  v37[1] = 0x300000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v7 = mlir::DictionaryAttr::getValue(buffer);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v7 + 16 * v8), **(*(*a1 + 6) + 96));
  mlir::getValues<long long>(v9, v37);
  v10 = *(v37[0] + 2);
  v27 = *v37[0];
  v28 = v10;
  v35[0] = v36;
  v35[1] = 0x100000000;
  v11 = 1;
  *buffer = 1;
  v29[0] = 0;
  ANECUnitValidatorCreate();
  v25 = 0;
  v26 = 0;
  if (ANECValidateChannelToSpaceLayer())
  {
    v12 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v29);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v30, "Invalid configuration", 21);
    std::stringbuf::str();
    v29[0] = *MEMORY[0x277D82818];
    v13 = *(MEMORY[0x277D82818] + 72);
    *(v29 + *(v29[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v30 = v13;
    v31 = MEMORY[0x277D82878] + 16;
    if (v33 < 0)
    {
      operator delete(v32[7].__locale_);
    }

    v31 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v32);
    std::iostream::~basic_iostream();
    MEMORY[0x259C630C0](&v34);
    LOWORD(v32[0].__locale_) = 260;
    v29[0] = &v23;
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v47 == 1)
    {
      if (v46 != &v47)
      {
        free(v46);
      }

      v14 = v44;
      if (v44)
      {
        v15 = v45;
        v16 = v44;
        if (v45 != v44)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = v44;
        }

        v45 = v14;
        operator delete(v16);
      }

      v17 = v42;
      if (v42)
      {
        v18 = v43;
        v19 = v42;
        if (v43 != v42)
        {
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
          v19 = v42;
        }

        v43 = v17;
        operator delete(v19);
      }

      if (v40 != &v41)
      {
        free(v40);
      }
    }

    if (v24 < 0)
    {
      operator delete(v23);
    }
  }

  ANECUnitValidatorDelete();
  if (v35[0] != v36)
  {
    free(v35[0]);
  }

  if (v37[0] != v38)
  {
    free(v37[0]);
  }

  return v11;
}

BOOL mlir::anec::ChannelToSpace::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::spaceTransformGetZinIrUnitInfo<ZinIrChannelToSpaceUnitInfo,mlir::anec::ChannelToSpace>();
  }

  v12 = "network should not be nullptr";
  v13 = 259;
  mlir::OpState::emitError(a1, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
      {
        do
        {
          v10 = *--v7;
          v9 = v10;
          *v7 = 0;
          if (v10)
          {
            MEMORY[0x259C63150](v9, 0x1000C8077774924);
          }
        }

        while (v7 != v6);
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

BOOL mlir::anec::PixelShuffle::inferPromotedReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = *MEMORY[0x277D85DE8];
  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v21 = v19;
  if (v19)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v22 = 0;
  }

  v30 = a6;
  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = a7;
  v34 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(&v31, "anec.pixel_shuffle", 18, Context);
    v32 = 1;
  }

  v35 = a4;
  v36 = a5;
  v24 = mlir::UnknownLoc::get(a1, v20);
  if (a3)
  {
    v25 = a2;
  }

  else
  {
    v25 = v24;
  }

  if ((mlir::anec::PixelShuffleAdaptor::verify(&v30, v25) & 1) == 0)
  {
    return 0;
  }

  v26 = mlir::DictionaryAttr::begin(&v30);
  v27 = mlir::DictionaryAttr::end(&v30);
  v28 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v26, v27, **(v31 + 96));
  return mlir::anec::spaceTransformInferReturnTypesCommon(a2, a3, v21, v22, v28, 1, 0, a11);
}

uint64_t mlir::anec::PixelShuffleAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v33 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v33); i != mlir::DictionaryAttr::end(&v33); i += 2)
  {
    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v31[0] = v14;
        v31[1] = v15;
        Type = mlir::ElementsAttr::getType(v31);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v35[0] = v17;
        v35[1] = Type;
        Shape = mlir::ShapedType::getShape(v35);
        v34 = 3;
        if (v19 == 1 && *Shape == v34)
        {
          v28 = v14;
          v29[0] = mlir::DenseElementsAttr::getType(&v28);
          v29[1] = v20;
          ElementType = mlir::ShapedType::getElementType(v29);
          if (mlir::Type::isUnsignedInteger(&ElementType, 64))
          {
            return 1;
          }
        }
      }

      v31[0] = "'anec.pixel_shuffle' op attribute 'factors' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      v32 = 259;
      mlir::emitError(a2, v31, v35);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v41;
          v23 = __p;
          if (v41 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v41 = v21;
          operator delete(v23);
        }

        v9 = v38;
        if (v38)
        {
          v24 = v39;
          v11 = v38;
          if (v39 != v38)
          {
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

            while (v24 != v9);
            goto LABEL_45;
          }

          goto LABEL_46;
        }

        goto LABEL_47;
      }

      return v5;
    }
  }

  v31[0] = "'anec.pixel_shuffle' op requires attribute 'factors'";
  v32 = 259;
  mlir::emitError(a2, v31, v35);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v41;
      v8 = __p;
      if (v41 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v41 = v6;
      operator delete(v8);
    }

    v9 = v38;
    if (v38)
    {
      v10 = v39;
      v11 = v38;
      if (v39 != v38)
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
LABEL_45:
        v11 = v38;
      }

LABEL_46:
      v39 = v9;
      operator delete(v11);
    }

LABEL_47:
    if (v36 != &v37)
    {
      free(v36);
    }
  }

  return v5;
}

BOOL mlir::anec::PixelShuffle::verifyWithANEC(mlir::Operation **a1, uint64_t a2, unint64_t a3)
{
  v48 = *MEMORY[0x277D85DE8];
  ANECPixelShuffleLayerDescInitialize();
  v37[0] = v38;
  v37[1] = 0x300000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v7 = mlir::DictionaryAttr::getValue(buffer);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v7 + 16 * v8), **(*(*a1 + 6) + 96));
  mlir::getValues<long long>(v9, v37);
  v10 = *(v37[0] + 2);
  v27 = *v37[0];
  v28 = v10;
  v35[0] = v36;
  v35[1] = 0x100000000;
  v11 = 1;
  *buffer = 1;
  v29[0] = 0;
  ANECUnitValidatorCreate();
  v25 = 0;
  v26 = 0;
  if (ANECValidatePixelShuffleLayer())
  {
    v12 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v29);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v30, "Invalid configuration", 21);
    std::stringbuf::str();
    v29[0] = *MEMORY[0x277D82818];
    v13 = *(MEMORY[0x277D82818] + 72);
    *(v29 + *(v29[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v30 = v13;
    v31 = MEMORY[0x277D82878] + 16;
    if (v33 < 0)
    {
      operator delete(v32[7].__locale_);
    }

    v31 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v32);
    std::iostream::~basic_iostream();
    MEMORY[0x259C630C0](&v34);
    LOWORD(v32[0].__locale_) = 260;
    v29[0] = &v23;
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v47 == 1)
    {
      if (v46 != &v47)
      {
        free(v46);
      }

      v14 = v44;
      if (v44)
      {
        v15 = v45;
        v16 = v44;
        if (v45 != v44)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = v44;
        }

        v45 = v14;
        operator delete(v16);
      }

      v17 = v42;
      if (v42)
      {
        v18 = v43;
        v19 = v42;
        if (v43 != v42)
        {
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
          v19 = v42;
        }

        v43 = v17;
        operator delete(v19);
      }

      if (v40 != &v41)
      {
        free(v40);
      }
    }

    if (v24 < 0)
    {
      operator delete(v23);
    }
  }

  ANECUnitValidatorDelete();
  if (v35[0] != v36)
  {
    free(v35[0]);
  }

  if (v37[0] != v38)
  {
    free(v37[0]);
  }

  return v11;
}

BOOL mlir::anec::PixelShuffle::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::spaceTransformGetZinIrUnitInfo<ZinIrPixelShuffleUnitInfo,mlir::anec::PixelShuffle>();
  }

  v12 = "network should not be nullptr";
  v13 = 259;
  mlir::OpState::emitError(a1, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
      {
        do
        {
          v10 = *--v7;
          v9 = v10;
          *v7 = 0;
          if (v10)
          {
            MEMORY[0x259C63150](v9, 0x1000C8077774924);
          }
        }

        while (v7 != v6);
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

BOOL mlir::anec::PixelUnshuffle::inferPromotedReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = *MEMORY[0x277D85DE8];
  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v21 = v19;
  if (v19)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v22 = 0;
  }

  v30 = a6;
  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = a7;
  v34 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(&v31, "anec.pixel_unshuffle", 20, Context);
    v32 = 1;
  }

  v35 = a4;
  v36 = a5;
  v24 = mlir::UnknownLoc::get(a1, v20);
  if (a3)
  {
    v25 = a2;
  }

  else
  {
    v25 = v24;
  }

  if ((mlir::anec::PixelUnshuffleAdaptor::verify(&v30, v25) & 1) == 0)
  {
    return 0;
  }

  v26 = mlir::DictionaryAttr::begin(&v30);
  v27 = mlir::DictionaryAttr::end(&v30);
  v28 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v26, v27, **(v31 + 96));
  return mlir::anec::spaceTransformInferReturnTypesCommon(a2, a3, v21, v22, v28, 1, 1, a11);
}

uint64_t mlir::anec::PixelUnshuffleAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v33 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v33); i != mlir::DictionaryAttr::end(&v33); i += 2)
  {
    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v31[0] = v14;
        v31[1] = v15;
        Type = mlir::ElementsAttr::getType(v31);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v35[0] = v17;
        v35[1] = Type;
        Shape = mlir::ShapedType::getShape(v35);
        v34 = 3;
        if (v19 == 1 && *Shape == v34)
        {
          v28 = v14;
          v29[0] = mlir::DenseElementsAttr::getType(&v28);
          v29[1] = v20;
          ElementType = mlir::ShapedType::getElementType(v29);
          if (mlir::Type::isUnsignedInteger(&ElementType, 64))
          {
            return 1;
          }
        }
      }

      v31[0] = "'anec.pixel_unshuffle' op attribute 'factors' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      v32 = 259;
      mlir::emitError(a2, v31, v35);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v41;
          v23 = __p;
          if (v41 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v41 = v21;
          operator delete(v23);
        }

        v9 = v38;
        if (v38)
        {
          v24 = v39;
          v11 = v38;
          if (v39 != v38)
          {
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

            while (v24 != v9);
            goto LABEL_45;
          }

          goto LABEL_46;
        }

        goto LABEL_47;
      }

      return v5;
    }
  }

  v31[0] = "'anec.pixel_unshuffle' op requires attribute 'factors'";
  v32 = 259;
  mlir::emitError(a2, v31, v35);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v41;
      v8 = __p;
      if (v41 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v41 = v6;
      operator delete(v8);
    }

    v9 = v38;
    if (v38)
    {
      v10 = v39;
      v11 = v38;
      if (v39 != v38)
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
LABEL_45:
        v11 = v38;
      }

LABEL_46:
      v39 = v9;
      operator delete(v11);
    }

LABEL_47:
    if (v36 != &v37)
    {
      free(v36);
    }
  }

  return v5;
}

BOOL mlir::anec::PixelUnshuffle::verifyWithANEC(mlir::Operation **a1, uint64_t a2, unint64_t a3)
{
  v48 = *MEMORY[0x277D85DE8];
  ANECPixelUnshuffleLayerDescInitialize();
  v37[0] = v38;
  v37[1] = 0x300000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v7 = mlir::DictionaryAttr::getValue(buffer);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v7 + 16 * v8), **(*(*a1 + 6) + 96));
  mlir::getValues<long long>(v9, v37);
  v10 = *(v37[0] + 2);
  v27 = *v37[0];
  v28 = v10;
  v35[0] = v36;
  v35[1] = 0x100000000;
  v11 = 1;
  *buffer = 1;
  v29[0] = 0;
  ANECUnitValidatorCreate();
  v25 = 0;
  v26 = 0;
  if (ANECValidatePixelUnshuffleLayer())
  {
    v12 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v29);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v30, "Invalid configuration", 21);
    std::stringbuf::str();
    v29[0] = *MEMORY[0x277D82818];
    v13 = *(MEMORY[0x277D82818] + 72);
    *(v29 + *(v29[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v30 = v13;
    v31 = MEMORY[0x277D82878] + 16;
    if (v33 < 0)
    {
      operator delete(v32[7].__locale_);
    }

    v31 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v32);
    std::iostream::~basic_iostream();
    MEMORY[0x259C630C0](&v34);
    LOWORD(v32[0].__locale_) = 260;
    v29[0] = &v23;
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v47 == 1)
    {
      if (v46 != &v47)
      {
        free(v46);
      }

      v14 = v44;
      if (v44)
      {
        v15 = v45;
        v16 = v44;
        if (v45 != v44)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = v44;
        }

        v45 = v14;
        operator delete(v16);
      }

      v17 = v42;
      if (v42)
      {
        v18 = v43;
        v19 = v42;
        if (v43 != v42)
        {
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
          v19 = v42;
        }

        v43 = v17;
        operator delete(v19);
      }

      if (v40 != &v41)
      {
        free(v40);
      }
    }

    if (v24 < 0)
    {
      operator delete(v23);
    }
  }

  ANECUnitValidatorDelete();
  if (v35[0] != v36)
  {
    free(v35[0]);
  }

  if (v37[0] != v38)
  {
    free(v37[0]);
  }

  return v11;
}

BOOL mlir::anec::PixelUnshuffle::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::spaceTransformGetZinIrUnitInfo<ZinIrPixelUnshuffleUnitInfo,mlir::anec::PixelUnshuffle>();
  }

  v12 = "network should not be nullptr";
  v13 = 259;
  mlir::OpState::emitError(a1, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
      {
        do
        {
          v10 = *--v7;
          v9 = v10;
          *v7 = 0;
          if (v10)
          {
            MEMORY[0x259C63150](v9, 0x1000C8077774924);
          }
        }

        while (v7 != v6);
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

BOOL mlir::anec::SpaceToChannel::inferPromotedReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = *MEMORY[0x277D85DE8];
  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v21 = v19;
  if (v19)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v22 = 0;
  }

  v30 = a6;
  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = a7;
  v34 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(&v31, "anec.space_to_channel", 21, Context);
    v32 = 1;
  }

  v35 = a4;
  v36 = a5;
  v24 = mlir::UnknownLoc::get(a1, v20);
  if (a3)
  {
    v25 = a2;
  }

  else
  {
    v25 = v24;
  }

  if ((mlir::anec::SpaceToChannelAdaptor::verify(&v30, v25) & 1) == 0)
  {
    return 0;
  }

  v26 = mlir::DictionaryAttr::begin(&v30);
  v27 = mlir::DictionaryAttr::end(&v30);
  v28 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v26, v27, **(v31 + 96));
  return mlir::anec::spaceTransformInferReturnTypesCommon(a2, a3, v21, v22, v28, 1, 1, a11);
}

uint64_t mlir::anec::SpaceToChannelAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v33 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v33); i != mlir::DictionaryAttr::end(&v33); i += 2)
  {
    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v31[0] = v14;
        v31[1] = v15;
        Type = mlir::ElementsAttr::getType(v31);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v35[0] = v17;
        v35[1] = Type;
        Shape = mlir::ShapedType::getShape(v35);
        v34 = 3;
        if (v19 == 1 && *Shape == v34)
        {
          v28 = v14;
          v29[0] = mlir::DenseElementsAttr::getType(&v28);
          v29[1] = v20;
          ElementType = mlir::ShapedType::getElementType(v29);
          if (mlir::Type::isUnsignedInteger(&ElementType, 64))
          {
            return 1;
          }
        }
      }

      v31[0] = "'anec.space_to_channel' op attribute 'factors' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      v32 = 259;
      mlir::emitError(a2, v31, v35);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v41;
          v23 = __p;
          if (v41 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v41 = v21;
          operator delete(v23);
        }

        v9 = v38;
        if (v38)
        {
          v24 = v39;
          v11 = v38;
          if (v39 != v38)
          {
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

            while (v24 != v9);
            goto LABEL_45;
          }

          goto LABEL_46;
        }

        goto LABEL_47;
      }

      return v5;
    }
  }

  v31[0] = "'anec.space_to_channel' op requires attribute 'factors'";
  v32 = 259;
  mlir::emitError(a2, v31, v35);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v41;
      v8 = __p;
      if (v41 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v41 = v6;
      operator delete(v8);
    }

    v9 = v38;
    if (v38)
    {
      v10 = v39;
      v11 = v38;
      if (v39 != v38)
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
LABEL_45:
        v11 = v38;
      }

LABEL_46:
      v39 = v9;
      operator delete(v11);
    }

LABEL_47:
    if (v36 != &v37)
    {
      free(v36);
    }
  }

  return v5;
}

BOOL mlir::anec::SpaceToChannel::verifyWithANEC(mlir::Operation **a1, uint64_t a2, unint64_t a3)
{
  v63 = *MEMORY[0x277D85DE8];
  ANECSpaceToChannelLayerDescInitialize();
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v7 = mlir::DictionaryAttr::getValue(buffer);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v7 + 16 * v8), **(*(*a1 + 6) + 96));
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(buffer, v9, 0);
  mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v45);
  v10 = DWORD2(v45);
  if (DWORD2(v45) < 0x41)
  {
    v11 = v45;
    goto LABEL_8;
  }

  if (v10 - llvm::APInt::countLeadingZerosSlowCase(&v45) <= 0x40)
  {
    v11 = *v45;
    goto LABEL_7;
  }

  v11 = -1;
  if (v45)
  {
LABEL_7:
    MEMORY[0x259C63150](v45, 0x1000C8000313F17);
  }

LABEL_8:
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v12 = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v13 = mlir::DictionaryAttr::getValue(buffer);
  v15 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v12, (v13 + 16 * v14), **(*(*a1 + 6) + 96));
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v45, v15, 0);
  *buffer = v45;
  v55[1] = v47;
  v55[0] = (v46 + 1);
  mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v51);
  v16 = v52;
  if (v52 < 0x41)
  {
    v17 = v51;
    goto LABEL_15;
  }

  if (v16 - llvm::APInt::countLeadingZerosSlowCase(&v51) <= 0x40)
  {
    v17 = *v51;
    goto LABEL_14;
  }

  v17 = -1;
  if (v51)
  {
LABEL_14:
    MEMORY[0x259C63150](v51, 0x1000C8000313F17);
  }

LABEL_15:
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v18 = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v19 = mlir::DictionaryAttr::getValue(buffer);
  v21 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v18, (v19 + 16 * v20), **(*(*a1 + 6) + 96));
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v45, v21, 0);
  *buffer = v45;
  v55[1] = v47;
  v55[0] = (v46 + 2);
  mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v51);
  v22 = v52;
  if (v52 < 0x41)
  {
    v23 = v51;
    goto LABEL_22;
  }

  if (v22 - llvm::APInt::countLeadingZerosSlowCase(&v51) <= 0x40)
  {
    v23 = *v51;
    goto LABEL_21;
  }

  v23 = -1;
  if (v51)
  {
LABEL_21:
    MEMORY[0x259C63150](v51, 0x1000C8000313F17);
  }

LABEL_22:
  v42 = v11;
  v43 = v17;
  v44 = v23;
  v51 = v53;
  v52 = 0x100000000;
  *buffer = 1;
  *&v45 = 0;
  ANECUnitValidatorCreate();
  v40 = 0;
  v41 = 0;
  if (ANECValidateSpaceToChannelLayer())
  {
    v24 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v45);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v46, "Invalid configuration", 21);
    std::stringbuf::str();
    *&v45 = *MEMORY[0x277D82818];
    v25 = *(MEMORY[0x277D82818] + 72);
    *(&v45 + *(v45 - 24)) = *(MEMORY[0x277D82818] + 64);
    v46 = v25;
    v47 = (MEMORY[0x277D82878] + 16);
    if (v49 < 0)
    {
      operator delete(v48[7].__locale_);
    }

    v47 = (MEMORY[0x277D82868] + 16);
    std::locale::~locale(v48);
    std::iostream::~basic_iostream();
    MEMORY[0x259C630C0](&v50);
    v39 = 260;
    v38 = &v36;
    v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v62 == 1)
    {
      if (v61 != &v62)
      {
        free(v61);
      }

      v27 = v59;
      if (v59)
      {
        v28 = v60;
        v29 = v59;
        if (v60 != v59)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = v59;
        }

        v60 = v27;
        operator delete(v29);
      }

      v30 = v57;
      if (v57)
      {
        v31 = v58;
        v32 = v57;
        if (v58 != v57)
        {
          do
          {
            v34 = *--v31;
            v33 = v34;
            *v31 = 0;
            if (v34)
            {
              MEMORY[0x259C63150](v33, 0x1000C8077774924);
            }
          }

          while (v31 != v30);
          v32 = v57;
        }

        v58 = v30;
        operator delete(v32);
      }

      if (v55[1] != &v56)
      {
        free(v55[1]);
      }
    }

    if (v37 < 0)
    {
      operator delete(v36);
    }
  }

  else
  {
    v26 = 1;
  }

  ANECUnitValidatorDelete();
  if (v51 != v53)
  {
    free(v51);
  }

  return v26;
}

BOOL mlir::anec::SpaceToChannel::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::spaceTransformGetZinIrUnitInfo<ZinIrSpaceToChannelUnitInfo,mlir::anec::SpaceToChannel>();
  }

  v12 = "network should not be nullptr";
  v13 = 259;
  mlir::OpState::emitError(a1, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
      {
        do
        {
          v10 = *--v7;
          v9 = v10;
          *v7 = 0;
          if (v10)
          {
            MEMORY[0x259C63150](v9, 0x1000C8077774924);
          }
        }

        while (v7 != v6);
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

BOOL mlir::anec::BatchToSpace::inferPromotedReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = *MEMORY[0x277D85DE8];
  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v21 = v19;
  if (v19)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v22 = 0;
  }

  v30 = a6;
  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = a7;
  v34 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(&v31, "anec.batch_to_space", 19, Context);
    v32 = 1;
  }

  v35 = a4;
  v36 = a5;
  v24 = mlir::UnknownLoc::get(a1, v20);
  if (a3)
  {
    v25 = a2;
  }

  else
  {
    v25 = v24;
  }

  if ((mlir::anec::BatchToSpaceAdaptor::verify(&v30, v25) & 1) == 0)
  {
    return 0;
  }

  v26 = mlir::DictionaryAttr::begin(&v30);
  v27 = mlir::DictionaryAttr::end(&v30);
  v28 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v26, v27, **(v31 + 96));
  return mlir::anec::spaceTransformInferReturnTypesCommon(a2, a3, v21, v22, v28, 0, 0, a11);
}

uint64_t mlir::anec::BatchToSpaceAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v33 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v33); i != mlir::DictionaryAttr::end(&v33); i += 2)
  {
    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v31[0] = v14;
        v31[1] = v15;
        Type = mlir::ElementsAttr::getType(v31);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v35[0] = v17;
        v35[1] = Type;
        Shape = mlir::ShapedType::getShape(v35);
        v34 = 3;
        if (v19 == 1 && *Shape == v34)
        {
          v28 = v14;
          v29[0] = mlir::DenseElementsAttr::getType(&v28);
          v29[1] = v20;
          ElementType = mlir::ShapedType::getElementType(v29);
          if (mlir::Type::isUnsignedInteger(&ElementType, 64))
          {
            return 1;
          }
        }
      }

      v31[0] = "'anec.batch_to_space' op attribute 'factors' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      v32 = 259;
      mlir::emitError(a2, v31, v35);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v41;
          v23 = __p;
          if (v41 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v41 = v21;
          operator delete(v23);
        }

        v9 = v38;
        if (v38)
        {
          v24 = v39;
          v11 = v38;
          if (v39 != v38)
          {
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

            while (v24 != v9);
            goto LABEL_45;
          }

          goto LABEL_46;
        }

        goto LABEL_47;
      }

      return v5;
    }
  }

  v31[0] = "'anec.batch_to_space' op requires attribute 'factors'";
  v32 = 259;
  mlir::emitError(a2, v31, v35);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v41;
      v8 = __p;
      if (v41 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v41 = v6;
      operator delete(v8);
    }

    v9 = v38;
    if (v38)
    {
      v10 = v39;
      v11 = v38;
      if (v39 != v38)
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
LABEL_45:
        v11 = v38;
      }

LABEL_46:
      v39 = v9;
      operator delete(v11);
    }

LABEL_47:
    if (v36 != &v37)
    {
      free(v36);
    }
  }

  return v5;
}

BOOL mlir::anec::BatchToSpace::verifyWithANEC(mlir::Operation **a1, uint64_t a2, unint64_t a3)
{
  v63 = *MEMORY[0x277D85DE8];
  ANECBatchToSpaceLayerDescInitialize();
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v7 = mlir::DictionaryAttr::getValue(buffer);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v7 + 16 * v8), **(*(*a1 + 6) + 96));
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(buffer, v9, 0);
  mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v45);
  v10 = DWORD2(v45);
  if (DWORD2(v45) < 0x41)
  {
    v11 = v45;
    goto LABEL_8;
  }

  if (v10 - llvm::APInt::countLeadingZerosSlowCase(&v45) <= 0x40)
  {
    v11 = *v45;
    goto LABEL_7;
  }

  v11 = -1;
  if (v45)
  {
LABEL_7:
    MEMORY[0x259C63150](v45, 0x1000C8000313F17);
  }

LABEL_8:
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v12 = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v13 = mlir::DictionaryAttr::getValue(buffer);
  v15 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v12, (v13 + 16 * v14), **(*(*a1 + 6) + 96));
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v45, v15, 0);
  *buffer = v45;
  v55[1] = v47;
  v55[0] = (v46 + 1);
  mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v51);
  v16 = v52;
  if (v52 < 0x41)
  {
    v17 = v51;
    goto LABEL_15;
  }

  if (v16 - llvm::APInt::countLeadingZerosSlowCase(&v51) <= 0x40)
  {
    v17 = *v51;
    goto LABEL_14;
  }

  v17 = -1;
  if (v51)
  {
LABEL_14:
    MEMORY[0x259C63150](v51, 0x1000C8000313F17);
  }

LABEL_15:
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v18 = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v19 = mlir::DictionaryAttr::getValue(buffer);
  v21 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v18, (v19 + 16 * v20), **(*(*a1 + 6) + 96));
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v45, v21, 0);
  *buffer = v45;
  v55[1] = v47;
  v55[0] = (v46 + 2);
  mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v51);
  v22 = v52;
  if (v52 < 0x41)
  {
    v23 = v51;
    goto LABEL_22;
  }

  if (v22 - llvm::APInt::countLeadingZerosSlowCase(&v51) <= 0x40)
  {
    v23 = *v51;
    goto LABEL_21;
  }

  v23 = -1;
  if (v51)
  {
LABEL_21:
    MEMORY[0x259C63150](v51, 0x1000C8000313F17);
  }

LABEL_22:
  v42 = v11;
  v43 = v17;
  v44 = v23;
  v51 = v53;
  v52 = 0x100000000;
  *buffer = 1;
  *&v45 = 0;
  ANECUnitValidatorCreate();
  v40 = 0;
  v41 = 0;
  if (ANECValidateBatchToSpaceLayer())
  {
    v24 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v45);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v46, "Invalid configuration", 21);
    std::stringbuf::str();
    *&v45 = *MEMORY[0x277D82818];
    v25 = *(MEMORY[0x277D82818] + 72);
    *(&v45 + *(v45 - 24)) = *(MEMORY[0x277D82818] + 64);
    v46 = v25;
    v47 = (MEMORY[0x277D82878] + 16);
    if (v49 < 0)
    {
      operator delete(v48[7].__locale_);
    }

    v47 = (MEMORY[0x277D82868] + 16);
    std::locale::~locale(v48);
    std::iostream::~basic_iostream();
    MEMORY[0x259C630C0](&v50);
    v39 = 260;
    v38 = &v36;
    v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v62 == 1)
    {
      if (v61 != &v62)
      {
        free(v61);
      }

      v27 = v59;
      if (v59)
      {
        v28 = v60;
        v29 = v59;
        if (v60 != v59)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = v59;
        }

        v60 = v27;
        operator delete(v29);
      }

      v30 = v57;
      if (v57)
      {
        v31 = v58;
        v32 = v57;
        if (v58 != v57)
        {
          do
          {
            v34 = *--v31;
            v33 = v34;
            *v31 = 0;
            if (v34)
            {
              MEMORY[0x259C63150](v33, 0x1000C8077774924);
            }
          }

          while (v31 != v30);
          v32 = v57;
        }

        v58 = v30;
        operator delete(v32);
      }

      if (v55[1] != &v56)
      {
        free(v55[1]);
      }
    }

    if (v37 < 0)
    {
      operator delete(v36);
    }
  }

  else
  {
    v26 = 1;
  }

  ANECUnitValidatorDelete();
  if (v51 != v53)
  {
    free(v51);
  }

  return v26;
}

BOOL mlir::anec::BatchToSpace::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::spaceTransformGetZinIrUnitInfo<ZinIrBatchToSpaceUnitInfo,mlir::anec::BatchToSpace>();
  }

  v12 = "network should not be nullptr";
  v13 = 259;
  mlir::OpState::emitError(a1, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
      {
        do
        {
          v10 = *--v7;
          v9 = v10;
          *v7 = 0;
          if (v10)
          {
            MEMORY[0x259C63150](v9, 0x1000C8077774924);
          }
        }

        while (v7 != v6);
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

BOOL mlir::anec::SpaceToBatch::inferPromotedReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = *MEMORY[0x277D85DE8];
  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v21 = v19;
  if (v19)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v22 = 0;
  }

  v30 = a6;
  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = a7;
  v34 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(&v31, "anec.space_to_batch", 19, Context);
    v32 = 1;
  }

  v35 = a4;
  v36 = a5;
  v24 = mlir::UnknownLoc::get(a1, v20);
  if (a3)
  {
    v25 = a2;
  }

  else
  {
    v25 = v24;
  }

  if ((mlir::anec::SpaceToBatchAdaptor::verify(&v30, v25) & 1) == 0)
  {
    return 0;
  }

  v26 = mlir::DictionaryAttr::begin(&v30);
  v27 = mlir::DictionaryAttr::end(&v30);
  v28 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v26, v27, **(v31 + 96));
  return mlir::anec::spaceTransformInferReturnTypesCommon(a2, a3, v21, v22, v28, 0, 1, a11);
}

uint64_t mlir::anec::SpaceToBatchAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v33 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v33); i != mlir::DictionaryAttr::end(&v33); i += 2)
  {
    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v31[0] = v14;
        v31[1] = v15;
        Type = mlir::ElementsAttr::getType(v31);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v35[0] = v17;
        v35[1] = Type;
        Shape = mlir::ShapedType::getShape(v35);
        v34 = 3;
        if (v19 == 1 && *Shape == v34)
        {
          v28 = v14;
          v29[0] = mlir::DenseElementsAttr::getType(&v28);
          v29[1] = v20;
          ElementType = mlir::ShapedType::getElementType(v29);
          if (mlir::Type::isUnsignedInteger(&ElementType, 64))
          {
            return 1;
          }
        }
      }

      v31[0] = "'anec.space_to_batch' op attribute 'factors' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      v32 = 259;
      mlir::emitError(a2, v31, v35);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v41;
          v23 = __p;
          if (v41 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v41 = v21;
          operator delete(v23);
        }

        v9 = v38;
        if (v38)
        {
          v24 = v39;
          v11 = v38;
          if (v39 != v38)
          {
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

            while (v24 != v9);
            goto LABEL_45;
          }

          goto LABEL_46;
        }

        goto LABEL_47;
      }

      return v5;
    }
  }

  v31[0] = "'anec.space_to_batch' op requires attribute 'factors'";
  v32 = 259;
  mlir::emitError(a2, v31, v35);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v41;
      v8 = __p;
      if (v41 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v41 = v6;
      operator delete(v8);
    }

    v9 = v38;
    if (v38)
    {
      v10 = v39;
      v11 = v38;
      if (v39 != v38)
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
LABEL_45:
        v11 = v38;
      }

LABEL_46:
      v39 = v9;
      operator delete(v11);
    }

LABEL_47:
    if (v36 != &v37)
    {
      free(v36);
    }
  }

  return v5;
}

BOOL mlir::anec::SpaceToBatch::verifyWithANEC(mlir::Operation **a1, uint64_t a2, unint64_t a3)
{
  v63 = *MEMORY[0x277D85DE8];
  ANECSpaceToBatchLayerDescInitialize();
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v7 = mlir::DictionaryAttr::getValue(buffer);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v7 + 16 * v8), **(*(*a1 + 6) + 96));
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(buffer, v9, 0);
  mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v45);
  v10 = DWORD2(v45);
  if (DWORD2(v45) < 0x41)
  {
    v11 = v45;
    goto LABEL_8;
  }

  if (v10 - llvm::APInt::countLeadingZerosSlowCase(&v45) <= 0x40)
  {
    v11 = *v45;
    goto LABEL_7;
  }

  v11 = -1;
  if (v45)
  {
LABEL_7:
    MEMORY[0x259C63150](v45, 0x1000C8000313F17);
  }

LABEL_8:
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v12 = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v13 = mlir::DictionaryAttr::getValue(buffer);
  v15 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v12, (v13 + 16 * v14), **(*(*a1 + 6) + 96));
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v45, v15, 0);
  *buffer = v45;
  v55[1] = v47;
  v55[0] = (v46 + 1);
  mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v51);
  v16 = v52;
  if (v52 < 0x41)
  {
    v17 = v51;
    goto LABEL_15;
  }

  if (v16 - llvm::APInt::countLeadingZerosSlowCase(&v51) <= 0x40)
  {
    v17 = *v51;
    goto LABEL_14;
  }

  v17 = -1;
  if (v51)
  {
LABEL_14:
    MEMORY[0x259C63150](v51, 0x1000C8000313F17);
  }

LABEL_15:
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v18 = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v19 = mlir::DictionaryAttr::getValue(buffer);
  v21 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v18, (v19 + 16 * v20), **(*(*a1 + 6) + 96));
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v45, v21, 0);
  *buffer = v45;
  v55[1] = v47;
  v55[0] = (v46 + 2);
  mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v51);
  v22 = v52;
  if (v52 < 0x41)
  {
    v23 = v51;
    goto LABEL_22;
  }

  if (v22 - llvm::APInt::countLeadingZerosSlowCase(&v51) <= 0x40)
  {
    v23 = *v51;
    goto LABEL_21;
  }

  v23 = -1;
  if (v51)
  {
LABEL_21:
    MEMORY[0x259C63150](v51, 0x1000C8000313F17);
  }

LABEL_22:
  v42 = v11;
  v43 = v17;
  v44 = v23;
  v51 = v53;
  v52 = 0x100000000;
  *buffer = 1;
  *&v45 = 0;
  ANECUnitValidatorCreate();
  v40 = 0;
  v41 = 0;
  if (ANECValidateSpaceToBatchLayer())
  {
    v24 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v45);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v46, "Invalid configuration", 21);
    std::stringbuf::str();
    *&v45 = *MEMORY[0x277D82818];
    v25 = *(MEMORY[0x277D82818] + 72);
    *(&v45 + *(v45 - 24)) = *(MEMORY[0x277D82818] + 64);
    v46 = v25;
    v47 = (MEMORY[0x277D82878] + 16);
    if (v49 < 0)
    {
      operator delete(v48[7].__locale_);
    }

    v47 = (MEMORY[0x277D82868] + 16);
    std::locale::~locale(v48);
    std::iostream::~basic_iostream();
    MEMORY[0x259C630C0](&v50);
    v39 = 260;
    v38 = &v36;
    v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v62 == 1)
    {
      if (v61 != &v62)
      {
        free(v61);
      }

      v27 = v59;
      if (v59)
      {
        v28 = v60;
        v29 = v59;
        if (v60 != v59)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = v59;
        }

        v60 = v27;
        operator delete(v29);
      }

      v30 = v57;
      if (v57)
      {
        v31 = v58;
        v32 = v57;
        if (v58 != v57)
        {
          do
          {
            v34 = *--v31;
            v33 = v34;
            *v31 = 0;
            if (v34)
            {
              MEMORY[0x259C63150](v33, 0x1000C8077774924);
            }
          }

          while (v31 != v30);
          v32 = v57;
        }

        v58 = v30;
        operator delete(v32);
      }

      if (v55[1] != &v56)
      {
        free(v55[1]);
      }
    }

    if (v37 < 0)
    {
      operator delete(v36);
    }
  }

  else
  {
    v26 = 1;
  }

  ANECUnitValidatorDelete();
  if (v51 != v53)
  {
    free(v51);
  }

  return v26;
}

BOOL mlir::anec::SpaceToBatch::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::spaceTransformGetZinIrUnitInfo<ZinIrSpaceToBatchUnitInfo,mlir::anec::SpaceToBatch>();
  }

  v12 = "network should not be nullptr";
  v13 = 259;
  mlir::OpState::emitError(a1, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
      {
        do
        {
          v10 = *--v7;
          v9 = v10;
          *v7 = 0;
          if (v10)
          {
            MEMORY[0x259C63150](v9, 0x1000C8077774924);
          }
        }

        while (v7 != v6);
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

BOOL mlir::anec::Resize::inferPromotedReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v98 = *MEMORY[0x277D85DE8];
  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v21 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v76[0] = v21;
  v76[1] = v19;
  v81 = a6;
  LOBYTE(v82) = 0;
  v83 = 0;
  v84 = a7;
  v85 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v81);
    if (v83 == 1)
    {
      v83 = 0;
    }

    mlir::OperationName::OperationName(&v82, "anec.resize", 11, Context);
    v83 = 1;
  }

  v86 = a4;
  v87 = a5;
  v23 = mlir::UnknownLoc::get(a1, v20);
  if (a3)
  {
    v24 = a2;
  }

  else
  {
    v24 = v23;
  }

  if ((mlir::anec::ResizeAdaptor::verify(&v81, v24) & 1) == 0)
  {
    return 0;
  }

  mlir::ShapedType::getShape(v76);
  v26 = v25;
  Shape = mlir::ShapedType::getShape(v76);
  v78 = v80;
  v79 = 0x500000000;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v26);
  v29 = mlir::anec::getIndexFromDim(1, v26);
  v30 = mlir::anec::getIndexFromDim(3, v26);
  v31 = mlir::anec::getIndexFromDim(4, v26);
  v74 = *(Shape + 8 * IndexFromDim);
  v75 = *(Shape + 8 * v29);
  v73 = *(Shape + 8 * v30);
  v32 = *(Shape + 8 * v31);
  v33 = mlir::DictionaryAttr::begin(&v81);
  v34 = mlir::DictionaryAttr::end(&v81);
  v35 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v33 + 48), (v34 - 16), *(*(v82 + 96) + 24));
  if (v35)
  {
    if (*(*v35 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = 0;
  }

  v77 = v36;
  mlir::FloatAttr::getValue(&v77, &v88);
  v38 = llvm::APFloat::convertToFloat(&v88);
  v39 = v89[0];
  v41 = llvm::APFloatBase::PPCDoubleDouble(v40);
  if (v41 == v39)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v89);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v89);
  }

  v42 = mlir::DictionaryAttr::begin(&v81);
  v43 = mlir::DictionaryAttr::end(&v81);
  v44 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v42 + 48), (v43 - 16), *(*(v82 + 96) + 32));
  if (v44)
  {
    if (*(*v44 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }
  }

  else
  {
    v45 = 0;
  }

  v77 = v45;
  mlir::FloatAttr::getValue(&v77, &v88);
  v46 = llvm::APFloat::convertToFloat(&v88);
  if (v41 == v89[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v89);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v89);
  }

  if (v38 == -1.0 && v46 == -1.0)
  {
    v47 = mlir::DictionaryAttr::begin(&v81);
    v48 = mlir::DictionaryAttr::end(&v81);
    v77 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v47, (v48 - 48), **(v82 + 96));
    mlir::IntegerAttr::getValue(&v77, &v88);
    if (LODWORD(v89[0]) > 0x40)
    {
      v49 = *v88;
      MEMORY[0x259C63150]();
    }

    else
    {
      v49 = v88;
    }

    v51 = mlir::DictionaryAttr::begin(&v81);
    v52 = mlir::DictionaryAttr::end(&v81);
    v77 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v51 + 48), v52, *(*(v82 + 96) + 40));
    mlir::IntegerAttr::getValue(&v77, &v88);
    if (LODWORD(v89[0]) > 0x40)
    {
      v50 = *v88;
      MEMORY[0x259C63150]();
    }

    else
    {
      v50 = v88;
    }
  }

  else
  {
    if (v38 == -1.0 || v38 <= 0.0 || v46 == -1.0 || v46 <= 0.0)
    {
      if (a3)
      {
        mlir::emitError(a2, &v88);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v88, "scale_factor_x and scale_factor_y must be >= 0.0f");
        v37 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
        if (v88)
        {
          mlir::InFlightDiagnostic::report(&v88);
        }

        if (v97 == 1)
        {
          if (v96 != &v97)
          {
            free(v96);
          }

          v65 = __p;
          if (__p)
          {
            v66 = v95;
            v67 = __p;
            if (v95 != __p)
            {
              do
              {
                v66 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v66 - 1);
              }

              while (v66 != v65);
              v67 = __p;
            }

            v95 = v65;
            operator delete(v67);
          }

          v68 = v92;
          if (v92)
          {
            v69 = v93;
            v70 = v92;
            if (v93 != v92)
            {
              do
              {
                v72 = *--v69;
                v71 = v72;
                *v69 = 0;
                if (v72)
                {
                  MEMORY[0x259C63150](v71, 0x1000C8077774924);
                }
              }

              while (v69 != v68);
              v70 = v92;
            }

            v93 = v68;
            operator delete(v70);
          }

          if (v90 != &v91)
          {
            free(v90);
          }
        }
      }

      else
      {
        v37 = 0;
      }

      goto LABEL_50;
    }

    v50 = vcvtms_s32_f32(v38 * v32);
    v49 = vcvtms_s32_f32(v46 * v73);
  }

  if (v79 >= HIDWORD(v79))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v78 + v79) = v74;
  LODWORD(v79) = v79 + 1;
  v53 = mlir::anec::getIndexFromDim(2, v26);
  v54 = v79;
  if (v55)
  {
    if (v79 >= HIDWORD(v79))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v78 + v79) = *(Shape + 8 * v53);
    v54 = v79 + 1;
    LODWORD(v79) = v79 + 1;
  }

  if (v54 >= HIDWORD(v79))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v78 + v54) = v75;
  v56 = v79 + 1;
  LODWORD(v79) = v56;
  if (v56 >= HIDWORD(v79))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v78 + v56) = v49;
  v57 = v79 + 1;
  LODWORD(v79) = v57;
  if (v57 >= HIDWORD(v79))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v78 + v57) = v50;
  LODWORD(v79) = v79 + 1;
  v58 = v79;
  v59 = v78;
  ElementType = mlir::ShapedType::getElementType(v76);
  v61 = mlir::MemRefType::get(v59, v58, ElementType, 0, 0, 0);
  v62 = *(a11 + 8);
  if (v62 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v62) = v61;
  ++*(a11 + 8);
  v37 = 1;
LABEL_50:
  if (v78 != v80)
  {
    free(v78);
  }

  return v37;
}

uint64_t mlir::anec::ResizeAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v54 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v54); i != mlir::DictionaryAttr::end(&v54); i = (i + 16))
  {
    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      v14 = *(i + 1);
      while (i != mlir::DictionaryAttr::end(&v54))
      {
        if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 8))
        {
          v21 = *(i + 1);
          while (1)
          {
            if (i == mlir::DictionaryAttr::end(&v54))
            {
              v51 = "'anec.resize' op requires attribute 'sampling_modes'";
              v53 = 259;
              mlir::emitError(a2, &v51, &v56);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
              if (v56)
              {
                mlir::InFlightDiagnostic::report(&v56);
              }

              if (v65 != 1)
              {
                return v5;
              }

              if (v64 != &v65)
              {
                free(v64);
              }

              v22 = __p;
              if (__p)
              {
                v23 = v63;
                v24 = __p;
                if (v63 != __p)
                {
                  do
                  {
                    v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
                  }

                  while (v23 != v22);
                  v24 = __p;
                }

                v63 = v22;
                operator delete(v24);
              }

              v9 = v60;
              if (!v60)
              {
                goto LABEL_87;
              }

              v25 = v61;
              v11 = v60;
              if (v61 == v60)
              {
                goto LABEL_86;
              }

              do
              {
                v27 = *--v25;
                v26 = v27;
                *v25 = 0;
                if (v27)
                {
                  MEMORY[0x259C63150](v26, 0x1000C8077774924);
                }
              }

              while (v25 != v9);
              goto LABEL_85;
            }

            if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 16))
            {
              break;
            }

            i = (i + 16);
          }

          v28 = *(i + 1);
          if (i != mlir::DictionaryAttr::end(&v54))
          {
            v29 = 0;
            v30 = 0;
            while (mlir::NamedAttribute::getName(i) != *(*(a1[1] + 96) + 40))
            {
              if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 24))
              {
                v29 = *(i + 1);
              }

              else if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 32))
              {
                v30 = *(i + 1);
              }

              i = (i + 16);
              if (i == mlir::DictionaryAttr::end(&v54))
              {
                goto LABEL_69;
              }
            }

            v38 = *(i + 1);
            if (!v14 || *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v51 = v14, v56 = mlir::IntegerAttr::getType(&v51), mlir::Type::isUnsignedInteger(&v56, 64)))
            {
              if (!v38 || *(*v38 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v51 = v38, v56 = mlir::IntegerAttr::getType(&v51), mlir::Type::isUnsignedInteger(&v56, 64)))
              {
                if (!v29 || *(*v29 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && (v51 = v29, v56 = mlir::FloatAttr::getType(&v51), mlir::Type::isF32(&v56)))
                {
                  if (!v30 || *(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && (v51 = v30, v56 = mlir::FloatAttr::getType(&v51), mlir::Type::isF32(&v56)))
                  {
                    if (!v21)
                    {
                      goto LABEL_127;
                    }

                    v39 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v21 + 8);
                    v51 = v21;
                    v52 = v39;
                    Type = mlir::ElementsAttr::getType(&v51);
                    v41 = Type;
                    if (Type)
                    {
                      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
                    }

                    v56 = v41;
                    v57 = Type;
                    Shape = mlir::ShapedType::getShape(&v56);
                    v55 = 2;
                    if (v43 == 1 && *Shape == v55 && (v50 = v21, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(&v50) & 1) != 0))
                    {
LABEL_127:
                      if (!v28)
                      {
                        return 1;
                      }

                      v44 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v28 + 8);
                      v51 = v28;
                      v52 = v44;
                      v45 = mlir::ElementsAttr::getType(&v51);
                      v46 = v45;
                      if (v45)
                      {
                        v45 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v45 + 8);
                      }

                      v56 = v46;
                      v57 = v45;
                      v47 = mlir::ShapedType::getShape(&v56);
                      v55 = 2;
                      if (v48 == 1 && *v47 == v55)
                      {
                        v50 = v28;
                        if (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_2>(&v50))
                        {
                          return 1;
                        }
                      }

                      v49 = "'anec.resize' op attribute 'sampling_modes' failed to satisfy constraint: SamplingGridMode elements attribute of shape {2}";
                    }

                    else
                    {
                      v49 = "'anec.resize' op attribute 'sampling_methods' failed to satisfy constraint: SamplingGridMethod elements attribute of shape {2}";
                    }
                  }

                  else
                  {
                    v49 = "'anec.resize' op attribute 'scale_factor_y' failed to satisfy constraint: 32-bit float attribute";
                  }
                }

                else
                {
                  v49 = "'anec.resize' op attribute 'scale_factor_x' failed to satisfy constraint: 32-bit float attribute";
                }
              }

              else
              {
                v49 = "'anec.resize' op attribute 'width' failed to satisfy constraint: 64-bit unsigned integer attribute";
              }

              v51 = v49;
              v53 = 259;
              mlir::emitError(a2, &v51, &v56);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v56);
            }

            else
            {
              v51 = "'anec.resize' op attribute 'height' failed to satisfy constraint: 64-bit unsigned integer attribute";
              v53 = 259;
              mlir::emitError(a2, &v51, &v56);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
              if (v56)
              {
                mlir::InFlightDiagnostic::report(&v56);
              }

              if (v65 == 1)
              {
                mlir::Diagnostic::~Diagnostic(&v57);
              }
            }

            return v5;
          }

LABEL_69:
          v51 = "'anec.resize' op requires attribute 'width'";
          v53 = 259;
          mlir::emitError(a2, &v51, &v56);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
          if (v56)
          {
            mlir::InFlightDiagnostic::report(&v56);
          }

          if (v65 != 1)
          {
            return v5;
          }

          if (v64 != &v65)
          {
            free(v64);
          }

          v31 = __p;
          if (__p)
          {
            v32 = v63;
            v33 = __p;
            if (v63 != __p)
            {
              do
              {
                v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
              }

              while (v32 != v31);
              v33 = __p;
            }

            v63 = v31;
            operator delete(v33);
          }

          v9 = v60;
          if (!v60)
          {
            goto LABEL_87;
          }

          v34 = v61;
          v11 = v60;
          if (v61 == v60)
          {
            goto LABEL_86;
          }

          do
          {
            v36 = *--v34;
            v35 = v36;
            *v34 = 0;
            if (v36)
            {
              MEMORY[0x259C63150](v35, 0x1000C8077774924);
            }
          }

          while (v34 != v9);
          goto LABEL_85;
        }

        i = (i + 16);
      }

      v51 = "'anec.resize' op requires attribute 'sampling_methods'";
      v53 = 259;
      mlir::emitError(a2, &v51, &v56);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
      if (v56)
      {
        mlir::InFlightDiagnostic::report(&v56);
      }

      if (v65 != 1)
      {
        return v5;
      }

      if (v64 != &v65)
      {
        free(v64);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v63;
        v17 = __p;
        if (v63 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v63 = v15;
        operator delete(v17);
      }

      v9 = v60;
      if (!v60)
      {
        goto LABEL_87;
      }

      v18 = v61;
      v11 = v60;
      if (v61 == v60)
      {
        goto LABEL_86;
      }

      do
      {
        v20 = *--v18;
        v19 = v20;
        *v18 = 0;
        if (v20)
        {
          MEMORY[0x259C63150](v19, 0x1000C8077774924);
        }
      }

      while (v18 != v9);
LABEL_85:
      v11 = v60;
      goto LABEL_86;
    }
  }

  v51 = "'anec.resize' op requires attribute 'height'";
  v53 = 259;
  mlir::emitError(a2, &v51, &v56);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
  if (v56)
  {
    mlir::InFlightDiagnostic::report(&v56);
  }

  if (v65 == 1)
  {
    if (v64 != &v65)
    {
      free(v64);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v63;
      v8 = __p;
      if (v63 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v63 = v6;
      operator delete(v8);
    }

    v9 = v60;
    if (v60)
    {
      v10 = v61;
      v11 = v60;
      if (v61 != v60)
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
        goto LABEL_85;
      }

LABEL_86:
      v61 = v9;
      operator delete(v11);
    }

LABEL_87:
    if (v58 != &v59)
    {
      free(v58);
    }
  }

  return v5;
}

uint64_t *mlir::anec::Resize::getHeight(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 48), **(*(*this + 6) + 96));
  mlir::IntegerAttr::getValue(&v9, &AttrDictionary);
  if (v8 <= 0x40)
  {
    return AttrDictionary;
  }

  v5 = *AttrDictionary;
  MEMORY[0x259C63150]();
  return v5;
}

uint64_t *mlir::anec::Resize::getWidth(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 40));
  mlir::IntegerAttr::getValue(&v9, &AttrDictionary);
  if (v8 <= 0x40)
  {
    return AttrDictionary;
  }

  v5 = *AttrDictionary;
  MEMORY[0x259C63150]();
  return v5;
}

uint64_t mlir::anec::Resize::getSamplingMethods(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 8));
}

uint64_t mlir::anec::Resize::getSamplingModes(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 16));
}

BOOL mlir::anec::Resize::verifyWithANEC(mlir::Operation **a1, mlir::ShapedType *a2, unint64_t a3)
{
  v83 = *MEMORY[0x277D85DE8];
  ANECResizeLayerDescInitialize();
  mlir::ShapedType::getShape(a2);
  v7 = v6;
  IndexFromDim = mlir::anec::getIndexFromDim(3, v6);
  if ((v9 & 1) == 0 || (v10 = IndexFromDim, v11 = mlir::anec::getIndexFromDim(4, v7), (v12 & 1) == 0))
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v70 = v72;
  v72[0] = v10;
  v72[1] = v11;
  v71 = 0x200000002;
  v66 = &ANECDimension;
  v69 = 0;
  ANECDimension = 0;
  v67 = 0x200000002;
  v64[0] = v65;
  v64[1] = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v14 = mlir::DictionaryAttr::getValue(buffer);
  v16 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v14 + 16 * v15 - 16), *(*(*(*a1 + 6) + 96) + 16));
  mlir::getValues<unsigned long>(v16, v64);
  v62[0] = v63;
  v62[1] = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v17 = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v18 = mlir::DictionaryAttr::getValue(buffer);
  v20 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v17 + 16), (v18 + 16 * v19 - 32), *(*(*(*a1 + 6) + 96) + 8));
  mlir::getValues<unsigned long>(v20, v62);
  v50 = *v66;
  v51 = off_27983A060[*v64[0]];
  v46 = *v66;
  if (*v62[0])
  {
    v21 = @"NearestNeighbor";
  }

  else
  {
    v21 = @"Linear";
  }

  v47 = v21;
  v52 = *(v66 + 1);
  v53 = off_27983A060[*(v64[0] + 1)];
  v48 = *(v66 + 1);
  if (*(v62[0] + 1))
  {
    v22 = @"NearestNeighbor";
  }

  else
  {
    v22 = @"Linear";
  }

  v49 = v22;
  Width = mlir::anec::Resize::getWidth(a1);
  Height = mlir::anec::Resize::getHeight(a1);
  v54[0] = mlir::anec::Resize::getScaleFactorXAttr(a1);
  mlir::FloatAttr::getValue(v54, buffer);
  v44 = llvm::APFloat::convertToFloat(buffer);
  v23 = v74[0];
  v25 = llvm::APFloatBase::PPCDoubleDouble(v24);
  if (v25 == v23)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v74);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v74);
  }

  v54[0] = mlir::anec::Resize::getScaleFactorYAttr(a1);
  mlir::FloatAttr::getValue(v54, buffer);
  v45 = llvm::APFloat::convertToFloat(buffer);
  if (v25 == v74[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v74);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v74);
  }

  v60[0] = v61;
  v60[1] = 0x100000000;
  v26 = 1;
  *buffer = 1;
  v54[0] = 0;
  ANECUnitValidatorCreate();
  v40 = 0;
  v41 = 0;
  if (ANECValidateResizeLayer())
  {
    v27 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v54);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v55, "Invalid configuration", 21);
    std::stringbuf::str();
    v54[0] = *MEMORY[0x277D82818];
    v28 = *(MEMORY[0x277D82818] + 72);
    *(v54 + *(v54[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v55 = v28;
    v56 = MEMORY[0x277D82878] + 16;
    if (v58 < 0)
    {
      operator delete(v57[7].__locale_);
    }

    v56 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v57);
    std::iostream::~basic_iostream();
    MEMORY[0x259C630C0](&v59);
    LOWORD(v57[0].__locale_) = 260;
    v54[0] = &v38;
    v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v82 == 1)
    {
      if (v81 != &v82)
      {
        free(v81);
      }

      v29 = v79;
      if (v79)
      {
        v30 = v80;
        v31 = v79;
        if (v80 != v79)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = v79;
        }

        v80 = v29;
        operator delete(v31);
      }

      v32 = v77;
      if (v77)
      {
        v33 = v78;
        v34 = v77;
        if (v78 != v77)
        {
          do
          {
            v36 = *--v33;
            v35 = v36;
            *v33 = 0;
            if (v36)
            {
              MEMORY[0x259C63150](v35, 0x1000C8077774924);
            }
          }

          while (v33 != v32);
          v34 = v77;
        }

        v78 = v32;
        operator delete(v34);
      }

      if (v75 != &v76)
      {
        free(v75);
      }
    }

    if (v39 < 0)
    {
      operator delete(v38);
    }
  }

  ANECUnitValidatorDelete();
  if (v60[0] != v61)
  {
    free(v60[0]);
  }

  if (v62[0] != v63)
  {
    free(v62[0]);
  }

  if (v64[0] != v65)
  {
    free(v64[0]);
  }

  if (v66 != &ANECDimension)
  {
    free(v66);
  }

  if (v70 != v72)
  {
    free(v70);
  }

  return v26;
}

BOOL mlir::anec::Resize::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::Resize::getZinIrUnitInfo();
  }

  v12 = "network should not be nullptr";
  v13 = 259;
  mlir::OpState::emitError(a1, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
      {
        do
        {
          v10 = *--v7;
          v9 = v10;
          *v7 = 0;
          if (v10)
          {
            MEMORY[0x259C63150](v9, 0x1000C8077774924);
          }
        }

        while (v7 != v6);
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

uint64_t mlir::anec::InputView::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v72 = *MEMORY[0x277D85DE8];
  v65 = a6;
  LOBYTE(v66) = 0;
  v67 = 0;
  v68 = a7;
  v69 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v65);
    if (v67 == 1)
    {
      v67 = 0;
    }

    mlir::OperationName::OperationName(&v66, "anec.input_view", 15, Context);
    v67 = 1;
    a1 = v15;
  }

  v70 = a4;
  v71 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if ((mlir::anec::InputViewAdaptor::verify(&v65, v18) & 1) == 0)
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v48[0] = v20;
  v48[1] = v19;
  Shape = mlir::ShapedType::getShape(v48);
  v23 = v22;
  v24 = mlir::DictionaryAttr::begin(&v65);
  v25 = mlir::DictionaryAttr::end(&v65);
  v49 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v24, (v25 - 48), **(v66 + 96));
  mlir::IntegerAttr::getValue(&v49, &v50);
  if (v51 > 0x40)
  {
    v26 = *v50;
    MEMORY[0x259C63150]();
  }

  else
  {
    v26 = v50;
  }

  v47 = v26;
  if (v26 >= v23)
  {
    v50 = "'anec.input_view' op attribute 'dimension = {0}' is not consistent with input rank size = {1}";
    v51 = 93;
    v52 = &v59;
    v53 = 2;
    v54 = 1;
    v55 = &unk_28686BC50;
    v56 = &v47;
    v57 = &unk_28686BC80;
    v58 = v23;
    v59 = &v55;
    v60 = &v57;
    return mlir::emitOptionalError<llvm::formatv_object<std::tuple<llvm::support::detail::provider_format_adapter<long long &>,llvm::support::detail::provider_format_adapter<long long &>>>>(a2, a3, &v50);
  }

  v28 = mlir::DictionaryAttr::begin(&v65);
  v29 = mlir::DictionaryAttr::end(&v65);
  v49 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v28 + 16), (v29 - 32), *(*(v66 + 96) + 8));
  mlir::IntegerAttr::getValue(&v49, &v50);
  if (v51 > 0x40)
  {
    v30 = *v50;
    MEMORY[0x259C63150]();
  }

  else
  {
    v30 = v50;
  }

  v46 = v30;
  v31 = mlir::DictionaryAttr::begin(&v65);
  v32 = mlir::DictionaryAttr::end(&v65);
  v49 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v31 + 32), (v32 - 16), *(*(v66 + 96) + 16));
  mlir::IntegerAttr::getValue(&v49, &v50);
  if (v51 > 0x40)
  {
    v33 = *v50;
    MEMORY[0x259C63150]();
  }

  else
  {
    v33 = v50;
  }

  v49 = v33;
  Step = mlir::anec::detail::InputViewGenericAdaptorBase::getStep(&v65);
  v45 = Step;
  v35 = *(Shape + 8 * v47);
  v44 = v35;
  if (Step < 1)
  {
    if (v33 != v35)
    {
      v50 = "'anec.input_view' with negative stride must have size {0} that equals the size of tensor {1} at dimension {2}";
      v51 = 109;
      v52 = &v61;
      v53 = 3;
      v54 = 1;
      v55 = &unk_28686BC50;
      v56 = &v49;
      v57 = &unk_28685E520;
      v58 = &v44;
      v59 = &unk_28686BC50;
      v60 = &v47;
      v61 = &v55;
      v62 = &v57;
      v63[0] = &v59;
      return mlir::emitOptionalError<llvm::formatv_object<std::tuple<llvm::support::detail::provider_format_adapter<long long &>,llvm::support::detail::provider_format_adapter<long long &>>>>(a2, a3, &v50);
    }
  }

  else if (v30 + (v33 - 1) * Step + 1 > v35)
  {
    v50 = "'anec.input_view' with offset {0}, size {1} and stride {2} is out of bounds for dimension {3} of size {4}";
    v51 = 105;
    v52 = v64;
    v53 = 5;
    v54 = 1;
    v55 = &unk_28686BC50;
    v56 = &v46;
    v57 = &unk_28686BC50;
    v58 = &v49;
    v59 = &unk_28685E520;
    v60 = &v45;
    v61 = &unk_28686BC50;
    v62 = &v47;
    v63[0] = &unk_28685E520;
    v63[1] = &v44;
    v64[0] = &v55;
    v64[1] = &v57;
    v64[2] = &v59;
    v64[3] = &v61;
    v64[4] = v63;
    return mlir::emitOptionalError<llvm::formatv_object<std::tuple<llvm::support::detail::provider_format_adapter<long long &>,llvm::support::detail::provider_format_adapter<long long &>>>>(a2, a3, &v50);
  }

  LODWORD(v36) = 0;
  v37 = 0;
  v50 = &v52;
  v51 = 0x500000000;
  v38 = 8 * v23;
  do
  {
    if (v37 == v47)
    {
      v39 = &v49;
    }

    else
    {
      v39 = Shape;
    }

    if (v36 >= HIDWORD(v51))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v50 + v36) = *v39;
    v36 = (v51 + 1);
    LODWORD(v51) = v51 + 1;
    ++v37;
    Shape += 8;
    v38 -= 8;
  }

  while (v38);
  v40 = v50;
  ElementType = mlir::ShapedType::getElementType(v48);
  v42 = mlir::MemRefType::get(v40, v36, ElementType, 0, 0, 0);
  v43 = *(a11 + 8);
  if (v43 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v43) = v42;
  ++*(a11 + 8);
  if (v50 != &v52)
  {
    free(v50);
  }

  return 1;
}

uint64_t mlir::anec::InputViewAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v40 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v40); i != mlir::DictionaryAttr::end(&v40); i = (i + 16))
  {
    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      v14 = *(i + 1);
      while (i != mlir::DictionaryAttr::end(&v40))
      {
        if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 8))
        {
          v21 = *(i + 1);
          while (i != mlir::DictionaryAttr::end(&v40))
          {
            if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 16))
            {
              v28 = *(i + 1);
              while (i != mlir::DictionaryAttr::end(&v40))
              {
                if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 24))
                {
                  v36 = *(i + 1);
                  if (!v14 || *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v38[0] = v14, Type = mlir::IntegerAttr::getType(v38), mlir::Type::isUnsignedInteger(&Type, 64)))
                  {
                    if (!v21 || *(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v38[0] = v21, Type = mlir::IntegerAttr::getType(v38), mlir::Type::isUnsignedInteger(&Type, 64)))
                    {
                      if (!v28 || *(*v28 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v38[0] = v28, Type = mlir::IntegerAttr::getType(v38), mlir::Type::isUnsignedInteger(&Type, 64)))
                      {
                        if (!v36)
                        {
                          return 1;
                        }

                        if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
                        {
                          v38[0] = v36;
                          Type = mlir::IntegerAttr::getType(v38);
                          if (mlir::Type::isSignedInteger(&Type, 64))
                          {
                            return 1;
                          }
                        }

                        v37 = "'anec.input_view' op attribute 'step' failed to satisfy constraint: 64-bit signed integer attribute";
                      }

                      else
                      {
                        v37 = "'anec.input_view' op attribute 'size' failed to satisfy constraint: 64-bit unsigned integer attribute";
                      }
                    }

                    else
                    {
                      v37 = "'anec.input_view' op attribute 'offset' failed to satisfy constraint: 64-bit unsigned integer attribute";
                    }

                    v38[0] = v37;
                    v39 = 259;
                    mlir::emitError(a2, v38, &Type);
                    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
                    mlir::InFlightDiagnostic::~InFlightDiagnostic(&Type);
                  }

                  else
                  {
                    v38[0] = "'anec.input_view' op attribute 'dimension' failed to satisfy constraint: 64-bit unsigned integer attribute";
                    v39 = 259;
                    mlir::emitError(a2, v38, &Type);
                    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
                    if (Type)
                    {
                      mlir::InFlightDiagnostic::report(&Type);
                    }

                    if (v50 == 1)
                    {
                      mlir::Diagnostic::~Diagnostic(&v42);
                    }
                  }

                  return v5;
                }

                i = (i + 16);
              }

              v38[0] = "'anec.input_view' op requires attribute 'step'";
              v39 = 259;
              mlir::emitError(a2, v38, &Type);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
              if (Type)
              {
                mlir::InFlightDiagnostic::report(&Type);
              }

              if (v50 != 1)
              {
                return v5;
              }

              if (v49 != &v50)
              {
                free(v49);
              }

              v29 = __p;
              if (__p)
              {
                v30 = v48;
                v31 = __p;
                if (v48 != __p)
                {
                  do
                  {
                    v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
                  }

                  while (v30 != v29);
                  v31 = __p;
                }

                v48 = v29;
                operator delete(v31);
              }

              v9 = v45;
              if (!v45)
              {
                goto LABEL_83;
              }

              v32 = v46;
              v11 = v45;
              if (v46 == v45)
              {
                goto LABEL_82;
              }

              do
              {
                v34 = *--v32;
                v33 = v34;
                *v32 = 0;
                if (v34)
                {
                  MEMORY[0x259C63150](v33, 0x1000C8077774924);
                }
              }

              while (v32 != v9);
              goto LABEL_81;
            }

            i = (i + 16);
          }

          v38[0] = "'anec.input_view' op requires attribute 'size'";
          v39 = 259;
          mlir::emitError(a2, v38, &Type);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
          if (Type)
          {
            mlir::InFlightDiagnostic::report(&Type);
          }

          if (v50 != 1)
          {
            return v5;
          }

          if (v49 != &v50)
          {
            free(v49);
          }

          v22 = __p;
          if (__p)
          {
            v23 = v48;
            v24 = __p;
            if (v48 != __p)
            {
              do
              {
                v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
              }

              while (v23 != v22);
              v24 = __p;
            }

            v48 = v22;
            operator delete(v24);
          }

          v9 = v45;
          if (!v45)
          {
            goto LABEL_83;
          }

          v25 = v46;
          v11 = v45;
          if (v46 == v45)
          {
            goto LABEL_82;
          }

          do
          {
            v27 = *--v25;
            v26 = v27;
            *v25 = 0;
            if (v27)
            {
              MEMORY[0x259C63150](v26, 0x1000C8077774924);
            }
          }

          while (v25 != v9);
          goto LABEL_81;
        }

        i = (i + 16);
      }

      v38[0] = "'anec.input_view' op requires attribute 'offset'";
      v39 = 259;
      mlir::emitError(a2, v38, &Type);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
      if (Type)
      {
        mlir::InFlightDiagnostic::report(&Type);
      }

      if (v50 != 1)
      {
        return v5;
      }

      if (v49 != &v50)
      {
        free(v49);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v48;
        v17 = __p;
        if (v48 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v48 = v15;
        operator delete(v17);
      }

      v9 = v45;
      if (!v45)
      {
        goto LABEL_83;
      }

      v18 = v46;
      v11 = v45;
      if (v46 == v45)
      {
        goto LABEL_82;
      }

      do
      {
        v20 = *--v18;
        v19 = v20;
        *v18 = 0;
        if (v20)
        {
          MEMORY[0x259C63150](v19, 0x1000C8077774924);
        }
      }

      while (v18 != v9);
LABEL_81:
      v11 = v45;
      goto LABEL_82;
    }
  }

  v38[0] = "'anec.input_view' op requires attribute 'dimension'";
  v39 = 259;
  mlir::emitError(a2, v38, &Type);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
  if (Type)
  {
    mlir::InFlightDiagnostic::report(&Type);
  }

  if (v50 == 1)
  {
    if (v49 != &v50)
    {
      free(v49);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v48;
      v8 = __p;
      if (v48 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v48 = v6;
      operator delete(v8);
    }

    v9 = v45;
    if (v45)
    {
      v10 = v46;
      v11 = v45;
      if (v46 != v45)
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
        goto LABEL_81;
      }

LABEL_82:
      v46 = v9;
      operator delete(v11);
    }

LABEL_83:
    if (v43 != &v44)
    {
      free(v43);
    }
  }

  return v5;
}

uint64_t mlir::anec::detail::InputViewGenericAdaptorBase::getStep(mlir::anec::detail::InputViewGenericAdaptorBase *this)
{
  v2 = mlir::DictionaryAttr::begin(this);
  v3 = mlir::DictionaryAttr::end(this);
  v8 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v2 + 48), v3, *(*(*(this + 1) + 96) + 24));
  mlir::IntegerAttr::getValue(&v8, &v6);
  if (v7 > 0x40)
  {
    v4 = *v6;
    MEMORY[0x259C63150]();
  }

  else if (v7)
  {
    return (v6 << -v7) >> -v7;
  }

  else
  {
    return 0;
  }

  return v4;
}

BOOL mlir::anec::InputView::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::InputView::getZinIrUnitInfo();
  }

  v12 = "network should not be nullptr";
  v13 = 259;
  mlir::OpState::emitError(a1, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
      {
        do
        {
          v10 = *--v7;
          v9 = v10;
          *v7 = 0;
          if (v10)
          {
            MEMORY[0x259C63150](v9, 0x1000C8077774924);
          }
        }

        while (v7 != v6);
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

BOOL mlir::anec::InputView::verifyWithANEC(mlir::Operation **a1, mlir::ShapedType *a2, unint64_t a3)
{
  v50 = *MEMORY[0x277D85DE8];
  ANECInputViewLayerDescInitialize();
  Offset = mlir::anec::InputView::getOffset(a1);
  Size = mlir::anec::InputView::getSize(a1);
  Step = mlir::anec::InputView::getStep(a1);
  Height = mlir::anec::Resize::getHeight(a1);
  mlir::ShapedType::getShape(a2);
  v29 = Offset;
  v30 = Size;
  v31 = Step;
  v39[0] = v40;
  v39[1] = 0x100000000;
  *buffer = 1;
  v33[0] = 0;
  ANECUnitValidatorCreate();
  v27 = 0;
  v28 = 0;
  if (ANECValidateInputViewLayer())
  {
    v11 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v33);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v34, "Invalid configuration", 21);
    std::stringbuf::str();
    v33[0] = *MEMORY[0x277D82818];
    v12 = *(MEMORY[0x277D82818] + 72);
    *(v33 + *(v33[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v34 = v12;
    v35 = MEMORY[0x277D82878] + 16;
    if (v37 < 0)
    {
      operator delete(v36[7].__locale_);
    }

    v35 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v36);
    std::iostream::~basic_iostream();
    MEMORY[0x259C630C0](&v38);
    v26 = 260;
    v25 = &v23;
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v49 == 1)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v14 = v46;
      if (v46)
      {
        v15 = v47;
        v16 = v46;
        if (v47 != v46)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = v46;
        }

        v47 = v14;
        operator delete(v16);
      }

      v17 = v44;
      if (v44)
      {
        v18 = v45;
        v19 = v44;
        if (v45 != v44)
        {
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
          v19 = v44;
        }

        v45 = v17;
        operator delete(v19);
      }

      if (v42 != &v43)
      {
        free(v42);
      }
    }

    if (v24 < 0)
    {
      operator delete(v23);
    }
  }

  else
  {
    v13 = 1;
  }

  ANECUnitValidatorDelete();
  if (v39[0] != v40)
  {
    free(v39[0]);
  }

  return v13;
}

uint64_t *mlir::anec::InputView::getOffset(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 8));
  mlir::IntegerAttr::getValue(&v9, &AttrDictionary);
  if (v8 <= 0x40)
  {
    return AttrDictionary;
  }

  v5 = *AttrDictionary;
  MEMORY[0x259C63150]();
  return v5;
}

uint64_t *mlir::anec::InputView::getSize(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 16));
  mlir::IntegerAttr::getValue(&v9, &AttrDictionary);
  if (v8 <= 0x40)
  {
    return AttrDictionary;
  }

  v5 = *AttrDictionary;
  MEMORY[0x259C63150]();
  return v5;
}

uint64_t mlir::anec::InputView::getStep(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 24));
  mlir::IntegerAttr::getValue(&v9, &AttrDictionary);
  if (v8 > 0x40)
  {
    v5 = *AttrDictionary;
    MEMORY[0x259C63150]();
  }

  else if (v8)
  {
    return (AttrDictionary << -v8) >> -v8;
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t mlir::anec::Transpose::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v52 = *MEMORY[0x277D85DE8];
  v45 = a6;
  LOBYTE(v46) = 0;
  v47 = 0;
  v48 = a7;
  v49 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v45);
    if (v47 == 1)
    {
      v47 = 0;
    }

    mlir::OperationName::OperationName(&v46, "anec.transpose", 14, Context);
    v47 = 1;
    a1 = v15;
  }

  v50 = a4;
  v51 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if ((mlir::anec::TransposeAdaptor::verify(&v45, v18) & 1) == 0)
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v38[0] = v20;
  v38[1] = v19;
  Shape = mlir::ShapedType::getShape(v38);
  v23 = v22;
  v24 = mlir::DictionaryAttr::begin(&v45);
  v25 = mlir::DictionaryAttr::end(&v45);
  v37 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v24, v25, **(v46 + 96));
  v42 = v44;
  v43 = 0x500000000;
  if (((8 * v23) >> 3) >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v27 = 0;
  if (v23)
  {
    memcpy(v42, Shape, 8 * v23);
    v27 = v43;
  }

  LODWORD(v43) = v27 + v23;
  v39 = v41;
  v40 = 0x500000000;
  mlir::getListOfPairs<long long>(&v37, &v39);
  v28 = v42;
  if (v40)
  {
    v29 = v39;
    v30 = v39 + 16 * v40;
    do
    {
      v31 = *v29;
      v32 = *(v29 + 1);
      v29 += 16;
      v28[v32] = *(Shape + v31);
    }

    while (v29 != v30);
  }

  v33 = v43;
  ElementType = mlir::ShapedType::getElementType(v38);
  v35 = mlir::MemRefType::get(v28, v33, ElementType, 0, 0, 0);
  v36 = *(a11 + 8);
  if (v36 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v36) = v35;
  ++*(a11 + 8);
  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  return 1;
}

uint64_t mlir::anec::TransposeAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v36 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v36); i != mlir::DictionaryAttr::end(&v36); i += 2)
  {
    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v34[0] = v14;
        v34[1] = v15;
        Type = mlir::ElementsAttr::getType(v34);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v37[0] = v17;
        v37[1] = Type;
        mlir::ShapedType::getShape(v37);
        if (v18 == 2)
        {
          v32 = v14;
          v19 = mlir::DenseElementsAttr::getType(&v32);
          v20 = v19;
          if (v19)
          {
            v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
          }

          v33[0] = v20;
          v33[1] = v19;
          if (*(mlir::ShapedType::getShape(v33) + 8) == 2)
          {
            v29 = v14;
            v30[0] = mlir::DenseElementsAttr::getType(&v29);
            v30[1] = v21;
            ElementType = mlir::ShapedType::getElementType(v30);
            if (mlir::Type::isUnsignedInteger(&ElementType, 64))
            {
              return 1;
            }
          }
        }
      }

      v34[0] = "'anec.transpose' op attribute 'transpose_list' failed to satisfy constraint: list of 64-bits unsigned integer pairs";
      v35 = 259;
      mlir::emitError(a2, v34, v37);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
      if (v37[0])
      {
        mlir::InFlightDiagnostic::report(v37);
      }

      if (v45 == 1)
      {
        if (v44 != &v45)
        {
          free(v44);
        }

        v22 = __p;
        if (__p)
        {
          v23 = v43;
          v24 = __p;
          if (v43 != __p)
          {
            do
            {
              v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
            }

            while (v23 != v22);
            v24 = __p;
          }

          v43 = v22;
          operator delete(v24);
        }

        v9 = v40;
        if (v40)
        {
          v25 = v41;
          v11 = v40;
          if (v41 != v40)
          {
            do
            {
              v27 = *--v25;
              v26 = v27;
              *v25 = 0;
              if (v27)
              {
                MEMORY[0x259C63150](v26, 0x1000C8077774924);
              }
            }

            while (v25 != v9);
            goto LABEL_47;
          }

          goto LABEL_48;
        }

        goto LABEL_49;
      }

      return v5;
    }
  }

  v34[0] = "'anec.transpose' op requires attribute 'transpose_list'";
  v35 = 259;
  mlir::emitError(a2, v34, v37);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
  if (v37[0])
  {
    mlir::InFlightDiagnostic::report(v37);
  }

  if (v45 == 1)
  {
    if (v44 != &v45)
    {
      free(v44);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v43;
      v8 = __p;
      if (v43 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v43 = v6;
      operator delete(v8);
    }

    v9 = v40;
    if (v40)
    {
      v10 = v41;
      v11 = v40;
      if (v41 != v40)
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
LABEL_47:
        v11 = v40;
      }

LABEL_48:
      v41 = v9;
      operator delete(v11);
    }

LABEL_49:
    if (v38 != &v39)
    {
      free(v38);
    }
  }

  return v5;
}

void *mlir::getListOfPairs<long long>(uint64_t *a1, uint64_t a2)
{
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v21, *a1, 0);
  v4 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  result = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v19, v4, NumElements);
  for (i = v22; v22 != v20; i = v22)
  {
    v19 = v21;
    v20 = v22;
    *&v22 = i + 1;
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v19, &v17);
    if (v18 > 0x40)
    {
      v10 = *v17;
    }

    else if (v18)
    {
      v10 = (v17 << -v18) >> -v18;
    }

    else
    {
      v10 = 0;
    }

    v14[0] = v21;
    v14[1] = v22;
    *&v22 = v22 + 1;
    mlir::DenseElementsAttr::IntElementIterator::operator*(v14, &v15);
    if (v16 > 0x40)
    {
      v11 = *v15;
    }

    else if (v16)
    {
      v11 = (v15 << -v16) >> -v16;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(a2 + 8);
    if (v12 >= *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v13 = (*a2 + 16 * v12);
    *v13 = v10;
    v13[1] = v11;
    ++*(a2 + 8);
    if (v16 >= 0x41 && v15)
    {
      MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }

    if (v18 >= 0x41)
    {
      if (v17)
      {
        MEMORY[0x259C63150](v17, 0x1000C8000313F17);
      }
    }

    v8 = *a1;
    v9 = mlir::DenseElementsAttr::getNumElements(a1);
    result = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v19, v8, v9);
  }

  return result;
}

BOOL mlir::anec::Transpose::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::Transpose::getZinIrUnitInfo();
  }

  v12 = "network should not be nullptr";
  v13 = 259;
  mlir::OpState::emitError(a1, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
      {
        do
        {
          v10 = *--v7;
          v9 = v10;
          *v7 = 0;
          if (v10)
          {
            MEMORY[0x259C63150](v9, 0x1000C8077774924);
          }
        }

        while (v7 != v6);
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

BOOL mlir::anec::Transpose::verifyWithANEC(mlir::Operation **a1, mlir::ShapedType *a2, unint64_t a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v46 = v48;
  v47 = 0x500000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v7 = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v7 + 16 * v8), **(*(*a1 + 6) + 96));
  mlir::getListOfPairs<long long>(buffer, &v46);
  ANECTransposeLayerDescInitialize();
  v9 = v47;
  v10 = v46;
  if (!v47)
  {
LABEL_5:
    v12 = 1;
    if (v46 == v48)
    {
      return v12;
    }

LABEL_6:
    free(v10);
    return v12;
  }

  v11 = v46;
  while (*v11 == v11[1])
  {
    v11 += 2;
    if (v11 == (v46 + 16 * v47))
    {
      goto LABEL_5;
    }
  }

  v14 = 0;
  v15 = 16 * v47;
  do
  {
    v16 = *(v46 + v14);
    mlir::ShapedType::getShape(a2);
    v19 = *(v46 + v14 + 8);
    mlir::ShapedType::getShape(a2);
    v22 = &v37[v14 / 8];
    v22[1] = ANECDimension;
    v22[2] = v21;
    v14 += 16;
  }

  while (v15 != v14);
  v37[0] = v9;
  v44[0] = v45;
  v44[1] = 0x100000000;
  v12 = 1;
  *buffer = 1;
  v38[0] = 0;
  ANECUnitValidatorCreate();
  v35 = 0;
  v36 = 0;
  if (ANECValidateTransposeLayer())
  {
    v23 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v38);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v39, "Invalid configuration", 21);
    std::stringbuf::str();
    v38[0] = *MEMORY[0x277D82818];
    v24 = *(MEMORY[0x277D82818] + 72);
    *(v38 + *(v38[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v39 = v24;
    v40 = MEMORY[0x277D82878] + 16;
    if (v42 < 0)
    {
      operator delete(v41[7].__locale_);
    }

    v40 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v41);
    std::iostream::~basic_iostream();
    MEMORY[0x259C630C0](&v43);
    LOWORD(v41[0].__locale_) = 260;
    v38[0] = &v33;
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v57 == 1)
    {
      if (v56 != &v57)
      {
        free(v56);
      }

      v25 = v54;
      if (v54)
      {
        v26 = v55;
        v27 = v54;
        if (v55 != v54)
        {
          do
          {
            v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
          }

          while (v26 != v25);
          v27 = v54;
        }

        v55 = v25;
        operator delete(v27);
      }

      v28 = v52;
      if (v52)
      {
        v29 = v53;
        v30 = v52;
        if (v53 != v52)
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
          v30 = v52;
        }

        v53 = v28;
        operator delete(v30);
      }

      if (v50 != &v51)
      {
        free(v50);
      }
    }

    if (v34 < 0)
    {
      operator delete(v33);
    }
  }

  ANECUnitValidatorDelete();
  if (v44[0] != v45)
  {
    free(v44[0]);
  }

  v10 = v46;
  if (v46 != v48)
  {
    goto LABEL_6;
  }

  return v12;
}

unint64_t mlir::anec::Transpose::fold(mlir::Operation **a1, uint64_t a2)
{
  v40[10] = *MEMORY[0x277D85DE8];
  v38 = v40;
  v39 = 0x500000000;
  v34[0] = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(v34);
  v34[0] = mlir::Operation::getAttrDictionary(*a1);
  v5 = mlir::DictionaryAttr::getValue(v34);
  v34[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6), **(*(*a1 + 6) + 96));
  mlir::getListOfPairs<unsigned long long>(v34, &v38);
  if (!v39)
  {
LABEL_5:
    v8 = *(*(*a1 + 9) + 24) | 4;
    goto LABEL_6;
  }

  v7 = v38;
  while (*v7 == *(v7 + 1))
  {
    v7 += 16;
    if (v7 == &v38[16 * v39])
    {
      goto LABEL_5;
    }
  }

  v10 = *(a2 + 40);
  if (*(*a1 + 9))
  {
    v11 = *a1 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v37[0] = v12;
  v37[1] = v13;
  v14 = *v10;
  if (!*v10)
  {
    v35 = 0;
    v36 = 0;
LABEL_26:
    v8 = 0;
    goto LABEL_6;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8))
  {
    v35 = 0;
    v36 = 0;
    goto LABEL_26;
  }

  v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
  v35 = v14;
  v36 = v15;
  if (!v14)
  {
    goto LABEL_26;
  }

  Shape = mlir::ShapedType::getShape(v37);
  v18 = v17;
  v34[0] = mlir::ElementsAttr::getShapedType(&v35);
  v34[1] = v19;
  ElementType = mlir::ShapedType::getElementType(v34);
  v21 = mlir::RankedTensorType::get(Shape, v18, ElementType, 0);
  if (mlir::ElementsAttr::isSplat(&v35))
  {
    v22 = v35;
    v23 = v36;
    if (v21)
    {
      v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
    }

    else
    {
      v24 = 0;
    }

    v8 = mlir::reshapeElementsAttr(v22, v23, v21, v24) & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    mlir::mps::CPUNDArray::CPUNDArray(v34);
    v33[0] = 0;
    v33[1] = 0;
    if (v21)
    {
      v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
    }

    else
    {
      v25 = 0;
    }

    mlir::mps::CPUNDArray::tryMakeAliasedArray(v21, v25, v33, v32);
    mlir::ShapedType::getShape(v37);
    if (v26)
    {
      if (!(v26 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v39)
    {
      v27 = v38;
      v28 = &v38[16 * v39];
      do
      {
        v29 = *v27;
        v30 = *(v27 + 1);
        v27 += 16;
        *(8 * v30) = v29;
      }

      while (v27 != v28);
    }

    mlir::mps::transpose(v34, v32, 0, 0);
    ElementsAttr = v33[0];
    if (!v33[0])
    {
      ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(v32, 0, 0);
    }

    v8 = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
    mlir::mps::CPUNDArray::~CPUNDArray(v32);
    mlir::mps::CPUNDArray::~CPUNDArray(v34);
  }

LABEL_6:
  if (v38 != v40)
  {
    free(v38);
  }

  return v8;
}

void *mlir::getListOfPairs<unsigned long long>(uint64_t *a1, uint64_t a2)
{
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v23, *a1, 0);
  v4 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  result = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v21, v4, NumElements);
  for (i = v24; v24 != v22; i = v24)
  {
    v21 = v23;
    v22 = v24;
    *&v24 = i + 1;
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v21, &v19);
    if (v20 >= 0x41)
    {
      v10 = v19;
    }

    else
    {
      v10 = &v19;
    }

    v11 = *v10;
    v16[0] = v23;
    v16[1] = v24;
    *&v24 = v24 + 1;
    mlir::DenseElementsAttr::IntElementIterator::operator*(v16, &v17);
    if (v18 >= 0x41)
    {
      v12 = v17;
    }

    else
    {
      v12 = &v17;
    }

    v13 = *v12;
    v14 = *(a2 + 8);
    if (v14 >= *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v15 = (*a2 + 16 * v14);
    *v15 = v11;
    v15[1] = v13;
    ++*(a2 + 8);
    if (v18 >= 0x41 && v17)
    {
      MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }

    if (v20 >= 0x41)
    {
      if (v19)
      {
        MEMORY[0x259C63150](v19, 0x1000C8000313F17);
      }
    }

    v8 = *a1;
    v9 = mlir::DenseElementsAttr::getNumElements(a1);
    result = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v21, v8, v9);
  }

  return result;
}

uint64_t mlir::anec::Transpose::canonicalize(uint64_t *a1, uint64_t a2)
{
  v92[10] = *MEMORY[0x277D85DE8];
  v82 = a1;
  v90 = v92;
  v91 = 0x500000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v5 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6), **(a1[6] + 96));
  mlir::getListOfPairs<unsigned long long>(&AttrDictionary, &v90);
  v7 = (*(*(a1[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  AttrDictionary = v7;
  v88 = v8;
  Shape = mlir::ShapedType::getShape(&AttrDictionary);
  if (v91)
  {
    v11 = (v91 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v11 > 3)
    {
      v14 = v11 + 1;
      v15 = v14 & 3;
      if ((v14 & 3) == 0)
      {
        v15 = 4;
      }

      v16 = v14 - v15;
      v13 = &v90[16 * v16];
      v17 = vdupq_n_s64(v10);
      v18 = (v90 + 32);
      v19 = 0uLL;
      v20 = v17;
      v21 = 0uLL;
      do
      {
        v22 = v18 - 4;
        v23 = vld2q_f64(v22);
        v24 = vld2q_f64(v18);
        v17 = vbslq_s8(vcgtq_u64(v17, v23), v23, v17);
        v20 = vbslq_s8(vcgtq_u64(v20, v24), v24, v20);
        v19 = vbslq_s8(vcgtq_u64(v19, v23), v19, v23);
        v21 = vbslq_s8(vcgtq_u64(v21, v24), v21, v24);
        v18 += 8;
        v16 -= 4;
      }

      while (v16);
      v25 = vbslq_s8(vcgtq_u64(v20, v17), v17, v20);
      v26 = vextq_s8(v25, v25, 8uLL).u64[0];
      v10 = vbsl_s8(vcgtd_u64(v26, v25.u64[0]), *v25.i8, v26);
      v27 = vbslq_s8(vcgtq_u64(v19, v21), v19, v21);
      v25.i64[0] = vextq_s8(v27, v27, 8uLL).u64[0];
      v12 = vbsl_s8(vcgtd_u64(v27.u64[0], v25.u64[0]), *v27.i8, *v25.i8);
    }

    else
    {
      v12 = 0;
      v13 = v90;
    }

    do
    {
      v29 = *v13;
      v13 += 16;
      v28 = v29;
      if (v29 < v10)
      {
        v10 = v28;
      }

      if (*&v12 <= v28)
      {
        v12 = v28;
      }
    }

    while (v13 != &v90[16 * v91]);
  }

  else
  {
    v12 = 0;
  }

  v30 = (Shape + 8 * v10);
  v31 = Shape + 8 * *&v12;
  if (v30 == (v31 + 8))
  {
    goto LABEL_32;
  }

  v32 = (*&v12 - v10) & 0x1FFFFFFFFFFFFFFFLL;
  if (v32 >= 3)
  {
    v35 = v32 + 1;
    v36 = (v32 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v34 = v30 + 8 * v36;
    v37 = v30 + 1;
    v38 = 0uLL;
    v39 = vdupq_n_s64(1uLL);
    v40 = v36;
    v41 = 0uLL;
    do
    {
      v38 = vsubq_s64(v38, vmvnq_s8(vceqq_s64(v37[-1], v39)));
      v41 = vsubq_s64(v41, vmvnq_s8(vceqq_s64(*v37, v39)));
      v37 += 2;
      v40 -= 4;
    }

    while (v40);
    v33 = vaddvq_s64(vaddq_s64(v41, v38));
    if (v35 == v36)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v33 = 0;
    v34 = Shape + 8 * v10;
  }

  v42 = v34 - 8;
  do
  {
    v43 = *(v42 + 8);
    v42 += 8;
    if (v43 != 1)
    {
      ++v33;
    }
  }

  while (v42 != v31);
LABEL_28:
  if (v33 <= 1)
  {
LABEL_32:
    v85[0] = (*(a1 - 1) & 0xFFFFFFFFFFFFFFF8);
    v79 = *(a1[9] + 24);
    v46 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType,mlir::detail::TypedValue<mlir::MemRefType>>((a2 + 8), a1[3], v85, &v79);
    (*(*a2 + 8))(a2, a1, v46);
    v45 = 1;
    goto LABEL_33;
  }

  AttrDictionary = *(a1[9] + 24);
  DefiningOp = mlir::Value::getDefiningOp(&AttrDictionary);
  if (DefiningOp && *(*(DefiningOp + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id)
  {
    AttrDictionary = &v89;
    v88 = 0x500000000;
    v48 = DefiningOp;
    v85[0] = mlir::Operation::getAttrDictionary(DefiningOp);
    v49 = mlir::DictionaryAttr::getValue(v85);
    v85[0] = mlir::Operation::getAttrDictionary(v48);
    v50 = mlir::DictionaryAttr::getValue(v85);
    v52 = v48;
    v85[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v49, (v50 + 16 * v51), **(*(v48 + 6) + 96));
    mlir::getListOfPairs<unsigned long long>(v85, &AttrDictionary);
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v77[0] = 0;
    v77[1] = 0;
    v78 = 0;
    if (v88)
    {
      v53 = AttrDictionary;
      v54 = 16 * v88;
      do
      {
        v55 = *v53++;
        *v85 = v55;
        *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>,unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>::operator[](&v79, v85) = *(&v55 + 1);
        v56 = v85[0];
        *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>,unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>::operator[](v77, &v85[1]) = v56;
        v54 -= 16;
      }

      while (v54);
    }

    if (v91)
    {
      v57 = v90;
      v58 = &v90[16 * v91];
      do
      {
        *v85 = *v57;
        __src = v85[0];
        if (v78)
        {
          v60 = (v78 - 1) & (((0xBF58476D1CE4E5B9 * v85[0]) >> 31) ^ (484763065 * LODWORD(v85[0])));
          v61 = *(v77[0] + 2 * v60);
          if (v85[0] == v61)
          {
LABEL_44:
            if (v60 != v78)
            {
              __src = *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>,unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>::operator[](v77, v85);
            }
          }

          else
          {
            v62 = 1;
            while (v61 != -1)
            {
              v63 = v60 + v62++;
              v60 = v63 & (v78 - 1);
              v61 = *(v77[0] + 2 * v60);
              if (v85[0] == v61)
              {
                goto LABEL_44;
              }
            }
          }
        }

        v59 = v85[1];
        *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>,unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>::operator[](&v79, &__src) = v59;
        v57 += 16;
      }

      while (v57 != v58);
    }

    v85[0] = v86;
    v85[1] = 0x500000000;
    if (!v80)
    {
      goto LABEL_65;
    }

    if (v81)
    {
      v64 = 16 * v81;
      v65 = v79;
      while (*v65 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v65 = (v65 + 16);
        v64 -= 16;
        if (!v64)
        {
          goto LABEL_65;
        }
      }
    }

    else
    {
      v65 = v79;
    }

    v66 = (v79 + 16 * v81);
    if (v65 == v66)
    {
LABEL_65:
      v68 = 0;
    }

    else
    {
      do
      {
        v67 = *(v65 + 1);
        if (*v65 != v67)
        {
          __src = *v65;
          v84 = v67;
          llvm::SmallVectorImpl<long long>::insert<long long const*,void>(v85, v85[0] + 8 * LODWORD(v85[1]), &__src, v85);
        }

        do
        {
          v65 = (v65 + 16);
        }

        while (v65 != v66 && *v65 >= 0xFFFFFFFFFFFFFFFELL);
      }

      while (v65 != v66);
      v68 = (LODWORD(v85[1]) >> 1);
    }

    __src = v68;
    v84 = 2;
    Context = mlir::Attribute::getContext((a1 + 3));
    v70 = mlir::IntegerType::get(Context, 64, 2u);
    v71 = mlir::RankedTensorType::get(&__src, 2, v70, 0);
    if (v71)
    {
      v72 = v71;
      mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v71 + 8);
      v71 = v72;
    }

    RawIntOrFloat = mlir::DenseElementsAttr::getRawIntOrFloat(v71);
    v73 = a1[3];
    __src = *(*(v52 + 9) + 24);
    v74 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value,mlir::DenseIntElementsAttr &>((a2 + 8), v73, &__src, &RawIntOrFloat);
    ParentFamily = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceTrait<mlir::anec::Invert>::getParentFamily(&v82);
    {
      (*(*a2 + 8))(a2, v82, v74);
    }

    if (v85[0] != v86)
    {
      free(v85[0]);
    }

    llvm::deallocate_buffer(v77[0], (16 * v78));
  }

  v45 = 0;
LABEL_33:
  if (v90 != v92)
  {
    free(v90);
  }

  return v45;
}

void *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>,unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>::operator[](uint64_t a1, void *a2)
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

    v7 = 0;
    v8 = 1;
    while (v6 != -1)
    {
      if (v7)
      {
        v9 = 0;
      }

      else
      {
        v9 = v6 == -2;
      }

      if (v9)
      {
        v7 = v5;
      }

      v10 = v4 + v8++;
      v4 = v10 & v3;
      v5 = (*a1 + 16 * (v10 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v7)
    {
      v5 = v7;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v11 = *(a1 + 8);
  if (4 * v11 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
LABEL_24:
    v14 = a1;
    llvm::DenseMap<unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>,unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>::LookupBucketFor<unsigned long long>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v11 = *(v14 + 8);
    v5 = v15;
    goto LABEL_15;
  }

  if (v2 + ~v11 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
    goto LABEL_24;
  }

LABEL_15:
  *(a1 + 8) = v11 + 1;
  if (*v5 != -1)
  {
    --*(a1 + 12);
  }

  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value,mlir::DenseIntElementsAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::Transpose::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

BOOL mlir::anec::Padding::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v63 = *MEMORY[0x277D85DE8];
  v56 = a6;
  LOBYTE(v57) = 0;
  v58 = 0;
  v59 = a7;
  v60 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v56);
    if (v58 == 1)
    {
      v58 = 0;
    }

    mlir::OperationName::OperationName(&v57, "anec.padding", 12, Context);
    v58 = 1;
    a1 = v15;
  }

  v61 = a4;
  v62 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if ((mlir::anec::PaddingAdaptor::verify(&v56, v18) & 1) == 0)
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v47[0] = v20;
  v47[1] = v19;
  Shape = mlir::ShapedType::getShape(v47);
  v22 = mlir::ShapedType::getShape(v47);
  v24 = (v22 + 8 * v23);
  v53 = v55;
  v54 = 0x500000000;
  if (((v24 - Shape) >> 3) >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v26 = 0;
  if (v24 != Shape)
  {
    memcpy(v53, Shape, v24 - Shape);
    v26 = v54;
  }

  LODWORD(v54) = v26 + ((v24 - Shape) >> 3);
  v50 = v52;
  v51 = 0x500000000;
  v48[0] = v49;
  v48[1] = 0x500000000;
  v27 = mlir::DictionaryAttr::begin(&v56);
  v28 = mlir::DictionaryAttr::end(&v56);
  v29 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v27 + 16), (v28 - 16), *(*(v57 + 96) + 8));
  mlir::getValues<long long>(v29, &v50);
  v30 = mlir::DictionaryAttr::begin(&v56);
  v31 = mlir::DictionaryAttr::end(&v56);
  v32 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v30 + 32), v31, *(*(v57 + 96) + 16));
  mlir::getValues<long long>(v32, v48);
  if (v51)
  {
    v33 = 0;
    v34 = 0;
    v35 = v50;
    v36 = 16 * v51;
    do
    {
      if (v35[v34] != 8)
      {
        v37 = v51;
        mlir::ShapedType::getShape(v47);
        ReferenceFormatIndex = mlir::anec::getReferenceFormatIndex(v34, v37, v38);
        if ((v40 & 1) == 0)
        {
          v25 = mlir::emitOptionalError<char const(&)[24]>(a2, a3, "'anec.padding' op attributes are inconsistent with input rank");
          goto LABEL_25;
        }

        *(v53 + ReferenceFormatIndex) += *(v48[0] + v33 + 8) + *(v48[0] + v33);
      }

      v34 = (v34 + 1);
      v33 += 16;
    }

    while (v36 != v33);
  }

  v41 = v53;
  v42 = v54;
  ElementType = mlir::ShapedType::getElementType(v47);
  v44 = mlir::MemRefType::get(v41, v42, ElementType, 0, 0, 0);
  v45 = *(a11 + 8);
  if (v45 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v45) = v44;
  ++*(a11 + 8);
  v25 = 1;
LABEL_25:
  if (v48[0] != v49)
  {
    free(v48[0]);
  }

  if (v50 != v52)
  {
    free(v50);
  }

  if (v53 != v55)
  {
    free(v53);
  }

  return v25;
}

uint64_t mlir::anec::PaddingAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v73 = *MEMORY[0x277D85DE8];
  v58 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v58); ; i = (i + 16))
  {
    if (i == mlir::DictionaryAttr::end(&v58))
    {
      *&v55 = "'anec.padding' op requires attribute 'background_value'";
      v57 = 259;
      mlir::emitError(a2, &v55, &v62);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v62);
      if (v62)
      {
        mlir::InFlightDiagnostic::report(&v62);
      }

      if (v70 != 1)
      {
        return v5;
      }

      if (v69 != &v70)
      {
        free(v69);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v68;
        v8 = __p;
        if (v68 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v68 = v6;
        operator delete(v8);
      }

      v9 = v65;
      if (!v65)
      {
        goto LABEL_84;
      }

      v10 = v66;
      v11 = v65;
      if (v66 == v65)
      {
        goto LABEL_83;
      }

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
LABEL_82:
      v11 = v65;
      goto LABEL_83;
    }

    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      break;
    }
  }

  v14 = *(i + 1);
  while (1)
  {
    if (i == mlir::DictionaryAttr::end(&v58))
    {
      *&v55 = "'anec.padding' op requires attribute 'padding_modes'";
      v57 = 259;
      mlir::emitError(a2, &v55, &v62);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v62);
      if (v62)
      {
        mlir::InFlightDiagnostic::report(&v62);
      }

      if (v70 != 1)
      {
        return v5;
      }

      if (v69 != &v70)
      {
        free(v69);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v68;
        v17 = __p;
        if (v68 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v68 = v15;
        operator delete(v17);
      }

      v9 = v65;
      if (!v65)
      {
        goto LABEL_84;
      }

      v18 = v66;
      v11 = v65;
      if (v66 == v65)
      {
        goto LABEL_83;
      }

      do
      {
        v20 = *--v18;
        v19 = v20;
        *v18 = 0;
        if (v20)
        {
          MEMORY[0x259C63150](v19, 0x1000C8077774924);
        }
      }

      while (v18 != v9);
      goto LABEL_82;
    }

    if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 8))
    {
      break;
    }

    i = (i + 16);
  }

  v21 = *(i + 1);
  while (1)
  {
    if (i == mlir::DictionaryAttr::end(&v58))
    {
      *&v55 = "'anec.padding' op requires attribute 'padding_sizes'";
      v57 = 259;
      mlir::emitError(a2, &v55, &v62);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v62);
      if (v62)
      {
        mlir::InFlightDiagnostic::report(&v62);
      }

      if (v70 != 1)
      {
        return v5;
      }

      if (v69 != &v70)
      {
        free(v69);
      }

      v22 = __p;
      if (__p)
      {
        v23 = v68;
        v24 = __p;
        if (v68 != __p)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v68 = v22;
        operator delete(v24);
      }

      v9 = v65;
      if (!v65)
      {
        goto LABEL_84;
      }

      v25 = v66;
      v11 = v65;
      if (v66 == v65)
      {
        goto LABEL_83;
      }

      do
      {
        v27 = *--v25;
        v26 = v27;
        *v25 = 0;
        if (v27)
        {
          MEMORY[0x259C63150](v26, 0x1000C8077774924);
        }
      }

      while (v25 != v9);
      goto LABEL_82;
    }

    if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 16))
    {
      break;
    }

    i = (i + 16);
  }

  v28 = *(i + 1);
  if (!v21)
  {
LABEL_88:
    if (!v28)
    {
      goto LABEL_123;
    }

    if (!mlir::DenseIntElementsAttr::classof(v28))
    {
      goto LABEL_103;
    }

    v43 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v28 + 8);
    *&v55 = v28;
    *(&v55 + 1) = v43;
    Type = mlir::ElementsAttr::getType(&v55);
    v45 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    *&v62 = v45;
    *(&v62 + 1) = Type;
    Shape = mlir::ShapedType::getShape(&v62);
    v71 = xmmword_25736B760;
    if (v47 == 2 && (*Shape == v71 ? (v48 = Shape[1] == *(&v71 + 1)) : (v48 = 0), v48 && (v53[0] = v28, v59 = mlir::DenseElementsAttr::getType(v53), v60 = v49, v54[0] = mlir::ShapedType::getElementType(&v59), mlir::Type::isUnsignedInteger(v54, 64))))
    {
LABEL_123:
      if (!v14)
      {
        return 1;
      }

      if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && (*&v55 = v14, *&v62 = mlir::FloatAttr::getType(&v55), mlir::Type::isF16(&v62)))
      {
        return 1;
      }

      else
      {
        *&v55 = "'anec.padding' op attribute 'background_value' failed to satisfy constraint: 16-bit float attribute";
        v57 = 259;
        mlir::emitError(a2, &v55, &v62);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v62);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v62);
      }
    }

    else
    {
LABEL_103:
      *&v55 = "'anec.padding' op attribute 'padding_sizes' failed to satisfy constraint: ui64 elements attribute of shape {5, 2}";
      v57 = 259;
      mlir::emitError(a2, &v55, &v62);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v62);
      if (v62)
      {
        mlir::InFlightDiagnostic::report(&v62);
      }

      if (v70 == 1)
      {
        mlir::Diagnostic::~Diagnostic((&v62 + 8));
      }
    }

    return v5;
  }

  v29 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v21 + 8);
  v53[0] = v21;
  v53[1] = v29;
  v30 = mlir::ElementsAttr::getType(v53);
  v31 = v30;
  if (v30)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v30 + 8);
  }

  v54[0] = v31;
  v54[1] = v30;
  v32 = mlir::ShapedType::getShape(v54);
  v61 = 5;
  if (v33 == 1 && *v32 == v61)
  {
    v52 = v21;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v55, v21, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v52);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v71, v21, NumElements);
    v62 = v55;
    v63 = v56;
    v42 = v72;
    if (v56 == v72)
    {
      goto LABEL_88;
    }

    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v62, &v59);
      v50 = v60;
      LODWORD(v60) = 0;
      if (v50 > 0x40)
      {
        v51 = *v59;
        if (!v59)
        {
          goto LABEL_111;
        }

        MEMORY[0x259C63150](v59, 0x1000C8000313F17);
        if (v60 >= 0x41 && v59)
        {
          MEMORY[0x259C63150](v59, 0x1000C8000313F17);
LABEL_111:
          if (v51 >= 9)
          {
            break;
          }

          goto LABEL_112;
        }

        if (v51 > 8)
        {
          break;
        }
      }

      else if (v50 && (v59 << -v50 >> -v50) >= 9)
      {
        break;
      }

LABEL_112:
      *&v63 = v63 + 1;
      if (v63 == v42)
      {
        goto LABEL_88;
      }
    }
  }

  *&v55 = "'anec.padding' op attribute 'padding_modes' failed to satisfy constraint: PaddingMode elements attribute of shape {5}";
  v57 = 259;
  mlir::emitError(a2, &v55, &v62);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v62);
  if (v62)
  {
    mlir::InFlightDiagnostic::report(&v62);
  }

  if (v70 == 1)
  {
    if (v69 != &v70)
    {
      free(v69);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v68;
      v36 = __p;
      if (v68 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v68 = v34;
      operator delete(v36);
    }

    v9 = v65;
    if (v65)
    {
      v37 = v66;
      v11 = v65;
      if (v66 != v65)
      {
        do
        {
          v39 = *--v37;
          v38 = v39;
          *v37 = 0;
          if (v39)
          {
            MEMORY[0x259C63150](v38, 0x1000C8077774924);
          }
        }

        while (v37 != v9);
        goto LABEL_82;
      }

LABEL_83:
      v66 = v9;
      operator delete(v11);
    }

LABEL_84:
    if (*(&v63 + 1) != &v64)
    {
      free(*(&v63 + 1));
    }
  }

  return v5;
}