uint64_t mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get(uint64_t *a1, int a2, mlir::MLIRContext *this)
{
  v3 = *a1;
  {
    v8 = this;
    mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get();
    this = v8;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id;
  v10 = this;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(this);
  v9[0] = v4;
  v9[1] = &v10;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4mpsx6detail29TypeWithStaticSubtypesStorageILj1EEEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_8ListTypeEJRNSt3__15arrayINS1_4TypeELm1EEEEEENSE_9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS6_;
  v14[1] = v9;
  v13 = v3;
  v6 = 0x9DDFEA08EB382D69 * ((8 * ((v3 >> 4) ^ (v3 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v11[0] = &v13;
  v11[1] = v14;
  v12 = &v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, v4, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v6 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u> * mlir::StorageUniquer::get<mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u>,std::array<mlir::Type,1ul> &>(llvm::function_ref<void ()(mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u> *)>,mlir::TypeID,std::array<mlir::Type,1ul> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u> * mlir::StorageUniquer::get<mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u>,std::array<mlir::Type,1ul> &>(llvm::function_ref<void ()(mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u> *)>,mlir::TypeID,std::array<mlir::Type,1ul> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

BOOL mlir::mpsx::ListPushBackOp::verify(mlir::Operation **this)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(*this + 9);
  v3 = *(*(v2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(*(v2 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TypeRange::TypeRange(v19, &v16, 1uLL);
  v15 = *(v3 + 8);
  mlir::TypeRange::TypeRange(v17, &v15, 1uLL);
  v28[0] = &unk_286865D28;
  v29 = v28;
  if (v29 == v28)
  {
    (*(*v29 + 32))(v29);
    if (v4)
    {
      return 1;
    }
  }

  else
  {
    if (v29)
    {
      (*(*v29 + 40))(v29);
    }

    if (v4)
    {
      return 1;
    }
  }

  v17[0] = "list's element_type and element's type are not compatible";
  v18 = 259;
  mlir::OpState::emitOpError(this, v17, v19);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
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

    v6 = __p;
    if (__p)
    {
      v7 = v25;
      v8 = __p;
      if (v25 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v25 = v6;
      operator delete(v8);
    }

    v9 = v22;
    if (v22)
    {
      v10 = v23;
      v11 = v22;
      if (v23 != v22)
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
        v11 = v22;
      }

      v23 = v9;
      operator delete(v11);
    }

    if (v20 != &v21)
    {
      free(v20);
    }
  }

  return v5;
}

uint64_t mlir::mpsx::anonymous namespace::areMoreSpecializedTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2 != a4)
  {
    return 0;
  }

  v16[0] = &unk_286864A70;
  v16[1] = v16;
  v16[2] = a5;
  v17 = v16;
  if (!a2)
  {
    v13 = 1;
    v12 = v16;
LABEL_16:
    (*(*v12 + 32))(v12);
    return v13;
  }

  v7 = 0;
  v8 = a2 - 1;
  do
  {
    v9 = mlir::TypeRange::dereference_iterator(a1, v7);
    v14 = mlir::TypeRange::dereference_iterator(a3, v7);
    v15 = v9;
    if (!v17)
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }

    result = (*(*v17 + 48))(v17, &v15, &v14);
    if (result)
    {
      v11 = v8 == v7;
    }

    else
    {
      v11 = 1;
    }

    ++v7;
  }

  while (!v11);
  v12 = v17;
  if (v17 == v16)
  {
    v13 = result;
    goto LABEL_16;
  }

  if (!v17)
  {
    return result;
  }

  v13 = result;
  (*(*v17 + 40))(v17);
  return v13;
}

BOOL mlir::mpsx::FusionOp::verify(mlir::Operation **this)
{
  v26 = *MEMORY[0x277D85DE8];
  v17[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v17);
  v17[0] = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(v17);
  if (*(*(mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8)) + 1) + 8))
  {
    return 1;
  }

  v17[0] = mlir::mpsx::FusionOp::getCustomFusionTypeAttr(this);
  if (v17[0])
  {
    mlir::StringAttr::getValue(v17);
    return 1;
  }

  else
  {
    v15 = "custom fusion defined, but the custom fusion type has not been set";
    v16 = 259;
    mlir::OpState::emitOpError(this, &v15, v17);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    v6 = result;
    if (v17[0])
    {
      mlir::InFlightDiagnostic::report(v17);
      result = v6;
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
        result = v6;
      }

      v7 = __p;
      if (__p)
      {
        v8 = v23;
        v9 = __p;
        if (v23 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v23 = v7;
        operator delete(v9);
        result = v6;
      }

      v10 = v20;
      if (v20)
      {
        v11 = v21;
        v12 = v20;
        if (v21 != v20)
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
          v12 = v20;
        }

        v21 = v10;
        operator delete(v12);
        result = v6;
      }

      if (v18 != &v19)
      {
        free(v18);
        return v6;
      }
    }
  }

  return result;
}

uint64_t mlir::mpsx::FusionOp::getFusionType(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return *(*(mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8)) + 1) + 8);
}

uint64_t mlir::mpsx::FusionOp::getCustomFusionType@<X0>(mlir::Operation **this@<X0>, uint64_t a2@<X8>)
{
  result = mlir::mpsx::FusionOp::getCustomFusionTypeAttr(this);
  v6 = result;
  if (result)
  {
    result = mlir::StringAttr::getValue(&v6);
    *a2 = result;
    *(a2 + 8) = v4;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v5;
  return result;
}

uint64_t mlir::mpsx::InterleaveOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v48 = *MEMORY[0x277D85DE8];
  v41 = a6;
  v42[0] = 0;
  v43 = 0;
  v44 = a9;
  v45 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v41);
    if (v43 == 1)
    {
      v43 = 0;
    }

    mlir::OperationName::OperationName(v42, "mpsx.interleave", 15, Context);
    v43 = 1;
  }

  v46 = a4;
  v47 = a5;
  if (!a5)
  {
    goto LABEL_13;
  }

  v15 = mlir::UnknownLoc::get(this, a2);
  if ((mlir::mpsx::InterleaveOpAdaptor::verify(&v41, v15) & 1) == 0)
  {
    goto LABEL_13;
  }

  v38 = v46;
  v39 = 0;
  v16 = (*(mlir::ValueRange::dereference_iterator(&v38, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
  {
    v36 = 0;
    v37 = 0;
    goto LABEL_13;
  }

  v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
  v36 = v16;
  v37 = v17;
  if (!v16)
  {
LABEL_13:
    v22 = mlir::Float32Type::get(this, a2);
    goto LABEL_14;
  }

  ElementType = mlir::ShapedType::getElementType(&v36);
  if (mlir::ShapedType::hasRank(&v36))
  {
    Shape = mlir::ShapedType::getShape(&v36);
    v21 = v19;
    v38 = v40;
    v39 = 0x500000000;
    if (((8 * v19) >> 3) >= 6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v26 = 0;
    if (v19)
    {
      memcpy(v38, Shape, 8 * v19);
      v26 = v39;
    }

    v27 = (v26 + v21);
    LODWORD(v39) = v26 + v21;
    if ((v27 - 6) > 0xFFFFFFFFFFFFFFFDLL)
    {
      InterleaveFactor = mlir::mpsx::detail::DeinterleaveOpGenericAdaptorBase::getInterleaveFactor(&v41);
      v30 = 1;
      if (v27 != 4)
      {
        v30 = 2;
      }

      v31 = v38;
      v32 = *(v38 + v30);
      if (v32 != 0x8000000000000000)
      {
        *(v38 + v30) = v32 / InterleaveFactor;
      }

      v33 = &v31[v27];
      v34 = *(v33 - 1);
      if (v34 != 0x8000000000000000)
      {
        *(v33 - 1) = v34 * InterleaveFactor;
      }

      v28 = mlir::RankedTensorType::get(v31, v39, ElementType, 0);
    }

    else
    {
      v28 = mlir::UnrankedTensorType::get(ElementType);
    }

    v35 = *(a11 + 8);
    if (v35 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v35) = v28;
    ++*(a11 + 8);
    if (v38 != v40)
    {
      free(v38);
    }

    return 1;
  }

  v22 = ElementType;
LABEL_14:
  v23 = mlir::UnrankedTensorType::get(v22);
  v24 = *(a11 + 8);
  if (v24 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v24) = v23;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mpsx::InterleaveOp::verify(mlir::Operation **this)
{
  v60 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v47 = *this;
  InterleaveFactor = mlir::mpsx::DeinterleaveOp::getInterleaveFactor(&v47);
  mlir::getANENextSupportedInterleaveValue(InterleaveFactor);
  if (v3)
  {
    v4 = (*(*(*(v1 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v4)
    {
      v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    v44[0] = v4;
    v44[1] = v5;
    if (mlir::ShapedType::hasRank(v44))
    {
      Shape = mlir::ShapedType::getShape(v44);
      if ((v17 - 6) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v46 = 257;
        mlir::Operation::emitOpError(&v50, v1, v45);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v50, "Interleave can only be applied on 4D or 5D tensor");
        v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
        if (v50)
        {
          mlir::InFlightDiagnostic::report(&v50);
        }

        if (v59 == 1)
        {
          if (v58 != &v59)
          {
            free(v58);
          }

          v19 = __p;
          if (__p)
          {
            v20 = v57;
            v21 = __p;
            if (v57 != __p)
            {
              do
              {
                v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
              }

              while (v20 != v19);
              v21 = __p;
            }

            v57 = v19;
            operator delete(v21);
          }

          v11 = v54;
          if (!v54)
          {
            goto LABEL_57;
          }

          v22 = v55;
          v13 = v54;
          if (v55 == v54)
          {
LABEL_56:
            v55 = v11;
            operator delete(v13);
LABEL_57:
            if (v52 != &v53)
            {
              free(v52);
            }

            return v7;
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
LABEL_55:
          v13 = v54;
          goto LABEL_56;
        }

        return v7;
      }

      v25 = Shape;
      v26 = v17;
      v27 = mlir::mpsx::DeinterleaveOp::getInterleaveFactor(&v47);
      v28 = v26 == 4;
      v7 = 1;
      if (v28)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      v30 = *(v25 + 8 * v29);
      if (v30 == 0x8000000000000000)
      {
        return v7;
      }

      v31 = v27;
      if (v30 % v27)
      {
        v46 = 257;
        mlir::Operation::emitOpError(&v50, v1, v45);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v50, "channel ");
        if (*v32)
        {
          v33 = *(v32 + 24);
          v34 = *(v25 + 8 * v29);
          LODWORD(v48) = 2;
          *(&v48 + 1) = v34;
          v35 = *(v32 + 32);
          if (v35 >= *(v32 + 36))
          {
            if (v33 > &v48 || v33 + 24 * v35 <= &v48)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v36 = v33 + 24 * *(v32 + 32);
          v37 = v48;
          *(v36 + 16) = v49;
          *v36 = v37;
          ++*(v32 + 32);
        }

        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v32, " must be a multiple of interleave ");
        if (*v38)
        {
          v39 = *(v38 + 24);
          LODWORD(v48) = 2;
          *(&v48 + 1) = v31;
          v40 = *(v38 + 32);
          if (v40 >= *(v38 + 36))
          {
            if (v39 > &v48 || v39 + 24 * v40 <= &v48)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v41 = v39 + 24 * *(v38 + 32);
          v42 = v48;
          *(v41 + 16) = v49;
          *v41 = v42;
          ++*(v38 + 32);
        }

        v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
        if (v50)
        {
          mlir::InFlightDiagnostic::report(&v50);
        }

        if (v59 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v51);
        }

        return v7;
      }
    }

    return 1;
  }

  v46 = 257;
  mlir::Operation::emitOpError(&v50, v1, v45);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v50, "interleave factor not supported");
  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v6);
  if (v50)
  {
    mlir::InFlightDiagnostic::report(&v50);
  }

  if (v59 == 1)
  {
    if (v58 != &v59)
    {
      free(v58);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v57;
      v10 = __p;
      if (v57 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v57 = v8;
      operator delete(v10);
    }

    v11 = v54;
    if (!v54)
    {
      goto LABEL_57;
    }

    v12 = v55;
    v13 = v54;
    if (v55 == v54)
    {
      goto LABEL_56;
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
    goto LABEL_55;
  }

  return v7;
}

uint64_t mlir::mpsx::DeinterleaveOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v48 = *MEMORY[0x277D85DE8];
  v41 = a6;
  v42[0] = 0;
  v43 = 0;
  v44 = a9;
  v45 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v41);
    if (v43 == 1)
    {
      v43 = 0;
    }

    mlir::OperationName::OperationName(v42, "mpsx.deinterleave", 17, Context);
    v43 = 1;
  }

  v46 = a4;
  v47 = a5;
  if (!a5)
  {
    goto LABEL_13;
  }

  v15 = mlir::UnknownLoc::get(this, a2);
  if ((mlir::mpsx::DeinterleaveOpAdaptor::verify(&v41, v15) & 1) == 0)
  {
    goto LABEL_13;
  }

  v38 = v46;
  v39 = 0;
  v16 = (*(mlir::ValueRange::dereference_iterator(&v38, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
  {
    v36 = 0;
    v37 = 0;
    goto LABEL_13;
  }

  v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
  v36 = v16;
  v37 = v17;
  if (!v16)
  {
LABEL_13:
    v22 = mlir::Float32Type::get(this, a2);
    goto LABEL_14;
  }

  ElementType = mlir::ShapedType::getElementType(&v36);
  if (mlir::ShapedType::hasRank(&v36))
  {
    Shape = mlir::ShapedType::getShape(&v36);
    v21 = v19;
    v38 = v40;
    v39 = 0x500000000;
    if (((8 * v19) >> 3) >= 6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v26 = 0;
    if (v19)
    {
      memcpy(v38, Shape, 8 * v19);
      v26 = v39;
    }

    v27 = (v26 + v21);
    LODWORD(v39) = v26 + v21;
    if ((v27 - 6) > 0xFFFFFFFFFFFFFFFDLL)
    {
      InterleaveFactor = mlir::mpsx::detail::DeinterleaveOpGenericAdaptorBase::getInterleaveFactor(&v41);
      v30 = 1;
      if (v27 != 4)
      {
        v30 = 2;
      }

      v31 = v38;
      v32 = *(v38 + v30);
      if (v32 != 0x8000000000000000)
      {
        *(v38 + v30) = v32 * InterleaveFactor;
      }

      v33 = &v31[v27];
      v34 = *(v33 - 1);
      if (v34 != 0x8000000000000000)
      {
        *(v33 - 1) = v34 / InterleaveFactor;
      }

      v28 = mlir::RankedTensorType::get(v31, v39, ElementType, 0);
    }

    else
    {
      v28 = mlir::UnrankedTensorType::get(ElementType);
    }

    v35 = *(a11 + 8);
    if (v35 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v35) = v28;
    ++*(a11 + 8);
    if (v38 != v40)
    {
      free(v38);
    }

    return 1;
  }

  v22 = ElementType;
LABEL_14:
  v23 = mlir::UnrankedTensorType::get(v22);
  v24 = *(a11 + 8);
  if (v24 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v24) = v23;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mpsx::DeinterleaveOp::verify(mlir::Operation **this)
{
  v59 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v46 = *this;
  InterleaveFactor = mlir::mpsx::DeinterleaveOp::getInterleaveFactor(&v46);
  mlir::getANENextSupportedInterleaveValue(InterleaveFactor);
  if (v3)
  {
    v4 = (*(*(*(v1 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v4)
    {
      v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    v43[0] = v4;
    v43[1] = v5;
    if (mlir::ShapedType::hasRank(v43))
    {
      Shape = mlir::ShapedType::getShape(v43);
      if ((v17 - 6) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v45 = 257;
        mlir::Operation::emitOpError(&v49, v1, v44);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v49, "Interleave can only be applied on 4D or 5D tensor");
        v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
        if (v49)
        {
          mlir::InFlightDiagnostic::report(&v49);
        }

        if (v58 == 1)
        {
          if (v57 != &v58)
          {
            free(v57);
          }

          v19 = __p;
          if (__p)
          {
            v20 = v56;
            v21 = __p;
            if (v56 != __p)
            {
              do
              {
                v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
              }

              while (v20 != v19);
              v21 = __p;
            }

            v56 = v19;
            operator delete(v21);
          }

          v11 = v53;
          if (!v53)
          {
            goto LABEL_54;
          }

          v22 = v54;
          v13 = v53;
          if (v54 == v53)
          {
LABEL_53:
            v54 = v11;
            operator delete(v13);
LABEL_54:
            if (v51 != &v52)
            {
              free(v51);
            }

            return v7;
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
LABEL_52:
          v13 = v53;
          goto LABEL_53;
        }

        return v7;
      }

      v25 = Shape;
      v26 = v17;
      v27 = mlir::mpsx::DeinterleaveOp::getInterleaveFactor(&v46);
      v28 = v25 + 8 * v26;
      v29 = *(v28 - 8);
      if (v29 != 0x8000000000000000)
      {
        v30 = v27;
        if (v29 % v27)
        {
          v45 = 257;
          mlir::Operation::emitOpError(&v49, v1, v44);
          mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v49, "width ");
          if (*v31)
          {
            v32 = *(v31 + 24);
            v33 = *(v28 - 8);
            LODWORD(v47) = 2;
            *(&v47 + 1) = v33;
            v34 = *(v31 + 32);
            if (v34 >= *(v31 + 36))
            {
              if (v32 > &v47 || v32 + 24 * v34 <= &v47)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v35 = v32 + 24 * *(v31 + 32);
            v36 = v47;
            *(v35 + 16) = v48;
            *v35 = v36;
            ++*(v31 + 32);
          }

          mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v31, " must be a multiple of interleave ");
          if (*v37)
          {
            v38 = *(v37 + 24);
            LODWORD(v47) = 2;
            *(&v47 + 1) = v30;
            v39 = *(v37 + 32);
            if (v39 >= *(v37 + 36))
            {
              if (v38 > &v47 || v38 + 24 * v39 <= &v47)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v40 = v38 + 24 * *(v37 + 32);
            v41 = v47;
            *(v40 + 16) = v48;
            *v40 = v41;
            ++*(v37 + 32);
          }

          v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
          if (v49)
          {
            mlir::InFlightDiagnostic::report(&v49);
          }

          if (v58 == 1)
          {
            mlir::Diagnostic::~Diagnostic(&v50);
          }

          return v7;
        }
      }
    }

    return 1;
  }

  v45 = 257;
  mlir::Operation::emitOpError(&v49, v1, v44);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v49, "interleave factor not supported");
  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v6);
  if (v49)
  {
    mlir::InFlightDiagnostic::report(&v49);
  }

  if (v58 == 1)
  {
    if (v57 != &v58)
    {
      free(v57);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v56;
      v10 = __p;
      if (v56 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v56 = v8;
      operator delete(v10);
    }

    v11 = v53;
    if (!v53)
    {
      goto LABEL_54;
    }

    v12 = v54;
    v13 = v53;
    if (v54 == v53)
    {
      goto LABEL_53;
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
    goto LABEL_52;
  }

  return v7;
}

uint64_t mlir::mpsx::FPToIntClampedOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v42 = *MEMORY[0x277D85DE8];
  v39[0] = a4;
  v39[1] = a5;
  v32 = a6;
  LOBYTE(v33) = 0;
  v34 = 0;
  v35 = a9;
  v36 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v32);
    if (v34 == 1)
    {
      v34 = 0;
    }

    mlir::OperationName::OperationName(&v33, "mpsx.fp_to_int_clamped", 22, Context);
    v34 = 1;
  }

  v37 = a4;
  v38 = a5;
  if (a5)
  {
    v15 = mlir::UnknownLoc::get(this, a2);
    if (mlir::mpsx::FPToIntClampedOpAdaptor::verify(&v32, v15))
    {
      v40 = v37;
      v16 = (*(mlir::ValueRange::dereference_iterator(&v40, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
        v30 = v16;
        v31 = v17;
        if (v16)
        {
          v18 = mlir::DictionaryAttr::begin(&v32);
          v19 = mlir::DictionaryAttr::end(&v32);
          v20 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(v18, v19, **(v33 + 96));
          if (v21)
          {
            v22 = *(v20 + 1);
          }

          else
          {
            v22 = 0;
          }

          *&v40 = v22;
          Value = mlir::TypeAttr::getValue(&v40);
          LOBYTE(v40) = 0;
          v41 = 0;
          v26 = mlir::ShapedType::cloneWith(&v30, &v40, Value);
LABEL_17:
          v28 = *(a11 + 8);
          if (v28 >= *(a11 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*a11 + 8 * v28) = v26;
          goto LABEL_19;
        }
      }

      else
      {
        v30 = 0;
        v31 = 0;
      }

      v26 = *(mlir::ValueRange::dereference_iterator(v39, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      goto LABEL_17;
    }
  }

  v23 = mlir::Float32Type::get(this, a2);
  v24 = mlir::UnrankedTensorType::get(v23);
  v25 = *(a11 + 8);
  if (v25 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v25) = v24;
LABEL_19:
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mpsx::FPToIntClampedOpAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v24 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v24); i != mlir::DictionaryAttr::end(&v24); i = (i + 16))
  {
    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      v14 = *(i + 1);
      if (v14)
      {
        if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
        {
          v22[0] = "'mpsx.fp_to_int_clamped' op attribute 'resultElementType' failed to satisfy constraint: any type attribute";
          v23 = 259;
          mlir::emitError(a2, v22, v25);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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

            v15 = __p;
            if (__p)
            {
              v16 = v31;
              v17 = __p;
              if (v31 != __p)
              {
                do
                {
                  v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
                }

                while (v16 != v15);
                v17 = __p;
              }

              v31 = v15;
              operator delete(v17);
            }

            v9 = v28;
            if (v28)
            {
              v18 = v29;
              v11 = v28;
              if (v29 != v28)
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
                goto LABEL_39;
              }

              goto LABEL_40;
            }

            goto LABEL_41;
          }

          return v5;
        }

        v25[0] = *(i + 1);
        mlir::TypeAttr::getValue(v25);
      }

      return 1;
    }
  }

  v22[0] = "'mpsx.fp_to_int_clamped' op requires attribute 'resultElementType'";
  v23 = 259;
  mlir::emitError(a2, v22, v25);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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

    v6 = __p;
    if (__p)
    {
      v7 = v31;
      v8 = __p;
      if (v31 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v31 = v6;
      operator delete(v8);
    }

    v9 = v28;
    if (v28)
    {
      v10 = v29;
      v11 = v28;
      if (v29 != v28)
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
LABEL_39:
        v11 = v28;
      }

LABEL_40:
      v29 = v9;
      operator delete(v11);
    }

LABEL_41:
    if (v26 != &v27)
    {
      free(v26);
    }
  }

  return v5;
}

uint64_t mlir::mpsx::TensorToBufferOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v89 = *MEMORY[0x277D85DE8];
  v82 = a6;
  LOBYTE(v83) = 0;
  v84 = 0;
  v85 = a9;
  v86 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v82);
    if (v84 == 1)
    {
      v84 = 0;
    }

    mlir::OperationName::OperationName(&v83, "mpsx.tensor_to_buffer", 21, Context);
    v84 = 1;
  }

  v87 = a4;
  v88 = a5;
  if (!a5)
  {
    goto LABEL_12;
  }

  v17 = mlir::UnknownLoc::get(this, a2);
  if ((mlir::mpsx::TensorToBufferOpAdaptor::verify(&v82, v17) & 1) == 0)
  {
    goto LABEL_12;
  }

  v79 = v87;
  v80 = 0;
  v18 = (*(mlir::ValueRange::dereference_iterator(&v79, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
  {
    v74 = 0;
    v75 = 0;
    goto LABEL_12;
  }

  v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
  v74 = v18;
  v75 = v19;
  if (!v18)
  {
LABEL_12:
    v23 = mlir::Float32Type::get(this, a2);
    v24 = mlir::UnrankedMemRefType::get(v23, 0x4000u);
    v25 = *(a11 + 8);
    if (v25 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v25) = v24;
    ++*(a11 + 8);
    return 1;
  }

  ElementType = mlir::ShapedType::getElementType(&v74);
  Shape = mlir::ShapedType::getShape(&v74);
  v79 = v81;
  v80 = 0x500000000;
  if (((8 * v21) >> 3) >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v27 = 0;
  v28 = 8 * v21;
  if (v21)
  {
    memcpy(v79, Shape, v28);
    v27 = v80;
  }

  LODWORD(v80) = v27 + (v28 >> 3);
  v29 = mlir::DictionaryAttr::begin(&v82);
  v30 = mlir::DictionaryAttr::end(&v82);
  v31 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(v29, v30, *(*(v83 + 96) + 24));
  if (v32)
  {
    v33 = *(v31 + 1);
    if (v33)
    {
      v34 = *(*v33 + 136);
      if (v34 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        v33 = 0;
      }

      v76 = v33;
      if (v34 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        ElementType = mlir::TypeAttr::getValue(&v76);
      }
    }
  }

  v35 = mlir::DictionaryAttr::begin(&v82);
  v36 = mlir::DictionaryAttr::end(&v82);
  v37 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(v35, v36, **(v83 + 96));
  if ((v38 & 1) == 0 || (v39 = *(v37 + 1)) == 0 || !mlir::DenseIntElementsAttr::classof(v39))
  {
    v47 = mlir::ShapedType::getShape(&v74);
    v76 = v78;
    v77 = 0x500000000;
    if (((8 * v46) >> 3) >= 6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v48 = 0;
    v49 = 8 * v46;
    if (v46)
    {
      memcpy(v76, v47, v49);
      v48 = v77;
    }

    v50 = v48 + (v49 >> 3);
    LODWORD(v77) = v48 + (v49 >> 3);
    if (v77)
    {
      v51 = v76;
LABEL_38:
      v52 = mlir::MemRefType::get(v51, v50, ElementType, 0, 0, 0);
LABEL_73:
      v70 = *(a11 + 8);
      if (v70 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v70) = v52;
      ++*(a11 + 8);
      if (v76 != v78)
      {
        free(v76);
      }

      if (v79 != v81)
      {
        free(v79);
      }

      return 1;
    }

LABEL_72:
    v52 = mlir::UnrankedMemRefType::get(ElementType, 0x4000u);
    goto LABEL_73;
  }

  v40 = v80;
  v41 = mlir::DictionaryAttr::begin(&v82);
  v42 = mlir::DictionaryAttr::end(&v82);
  v43 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(v41, v42, **(v83 + 96));
  if (v44)
  {
    v45 = *(v43 + 1);
    if (v45)
    {
      if (mlir::DenseIntElementsAttr::classof(v45))
      {
        v76 = v78;
        v77 = 0x500000000;
        if (v40)
        {
          if (v40 >= 6)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          bzero(v76, 8 * v40);
          LODWORD(v77) = v40;
        }

        v53 = mlir::DictionaryAttr::begin(&v82);
        v54 = mlir::DictionaryAttr::end(&v82);
        v55 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(v53, v54, **(v83 + 96));
        if (v56)
        {
          v57 = *(v55 + 1);
          if (v57)
          {
            if (mlir::DenseIntElementsAttr::classof(*(v55 + 1)))
            {
              v72 = v57;
              v73 = 1;
              if (mlir::DenseElementsAttr::isValidIntOrFloat(&v72, 8, 1, 0))
              {
                RawData = mlir::DenseElementsAttr::getRawData(&v72);
                isSplat = mlir::DenseElementsAttr::isSplat(&v72);
                mlir::DenseElementsAttr::getType(&v72);
                mlir::DenseElementsAttr::getNumElements(&v72);
              }

              else
              {
                RawData = 0;
              }

              if (!mlir::DenseElementsAttr::isValidIntOrFloat(&v72, 8, 1, 0))
              {
                goto LABEL_51;
              }

              mlir::DenseElementsAttr::getRawData(&v72);
              mlir::DenseElementsAttr::isSplat(&v72);
              mlir::DenseElementsAttr::getType(&v72);
              NumElements = mlir::DenseElementsAttr::getNumElements(&v72);
              v12 = NumElements;
              LODWORD(v77) = 0;
              if (NumElements > HIDWORD(v77))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v60 = 0;
              if (NumElements)
              {
LABEL_51:
                v61 = 0;
                v62 = v76;
                do
                {
                  if (isSplat)
                  {
                    v63 = 0;
                  }

                  else
                  {
                    v63 = v61;
                  }

                  v62[v61++] = *(RawData + 8 * v63);
                }

                while (v12 != v61);
                v60 = v12;
              }

              LODWORD(v77) = v60;
            }
          }
        }

        if (v40)
        {
          v64 = 0;
          if (v40 >= 3)
          {
            v65 = v40 - 3;
          }

          else
          {
            v65 = 0;
          }

          v66 = 1;
          do
          {
            if (*(v76 + v64) > 1)
            {
              v65 = v64;
              v66 = *(v76 + v64);
            }

            ++v64;
          }

          while (v40 != v64);
          v67 = *(v79 + v65);
          v68 = v79 + 8 * v40;
          v69 = *(v68 - 1);
          if (v67 >= 1)
          {
            *(v79 + v65) = v67 / v66;
          }

          if (v69 >= 1)
          {
            *(v68 - 1) = v69 * v66;
          }
        }

        v50 = v80;
        if (v80)
        {
          v51 = v79;
          goto LABEL_38;
        }

        goto LABEL_72;
      }
    }
  }

  v71 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::mpsx::TensorToBufferOp::verify(v71);
}

uint64_t mlir::mpsx::TensorToBufferOp::verify(mlir::Operation **this)
{
  v55[5] = *MEMORY[0x277D85DE8];
  v42 = *this;
  v3 = (*(*(*(v42 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  if (v4)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v3 = 0;
  }

  v41[0] = v3;
  v41[1] = v4;
  NumElements = 0;
  if (mlir::mpsx::TensorToBufferOp::getShapeAttr(&v42) && v41[0])
  {
    if (!mlir::ShapedType::hasRank(v41))
    {
LABEL_13:
      NumElements = 0;
      goto LABEL_14;
    }

    Shape = mlir::ShapedType::getShape(v41);
    if (v7)
    {
      v8 = 8 * v7;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_13;
    }

LABEL_11:
    v9 = mlir::ShapedType::getShape(v41);
    mlir::ShapedType::getNumElements(v9, v10);
    ShapeAttr = mlir::mpsx::TensorToBufferOp::getShapeAttr(&v42);
    v44 = ShapeAttr != 0;
    if (mlir::DenseElementsAttr::isValidIntOrFloat(&ShapeAttr, 8, 1, 0))
    {
      mlir::DenseElementsAttr::getRawData(&ShapeAttr);
      mlir::DenseElementsAttr::isSplat(&ShapeAttr);
      mlir::DenseElementsAttr::getType(&ShapeAttr);
      NumElements = mlir::DenseElementsAttr::getNumElements(&ShapeAttr);
    }
  }

LABEL_14:
  if (!mlir::mpsx::TensorToBufferOp::getInterleaveAttr(&v42) || !v41[0] || !mlir::ShapedType::hasRank(v41))
  {
    return 1;
  }

  v11 = mlir::ShapedType::getShape(v41);
  if (v12)
  {
    v13 = 8 * v12;
    while (*v11 != 0x8000000000000000)
    {
      ++v11;
      v13 -= 8;
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    return 1;
  }

LABEL_21:
  if (!mlir::mpsx::TensorToBufferOp::getInterleaveAttr(&v42))
  {
    v38 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::mpsx::TensorToBufferOp::getShapeAttr(v38);
  }

  v53 = v55;
  v54 = 0x500000000;
  if (NumElements)
  {
    if (NumElements >= 6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(v53, 8 * NumElements);
    LODWORD(v54) = NumElements;
  }

  ShapeAttr = mlir::mpsx::TensorToBufferOp::getInterleaveAttr(&v42);
  v44 = ShapeAttr != 0;
  if (ShapeAttr)
  {
    if (mlir::DenseElementsAttr::isValidIntOrFloat(&ShapeAttr, 8, 1, 0))
    {
      RawData = mlir::DenseElementsAttr::getRawData(&ShapeAttr);
      isSplat = mlir::DenseElementsAttr::isSplat(&ShapeAttr);
      mlir::DenseElementsAttr::getType(&ShapeAttr);
      mlir::DenseElementsAttr::getNumElements(&ShapeAttr);
    }

    else
    {
      RawData = 0;
    }

    if (!mlir::DenseElementsAttr::isValidIntOrFloat(&ShapeAttr, 8, 1, 0))
    {
      goto LABEL_35;
    }

    mlir::DenseElementsAttr::getRawData(&ShapeAttr);
    mlir::DenseElementsAttr::isSplat(&ShapeAttr);
    mlir::DenseElementsAttr::getType(&ShapeAttr);
    v15 = mlir::DenseElementsAttr::getNumElements(&ShapeAttr);
    v2 = v15;
    LODWORD(v54) = 0;
    if (v15 > HIDWORD(v54))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v16 = 0;
    if (v15)
    {
LABEL_35:
      v17 = 0;
      v18 = v53;
      do
      {
        if (isSplat)
        {
          v19 = 0;
        }

        else
        {
          v19 = v17;
        }

        v18[v17++] = *(RawData + 8 * v19);
      }

      while (v2 != v17);
      v16 = v2;
    }

    LODWORD(v54) = v16;
  }

  if (NumElements)
  {
    v20 = v53;
    v21 = 1;
    do
    {
      v23 = *v20++;
      v22 = v23;
      if (v23 > 1)
      {
        v21 = v22;
      }

      --NumElements;
    }

    while (NumElements);
  }

  else
  {
    v21 = 1;
  }

  result = mlir::getANENextSupportedInterleaveValue(v21);
  v26 = v25;
  if ((v25 & 1) == 0)
  {
    v40 = 257;
    mlir::Operation::emitOpError(&ShapeAttr, v42, &v39);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&ShapeAttr, "interleave factor not supported");
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    v28 = result;
    if (ShapeAttr)
    {
      mlir::InFlightDiagnostic::report(&ShapeAttr);
      result = v28;
    }

    if (v52 == 1)
    {
      if (v51 != &v52)
      {
        free(v51);
        result = v28;
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
        result = v28;
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
        result = v28;
      }

      if (v45 != &v46)
      {
        free(v45);
        result = v28;
      }
    }
  }

  if (v53 != v55)
  {
    v37 = result;
    free(v53);
    result = v37;
  }

  if (v26)
  {
    return 1;
  }

  return result;
}

uint64_t mlir::mpsx::TensorToBufferOp::getShapeAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 32));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (mlir::DenseIntElementsAttr::classof(*(v5 + 1)))
  {
    return v7;
  }

  return 0;
}

uint64_t mlir::mpsx::BufferToTensorOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v89 = *MEMORY[0x277D85DE8];
  v82 = a6;
  LOBYTE(v83) = 0;
  v84 = 0;
  v85 = a9;
  v86 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v82);
    if (v84 == 1)
    {
      v84 = 0;
    }

    mlir::OperationName::OperationName(&v83, "mpsx.buffer_to_tensor", 21, Context);
    v84 = 1;
  }

  v87 = a4;
  v88 = a5;
  if (!a5)
  {
    goto LABEL_12;
  }

  v17 = mlir::UnknownLoc::get(this, a2);
  if ((mlir::mpsx::BufferToTensorOpAdaptor::verify(&v82, v17) & 1) == 0)
  {
    goto LABEL_12;
  }

  v79 = v87;
  v80 = 0;
  v18 = (*(mlir::ValueRange::dereference_iterator(&v79, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
  {
    v74 = 0;
    v75 = 0;
    goto LABEL_12;
  }

  v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
  v74 = v18;
  v75 = v19;
  if (!v18)
  {
LABEL_12:
    v23 = mlir::Float32Type::get(this, a2);
    v24 = mlir::UnrankedTensorType::get(v23);
    v25 = *(a11 + 8);
    if (v25 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v25) = v24;
    ++*(a11 + 8);
    return 1;
  }

  ElementType = mlir::ShapedType::getElementType(&v74);
  Shape = mlir::ShapedType::getShape(&v74);
  v79 = v81;
  v80 = 0x500000000;
  if (((8 * v21) >> 3) >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v27 = 0;
  v28 = 8 * v21;
  if (v21)
  {
    memcpy(v79, Shape, v28);
    v27 = v80;
  }

  LODWORD(v80) = v27 + (v28 >> 3);
  v29 = mlir::DictionaryAttr::begin(&v82);
  v30 = mlir::DictionaryAttr::end(&v82);
  v31 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(v29, v30, *(*(v83 + 96) + 24));
  if (v32)
  {
    v33 = *(v31 + 1);
    if (v33)
    {
      v34 = *(*v33 + 136);
      if (v34 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        v33 = 0;
      }

      v76 = v33;
      if (v34 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        ElementType = mlir::TypeAttr::getValue(&v76);
      }
    }
  }

  v35 = mlir::DictionaryAttr::begin(&v82);
  v36 = mlir::DictionaryAttr::end(&v82);
  v37 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(v35, v36, **(v83 + 96));
  if ((v38 & 1) == 0 || (v39 = *(v37 + 1)) == 0 || !mlir::DenseIntElementsAttr::classof(v39))
  {
    v47 = mlir::ShapedType::getShape(&v74);
    v76 = v78;
    v77 = 0x500000000;
    if (((8 * v46) >> 3) >= 6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v48 = 0;
    v49 = 8 * v46;
    if (v46)
    {
      memcpy(v76, v47, v49);
      v48 = v77;
    }

    v50 = v48 + (v49 >> 3);
    LODWORD(v77) = v48 + (v49 >> 3);
    if (v77)
    {
      v51 = v76;
LABEL_38:
      v52 = mlir::RankedTensorType::get(v51, v50, ElementType, 0);
LABEL_73:
      v70 = *(a11 + 8);
      if (v70 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v70) = v52;
      ++*(a11 + 8);
      if (v76 != v78)
      {
        free(v76);
      }

      if (v79 != v81)
      {
        free(v79);
      }

      return 1;
    }

LABEL_72:
    v52 = mlir::UnrankedTensorType::get(ElementType);
    goto LABEL_73;
  }

  v40 = v80;
  v41 = mlir::DictionaryAttr::begin(&v82);
  v42 = mlir::DictionaryAttr::end(&v82);
  v43 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(v41, v42, **(v83 + 96));
  if (v44)
  {
    v45 = *(v43 + 1);
    if (v45)
    {
      if (mlir::DenseIntElementsAttr::classof(v45))
      {
        v76 = v78;
        v77 = 0x500000000;
        if (v40)
        {
          if (v40 >= 6)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          bzero(v76, 8 * v40);
          LODWORD(v77) = v40;
        }

        v53 = mlir::DictionaryAttr::begin(&v82);
        v54 = mlir::DictionaryAttr::end(&v82);
        v55 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(v53, v54, **(v83 + 96));
        if (v56)
        {
          v57 = *(v55 + 1);
          if (v57)
          {
            if (mlir::DenseIntElementsAttr::classof(*(v55 + 1)))
            {
              v72 = v57;
              v73 = 1;
              if (mlir::DenseElementsAttr::isValidIntOrFloat(&v72, 8, 1, 0))
              {
                RawData = mlir::DenseElementsAttr::getRawData(&v72);
                isSplat = mlir::DenseElementsAttr::isSplat(&v72);
                mlir::DenseElementsAttr::getType(&v72);
                mlir::DenseElementsAttr::getNumElements(&v72);
              }

              else
              {
                RawData = 0;
              }

              if (!mlir::DenseElementsAttr::isValidIntOrFloat(&v72, 8, 1, 0))
              {
                goto LABEL_51;
              }

              mlir::DenseElementsAttr::getRawData(&v72);
              mlir::DenseElementsAttr::isSplat(&v72);
              mlir::DenseElementsAttr::getType(&v72);
              NumElements = mlir::DenseElementsAttr::getNumElements(&v72);
              v12 = NumElements;
              LODWORD(v77) = 0;
              if (NumElements > HIDWORD(v77))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v60 = 0;
              if (NumElements)
              {
LABEL_51:
                v61 = 0;
                v62 = v76;
                do
                {
                  if (isSplat)
                  {
                    v63 = 0;
                  }

                  else
                  {
                    v63 = v61;
                  }

                  v62[v61++] = *(RawData + 8 * v63);
                }

                while (v12 != v61);
                v60 = v12;
              }

              LODWORD(v77) = v60;
            }
          }
        }

        if (v40)
        {
          v64 = 0;
          if (v40 >= 3)
          {
            v65 = v40 - 3;
          }

          else
          {
            v65 = 0;
          }

          v66 = 1;
          do
          {
            if (*(v76 + v64) > 1)
            {
              v65 = v64;
              v66 = *(v76 + v64);
            }

            ++v64;
          }

          while (v40 != v64);
          v67 = *(v79 + v65);
          v68 = v79 + 8 * v40;
          v69 = *(v68 - 1);
          if (v67 >= 1)
          {
            *(v79 + v65) = v67 * v66;
          }

          if (v69 >= 1)
          {
            *(v68 - 1) = v69 / v66;
          }
        }

        v50 = v80;
        if (v80)
        {
          v51 = v79;
          goto LABEL_38;
        }

        goto LABEL_72;
      }
    }
  }

  v71 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::mpsx::BufferToTensorOp::getInterleave(v71);
}

uint64_t mlir::mpsx::BufferToTensorOp::fold(mlir::Operation **a1)
{
  v10 = *(*(*a1 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (DefiningOp && ((v3 = *(*(DefiningOp + 48) + 16), v4 = v3 == &mlir::detail::TypeIDResolver<mlir::mpsx::TensorToBufferOp,void>::id, v3 != &mlir::detail::TypeIDResolver<mlir::mpsx::TensorToBufferOp,void>::id) ? (v5 = 0) : (v5 = DefiningOp), (v11 = v5, v4) && ((v6 = *(*(*(DefiningOp + 72) + 24) + 8), *(*a1 + 9)) ? (v7 = *a1 - 16) : (v7 = 0), (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) ^ v6) <= 7 && (InterleaveAttr = mlir::mpsx::TensorToBufferOp::getInterleaveAttr(a1), InterleaveAttr == mlir::mpsx::TensorToBufferOp::getInterleaveAttr(&v11)) && !mlir::mpsx::BufferToTensorOp::getResultElementTypeAttr(a1) && !mlir::mpsx::BufferToTensorOp::getResultElementTypeAttr(&v11))))
  {
    return *(*(v11 + 9) + 24) | 4;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mpsx::BufferToTensorOp::getResultElementTypeAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 24));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

BOOL mlir::mpsx::ANEOp::verify(mlir::Operation **this)
{
  v24 = *MEMORY[0x277D85DE8];
  if (mlir::mpsx::ANEOp::getIsExternalAttr(this) || (*(*this + 11) & 0x7FFFFF) == 1)
  {
    return 1;
  }

  v14 = 257;
  mlir::OpState::emitOpError(this, &v13, v15);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v15, "expected a single region");
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v3);
  v4 = result;
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
    result = v4;
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
      result = v4;
    }

    v5 = __p;
    if (__p)
    {
      v6 = v21;
      v7 = __p;
      if (v21 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v21 = v5;
      operator delete(v7);
      result = v4;
    }

    v8 = v18;
    if (v18)
    {
      v9 = v19;
      v10 = v18;
      if (v19 != v18)
      {
        do
        {
          v12 = *--v9;
          v11 = v12;
          *v9 = 0;
          if (v12)
          {
            MEMORY[0x259C63150](v11, 0x1000C8077774924);
          }
        }

        while (v9 != v8);
        v10 = v18;
      }

      v19 = v8;
      operator delete(v10);
      result = v4;
    }

    if (v16 != &v17)
    {
      free(v16);
      return v4;
    }
  }

  return result;
}

uint64_t mlir::mpsx::FusionTypeAttr::parse(mlir::AsmParser *a1)
{
  v72 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v47 = 0;
    v48 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v47))
    {
LABEL_55:
      v31 = (*(*a1 + 40))(a1);
      LOWORD(v63) = 259;
      (*(*a1 + 24))(v52, a1, v31, v61);
      if (v52[0])
      {
        mlir::InFlightDiagnostic::report(v52);
      }

      if (v60 == 1)
      {
        if (v59 != &v60)
        {
          free(v59);
        }

        v32 = v57;
        if (v57)
        {
          v33 = v58;
          v34 = v57;
          if (v58 != v57)
          {
            do
            {
              v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
            }

            while (v33 != v32);
            v34 = v57;
          }

          v58 = v32;
          operator delete(v34);
        }

        v35 = v55;
        if (v55)
        {
          v36 = v56;
          v37 = v55;
          if (v56 != v55)
          {
            do
            {
              v39 = *--v36;
              v38 = v39;
              *v36 = 0;
              if (v39)
              {
                MEMORY[0x259C63150](v38, 0x1000C8077774924);
              }
            }

            while (v36 != v35);
            v37 = v55;
          }

          v56 = v35;
          operator delete(v37);
        }

        if (v53 != &v54)
        {
          free(v53);
        }
      }

      return 0;
    }

    if (v48 == 17)
    {
      if (*v47 != 0x657A69746E617551 || *(v47 + 1) != 0x4E72656874614764 || *(v47 + 16) != 68)
      {
        goto LABEL_29;
      }

      v4 = 2;
    }

    else if (v48 == 15)
    {
      if (*v47 == 0x657A69746E617551 && *(v47 + 7) == 0x4432766E6F436465)
      {
        v4 = 1;
      }

      else
      {
        if (*v47 != 0x657A69746E617551 || *(v47 + 7) != 0x6C754D74614D6465)
        {
          goto LABEL_29;
        }

        v4 = 3;
      }
    }

    else
    {
      if (v48 != 6 || (*v47 == 1953723747 ? (v3 = *(v47 + 2) == 28015) : (v3 = 0), !v3))
      {
LABEL_29:
        v46 = 257;
        (*(*a1 + 24))(v61, a1, v2, v45);
        if (v61[0])
        {
          LODWORD(v49) = 3;
          *(&v49 + 1) = "expected ";
          v50 = 9;
          if (v63 >= v64)
          {
            if (v62 > &v49 || v62 + 24 * v63 <= &v49)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v9 = v62 + 24 * v63;
          v10 = v49;
          *(v9 + 2) = v50;
          *v9 = v10;
          ++v63;
        }

        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v61, "::mlir::mpsx::FusionType");
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v11, " to be one of: ");
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v12, "custom");
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v13, ", ");
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v14, "QuantizedConv2D");
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v15, ", ");
        if (*v16)
        {
          v17 = *(v16 + 24);
          LODWORD(v49) = 3;
          *(&v49 + 1) = "QuantizedGatherND";
          v50 = 17;
          v18 = *(v16 + 32);
          if (v18 >= *(v16 + 36))
          {
            if (v17 > &v49 || v17 + 24 * v18 <= &v49)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v19 = v17 + 24 * *(v16 + 32);
          v20 = v49;
          *(v19 + 16) = v50;
          *v19 = v20;
          ++*(v16 + 32);
        }

        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v16, ", ");
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v21, "QuantizedMatMul");
        mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
        if (v61[0])
        {
          mlir::InFlightDiagnostic::report(v61);
        }

        if (v71 == 1)
        {
          if (v70 != &v71)
          {
            free(v70);
          }

          v23 = __p;
          if (__p)
          {
            v24 = v69;
            v25 = __p;
            if (v69 != __p)
            {
              do
              {
                v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
              }

              while (v24 != v23);
              v25 = __p;
            }

            v69 = v23;
            operator delete(v25);
          }

          v26 = v66;
          if (v66)
          {
            v27 = v67;
            v28 = v66;
            if (v67 != v66)
            {
              do
              {
                v30 = *--v27;
                v29 = v30;
                *v27 = 0;
                if (v30)
                {
                  MEMORY[0x259C63150](v29, 0x1000C8077774924);
                }
              }

              while (v27 != v26);
              v28 = v66;
            }

            v67 = v26;
            operator delete(v28);
          }

          if (v62 != &v65)
          {
            free(v62);
          }
        }

        goto LABEL_55;
      }

      v4 = 0;
    }

    if ((*(*a1 + 168))(a1))
    {
      Context = mlir::AsmParser::getContext(a1);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      *&v49 = &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id;
      *(&v49 + 1) = Context;
      v61[0] = _ZN4llvm12function_refIFvPN4mlir4mpsx6detail21FusionTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14FusionTypeAttrEJNS2_10FusionTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      v61[1] = &v49;
      v51 = v4;
      v42 = v4 ^ 0xFF51AFD7ED558CCDLL;
      v43 = 0x9DDFEA08EB382D69 * (((8 * v4) | 4) ^ v42);
      v47 = &v51;
      v45[0] = &v51;
      v45[1] = v61;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v42 ^ (v43 >> 47) ^ v43)) >> 32) >> 15) ^ (-348639895 * (v42 ^ (v43 >> 47) ^ v43))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mpsx::detail::FusionTypeAttrStorage * mlir::StorageUniquer::get<mlir::mpsx::detail::FusionTypeAttrStorage,mlir::mpsx::FusionType>(llvm::function_ref<void ()(mlir::mpsx::detail::FusionTypeAttrStorage *)>,mlir::TypeID,mlir::mpsx::FusionType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v47, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mpsx::detail::FusionTypeAttrStorage * mlir::StorageUniquer::get<mlir::mpsx::detail::FusionTypeAttrStorage,mlir::mpsx::FusionType>(llvm::function_ref<void ()(mlir::mpsx::detail::FusionTypeAttrStorage *)>,mlir::TypeID,mlir::mpsx::FusionType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v45);
    }
  }

  return 0;
}

void *mlir::mpsx::FusionTypeAttr::print(mlir::mpsx::FusionTypeAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = *(*this + 8);
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      if (v6 == 3)
      {
        v7 = 0;
        v8 = "QuantizedMatMul";
        v9 = 15;
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    v7 = 0;
    v8 = "QuantizedGatherND";
    v9 = 17;
  }

  else
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = 0;
        v8 = "QuantizedConv2D";
        v9 = 15;
        goto LABEL_14;
      }

LABEL_11:
      v9 = 0;
      v8 = "";
      v7 = 1;
      goto LABEL_14;
    }

    v7 = 0;
    v8 = "custom";
    v9 = 6;
  }

LABEL_14:
  v10 = (*(*a2 + 16))(a2);
  if (v9 <= *(v10 + 24) - *(v10 + 32))
  {
    if ((v7 & 1) == 0)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v8, v9);
      *(v11 + 32) += v9;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v8, v9);
  }

  result = (*(*a2 + 16))(a2);
  v13 = result[4];
  if (result[3] == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::mpsx::MPSXDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  v32[0] = a2;
  v5 = (*(*a2 + 40))(a2);
  v35[2] = 0;
  v33 = 0;
  v34 = 0;
  v32[1] = v5;
  v35[0] = 0;
  if (((*(*a2 + 640))(a2, &v33) & 1) == 0)
  {
    v6 = 0;
    *v35 = 256;
    if (v35[2])
    {
      *&v29 = "fusion_type";
    }

    else
    {
      v35[2] = 1;
    }

    goto LABEL_15;
  }

  *&v29 = "fusion_type";
  *(&v29 + 1) = 11;
  if (v35[2])
  {
    v6 = 0;
LABEL_15:
    v7 = 0;
    v9 = 0;
    goto LABEL_16;
  }

  v7 = v34;
  if (v34)
  {
    if (v34 == 11 && *v33 == 0x745F6E6F69737566 && *(v33 + 3) == 0x657079745F6E6F69)
    {
      v6 = mlir::mpsx::FusionTypeAttr::parse(a2);
      v35[0] = v6 != 0;
      *&v35[1] = 257;
      goto LABEL_15;
    }
  }

  else
  {
    (*(*v32[0] + 648))(v32[0], &v29, 1);
    if (v35[2])
    {
      v7 = 0;
      v9 = 0;
      v6 = 0;
      goto LABEL_16;
    }

    v7 = v34;
  }

  v6 = 0;
  v9 = v33;
  *v35 = 0;
  v35[2] = 1;
LABEL_16:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v32) & 0x100) == 0)
  {
    v28 = 257;
    (*(*a2 + 24))(v32, a2, v4, v27);
    v11 = v10;
    if (*v10)
    {
      v31 = 261;
      *&v29 = v9;
      *(&v29 + 1) = v7;
      mlir::Diagnostic::operator<<((v10 + 1), &v29);
      if (*v11)
      {
        v12 = *(v11 + 24);
        LODWORD(v29) = 3;
        v30 = 14;
        v13 = *(v11 + 32);
        if (v13 >= *(v11 + 36))
        {
          if (v12 > &v29 || v12 + 24 * v13 <= &v29)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v14 = v12 + 24 * *(v11 + 32);
        v15 = v29;
        *(v14 + 16) = v30;
        *v14 = v15;
        ++*(v11 + 32);
        if (*v11)
        {
          v16 = *(a1 + 8);
          v17 = *(a1 + 16);
          v31 = 261;
          *&v29 = v16;
          *(&v29 + 1) = v17;
          mlir::Diagnostic::operator<<(v11 + 8, &v29);
        }
      }
    }

    if (v32[0])
    {
      mlir::InFlightDiagnostic::report(v32);
    }

    if (v42 == 1)
    {
      if (v41 != &v42)
      {
        free(v41);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v40;
        v20 = __p;
        if (v40 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v40 = v18;
        operator delete(v20);
      }

      v21 = v37;
      if (v37)
      {
        v22 = v38;
        v23 = v37;
        if (v38 != v37)
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
          v23 = v37;
        }

        v38 = v21;
        operator delete(v23);
      }

      if (v34 != &v36)
      {
        free(v34);
      }
    }

    return 0;
  }

  return v6;
}

void mlir::mpsx::MPSXDialect::printAttribute(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id)
  {
    v8[3] = v3;
    v8[4] = v4;
    v8[0] = a2;
    v6 = (*(*a3 + 16))(a3);
    v7 = v6[4];
    if ((v6[3] - v7) > 0xA)
    {
      *(v7 + 7) = 1701869940;
      *v7 = *"fusion_type";
      v6[4] += 11;
    }

    else
    {
      llvm::raw_ostream::write(v6, "fusion_type", 0xBuLL);
    }

    mlir::mpsx::FusionTypeAttr::print(v8, a3);
  }
}

uint64_t mlir::mpsx::ANEOp::getFunctionType(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 16));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  AttrDictionary = v7;
  return mlir::TypeAttr::getValue(&AttrDictionary);
}

uint64_t mlir::mpsx::ANEOp::getAneFamily(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(Value, (v3 + 16 * v4 - 16), **(*(*this + 6) + 96));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  AttrDictionary = v7;
  return mlir::StringAttr::getValue(&AttrDictionary);
}

uint64_t mlir::mpsx::ANEOp::getIsExternalAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 24));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

uint64_t mlir::mpsx::ANEOp::getReadDataFromFileInfosAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 32));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

uint64_t mlir::mpsx::ANEOp::getArgAttrsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((Value + 16), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 8));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

uint64_t mlir::mpsx::ANEOp::getResAttrsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 40));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

BOOL mlir::mpsx::ANEOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v64 = *MEMORY[0x277D85DE8];
  v55[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v55);
  if (v3)
  {
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

    if (v5)
    {
      v15 = 0;
      v16 = 0;
      v17 = *(v4 + 1);
      while (1)
      {
        v18 = (v4 + v15);
        Name = mlir::NamedAttribute::getName((v4 + v15));
        v20 = *this;
        if (Name == *(*(*(*this + 6) + 96) + 16))
        {
          break;
        }

        if (mlir::NamedAttribute::getName((v4 + v15)) == *(*(*(*this + 6) + 96) + 8))
        {
          v16 = *(v4 + v15 + 8);
        }

        v15 += 16;
        if (v5 == v15)
        {
          goto LABEL_27;
        }
      }

      v27 = *(v18 + 1);
      v28 = v5 - v15;
      if (v5 == v15)
      {
        v31 = 0;
        v30 = 0;
        v29 = 0;
      }

      else
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        do
        {
          v32 = mlir::NamedAttribute::getName(v18);
          v20 = *this;
          if (v32 == *(*(*(*this + 6) + 96) + 24))
          {
            v29 = *(v18 + 1);
          }

          else
          {
            v33 = mlir::NamedAttribute::getName(v18);
            v20 = *this;
            if (v33 == *(*(*(*this + 6) + 96) + 32))
            {
              v30 = *(v18 + 1);
            }

            else
            {
              v34 = mlir::NamedAttribute::getName(v18);
              v20 = *this;
              if (v34 == *(*(*(*this + 6) + 96) + 40))
              {
                v31 = *(v18 + 1);
              }
            }
          }

          v18 = (v18 + 16);
          v28 -= 16;
        }

        while (v28);
      }

      if ((mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps1(v20, v27, "function_type", 0xD) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps2(*this, v17, "ane_family", 0xA) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps3(*this, v29, "is_external", 0xB) & 1) == 0)
      {
        return 0;
      }

      v35 = *this;
      if (v30 && *(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        v54 = 257;
        mlir::Operation::emitOpError(v55, v35, &v52);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v55, "attribute '");
        if (*v36)
        {
          v54 = 261;
          *&v52 = "read_data_from_file_infos";
          *(&v52 + 1) = 25;
          v37 = v36;
          mlir::Diagnostic::operator<<((v36 + 1), &v52);
          v36 = v37;
          if (*v37)
          {
            v38 = v37[3];
            LODWORD(v52) = 3;
            *(&v52 + 1) = "' failed to satisfy constraint: array attribute";
            v53 = 47;
            v39 = *(v37 + 8);
            if (v39 >= *(v37 + 9))
            {
              if (v38 > &v52 || v38 + 24 * v39 <= &v52)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v40 = v38 + 24 * *(v37 + 8);
            v41 = v52;
            *(v40 + 16) = v53;
            *v40 = v41;
            ++*(v37 + 8);
          }
        }

        v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
        if (v55[0])
        {
          mlir::InFlightDiagnostic::report(v55);
        }

        if (v63 == 1)
        {
          if (v62 != &v63)
          {
            free(v62);
          }

          v43 = __p;
          if (__p)
          {
            v44 = v61;
            v45 = __p;
            if (v61 != __p)
            {
              do
              {
                v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
              }

              while (v44 != v43);
              v45 = __p;
            }

            v61 = v43;
            operator delete(v45);
          }

          v46 = v58;
          if (v58)
          {
            v47 = v59;
            v48 = v58;
            if (v59 != v58)
            {
              do
              {
                v50 = *--v47;
                v49 = v50;
                *v47 = 0;
                if (v50)
                {
                  MEMORY[0x259C63150](v49, 0x1000C8077774924);
                }
              }

              while (v47 != v46);
              v48 = v58;
            }

            v59 = v46;
            operator delete(v48);
          }

          if (v56 != v57)
          {
            free(v56);
          }
        }

        if (!v42)
        {
          return 0;
        }

        v35 = *this;
      }

      if (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps5(v35, v16, "arg_attrs", 9))
      {
        return mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps5(*this, v31, "res_attrs", 9) & 1;
      }

      return 0;
    }

LABEL_27:
    *&v52 = "requires attribute 'function_type'";
    v54 = 259;
    mlir::OpState::emitOpError(this, &v52, v55);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
    if (v55[0])
    {
      mlir::InFlightDiagnostic::report(v55);
    }

    if (v63 == 1)
    {
      if (v62 != &v63)
      {
        free(v62);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v61;
        v23 = __p;
        if (v61 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v61 = v21;
        operator delete(v23);
      }

      v10 = v58;
      if (!v58)
      {
        goto LABEL_45;
      }

      v24 = v59;
      v12 = v58;
      if (v59 == v58)
      {
        goto LABEL_44;
      }

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

      while (v24 != v10);
      goto LABEL_43;
    }
  }

  else
  {
LABEL_5:
    *&v52 = "requires attribute 'ane_family'";
    v54 = 259;
    mlir::OpState::emitOpError(this, &v52, v55);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
    if (v55[0])
    {
      mlir::InFlightDiagnostic::report(v55);
    }

    if (v63 == 1)
    {
      if (v62 != &v63)
      {
        free(v62);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v61;
        v9 = __p;
        if (v61 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v61 = v7;
        operator delete(v9);
      }

      v10 = v58;
      if (!v58)
      {
        goto LABEL_45;
      }

      v11 = v59;
      v12 = v58;
      if (v59 == v58)
      {
LABEL_44:
        v59 = v10;
        operator delete(v12);
LABEL_45:
        if (v56 != v57)
        {
          free(v56);
        }

        return v6;
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
LABEL_43:
      v12 = v58;
      goto LABEL_44;
    }
  }

  return v6;
}

uint64_t mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps1(mlir::Operation *a1, void **a2, void **a3, void **a4)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 17) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v25[0] = a2;
    v6 = a1;
    Value = mlir::TypeAttr::getValue(v25);
    a1 = v6;
    if (*(*Value + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
    {
      v23[0] = a2;
      v9 = mlir::TypeAttr::getValue(v23);
      a1 = v6;
      if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
      {
        return 1;
      }
    }
  }

  v24 = 257;
  mlir::Operation::emitOpError(v25, a1, v23);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v25, "attribute '");
  if (*v10)
  {
    v24 = 261;
    v23[0] = a3;
    v23[1] = a4;
    v11 = v10;
    mlir::Diagnostic::operator<<((v10 + 1), v23);
    v10 = v11;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v10, "' failed to satisfy constraint: type attribute of function type");
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
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

    v14 = __p;
    if (__p)
    {
      v15 = v31;
      v16 = __p;
      if (v31 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v31 = v14;
      operator delete(v16);
    }

    v17 = v28;
    if (v28)
    {
      v18 = v29;
      v19 = v28;
      if (v29 != v28)
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
        v19 = v28;
      }

      v29 = v17;
      operator delete(v19);
    }

    if (v26 != &v27)
    {
      free(v26);
    }
  }

  return v13;
}

uint64_t mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps2(mlir::Operation *a1, uint64_t a2, void **a3, void **a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a2 || *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v6, "' failed to satisfy constraint: string attribute");
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

uint64_t mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps3(mlir::Operation *a1, uint64_t a2, void **a3, void **a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a2 || *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v6, "' failed to satisfy constraint: unit attribute");
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

uint64_t mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps5(mlir::Operation *a1, uint64_t a2, void **a3, void **a4)
{
  v35 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v26[0] = a2;
    v18 = a1;
    Value = mlir::ArrayAttr::getValue(v26);
    v20 = mlir::ArrayAttr::getValue(v26);
    v22 = v20 + 8 * v21;
    if (v22 != Value)
    {
      a1 = v18;
      while (*Value && *(**Value + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        Value += 8;
        if (Value == v22)
        {
          return 1;
        }
      }

      goto LABEL_3;
    }

    return 1;
  }

LABEL_3:
  v25 = 257;
  mlir::Operation::emitOpError(v26, a1, v24);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v26, "attribute '");
  if (*v6)
  {
    v25 = 261;
    v24[0] = a3;
    v24[1] = a4;
    v7 = v6;
    mlir::Diagnostic::operator<<((v6 + 1), v24);
    v6 = v7;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v6, "' failed to satisfy constraint: Array of dictionary attributes");
  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v8);
  if (v26[0])
  {
    mlir::InFlightDiagnostic::report(v26);
  }

  if (v34 == 1)
  {
    if (v33 != &v34)
    {
      free(v33);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v32;
      v12 = __p;
      if (v32 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v32 = v10;
      operator delete(v12);
    }

    v13 = v29;
    if (v29)
    {
      v14 = v30;
      v15 = v29;
      if (v30 != v29)
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
        v15 = v29;
      }

      v30 = v13;
      operator delete(v15);
    }

    if (v27 != &v28)
    {
      free(v27);
    }
  }

  return v9;
}

uint64_t mlir::mpsx::BufferToTensorOpAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v55 = *a1;
  v4 = mlir::DictionaryAttr::begin(&v55);
  if (v4 == mlir::DictionaryAttr::end(&v55))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v9 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      if (mlir::NamedAttribute::getName(v4) == **(a1[1] + 96))
      {
        v5 = *(v4 + 1);
      }

      else if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 8))
      {
        v6 = *(v4 + 1);
      }

      else if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 16))
      {
        v7 = *(v4 + 1);
      }

      else if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 24))
      {
        v9 = *(v4 + 1);
      }

      else if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 32))
      {
        v8 = *(v4 + 1);
      }

      v4 = (v4 + 16);
    }

    while (v4 != mlir::DictionaryAttr::end(&v55));
    if (v8)
    {
      if (!mlir::DenseIntElementsAttr::classof(v8))
      {
        goto LABEL_20;
      }

      v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8);
      v48 = v8;
      v49 = v10;
      Type = mlir::ElementsAttr::getType(&v48);
      v12 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v56 = v12;
      v57 = Type;
      mlir::ShapedType::getShape(&v56);
      if (v13 != 1 || (v51 = v8, v52 = mlir::DenseElementsAttr::getType(&v51), v53 = v14, ElementType = mlir::ShapedType::getElementType(&v52), !mlir::Type::isUnsignedInteger(&ElementType, 64)))
      {
LABEL_20:
        v48 = "'mpsx.buffer_to_tensor' op attribute 'shape' failed to satisfy constraint: ui64 elements attribute of rank 1";
        v50 = 259;
        mlir::emitError(a2, &v48, &v56);
        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
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

          v16 = __p;
          if (__p)
          {
            v17 = v63;
            v18 = __p;
            if (v63 != __p)
            {
              do
              {
                v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
              }

              while (v17 != v16);
              v18 = __p;
            }

            v63 = v16;
            operator delete(v18);
          }

          v19 = v60;
          if (!v60)
          {
            goto LABEL_101;
          }

          v20 = v61;
          v21 = v60;
          if (v61 == v60)
          {
LABEL_100:
            v61 = v19;
            operator delete(v21);
LABEL_101:
            if (v58 != &v59)
            {
              free(v58);
            }

            return v15;
          }

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
LABEL_99:
          v21 = v60;
          goto LABEL_100;
        }

        return v15;
      }
    }
  }

  if (!v9)
  {
LABEL_56:
    if (!v5)
    {
      goto LABEL_63;
    }

    if (!mlir::DenseIntElementsAttr::classof(v5))
    {
      goto LABEL_67;
    }

    v30 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    v48 = v5;
    v49 = v30;
    v31 = mlir::ElementsAttr::getType(&v48);
    v32 = v31;
    if (v31)
    {
      v31 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
    }

    v56 = v32;
    v57 = v31;
    mlir::ShapedType::getShape(&v56);
    if (v33 == 1 && (v51 = v5, v52 = mlir::DenseElementsAttr::getType(&v51), v53 = v34, ElementType = mlir::ShapedType::getElementType(&v52), mlir::Type::isUnsignedInteger(&ElementType, 64)))
    {
LABEL_63:
      if (v7 && !mlir::BoolAttr::classof(v7))
      {
        v48 = "'mpsx.buffer_to_tensor' op attribute 'isTensorBufferOp' failed to satisfy constraint: BOOL attribute";
        v50 = 259;
        mlir::emitError(a2, &v48, &v56);
        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
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

          v41 = __p;
          if (__p)
          {
            v42 = v63;
            v43 = __p;
            if (v63 != __p)
            {
              do
              {
                v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
              }

              while (v42 != v41);
              v43 = __p;
            }

            v63 = v41;
            operator delete(v43);
          }

          v19 = v60;
          if (!v60)
          {
            goto LABEL_101;
          }

          v44 = v61;
          v21 = v60;
          if (v61 == v60)
          {
            goto LABEL_100;
          }

          do
          {
            v46 = *--v44;
            v45 = v46;
            *v44 = 0;
            if (v46)
            {
              MEMORY[0x259C63150](v45, 0x1000C8077774924);
            }
          }

          while (v44 != v19);
          goto LABEL_99;
        }
      }

      else if (v6 && !mlir::BoolAttr::classof(v6))
      {
        v48 = "'mpsx.buffer_to_tensor' op attribute 'isChannelAndInterleaveSame' failed to satisfy constraint: BOOL attribute";
        v50 = 259;
        mlir::emitError(a2, &v48, &v56);
        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
        if (v56)
        {
          mlir::InFlightDiagnostic::report(&v56);
        }

        if (v65 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v57);
        }
      }

      else
      {
        return 1;
      }
    }

    else
    {
LABEL_67:
      v48 = "'mpsx.buffer_to_tensor' op attribute 'interleave' failed to satisfy constraint: ui64 elements attribute of rank 1";
      v50 = 259;
      mlir::emitError(a2, &v48, &v56);
      v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
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

        v35 = __p;
        if (__p)
        {
          v36 = v63;
          v37 = __p;
          if (v63 != __p)
          {
            do
            {
              v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
            }

            while (v36 != v35);
            v37 = __p;
          }

          v63 = v35;
          operator delete(v37);
        }

        v19 = v60;
        if (!v60)
        {
          goto LABEL_101;
        }

        v38 = v61;
        v21 = v60;
        if (v61 == v60)
        {
          goto LABEL_100;
        }

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

        while (v38 != v19);
        goto LABEL_99;
      }
    }

    return v15;
  }

  if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v56 = v9;
    mlir::TypeAttr::getValue(&v56);
    goto LABEL_56;
  }

  v48 = "'mpsx.buffer_to_tensor' op attribute 'resultElementType' failed to satisfy constraint: any type attribute";
  v50 = 259;
  mlir::emitError(a2, &v48, &v56);
  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
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

    v24 = __p;
    if (__p)
    {
      v25 = v63;
      v26 = __p;
      if (v63 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v63 = v24;
      operator delete(v26);
    }

    v19 = v60;
    if (!v60)
    {
      goto LABEL_101;
    }

    v27 = v61;
    v21 = v60;
    if (v61 == v60)
    {
      goto LABEL_100;
    }

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

    while (v27 != v19);
    goto LABEL_99;
  }

  return v15;
}

uint64_t mlir::mpsx::BufferToTensorOp::getResultElementType(mlir::Operation **this)
{
  result = mlir::mpsx::BufferToTensorOp::getResultElementTypeAttr(this);
  v2 = result;
  if (result)
  {
    return mlir::TypeAttr::getValue(&v2);
  }

  return result;
}

uint64_t mlir::mpsx::BufferToTensorOp::getIsTensorBufferOpAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 16));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (mlir::BoolAttr::classof(*(v5 + 1)))
  {
    return v7;
  }

  return 0;
}

uint64_t mlir::mpsx::BufferToTensorOp::getIsChannelAndInterleaveSameAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (mlir::BoolAttr::classof(*(v5 + 1)))
  {
    return v7;
  }

  return 0;
}

uint64_t mlir::mpsx::BufferToTensorOp::populateDefaultAttrs(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 96);
  Context = mlir::Attribute::getContext(v3);
  if (!mlir::NamedAttrList::get(a2, v3[2]))
  {
    v4 = v3[2];
    BoolAttr = mlir::Builder::getBoolAttr(&Context, 0);
    mlir::NamedAttribute::NamedAttribute(&v10, v4, BoolAttr);
    mlir::NamedAttrList::push_back(a2, v10, v11);
  }

  result = mlir::NamedAttrList::get(a2, v3[1]);
  if (!result)
  {
    v7 = v3[1];
    v8 = mlir::Builder::getBoolAttr(&Context, 0);
    mlir::NamedAttribute::NamedAttribute(&v10, v7, v8);
    return mlir::NamedAttrList::push_back(a2, v10, v11);
  }

  return result;
}

uint64_t mlir::mpsx::BufferToTensorOp::verifyInvariantsImpl(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (v3)
  {
    v4 = Value;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 16 * v3;
    do
    {
      Name = mlir::NamedAttribute::getName(v4);
      v12 = *this;
      if (Name == **(*(*this + 6) + 96))
      {
        v5 = *(v4 + 1);
      }

      else
      {
        v13 = mlir::NamedAttribute::getName(v4);
        v12 = *this;
        if (v13 == *(*(*(*this + 6) + 96) + 8))
        {
          v6 = *(v4 + 1);
        }

        else
        {
          v14 = mlir::NamedAttribute::getName(v4);
          v12 = *this;
          if (v14 == *(*(*(*this + 6) + 96) + 16))
          {
            v7 = *(v4 + 1);
          }

          else
          {
            v15 = mlir::NamedAttribute::getName(v4);
            v12 = *this;
            if (v15 == *(*(*(*this + 6) + 96) + 24))
            {
              v8 = *(v4 + 1);
            }

            else
            {
              v16 = mlir::NamedAttribute::getName(v4);
              v12 = *this;
              if (v16 == *(*(*(*this + 6) + 96) + 32))
              {
                v9 = *(v4 + 1);
              }
            }
          }
        }
      }

      v4 = (v4 + 16);
      v10 -= 16;
    }

    while (v10);
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v12 = *this;
  }

  if ((mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps6(v12, v9, "shape", 5) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps7(*this, v8, "resultElementType", 0x11) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps6(*this, v5, "interleave", 10) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(*this, v7, "isTensorBufferOp", 0x10) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(*this, v6, "isChannelAndInterleaveSame", 0x1A) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v17 = *this - 16;
  }

  else
  {
    v17 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0);
  return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps2(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps6(mlir::Operation *a1, void **a2, void **a3, uint64_t a4)
{
  v41 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_8;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v29 = a2;
  v30 = v8;
  Type = mlir::ElementsAttr::getType(&v29);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v32[0] = v10;
  v32[1] = Type;
  mlir::ShapedType::getShape(v32);
  if (v11 == 1)
  {
    v26 = a2;
    v27[0] = mlir::DenseElementsAttr::getType(&v26);
    v27[1] = v12;
    ElementType = mlir::ShapedType::getElementType(v27);
    if (mlir::Type::isUnsignedInteger(&ElementType, 64))
    {
      return 1;
    }
  }

LABEL_8:
  v31 = 257;
  mlir::Operation::emitOpError(v32, a1, &v29);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v32, "attribute '");
  if (*v14)
  {
    v31 = 261;
    v29 = a3;
    v30 = a4;
    v15 = v14;
    mlir::Diagnostic::operator<<((v14 + 1), &v29);
    v14 = v15;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v14, "' failed to satisfy constraint: ui64 elements attribute of rank 1");
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
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

    v17 = __p;
    if (__p)
    {
      v18 = v38;
      v19 = __p;
      if (v38 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v38 = v17;
      operator delete(v19);
    }

    v20 = v35;
    if (v35)
    {
      v21 = v36;
      v22 = v35;
      if (v36 != v35)
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
        v22 = v35;
      }

      v36 = v20;
      operator delete(v22);
    }

    if (v33 != &v34)
    {
      free(v33);
    }
  }

  return v13;
}

uint64_t mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps7(mlir::Operation *a1, uint64_t a2, void **a3, void **a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v21[0] = a2;
    mlir::TypeAttr::getValue(v21);
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

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v6, "' failed to satisfy constraint: any type attribute");
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

uint64_t mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(mlir::Operation *a1, void *a2, void **a3, void **a4)
{
  v31 = *MEMORY[0x277D85DE8];
  if (!a2 || mlir::BoolAttr::classof(a2))
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

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v9, "' failed to satisfy constraint: BOOL attribute");
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

uint64_t mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps1(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = *(*a2 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    v35[0] = a2;
    v35[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v6 + 8);
    mlir::ShapedType::getElementType(v35);
    return 1;
  }

  else
  {
    v32 = 261;
    v31[0] = a3;
    v31[1] = a4;
    mlir::Operation::emitOpError(v35, a1, v31);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v35, " #");
    if (*v11)
    {
      v12 = *(v11 + 24);
      LODWORD(v33) = 5;
      *(&v33 + 1) = a5;
      v13 = *(v11 + 32);
      if (v13 >= *(v11 + 36))
      {
        if (v12 > &v33 || v12 + 24 * v13 <= &v33)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v14 = v12 + 24 * *(v11 + 32);
      v15 = v33;
      *(v14 + 16) = v34;
      *v14 = v15;
      ++*(v11 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v11, " must be ranked or unranked memref of any type values, but got ");
    if (*v16)
    {
      v17 = v16;
      mlir::DiagnosticArgument::DiagnosticArgument(&v33, a2);
      v16 = v17;
      v18 = v17[3];
      v19 = *(v17 + 8);
      if (v19 >= *(v17 + 9))
      {
        if (v18 > &v33 || v18 + 24 * v19 <= &v33)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v20 = v18 + 24 * *(v17 + 8);
      v21 = v33;
      *(v20 + 16) = v34;
      *v20 = v21;
      ++*(v17 + 8);
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
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

      if (v36 != &v37)
      {
        free(v36);
      }
    }
  }

  return v9;
}

uint64_t mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps2(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = *(*a2 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v35[0] = a2;
    v35[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v6 + 8);
    mlir::ShapedType::getElementType(v35);
    return 1;
  }

  else
  {
    v32 = 261;
    v31[0] = a3;
    v31[1] = a4;
    mlir::Operation::emitOpError(v35, a1, v31);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v35, " #");
    if (*v11)
    {
      v12 = *(v11 + 24);
      LODWORD(v33) = 5;
      *(&v33 + 1) = a5;
      v13 = *(v11 + 32);
      if (v13 >= *(v11 + 36))
      {
        if (v12 > &v33 || v12 + 24 * v13 <= &v33)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v14 = v12 + 24 * *(v11 + 32);
      v15 = v33;
      *(v14 + 16) = v34;
      *v14 = v15;
      ++*(v11 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v11, " must be tensor of any type values, but got ");
    if (*v16)
    {
      v17 = v16;
      mlir::DiagnosticArgument::DiagnosticArgument(&v33, a2);
      v16 = v17;
      v18 = v17[3];
      v19 = *(v17 + 8);
      if (v19 >= *(v17 + 9))
      {
        if (v18 > &v33 || v18 + 24 * v19 <= &v33)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v20 = v18 + 24 * *(v17 + 8);
      v21 = v33;
      *(v20 + 16) = v34;
      *v20 = v21;
      ++*(v17 + 8);
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
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

      if (v36 != &v37)
      {
        free(v36);
      }
    }
  }

  return v9;
}

uint64_t mlir::mpsx::CPUOp::getFunctionType(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  AttrDictionary = v7;
  return mlir::TypeAttr::getValue(&AttrDictionary);
}

uint64_t mlir::mpsx::CPUOp::getArgAttrsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(Value, (v3 + 16 * v4 - 16), **(*(*this + 6) + 96));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

uint64_t mlir::mpsx::CPUOp::getResAttrsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 16));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

void mlir::mpsx::CPUOp::build(mlir::StringAttr **this, uint64_t a2, void *a3, void *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__src, uint64_t a18)
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

uint64_t mlir::OpBuilder::create<mlir::mpsx::RegionReturnOp,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x277D85DE8];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::RegionReturnOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::RegionReturnOp,llvm::SmallVector<mlir::Value,6u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::OperationState::addOperands(v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::RegionReturnOp,void>::id)
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

BOOL mlir::mpsx::CPUOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v33 = *MEMORY[0x277D85DE8];
  v24[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v24);
  if (v3)
  {
    v4 = Value;
    v5 = 0;
    v6 = 16 * v3;
    while (1)
    {
      Name = mlir::NamedAttribute::getName(v4);
      v8 = *this;
      if (Name == *(*(*(*this + 6) + 96) + 8))
      {
        break;
      }

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

    v18 = *(v4 + 1);
    for (i = 0; v6; v6 -= 16)
    {
      v20 = mlir::NamedAttribute::getName(v4);
      v8 = *this;
      if (v20 == *(*(*(*this + 6) + 96) + 16))
      {
        i = *(v4 + 1);
      }

      v4 = (v4 + 16);
    }

    if (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps1(v8, v18, "function_type", 0xD) & 1) != 0 && (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps5(*this, v5, "arg_attrs", 9) & 1) != 0 && (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps5(*this, i, "res_attrs", 9))
    {
      return mlir::mpsx::__mlir_ods_local_region_constraint_MPSXOps2(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "body", 4, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_7:
    v22 = "requires attribute 'function_type'";
    v23 = 259;
    mlir::OpState::emitOpError(this, &v22, v24);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
    if (v24[0])
    {
      mlir::InFlightDiagnostic::report(v24);
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
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
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
            v17 = *--v14;
            v16 = v17;
            *v14 = 0;
            if (v17)
            {
              MEMORY[0x259C63150](v16, 0x1000C8077774924);
            }
          }

          while (v14 != v13);
          v15 = v27;
        }

        v28 = v13;
        operator delete(v15);
      }

      if (v25 != &v26)
      {
        free(v25);
      }
    }
  }

  return v9;
}

uint64_t mlir::mpsx::__mlir_ods_local_region_constraint_MPSXOps2(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 8);
  if (v8 != a2 && *(v8 + 8) == a2)
  {
    return 1;
  }

  v28 = "region #";
  v29 = 259;
  mlir::Operation::emitOpError(&v30, a1, &v28);
  if (v30)
  {
    LODWORD(v25) = 5;
    *(&v25 + 1) = a5;
    if (v33 >= v34)
    {
      if (v32 > &v25 || v32 + 24 * v33 <= &v25)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = v32 + 24 * v33;
    v10 = v25;
    *(v9 + 2) = v26;
    *v9 = v10;
    ++v33;
  }

  if (a4)
  {
    v24 = 1283;
    v23[0] = " ('";
    v23[2] = a3;
    v23[3] = a4;
    *&v25 = v23;
    v26 = "') ";
    v11 = 770;
  }

  else
  {
    *&v25 = " ";
    v11 = 259;
  }

  v27 = v11;
  if (v30)
  {
    mlir::Diagnostic::operator<<(&v31, &v25);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v30, "failed to verify constraint: region with 1 blocks");
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
  if (v30)
  {
    mlir::InFlightDiagnostic::report(&v30);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v39;
      v16 = __p;
      if (v39 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v39 = v14;
      operator delete(v16);
    }

    v17 = v36;
    if (v36)
    {
      v18 = v37;
      v19 = v36;
      if (v37 != v36)
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
        v19 = v36;
      }

      v37 = v17;
      operator delete(v19);
    }

    if (v32 != &v35)
    {
      free(v32);
    }
  }

  return v13;
}

uint64_t *mlir::mpsx::detail::DeinterleaveOpGenericAdaptorBase::getInterleaveFactor(mlir::mpsx::detail::DeinterleaveOpGenericAdaptorBase *this)
{
  v2 = mlir::DictionaryAttr::begin(this);
  v3 = mlir::DictionaryAttr::end(this);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(v2, v3, **(*(this + 1) + 96));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v11 = v6;
  mlir::IntegerAttr::getValue(&v11, &v9);
  if (v10 <= 0x40)
  {
    return v9;
  }

  v7 = *v9;
  MEMORY[0x259C63150]();
  return v7;
}

uint64_t mlir::mpsx::DeinterleaveOpAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
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
        v25[0] = mlir::IntegerAttr::getType(v22);
        if (mlir::Type::isUnsignedInteger(v25, 32))
        {
          return 1;
        }
      }

      v22[0] = "'mpsx.deinterleave' op attribute 'interleave_factor' failed to satisfy constraint: 32-bit unsigned integer attribute";
      v23 = 259;
      mlir::emitError(a2, v22, v25);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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

        v15 = __p;
        if (__p)
        {
          v16 = v31;
          v17 = __p;
          if (v31 != __p)
          {
            do
            {
              v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
            }

            while (v16 != v15);
            v17 = __p;
          }

          v31 = v15;
          operator delete(v17);
        }

        v9 = v28;
        if (v28)
        {
          v18 = v29;
          v11 = v28;
          if (v29 != v28)
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
            goto LABEL_41;
          }

          goto LABEL_42;
        }

        goto LABEL_43;
      }

      return v5;
    }
  }

  v22[0] = "'mpsx.deinterleave' op requires attribute 'interleave_factor'";
  v23 = 259;
  mlir::emitError(a2, v22, v25);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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

    v6 = __p;
    if (__p)
    {
      v7 = v31;
      v8 = __p;
      if (v31 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v31 = v6;
      operator delete(v8);
    }

    v9 = v28;
    if (v28)
    {
      v10 = v29;
      v11 = v28;
      if (v29 != v28)
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
LABEL_41:
        v11 = v28;
      }

LABEL_42:
      v29 = v9;
      operator delete(v11);
    }

LABEL_43:
    if (v26 != &v27)
    {
      free(v26);
    }
  }

  return v5;
}

uint64_t *mlir::mpsx::DeinterleaveOp::getInterleaveFactor(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  v12 = v7;
  mlir::IntegerAttr::getValue(&v12, &AttrDictionary);
  if (v11 <= 0x40)
  {
    return AttrDictionary;
  }

  v8 = *AttrDictionary;
  MEMORY[0x259C63150]();
  return v8;
}

BOOL mlir::mpsx::DeinterleaveOp::verifyInvariantsImpl(mlir::Operation **this)
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

    if (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps9(*this, v4[1], "interleave_factor", 0x11) & 1) != 0 && (mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps3(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
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
      return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v18 = "requires attribute 'interleave_factor'";
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

uint64_t mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps9(mlir::Operation *a1, void **a2, void **a3, void **a4)
{
  v32 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 17) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v21[0] = a2;
    v6 = a1;
    v23[0] = mlir::IntegerAttr::getType(v21);
    isUnsignedInteger = mlir::Type::isUnsignedInteger(v23, 32);
    a1 = v6;
    if (isUnsignedInteger)
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

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v9, "' failed to satisfy constraint: 32-bit unsigned integer attribute");
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

uint64_t mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps3(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v10 = a3;
    v11 = a4;
    v12 = a1;
    v38[0] = a2;
    v38[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v7 + 8);
    v34[0] = mlir::ShapedType::getElementType(v38);
    if (mlir::Type::isSignlessInteger(v34, 1))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v34, 8))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v34, 16))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v34, 32))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v34, 64))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v34, 8))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v34, 16))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v34, 32))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v34, 64))
    {
      return 1;
    }

    if (mlir::Type::isF16(v34))
    {
      return 1;
    }

    if (mlir::Type::isF32(v34))
    {
      return 1;
    }

    if (mlir::Type::isBF16(v34))
    {
      return 1;
    }

    a1 = v12;
    a4 = v11;
    a3 = v10;
    if (*(*v34[0] + 17) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      return 1;
    }
  }

  v35 = 261;
  v34[0] = a3;
  v34[1] = a4;
  mlir::Operation::emitOpError(v38, a1, v34);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v38, " #");
  if (*v13)
  {
    v14 = *(v13 + 24);
    LODWORD(v36) = 5;
    *(&v36 + 1) = a5;
    v15 = *(v13 + 32);
    if (v15 >= *(v13 + 36))
    {
      if (v14 > &v36 || v14 + 24 * v15 <= &v36)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v16 = v14 + 24 * *(v13 + 32);
    v17 = v36;
    *(v16 + 16) = v37;
    *v16 = v17;
    ++*(v13 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v13, " must be tensor of mps native type values, but got ");
  if (*v18)
  {
    v19 = v18;
    mlir::DiagnosticArgument::DiagnosticArgument(&v36, a2);
    v18 = v19;
    v20 = v19[3];
    v21 = *(v19 + 8);
    if (v21 >= *(v19 + 9))
    {
      if (v20 > &v36 || v20 + 24 * v21 <= &v36)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22 = v20 + 24 * *(v19 + 8);
    v23 = v36;
    *(v22 + 16) = v37;
    *v22 = v23;
    ++*(v19 + 8);
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
  if (v38[0])
  {
    mlir::InFlightDiagnostic::report(v38);
  }

  if (v46 == 1)
  {
    if (v45 != &v46)
    {
      free(v45);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v44;
      v27 = __p;
      if (v44 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v44 = v25;
      operator delete(v27);
    }

    v28 = v41;
    if (v41)
    {
      v29 = v42;
      v30 = v41;
      if (v42 != v41)
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
        v30 = v41;
      }

      v42 = v28;
      operator delete(v30);
    }

    if (v39 != &v40)
    {
      free(v39);
    }
  }

  return v24;
}

uint64_t mlir::mpsx::FPToIntClampedOp::getResultElementType(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  AttrDictionary = v7;
  return mlir::TypeAttr::getValue(&AttrDictionary);
}

BOOL mlir::mpsx::FPToIntClampedOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v58 = *MEMORY[0x277D85DE8];
  v49[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v49);
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

    if (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps7(*this, v4[1], "resultElementType", 0x11) & 1) != 0 && (mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
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
      v17 = *this;
      v18 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
      v19 = *v18;
      v20 = *(*v18 + 17);
      if (v20 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v19 + 8);
        v49[0] = v18;
        v49[1] = v22;
        *&v47 = mlir::ShapedType::getElementType(v49);
        if (mlir::Type::isSignedInteger(&v47, 8) || mlir::Type::isUnsignedInteger(&v47, 8))
        {
          return 1;
        }

        v19 = *v18;
        v20 = *(*v18 + 17);
      }

      if (v20 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
      {
        v44 = v18;
        v45 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v19 + 8);
        *&v47 = mlir::ShapedType::getElementType(&v44);
        if (mlir::Type::isSignedInteger(&v47, 8) || mlir::Type::isUnsignedInteger(&v47, 8))
        {
          return 1;
        }
      }

      v46 = 261;
      v44 = "result";
      v45 = 6;
      mlir::Operation::emitOpError(v49, v17, &v44);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v49, " #");
      if (*v23)
      {
        v24 = *(v23 + 24);
        LODWORD(v47) = 5;
        *(&v47 + 1) = 0;
        v25 = *(v23 + 32);
        if (v25 >= *(v23 + 36))
        {
          if (v24 > &v47 || v24 + 24 * v25 <= &v47)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v26 = v24 + 24 * *(v23 + 32);
        v27 = v47;
        *(v26 + 16) = v48;
        *v26 = v27;
        ++*(v23 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v23, " must be tensor of int8 values or memref of int8 values, but got ");
      if (*v28)
      {
        v29 = v28;
        mlir::DiagnosticArgument::DiagnosticArgument(&v47, v18);
        v30 = v29[3];
        v31 = *(v29 + 8);
        if (v31 >= *(v29 + 9))
        {
          if (v30 > &v47 || v30 + 24 * v31 <= &v47)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v28 = v29;
        v32 = v30 + 24 * *(v29 + 8);
        v33 = v47;
        *(v32 + 16) = v48;
        *v32 = v33;
        ++*(v29 + 8);
      }

      v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
      if (v49[0])
      {
        mlir::InFlightDiagnostic::report(v49);
      }

      if (v57 == 1)
      {
        if (v56 != &v57)
        {
          free(v56);
        }

        v35 = __p;
        if (__p)
        {
          v36 = v55;
          v37 = __p;
          if (v55 != __p)
          {
            do
            {
              v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
            }

            while (v36 != v35);
            v37 = __p;
          }

          v55 = v35;
          operator delete(v37);
        }

        v38 = v52;
        if (v52)
        {
          v39 = v53;
          v40 = v52;
          if (v53 != v52)
          {
            do
            {
              v42 = *--v39;
              v41 = v42;
              *v39 = 0;
              if (v42)
              {
                MEMORY[0x259C63150](v41, 0x1000C8077774924);
              }
            }

            while (v39 != v38);
            v40 = v52;
          }

          v53 = v38;
          operator delete(v40);
        }

        if (v50 != v51)
        {
          free(v50);
        }
      }

      if (v34)
      {
        return 1;
      }
    }

    return 0;
  }

LABEL_5:
  v44 = "requires attribute 'resultElementType'";
  v46 = 259;
  mlir::OpState::emitOpError(this, &v44, v49);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
  if (v49[0])
  {
    mlir::InFlightDiagnostic::report(v49);
  }

  if (v57 == 1)
  {
    if (v56 != &v57)
    {
      free(v56);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v55;
      v9 = __p;
      if (v55 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v55 = v7;
      operator delete(v9);
    }

    v10 = v52;
    if (v52)
    {
      v11 = v53;
      v12 = v52;
      if (v53 != v52)
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
        v12 = v52;
      }

      v53 = v10;
      operator delete(v12);
    }

    if (v50 != v51)
    {
      free(v50);
    }
  }

  return v6;
}

uint64_t mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v10 = a3;
    v11 = a4;
    v12 = a1;
    v39[0] = a2;
    v39[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v7 + 8);
    v35[0] = mlir::ShapedType::getElementType(v39);
    if (mlir::Type::isF16(v35))
    {
      return 1;
    }

    if (mlir::Type::isF32(v35))
    {
      return 1;
    }

    isBF16 = mlir::Type::isBF16(v35);
    a1 = v12;
    a4 = v11;
    a3 = v10;
    if (isBF16)
    {
      return 1;
    }
  }

  v36 = 261;
  v35[0] = a3;
  v35[1] = a4;
  mlir::Operation::emitOpError(v39, a1, v35);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v39, " #");
  if (*v15)
  {
    v16 = *(v15 + 24);
    LODWORD(v37) = 5;
    *(&v37 + 1) = a5;
    v17 = *(v15 + 32);
    if (v17 >= *(v15 + 36))
    {
      if (v16 > &v37 || v16 + 24 * v17 <= &v37)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = v16 + 24 * *(v15 + 32);
    v19 = v37;
    *(v18 + 16) = v38;
    *v18 = v19;
    ++*(v15 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v15, " must be tensor of floating point values, but got ");
  if (*v20)
  {
    v21 = v20;
    mlir::DiagnosticArgument::DiagnosticArgument(&v37, a2);
    v20 = v21;
    v22 = v21[3];
    v23 = *(v21 + 8);
    if (v23 >= *(v21 + 9))
    {
      if (v22 > &v37 || v22 + 24 * v23 <= &v37)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v24 = v22 + 24 * *(v21 + 8);
    v25 = v37;
    *(v24 + 16) = v38;
    *v24 = v25;
    ++*(v21 + 8);
  }

  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
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

    v26 = __p;
    if (__p)
    {
      v27 = v45;
      v28 = __p;
      if (v45 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v45 = v26;
      operator delete(v28);
    }

    v29 = v42;
    if (v42)
    {
      v30 = v43;
      v31 = v42;
      if (v43 != v42)
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
        v31 = v42;
      }

      v43 = v29;
      operator delete(v31);
    }

    if (v40 != &v41)
    {
      free(v40);
    }
  }

  return v14;
}

uint64_t mlir::mpsx::FusionOp::getCustomFusionTypeAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(Value, (v3 + 16 * v4 - 16), **(*(*this + 6) + 96));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

uint64_t mlir::mpsx::FusionOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v47 = *MEMORY[0x277D85DE8];
  v38[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v38);
  if (!v3)
  {
LABEL_7:
    v36[0] = "requires attribute 'fusionType'";
    v37 = 259;
    mlir::OpState::emitOpError(this, v36, v38);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
    if (v38[0])
    {
      mlir::InFlightDiagnostic::report(v38);
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v44;
        v12 = __p;
        if (v44 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v44 = v10;
        operator delete(v12);
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
            v17 = *--v14;
            v16 = v17;
            *v14 = 0;
            if (v17)
            {
              MEMORY[0x259C63150](v16, 0x1000C8077774924);
            }
          }

          while (v14 != v13);
          v15 = v41;
        }

        v42 = v13;
        operator delete(v15);
      }

      if (v39 != v40)
      {
        free(v39);
      }
    }

    return v9;
  }

  v4 = Value;
  v5 = 0;
  v6 = 16 * v3;
  while (1)
  {
    Name = mlir::NamedAttribute::getName(v4);
    v8 = *this;
    if (Name == *(*(*(*this + 6) + 96) + 8))
    {
      break;
    }

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

  v18 = *(v4 + 1);
  if (v18 && *(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id)
  {
    v37 = 257;
    mlir::Operation::emitOpError(v38, v8, v36);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v38, "attribute '");
    if (*v19)
    {
      v37 = 261;
      v36[0] = "fusionType";
      v36[1] = 10;
      v20 = v19;
      mlir::Diagnostic::operator<<((v19 + 1), v36);
      v19 = v20;
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v19, "' failed to satisfy constraint: valid FusionType");
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
    if (v38[0])
    {
      mlir::InFlightDiagnostic::report(v38);
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v44;
        v25 = __p;
        if (v44 != __p)
        {
          do
          {
            v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v44 = v23;
        operator delete(v25);
      }

      v26 = v41;
      if (v41)
      {
        v27 = v42;
        v28 = v41;
        if (v42 != v41)
        {
          do
          {
            v30 = *--v27;
            v29 = v30;
            *v27 = 0;
            if (v30)
            {
              MEMORY[0x259C63150](v29, 0x1000C8077774924);
            }
          }

          while (v27 != v26);
          v28 = v41;
        }

        v42 = v26;
        operator delete(v28);
      }

      if (v39 != v40)
      {
        free(v39);
      }
    }

    if (!v22)
    {
      return 0;
    }

    v8 = *this;
  }

  if ((mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps2(v8, v5, "customFusionType", 0x10) & 1) == 0)
  {
    return 0;
  }

  v31 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v32 = *(v31 + 17);
    if (v32)
    {
      v33 = 0;
      v34 = *(v31 + 9) + 24;
      while (mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps6(*this, (*(*v34 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v33))
      {
        ++v33;
        v34 += 32;
        if (v32 == v33)
        {
          v31 = *this;
          goto LABEL_60;
        }
      }

      return 0;
    }
  }

LABEL_60:
  mlir::mpsx::FusionOp::verifyInvariantsImpl(v31, this, v38);
  return LOBYTE(v38[0]);
}

BOOL mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps6(mlir::Operation *a1, void **a2, void **a3, void **a4, unsigned int a5)
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = *(*a2 + 17);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v6 + 8);
    v40[0] = a2;
    v10 = v40;
LABEL_33:
    v10[1] = v9;
    mlir::ShapedType::getElementType(v10);
    return 1;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v6 + 8);
    v36[0] = a2;
    v10 = v36;
    goto LABEL_33;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v37 = 261;
  v36[0] = a3;
  v36[1] = a4;
  mlir::Operation::emitOpError(v40, a1, v36);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v40, " #");
  if (*v12)
  {
    v13 = *(v12 + 24);
    LODWORD(v38) = 5;
    *(&v38 + 1) = a5;
    v14 = *(v12 + 32);
    if (v14 >= *(v12 + 36))
    {
      if (v13 > &v38 || v13 + 24 * v14 <= &v38)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v15 = v13 + 24 * *(v12 + 32);
    v16 = v38;
    *(v15 + 16) = v39;
    *v15 = v16;
    v17 = *(v12 + 32) + 1;
    *(v12 + 32) = v17;
    if (*v12)
    {
      LODWORD(v38) = 3;
      *(&v38 + 1) = " must be variadic of tensor of any type values or memref of any type values or index, but got ";
      v39 = 94;
      v18 = *(v12 + 24);
      if (v17 >= *(v12 + 36))
      {
        if (v18 > &v38 || v18 + 24 * v17 <= &v38)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v19 = v18 + 24 * *(v12 + 32);
      v20 = v38;
      *(v19 + 16) = v39;
      *v19 = v20;
      ++*(v12 + 32);
      if (*v12)
      {
        v21 = v12;
        mlir::DiagnosticArgument::DiagnosticArgument(&v38, a2);
        v22 = *(v21 + 32);
        v23 = *(v21 + 24);
        if (v22 >= *(v21 + 36))
        {
          if (v23 > &v38 || v23 + 24 * v22 <= &v38)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v12 = v21;
        v24 = v23 + 24 * *(v21 + 32);
        v25 = v38;
        *(v24 + 16) = v39;
        *v24 = v25;
        ++*(v21 + 32);
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
  v27 = result;
  if (v40[0])
  {
    mlir::InFlightDiagnostic::report(v40);
    result = v27;
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
      result = v27;
    }

    v28 = __p;
    if (__p)
    {
      v29 = v46;
      v30 = __p;
      if (v46 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v46 = v28;
      operator delete(v30);
      result = v27;
    }

    v31 = v43;
    if (v43)
    {
      v32 = v44;
      v33 = v43;
      if (v44 != v43)
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
        v33 = v43;
      }

      v44 = v31;
      operator delete(v33);
      result = v27;
    }

    if (v41 != &v42)
    {
      free(v41);
      return v27;
    }
  }

  return result;
}

uint64_t mlir::mpsx::InterleaveOpAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
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
        v25[0] = mlir::IntegerAttr::getType(v22);
        if (mlir::Type::isUnsignedInteger(v25, 32))
        {
          return 1;
        }
      }

      v22[0] = "'mpsx.interleave' op attribute 'interleave_factor' failed to satisfy constraint: 32-bit unsigned integer attribute";
      v23 = 259;
      mlir::emitError(a2, v22, v25);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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

        v15 = __p;
        if (__p)
        {
          v16 = v31;
          v17 = __p;
          if (v31 != __p)
          {
            do
            {
              v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
            }

            while (v16 != v15);
            v17 = __p;
          }

          v31 = v15;
          operator delete(v17);
        }

        v9 = v28;
        if (v28)
        {
          v18 = v29;
          v11 = v28;
          if (v29 != v28)
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
            goto LABEL_41;
          }

          goto LABEL_42;
        }

        goto LABEL_43;
      }

      return v5;
    }
  }

  v22[0] = "'mpsx.interleave' op requires attribute 'interleave_factor'";
  v23 = 259;
  mlir::emitError(a2, v22, v25);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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

    v6 = __p;
    if (__p)
    {
      v7 = v31;
      v8 = __p;
      if (v31 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v31 = v6;
      operator delete(v8);
    }

    v9 = v28;
    if (v28)
    {
      v10 = v29;
      v11 = v28;
      if (v29 != v28)
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
LABEL_41:
        v11 = v28;
      }

LABEL_42:
      v29 = v9;
      operator delete(v11);
    }

LABEL_43:
    if (v26 != &v27)
    {
      free(v26);
    }
  }

  return v5;
}

uint64_t mlir::mpsx::ListPopBackOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 1);
  v6 = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps8(*this, *(v6 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 1u) & 1;
}

uint64_t mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps7(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = *(*a2 + 136);
  {
    v31 = a4;
    v32 = a2;
    v29 = a1;
    v30 = a3;
    mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get();
    a3 = v30;
    a4 = v31;
    a2 = v32;
    a1 = v29;
  }

  if (v6 == mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id)
  {
    return 1;
  }

  v7 = a2;
  v34 = 261;
  v33[0] = a3;
  v33[1] = a4;
  mlir::Operation::emitOpError(v37, a1, v33);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v37, " #");
  if (*v8)
  {
    v9 = *(v8 + 24);
    LODWORD(v35) = 5;
    *(&v35 + 1) = a5;
    v10 = *(v8 + 32);
    if (v10 >= *(v8 + 36))
    {
      if (v9 > &v35 || v9 + 24 * v10 <= &v35)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = v9 + 24 * *(v8 + 32);
    v12 = v35;
    *(v11 + 16) = v36;
    *v11 = v12;
    ++*(v8 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v8, " must be MPSX list type, but got ");
  if (*v13)
  {
    v14 = v13;
    mlir::DiagnosticArgument::DiagnosticArgument(&v35, v7);
    v13 = v14;
    v15 = v14[3];
    v16 = *(v14 + 8);
    if (v16 >= *(v14 + 9))
    {
      if (v15 > &v35 || v15 + 24 * v16 <= &v35)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v17 = v15 + 24 * *(v14 + 8);
    v18 = v35;
    *(v17 + 16) = v36;
    *v17 = v18;
    ++*(v14 + 8);
  }

  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
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

    v20 = __p;
    if (__p)
    {
      v21 = v43;
      v22 = __p;
      if (v43 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v43 = v20;
      operator delete(v22);
    }

    v23 = v40;
    if (v40)
    {
      v24 = v41;
      v25 = v40;
      if (v41 != v40)
      {
        do
        {
          v27 = *--v24;
          v26 = v27;
          *v24 = 0;
          if (v27)
          {
            MEMORY[0x259C63150](v26, 0x1000C8077774924);
          }
        }

        while (v24 != v23);
        v25 = v40;
      }

      v41 = v23;
      operator delete(v25);
    }

    if (v38 != &v39)
    {
      free(v38);
    }
  }

  return v19;
}

uint64_t mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps8(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v47 = *MEMORY[0x277D85DE8];
  if (mlir::mpsx::isMPSXListElementType(a2))
  {
    return 1;
  }

  v35 = 261;
  v34[0] = a3;
  v34[1] = a4;
  mlir::Operation::emitOpError(v38, a1, v34);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v38, " #");
  if (*v11)
  {
    v12 = *(v11 + 24);
    LODWORD(v36) = 5;
    *(&v36 + 1) = a5;
    v13 = *(v11 + 32);
    if (v13 >= *(v11 + 36))
    {
      if (v12 > &v36 || v12 + 24 * v13 <= &v36)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = v12 + 24 * *(v11 + 32);
    v15 = v36;
    *(v14 + 16) = v37;
    *v14 = v15;
    v16 = *(v11 + 32) + 1;
    *(v11 + 32) = v16;
    if (*v11)
    {
      LODWORD(v36) = 3;
      *(&v36 + 1) = " must be MPSX list element type, but got ";
      v37 = 41;
      v17 = *(v11 + 24);
      if (v16 >= *(v11 + 36))
      {
        if (v17 > &v36 || v17 + 24 * v16 <= &v36)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v18 = v17 + 24 * *(v11 + 32);
      v19 = v36;
      *(v18 + 16) = v37;
      *v18 = v19;
      ++*(v11 + 32);
      if (*v11)
      {
        v20 = v11;
        mlir::DiagnosticArgument::DiagnosticArgument(&v36, a2);
        v21 = *(v20 + 32);
        v22 = *(v20 + 24);
        if (v21 >= *(v20 + 36))
        {
          if (v22 > &v36 || v22 + 24 * v21 <= &v36)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v20;
        v23 = v22 + 24 * *(v20 + 32);
        v24 = v36;
        *(v23 + 16) = v37;
        *v23 = v24;
        ++*(v20 + 32);
      }
    }
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
  if (v38[0])
  {
    mlir::InFlightDiagnostic::report(v38);
  }

  if (v46 == 1)
  {
    if (v45 != &v46)
    {
      free(v45);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v44;
      v27 = __p;
      if (v44 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v44 = v25;
      operator delete(v27);
    }

    v28 = v41;
    if (v41)
    {
      v29 = v42;
      v30 = v41;
      if (v42 != v41)
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
        v30 = v41;
      }

      v42 = v28;
      operator delete(v30);
    }

    if (v39 != &v40)
    {
      free(v39);
    }
  }

  return v10;
}

uint64_t mlir::mpsx::ListPushBackOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps8(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
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
  return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::mpsx::MakeListOp::getMaxSize(mlir::Operation **this)
{
  result = mlir::mpsx::MakeListOp::getMaxSizeAttr(this);
  v7 = result;
  if (result)
  {
    mlir::IntegerAttr::getValue(&v7, &v5);
    if (v6 >= 0x41)
    {
      v2 = v5;
    }

    else
    {
      v2 = &v5;
    }

    v3 = *v2;
    if (v6 >= 0x41 && v5 != 0)
    {
      MEMORY[0x259C63150]();
    }

    return v3 | 0x100000000;
  }

  return result;
}

uint64_t mlir::mpsx::MakeListOp::getMaxSizeAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

BOOL mlir::mpsx::MakeListOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v51 = *MEMORY[0x277D85DE8];
  v42[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v42);
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
      v33 = mlir::NamedAttribute::getName(v4);
      v7 = *this;
      if (v33 == *(*(*(*this + 6) + 96) + 8))
      {
        i = *(v4 + 1);
      }

      v4 = (v4 + 16);
    }

    if (v17)
    {
      if (*(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id || (v42[0] = v17, mlir::TypeAttr::getValue(v42), *&v39 = v17, v19 = mlir::TypeAttr::getValue(&v39), (mlir::mpsx::isMPSXListElementType(v19) & 1) == 0))
      {
        v41 = 257;
        mlir::Operation::emitOpError(v42, v7, &v39);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v42, "attribute '");
        if (*v20)
        {
          v41 = 261;
          *&v39 = "element_type";
          *(&v39 + 1) = 12;
          v21 = v20;
          mlir::Diagnostic::operator<<((v20 + 1), &v39);
          v20 = v21;
          if (*v21)
          {
            v22 = v21[3];
            LODWORD(v39) = 3;
            *(&v39 + 1) = "' failed to satisfy constraint: any type attribute MPSX list element type attribute";
            v40 = 83;
            v23 = *(v21 + 8);
            if (v23 >= *(v21 + 9))
            {
              if (v22 > &v39 || v22 + 24 * v23 <= &v39)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v24 = v22 + 24 * *(v21 + 8);
            v25 = v39;
            *(v24 + 16) = v40;
            *v24 = v25;
            ++*(v21 + 8);
          }
        }

        v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
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

          v27 = __p;
          if (__p)
          {
            v28 = v48;
            v29 = __p;
            if (v48 != __p)
            {
              do
              {
                v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
              }

              while (v28 != v27);
              v29 = __p;
            }

            v48 = v27;
            operator delete(v29);
          }

          v30 = v45;
          if (v45)
          {
            v31 = v46;
            v32 = v45;
            if (v46 != v45)
            {
              do
              {
                v35 = *--v31;
                v34 = v35;
                *v31 = 0;
                if (v35)
                {
                  MEMORY[0x259C63150](v34, 0x1000C8077774924);
                }
              }

              while (v31 != v30);
              v32 = v45;
            }

            v46 = v30;
            operator delete(v32);
          }

          if (v43 != v44)
          {
            free(v43);
          }
        }

        if (!v26)
        {
          return 0;
        }
      }
    }

    if (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps9(*this, i, "max_size", 8))
    {
      if (*(*this + 9))
      {
        v36 = *this - 16;
      }

      else
      {
        v36 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v36, 0);
      return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    *&v39 = "requires attribute 'element_type'";
    v41 = 259;
    mlir::OpState::emitOpError(this, &v39, v42);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
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

      v9 = __p;
      if (__p)
      {
        v10 = v48;
        v11 = __p;
        if (v48 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v48 = v9;
        operator delete(v11);
      }

      v12 = v45;
      if (v45)
      {
        v13 = v46;
        v14 = v45;
        if (v46 != v45)
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
          v14 = v45;
        }

        v46 = v12;
        operator delete(v14);
      }

      if (v43 != v44)
      {
        free(v43);
      }
    }
  }

  return v8;
}

uint64_t mlir::mpsx::MemrefBackedOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v53 = *MEMORY[0x277D85DE8];
  v1 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    return 1;
  }

  v2 = *(v1 + 17);
  if (!v2)
  {
    return 1;
  }

  v3 = this;
  v4 = 0;
  v5 = *(v1 + 9);
  v6 = &v52;
  v7 = &v46;
  while (1)
  {
    v8 = *v3;
    v9 = *(*(v5 + 32 * v4 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v9 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || (v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8), v44[0] = v9, v44[1] = v10, mlir::ShapedType::getElementType(v44), (mlir::isStrided(v9) & 1) == 0))
    {
      v41 = 261;
      v40[0] = "operand";
      v40[1] = 7;
      mlir::Operation::emitOpError(v44, v8, v40);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v44, " #");
      if (*v11)
      {
        v12 = *(v11 + 24);
        LODWORD(v42) = 5;
        *(&v42 + 1) = v4;
        v13 = *(v11 + 32);
        if (v13 >= *(v11 + 36))
        {
          if (v12 > &v42 || v12 + 24 * v13 <= &v42)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v14 = v12 + 24 * *(v11 + 32);
        v15 = v42;
        *(v14 + 16) = v43;
        *v14 = v15;
        v16 = *(v11 + 32) + 1;
        *(v11 + 32) = v16;
        if (*v11)
        {
          LODWORD(v42) = 3;
          *(&v42 + 1) = " must be variadic of strided memref of any type values, but got ";
          v43 = 64;
          v17 = *(v11 + 24);
          if (v16 >= *(v11 + 36))
          {
            if (v17 > &v42 || v17 + 24 * v16 <= &v42)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v18 = v17 + 24 * *(v11 + 32);
          v19 = v42;
          *(v18 + 16) = v43;
          *v18 = v19;
          ++*(v11 + 32);
          if (*v11)
          {
            v20 = v3;
            v21 = v2;
            v22 = v5;
            v23 = v7;
            v24 = v6;
            v25 = v11;
            mlir::DiagnosticArgument::DiagnosticArgument(&v42, v9);
            v11 = v25;
            v26 = *(v25 + 32);
            v27 = *(v25 + 24);
            if (v26 >= *(v25 + 36))
            {
              if (v27 > &v42 || v27 + 24 * v26 <= &v42)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v28 = v27 + 24 * *(v25 + 32);
            v29 = v42;
            *(v28 + 16) = v43;
            *v28 = v29;
            ++*(v25 + 32);
            v6 = v24;
            v7 = v23;
            v5 = v22;
            v2 = v21;
            v3 = v20;
          }
        }
      }

      v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }

      if (v52 == 1)
      {
        if (v51 != v6)
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

        v34 = v47;
        if (v47)
        {
          v35 = v48;
          v36 = v47;
          if (v48 != v47)
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
            v36 = v47;
          }

          v48 = v34;
          operator delete(v36);
        }

        if (v45 != v7)
        {
          free(v45);
        }
      }

      if (!v30)
      {
        break;
      }
    }

    if (++v4 == v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t mlir::mpsx::detail::QuantizedConv2DOpGenericAdaptorBase::getWeightsQuantParamsAxis(mlir::mpsx::detail::QuantizedConv2DOpGenericAdaptorBase *this)
{
  v2 = mlir::DictionaryAttr::begin(this);
  v3 = mlir::DictionaryAttr::end(this);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((v2 + 144), v3, *(*(*(this + 1) + 96) + 80));
  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v4 + 1);
  if (!v6)
  {
LABEL_7:
    v8 = 0;
    v9 = 0;
    return v8 | v6 | v9;
  }

  v7 = *(*v6 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v6 = 0;
  }

  v14 = v6;
  if (v7 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  mlir::IntegerAttr::getValue(&v14, &v12);
  if (v13 > 0x40)
  {
    v11 = *v12;
    MEMORY[0x259C63150]();
  }

  else if (v13)
  {
    v11 = (v12 << -v13) >> -v13;
  }

  else
  {
    LODWORD(v11) = 0;
  }

  v6 = v11 & 0xFFFFFF00;
  v9 = v11;
  v8 = 0x100000000;
  return v8 | v6 | v9;
}

__n128 mlir::InFlightDiagnostic::operator<<<unsigned long &>(uint64_t a1, unint64_t *a2)
{
  if (*a1)
  {
    v2 = *(a1 + 24);
    v3 = *a2;
    v7.n128_u32[0] = 5;
    v7.n128_u64[1] = v3;
    v4 = *(a1 + 32);
    if (v4 >= *(a1 + 36))
    {
      if (v2 <= &v7 && v2 + 24 * v4 > &v7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v2 + 24 * *(a1 + 32));
    result = v7;
    v5[1].n128_u64[0] = v8;
    *v5 = result;
    ++*(a1 + 32);
  }

  return result;
}

void mlir::mpsx::QuantizedConv2DOp::getODSOperandIndexAndLength(mlir::Operation **this, int a2)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v7 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((Value + 64), (v5 + 16 * v6 - 64), *(*(*(*this + 6) + 96) + 40));
  if (v8)
  {
    AttrDictionary = *(v7 + 1);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    AttrDictionary = 0;
    if (a2)
    {
LABEL_3:
      mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
    }
  }

  mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
}

uint64_t mlir::mpsx::QuantizedConv2DOp::getInputQuantParamsAxis(mlir::Operation **this)
{
  result = mlir::mpsx::QuantizedConv2DOp::getInputQuantParamsAxisAttr(this);
  v5 = result;
  if (result)
  {
    mlir::IntegerAttr::getValue(&v5, &v3);
    if (v4 > 0x40)
    {
      LODWORD(v2) = *v3;
      MEMORY[0x259C63150]();
    }

    else if (v4)
    {
      v2 = (v3 << -v4) >> -v4;
    }

    else
    {
      LODWORD(v2) = 0;
    }

    return v2 | 0x100000000;
  }

  return result;
}

uint64_t mlir::mpsx::QuantizedConv2DOp::getInputQuantParamsAxisAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((Value + 64), (v3 + 16 * v4 - 80), *(*(*(*this + 6) + 96) + 32));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

uint64_t mlir::mpsx::QuantizedConv2DOp::getWeightsQuantParamsAxis(mlir::Operation **this)
{
  result = mlir::mpsx::QuantizedConv2DOp::getWeightsQuantParamsAxisAttr(this);
  v5 = result;
  if (result)
  {
    mlir::IntegerAttr::getValue(&v5, &v3);
    if (v4 > 0x40)
    {
      LODWORD(v2) = *v3;
      MEMORY[0x259C63150]();
    }

    else if (v4)
    {
      v2 = (v3 << -v4) >> -v4;
    }

    else
    {
      LODWORD(v2) = 0;
    }

    return v2 | 0x100000000;
  }

  return result;
}

uint64_t mlir::mpsx::QuantizedConv2DOp::getWeightsQuantParamsAxisAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((Value + 144), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 80));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

uint64_t *mlir::mpsx::QuantizedConv2DOp::getGroups(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((Value + 48), (v3 + 16 * v4 - 80), *(*(*(*this + 6) + 96) + 24));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  v12 = v7;
  mlir::IntegerAttr::getValue(&v12, &AttrDictionary);
  if (v11 <= 0x40)
  {
    return AttrDictionary;
  }

  v8 = *AttrDictionary;
  MEMORY[0x259C63150]();
  return v8;
}

uint64_t mlir::mpsx::QuantizedConv2DOp::getStrides(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((Value + 112), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 64));
  if (v6)
  {
    return *(v5 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mpsx::QuantizedConv2DOp::getDilationRates(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((Value + 16), (v3 + 16 * v4 - 112), *(*(*(*this + 6) + 96) + 8));
  if (v6)
  {
    return *(v5 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mpsx::QuantizedConv2DOp::getExplicitPadding(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((Value + 32), (v3 + 16 * v4 - 96), *(*(*(*this + 6) + 96) + 16));
  if (v6)
  {
    return *(v5 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mpsx::QuantizedConv2DOp::getPaddingStyle(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((Value + 96), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 56));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  AttrDictionary = v7;
  return mlir::mps::PaddingStyleAttr::getValue(&AttrDictionary);
}

uint64_t mlir::mpsx::QuantizedConv2DOp::getDataLayout(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(Value, (v3 + 16 * v4 - 128), **(*(*this + 6) + 96));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  AttrDictionary = v7;
  return mlir::mps::TensorDataLayoutAttr::getValue(&AttrDictionary);
}

uint64_t mlir::mpsx::QuantizedConv2DOp::getWeightsLayout(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((Value + 128), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 72));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  AttrDictionary = v7;
  return mlir::mps::TensorDataLayoutAttr::getValue(&AttrDictionary);
}

uint64_t mlir::mpsx::QuantizedConv2DOp::getOutputType(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((Value + 80), (v3 + 16 * v4 - 48), *(*(*(*this + 6) + 96) + 48));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  AttrDictionary = v7;
  return mlir::TypeAttr::getValue(&AttrDictionary);
}

BOOL mlir::mpsx::QuantizedConv2DOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v61 = *MEMORY[0x277D85DE8];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (!v3)
  {
LABEL_5:
    v49[0] = "requires attribute 'data_layout'";
    v50 = 259;
    mlir::OpState::emitOpError(this, v49, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v60 != 1)
    {
      return v7;
    }

    if (v59 != &v60)
    {
      free(v59);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v58;
      v10 = __p;
      if (v58 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v58 = v8;
      operator delete(v10);
    }

    v11 = v55;
    if (!v55)
    {
      goto LABEL_82;
    }

    v12 = v56;
    v13 = v55;
    if (v56 == v55)
    {
      goto LABEL_81;
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
    goto LABEL_80;
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
LABEL_24:
    v49[0] = "requires attribute 'dilation_rates'";
    v50 = 259;
    mlir::OpState::emitOpError(this, v49, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v60 != 1)
    {
      return v7;
    }

    if (v59 != &v60)
    {
      free(v59);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v58;
      v19 = __p;
      if (v58 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v58 = v17;
      operator delete(v19);
    }

    v11 = v55;
    if (!v55)
    {
      goto LABEL_82;
    }

    v20 = v56;
    v13 = v55;
    if (v56 == v55)
    {
      goto LABEL_81;
    }

    do
    {
      v22 = *--v20;
      v21 = v22;
      *v20 = 0;
      if (v22)
      {
        MEMORY[0x259C63150](v21, 0x1000C8077774924);
      }
    }

    while (v20 != v11);
    goto LABEL_80;
  }

  while (mlir::NamedAttribute::getName((v4 + v5)) != *(*(*(*this + 6) + 96) + 8))
  {
    v16 -= 16;
    v5 += 16;
    if (v6 == v5)
    {
      goto LABEL_24;
    }
  }

  if (v6 == v5)
  {
LABEL_44:
    v49[0] = "requires attribute 'explicit_padding'";
    v50 = 259;
    mlir::OpState::emitOpError(this, v49, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v60 != 1)
    {
      return v7;
    }

    if (v59 != &v60)
    {
      free(v59);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v58;
      v26 = __p;
      if (v58 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v58 = v24;
      operator delete(v26);
    }

    v11 = v55;
    if (!v55)
    {
      goto LABEL_82;
    }

    v27 = v56;
    v13 = v55;
    if (v56 == v55)
    {
      goto LABEL_81;
    }

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

    while (v27 != v11);
LABEL_80:
    v13 = v55;
    goto LABEL_81;
  }

  v23 = 0;
  while (mlir::NamedAttribute::getName((v4 + v5 + v23)) != *(*(*(*this + 6) + 96) + 16))
  {
    v23 += 16;
    if (v16 == v23)
    {
      goto LABEL_44;
    }
  }

  v30 = v16 - v23;
  if (v16 == v23)
  {
LABEL_64:
    v49[0] = "requires attribute 'groups'";
    v50 = 259;
    mlir::OpState::emitOpError(this, v49, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v60 != 1)
    {
      return v7;
    }

    if (v59 != &v60)
    {
      free(v59);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v58;
      v34 = __p;
      if (v58 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v58 = v32;
      operator delete(v34);
    }

    v11 = v55;
    if (v55)
    {
      v35 = v56;
      v13 = v55;
      if (v56 != v55)
      {
        do
        {
          v37 = *--v35;
          v36 = v37;
          *v35 = 0;
          if (v37)
          {
            MEMORY[0x259C63150](v36, 0x1000C8077774924);
          }
        }

        while (v35 != v11);
        goto LABEL_80;
      }

LABEL_81:
      v56 = v11;
      operator delete(v13);
    }

LABEL_82:
    if (v53 != &v54)
    {
      free(v53);
    }

    return v7;
  }

  v31 = v4 + v5 + v23 + 8;
  while (mlir::NamedAttribute::getName((v31 - 8)) != *(*(*(*this + 6) + 96) + 24))
  {
    v31 += 16;
    v30 -= 16;
    if (!v30)
    {
      goto LABEL_64;
    }
  }

  if (v30)
  {
    v39 = 0;
    while (1)
    {
      v40 = v31 + v39;
      if (mlir::NamedAttribute::getName((v31 + v39 - 8)) == *(*(*(*this + 6) + 96) + 40))
      {
        break;
      }

      mlir::NamedAttribute::getName((v31 + v39 - 8));
      v39 += 16;
      if (v30 == v39)
      {
        goto LABEL_90;
      }
    }

    v41 = v30 - v39;
    if (v30 == v39)
    {
LABEL_97:
      v42 = "requires attribute 'output_type'";
    }

    else
    {
      while (mlir::NamedAttribute::getName((v40 - 8)) != *(*(*(*this + 6) + 96) + 48))
      {
        v40 += 16;
        v41 -= 16;
        if (!v41)
        {
          goto LABEL_97;
        }
      }

      if (v41)
      {
        v43 = 0;
        while (1)
        {
          v44 = v40 + v43;
          if (mlir::NamedAttribute::getName((v40 + v43 - 8)) == *(*(*(*this + 6) + 96) + 56))
          {
            break;
          }

          v43 += 16;
          if (v41 == v43)
          {
            goto LABEL_102;
          }
        }

        v45 = v41 - v43;
        if (v45)
        {
          while (mlir::NamedAttribute::getName((v44 - 8)) != *(*(*(*this + 6) + 96) + 64))
          {
            v44 += 16;
            v45 -= 16;
            if (!v45)
            {
              goto LABEL_106;
            }
          }

          for (i = 0; i != v45; i += 16)
          {
            if (mlir::NamedAttribute::getName((v44 + i - 8)) == *(*(*(*this + 6) + 96) + 72))
            {
              v47 = (v44 + i - 8);
              for (j = v45 - i; j; j -= 16)
              {
                mlir::NamedAttribute::getName(v47);
                v47 = (v47 + 16);
              }

              mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
            }
          }

          v42 = "requires attribute 'weights_layout'";
        }

        else
        {
LABEL_106:
          v42 = "requires attribute 'strides'";
        }
      }

      else
      {
LABEL_102:
        v42 = "requires attribute 'padding_style'";
      }
    }

    v49[0] = v42;
    v50 = 259;
    mlir::OpState::emitOpError(this, v49, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&AttrDictionary);
  }

  else
  {
LABEL_90:
    v49[0] = "requires attribute 'operandSegmentSizes'";
    v50 = 259;
    mlir::OpState::emitOpError(this, v49, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v60 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v52);
    }
  }

  return v7;
}

uint64_t mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps12(mlir::Operation *a1, void **a2, void **a3, void **a4)
{
  v32 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 17) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v21[0] = a2;
    v6 = a1;
    v23[0] = mlir::IntegerAttr::getType(v21);
    isSignedInteger = mlir::Type::isSignedInteger(v23, 32);
    a1 = v6;
    if (isSignedInteger)
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

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v9, "' failed to satisfy constraint: 32-bit signed integer attribute");
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

uint64_t mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps13(mlir::Operation *a1, void **a2, void **a3, void **a4)
{
  v32 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 17) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v21[0] = a2;
    v6 = a1;
    v23[0] = mlir::IntegerAttr::getType(v21);
    isUnsignedInteger = mlir::Type::isUnsignedInteger(v23, 64);
    a1 = v6;
    if (isUnsignedInteger)
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

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v9, "' failed to satisfy constraint: 64-bit unsigned integer attribute");
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

uint64_t mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps14(mlir::Operation *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v46 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_9;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  *&v33 = a2;
  *(&v33 + 1) = v8;
  Type = mlir::ElementsAttr::getType(&v33);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v36[0] = v10;
  v36[1] = Type;
  Shape = mlir::ShapedType::getShape(v36);
  v45 = 4;
  if (v12 == 1 && *Shape == v45)
  {
    v30 = a2;
    v31[0] = mlir::DenseElementsAttr::getType(&v30);
    v31[1] = v13;
    ElementType = mlir::ShapedType::getElementType(v31);
    if (mlir::Type::isUnsignedInteger(&ElementType, 64))
    {
      return 1;
    }
  }

LABEL_9:
  v35 = 257;
  mlir::Operation::emitOpError(v36, a1, &v33);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v36, "attribute '");
  if (*v15)
  {
    v35 = 261;
    *&v33 = a3;
    *(&v33 + 1) = a4;
    v16 = v15;
    mlir::Diagnostic::operator<<((v15 + 1), &v33);
    v15 = v16;
    if (*v16)
    {
      v17 = v16[3];
      LODWORD(v33) = 3;
      *(&v33 + 1) = "' failed to satisfy constraint: ui64 elements attribute of shape {4}";
      v34 = 68;
      v18 = *(v16 + 8);
      if (v18 >= *(v16 + 9))
      {
        if (v17 > &v33 || v17 + 24 * v18 <= &v33)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v19 = v17 + 24 * *(v16 + 8);
      v20 = v33;
      *(v19 + 16) = v34;
      *v19 = v20;
      ++*(v16 + 8);
    }
  }

  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v36[0])
  {
    mlir::InFlightDiagnostic::report(v36);
  }

  if (v44 == 1)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v42;
      v23 = __p;
      if (v42 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v42 = v21;
      operator delete(v23);
    }

    v24 = v39;
    if (v39)
    {
      v25 = v40;
      v26 = v39;
      if (v40 != v39)
      {
        do
        {
          v28 = *--v25;
          v27 = v28;
          *v25 = 0;
          if (v28)
          {
            MEMORY[0x259C63150](v27, 0x1000C8077774924);
          }
        }

        while (v25 != v24);
        v26 = v39;
      }

      v40 = v24;
      operator delete(v26);
    }

    if (v37 != &v38)
    {
      free(v37);
    }
  }

  return v14;
}

uint64_t mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps15(mlir::Operation *a1, void **a2, void **a3, uint64_t a4)
{
  v44 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_13;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v31 = a2;
  v32 = v8;
  Type = mlir::ElementsAttr::getType(&v31);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v34[0] = v10;
  v34[1] = Type;
  Shape = mlir::ShapedType::getShape(v34);
  v43 = xmmword_2573695A0;
  if (v12 == 2 && *Shape == v43 && Shape[1] == *(&v43 + 1))
  {
    v28 = a2;
    v29[0] = mlir::DenseElementsAttr::getType(&v28);
    v29[1] = v14;
    ElementType = mlir::ShapedType::getElementType(v29);
    if (mlir::Type::isUnsignedInteger(&ElementType, 64))
    {
      return 1;
    }
  }

LABEL_13:
  v33 = 257;
  mlir::Operation::emitOpError(v34, a1, &v31);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v34, "attribute '");
  if (*v16)
  {
    v33 = 261;
    v31 = a3;
    v32 = a4;
    v17 = v16;
    mlir::Diagnostic::operator<<((v16 + 1), &v31);
    v16 = v17;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v16, "' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}");
  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
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

    v19 = __p;
    if (__p)
    {
      v20 = v40;
      v21 = __p;
      if (v40 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v40 = v19;
      operator delete(v21);
    }

    v22 = v37;
    if (v37)
    {
      v23 = v38;
      v24 = v37;
      if (v38 != v37)
      {
        do
        {
          v26 = *--v23;
          v25 = v26;
          *v23 = 0;
          if (v26)
          {
            MEMORY[0x259C63150](v25, 0x1000C8077774924);
          }
        }

        while (v23 != v22);
        v24 = v37;
      }

      v38 = v22;
      operator delete(v24);
    }

    if (v35 != &v36)
    {
      free(v35);
    }
  }

  return v15;
}

uint64_t mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps16(mlir::Operation *a1, uint64_t a2, void **a3, void **a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a2 || *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
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

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v6, "' failed to satisfy constraint: valid padding_style");
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

uint64_t mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps17(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!a2 || *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
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
      *(&v22 + 1) = "' failed to satisfy constraint: valid TensorDataLayout";
      v23 = 54;
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

uint64_t mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps10(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v10 = a3;
    v11 = a4;
    v12 = a1;
    v38[0] = a2;
    v38[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v7 + 8);
    v34[0] = mlir::ShapedType::getElementType(v38);
    if (mlir::Type::isF16(v34))
    {
      return 1;
    }

    if (mlir::Type::isF32(v34))
    {
      return 1;
    }

    if (mlir::Type::isBF16(v34))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v34, 2))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v34, 4))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v34, 8))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v34, 16))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v34, 32))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v34, 1))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v34, 2))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v34, 4))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v34, 8))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v34, 16))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v34, 32))
    {
      return 1;
    }

    a1 = v12;
    a4 = v11;
    a3 = v10;
    if (*(*v34[0] + 17) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
    {
      return 1;
    }
  }

  v35 = 261;
  v34[0] = a3;
  v34[1] = a4;
  mlir::Operation::emitOpError(v38, a1, v34);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v38, " #");
  if (*v13)
  {
    v14 = *(v13 + 24);
    LODWORD(v36) = 5;
    *(&v36 + 1) = a5;
    v15 = *(v13 + 32);
    if (v15 >= *(v13 + 36))
    {
      if (v14 > &v36 || v14 + 24 * v15 <= &v36)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v16 = v14 + 24 * *(v13 + 32);
    v17 = v36;
    *(v16 + 16) = v37;
    *v16 = v17;
    ++*(v13 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v13, " must be tensor of floating point or quantized values, but got ");
  if (*v18)
  {
    v19 = v18;
    mlir::DiagnosticArgument::DiagnosticArgument(&v36, a2);
    v18 = v19;
    v20 = v19[3];
    v21 = *(v19 + 8);
    if (v21 >= *(v19 + 9))
    {
      if (v20 > &v36 || v20 + 24 * v21 <= &v36)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22 = v20 + 24 * *(v19 + 8);
    v23 = v36;
    *(v22 + 16) = v37;
    *v22 = v23;
    ++*(v19 + 8);
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
  if (v38[0])
  {
    mlir::InFlightDiagnostic::report(v38);
  }

  if (v46 == 1)
  {
    if (v45 != &v46)
    {
      free(v45);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v44;
      v27 = __p;
      if (v44 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v44 = v25;
      operator delete(v27);
    }

    v28 = v41;
    if (v41)
    {
      v29 = v42;
      v30 = v41;
      if (v42 != v41)
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
        v30 = v41;
      }

      v42 = v28;
      operator delete(v30);
    }

    if (v39 != &v40)
    {
      free(v39);
    }
  }

  return v24;
}

__n128 mlir::InFlightDiagnostic::operator<<<unsigned int &>(uint64_t a1, unsigned int *a2)
{
  if (*a1)
  {
    v2 = *(a1 + 24);
    v3 = *a2;
    v7.n128_u32[0] = 5;
    v7.n128_u64[1] = v3;
    v4 = *(a1 + 32);
    if (v4 >= *(a1 + 36))
    {
      if (v2 <= &v7 && v2 + 24 * v4 > &v7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v2 + 24 * *(a1 + 32));
    result = v7;
    v5[1].n128_u64[0] = v8;
    *v5 = result;
    ++*(a1 + 32);
  }

  return result;
}

uint64_t mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps11(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v59 = *MEMORY[0x277D85DE8];
  v10 = *a2;
  if (*(*a2 + 17) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v50[0] = a2;
    v50[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    if (mlir::ShapedType::hasRank(v50))
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v41 = a2;
      v42 = v11;
      mlir::ShapedType::getShape(&v41);
      if (!v12 || (v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), *&v48 = a2, *(&v48 + 1) = v13, mlir::ShapedType::getShape(&v48), v14 == 1) || (v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), v46[0] = a2, v46[1] = v15, mlir::ShapedType::getShape(v46), v16 == 2) || (v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), v45[0] = a2, v45[1] = v17, mlir::ShapedType::getShape(v45), v18 == 3))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v44[0] = a2;
        v44[1] = v19;
        ElementType = mlir::ShapedType::getElementType(v44);
        if (mlir::Type::isF16(&ElementType) || mlir::Type::isF32(&ElementType) || mlir::Type::isBF16(&ElementType))
        {
          return 1;
        }
      }
    }
  }

  v43 = 261;
  v41 = a3;
  v42 = a4;
  mlir::Operation::emitOpError(v50, a1, &v41);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v50, " #");
  if (*v21)
  {
    v22 = *(v21 + 24);
    LODWORD(v48) = 5;
    *(&v48 + 1) = a5;
    v23 = *(v21 + 32);
    if (v23 >= *(v21 + 36))
    {
      if (v22 > &v48 || v22 + 24 * v23 <= &v48)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v24 = v22 + 24 * *(v21 + 32);
    v25 = v48;
    *(v24 + 16) = v49;
    *v24 = v25;
    ++*(v21 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v21, " must be 0D/1D/2D/3D tensor of floating point values, but got ");
  if (*v26)
  {
    v27 = v26;
    mlir::DiagnosticArgument::DiagnosticArgument(&v48, a2);
    v26 = v27;
    v28 = v27[3];
    v29 = *(v27 + 8);
    if (v29 >= *(v27 + 9))
    {
      if (v28 > &v48 || v28 + 24 * v29 <= &v48)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v30 = v28 + 24 * *(v27 + 8);
    v31 = v48;
    *(v30 + 16) = v49;
    *v30 = v31;
    ++*(v27 + 8);
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
  if (v50[0])
  {
    mlir::InFlightDiagnostic::report(v50);
  }

  if (v58 == 1)
  {
    if (v57 != &v58)
    {
      free(v57);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v56;
      v34 = __p;
      if (v56 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v56 = v32;
      operator delete(v34);
    }

    v35 = v53;
    if (v53)
    {
      v36 = v54;
      v37 = v53;
      if (v54 != v53)
      {
        do
        {
          v39 = *--v36;
          v38 = v39;
          *v36 = 0;
          if (v39)
          {
            MEMORY[0x259C63150](v38, 0x1000C8077774924);
          }
        }

        while (v36 != v35);
        v37 = v53;
      }

      v54 = v35;
      operator delete(v37);
    }

    if (v51 != &v52)
    {
      free(v51);
    }
  }

  return v20;
}