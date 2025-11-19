void *mlir::anec::Padding::getBackgroundValue@<X0>(mlir::Operation **this@<X0>, uint64_t a2@<X8>)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6 - 32), **(*(*this + 6) + 96));
  return mlir::FloatAttr::getValue(&AttrDictionary, a2);
}

BOOL mlir::anec::Padding::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::Padding::getZinIrUnitInfo();
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

BOOL mlir::anec::Padding::verifyWithANEC(mlir::Operation **a1, uint64_t a2, unint64_t a3)
{
  v82 = *MEMORY[0x277D85DE8];
  v69 = v71;
  v70 = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v7 = mlir::DictionaryAttr::getValue(buffer);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v7 + 16 * v8 - 16), *(*(*(*a1 + 6) + 96) + 8));
  mlir::getValues<unsigned long>(v9, &v69);
  v67[0] = v68;
  v67[1] = 0x300000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v10 = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v11 = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v10 + 32), (v11 + 16 * v12), *(*(*(*a1 + 6) + 96) + 16));
  mlir::getListOfPairs<unsigned long long>(buffer, v67);
  ANECPadLayerDescInitialize();
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v13 = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v14 = mlir::DictionaryAttr::getValue(buffer);
  v58 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v13, (v14 + 16 * v15 - 32), **(*(*a1 + 6) + 96));
  v16 = mlir::FloatAttr::getValue(&v58, buffer);
  v17 = v73[0];
  v18 = llvm::APFloatBase::PPCDoubleDouble(v16);
  if (v18 == v17)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(v73, &v58);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(v73, &v58);
  }

  v19 = v59;
  if (v59 >= 0x41)
  {
    if (v19 - llvm::APInt::countLeadingZerosSlowCase(&v58) <= 0x40)
    {
      _H0 = *v58;
      __asm { FCVT            S0, H0 }

      if (*v58 >> 16)
      {
        _S0 = NAN;
      }

      v57 = LODWORD(_S0);
    }

    else
    {
      v57 = -8192;
      if (!v58)
      {
        goto LABEL_15;
      }
    }

    MEMORY[0x259C63150](v58, 0x1000C8000313F17);
    goto LABEL_15;
  }

  if (v58 < 0x10000)
  {
    _H0 = v58;
    __asm { FCVT            S0, H0 }

    v57 = _S0;
  }

  else
  {
    v57 = -8192;
  }

LABEL_15:
  if (v18 != v73[0])
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v73);
    v28 = v70;
    if (v70)
    {
      goto LABEL_17;
    }

LABEL_23:
    v36 = 0;
    goto LABEL_24;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v73);
  v28 = v70;
  if (!v70)
  {
    goto LABEL_23;
  }

LABEL_17:
  v29 = 0;
  v30 = 0;
  v31 = v69;
  do
  {
    if (v31[v29] != 8)
    {
      v31 = v69;
      v33 = off_27983A090[*(v69 + v29)];
      v34 = v67[0];
      v35 = &v56[3 * v30];
      *v35 = ANECDimension;
      v35[1] = v33;
      v35[2] = vmovn_s64(v34[v29]);
      v28 = v70;
      ++v30;
    }

    ++v29;
  }

  while (v29 < v28);
  v36 = v30;
LABEL_24:
  v55 = v36;
  v65[0] = v66;
  v65[1] = 0x100000000;
  *buffer = 1;
  v58 = 0;
  ANECUnitValidatorCreate();
  v53 = 0;
  v54 = 0;
  if (ANECValidatePadLayer())
  {
    v37 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v58);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v60, "Invalid configuration", 21);
    std::stringbuf::str();
    v58 = *MEMORY[0x277D82818];
    v38 = *(MEMORY[0x277D82818] + 72);
    *(&v58 + *(v58 - 3)) = *(MEMORY[0x277D82818] + 64);
    v60 = v38;
    v61 = MEMORY[0x277D82878] + 16;
    if (v63 < 0)
    {
      operator delete(v62[7].__locale_);
    }

    v61 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v62);
    std::iostream::~basic_iostream();
    MEMORY[0x259C630C0](&v64);
    v52 = 260;
    v51 = &v49;
    v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v81 == 1)
    {
      if (v80 != &v81)
      {
        free(v80);
      }

      v40 = v78;
      if (v78)
      {
        v41 = v79;
        v42 = v78;
        if (v79 != v78)
        {
          do
          {
            v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
          }

          while (v41 != v40);
          v42 = v78;
        }

        v79 = v40;
        operator delete(v42);
      }

      v43 = v76;
      if (v76)
      {
        v44 = v77;
        v45 = v76;
        if (v77 != v76)
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
          v45 = v76;
        }

        v77 = v43;
        operator delete(v45);
      }

      if (v74 != &v75)
      {
        free(v74);
      }
    }

    if (v50 < 0)
    {
      operator delete(v49);
    }
  }

  else
  {
    v39 = 1;
  }

  ANECUnitValidatorDelete();
  if (v65[0] != v66)
  {
    free(v65[0]);
  }

  if (v67[0] != v68)
  {
    free(v67[0]);
  }

  if (v69 != v71)
  {
    free(v69);
  }

  return v39;
}

uint64_t mlir::anec::MatMul::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v58 = *MEMORY[0x277D85DE8];
  v51 = a6;
  v52[0] = 0;
  v53 = 0;
  v54 = a7;
  v55 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v51);
    if (v53 == 1)
    {
      v53 = 0;
    }

    mlir::OperationName::OperationName(v52, "anec.matmul", 11, Context);
    v53 = 1;
    a1 = v15;
  }

  v56 = a4;
  v57 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if ((mlir::anec::MatMulAdaptor::verify(&v51, v18) & 1) == 0)
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v46[0] = v20;
  v46[1] = v19;
  v21 = mlir::TypeRange::dereference_iterator(a9, 1);
  v22 = v21;
  if (v21)
  {
    v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
  }

  v45[0] = v22;
  v45[1] = v21;
  Shape = mlir::ShapedType::getShape(v46);
  v24 = mlir::ShapedType::getShape(v45);
  mlir::ShapedType::getShape(v46);
  v26 = v25;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v25);
  v28 = mlir::anec::getIndexFromDim(2, v26);
  v30 = v29;
  v31 = 1;
  v32 = mlir::anec::getIndexFromDim(1, v26);
  v33 = mlir::anec::getIndexFromDim(3, v26);
  v34 = mlir::anec::getIndexFromDim(4, v26);
  v47 = v50;
  v35 = *(Shape + 8 * IndexFromDim);
  v49 = 5;
  if (v35 == 1)
  {
    v36 = v24;
  }

  else
  {
    v36 = Shape;
  }

  v50[0] = *(v36 + 8 * IndexFromDim);
  if (v30)
  {
    v50[1] = *(Shape + 8 * v28);
    v31 = 2;
  }

  v37 = *(Shape + 8 * v33);
  v50[v31] = *(Shape + 8 * v32);
  if (v37 == 1)
  {
    v38 = v24;
  }

  else
  {
    v38 = Shape;
  }

  v50[v31 + 1] = *(v38 + 8 * v33);
  v48 = v31 + 2;
  if (v31 + 2 >= v49)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v47 + (v31 + 2)) = *(v24 + 8 * v34);
  v39 = ++v48;
  v40 = v47;
  ElementType = mlir::ShapedType::getElementType(v46);
  v42 = mlir::MemRefType::get(v40, v39, ElementType, 0, 0, 0);
  v43 = *(a11 + 8);
  if (v43 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v43) = v42;
  ++*(a11 + 8);
  if (v47 != v50)
  {
    free(v47);
  }

  return 1;
}

uint64_t mlir::anec::MatMulAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v18 = *a1;
  v4 = mlir::DictionaryAttr::begin(&v18);
  if (v4 == mlir::DictionaryAttr::end(&v18))
  {
    return 1;
  }

  v5 = 0;
  do
  {
    if (mlir::NamedAttribute::getName(v4) == **(a1[1] + 96))
    {
      v5 = *(v4 + 1);
    }

    v4 = (v4 + 16);
  }

  while (v4 != mlir::DictionaryAttr::end(&v18));
  if (!v5)
  {
    return 1;
  }

  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v16[0] = v5;
    v19[0] = mlir::FloatAttr::getType(v16);
    if (mlir::Type::isF16(v19))
    {
      return 1;
    }
  }

  v16[0] = "'anec.matmul' op attribute 'bias' failed to satisfy constraint: 16-bit float attribute";
  v17 = 259;
  mlir::emitError(a2, v16, v19);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v25;
      v10 = __p;
      if (v25 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v25 = v8;
      operator delete(v10);
    }

    v11 = v22;
    if (v22)
    {
      v12 = v23;
      v13 = v22;
      if (v23 != v22)
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
        v13 = v22;
      }

      v23 = v11;
      operator delete(v13);
    }

    if (v20 != &v21)
    {
      free(v20);
    }
  }

  return v6;
}

void mlir::anec::MatMul::getBias(mlir::Operation **this@<X0>, uint64_t a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  BiasAttr = mlir::anec::MatMul::getBiasAttr(this);
  if (BiasAttr)
  {
    Value = mlir::FloatAttr::getValue(&BiasAttr, v7);
    v4 = v8.n128_u64[0];
    v5 = llvm::APFloatBase::PPCDoubleDouble(Value);
    if (v5 == v4)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat((a2 + 8), &v8);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(a2 + 8, &v8);
    }

    *(a2 + 32) = 1;
    if (v5 == v8.n128_u64[0])
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v8);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v8);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 32) = 0;
  }
}

BOOL mlir::anec::MatMul::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::MatMul::getZinIrUnitInfo();
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

BOOL mlir::anec::MatMul::verifyWithANEC(mlir::Operation **a1, uint64_t a2, unint64_t a3)
{
  v54 = *MEMORY[0x277D85DE8];
  ANECMatrixMultLayerDescInitialize();
  if (*(*a1 + 9))
  {
    v6 = *a1 - 16;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v32[0] = v7;
  v32[1] = v8;
  mlir::anec::MatMul::getBias(a1, buffer);
  v33 = v46;
  if (v46 == 1)
  {
    v10 = v44[0];
    if (llvm::APFloatBase::PPCDoubleDouble(v9) == v10)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v44);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v44);
    }
  }

  mlir::ShapedType::getShape(v32);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v11);
  if ((v13 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v34 = *(mlir::ShapedType::getShape(v32) + 8 * IndexFromDim);
  v41[0] = v42;
  v41[1] = 0x100000000;
  *buffer = 1;
  v35[0] = 0;
  ANECUnitValidatorCreate();
  v30 = 0;
  v31 = 0;
  if (ANECValidateMatrixMultLayer())
  {
    v14 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v35);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v36, "Invalid configuration", 21);
    std::stringbuf::str();
    v35[0] = *MEMORY[0x277D82818];
    v15 = *(MEMORY[0x277D82818] + 72);
    *(v35 + *(v35[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v36 = v15;
    v37 = MEMORY[0x277D82878] + 16;
    if (v39 < 0)
    {
      operator delete(v38[7].__locale_);
    }

    v37 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v38);
    std::iostream::~basic_iostream();
    MEMORY[0x259C630C0](&v40);
    v29 = 260;
    v28 = &v26;
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v53 == 1)
    {
      if (v52 != &v53)
      {
        free(v52);
      }

      v17 = v50;
      if (v50)
      {
        v18 = v51;
        v19 = v50;
        if (v51 != v50)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = v50;
        }

        v51 = v17;
        operator delete(v19);
      }

      v20 = v48;
      if (v48)
      {
        v21 = v49;
        v22 = v48;
        if (v49 != v48)
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
          v22 = v48;
        }

        v49 = v20;
        operator delete(v22);
      }

      if (v45 != &v47)
      {
        free(v45);
      }
    }

    if (v27 < 0)
    {
      operator delete(v26);
    }
  }

  else
  {
    v16 = 1;
  }

  ANECUnitValidatorDelete();
  if (v41[0] != v42)
  {
    free(v41[0]);
  }

  return v16;
}

uint64_t mlir::anec::Flatten::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v59 = *MEMORY[0x277D85DE8];
  v52 = a6;
  v53[0] = 0;
  v54 = 0;
  v55 = a7;
  v56 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v52);
    if (v54 == 1)
    {
      v54 = 0;
    }

    mlir::OperationName::OperationName(v53, "anec.flatten", 12, Context);
    v54 = 1;
    a1 = v15;
  }

  v57 = a4;
  v58 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if ((mlir::anec::FlattenAdaptor::verify(&v52, v18) & 1) == 0)
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v45[0] = v20;
  v45[1] = v19;
  Shape = mlir::ShapedType::getShape(v45);
  v22 = mlir::ShapedType::getShape(v45);
  v24 = (v22 + 8 * v23);
  v49 = v51;
  v50 = 0x500000000;
  if (((v24 - Shape) >> 3) >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v26 = 0;
  if (v24 != Shape)
  {
    memcpy(v49, Shape, v24 - Shape);
    v26 = v50;
  }

  LODWORD(v50) = v26 + ((v24 - Shape) >> 3);
  mlir::ShapedType::getShape(v45);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v27);
  if ((v29 & 1) == 0)
  {
    v43 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::anec::FlattenAdaptor::verify(v43, v44);
  }

  v30 = IndexFromDim;
  mlir::anec::getAllDims(&v46);
  v31 = v46;
  if (!v47)
  {
    goto LABEL_27;
  }

  v32 = 4 * v47;
  do
  {
    v34 = *v31;
    mlir::ShapedType::getShape(v45);
    v36 = mlir::anec::getIndexFromDim(v34, v35);
    if (v34 == 2)
    {
      if (v37)
      {
        goto LABEL_19;
      }
    }

    else if (v34 >= 2)
    {
LABEL_19:
      v33 = v49;
      *(v49 + v30) *= *(v49 + v36);
      v33[v36] = 1;
    }

    ++v31;
    v32 -= 4;
  }

  while (v32);
  v31 = v46;
LABEL_27:
  if (v31 != &v48)
  {
    free(v31);
  }

  v38 = v49;
  v39 = v50;
  ElementType = mlir::ShapedType::getElementType(v45);
  v41 = mlir::MemRefType::get(v38, v39, ElementType, 0, 0, 0);
  v42 = *(a11 + 8);
  if (v42 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v42) = v41;
  ++*(a11 + 8);
  if (v49 != v51)
  {
    free(v49);
  }

  return 1;
}

uint64_t mlir::anec::FlattenAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v24 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v24); i != mlir::DictionaryAttr::end(&v24); i = (i + 16))
  {
    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      v14 = *(i + 1);
      if (!v14)
      {
        return 1;
      }

      if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v22[0] = *(i + 1);
        v27[0] = mlir::IntegerAttr::getType(v22);
        if (mlir::Type::isSignlessInteger(v27, 64))
        {
          v26 = v14;
          if (mlir::IntegerAttr::getInt(&v26) == 1)
          {
            return 1;
          }

          v25 = v14;
          if (mlir::IntegerAttr::getInt(&v25) == 2)
          {
            return 1;
          }
        }
      }

      v22[0] = "'anec.flatten' op attribute 'flatten_mode' failed to satisfy constraint: valid FlattenMode";
      v23 = 259;
      mlir::emitError(a2, v22, v27);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
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

        v15 = __p;
        if (__p)
        {
          v16 = v33;
          v17 = __p;
          if (v33 != __p)
          {
            do
            {
              v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
            }

            while (v16 != v15);
            v17 = __p;
          }

          v33 = v15;
          operator delete(v17);
        }

        v9 = v30;
        if (v30)
        {
          v18 = v31;
          v11 = v30;
          if (v31 != v30)
          {
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
            goto LABEL_43;
          }

          goto LABEL_44;
        }

        goto LABEL_45;
      }

      return v5;
    }
  }

  v22[0] = "'anec.flatten' op requires attribute 'flatten_mode'";
  v23 = 259;
  mlir::emitError(a2, v22, v27);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
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

    v6 = __p;
    if (__p)
    {
      v7 = v33;
      v8 = __p;
      if (v33 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v33 = v6;
      operator delete(v8);
    }

    v9 = v30;
    if (v30)
    {
      v10 = v31;
      v11 = v30;
      if (v31 != v30)
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
LABEL_43:
        v11 = v30;
      }

LABEL_44:
      v31 = v9;
      operator delete(v11);
    }

LABEL_45:
    if (v28 != &v29)
    {
      free(v28);
    }
  }

  return v5;
}

uint64_t mlir::anec::Flatten::getFlattenMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  return mlir::IntegerAttr::getInt(&AttrDictionary);
}

BOOL mlir::anec::Flatten::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::Flatten::getZinIrUnitInfo();
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

BOOL mlir::anec::Flatten::verifyWithANEC(mlir::Operation **a1, uint64_t a2, unint64_t a3)
{
  v57 = *MEMORY[0x277D85DE8];
  ANECFlattenLayerDescInitialize();
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v7 = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v7 + 16 * v8), **(*(*a1 + 6) + 96));
  Int = mlir::IntegerAttr::getInt(buffer);
  *buffer = xmmword_279839F88;
  *v49 = unk_279839F98;
  v40 = 0;
  v41 = 0;
  v39 = &v40;
  if (!*std::__tree<std::__value_type<ZinIrDimension,__CFString const*>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,__CFString const*>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,__CFString const*>>>::__find_equal<ZinIrDimension>(&v39, &v40, v46, v34, buffer))
  {
    operator new();
  }

  if (!*std::__tree<std::__value_type<ZinIrDimension,__CFString const*>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,__CFString const*>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,__CFString const*>>>::__find_equal<ZinIrDimension>(&v39, &v40, v46, v34, v49))
  {
    operator new();
  }

  if (Int == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  if (!v40)
  {
    goto LABEL_15;
  }

  v11 = &v40;
  v12 = v40;
  do
  {
    if (*(v12 + 8) >= v10)
    {
      v11 = v12;
    }

    v12 = v12[*(v12 + 8) < v10];
  }

  while (v12);
  if (v11 == &v40 || v10 < *(v11 + 8))
  {
LABEL_15:
    v11 = &v40;
  }

  v13 = v11[5];
  std::__tree<long long>::destroy(&v39, v40);
  v38 = v13;
  v46[0] = v47;
  v46[1] = 0x100000000;
  v14 = 1;
  *buffer = 1;
  v39 = 0;
  ANECUnitValidatorCreate();
  v36 = 0;
  v37 = 0;
  if (ANECValidateFlattenLayer())
  {
    v15 = *a1;
    v17 = v36;
    v16 = v37;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v39);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v41, "Invalid configuration", 21);
    if (v17)
    {
      if (v16)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v41, " for the following reasons: ", 28);
        v18 = *v16;
        if (*v16)
        {
          v19 = 0;
          do
          {
            v20 = v18 - 1;
            CFStringGetCString(v16[v19 + 1], buffer, 512, 0x8000100u);
            v21 = strlen(buffer);
            v22 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v41, buffer, v21);
            if (v19 == v20)
            {
              v23 = "";
            }

            else
            {
              v23 = ", ";
            }

            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, v23, 2 * (v19++ != v20));
            v18 = *v16;
          }

          while (*v16 > v19);
        }
      }
    }

    std::stringbuf::str();
    v39 = *MEMORY[0x277D82818];
    v24 = *(MEMORY[0x277D82818] + 72);
    *(&v39 + *(v39 - 3)) = *(MEMORY[0x277D82818] + 64);
    v41 = v24;
    v42 = MEMORY[0x277D82878] + 16;
    if (v44 < 0)
    {
      operator delete(v43[7].__locale_);
    }

    v42 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v43);
    std::iostream::~basic_iostream();
    MEMORY[0x259C630C0](&v45);
    LOWORD(v43[0].__locale_) = 260;
    v39 = v34;
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v56 == 1)
    {
      if (v55 != &v56)
      {
        free(v55);
      }

      v25 = v53;
      if (v53)
      {
        v26 = v54;
        v27 = v53;
        if (v54 != v53)
        {
          do
          {
            v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
          }

          while (v26 != v25);
          v27 = v53;
        }

        v54 = v25;
        operator delete(v27);
      }

      v28 = v51;
      if (v51)
      {
        v29 = v52;
        v30 = v51;
        if (v52 != v51)
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
          v30 = v51;
        }

        v52 = v28;
        operator delete(v30);
      }

      if (v49[1] != &v50)
      {
        free(v49[1]);
      }
    }

    if (v35 < 0)
    {
      operator delete(v34[0]);
    }
  }

  ANECUnitValidatorDelete();
  if (v46[0] != v47)
  {
    free(v46[0]);
  }

  return v14;
}

uint64_t mlir::anec::Unflatten::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v55 = *MEMORY[0x277D85DE8];
  v48 = a6;
  LOBYTE(v49) = 0;
  v50 = 0;
  v51 = a7;
  v52 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v48);
    if (v50 == 1)
    {
      v50 = 0;
    }

    mlir::OperationName::OperationName(&v49, "anec.unflatten", 14, Context);
    v50 = 1;
    a1 = v15;
  }

  v53 = a4;
  v54 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if ((mlir::anec::UnflattenAdaptor::verify(&v48, v18) & 1) == 0)
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v43[0] = v20;
  v43[1] = v19;
  v45 = v47;
  v46 = 0x500000000;
  v21 = mlir::DictionaryAttr::begin(&v48);
  v22 = mlir::DictionaryAttr::end(&v48);
  v23 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v21, (v22 - 16), **(v49 + 96));
  mlir::getValues<long long>(v23, &v45);
  v24 = v45;
  if (v46)
  {
    v25 = (v46 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v25)
    {
      v26 = v25 + 1;
      v27 = (v25 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v28 = (v45 + 8 * v27);
      v29 = v45 + 8;
      v30 = 1;
      v31 = v27;
      v32 = 1;
      do
      {
        v30 *= *(v29 - 1);
        v32 *= *v29;
        v29 += 2;
        v31 -= 2;
      }

      while (v31);
      v33 = v32 * v30;
      if (v26 == v27)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v33 = 1;
      v28 = v45;
    }

    do
    {
      v35 = *v28++;
      v33 *= v35;
    }

    while (v28 != (v45 + 8 * v46));
  }

  else
  {
    v33 = 1;
  }

LABEL_21:
  Shape = mlir::ShapedType::getShape(v43);
  v44 = mlir::ShapedType::getNumElements(Shape, v37) / v33;
  llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v45, v24, &v44);
  v38 = v45;
  v39 = v46;
  ElementType = mlir::ShapedType::getElementType(v43);
  v41 = mlir::MemRefType::get(v38, v39, ElementType, 0, 0, 0);
  v42 = *(a11 + 8);
  if (v42 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v42) = v41;
  ++*(a11 + 8);
  if (v45 != v47)
  {
    free(v45);
  }

  return 1;
}

uint64_t mlir::anec::UnflattenAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v46 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v46); i != mlir::DictionaryAttr::end(&v46); i = (i + 16))
  {
    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      v14 = *(i + 1);
      while (1)
      {
        if (i == mlir::DictionaryAttr::end(&v46))
        {
          v44[0] = "'anec.unflatten' op requires attribute 'flatten_mode'";
          v45 = 259;
          mlir::emitError(a2, v44, v47);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
          if (v47[0])
          {
            mlir::InFlightDiagnostic::report(v47);
          }

          if (v55 != 1)
          {
            return v5;
          }

          if (v54 != &v55)
          {
            free(v54);
          }

          v15 = __p;
          if (__p)
          {
            v16 = v53;
            v17 = __p;
            if (v53 != __p)
            {
              do
              {
                v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
              }

              while (v16 != v15);
              v17 = __p;
            }

            v53 = v15;
            operator delete(v17);
          }

          v9 = v50;
          if (!v50)
          {
            goto LABEL_88;
          }

          v18 = v51;
          v11 = v50;
          if (v51 == v50)
          {
            goto LABEL_87;
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
          goto LABEL_86;
        }

        if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 8))
        {
          break;
        }

        i = (i + 16);
      }

      v21 = *(i + 1);
      if (!v21 || *(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v44[0] = *(i + 1), v47[0] = mlir::IntegerAttr::getType(v44), mlir::Type::isSignlessInteger(v47, 64)) && ((v42[0] = v21, mlir::IntegerAttr::getInt(v42) == 1) || (v56[0] = v21, mlir::IntegerAttr::getInt(v56) == 2)))
      {
        if (!v14)
        {
          return 1;
        }

        if (mlir::DenseIntElementsAttr::classof(v14))
        {
          v22 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
          v44[0] = v14;
          v44[1] = v22;
          Type = mlir::ElementsAttr::getType(v44);
          v24 = Type;
          if (Type)
          {
            Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
          }

          v47[0] = v24;
          v47[1] = Type;
          Shape = mlir::ShapedType::getShape(v47);
          v56[0] = 3;
          if (v26 == 1 && *Shape == v56[0])
          {
            v41 = v14;
            v42[0] = mlir::DenseElementsAttr::getType(&v41);
            v42[1] = v27;
            ElementType = mlir::ShapedType::getElementType(v42);
            if (mlir::Type::isUnsignedInteger(&ElementType, 64))
            {
              return 1;
            }
          }
        }

        v44[0] = "'anec.unflatten' op attribute 'destination_size' failed to satisfy constraint: ui64 elements attribute of shape {3}";
        v45 = 259;
        mlir::emitError(a2, v44, v47);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
        if (v47[0])
        {
          mlir::InFlightDiagnostic::report(v47);
        }

        if (v55 != 1)
        {
          return v5;
        }

        if (v54 != &v55)
        {
          free(v54);
        }

        v34 = __p;
        if (__p)
        {
          v35 = v53;
          v36 = __p;
          if (v53 != __p)
          {
            do
            {
              v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
            }

            while (v35 != v34);
            v36 = __p;
          }

          v53 = v34;
          operator delete(v36);
        }

        v9 = v50;
        if (!v50)
        {
          goto LABEL_88;
        }

        v37 = v51;
        v11 = v50;
        if (v51 == v50)
        {
          goto LABEL_87;
        }

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
      }

      else
      {
        v44[0] = "'anec.unflatten' op attribute 'flatten_mode' failed to satisfy constraint: valid FlattenMode";
        v45 = 259;
        mlir::emitError(a2, v44, v47);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
        if (v47[0])
        {
          mlir::InFlightDiagnostic::report(v47);
        }

        if (v55 != 1)
        {
          return v5;
        }

        if (v54 != &v55)
        {
          free(v54);
        }

        v28 = __p;
        if (__p)
        {
          v29 = v53;
          v30 = __p;
          if (v53 != __p)
          {
            do
            {
              v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
            }

            while (v29 != v28);
            v30 = __p;
          }

          v53 = v28;
          operator delete(v30);
        }

        v9 = v50;
        if (!v50)
        {
          goto LABEL_88;
        }

        v31 = v51;
        v11 = v50;
        if (v51 == v50)
        {
          goto LABEL_87;
        }

        do
        {
          v33 = *--v31;
          v32 = v33;
          *v31 = 0;
          if (v33)
          {
            MEMORY[0x259C63150](v32, 0x1000C8077774924);
          }
        }

        while (v31 != v9);
      }

LABEL_86:
      v11 = v50;
      goto LABEL_87;
    }
  }

  v44[0] = "'anec.unflatten' op requires attribute 'destination_size'";
  v45 = 259;
  mlir::emitError(a2, v44, v47);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
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

    v6 = __p;
    if (__p)
    {
      v7 = v53;
      v8 = __p;
      if (v53 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v53 = v6;
      operator delete(v8);
    }

    v9 = v50;
    if (v50)
    {
      v10 = v51;
      v11 = v50;
      if (v51 != v50)
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
        goto LABEL_86;
      }

LABEL_87:
      v51 = v9;
      operator delete(v11);
    }

LABEL_88:
    if (v48 != &v49)
    {
      free(v48);
    }
  }

  return v5;
}

uint64_t mlir::anec::Unflatten::verifyAttributesWithFamily(mlir::Operation **a1, int a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = (*(*(*(*a1 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
    v4 = *a1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v4 + 9);
  v8 = v4 - 16;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (mlir::anec::verifyCompatibilityWithUnflatten(v5, v6, v10, v11))
  {
    if (a2 > 1)
    {
      return 1;
    }

    if (*(*a1 + 9))
    {
      v21 = *a1 - 16;
    }

    else
    {
      v21 = 0;
    }

    v22 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v21, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v22)
    {
      v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
    }

    else
    {
      v23 = 0;
    }

    v44[0] = v22;
    v44[1] = v23;
    mlir::ShapedType::getShape(v44);
    IndexFromDim = mlir::anec::getIndexFromDim(4, v24);
    if (v26)
    {
      v43 = *(mlir::ShapedType::getShape(v44) + 8 * IndexFromDim);
      if ((v43 - 65) <= 0xFFFFFFFFFFFFFFC0)
      {
        v37[0] = "output width dimension size = {0} failed to satisfy constraint: 2 <= size <= 64";
        v37[1] = 79;
        v37[2] = &v40;
        v37[3] = 1;
        LOBYTE(v38) = 1;
        v39[0] = &unk_28685E520;
        v39[1] = &v43;
        v40 = v39;
        v41[0] = v37;
        v42 = 263;
        mlir::OpState::emitOpError(a1, v41, &v46);
        v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
        if (v46)
        {
          mlir::InFlightDiagnostic::report(&v46);
        }

        if (v55 == 1)
        {
          if (v54 != &v55)
          {
            free(v54);
          }

          v27 = v52;
          if (v52)
          {
            v28 = v53;
            v29 = v52;
            if (v53 != v52)
            {
              do
              {
                v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
              }

              while (v28 != v27);
              v29 = v52;
            }

            v53 = v27;
            operator delete(v29);
          }

          v16 = v50;
          if (!v50)
          {
            goto LABEL_66;
          }

          v30 = v51;
          v18 = v50;
          if (v51 == v50)
          {
LABEL_65:
            v51 = v16;
            operator delete(v18);
LABEL_66:
            if (v48 != &v49)
            {
              free(v48);
            }

            return v12;
          }

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

          while (v30 != v16);
LABEL_64:
          v18 = v50;
          goto LABEL_65;
        }

        return v12;
      }

      v46 = *(*(*a1 + 9) + 24);
      DefiningOp = mlir::Value::getDefiningOp(&v46);
      if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id)
      {
        return 1;
      }

      v41[0] = *(*(*a1 + 9) + 24);
      v34 = mlir::Value::getDefiningOp(v41);
      if (!v34)
      {
LABEL_60:
        v37[0] = "must be preceded by a convolution or a sequence of convolution, goc, and neuron activation for A12/A13 class ANEs";
        v38 = 259;
        mlir::OpState::emitOpError(a1, v37, &v46);
        v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
        if (v46)
        {
          mlir::InFlightDiagnostic::report(&v46);
        }

        if (v55 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v47);
        }

        return v12;
      }

      v22 = v34;
      v37[0] = v34;
      {
LABEL_57:
        if ((*(**(v22 + 48) + 32))(*(v22 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::NeuronOpTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::NeuronOpTrait>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          if ((*(v22 + 46) & 0x80) != 0 && *(v22 + 68) == 1)
          {
            v12 = 1;
            v45 = 1;
            v46 = &v45;
            v47 = v37;
            mlir::detail::enumerate<mlir::detail::RecursivePatternMatcher<mlir::anec::GOC,mlir::detail::op_matcher<mlir::anec::Convolution>,mlir::detail::AnyValueMatcher,mlir::detail::AnyValueMatcher>,mlir::detail::RecursivePatternTraitMatcher<mlir::OpTrait::anec::NeuronOpTrait,mlir::detail::RecursivePatternMatcher<mlir::anec::GOC,mlir::detail::op_matcher<mlir::anec::Convolution>,mlir::detail::AnyValueMatcher,mlir::detail::AnyValueMatcher>>::match(mlir::Operation *)::{lambda(unsigned long,mlir::detail::RecursivePatternMatcher<mlir::anec::GOC,mlir::detail::op_matcher<mlir::anec::Convolution>,mlir::detail::AnyValueMatcher,mlir::detail::AnyValueMatcher> &)#1}>(v36, &v46);
            if (v45)
            {
              return v12;
            }
          }
        }

        goto LABEL_60;
      }
    }

    else
    {
      std::__throw_bad_optional_access[abi:nn200100]();
    }

    mlir::anec::Unflatten::verifyAttributesWithFamily();
    goto LABEL_57;
  }

  v37[0] = "failed: input/output shapes are incompatible with unflatten op, (NxCx1x1) -> (NxCxHxW)";
  v38 = 259;
  mlir::OpState::emitOpError(a1, v37, &v46);
  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
  if (v46)
  {
    mlir::InFlightDiagnostic::report(&v46);
  }

  if (v55 == 1)
  {
    if (v54 != &v55)
    {
      free(v54);
    }

    v13 = v52;
    if (v52)
    {
      v14 = v53;
      v15 = v52;
      if (v53 != v52)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = v52;
      }

      v53 = v13;
      operator delete(v15);
    }

    v16 = v50;
    if (!v50)
    {
      goto LABEL_66;
    }

    v17 = v51;
    v18 = v50;
    if (v51 == v50)
    {
      goto LABEL_65;
    }

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
    goto LABEL_64;
  }

  return v12;
}

uint64_t mlir::anec::Unflatten::getFlattenMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  return mlir::IntegerAttr::getInt(&AttrDictionary);
}

uint64_t mlir::anec::Unflatten::getDestinationSize(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 16), **(*(*this + 6) + 96));
}

BOOL mlir::anec::Unflatten::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::Unflatten::getZinIrUnitInfo();
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

BOOL mlir::anec::Reshape::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::Reshape::getZinIrUnitInfo();
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

BOOL mlir::anec::Reshape::verifyWithANEC(uint64_t *a1, __int128 *a2, unint64_t a3)
{
  v83 = *MEMORY[0x277D85DE8];
  ANECReshapeLayerDescInitialize();
  v60 = *a2;
  mlir::ShapedType::getShape(&v60);
  if (v6 >= 1)
  {
    v7 = 0;
    while (1)
    {
      mlir::ShapedType::getShape(&v60);
      DimFromIndex = mlir::anec::getDimFromIndex(v7, v8);
      if ((DimFromIndex & 0x100000000) == 0)
      {
        goto LABEL_67;
      }

      v10 = DimFromIndex;
      v11 = *(mlir::ShapedType::getShape(&v60) + 8 * v7);
      if (v11 > mlir::anec::getMaximumDimSize(v10))
      {
        break;
      }

      v7 = (v7 + 1);
      mlir::ShapedType::getShape(&v60);
      if (v7 >= v12)
      {
        goto LABEL_6;
      }
    }

    v16 = *a1;
    v66[0] = "failed: input tensor dimensions are not supported on ANEs.";
    LOWORD(v69[0].__locale_) = 259;
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if ((v82[0] & 1) == 0)
    {
      return v17;
    }

    if (v81 != v82)
    {
      free(v81);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v80;
      v20 = __p;
      if (v80 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v80 = v18;
      operator delete(v20);
    }

    v21 = v77;
    if (v77)
    {
      v22 = v78;
      v23 = v77;
      if (v78 != v77)
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
        v23 = v77;
      }

      v78 = v21;
      operator delete(v23);
    }

    v53 = v75;
    if (v75 == v76)
    {
      return v17;
    }

LABEL_61:
    free(v53);
    return v17;
  }

LABEL_6:
  if (*(*a1 + 36))
  {
    v13 = *a1 - 16;
  }

  else
  {
    v13 = 0;
  }

  v14 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v59[0] = v14;
  v59[1] = v15;
  mlir::ShapedType::getShape(v59);
  v27 = v26;
  IndexFromDim = mlir::anec::getIndexFromDim(2, v26);
  if (v29)
  {
    v30 = *(mlir::ShapedType::getShape(v59) + 8 * IndexFromDim);
  }

  else
  {
    v30 = 1;
  }

  v31 = mlir::anec::getIndexFromDim(0, v27);
  if ((v32 & 1) == 0 || (v33 = *(mlir::ShapedType::getShape(v59) + 8 * v31), v34 = mlir::anec::getIndexFromDim(1, v27), (v35 & 1) == 0) || (v36 = *(mlir::ShapedType::getShape(v59) + 8 * v34), v37 = mlir::anec::getIndexFromDim(3, v27), (v38 & 1) == 0) || (v39 = *(mlir::ShapedType::getShape(v59) + 8 * v37), v40 = mlir::anec::getIndexFromDim(4, v27), (v41 & 1) == 0))
  {
LABEL_67:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v42 = *(mlir::ShapedType::getShape(v59) + 8 * v40);
  v61 = v33;
  v62 = v36;
  v63 = v39;
  v64 = v42;
  v65 = v30;
  v72[0] = v73;
  v72[1] = 0x100000000;
  v17 = 1;
  *buffer = 1;
  v66[0] = 0;
  ANECUnitValidatorCreate();
  v57 = 0;
  v58 = 0;
  if (ANECValidateReshapeLayer())
  {
    v43 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v66);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v67, "Invalid configuration", 21);
    std::stringbuf::str();
    v66[0] = *MEMORY[0x277D82818];
    v44 = *(MEMORY[0x277D82818] + 72);
    *(v66 + *(v66[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v67 = v44;
    v68 = MEMORY[0x277D82878] + 16;
    if (v70 < 0)
    {
      operator delete(v69[7].__locale_);
    }

    v68 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v69);
    std::iostream::~basic_iostream();
    MEMORY[0x259C630C0](&v71);
    LOWORD(v69[0].__locale_) = 260;
    v66[0] = &v55;
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v82[0] == 1)
    {
      if (v81 != v82)
      {
        free(v81);
      }

      v45 = __p;
      if (__p)
      {
        v46 = v80;
        v47 = __p;
        if (v80 != __p)
        {
          do
          {
            v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
          }

          while (v46 != v45);
          v47 = __p;
        }

        v80 = v45;
        operator delete(v47);
      }

      v48 = v77;
      if (v77)
      {
        v49 = v78;
        v50 = v77;
        if (v78 != v77)
        {
          do
          {
            v52 = *--v49;
            v51 = v52;
            *v49 = 0;
            if (v52)
            {
              MEMORY[0x259C63150](v51, 0x1000C8077774924);
            }
          }

          while (v49 != v48);
          v50 = v77;
        }

        v78 = v48;
        operator delete(v50);
      }

      if (v75 != v76)
      {
        free(v75);
      }
    }

    if (v56 < 0)
    {
      operator delete(v55);
    }
  }

  ANECUnitValidatorDelete();
  v53 = v72[0];
  if (v72[0] != v73)
  {
    goto LABEL_61;
  }

  return v17;
}

unint64_t mlir::anec::Reshape::fold(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(*a1 + 72) + 24) + 8);
  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) ^ v4) <= 7)
  {
    return *(*(*a1 + 72) + 24) | 4;
  }

  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v24[0] = v8;
  v24[1] = v9;
  if (!mlir::ShapedType::hasRank(v24))
  {
    return 0;
  }

  Shape = mlir::ShapedType::getShape(v24);
  if (v11)
  {
    v12 = 8 * v11;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    return 0;
  }

LABEL_17:
  v13 = **(a2 + 40);
  if (!v13)
  {
    v22 = 0;
    v23 = 0;
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v13 + 8))
  {
    v22 = 0;
    v23 = 0;
    return 0;
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v13 + 8);
  v22 = v13;
  v23 = v14;
  Type = mlir::ElementsAttr::getType(&v22);
  v16 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v21[0] = v16;
  v21[1] = Type;
  *&v25 = mlir::ShapedType::getShape(v24);
  *(&v25 + 1) = v17;
  v26 = 1;
  ElementType = mlir::ShapedType::getElementType(v21);
  v19 = mlir::ShapedType::cloneWith(v21, &v25, ElementType);
  return mlir::reshapeElementsAttr(v22, v23, v19, v20) & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::anec::Reshape::canonicalize(uint64_t a1, void (***a2)(void, uint64_t, unint64_t, unint64_t))
{
  v13[2] = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  if (*(a1 + 36))
  {
    v4 = a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v11[0] = v5;
  v11[1] = v6;
  v13[0] = *(*(a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v13);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::anec::Reshape,void>::id)
  {
    return 0;
  }

  v13[0] = *(*(a1 + 72) + 24);
  v10 = *(*(mlir::Value::getDefiningOp(v13) + 72) + 24);
  v12 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::ShapedType &,mlir::Value &>((a2 + 1), *(a1 + 24), v11, &v10) - 16;
  v8 = 1;
  mlir::ValueRange::ValueRange(v13, &v12, 1uLL);
  (**a2)(a2, a1, v13[0], v13[1]);
  return v8;
}

uint64_t mlir::anec::Concat::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v61 = *MEMORY[0x277D85DE8];
  v54 = a6;
  LOBYTE(v55) = 0;
  v56 = 0;
  v57 = a7;
  v58 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v54);
    if (v56 == 1)
    {
      v56 = 0;
    }

    mlir::OperationName::OperationName(&v55, "anec.concat", 11, Context);
    v56 = 1;
    a1 = v15;
  }

  v59 = a4;
  v60 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if ((mlir::anec::ConcatAdaptor::verify(&v54, v18) & 1) == 0)
  {
    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "Failed to verify adaptor");
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v47[0] = v20;
  v47[1] = v19;
  mlir::ShapedType::getShape(v47);
  v21 = mlir::DictionaryAttr::begin(&v54);
  v22 = mlir::DictionaryAttr::end(&v54);
  v45[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v21, v22, **(v55 + 96));
  mlir::IntegerAttr::getValue(v45, &v48);
  if (v49 > 0x40)
  {
    v23 = *v48;
    MEMORY[0x259C63150]();
    v46 = v23;
    if (v23 < 0)
    {
LABEL_26:
      v48 = "failed: Axis value {0} is out of bounds for input operands";
      v49 = 58;
      v50[0] = &v53;
      v50[1] = 1;
      v51 = 1;
      v52[0] = &unk_28685E520;
      v52[1] = &v46;
      v53 = v52;
      return mlir::emitOptionalError<llvm::formatv_object<std::tuple<llvm::support::detail::provider_format_adapter<long long &>,llvm::support::detail::provider_format_adapter<long long &>>>>(a2, a3, &v48);
    }
  }

  else
  {
    v23 = v48;
    v46 = v48;
    if ((v48 & 0x8000000000000000) != 0)
    {
      goto LABEL_26;
    }
  }

  if (a10)
  {
    v25 = 0;
    while (1)
    {
      v26 = mlir::TypeRange::dereference_iterator(a9, v25);
      v27 = v26;
      if (v26)
      {
        v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v26 + 8);
      }

      v48 = v27;
      v49 = v26;
      mlir::ShapedType::getShape(&v48);
      if (v23 >= v28)
      {
        goto LABEL_26;
      }

      if (a10 == ++v25)
      {
        v29 = 0;
        for (i = 0; i != a10; ++i)
        {
          v31 = mlir::TypeRange::dereference_iterator(a9, i);
          v32 = v31;
          if (v31)
          {
            v31 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
          }

          v48 = v32;
          v49 = v31;
          v29 += *(mlir::ShapedType::getShape(&v48) + 8 * v23);
        }

        goto LABEL_28;
      }
    }
  }

  v29 = 0;
LABEL_28:
  v33 = mlir::TypeRange::dereference_iterator(a9, 0);
  v34 = v33;
  if (v33)
  {
    v33 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8);
  }

  v45[0] = v34;
  v45[1] = v33;
  Shape = mlir::ShapedType::getShape(v45);
  v36 = mlir::ShapedType::getShape(v45);
  v38 = (v36 + 8 * v37);
  v48 = v50;
  v49 = 0x500000000;
  if (((v38 - Shape) >> 3) >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v39 = 0;
  v40 = v50;
  if (v38 != Shape)
  {
    memcpy(v50, Shape, v38 - Shape);
    v39 = v49;
    v40 = v48;
  }

  v41 = (v39 + ((v38 - Shape) >> 3));
  LODWORD(v49) = v39 + ((v38 - Shape) >> 3);
  v40[v23] = v29;
  ElementType = mlir::ShapedType::getElementType(v45);
  v43 = mlir::MemRefType::get(v40, v41, ElementType, 0, 0, 0);
  v44 = *(a11 + 8);
  if (v44 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v44) = v43;
  ++*(a11 + 8);
  if (v48 != v50)
  {
    free(v48);
  }

  return 1;
}

uint64_t mlir::anec::ConcatAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v31 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v31); ; i = (i + 16))
  {
    if (i == mlir::DictionaryAttr::end(&v31))
    {
      v29[0] = "'anec.concat' op requires attribute 'axis'";
      v30 = 259;
      mlir::emitError(a2, v29, v32);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
      if (v32[0])
      {
        mlir::InFlightDiagnostic::report(v32);
      }

      if (v40 != 1)
      {
        return v5;
      }

      if (v39 != &v40)
      {
        free(v39);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v38;
        v8 = __p;
        if (v38 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v38 = v6;
        operator delete(v8);
      }

      v9 = v35;
      if (!v35)
      {
        goto LABEL_66;
      }

      v10 = v36;
      v11 = v35;
      if (v36 == v35)
      {
        goto LABEL_65;
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
LABEL_64:
      v11 = v35;
      goto LABEL_65;
    }

    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      break;
    }
  }

  v14 = *(i + 1);
  if (i == mlir::DictionaryAttr::end(&v31))
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    do
    {
      if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 8))
      {
        v15 = *(i + 1);
      }

      i = (i + 16);
    }

    while (i != mlir::DictionaryAttr::end(&v31));
  }

  if (v14)
  {
    if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v29[0] = v14, v32[0] = mlir::IntegerAttr::getType(v29), !mlir::Type::isUnsignedInteger(v32, 64)))
    {
      v29[0] = "'anec.concat' op attribute 'axis' failed to satisfy constraint: 64-bit unsigned integer attribute";
      v30 = 259;
      mlir::emitError(a2, v29, v32);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
      if (v32[0])
      {
        mlir::InFlightDiagnostic::report(v32);
      }

      if (v40 != 1)
      {
        return v5;
      }

      if (v39 != &v40)
      {
        free(v39);
      }

      v22 = __p;
      if (__p)
      {
        v23 = v38;
        v24 = __p;
        if (v38 != __p)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v38 = v22;
        operator delete(v24);
      }

      v9 = v35;
      if (!v35)
      {
        goto LABEL_66;
      }

      v25 = v36;
      v11 = v35;
      if (v36 == v35)
      {
        goto LABEL_65;
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
      goto LABEL_64;
    }
  }

  if (!v15 || *(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return 1;
  }

  v29[0] = "'anec.concat' op attribute 'interleave' failed to satisfy constraint: unit attribute";
  v30 = 259;
  mlir::emitError(a2, v29, v32);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
  if (v32[0])
  {
    mlir::InFlightDiagnostic::report(v32);
  }

  if (v40 == 1)
  {
    if (v39 != &v40)
    {
      free(v39);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v38;
      v18 = __p;
      if (v38 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v38 = v16;
      operator delete(v18);
    }

    v9 = v35;
    if (v35)
    {
      v19 = v36;
      v11 = v35;
      if (v36 != v35)
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

        while (v19 != v9);
        goto LABEL_64;
      }

LABEL_65:
      v36 = v9;
      operator delete(v11);
    }

LABEL_66:
    if (v33 != &v34)
    {
      free(v33);
    }
  }

  return v5;
}

uint64_t *mlir::anec::Concat::getAxis(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  mlir::IntegerAttr::getValue(&v9, &AttrDictionary);
  if (v8 <= 0x40)
  {
    return AttrDictionary;
  }

  v5 = *AttrDictionary;
  MEMORY[0x259C63150]();
  return v5;
}

BOOL mlir::anec::Concat::verifyWithANEC(mlir::Operation **a1, mlir::ShapedType *a2, unint64_t a3)
{
  v45 = *MEMORY[0x277D85DE8];
  ANECConcatLayerDescInitialize();
  Axis = mlir::anec::Concat::getAxis(a1);
  mlir::ShapedType::getShape(a2);
  InterleaveAttr = mlir::anec::Concat::getInterleaveAttr(a1);
  v9 = MEMORY[0x277CBED28];
  if (!InterleaveAttr)
  {
    v9 = MEMORY[0x277CBED10];
  }

  v27 = *v9;
  v34[0] = v35;
  v34[1] = 0x100000000;
  v10 = 1;
  *buffer = 1;
  v28[0] = 0;
  ANECUnitValidatorCreate();
  v24 = 0;
  v25 = 0;
  if (ANECValidateConcatLayer())
  {
    v11 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v28);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v29, "Invalid configuration", 21);
    std::stringbuf::str();
    v28[0] = *MEMORY[0x277D82818];
    v12 = *(MEMORY[0x277D82818] + 72);
    *(v28 + *(v28[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v29 = v12;
    v30 = MEMORY[0x277D82878] + 16;
    if (v32 < 0)
    {
      operator delete(v31[7].__locale_);
    }

    v30 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v31);
    std::iostream::~basic_iostream();
    MEMORY[0x259C630C0](&v33);
    LOWORD(v31[0].__locale_) = 260;
    v28[0] = &v22;
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v44 == 1)
    {
      if (v43 != &v44)
      {
        free(v43);
      }

      v13 = v41;
      if (v41)
      {
        v14 = v42;
        v15 = v41;
        if (v42 != v41)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = v41;
        }

        v42 = v13;
        operator delete(v15);
      }

      v16 = v39;
      if (v39)
      {
        v17 = v40;
        v18 = v39;
        if (v40 != v39)
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
          v18 = v39;
        }

        v40 = v16;
        operator delete(v18);
      }

      if (v37 != &v38)
      {
        free(v37);
      }
    }

    if (v23 < 0)
    {
      operator delete(v22);
    }
  }

  ANECUnitValidatorDelete();
  if (v34[0] != v35)
  {
    free(v34[0]);
  }

  return v10;
}

BOOL mlir::anec::Concat::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::Concat::getZinIrUnitInfo();
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

uint64_t mlir::anec::InstanceNorm::inferPromotedReturnTypes(mlir::Float16Type *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v22[0] = a4;
  v22[1] = a5;
  v12 = (*(mlir::ValueRange::dereference_iterator(v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v19[0] = v12;
  v19[1] = v13;
  *&v20 = mlir::ShapedType::getElementType(v19);
  if (mlir::Type::isF16(&v20))
  {
    v15 = v19[0];
  }

  else
  {
    v16 = mlir::Float16Type::get(a1, v14);
    LOBYTE(v20) = 0;
    v21 = 0;
    v15 = mlir::ShapedType::cloneWith(v19, &v20, v16);
  }

  v17 = *(a11 + 8);
  if (v17 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v17) = v15;
  ++*(a11 + 8);
  return 1;
}

void *mlir::anec::InstanceNorm::getEpsilon@<X0>(mlir::Operation **this@<X0>, uint64_t a2@<X8>)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v5 + 16 * v6), *(*(*(*this + 6) + 96) + 8));
  return mlir::FloatAttr::getValue(&AttrDictionary, a2);
}

BOOL mlir::anec::InstanceNorm::verifyWithANEC(mlir::Operation **a1, mlir::ShapedType *a2, unint64_t a3)
{
  v60 = *MEMORY[0x277D85DE8];
  ANECInstanceNormLayerDescInitialize();
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v7 = mlir::DictionaryAttr::getValue(buffer);
  v38[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v7 + 16 * v8 - 16), **(*(*a1 + 6) + 96));
  v38[1] = mlir::DenseElementsAttr::getNumElements(v38);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v9 = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v10 = mlir::DictionaryAttr::getValue(buffer);
  v40[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v9 + 16), (v10 + 16 * v11), *(*(*(*a1 + 6) + 96) + 8));
  mlir::FloatAttr::getValue(v40, buffer);
  v13 = llvm::APFloat::convertToFloat(buffer);
  if (v13 < 0.00000011921)
  {
    v13 = 0.00000011921;
  }

  *&v39[10] = v13;
  v14 = v50;
  if (llvm::APFloatBase::PPCDoubleDouble(v12) == v14)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v50);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v50);
  }

  mlir::ShapedType::getShape(a2);
  v16 = v15;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(buffer, v38[0], 0);
  v17 = v38[0];
  NumElements = mlir::DenseElementsAttr::getNumElements(v38);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v40, v17, NumElements);
  if (v51 != v41)
  {
    v30 = v39;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v46);
      v31 = v47;
      if (v47 >= 0x41)
      {
        if (v31 - llvm::APInt::countLeadingZerosSlowCase(&v46) <= 0x40)
        {
          v32 = *v46;
        }

        else
        {
          v32 = -1;
        }
      }

      else
      {
        v32 = v46;
      }

      if (v47 >= 0x41 && v46)
      {
        MEMORY[0x259C63150](v46, 0x1000C8000313F17);
      }

      ++v51;
      ++v30;
    }

    while (v51 != v41);
  }

  v19 = 1;
  *buffer = 1;
  v40[0] = 0;
  ANECUnitValidatorCreate();
  v46 = v48;
  v47 = 0x100000000;
  v36 = 0;
  v37 = 0;
  if (ANECValidateInstanceNormLayer())
  {
    v20 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v40);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v41, "Invalid configuration", 21);
    std::stringbuf::str();
    v40[0] = *MEMORY[0x277D82818];
    v21 = *(MEMORY[0x277D82818] + 72);
    *(v40 + *(v40[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v41 = v21;
    v42 = MEMORY[0x277D82878] + 16;
    if (v44 < 0)
    {
      operator delete(v43[7].__locale_);
    }

    v42 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v43);
    std::iostream::~basic_iostream();
    MEMORY[0x259C630C0](&v45);
    LOWORD(v43[0].__locale_) = 260;
    v40[0] = &v34;
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v59 == 1)
    {
      if (v58 != &v59)
      {
        free(v58);
      }

      v22 = v56;
      if (v56)
      {
        v23 = v57;
        v24 = v56;
        if (v57 != v56)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = v56;
        }

        v57 = v22;
        operator delete(v24);
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
            v29 = *--v26;
            v28 = v29;
            *v26 = 0;
            if (v29)
            {
              MEMORY[0x259C63150](v28, 0x1000C8077774924);
            }
          }

          while (v26 != v25);
          v27 = v54;
        }

        v55 = v25;
        operator delete(v27);
      }

      if (v52 != &v53)
      {
        free(v52);
      }
    }

    if (v35 < 0)
    {
      operator delete(v34);
    }
  }

  if (v46 != v48)
  {
    free(v46);
  }

  ANECUnitValidatorDelete();
  return v19;
}

BOOL mlir::anec::InstanceNorm::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::InstanceNorm::getZinIrUnitInfo();
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

BOOL mlir::anec::LayerNorm::verifyWithANEC(mlir::Operation **a1, mlir::ShapedType *a2, unint64_t a3)
{
  v53 = *MEMORY[0x277D85DE8];
  ANECLayerNormLayerDescInitialize();
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v7 = mlir::DictionaryAttr::getValue(buffer);
  v32[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v7 + 16 * v8 - 16), **(*(*a1 + 6) + 96));
  v32[1] = mlir::DenseElementsAttr::getNumElements(v32);
  mlir::ShapedType::getShape(a2);
  v10 = v9;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(buffer, v32[0], 0);
  v11 = v32[0];
  NumElements = mlir::DenseElementsAttr::getNumElements(v32);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v34, v11, NumElements);
  if (v44 != v35)
  {
    v24 = &v33;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v40);
      v25 = v41;
      if (v41 >= 0x41)
      {
        if (v25 - llvm::APInt::countLeadingZerosSlowCase(&v40) <= 0x40)
        {
          v26 = *v40;
        }

        else
        {
          v26 = -1;
        }
      }

      else
      {
        v26 = v40;
      }

      if (v41 >= 0x41 && v40)
      {
        MEMORY[0x259C63150](v40, 0x1000C8000313F17);
      }

      ++v44;
      ++v24;
    }

    while (v44 != v35);
  }

  v13 = 1;
  *buffer = 1;
  v34[0] = 0;
  ANECUnitValidatorCreate();
  v40 = v42;
  v41 = 0x100000000;
  v30 = 0;
  v31 = 0;
  if (ANECValidateLayerNormLayer())
  {
    v14 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v34);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v35, "Invalid configuration", 21);
    std::stringbuf::str();
    v34[0] = *MEMORY[0x277D82818];
    v15 = *(MEMORY[0x277D82818] + 72);
    *(v34 + *(v34[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v35 = v15;
    v36 = MEMORY[0x277D82878] + 16;
    if (v38 < 0)
    {
      operator delete(v37[7].__locale_);
    }

    v36 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v37);
    std::iostream::~basic_iostream();
    MEMORY[0x259C630C0](&v39);
    LOWORD(v37[0].__locale_) = 260;
    v34[0] = &v28;
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v52 == 1)
    {
      if (v51 != &v52)
      {
        free(v51);
      }

      v16 = v49;
      if (v49)
      {
        v17 = v50;
        v18 = v49;
        if (v50 != v49)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = v49;
        }

        v50 = v16;
        operator delete(v18);
      }

      v19 = v47;
      if (v47)
      {
        v20 = v48;
        v21 = v47;
        if (v48 != v47)
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
          v21 = v47;
        }

        v48 = v19;
        operator delete(v21);
      }

      if (v45 != &v46)
      {
        free(v45);
      }
    }

    if (v29 < 0)
    {
      operator delete(v28);
    }
  }

  if (v40 != v42)
  {
    free(v40);
  }

  ANECUnitValidatorDelete();
  return v13;
}

BOOL mlir::anec::LayerNorm::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::LayerNorm::getZinIrUnitInfo();
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

uint64_t mlir::anec::verifyANECBatchNormOp(uint64_t a1, mlir::Operation *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  {
    return 0;
  }

  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v4)
  {
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v55[0] = v4;
  v55[1] = v5;
  v56[0] = mlir::ShapedType::getElementType(v55);
  if (mlir::Type::isF16(v56))
  {
    mlir::ShapedType::getShape(v55);
    IndexFromDim = mlir::anec::getIndexFromDim(1, v7);
    if (v9)
    {
      v10 = *(mlir::ShapedType::getShape(v55) + 8 * IndexFromDim);
      if ((*(a1 + 46) & 0x80) != 0)
      {
        v11 = *(a1 + 68);
        v12 = v11 - 1;
        if (v11 == 1)
        {
          return 1;
        }

        v13 = *(a1 + 72) + 32;
      }

      else
      {
        v12 = -1;
        v13 = 32;
      }

      for (i = (v13 + 24); ; i += 4)
      {
        v15 = *i;
        mlir::ShapedType::getShape(v55);
        v17 = mlir::anec::getIndexFromDim(1, v16);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v19 = v17;
        v20 = (*(v15 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v20)
        {
          v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
        }

        else
        {
          v21 = 0;
        }

        v52[0] = v20;
        v52[1] = v21;
        if (*(mlir::ShapedType::getShape(v52) + 8 * v19) != v10)
        {
          v53[0] = "failed: the parameters of batch norm must equal to the channel size\n";
          v54 = 259;
          mlir::Operation::emitOpError(v56, a1, v53);
          v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v56);
          if (v56[0])
          {
            mlir::InFlightDiagnostic::report(v56);
          }

          if (v64)
          {
            if (v63 != &v64)
            {
              free(v63);
            }

            v44 = __p;
            if (__p)
            {
              v45 = v62;
              v46 = __p;
              if (v62 != __p)
              {
                do
                {
                  v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
                }

                while (v45 != v44);
                v46 = __p;
              }

              v62 = v44;
              operator delete(v46);
            }

            v47 = v59;
            if (v59)
            {
              v48 = v60;
              v49 = v59;
              if (v60 != v59)
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
                v49 = v59;
              }

              v60 = v47;
              operator delete(v49);
            }

            v42 = v57;
            if (v57 != v58)
            {
              goto LABEL_73;
            }
          }

          return v6;
        }

        if (!--v12)
        {
          return 1;
        }
      }

      v53[0] = "failed: can not find channel axis of batch norm op\n";
      v54 = 259;
      mlir::Operation::emitOpError(v56, a1, v53);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v56);
      if (v56[0])
      {
        mlir::InFlightDiagnostic::report(v56);
      }

      if (v64 != 1)
      {
        return v6;
      }

      if (v63 != &v64)
      {
        free(v63);
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
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v62 = v36;
        operator delete(v38);
      }

      v25 = v59;
      if (!v59)
      {
        goto LABEL_72;
      }

      v39 = v60;
      v27 = v59;
      if (v60 == v59)
      {
        goto LABEL_71;
      }

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

      while (v39 != v25);
    }

    else
    {
      v53[0] = "failed: can not find channel axis of batch norm op\n";
      v54 = 259;
      mlir::Operation::emitOpError(v56, a1, v53);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v56);
      if (v56[0])
      {
        mlir::InFlightDiagnostic::report(v56);
      }

      if (v64 != 1)
      {
        return v6;
      }

      if (v63 != &v64)
      {
        free(v63);
      }

      v30 = __p;
      if (__p)
      {
        v31 = v62;
        v32 = __p;
        if (v62 != __p)
        {
          do
          {
            v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
          }

          while (v31 != v30);
          v32 = __p;
        }

        v62 = v30;
        operator delete(v32);
      }

      v25 = v59;
      if (!v59)
      {
        goto LABEL_72;
      }

      v33 = v60;
      v27 = v59;
      if (v60 == v59)
      {
        goto LABEL_71;
      }

      do
      {
        v35 = *--v33;
        v34 = v35;
        *v33 = 0;
        if (v35)
        {
          MEMORY[0x259C63150](v34, 0x1000C8077774924);
        }
      }

      while (v33 != v25);
    }

    goto LABEL_70;
  }

  v53[0] = "failed: the output type of batch normalization must be FP16 \n";
  v54 = 259;
  mlir::Operation::emitOpError(v56, a1, v53);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v56);
  if (v56[0])
  {
    mlir::InFlightDiagnostic::report(v56);
  }

  if (v64 != 1)
  {
    return v6;
  }

  if (v63 != &v64)
  {
    free(v63);
  }

  v22 = __p;
  if (__p)
  {
    v23 = v62;
    v24 = __p;
    if (v62 != __p)
    {
      do
      {
        v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
      }

      while (v23 != v22);
      v24 = __p;
    }

    v62 = v22;
    operator delete(v24);
  }

  v25 = v59;
  if (v59)
  {
    v26 = v60;
    v27 = v59;
    if (v60 == v59)
    {
LABEL_71:
      v60 = v25;
      operator delete(v27);
      goto LABEL_72;
    }

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
LABEL_70:
    v27 = v59;
    goto LABEL_71;
  }

LABEL_72:
  v42 = v57;
  if (v57 != v58)
  {
LABEL_73:
    free(v42);
  }

  return v6;
}

uint64_t mlir::anec::BatchNorm::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    operator new();
  }

  v11 = "network should not be nullptr";
  v12 = 259;
  mlir::OpState::emitError(a1, &v11, v13);
  if (v13[0])
  {
    mlir::InFlightDiagnostic::report(v13);
  }

  if (v21 == 1)
  {
    if (v20 != &v21)
    {
      free(v20);
    }

    v2 = v18;
    if (v18)
    {
      v3 = v19;
      v4 = v18;
      if (v19 != v18)
      {
        do
        {
          v3 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v3 - 1);
        }

        while (v3 != v2);
        v4 = v18;
      }

      v19 = v2;
      operator delete(v4);
    }

    v5 = v16;
    if (v16)
    {
      v6 = v17;
      v7 = v16;
      if (v17 != v16)
      {
        do
        {
          v9 = *--v6;
          v8 = v9;
          *v6 = 0;
          if (v9)
          {
            MEMORY[0x259C63150](v8, 0x1000C8077774924);
          }
        }

        while (v6 != v5);
        v7 = v16;
      }

      v17 = v5;
      operator delete(v7);
    }

    if (v14 != &v15)
    {
      free(v14);
    }
  }

  return 0;
}

uint64_t mlir::anec::BatchNorm::addOpToNetwork(mlir::anec::ANECIRNetwork *,mlir::anec::ANECIRWeightSerializer &)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = 0;
  v21 = 0;
  {
    return 0;
  }

  v5 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8) : 0;
  v18[0] = v5;
  v18[1] = v6;
  mlir::ShapedType::getShape(v18);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v7);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v20;
  *(a3 + 4) = v21;
  *(a3 + 16) = v10;
  *(a3 + 8) = *(mlir::ShapedType::getShape(v18) + 8 * IndexFromDim);
  v11 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v22[0] = v11;
  v22[1] = v12;
  ElementType = mlir::ShapedType::getElementType(v22);
  v15 = *(*ElementType + 136);
  if (v15 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (v15 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
    {
      v16 = 4;
    }

    else if (v15 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
    {
      v16 = 6;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_24;
  }

  v23 = ElementType;
  Width = mlir::IntegerType::getWidth(&v23);
  if (Width != 16)
  {
    if (Width == 8)
    {
      if (mlir::IntegerType::getSignedness(&v23) == 2)
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (mlir::IntegerType::getSignedness(&v23) != 1)
  {
LABEL_23:
    v16 = 0;
    goto LABEL_24;
  }

  v16 = 3;
LABEL_24:
  *(a3 + 24) = v16;
  return 1;
}

uint64_t mlir::anec::CropResize::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v65 = *MEMORY[0x277D85DE8];
  v58 = a6;
  LOBYTE(v59) = 0;
  v60 = 0;
  v61 = a7;
  v62 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v58);
    if (v60 == 1)
    {
      v60 = 0;
    }

    mlir::OperationName::OperationName(&v59, "anec.crop_resize", 16, Context);
    v60 = 1;
    a1 = v15;
  }

  v63 = a4;
  v64 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if ((mlir::anec::CropResizeAdaptor::verify(&v58, v18) & 1) == 0)
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v52[0] = v20;
  v52[1] = v19;
  Shape = mlir::ShapedType::getShape(v52);
  v22 = mlir::ShapedType::getShape(v52);
  v24 = (v22 + 8 * v23);
  v55 = v57;
  v56 = 0x500000000;
  if (((v24 - Shape) >> 3) >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v26 = 0;
  if (v24 != Shape)
  {
    memcpy(v55, Shape, v24 - Shape);
    v26 = v56;
  }

  LODWORD(v56) = v26 + ((v24 - Shape) >> 3);
  v53[0] = v54;
  v53[1] = 0x200000000;
  v27 = mlir::DictionaryAttr::begin(&v58);
  v28 = mlir::DictionaryAttr::end(&v58);
  v29 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v27 + 64), (v28 - 48), *(*(v59 + 96) + 40));
  mlir::getValues<long long>(v29, v53);
  mlir::ShapedType::getShape(v52);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v30);
  if ((v32 & 1) == 0 || (v33 = IndexFromDim, mlir::ShapedType::getShape(v52), v35 = mlir::anec::getIndexFromDim(4, v34), (v36 & 1) == 0) || (v37 = v53[0], v38 = v55, *(v55 + v33) = *v53[0], v38[v35] = v37[1], mlir::ShapedType::getShape(v52), v40 = mlir::anec::getIndexFromDim(0, v39), (v41 & 1) == 0))
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v42 = v40;
  v43 = mlir::TypeRange::dereference_iterator(a9, 1);
  v44 = v43;
  if (v43)
  {
    v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v43 + 8);
  }

  v51[0] = v44;
  v51[1] = v43;
  v45 = mlir::ShapedType::getShape(v51);
  v46 = v55;
  *(v55 + v42) = *(v45 + 8 * v42);
  v47 = v56;
  ElementType = mlir::ShapedType::getElementType(v52);
  v49 = mlir::MemRefType::get(v46, v47, ElementType, 0, 0, 0);
  v50 = *(a11 + 8);
  if (v50 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v50) = v49;
  ++*(a11 + 8);
  if (v53[0] != v54)
  {
    free(v53[0]);
  }

  if (v55 != v57)
  {
    free(v55);
  }

  return 1;
}

uint64_t mlir::anec::CropResizeAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v99 = *MEMORY[0x277D85DE8];
  v85 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v85); i != mlir::DictionaryAttr::end(&v85); i = (i + 16))
  {
    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      v14 = *(i + 1);
      while (i != mlir::DictionaryAttr::end(&v85))
      {
        if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 8))
        {
          v21 = *(i + 1);
          while (1)
          {
            if (i == mlir::DictionaryAttr::end(&v85))
            {
              v82 = "'anec.crop_resize' op requires attribute 'coordinate_mode'";
              v84 = 259;
              mlir::emitError(a2, &v82, &v89);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v89);
              if (v89)
              {
                mlir::InFlightDiagnostic::report(&v89);
              }

              if (v98 != 1)
              {
                return v5;
              }

              if (v97 != &v98)
              {
                free(v97);
              }

              v22 = __p;
              if (__p)
              {
                v23 = v96;
                v24 = __p;
                if (v96 != __p)
                {
                  do
                  {
                    v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
                  }

                  while (v23 != v22);
                  v24 = __p;
                }

                v96 = v22;
                operator delete(v24);
              }

              v9 = v93;
              if (!v93)
              {
                goto LABEL_85;
              }

              v25 = v94;
              v11 = v93;
              if (v94 == v93)
              {
                goto LABEL_84;
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
              goto LABEL_83;
            }

            if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 16))
            {
              break;
            }

            i = (i + 16);
          }

          v28 = *(i + 1);
          if (i != mlir::DictionaryAttr::end(&v85))
          {
            v29 = 0;
            while (mlir::NamedAttribute::getName(i) != *(*(a1[1] + 96) + 32))
            {
              if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 24))
              {
                v29 = *(i + 1);
              }

              i = (i + 16);
              if (i == mlir::DictionaryAttr::end(&v85))
              {
                goto LABEL_67;
              }
            }

            v37 = *(i + 1);
            while (1)
            {
              if (i == mlir::DictionaryAttr::end(&v85))
              {
                v82 = "'anec.crop_resize' op requires attribute 'output_dims'";
                v84 = 259;
                mlir::emitError(a2, &v82, &v89);
                v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v89);
                if (v89)
                {
                  mlir::InFlightDiagnostic::report(&v89);
                }

                if (v98 == 1)
                {
                  mlir::Diagnostic::~Diagnostic(&v90);
                }

                return v5;
              }

              if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 40))
              {
                break;
              }

              i = (i + 16);
            }

            v38 = *(i + 1);
            while (1)
            {
              if (i == mlir::DictionaryAttr::end(&v85))
              {
                v39 = "'anec.crop_resize' op requires attribute 'padding_modes'";
                goto LABEL_170;
              }

              if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 48))
              {
                break;
              }

              i = (i + 16);
            }

            v40 = *(i + 1);
            while (1)
            {
              if (i == mlir::DictionaryAttr::end(&v85))
              {
                v39 = "'anec.crop_resize' op requires attribute 'sampling_method'";
                goto LABEL_170;
              }

              if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 56))
              {
                break;
              }

              i = (i + 16);
            }

            v79 = *(i + 1);
            while (1)
            {
              if (i == mlir::DictionaryAttr::end(&v85))
              {
                v39 = "'anec.crop_resize' op requires attribute 'sampling_mode'";
                goto LABEL_170;
              }

              if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 64))
              {
                break;
              }

              i = (i + 16);
            }

            v41 = *(i + 1);
            if (!v38)
            {
              goto LABEL_173;
            }

            if (!mlir::DenseIntElementsAttr::classof(v38))
            {
              goto LABEL_161;
            }

            v42 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v38 + 8);
            v82 = v38;
            v83 = v42;
            Type = mlir::ElementsAttr::getType(&v82);
            v44 = Type;
            if (Type)
            {
              Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
            }

            v89 = v44;
            v90 = Type;
            Shape = mlir::ShapedType::getShape(&v89);
            v88 = 2;
            if (v46 == 1 && *Shape == v88 && (v80 = v38, v86 = mlir::DenseElementsAttr::getType(&v80), v87 = v47, ElementType = mlir::ShapedType::getElementType(&v86), mlir::Type::isUnsignedInteger(&ElementType, 64)))
            {
LABEL_173:
              if (!v29)
              {
                goto LABEL_126;
              }

              if (!mlir::DenseIntElementsAttr::classof(v29))
              {
                goto LABEL_162;
              }

              v48 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v29 + 8);
              v82 = v29;
              v83 = v48;
              v49 = mlir::ElementsAttr::getType(&v82);
              v50 = v49;
              if (v49)
              {
                v49 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v49 + 8);
              }

              v89 = v50;
              v90 = v49;
              v51 = mlir::ShapedType::getShape(&v89);
              v88 = 2;
              if (v52 == 1 && *v51 == v88 && (v80 = v29, v86 = mlir::DenseElementsAttr::getType(&v80), v87 = v53, ElementType = mlir::ShapedType::getElementType(&v86), mlir::Type::isUnsignedInteger(&ElementType, 64)))
              {
LABEL_126:
                if (v21 && (mlir::anec::BoxCoordinateModeAttr::classof(v21) & 1) == 0)
                {
                  v39 = "'anec.crop_resize' op attribute 'box_coordinate_mode' failed to satisfy constraint: valid BoxCoordinateMode";
                }

                else
                {
                  if (!v28)
                  {
                    goto LABEL_174;
                  }

                  v54 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v28 + 8);
                  v82 = v28;
                  v83 = v54;
                  v55 = mlir::ElementsAttr::getType(&v82);
                  v56 = v55;
                  if (v55)
                  {
                    v55 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v55 + 8);
                  }

                  v89 = v56;
                  v90 = v55;
                  v57 = mlir::ShapedType::getShape(&v89);
                  v86 = 5;
                  if (v58 == 1 && *v57 == v86 && (v88 = v28, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_0>(&v88) & 1) != 0))
                  {
LABEL_174:
                    if (!v37)
                    {
                      goto LABEL_175;
                    }

                    v59 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v37 + 8);
                    v82 = v37;
                    v83 = v59;
                    v60 = mlir::ElementsAttr::getType(&v82);
                    v61 = v60;
                    if (v60)
                    {
                      v60 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60 + 8);
                    }

                    v89 = v61;
                    v90 = v60;
                    v62 = mlir::ShapedType::getShape(&v89);
                    v86 = 5;
                    if (v63 == 1 && *v62 == v86 && (v88 = v37, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(&v88) & 1) != 0))
                    {
LABEL_175:
                      if (!v41)
                      {
                        goto LABEL_176;
                      }

                      v64 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v41 + 8);
                      v82 = v41;
                      v83 = v64;
                      v65 = mlir::ElementsAttr::getType(&v82);
                      v66 = v65;
                      if (v65)
                      {
                        v65 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v65 + 8);
                      }

                      v89 = v66;
                      v90 = v65;
                      v67 = mlir::ShapedType::getShape(&v89);
                      v86 = 5;
                      if (v68 == 1 && *v67 == v86 && (v88 = v41, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_2>(&v88) & 1) != 0))
                      {
LABEL_176:
                        if (!v79)
                        {
                          goto LABEL_177;
                        }

                        v69 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v79 + 8);
                        v82 = v79;
                        v83 = v69;
                        v70 = mlir::ElementsAttr::getType(&v82);
                        v71 = v70;
                        if (v70)
                        {
                          v70 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v70 + 8);
                        }

                        v89 = v71;
                        v90 = v70;
                        v72 = mlir::ShapedType::getShape(&v89);
                        v86 = 5;
                        if (v73 == 1 && *v72 == v86 && (v88 = v79, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(&v88) & 1) != 0))
                        {
LABEL_177:
                          if (!v40)
                          {
                            goto LABEL_178;
                          }

                          v74 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v40 + 8);
                          v82 = v40;
                          v83 = v74;
                          v75 = mlir::ElementsAttr::getType(&v82);
                          v76 = v75;
                          if (v75)
                          {
                            v75 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v75 + 8);
                          }

                          v89 = v76;
                          v90 = v75;
                          v77 = mlir::ShapedType::getShape(&v89);
                          v86 = 5;
                          if (v78 == 1 && *v77 == v86 && (v88 = v40, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_4>(&v88) & 1) != 0))
                          {
LABEL_178:
                            if (!v14)
                            {
                              return 1;
                            }

                            if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
                            {
                              v82 = v14;
                              v89 = mlir::FloatAttr::getType(&v82);
                              if (mlir::Type::isF16(&v89))
                              {
                                return 1;
                              }
                            }

                            v39 = "'anec.crop_resize' op attribute 'background_value' failed to satisfy constraint: 16-bit float attribute";
                          }

                          else
                          {
                            v39 = "'anec.crop_resize' op attribute 'padding_modes' failed to satisfy constraint: PaddingMode elements attribute of shape {5}";
                          }
                        }

                        else
                        {
                          v39 = "'anec.crop_resize' op attribute 'sampling_method' failed to satisfy constraint: SamplingGridMethod elements attribute of shape {5}";
                        }
                      }

                      else
                      {
                        v39 = "'anec.crop_resize' op attribute 'sampling_mode' failed to satisfy constraint: SamplingGridMode elements attribute of shape {5}";
                      }
                    }

                    else
                    {
                      v39 = "'anec.crop_resize' op attribute 'normalized_range' failed to satisfy constraint: NormalizedCoordinateRange elements attribute of shape {5}";
                    }
                  }

                  else
                  {
                    v39 = "'anec.crop_resize' op attribute 'coordinate_mode' failed to satisfy constraint: CoordinateMode elements attribute of shape {5}";
                  }
                }
              }

              else
              {
LABEL_162:
                v39 = "'anec.crop_resize' op attribute 'crop_dims' failed to satisfy constraint: ui64 elements attribute of shape {2}";
              }
            }

            else
            {
LABEL_161:
              v39 = "'anec.crop_resize' op attribute 'output_dims' failed to satisfy constraint: ui64 elements attribute of shape {2}";
            }

LABEL_170:
            v82 = v39;
            v84 = 259;
            mlir::emitError(a2, &v82, &v89);
            v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v89);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v89);
            return v5;
          }

LABEL_67:
          v82 = "'anec.crop_resize' op requires attribute 'normalized_range'";
          v84 = 259;
          mlir::emitError(a2, &v82, &v89);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v89);
          if (v89)
          {
            mlir::InFlightDiagnostic::report(&v89);
          }

          if (v98 != 1)
          {
            return v5;
          }

          if (v97 != &v98)
          {
            free(v97);
          }

          v30 = __p;
          if (__p)
          {
            v31 = v96;
            v32 = __p;
            if (v96 != __p)
            {
              do
              {
                v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
              }

              while (v31 != v30);
              v32 = __p;
            }

            v96 = v30;
            operator delete(v32);
          }

          v9 = v93;
          if (!v93)
          {
            goto LABEL_85;
          }

          v33 = v94;
          v11 = v93;
          if (v94 == v93)
          {
            goto LABEL_84;
          }

          do
          {
            v35 = *--v33;
            v34 = v35;
            *v33 = 0;
            if (v35)
            {
              MEMORY[0x259C63150](v34, 0x1000C8077774924);
            }
          }

          while (v33 != v9);
          goto LABEL_83;
        }

        i = (i + 16);
      }

      v82 = "'anec.crop_resize' op requires attribute 'box_coordinate_mode'";
      v84 = 259;
      mlir::emitError(a2, &v82, &v89);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v89);
      if (v89)
      {
        mlir::InFlightDiagnostic::report(&v89);
      }

      if (v98 != 1)
      {
        return v5;
      }

      if (v97 != &v98)
      {
        free(v97);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v96;
        v17 = __p;
        if (v96 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v96 = v15;
        operator delete(v17);
      }

      v9 = v93;
      if (!v93)
      {
        goto LABEL_85;
      }

      v18 = v94;
      v11 = v93;
      if (v94 == v93)
      {
        goto LABEL_84;
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
LABEL_83:
      v11 = v93;
      goto LABEL_84;
    }
  }

  v82 = "'anec.crop_resize' op requires attribute 'background_value'";
  v84 = 259;
  mlir::emitError(a2, &v82, &v89);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v89);
  if (v89)
  {
    mlir::InFlightDiagnostic::report(&v89);
  }

  if (v98 == 1)
  {
    if (v97 != &v98)
    {
      free(v97);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v96;
      v8 = __p;
      if (v96 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v96 = v6;
      operator delete(v8);
    }

    v9 = v93;
    if (v93)
    {
      v10 = v94;
      v11 = v93;
      if (v94 != v93)
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
        goto LABEL_83;
      }

LABEL_84:
      v94 = v9;
      operator delete(v11);
    }

LABEL_85:
    if (v91 != &v92)
    {
      free(v91);
    }
  }

  return v5;
}

uint64_t mlir::anec::CropResize::getCoordinateMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4 - 80), *(*(*(*this + 6) + 96) + 16));
}

uint64_t mlir::anec::CropResize::getNormalizedRange(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), (v3 + 16 * v4 - 64), *(*(*(*this + 6) + 96) + 32));
}

uint64_t mlir::anec::CropResize::getPaddingModes(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 80), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 48));
}

uint64_t mlir::anec::CropResize::getSamplingMethod(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 96), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 56));
}

void *mlir::anec::CropResize::getBackgroundValue@<X0>(mlir::Operation **this@<X0>, uint64_t a2@<X8>)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6 - 112), **(*(*this + 6) + 96));
  return mlir::FloatAttr::getValue(&AttrDictionary, a2);
}

void mlir::anec::anonymous namespace::fillZinIrTextureInfo(uint64_t a1, void *a2, void *a3, void *a4, void *a5, __int16 a6, unsigned int a7)
{
  if (a7)
  {
    v12 = 0;
    v13 = a7;
    do
    {
      DimFromIndex = mlir::anec::getDimFromIndex(v12, v13);
      if ((DimFromIndex & 0x100000000) != 0)
      {
        v14 = dword_257373FEC[DimFromIndex];
      }

      else
      {
        v14 = 5;
      }

      v21 = 0;
      v20 = v14;
      v15 = dword_257373FC0[*(*a2 + 8 * v12)];
      LODWORD(v21) = *(*a3 + 8 * v12) != 0;
      HIDWORD(v21) = v15;
      std::vector<ZinIrCoordinateInfo>::push_back[abi:nn200100](a1 + 80, &v20);
      v19 = 0;
      v19 = __PAIR64__(dword_257373FCC[*(*a4 + 8 * v12)], v14);
      std::vector<long long>::push_back[abi:nn200100](a1 + 104, &v19);
      v18 = 0;
      v18 = __PAIR64__(*(*a5 + 8 * v12) != 0, v14);
      std::vector<long long>::push_back[abi:nn200100](a1 + 128, &v18);
      v12 = (v12 + 1);
    }

    while (v13 != v12);
  }

  *(a1 + 152) = a6;
}

uint64_t mlir::anec::CropResize::getBoxCoordinateMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 96), *(*(*(*this + 6) + 96) + 8));
  return mlir::IntegerAttr::getInt(&AttrDictionary);
}

uint64_t mlir::anec::CropResize::getSamplingMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 112), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 64));
}

uint64_t mlir::anec::CropResize::getOutputDims(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 64), (v3 + 16 * v4 - 48), *(*(*(*this + 6) + 96) + 40));
}

BOOL mlir::anec::CropResize::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::CropResize::getZinIrUnitInfo();
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

BOOL mlir::anec::CropResize::verifyWithANEC(mlir::Operation **a1, mlir::ShapedType *a2, unint64_t a3)
{
  v131 = *MEMORY[0x277D85DE8];
  ANECCropResizeLayerDescInitialize();
  mlir::ShapedType::getShape(a2);
  v7 = v6;
  IndexFromDim = mlir::anec::getIndexFromDim(3, v6);
  if ((v9 & 1) == 0 || (v10 = IndexFromDim, v11 = mlir::anec::getIndexFromDim(4, v7), (v12 & 1) == 0))
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v118 = v120;
  v120[0] = v10;
  v120[1] = v11;
  v119 = 0x200000002;
  v114 = &ANECDimension;
  v117 = 0;
  ANECDimension = 0;
  v115 = 0x200000002;
  v112[0] = v113;
  v112[1] = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v14 = mlir::DictionaryAttr::getValue(buffer);
  v16 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 112), (v14 + 16 * v15), *(*(*(*a1 + 6) + 96) + 64));
  mlir::getValues<unsigned long>(v16, v112);
  v110[0] = v111;
  v110[1] = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v17 = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v18 = mlir::DictionaryAttr::getValue(buffer);
  v20 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v17 + 96), (v18 + 16 * v19 - 16), *(*(*(*a1 + 6) + 96) + 56));
  mlir::getValues<unsigned long>(v20, v110);
  v108[0] = v109;
  v108[1] = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v21 = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v22 = mlir::DictionaryAttr::getValue(buffer);
  v24 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v21 + 80), (v22 + 16 * v23 - 32), *(*(*(*a1 + 6) + 96) + 48));
  mlir::getValues<unsigned long>(v24, v108);
  v106[0] = v107;
  v106[1] = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v25 = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v26 = mlir::DictionaryAttr::getValue(buffer);
  v28 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v25 + 32), (v26 + 16 * v27 - 80), *(*(*(*a1 + 6) + 96) + 16));
  mlir::getValues<unsigned long>(v28, v106);
  v104[0] = v105;
  v104[1] = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v29 = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v30 = mlir::DictionaryAttr::getValue(buffer);
  v32 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v29 + 48), (v30 + 16 * v31 - 64), *(*(*(*a1 + 6) + 96) + 32));
  mlir::getValues<unsigned long>(v32, v104);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v33 = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v34 = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v33 + 16), (v34 + 16 * v35 - 96), *(*(*(*a1 + 6) + 96) + 8));
  v68 = off_279839FE0[mlir::IntegerAttr::getInt(buffer)];
  v69 = *v114;
  v36 = *v118;
  v70 = off_27983A060[*(v112[0] + *v118)];
  v73 = *v114;
  if (*(v110[0] + v36))
  {
    v37 = @"NearestNeighbor";
  }

  else
  {
    v37 = @"Linear";
  }

  v74 = v37;
  v77 = *v114;
  v78 = off_27983A090[*(v108[0] + v36)];
  v81 = *v114;
  v83 = off_27983A0D0[*(v106[0] + v36)];
  if (*(v104[0] + v36))
  {
    v38 = @"RangeMinusOneToOne";
  }

  else
  {
    v38 = @"RangeZeroToOne";
  }

  v82 = v38;
  v71 = *(v114 + 1);
  v39 = *(v118 + 1);
  v72 = off_27983A060[*(v112[0] + v39)];
  v75 = *(v114 + 1);
  if (*(v110[0] + v39))
  {
    v40 = @"NearestNeighbor";
  }

  else
  {
    v40 = @"Linear";
  }

  v76 = v40;
  v79 = *(v114 + 1);
  v80 = off_27983A090[*(v108[0] + v39)];
  v84 = *(v114 + 1);
  v86 = off_27983A0D0[*(v106[0] + v39)];
  if (*(v104[0] + v39))
  {
    v41 = @"RangeMinusOneToOne";
  }

  else
  {
    v41 = @"RangeZeroToOne";
  }

  v85 = v41;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v42 = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v43 = mlir::DictionaryAttr::getValue(buffer);
  v92[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v42, (v43 + 16 * v44 - 112), **(*(*a1 + 6) + 96));
  mlir::FloatAttr::getValue(v92, buffer);
  v87 = llvm::APFloat::convertToFloat(buffer);
  v45 = v122[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v46) == v45)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v122);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v122);
  }

  v102[0] = v103;
  v102[1] = 0xC00000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v47 = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v48 = mlir::DictionaryAttr::getValue(buffer);
  v50 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v47 + 64), (v48 + 16 * v49 - 48), *(*(*(*a1 + 6) + 96) + 40));
  mlir::getValues<unsigned int>(v50, v102);
  v89 = *v102[0];
  v88 = *(v102[0] + 1);
  v100[0] = v101;
  v100[1] = 0xC00000000;
  CropDimsAttr = mlir::anec::CropResize::getCropDimsAttr(a1);
  mlir::getValues<unsigned int>(CropDimsAttr, v100);
  v91 = *v100[0];
  v90 = *(v100[0] + 1);
  v98[0] = v99;
  v98[1] = 0x100000000;
  v52 = 1;
  *buffer = 1;
  v92[0] = 0;
  ANECUnitValidatorCreate();
  v66 = 0;
  v67 = 0;
  if (ANECValidateCropResizeLayer())
  {
    v63 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v92);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v93, "Invalid configuration", 21);
    std::stringbuf::str();
    v92[0] = *MEMORY[0x277D82818];
    v53 = *(MEMORY[0x277D82818] + 72);
    *(v92 + *(v92[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v93 = v53;
    v94 = MEMORY[0x277D82878] + 16;
    if (v96 < 0)
    {
      operator delete(v95[7].__locale_);
    }

    v94 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v95);
    std::iostream::~basic_iostream();
    MEMORY[0x259C630C0](&v97);
    LOWORD(v95[0].__locale_) = 260;
    v92[0] = &v64;
    v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v130 == 1)
    {
      if (v129 != &v130)
      {
        free(v129);
      }

      v54 = v127;
      if (v127)
      {
        v55 = v128;
        v56 = v127;
        if (v128 != v127)
        {
          do
          {
            v55 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v55 - 1);
          }

          while (v55 != v54);
          v56 = v127;
        }

        v128 = v54;
        operator delete(v56);
      }

      v57 = v125;
      if (v125)
      {
        v58 = v126;
        v59 = v125;
        if (v126 != v125)
        {
          do
          {
            v61 = *--v58;
            v60 = v61;
            *v58 = 0;
            if (v61)
            {
              MEMORY[0x259C63150](v60, 0x1000C8077774924);
            }
          }

          while (v58 != v57);
          v59 = v125;
        }

        v126 = v57;
        operator delete(v59);
      }

      if (v123 != &v124)
      {
        free(v123);
      }
    }

    if (v65 < 0)
    {
      operator delete(v64);
    }
  }

  ANECUnitValidatorDelete();
  if (v98[0] != v99)
  {
    free(v98[0]);
  }

  if (v100[0] != v101)
  {
    free(v100[0]);
  }

  if (v102[0] != v103)
  {
    free(v102[0]);
  }

  if (v104[0] != v105)
  {
    free(v104[0]);
  }

  if (v106[0] != v107)
  {
    free(v106[0]);
  }

  if (v108[0] != v109)
  {
    free(v108[0]);
  }

  if (v110[0] != v111)
  {
    free(v110[0]);
  }

  if (v112[0] != v113)
  {
    free(v112[0]);
  }

  if (v114 != &ANECDimension)
  {
    free(v114);
  }

  if (v118 != v120)
  {
    free(v118);
  }

  return v52;
}

uint64_t mlir::getValues<unsigned int>(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v13, a1, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v15);
  for (result = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v11, a1, NumElements); v14 != v12; ++v14)
  {
    result = mlir::DenseElementsAttr::IntElementIterator::operator*(v13, &v9);
    if (v10 >= 0x41)
    {
      v6 = v9;
    }

    else
    {
      v6 = &v9;
    }

    v7 = *v6;
    v8 = *(a2 + 8);
    if (v8 >= *(a2 + 12))
    {
      result = llvm::SmallVectorTemplateBase<int,true>::push_back(a2, v7);
    }

    else
    {
      *(*a2 + 4 * v8) = v7;
      ++*(a2 + 8);
    }

    if (v10 >= 0x41)
    {
      result = v9;
      if (v9)
      {
        result = MEMORY[0x259C63150](v9, 0x1000C8000313F17);
      }
    }
  }

  return result;
}

uint64_t mlir::anec::GatherND::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

    mlir::OperationName::OperationName(&v57, "anec.gather_nd", 14, Context);
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

  if ((mlir::anec::GatherNDAdaptor::verify(&v56, v18) & 1) == 0)
  {
    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "Failed to verify adaptor");
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v47[0] = v20;
  v47[1] = v19;
  v21 = mlir::TypeRange::dereference_iterator(a9, 1);
  v22 = v21;
  if (v21)
  {
    v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
  }

  v46[0] = v22;
  v46[1] = v21;
  mlir::ShapedType::getShape(v47);
  v24 = v23;
  IndexFromDim = mlir::anec::getIndexFromDim(1, v23);
  if (v26)
  {
    v27 = IndexFromDim;
    v53 = v55;
    v54 = 0x500000000;
    v28 = mlir::DictionaryAttr::begin(&v56);
    v29 = mlir::DictionaryAttr::end(&v56);
    v30 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v28, v29, **(v57 + 96));
    mlir::getValues<unsigned long>(v30, &v53);
    v31 = *(mlir::ShapedType::getShape(v46) + 8 * v27);
    v32 = v54;
    v50 = v52;
    v51 = 0x500000000;
    if (v24)
    {
      if (v24 >= 6)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(v50, 8 * v24);
      LODWORD(v51) = v24;
      v35 = 0;
      v36 = v31 / v32;
      do
      {
        v38 = *(mlir::ShapedType::getShape(v47) + 8 * v35);
        v37 = v36;
        if (v27 != v35)
        {
          v37 = *(mlir::ShapedType::getShape(v46) + 8 * v35);
        }

        if (v54)
        {
          v39 = 8 * v54;
          v40 = v53;
          while (*v40 != v35)
          {
            ++v40;
            v39 -= 8;
            if (!v39)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
          v40 = v53;
        }

        if (v40 == (v53 + 8 * v54))
        {
LABEL_20:
          if (v38 > v37)
          {
            v37 = v38;
          }
        }

        v33 = v50;
        *(v50 + v35++) = v37;
      }

      while (v35 != v24);
      LODWORD(v24) = v51;
    }

    else
    {
      v33 = v50;
    }

    *&v48 = v33;
    *(&v48 + 1) = v24;
    v49 = 1;
    ElementType = mlir::ShapedType::getElementType(v47);
    v42 = mlir::ShapedType::cloneWith(v47, &v48, ElementType);
    v43 = *(a11 + 8);
    if (v43 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v43) = v42;
    ++*(a11 + 8);
    if (v50 != v52)
    {
      free(v50);
    }

    if (v53 != v55)
    {
      free(v53);
    }

    return 1;
  }

  else
  {
    v44 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::anec::GatherNDAdaptor::verify(v44, v45);
  }
}

uint64_t mlir::anec::GatherNDAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
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

        v34[0] = v17;
        v34[1] = Type;
        mlir::ShapedType::getShape(v34);
        if (v18 == 1 && mlir::hasUniqueValues(v14))
        {
          v30 = v14;
          if (mlir::DenseElementsAttr::getNumElements(&v30))
          {
            v27 = v14;
            v28[0] = mlir::DenseElementsAttr::getType(&v27);
            v28[1] = v19;
            ElementType = mlir::ShapedType::getElementType(v28);
            if (mlir::Type::isUnsignedInteger(&ElementType, 64))
            {
              return 1;
            }
          }
        }
      }

      v31[0] = "'anec.gather_nd' op attribute 'axes' failed to satisfy constraint: ui64 unique not empty elements attribute of ranks 1";
      v32 = 259;
      mlir::emitError(a2, v31, v34);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }

      if (v42 == 1)
      {
        if (v41 != &v42)
        {
          free(v41);
        }

        v20 = __p;
        if (__p)
        {
          v21 = v40;
          v22 = __p;
          if (v40 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v40 = v20;
          operator delete(v22);
        }

        v9 = v37;
        if (v37)
        {
          v23 = v38;
          v11 = v37;
          if (v38 != v37)
          {
            do
            {
              v25 = *--v23;
              v24 = v25;
              *v23 = 0;
              if (v25)
              {
                MEMORY[0x259C63150](v24, 0x1000C8077774924);
              }
            }

            while (v23 != v9);
            goto LABEL_46;
          }

          goto LABEL_47;
        }

        goto LABEL_48;
      }

      return v5;
    }
  }

  v31[0] = "'anec.gather_nd' op requires attribute 'axes'";
  v32 = 259;
  mlir::emitError(a2, v31, v34);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
  if (v34[0])
  {
    mlir::InFlightDiagnostic::report(v34);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v40;
      v8 = __p;
      if (v40 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v40 = v6;
      operator delete(v8);
    }

    v9 = v37;
    if (v37)
    {
      v10 = v38;
      v11 = v37;
      if (v38 != v37)
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
LABEL_46:
        v11 = v37;
      }

LABEL_47:
      v38 = v9;
      operator delete(v11);
    }

LABEL_48:
    if (v35 != &v36)
    {
      free(v35);
    }
  }

  return v5;
}

BOOL mlir::anec::GatherND::verifyWithANEC(mlir::Operation **a1, mlir::ShapedType *a2, unint64_t a3)
{
  v53 = *MEMORY[0x277D85DE8];
  ANECGatherLayerDescInitialize();
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v7 = mlir::DictionaryAttr::getValue(buffer);
  v32[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v7 + 16 * v8), **(*(*a1 + 6) + 96));
  v32[1] = mlir::DenseElementsAttr::getNumElements(v32);
  mlir::ShapedType::getShape(a2);
  v10 = v9;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(buffer, v32[0], 0);
  v11 = v32[0];
  NumElements = mlir::DenseElementsAttr::getNumElements(v32);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v34, v11, NumElements);
  if (v44 != v35)
  {
    v24 = &v33;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v40);
      v25 = v41;
      if (v41 >= 0x41)
      {
        if (v25 - llvm::APInt::countLeadingZerosSlowCase(&v40) <= 0x40)
        {
          v26 = *v40;
        }

        else
        {
          v26 = -1;
        }
      }

      else
      {
        v26 = v40;
      }

      if (v41 >= 0x41 && v40)
      {
        MEMORY[0x259C63150](v40, 0x1000C8000313F17);
      }

      ++v44;
      ++v24;
    }

    while (v44 != v35);
  }

  v13 = 1;
  *buffer = 1;
  v34[0] = 0;
  ANECUnitValidatorCreate();
  v40 = v42;
  v41 = 0x100000000;
  v30 = 0;
  v31 = 0;
  if (ANECValidateGatherLayer())
  {
    v14 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v34);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v35, "Invalid configuration", 21);
    std::stringbuf::str();
    v34[0] = *MEMORY[0x277D82818];
    v15 = *(MEMORY[0x277D82818] + 72);
    *(v34 + *(v34[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v35 = v15;
    v36 = MEMORY[0x277D82878] + 16;
    if (v38 < 0)
    {
      operator delete(v37[7].__locale_);
    }

    v36 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v37);
    std::iostream::~basic_iostream();
    MEMORY[0x259C630C0](&v39);
    LOWORD(v37[0].__locale_) = 260;
    v34[0] = &v28;
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v52 == 1)
    {
      if (v51 != &v52)
      {
        free(v51);
      }

      v16 = v49;
      if (v49)
      {
        v17 = v50;
        v18 = v49;
        if (v50 != v49)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = v49;
        }

        v50 = v16;
        operator delete(v18);
      }

      v19 = v47;
      if (v47)
      {
        v20 = v48;
        v21 = v47;
        if (v48 != v47)
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
          v21 = v47;
        }

        v48 = v19;
        operator delete(v21);
      }

      if (v45 != &v46)
      {
        free(v45);
      }
    }

    if (v29 < 0)
    {
      operator delete(v28);
    }
  }

  if (v40 != v42)
  {
    free(v40);
  }

  ANECUnitValidatorDelete();
  return v13;
}

BOOL mlir::anec::GatherND::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::GatherND::getZinIrUnitInfo();
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

BOOL mlir::anec::ArgMinMax::inferPromotedReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v59 = *MEMORY[0x277D85DE8];
  v52 = a6;
  LOBYTE(v53) = 0;
  v54 = 0;
  v55 = a7;
  v56 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v52);
    if (v54 == 1)
    {
      v54 = 0;
    }

    mlir::OperationName::OperationName(&v53, "anec.arg_min_max", 16, Context);
    v54 = 1;
  }

  v57 = a4;
  v58 = a5;
  v17 = mlir::UnknownLoc::get(this, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if ((mlir::anec::ArgMinMaxAdaptor::verify(&v52, v18) & 1) == 0)
  {
    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "Failed to verify adaptor");
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v43[0] = v20;
  v43[1] = v19;
  v49 = v51;
  v50 = 0x600000000;
  v21 = mlir::DictionaryAttr::begin(&v52);
  v22 = mlir::DictionaryAttr::end(&v52);
  v23 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v21, (v22 - 64), **(v53 + 96));
  mlir::getValues<long long>(v23, &v49);
  if (v50)
  {
    v24 = v49;
    v25 = 8 * v50;
    while (1)
    {
      v26 = *v24;
      mlir::ShapedType::getShape(v43);
      if (v27 <= v26)
      {
        break;
      }

      ++v24;
      v25 -= 8;
      if (!v25)
      {
        goto LABEL_15;
      }
    }

    v42 = *(a11 + 8);
    if (v42 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v42) = v43[0];
    ++*(a11 + 8);
  }

  else
  {
LABEL_15:
    Shape = mlir::ShapedType::getShape(v43);
    v29 = mlir::ShapedType::getShape(v43);
    v31 = (v29 + 8 * v30);
    v46 = v48;
    v47 = 0x600000000;
    if (((v31 - Shape) >> 3) >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v33 = 0;
    v34 = v48;
    if (v31 != Shape)
    {
      memcpy(v48, Shape, v31 - Shape);
      v33 = v47;
      v34 = v46;
    }

    v35 = v33 + ((v31 - Shape) >> 3);
    LODWORD(v47) = v33 + ((v31 - Shape) >> 3);
    if (v50)
    {
      v36 = v49;
      v37 = 8 * v50;
      do
      {
        v38 = *v36++;
        *&v34[8 * v38] = 1;
        v37 -= 8;
      }

      while (v37);
    }

    v39 = mlir::IntegerType::get(this, 16, 2u);
    *&v44 = v34;
    *(&v44 + 1) = v35;
    v45 = 1;
    v40 = mlir::ShapedType::cloneWith(v43, &v44, v39);
    v41 = *(a11 + 8);
    if (v41 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v41) = v40;
    ++*(a11 + 8);
    if (v46 != v48)
    {
      free(v46);
    }
  }

  if (v49 != v51)
  {
    free(v49);
  }

  return 1;
}

uint64_t mlir::anec::ArgMinMaxAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v87 = *MEMORY[0x277D85DE8];
  v75 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v75); i != mlir::DictionaryAttr::end(&v75); i = (i + 16))
  {
    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      v14 = *(i + 1);
      while (i != mlir::DictionaryAttr::end(&v75))
      {
        if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 8))
        {
          v21 = *(i + 1);
          while (i != mlir::DictionaryAttr::end(&v75))
          {
            if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 16))
            {
              v28 = *(i + 1);
              while (i != mlir::DictionaryAttr::end(&v75))
              {
                if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 24))
                {
                  v36 = *(i + 1);
                  while (1)
                  {
                    if (i == mlir::DictionaryAttr::end(&v75))
                    {
                      v72 = "'anec.arg_min_max' op requires attribute 'stride_values'";
                      v74 = 259;
                      mlir::emitError(a2, &v72, &v77);
                      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
                      if (v77)
                      {
                        mlir::InFlightDiagnostic::report(&v77);
                      }

                      if (v86 == 1)
                      {
                        mlir::Diagnostic::~Diagnostic(&v78);
                      }

                      return v5;
                    }

                    if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 32))
                    {
                      break;
                    }

                    i = (i + 16);
                  }

                  v37 = *(i + 1);
                  if (!v14)
                  {
                    goto LABEL_106;
                  }

                  if (!mlir::DenseIntElementsAttr::classof(v14))
                  {
                    goto LABEL_129;
                  }

                  v38 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
                  v72 = v14;
                  v73 = v38;
                  Type = mlir::ElementsAttr::getType(&v72);
                  v40 = Type;
                  if (Type)
                  {
                    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
                  }

                  v77 = v40;
                  v78 = Type;
                  mlir::ShapedType::getShape(&v77);
                  if (v41)
                  {
                    v42 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
                    v76[0] = v14;
                    v76[1] = v42;
                    v43 = mlir::ElementsAttr::getType(v76);
                    v44 = v43;
                    if (v43)
                    {
                      v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v43 + 8);
                    }

                    v70 = v44;
                    v71 = v43;
                    mlir::ShapedType::getShape(&v70);
                    if (v45 != 1)
                    {
                      goto LABEL_129;
                    }
                  }

                  if (mlir::hasUniqueValues(v14) && (v69 = v14, mlir::DenseElementsAttr::getNumElements(&v69)) && (v66 = v14, v67[0] = mlir::DenseElementsAttr::getType(&v66), v67[1] = v46, ElementType = mlir::ShapedType::getElementType(v67), mlir::Type::isUnsignedInteger(&ElementType, 64)))
                  {
LABEL_106:
                    if (v28 && (llvm::CastInfo<mlir::anec::ArgMinMaxModeAttr,mlir::Attribute const,void>::isPossible(v28) & 1) == 0)
                    {
                      v65 = "'anec.arg_min_max' op attribute 'mode' failed to satisfy constraint: valid ArgMinMaxMode";
                    }

                    else
                    {
                      if (!v21)
                      {
                        goto LABEL_137;
                      }

                      if (!mlir::DenseIntElementsAttr::classof(v21))
                      {
                        goto LABEL_130;
                      }

                      v47 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v21 + 8);
                      v72 = v21;
                      v73 = v47;
                      v48 = mlir::ElementsAttr::getType(&v72);
                      v49 = v48;
                      if (v48)
                      {
                        v48 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v48 + 8);
                      }

                      v77 = v49;
                      v78 = v48;
                      Shape = mlir::ShapedType::getShape(&v77);
                      v76[0] = 2;
                      if (v51 == 1 && *Shape == v76[0] && (v69 = v21, v70 = mlir::DenseElementsAttr::getType(&v69), v71 = v52, v67[0] = mlir::ShapedType::getElementType(&v70), mlir::Type::isUnsignedInteger(v67, 64)))
                      {
LABEL_137:
                        if (!v37)
                        {
                          goto LABEL_138;
                        }

                        if (!mlir::DenseIntElementsAttr::classof(v37))
                        {
                          goto LABEL_132;
                        }

                        v53 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v37 + 8);
                        v72 = v37;
                        v73 = v53;
                        v54 = mlir::ElementsAttr::getType(&v72);
                        v55 = v54;
                        if (v54)
                        {
                          v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
                        }

                        v77 = v55;
                        v78 = v54;
                        v56 = mlir::ShapedType::getShape(&v77);
                        v76[0] = 2;
                        if (v57 == 1 && *v56 == v76[0] && (v69 = v37, v70 = mlir::DenseElementsAttr::getType(&v69), v71 = v58, v67[0] = mlir::ShapedType::getElementType(&v70), mlir::Type::isUnsignedInteger(v67, 64)))
                        {
LABEL_138:
                          if (!v36)
                          {
                            return 1;
                          }

                          if (mlir::DenseIntElementsAttr::classof(v36))
                          {
                            v59 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v36 + 8);
                            v72 = v36;
                            v73 = v59;
                            v60 = mlir::ElementsAttr::getType(&v72);
                            v61 = v60;
                            if (v60)
                            {
                              v60 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60 + 8);
                            }

                            v77 = v61;
                            v78 = v60;
                            v62 = mlir::ShapedType::getShape(&v77);
                            v76[0] = 4;
                            if (v63 == 1 && *v62 == v76[0])
                            {
                              v69 = v36;
                              v70 = mlir::DenseElementsAttr::getType(&v69);
                              v71 = v64;
                              v67[0] = mlir::ShapedType::getElementType(&v70);
                              if (mlir::Type::isUnsignedInteger(v67, 64))
                              {
                                return 1;
                              }
                            }
                          }

                          v65 = "'anec.arg_min_max' op attribute 'pad_values' failed to satisfy constraint: ui64 elements attribute of shape {4}";
                        }

                        else
                        {
LABEL_132:
                          v65 = "'anec.arg_min_max' op attribute 'stride_values' failed to satisfy constraint: ui64 elements attribute of shape {2}";
                        }
                      }

                      else
                      {
LABEL_130:
                        v65 = "'anec.arg_min_max' op attribute 'kernel_size' failed to satisfy constraint: ui64 elements attribute of shape {2}";
                      }
                    }
                  }

                  else
                  {
LABEL_129:
                    v65 = "'anec.arg_min_max' op attribute 'axes' failed to satisfy constraint: ui64 unique not empty elements attribute of ranks 0/1";
                  }

                  v72 = v65;
                  v74 = 259;
                  mlir::emitError(a2, &v72, &v77);
                  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v77);
                  return v5;
                }

                i = (i + 16);
              }

              v72 = "'anec.arg_min_max' op requires attribute 'pad_values'";
              v74 = 259;
              mlir::emitError(a2, &v72, &v77);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
              if (v77)
              {
                mlir::InFlightDiagnostic::report(&v77);
              }

              if (v86 != 1)
              {
                return v5;
              }

              if (v85 != &v86)
              {
                free(v85);
              }

              v29 = __p;
              if (__p)
              {
                v30 = v84;
                v31 = __p;
                if (v84 != __p)
                {
                  do
                  {
                    v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
                  }

                  while (v30 != v29);
                  v31 = __p;
                }

                v84 = v29;
                operator delete(v31);
              }

              v9 = v81;
              if (!v81)
              {
                goto LABEL_83;
              }

              v32 = v82;
              v11 = v81;
              if (v82 == v81)
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

          v72 = "'anec.arg_min_max' op requires attribute 'mode'";
          v74 = 259;
          mlir::emitError(a2, &v72, &v77);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
          if (v77)
          {
            mlir::InFlightDiagnostic::report(&v77);
          }

          if (v86 != 1)
          {
            return v5;
          }

          if (v85 != &v86)
          {
            free(v85);
          }

          v22 = __p;
          if (__p)
          {
            v23 = v84;
            v24 = __p;
            if (v84 != __p)
            {
              do
              {
                v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
              }

              while (v23 != v22);
              v24 = __p;
            }

            v84 = v22;
            operator delete(v24);
          }

          v9 = v81;
          if (!v81)
          {
            goto LABEL_83;
          }

          v25 = v82;
          v11 = v81;
          if (v82 == v81)
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

      v72 = "'anec.arg_min_max' op requires attribute 'kernel_size'";
      v74 = 259;
      mlir::emitError(a2, &v72, &v77);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
      if (v77)
      {
        mlir::InFlightDiagnostic::report(&v77);
      }

      if (v86 != 1)
      {
        return v5;
      }

      if (v85 != &v86)
      {
        free(v85);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v84;
        v17 = __p;
        if (v84 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v84 = v15;
        operator delete(v17);
      }

      v9 = v81;
      if (!v81)
      {
        goto LABEL_83;
      }

      v18 = v82;
      v11 = v81;
      if (v82 == v81)
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
      v11 = v81;
      goto LABEL_82;
    }
  }

  v72 = "'anec.arg_min_max' op requires attribute 'axes'";
  v74 = 259;
  mlir::emitError(a2, &v72, &v77);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
  if (v77)
  {
    mlir::InFlightDiagnostic::report(&v77);
  }

  if (v86 == 1)
  {
    if (v85 != &v86)
    {
      free(v85);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v84;
      v8 = __p;
      if (v84 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v84 = v6;
      operator delete(v8);
    }

    v9 = v81;
    if (v81)
    {
      v10 = v82;
      v11 = v81;
      if (v82 != v81)
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
      v82 = v9;
      operator delete(v11);
    }

LABEL_83:
    if (v79 != &v80)
    {
      free(v79);
    }
  }

  return v5;
}

uint64_t mlir::anec::ArgMinMax::getAxes(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 64), **(*(*this + 6) + 96));
}

uint64_t mlir::anec::ArgMinMax::getMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 16));
  return mlir::IntegerAttr::getInt(&AttrDictionary);
}

uint64_t mlir::anec::ArgMinMax::getKernelSize(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 48), *(*(*(*this + 6) + 96) + 8));
}

uint64_t mlir::anec::ArgMinMax::getStrideValues(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 64), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 32));
}

uint64_t mlir::anec::ArgMinMax::getPadValues(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 24));
}

BOOL mlir::anec::ArgMinMax::verifyWithANEC(mlir::Operation **a1, __int128 *a2, unint64_t a3)
{
  v112 = *MEMORY[0x277D85DE8];
  v67 = *a2;
  v100 = v102;
  v101 = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v7 = mlir::DictionaryAttr::getValue(buffer);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v7 + 16 * v8 - 64), **(*(*a1 + 6) + 96));
  mlir::getValues<long long>(v9, &v100);
  if (v101 < 3)
  {
    v20 = *v100;
    mlir::ShapedType::getShape(&v67);
    DimFromIndex = mlir::anec::getDimFromIndex(v20, v21);
    if ((DimFromIndex & 0x100000000) != 0)
    {
      v32 = DimFromIndex;
      *buffer = mlir::Operation::getAttrDictionary(*a1);
      v33 = mlir::DictionaryAttr::getValue(buffer);
      *buffer = mlir::Operation::getAttrDictionary(*a1);
      v34 = mlir::DictionaryAttr::getValue(buffer);
      *buffer = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v33 + 32), (v34 + 16 * v35 - 32), *(*(*(*a1 + 6) + 96) + 16));
      Int = mlir::IntegerAttr::getInt(buffer);
      v37 = @"SpatialArgMin";
      v38 = @"SpatialArgMax";
      if (v32 == 1)
      {
        v37 = @"ChannelArgMin";
        v38 = @"ChannelArgMax";
      }

      if (Int == 1)
      {
        v37 = v38;
      }

      v68 = v37;
      v98[0] = v99;
      v98[1] = 0x600000000;
      *buffer = mlir::Operation::getAttrDictionary(*a1);
      v39 = mlir::DictionaryAttr::getValue(buffer);
      *buffer = mlir::Operation::getAttrDictionary(*a1);
      v40 = mlir::DictionaryAttr::getValue(buffer);
      v42 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v39 + 16), (v40 + 16 * v41 - 48), *(*(*(*a1 + 6) + 96) + 8));
      mlir::getValues<unsigned long>(v42, v98);
      v11 = 1;
      v70 = 1;
      v69 = vextq_s8(*v98[0], *v98[0], 8uLL);
      v96[0] = v97;
      v96[1] = 0x600000000;
      *buffer = mlir::Operation::getAttrDictionary(*a1);
      v43 = mlir::DictionaryAttr::getValue(buffer);
      *buffer = mlir::Operation::getAttrDictionary(*a1);
      v44 = mlir::DictionaryAttr::getValue(buffer);
      v46 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v43 + 64), (v44 + 16 * v45), *(*(*(*a1 + 6) + 96) + 32));
      mlir::getValues<unsigned long>(v46, v96);
      v73 = 1;
      v72 = *v96[0];
      v71 = *(v96[0] + 1);
      v94[0] = v95;
      v94[1] = 0xC00000000;
      *buffer = mlir::Operation::getAttrDictionary(*a1);
      v47 = mlir::DictionaryAttr::getValue(buffer);
      *buffer = mlir::Operation::getAttrDictionary(*a1);
      v48 = mlir::DictionaryAttr::getValue(buffer);
      v50 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v47 + 48), (v48 + 16 * v49 - 16), *(*(*(*a1 + 6) + 96) + 24));
      mlir::getValues<int>(v50, v94);
      v78 = 0;
      v79 = 0;
      v76 = *v94[0];
      v77 = *(v94[0] + 1);
      v74 = *(v94[0] + 2);
      v75 = *(v94[0] + 3);
      *buffer = 1;
      v80 = 0;
      ANECUnitValidatorCreate();
      v91[0] = v92;
      v91[1] = 0x100000000;
      v65 = 0;
      v66 = 0;
      if (ANECValidateArgMinMaxLayer())
      {
        v62 = *a1;
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v80);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v82, "Invalid configuration", 21);
        std::stringbuf::str();
        v80 = *MEMORY[0x277D82818];
        v51 = *(MEMORY[0x277D82818] + 72);
        *(&v80 + *(v80 - 3)) = *(MEMORY[0x277D82818] + 64);
        v82 = v51;
        v83 = MEMORY[0x277D82878] + 16;
        if (v89 < 0)
        {
          operator delete(v88[2]);
        }

        v83 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(&v84);
        std::iostream::~basic_iostream();
        MEMORY[0x259C630C0](&v90);
        LOWORD(v84.__locale_) = 260;
        v80 = &v63;
        v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
        if (*buffer)
        {
          mlir::InFlightDiagnostic::report(buffer);
        }

        if (v111[0] == 1)
        {
          if (v110 != v111)
          {
            free(v110);
          }

          v52 = __p;
          if (__p)
          {
            v53 = v109;
            v54 = __p;
            if (v109 != __p)
            {
              do
              {
                v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
              }

              while (v53 != v52);
              v54 = __p;
            }

            v109 = v52;
            operator delete(v54);
          }

          v55 = v106;
          if (v106)
          {
            v56 = v107;
            v57 = v106;
            if (v107 != v106)
            {
              do
              {
                v59 = *--v56;
                v58 = v59;
                *v56 = 0;
                if (v59)
                {
                  MEMORY[0x259C63150](v58, 0x1000C8077774924);
                }
              }

              while (v56 != v55);
              v57 = v106;
            }

            v107 = v55;
            operator delete(v57);
          }

          if (v104 != v105)
          {
            free(v104);
          }
        }

        if (v64 < 0)
        {
          operator delete(v63);
        }
      }

      if (v91[0] != v92)
      {
        free(v91[0]);
      }

      ANECUnitValidatorDelete();
      if (v94[0] != v95)
      {
        free(v94[0]);
      }

      if (v96[0] != v97)
      {
        free(v96[0]);
      }

      v60 = v98[0];
      if (v98[0] != v99)
      {
LABEL_61:
        free(v60);
      }
    }

    else
    {
      v23 = *a1;
      v24 = v100;
      mlir::ShapedType::getShape(&v67);
      v80 = "failed: found axis ({0}) incompatible with rank of tensor input ({1}). ArgMin/Max is supported only on Channel or Spatial dimensions.";
      v81 = 133;
      v82 = v88;
      v83 = 2;
      LOBYTE(v84.__locale_) = 1;
      v85 = &unk_28685E520;
      v86 = v24;
      v87[0] = &unk_28685E550;
      v87[1] = v25;
      v88[0] = &v85;
      v88[1] = v87;
      v93 = 263;
      v91[0] = &v80;
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
      if (*buffer)
      {
        mlir::InFlightDiagnostic::report(buffer);
      }

      if (v111[0] == 1)
      {
        if (v110 != v111)
        {
          free(v110);
        }

        v26 = __p;
        if (__p)
        {
          v27 = v109;
          v28 = __p;
          if (v109 != __p)
          {
            do
            {
              v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
            }

            while (v27 != v26);
            v28 = __p;
          }

          v109 = v26;
          operator delete(v28);
        }

        v15 = v106;
        if (v106)
        {
          v29 = v107;
          v17 = v106;
          if (v107 != v106)
          {
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

            while (v29 != v15);
            goto LABEL_58;
          }

LABEL_59:
          v107 = v15;
          operator delete(v17);
        }

LABEL_60:
        v60 = v104;
        if (v104 == v105)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }
    }
  }

  else
  {
    v10 = *a1;
    v80 = "failed: a maximum of two axes can be handled by the operation, but found {0}";
    v81 = 76;
    v82 = v87;
    v83 = 1;
    LOBYTE(v84.__locale_) = 1;
    v85 = &unk_28686BC80;
    v86 = v101;
    v87[0] = &v85;
    v93 = 263;
    v91[0] = &v80;
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v111[0] == 1)
    {
      if (v110 != v111)
      {
        free(v110);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v109;
        v14 = __p;
        if (v109 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v109 = v12;
        operator delete(v14);
      }

      v15 = v106;
      if (v106)
      {
        v16 = v107;
        v17 = v106;
        if (v107 != v106)
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
LABEL_58:
          v17 = v106;
          goto LABEL_59;
        }

        goto LABEL_59;
      }

      goto LABEL_60;
    }
  }

LABEL_62:
  if (v100 != v102)
  {
    free(v100);
  }

  return v11;
}

BOOL mlir::anec::ArgMinMax::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::ArgMinMax::getZinIrUnitInfo();
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

BOOL mlir::anec::GlobalArgMinMax::inferPromotedReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v54 = *MEMORY[0x277D85DE8];
  v47 = a6;
  LOBYTE(v48) = 0;
  v49 = 0;
  v50 = a7;
  v51 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v47);
    if (v49 == 1)
    {
      v49 = 0;
    }

    mlir::OperationName::OperationName(&v48, "anec.global_arg_min_max", 23, Context);
    v49 = 1;
  }

  v52 = a4;
  v53 = a5;
  v17 = mlir::UnknownLoc::get(this, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if ((mlir::anec::GlobalArgMinMaxAdaptor::verify(&v47, v18) & 1) == 0)
  {
    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "Failed to verify adaptor");
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v40[0] = v20;
  v40[1] = v19;
  v21 = mlir::DictionaryAttr::begin(&v47);
  v22 = mlir::DictionaryAttr::end(&v47);
  *&v42 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v21, (v22 - 16), **(v48 + 96));
  mlir::IntegerAttr::getValue(&v42, &v44);
  if (v45 > 0x40)
  {
    v23 = *v44;
    MEMORY[0x259C63150]();
  }

  else
  {
    v23 = v44;
  }

  mlir::ShapedType::getShape(v40);
  if (v25 <= v23)
  {
    v30 = *(a11 + 8);
    if (v30 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v30) = v40[0];
    ++*(a11 + 8);
  }

  else
  {
    Shape = mlir::ShapedType::getShape(v40);
    v27 = mlir::ShapedType::getShape(v40);
    v29 = (v27 + 8 * v28);
    v44 = v46;
    v45 = 0x600000000;
    if (((v29 - Shape) >> 3) >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v31 = 0;
    if (v29 != Shape)
    {
      memcpy(v44, Shape, v29 - Shape);
      v31 = v45;
    }

    LODWORD(v45) = v31 + ((v29 - Shape) >> 3);
    v32 = mlir::DictionaryAttr::begin(&v47);
    v33 = mlir::DictionaryAttr::end(&v47);
    v41 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v32, (v33 - 16), **(v48 + 96));
    mlir::IntegerAttr::getValue(&v41, &v42);
    if (DWORD2(v42) > 0x40)
    {
      v34 = *v42;
      MEMORY[0x259C63150]();
    }

    else
    {
      v34 = v42;
    }

    v35 = v44;
    *(v44 + v34) = 1;
    v36 = v45;
    v37 = mlir::IntegerType::get(this, 16, 2u);
    *&v42 = v35;
    *(&v42 + 1) = v36;
    v43 = 1;
    v38 = mlir::ShapedType::cloneWith(v40, &v42, v37);
    v39 = *(a11 + 8);
    if (v39 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v39) = v38;
    ++*(a11 + 8);
    if (v44 != v46)
    {
      free(v44);
    }
  }

  return 1;
}

uint64_t mlir::anec::GlobalArgMinMaxAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v31 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v31); i != mlir::DictionaryAttr::end(&v31); i = (i + 16))
  {
    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      v14 = *(i + 1);
      while (1)
      {
        if (i == mlir::DictionaryAttr::end(&v31))
        {
          v29[0] = "'anec.global_arg_min_max' op requires attribute 'mode'";
          v30 = 259;
          mlir::emitError(a2, v29, &Type);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
          if (Type)
          {
            mlir::InFlightDiagnostic::report(&Type);
          }

          if (v43 != 1)
          {
            return v5;
          }

          if (v42 != &v43)
          {
            free(v42);
          }

          v15 = __p;
          if (__p)
          {
            v16 = v41;
            v17 = __p;
            if (v41 != __p)
            {
              do
              {
                v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
              }

              while (v16 != v15);
              v17 = __p;
            }

            v41 = v15;
            operator delete(v17);
          }

          v9 = v38;
          if (!v38)
          {
            goto LABEL_68;
          }

          v18 = v39;
          v11 = v38;
          if (v39 == v38)
          {
            goto LABEL_67;
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
          goto LABEL_66;
        }

        if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 8))
        {
          break;
        }

        i = (i + 16);
      }

      v21 = *(i + 1);
      if (!v14 || *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v29[0] = v14, Type = mlir::IntegerAttr::getType(v29), mlir::Type::isUnsignedInteger(&Type, 32)))
      {
        if (!v21)
        {
          return 1;
        }

        if (*(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v29[0] = v21;
          Type = mlir::IntegerAttr::getType(v29);
          if (mlir::Type::isSignlessInteger(&Type, 64))
          {
            v33 = v21;
            if (!mlir::IntegerAttr::getInt(&v33))
            {
              return 1;
            }

            v32 = v21;
            if (mlir::IntegerAttr::getInt(&v32) == 1)
            {
              return 1;
            }
          }
        }

        v29[0] = "'anec.global_arg_min_max' op attribute 'mode' failed to satisfy constraint: valid ArgMinMaxMode";
        v30 = 259;
        mlir::emitError(a2, v29, &Type);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
        if (Type)
        {
          mlir::InFlightDiagnostic::report(&Type);
        }

        if (v43 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v35);
        }

        return v5;
      }

      v29[0] = "'anec.global_arg_min_max' op attribute 'axis' failed to satisfy constraint: 32-bit unsigned integer attribute";
      v30 = 259;
      mlir::emitError(a2, v29, &Type);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
      if (Type)
      {
        mlir::InFlightDiagnostic::report(&Type);
      }

      if (v43 != 1)
      {
        return v5;
      }

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

      v9 = v38;
      if (!v38)
      {
        goto LABEL_68;
      }

      v25 = v39;
      v11 = v38;
      if (v39 == v38)
      {
        goto LABEL_67;
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
LABEL_66:
      v11 = v38;
      goto LABEL_67;
    }
  }

  v29[0] = "'anec.global_arg_min_max' op requires attribute 'axis'";
  v30 = 259;
  mlir::emitError(a2, v29, &Type);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
  if (Type)
  {
    mlir::InFlightDiagnostic::report(&Type);
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
        goto LABEL_66;
      }

LABEL_67:
      v39 = v9;
      operator delete(v11);
    }

LABEL_68:
    if (v36 != &v37)
    {
      free(v36);
    }
  }

  return v5;
}

uint64_t *mlir::anec::GlobalArgMinMax::getAxis(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 16), **(*(*this + 6) + 96));
  mlir::IntegerAttr::getValue(&v9, &AttrDictionary);
  if (v8 <= 0x40)
  {
    return AttrDictionary;
  }

  v5 = *AttrDictionary;
  MEMORY[0x259C63150]();
  return v5;
}

BOOL mlir::anec::GlobalArgMinMax::verifyWithANEC(mlir::Operation **a1, mlir::ShapedType *this, unint64_t a3)
{
  v47 = *MEMORY[0x277D85DE8];
  mlir::ShapedType::getShape(this);
  v7 = v6;
  Axis = mlir::anec::GlobalArgMinMax::getAxis(a1);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v10 = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v10 + 16 * v11), *(*(*(*a1 + 6) + 96) + 8));
  mlir::IntegerAttr::getInt(buffer);
  v28 = @"Min";
  v12 = 1;
  *buffer = 1;
  v30[0] = 0;
  ANECUnitValidatorCreate();
  v36[0] = v37;
  v36[1] = 0x100000000;
  v26 = 0;
  v27 = 0;
  if (ANECValidateGlobalArgMinMaxLayer())
  {
    v13 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v30);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v31, "Invalid configuration", 21);
    std::stringbuf::str();
    v30[0] = *MEMORY[0x277D82818];
    v14 = *(MEMORY[0x277D82818] + 72);
    *(v30 + *(v30[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v31 = v14;
    v32 = MEMORY[0x277D82878] + 16;
    if (v34 < 0)
    {
      operator delete(v33[7].__locale_);
    }

    v32 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v33);
    std::iostream::~basic_iostream();
    MEMORY[0x259C630C0](&v35);
    LOWORD(v33[0].__locale_) = 260;
    v30[0] = &v24;
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v15 = v43;
      if (v43)
      {
        v16 = v44;
        v17 = v43;
        if (v44 != v43)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = v43;
        }

        v44 = v15;
        operator delete(v17);
      }

      v18 = v41;
      if (v41)
      {
        v19 = v42;
        v20 = v41;
        if (v42 != v41)
        {
          do
          {
            v22 = *--v19;
            v21 = v22;
            *v19 = 0;
            if (v22)
            {
              MEMORY[0x259C63150](v21, 0x1000C8077774924);
            }
          }

          while (v19 != v18);
          v20 = v41;
        }

        v42 = v18;
        operator delete(v20);
      }

      if (v39 != &v40)
      {
        free(v39);
      }
    }

    if (v25 < 0)
    {
      operator delete(v24);
    }
  }

  if (v36[0] != v37)
  {
    free(v36[0]);
  }

  ANECUnitValidatorDelete();
  return v12;
}

BOOL mlir::anec::GlobalArgMinMax::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::GlobalArgMinMax::getZinIrUnitInfo();
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

BOOL mlir::anec::Tile::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v55 = *MEMORY[0x277D85DE8];
  v48 = a6;
  LOBYTE(v49) = 0;
  v50 = 0;
  v51 = a7;
  v52 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v48);
    if (v50 == 1)
    {
      v50 = 0;
    }

    mlir::OperationName::OperationName(&v49, "anec.tile", 9, Context);
    v50 = 1;
    a1 = v15;
  }

  v53 = a4;
  v54 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if ((mlir::anec::TileAdaptor::verify(&v48, v18) & 1) == 0)
  {
    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "Failed to verify adaptor");
  }

  v45 = v53;
  v46 = 0;
  v19 = (*(mlir::ValueRange::dereference_iterator(&v45, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  v39[0] = v19;
  v39[1] = v20;
  v45 = v47;
  v46 = 0x500000000;
  v22 = mlir::DictionaryAttr::begin(&v48);
  v23 = mlir::DictionaryAttr::end(&v48);
  v24 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v22, v23, **(v49 + 96));
  mlir::getValues<unsigned long>(v24, &v45);
  Shape = mlir::ShapedType::getShape(v39);
  v26 = mlir::ShapedType::getShape(v39);
  v28 = (v26 + 8 * v27);
  v42 = v44;
  v43 = 0x500000000;
  if (((v28 - Shape) >> 3) >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v29 = 0;
  v30 = v44;
  if (v28 != Shape)
  {
    memcpy(v44, Shape, v28 - Shape);
    v29 = v43;
    v30 = v42;
  }

  v31 = v29 + ((v28 - Shape) >> 3);
  LODWORD(v43) = v31;
  v32 = v46;
  if (v46 == v31 && v46)
  {
    v33 = v45;
    v34 = v30;
    do
    {
      v35 = *v33++;
      *v34++ *= v35;
      --v32;
    }

    while (v32);
  }

  *&v40 = v30;
  *(&v40 + 1) = v31;
  v41 = 1;
  ElementType = mlir::ShapedType::getElementType(v39);
  v37 = mlir::ShapedType::cloneWith(v39, &v40, ElementType);
  v38 = *(a11 + 8);
  if (v38 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v38) = v37;
  ++*(a11 + 8);
  if (v42 != v44)
  {
    free(v42);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  return 1;
}

uint64_t mlir::anec::TileAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v32 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v32); i != mlir::DictionaryAttr::end(&v32); i += 2)
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
        v30[0] = v14;
        v30[1] = v15;
        Type = mlir::ElementsAttr::getType(v30);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v33[0] = v17;
        v33[1] = Type;
        mlir::ShapedType::getShape(v33);
        if (v18 == 1)
        {
          v27 = v14;
          v28[0] = mlir::DenseElementsAttr::getType(&v27);
          v28[1] = v19;
          ElementType = mlir::ShapedType::getElementType(v28);
          if (mlir::Type::isUnsignedInteger(&ElementType, 64))
          {
            return 1;
          }
        }
      }

      v30[0] = "'anec.tile' op attribute 'multipliers' failed to satisfy constraint: ui64 elements attribute of rank 1";
      v31 = 259;
      mlir::emitError(a2, v30, v33);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
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

        v20 = __p;
        if (__p)
        {
          v21 = v39;
          v22 = __p;
          if (v39 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v39 = v20;
          operator delete(v22);
        }

        v9 = v36;
        if (v36)
        {
          v23 = v37;
          v11 = v36;
          if (v37 != v36)
          {
            do
            {
              v25 = *--v23;
              v24 = v25;
              *v23 = 0;
              if (v25)
              {
                MEMORY[0x259C63150](v24, 0x1000C8077774924);
              }
            }

            while (v23 != v9);
            goto LABEL_44;
          }

          goto LABEL_45;
        }

        goto LABEL_46;
      }

      return v5;
    }
  }

  v30[0] = "'anec.tile' op requires attribute 'multipliers'";
  v31 = 259;
  mlir::emitError(a2, v30, v33);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
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

    v6 = __p;
    if (__p)
    {
      v7 = v39;
      v8 = __p;
      if (v39 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v39 = v6;
      operator delete(v8);
    }

    v9 = v36;
    if (v36)
    {
      v10 = v37;
      v11 = v36;
      if (v37 != v36)
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
LABEL_44:
        v11 = v36;
      }

LABEL_45:
      v37 = v9;
      operator delete(v11);
    }

LABEL_46:
    if (v34 != &v35)
    {
      free(v34);
    }
  }

  return v5;
}

BOOL mlir::anec::Tile::verifyWithANEC(mlir::Operation **a1, mlir::ShapedType *a2, unint64_t a3)
{
  v67 = *MEMORY[0x277D85DE8];
  ANECTileLayerDescInitialize();
  v55 = v57;
  v56 = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v7 = mlir::DictionaryAttr::getValue(buffer);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v7 + 16 * v8), **(*(*a1 + 6) + 96));
  mlir::getValues<long long>(v9, &v55);
  v10 = v56;
  mlir::ShapedType::getShape(a2);
  if (v11 == v10)
  {
    if (v56 == 4)
    {
      *buffer = 1;
      llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v55, v55 + 2, buffer);
    }

    v12 = *(v55 + 1);
    v40 = *v55;
    v43 = v12;
    v44[0] = 0;
    v41 = *(v55 + 1);
    v42 = *(v55 + 4);
    v13 = 1;
    *buffer = 1;
    ANECUnitValidatorCreate();
    v53[0] = v54;
    v53[1] = 0x100000000;
    v38 = 0;
    v39 = 0;
    if (ANECValidateTileLayer())
    {
      v14 = *a1;
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v44);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v45, "Invalid configuration", 21);
      std::stringbuf::str();
      v44[0] = *MEMORY[0x277D82818];
      v15 = *(MEMORY[0x277D82818] + 72);
      *(v44 + *(v44[0] - 3)) = *(MEMORY[0x277D82818] + 64);
      v45 = v15;
      v46 = MEMORY[0x277D82878] + 16;
      if (v51 < 0)
      {
        operator delete(v50[2]);
      }

      v46 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v47);
      std::iostream::~basic_iostream();
      MEMORY[0x259C630C0](&v52);
      LOWORD(v47.__locale_) = 260;
      v44[0] = &v36;
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
      if (*buffer)
      {
        mlir::InFlightDiagnostic::report(buffer);
      }

      if (v66[0] == 1)
      {
        if (v65 != v66)
        {
          free(v65);
        }

        v16 = v63;
        if (v63)
        {
          v17 = v64;
          v18 = v63;
          if (v64 != v63)
          {
            do
            {
              v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
            }

            while (v17 != v16);
            v18 = v63;
          }

          v64 = v16;
          operator delete(v18);
        }

        v19 = v61;
        if (v61)
        {
          v20 = v62;
          v21 = v61;
          if (v62 != v61)
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
            v21 = v61;
          }

          v62 = v19;
          operator delete(v21);
        }

        if (v59 != v60)
        {
          free(v59);
        }
      }

      if (v37 < 0)
      {
        operator delete(v36);
      }
    }

    if (v53[0] != v54)
    {
      free(v53[0]);
    }

    ANECUnitValidatorDelete();
  }

  else
  {
    v24 = *a1;
    v25 = v56;
    mlir::ShapedType::getShape(a2);
    v44[0] = "failed: the number of multipliers ({0}) must be equal to rank ({1})";
    v44[1] = 67;
    v45 = v50;
    v46 = 2;
    LOBYTE(v47.__locale_) = 1;
    v48[0] = &unk_28686BC80;
    v48[1] = v25;
    v49[0] = &unk_28685E550;
    v49[1] = v26;
    v50[0] = v48;
    v50[1] = v49;
    v54[8] = 263;
    v53[0] = v44;
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v66[0] == 1)
    {
      if (v65 != v66)
      {
        free(v65);
      }

      v27 = v63;
      if (v63)
      {
        v28 = v64;
        v29 = v63;
        if (v64 != v63)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = v63;
        }

        v64 = v27;
        operator delete(v29);
      }

      v30 = v61;
      if (v61)
      {
        v31 = v62;
        v32 = v61;
        if (v62 != v61)
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
          v32 = v61;
        }

        v62 = v30;
        operator delete(v32);
      }

      if (v59 != v60)
      {
        free(v59);
      }
    }
  }

  if (v55 != v57)
  {
    free(v55);
  }

  return v13;
}

BOOL mlir::anec::Tile::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::Tile::getZinIrUnitInfo();
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

void *mlir::anec::DeQuant::getScale@<X0>(mlir::Operation **this@<X0>, uint64_t a2@<X8>)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6 - 16), **(*(*this + 6) + 96));
  return mlir::FloatAttr::getValue(&AttrDictionary, a2);
}

uint64_t mlir::anec::DeQuant::getZeroPoint(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  mlir::IntegerAttr::getValue(&v9, &AttrDictionary);
  if (v8 > 0x40)
  {
    v5 = *AttrDictionary;
    MEMORY[0x259C63150]();
  }

  else if (v8)
  {
    return ((AttrDictionary << -v8) >> -v8);
  }

  else
  {
    return 0;
  }

  return v5;
}

BOOL mlir::anec::DeQuant::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::DeQuant::getZinIrUnitInfo();
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

BOOL mlir::anec::Quant::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::Quant::getZinIrUnitInfo();
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

BOOL mlir::anec::Resample::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32 = *MEMORY[0x277D85DE8];
  v25 = a6;
  v26[0] = 0;
  v27 = 0;
  v28 = a7;
  v29 = a8;
  if (a6)
  {
    v13 = a1;
    Context = mlir::Attribute::getContext(&v25);
    if (v27 == 1)
    {
      v27 = 0;
    }

    mlir::OperationName::OperationName(v26, "anec.resample", 13, Context);
    v27 = 1;
    a1 = v13;
  }

  v30 = a4;
  v31 = a5;
  v15 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v16 = a2;
  }

  else
  {
    v16 = v15;
  }

  if ((mlir::anec::ResampleAdaptor::verify(&v25, v16) & 1) == 0)
  {
    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "Failed to verify adaptor");
  }

  v17 = mlir::TypeRange::dereference_iterator(a9, 0);
  v18 = v17;
  if (v17)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
  }

  v22[0] = v18;
  v22[1] = v17;
  v19 = mlir::TypeRange::dereference_iterator(a9, 1);
  if (v19)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  mlir::ShapedType::getShape(v22);
  if ((v20 - 6) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v23[0] = &v24;
    v23[1] = 0xC00000000;
    mlir::anec::getANEDefaultLayout(v20, v23);
  }

  return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "Unsupported promoted rank.");
}

uint64_t mlir::anec::ResampleAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v87 = *MEMORY[0x277D85DE8];
  v75 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v75); i != mlir::DictionaryAttr::end(&v75); i = (i + 16))
  {
    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      v14 = *(i + 1);
      while (i != mlir::DictionaryAttr::end(&v75))
      {
        if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 8))
        {
          v21 = *(i + 1);
          while (i != mlir::DictionaryAttr::end(&v75))
          {
            if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 16))
            {
              v28 = *(i + 1);
              while (i != mlir::DictionaryAttr::end(&v75))
              {
                if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 24))
                {
                  v36 = *(i + 1);
                  while (1)
                  {
                    if (i == mlir::DictionaryAttr::end(&v75))
                    {
                      v72 = "'anec.resample' op requires attribute 'padding_modes'";
                      v74 = 259;
                      mlir::emitError(a2, &v72, &v77);
                      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
                      if (v77)
                      {
                        mlir::InFlightDiagnostic::report(&v77);
                      }

                      if (v86 == 1)
                      {
                        mlir::Diagnostic::~Diagnostic(&v78);
                      }

                      return v5;
                    }

                    if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 32))
                    {
                      break;
                    }

                    i = (i + 16);
                  }

                  v37 = *(i + 1);
                  while (1)
                  {
                    if (i == mlir::DictionaryAttr::end(&v75))
                    {
                      v38 = "'anec.resample' op requires attribute 'sampling_method'";
                      goto LABEL_151;
                    }

                    if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 40))
                    {
                      break;
                    }

                    i = (i + 16);
                  }

                  v39 = *(i + 1);
                  while (1)
                  {
                    if (i == mlir::DictionaryAttr::end(&v75))
                    {
                      v38 = "'anec.resample' op requires attribute 'warp_coordinate_mode'";
                      goto LABEL_151;
                    }

                    if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 48))
                    {
                      break;
                    }

                    i = (i + 16);
                  }

                  v40 = *(i + 1);
                  if (!v21)
                  {
                    goto LABEL_154;
                  }

                  v41 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v21 + 8);
                  v72 = v21;
                  v73 = v41;
                  Type = mlir::ElementsAttr::getType(&v72);
                  v43 = Type;
                  if (Type)
                  {
                    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
                  }

                  v77 = v43;
                  v78 = Type;
                  Shape = mlir::ShapedType::getShape(&v77);
                  v76 = 2;
                  if (v45 == 1 && *Shape == v76 && (v71 = v21, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_0>(&v71) & 1) != 0))
                  {
LABEL_154:
                    if (!v36)
                    {
                      goto LABEL_155;
                    }

                    v46 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v36 + 8);
                    v72 = v36;
                    v73 = v46;
                    v47 = mlir::ElementsAttr::getType(&v72);
                    v48 = v47;
                    if (v47)
                    {
                      v47 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v47 + 8);
                    }

                    v77 = v48;
                    v78 = v47;
                    v49 = mlir::ShapedType::getShape(&v77);
                    v76 = 2;
                    if (v50 == 1 && *v49 == v76 && (v71 = v36, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(&v71) & 1) != 0))
                    {
LABEL_155:
                      if (!v28)
                      {
                        goto LABEL_156;
                      }

                      v51 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v28 + 8);
                      v72 = v28;
                      v73 = v51;
                      v52 = mlir::ElementsAttr::getType(&v72);
                      v53 = v52;
                      if (v52)
                      {
                        v52 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v52 + 8);
                      }

                      v77 = v53;
                      v78 = v52;
                      v54 = mlir::ShapedType::getShape(&v77);
                      v76 = 2;
                      if (v55 == 1 && *v54 == v76 && (v71 = v28, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(&v71) & 1) != 0))
                      {
LABEL_156:
                        if (!v40)
                        {
                          goto LABEL_157;
                        }

                        v56 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v40 + 8);
                        v72 = v40;
                        v73 = v56;
                        v57 = mlir::ElementsAttr::getType(&v72);
                        v58 = v57;
                        if (v57)
                        {
                          v57 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v57 + 8);
                        }

                        v77 = v58;
                        v78 = v57;
                        v59 = mlir::ShapedType::getShape(&v77);
                        v76 = 1;
                        if (v60 == 1 && *v59 == v76 && (v71 = v40, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(&v71) & 1) != 0))
                        {
LABEL_157:
                          if (!v39)
                          {
                            goto LABEL_158;
                          }

                          v61 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v39 + 8);
                          v72 = v39;
                          v73 = v61;
                          v62 = mlir::ElementsAttr::getType(&v72);
                          v63 = v62;
                          if (v62)
                          {
                            v62 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v62 + 8);
                          }

                          v77 = v63;
                          v78 = v62;
                          v64 = mlir::ShapedType::getShape(&v77);
                          v76 = 2;
                          if (v65 == 1 && *v64 == v76 && (v71 = v39, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(&v71) & 1) != 0))
                          {
LABEL_158:
                            if (!v37)
                            {
                              goto LABEL_159;
                            }

                            v66 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v37 + 8);
                            v72 = v37;
                            v73 = v66;
                            v67 = mlir::ElementsAttr::getType(&v72);
                            v68 = v67;
                            if (v67)
                            {
                              v67 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v67 + 8);
                            }

                            v77 = v68;
                            v78 = v67;
                            v69 = mlir::ShapedType::getShape(&v77);
                            v76 = 2;
                            if (v70 == 1 && *v69 == v76 && (v71 = v37, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_4>(&v71) & 1) != 0))
                            {
LABEL_159:
                              if (!v14)
                              {
                                return 1;
                              }

                              if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
                              {
                                v72 = v14;
                                v77 = mlir::FloatAttr::getType(&v72);
                                if (mlir::Type::isF16(&v77))
                                {
                                  return 1;
                                }
                              }

                              v38 = "'anec.resample' op attribute 'background_value' failed to satisfy constraint: 16-bit float attribute";
                            }

                            else
                            {
                              v38 = "'anec.resample' op attribute 'padding_modes' failed to satisfy constraint: PaddingMode elements attribute of shape {2}";
                            }
                          }

                          else
                          {
                            v38 = "'anec.resample' op attribute 'sampling_method' failed to satisfy constraint: SamplingGridMethod elements attribute of shape {2}";
                          }
                        }

                        else
                        {
                          v38 = "'anec.resample' op attribute 'warp_coordinate_mode' failed to satisfy constraint: WarpCoordinateMode elements attribute of shape {1}";
                        }
                      }

                      else
                      {
                        v38 = "'anec.resample' op attribute 'coordinate_type' failed to satisfy constraint: CoordinateType elements attribute of shape {2}";
                      }
                    }

                    else
                    {
                      v38 = "'anec.resample' op attribute 'normalized_range' failed to satisfy constraint: NormalizedCoordinateRange elements attribute of shape {2}";
                    }
                  }

                  else
                  {
                    v38 = "'anec.resample' op attribute 'coordinate_mode' failed to satisfy constraint: CoordinateMode elements attribute of shape {2}";
                  }

LABEL_151:
                  v72 = v38;
                  v74 = 259;
                  mlir::emitError(a2, &v72, &v77);
                  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v77);
                  return v5;
                }

                i = (i + 16);
              }

              v72 = "'anec.resample' op requires attribute 'normalized_range'";
              v74 = 259;
              mlir::emitError(a2, &v72, &v77);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
              if (v77)
              {
                mlir::InFlightDiagnostic::report(&v77);
              }

              if (v86 != 1)
              {
                return v5;
              }

              if (v85 != &v86)
              {
                free(v85);
              }

              v29 = __p;
              if (__p)
              {
                v30 = v84;
                v31 = __p;
                if (v84 != __p)
                {
                  do
                  {
                    v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
                  }

                  while (v30 != v29);
                  v31 = __p;
                }

                v84 = v29;
                operator delete(v31);
              }

              v9 = v81;
              if (!v81)
              {
                goto LABEL_83;
              }

              v32 = v82;
              v11 = v81;
              if (v82 == v81)
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

          v72 = "'anec.resample' op requires attribute 'coordinate_type'";
          v74 = 259;
          mlir::emitError(a2, &v72, &v77);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
          if (v77)
          {
            mlir::InFlightDiagnostic::report(&v77);
          }

          if (v86 != 1)
          {
            return v5;
          }

          if (v85 != &v86)
          {
            free(v85);
          }

          v22 = __p;
          if (__p)
          {
            v23 = v84;
            v24 = __p;
            if (v84 != __p)
            {
              do
              {
                v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
              }

              while (v23 != v22);
              v24 = __p;
            }

            v84 = v22;
            operator delete(v24);
          }

          v9 = v81;
          if (!v81)
          {
            goto LABEL_83;
          }

          v25 = v82;
          v11 = v81;
          if (v82 == v81)
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

      v72 = "'anec.resample' op requires attribute 'coordinate_mode'";
      v74 = 259;
      mlir::emitError(a2, &v72, &v77);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
      if (v77)
      {
        mlir::InFlightDiagnostic::report(&v77);
      }

      if (v86 != 1)
      {
        return v5;
      }

      if (v85 != &v86)
      {
        free(v85);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v84;
        v17 = __p;
        if (v84 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v84 = v15;
        operator delete(v17);
      }

      v9 = v81;
      if (!v81)
      {
        goto LABEL_83;
      }

      v18 = v82;
      v11 = v81;
      if (v82 == v81)
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
      v11 = v81;
      goto LABEL_82;
    }
  }

  v72 = "'anec.resample' op requires attribute 'background_value'";
  v74 = 259;
  mlir::emitError(a2, &v72, &v77);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
  if (v77)
  {
    mlir::InFlightDiagnostic::report(&v77);
  }

  if (v86 == 1)
  {
    if (v85 != &v86)
    {
      free(v85);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v84;
      v8 = __p;
      if (v84 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v84 = v6;
      operator delete(v8);
    }

    v9 = v81;
    if (v81)
    {
      v10 = v82;
      v11 = v81;
      if (v82 != v81)
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
      v82 = v9;
      operator delete(v11);
    }

LABEL_83:
    if (v79 != &v80)
    {
      free(v79);
    }
  }

  return v5;
}

uint64_t mlir::anec::Resample::getCoordinateMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 80), *(*(*(*this + 6) + 96) + 8));
}

uint64_t mlir::anec::Resample::getNormalizedRange(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), (v3 + 16 * v4 - 48), *(*(*(*this + 6) + 96) + 24));
}

uint64_t mlir::anec::Resample::getPaddingModes(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 64), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 32));
}

uint64_t mlir::anec::Resample::getSamplingMethod(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 80), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 40));
}

void *mlir::anec::Resample::getBackgroundValue@<X0>(mlir::Operation **this@<X0>, uint64_t a2@<X8>)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6 - 96), **(*(*this + 6) + 96));
  return mlir::FloatAttr::getValue(&AttrDictionary, a2);
}

uint64_t mlir::anec::Resample::getCoordinateType(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4 - 64), *(*(*(*this + 6) + 96) + 16));
}

uint64_t mlir::anec::Resample::getWarpCoordinateMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 96), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 48));
}

BOOL mlir::anec::Resample::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::Resample::getZinIrUnitInfo();
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