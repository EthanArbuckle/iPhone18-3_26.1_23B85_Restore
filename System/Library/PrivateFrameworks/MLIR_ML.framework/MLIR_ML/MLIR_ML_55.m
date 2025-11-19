uint64_t mlir::anec::State::addOpToNetwork(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  Context = mlir::Attribute::getContext((v3 + 24));
  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v14 = 261;
  v13[0] = p_p;
  v13[1] = size;
  v8 = mlir::StringAttr::get(Context, v13, v5);
  v9 = mlir::Attribute::getContext((v3 + 24));
  v17 = 261;
  v16[0] = "name";
  v16[1] = 4;
  v11 = mlir::StringAttr::get(v9, v16, v10);
  mlir::Operation::setAttr(v3, v11, v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 1;
}

void mlir::anec::anonymous namespace::computeValueName(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v14 = a1;
  if (mlir::Value::getDefiningOp(&v14))
  {
    DefiningOp = mlir::Value::getDefiningOp(&v14);
    mlir::anec::computeOpKeyString(DefiningOp, a3);
    return;
  }

  v6 = v14;
  if ((~*(v14 + 8) & 7) != 0)
  {
    v6 = 0;
  }

  v20 = *(v6 + 24);
  v15[0] = "";
  v15[1] = 0;
  v15[2] = "__arg";
  v16 = 773;
  v17.__r_.__value_.__r.__words[0] = v15;
  v17.__r_.__value_.__r.__words[2] = &v20;
  v19 = 3330;
  llvm::Twine::str(&v17, __p);
  v7 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a2 + 584), __p);
  v8 = v7 != 0;
  if (v7)
  {
    v9 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a2 + 584), __p);
    if (!v9)
    {
      abort();
    }

    if (*(v9 + 63) < 0)
    {
      v10 = &v17;
      std::string::__init_copy_ctor_external(&v17, v9[5], v9[6]);
    }

    else
    {
      v17 = *(v9 + 5);
      v10 = &v17;
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
    v17.__r_.__value_.__s.__data_[0] = 0;
    v10 = __p;
  }

  v18 = v11;
  if (SHIBYTE(v10->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a3, v10->__r_.__value_.__l.__data_, v10->__r_.__value_.__l.__size_);
    if ((v18 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    goto LABEL_18;
  }

  *&a3->__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  a3->__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  if (v8)
  {
    goto LABEL_16;
  }

LABEL_18:
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

BOOL mlir::anec::RingBufferWriter::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    operator new();
  }

  v12 = "network should not be nullptr";
  v13 = 259;
  mlir::OpState::emitError(a1, &v12, &v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v14);
  if (v14)
  {
    mlir::InFlightDiagnostic::report(&v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = v19;
    if (v19)
    {
      v4 = v20;
      v5 = v19;
      if (v20 != v19)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = v19;
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

uint64_t mlir::anec::RingBufferReader::inferPromotedReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33[6] = *MEMORY[0x277D85DE8];
  v24 = a6;
  v11 = mlir::TypeRange::dereference_iterator(a9, 0);
  v12 = v11;
  if (v11)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  v23[0] = v12;
  v23[1] = v11;
  mlir::ShapedType::getShape(v23);
  v14 = v13;
  v15 = mlir::DictionaryAttr::get(&v24, "slice_size", 0xAuLL);
  if (v15)
  {
    v16 = v15;
    if (mlir::DenseIntElementsAttr::classof(v15))
    {
      v15 = v16;
    }

    else
    {
      v15 = 0;
    }
  }

  v31 = v33;
  v32 = 0x600000000;
  mlir::getValues<long long>(v15, &v31);
  v17 = v32;
  if (v14 > v32)
  {
    __src = v30;
    v29 = 6;
    if (v14 > 6)
    {
      v28 = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memset_pattern16(v30, &unk_257369660, 8 * v14);
    v28 = v14;
    v25[0] = &v26;
    v25[1] = 0xC00000000;
    mlir::anec::getANEDefaultLayout(v17, v25);
  }

  v18 = v31;
  ElementType = mlir::ShapedType::getElementType(v23);
  v20 = mlir::MemRefType::get(v18, v17, ElementType, 0, 0, 0);
  v21 = *(a11 + 8);
  if (v21 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v21) = v20;
  ++*(a11 + 8);
  if (v31 != v33)
  {
    free(v31);
  }

  return 1;
}

BOOL mlir::anec::RingBufferReader::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    operator new();
  }

  v12 = "network should not be nullptr";
  v13 = 259;
  mlir::OpState::emitError(a1, &v12, &v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v14);
  if (v14)
  {
    mlir::InFlightDiagnostic::report(&v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = v19;
    if (v19)
    {
      v4 = v20;
      v5 = v19;
      if (v20 != v19)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = v19;
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

uint64_t mlir::anec::getPromotedReturnTypeForTensorBuffer(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v34[6] = *MEMORY[0x277D85DE8];
  v29 = a3;
  v5 = mlir::TypeRange::dereference_iterator(a1, 0);
  v6 = v5;
  if (v5)
  {
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  v28[0] = v6;
  v28[1] = v5;
  v33[0] = v34;
  v33[1] = 0x600000000;
  v7 = mlir::DictionaryAttr::get(&v29, "interleave", 0xAuLL);
  if (v7)
  {
    v8 = v7;
    if (mlir::DenseIntElementsAttr::classof(v7))
    {
      v7 = v8;
    }

    else
    {
      v7 = 0;
    }
  }

  mlir::getValues<unsigned long>(v7, v33);
  v9 = *v33[0];
  Shape = mlir::ShapedType::getShape(v28);
  v30 = v32;
  v31 = 0x600000000;
  if (((8 * v10) >> 3) >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v12 = 0;
  v13 = 8 * v10;
  if (v10)
  {
    memcpy(v30, Shape, v13);
    v12 = v31;
  }

  LODWORD(v31) = v12 + (v13 >> 3);
  mlir::ShapedType::getShape(v28);
  IndexFromDim = mlir::anec::getIndexFromDim(4, v14);
  if ((v16 & 1) == 0 || (v17 = IndexFromDim, mlir::ShapedType::getShape(v28), v19 = mlir::anec::getIndexFromDim(1, v18), (v20 & 1) == 0))
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v21 = v30;
  v22 = *(v30 + v17);
  if (a4)
  {
    *(v30 + v17) = v22 / v9;
    v23 = v21[v19] * v9;
  }

  else
  {
    *(v30 + v17) = v22 * v9;
    v23 = v21[v19] / v9;
  }

  v21[v19] = v23;
  v24 = v31;
  ElementType = mlir::ShapedType::getElementType(v28);
  v26 = mlir::MemRefType::get(v21, v24, ElementType, 0, 0, 0);
  if (v30 != v32)
  {
    free(v30);
  }

  if (v33[0] != v34)
  {
    free(v33[0]);
  }

  return v26;
}

uint64_t mlir::anec::ScaledDotProductAttention::inferPromotedReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28[4] = *MEMORY[0x277D85DE8];
  v11 = mlir::TypeRange::dereference_iterator(a9, 0);
  v12 = v11;
  if (v11)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  v24[0] = v12;
  v24[1] = v11;
  v13 = mlir::TypeRange::dereference_iterator(a9, 1);
  if (v13)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  v14 = *mlir::ShapedType::getShape(v24);
  v15 = *(mlir::ShapedType::getShape(v24) + 24);
  v16 = *(mlir::ShapedType::getShape(v24) + 8);
  v17 = *(mlir::ShapedType::getShape(v24) + 16);
  __src[3] = v15;
  v26 = v28;
  v27 = 0x400000000;
  __src[0] = v14;
  __src[1] = v16;
  __src[2] = v17;
  llvm::SmallVectorImpl<long long>::insert<long long const*,void>(&v26, v28, __src, &v26);
  v18 = v26;
  v19 = v27;
  ElementType = mlir::ShapedType::getElementType(v24);
  v21 = mlir::MemRefType::get(v18, v19, ElementType, 0, 0, 0);
  v22 = *(a11 + 8);
  if (v22 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v22) = v21;
  ++*(a11 + 8);
  if (v26 != v28)
  {
    free(v26);
  }

  return 1;
}

float mlir::anec::ScaledDotProductAttention::getExecutionCost(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 72);
  v4 = v3[7];
  v5 = v3[11];
  v6 = (*(v3[3] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v68[0] = v6;
  v68[1] = v7;
  v8 = (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v67[0] = v8;
  v67[1] = v9;
  v10 = (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v66[0] = v10;
  v66[1] = v11;
  Shape = mlir::ShapedType::getShape(v68);
  v13 = mlir::ShapedType::getShape(v67);
  v14 = mlir::ShapedType::getShape(v66);
  mlir::ShapedType::getShape(v68);
  v16 = v15;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v15);
  v18 = mlir::anec::getIndexFromDim(1, v16);
  v19 = mlir::anec::getIndexFromDim(4, v16);
  ElementType = mlir::ShapedType::getElementType(v68);
  v69 = mlir::ShapedType::getElementType(v68);
  v21 = mlir::Type::getIntOrFloatBitWidth(&v69) >> 3;
  v22 = mlir::ShapedType::getShape(v67);
  v24 = 2 * mlir::ShapedType::getNumElements(v22, v23) * v21;
  v25 = 0.0;
  if (v24 <= 0x200000)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v24;
  }

  v69 = ElementType;
  v27 = *(a2 + 40) * 1.0e12;
  isF16 = mlir::Type::isF16(&v69);
  v29 = v27 + v27;
  if (isF16)
  {
    v29 = v27;
  }

  v30 = 0.0 / v29;
  if (v30 >= (v26 / (*(a2 + 44) * 1000000000.0)))
  {
    v31 = v30;
  }

  else
  {
    v31 = v26 / (*(a2 + 44) * 1000000000.0);
  }

  v32 = *(v13 + 8 * v18) * *(Shape + 8 * v18) * *(Shape + 8 * IndexFromDim);
  v33 = 2 * v32;
  v34 = 2 * v32 * *(Shape + 8 * v19);
  v35 = mlir::ShapedType::getShape(v68);
  NumElements = mlir::ShapedType::getNumElements(v35, v36);
  v38 = mlir::ShapedType::getShape(v67);
  v40 = (NumElements + mlir::ShapedType::getNumElements(v38, v39) + v32) * v21;
  if (v40 <= 0x200000)
  {
    v41 = 0.0;
  }

  else
  {
    v41 = v40;
  }

  v69 = ElementType;
  v42 = *(a2 + 40) * 1.0e12;
  v43 = mlir::Type::isF16(&v69);
  v44 = v42 + v42;
  if (v43)
  {
    v44 = v42;
  }

  v45 = *(a2 + 40);
  v46 = (v34 / v44) / 0.65;
  if (v46 < (v41 / (*(a2 + 44) * 1000000000.0)))
  {
    v46 = v41 / (*(a2 + 44) * 1000000000.0);
  }

  v47 = v31 + v46;
  if (v33 * v21 <= 0x200000)
  {
    v48 = 0.0;
  }

  else
  {
    v48 = (v33 * v21);
  }

  v69 = ElementType;
  v49 = v45 * 1.0e12;
  v50 = mlir::Type::isF16(&v69);
  v51 = v49 + v49;
  if (v50)
  {
    v51 = v49;
  }

  v52 = (5 * v32) / v51;
  if (v52 < (v48 / (*(a2 + 44) * 1000000000.0)))
  {
    v52 = v48 / (*(a2 + 44) * 1000000000.0);
  }

  v53 = v47 + v52;
  v54 = *(v14 + 8 * v19) * v33;
  v55 = mlir::ShapedType::getShape(v68);
  v57 = mlir::ShapedType::getNumElements(v55, v56);
  v58 = mlir::ShapedType::getShape(v66);
  v60 = (v57 + mlir::ShapedType::getNumElements(v58, v59) + v32) * v21;
  if (v60 > 0x200000)
  {
    v25 = v60;
  }

  v69 = ElementType;
  v61 = *(a2 + 40) * 1.0e12;
  v62 = mlir::Type::isF16(&v69);
  v63 = v61 + v61;
  if (v62)
  {
    v63 = v61;
  }

  v64 = (v54 / v63) / 0.65;
  if (v64 < (v25 / (*(a2 + 44) * 1000000000.0)))
  {
    v64 = v25 / (*(a2 + 44) * 1000000000.0);
  }

  return v53 + v64;
}

BOOL mlir::anec::ScaledDotProductAttention::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    operator new();
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

uint64_t mlir::anec::A11Legacy::getSymName(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 24));
  return mlir::StringAttr::getValue(&AttrDictionary);
}

uint64_t mlir::anec::A11Legacy::getFunctionType(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 8));
  return mlir::TypeAttr::getValue(&AttrDictionary);
}

void mlir::anec::A11Legacy::build(mlir::StringAttr **this, uint64_t a2, void *a3, void *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__src, uint64_t a18)
{
  v36[4] = *MEMORY[0x277D85DE8];
  *(a2 + 192) = 0;
  v22 = *(a2 + 120);
  v23 = (a18 + v22);
  if (a18 + v22 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a18)
  {
    memcpy((*(a2 + 112) + 16 * v22), __src, 16 * a18);
    LODWORD(v22) = *(a2 + 120);
  }

  *(a2 + 120) = v22 + a18;
  v35 = 261;
  v34[0] = a3;
  v34[1] = a4;
  StringAttr = mlir::Builder::getStringAttr(this, v34, v23);
  Context = mlir::Attribute::getContext(a2);
  v33 = 261;
  v31 = "sym_name";
  v32 = 8;
  v27 = mlir::StringAttr::get(Context, &v31, v26);
  mlir::NamedAttribute::NamedAttribute(v36, v27, StringAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v36[0], v36[1]);
  v28 = mlir::FunctionType::get(*this, a9, a10, a13, a14);
  v29 = *(*(*(a2 + 8) + 96) + 8);
  v30 = mlir::TypeAttr::get(v28);
  mlir::NamedAttribute::NamedAttribute(&v31, v29, v30);
  mlir::NamedAttrList::push_back(a2 + 112, v31, v32);
  mlir::OperationState::addRegion(a2);
}

uint64_t mlir::OpBuilder::create<mlir::anec::RegionReturn,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x277D85DE8];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::RegionReturn,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::RegionReturn,llvm::SmallVector<mlir::Value,6u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::OperationState::addOperands(v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::RegionReturn,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v10;
}

BOOL mlir::anec::A11Legacy::verifyInvariantsImpl(mlir::Operation **this)
{
  v36 = *MEMORY[0x277D85DE8];
  v27[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v27);
  if (!v3)
  {
LABEL_7:
    v25[0] = "requires attribute 'function_type'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 != 1)
    {
      return v7;
    }

    if (v34 != &v35)
    {
      free(v34);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v33;
      v10 = __p;
      if (v33 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v33 = v8;
      operator delete(v10);
    }

    v11 = v30;
    if (v30)
    {
      v12 = v31;
      v13 = v30;
      if (v31 != v30)
      {
        do
        {
          v15 = *--v12;
          v14 = v15;
          *v12 = 0;
          if (v15)
          {
            MEMORY[0x259C63150](v14, 0x1000C8077774924);
          }
        }

        while (v12 != v11);
LABEL_45:
        v13 = v30;
      }

LABEL_46:
      v31 = v11;
      operator delete(v13);
    }

LABEL_47:
    if (v28 != &v29)
    {
      free(v28);
    }

    return v7;
  }

  v4 = Value;
  v5 = 0;
  v6 = 16 * v3;
  while (mlir::NamedAttribute::getName(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    if (mlir::NamedAttribute::getName(v4) == **(*(*this + 6) + 96))
    {
      v5 = v4[1];
    }

    v4 += 2;
    v6 -= 16;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
LABEL_29:
    v25[0] = "requires attribute 'sym_name'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 != 1)
    {
      return v7;
    }

    if (v34 != &v35)
    {
      free(v34);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v33;
      v20 = __p;
      if (v33 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v33 = v18;
      operator delete(v20);
    }

    v11 = v30;
    if (v30)
    {
      v21 = v31;
      v13 = v30;
      if (v31 != v30)
      {
        do
        {
          v23 = *--v21;
          v22 = v23;
          *v21 = 0;
          if (v23)
          {
            MEMORY[0x259C63150](v22, 0x1000C8077774924);
          }
        }

        while (v21 != v11);
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    goto LABEL_47;
  }

  v16 = 0;
  v17 = v4[1];
  while (mlir::NamedAttribute::getName(v4) != *(*(*(*this + 6) + 96) + 24))
  {
    if (mlir::NamedAttribute::getName(v4) == *(*(*(*this + 6) + 96) + 16))
    {
      v16 = v4[1];
    }

    v4 += 2;
    v6 -= 16;
    if (!v6)
    {
      goto LABEL_29;
    }
  }

  if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps1(*this, v4[1], "sym_name", 8) & 1) != 0 && (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps1(*this, v17, "function_type", 0xD) & 1) != 0 && (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps3(*this, v5, "arg_attrs", 9) & 1) != 0 && (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps3(*this, v16, "res_attrs", 9))
  {
    return mlir::mpsx::__mlir_ods_local_region_constraint_MPSXOps2(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "body", 4, 0) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps1(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!a2 || *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    return 1;
  }

  v24 = 257;
  mlir::Operation::emitOpError(v25, a1, &v22);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v25, "attribute '");
  if (*v6)
  {
    v24 = 261;
    *&v22 = a3;
    *(&v22 + 1) = a4;
    v7 = v6;
    mlir::Diagnostic::operator<<((v6 + 1), &v22);
    v6 = v7;
    if (*v7)
    {
      v8 = v7[3];
      LODWORD(v22) = 3;
      *(&v22 + 1) = "' failed to satisfy constraint: string attribute";
      v23 = 48;
      v9 = *(v7 + 8);
      if (v9 >= *(v7 + 9))
      {
        if (v8 > &v22 || v8 + 24 * v9 <= &v22)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10 = v8 + 24 * *(v7 + 8);
      v11 = v22;
      *(v10 + 16) = v23;
      *v10 = v11;
      ++*(v7 + 8);
    }
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v6);
  if (v25[0])
  {
    mlir::InFlightDiagnostic::report(v25);
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v31;
      v15 = __p;
      if (v31 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v31 = v13;
      operator delete(v15);
    }

    v16 = v28;
    if (v28)
    {
      v17 = v29;
      v18 = v28;
      if (v29 != v28)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            MEMORY[0x259C63150](v19, 0x1000C8077774924);
          }
        }

        while (v17 != v16);
        v18 = v28;
      }

      v29 = v16;
      operator delete(v18);
    }

    if (v26 != &v27)
    {
      free(v26);
    }
  }

  return v12;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps3(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v30[0] = a2;
    v21 = a1;
    Value = mlir::ArrayAttr::getValue(v30);
    v23 = mlir::ArrayAttr::getValue(v30);
    v25 = v23 + 8 * v24;
    if (v25 != Value)
    {
      a1 = v21;
      while (*Value && *(**Value + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        Value += 8;
        if (Value == v25)
        {
          return 1;
        }
      }

      goto LABEL_3;
    }

    return 1;
  }

LABEL_3:
  v29 = 257;
  mlir::Operation::emitOpError(v30, a1, &v27);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v30, "attribute '");
  if (*v6)
  {
    v29 = 261;
    *&v27 = a3;
    *(&v27 + 1) = a4;
    v7 = v6;
    mlir::Diagnostic::operator<<((v6 + 1), &v27);
    v6 = v7;
    if (*v7)
    {
      v8 = v7[3];
      LODWORD(v27) = 3;
      *(&v27 + 1) = "' failed to satisfy constraint: Array of dictionary attributes";
      v28 = 62;
      v9 = *(v7 + 8);
      if (v9 >= *(v7 + 9))
      {
        if (v8 > &v27 || v8 + 24 * v9 <= &v27)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10 = v8 + 24 * *(v7 + 8);
      v11 = v27;
      *(v10 + 16) = v28;
      *v10 = v11;
      ++*(v7 + 8);
    }
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v6);
  if (v30[0])
  {
    mlir::InFlightDiagnostic::report(v30);
  }

  if (v38 == 1)
  {
    if (v37 != &v38)
    {
      free(v37);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v36;
      v15 = __p;
      if (v36 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v36 = v13;
      operator delete(v15);
    }

    v16 = v33;
    if (v33)
    {
      v17 = v34;
      v18 = v33;
      if (v34 != v33)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            MEMORY[0x259C63150](v19, 0x1000C8077774924);
          }
        }

        while (v17 != v16);
        v18 = v33;
      }

      v34 = v16;
      operator delete(v18);
    }

    if (v31 != &v32)
    {
      free(v31);
    }
  }

  return v12;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ArgMinMax>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::ArgMinMax::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

BOOL mlir::anec::ArgMinMax::verifyInvariantsImpl(mlir::Operation **this)
{
  v94 = *MEMORY[0x277D85DE8];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (!v3)
  {
LABEL_5:
    *&v81 = "requires attribute 'axes'";
    v83 = 259;
    mlir::OpState::emitOpError(this, &v81, &AttrDictionary);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v93 != 1)
    {
      return v6;
    }

    if (v92 != &v93)
    {
      free(v92);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v91;
      v9 = __p;
      if (v91 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v91 = v7;
      operator delete(v9);
    }

    v10 = v88;
    if (!v88)
    {
      goto LABEL_83;
    }

    v11 = v89;
    v12 = v88;
    if (v89 == v88)
    {
      goto LABEL_82;
    }

    do
    {
      v14 = *--v11;
      v13 = v14;
      *v11 = 0;
      if (v14)
      {
        MEMORY[0x259C63150](v13, 0x1000C8077774924);
      }
    }

    while (v11 != v10);
    goto LABEL_81;
  }

  v4 = 16 * v3;
  v5 = (Value + 8);
  while (mlir::NamedAttribute::getName((v5 - 1)) != **(*(*this + 6) + 96))
  {
    v5 += 2;
    v4 -= 16;
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  if (!v4)
  {
LABEL_25:
    *&v81 = "requires attribute 'kernel_size'";
    v83 = 259;
    mlir::OpState::emitOpError(this, &v81, &AttrDictionary);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v93 != 1)
    {
      return v6;
    }

    if (v92 != &v93)
    {
      free(v92);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v91;
      v20 = __p;
      if (v91 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v91 = v18;
      operator delete(v20);
    }

    v10 = v88;
    if (!v88)
    {
      goto LABEL_83;
    }

    v21 = v89;
    v12 = v88;
    if (v89 == v88)
    {
      goto LABEL_82;
    }

    do
    {
      v23 = *--v21;
      v22 = v23;
      *v21 = 0;
      if (v23)
      {
        MEMORY[0x259C63150](v22, 0x1000C8077774924);
      }
    }

    while (v21 != v10);
    goto LABEL_81;
  }

  v15 = 0;
  v16 = *v5;
  while (1)
  {
    v17 = &v5[v15 / 8];
    if (mlir::NamedAttribute::getName(&v5[v15 / 8 - 1]) == *(*(*(*this + 6) + 96) + 8))
    {
      break;
    }

    v15 += 16;
    if (v4 == v15)
    {
      goto LABEL_25;
    }
  }

  v24 = v4 - v15;
  if (v4 == v15)
  {
LABEL_45:
    *&v81 = "requires attribute 'mode'";
    v83 = 259;
    mlir::OpState::emitOpError(this, &v81, &AttrDictionary);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v93 != 1)
    {
      return v6;
    }

    if (v92 != &v93)
    {
      free(v92);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v91;
      v28 = __p;
      if (v91 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v91 = v26;
      operator delete(v28);
    }

    v10 = v88;
    if (!v88)
    {
      goto LABEL_83;
    }

    v29 = v89;
    v12 = v88;
    if (v89 == v88)
    {
      goto LABEL_82;
    }

    do
    {
      v31 = *--v29;
      v30 = v31;
      *v29 = 0;
      if (v31)
      {
        MEMORY[0x259C63150](v30, 0x1000C8077774924);
      }
    }

    while (v29 != v10);
LABEL_81:
    v12 = v88;
    goto LABEL_82;
  }

  v25 = *v17;
  while (mlir::NamedAttribute::getName((v17 - 1)) != *(*(*(*this + 6) + 96) + 16))
  {
    v17 += 2;
    v24 -= 16;
    if (!v24)
    {
      goto LABEL_45;
    }
  }

  if (!v24)
  {
LABEL_65:
    *&v81 = "requires attribute 'pad_values'";
    v83 = 259;
    mlir::OpState::emitOpError(this, &v81, &AttrDictionary);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v93 != 1)
    {
      return v6;
    }

    if (v92 != &v93)
    {
      free(v92);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v91;
      v37 = __p;
      if (v91 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v91 = v35;
      operator delete(v37);
    }

    v10 = v88;
    if (v88)
    {
      v38 = v89;
      v12 = v88;
      if (v89 != v88)
      {
        do
        {
          v40 = *--v38;
          v39 = v40;
          *v38 = 0;
          if (v40)
          {
            MEMORY[0x259C63150](v39, 0x1000C8077774924);
          }
        }

        while (v38 != v10);
        goto LABEL_81;
      }

LABEL_82:
      v89 = v10;
      operator delete(v12);
    }

LABEL_83:
    if (v86 != v87)
    {
      free(v86);
    }

    return v6;
  }

  v32 = 0;
  v33 = *v17;
  while (1)
  {
    v34 = &v17[v32 / 8];
    if (mlir::NamedAttribute::getName(&v17[v32 / 8 - 1]) == *(*(*(*this + 6) + 96) + 24))
    {
      break;
    }

    v32 += 16;
    if (v24 == v32)
    {
      goto LABEL_65;
    }
  }

  v42 = v24 - v32;
  if (v42)
  {
    v45 = *v34;
    v44 = (v34 - 1);
    v43 = v45;
    while (1)
    {
      Name = mlir::NamedAttribute::getName(v44);
      v47 = *this;
      if (Name == *(*(*(*this + 6) + 96) + 32))
      {
        break;
      }

      v44 = (v44 + 16);
      v42 -= 16;
      if (!v42)
      {
        goto LABEL_90;
      }
    }

    v48 = *(v44 + 1);
    if (v16)
    {
      if (!mlir::DenseIntElementsAttr::classof(v16))
      {
        goto LABEL_105;
      }

      v49 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v16 + 8);
      *&v81 = v16;
      *(&v81 + 1) = v49;
      Type = mlir::ElementsAttr::getType(&v81);
      v51 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      AttrDictionary = v51;
      v85 = Type;
      mlir::ShapedType::getShape(&AttrDictionary);
      if (v52)
      {
        v53 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v16 + 8);
        v79[0] = v16;
        v79[1] = v53;
        v54 = mlir::ElementsAttr::getType(v79);
        v55 = v54;
        if (v54)
        {
          v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
        }

        v80[0] = v55;
        v80[1] = v54;
        mlir::ShapedType::getShape(v80);
        if (v56 != 1)
        {
          goto LABEL_105;
        }
      }

      if (!mlir::hasUniqueValues(v16) || (v78 = v16, !mlir::DenseElementsAttr::getNumElements(&v78)) || (v75 = v16, v76[0] = mlir::DenseElementsAttr::getType(&v75), v76[1] = v57, ElementType = mlir::ShapedType::getElementType(v76), !mlir::Type::isUnsignedInteger(&ElementType, 64)))
      {
LABEL_105:
        v83 = 257;
        mlir::Operation::emitOpError(&AttrDictionary, v47, &v81);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&AttrDictionary, "attribute '");
        if (*v58)
        {
          v83 = 261;
          *&v81 = "axes";
          *(&v81 + 1) = 4;
          v59 = v58;
          mlir::Diagnostic::operator<<((v58 + 1), &v81);
          v58 = v59;
          if (*v59)
          {
            v60 = v59[3];
            LODWORD(v81) = 3;
            *(&v81 + 1) = "' failed to satisfy constraint: ui64 unique not empty elements attribute of ranks 0/1";
            v82 = 85;
            v61 = *(v59 + 8);
            if (v61 >= *(v59 + 9))
            {
              if (v60 > &v81 || v60 + 24 * v61 <= &v81)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v62 = v60 + 24 * *(v59 + 8);
            v63 = v81;
            *(v62 + 16) = v82;
            *v62 = v63;
            ++*(v59 + 8);
          }
        }

        v64 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v58);
        if (AttrDictionary)
        {
          mlir::InFlightDiagnostic::report(&AttrDictionary);
        }

        if (v93 == 1)
        {
          if (v92 != &v93)
          {
            free(v92);
          }

          v65 = __p;
          if (__p)
          {
            v66 = v91;
            v67 = __p;
            if (v91 != __p)
            {
              do
              {
                v66 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v66 - 1);
              }

              while (v66 != v65);
              v67 = __p;
            }

            v91 = v65;
            operator delete(v67);
          }

          v68 = v88;
          if (v88)
          {
            v69 = v89;
            v70 = v88;
            if (v89 != v88)
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
              v70 = v88;
            }

            v89 = v68;
            operator delete(v70);
          }

          if (v86 != v87)
          {
            free(v86);
          }
        }

        if (!v64)
        {
          return 0;
        }
      }
    }

    if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps5(*this, v33, "mode", 4) & 1) != 0 && (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps6(*this, v25, "kernel_size", 11) & 1) != 0 && (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps6(*this, v48, "stride_values", 13) & 1) != 0 && (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps7(*this, v43, "pad_values", 10) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v73 = *this - 16;
      }

      else
      {
        v73 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v73, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_90:
    *&v81 = "requires attribute 'stride_values'";
    v83 = 259;
    mlir::OpState::emitOpError(this, &v81, &AttrDictionary);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v93 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v85);
    }
  }

  return v6;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps5(mlir::Operation *a1, void **a2, void **a3, void **a4)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 17) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v25[0] = a2;
    v6 = a1;
    v27[0] = mlir::IntegerAttr::getType(v25);
    isSignlessInteger = mlir::Type::isSignlessInteger(v27, 64);
    a1 = v6;
    if (isSignlessInteger)
    {
      v24 = a2;
      if (!mlir::IntegerAttr::getInt(&v24))
      {
        return 1;
      }

      v23 = a2;
      v9 = mlir::IntegerAttr::getInt(&v23) == 1;
      a1 = v6;
      if (v9)
      {
        return 1;
      }
    }
  }

  v26 = 257;
  mlir::Operation::emitOpError(v27, a1, v25);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v27, "attribute '");
  if (*v11)
  {
    v26 = 261;
    v25[0] = a3;
    v25[1] = a4;
    v12 = v11;
    mlir::Diagnostic::operator<<((v11 + 1), v25);
    v11 = v12;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v11, "' failed to satisfy constraint: valid ArgMinMaxMode");
  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
  if (v27[0])
  {
    mlir::InFlightDiagnostic::report(v27);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v33;
      v16 = __p;
      if (v33 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v33 = v14;
      operator delete(v16);
    }

    v17 = v30;
    if (v30)
    {
      v18 = v31;
      v19 = v30;
      if (v31 != v30)
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
        v19 = v30;
      }

      v31 = v17;
      operator delete(v19);
    }

    if (v28 != &v29)
    {
      free(v28);
    }
  }

  return v10;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps6(mlir::Operation *a1, void **a2, void **a3, uint64_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_9;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v30 = a2;
  v31 = v8;
  Type = mlir::ElementsAttr::getType(&v30);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33[0] = v10;
  v33[1] = Type;
  Shape = mlir::ShapedType::getShape(v33);
  v42 = 2;
  if (v12 == 1 && *Shape == v42)
  {
    v27 = a2;
    v28[0] = mlir::DenseElementsAttr::getType(&v27);
    v28[1] = v13;
    ElementType = mlir::ShapedType::getElementType(v28);
    if (mlir::Type::isUnsignedInteger(&ElementType, 64))
    {
      return 1;
    }
  }

LABEL_9:
  v32 = 257;
  mlir::Operation::emitOpError(v33, a1, &v30);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v33, "attribute '");
  if (*v15)
  {
    v32 = 261;
    v30 = a3;
    v31 = a4;
    v16 = v15;
    mlir::Diagnostic::operator<<((v15 + 1), &v30);
    v15 = v16;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v15, "' failed to satisfy constraint: ui64 elements attribute of shape {2}");
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v33[0])
  {
    mlir::InFlightDiagnostic::report(v33);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v39;
      v20 = __p;
      if (v39 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v39 = v18;
      operator delete(v20);
    }

    v21 = v36;
    if (v36)
    {
      v22 = v37;
      v23 = v36;
      if (v37 != v36)
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
        v23 = v36;
      }

      v37 = v21;
      operator delete(v23);
    }

    if (v34 != &v35)
    {
      free(v34);
    }
  }

  return v14;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps7(mlir::Operation *a1, void **a2, void **a3, uint64_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_9;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v30 = a2;
  v31 = v8;
  Type = mlir::ElementsAttr::getType(&v30);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33[0] = v10;
  v33[1] = Type;
  Shape = mlir::ShapedType::getShape(v33);
  v42 = 4;
  if (v12 == 1 && *Shape == v42)
  {
    v27 = a2;
    v28[0] = mlir::DenseElementsAttr::getType(&v27);
    v28[1] = v13;
    ElementType = mlir::ShapedType::getElementType(v28);
    if (mlir::Type::isUnsignedInteger(&ElementType, 64))
    {
      return 1;
    }
  }

LABEL_9:
  v32 = 257;
  mlir::Operation::emitOpError(v33, a1, &v30);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v33, "attribute '");
  if (*v15)
  {
    v32 = 261;
    v30 = a3;
    v31 = a4;
    v16 = v15;
    mlir::Diagnostic::operator<<((v15 + 1), &v30);
    v15 = v16;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v15, "' failed to satisfy constraint: ui64 elements attribute of shape {4}");
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v33[0])
  {
    mlir::InFlightDiagnostic::report(v33);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v39;
      v20 = __p;
      if (v39 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v39 = v18;
      operator delete(v20);
    }

    v21 = v36;
    if (v36)
    {
      v22 = v37;
      v23 = v36;
      if (v37 != v36)
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
        v23 = v36;
      }

      v37 = v21;
      operator delete(v23);
    }

    if (v34 != &v35)
    {
      free(v34);
    }
  }

  return v14;
}

uint64_t mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v56 = *MEMORY[0x277D85DE8];
  v10 = *a2;
  if (*(*a2 + 17) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v47[0] = a2;
    v47[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    ElementType = mlir::ShapedType::getElementType(v47);
    if (mlir::Type::isF16(&ElementType) || mlir::Type::isSignedInteger(&ElementType, 8) || mlir::Type::isUnsignedInteger(&ElementType, 8) || mlir::Type::isSignedInteger(&ElementType, 4))
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v40 = a2;
      v41 = v11;
      if (mlir::ShapedType::hasRank(&v40))
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        *&v45 = a2;
        *(&v45 + 1) = v12;
        mlir::ShapedType::getShape(&v45);
        if (v13 == 4)
        {
          return 1;
        }

        v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v43[0] = a2;
        v43[1] = v14;
        mlir::ShapedType::getShape(v43);
        if (v15 == 5)
        {
          return 1;
        }
      }
    }
  }

  v42 = 261;
  v40 = a3;
  v41 = a4;
  mlir::Operation::emitOpError(v47, a1, &v40);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v47, " #");
  if (*v17)
  {
    v18 = *(v17 + 24);
    LODWORD(v45) = 5;
    *(&v45 + 1) = a5;
    v19 = *(v17 + 32);
    if (v19 >= *(v17 + 36))
    {
      if (v18 > &v45 || v18 + 24 * v19 <= &v45)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v20 = v18 + 24 * *(v17 + 32);
    v21 = v45;
    *(v20 + 16) = v46;
    *v20 = v21;
    v22 = *(v17 + 32) + 1;
    *(v17 + 32) = v22;
    if (*v17)
    {
      LODWORD(v45) = 3;
      *(&v45 + 1) = " must be 4D/5D memref of 16-bit float or 8-bit signed integer or 8-bit unsigned integer or 4-bit signed integer values, but got ";
      v46 = 128;
      v23 = *(v17 + 24);
      if (v22 >= *(v17 + 36))
      {
        if (v23 > &v45 || v23 + 24 * v22 <= &v45)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v24 = v23 + 24 * *(v17 + 32);
      v25 = v45;
      *(v24 + 16) = v46;
      *v24 = v25;
      ++*(v17 + 32);
      if (*v17)
      {
        v26 = v17;
        mlir::DiagnosticArgument::DiagnosticArgument(&v45, a2);
        v17 = v26;
        v27 = *(v26 + 32);
        v28 = *(v26 + 24);
        if (v27 >= *(v26 + 36))
        {
          if (v28 > &v45 || v28 + 24 * v27 <= &v45)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v29 = v28 + 24 * *(v26 + 32);
        v30 = v45;
        *(v29 + 16) = v46;
        *v29 = v30;
        ++*(v26 + 32);
      }
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v47[0])
  {
    mlir::InFlightDiagnostic::report(v47);
  }

  if (v55 == 1)
  {
    if (v54 != &v55)
    {
      free(v54);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v53;
      v33 = __p;
      if (v53 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v53 = v31;
      operator delete(v33);
    }

    v34 = v50;
    if (v50)
    {
      v35 = v51;
      v36 = v50;
      if (v51 != v50)
      {
        do
        {
          v38 = *--v35;
          v37 = v38;
          *v35 = 0;
          if (v38)
          {
            MEMORY[0x259C63150](v37, 0x1000C8077774924);
          }
        }

        while (v35 != v34);
        v36 = v50;
      }

      v51 = v34;
      operator delete(v36);
    }

    if (v48 != &v49)
    {
      free(v48);
    }
  }

  return v16;
}

uint64_t mlir::anec::__mlir_ods_local_type_constraint_ANECOps2(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v56 = *MEMORY[0x277D85DE8];
  v10 = *a2;
  if (*(*a2 + 17) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v47[0] = a2;
    v47[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    ElementType = mlir::ShapedType::getElementType(v47);
    if (mlir::Type::isF16(&ElementType) || mlir::Type::isUnsignedInteger(&ElementType, 16) || mlir::Type::isSignedInteger(&ElementType, 16) || mlir::Type::isUnsignedInteger(&ElementType, 8) || mlir::Type::isSignedInteger(&ElementType, 8) || mlir::Type::isSignedInteger(&ElementType, 4))
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v40 = a2;
      v41 = v11;
      if (mlir::ShapedType::hasRank(&v40))
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        *&v45 = a2;
        *(&v45 + 1) = v12;
        mlir::ShapedType::getShape(&v45);
        if (v13 == 4)
        {
          return 1;
        }

        v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v43[0] = a2;
        v43[1] = v14;
        mlir::ShapedType::getShape(v43);
        if (v15 == 5)
        {
          return 1;
        }
      }
    }
  }

  v42 = 261;
  v40 = a3;
  v41 = a4;
  mlir::Operation::emitOpError(v47, a1, &v40);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v47, " #");
  if (*v17)
  {
    v18 = *(v17 + 24);
    LODWORD(v45) = 5;
    *(&v45 + 1) = a5;
    v19 = *(v17 + 32);
    if (v19 >= *(v17 + 36))
    {
      if (v18 > &v45 || v18 + 24 * v19 <= &v45)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v20 = v18 + 24 * *(v17 + 32);
    v21 = v45;
    *(v20 + 16) = v46;
    *v20 = v21;
    v22 = *(v17 + 32) + 1;
    *(v17 + 32) = v22;
    if (*v17)
    {
      LODWORD(v45) = 3;
      *(&v45 + 1) = " must be 4D/5D memref of 16-bit float or 16-bit unsigned integer or 16-bit signed integer or 8-bit unsigned integer or 8-bit signed integer or 4-bit signed integer values, but got ";
      v46 = 180;
      v23 = *(v17 + 24);
      if (v22 >= *(v17 + 36))
      {
        if (v23 > &v45 || v23 + 24 * v22 <= &v45)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v24 = v23 + 24 * *(v17 + 32);
      v25 = v45;
      *(v24 + 16) = v46;
      *v24 = v25;
      ++*(v17 + 32);
      if (*v17)
      {
        v26 = v17;
        mlir::DiagnosticArgument::DiagnosticArgument(&v45, a2);
        v17 = v26;
        v27 = *(v26 + 32);
        v28 = *(v26 + 24);
        if (v27 >= *(v26 + 36))
        {
          if (v28 > &v45 || v28 + 24 * v27 <= &v45)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v29 = v28 + 24 * *(v26 + 32);
        v30 = v45;
        *(v29 + 16) = v46;
        *v29 = v30;
        ++*(v26 + 32);
      }
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v47[0])
  {
    mlir::InFlightDiagnostic::report(v47);
  }

  if (v55 == 1)
  {
    if (v54 != &v55)
    {
      free(v54);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v53;
      v33 = __p;
      if (v53 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v53 = v31;
      operator delete(v33);
    }

    v34 = v50;
    if (v50)
    {
      v35 = v51;
      v36 = v50;
      if (v51 != v50)
      {
        do
        {
          v38 = *--v35;
          v37 = v38;
          *v35 = 0;
          if (v38)
          {
            MEMORY[0x259C63150](v37, 0x1000C8077774924);
          }
        }

        while (v35 != v34);
        v36 = v50;
      }

      v51 = v34;
      operator delete(v36);
    }

    if (v48 != &v49)
    {
      free(v48);
    }
  }

  return v16;
}

uint64_t mlir::anec::AveragePool::getIncPadAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 48), **(*(*this + 6) + 96));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::AveragePool>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::AveragePool::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

BOOL mlir::anec::AveragePool::verifyInvariantsImpl(mlir::Operation **this)
{
  v47 = *MEMORY[0x277D85DE8];
  v38[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v38);
  if (!v3)
  {
LABEL_7:
    v36[0] = "requires attribute 'ksize'";
    v37 = 259;
    mlir::OpState::emitOpError(this, v36, v38);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
    if (v38[0])
    {
      mlir::InFlightDiagnostic::report(v38);
    }

    if (v46 != 1)
    {
      return v7;
    }

    if (v45 != &v46)
    {
      free(v45);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v44;
      v10 = __p;
      if (v44 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v44 = v8;
      operator delete(v10);
    }

    v11 = v41;
    if (!v41)
    {
      goto LABEL_65;
    }

    v12 = v42;
    v13 = v41;
    if (v42 == v41)
    {
      goto LABEL_64;
    }

    do
    {
      v15 = *--v12;
      v14 = v15;
      *v12 = 0;
      if (v15)
      {
        MEMORY[0x259C63150](v14, 0x1000C8077774924);
      }
    }

    while (v12 != v11);
    goto LABEL_63;
  }

  v4 = Value;
  v5 = 0;
  v6 = 16 * v3;
  while (mlir::NamedAttribute::getName(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    if (mlir::NamedAttribute::getName(v4) == **(*(*this + 6) + 96))
    {
      v5 = *(v4 + 1);
    }

    v4 = (v4 + 16);
    v6 -= 16;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
LABEL_27:
    v36[0] = "requires attribute 'padding'";
    v37 = 259;
    mlir::OpState::emitOpError(this, v36, v38);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
    if (v38[0])
    {
      mlir::InFlightDiagnostic::report(v38);
    }

    if (v46 != 1)
    {
      return v7;
    }

    if (v45 != &v46)
    {
      free(v45);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v44;
      v21 = __p;
      if (v44 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v44 = v19;
      operator delete(v21);
    }

    v11 = v41;
    if (!v41)
    {
      goto LABEL_65;
    }

    v22 = v42;
    v13 = v41;
    if (v42 == v41)
    {
      goto LABEL_64;
    }

    do
    {
      v24 = *--v22;
      v23 = v24;
      *v22 = 0;
      if (v24)
      {
        MEMORY[0x259C63150](v23, 0x1000C8077774924);
      }
    }

    while (v22 != v11);
LABEL_63:
    v13 = v41;
    goto LABEL_64;
  }

  v16 = 0;
  v17 = *(v4 + 1);
  while (1)
  {
    v18 = (v4 + v16);
    if (mlir::NamedAttribute::getName((v4 + v16)) == *(*(*(*this + 6) + 96) + 16))
    {
      break;
    }

    v16 += 16;
    if (v6 == v16)
    {
      goto LABEL_27;
    }
  }

  v25 = v6 - v16;
  if (!v25)
  {
LABEL_47:
    v36[0] = "requires attribute 'stride'";
    v37 = 259;
    mlir::OpState::emitOpError(this, v36, v38);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
    if (v38[0])
    {
      mlir::InFlightDiagnostic::report(v38);
    }

    if (v46 != 1)
    {
      return v7;
    }

    if (v45 != &v46)
    {
      free(v45);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v44;
      v29 = __p;
      if (v44 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v44 = v27;
      operator delete(v29);
    }

    v11 = v41;
    if (v41)
    {
      v30 = v42;
      v13 = v41;
      if (v42 != v41)
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

        while (v30 != v11);
        goto LABEL_63;
      }

LABEL_64:
      v42 = v11;
      operator delete(v13);
    }

LABEL_65:
    if (v39 != &v40)
    {
      free(v39);
    }

    return v7;
  }

  v26 = v18[1];
  while (mlir::NamedAttribute::getName(v18) != *(*(*(*this + 6) + 96) + 24))
  {
    v18 += 2;
    v25 -= 16;
    if (!v25)
    {
      goto LABEL_47;
    }
  }

  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps8(*this, v18[1], "stride", 6) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps9(*this, v26, "padding", 7) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps8(*this, v17, "ksize", 5) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps3(*this, v5, "inc_pad", 7) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v34 = *this - 16;
  }

  else
  {
    v34 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v34, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps8(mlir::Operation *a1, void **a2, void **a3, uint64_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_9;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v30 = a2;
  v31 = v8;
  Type = mlir::ElementsAttr::getType(&v30);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33[0] = v10;
  v33[1] = Type;
  Shape = mlir::ShapedType::getShape(v33);
  v42 = 3;
  if (v12 == 1 && *Shape == v42)
  {
    v27 = a2;
    v28[0] = mlir::DenseElementsAttr::getType(&v27);
    v28[1] = v13;
    ElementType = mlir::ShapedType::getElementType(v28);
    if (mlir::Type::isUnsignedInteger(&ElementType, 64))
    {
      return 1;
    }
  }

LABEL_9:
  v32 = 257;
  mlir::Operation::emitOpError(v33, a1, &v30);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v33, "attribute '");
  if (*v15)
  {
    v32 = 261;
    v30 = a3;
    v31 = a4;
    v16 = v15;
    mlir::Diagnostic::operator<<((v15 + 1), &v30);
    v15 = v16;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v15, "' failed to satisfy constraint: ui64 elements attribute of shape {3}");
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v33[0])
  {
    mlir::InFlightDiagnostic::report(v33);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v39;
      v20 = __p;
      if (v39 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v39 = v18;
      operator delete(v20);
    }

    v21 = v36;
    if (v36)
    {
      v22 = v37;
      v23 = v36;
      if (v37 != v36)
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
        v23 = v36;
      }

      v37 = v21;
      operator delete(v23);
    }

    if (v34 != &v35)
    {
      free(v34);
    }
  }

  return v14;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps9(mlir::Operation *a1, void **a2, void **a3, uint64_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_9;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v30 = a2;
  v31 = v8;
  Type = mlir::ElementsAttr::getType(&v30);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33[0] = v10;
  v33[1] = Type;
  Shape = mlir::ShapedType::getShape(v33);
  v42 = 6;
  if (v12 == 1 && *Shape == v42)
  {
    v27 = a2;
    v28[0] = mlir::DenseElementsAttr::getType(&v27);
    v28[1] = v13;
    ElementType = mlir::ShapedType::getElementType(v28);
    if (mlir::Type::isUnsignedInteger(&ElementType, 64))
    {
      return 1;
    }
  }

LABEL_9:
  v32 = 257;
  mlir::Operation::emitOpError(v33, a1, &v30);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v33, "attribute '");
  if (*v15)
  {
    v32 = 261;
    v30 = a3;
    v31 = a4;
    v16 = v15;
    mlir::Diagnostic::operator<<((v15 + 1), &v30);
    v15 = v16;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v15, "' failed to satisfy constraint: ui64 elements attribute of shape {6}");
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v33[0])
  {
    mlir::InFlightDiagnostic::report(v33);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v39;
      v20 = __p;
      if (v39 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v39 = v18;
      operator delete(v20);
    }

    v21 = v36;
    if (v36)
    {
      v22 = v37;
      v23 = v36;
      if (v37 != v36)
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
        v23 = v36;
      }

      v37 = v21;
      operator delete(v23);
    }

    if (v34 != &v35)
    {
      free(v34);
    }
  }

  return v14;
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::BatchNorm>::inferReturnTypes(mlir::Float16Type *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v35[6] = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = v35;
  v34 = 0x600000000;
  v31 = a4;
  if (a5)
  {
    v16 = 0;
    while (1)
    {
      v17 = (*(mlir::ValueRange::dereference_iterator(&v31, v16) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8))
      {
        break;
      }

      v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
      if (!v17)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v17, v18);
      if (v34 >= HIDWORD(v34))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v33 + v34) = RankPromotionTypeForANE;
      v20 = (v34 + 1);
      LODWORD(v34) = v34 + 1;
      v16 = v32 + 1;
      v32 = v16;
      if (v16 == a5)
      {
        v22 = v33;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v20 = 0;
    v22 = v35;
LABEL_13:
    mlir::TypeRange::TypeRange(&v31, v22, v20);
    result = mlir::anec::InstanceNorm::inferPromotedReturnTypes(a1, v23, v24, a4, a5, v25, v26, v27, v29, v30, a11);
  }

  if (v33 != v35)
  {
    v28 = result;
    free(v33);
    return v28;
  }

  return result;
}

BOOL mlir::anec::BatchNorm::verifyInvariantsImpl(mlir::Operation **this)
{
  v29 = *MEMORY[0x277D85DE8];
  v20[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v20);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (mlir::NamedAttribute::getName(v4) != **(*(*this + 6) + 96))
    {
      v4 += 2;
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps11(*this, v4[1], "epsilon", 7) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u))
    {
      if (*(*this + 9))
      {
        v15 = *this - 16;
      }

      else
      {
        v15 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps3(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v18 = "requires attribute 'epsilon'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v26;
        v9 = __p;
        if (v26 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v26 = v7;
        operator delete(v9);
      }

      v10 = v23;
      if (v23)
      {
        v11 = v24;
        v12 = v23;
        if (v24 != v23)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              MEMORY[0x259C63150](v13, 0x1000C8077774924);
            }
          }

          while (v11 != v10);
          v12 = v23;
        }

        v24 = v10;
        operator delete(v12);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v6;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps11(mlir::Operation *a1, void **a2, void **a3, void **a4)
{
  v32 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 17) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v21[0] = a2;
    v6 = a1;
    v23[0] = mlir::FloatAttr::getType(v21);
    isF32 = mlir::Type::isF32(v23);
    a1 = v6;
    if (isF32)
    {
      return 1;
    }
  }

  v22 = 257;
  mlir::Operation::emitOpError(v23, a1, v21);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v23, "attribute '");
  if (*v9)
  {
    v22 = 261;
    v21[0] = a3;
    v21[1] = a4;
    v10 = v9;
    mlir::Diagnostic::operator<<((v9 + 1), v21);
    v9 = v10;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v9, "' failed to satisfy constraint: 32-bit float attribute");
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v29;
      v14 = __p;
      if (v29 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v29 = v12;
      operator delete(v14);
    }

    v15 = v26;
    if (v26)
    {
      v16 = v27;
      v17 = v26;
      if (v27 != v26)
      {
        do
        {
          v19 = *--v16;
          v18 = v19;
          *v16 = 0;
          if (v19)
          {
            MEMORY[0x259C63150](v18, 0x1000C8077774924);
          }
        }

        while (v16 != v15);
        v17 = v26;
      }

      v27 = v15;
      operator delete(v17);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v8;
}

uint64_t mlir::anec::__mlir_ods_local_type_constraint_ANECOps3(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v55 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  if (*(*a2 + 17) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v10 = a1;
    v46[0] = a2;
    v46[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v9 + 8);
    ElementType = mlir::ShapedType::getElementType(v46);
    isF16 = mlir::Type::isF16(&ElementType);
    a1 = v10;
    if (isF16)
    {
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v39 = a2;
      v40 = v12;
      hasRank = mlir::ShapedType::hasRank(&v39);
      a1 = v10;
      if (hasRank)
      {
        v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        *&v44 = a2;
        *(&v44 + 1) = v14;
        mlir::ShapedType::getShape(&v44);
        if (v15 == 4)
        {
          return 1;
        }

        v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v42[0] = a2;
        v42[1] = v16;
        mlir::ShapedType::getShape(v42);
        a1 = v10;
        if (v17 == 5)
        {
          return 1;
        }
      }
    }
  }

  v41 = 261;
  v39 = a3;
  v40 = a4;
  mlir::Operation::emitOpError(v46, a1, &v39);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v46, " #");
  if (*v19)
  {
    v20 = *(v19 + 24);
    LODWORD(v44) = 5;
    *(&v44 + 1) = a5;
    v21 = *(v19 + 32);
    if (v21 >= *(v19 + 36))
    {
      if (v20 > &v44 || v20 + 24 * v21 <= &v44)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22 = v20 + 24 * *(v19 + 32);
    v23 = v44;
    *(v22 + 16) = v45;
    *v22 = v23;
    ++*(v19 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v19, " must be 4D/5D memref of 16-bit float values, but got ");
  if (*v24)
  {
    v25 = v24;
    mlir::DiagnosticArgument::DiagnosticArgument(&v44, a2);
    v24 = v25;
    v26 = v25[3];
    v27 = *(v25 + 8);
    if (v27 >= *(v25 + 9))
    {
      if (v26 > &v44 || v26 + 24 * v27 <= &v44)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v28 = v26 + 24 * *(v25 + 8);
    v29 = v44;
    *(v28 + 16) = v45;
    *v28 = v29;
    ++*(v25 + 8);
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
  if (v46[0])
  {
    mlir::InFlightDiagnostic::report(v46);
  }

  if (v54 == 1)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v52;
      v32 = __p;
      if (v52 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v52 = v30;
      operator delete(v32);
    }

    v33 = v49;
    if (v49)
    {
      v34 = v50;
      v35 = v49;
      if (v50 != v49)
      {
        do
        {
          v37 = *--v34;
          v36 = v37;
          *v34 = 0;
          if (v37)
          {
            MEMORY[0x259C63150](v36, 0x1000C8077774924);
          }
        }

        while (v34 != v33);
        v35 = v49;
      }

      v50 = v33;
      operator delete(v35);
    }

    if (v47 != &v48)
    {
      free(v47);
    }
  }

  return v18;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::BatchToSpace>::inferReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::BatchToSpace::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

BOOL mlir::anec::BatchToSpace::verifyInvariantsImpl(mlir::Operation **this)
{
  v29 = *MEMORY[0x277D85DE8];
  v20[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v20);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (mlir::NamedAttribute::getName(v4) != **(*(*this + 6) + 96))
    {
      v4 += 2;
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps8(*this, v4[1], "factors", 7) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v15 = *this - 16;
      }

      else
      {
        v15 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v18 = "requires attribute 'factors'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v26;
        v9 = __p;
        if (v26 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v26 = v7;
        operator delete(v9);
      }

      v10 = v23;
      if (v23)
      {
        v11 = v24;
        v12 = v23;
        if (v24 != v23)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              MEMORY[0x259C63150](v13, 0x1000C8077774924);
            }
          }

          while (v11 != v10);
          v12 = v23;
        }

        v24 = v10;
        operator delete(v12);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v6;
}

uint64_t mlir::anec::Cast::verifyInvariantsImpl(mlir::Operation **this)
{
  v66 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 17) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || ((v57[0] = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, v57[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v4 + 8), v5 = *(*mlir::ShapedType::getElementType(v57) + 136), v5 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id) ? (v6 = v5 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id) : (v6 = 1), !v6 ? (v7 = v5 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id) : (v7 = 1), !v7 ? (v8 = v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id) : (v8 = 1), !v8 ? (v9 = v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id) : (v9 = 1), !v9 ? (v10 = v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id) : (v10 = 1), !v10 ? (v11 = v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id) : (v11 = 1), !v11 ? (v12 = v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id) : (v12 = 1), !v12 ? (v13 = v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id) : (v13 = 1), !v13 ? (v14 = v5 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id) : (v14 = 1), !v14 ? (v15 = v5 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id) : (v15 = 1), !v15 ? (v16 = v5 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id) : (v16 = 1), !v16 ? (v17 = v5 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id) : (v17 = 1), !v17 ? (v18 = v5 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id) : (v18 = 1), !v18 ? (v19 = v5 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id) : (v19 = 1), !v19 ? (v20 = v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) : (v20 = 1), !v20 ? (v21 = v5 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id) : (v21 = 1), !v21 ? (v22 = v5 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id) : (v22 = 1), !v22 || (v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8), v51 = v3, v52 = v23, !mlir::ShapedType::hasRank(&v51)) || (v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8), *&v55 = v3, *(&v55 + 1) = v24, mlir::ShapedType::getShape(&v55), v25 != 4) && (v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8), v54[0] = v3, v54[1] = v26, mlir::ShapedType::getShape(v54), v27 != 5)))
  {
    v53 = 261;
    v51 = "operand";
    v52 = 7;
    mlir::Operation::emitOpError(v57, v2, &v51);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v57, " #");
    if (*v28)
    {
      v29 = *(v28 + 24);
      LODWORD(v55) = 5;
      *(&v55 + 1) = 0;
      v30 = *(v28 + 32);
      if (v30 >= *(v28 + 36))
      {
        if (v29 > &v55 || v29 + 24 * v30 <= &v55)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v31 = v29 + 24 * *(v28 + 32);
      v32 = v55;
      *(v31 + 16) = v56;
      *v31 = v32;
      ++*(v28 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v28, " must be 4D/5D memref of floating-point or integer values, but got ");
    if (*v33)
    {
      v34 = v33;
      mlir::DiagnosticArgument::DiagnosticArgument(&v55, v3);
      v33 = v34;
      v35 = v34[3];
      v36 = *(v34 + 8);
      if (v36 >= *(v34 + 9))
      {
        if (v35 > &v55 || v35 + 24 * v36 <= &v55)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v37 = v35 + 24 * *(v34 + 8);
      v38 = v55;
      *(v37 + 16) = v56;
      *v37 = v38;
      ++*(v34 + 8);
    }

    v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
    if (v57[0])
    {
      mlir::InFlightDiagnostic::report(v57);
    }

    if (v65 == 1)
    {
      if (v64 != &v65)
      {
        free(v64);
      }

      v40 = __p;
      if (__p)
      {
        v41 = v63;
        v42 = __p;
        if (v63 != __p)
        {
          do
          {
            v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
          }

          while (v41 != v40);
          v42 = __p;
        }

        v63 = v40;
        operator delete(v42);
      }

      v43 = v60;
      if (v60)
      {
        v44 = v61;
        v45 = v60;
        if (v61 != v60)
        {
          do
          {
            v47 = *--v44;
            v46 = v47;
            *v44 = 0;
            if (v47)
            {
              MEMORY[0x259C63150](v46, 0x1000C8077774924);
            }
          }

          while (v44 != v43);
          v45 = v60;
        }

        v61 = v43;
        operator delete(v45);
      }

      if (v58 != &v59)
      {
        free(v58);
      }
    }

    if (!v39)
    {
      return 0;
    }
  }

  if (*(*this + 9))
  {
    v48 = *this - 16;
  }

  else
  {
    v48 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v48, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33[6] = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = v33;
  v32 = 0x600000000;
  v29 = a4;
  if (a5)
  {
    v15 = 0;
    while (1)
    {
      v16 = (*(mlir::ValueRange::dereference_iterator(&v29, v15) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        break;
      }

      v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
      if (!v16)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v16, v17);
      if (v32 >= HIDWORD(v32))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v31 + v32) = RankPromotionTypeForANE;
      v19 = (v32 + 1);
      LODWORD(v32) = v32 + 1;
      v15 = v30 + 1;
      v30 = v15;
      if (v15 == a5)
      {
        v21 = v31;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v19 = 0;
    v21 = v33;
LABEL_13:
    v22 = mlir::TypeRange::TypeRange(&v29, v21, v19);
    result = mlir::anec::inferElementwiseReturnTypes(v22, v23, v24, a4, a5, v25, v26, v27, v29, v30, a11);
  }

  if (v31 != v33)
  {
    v28 = result;
    free(v31);
    return v28;
  }

  return result;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ChannelToSpace>::inferReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::ChannelToSpace::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

void mlir::anec::ClampedRelu::build(mlir::Float16Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30[2] = *MEMORY[0x277D85DE8];
  v25 = a3;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  v9 = *(*(*(a2 + 8) + 96) + 8);
  F16Type = mlir::Builder::getF16Type(a1, v10);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F16Type, a4);
  mlir::NamedAttribute::NamedAttribute(&__src, v9, FloatAttr);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v29);
  v13 = **(*(a2 + 8) + 96);
  v15 = mlir::Builder::getF16Type(a1, v14);
  v16 = mlir::Builder::getFloatAttr(a1, v15, a5);
  mlir::NamedAttribute::NamedAttribute(&__src, v13, v16);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v29);
  __src = v30;
  v29 = 0x200000000;
  v17 = *a1;
  v18 = *a2;
  mlir::ValueRange::ValueRange(v27, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v21 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v26, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(v17, v18, 1, v27[0], v27[1], Dictionary, v21, v22, v26[0], v26[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v23 = v29;
  v24 = *(a2 + 72);
  if (v24 + v29 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v29)
  {
    memcpy((*(a2 + 64) + 8 * v24), __src, 8 * v29);
    LODWORD(v24) = *(a2 + 72);
  }

  *(a2 + 72) = v24 + v23;
  if (__src != v30)
  {
    free(__src);
  }
}

BOOL mlir::anec::ClampedRelu::verifyInvariantsImpl(mlir::Operation **this)
{
  v36 = *MEMORY[0x277D85DE8];
  v27[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v27);
  if (!v3)
  {
LABEL_5:
    v25[0] = "requires attribute 'max_value'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 != 1)
    {
      return v6;
    }

    if (v34 != &v35)
    {
      free(v34);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v33;
      v9 = __p;
      if (v33 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v33 = v7;
      operator delete(v9);
    }

    v10 = v30;
    if (v30)
    {
      v11 = v31;
      v12 = v30;
      if (v31 != v30)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x259C63150](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
LABEL_41:
        v12 = v30;
      }

LABEL_42:
      v31 = v10;
      operator delete(v12);
    }

LABEL_43:
    if (v28 != &v29)
    {
      free(v28);
    }

    return v6;
  }

  v4 = Value;
  v5 = 16 * v3;
  while (mlir::NamedAttribute::getName(v4) != **(*(*this + 6) + 96))
  {
    v4 += 2;
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (!v5)
  {
LABEL_25:
    v25[0] = "requires attribute 'min_value'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 != 1)
    {
      return v6;
    }

    if (v34 != &v35)
    {
      free(v34);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v33;
      v18 = __p;
      if (v33 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v33 = v16;
      operator delete(v18);
    }

    v10 = v30;
    if (v30)
    {
      v19 = v31;
      v12 = v30;
      if (v31 != v30)
      {
        do
        {
          v21 = *--v19;
          v20 = v21;
          *v19 = 0;
          if (v21)
          {
            MEMORY[0x259C63150](v20, 0x1000C8077774924);
          }
        }

        while (v19 != v10);
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v15 = v4[1];
  while (mlir::NamedAttribute::getName(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    v4 += 2;
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(*this, v4[1], "min_value", 9) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(*this, v15, "max_value", 9) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v22 = *this - 16;
  }

  else
  {
    v22 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(mlir::Operation *a1, void **a2, void **a3, void **a4)
{
  v32 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 17) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v21[0] = a2;
    v6 = a1;
    v23[0] = mlir::FloatAttr::getType(v21);
    isF16 = mlir::Type::isF16(v23);
    a1 = v6;
    if (isF16)
    {
      return 1;
    }
  }

  v22 = 257;
  mlir::Operation::emitOpError(v23, a1, v21);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v23, "attribute '");
  if (*v9)
  {
    v22 = 261;
    v21[0] = a3;
    v21[1] = a4;
    v10 = v9;
    mlir::Diagnostic::operator<<((v9 + 1), v21);
    v9 = v10;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v9, "' failed to satisfy constraint: 16-bit float attribute");
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v29;
      v14 = __p;
      if (v29 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v29 = v12;
      operator delete(v14);
    }

    v15 = v26;
    if (v26)
    {
      v16 = v27;
      v17 = v26;
      if (v27 != v26)
      {
        do
        {
          v19 = *--v16;
          v18 = v19;
          *v16 = 0;
          if (v19)
          {
            MEMORY[0x259C63150](v18, 0x1000C8077774924);
          }
        }

        while (v16 != v15);
        v17 = v26;
      }

      v27 = v15;
      operator delete(v17);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v8;
}

uint64_t mlir::anec::Concat::getInterleaveAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Concat>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::Concat::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

uint64_t mlir::anec::Concat::verifyInvariantsImpl(mlir::Operation **this)
{
  v78 = *MEMORY[0x277D85DE8];
  v69[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v69);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (1)
    {
      Name = mlir::NamedAttribute::getName(v4);
      v7 = *this;
      if (Name == **(*(*this + 6) + 96))
      {
        break;
      }

      v4 = (v4 + 16);
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v17 = *(v4 + 1);
    for (i = 0; v5; v5 -= 16)
    {
      v25 = mlir::NamedAttribute::getName(v4);
      v7 = *this;
      if (v25 == *(*(*(*this + 6) + 96) + 8))
      {
        i = *(v4 + 1);
      }

      v4 = (v4 + 16);
    }

    if (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps13(v7, v17, "axis", 4) & 1) != 0 && (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps3(*this, i, "interleave", 0xA))
    {
      v19 = *this;
      if ((*(*this + 46) & 0x80) == 0 || (v20 = *(v19 + 17), !v20))
      {
LABEL_86:
        mlir::anec::Concat::verifyInvariantsImpl(v19, this, v69);
        return LOBYTE(v69[0]);
      }

      v21 = 0;
      v22 = *(v19 + 9);
      v23 = &v77;
      v24 = v71;
      while (1)
      {
        if ((v26 = *this, v27 = (*(*(v22 + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8), *(*v27 + 17) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id) || (v28 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8), v69[0] = v27, v69[1] = v28, ElementType = mlir::ShapedType::getElementType(v69), !mlir::Type::isF16(&ElementType)) && !mlir::Type::isSignedInteger(&ElementType, 8) && !mlir::Type::isUnsignedInteger(&ElementType, 8) && !mlir::Type::isSignedInteger(&ElementType, 4) || (v29 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8), v62 = v27, v63 = v29, !mlir::ShapedType::hasRank(&v62)) || (v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8), *&v67 = v27, *(&v67 + 1) = v30, mlir::ShapedType::getShape(&v67), v31 != 4) && (v32 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8), v65[0] = v27, v65[1] = v32, mlir::ShapedType::getShape(v65), v33 != 5))
        {
          v64 = 261;
          v62 = "operand";
          v63 = 7;
          mlir::Operation::emitOpError(v69, v26, &v62);
          mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v69, " #");
          if (*v34)
          {
            v35 = *(v34 + 24);
            LODWORD(v67) = 5;
            *(&v67 + 1) = v21;
            v36 = *(v34 + 32);
            if (v36 >= *(v34 + 36))
            {
              if (v35 > &v67 || v35 + 24 * v36 <= &v67)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v37 = v35 + 24 * *(v34 + 32);
            v38 = v67;
            *(v37 + 16) = v68;
            *v37 = v38;
            v39 = *(v34 + 32) + 1;
            *(v34 + 32) = v39;
            if (*v34)
            {
              LODWORD(v67) = 3;
              *(&v67 + 1) = " must be variadic of 4D/5D memref of 16-bit float or 8-bit signed integer or 8-bit unsigned integer or 4-bit signed integer values, but got ";
              v68 = 140;
              v40 = *(v34 + 24);
              if (v39 >= *(v34 + 36))
              {
                if (v40 > &v67 || v40 + 24 * v39 <= &v67)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v41 = v40 + 24 * *(v34 + 32);
              v42 = v67;
              *(v41 + 16) = v68;
              *v41 = v42;
              ++*(v34 + 32);
              if (*v34)
              {
                v43 = v22;
                v44 = v20;
                v45 = v24;
                v46 = v23;
                v47 = v34;
                mlir::DiagnosticArgument::DiagnosticArgument(&v67, v27);
                v34 = v47;
                v48 = *(v47 + 32);
                v49 = *(v47 + 24);
                if (v48 >= *(v47 + 36))
                {
                  if (v49 > &v67 || v49 + 24 * v48 <= &v67)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v50 = v49 + 24 * *(v47 + 32);
                v51 = v67;
                *(v50 + 16) = v68;
                *v50 = v51;
                ++*(v47 + 32);
                v23 = v46;
                v24 = v45;
                v20 = v44;
                v22 = v43;
              }
            }
          }

          v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
          if (v69[0])
          {
            mlir::InFlightDiagnostic::report(v69);
          }

          if (v77 == 1)
          {
            if (v76 != v23)
            {
              free(v76);
            }

            v53 = __p;
            if (__p)
            {
              v54 = v75;
              v55 = __p;
              if (v75 != __p)
              {
                do
                {
                  v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
                }

                while (v54 != v53);
                v55 = __p;
              }

              v75 = v53;
              operator delete(v55);
            }

            v56 = v72;
            if (v72)
            {
              v57 = v73;
              v58 = v72;
              if (v73 != v72)
              {
                do
                {
                  v60 = *--v57;
                  v59 = v60;
                  *v57 = 0;
                  if (v60)
                  {
                    MEMORY[0x259C63150](v59, 0x1000C8077774924);
                  }
                }

                while (v57 != v56);
                v58 = v72;
              }

              v73 = v56;
              operator delete(v58);
            }

            if (v70 != v24)
            {
              free(v70);
            }
          }

          if (!v52)
          {
            break;
          }
        }

        if (++v21 == v20)
        {
          v19 = *this;
          goto LABEL_86;
        }
      }
    }

    return 0;
  }

  else
  {
LABEL_5:
    v62 = "requires attribute 'axis'";
    v64 = 259;
    mlir::OpState::emitOpError(this, &v62, v69);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v69);
    if (v69[0])
    {
      mlir::InFlightDiagnostic::report(v69);
    }

    if (v77 == 1)
    {
      if (v76 != &v77)
      {
        free(v76);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v75;
        v11 = __p;
        if (v75 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v75 = v9;
        operator delete(v11);
      }

      v12 = v72;
      if (v72)
      {
        v13 = v73;
        v14 = v72;
        if (v73 != v72)
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
          v14 = v72;
        }

        v73 = v12;
        operator delete(v14);
      }

      if (v70 != v71)
      {
        free(v70);
      }
    }
  }

  return v8;
}

uint64_t mlir::anec::Convolution::getStride(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 72));
}

uint64_t mlir::anec::Convolution::getPadding(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 56));
}

uint64_t mlir::anec::Convolution::getPaddingModeAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 64));
  if (result)
  {
    v6 = result;
    if (mlir::anec::PaddingModeAttr::classof(result))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::Convolution::getGroupsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 16));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::Convolution::getKernelScaleAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 40));
  if (result)
  {
    v6 = result;
    if (mlir::DenseFPElementsAttr::classof(result))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::Convolution::getKernelZeroPointAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 48));
  if (result)
  {
    v6 = result;
    if (mlir::DenseIntElementsAttr::classof(result))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::Convolution::getKernelPalettized_LUTAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 32));
  if (result)
  {
    v6 = result;
    if (mlir::DenseElementsAttr::classof(result))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::Convolution::getKernelMutablePalettized_LUTAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 24));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Convolution>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::Convolution::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

uint64_t mlir::anec::Convolution::populateDefaultAttrs(mlir::anec::Convolution *this, const mlir::OperationName *a2, mlir::NamedAttrList *a3)
{
  v4 = *(*this + 96);
  Context = mlir::Attribute::getContext(v4);
  v13 = Context;
  if (!mlir::NamedAttrList::get(a2, v4[8]))
  {
    v6 = v4[8];
    v7 = mlir::IntegerType::get(Context, 64, 0);
    v8 = mlir::IntegerAttr::get(v7, 0);
    mlir::NamedAttribute::NamedAttribute(&v14, v6, v8);
    mlir::NamedAttrList::push_back(a2, v14, v15);
  }

  result = mlir::NamedAttrList::get(a2, v4[2]);
  if (!result)
  {
    v10 = v4[2];
    IntegerType = mlir::Builder::getIntegerType(&v13, 64, 0);
    IntegerAttr = mlir::Builder::getIntegerAttr(&v13, IntegerType, 1uLL);
    mlir::NamedAttribute::NamedAttribute(&v14, v10, IntegerAttr);
    return mlir::NamedAttrList::push_back(a2, v14, v15);
  }

  return result;
}

BOOL mlir::anec::Convolution::verifyInvariantsImpl(mlir::Operation **this)
{
  v53 = *MEMORY[0x277D85DE8];
  v44[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v44);
  if (!v3)
  {
LABEL_7:
    v42[0] = "requires attribute 'dilation'";
    v43 = 259;
    mlir::OpState::emitOpError(this, v42, v44);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
    if (v44[0])
    {
      mlir::InFlightDiagnostic::report(v44);
    }

    if (v52 != 1)
    {
      return v7;
    }

    if (v51 != &v52)
    {
      free(v51);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v50;
      v10 = __p;
      if (v50 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v50 = v8;
      operator delete(v10);
    }

    v11 = v47;
    if (!v47)
    {
      goto LABEL_77;
    }

    v12 = v48;
    v13 = v47;
    if (v48 == v47)
    {
      goto LABEL_76;
    }

    do
    {
      v15 = *--v12;
      v14 = v15;
      *v12 = 0;
      if (v15)
      {
        MEMORY[0x259C63150](v14, 0x1000C8077774924);
      }
    }

    while (v12 != v11);
    goto LABEL_75;
  }

  v4 = Value;
  v5 = 0;
  v6 = 16 * v3;
  while (mlir::NamedAttribute::getName(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    if (mlir::NamedAttribute::getName(v4) == **(*(*this + 6) + 96))
    {
      v5 = *(v4 + 1);
    }

    v4 = (v4 + 16);
    v6 -= 16;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
LABEL_37:
    v42[0] = "requires attribute 'padding'";
    v43 = 259;
    mlir::OpState::emitOpError(this, v42, v44);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
    if (v44[0])
    {
      mlir::InFlightDiagnostic::report(v44);
    }

    if (v52 != 1)
    {
      return v7;
    }

    if (v51 != &v52)
    {
      free(v51);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v50;
      v24 = __p;
      if (v50 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v50 = v22;
      operator delete(v24);
    }

    v11 = v47;
    if (!v47)
    {
      goto LABEL_77;
    }

    v25 = v48;
    v13 = v47;
    if (v48 == v47)
    {
      goto LABEL_76;
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

    while (v25 != v11);
LABEL_75:
    v13 = v47;
    goto LABEL_76;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v40 = *(v4 + 1);
  v41 = 0;
  while (1)
  {
    v21 = (v4 + v16);
    if (mlir::NamedAttribute::getName((v4 + v16)) == *(*(*(*this + 6) + 96) + 56))
    {
      break;
    }

    if (mlir::NamedAttribute::getName((v4 + v16)) == *(*(*(*this + 6) + 96) + 16))
    {
      v17 = *(v4 + v16 + 8);
    }

    else if (mlir::NamedAttribute::getName((v4 + v16)) == *(*(*(*this + 6) + 96) + 24))
    {
      v18 = *(v4 + v16 + 8);
    }

    else if (mlir::NamedAttribute::getName((v4 + v16)) == *(*(*(*this + 6) + 96) + 32))
    {
      v19 = *(v4 + v16 + 8);
    }

    else if (mlir::NamedAttribute::getName((v4 + v16)) == *(*(*(*this + 6) + 96) + 40))
    {
      v20 = *(v4 + v16 + 8);
    }

    else if (mlir::NamedAttribute::getName((v4 + v16)) == *(*(*(*this + 6) + 96) + 48))
    {
      v41 = *(v4 + v16 + 8);
    }

    v16 += 16;
    if (v6 == v16)
    {
      goto LABEL_37;
    }
  }

  v28 = v6 - v16;
  if (!v28)
  {
LABEL_59:
    v42[0] = "requires attribute 'stride'";
    v43 = 259;
    mlir::OpState::emitOpError(this, v42, v44);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
    if (v44[0])
    {
      mlir::InFlightDiagnostic::report(v44);
    }

    if (v52 != 1)
    {
      return v7;
    }

    if (v51 != &v52)
    {
      free(v51);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v50;
      v33 = __p;
      if (v50 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v50 = v31;
      operator delete(v33);
    }

    v11 = v47;
    if (v47)
    {
      v34 = v48;
      v13 = v47;
      if (v48 != v47)
      {
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

        while (v34 != v11);
        goto LABEL_75;
      }

LABEL_76:
      v48 = v11;
      operator delete(v13);
    }

LABEL_77:
    if (v45 != &v46)
    {
      free(v45);
    }

    return v7;
  }

  v29 = 0;
  v30 = v21[1];
  while (mlir::NamedAttribute::getName(v21) != *(*(*(*this + 6) + 96) + 72))
  {
    if (mlir::NamedAttribute::getName(v21) == *(*(*(*this + 6) + 96) + 64))
    {
      v29 = v21[1];
    }

    v21 += 2;
    v28 -= 16;
    if (!v28)
    {
      goto LABEL_59;
    }
  }

  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps8(*this, v21[1], "stride", 6) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps8(*this, v40, "dilation", 8) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps9(*this, v30, "padding", 7) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps14(*this, v29, "padding_mode", 0xC) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps13(*this, v17, "groups", 6) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps3(*this, v5, "channel_wise", 0xC) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps15(*this, v20, "kernel_scale", 12) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps16(*this, v41, "kernel_zero_point", 17) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps17(*this, v19, "kernel_palettized_LUT", 21) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps18(*this, v18, "kernel_mutable_palettized_LUT", 0x1D) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps6(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v38 = *this - 16;
  }

  else
  {
    v38 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v38, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps14(mlir::Operation *a1, uint64_t a2, void **a3, void **a4)
{
  v31 = *MEMORY[0x277D85DE8];
  if (!a2 || (mlir::anec::PaddingModeAttr::classof(a2) & 1) != 0)
  {
    return 1;
  }

  v21 = 257;
  mlir::Operation::emitOpError(v22, a1, v20);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v22, "attribute '");
  if (*v9)
  {
    v21 = 261;
    v20[0] = a3;
    v20[1] = a4;
    v10 = v9;
    mlir::Diagnostic::operator<<((v9 + 1), v20);
    v9 = v10;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v9, "' failed to satisfy constraint: valid PaddingMode");
  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v28;
      v14 = __p;
      if (v28 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v28 = v12;
      operator delete(v14);
    }

    v15 = v25;
    if (v25)
    {
      v16 = v26;
      v17 = v25;
      if (v26 != v25)
      {
        do
        {
          v19 = *--v16;
          v18 = v19;
          *v16 = 0;
          if (v19)
          {
            MEMORY[0x259C63150](v18, 0x1000C8077774924);
          }
        }

        while (v16 != v15);
        v17 = v25;
      }

      v26 = v15;
      operator delete(v17);
    }

    if (v23 != &v24)
    {
      free(v23);
    }
  }

  return v7;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps15(mlir::Operation *a1, void **a2, void **a3, uint64_t a4)
{
  v57 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseFPElementsAttr::classof(a2))
  {
    goto LABEL_15;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v45 = a2;
  v46 = v8;
  Type = mlir::ElementsAttr::getType(&v45);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v48[0] = v10;
  v48[1] = Type;
  mlir::ShapedType::getShape(v48);
  if (!v11)
  {
    goto LABEL_40;
  }

  v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v43[0] = a2;
  v43[1] = v12;
  v13 = mlir::ElementsAttr::getType(v43);
  v14 = v13;
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  v44[0] = v14;
  v44[1] = v13;
  mlir::ShapedType::getShape(v44);
  if (v15 == 1)
  {
    goto LABEL_40;
  }

  v16 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v41[0] = a2;
  v41[1] = v16;
  v17 = mlir::ElementsAttr::getType(v41);
  v18 = v17;
  if (v17)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
  }

  v42[0] = v18;
  v42[1] = v17;
  mlir::ShapedType::getShape(v42);
  if (v19 == 4)
  {
LABEL_40:
    v38 = a2;
    v39[0] = mlir::DenseElementsAttr::getType(&v38);
    v39[1] = v20;
    ElementType = mlir::ShapedType::getElementType(v39);
    if (mlir::Type::isF16(&ElementType))
    {
      return 1;
    }

    v35 = a2;
    v36[0] = mlir::DenseElementsAttr::getType(&v35);
    v36[1] = v21;
    v37 = mlir::ShapedType::getElementType(v36);
    if (mlir::Type::isF32(&v37))
    {
      return 1;
    }
  }

LABEL_15:
  v47 = 257;
  mlir::Operation::emitOpError(v48, a1, &v45);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v48, "attribute '");
  if (*v23)
  {
    v47 = 261;
    v45 = a3;
    v46 = a4;
    v24 = v23;
    mlir::Diagnostic::operator<<((v23 + 1), &v45);
    v23 = v24;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v23, "' failed to satisfy constraint: f16 or f32 elements attribute of rank 0/1/4");
  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
  if (v48[0])
  {
    mlir::InFlightDiagnostic::report(v48);
  }

  if (v56 == 1)
  {
    if (v55 != &v56)
    {
      free(v55);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v54;
      v28 = __p;
      if (v54 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v54 = v26;
      operator delete(v28);
    }

    v29 = v51;
    if (v51)
    {
      v30 = v52;
      v31 = v51;
      if (v52 != v51)
      {
        do
        {
          v33 = *--v30;
          v32 = v33;
          *v30 = 0;
          if (v33)
          {
            MEMORY[0x259C63150](v32, 0x1000C8077774924);
          }
        }

        while (v30 != v29);
        v31 = v51;
      }

      v52 = v29;
      operator delete(v31);
    }

    if (v49 != &v50)
    {
      free(v49);
    }
  }

  return v22;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps16(mlir::Operation *a1, void **a2, void **a3, uint64_t a4)
{
  v57 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_15;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v45 = a2;
  v46 = v8;
  Type = mlir::ElementsAttr::getType(&v45);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v48[0] = v10;
  v48[1] = Type;
  mlir::ShapedType::getShape(v48);
  if (!v11)
  {
    goto LABEL_40;
  }

  v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v43[0] = a2;
  v43[1] = v12;
  v13 = mlir::ElementsAttr::getType(v43);
  v14 = v13;
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  v44[0] = v14;
  v44[1] = v13;
  mlir::ShapedType::getShape(v44);
  if (v15 == 1)
  {
    goto LABEL_40;
  }

  v16 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v41[0] = a2;
  v41[1] = v16;
  v17 = mlir::ElementsAttr::getType(v41);
  v18 = v17;
  if (v17)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
  }

  v42[0] = v18;
  v42[1] = v17;
  mlir::ShapedType::getShape(v42);
  if (v19 == 4)
  {
LABEL_40:
    v38 = a2;
    v39[0] = mlir::DenseElementsAttr::getType(&v38);
    v39[1] = v20;
    ElementType = mlir::ShapedType::getElementType(v39);
    if (mlir::Type::isSignedInteger(&ElementType, 8))
    {
      return 1;
    }

    v35 = a2;
    v36[0] = mlir::DenseElementsAttr::getType(&v35);
    v36[1] = v21;
    v37 = mlir::ShapedType::getElementType(v36);
    if (mlir::Type::isUnsignedInteger(&v37, 8))
    {
      return 1;
    }
  }

LABEL_15:
  v47 = 257;
  mlir::Operation::emitOpError(v48, a1, &v45);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v48, "attribute '");
  if (*v23)
  {
    v47 = 261;
    v45 = a3;
    v46 = a4;
    v24 = v23;
    mlir::Diagnostic::operator<<((v23 + 1), &v45);
    v23 = v24;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v23, "' failed to satisfy constraint: si8 or ui8 elements attribute of rank 0/1/4");
  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
  if (v48[0])
  {
    mlir::InFlightDiagnostic::report(v48);
  }

  if (v56 == 1)
  {
    if (v55 != &v56)
    {
      free(v55);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v54;
      v28 = __p;
      if (v54 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v54 = v26;
      operator delete(v28);
    }

    v29 = v51;
    if (v51)
    {
      v30 = v52;
      v31 = v51;
      if (v52 != v51)
      {
        do
        {
          v33 = *--v30;
          v32 = v33;
          *v30 = 0;
          if (v33)
          {
            MEMORY[0x259C63150](v32, 0x1000C8077774924);
          }
        }

        while (v30 != v29);
        v31 = v51;
      }

      v52 = v29;
      operator delete(v31);
    }

    if (v49 != &v50)
    {
      free(v49);
    }
  }

  return v22;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps17(mlir::Operation *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v80 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseElementsAttr::classof(a2))
  {
    goto LABEL_26;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  *&v68 = a2;
  *(&v68 + 1) = v8;
  Type = mlir::ElementsAttr::getType(&v68);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v71[0] = v10;
  v71[1] = Type;
  mlir::ShapedType::getShape(v71);
  if (!v11)
  {
    goto LABEL_57;
  }

  v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v66[0] = a2;
  v66[1] = v12;
  v13 = mlir::ElementsAttr::getType(v66);
  v14 = v13;
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  v67[0] = v14;
  v67[1] = v13;
  mlir::ShapedType::getShape(v67);
  if (v15 == 1)
  {
    goto LABEL_57;
  }

  v16 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v64[0] = a2;
  v64[1] = v16;
  v17 = mlir::ElementsAttr::getType(v64);
  v18 = v17;
  if (v17)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
  }

  v65[0] = v18;
  v65[1] = v17;
  mlir::ShapedType::getShape(v65);
  if (v19 == 2)
  {
    goto LABEL_57;
  }

  v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v62[0] = a2;
  v62[1] = v20;
  v21 = mlir::ElementsAttr::getType(v62);
  v22 = v21;
  if (v21)
  {
    v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
  }

  v63[0] = v22;
  v63[1] = v21;
  mlir::ShapedType::getShape(v63);
  if (v23 == 3)
  {
    goto LABEL_57;
  }

  v24 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v60[0] = a2;
  v60[1] = v24;
  v25 = mlir::ElementsAttr::getType(v60);
  v26 = v25;
  if (v25)
  {
    v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
  }

  v61[0] = v26;
  v61[1] = v25;
  mlir::ShapedType::getShape(v61);
  if (v27 == 4)
  {
    goto LABEL_57;
  }

  v28 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v58[0] = a2;
  v58[1] = v28;
  v29 = mlir::ElementsAttr::getType(v58);
  v30 = v29;
  if (v29)
  {
    v29 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
  }

  v59[0] = v30;
  v59[1] = v29;
  mlir::ShapedType::getShape(v59);
  if (v31 == 5)
  {
    goto LABEL_57;
  }

  v32 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v56[0] = a2;
  v56[1] = v32;
  v33 = mlir::ElementsAttr::getType(v56);
  v34 = v33;
  if (v33)
  {
    v33 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8);
  }

  v57[0] = v34;
  v57[1] = v33;
  mlir::ShapedType::getShape(v57);
  if (v35 == 6)
  {
LABEL_57:
    v53 = a2;
    v54[0] = mlir::DenseElementsAttr::getType(&v53);
    v54[1] = v36;
    ElementType = mlir::ShapedType::getElementType(v54);
    if (mlir::Type::isF16(&ElementType))
    {
      return 1;
    }
  }

LABEL_26:
  v70 = 257;
  mlir::Operation::emitOpError(v71, a1, &v68);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v71, "attribute '");
  if (*v38)
  {
    v70 = 261;
    *&v68 = a3;
    *(&v68 + 1) = a4;
    v39 = v38;
    mlir::Diagnostic::operator<<((v38 + 1), &v68);
    v38 = v39;
    if (*v39)
    {
      v40 = v39[3];
      LODWORD(v68) = 3;
      *(&v68 + 1) = "' failed to satisfy constraint: dense elements attribute for palettized LUT of rank 0/1/2/3/4/5/6";
      v69 = 97;
      v41 = *(v39 + 8);
      if (v41 >= *(v39 + 9))
      {
        if (v40 > &v68 || v40 + 24 * v41 <= &v68)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v42 = v40 + 24 * *(v39 + 8);
      v43 = v68;
      *(v42 + 16) = v69;
      *v42 = v43;
      ++*(v39 + 8);
    }
  }

  v37 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
  if (v71[0])
  {
    mlir::InFlightDiagnostic::report(v71);
  }

  if (v79 == 1)
  {
    if (v78 != &v79)
    {
      free(v78);
    }

    v44 = __p;
    if (__p)
    {
      v45 = v77;
      v46 = __p;
      if (v77 != __p)
      {
        do
        {
          v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
        }

        while (v45 != v44);
        v46 = __p;
      }

      v77 = v44;
      operator delete(v46);
    }

    v47 = v74;
    if (v74)
    {
      v48 = v75;
      v49 = v74;
      if (v75 != v74)
      {
        do
        {
          v51 = *--v48;
          v50 = v51;
          *v48 = 0;
          if (v51)
          {
            MEMORY[0x259C63150](v50, 0x1000C8077774924);
          }
        }

        while (v48 != v47);
        v49 = v74;
      }

      v75 = v47;
      operator delete(v49);
    }

    if (v72 != &v73)
    {
      free(v72);
    }
  }

  return v37;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps18(mlir::Operation *a1, uint64_t a2, void **a3, void **a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a2 || *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    return 1;
  }

  v20 = 257;
  mlir::Operation::emitOpError(v21, a1, v19);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v21, "attribute '");
  if (*v6)
  {
    v20 = 261;
    v19[0] = a3;
    v19[1] = a4;
    v7 = v6;
    mlir::Diagnostic::operator<<((v6 + 1), v19);
    v6 = v7;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v6, "' failed to satisfy constraint: dictionary of named attribute values");
  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v8);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x259C63150](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
    }

    if (v22 != &v23)
    {
      free(v22);
    }
  }

  return v9;
}

uint64_t mlir::anec::__mlir_ods_local_type_constraint_ANECOps6(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v56 = *MEMORY[0x277D85DE8];
  v10 = *a2;
  if (*(*a2 + 17) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v47[0] = a2;
    v47[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    ElementType = mlir::ShapedType::getElementType(v47);
    if (mlir::Type::isF32(&ElementType) || mlir::Type::isF16(&ElementType) || mlir::Type::isSignedInteger(&ElementType, 8) || mlir::Type::isUnsignedInteger(&ElementType, 8) || mlir::Type::isUnsignedInteger(&ElementType, 2) || mlir::Type::isUnsignedInteger(&ElementType, 4) || mlir::Type::isUnsignedInteger(&ElementType, 6) || mlir::Type::isUnsignedInteger(&ElementType, 8))
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v40 = a2;
      v41 = v11;
      if (mlir::ShapedType::hasRank(&v40))
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        *&v45 = a2;
        *(&v45 + 1) = v12;
        mlir::ShapedType::getShape(&v45);
        if (v13 == 4)
        {
          return 1;
        }

        v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v43[0] = a2;
        v43[1] = v14;
        mlir::ShapedType::getShape(v43);
        if (v15 == 5)
        {
          return 1;
        }
      }
    }
  }

  v42 = 261;
  v40 = a3;
  v41 = a4;
  mlir::Operation::emitOpError(v47, a1, &v40);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v47, " #");
  if (*v17)
  {
    v18 = *(v17 + 24);
    LODWORD(v45) = 5;
    *(&v45 + 1) = a5;
    v19 = *(v17 + 32);
    if (v19 >= *(v17 + 36))
    {
      if (v18 > &v45 || v18 + 24 * v19 <= &v45)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v20 = v18 + 24 * *(v17 + 32);
    v21 = v45;
    *(v20 + 16) = v46;
    *v20 = v21;
    v22 = *(v17 + 32) + 1;
    *(v17 + 32) = v22;
    if (*v17)
    {
      LODWORD(v45) = 3;
      *(&v45 + 1) = " must be 4D/5D memref of 32-bit float or 16-bit float or 8-bit signed integer or 8-bit unsigned integer or 2/4/6/8-bit unsigned integer values, but got ";
      v46 = 152;
      v23 = *(v17 + 24);
      if (v22 >= *(v17 + 36))
      {
        if (v23 > &v45 || v23 + 24 * v22 <= &v45)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v24 = v23 + 24 * *(v17 + 32);
      v25 = v45;
      *(v24 + 16) = v46;
      *v24 = v25;
      ++*(v17 + 32);
      if (*v17)
      {
        v26 = v17;
        mlir::DiagnosticArgument::DiagnosticArgument(&v45, a2);
        v17 = v26;
        v27 = *(v26 + 32);
        v28 = *(v26 + 24);
        if (v27 >= *(v26 + 36))
        {
          if (v28 > &v45 || v28 + 24 * v27 <= &v45)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v29 = v28 + 24 * *(v26 + 32);
        v30 = v45;
        *(v29 + 16) = v46;
        *v29 = v30;
        ++*(v26 + 32);
      }
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v47[0])
  {
    mlir::InFlightDiagnostic::report(v47);
  }

  if (v55 == 1)
  {
    if (v54 != &v55)
    {
      free(v54);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v53;
      v33 = __p;
      if (v53 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v53 = v31;
      operator delete(v33);
    }

    v34 = v50;
    if (v50)
    {
      v35 = v51;
      v36 = v50;
      if (v51 != v50)
      {
        do
        {
          v38 = *--v35;
          v37 = v38;
          *v35 = 0;
          if (v38)
          {
            MEMORY[0x259C63150](v37, 0x1000C8077774924);
          }
        }

        while (v35 != v34);
        v36 = v50;
      }

      v51 = v34;
      operator delete(v36);
    }

    if (v48 != &v49)
    {
      free(v48);
    }
  }

  return v16;
}

uint64_t llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_0>(uint64_t *a1)
{
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v10, *a1, 0);
  v2 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v8, v2, NumElements);
  v12 = v10;
  v13 = v11;
  v4 = v9;
  if (v11 == v9)
  {
    return 1;
  }

  while (1)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v12, &v14);
    v6 = v15;
    v15 = 0;
    if (v6 <= 0x40)
    {
      break;
    }

    v7 = *v14;
    if (!v14)
    {
      goto LABEL_6;
    }

    MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    if (v15 >= 0x41 && v14)
    {
      MEMORY[0x259C63150](v14, 0x1000C8000313F17);
LABEL_6:
      if (v7 >= 3)
      {
        return 0;
      }

      goto LABEL_7;
    }

    if (v7 > 2)
    {
      return 0;
    }

LABEL_7:
    *&v13 = v13 + 1;
    if (v13 == v4)
    {
      return 1;
    }
  }

  if (!v6 || ((v14 << -v6) >> -v6) < 3)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(uint64_t *a1)
{
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v10, *a1, 0);
  v2 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v8, v2, NumElements);
  v12 = v10;
  v13 = v11;
  v4 = v9;
  if (v11 == v9)
  {
    return 1;
  }

  while (1)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v12, &v14);
    v6 = v15;
    v15 = 0;
    if (v6 <= 0x40)
    {
      break;
    }

    v7 = *v14;
    if (!v14)
    {
      goto LABEL_6;
    }

    MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    if (v15 >= 0x41 && v14)
    {
      MEMORY[0x259C63150](v14, 0x1000C8000313F17);
LABEL_6:
      if (v7 >= 2)
      {
        return 0;
      }

      goto LABEL_7;
    }

    if (v7 > 1)
    {
      return 0;
    }

LABEL_7:
    *&v13 = v13 + 1;
    if (v13 == v4)
    {
      return 1;
    }
  }

  if (!v6 || ((v14 << -v6) >> -v6) < 2)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_2>(uint64_t *a1)
{
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v10, *a1, 0);
  v2 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v8, v2, NumElements);
  v12 = v10;
  v13 = v11;
  v4 = v9;
  if (v11 == v9)
  {
    return 1;
  }

  while (1)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v12, &v14);
    v6 = v15;
    v15 = 0;
    if (v6 <= 0x40)
    {
      break;
    }

    v7 = *v14;
    if (!v14)
    {
      goto LABEL_6;
    }

    MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    if (v15 >= 0x41 && v14)
    {
      MEMORY[0x259C63150](v14, 0x1000C8000313F17);
LABEL_6:
      if (v7 >= 6)
      {
        return 0;
      }

      goto LABEL_7;
    }

    if (v7 > 5)
    {
      return 0;
    }

LABEL_7:
    *&v13 = v13 + 1;
    if (v13 == v4)
    {
      return 1;
    }
  }

  if (!v6 || ((v14 << -v6) >> -v6) < 6)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_4>(uint64_t *a1)
{
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v10, *a1, 0);
  v2 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v8, v2, NumElements);
  v12 = v10;
  v13 = v11;
  v4 = v9;
  if (v11 == v9)
  {
    return 1;
  }

  while (1)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v12, &v14);
    v6 = v15;
    v15 = 0;
    if (v6 <= 0x40)
    {
      break;
    }

    v7 = *v14;
    if (!v14)
    {
      goto LABEL_6;
    }

    MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    if (v15 >= 0x41 && v14)
    {
      MEMORY[0x259C63150](v14, 0x1000C8000313F17);
LABEL_6:
      if (v7 >= 9)
      {
        return 0;
      }

      goto LABEL_7;
    }

    if (v7 > 8)
    {
      return 0;
    }

LABEL_7:
    *&v13 = v13 + 1;
    if (v13 == v4)
    {
      return 1;
    }
  }

  if (!v6 || ((v14 << -v6) >> -v6) < 9)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t mlir::anec::CropResize::getCropDimsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), (v3 + 16 * v4 - 80), *(*(*(*this + 6) + 96) + 24));
  if (result)
  {
    v6 = result;
    if (mlir::DenseIntElementsAttr::classof(result))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::CropResize>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::CropResize::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

uint64_t mlir::anec::CropResize::populateDefaultAttrs(mlir::anec::CropResize *this, const mlir::OperationName *a2, mlir::NamedAttrList *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(*this + 96);
  Context = mlir::Attribute::getContext(v4);
  result = mlir::NamedAttrList::get(a2, v4[3]);
  if (!result)
  {
    v6 = v4[3];
    v13[0] = 2;
    IntegerType = mlir::Builder::getIntegerType(&Context, 64, 0);
    v8 = mlir::RankedTensorType::get(v13, 1, IntegerType, 0);
    if (v8)
    {
      v9 = v8;
      mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
      v8 = v9;
    }

    v12[2] = 0;
    v12[3] = 0;
    RawIntOrFloat = mlir::DenseElementsAttr::getRawIntOrFloat(v8);
    mlir::NamedAttribute::NamedAttribute(v12, v6, RawIntOrFloat);
    return mlir::NamedAttrList::push_back(a2, v12[0], v12[1]);
  }

  return result;
}

BOOL mlir::anec::CropResize::verifyInvariantsImpl(mlir::Operation **this)
{
  v72 = *MEMORY[0x277D85DE8];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (!v3)
  {
LABEL_5:
    v60[0] = "requires attribute 'background_value'";
    v61 = 259;
    mlir::OpState::emitOpError(this, v60, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v71 != 1)
    {
      return v7;
    }

    if (v70 != &v71)
    {
      free(v70);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v69;
      v10 = __p;
      if (v69 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v69 = v8;
      operator delete(v10);
    }

    v11 = v66;
    if (!v66)
    {
      goto LABEL_85;
    }

    v12 = v67;
    v13 = v66;
    if (v67 == v66)
    {
      goto LABEL_84;
    }

    do
    {
      v15 = *--v12;
      v14 = v15;
      *v12 = 0;
      if (v15)
      {
        MEMORY[0x259C63150](v14, 0x1000C8077774924);
      }
    }

    while (v12 != v11);
    goto LABEL_83;
  }

  v4 = Value;
  v5 = 0;
  v6 = 16 * v3;
  while (mlir::NamedAttribute::getName((v4 + v5)) != **(*(*this + 6) + 96))
  {
    v5 += 16;
    if (v6 == v5)
    {
      goto LABEL_5;
    }
  }

  v16 = v6 - v5;
  if (v6 == v5)
  {
LABEL_25:
    v60[0] = "requires attribute 'box_coordinate_mode'";
    v61 = 259;
    mlir::OpState::emitOpError(this, v60, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v71 != 1)
    {
      return v7;
    }

    if (v70 != &v71)
    {
      free(v70);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v69;
      v20 = __p;
      if (v69 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v69 = v18;
      operator delete(v20);
    }

    v11 = v66;
    if (!v66)
    {
      goto LABEL_85;
    }

    v21 = v67;
    v13 = v66;
    if (v67 == v66)
    {
      goto LABEL_84;
    }

    do
    {
      v23 = *--v21;
      v22 = v23;
      *v21 = 0;
      if (v23)
      {
        MEMORY[0x259C63150](v22, 0x1000C8077774924);
      }
    }

    while (v21 != v11);
    goto LABEL_83;
  }

  v17 = *(v4 + v5 + 8);
  while (mlir::NamedAttribute::getName((v4 + v5)) != *(*(*(*this + 6) + 96) + 8))
  {
    v16 -= 16;
    v5 += 16;
    if (v6 == v5)
    {
      goto LABEL_25;
    }
  }

  if (v6 == v5)
  {
LABEL_45:
    v60[0] = "requires attribute 'coordinate_mode'";
    v61 = 259;
    mlir::OpState::emitOpError(this, v60, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v71 != 1)
    {
      return v7;
    }

    if (v70 != &v71)
    {
      free(v70);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v69;
      v28 = __p;
      if (v69 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v69 = v26;
      operator delete(v28);
    }

    v11 = v66;
    if (!v66)
    {
      goto LABEL_85;
    }

    v29 = v67;
    v13 = v66;
    if (v67 == v66)
    {
      goto LABEL_84;
    }

    do
    {
      v31 = *--v29;
      v30 = v31;
      *v29 = 0;
      if (v31)
      {
        MEMORY[0x259C63150](v30, 0x1000C8077774924);
      }
    }

    while (v29 != v11);
LABEL_83:
    v13 = v66;
    goto LABEL_84;
  }

  v24 = 0;
  v25 = *(v4 + v5 + 8);
  while (mlir::NamedAttribute::getName((v4 + v5 + v24)) != *(*(*(*this + 6) + 96) + 16))
  {
    v24 += 16;
    if (v16 == v24)
    {
      goto LABEL_45;
    }
  }

  v32 = v16 - v24;
  if (v16 == v24)
  {
LABEL_67:
    v60[0] = "requires attribute 'normalized_range'";
    v61 = 259;
    mlir::OpState::emitOpError(this, v60, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v71 != 1)
    {
      return v7;
    }

    if (v70 != &v71)
    {
      free(v70);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v69;
      v38 = __p;
      if (v69 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v69 = v36;
      operator delete(v38);
    }

    v11 = v66;
    if (v66)
    {
      v39 = v67;
      v13 = v66;
      if (v67 != v66)
      {
        do
        {
          v41 = *--v39;
          v40 = v41;
          *v39 = 0;
          if (v41)
          {
            MEMORY[0x259C63150](v40, 0x1000C8077774924);
          }
        }

        while (v39 != v11);
        goto LABEL_83;
      }

LABEL_84:
      v67 = v11;
      operator delete(v13);
    }

LABEL_85:
    if (v64 != &v65)
    {
      free(v64);
    }

    return v7;
  }

  v33 = 0;
  v34 = *(v4 + v24 + v5 + 8);
  v35 = (v4 + v5 + v24 + 8);
  while (mlir::NamedAttribute::getName((v35 - 1)) != *(*(*(*this + 6) + 96) + 32))
  {
    if (mlir::NamedAttribute::getName((v35 - 1)) == *(*(*(*this + 6) + 96) + 24))
    {
      v33 = *v35;
    }

    v35 += 2;
    v32 -= 16;
    if (!v32)
    {
      goto LABEL_67;
    }
  }

  if (!v32)
  {
LABEL_92:
    v60[0] = "requires attribute 'output_dims'";
    v61 = 259;
    mlir::OpState::emitOpError(this, v60, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v71 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v63);
    }

    return v7;
  }

  v43 = 0;
  v44 = *v35;
  while (1)
  {
    v45 = &v35[v43 / 8];
    if (mlir::NamedAttribute::getName(&v35[v43 / 8 - 1]) == *(*(*(*this + 6) + 96) + 40))
    {
      break;
    }

    v43 += 16;
    if (v32 == v43)
    {
      goto LABEL_92;
    }
  }

  v46 = v32 - v43;
  if (v32 == v43)
  {
LABEL_100:
    v48 = "requires attribute 'padding_modes'";
LABEL_111:
    v60[0] = v48;
    v61 = 259;
    mlir::OpState::emitOpError(this, v60, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&AttrDictionary);
    return v7;
  }

  v47 = *v45;
  while (mlir::NamedAttribute::getName((v45 - 1)) != *(*(*(*this + 6) + 96) + 48))
  {
    v45 += 2;
    v46 -= 16;
    if (!v46)
    {
      goto LABEL_100;
    }
  }

  v59 = v47;
  if (!v46)
  {
LABEL_105:
    v48 = "requires attribute 'sampling_method'";
    goto LABEL_111;
  }

  v49 = 0;
  v58 = *v45;
  while (1)
  {
    v50 = &v45[v49 / 8];
    if (mlir::NamedAttribute::getName(&v45[v49 / 8 - 1]) == *(*(*(*this + 6) + 96) + 56))
    {
      break;
    }

    v49 += 16;
    if (v46 == v49)
    {
      goto LABEL_105;
    }
  }

  v51 = v46 - v49;
  if (!v51)
  {
LABEL_110:
    v48 = "requires attribute 'sampling_mode'";
    goto LABEL_111;
  }

  v54 = *v50;
  v53 = (v50 - 1);
  v52 = v54;
  while (mlir::NamedAttribute::getName(v53) != *(*(*(*this + 6) + 96) + 64))
  {
    v53 = (v53 + 16);
    v51 -= 16;
    if (!v51)
    {
      goto LABEL_110;
    }
  }

  v55 = *(v53 + 1);
  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps6(*this, v59, "output_dims", 11) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps6(*this, v33, "crop_dims", 9) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps19(*this, v25, "box_coordinate_mode", 0x13) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps20(*this, v34, "coordinate_mode", 15) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps21(*this, v44, "normalized_range", 16) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps22(*this, v55, "sampling_mode", 13) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps23(*this, v52, "sampling_method", 15) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps24(*this, v58, "padding_modes", 13) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(*this, v17, "background_value", 0x10) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps7(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps8(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v56 = *this - 16;
  }

  else
  {
    v56 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v56, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps19(mlir::Operation *a1, uint64_t a2, void **a3, void **a4)
{
  v31 = *MEMORY[0x277D85DE8];
  if (!a2 || (mlir::anec::BoxCoordinateModeAttr::classof(a2) & 1) != 0)
  {
    return 1;
  }

  v21 = 257;
  mlir::Operation::emitOpError(v22, a1, v20);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v22, "attribute '");
  if (*v9)
  {
    v21 = 261;
    v20[0] = a3;
    v20[1] = a4;
    v10 = v9;
    mlir::Diagnostic::operator<<((v9 + 1), v20);
    v9 = v10;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v9, "' failed to satisfy constraint: valid BoxCoordinateMode");
  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v28;
      v14 = __p;
      if (v28 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v28 = v12;
      operator delete(v14);
    }

    v15 = v25;
    if (v25)
    {
      v16 = v26;
      v17 = v25;
      if (v26 != v25)
      {
        do
        {
          v19 = *--v16;
          v18 = v19;
          *v16 = 0;
          if (v19)
          {
            MEMORY[0x259C63150](v18, 0x1000C8077774924);
          }
        }

        while (v16 != v15);
        v17 = v25;
      }

      v26 = v15;
      operator delete(v17);
    }

    if (v23 != &v24)
    {
      free(v23);
    }
  }

  return v7;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps20(mlir::Operation *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v31[0] = a2;
  v31[1] = v8;
  Type = mlir::ElementsAttr::getType(v31);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v32[0] = v10;
  v32[1] = Type;
  Shape = mlir::ShapedType::getShape(v32);
  v49 = 5;
  if (v12 == 1 && *Shape == v49)
  {
    v30 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v30);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v33, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34;
    if (v38 == v34)
    {
      return 1;
    }

    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_34;
        }

        MEMORY[0x259C63150](v35, 0x1000C8000313F17);
        if (v36 >= 0x41 && v35)
        {
          MEMORY[0x259C63150](v35, 0x1000C8000313F17);
LABEL_34:
          if (v29 >= 3)
          {
            break;
          }

          goto LABEL_35;
        }

        if (v29 > 2)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 3)
      {
        break;
      }

LABEL_35:
      if (++v41[0] == v26)
      {
        return 1;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(&v40, a1, &v37);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v13, "' failed to satisfy constraint: CoordinateMode elements attribute of shape {5}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
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
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps21(mlir::Operation *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v31[0] = a2;
  v31[1] = v8;
  Type = mlir::ElementsAttr::getType(v31);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v32[0] = v10;
  v32[1] = Type;
  Shape = mlir::ShapedType::getShape(v32);
  v49 = 5;
  if (v12 == 1 && *Shape == v49)
  {
    v30 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v30);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v33, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34;
    if (v38 == v34)
    {
      return 1;
    }

    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_34;
        }

        MEMORY[0x259C63150](v35, 0x1000C8000313F17);
        if (v36 >= 0x41 && v35)
        {
          MEMORY[0x259C63150](v35, 0x1000C8000313F17);
LABEL_34:
          if (v29 >= 2)
          {
            break;
          }

          goto LABEL_35;
        }

        if (v29 > 1)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 2)
      {
        break;
      }

LABEL_35:
      if (++v41[0] == v26)
      {
        return 1;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(&v40, a1, &v37);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v13, "' failed to satisfy constraint: NormalizedCoordinateRange elements attribute of shape {5}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
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
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps22(mlir::Operation *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v31[0] = a2;
  v31[1] = v8;
  Type = mlir::ElementsAttr::getType(v31);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v32[0] = v10;
  v32[1] = Type;
  Shape = mlir::ShapedType::getShape(v32);
  v49 = 5;
  if (v12 == 1 && *Shape == v49)
  {
    v30 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v30);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v33, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34;
    if (v38 == v34)
    {
      return 1;
    }

    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_34;
        }

        MEMORY[0x259C63150](v35, 0x1000C8000313F17);
        if (v36 >= 0x41 && v35)
        {
          MEMORY[0x259C63150](v35, 0x1000C8000313F17);
LABEL_34:
          if (v29 >= 6)
          {
            break;
          }

          goto LABEL_35;
        }

        if (v29 > 5)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 6)
      {
        break;
      }

LABEL_35:
      if (++v41[0] == v26)
      {
        return 1;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(&v40, a1, &v37);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v13, "' failed to satisfy constraint: SamplingGridMode elements attribute of shape {5}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
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
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps23(mlir::Operation *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v31[0] = a2;
  v31[1] = v8;
  Type = mlir::ElementsAttr::getType(v31);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v32[0] = v10;
  v32[1] = Type;
  Shape = mlir::ShapedType::getShape(v32);
  v49 = 5;
  if (v12 == 1 && *Shape == v49)
  {
    v30 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v30);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v33, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34;
    if (v38 == v34)
    {
      return 1;
    }

    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_34;
        }

        MEMORY[0x259C63150](v35, 0x1000C8000313F17);
        if (v36 >= 0x41 && v35)
        {
          MEMORY[0x259C63150](v35, 0x1000C8000313F17);
LABEL_34:
          if (v29 >= 2)
          {
            break;
          }

          goto LABEL_35;
        }

        if (v29 > 1)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 2)
      {
        break;
      }

LABEL_35:
      if (++v41[0] == v26)
      {
        return 1;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(&v40, a1, &v37);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v13, "' failed to satisfy constraint: SamplingGridMethod elements attribute of shape {5}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
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
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps24(mlir::Operation *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v31[0] = a2;
  v31[1] = v8;
  Type = mlir::ElementsAttr::getType(v31);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v32[0] = v10;
  v32[1] = Type;
  Shape = mlir::ShapedType::getShape(v32);
  v49 = 5;
  if (v12 == 1 && *Shape == v49)
  {
    v30 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v30);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v33, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34;
    if (v38 == v34)
    {
      return 1;
    }

    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_34;
        }

        MEMORY[0x259C63150](v35, 0x1000C8000313F17);
        if (v36 >= 0x41 && v35)
        {
          MEMORY[0x259C63150](v35, 0x1000C8000313F17);
LABEL_34:
          if (v29 >= 9)
          {
            break;
          }

          goto LABEL_35;
        }

        if (v29 > 8)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 9)
      {
        break;
      }

LABEL_35:
      if (++v41[0] == v26)
      {
        return 1;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(&v40, a1, &v37);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v13, "' failed to satisfy constraint: PaddingMode elements attribute of shape {5}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
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
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

uint64_t mlir::anec::__mlir_ods_local_type_constraint_ANECOps7(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v53 = *MEMORY[0x277D85DE8];
  v10 = *a2;
  if (*(*a2 + 17) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v44[0] = a2;
    v44[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    ElementType = mlir::ShapedType::getElementType(v44);
    if (mlir::Type::isF16(&ElementType) || mlir::Type::isSignedInteger(&ElementType, 8) || mlir::Type::isUnsignedInteger(&ElementType, 8) || mlir::Type::isSignedInteger(&ElementType, 4))
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v38 = a2;
      v39 = v11;
      if (mlir::ShapedType::hasRank(&v38))
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        *&v42 = a2;
        *(&v42 + 1) = v12;
        mlir::ShapedType::getShape(&v42);
        if (v13 == 5)
        {
          return 1;
        }
      }
    }
  }

  v40 = 261;
  v38 = a3;
  v39 = a4;
  mlir::Operation::emitOpError(v44, a1, &v38);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v44, " #");
  if (*v15)
  {
    v16 = *(v15 + 24);
    LODWORD(v42) = 5;
    *(&v42 + 1) = a5;
    v17 = *(v15 + 32);
    if (v17 >= *(v15 + 36))
    {
      if (v16 > &v42 || v16 + 24 * v17 <= &v42)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = v16 + 24 * *(v15 + 32);
    v19 = v42;
    *(v18 + 16) = v43;
    *v18 = v19;
    v20 = *(v15 + 32) + 1;
    *(v15 + 32) = v20;
    if (*v15)
    {
      LODWORD(v42) = 3;
      *(&v42 + 1) = " must be 5D memref of 16-bit float or 8-bit signed integer or 8-bit unsigned integer or 4-bit signed integer values, but got ";
      v43 = 125;
      v21 = *(v15 + 24);
      if (v20 >= *(v15 + 36))
      {
        if (v21 > &v42 || v21 + 24 * v20 <= &v42)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v21 + 24 * *(v15 + 32);
      v23 = v42;
      *(v22 + 16) = v43;
      *v22 = v23;
      ++*(v15 + 32);
      if (*v15)
      {
        v24 = v15;
        mlir::DiagnosticArgument::DiagnosticArgument(&v42, a2);
        v15 = v24;
        v25 = *(v24 + 32);
        v26 = *(v24 + 24);
        if (v25 >= *(v24 + 36))
        {
          if (v26 > &v42 || v26 + 24 * v25 <= &v42)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v27 = v26 + 24 * *(v24 + 32);
        v28 = v42;
        *(v27 + 16) = v43;
        *v27 = v28;
        ++*(v24 + 32);
      }
    }
  }

  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v44[0])
  {
    mlir::InFlightDiagnostic::report(v44);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v50;
      v31 = __p;
      if (v50 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v50 = v29;
      operator delete(v31);
    }

    v32 = v47;
    if (v47)
    {
      v33 = v48;
      v34 = v47;
      if (v48 != v47)
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
        v34 = v47;
      }

      v48 = v32;
      operator delete(v34);
    }

    if (v45 != &v46)
    {
      free(v45);
    }
  }

  return v14;
}

uint64_t mlir::anec::__mlir_ods_local_type_constraint_ANECOps8(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v52 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  if (*(*a2 + 17) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v10 = a1;
    v43[0] = a2;
    v43[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v9 + 8);
    ElementType = mlir::ShapedType::getElementType(v43);
    isF16 = mlir::Type::isF16(&ElementType);
    a1 = v10;
    if (isF16)
    {
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v37 = a2;
      v38 = v12;
      hasRank = mlir::ShapedType::hasRank(&v37);
      a1 = v10;
      if (hasRank)
      {
        v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        *&v41 = a2;
        *(&v41 + 1) = v14;
        mlir::ShapedType::getShape(&v41);
        a1 = v10;
        if (v15 == 5)
        {
          return 1;
        }
      }
    }
  }

  v39 = 261;
  v37 = a3;
  v38 = a4;
  mlir::Operation::emitOpError(v43, a1, &v37);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v43, " #");
  if (*v17)
  {
    v18 = *(v17 + 24);
    LODWORD(v41) = 5;
    *(&v41 + 1) = a5;
    v19 = *(v17 + 32);
    if (v19 >= *(v17 + 36))
    {
      if (v18 > &v41 || v18 + 24 * v19 <= &v41)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v20 = v18 + 24 * *(v17 + 32);
    v21 = v41;
    *(v20 + 16) = v42;
    *v20 = v21;
    ++*(v17 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v17, " must be 5D memref of 16-bit float values, but got ");
  if (*v22)
  {
    v23 = v22;
    mlir::DiagnosticArgument::DiagnosticArgument(&v41, a2);
    v22 = v23;
    v24 = v23[3];
    v25 = *(v23 + 8);
    if (v25 >= *(v23 + 9))
    {
      if (v24 > &v41 || v24 + 24 * v25 <= &v41)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v26 = v24 + 24 * *(v23 + 8);
    v27 = v41;
    *(v26 + 16) = v42;
    *v26 = v27;
    ++*(v23 + 8);
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  if (v43[0])
  {
    mlir::InFlightDiagnostic::report(v43);
  }

  if (v51 == 1)
  {
    if (v50 != &v51)
    {
      free(v50);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v49;
      v30 = __p;
      if (v49 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v49 = v28;
      operator delete(v30);
    }

    v31 = v46;
    if (v46)
    {
      v32 = v47;
      v33 = v46;
      if (v47 != v46)
      {
        do
        {
          v35 = *--v32;
          v34 = v35;
          *v32 = 0;
          if (v35)
          {
            MEMORY[0x259C63150](v34, 0x1000C8077774924);
          }
        }

        while (v32 != v31);
        v33 = v46;
      }

      v47 = v31;
      operator delete(v33);
    }

    if (v44 != &v45)
    {
      free(v44);
    }
  }

  return v16;
}

BOOL mlir::anec::DeQuant::verifyInvariantsImpl(mlir::Operation **this)
{
  v37 = *MEMORY[0x277D85DE8];
  v28[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v28);
  if (!v3)
  {
LABEL_5:
    v26[0] = "requires attribute 'scale'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
    }

    if (v36 != 1)
    {
      return v6;
    }

    if (v35 != &v36)
    {
      free(v35);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v34;
      v9 = __p;
      if (v34 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v34 = v7;
      operator delete(v9);
    }

    v10 = v31;
    if (v31)
    {
      v11 = v32;
      v12 = v31;
      if (v32 != v31)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x259C63150](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
LABEL_41:
        v12 = v31;
      }

LABEL_42:
      v32 = v10;
      operator delete(v12);
    }

LABEL_43:
    if (v29 != &v30)
    {
      free(v29);
    }

    return v6;
  }

  v4 = Value;
  v5 = 16 * v3;
  while (mlir::NamedAttribute::getName(v4) != **(*(*this + 6) + 96))
  {
    v4 = (v4 + 16);
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (!v5)
  {
LABEL_25:
    v26[0] = "requires attribute 'zero_point'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
    }

    if (v36 != 1)
    {
      return v6;
    }

    if (v35 != &v36)
    {
      free(v35);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v34;
      v18 = __p;
      if (v34 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v34 = v16;
      operator delete(v18);
    }

    v10 = v31;
    if (v31)
    {
      v19 = v32;
      v12 = v31;
      if (v32 != v31)
      {
        do
        {
          v21 = *--v19;
          v20 = v21;
          *v19 = 0;
          if (v21)
          {
            MEMORY[0x259C63150](v20, 0x1000C8077774924);
          }
        }

        while (v19 != v10);
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v15 = *(v4 + 1);
  while (mlir::NamedAttribute::getName(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    v4 = (v4 + 16);
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  v22 = *(v4 + 1);
  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps11(*this, v15, "scale", 5) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps12(*this, v22, "zero_point", 0xA) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v23 = *this - 16;
  }

  else
  {
    v23 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Deconvolution>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::Deconvolution::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

uint64_t mlir::anec::ElementwiseAdd::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ElementwiseEqual>::inferReturnTypes(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33[6] = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = v33;
  v32 = 0x600000000;
  v29 = a4;
  if (a5)
  {
    v16 = 0;
    while (1)
    {
      v17 = (*(mlir::ValueRange::dereference_iterator(&v29, v16) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8))
      {
        break;
      }

      v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
      if (!v17)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v17, v18);
      if (v32 >= HIDWORD(v32))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v31 + v32) = RankPromotionTypeForANE;
      v20 = (v32 + 1);
      LODWORD(v32) = v32 + 1;
      v16 = v30 + 1;
      v30 = v16;
      if (v16 == a5)
      {
        v22 = v31;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v20 = 0;
    v22 = v33;
LABEL_13:
    mlir::TypeRange::TypeRange(&v29, v22, v20);
    result = mlir::anec::inferElementwiseCompareReturnTypes(a1, v23, v24, a4, a5, v25, v26, v27, v29, v30, a11);
  }

  if (v31 != v33)
  {
    v28 = result;
    free(v31);
    return v28;
  }

  return result;
}

BOOL mlir::anec::Elu::verifyInvariantsImpl(mlir::Operation **this)
{
  v29 = *MEMORY[0x277D85DE8];
  v20[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v20);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (mlir::NamedAttribute::getName(v4) != **(*(*this + 6) + 96))
    {
      v4 += 2;
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(*this, v4[1], "alpha", 5) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v15 = *this - 16;
      }

      else
      {
        v15 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v18 = "requires attribute 'alpha'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v26;
        v9 = __p;
        if (v26 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v26 = v7;
        operator delete(v9);
      }

      v10 = v23;
      if (v23)
      {
        v11 = v24;
        v12 = v23;
        if (v24 != v23)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              MEMORY[0x259C63150](v13, 0x1000C8077774924);
            }
          }

          while (v11 != v10);
          v12 = v23;
        }

        v24 = v10;
        operator delete(v12);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v6;
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Flatten>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::Flatten::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

BOOL mlir::anec::Flatten::verifyInvariantsImpl(mlir::Operation **this)
{
  v29 = *MEMORY[0x277D85DE8];
  v20[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v20);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (mlir::NamedAttribute::getName(v4) != **(*(*this + 6) + 96))
    {
      v4 += 2;
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps26(*this, v4[1], "flatten_mode", 0xC) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v15 = *this - 16;
      }

      else
      {
        v15 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v18 = "requires attribute 'flatten_mode'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v26;
        v9 = __p;
        if (v26 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v26 = v7;
        operator delete(v9);
      }

      v10 = v23;
      if (v23)
      {
        v11 = v24;
        v12 = v23;
        if (v24 != v23)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              MEMORY[0x259C63150](v13, 0x1000C8077774924);
            }
          }

          while (v11 != v10);
          v12 = v23;
        }

        v24 = v10;
        operator delete(v12);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v6;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps26(mlir::Operation *a1, void **a2, void **a3, void **a4)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 17) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v25[0] = a2;
    v6 = a1;
    v27[0] = mlir::IntegerAttr::getType(v25);
    isSignlessInteger = mlir::Type::isSignlessInteger(v27, 64);
    a1 = v6;
    if (isSignlessInteger)
    {
      v24 = a2;
      if (mlir::IntegerAttr::getInt(&v24) == 1)
      {
        return 1;
      }

      v23 = a2;
      v9 = mlir::IntegerAttr::getInt(&v23) == 2;
      a1 = v6;
      if (v9)
      {
        return 1;
      }
    }
  }

  v26 = 257;
  mlir::Operation::emitOpError(v27, a1, v25);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v27, "attribute '");
  if (*v11)
  {
    v26 = 261;
    v25[0] = a3;
    v25[1] = a4;
    v12 = v11;
    mlir::Diagnostic::operator<<((v11 + 1), v25);
    v11 = v12;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v11, "' failed to satisfy constraint: valid FlattenMode");
  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
  if (v27[0])
  {
    mlir::InFlightDiagnostic::report(v27);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v33;
      v16 = __p;
      if (v33 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v33 = v14;
      operator delete(v16);
    }

    v17 = v30;
    if (v30)
    {
      v18 = v31;
      v19 = v30;
      if (v31 != v30)
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
        v19 = v30;
      }

      v31 = v17;
      operator delete(v19);
    }

    if (v28 != &v29)
    {
      free(v28);
    }
  }

  return v10;
}

uint64_t mlir::anec::GOC::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a5;
  v12 = a4;
  v10 = a6;
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v10, 1uLL);
  v9 = *(a2 + 72);
  if (v9 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
  return result;
}

uint64_t mlir::anec::GOC::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::anec::__mlir_ods_local_type_constraint_ANECOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps3(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::GatherND>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::GatherND::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

BOOL mlir::anec::GatherND::verifyInvariantsImpl(mlir::Operation **this)
{
  v57 = *MEMORY[0x277D85DE8];
  v48[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v48);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (1)
    {
      Name = mlir::NamedAttribute::getName(v4);
      v7 = *this;
      if (Name == **(*(*this + 6) + 96))
      {
        break;
      }

      v4 = (v4 + 16);
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v17 = *(v4 + 1);
    if (v17)
    {
      if (!mlir::DenseIntElementsAttr::classof(v17))
      {
        goto LABEL_29;
      }

      v18 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v17 + 8);
      *&v45 = v17;
      *(&v45 + 1) = v18;
      Type = mlir::ElementsAttr::getType(&v45);
      v20 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v48[0] = v20;
      v48[1] = Type;
      mlir::ShapedType::getShape(v48);
      if (v21 != 1 || !mlir::hasUniqueValues(v17) || (v44 = v17, !mlir::DenseElementsAttr::getNumElements(&v44)) || (v41 = v17, v42[0] = mlir::DenseElementsAttr::getType(&v41), v42[1] = v22, ElementType = mlir::ShapedType::getElementType(v42), !mlir::Type::isUnsignedInteger(&ElementType, 64)))
      {
LABEL_29:
        v47 = 257;
        mlir::Operation::emitOpError(v48, v7, &v45);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v48, "attribute '");
        if (*v23)
        {
          v47 = 261;
          *&v45 = "axes";
          *(&v45 + 1) = 4;
          v24 = v23;
          mlir::Diagnostic::operator<<((v23 + 1), &v45);
          v23 = v24;
          if (*v24)
          {
            v25 = v24[3];
            LODWORD(v45) = 3;
            *(&v45 + 1) = "' failed to satisfy constraint: ui64 unique not empty elements attribute of ranks 1";
            v46 = 83;
            v26 = *(v24 + 8);
            if (v26 >= *(v24 + 9))
            {
              if (v25 > &v45 || v25 + 24 * v26 <= &v45)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v27 = v25 + 24 * *(v24 + 8);
            v28 = v45;
            *(v27 + 16) = v46;
            *v27 = v28;
            ++*(v24 + 8);
          }
        }

        v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
        if (v48[0])
        {
          mlir::InFlightDiagnostic::report(v48);
        }

        if (v56 == 1)
        {
          if (v55 != &v56)
          {
            free(v55);
          }

          v30 = __p;
          if (__p)
          {
            v31 = v54;
            v32 = __p;
            if (v54 != __p)
            {
              do
              {
                v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
              }

              while (v31 != v30);
              v32 = __p;
            }

            v54 = v30;
            operator delete(v32);
          }

          v33 = v51;
          if (v51)
          {
            v34 = v52;
            v35 = v51;
            if (v52 != v51)
            {
              do
              {
                v37 = *--v34;
                v36 = v37;
                *v34 = 0;
                if (v37)
                {
                  MEMORY[0x259C63150](v36, 0x1000C8077774924);
                }
              }

              while (v34 != v33);
              v35 = v51;
            }

            v52 = v33;
            operator delete(v35);
          }

          if (v49 != v50)
          {
            free(v49);
          }
        }

        if (!v29)
        {
          return 0;
        }
      }
    }

    if (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
      if (*(*this + 9))
      {
        v38 = *this - 16;
      }

      else
      {
        v38 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v38, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    *&v45 = "requires attribute 'axes'";
    v47 = 259;
    mlir::OpState::emitOpError(this, &v45, v48);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
    if (v48[0])
    {
      mlir::InFlightDiagnostic::report(v48);
    }

    if (v56 == 1)
    {
      if (v55 != &v56)
      {
        free(v55);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v54;
        v11 = __p;
        if (v54 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v54 = v9;
        operator delete(v11);
      }

      v12 = v51;
      if (v51)
      {
        v13 = v52;
        v14 = v51;
        if (v52 != v51)
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
          v14 = v51;
        }

        v52 = v12;
        operator delete(v14);
      }

      if (v49 != v50)
      {
        free(v49);
      }
    }
  }

  return v8;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::GlobalArgMinMax>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::GlobalArgMinMax::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

BOOL mlir::anec::GlobalArgMinMax::verifyInvariantsImpl(mlir::Operation **this)
{
  v51 = *MEMORY[0x277D85DE8];
  v42[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v42);
  if (!v3)
  {
LABEL_5:
    v40[0] = "requires attribute 'axis'";
    v41 = 259;
    mlir::OpState::emitOpError(this, v40, v42);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
    if (v42[0])
    {
      mlir::InFlightDiagnostic::report(v42);
    }

    if (v50 != 1)
    {
      return v6;
    }

    if (v49 != &v50)
    {
      free(v49);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v48;
      v9 = __p;
      if (v48 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v48 = v7;
      operator delete(v9);
    }

    v10 = v45;
    if (v45)
    {
      v11 = v46;
      v12 = v45;
      if (v46 != v45)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x259C63150](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
LABEL_41:
        v12 = v45;
      }

LABEL_42:
      v46 = v10;
      operator delete(v12);
    }

LABEL_43:
    if (v43 != v44)
    {
      free(v43);
    }

    return v6;
  }

  v4 = Value;
  v5 = 16 * v3;
  while (mlir::NamedAttribute::getName(v4) != **(*(*this + 6) + 96))
  {
    v4 = (v4 + 16);
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (!v5)
  {
LABEL_25:
    v40[0] = "requires attribute 'mode'";
    v41 = 259;
    mlir::OpState::emitOpError(this, v40, v42);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
    if (v42[0])
    {
      mlir::InFlightDiagnostic::report(v42);
    }

    if (v50 != 1)
    {
      return v6;
    }

    if (v49 != &v50)
    {
      free(v49);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v48;
      v20 = __p;
      if (v48 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v48 = v18;
      operator delete(v20);
    }

    v10 = v45;
    if (v45)
    {
      v21 = v46;
      v12 = v45;
      if (v46 != v45)
      {
        do
        {
          v23 = *--v21;
          v22 = v23;
          *v21 = 0;
          if (v23)
          {
            MEMORY[0x259C63150](v22, 0x1000C8077774924);
          }
        }

        while (v21 != v10);
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v15 = *(v4 + 1);
  while (1)
  {
    Name = mlir::NamedAttribute::getName(v4);
    v17 = *this;
    if (Name == *(*(*(*this + 6) + 96) + 8))
    {
      break;
    }

    v4 = (v4 + 16);
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  v24 = *(v4 + 1);
  if (v15)
  {
    if (*(*v15 + 17) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v40[0] = v15, v42[0] = mlir::IntegerAttr::getType(v40), !mlir::Type::isUnsignedInteger(v42, 32)))
    {
      v41 = 257;
      mlir::Operation::emitOpError(v42, v17, v40);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v42, "attribute '");
      if (*v25)
      {
        v41 = 261;
        v40[0] = "axis";
        v40[1] = 4;
        v26 = v25;
        mlir::Diagnostic::operator<<((v25 + 1), v40);
        v25 = v26;
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v25, "' failed to satisfy constraint: 32-bit unsigned integer attribute");
      v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
      if (v42[0])
      {
        mlir::InFlightDiagnostic::report(v42);
      }

      if (v50 == 1)
      {
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

        v32 = v45;
        if (v45)
        {
          v33 = v46;
          v34 = v45;
          if (v46 != v45)
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
            v34 = v45;
          }

          v46 = v32;
          operator delete(v34);
        }

        if (v43 != v44)
        {
          free(v43);
        }
      }

      if (!v28)
      {
        return 0;
      }
    }
  }

  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps5(*this, v24, "mode", 4) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v37 = *this - 16;
  }

  else
  {
    v37 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v37, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}