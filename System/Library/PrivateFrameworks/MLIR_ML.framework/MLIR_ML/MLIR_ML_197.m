BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseIntOrFPElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseIntOrFPElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &>(llvm::function_ref<void ()(mlir::detail::DenseIntOrFPElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (**a1 == *(a2 + 8) && (v3 = v2[3], v3 == *(a2 + 40)))
  {
    return memcmp(v2[2], *(a2 + 32), v3) == 0;
  }

  else
  {
    return 0;
  }
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseIntOrFPElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseIntOrFPElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &>(llvm::function_ref<void ()(mlir::detail::DenseIntOrFPElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, uint64_t *a2)
{
  v4 = **a1;
  v5 = *(*a1 + 3);
  v6 = *(*a1 + 40);
  if (v5)
  {
    v16 = **a1;
    v7 = *(*a1 + 2);
    a2[10] += v5;
    if (*a2 && (v8 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8), &v8[v5] <= a2[1]))
    {
      *a2 = &v8[v5];
    }

    else
    {
      v14 = v7;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, v5, v5, 3);
      v7 = v14;
      v8 = Slow;
    }

    memcpy(v8, v7, v5);
    v4 = v16;
    a2[10] += 48;
    v9 = *a2;
    if (!*a2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = 0;
    a2[10] += 48;
    v9 = *a2;
    if (!*a2)
    {
      goto LABEL_13;
    }
  }

  v10 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v10 + 48 <= a2[1])
  {
    *a2 = v10 + 48;
    goto LABEL_10;
  }

LABEL_13:
  v17 = v4;
  v13 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 48, 48, 3);
  v4 = v17;
  v10 = v13;
LABEL_10:
  *v10 = 0;
  *(v10 + 8) = v4;
  *(v10 + 24) = v6;
  *(v10 + 32) = v8;
  *(v10 + 40) = v5;
  v11 = a1[1];
  if (*v11)
  {
    (*v11)(*(v11 + 1), v10);
  }

  return v10;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseResourceElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseResourceElementsAttrStorage,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &>(llvm::function_ref<void ()(mlir::detail::DenseResourceElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, void *a2)
{
  v2 = **a1;
  v9 = (*a1)[1];
  v10 = *(*a1 + 4);
  a2[10] += 48;
  if (*a2 && (v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8, v3 + 48 <= a2[1]))
  {
    *a2 = v3 + 48;
  }

  else
  {
    v6 = a1;
    v8 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 48, 48, 3);
    v2 = v8;
    v3 = Slow;
    a1 = v6;
  }

  *v3 = 0;
  *(v3 + 8) = v2;
  *(v3 + 24) = v9;
  *(v3 + 40) = v10;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t mlir::Dialect::getRegisteredInterface<mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>>(uint64_t a1)
{
  {
    v1 = *(a1 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    v8 = a1;
    mlir::Dialect::getRegisteredInterface<mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>>();
    a1 = v8;
    v1 = *(v8 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(a1 + 48);
  v3 = ((mlir::detail::TypeIDResolver<mlir::ResourceBlobManagerDialectInterface,void>::resolveTypeID(void)::id >> 4) ^ (mlir::detail::TypeIDResolver<mlir::ResourceBlobManagerDialectInterface,void>::resolveTypeID(void)::id >> 9)) & (v1 - 1);
  v4 = *(v2 + 16 * v3);
  if (v4 != mlir::detail::TypeIDResolver<mlir::ResourceBlobManagerDialectInterface,void>::resolveTypeID(void)::id)
  {
    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (v1 - 1);
      v4 = *(v2 + 16 * v3);
      if (v4 == mlir::detail::TypeIDResolver<mlir::ResourceBlobManagerDialectInterface,void>::resolveTypeID(void)::id)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

LABEL_4:
  if (v3 == v1)
  {
    return 0;
  }

  return *(v2 + 16 * v3 + 8);
}

const char *llvm::getTypeName<mlir::ResourceBlobManagerDialectInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ResourceBlobManagerDialectInterface]";
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

void mlir::DialectResourceBlobManager::insert<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>(pthread_rwlock_t **a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, const unsigned __int8 *a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  LOBYTE(v18) = 0;
  v24 = 0;
  if (*(a5 + 64) == 1)
  {
    v18 = *a5;
    v10 = *(a5 + 6);
    v19 = *(a5 + 2);
    v22 = v10;
    if (v10 >= 8)
    {
      if ((v10 & 2) != 0 && (v10 & 4) != 0)
      {
        v11 = a1;
        v12 = a5;
        (*((v10 & 0xFFFFFFFFFFFFFFF8) + 8))(&v20, a5 + 24);
        (*((v22 & 0xFFFFFFFFFFFFFFF8) + 16))(v12 + 24);
        a5 = v12;
        a1 = v11;
      }

      else
      {
        v20 = *(a5 + 24);
        v21 = *(a5 + 5);
      }

      *(a5 + 6) = 0;
    }

    v23 = *(a5 + 56);
    v24 = 1;
  }

  v13 = mlir::DialectResourceBlobManager::insert(a1, a3, a4, &v18);
  if (v24 == 1 && v22 >= 8)
  {
    v14 = (v22 & 2) != 0 ? &v20 : v20;
    (*(v22 & 0xFFFFFFFFFFFFFFF8))(v14, v18, *(&v18 + 1), v19);
    v15 = v22;
    if (v22 >= 8)
    {
      if ((v22 & 4) != 0)
      {
        if ((v22 & 2) != 0)
        {
          v16 = &v20;
        }

        else
        {
          v16 = v20;
        }

        (*((v22 & 0xFFFFFFFFFFFFFFF8) + 16))(v16);
      }

      if ((v15 & 2) == 0)
      {
        llvm::deallocate_buffer(v20, *(&v20 + 1));
      }
    }
  }

  {
    mlir::detail::Parser::parseDenseResourceElementsAttr();
  }

  v17 = mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id;
  *a6 = v13;
  a6[1] = v17;
  a6[2] = a2;
}

void mlir::BuiltinDialect::BuiltinDialect(mlir::BuiltinDialect *this, mlir::MLIRContext *a2)
{
  v2 = mlir::Dialect::Dialect(this, "builtin", 7, a2, &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id);
  *v2 = &unk_28689C6D8;
  mlir::BuiltinDialect::initialize(v2);
}

{
  v2 = mlir::Dialect::Dialect(this, "builtin", 7, a2, &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id);
  *v2 = &unk_28689C6D8;
  mlir::BuiltinDialect::initialize(v2);
}

void sub_2570BEBD4()
{

  JUMPOUT(0x259C63180);
}

void mlir::ModuleOp::create(uint64_t a1, __int128 *a2)
{
  v4 = a1;
  v3[0] = mlir::Attribute::getContext(&v4);
  memset(&v3[1], 0, 24);
  mlir::OpBuilder::create<mlir::ModuleOp,std::optional<llvm::StringRef> &>(v3, v4, a2);
}

void mlir::OpBuilder::create<mlir::ModuleOp,std::optional<llvm::StringRef> &>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v13[38] = *MEMORY[0x277D85DE8];
  v9 = a2;
  Context = mlir::Attribute::getContext(&v9);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id, Context);
  if (v8)
  {
    mlir::OperationState::OperationState(v13, a2, v7);
    v11 = *a3;
    v12 = *(a3 + 2);
    mlir::ModuleOp::build(a1, v13);
  }

  mlir::OpBuilder::create<mlir::ModuleOp>(v13, &v11, v10);
}

void *mlir::ModuleOp::getDataLayoutSpec(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (!v2)
  {
    return 0;
  }

  v3 = 16 * v2;
  for (i = (Value + 8); ; i += 2)
  {
    result = llvm::DefaultDoCastIfPossible<mlir::DataLayoutSpecInterface,mlir::Attribute const,llvm::CastInfo<mlir::DataLayoutSpecInterface,mlir::Attribute const,void>>::doCastIfPossible(*i);
    if (result)
    {
      break;
    }

    v3 -= 16;
    if (!v3)
    {
      return 0;
    }
  }

  return result;
}

void *mlir::ModuleOp::getTargetSystemSpec(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (!v2)
  {
    return 0;
  }

  v3 = 16 * v2;
  for (i = (Value + 8); ; i += 2)
  {
    result = llvm::DefaultDoCastIfPossible<mlir::TargetSystemSpecInterface,mlir::Attribute const,llvm::CastInfo<mlir::TargetSystemSpecInterface,mlir::Attribute const,void>>::doCastIfPossible(*i);
    if (result)
    {
      break;
    }

    v3 -= 16;
    if (!v3)
    {
      return 0;
    }
  }

  return result;
}

BOOL mlir::ModuleOp::verify(mlir::Operation **this)
{
  v75 = *MEMORY[0x277D85DE8];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (v2)
  {
    v3 = Value;
    for (i = 16 * v2; i; i -= 16)
    {
      v49 = *v3;
      AttrDictionary = mlir::NamedAttribute::getName(&v49);
      v6 = mlir::StringAttr::getValue(&AttrDictionary);
      if (!v7 || (v8 = v6, (v9 = memchr(v6, 46, v7)) == 0) || v9 - v8 == -1)
      {
        *&v51 = mlir::NamedAttribute::getName(&v49);
        v10 = mlir::StringAttr::getValue(&v51);
        if (v11 == 14)
        {
          if (*v10 != 0x697369765F6D7973 || *(v10 + 6) != 0x7974696C69626973)
          {
LABEL_15:
            v48 = 257;
            mlir::OpState::emitOpError(this, &v47, &AttrDictionary);
            if (AttrDictionary)
            {
              LODWORD(v51) = 3;
              *(&v51 + 1) = "can only contain attributes with dialect-prefixed names, found: '";
              v52 = 65;
              if (v66 >= v67)
              {
                if (v65 > &v51 || v65 + 24 * v66 <= &v51)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v12 = v65 + 24 * v66;
              v13 = v51;
              *(v12 + 2) = v52;
              *v12 = v13;
              ++v66;
            }

            Name = mlir::NamedAttribute::getName(&v49);
            v14 = mlir::StringAttr::getValue(&Name);
            if (AttrDictionary)
            {
              LOWORD(v54) = 261;
              *&v51 = v14;
              *(&v51 + 1) = v15;
              mlir::Diagnostic::operator<<(&v64, &v51);
              if (AttrDictionary)
              {
                LODWORD(v51) = 3;
                *(&v51 + 1) = "'";
                v52 = 1;
                if (v66 >= v67)
                {
                  if (v65 > &v51 || v65 + 24 * v66 <= &v51)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v16 = v65 + 24 * v66;
                v17 = v51;
                *(v16 + 2) = v52;
                *v16 = v17;
                ++v66;
              }
            }

            v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
            if (AttrDictionary)
            {
              mlir::InFlightDiagnostic::report(&AttrDictionary);
            }

            if (v74 == 1)
            {
              if (v73 != &v74)
              {
                free(v73);
              }

              v19 = __p;
              if (__p)
              {
                v20 = v72;
                v21 = __p;
                if (v72 != __p)
                {
                  do
                  {
                    v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
                  }

                  while (v20 != v19);
                  v21 = __p;
                }

                v72 = v19;
                operator delete(v21);
              }

              v22 = v69;
              if (v69)
              {
                v23 = v70;
                v24 = v69;
                if (v70 != v69)
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
                  v24 = v69;
                }

                v70 = v22;
                operator delete(v24);
              }

              if (v65 != &v68)
              {
                free(v65);
              }
            }

            return v18;
          }
        }

        else if (v11 != 8 || *v10 != 0x656D616E5F6D7973)
        {
          goto LABEL_15;
        }
      }

      ++v3;
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v27 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (v28)
  {
    v29 = v27;
    v30 = 0;
    v45 = (v27 + 16 * v28);
    do
    {
      v31 = llvm::DefaultDoCastIfPossible<mlir::DataLayoutSpecInterface,mlir::Attribute const,llvm::CastInfo<mlir::DataLayoutSpecInterface,mlir::Attribute const,void>>::doCastIfPossible(*(v29 + 1));
      if (v31)
      {
        v32 = v31;
        if (v30)
        {
          v48 = 257;
          mlir::OpState::emitOpError(this, &v47, &v51);
          if (v51)
          {
            LODWORD(v49) = 3;
            *(&v49 + 1) = "expects at most one data layout attribute";
            v50 = 41;
            if (v54 >= v55)
            {
              if (v53 > &v49 || v53 + 24 * v54 <= &v49)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v33 = v53 + 24 * v54;
            v34 = v49;
            *(v33 + 2) = v50;
            *v33 = v34;
            ++v54;
          }

          mlir::InFlightDiagnostic::InFlightDiagnostic(&AttrDictionary, &v51);
          if (v51)
          {
            mlir::InFlightDiagnostic::report(&v51);
          }

          if (v62 == 1)
          {
            if (v61 != &v62)
            {
              free(v61);
            }

            v35 = v59;
            if (v59)
            {
              v36 = v60;
              v37 = v59;
              if (v60 != v59)
              {
                do
                {
                  v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
                }

                while (v36 != v35);
                v37 = v59;
              }

              v60 = v35;
              operator delete(v37);
            }

            v38 = v57;
            if (v57)
            {
              v39 = v58;
              v40 = v57;
              if (v58 != v57)
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
                v40 = v57;
              }

              v58 = v38;
              operator delete(v40);
            }

            if (v53 != &v56)
            {
              free(v53);
            }
          }

          mlir::Diagnostic::attachNote();
        }

        AttrDictionary = mlir::NamedAttribute::getName(v29);
        mlir::StringAttr::getValue(&AttrDictionary);
        v30 = v32;
      }

      v29 = (v29 + 16);
    }

    while (v29 != v45);
  }

  return 1;
}

BOOL mlir::UnrealizedConversionCastOp::verify(mlir::Operation **this)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(*this + 9))
  {
    return 1;
  }

  v14 = 257;
  mlir::OpState::emitOpError(this, &v13, v17);
  if (v17[0])
  {
    LODWORD(v15) = 3;
    *(&v15 + 1) = "expected at least one result for cast operation";
    v16 = 47;
    if (v19 >= v20)
    {
      if (v18 > &v15 || v18 + 24 * v19 <= &v15)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v2 = v18 + 24 * v19;
    v3 = v15;
    *(v2 + 2) = v16;
    *v2 = v3;
    ++v19;
  }

  v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
    }

    v4 = __p;
    if (__p)
    {
      v5 = v25;
      v6 = __p;
      if (v25 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v25 = v4;
      operator delete(v6);
    }

    v7 = v22;
    if (v22)
    {
      v8 = v23;
      v9 = v22;
      if (v23 != v22)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x259C63150](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v22;
      }

      v23 = v7;
      operator delete(v9);
    }

    if (v18 != &v21)
    {
      free(v18);
    }
  }

  return v1;
}

uint64_t mlir::detail::ModuleOpGenericAdaptorBase::ModuleOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 40), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 40), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 40), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 40), 0, 0);
  }

  return a1;
}

uint64_t mlir::detail::ModuleOpGenericAdaptorBase::getSymName@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 24);
  if (v4)
  {
    this = mlir::StringAttr::getValue(&v4);
    *a2 = this;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

uint64_t mlir::detail::ModuleOpGenericAdaptorBase::getSymVisibility@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 32);
  if (v4)
  {
    this = mlir::StringAttr::getValue(&v4);
    *a2 = this;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

uint64_t mlir::ModuleOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v57 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v43 = v6;
  if (!v6)
  {
    a3(v46, a4);
    if (v46[0])
    {
      LODWORD(v44) = 3;
      *(&v44 + 1) = "expected DictionaryAttr to set properties";
      v45 = 41;
      if (v48 >= v49)
      {
        if (v47 > &v44 || v47 + 24 * v48 <= &v44)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v47 + 24 * v48;
      v23 = v44;
      *(v22 + 2) = v45;
      *v22 = v23;
      ++v48;
      if (v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
      }
    }

    if (v56 != 1)
    {
      return 0;
    }

    if (v55 != &v56)
    {
      free(v55);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v54;
      v26 = __p;
      if (v54 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v54 = v24;
      operator delete(v26);
    }

    v17 = v51;
    if (!v51)
    {
      goto LABEL_70;
    }

    v27 = v52;
    v19 = v51;
    if (v52 == v51)
    {
      goto LABEL_69;
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

    while (v27 != v17);
    goto LABEL_68;
  }

  v8 = mlir::DictionaryAttr::get(&v43, "sym_name", 8uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v9 = v8;
      a3(v46, a4);
      if (v46[0])
      {
        LODWORD(v44) = 3;
        v45 = 53;
        if (v48 >= v49)
        {
          if (v47 > &v44 || v47 + 24 * v48 <= &v44)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v47 + 24 * v48;
        v11 = v44;
        *(v10 + 2) = v45;
        *v10 = v11;
        ++v48;
        if (v46[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v44, v9);
          if (v48 >= v49)
          {
            if (v47 > &v44 || v47 + 24 * v48 <= &v44)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v47 + 24 * v48;
          v13 = v44;
          *(v12 + 2) = v45;
          *v12 = v13;
          ++v48;
          if (v46[0])
          {
            mlir::InFlightDiagnostic::report(v46);
          }
        }
      }

      if ((v56 & 1) == 0)
      {
        return 0;
      }

      if (v55 != &v56)
      {
        free(v55);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v54;
        v16 = __p;
        if (v54 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v54 = v14;
        operator delete(v16);
      }

      v17 = v51;
      if (!v51)
      {
        goto LABEL_70;
      }

      v18 = v52;
      v19 = v51;
      if (v52 == v51)
      {
        goto LABEL_69;
      }

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
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v43, "sym_visibility", 0xEuLL);
  if (!v30)
  {
    return 1;
  }

  if (*(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a1[1] = v30;
    return 1;
  }

  v31 = v30;
  a3(v46, a4);
  if (v46[0])
  {
    LODWORD(v44) = 3;
    v45 = 59;
    if (v48 >= v49)
    {
      if (v47 > &v44 || v47 + 24 * v48 <= &v44)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v32 = v47 + 24 * v48;
    v33 = v44;
    *(v32 + 2) = v45;
    *v32 = v33;
    ++v48;
    if (v46[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v44, v31);
      if (v48 >= v49)
      {
        if (v47 > &v44 || v47 + 24 * v48 <= &v44)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v34 = v47 + 24 * v48;
      v35 = v44;
      *(v34 + 2) = v45;
      *v34 = v35;
      ++v48;
      if (v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
      }
    }
  }

  if (v56)
  {
    if (v55 != &v56)
    {
      free(v55);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v54;
      v38 = __p;
      if (v54 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v54 = v36;
      operator delete(v38);
    }

    v17 = v51;
    if (!v51)
    {
      goto LABEL_70;
    }

    v39 = v52;
    v19 = v51;
    if (v52 == v51)
    {
LABEL_69:
      v52 = v17;
      operator delete(v19);
LABEL_70:
      if (v47 != &v50)
      {
        free(v47);
      }

      return 0;
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

    while (v39 != v17);
LABEL_68:
    v19 = v51;
    goto LABEL_69;
  }

  return 0;
}

uint64_t mlir::ModuleOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "sym_name", 8, *a2);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v15 + 16 * v16);
    *v5 = NamedAttr;
    v5[1] = v4;
    v6 = v16 + 1;
    LODWORD(v16) = v16 + 1;
    v7 = a2[1];
    if (!v7)
    {
LABEL_4:
      v8 = v15;
      if (v6)
      {
        goto LABEL_5;
      }

LABEL_11:
      DictionaryAttr = 0;
      if (v8 == v17)
      {
        return DictionaryAttr;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    v7 = a2[1];
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  v11 = mlir::Builder::getNamedAttr(&v14, "sym_visibility", 0xE, v7);
  if (v16 >= HIDWORD(v16))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v13 = (v15 + 16 * v16);
  *v13 = v11;
  v13[1] = v12;
  v6 = v16 + 1;
  LODWORD(v16) = v6;
  v8 = v15;
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_5:
  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v14, v8, v6);
  v8 = v15;
  if (v15 != v17)
  {
LABEL_6:
    free(v8);
  }

  return DictionaryAttr;
}

unint64_t mlir::ModuleOp::computePropertiesHash(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  v10 = 0;
  v11 = 0xFF51AFD7ED558CCDLL;
  v7[0] = v3;
  v7[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v7, 0, v8, v9);
}

unint64_t mlir::ModuleOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 != 14)
  {
    if (a4 == 8 && *a3 == 0x656D616E5F6D7973)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 0x697369765F6D7973 || *(a3 + 6) != 0x7974696C69626973)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::ModuleOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 14)
  {
    if (*a2 == 0x697369765F6D7973 && *(a2 + 6) == 0x7974696C69626973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v5 = a4;
        }

        else
        {
          v5 = 0;
        }

        result[1] = v5;
      }

      else
      {
        result[1] = 0;
      }
    }
  }

  else if (a3 == 8 && *a2 == 0x656D616E5F6D7973)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v6 = a4;
      }

      else
      {
        v6 = 0;
      }

      *result = v6;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::ModuleOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "sym_name", 8uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "sym_visibility", 0xEuLL, v5);
  }
}

BOOL mlir::ModuleOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v8, "sym_name", 8, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v9, "sym_visibility", 14, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::ModuleOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, (v3 + 8));
}

uint64_t mlir::ModuleOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 24))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

uint64_t mlir::ModuleOp::getSymName@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v4)
  {
    this = mlir::StringAttr::getValue(&v4);
    *a2 = this;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

uint64_t mlir::ModuleOp::getSymVisibility@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (v4)
  {
    this = mlir::StringAttr::getValue(&v4);
    *a2 = this;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

uint64_t mlir::ModuleOp::setSymName(uint64_t result, uint64_t a2)
{
  v2 = *result + 16 * ((*(*result + 44) >> 23) & 1);
  if (*(a2 + 16) == 1)
  {
    Context = mlir::Attribute::getContext((*result + 24));
    v7 = 261;
    v4 = *(a2 + 8);
    v6[0] = *a2;
    v6[1] = v4;
    result = mlir::Builder::getStringAttr(&Context, v6, v5);
    *(v2 + 64) = result;
  }

  else
  {
    *(v2 + 64) = 0;
  }

  return result;
}

uint64_t mlir::ModuleOp::setSymVisibility(uint64_t result, uint64_t a2)
{
  v2 = *result + 16 * ((*(*result + 44) >> 23) & 1);
  if (*(a2 + 16) == 1)
  {
    Context = mlir::Attribute::getContext((*result + 24));
    v7 = 261;
    v4 = *(a2 + 8);
    v6[0] = *a2;
    v6[1] = v4;
    result = mlir::Builder::getStringAttr(&Context, v6, v5);
    *(v2 + 72) = result;
  }

  else
  {
    *(v2 + 72) = 0;
  }

  return result;
}

BOOL mlir::ModuleOp::verifyInvariantsImpl(mlir::ModuleOp *this)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  v33 = v2;
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v4, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::__mlir_ods_local_attr_constraint_BuiltinOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v33) & 1) == 0)
  {
    return 0;
  }

  v33 = *this;
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v5, "sym_visibility", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::__mlir_ods_local_attr_constraint_BuiltinOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v33) & 1) == 0)
  {
    return 0;
  }

  v6 = *this;
  v7 = ((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40);
  v8 = *(v7 + 8);
  if (v8 != v7 && *(v8 + 8) == v7)
  {
    return 1;
  }

  v29 = "region #";
  v30 = 259;
  mlir::Operation::emitOpError(&v33, v6, &v29);
  if (v33)
  {
    LODWORD(v26) = 5;
    *(&v26 + 1) = 0;
    if (v36 >= v37)
    {
      if (v35 > &v26 || v35 + 24 * v36 <= &v26)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = v35 + 24 * v36;
    v10 = v26;
    *(v9 + 2) = v27;
    *v9 = v10;
    ++v36;
    v11 = v33 == 0;
  }

  else
  {
    v11 = 1;
  }

  v25 = 1283;
  v24[0] = " ('";
  v24[2] = "bodyRegion";
  v24[3] = 10;
  *&v26 = v24;
  v27 = "') ";
  v28 = 770;
  if (!v11)
  {
    mlir::Diagnostic::operator<<(&v34, &v26);
    if (v33)
    {
      LODWORD(v31) = 3;
      *(&v31 + 1) = "failed to verify constraint: region with 1 blocks";
      v32 = 49;
      if (v36 >= v37)
      {
        if (v35 > &v31 || v35 + 24 * v36 <= &v31)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v35 + 24 * v36;
      v13 = v31;
      *(v12 + 2) = v32;
      *v12 = v13;
      ++v36;
    }
  }

  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v33);
  if (v33)
  {
    mlir::InFlightDiagnostic::report(&v33);
  }

  if (v44 == 1)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v42;
      v17 = __p;
      if (v42 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v42 = v15;
      operator delete(v17);
    }

    v18 = v39;
    if (v39)
    {
      v19 = v40;
      v20 = v39;
      if (v40 != v39)
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
        v20 = v39;
      }

      v40 = v18;
      operator delete(v20);
    }

    if (v35 != &v38)
    {
      free(v35);
    }
  }

  return v14;
}

void mlir::ModuleOp::print(unsigned int **this, mlir::OpAsmPrinter *a2)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v4 = *this;
  if (*&v4[4 * ((v4[11] >> 23) & 1) + 16])
  {
    v5 = (*(*a2 + 16))(a2);
    v6 = *(v5 + 4);
    if (v6 >= *(v5 + 3))
    {
      llvm::raw_ostream::write(v5, 32);
    }

    else
    {
      *(v5 + 4) = v6 + 1;
      *v6 = 32;
    }

    v14 = *&(*this)[4 * (((*this)[11] >> 23) & 1) + 16];
    Value = mlir::StringAttr::getValue(&v14);
    (*(*a2 + 88))(a2, Value, v8);
    v4 = *this;
  }

  v14 = v16;
  v16[0] = "sym_name";
  v16[1] = 8;
  v15 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  v9 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 200))(a2, v9, v10, v14, v15);
  v11 = (*(*a2 + 16))(a2);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 32);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 32;
  }

  (*(*a2 + 224))(a2, ((&(*this)[4 * (((*this)[11] >> 23) & 1) + 17] + (((*this)[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * (*this)[10], 1, 1, 0);
  if (v14 != v16)
  {
    free(v14);
  }
}

unint64_t mlir::UnrealizedConversionCastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

uint64_t mlir::UnrealizedConversionCastOp::verifyInvariantsImpl(mlir::UnrealizedConversionCastOp *this)
{
  v1 = *(*this + 36);
  if (*(*this + 36))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    for (i = 0; i != v1; ++i)
    {
      mlir::detail::OpResultImpl::getNextResultAtOffset(v2, i);
    }
  }

  return 1;
}

BOOL mlir::UnrealizedConversionCastOp::verifyInvariants(mlir::Operation **this)
{
  v2 = *(*this + 9);
  if (*(*this + 9))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      mlir::detail::OpResultImpl::getNextResultAtOffset(v3, i);
    }
  }

  return mlir::UnrealizedConversionCastOp::verify(this);
}

uint64_t mlir::UnrealizedConversionCastOp::parse(mlir::UnrealizedConversionCastOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v19[16] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x400000000;
  v15[0] = &v16;
  v15[1] = 0x100000000;
  __src = &v14;
  v13 = 0x100000000;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 720))(this, &v17, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || v18 && (((*(*this + 104))(this) & 1) == 0 || (mlir::AsmParser::parseTypeList(this, v15) & 1) == 0) || (v11[16] = 257, ((*(*this + 400))(this, "to", 2, v11) & 1) == 0) || (mlir::AsmParser::parseTypeList(this, &__src) & 1) == 0 || ((*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112) & 1) == 0))
  {
    v8 = 0;
    v9 = __src;
    if (__src == &v14)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v6 = v13;
  v7 = *(a2 + 18);
  if (v7 + v13 > *(a2 + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v13)
  {
    memcpy((*(a2 + 8) + 8 * v7), __src, 8 * v13);
    LODWORD(v7) = *(a2 + 18);
  }

  *(a2 + 18) = v7 + v6;
  v8 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, &v17, v15, v5, a2 + 16) & 1;
  v9 = __src;
  if (__src != &v14)
  {
LABEL_15:
    free(v9);
  }

LABEL_16:
  if (v15[0] != &v16)
  {
    free(v15[0]);
  }

  if (v17 != v19)
  {
    free(v17);
  }

  return v8;
}

void *llvm::DefaultDoCastIfPossible<mlir::TargetSystemSpecInterface,mlir::Attribute const,llvm::CastInfo<mlir::TargetSystemSpecInterface,mlir::Attribute const,void>>::doCastIfPossible(void *result)
{
  v1 = *result;
  {
    v21 = v1;
    v23 = result;
    llvm::DefaultDoCastIfPossible<mlir::TargetSystemSpecInterface,mlir::Attribute const,llvm::CastInfo<mlir::TargetSystemSpecInterface,mlir::Attribute const,void>>::doCastIfPossible();
    result = v23;
    v2 = mlir::detail::TypeIDResolver<mlir::TargetSystemSpecInterface,void>::resolveTypeID(void)::id;
    v3 = *(v21 + 8);
    v4 = *(v21 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::TargetSystemSpecInterface,void>::resolveTypeID(void)::id;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
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
  if (v5 == &v3[2 * v4] || *v5 != v2 || !v5[1])
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v11 = *result;
  {
    v12 = mlir::detail::TypeIDResolver<mlir::TargetSystemSpecInterface,void>::resolveTypeID(void)::id;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    if (!v14)
    {
      return result;
    }
  }

  else
  {
    v22 = v11;
    v24 = result;
    llvm::DefaultDoCastIfPossible<mlir::TargetSystemSpecInterface,mlir::Attribute const,llvm::CastInfo<mlir::TargetSystemSpecInterface,mlir::Attribute const,void>>::doCastIfPossible();
    result = v24;
    v12 = mlir::detail::TypeIDResolver<mlir::TargetSystemSpecInterface,void>::resolveTypeID(void)::id;
    v13 = *(v22 + 8);
    v14 = *(v22 + 16);
    if (!v14)
    {
      return result;
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
  return result;
}

const char *llvm::getTypeName<mlir::TargetSystemSpecInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::TargetSystemSpecInterface]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::__mlir_ods_local_attr_constraint_BuiltinOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ModuleOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ModuleOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ModuleOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ModuleOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::ModuleOp>::printAssembly(uint64_t a1, unsigned int *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ModuleOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ModuleOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ModuleOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  v7 = a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64;
  if (a4 != 14)
  {
    if (a4 == 8 && *a3 == 0x656D616E5F6D7973)
    {
      return *v7;
    }

    return 0;
  }

  if (*a3 != 0x697369765F6D7973 || *(a3 + 6) != 0x7974696C69626973)
  {
    return 0;
  }

  v7 = a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72;
  return *v7;
}

void *mlir::RegisteredOperationName::Model<mlir::ModuleOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  result = mlir::StringAttr::getValue(&v11);
  if (v7 == 14)
  {
    if (*result == 0x697369765F6D7973 && *(result + 6) == 0x7974696C69626973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v9 = a4;
        }

        else
        {
          v9 = 0;
        }

        *(v5 + 72) = v9;
      }

      else
      {
        *(v5 + 72) = 0;
      }
    }
  }

  else if (v7 == 8 && *result == 0x656D616E5F6D7973)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v10 = a4;
      }

      else
      {
        v10 = 0;
      }

      *(v5 + 64) = v10;
    }

    else
    {
      *(v5 + 64) = 0;
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ModuleOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = mlir::Attribute::getContext((a2 + 24));
  v6 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  if (v9)
  {
    result = mlir::NamedAttrList::append(a3, "sym_name", 8uLL, v7);
  }

  v10 = *(v8 + 8);
  if (v10)
  {

    return mlir::NamedAttrList::append(a3, "sym_visibility", 0xEuLL, v10);
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ModuleOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v9 = mlir::NamedAttrList::get(a3, **(a2 + 96));
  result = 0;
  if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v9, "sym_name", 8, a4, a5) & 1) != 0)
  {
    v10 = mlir::NamedAttrList::get(a3, *(*(a2 + 96) + 8));
    if (!v10 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v10, "sym_visibility", 14, a4, a5) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::ModuleOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ModuleOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::ModuleOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::ModuleOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::ModuleOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
  v5 = HIDWORD(a2[1]);
  v6 = 0x9DDFEA08EB382D69 * ((8 * a2[1] - 0xAE502812AA7333) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  v8 = __ROR8__(v7 + 16, 16);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v4 ^ 0xFF51AFD7ED558CCDLL ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ 0xFF51AFD7ED558CCDLL ^ v8)))) ^ ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v4 ^ 0xFF51AFD7ED558CCDLL ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ 0xFF51AFD7ED558CCDLL ^ v8)))) >> 47))) ^ v7;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ModuleOp>,mlir::OpTrait::ZeroResults<mlir::ModuleOp>,mlir::OpTrait::ZeroSuccessors<mlir::ModuleOp>,mlir::OpTrait::ZeroOperands<mlir::ModuleOp>,mlir::OpTrait::NoRegionArguments<mlir::ModuleOp>,mlir::OpTrait::NoTerminator<mlir::ModuleOp>,mlir::OpTrait::SingleBlock<mlir::ModuleOp>,mlir::OpTrait::OpInvariants<mlir::ModuleOp>,mlir::BytecodeOpInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::AffineScope<mlir::ModuleOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ModuleOp>,mlir::OpTrait::SymbolTable<mlir::ModuleOp>,mlir::SymbolOpInterface::Trait<mlir::ModuleOp>,mlir::OpAsmOpInterface::Trait<mlir::ModuleOp>,mlir::RegionKindInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::ModuleOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::writeProperties;
  {
    v8 = v2;
    mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>>(a1);
  v4 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v5 = v4;
  *v4 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::getAsmResultNames;
  v4[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::getAsmBlockArgumentNames;
  v4[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::getAsmBlockNames;
  v4[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::getDefaultDialect;
  {
    v9 = v4;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::mpsx::ListPopBackOp>>();
    v5 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v6 = mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::ModuleOp>::getRegionKind;
  v6[1] = mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::ModuleOp>::hasSSADominance;
  {
    mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  (*(*a3 + 24))(a3, *(v4 + 64));
  v5 = *(v4 + 72);
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x80uLL, 0x800408754F03FuLL);
  v3 = v2;
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::isDeclaration;
  {
    v5 = v2;
    mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::setName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v9 = 261;
  v8[0] = "sym_name";
  v8[1] = 8;
  v7 = mlir::StringAttr::get(Context, v8, v6);
  mlir::Operation::setAttr(a2, v7, a3);
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, unsigned int *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ModuleOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (!mlir::op_definition_impl::verifyTraits<mlir::OpTrait::OneRegion<mlir::ModuleOp>,mlir::OpTrait::ZeroResults<mlir::ModuleOp>,mlir::OpTrait::ZeroSuccessors<mlir::ModuleOp>,mlir::OpTrait::ZeroOperands<mlir::ModuleOp>,mlir::OpTrait::NoRegionArguments<mlir::ModuleOp>,mlir::OpTrait::NoTerminator<mlir::ModuleOp>,mlir::OpTrait::SingleBlock<mlir::ModuleOp>,mlir::OpTrait::OpInvariants<mlir::ModuleOp>,mlir::BytecodeOpInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::AffineScope<mlir::ModuleOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ModuleOp>,mlir::OpTrait::SymbolTable<mlir::ModuleOp>,mlir::SymbolOpInterface::Trait<mlir::ModuleOp>,mlir::OpAsmOpInterface::Trait<mlir::ModuleOp>,mlir::RegionKindInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::ModuleOp>>(a1, a2))
  {
    return 0;
  }

  v4 = a1;
  return mlir::ModuleOp::verify(&v4);
}

BOOL mlir::op_definition_impl::verifyTraits<mlir::OpTrait::OneRegion<mlir::ModuleOp>,mlir::OpTrait::ZeroResults<mlir::ModuleOp>,mlir::OpTrait::ZeroSuccessors<mlir::ModuleOp>,mlir::OpTrait::ZeroOperands<mlir::ModuleOp>,mlir::OpTrait::NoRegionArguments<mlir::ModuleOp>,mlir::OpTrait::NoTerminator<mlir::ModuleOp>,mlir::OpTrait::SingleBlock<mlir::ModuleOp>,mlir::OpTrait::OpInvariants<mlir::ModuleOp>,mlir::BytecodeOpInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::AffineScope<mlir::ModuleOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ModuleOp>,mlir::OpTrait::SymbolTable<mlir::ModuleOp>,mlir::SymbolOpInterface::Trait<mlir::ModuleOp>,mlir::OpAsmOpInterface::Trait<mlir::ModuleOp>,mlir::RegionKindInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::ModuleOp>>(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyOneRegion(a1, a2) && mlir::OpTrait::impl::verifyZeroResults(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyZeroOperands(a1, v5) && mlir::OpTrait::impl::verifyNoRegionArguments(a1, v6) && (mlir::OpTrait::SingleBlock<mlir::ODIE::Compiler::CoreML::ClassOp>::verifyTrait(a1) & 1) != 0 && (v8 = a1, mlir::ModuleOp::verifyInvariantsImpl(&v8)))
  {
    return mlir::detail::SymbolOpInterfaceTrait<mlir::pdl::PatternOp>::verifyTrait(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::foldHook(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
  v10 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v11 = v13[0];
      if ((v14 & 2) != 0)
      {
        v11 = v13;
      }

      v12 = result;
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v6, a2);
  v3 = v7;
  if (v7 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      v4 = v6[0];
      if ((v7 & 2) != 0)
      {
        v4 = v6;
      }

      v5 = result;
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v6[0], v6[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x277D85DE8];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v30 = *MEMORY[0x277D85DE8];
  a5(v19, a6);
  if (v19[0])
  {
    LODWORD(v17) = 3;
    *(&v17 + 1) = "this operation does not support properties";
    v18 = 42;
    if (v21 >= v22)
    {
      if (v20 > &v17 || v20 + 24 * v21 <= &v17)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v20 + 24 * v21;
    v7 = v17;
    *(v6 + 2) = v18;
    *v6 = v7;
    ++v21;
    if (v19[0])
    {
      mlir::InFlightDiagnostic::report(v19);
    }
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v27;
      v10 = __p;
      if (v27 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v27 = v8;
      operator delete(v10);
    }

    v11 = v24;
    if (v24)
    {
      v12 = v25;
      v13 = v24;
      if (v25 != v24)
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
        v13 = v24;
      }

      v25 = v11;
      operator delete(v13);
    }

    if (v20 != &v23)
    {
      free(v20);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::UnrealizedConversionCastOp>,mlir::OpTrait::VariadicResults<mlir::UnrealizedConversionCastOp>,mlir::OpTrait::ZeroSuccessors<mlir::UnrealizedConversionCastOp>,mlir::OpTrait::VariadicOperands<mlir::UnrealizedConversionCastOp>,mlir::OpTrait::OpInvariants<mlir::UnrealizedConversionCastOp>,mlir::ConditionallySpeculatable::Trait<mlir::UnrealizedConversionCastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::UnrealizedConversionCastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::UnrealizedConversionCastOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::UnrealizedConversionCastOp>::getSpeculatability;
  {
    v6 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::RangeOp>,mlir::OpTrait::OneResult<mlir::pdl::RangeOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::pdl::RangeOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::RangeOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::RangeOp>,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::pdl::RangeOp>,mlir::OpTrait::OpInvariants<mlir::pdl::RangeOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl::RangeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl::RangeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl::RangeOp>>();
    v3 = v6;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::UnrealizedConversionCastOp>::getEffects;
  {
    mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor();
  }

  v5 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v5, v4);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v44 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    a1 = v44;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  v37 = v1;
  v45 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>();
  v1 = v37;
  a1 = v45;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  v38 = v1;
  v46 = a1;
  v31 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v31;
  v1 = v38;
  a1 = v46;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  v39 = v1;
  v47 = a1;
  v32 = v2;
  v26 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v3 = v26;
  v2 = v32;
  v1 = v39;
  a1 = v47;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  v40 = v1;
  v48 = a1;
  v33 = v2;
  v22 = v4;
  v27 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v4 = v22;
  v3 = v27;
  v2 = v33;
  v1 = v40;
  a1 = v48;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

LABEL_40:
    v42 = v1;
    v50 = a1;
    v35 = v2;
    v24 = v4;
    v29 = v3;
    v17 = v6;
    v20 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v6 = v17;
    v5 = v20;
    v4 = v24;
    v3 = v29;
    v2 = v35;
    v1 = v42;
    a1 = v50;
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_41;
  }

LABEL_39:
  v41 = v1;
  v49 = a1;
  v34 = v2;
  v23 = v4;
  v28 = v3;
  v19 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v5 = v19;
  v4 = v23;
  v3 = v28;
  v2 = v34;
  v1 = v41;
  a1 = v49;
  v6 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_40;
  }

LABEL_8:
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_41:
  v43 = v1;
  v51 = a1;
  v36 = v2;
  v25 = v4;
  v30 = v3;
  v18 = v6;
  v21 = v5;
  v16 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v7 = v16;
  v6 = v18;
  v5 = v21;
  v4 = v25;
  v3 = v30;
  v2 = v36;
  v1 = v43;
  a1 = v51;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

BOOL mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(unsigned int *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    return 0;
  }

  v4 = a1[9];
  if (a1[9])
  {
    v5 = (a1 - 4);
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      mlir::detail::OpResultImpl::getNextResultAtOffset(v5, i);
    }
  }

  v8 = a1;
  return mlir::UnrealizedConversionCastOp::verify(&v8);
}

void mlir::ResourceBlobManagerDialectInterface::ResourceBlobManagerDialectInterface(mlir::ResourceBlobManagerDialectInterface *this, mlir::Dialect *a2)
{
  {
    v4 = a2;
    mlir::Dialect::getRegisteredInterface<mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>>();
    a2 = v4;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::ResourceBlobManagerDialectInterface,void>::resolveTypeID(void)::id;
  *(this + 1) = a2;
  *(this + 2) = v3;
  *this = &unk_28689C998;
  operator new();
}

void mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>::~ResourceBlobManagerDialectInterfaceBase(mlir::DialectInterface *a1)
{
  *a1 = &unk_28689C998;
  v1 = *(a1 + 4);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  mlir::DialectInterface::~DialectInterface(a1);
}

{
  *a1 = &unk_28689C998;
  v1 = *(a1 + 4);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  mlir::DialectInterface::~DialectInterface(a1);

  JUMPOUT(0x259C63180);
}

void mlir::ResourceBlobManagerDialectInterface::~ResourceBlobManagerDialectInterface(mlir::ResourceBlobManagerDialectInterface *this)
{
  *this = &unk_28689C998;
  v1 = *(this + 4);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  mlir::DialectInterface::~DialectInterface(this);
}

{
  *this = &unk_28689C998;
  v1 = *(this + 4);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  mlir::DialectInterface::~DialectInterface(this);

  JUMPOUT(0x259C63180);
}

void std::__shared_ptr_emplace<mlir::DialectResourceBlobManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28689C9B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

void std::__shared_ptr_emplace<mlir::DialectResourceBlobManager>::__on_zero_shared(uint64_t a1)
{
  llvm::StringMap<mlir::DialectResourceBlobManager::BlobEntry,llvm::MallocAllocator>::~StringMap(a1 + 40);

  llvm::sys::RWMutexImpl::~RWMutexImpl((a1 + 24));
}

uint64_t llvm::StringMap<mlir::DialectResourceBlobManager::BlobEntry,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      do
      {
        v4 = *(*a1 + v3);
        if (v4 != -8 && v4 != 0)
        {
          v6 = *v4;
          if (*(v4 + 88) == 1)
          {
            v7 = v4[9];
            if (v7 >= 8)
            {
              v8 = v4 + 6;
              v9 = v4 + 6;
              if ((v7 & 2) == 0)
              {
                v9 = *v8;
              }

              (*(v7 & 0xFFFFFFFFFFFFFFF8))(v9, v4[3], v4[4], v4[5]);
              v10 = v4[9];
              if (v10 >= 8)
              {
                if ((v10 & 4) != 0)
                {
                  if ((v10 & 2) == 0)
                  {
                    v8 = *v8;
                  }

                  (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8);
                }

                if ((v10 & 2) == 0)
                {
                  llvm::deallocate_buffer(v4[6], v4[7]);
                }
              }
            }
          }

          llvm::deallocate_buffer(v4, (v6 + 97));
        }

        v3 += 8;
      }

      while (8 * v2 != v3);
    }
  }

  free(*a1);
  return a1;
}

void anonymous namespace::BuiltinOpAsmDialectInterface::~BuiltinOpAsmDialectInterface(_anonymous_namespace_::BuiltinOpAsmDialectInterface *this)
{
  mlir::DialectInterface::~DialectInterface(this);

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::BuiltinOpAsmDialectInterface::getAlias(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v6 = a3[4];
    if ((a3[3] - v6) <= 2)
    {
      v7 = "map";
      goto LABEL_10;
    }

    *(v6 + 2) = 112;
    v12 = 24941;
    goto LABEL_22;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
  {
    v6 = a3[4];
    if ((a3[3] - v6) <= 2)
    {
      v7 = "set";
      goto LABEL_10;
    }

    *(v6 + 2) = 116;
    v12 = 25971;
LABEL_22:
    *v6 = v12;
    a3[4] += 3;
    return 1;
  }

  if (mlir::LocationAttr::classof(a2))
  {
    v6 = a3[4];
    if ((a3[3] - v6) <= 2)
    {
      v7 = "loc";
LABEL_10:
      llvm::raw_ostream::write(a3, v7, 3uLL);
      return 1;
    }

    *(v6 + 2) = 99;
    v12 = 28524;
    goto LABEL_22;
  }

  v9 = a2;
  v10 = *(*a2 + 136);
  {
    if (v10 != mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id)
    {
      v9 = 0;
    }

    v15 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    v14 = v10;
    mlir::AsmPrinter::Impl::printAttributeImpl();
    v13 = a2;
    if (v14 != mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id)
    {
      v13 = 0;
    }

    v15 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  if (*(*mlir::DistinctAttr::getReferencedAttr(&v15) + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return 0;
  }

  v11 = a3[4];
  if (a3[3] - v11 > 7uLL)
  {
    *v11 = 0x74636E6974736964;
    a3[4] += 8;
  }

  else
  {
    llvm::raw_ostream::write(a3, "distinct", 8uLL);
  }

  return 1;
}

{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  v7 = v3;
  if (!v3 || mlir::TupleType::size(&v7) < 0x11)
  {
    return 0;
  }

  v5 = a3[4];
  if ((a3[3] - v5) > 4)
  {
    *(v5 + 4) = 101;
    *v5 = 1819309428;
    a3[4] += 5;
  }

  else
  {
    llvm::raw_ostream::write(a3, "tuple", 5uLL);
  }

  return 1;
}

void anonymous namespace::BuiltinOpAsmDialectInterface::declareResource(uint64_t a1@<X0>, unsigned int *a2@<X1>, const unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  LOBYTE(v11[0]) = 0;
  v14 = 0;
  mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>::insert(v5, a2, a3, v11, &v9);
  *a4 = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = 1;
  if (v14 == 1 && v13 >= 8)
  {
    v6 = (v13 & 2) != 0 ? v12 : v12[0];
    (*(v13 & 0xFFFFFFFFFFFFFFF8))(v6, v11[0], v11[1], v11[2]);
    v7 = v13;
    if (v13 >= 8)
    {
      if ((v13 & 4) != 0)
      {
        if ((v13 & 2) != 0)
        {
          v8 = v12;
        }

        else
        {
          v8 = v12[0];
        }

        (*((v13 & 0xFFFFFFFFFFFFFFF8) + 16))(v8);
      }

      if ((v7 & 2) == 0)
      {
        llvm::deallocate_buffer(v12[0], v12[1]);
      }
    }
  }
}

void anonymous namespace::BuiltinOpAsmDialectInterface::getResourceKey(const void ***a1@<X1>, void *a2@<X8>)
{
  v3 = **a1;
  if (v3)
  {
    v4 = (*a1)[1];
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v4;
    if (v4)
    {
      memmove(a2, v3, v4);
    }

    *(a2 + v4) = 0;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

uint64_t anonymous namespace::BuiltinOpAsmDialectInterface::parseResource(_anonymous_namespace_::BuiltinOpAsmDialectInterface *this, mlir::AsmParsedResourceEntry *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  (*(*a2 + 56))(v12, a2, llvm::function_ref<mlir::AsmResourceBlob ()(unsigned long,unsigned long)>::callback_fn<mlir::AsmParsedResourceEntry::parseAsBlob(void)::{lambda(unsigned long,unsigned long)#1}>, &v11);
  if (v15 != 1)
  {
    return 0;
  }

  v4 = *(this + 3);
  v5 = (*(*a2 + 16))(a2);
  mlir::DialectResourceBlobManager::update(*(v4 + 24), v5, v6, v12);
  if ((v15 & 1) != 0 && v14 >= 8)
  {
    v7 = (v14 & 2) != 0 ? v13 : v13[0];
    (*(v14 & 0xFFFFFFFFFFFFFFF8))(v7, v12[0], v12[1], v12[2]);
    v8 = v14;
    if (v14 >= 8)
    {
      if ((v14 & 4) != 0)
      {
        if ((v14 & 2) != 0)
        {
          v9 = v13;
        }

        else
        {
          v9 = v13[0];
        }

        (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v9);
      }

      if ((v8 & 2) == 0)
      {
        llvm::deallocate_buffer(v13[0], v13[1]);
      }
    }
  }

  return 1;
}

void mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>::buildResources(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = 24 * a4;
    v6 = (a3 + 8);
    do
    {
      v7 = *v6;
      {
        if (v7 == mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v9 = v7;
        mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>::buildResources();
        if (v9 == mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id)
        {
LABEL_6:
          v8 = *(v6 - 1);
          if (*(v8 + 80) == 1)
          {
            (*(*a2 + 32))(a2, *v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32));
          }
        }
      }

      v6 += 3;
      v5 -= 24;
    }

    while (v5);
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::detail::ModuleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::detail::ModuleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::detail::ModuleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::detail::ModuleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::detail::ModuleOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::ModuleOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ModuleOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
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

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

int8x16_t OUTLINED_FUNCTION_2_15@<Q0>(int8x16_t *a1@<X8>)
{
  v3 = v2 - 8;
  v4 = vld4q_f64(v3);
  v5 = vld4q_f64(v2);
  v6 = vdupq_n_s64(v1);
  result = vorrq_s8(v4, v6);
  a1[-1] = result;
  *a1 = vorrq_s8(v5, v6);
  return result;
}

void anonymous namespace::BuiltinDialectBytecodeInterface::~BuiltinDialectBytecodeInterface(_anonymous_namespace_::BuiltinDialectBytecodeInterface *this)
{
  mlir::DialectInterface::~DialectInterface(this);

  JUMPOUT(0x259C63180);
}

llvm::APFloatBase *anonymous namespace::BuiltinDialectBytecodeInterface::readAttribute(mlir::DialectInterface *a1, uint64_t a2)
{
  v98 = *MEMORY[0x277D85DE8];
  Context = mlir::DialectInterface::getContext(a1);
  v77 = 0;
  v5 = (*(*a2 + 72))(a2, &v77);
  result = 0;
  if (v5)
  {
    switch(v77)
    {
      case 0:
        *v85 = &v85[16];
        *&v85[8] = 0x600000000;
        *v96 = a2;
        if ((mlir::DialectBytecodeReader::readList<mlir::Attribute,llvm::LogicalResult mlir::DialectBytecodeReader::readAttributes<mlir::Attribute>(llvm::SmallVectorImpl<mlir::Attribute> &)::{lambda(mlir::Attribute&)#1}>(a2, v85, v96) & 1) == 0)
        {
          goto LABEL_135;
        }

        result = mlir::ArrayAttr::get(Context, *v85, *&v85[8]);
        goto LABEL_136;
      case 1:
        *v85 = &v85[16];
        *&v85[8] = 0x300000000;
        v78 = 0;
        if (((*(*a2 + 72))(a2, &v78) & 1) == 0)
        {
          goto LABEL_135;
        }

        if (v78 > *&v85[12])
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (!v78)
        {
          goto LABEL_103;
        }

        v35 = 0;
        while (1)
        {
          v79 = 0;
          v82 = 0;
          if ((mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a2, &v79) & 1) == 0 || ((*(*a2 + 48))(a2, &v82) & 1) == 0)
          {
            goto LABEL_135;
          }

          mlir::NamedAttribute::NamedAttribute(&v83, v79, v82);
          *v96 = v83;
          v96[16] = 1;
          if (*&v85[8] >= *&v85[12])
          {
            llvm::SmallVectorTemplateBase<mlir::PromotableAllocationOpInterface,true>::growAndEmplaceBack<mlir::PromotableAllocationOpInterface&>(v85, v96);
            if (++v35 >= v78)
            {
LABEL_103:
              result = mlir::DictionaryAttr::get(Context, *v85, *&v85[8]);
              goto LABEL_136;
            }
          }

          else
          {
            *(*v85 + 16 * *&v85[8]) = *v96;
            ++*&v85[8];
            if (++v35 >= v78)
            {
              goto LABEL_103;
            }
          }
        }

      case 2:
        *v96 = 0uLL;
        v34 = (*(*a2 + 104))(a2, v96);
        result = 0;
        if (v34)
        {
          LOWORD(v87) = 261;
          *v85 = *v96;
          return mlir::StringAttr::get(Context, v85, v33);
        }

        return result;
      case 3:
        *v96 = 0uLL;
        *&v83 = 0;
        if (((*(*a2 + 104))(a2, v96) & 1) == 0 || ((*(*a2 + 64))(a2, &v83) & 1) == 0)
        {
          return 0;
        }

        LOWORD(v87) = 261;
        *v85 = *v96;
        return mlir::StringAttr::get(v85, v83);
      case 4:
        *v85 = 0;
        v8 = mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a2, v85);
        result = 0;
        if (v8)
        {
          return mlir::SymbolRefAttr::get(*v85);
        }

        return result;
      case 5:
        *&v83 = 0;
        *v85 = &v85[16];
        *&v85[8] = 0x600000000;
        if ((mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a2, &v83) & 1) == 0)
        {
          goto LABEL_198;
        }

        *v96 = a2;
        if ((mlir::DialectBytecodeReader::readList<mlir::FlatSymbolRefAttr,llvm::LogicalResult mlir::DialectBytecodeReader::readAttributes<mlir::FlatSymbolRefAttr>(llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::FlatSymbolRefAttr&)#1}>(a2, v85, v96) & 1) == 0)
        {
          goto LABEL_198;
        }

        result = mlir::SymbolRefAttr::get(v83, *v85, *&v85[8]);
        v36 = *v85;
        if (*v85 == &v85[16])
        {
          return result;
        }

        goto LABEL_199;
      case 6:
        *v85 = 0;
        v43 = (*(*a2 + 64))(a2, v85);
        result = 0;
        if (v43)
        {
          return mlir::TypeAttr::get(*v85);
        }

        return result;
      case 7:
        return mlir::UnitAttr::get(Context, v4);
      case 8:
        v82 = 0;
        LOBYTE(v79) = 0;
        v81 = 0;
        if (((*(*a2 + 64))(a2, &v82) & 1) == 0)
        {
          return 0;
        }

        v44 = v82;
        v45 = *(*v82 + 136);
        v46 = v45 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id ? v82 : 0;
        *v85 = v46;
        if (v46)
        {
          Width = mlir::IntegerType::getWidth(v85);
          v48 = 0;
        }

        else if (v45 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
        {
          v48 = 0;
          Width = 64;
        }

        else
        {
          v97 = 257;
          (*(*a2 + 16))(v85, a2, v96);
          if (*v85)
          {
            LODWORD(v83) = 3;
            *(&v83 + 1) = "expected integer or index type for IntegerAttr, but got: ";
            v84 = 57;
            if (v87 >= v88)
            {
              if (v86 > &v83 || v86 + 24 * v87 <= &v83)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v55 = v86 + 24 * v87;
            v56 = v83;
            *(v55 + 2) = v84;
            *v55 = v56;
            ++v87;
            if (*v85)
            {
              mlir::DiagnosticArgument::DiagnosticArgument(&v83, v44);
              if (v87 >= v88)
              {
                if (v86 > &v83 || v86 + 24 * v87 <= &v83)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v57 = v86 + 24 * v87;
              v58 = v83;
              *(v57 + 2) = v84;
              *v57 = v58;
              ++v87;
              if (*v85)
              {
                mlir::InFlightDiagnostic::report(v85);
              }
            }
          }

          if (v95 == 1)
          {
            if (v94 != &v95)
            {
              free(v94);
            }

            v59 = __p;
            if (__p)
            {
              v60 = v93;
              v61 = __p;
              if (v93 != __p)
              {
                do
                {
                  v60 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v60 - 1);
                }

                while (v60 != v59);
                v61 = __p;
              }

              v93 = v59;
              operator delete(v61);
            }

            v62 = v90;
            if (v90)
            {
              v63 = v91;
              v64 = v90;
              if (v91 != v90)
              {
                do
                {
                  v66 = *--v63;
                  v65 = v66;
                  *v63 = 0;
                  if (v66)
                  {
                    MEMORY[0x259C63150](v65, 0x1000C8077774924);
                  }
                }

                while (v63 != v62);
                v64 = v90;
              }

              v91 = v62;
              operator delete(v64);
            }

            if (v86 != &v89)
            {
              free(v86);
            }
          }

          Width = 0;
          v48 = v81;
        }

        (*(*a2 + 88))(v85, a2, Width);
        if (v48 == v85[16])
        {
          if (v48)
          {
            if (v80 >= 0x41 && v79)
            {
              MEMORY[0x259C63150](v79, 0x1000C8000313F17);
            }

            v79 = *v85;
            v80 = *&v85[8];
            *&v85[8] = 0;
            v76 = 1;
          }

          else
          {
            v76 = 0;
          }
        }

        else if (v48)
        {
          if (v80 >= 0x41 && v79)
          {
            MEMORY[0x259C63150](v79, 0x1000C8000313F17);
          }

          v76 = 0;
          v81 = 0;
        }

        else
        {
          v80 = *&v85[8];
          v79 = *v85;
          *&v85[8] = 0;
          v76 = 1;
          v81 = 1;
        }

        if (v85[16] == 1 && *&v85[8] >= 0x41u && *v85)
        {
          MEMORY[0x259C63150](*v85, 0x1000C8000313F17);
        }

        if (!v76)
        {
          return 0;
        }

        result = mlir::IntegerAttr::get(v82, &v79);
        if ((v81 & 1) == 0 || v80 < 0x41 || !v79)
        {
          return result;
        }

        v73 = result;
        MEMORY[0x259C63150](v79, 0x1000C8000313F17);
        return v73;
      case 9:
        v79 = 0;
        v96[0] = 0;
        LOBYTE(v97) = 0;
        v12 = (*(*a2 + 64))(a2, &v79);
        result = 0;
        if ((v12 & 1) == 0)
        {
          return result;
        }

        v13 = *(*v79 + 136);
        if (v13 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
        {
          return 0;
        }

        *&v83 = v79;
        FloatSemantics = mlir::FloatType::getFloatSemantics(&v83);
        (*(*a2 + 96))(v85, a2, FloatSemantics);
        std::__optional_storage_base<llvm::APFloat,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::APFloat,false>>(v96, v85);
        if (v87 == 1)
        {
          v32 = *&v85[8];
          if (llvm::APFloatBase::PPCDoubleDouble(v31) == v32)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v85[8]);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&v85[8]);
          }
        }

        result = mlir::FloatAttr::get(v79, v96);
        if (v97)
        {
          v74 = result;
          v75 = *&v96[8];
          if (llvm::APFloatBase::PPCDoubleDouble(result) == v75)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v96[8]);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&v96[8]);
          }

          return v74;
        }

        return result;
      case 10:
        *v85 = 0;
        *v96 = 0;
        if (!mlir::DialectBytecodeReader::readAttribute<mlir::LocationAttr>(a2, v85) || !mlir::DialectBytecodeReader::readAttribute<mlir::LocationAttr>(a2, v96))
        {
          return 0;
        }

        return mlir::CallSiteLoc::get(*v85, *v96);
      case 11:
        *v85 = 0;
        *v96 = 0;
        *&v83 = 0;
        if ((mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a2, v85) & 1) == 0 || ((*(*a2 + 72))(a2, v96) & 1) == 0 || ((*(*a2 + 72))(a2, &v83) & 1) == 0)
        {
          return 0;
        }

        return mlir::FileLineColLoc::get(*v85, *v96, v83);
      case 12:
        *v85 = &v85[16];
        *&v85[8] = 0x600000000;
        v79 = 0;
        if (((*(*a2 + 72))(a2, &v79) & 1) == 0)
        {
          goto LABEL_135;
        }

        if (v79 > *&v85[12])
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (!v79)
        {
          goto LABEL_30;
        }

        v9 = 0;
        while (1)
        {
          *&v83 = 0;
          v10 = mlir::DialectBytecodeReader::readAttribute<mlir::LocationAttr>(a2, &v83);
          v11 = v10 ? v83 : 0;
          *v96 = v11;
          v96[8] = v10;
          if (!v10)
          {
            goto LABEL_135;
          }

          if (*&v85[8] >= *&v85[12])
          {
            llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(v85, v96);
            if (++v9 >= v79)
            {
LABEL_30:
              mlir::FusedLoc::get(*v85, *&v85[8], 0, Context);
            }
          }

          else
          {
            *(*v85 + 8 * *&v85[8]) = v83;
            ++*&v85[8];
            if (++v9 >= v79)
            {
              goto LABEL_30;
            }
          }
        }

      case 13:
        *v85 = &v85[16];
        *&v85[8] = 0x600000000;
        v82 = 0;
        v79 = 0;
        if (((*(*a2 + 72))(a2, &v79) & 1) == 0)
        {
          goto LABEL_135;
        }

        if (v79 > *&v85[12])
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (!v79)
        {
          goto LABEL_133;
        }

        v40 = 0;
        break;
      case 14:
        *v85 = 0;
        *v96 = 0;
        if ((mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a2, v85) & 1) == 0 || !mlir::DialectBytecodeReader::readAttribute<mlir::LocationAttr>(a2, v96))
        {
          return 0;
        }

        return mlir::NameLoc::get(*v85, *v96);
      case 15:
        return mlir::UnknownLoc::get(Context, v4);
      case 16:
        v83 = 0uLL;
        v7 = mlir::DialectBytecodeReader::readType<mlir::ShapedType>(a2, &v83);
        result = 0;
        if (!v7)
        {
          return result;
        }

        mlir::DialectBytecodeReader::readResourceHandle<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>(a2, v85);
        if ((v86 & 1) == 0)
        {
          return 0;
        }

        *&v96[1] = *&v85[1];
        *&v96[16] = *&v85[16];
        v96[0] = v85[0];
        return mlir::DenseResourceElementsAttr::get(v83, *(&v83 + 1), v96);
      case 17:
        *v96 = 0;
        *&v83 = 0;
        *v85 = 0;
        *&v85[8] = 0;
        if (((*(*a2 + 64))(a2, v96) & 1) == 0 || ((*(*a2 + 72))(a2, &v83) & 1) == 0 || ((*(*a2 + 112))(a2, v85) & 1) == 0)
        {
          return 0;
        }

        return mlir::DenseArrayAttr::get(*v96, v83, *v85, *&v85[8]);
      case 18:
        *v85 = 0;
        *&v85[8] = 0;
        *v96 = 0uLL;
        if (!mlir::DialectBytecodeReader::readType<mlir::ShapedType>(a2, v85) || ((*(*a2 + 112))(a2, v96) & 1) == 0)
        {
          return 0;
        }

        return mlir::DenseElementsAttr::getFromRawBuffer(*v85, *&v85[8], *v96, *&v96[8]);
      case 19:
        v83 = 0uLL;
        v79 = 0;
        *v85 = &v85[16];
        *&v85[8] = 0x300000000;
        if (!mlir::DialectBytecodeReader::readType<mlir::ShapedType>(a2, &v83) || ((*(*a2 + 72))(a2, &v79) & 1) == 0)
        {
          goto LABEL_198;
        }

        *v96 = v83;
        if (v79)
        {
          NumElements = 1;
        }

        else
        {
          Shape = mlir::ShapedType::getShape(v96);
          NumElements = mlir::ShapedType::getNumElements(Shape, v68);
        }

        v69 = *&v85[8];
        if (NumElements != *&v85[8])
        {
          if (NumElements >= *&v85[8])
          {
            if (NumElements > *&v85[12])
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            if (NumElements != *&v85[8])
            {
              bzero((*v85 + 16 * *&v85[8]), 16 * (NumElements - *&v85[8]));
            }
          }

          v69 = NumElements;
          *&v85[8] = NumElements;
          NumElements = NumElements;
        }

        v70 = *v85;
        if (v69)
        {
          v71 = 16 * NumElements;
          do
          {
            if (((*(*a2 + 104))(a2, v70) & 1) == 0)
            {
LABEL_198:
              result = 0;
              v36 = *v85;
              if (*v85 == &v85[16])
              {
                return result;
              }

              goto LABEL_199;
            }

            v70 += 16;
            v71 -= 16;
          }

          while (v71);
          v70 = *v85;
          v72 = *&v85[8];
        }

        else
        {
          v72 = 0;
        }

        result = mlir::DenseStringElementsAttr::get(v83, *(&v83 + 1), v70, v72);
        v36 = *v85;
        if (*v85 != &v85[16])
        {
          goto LABEL_199;
        }

        return result;
      case 20:
        *v85 = 0;
        *&v85[8] = 0;
        *v96 = 0;
        *&v83 = 0;
        if (!mlir::DialectBytecodeReader::readType<mlir::ShapedType>(a2, v85) || !mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a2, v96) || !mlir::DialectBytecodeReader::readAttribute<mlir::DenseElementsAttr>(a2, &v83))
        {
          return 0;
        }

        return mlir::SparseElementsAttr::get(*v85, *&v85[8], *v96, v83);
      case 21:
        *v85 = 0;
        v37 = (*(*a2 + 48))(a2, v85);
        result = 0;
        if (v37)
        {
          Storage = mlir::detail::DistinctAttributeUniquer::allocateStorage(Context, *v85);
          {
          }

          v39 = mlir::AbstractAttribute::lookup(mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id, Context);
          result = Storage;
          *Storage = v39;
        }

        return result;
      default:
        v97 = 257;
        (*(*a2 + 16))(v85, a2, v96);
        if (*v85)
        {
          LODWORD(v83) = 3;
          *(&v83 + 1) = "unknown attribute code: ";
          v84 = 24;
          if (v87 >= v88)
          {
            if (v86 > &v83 || v86 + 24 * v87 <= &v83)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v49 = v86 + 24 * v87;
          v50 = v83;
          *(v49 + 2) = v84;
          *v49 = v50;
          v51 = ++v87;
          if (*v85)
          {
            LODWORD(v83) = 5;
            *(&v83 + 1) = v77;
            if (v51 >= v88)
            {
              if (v86 > &v83 || v86 + 24 * v51 <= &v83)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v52 = v86 + 24 * v87;
            v53 = v83;
            *(v52 + 2) = v84;
            *v52 = v53;
            ++v87;
            if (*v85)
            {
              mlir::InFlightDiagnostic::report(v85);
            }
          }
        }

        if (v95 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v85[8]);
        }

        return 0;
    }

    while (1)
    {
      *&v83 = 0;
      v41 = mlir::DialectBytecodeReader::readAttribute<mlir::LocationAttr>(a2, &v83);
      v42 = v41 ? v83 : 0;
      *v96 = v42;
      v96[8] = v41;
      if (!v41)
      {
        break;
      }

      if (*&v85[8] >= *&v85[12])
      {
        llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(v85, v96);
        if (++v40 >= v79)
        {
LABEL_133:
          if ((*(*a2 + 48))(a2, &v82))
          {
            result = mlir::FusedLoc::get(Context, *v85, *&v85[8], v82);
            goto LABEL_136;
          }

          break;
        }
      }

      else
      {
        *(*v85 + 8 * *&v85[8]) = v83;
        ++*&v85[8];
        if (++v40 >= v79)
        {
          goto LABEL_133;
        }
      }
    }

LABEL_135:
    result = 0;
LABEL_136:
    v36 = *v85;
    if (*v85 != &v85[16])
    {
LABEL_199:
      v73 = result;
      free(v36);
      return v73;
    }
  }

  return result;
}

uint64_t anonymous namespace::BuiltinDialectBytecodeInterface::readType(mlir::DialectInterface *a1, _WORD *a2)
{
  v72 = *MEMORY[0x277D85DE8];
  Context = mlir::DialectInterface::getContext(a1);
  v56 = 0;
  v5 = (*(*a2 + 72))(a2, &v56);
  result = 0;
  if (v5)
  {
    switch(v56)
    {
      case 0:
        v60 = 0;
        v7 = (*(*a2 + 72))(a2, &v60);
        result = 0;
        if (v7)
        {
          return mlir::IntegerType::get(Context, v60 >> 2, v60 & 3);
        }

        return result;
      case 1:
        return mlir::IndexType::get(Context, v4);
      case 2:
        v60 = &v61[1];
        v61[0] = 0x600000000;
        v67 = v69;
        v68 = 0x600000000;
        *&v70 = a2;
        if (mlir::DialectBytecodeReader::readList<mlir::Type,llvm::LogicalResult mlir::DialectBytecodeReader::readTypes<mlir::Type>(llvm::SmallVectorImpl<mlir::Type> &)::{lambda(mlir::Type&)#1}>(a2, &v60, &v70) & 1) != 0 && (*&v70 = a2, (mlir::DialectBytecodeReader::readList<mlir::Type,llvm::LogicalResult mlir::DialectBytecodeReader::readTypes<mlir::Type>(llvm::SmallVectorImpl<mlir::Type> &)::{lambda(mlir::Type&)#1}>(a2, &v67, &v70)))
        {
          mlir::TypeRange::TypeRange(&v70, v60, LODWORD(v61[0]));
          mlir::TypeRange::TypeRange(v66, v67, v68);
          result = mlir::FunctionType::get(Context, v70, *(&v70 + 1), v66[0], v66[1]);
        }

        else
        {
          result = 0;
        }

        if (v67 != v69)
        {
          v55 = result;
          free(v67);
          result = v55;
        }

        goto LABEL_154;
      case 3:
        return mlir::BFloat16Type::get(Context, v4);
      case 4:
        return mlir::Float16Type::get(Context, v4);
      case 5:
        return mlir::Float32Type::get(Context, v4);
      case 6:
        return mlir::Float64Type::get(Context, v4);
      case 7:
        return mlir::Float80Type::get(Context, v4);
      case 8:
        return mlir::Float128Type::get(Context, v4);
      case 9:
        v60 = 0;
        v24 = (*(*a2 + 64))(a2, &v60);
        result = 0;
        if (v24)
        {
          return mlir::ComplexType::get(v60);
        }

        return result;
      case 10:
        v9 = &v61[1];
        v59 = 0;
        v60 = &v61[1];
        v61[0] = 0x600000000;
        v58 = 0;
        v70 = 0uLL;
        if (((*(*a2 + 72))(a2, &v59) & 1) == 0)
        {
          goto LABEL_144;
        }

        if (v59 > HIDWORD(v61[0]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (!v59)
        {
          goto LABEL_124;
        }

        v44 = 0;
        while (1)
        {
          v66[0] = 0;
          v45 = (*(*a2 + 80))(a2, v66);
          v46 = (v45 & 1) != 0 ? v66[0] : 0;
          v67 = v46;
          LOBYTE(v68) = v45 & 1;
          if ((v45 & 1) == 0)
          {
            goto LABEL_144;
          }

          v47 = v61[0];
          if (LODWORD(v61[0]) >= HIDWORD(v61[0]))
          {
            llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(&v60, &v67);
            if (++v44 >= v59)
            {
LABEL_124:
              if (((*(*a2 + 64))(a2, &v58) & 1) != 0 && mlir::DialectBytecodeReader::readAttribute<mlir::MemRefLayoutAttrInterface>(a2, &v70))
              {
                v18 = v60;
                v19 = LODWORD(v61[0]);
                v20 = v58;
                v23 = *(&v70 + 1);
                v22 = v70;
                v21 = 0;
                goto LABEL_127;
              }

              goto LABEL_144;
            }
          }

          else
          {
            *(v60 + LODWORD(v61[0])) = v66[0];
            LODWORD(v61[0]) = v47 + 1;
            if (++v44 >= v59)
            {
              goto LABEL_124;
            }
          }
        }

      case 11:
        v57 = 0;
        v58 = 0;
        v9 = &v61[1];
        v60 = &v61[1];
        v61[0] = 0x600000000;
        v70 = 0uLL;
        if (((*(*a2 + 48))(a2, &v58) & 1) == 0)
        {
          goto LABEL_144;
        }

        v59 = 0;
        if (((*(*a2 + 72))(a2, &v59) & 1) == 0)
        {
          goto LABEL_144;
        }

        if (v59 > HIDWORD(v61[0]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (!v59)
        {
          goto LABEL_37;
        }

        v14 = 0;
        while (1)
        {
          v66[0] = 0;
          v15 = (*(*a2 + 80))(a2, v66);
          v16 = (v15 & 1) != 0 ? v66[0] : 0;
          v67 = v16;
          LOBYTE(v68) = v15 & 1;
          if ((v15 & 1) == 0)
          {
            goto LABEL_144;
          }

          v17 = v61[0];
          if (LODWORD(v61[0]) >= HIDWORD(v61[0]))
          {
            llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(&v60, &v67);
            if (++v14 >= v59)
            {
LABEL_37:
              if (((*(*a2 + 64))(a2, &v57) & 1) == 0 || !mlir::DialectBytecodeReader::readAttribute<mlir::MemRefLayoutAttrInterface>(a2, &v70))
              {
                goto LABEL_144;
              }

              v18 = v60;
              v19 = LODWORD(v61[0]);
              v20 = v57;
              v21 = v58;
              v23 = *(&v70 + 1);
              v22 = v70;
LABEL_127:
              result = mlir::MemRefType::get(v18, v19, v20, v22, v23, v21);
              goto LABEL_145;
            }
          }

          else
          {
            *(v60 + LODWORD(v61[0])) = v66[0];
            LODWORD(v61[0]) = v17 + 1;
            if (++v14 >= v59)
            {
              goto LABEL_37;
            }
          }
        }

      case 12:
        return mlir::NoneType::get(Context, v4);
      case 13:
        v9 = &v61[1];
        v59 = 0;
        v60 = &v61[1];
        v61[0] = 0x600000000;
        v66[0] = 0;
        if (((*(*a2 + 72))(a2, v66) & 1) == 0)
        {
          goto LABEL_144;
        }

        if (v66[0] > HIDWORD(v61[0]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (!v66[0])
        {
          goto LABEL_106;
        }

        v39 = 0;
        while (1)
        {
          *&v70 = 0;
          v40 = (*(*a2 + 80))(a2, &v70);
          v41 = (v40 & 1) != 0 ? v70 : 0;
          v67 = v41;
          LOBYTE(v68) = v40 & 1;
          if ((v40 & 1) == 0)
          {
            goto LABEL_144;
          }

          v42 = v61[0];
          if (LODWORD(v61[0]) >= HIDWORD(v61[0]))
          {
            llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(&v60, &v67);
            if (++v39 >= v66[0])
            {
LABEL_106:
              if (((*(*a2 + 64))(a2, &v59) & 1) == 0)
              {
                goto LABEL_144;
              }

              result = mlir::RankedTensorType::get(v60, LODWORD(v61[0]), v59, 0);
              goto LABEL_145;
            }
          }

          else
          {
            *(v60 + LODWORD(v61[0])) = v70;
            LODWORD(v61[0]) = v42 + 1;
            if (++v39 >= v66[0])
            {
              goto LABEL_106;
            }
          }
        }

      case 14:
        v9 = &v61[1];
        v59 = 0;
        v60 = &v61[1];
        v61[0] = 0x600000000;
        v58 = 0;
        if (((*(*a2 + 48))(a2, &v59) & 1) == 0)
        {
          goto LABEL_144;
        }

        v66[0] = 0;
        if (((*(*a2 + 72))(a2, v66) & 1) == 0)
        {
          goto LABEL_144;
        }

        if (v66[0] > HIDWORD(v61[0]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (!v66[0])
        {
          goto LABEL_21;
        }

        v10 = 0;
        while (1)
        {
          *&v70 = 0;
          v11 = (*(*a2 + 80))(a2, &v70);
          v12 = (v11 & 1) != 0 ? v70 : 0;
          v67 = v12;
          LOBYTE(v68) = v11 & 1;
          if ((v11 & 1) == 0)
          {
            goto LABEL_144;
          }

          v13 = v61[0];
          if (LODWORD(v61[0]) >= HIDWORD(v61[0]))
          {
            llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(&v60, &v67);
            if (++v10 >= v66[0])
            {
LABEL_21:
              if (((*(*a2 + 64))(a2, &v58) & 1) == 0)
              {
                goto LABEL_144;
              }

              result = mlir::RankedTensorType::get(v60, LODWORD(v61[0]), v58, v59);
              goto LABEL_145;
            }
          }

          else
          {
            *(v60 + LODWORD(v61[0])) = v70;
            LODWORD(v61[0]) = v13 + 1;
            if (++v10 >= v66[0])
            {
              goto LABEL_21;
            }
          }
        }

      case 15:
        v60 = &v61[1];
        v61[0] = 0x600000000;
        v67 = a2;
        if (mlir::DialectBytecodeReader::readList<mlir::Type,llvm::LogicalResult mlir::DialectBytecodeReader::readTypes<mlir::Type>(llvm::SmallVectorImpl<mlir::Type> &)::{lambda(mlir::Type&)#1}>(a2, &v60, &v67))
        {
          mlir::TypeRange::TypeRange(&v67, v60, LODWORD(v61[0]));
          result = mlir::TupleType::get(Context, v67, v68);
        }

        else
        {
          result = 0;
        }

LABEL_154:
        v52 = v60;
        if (v60 == &v61[1])
        {
          return result;
        }

        goto LABEL_146;
      case 16:
        v60 = 0;
        v8 = (*(*a2 + 64))(a2, &v60);
        result = 0;
        if (v8)
        {
          return mlir::UnrankedMemRefType::get(v60, 0);
        }

        return result;
      case 17:
        v60 = 0;
        v67 = 0;
        if (((*(*a2 + 48))(a2, &v60) & 1) == 0 || ((*(*a2 + 64))(a2, &v67) & 1) == 0)
        {
          return 0;
        }

        return mlir::UnrankedMemRefType::get(v67, v60);
      case 18:
        v60 = 0;
        v43 = (*(*a2 + 64))(a2, &v60);
        result = 0;
        if (v43)
        {
          return mlir::UnrankedTensorType::get(v60);
        }

        return result;
      case 19:
        v9 = &v61[1];
        v59 = 0;
        v60 = &v61[1];
        v61[0] = 0x600000000;
        v66[0] = 0;
        if (((*(*a2 + 72))(a2, v66) & 1) == 0)
        {
          goto LABEL_144;
        }

        if (v66[0] > HIDWORD(v61[0]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (!v66[0])
        {
          goto LABEL_142;
        }

        v48 = 0;
        while (1)
        {
          *&v70 = 0;
          v49 = (*(*a2 + 80))(a2, &v70);
          v50 = (v49 & 1) != 0 ? v70 : 0;
          v67 = v50;
          LOBYTE(v68) = v49 & 1;
          if ((v49 & 1) == 0)
          {
            break;
          }

          v51 = v61[0];
          if (LODWORD(v61[0]) >= HIDWORD(v61[0]))
          {
            llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(&v60, &v67);
            if (++v48 >= v66[0])
            {
LABEL_142:
              if ((*(*a2 + 64))(a2, &v59))
              {
                result = mlir::VectorType::get(v60, LODWORD(v61[0]), v59, 0, 0);
                goto LABEL_145;
              }

              break;
            }
          }

          else
          {
            *(v60 + LODWORD(v61[0])) = v70;
            LODWORD(v61[0]) = v51 + 1;
            if (++v48 >= v66[0])
            {
              goto LABEL_142;
            }
          }
        }

LABEL_144:
        result = 0;
        goto LABEL_145;
      case 20:
        v9 = &v62;
        v60 = &v62;
        *v61 = xmmword_2573695B0;
        v67 = v69;
        v68 = 0x600000000;
        v58 = 0;
        *&v70 = 0;
        if (((*(*a2 + 72))(a2, &v70) & 1) == 0)
        {
          goto LABEL_148;
        }

        if (v61[1] < v70)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        if (!v70)
        {
          goto LABEL_67;
        }

        v25 = 0;
        break;
      default:
        v69[8] = 257;
        (*(*a2 + 16))(&v60, a2, &v67);
        if (v60)
        {
          LODWORD(v70) = 3;
          *(&v70 + 1) = "unknown attribute code: ";
          v71 = 24;
          if (v63 >= v64)
          {
            if (v62 > &v70 || v62 + 24 * v63 <= &v70)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v34 = v62 + 24 * v63;
          v35 = v70;
          *(v34 + 16) = v71;
          *v34 = v35;
          v36 = ++v63;
          if (v60)
          {
            LODWORD(v70) = 5;
            *(&v70 + 1) = v56;
            if (v36 >= v64)
            {
              if (v62 > &v70 || v62 + 24 * v36 <= &v70)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v37 = v62 + 24 * v63;
            v38 = v70;
            *(v37 + 16) = v71;
            *v37 = v38;
            ++v63;
            if (v60)
            {
              mlir::InFlightDiagnostic::report(&v60);
            }
          }
        }

        if (v65 == 1)
        {
          mlir::Diagnostic::~Diagnostic(v61);
        }

        return 0;
    }

    while (1)
    {
      LOBYTE(v59) = 0;
      v26 = (*(*a2 + 120))(a2, &v59);
      v27 = v59;
      if ((v26 & 1) == 0)
      {
        v27 = 0;
      }

      LOWORD(v66[0]) = v27 | ((v26 & 1) << 8);
      if ((v26 & 1) == 0)
      {
        break;
      }

      v28 = v61[0];
      if (v61[0] >= v61[1])
      {
        llvm::SmallVectorTemplateBase<char,true>::growAndEmplaceBack<char const&>(&v60, v66);
        if (++v25 >= v70)
        {
LABEL_67:
          v59 = 0;
          if ((*(*a2 + 72))(a2, &v59))
          {
            if (v59 > HIDWORD(v68))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            if (v59)
            {
              v29 = 0;
              while (1)
              {
                v66[0] = 0;
                v30 = (*(*a2 + 80))(a2, v66);
                v31 = (v30 & 1) != 0 ? v66[0] : 0;
                *&v70 = v31;
                BYTE8(v70) = v30 & 1;
                if ((v30 & 1) == 0)
                {
                  break;
                }

                v32 = v68;
                if (v68 >= HIDWORD(v68))
                {
                  llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(&v67, &v70);
                  if (++v29 >= v59)
                  {
                    goto LABEL_80;
                  }
                }

                else
                {
                  *&v67[4 * v68] = v66[0];
                  LODWORD(v68) = v32 + 1;
                  if (++v29 >= v59)
                  {
                    goto LABEL_80;
                  }
                }
              }
            }

            else
            {
LABEL_80:
              if ((*(*a2 + 64))(a2, &v58))
              {
                result = mlir::VectorType::get(v67, v68, v58, v60, v61[0]);
                v33 = v67;
                if (v67 == v69)
                {
                  goto LABEL_145;
                }

                goto LABEL_149;
              }
            }
          }

          break;
        }
      }

      else
      {
        *(v60 + v61[0]) = v27;
        v61[0] = v28 + 1;
        if (++v25 >= v70)
        {
          goto LABEL_67;
        }
      }
    }

LABEL_148:
    result = 0;
    v33 = v67;
    if (v67 == v69)
    {
      goto LABEL_145;
    }

LABEL_149:
    v54 = result;
    free(v33);
    result = v54;
LABEL_145:
    v52 = v60;
    if (v60 != v9)
    {
LABEL_146:
      v53 = result;
      free(v52);
      return v53;
    }
  }

  return result;
}

uint64_t anonymous namespace::BuiltinDialectBytecodeInterface::writeAttribute(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v73 = *MEMORY[0x277D85DE8];
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v72.n128_u64[0] = a2;
    (*(*a3 + 48))(a3, 0);
    Value = mlir::ArrayAttr::getValue(&v72);
    v12 = v11;
    (*(*a3 + 48))(a3);
    if (v12)
    {
      v13 = 8 * v12;
      do
      {
        v14 = *Value++;
        (*(*a3 + 16))(a3, v14);
        v13 -= 8;
      }

      while (v13);
    }

    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id)
  {
    v72.n128_u64[0] = a2;
    (*(*a3 + 48))(a3, 10);
    Callee = mlir::CallSiteLoc::getCallee(&v72);
    (*(*a3 + 16))(a3, Callee);
    Caller = mlir::CallSiteLoc::getCaller(&v72);
    goto LABEL_33;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v72.n128_u64[0] = a2;
    (*(*a3 + 48))(a3, 17);
    ElementType = mlir::DenseArrayAttr::getElementType(&v72);
    (*(*a3 + 32))(a3, ElementType);
    Size = mlir::DenseArrayAttr::getSize(&v72);
    (*(*a3 + 48))(a3, Size);
    RawData = mlir::DenseArrayAttr::getRawData(&v72);
LABEL_36:
    (*(*a3 + 88))(a3, RawData, v20);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
  {
    v72.n128_u64[0] = a2;
    (*(*a3 + 48))(a3, 18);
    Type = mlir::DenseElementsAttr::getType(&v72);
    (*(*a3 + 32))(a3, Type);
    RawData = mlir::DenseElementsAttr::getRawData(&v72);
    goto LABEL_36;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
  {
    v71 = a2;
    (*(*a3 + 48))(a3, 16);
    v22 = mlir::DenseResourceElementsAttr::getType(&v71);
    (*(*a3 + 32))(a3, v22);
    RawHandle = mlir::DenseResourceElementsAttr::getRawHandle(&v71, &v72);
    (*(*a3 + 40))(a3, &v72, RawHandle);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
  {
    v71 = a2;
    (*(*a3 + 48))(a3, 19);
    v24 = mlir::DenseElementsAttr::getType(&v71);
    (*(*a3 + 32))(a3, v24);
    isSplat = mlir::DenseElementsAttr::isSplat(&v71);
    (*(*a3 + 48))(a3, isSplat);
    v72.n128_u64[0] = v71;
    v26 = mlir::DenseElementsAttr::isSplat(&v72);
    RawStringData = mlir::DenseElementsAttr::getRawStringData(&v72);
    v29 = RawStringData;
    if (v26)
    {
      (*(*a3 + 80))(a3, *RawStringData, RawStringData[1]);
    }

    else if (v28)
    {
      v36 = &RawStringData[2 * v28];
      do
      {
        v37 = *v29;
        v38 = v29[1];
        v29 += 2;
        (*(*a3 + 80))(a3, v37, v38);
      }

      while (v29 != v36);
    }

    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v71 = a2;
    (*(*a3 + 48))(a3, 1);
    v30 = mlir::DictionaryAttr::getValue(&v71);
    v32 = v31;
    (*(*a3 + 48))(a3);
    if (v32)
    {
      v33 = 16 * v32;
      do
      {
        v34 = *v30++;
        v72 = v34;
        Name = mlir::NamedAttribute::getName(&v72);
        (*(*a3 + 16))(a3, Name);
        (*(*a3 + 16))(a3, v72.n128_u64[1]);
        v33 -= 16;
      }

      while (v33);
    }

    return 1;
  }

  {
    if (v4 != mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id)
    {
      goto LABEL_10;
    }

LABEL_81:
    v72.n128_u64[0] = a2;
    (*(*a3 + 48))(a3, 21);
    Caller = mlir::DistinctAttr::getReferencedAttr(&v72);
    goto LABEL_33;
  }

  v70 = a2;
  mlir::AsmPrinter::Impl::printAttributeImpl();
  a2 = v70;
  if (v4 == mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id)
  {
    goto LABEL_81;
  }

LABEL_10:
  v5 = *(*a2 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id)
  {
    v72.n128_u64[0] = a2;
    (*(*a3 + 48))(a3, 11);
    Filename = mlir::FileLineColLoc::getFilename(&v72);
    (*(*a3 + 16))(a3, Filename);
    Line = mlir::FileLineColLoc::getLine(&v72);
    (*(*a3 + 48))(a3, Line);
    Column = mlir::FileLineColLoc::getColumn(&v72);
    (*(*a3 + 48))(a3, Column);
    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v72.n128_u64[0] = v6;
  if (v6)
  {
    v7 = a2;
    mlir::SymbolRefAttr::getNestedReferences(&v72);
    if (v8)
    {
      a2 = v7;
      v5 = *(*v7 + 136);
      goto LABEL_17;
    }

    v72.n128_u64[0] = v7;
    (*(*a3 + 48))(a3, 4);
    Caller = mlir::SymbolRefAttr::getRootReference(&v72);
LABEL_33:
    (*(*a3 + 16))(a3, Caller);
    return 1;
  }

LABEL_17:
  if (v5 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v71 = a2;
    (*(*a3 + 48))(a3, 9);
    v42 = mlir::FloatAttr::getType(&v71);
    (*(*a3 + 32))(a3, v42);
    mlir::FloatAttr::getValue(&v71, &v72);
    v43 = (*(*a3 + 72))(a3, &v72);
    v44 = v72.n128_u64[1];
    if (llvm::APFloatBase::PPCDoubleDouble(v43) == v44)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v72.n128_i8[8]);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v72.n128_i8[8]);
    }

    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id)
  {
    v72.n128_u64[0] = a2;
    if (!mlir::FusedLoc::getMetadata(&v72))
    {
      (*(*a3 + 48))(a3, 12);
      Locations = mlir::FusedLoc::getLocations(&v72);
      v47 = v46;
      (*(*a3 + 48))(a3);
      if (v47)
      {
        v48 = 8 * v47;
        do
        {
          v49 = *Locations++;
          (*(*a3 + 16))(a3, v49);
          v48 -= 8;
        }

        while (v48);
      }
    }

    if (!mlir::FusedLoc::getMetadata(&v72))
    {
      return 1;
    }

    (*(*a3 + 48))(a3, 13);
    v50 = mlir::FusedLoc::getLocations(&v72);
    v52 = v51;
    (*(*a3 + 48))(a3);
    if (v52)
    {
      v53 = 8 * v52;
      do
      {
        v54 = *v50++;
        (*(*a3 + 16))(a3, v54);
        v53 -= 8;
      }

      while (v53);
    }

    Caller = mlir::FusedLoc::getMetadata(&v72);
    goto LABEL_33;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v71 = a2;
    (*(*a3 + 48))(a3, 8);
    v55 = mlir::IntegerAttr::getType(&v71);
    (*(*a3 + 32))(a3, v55);
    mlir::IntegerAttr::getValue(&v71, &v72);
    (*(*a3 + 64))(a3, &v72);
    if (v72.n128_u32[2] >= 0x41 && v72.n128_u64[0])
    {
      MEMORY[0x259C63150](v72.n128_u64[0], 0x1000C8000313F17);
    }

    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id)
  {
    v72.n128_u64[0] = a2;
    (*(*a3 + 48))(a3, 14);
    v56 = mlir::NameLoc::getName(&v72);
    (*(*a3 + 16))(a3, v56);
    Caller = mlir::NameLoc::getChildLoc(&v72);
    goto LABEL_33;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id)
  {
    v72.n128_u64[0] = a2;
    (*(*a3 + 48))(a3, 20);
    v57 = mlir::SparseElementsAttr::getType(&v72);
    (*(*a3 + 32))(a3, v57);
    Indices = mlir::SparseElementsAttr::getIndices(&v72);
    (*(*a3 + 16))(a3, Indices);
    Caller = mlir::SparseElementsAttr::getValues(&v72);
    goto LABEL_33;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v72.n128_u64[0] = a2;
    if (*(*mlir::StringAttr::getType(&v72) + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
    {
      (*(*a3 + 48))(a3, 2);
      v59 = mlir::StringAttr::getValue(&v72);
      (*(*a3 + 80))(a3, v59, v60);
    }

    if (*(*mlir::StringAttr::getType(&v72) + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
    {
      return 1;
    }

    (*(*a3 + 48))(a3, 3);
    v61 = mlir::StringAttr::getValue(&v72);
    (*(*a3 + 80))(a3, v61, v62);
    v63 = mlir::StringAttr::getType(&v72);
    goto LABEL_77;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v72.n128_u64[0] = a2;
    (*(*a3 + 48))(a3, 5);
    RootReference = mlir::SymbolRefAttr::getRootReference(&v72);
    (*(*a3 + 16))(a3, RootReference);
    NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v72);
    v67 = v66;
    (*(*a3 + 48))(a3);
    if (v67)
    {
      v68 = 8 * v67;
      do
      {
        v69 = *NestedReferences++;
        (*(*a3 + 16))(a3, v69);
        v68 -= 8;
      }

      while (v68);
    }

    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v72.n128_u64[0] = a2;
    (*(*a3 + 48))(a3, 6);
    v63 = mlir::TypeAttr::getValue(&v72);
LABEL_77:
    (*(*a3 + 32))(a3, v63);
    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    (*(*a3 + 48))(a3, 7);
  }

  else
  {
    if (v5 != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
    {
      return 0;
    }

    (*(*a3 + 48))(a3, 15);
  }

  return 1;
}

uint64_t anonymous namespace::BuiltinDialectBytecodeInterface::writeType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id)
  {
    (*(*a3 + 48))(a3, 3);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v76 = a2;
    (*(*a3 + 48))(a3, 9);
    ElementType = mlir::ComplexType::getElementType(&v76);
LABEL_21:
    (*(*a3 + 32))(a3, ElementType);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    (*(*a3 + 48))(a3, 8);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
  {
    (*(*a3 + 48))(a3, 4);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
  {
    (*(*a3 + 48))(a3, 5);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    (*(*a3 + 48))(a3, 6);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id)
  {
    (*(*a3 + 48))(a3, 7);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v76 = a2;
    (*(*a3 + 48))(a3, 2);
    Inputs = mlir::FunctionType::getInputs(&v76);
    v9 = v8;
    (*(*a3 + 48))(a3);
    if (v9)
    {
      v10 = 8 * v9;
      do
      {
        v11 = *Inputs++;
        (*(*a3 + 32))(a3, v11);
        v10 -= 8;
      }

      while (v10);
    }

    Results = mlir::FunctionType::getResults(&v76);
    v14 = v13;
    (*(*a3 + 48))(a3);
    if (v14)
    {
      v15 = 8 * v14;
      do
      {
        v16 = *Results++;
        (*(*a3 + 32))(a3, v16);
        v15 -= 8;
      }

      while (v15);
    }

    return 1;
  }

  if (v4 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    if (v4 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v76 = a2;
      (*(*a3 + 48))(a3, 0);
      Width = mlir::IntegerType::getWidth(&v76);
      v18 = mlir::IntegerType::getSignedness(&v76) | (4 * Width);
      (*(*a3 + 48))(a3, v18);
      return 1;
    }

    if (v4 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v76 = a2;
      if (!mlir::MemRefType::getMemorySpace(&v76))
      {
        (*(*a3 + 48))(a3, 10);
        Shape = mlir::MemRefType::getShape(&v76);
        v21 = v20;
        (*(*a3 + 48))(a3);
        if (v21)
        {
          v22 = 8 * v21;
          do
          {
            v23 = *Shape++;
            (*(*a3 + 56))(a3, v23);
            v22 -= 8;
          }

          while (v22);
        }

        v24 = mlir::MemRefType::getElementType(&v76);
        (*(*a3 + 32))(a3, v24);
        Layout = mlir::MemRefType::getLayout(&v76);
        (*(*a3 + 16))(a3, Layout);
      }

      if (mlir::MemRefType::getMemorySpace(&v76))
      {
        (*(*a3 + 48))(a3, 11);
        MemorySpace = mlir::MemRefType::getMemorySpace(&v76);
        (*(*a3 + 16))(a3, MemorySpace);
        v27 = mlir::MemRefType::getShape(&v76);
        v29 = v28;
        (*(*a3 + 48))(a3);
        if (v29)
        {
          v30 = 8 * v29;
          do
          {
            v31 = *v27++;
            (*(*a3 + 56))(a3, v31);
            v30 -= 8;
          }

          while (v30);
        }

        v32 = mlir::MemRefType::getElementType(&v76);
        (*(*a3 + 32))(a3, v32);
        v33 = mlir::MemRefType::getLayout(&v76);
        (*(*a3 + 16))(a3, v33);
      }

      return 1;
    }

    if (v4 == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
    {
      (*(*a3 + 48))(a3, 12);
      return 1;
    }

    if (v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v76 = a2;
      if (!mlir::RankedTensorType::getEncoding(&v76))
      {
        (*(*a3 + 48))(a3, 13);
        v34 = mlir::RankedTensorType::getShape(&v76);
        v36 = v35;
        (*(*a3 + 48))(a3);
        if (v36)
        {
          v37 = 8 * v36;
          do
          {
            v38 = *v34++;
            (*(*a3 + 56))(a3, v38);
            v37 -= 8;
          }

          while (v37);
        }

        v39 = mlir::RankedTensorType::getElementType(&v76);
        (*(*a3 + 32))(a3, v39);
      }

      if (!mlir::RankedTensorType::getEncoding(&v76))
      {
        return 1;
      }

      (*(*a3 + 48))(a3, 14);
      Encoding = mlir::RankedTensorType::getEncoding(&v76);
      (*(*a3 + 16))(a3, Encoding);
      v41 = mlir::RankedTensorType::getShape(&v76);
      v43 = v42;
      (*(*a3 + 48))(a3);
      if (v43)
      {
        v44 = 8 * v43;
        do
        {
          v45 = *v41++;
          (*(*a3 + 56))(a3, v45);
          v44 -= 8;
        }

        while (v44);
      }

      ElementType = mlir::RankedTensorType::getElementType(&v76);
    }

    else
    {
      if (v4 == &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id)
      {
        v76 = a2;
        (*(*a3 + 48))(a3, 15);
        Types = mlir::TupleType::getTypes(&v76);
        v48 = v47;
        (*(*a3 + 48))(a3);
        if (v48)
        {
          v49 = 8 * v48;
          do
          {
            v50 = *Types++;
            (*(*a3 + 32))(a3, v50);
            v49 -= 8;
          }

          while (v49);
        }

        return 1;
      }

      if (v4 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
      {
        v76 = a2;
        if (!mlir::UnrankedMemRefType::getMemorySpace(&v76))
        {
          (*(*a3 + 48))(a3, 16);
          v51 = mlir::UnrankedMemRefType::getElementType(&v76);
          (*(*a3 + 32))(a3, v51);
        }

        if (!mlir::UnrankedMemRefType::getMemorySpace(&v76))
        {
          return 1;
        }

        (*(*a3 + 48))(a3, 17);
        v52 = mlir::UnrankedMemRefType::getMemorySpace(&v76);
        (*(*a3 + 16))(a3, v52);
        ElementType = mlir::UnrankedMemRefType::getElementType(&v76);
      }

      else if (v4 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v76 = a2;
        (*(*a3 + 48))(a3, 18);
        ElementType = mlir::UnrankedTensorType::getElementType(&v76);
      }

      else
      {
        if (v4 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
        {
          return 0;
        }

        v76 = a2;
        ScalableDims = mlir::VectorType::getScalableDims(&v76);
        v55 = v54;
        v56 = memchr(ScalableDims, 1, v54);
        if (!v56 || v56 == &ScalableDims[v55])
        {
          (*(*a3 + 48))(a3, 19);
          v57 = mlir::VectorType::getShape(&v76);
          v59 = v58;
          (*(*a3 + 48))(a3);
          if (v59)
          {
            v60 = 8 * v59;
            do
            {
              v61 = *v57++;
              (*(*a3 + 56))(a3, v61);
              v60 -= 8;
            }

            while (v60);
          }

          v62 = mlir::VectorType::getElementType(&v76);
          (*(*a3 + 32))(a3, v62);
        }

        v63 = mlir::VectorType::getScalableDims(&v76);
        v65 = v64;
        v66 = memchr(v63, 1, v64);
        if (!v66 || v66 == &v63[v65])
        {
          return 1;
        }

        (*(*a3 + 48))(a3, 20);
        v67 = mlir::VectorType::getScalableDims(&v76);
        v69 = v68;
        (*(*a3 + 48))(a3);
        for (; v69; --v69)
        {
          v70 = *v67++;
          (*(*a3 + 96))(a3, v70);
        }

        v71 = mlir::VectorType::getShape(&v76);
        v73 = v72;
        (*(*a3 + 48))(a3);
        if (v73)
        {
          v74 = 8 * v73;
          do
          {
            v75 = *v71++;
            (*(*a3 + 56))(a3, v75);
            v74 -= 8;
          }

          while (v74);
        }

        ElementType = mlir::VectorType::getElementType(&v76);
      }
    }

    goto LABEL_21;
  }

  (*(*a3 + 48))(a3, 1);
  return 1;
}

void mlir::BytecodeDialectInterface::readVersion(uint64_t a1@<X1>, void *a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v11 = "Dialect does not support versioning";
  v12 = 259;
  (*(*a1 + 16))(v13, a1, &v11);
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

    v3 = __p;
    if (__p)
    {
      v4 = v19;
      v5 = __p;
      if (v19 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v19 = v3;
      operator delete(v5);
    }

    v6 = v16;
    if (v16)
    {
      v7 = v17;
      v8 = v16;
      if (v17 != v16)
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
        v8 = v16;
      }

      v17 = v6;
      operator delete(v8);
    }

    if (v14 != &v15)
    {
      free(v14);
    }
  }

  *a2 = 0;
}

uint64_t mlir::DialectBytecodeReader::readList<mlir::Attribute,llvm::LogicalResult mlir::DialectBytecodeReader::readAttributes<mlir::Attribute>(llvm::SmallVectorImpl<mlir::Attribute> &)::{lambda(mlir::Attribute&)#1}>(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  if ((*(*a1 + 72))(a1, &v9))
  {
    if (v9 > *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (!v9)
    {
      return 1;
    }

    v5 = 0;
    while (1)
    {
      v8 = 0;
      if (((*(**a3 + 48))(*a3, &v8) & 1) == 0)
      {
        break;
      }

      v6 = *(a2 + 8);
      if (v6 >= *(a2 + 12))
      {
        llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(a2, &v8);
        if (++v5 >= v9)
        {
          return 1;
        }
      }

      else
      {
        *(*a2 + 8 * v6) = v8;
        *(a2 + 8) = v6 + 1;
        if (++v5 >= v9)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::DialectBytecodeReader::readList<mlir::FlatSymbolRefAttr,llvm::LogicalResult mlir::DialectBytecodeReader::readAttributes<mlir::FlatSymbolRefAttr>(llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::FlatSymbolRefAttr&)#1}>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = 0;
  if ((*(*a1 + 72))(a1, &v9))
  {
    if (v9 > *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (!v9)
    {
      return 1;
    }

    v5 = 0;
    while (1)
    {
      v8 = 0;
      if ((mlir::DialectBytecodeReader::readAttribute<mlir::FlatSymbolRefAttr>(*a3, &v8) & 1) == 0)
      {
        break;
      }

      v6 = *(a2 + 8);
      if (v6 >= *(a2 + 12))
      {
        llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(a2, &v8);
        if (++v5 >= v9)
        {
          return 1;
        }
      }

      else
      {
        *(*a2 + 8 * v6) = v8;
        ++*(a2 + 8);
        if (++v5 >= v9)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

void std::__optional_storage_base<llvm::APFloat,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::APFloat,false>>(_BYTE *a1, uint64_t a2)
{
  if (a1[32] == *(a2 + 32))
  {
    if (a1[32])
    {
      v3 = (a1 + 8);
      v4 = (a2 + 8);

      llvm::APFloat::Storage::operator=(v3, v4);
    }
  }

  else if (a1[32])
  {
    v5 = *(a1 + 1);
    if (llvm::APFloatBase::PPCDoubleDouble(a1) == v5)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat((a1 + 8));
      a1[32] = 0;
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat((a1 + 8));
      a1[32] = 0;
    }
  }

  else
  {
    v6 = *(a2 + 8);
    v7 = (a2 + 8);
    if (llvm::APFloatBase::PPCDoubleDouble(a1) == v6)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 8), v7);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat((a1 + 8), v7);
    }

    a1[32] = 1;
  }
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::LocationAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 48))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  if (mlir::LocationAttr::classof(v27))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v26[16] = 257;
  (*(*a1 + 16))(&v31, a1, v26);
  if (v31)
  {
    LODWORD(v28) = 3;
    *(&v28 + 1) = "expected ";
    v29 = 9;
    if (v34 >= v35)
    {
      if (v33 > &v28 || v33 + 24 * v34 <= &v28)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v33 + 24 * v34;
    v8 = v28;
    *(v7 + 2) = v29;
    *v7 = v8;
    ++v34;
  }

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::LocationAttr]";
  *(&v28 + 1) = 68;
  v9 = llvm::StringRef::find(&v28, "DesiredTypeName = ", 0x12uLL, 0);
  if (v31)
  {
    if (*(&v28 + 1) >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = *(&v28 + 1);
    }

    v11 = 18;
    if (*(&v28 + 1) - v10 < 0x12)
    {
      v11 = *(&v28 + 1) - v10;
    }

    v12 = *(&v28 + 1) - v10 - v11;
    if (v12 >= v12 - 1)
    {
      --v12;
    }

    v30 = 261;
    *&v28 = v28 + v10 + v11;
    *(&v28 + 1) = v12;
    mlir::Diagnostic::operator<<(&v32, &v28);
    if (v31)
    {
      LODWORD(v28) = 3;
      *(&v28 + 1) = ", but got: ";
      v29 = 11;
      if (v34 >= v35)
      {
        if (v33 > &v28 || v33 + 24 * v34 <= &v28)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v33 + 24 * v34;
      v14 = v28;
      *(v13 + 2) = v29;
      *v13 = v14;
      ++v34;
      if (v31)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v28, v27);
        if (v34 >= v35)
        {
          if (v33 > &v28 || v33 + 24 * v34 <= &v28)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v15 = v33 + 24 * v34;
        v16 = v28;
        *(v15 + 2) = v29;
        *v15 = v16;
        ++v34;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  v17 = result;
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
    result = v17;
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
      result = v17;
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
      result = v17;
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
      result = v17;
    }

    if (v33 != &v36)
    {
      free(v33);
      return v17;
    }
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readType<mlir::ShapedType>(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 64))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v27);
  *a2 = v4;
  a2[1] = v5;
  if (v4)
  {
    return 1;
  }

  v26[16] = 257;
  (*(*a1 + 16))(&v31, a1, v26);
  if (v31)
  {
    LODWORD(v28) = 3;
    *(&v28 + 1) = "expected ";
    v29 = 9;
    if (v34 >= v35)
    {
      if (v33 > &v28 || v33 + 24 * v34 <= &v28)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v33 + 24 * v34;
    v8 = v28;
    *(v7 + 2) = v29;
    *v7 = v8;
    ++v34;
  }

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ShapedType]";
  *(&v28 + 1) = 66;
  v9 = llvm::StringRef::find(&v28, "DesiredTypeName = ", 0x12uLL, 0);
  if (v31)
  {
    if (*(&v28 + 1) >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = *(&v28 + 1);
    }

    v11 = 18;
    if (*(&v28 + 1) - v10 < 0x12)
    {
      v11 = *(&v28 + 1) - v10;
    }

    v12 = *(&v28 + 1) - v10 - v11;
    if (v12 >= v12 - 1)
    {
      --v12;
    }

    v30 = 261;
    *&v28 = v28 + v10 + v11;
    *(&v28 + 1) = v12;
    mlir::Diagnostic::operator<<(&v32, &v28);
    if (v31)
    {
      LODWORD(v28) = 3;
      *(&v28 + 1) = ", but got: ";
      v29 = 11;
      if (v34 >= v35)
      {
        if (v33 > &v28 || v33 + 24 * v34 <= &v28)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v33 + 24 * v34;
      v14 = v28;
      *(v13 + 2) = v29;
      *v13 = v14;
      ++v34;
      if (v31)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v28, v27);
        if (v34 >= v35)
        {
          if (v33 > &v28 || v33 + 24 * v34 <= &v28)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v15 = v33 + 24 * v34;
        v16 = v28;
        *(v15 + 2) = v29;
        *v15 = v16;
        ++v34;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  v17 = result;
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
    result = v17;
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
      result = v17;
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
      result = v17;
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
      result = v17;
    }

    if (v33 != &v36)
    {
      free(v33);
      return v17;
    }
  }

  return result;
}

double mlir::DialectBytecodeReader::readResourceHandle<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  (*(*a1 + 128))(&v19);
  if ((v21 & 1) == 0)
  {
    *a2 = 0;
    *(a2 + 24) = 0;
    return *&v4;
  }

  v5 = *(&v19 + 1);
  {
    if (v5 != mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id)
    {
      goto LABEL_4;
    }

LABEL_33:
    *&v4 = v19;
    *a2 = v19;
    *(a2 + 16) = v20;
    *(a2 + 24) = 1;
    return *&v4;
  }

  mlir::detail::Parser::parseDenseResourceElementsAttr();
  if (v5 == mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id)
  {
    goto LABEL_33;
  }

LABEL_4:
  v18 = 257;
  (*(*a1 + 16))(v24, a1, v17);
  if (!v24[0])
  {
    *a2 = 0;
    *(a2 + 24) = 0;
    if (v34 != 1)
    {
      return *&v4;
    }

    goto LABEL_12;
  }

  LODWORD(v22) = 3;
  *(&v22 + 1) = "provided resource handle differs from the expected resource type";
  v23 = 64;
  if (v26 >= v27)
  {
    if (v25 > &v22 || v25 + 24 * v26 <= &v22)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = v25 + 24 * v26;
  v4 = v22;
  *(v6 + 2) = v23;
  *v6 = v4;
  ++v26;
  v7 = v24[0];
  *a2 = 0;
  *(a2 + 24) = 0;
  if (v7)
  {
    mlir::InFlightDiagnostic::report(v24);
  }

  if (v34 == 1)
  {
LABEL_12:
    if (v33 != &v34)
    {
      free(v33);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v32;
      v10 = __p;
      if (v32 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v32 = v8;
      operator delete(v10);
    }

    v11 = v29;
    if (v29)
    {
      v12 = v30;
      v13 = v29;
      if (v30 != v29)
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
        v13 = v29;
      }

      v30 = v11;
      operator delete(v13);
    }

    if (v25 != &v28)
    {
      free(v25);
    }
  }

  return *&v4;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::DenseElementsAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 48))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  if (mlir::DenseElementsAttr::classof(v27))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v26[16] = 257;
  (*(*a1 + 16))(&v31, a1, v26);
  if (v31)
  {
    LODWORD(v28) = 3;
    *(&v28 + 1) = "expected ";
    v29 = 9;
    if (v34 >= v35)
    {
      if (v33 > &v28 || v33 + 24 * v34 <= &v28)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v33 + 24 * v34;
    v8 = v28;
    *(v7 + 2) = v29;
    *v7 = v8;
    ++v34;
  }

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DenseElementsAttr]";
  *(&v28 + 1) = 73;
  v9 = llvm::StringRef::find(&v28, "DesiredTypeName = ", 0x12uLL, 0);
  if (v31)
  {
    if (*(&v28 + 1) >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = *(&v28 + 1);
    }

    v11 = 18;
    if (*(&v28 + 1) - v10 < 0x12)
    {
      v11 = *(&v28 + 1) - v10;
    }

    v12 = *(&v28 + 1) - v10 - v11;
    if (v12 >= v12 - 1)
    {
      --v12;
    }

    v30 = 261;
    *&v28 = v28 + v10 + v11;
    *(&v28 + 1) = v12;
    mlir::Diagnostic::operator<<(&v32, &v28);
    if (v31)
    {
      LODWORD(v28) = 3;
      *(&v28 + 1) = ", but got: ";
      v29 = 11;
      if (v34 >= v35)
      {
        if (v33 > &v28 || v33 + 24 * v34 <= &v28)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v33 + 24 * v34;
      v14 = v28;
      *(v13 + 2) = v29;
      *v13 = v14;
      ++v34;
      if (v31)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v28, v27);
        if (v34 >= v35)
        {
          if (v33 > &v28 || v33 + 24 * v34 <= &v28)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v15 = v33 + 24 * v34;
        v16 = v28;
        *(v15 + 2) = v29;
        *v15 = v16;
        ++v34;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  v17 = result;
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
    result = v17;
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
      result = v17;
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
      result = v17;
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
      result = v17;
    }

    if (v33 != &v36)
    {
      free(v33);
      return v17;
    }
  }

  return result;
}

uint64_t mlir::DialectBytecodeReader::readList<mlir::Type,llvm::LogicalResult mlir::DialectBytecodeReader::readTypes<mlir::Type>(llvm::SmallVectorImpl<mlir::Type> &)::{lambda(mlir::Type&)#1}>(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  if ((*(*a1 + 72))(a1, &v9))
  {
    if (v9 > *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (!v9)
    {
      return 1;
    }

    v5 = 0;
    while (1)
    {
      v8 = 0;
      if (((*(**a3 + 64))(*a3, &v8) & 1) == 0)
      {
        break;
      }

      v6 = *(a2 + 8);
      if (v6 >= *(a2 + 12))
      {
        llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(a2, &v8);
        if (++v5 >= v9)
        {
          return 1;
        }
      }

      else
      {
        *(*a2 + 8 * v6) = v8;
        *(a2 + 8) = v6 + 1;
        if (++v5 >= v9)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::MemRefLayoutAttrInterface>(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 48))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = llvm::DefaultDoCastIfPossible<mlir::MemRefLayoutAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::MemRefLayoutAttrInterface,mlir::Attribute,void>>::doCastIfPossible(v27);
  *a2 = v4;
  a2[1] = v5;
  if (v4)
  {
    return 1;
  }

  v26[16] = 257;
  (*(*a1 + 16))(&v31, a1, v26);
  if (v31)
  {
    LODWORD(v28) = 3;
    *(&v28 + 1) = "expected ";
    v29 = 9;
    if (v34 >= v35)
    {
      if (v33 > &v28 || v33 + 24 * v34 <= &v28)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v33 + 24 * v34;
    v8 = v28;
    *(v7 + 2) = v29;
    *v7 = v8;
    ++v34;
  }

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemRefLayoutAttrInterface]";
  *(&v28 + 1) = 81;
  v9 = llvm::StringRef::find(&v28, "DesiredTypeName = ", 0x12uLL, 0);
  if (v31)
  {
    if (*(&v28 + 1) >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = *(&v28 + 1);
    }

    v11 = 18;
    if (*(&v28 + 1) - v10 < 0x12)
    {
      v11 = *(&v28 + 1) - v10;
    }

    v12 = *(&v28 + 1) - v10 - v11;
    if (v12 >= v12 - 1)
    {
      --v12;
    }

    v30 = 261;
    *&v28 = v28 + v10 + v11;
    *(&v28 + 1) = v12;
    mlir::Diagnostic::operator<<(&v32, &v28);
    if (v31)
    {
      LODWORD(v28) = 3;
      *(&v28 + 1) = ", but got: ";
      v29 = 11;
      if (v34 >= v35)
      {
        if (v33 > &v28 || v33 + 24 * v34 <= &v28)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v33 + 24 * v34;
      v14 = v28;
      *(v13 + 2) = v29;
      *v13 = v14;
      ++v34;
      if (v31)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v28, v27);
        if (v34 >= v35)
        {
          if (v33 > &v28 || v33 + 24 * v34 <= &v28)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v15 = v33 + 24 * v34;
        v16 = v28;
        *(v15 + 2) = v29;
        *v15 = v16;
        ++v34;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  v17 = result;
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
    result = v17;
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
      result = v17;
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
      result = v17;
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
      result = v17;
    }

    if (v33 != &v36)
    {
      free(v33);
      return v17;
    }
  }

  return result;
}

void *llvm::DefaultDoCastIfPossible<mlir::MemRefLayoutAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::MemRefLayoutAttrInterface,mlir::Attribute,void>>::doCastIfPossible(void *result)
{
  v1 = *result;
  {
    v21 = v1;
    v23 = result;
    llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseMemRefType(void)::$_0>();
    result = v23;
    v2 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v3 = *(v21 + 8);
    v4 = *(v21 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
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
  if (v5 == &v3[2 * v4] || *v5 != v2 || !v5[1])
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v11 = *result;
  {
    v12 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    if (!v14)
    {
      return result;
    }
  }

  else
  {
    v22 = v11;
    v24 = result;
    llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseMemRefType(void)::$_0>();
    result = v24;
    v12 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v13 = *(v22 + 8);
    v14 = *(v22 + 16);
    if (!v14)
    {
      return result;
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
  return result;
}

uint64_t mlir::ComplexType::get(uint64_t a1)
{
  v4 = a1;
  Context = mlir::Type::getContext(&v4);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v5[0] = &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
  v5[1] = &Context;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir6detail18ComplexTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11ComplexTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v10[1] = v5;
  v9 = v4;
  v2 = 0x9DDFEA08EB382D69 * ((8 * ((v4 >> 4) ^ (v4 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v8 = &v9;
  v7[0] = &v9;
  v7[1] = v10;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v2 ^ (v2 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v2 ^ (v2 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ComplexTypeStorage * mlir::StorageUniquer::get<mlir::detail::ComplexTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::ComplexTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ComplexTypeStorage * mlir::StorageUniquer::get<mlir::detail::ComplexTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::ComplexTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v7);
}

uint64_t mlir::ComplexType::getChecked(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v10 = a3;
  Context = mlir::Type::getContext(&v10);
  v6 = v10;
  if ((mlir::ComplexType::verify(a1, a2, v10) & 1) == 0)
  {
    return 0;
  }

  v12 = Context;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
  v11[1] = &v12;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir6detail18ComplexTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11ComplexTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v16[1] = v11;
  v15 = v6;
  v8 = 0x9DDFEA08EB382D69 * ((8 * ((v6 >> 4) ^ (v6 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v13[0] = &v15;
  v13[1] = v16;
  v14 = &v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v8 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ComplexTypeStorage * mlir::StorageUniquer::get<mlir::detail::ComplexTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::ComplexTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ComplexTypeStorage * mlir::StorageUniquer::get<mlir::detail::ComplexTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::ComplexTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

uint64_t mlir::ComplexType::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v17 = a3;
  if (mlir::Type::isIntOrFloat(&v17))
  {
    return 1;
  }

  a1(v20, a2);
  if (v20[0])
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "invalid element type for complex";
    v19 = 32;
    if (v22 >= v23)
    {
      if (v21 > &v18 || v21 + 24 * v22 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v21 + 24 * v22;
    v7 = v18;
    *(v6 + 2) = v19;
    *v6 = v7;
    ++v22;
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  if (v20[0])
  {
    mlir::InFlightDiagnostic::report(v20);
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v28;
      v10 = __p;
      if (v28 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v28 = v8;
      operator delete(v10);
    }

    v11 = v25;
    if (v25)
    {
      v12 = v26;
      v13 = v25;
      if (v26 != v25)
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
        v13 = v25;
      }

      v26 = v11;
      operator delete(v13);
    }

    if (v21 != &v24)
    {
      free(v21);
    }
  }

  return v5;
}

uint64_t mlir::FunctionType::get(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v14 = a1;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a1);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id;
  v13[1] = &v14;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir6detail19FunctionTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_12FunctionTypeEJRNS1_9TypeRangeESC_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v17[1] = v13;
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v10 = llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(a2, 0, a2, a3);
  v11 = 0xBF58476D1CE4E5B9 * ((969526130 * llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(a4, 0, a4, a5)) | (v10 << 32));
  v15[0] = v18;
  v15[1] = v17;
  v16 = v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id, (v11 >> 31) ^ v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FunctionTypeStorage * mlir::StorageUniquer::get<mlir::detail::FunctionTypeStorage,mlir::TypeRange &,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::FunctionTypeStorage *)>,mlir::TypeID,mlir::TypeRange &,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FunctionTypeStorage * mlir::StorageUniquer::get<mlir::detail::FunctionTypeStorage,mlir::TypeRange &,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::FunctionTypeStorage *)>,mlir::TypeID,mlir::TypeRange &,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

uint64_t mlir::IntegerType::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, unsigned int a3)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!HIBYTE(a3))
  {
    return 1;
  }

  a1(v23, a2);
  if (v23[0])
  {
    LODWORD(v21) = 3;
    *(&v21 + 1) = "integer bitwidth is limited to ";
    v22 = 31;
    if (v25 >= v26)
    {
      if (v24 > &v21 || v24 + 24 * v25 <= &v21)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v3 = v24 + 24 * v25;
    v4 = v21;
    *(v3 + 2) = v22;
    *v3 = v4;
    v5 = ++v25;
    if (v23[0])
    {
      LODWORD(v21) = 5;
      *(&v21 + 1) = 0xFFFFFFLL;
      if (v5 >= v26)
      {
        if (v24 > &v21 || v24 + 24 * v5 <= &v21)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v6 = v24 + 24 * v25;
      v7 = v21;
      *(v6 + 2) = v22;
      *v6 = v7;
      v8 = ++v25;
      if (v23[0])
      {
        LODWORD(v21) = 3;
        *(&v21 + 1) = " bits";
        v22 = 5;
        if (v8 >= v26)
        {
          if (v24 > &v21 || v24 + 24 * v8 <= &v21)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = v24 + 24 * v25;
        v10 = v21;
        *(v9 + 2) = v22;
        *v9 = v10;
        ++v25;
      }
    }
  }

  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v31;
      v14 = __p;
      if (v31 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v31 = v12;
      operator delete(v14);
    }

    v15 = v28;
    if (v28)
    {
      v16 = v29;
      v17 = v28;
      if (v29 != v28)
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
        v17 = v28;
      }

      v29 = v15;
      operator delete(v17);
    }

    if (v24 != &v27)
    {
      free(v24);
    }
  }

  return v11;
}

uint64_t mlir::MemRefType::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = *MEMORY[0x277D85DE8];
  v45[0] = a6;
  v45[1] = a7;
  if (mlir::BaseMemRefType::isValidElementType(a5))
  {
    if (a4)
    {
      v13 = 8 * a4;
      v14 = a3;
      while (*v14 < 0x8000000000000001)
      {
        ++v14;
        v13 -= 8;
        if (!v13)
        {
          goto LABEL_6;
        }
      }

      a1(v48, a2);
      if (v48[0])
      {
        LODWORD(v46) = 3;
        *(&v46 + 1) = "invalid memref size";
        v47 = 19;
        if (v50 >= v51)
        {
          if (v49 > &v46 || v49 + 24 * v50 <= &v46)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v28 = v49 + 24 * v50;
        v29 = v46;
        *(v28 + 2) = v47;
        *v28 = v29;
        ++v50;
      }

      v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
      if (v48[0])
      {
        mlir::InFlightDiagnostic::report(v48);
      }

      if (v58 == 1)
      {
        if (v57 != &v58)
        {
          free(v57);
        }

        v30 = __p;
        if (__p)
        {
          v31 = v56;
          v32 = __p;
          if (v56 != __p)
          {
            do
            {
              v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
            }

            while (v31 != v30);
            v32 = __p;
          }

          v56 = v30;
          operator delete(v32);
        }

        v23 = v53;
        if (!v53)
        {
          goto LABEL_75;
        }

        v33 = v54;
        v25 = v53;
        if (v54 == v53)
        {
          goto LABEL_74;
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

        while (v33 != v23);
        goto LABEL_73;
      }
    }

    else
    {
LABEL_6:
      if ((mlir::MemRefLayoutAttrInterface::verifyLayout(v45, a3, a4, a1, a2) & 1) == 0)
      {
        return 0;
      }

      if (!a8)
      {
        return 1;
      }

      v15 = *(*a8 + 136);
      if (v15 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        return 1;
      }

      v16 = v15 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
      if (v16 || *(**a8 + 24) != &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id)
      {
        return 1;
      }

      a1(v48, a2);
      if (v48[0])
      {
        LODWORD(v46) = 3;
        *(&v46 + 1) = "unsupported memory space Attribute";
        v47 = 34;
        if (v50 >= v51)
        {
          if (v49 > &v46 || v49 + 24 * v50 <= &v46)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v36 = v49 + 24 * v50;
        v37 = v46;
        *(v36 + 2) = v47;
        *v36 = v37;
        ++v50;
      }

      v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
      if (v48[0])
      {
        mlir::InFlightDiagnostic::report(v48);
      }

      if (v58 == 1)
      {
        if (v57 != &v58)
        {
          free(v57);
        }

        v38 = __p;
        if (__p)
        {
          v39 = v56;
          v40 = __p;
          if (v56 != __p)
          {
            do
            {
              v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
            }

            while (v39 != v38);
            v40 = __p;
          }

          v56 = v38;
          operator delete(v40);
        }

        v23 = v53;
        if (!v53)
        {
          goto LABEL_75;
        }

        v41 = v54;
        v25 = v53;
        if (v54 == v53)
        {
LABEL_74:
          v54 = v23;
          operator delete(v25);
LABEL_75:
          if (v49 != &v52)
          {
            free(v49);
          }

          return v17;
        }

        do
        {
          v43 = *--v41;
          v42 = v43;
          *v41 = 0;
          if (v43)
          {
            MEMORY[0x259C63150](v42, 0x1000C8077774924);
          }
        }

        while (v41 != v23);
LABEL_73:
        v25 = v53;
        goto LABEL_74;
      }
    }
  }

  else
  {
    a1(v48, a2);
    if (v48[0])
    {
      LODWORD(v46) = 3;
      *(&v46 + 1) = "invalid memref element type";
      v47 = 27;
      if (v50 >= v51)
      {
        if (v49 > &v46 || v49 + 24 * v50 <= &v46)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v18 = v49 + 24 * v50;
      v19 = v46;
      *(v18 + 2) = v47;
      *v18 = v19;
      ++v50;
    }

    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
    if (v48[0])
    {
      mlir::InFlightDiagnostic::report(v48);
    }

    if (v58 == 1)
    {
      if (v57 != &v58)
      {
        free(v57);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v56;
        v22 = __p;
        if (v56 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v56 = v20;
        operator delete(v22);
      }

      v23 = v53;
      if (!v53)
      {
        goto LABEL_75;
      }

      v24 = v54;
      v25 = v53;
      if (v54 == v53)
      {
        goto LABEL_74;
      }

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
      goto LABEL_73;
    }
  }

  return v17;
}

uint64_t mlir::OpaqueType::get(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a1;
  Context = mlir::Attribute::getContext(&v11);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id;
  v12[1] = &Context;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir6detail17OpaqueTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10OpaqueTypeEJRNS1_10StringAttrERNS_9StringRefEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v17[1] = v12;
  v16[0] = v11;
  v16[1] = a2;
  v16[2] = a3;
  v6 = (v11 >> 4) ^ (v11 >> 9);
  v7 = llvm::hash_value(a2, a3);
  v8 = __ROR8__(v7 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ v6)));
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id, (-348639895 * ((v9 >> 47) ^ v9)) ^ v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::OpaqueTypeStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueTypeStorage,mlir::StringAttr &,llvm::StringRef &>(llvm::function_ref<void ()(mlir::detail::OpaqueTypeStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueTypeStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueTypeStorage,mlir::StringAttr &,llvm::StringRef &>(llvm::function_ref<void ()(mlir::detail::OpaqueTypeStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

void mlir::OpaqueType::getChecked(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  Context = mlir::Attribute::getContext(&v6);
  mlir::detail::StorageUserBase<mlir::OpaqueType,mlir::Type,mlir::detail::OpaqueTypeStorage,mlir::detail::TypeUniquer>::getChecked<mlir::StringAttr,llvm::StringRef>(a1, a2, Context, v6);
}

void mlir::OpaqueType::verify(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[32] = *MEMORY[0x277D85DE8];
  v3[0] = a3;
  mlir::StringAttr::getValue(v3);
  mlir::Dialect::isValidNamespace();
}

uint64_t mlir::RankedTensorType::get(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a3;
  Context = mlir::Type::getContext(&v17);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v18[0] = &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
  v18[1] = &Context;
  v23[0] = _ZN4llvm12function_refIFvPN4mlir6detail23RankedTensorTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_16RankedTensorTypeEJRNS_8ArrayRefIxEERNS1_4TypeERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS4_;
  v23[1] = v18;
  v22[0] = a1;
  v22[1] = a2;
  v8 = v17;
  v22[2] = v17;
  v22[3] = a4;
  v9 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a1, &a1[a2]);
  v10 = (v8 >> 4) ^ (v8 >> 9);
  v11 = 0x9AE16A3B2F90404FLL * ((a4 >> 4) ^ (a4 >> 9));
  v12 = __ROR8__(0xB492B66FBE98F273 * v9 - v10, 43);
  v13 = __ROR8__(v11 ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * v10;
  v14 = 0xB492B66FBE98F273 * v9 - v11 - 0xAE502812AA7333 + __ROR8__(v10 ^ 0xC949D7C7509E6557, 20) + 24;
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v13 + v12))) >> 47) ^ (0x9DDFEA08EB382D69 * (v14 ^ (v13 + v12))));
  v20[0] = v22;
  v20[1] = v23;
  v21 = v22;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id, -348639895 * ((v15 >> 47) ^ v15), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::RankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::RankedTensorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::RankedTensorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v21, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::RankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::RankedTensorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::RankedTensorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v20);
}

uint64_t mlir::RankedTensorType::getChecked(void (*a1)(void **__return_ptr, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = a5;
  Context = mlir::Type::getContext(&v13);
  return mlir::detail::StorageUserBase<mlir::RankedTensorType,mlir::TensorType,mlir::detail::RankedTensorTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait,mlir::ValueSemantics>::getChecked<llvm::ArrayRef<long long>,mlir::Type,mlir::Attribute>(a1, a2, Context, a3, a4, v13, a6);
}

uint64_t mlir::detail::StorageUserBase<mlir::RankedTensorType,mlir::TensorType,mlir::detail::RankedTensorTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait,mlir::ValueSemantics>::getChecked<llvm::ArrayRef<long long>,mlir::Type,mlir::Attribute>(void (*a1)(void **__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  if ((mlir::RankedTensorType::verify(a1, a2, a4, a5, a6, a7) & 1) == 0)
  {
    return 0;
  }

  v22 = a3;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a3);
  v21[0] = &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
  v21[1] = &v22;
  v26[0] = _ZN4llvm12function_refIFvPN4mlir6detail23RankedTensorTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_16RankedTensorTypeEJRNS_8ArrayRefIxEERNS1_4TypeERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS4_;
  v26[1] = v21;
  v25[0] = a4;
  v25[1] = a5;
  v25[2] = a6;
  v25[3] = a7;
  v13 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a4, &a4[a5]);
  v14 = (a6 >> 4) ^ (a6 >> 9);
  v15 = 0x9AE16A3B2F90404FLL * ((a7 >> 4) ^ (a7 >> 9));
  v16 = __ROR8__(0xB492B66FBE98F273 * v13 - v14, 43);
  v17 = __ROR8__(v15 ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * v14;
  v18 = __ROR8__(v14 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v15 - 0x4B6D499041670D8DLL * v13 + 24;
  v19 = 0x9DDFEA08EB382D69 * (v18 ^ ((0x9DDFEA08EB382D69 * ((v17 + v16) ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v17 + v16) ^ v18)));
  v23[0] = v25;
  v23[1] = v26;
  v24 = v25;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id, -348639895 * ((v19 >> 47) ^ v19), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::RankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::RankedTensorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::RankedTensorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v24, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::RankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::RankedTensorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::RankedTensorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v23);
}

uint64_t mlir::RankedTensorType::verify(void (*a1)(void **__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v40 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
LABEL_5:
    if (a6)
    {
      v28 = llvm::DefaultDoCastIfPossible<mlir::VerifiableTensorEncoding,mlir::Attribute,llvm::CastInfo<mlir::VerifiableTensorEncoding,mlir::Attribute,void>>::doCastIfPossible(a6);
      v29 = v13;
      if (v28 && (mlir::VerifiableTensorEncoding::verifyEncoding(&v28, a3, a4, a5, a1, a2) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    return checkTensorElementType(a1, a2, a5);
  }

  v11 = 8 * a4;
  v12 = a3;
  while (*v12 < 0x8000000000000001)
  {
    ++v12;
    v11 -= 8;
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  a1(&v28, a2);
  if (v28)
  {
    LODWORD(v26) = 3;
    *(&v26 + 1) = "invalid tensor dimension size";
    v27 = 29;
    if (v31 >= v32)
    {
      if (v30 > &v26 || v30 + 24 * v31 <= &v26)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = v30 + 24 * v31;
    v15 = v26;
    *(v14 + 2) = v27;
    *v14 = v15;
    ++v31;
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v28);
  v17 = result;
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
    result = v17;
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
      result = v17;
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
      result = v17;
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
      result = v17;
    }

    if (v30 != &v33)
    {
      free(v30);
      return v17;
    }
  }

  return result;
}

uint64_t mlir::TupleType::get(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v9 = a1;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id;
  v8[1] = &v9;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir6detail16TupleTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_9TupleTypeEJRNS1_9TypeRangeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v12[1] = v8;
  v13[0] = a2;
  v13[1] = a3;
  v6 = llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(a2, 0, a2, a3);
  v10[0] = v13;
  v10[1] = v12;
  v11 = v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t mlir::TupleType::get(mlir::TupleType *this, mlir::MLIRContext *a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  mlir::TypeRange::TypeRange(&v11, 0, 0);
  v7 = this;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(this);
  v6[0] = &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id;
  v6[1] = &v7;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir6detail16TupleTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_9TupleTypeEJNS1_9TypeRangeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESE_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSG_E_EEvlS4_;
  v10[1] = v6;
  v13[0] = v11;
  v13[1] = v12;
  v4 = llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(v11, 0, v11, v12);
  v8[0] = v13;
  v8[1] = v10;
  v9 = v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::UnrankedMemRefType::get(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v13 = a1;
  if (a2)
  {
    v3 = *(*a2 + 136);
    v4 = v3 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    v5 = v3 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id ? a2 : 0;
    v18[0] = v5;
    if (v4)
    {
      mlir::IntegerAttr::getValue(v18, &v19);
      v11 = v20;
      if (v20 >= 0x41)
      {
        if (v11 - llvm::APInt::countLeadingZerosSlowCase(&v19) >= 0x41)
        {
          if (v19)
          {
            MEMORY[0x259C63150](v19, 0x1000C8000313F17);
          }

          goto LABEL_6;
        }

        v12 = *v19;
        MEMORY[0x259C63150]();
        if (v12)
        {
          goto LABEL_6;
        }
      }

      else if (v19)
      {
        goto LABEL_6;
      }

      v2 = 0;
    }
  }

LABEL_6:
  Context = mlir::Type::getContext(&v13);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id;
  v14[1] = &Context;
  v19 = _ZN4llvm12function_refIFvPN4mlir6detail25UnrankedMemRefTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_18UnrankedMemRefTypeEJRNS1_4TypeERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v20 = v14;
  v18[0] = v13;
  v18[1] = v2;
  v7 = (v2 >> 4) ^ (v2 >> 9);
  v8 = __ROR8__(v7 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ (v13 >> 4) ^ (v13 >> 9));
  v16[0] = v18;
  v16[1] = &v19;
  v17 = v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)))) ^ v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::UnrankedMemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedMemRefTypeStorage,mlir::Type &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::UnrankedMemRefTypeStorage *)>,mlir::TypeID,mlir::Type &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::UnrankedMemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedMemRefTypeStorage,mlir::Type &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::UnrankedMemRefTypeStorage *)>,mlir::TypeID,mlir::Type &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
}

uint64_t mlir::detail::skipDefaultMemorySpace(uint64_t result)
{
  if (result)
  {
    v1 = *(*result + 136);
    v2 = v1 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    v3 = v1 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id ? result : 0;
    v9 = v3;
    if (v2)
    {
      v4 = result;
      mlir::IntegerAttr::getValue(&v9, &v7);
      v5 = v8;
      if (v8 >= 0x41)
      {
        if (v5 - llvm::APInt::countLeadingZerosSlowCase(&v7) >= 0x41)
        {
          if (v7)
          {
            MEMORY[0x259C63150](v7, 0x1000C8000313F17);
          }

          return v4;
        }

        v6 = *v7;
        MEMORY[0x259C63150]();
        result = v4;
        if (v6)
        {
          return result;
        }
      }

      else
      {
        result = v4;
        if (v7)
        {
          return result;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t mlir::UnrankedMemRefType::getChecked(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v14 = a3;
  if (a4)
  {
    v7 = *(*a4 + 136);
    v8 = v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    v9 = v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id ? a4 : 0;
    v17 = v9;
    if (v8)
    {
      mlir::IntegerAttr::getValue(&v17, &v15);
      v12 = v16;
      if (v16 >= 0x41)
      {
        if (v12 - llvm::APInt::countLeadingZerosSlowCase(&v15) >= 0x41)
        {
          if (v15)
          {
            MEMORY[0x259C63150](v15, 0x1000C8000313F17);
          }

          goto LABEL_6;
        }

        v13 = *v15;
        MEMORY[0x259C63150](v15);
        if (v13)
        {
          goto LABEL_6;
        }
      }

      else if (v15)
      {
        goto LABEL_6;
      }

      v4 = 0;
    }
  }

LABEL_6:
  Context = mlir::Type::getContext(&v14);
  return mlir::detail::StorageUserBase<mlir::UnrankedMemRefType,mlir::BaseMemRefType,mlir::detail::UnrankedMemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getChecked<mlir::Type,mlir::Attribute>(a1, a2, Context, v14, v4);
}

uint64_t mlir::detail::StorageUserBase<mlir::UnrankedMemRefType,mlir::BaseMemRefType,mlir::detail::UnrankedMemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getChecked<mlir::Type,mlir::Attribute>(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, uint64_t *a4, uint64_t a5)
{
  if ((mlir::UnrankedMemRefType::verify(a1, a2, a4, a5) & 1) == 0)
  {
    return 0;
  }

  v14 = a3;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a3);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id;
  v13[1] = &v14;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail25UnrankedMemRefTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_18UnrankedMemRefTypeEJRNS1_4TypeERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v18[1] = v13;
  v17[0] = a4;
  v17[1] = a5;
  v9 = (a5 >> 4) ^ (a5 >> 9);
  v10 = __ROR8__(v9 + 16, 16);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ (a4 >> 4) ^ (a4 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 32) >> 15) ^ (-348639895 * (v10 ^ (v11 >> 47) ^ v11)))) ^ v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::UnrankedMemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedMemRefTypeStorage,mlir::Type &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::UnrankedMemRefTypeStorage *)>,mlir::TypeID,mlir::Type &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::UnrankedMemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedMemRefTypeStorage,mlir::Type &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::UnrankedMemRefTypeStorage *)>,mlir::TypeID,mlir::Type &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

uint64_t mlir::UnrankedMemRefType::get(uint64_t a1, unsigned int a2)
{
  v7 = a1;
  Context = mlir::Type::getContext(&v7);
  if (!a2)
  {
    return mlir::UnrankedMemRefType::get(v7, 0);
  }

  v4 = mlir::IntegerType::get(Context, 64, 0);
  v5 = mlir::IntegerAttr::get(v4, a2);
  return mlir::UnrankedMemRefType::get(v7, v5);
}

uint64_t mlir::detail::wrapIntegerMemorySpace(mlir::detail *this, uint64_t *a2, mlir::MLIRContext *a3)
{
  if (!this)
  {
    return 0;
  }

  v3 = this;
  v4 = mlir::IntegerType::get(a2, 64, 0);

  return mlir::IntegerAttr::get(v4, v3);
}

uint64_t mlir::UnrankedMemRefType::getChecked(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v9 = a3;
  Context = mlir::Type::getContext(&v9);
  if (!a4)
  {
    return mlir::UnrankedMemRefType::get(v9, 0);
  }

  v6 = mlir::IntegerType::get(Context, 64, 0);
  v7 = mlir::IntegerAttr::get(v6, a4);
  return mlir::UnrankedMemRefType::get(v9, v7);
}

uint64_t mlir::UnrankedMemRefType::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v42 = *MEMORY[0x277D85DE8];
  if (mlir::BaseMemRefType::isValidElementType(a3))
  {
    if (!a4)
    {
      return 1;
    }

    v7 = *(*a4 + 136);
    if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      return 1;
    }

    v8 = v7 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
    if (v8 || *(**a4 + 24) != &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id)
    {
      return 1;
    }

    a1(v31, a2);
    if (v31[0])
    {
      LODWORD(v29) = 3;
      *(&v29 + 1) = "unsupported memory space Attribute";
      v30 = 34;
      if (v33 >= v34)
      {
        if (v32 > &v29 || v32 + 24 * v33 <= &v29)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v20 = v32 + 24 * v33;
      v21 = v29;
      *(v20 + 2) = v30;
      *v20 = v21;
      ++v33;
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
    if (v31[0])
    {
      mlir::InFlightDiagnostic::report(v31);
    }

    if (v41 == 1)
    {
      if (v40 != &v41)
      {
        free(v40);
      }

      v22 = __p;
      if (__p)
      {
        v23 = v39;
        v24 = __p;
        if (v39 != __p)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v39 = v22;
        operator delete(v24);
      }

      v15 = v36;
      if (!v36)
      {
        goto LABEL_50;
      }

      v25 = v37;
      v17 = v36;
      if (v37 == v36)
      {
LABEL_49:
        v37 = v15;
        operator delete(v17);
LABEL_50:
        if (v32 != &v35)
        {
          free(v32);
        }

        return v9;
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

      while (v25 != v15);
LABEL_48:
      v17 = v36;
      goto LABEL_49;
    }
  }

  else
  {
    a1(v31, a2);
    if (v31[0])
    {
      LODWORD(v29) = 3;
      *(&v29 + 1) = "invalid memref element type";
      v30 = 27;
      if (v33 >= v34)
      {
        if (v32 > &v29 || v32 + 24 * v33 <= &v29)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10 = v32 + 24 * v33;
      v11 = v29;
      *(v10 + 2) = v30;
      *v10 = v11;
      ++v33;
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
    if (v31[0])
    {
      mlir::InFlightDiagnostic::report(v31);
    }

    if (v41 == 1)
    {
      if (v40 != &v41)
      {
        free(v40);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v39;
        v14 = __p;
        if (v39 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v39 = v12;
        operator delete(v14);
      }

      v15 = v36;
      if (!v36)
      {
        goto LABEL_50;
      }

      v16 = v37;
      v17 = v36;
      if (v37 == v36)
      {
        goto LABEL_49;
      }

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
      goto LABEL_48;
    }
  }

  return v9;
}

uint64_t mlir::UnrankedTensorType::get(uint64_t a1)
{
  v4 = a1;
  Context = mlir::Type::getContext(&v4);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v5[0] = &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v5[1] = &Context;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir6detail25UnrankedTensorTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_18UnrankedTensorTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v10[1] = v5;
  v9 = v4;
  v2 = 0x9DDFEA08EB382D69 * ((8 * ((v4 >> 4) ^ (v4 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v8 = &v9;
  v7[0] = &v9;
  v7[1] = v10;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v2 ^ (v2 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v2 ^ (v2 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::UnrankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedTensorTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::UnrankedTensorTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::UnrankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedTensorTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::UnrankedTensorTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v7);
}

uint64_t mlir::UnrankedTensorType::getChecked(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v10 = a3;
  Context = mlir::Type::getContext(&v10);
  v6 = v10;
  if ((checkTensorElementType(a1, a2, v10) & 1) == 0)
  {
    return 0;
  }

  v12 = Context;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v11[1] = &v12;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir6detail25UnrankedTensorTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_18UnrankedTensorTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v16[1] = v11;
  v15 = v6;
  v8 = 0x9DDFEA08EB382D69 * ((8 * ((v6 >> 4) ^ (v6 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v13[0] = &v15;
  v13[1] = v16;
  v14 = &v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v8 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::UnrankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedTensorTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::UnrankedTensorTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::UnrankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedTensorTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::UnrankedTensorTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

uint64_t mlir::VectorType::get(void *a1, size_t a2, uint64_t a3, void *a4, size_t a5)
{
  v28[5] = *MEMORY[0x277D85DE8];
  v19 = a3;
  v26 = v28;
  v27 = xmmword_2573695B0;
  if (a5)
  {
    v7 = a5;
  }

  else if (a2)
  {
    if (a2 >= 0x29)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    a4 = v28;
    bzero(v28, a2);
    v7 = a2;
    *&v27 = a2;
  }

  else
  {
    v7 = 0;
    a4 = v28;
  }

  Context = mlir::Type::getContext(&v19);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v20[0] = &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
  v20[1] = &Context;
  v25[0] = _ZN4llvm12function_refIFvPN4mlir6detail17VectorTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10VectorTypeEJRNS_8ArrayRefIxEERNS1_4TypeERNSB_IbEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS4_;
  v25[1] = v20;
  v24[0] = a1;
  v24[1] = a2;
  v10 = v19;
  v24[2] = v19;
  v24[3] = a4;
  v24[4] = v7;
  v11 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a1, &a1[a2]);
  v12 = (v10 >> 4) ^ (v10 >> 9);
  v13 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a4, a4 + v7);
  v14 = 0xB492B66FBE98F273 * v11 - 0xAE502812AA7333 + __ROR8__(v12 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * v13 + 24;
  v15 = (__ROR8__(0xB492B66FBE98F273 * v11 - v12, 43) - 0x3C5A37A36834CED9 * v12 + __ROR8__((0x9AE16A3B2F90404FLL * v13) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v14;
  v16 = 0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * v15) >> 47) ^ (0x9DDFEA08EB382D69 * v15));
  v22[0] = v24;
  v22[1] = v25;
  v23 = v24;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id, -348639895 * ((v16 >> 47) ^ v16), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::VectorTypeStorage * mlir::StorageUniquer::get<mlir::detail::VectorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::VectorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v23, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::VectorTypeStorage * mlir::StorageUniquer::get<mlir::detail::VectorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::VectorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v22);
  if (v26 != v28)
  {
    v18 = result;
    free(v26);
    return v18;
  }

  return result;
}

uint64_t mlir::VectorType::getChecked(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, unint64_t *a3, size_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v19[5] = *MEMORY[0x277D85DE8];
  v16 = a5;
  v17 = v19;
  v18 = xmmword_2573695B0;
  if (a7)
  {
    v11 = a7;
  }

  else if (a4)
  {
    if (a4 >= 0x29)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    a6 = v19;
    bzero(v19, a4);
    v11 = a4;
    *&v18 = a4;
  }

  else
  {
    v11 = 0;
    a6 = v19;
  }

  Context = mlir::Type::getContext(&v16);
  result = mlir::detail::StorageUserBase<mlir::VectorType,mlir::Type,mlir::detail::VectorTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait,mlir::ValueSemantics>::getChecked<llvm::ArrayRef<long long>,mlir::Type,llvm::ArrayRef<BOOL>>(a1, a2, Context, a3, a4, v16, a6, v11);
  if (v17 != v19)
  {
    v15 = result;
    free(v17);
    return v15;
  }

  return result;
}

uint64_t mlir::detail::StorageUserBase<mlir::VectorType,mlir::Type,mlir::detail::VectorTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait,mlir::ValueSemantics>::getChecked<llvm::ArrayRef<long long>,mlir::Type,llvm::ArrayRef<BOOL>>(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, unint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  if ((mlir::VectorType::verifyInvariantsImpl(a1, a2, a3, a4, a6) & 1) == 0 || (mlir::VectorType::verify(a1, a2, a4, a5, a6, a7, a8) & 1) == 0)
  {
    return 0;
  }

  v25 = a3;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a3);
  v24[0] = &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
  v24[1] = &v25;
  v29[0] = _ZN4llvm12function_refIFvPN4mlir6detail17VectorTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10VectorTypeEJRNS_8ArrayRefIxEERNS1_4TypeERNSB_IbEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS4_;
  v29[1] = v24;
  v28[0] = a4;
  v28[1] = a5;
  v28[2] = a6;
  v28[3] = a7;
  v28[4] = a8;
  v17 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a4, &a4[a5]);
  v18 = (a6 >> 4) ^ (a6 >> 9);
  v19 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a7, a7 + a8);
  v20 = __ROR8__(v18 ^ 0xC949D7C7509E6557, 20) - 0x4B6D499041670D8DLL * v17 - 0xAE502812AA7333 - 0x9AE16A3B2F90404FLL * v19 + 24;
  v21 = (__ROR8__(0xB492B66FBE98F273 * v17 - v18, 43) - 0x3C5A37A36834CED9 * v18 + __ROR8__((0x9AE16A3B2F90404FLL * v19) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v20;
  v22 = 0x9DDFEA08EB382D69 * (v20 ^ ((0x9DDFEA08EB382D69 * v21) >> 47) ^ (0x9DDFEA08EB382D69 * v21));
  v26[0] = v28;
  v26[1] = v29;
  v27 = v28;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id, -348639895 * ((v22 >> 47) ^ v22), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::VectorTypeStorage * mlir::StorageUniquer::get<mlir::detail::VectorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::VectorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v27, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::VectorTypeStorage * mlir::StorageUniquer::get<mlir::detail::VectorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::VectorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v26);
}

uint64_t mlir::VectorType::verifyInvariantsImpl(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = *(*a5 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  v10 = 1;
  if (v5 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    a1(v24, a2);
    if (v24[0])
    {
      LODWORD(v22) = 3;
      *(&v22 + 1) = "failed to verify 'elementType': integer or index or floating-point";
      v23 = 66;
      if (v26 >= v27)
      {
        if (v25 > &v22 || v25 + 24 * v26 <= &v22)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v25 + 24 * v26;
      v13 = v22;
      *(v12 + 2) = v23;
      *v12 = v13;
      ++v26;
      if (v24[0])
      {
        mlir::InFlightDiagnostic::report(v24);
      }
    }

    if (v34 == 1)
    {
      if (v33 != &v34)
      {
        free(v33);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v32;
        v16 = __p;
        if (v32 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v32 = v14;
        operator delete(v16);
      }

      v17 = v29;
      if (v29)
      {
        v18 = v30;
        v19 = v29;
        if (v30 != v29)
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
          v19 = v29;
        }

        v30 = v17;
        operator delete(v19);
      }

      if (v25 != &v28)
      {
        free(v25);
      }
    }

    return 0;
  }

  return v10;
}

uint64_t mlir::VectorType::verifyInvariants(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (mlir::VectorType::verifyInvariantsImpl(a1, a2, a3, a4, a5))
  {
    return mlir::VectorType::verify(a1, a2, a3, a4, a5, a6, a7) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::VectorType::verify(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v85 = *MEMORY[0x277D85DE8];
  v7 = *(*a5 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    if (a4)
    {
      v26 = 0;
      v27 = &a3[a4];
      while (a3[v26] > 0)
      {
        if (a4 == ++v26)
        {
          goto LABEL_61;
        }
      }

      a1(&v73, a2);
      if (v73)
      {
        LODWORD(v71) = 3;
        *(&v71 + 1) = "vector types must have positive constant sizes but got ";
        v72 = 55;
        if (v76 >= v77)
        {
          if (v75 > &v71 || v75 + 24 * v76 <= &v71)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v51 = v75 + 24 * v76;
        v52 = v71;
        *(v51 + 2) = v72;
        *v51 = v52;
        ++v76;
        if (v73)
        {
          *&v71 = ", ";
          llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<long long,6u>>(llvm::SmallVector<long long,6u> const&,char const*)::{lambda(llvm::SmallVector<long long,6u> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<long long,6u>>(llvm::SmallVector<long long,6u> const&,char const*)::{lambda(void)#1},void>(a3, v27, v74, v74, &v71);
        }
      }

      v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v73);
      if (v73)
      {
        mlir::InFlightDiagnostic::report(&v73);
      }

      if (v84 == 1)
      {
        if (v83 != &v84)
        {
          free(v83);
        }

        v53 = __p;
        if (__p)
        {
          v54 = v82;
          v55 = __p;
          if (v82 != __p)
          {
            do
            {
              v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
            }

            while (v54 != v53);
            v55 = __p;
          }

          v82 = v53;
          operator delete(v55);
        }

        v45 = v79;
        if (!v79)
        {
          goto LABEL_131;
        }

        v56 = v80;
        v47 = v79;
        if (v80 == v79)
        {
          goto LABEL_130;
        }

        do
        {
          v58 = *--v56;
          v57 = v58;
          *v56 = 0;
          if (v58)
          {
            MEMORY[0x259C63150](v57, 0x1000C8077774924);
          }
        }

        while (v56 != v45);
        goto LABEL_129;
      }
    }

    else
    {
LABEL_61:
      if (a7 == a4)
      {
        return 1;
      }

      a1(&v73, a2);
      if (v73)
      {
        LODWORD(v71) = 3;
        *(&v71 + 1) = "number of dims must match, got ";
        v72 = 31;
        if (v76 >= v77)
        {
          if (v75 > &v71 || v75 + 24 * v76 <= &v71)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v31 = v75 + 24 * v76;
        v32 = v71;
        *(v31 + 2) = v72;
        *v31 = v32;
        v33 = ++v76;
        if (v73)
        {
          LODWORD(v71) = 5;
          *(&v71 + 1) = a7;
          if (v33 >= v77)
          {
            if (v75 > &v71 || v75 + 24 * v33 <= &v71)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v34 = v75 + 24 * v76;
          v35 = v71;
          *(v34 + 2) = v72;
          *v34 = v35;
          v36 = ++v76;
          if (v73)
          {
            LODWORD(v71) = 3;
            *(&v71 + 1) = " and ";
            v72 = 5;
            if (v36 >= v77)
            {
              if (v75 > &v71 || v75 + 24 * v36 <= &v71)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v37 = v75 + 24 * v76;
            v38 = v71;
            *(v37 + 2) = v72;
            *v37 = v38;
            v39 = ++v76;
            if (v73)
            {
              LODWORD(v71) = 5;
              *(&v71 + 1) = a4;
              if (v39 >= v77)
              {
                if (v75 > &v71 || v75 + 24 * v39 <= &v71)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v40 = v75 + 24 * v76;
              v41 = v71;
              *(v40 + 2) = v72;
              *v40 = v41;
              ++v76;
            }
          }
        }
      }

      v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v73);
      if (v73)
      {
        mlir::InFlightDiagnostic::report(&v73);
      }

      if (v84 == 1)
      {
        if (v83 != &v84)
        {
          free(v83);
        }

        v42 = __p;
        if (__p)
        {
          v43 = v82;
          v44 = __p;
          if (v82 != __p)
          {
            do
            {
              v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
            }

            while (v43 != v42);
            v44 = __p;
          }

          v82 = v42;
          operator delete(v44);
        }

        v45 = v79;
        if (!v79)
        {
          goto LABEL_131;
        }

        v46 = v80;
        v47 = v79;
        if (v80 == v79)
        {
          goto LABEL_130;
        }

        do
        {
          v49 = *--v46;
          v48 = v49;
          *v46 = 0;
          if (v49)
          {
            MEMORY[0x259C63150](v48, 0x1000C8077774924);
          }
        }

        while (v46 != v45);
        goto LABEL_129;
      }
    }
  }

  else
  {
    a1(&v73, a2);
    if (v73)
    {
      LODWORD(v71) = 3;
      *(&v71 + 1) = "vector elements must be int/index/float type but got ";
      v72 = 53;
      if (v76 >= v77)
      {
        if (v75 > &v71 || v75 + 24 * v76 <= &v71)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v60 = v75 + 24 * v76;
      v61 = v71;
      *(v60 + 2) = v72;
      *v60 = v61;
      ++v76;
      if (v73)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v71, a5);
        if (v76 >= v77)
        {
          if (v75 > &v71 || v75 + 24 * v76 <= &v71)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v62 = v75 + 24 * v76;
        v63 = v71;
        *(v62 + 2) = v72;
        *v62 = v63;
        ++v76;
      }
    }

    v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v73);
    if (v73)
    {
      mlir::InFlightDiagnostic::report(&v73);
    }

    if (v84 == 1)
    {
      if (v83 != &v84)
      {
        free(v83);
      }

      v64 = __p;
      if (__p)
      {
        v65 = v82;
        v66 = __p;
        if (v82 != __p)
        {
          do
          {
            v65 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v65 - 1);
          }

          while (v65 != v64);
          v66 = __p;
        }

        v82 = v64;
        operator delete(v66);
      }

      v45 = v79;
      if (!v79)
      {
        goto LABEL_131;
      }

      v67 = v80;
      v47 = v79;
      if (v80 == v79)
      {
LABEL_130:
        v80 = v45;
        operator delete(v47);
LABEL_131:
        if (v75 != &v78)
        {
          free(v75);
        }

        return v28;
      }

      do
      {
        v69 = *--v67;
        v68 = v69;
        *v67 = 0;
        if (v69)
        {
          MEMORY[0x259C63150](v68, 0x1000C8077774924);
        }
      }

      while (v67 != v45);
LABEL_129:
      v47 = v79;
      goto LABEL_130;
    }
  }

  return v28;
}

BOOL mlir::isValidVectorTypeElementType(uint64_t a1)
{
  v1 = *(*a1 + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v1 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v1 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

uint64_t mlir::IntegerType::scaleElementBitwidth(mlir::IntegerType *this, int a2)
{
  if (!a2)
  {
    return 0;
  }

  Context = mlir::Type::getContext(this);
  v5 = *(*this + 8);

  return mlir::IntegerType::get(Context, (v5 & 0x3FFFFFFF) * a2, v5 >> 30);
}

uint64_t mlir::FloatType::getWidth(mlir::FloatType *this)
{
  if (*(**this + 136) == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id)
  {
    return 32;
  }

  FloatSemantics = mlir::FloatType::getFloatSemantics(this);

  return llvm::APFloatBase::semanticsSizeInBits(FloatSemantics);
}

void *mlir::FloatType::getFloatSemantics(llvm::APFloatBase *this)
{
  v1 = *(**this + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return llvm::APFloatBase::Float4E2M1FN(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id)
  {
    return llvm::APFloatBase::Float6E2M3FN(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return llvm::APFloatBase::Float6E3M2FN(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id)
  {
    return llvm::APFloatBase::Float8E5M2(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return llvm::APFloatBase::Float8E4M3(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
  {
    return llvm::APFloatBase::Float8E4M3FN(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    return llvm::APFloatBase::Float8E5M2FNUZ(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id)
  {
    return llvm::APFloatBase::Float8E4M3FNUZ(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id)
  {
    return llvm::APFloatBase::Float8E4M3B11FNUZ(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id)
  {
    return llvm::APFloatBase::Float8E3M4(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id)
  {
    return llvm::APFloatBase::BFloat(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
  {
    return llvm::APFloatBase::IEEEhalf(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id)
  {
    return llvm::APFloatBase::FloatTF32(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
  {
    return llvm::APFloatBase::IEEEsingle(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return llvm::APFloatBase::IEEEdouble(this);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id)
  {
    return llvm::APFloatBase::x87DoubleExtended(this);
  }

  return llvm::APFloatBase::IEEEquad(this);
}

uint64_t mlir::FloatType::scaleElementBitwidth(mlir::FloatType *this, int a2)
{
  if (!a2)
  {
    return 0;
  }

  Context = mlir::Type::getContext(this);
  if (!mlir::Type::isF16(this) && !mlir::Type::isBF16(this))
  {
LABEL_9:
    isF32 = mlir::Type::isF32(this);
    if (a2 == 2 && isF32)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (a2 != 4)
  {
    if (a2 == 2)
    {

      return mlir::Float32Type::get(Context, v5);
    }

    goto LABEL_9;
  }

LABEL_11:

  return mlir::Float64Type::get(Context, v5);
}

uint64_t mlir::FloatType::getFPMantissaWidth(mlir::FloatType *this)
{
  FloatSemantics = mlir::FloatType::getFloatSemantics(this);

  return llvm::APFloatBase::semanticsPrecision(FloatSemantics);
}

uint64_t mlir::FunctionType::clone(mlir::Type *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  Context = mlir::Type::getContext(a1);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id;
  v13[1] = &Context;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir6detail19FunctionTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_12FunctionTypeEJRNS1_9TypeRangeESC_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v17[1] = v13;
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v10 = llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(a2, 0, a2, a3);
  v11 = 0xBF58476D1CE4E5B9 * ((969526130 * llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(a4, 0, a4, a5)) | (v10 << 32));
  v15[0] = v18;
  v15[1] = v17;
  v16 = v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id, (v11 >> 31) ^ v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FunctionTypeStorage * mlir::StorageUniquer::get<mlir::detail::FunctionTypeStorage,mlir::TypeRange &,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::FunctionTypeStorage *)>,mlir::TypeID,mlir::TypeRange &,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FunctionTypeStorage * mlir::StorageUniquer::get<mlir::detail::FunctionTypeStorage,mlir::TypeRange &,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::FunctionTypeStorage *)>,mlir::TypeID,mlir::TypeRange &,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

uint64_t mlir::FunctionType::getWithArgsAndResults(mlir::Type *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v41 = *MEMORY[0x277D85DE8];
  v35[0] = v36;
  v35[1] = 0x600000000;
  v33[0] = v34;
  v33[1] = 0x600000000;
  mlir::TypeRange::TypeRange(&v37, *(*a1 + 16), *(*a1 + 8));
  inserted = mlir::insertTypesInto(v37, v38, a2, a3, a4, a5, v35);
  v19 = v18;
  mlir::TypeRange::TypeRange(&v37, *(*a1 + 16) + 8 * *(*a1 + 8), *(*a1 + 12));
  v20 = mlir::insertTypesInto(v37, v38, a6, a7, a9, a10, v33);
  v22 = v21;
  Context = mlir::Type::getContext(a1);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v28[0] = &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id;
  v28[1] = &Context;
  v32[0] = _ZN4llvm12function_refIFvPN4mlir6detail19FunctionTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_12FunctionTypeEJRNS1_9TypeRangeESC_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v32[1] = v28;
  v37 = inserted;
  v38 = v19;
  v39 = v20;
  v40 = v22;
  v24 = llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(inserted, 0, inserted, v19);
  v25 = 0xBF58476D1CE4E5B9 * ((969526130 * llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(v20, 0, v20, v22)) | (v24 << 32));
  v30[0] = &v37;
  v30[1] = v32;
  v31 = &v37;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id, (v25 >> 31) ^ v25, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FunctionTypeStorage * mlir::StorageUniquer::get<mlir::detail::FunctionTypeStorage,mlir::TypeRange &,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::FunctionTypeStorage *)>,mlir::TypeID,mlir::TypeRange &,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v31, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FunctionTypeStorage * mlir::StorageUniquer::get<mlir::detail::FunctionTypeStorage,mlir::TypeRange &,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::FunctionTypeStorage *)>,mlir::TypeID,mlir::TypeRange &,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v30);
  if (v33[0] != v34)
  {
    free(v33[0]);
  }

  if (v35[0] != v36)
  {
    free(v35[0]);
  }

  return ParametricStorageTypeImpl;
}

uint64_t mlir::FunctionType::getWithoutArgsAndResults(mlir::FunctionType *this, const llvm::BitVector *a2, const llvm::BitVector *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v24[0] = v25;
  v24[1] = 0x600000000;
  v22[0] = v23;
  v22[1] = 0x600000000;
  mlir::TypeRange::TypeRange(&v26, *(*this + 16), *(*this + 8));
  v6 = mlir::filterTypesOut(v26, v27, a2, v24);
  v8 = v7;
  mlir::TypeRange::TypeRange(&v26, *(*this + 16) + 8 * *(*this + 8), *(*this + 12));
  v9 = mlir::filterTypesOut(v26, v27, a3, v22);
  v11 = v10;
  Context = mlir::Type::getContext(this);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v17[0] = &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id;
  v17[1] = &Context;
  v21[0] = _ZN4llvm12function_refIFvPN4mlir6detail19FunctionTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_12FunctionTypeEJRNS1_9TypeRangeESC_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v21[1] = v17;
  v26 = v6;
  v27 = v8;
  v28 = v9;
  v29 = v11;
  v13 = llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(v6, 0, v6, v8);
  v14 = 0xBF58476D1CE4E5B9 * ((969526130 * llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(v9, 0, v9, v11)) | (v13 << 32));
  v19[0] = &v26;
  v19[1] = v21;
  v20 = &v26;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id, (v14 >> 31) ^ v14, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FunctionTypeStorage * mlir::StorageUniquer::get<mlir::detail::FunctionTypeStorage,mlir::TypeRange &,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::FunctionTypeStorage *)>,mlir::TypeID,mlir::TypeRange &,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v20, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FunctionTypeStorage * mlir::StorageUniquer::get<mlir::detail::FunctionTypeStorage,mlir::TypeRange &,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::FunctionTypeStorage *)>,mlir::TypeID,mlir::TypeRange &,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v19);
  if (v22[0] != v23)
  {
    free(v22[0]);
  }

  if (v24[0] != v25)
  {
    free(v24[0]);
  }

  return ParametricStorageTypeImpl;
}

BOOL mlir::VectorType::isValidElementType(uint64_t a1)
{
  v1 = *(*a1 + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v1 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v1 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

uint64_t mlir::VectorType::scaleElementBitwidth(mlir::VectorType *this, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(*this + 24);
  v5 = *(*v4 + 136);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v7 = *(*this + 24);
  }

  else
  {
    v7 = 0;
  }

  v31 = v7;
  if (v6)
  {
    Context = mlir::Type::getContext(&v31);
    v30 = mlir::IntegerType::get(Context, (*(v31 + 8) & 0x3FFFFFFFu) * a2, *(v31 + 8) >> 30);
    v27 = *this;
    if (v30)
    {
      v26 = v30;
      return mlir::VectorType::get(*(v27 + 8), *(v27 + 16), v26, *(v27 + 32), *(v27 + 40));
    }

    v4 = *(v27 + 24);
  }

  v8 = *(*v4 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    v31 = v4;
    v25 = mlir::FloatType::scaleElementBitwidth(&v31, a2);
    if (v25)
    {
      v26 = v25;
      v27 = *this;
      return mlir::VectorType::get(*(v27 + 8), *(v27 + 16), v26, *(v27 + 32), *(v27 + 40));
    }
  }

  return 0;
}

uint64_t mlir::VectorType::cloneWith(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*a1 + 8);
  v4 = (*a1 + 16);
  if (*(a2 + 16))
  {
    v4 = (a2 + 8);
    v3 = a2;
  }

  return mlir::VectorType::get(*v3, *v4, a3, *(*a1 + 32), *(*a1 + 40));
}

uint64_t mlir::TensorType::getElementType(mlir::TensorType *this)
{
  v1 = *this;
  v2 = *(**this + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    return *(v1 + 24);
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return *(v1 + 8);
  }

  return 0;
}

uint64_t mlir::TensorType::cloneWith(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*(**a1 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (*(a2 + 16))
    {
      v4 = *a2;
      v5 = v3[4];
      v6 = *(a2 + 8);
    }

    else
    {
      v4 = v3[1];
      v6 = v3[2];
      v5 = v3[4];
    }

    return mlir::RankedTensorType::get(v4, v6, a3, v5);
  }

  if (*(a2 + 16))
  {
    v4 = *a2;
    v6 = *(a2 + 8);
    v5 = 0;

    return mlir::RankedTensorType::get(v4, v6, a3, v5);
  }

  v10 = a3;
  Context = mlir::Type::getContext(&v10);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v11[1] = &Context;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir6detail25UnrankedTensorTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_18UnrankedTensorTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v16[1] = v11;
  v15 = v10;
  v9 = 0x9DDFEA08EB382D69 * ((8 * ((v10 >> 4) ^ (v10 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v13[0] = &v15;
  v13[1] = v16;
  v14 = &v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v9 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::UnrankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedTensorTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::UnrankedTensorTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::UnrankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedTensorTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::UnrankedTensorTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

uint64_t mlir::TensorType::clone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a2;
  v5[1] = a3;
  v6 = 1;
  return mlir::TensorType::cloneWith(a1, v5, a4);
}

uint64_t mlir::TensorType::clone(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v7 = 1;
  v3 = *a1;
  v4 = *(**a1 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    return mlir::TensorType::cloneWith(a1, v6, *(v3 + 24));
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return mlir::TensorType::cloneWith(a1, v6, *(v3 + 8));
  }

  return mlir::TensorType::cloneWith(a1, v6, 0);
}

BOOL mlir::TensorType::isValidElementType(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v2 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return *(*v1 + 24) != &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id;
  }

  return result;
}

uint64_t checkTensorElementType(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = *(*a3 + 136);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  if (v3 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id && *(**a3 + 24) == &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id)
  {
    a1(v26, a2);
    if (v26[0])
    {
      LODWORD(v24) = 3;
      *(&v24 + 1) = "invalid tensor element type: ";
      v25 = 29;
      if (v28 >= v29)
      {
        if (v27 > &v24 || v27 + 24 * v28 <= &v24)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v9 = v27 + 24 * v28;
      v10 = v24;
      *(v9 + 2) = v25;
      *v9 = v10;
      ++v28;
      if (v26[0])
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v24, a3);
        if (v28 >= v29)
        {
          if (v27 > &v24 || v27 + 24 * v28 <= &v24)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v27 + 24 * v28;
        v12 = v24;
        *(v11 + 2) = v25;
        *v11 = v12;
        ++v28;
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
    if (v26[0])
    {
      v13 = result;
      mlir::InFlightDiagnostic::report(v26);
      result = v13;
    }

    if (v36 == 1)
    {
      v23 = result;
      if (v35 != &v36)
      {
        free(v35);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v34;
        v16 = __p;
        if (v34 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v34 = v14;
        operator delete(v16);
      }

      v17 = v31;
      if (v31)
      {
        v18 = v32;
        v19 = v31;
        if (v32 != v31)
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
          v19 = v31;
        }

        v32 = v17;
        operator delete(v19);
      }

      result = v23;
      if (v27 != &v30)
      {
        free(v27);
        return v23;
      }
    }
  }

  return result;
}

uint64_t mlir::BaseMemRefType::getElementType(mlir::BaseMemRefType *this)
{
  v1 = *this;
  v2 = *(**this + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    return *(v1 + 24);
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    return *(v1 + 8);
  }

  return 0;
}

uint64_t mlir::BaseMemRefType::cloneWith(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*(**a1 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    v4 = (v3 + 1);
    v5 = v3[4];
    v6 = v3[5];
    v7 = v3[6];
    if (*(a2 + 16))
    {
      v8 = (a2 + 8);
    }

    else
    {
      v8 = (v3 + 2);
    }

    if (*(a2 + 16))
    {
      v4 = a2;
    }

    v9 = *v4;
    v10 = *v8;
    return mlir::MemRefType::get(v9, v10, a3, v5, v6, v7);
  }

  if (*(a2 + 16))
  {
    v9 = *a2;
    v10 = *(a2 + 8);
    v7 = v3[2];
    v5 = 0;
    v6 = 0;
    return mlir::MemRefType::get(v9, v10, a3, v5, v6, v7);
  }

  return mlir::UnrankedMemRefType::get(a3, v3[2]);
}