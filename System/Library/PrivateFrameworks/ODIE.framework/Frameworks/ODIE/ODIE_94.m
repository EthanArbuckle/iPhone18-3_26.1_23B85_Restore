void mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "map";
    v7[1] = 3;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v7 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 1;
  if (v8)
  {
    v9 = v7[1];
    if (v9)
    {
      if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v9, "map", 3, a4, a5))
      {
        return 0;
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "map", 3uLL);
    if (v11)
    {
      v12 = *(v10 + 8);
      if (v12)
      {
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
        {
          a5(&v19, a6);
          if (v19)
          {
            if (v19)
            {
              v17 = 0;
              v18 = v12;
              v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v17, 1);
              v14 = v21 + 24 * v22;
              v15 = *v13;
              *(v14 + 16) = *(v13 + 16);
              *v14 = v15;
              ++v22;
            }
          }

          goto LABEL_4;
        }

        *a3 = v12;
      }
    }

    result = 1;
    goto LABEL_13;
  }

  a5(&v19, a6);
  if (v19)
  {
    mlir::Diagnostic::operator<<<42ul>(v20, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  result = 0;
LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v13 = v15;
  v14 = 0x300000000;
  if (v4)
  {
    v5 = *(**v4 + 32);
    v12 = 261;
    v11[0] = "map";
    v11[1] = 3;
    v6 = mlir::StringAttr::get(v5, v11, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v6, v4);
    v7 = v13;
    if (v14)
    {
      v8 = mlir::DictionaryAttr::get(v3, v13, v14);
      v7 = v13;
    }

    else
    {
      v8 = 0;
    }

    if (v7 != v15)
    {
      free(v7);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineLoadOp>,mlir::OpTrait::OneResult<mlir::affine::AffineLoadOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::affine::AffineLoadOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineLoadOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::affine::AffineLoadOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineLoadOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineLoadOp>,mlir::affine::AffineReadOpInterface::Trait<mlir::affine::AffineLoadOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineLoadOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineLoadOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineLoadOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
  *v2 = mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::getMemRef;
  v2[1] = mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::getMemRefType;
  v2[2] = mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::getMapOperands;
  v2[3] = mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::getAffineMap;
  v2[4] = mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::getValue;
  v3 = mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::getMapOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 72);
    v3 = *(a2 + 68) - 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 + 32;
}

uint64_t mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC23C60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23C60))
  {
    Op = llvm::getTypeName<mlir::affine::AffineReadOpInterface>();
    qword_27FC23C58 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(Op, v2);
    __cxa_guard_release(&qword_27FC23C60);
  }

  return qword_27FC23C58;
}

uint64_t llvm::getTypeName<mlir::affine::AffineReadOpInterface>()
{
  if ((atomic_load_explicit(&qword_27FC23C78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23C78))
  {
    qword_27FC23C68 = llvm::detail::getTypeNameImpl<mlir::affine::AffineReadOpInterface>();
    unk_27FC23C70 = v1;
    __cxa_guard_release(&qword_27FC23C78);
  }

  return qword_27FC23C68;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::AffineReadOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::AffineReadOpInterface]";
  v6 = 97;
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

void mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::getAffineMapAttrForMemRef;
  v3 = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::getAffineMapAttrForMemRef(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a2 + 24) + 32);
  v8 = 261;
  v7[0] = "map";
  v7[1] = 3;
  result = mlir::StringAttr::get(v4, v7, a3);
  v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>::getEffects(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>();
  v10 = *(a2 + 72);
  v11 = v5;
  v9 = 0;
  v8 = 0;
  v7 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
  return llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a3, &v11, &v10, &v9, &v8, &v7);
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, mlir::affine::AffineLoadOp *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40[4] = *MEMORY[0x277D85DE8];
  if (mlir::memref::foldMemRefCast(a2, 0))
  {
    if (*(a2 + 9))
    {
      v7 = (a2 - 16) | 4;
      goto LABEL_4;
    }

LABEL_16:
    result = 0;
    goto LABEL_17;
  }

  v9 = *(mlir::affine::AffineLoadOp::getODSOperands(a2, 0) + 24);
  if ((~*(v9 + 8) & 7) == 0)
  {
    v9 = 0;
  }

  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = *(v9 + 8) & 7;
  if (v10 == 6)
  {
    v11 = v9 + 24 * *(v9 + 16);
    v12 = v11 + 120;
    if (v11 == -120)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v12 = v9 + 16 * v10 + 16;
  }

  if (*(*(v12 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::memref::GetGlobalOp,void>::id)
  {
    goto LABEL_16;
  }

  result = mlir::Operation::getParentWithTrait<mlir::OpTrait::SymbolTable>(v12);
  if (!result)
  {
    goto LABEL_17;
  }

  v14 = mlir::SymbolTable::lookupSymbolIn(result, *(v12 + 16 * ((*(v12 + 44) >> 23) & 1) + 64));
  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = *(*(v14 + 48) + 16);
  v16 = v15 == &mlir::detail::TypeIDResolver<mlir::memref::GlobalOp,void>::id;
  v17 = v15 == &mlir::detail::TypeIDResolver<mlir::memref::GlobalOp,void>::id ? v14 : 0;
  v35 = v17;
  if (!v16)
  {
    goto LABEL_24;
  }

  ConstantInitValue = mlir::memref::GlobalOp::getConstantInitValue(&v35);
  if (!ConstantInitValue)
  {
    goto LABEL_24;
  }

  v19 = *(*ConstantInitValue + 136);
  if (v19 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
  {
    v7 = ConstantInitValue;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v21 = *(*v7 + 136);
    v22 = v21 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
    if (v22 && *(v7 + 24) == 1)
    {
      v7 = mlir::DenseElementsAttr::getSplatValue<mlir::Attribute>(v7) & 0xFFFFFFFFFFFFFFFBLL;
      goto LABEL_4;
    }

    v23 = *(*(a2 + 2 * ((*(a2 + 11) >> 23) & 1) + 8) + 8);
    v24 = *(v23 + 8);
    if (v24)
    {
      v25 = v23 + 24;
      v26 = 8 * v24;
      while (*(*v25 + 8) == 5)
      {
        v25 += 8;
        v26 -= 8;
        if (!v26)
        {
          goto LABEL_44;
        }
      }

LABEL_24:
      v7 = 0;
      goto LABEL_4;
    }

LABEL_44:
    v34 = *(*(a2 + 2 * ((*(a2 + 11) >> 23) & 1) + 8) + 8);
    mlir::AffineMap::getConstantResults(&v34, &v36);
    llvm::to_vector<4u,llvm::iterator_range<llvm::mapped_iterator<long long *,mlir::affine::AffineLoadOp::fold(mlir::affine::AffineLoadOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0,unsigned long long>>>(&v39, v36, v36 + 8 * v37);
    if (v36 != v38)
    {
      free(v36);
    }

    v27 = *(v7 + 8);
    v28 = *(v7 + 16);
    v29 = (*(v28 + 24))(v28, v27);
    if (v30)
    {
      v31 = 8 * v30;
      v32 = 1;
      do
      {
        v33 = *v29++;
        v32 *= v33;
        v31 -= 8;
      }

      while (v31);
    }

    else
    {
      v32 = 1;
    }

    v36 = v7;
    v37 = 0;
    v38[0] = v7;
    v38[1] = v32;
    v38[2] = v27;
    v38[3] = v28;
    v7 = mlir::detail::ElementsAttrRange<mlir::DenseElementsAttr::AttributeElementIterator>::operator[](&v36, v39) & 0xFFFFFFFFFFFFFFFBLL;
    if (v39 != v40)
    {
      free(v39);
    }
  }

LABEL_4:
  if (v7 < 8)
  {
    goto LABEL_16;
  }

  if ((a2 - 16) != (v7 & ((v7 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v7);
  }

  result = 1;
LABEL_17:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[11] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineReadOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[10] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineReadOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC23C88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23C88))
  {
    v1 = llvm::getTypeName<mlir::affine::AffineReadOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineReadOpInterface::Trait>(void)::Empty>>();
    qword_27FC23C80 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC23C88);
  }

  return qword_27FC23C80;
}

uint64_t llvm::getTypeName<mlir::affine::AffineReadOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineReadOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC23CA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23CA0))
  {
    qword_27FC23C90 = llvm::detail::getTypeNameImpl<mlir::affine::AffineReadOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineReadOpInterface::Trait>(void)::Empty>>();
    *algn_27FC23C98 = v1;
    __cxa_guard_release(&qword_27FC23CA0);
  }

  return qword_27FC23C90;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::AffineReadOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineReadOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::AffineReadOpInterface::Trait<Empty>]";
  v6 = 111;
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

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v24[2] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, " ", 1uLL);
  }

  else
  {
    *v8 = 32;
    ++*(v7 + 4);
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (v10 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 91);
  }

  else
  {
    *(v9 + 4) = v10 + 1;
    *v10 = 91;
  }

  Attr = mlir::Operation::getAttr(a2, "map", 3uLL);
  if (Attr)
  {
    v12 = Attr;
    if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v13 = *(a2 + 72);
        v14 = *(a2 + 68) - 1;
      }

      else
      {
        v13 = 0;
        v14 = -1;
      }

      (*(*a3 + 240))(a3, Attr, (v13 + 32) & 0xFFFFFFFFFFFFFFF9 | 2, v14);
    }
  }

  v15 = (*(*a3 + 16))(a3, v12);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 93);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 93;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v18 = *(AttrDictionary + 8);
  v19 = *(AttrDictionary + 16);
  v24[0] = "map";
  v24[1] = 3;
  (*(*a3 + 192))(a3, v18, v19, v24, 1);
  v20 = (*(*a3 + 16))(a3);
  v21 = *(v20 + 4);
  if ((*(v20 + 3) - v21) > 2)
  {
    *(v21 + 2) = 32;
    *v21 = 14880;
    *(v20 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v20, " : ", 3uLL);
  }

  result = (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1))
  {
    goto LABEL_17;
  }

  v5 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  if (!v5)
  {
    v26[0] = "requires attribute 'map'";
    v27 = 259;
    mlir::Operation::emitOpError(a1, v26, v28);
    v15 = v29;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v28);
    if ((v15 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v28[0] = a1;
  if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v5, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v28))
  {
    goto LABEL_17;
  }

  ODSOperands = mlir::affine::AffineLoadOp::getODSOperands(a1, 0);
  v8 = v7;
  if (v7)
  {
    v9 = 0;
    v10 = ODSOperands + 24;
    while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps4(a1, (*(*v10 + 8) & 0xFFFFFFFFFFFFFFF8), v9))
    {
      ++v9;
      v10 += 32;
      if (v8 == v9)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_17;
  }

LABEL_11:
  v11 = mlir::affine::AffineLoadOp::getODSOperands(a1, 1u);
  if (v12)
  {
    v13 = v12;
    v14 = v11 + 24;
    while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(*v14 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v8))
    {
      LODWORD(v8) = v8 + 1;
      v14 += 32;
      if (!--v13)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_17;
  }

LABEL_19:
  v19 = *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if ((*(a1 - 8) & 0xFFFFFFFFFFFFFFF8) == *(v19 + 24))
  {
    Attr = mlir::Operation::getAttr(a1, "map", 3uLL);
    if (Attr)
    {
      if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
      {
        v21 = Attr;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    if ((*(a1 + 46) & 0x80) != 0)
    {
      v22 = *(a1 + 68);
      v23 = v22 - 1;
      v24 = *(a1 + 72) + 32;
      v25 = v22 - 1;
    }

    else
    {
      v23 = -1;
      v25 = -1;
      v24 = 32;
    }

    v16 = verifyMemoryOpIndexing(a1, v21, v24, v23, v19, v25);
  }

  else
  {
    v26[0] = "result type must match element type of memref";
    v27 = 259;
    mlir::Operation::emitOpError(a1, v26, v28);
    v16 = v29 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v28);
  }

LABEL_18:
  v17 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineMaxOp>,mlir::OpTrait::OneResult<mlir::affine::AffineMaxOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineMaxOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineMaxOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineMaxOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineMaxOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineMaxOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineMaxOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineMaxOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineMaxOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineMaxOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "affine.max", 0xA, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E9DA60;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 24941 ? (v4 = *(a3 + 2) == 112) : (v4 = 0), v4))
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 3)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 2);
    if (v5 == 24941 && v6 == 112)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "map";
    v7[1] = 3;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v7 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 1;
  if (v8)
  {
    v9 = v7[1];
    if (v9)
    {
      if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v9, "map", 3, a4, a5))
      {
        return 0;
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "map", 3uLL);
    if (v11)
    {
      v12 = *(v10 + 8);
      if (v12)
      {
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
        {
          a5(&v19, a6);
          if (v19)
          {
            if (v19)
            {
              v17 = 0;
              v18 = v12;
              v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v17, 1);
              v14 = v21 + 24 * v22;
              v15 = *v13;
              *(v14 + 16) = *(v13 + 16);
              *v14 = v15;
              ++v22;
            }
          }

          goto LABEL_4;
        }

        *a3 = v12;
      }
    }

    result = 1;
    goto LABEL_13;
  }

  a5(&v19, a6);
  if (v19)
  {
    mlir::Diagnostic::operator<<<42ul>(v20, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  result = 0;
LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v13 = v15;
  v14 = 0x300000000;
  if (v4)
  {
    v5 = *(**v4 + 32);
    v12 = 261;
    v11[0] = "map";
    v11[1] = 3;
    v6 = mlir::StringAttr::get(v5, v11, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v6, v4);
    v7 = v13;
    if (v14)
    {
      v8 = mlir::DictionaryAttr::get(v3, v13, v14);
      v7 = v13;
    }

    else
    {
      v8 = 0;
    }

    if (v7 != v15)
    {
      free(v7);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMaxOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineMaxOp>,mlir::OpTrait::OneResult<mlir::affine::AffineMaxOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineMaxOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineMaxOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineMaxOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineMaxOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineMaxOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineMaxOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineMaxOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineMaxOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineMaxOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineMaxOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineMaxOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineMaxOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>::isCompatibleReturnTypes;
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  **a11 = *(*a1 + 472);
  return 1;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = v21;
  v20 = 0x400000000;
  v14 = 1;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&v19, 1uLL);
  *v19 = *(*a1 + 472);
  v15 = *(a11 + 8);
  v16 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
  v23 = (v19 & 0xFFFFFFFFFFFFFFF9 | 2);
  v24 = v20;
  v22[0] = v16;
  v22[1] = v15;
  if ((llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v23, v22) & 1) == 0)
  {
    v23 = "affine.max";
    v24 = 10;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v23, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
  }

  if (v19 != v21)
  {
    free(v19);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMaxOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v7 = a2 + 64;
  v8 = 16 * ((*(a2 + 44) >> 23) & 1);
  v25 = v27;
  v26 = 0x200000000;
  v23 = *(*(a2 + 64 + v8) + 8);
  v9 = mlir::AffineMap::partialConstantFold(&v23, a3, a4, &v25, 0);
  v24 = v9;
  if (*(v9 + 4) == 1 && mlir::AffineMap::isSymbolIdentity(&v24))
  {
    v10 = *(*(a2 + 72) + 24);
LABEL_9:
    v13 = v10 | 4;
    goto LABEL_19;
  }

  if (v26)
  {
    if (v26 == 1)
    {
      v11 = v25;
    }

    else
    {
      v15 = (v25 + 8);
      v14 = *v25;
      v16 = 8 * v26 - 8;
      v11 = v25;
      v17 = (v25 + 8);
      do
      {
        v19 = *v17++;
        v18 = v19;
        v20 = v14 < v19;
        if (v14 <= v19)
        {
          v14 = v18;
        }

        if (v20)
        {
          v11 = v15;
        }

        v15 = v17;
        v16 -= 8;
      }

      while (v16);
    }

    if (v11 != (v25 + 8 * v26))
    {
      v13 = mlir::IntegerAttr::get(*(**(***(a2 + 24) + 32) + 472), *v11) & 0xFFFFFFFFFFFFFFFBLL;
      goto LABEL_19;
    }
  }

  else if (*(*(v7 + 16 * ((*(a2 + 44) >> 23) & 1)) + 8) != v9)
  {
    v12 = mlir::AffineMapAttr::get(v9);
    mlir::Operation::setAttr(a2, "map", 3, v12);
    v10 = a2 - 16;
    goto LABEL_9;
  }

  v13 = 0;
LABEL_19:
  if (v25 != v27)
  {
    free(v25);
  }

  if (v13 < 8 || a2 - 16 == (v13 & ((v13 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    result = v13 > 7;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v13);
    result = 1;
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v40[2] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (v8 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 32);
  }

  else
  {
    *(v7 + 4) = v8 + 1;
    *v8 = 32;
  }

  Attr = mlir::Operation::getAttr(a2, "map", 3uLL);
  (*(*a3 + 40))(a3, Attr);
  v10 = *(a2 + 44);
  if ((v10 & 0x800000) != 0)
  {
    v11 = *(a2 + 68);
    v12 = *(a2 + 72);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v13 = **(*(a2 + 16 * ((v10 >> 23) & 1) + 64) + 8);
  v14 = (*(*a3 + 16))(a3);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 40);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 40;
  }

  if (v11 >= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = v11;
  }

  v17 = (*(*a3 + 16))(a3);
  if (v16)
  {
    v18 = v17;
    (*(*a3 + 160))(a3, *(v12 + 24));
    v19 = v16 - 1;
    if (v16 != 1)
    {
      v20 = (v12 + 56);
      do
      {
        v21 = *(v18 + 4);
        if (*(v18 + 3) - v21 > 1uLL)
        {
          *v21 = 8236;
          *(v18 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v18, ", ", 2uLL);
        }

        v22 = *v20;
        v20 += 4;
        (*(*a3 + 160))(a3, v22);
        --v19;
      }

      while (v19);
    }
  }

  v23 = (*(*a3 + 16))(a3);
  v24 = *(v23 + 4);
  if (v24 >= *(v23 + 3))
  {
    llvm::raw_ostream::write(v23, 41);
  }

  else
  {
    *(v23 + 4) = v24 + 1;
    *v24 = 41;
  }

  if (v11 != v13)
  {
    v25 = (*(*a3 + 16))(a3);
    v26 = *(v25 + 4);
    if (v26 >= *(v25 + 3))
    {
      llvm::raw_ostream::write(v25, 91);
    }

    else
    {
      *(v25 + 4) = v26 + 1;
      *v26 = 91;
    }

    v27 = v12 + 32 * v13;
    v28 = (*(*a3 + 16))(a3);
    (*(*a3 + 160))(a3, *(v27 + 24));
    if (v11 - v13 != 1)
    {
      v29 = ~v13 + v11;
      v30 = (v27 + 56);
      do
      {
        v31 = *(v28 + 4);
        if (*(v28 + 3) - v31 > 1uLL)
        {
          *v31 = 8236;
          *(v28 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v28, ", ", 2uLL);
        }

        v32 = *v30;
        v30 += 4;
        (*(*a3 + 160))(a3, v32);
        --v29;
      }

      while (v29);
    }

    v33 = (*(*a3 + 16))(a3);
    v34 = *(v33 + 4);
    if (v34 >= *(v33 + 3))
    {
      llvm::raw_ostream::write(v33, 93);
    }

    else
    {
      *(v33 + 4) = v34 + 1;
      *v34 = 93;
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v36 = *(AttrDictionary + 8);
  v37 = *(AttrDictionary + 16);
  v40[0] = "map";
  v40[1] = 3;
  result = (*(*a3 + 192))(a3, v36, v37, v40, 1);
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::Op<mlir::affine::AffineMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
  if (!v5)
  {
    v18[0] = "requires attribute 'map'";
    v19 = 259;
    mlir::Operation::emitOpError(a1, v18, v20);
    v13 = v21;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
    if (v13)
    {
      goto LABEL_15;
    }

LABEL_18:
    v14 = *(a1 + 44);
    if ((v14 & 0x800000) != 0)
    {
      v15 = *(a1 + 68);
    }

    else
    {
      v15 = 0;
    }

    v16 = *(*(a1 + 64 + 16 * ((v14 >> 23) & 1)) + 8);
    if (v15 == v16[1] + *v16)
    {
      if (v16[2])
      {
        v10 = 1;
        goto LABEL_16;
      }

      v17 = "affine map expect at least one result";
    }

    else
    {
      v17 = "operand count and affine map dimension and symbol count must match";
    }

    v18[0] = v17;
    v19 = 259;
    mlir::Operation::emitOpError(a1, v18, v20);
    v10 = v21 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
    goto LABEL_16;
  }

  v20[0] = a1;
  if (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v5, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20))
  {
    if ((*(a1 + 46) & 0x80) != 0)
    {
      v6 = *(a1 + 68);
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 72) + 24;
        while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(*v8 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v7))
        {
          ++v7;
          v8 += 32;
          if (v6 == v7)
          {
            goto LABEL_11;
          }
        }

        goto LABEL_15;
      }
    }

LABEL_11:
    v9 = *(a1 + 36) ? a1 - 16 : 0;
    if (mlir::affine::__mlir_ods_local_type_constraint_AffineOps2(a1, *(v9 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
    {
      goto LABEL_18;
    }
  }

LABEL_15:
  v10 = 0;
LABEL_16:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineMinOp>,mlir::OpTrait::OneResult<mlir::affine::AffineMinOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineMinOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineMinOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineMinOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineMinOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineMinOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineMinOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineMinOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineMinOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineMinOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "affine.min", 0xA, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E9DB28;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 24941 ? (v4 = *(a3 + 2) == 112) : (v4 = 0), v4))
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 3)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 2);
    if (v5 == 24941 && v6 == 112)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "map";
    v7[1] = 3;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v7 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 1;
  if (v8)
  {
    v9 = v7[1];
    if (v9)
    {
      if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v9, "map", 3, a4, a5))
      {
        return 0;
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "map", 3uLL);
    if (v11)
    {
      v12 = *(v10 + 8);
      if (v12)
      {
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
        {
          a5(&v19, a6);
          if (v19)
          {
            if (v19)
            {
              v17 = 0;
              v18 = v12;
              v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v17, 1);
              v14 = v21 + 24 * v22;
              v15 = *v13;
              *(v14 + 16) = *(v13 + 16);
              *v14 = v15;
              ++v22;
            }
          }

          goto LABEL_4;
        }

        *a3 = v12;
      }
    }

    result = 1;
    goto LABEL_13;
  }

  a5(&v19, a6);
  if (v19)
  {
    mlir::Diagnostic::operator<<<42ul>(v20, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  result = 0;
LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v13 = v15;
  v14 = 0x300000000;
  if (v4)
  {
    v5 = *(**v4 + 32);
    v12 = 261;
    v11[0] = "map";
    v11[1] = 3;
    v6 = mlir::StringAttr::get(v5, v11, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v6, v4);
    v7 = v13;
    if (v14)
    {
      v8 = mlir::DictionaryAttr::get(v3, v13, v14);
      v7 = v13;
    }

    else
    {
      v8 = 0;
    }

    if (v7 != v15)
    {
      free(v7);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineMinOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineMinOp>,mlir::OpTrait::OneResult<mlir::affine::AffineMinOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineMinOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineMinOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineMinOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineMinOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineMinOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineMinOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineMinOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineMinOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineMinOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineMinOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineMinOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineMinOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>::isCompatibleReturnTypes;
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  **a11 = *(*a1 + 472);
  return 1;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = v21;
  v20 = 0x400000000;
  v14 = 1;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&v19, 1uLL);
  *v19 = *(*a1 + 472);
  v15 = *(a11 + 8);
  v16 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
  v23 = (v19 & 0xFFFFFFFFFFFFFFF9 | 2);
  v24 = v20;
  v22[0] = v16;
  v22[1] = v15;
  if ((llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v23, v22) & 1) == 0)
  {
    v23 = "affine.min";
    v24 = 10;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v23, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
  }

  if (v19 != v21)
  {
    free(v19);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineMinOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v7 = a2 + 64;
  v8 = 16 * ((*(a2 + 44) >> 23) & 1);
  v24 = v26;
  v25 = 0x200000000;
  v22 = *(*(a2 + 64 + v8) + 8);
  v9 = mlir::AffineMap::partialConstantFold(&v22, a3, a4, &v24, 0);
  v23 = v9;
  if (*(v9 + 4) == 1 && mlir::AffineMap::isSymbolIdentity(&v23))
  {
    v10 = *(*(a2 + 72) + 24);
LABEL_9:
    v13 = v10 | 4;
    goto LABEL_17;
  }

  if (v25)
  {
    if (v25 == 1)
    {
      v11 = v24;
    }

    else
    {
      v15 = (v24 + 8);
      v14 = *v24;
      v16 = 8 * v25 - 8;
      v11 = v24;
      v17 = (v24 + 8);
      do
      {
        v19 = *v17++;
        v18 = v19;
        if (v19 < v14)
        {
          v14 = v18;
          v11 = v15;
        }

        v15 = v17;
        v16 -= 8;
      }

      while (v16);
    }

    if (v11 != (v24 + 8 * v25))
    {
      v13 = mlir::IntegerAttr::get(*(**(***(a2 + 24) + 32) + 472), *v11) & 0xFFFFFFFFFFFFFFFBLL;
      goto LABEL_17;
    }
  }

  else if (*(*(v7 + 16 * ((*(a2 + 44) >> 23) & 1)) + 8) != v9)
  {
    v12 = mlir::AffineMapAttr::get(v9);
    mlir::Operation::setAttr(a2, "map", 3, v12);
    v10 = a2 - 16;
    goto LABEL_9;
  }

  v13 = 0;
LABEL_17:
  if (v24 != v26)
  {
    free(v24);
  }

  if (v13 < 8 || a2 - 16 == (v13 & ((v13 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    result = v13 > 7;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v13);
    result = 1;
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v40[2] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (v8 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 32);
  }

  else
  {
    *(v7 + 4) = v8 + 1;
    *v8 = 32;
  }

  Attr = mlir::Operation::getAttr(a2, "map", 3uLL);
  (*(*a3 + 40))(a3, Attr);
  v10 = *(a2 + 44);
  if ((v10 & 0x800000) != 0)
  {
    v11 = *(a2 + 68);
    v12 = *(a2 + 72);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v13 = **(*(a2 + 16 * ((v10 >> 23) & 1) + 64) + 8);
  v14 = (*(*a3 + 16))(a3);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 40);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 40;
  }

  if (v11 >= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = v11;
  }

  v17 = (*(*a3 + 16))(a3);
  if (v16)
  {
    v18 = v17;
    (*(*a3 + 160))(a3, *(v12 + 24));
    v19 = v16 - 1;
    if (v16 != 1)
    {
      v20 = (v12 + 56);
      do
      {
        v21 = *(v18 + 4);
        if (*(v18 + 3) - v21 > 1uLL)
        {
          *v21 = 8236;
          *(v18 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v18, ", ", 2uLL);
        }

        v22 = *v20;
        v20 += 4;
        (*(*a3 + 160))(a3, v22);
        --v19;
      }

      while (v19);
    }
  }

  v23 = (*(*a3 + 16))(a3);
  v24 = *(v23 + 4);
  if (v24 >= *(v23 + 3))
  {
    llvm::raw_ostream::write(v23, 41);
  }

  else
  {
    *(v23 + 4) = v24 + 1;
    *v24 = 41;
  }

  if (v11 != v13)
  {
    v25 = (*(*a3 + 16))(a3);
    v26 = *(v25 + 4);
    if (v26 >= *(v25 + 3))
    {
      llvm::raw_ostream::write(v25, 91);
    }

    else
    {
      *(v25 + 4) = v26 + 1;
      *v26 = 91;
    }

    v27 = v12 + 32 * v13;
    v28 = (*(*a3 + 16))(a3);
    (*(*a3 + 160))(a3, *(v27 + 24));
    if (v11 - v13 != 1)
    {
      v29 = ~v13 + v11;
      v30 = (v27 + 56);
      do
      {
        v31 = *(v28 + 4);
        if (*(v28 + 3) - v31 > 1uLL)
        {
          *v31 = 8236;
          *(v28 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v28, ", ", 2uLL);
        }

        v32 = *v30;
        v30 += 4;
        (*(*a3 + 160))(a3, v32);
        --v29;
      }

      while (v29);
    }

    v33 = (*(*a3 + 16))(a3);
    v34 = *(v33 + 4);
    if (v34 >= *(v33 + 3))
    {
      llvm::raw_ostream::write(v33, 93);
    }

    else
    {
      *(v33 + 4) = v34 + 1;
      *v34 = 93;
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v36 = *(AttrDictionary + 8);
  v37 = *(AttrDictionary + 16);
  v40[0] = "map";
  v40[1] = 3;
  result = (*(*a3 + 192))(a3, v36, v37, v40, 1);
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::Op<mlir::affine::AffineMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
  if (!v5)
  {
    v18[0] = "requires attribute 'map'";
    v19 = 259;
    mlir::Operation::emitOpError(a1, v18, v20);
    v13 = v21;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
    if (v13)
    {
      goto LABEL_15;
    }

LABEL_18:
    v14 = *(a1 + 44);
    if ((v14 & 0x800000) != 0)
    {
      v15 = *(a1 + 68);
    }

    else
    {
      v15 = 0;
    }

    v16 = *(*(a1 + 64 + 16 * ((v14 >> 23) & 1)) + 8);
    if (v15 == v16[1] + *v16)
    {
      if (v16[2])
      {
        v10 = 1;
        goto LABEL_16;
      }

      v17 = "affine map expect at least one result";
    }

    else
    {
      v17 = "operand count and affine map dimension and symbol count must match";
    }

    v18[0] = v17;
    v19 = 259;
    mlir::Operation::emitOpError(a1, v18, v20);
    v10 = v21 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
    goto LABEL_16;
  }

  v20[0] = a1;
  if (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v5, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20))
  {
    if ((*(a1 + 46) & 0x80) != 0)
    {
      v6 = *(a1 + 68);
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 72) + 24;
        while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(*v8 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v7))
        {
          ++v7;
          v8 += 32;
          if (v6 == v7)
          {
            goto LABEL_11;
          }
        }

        goto LABEL_15;
      }
    }

LABEL_11:
    v9 = *(a1 + 36) ? a1 - 16 : 0;
    if (mlir::affine::__mlir_ods_local_type_constraint_AffineOps2(a1, *(v9 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
    {
      goto LABEL_18;
    }
  }

LABEL_15:
  v10 = 0;
LABEL_16:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::affine::AffineParallelOp>,mlir::OpTrait::VariadicResults<mlir::affine::AffineParallelOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineParallelOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineParallelOp>,mlir::OpTrait::SingleBlock<mlir::affine::AffineParallelOp>,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineParallelOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineParallelOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineParallelOp>,mlir::OpTrait::AutomaticAllocationScope<mlir::affine::AffineParallelOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineParallelOp>,mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::affine::AffineParallelOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::affine::AffineParallelOp>,mlir::LoopLikeOpInterface::Trait<mlir::affine::AffineParallelOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineParallelOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "affine.parallel", 0xF, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineParallelOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E9DBF0;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::foldHook(uint64_t a1, mlir::affine::AffineParallelOp *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v2 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::printAssembly(uint64_t a1, unsigned int *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = &mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (a4 > 13)
  {
    if (a4 == 14)
    {
      if (*a3 == 0x756F427265776F6CLL && *(a3 + 6) == 0x70614D73646E756FLL)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
      }

      else
      {
        if (*a3 != 0x756F427265707075 || *(a3 + 6) != 0x70614D73646E756FLL)
        {
          goto LABEL_42;
        }

        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 104);
      }

      goto LABEL_45;
    }

    v6 = 0;
    if (a4 == 17)
    {
      if (*a3 != 0x756F427265776F6CLL || *(a3 + 8) != 0x70756F724773646ELL || *(a3 + 16) != 115)
      {
        if (*a3 != 0x756F427265707075 || *(a3 + 8) != 0x70756F724773646ELL || *(a3 + 16) != 115)
        {
          goto LABEL_42;
        }

        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96);
      }

      goto LABEL_45;
    }
  }

  else
  {
    if (a4 == 5)
    {
      if (*a3 != 1885697139 || *(a3 + 4) != 115)
      {
        goto LABEL_42;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
      goto LABEL_45;
    }

    v6 = 0;
    if (a4 == 10)
    {
      if (*a3 != 0x6F69746375646572 || *(a3 + 8) != 29550)
      {
LABEL_42:
        v4 = 0;
        v6 = 0;
        return v6 | v4;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
LABEL_45:
      v15 = *v5;
      v6 = v15 & 0xFFFFFFFFFFFFFF00;
      v4 = v15;
    }
  }

  return v6 | v4;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  if (v7 > 13)
  {
    if (v7 == 14)
    {
      if (*v6 == 0x756F427265776F6CLL && *(v6 + 6) == 0x70614D73646E756FLL)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
          {
            v30 = a4;
          }

          else
          {
            v30 = 0;
          }
        }

        else
        {
          v30 = 0;
        }

        v5[9] = v30;
      }

      else
      {
        v25 = *v6;
        v26 = *(v6 + 6);
        if (v25 == 0x756F427265707075 && v26 == 0x70614D73646E756FLL)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
            {
              v28 = a4;
            }

            else
            {
              v28 = 0;
            }
          }

          else
          {
            v28 = 0;
          }

          v5[13] = v28;
        }
      }
    }

    else if (v7 == 17)
    {
      if (*v6 == 0x756F427265776F6CLL && v6[1] == 0x70756F724773646ELL && *(v6 + 16) == 115)
      {
        if (a4)
        {
          if (mlir::DenseIntElementsAttr::classof(a4))
          {
            v29 = a4;
          }

          else
          {
            v29 = 0;
          }
        }

        else
        {
          v29 = 0;
        }

        v5[8] = v29;
      }

      else
      {
        v14 = *v6;
        v15 = v6[1];
        v16 = *(v6 + 16);
        if (v14 == 0x756F427265707075 && v15 == 0x70756F724773646ELL && v16 == 115)
        {
          if (a4)
          {
            if (mlir::DenseIntElementsAttr::classof(a4))
            {
              v19 = a4;
            }

            else
            {
              v19 = 0;
            }
          }

          else
          {
            v19 = 0;
          }

          v5[12] = v19;
        }
      }
    }
  }

  else if (v7 == 5)
  {
    v20 = *v6;
    v21 = *(v6 + 4);
    if (v20 == 1885697139 && v21 == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v23 = a4;
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }

      v5[11] = v23;
    }
  }

  else if (v7 == 10)
  {
    v8 = *v6;
    v9 = *(v6 + 4);
    if (v8 == 0x6F69746375646572 && v9 == 29550)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v11 = a4;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      v5[10] = v11;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v27 = 261;
    v25 = "lowerBoundsGroups";
    v26 = 17;
    v9 = mlir::StringAttr::get(v8, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v27 = 261;
    v25 = "lowerBoundsMap";
    v26 = 14;
    v12 = mlir::StringAttr::get(v11, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v27 = 261;
    v25 = "reductions";
    v26 = 10;
    v15 = mlir::StringAttr::get(v14, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v27 = 261;
    v25 = "steps";
    v26 = 5;
    v18 = mlir::StringAttr::get(v17, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v27 = 261;
    v25 = "upperBoundsGroups";
    v26 = 17;
    v21 = mlir::StringAttr::get(v20, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v27 = 261;
    v25 = "upperBoundsMap";
    v26 = 14;
    v24 = mlir::StringAttr::get(v23, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v24, v22);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v9 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  if (v10)
  {
    v11 = v9[1];
    if (v11)
    {
      if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps6(v11, "lowerBoundsGroups", 17, a4, a5))
      {
        return 0;
      }
    }
  }

  v12 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 8));
  if (v13)
  {
    v14 = v12[1];
    if (v14)
    {
      if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v14, "lowerBoundsMap", 14, a4, a5))
      {
        return 0;
      }
    }
  }

  v15 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 16));
  if (v16)
  {
    v17 = v15[1];
    if (v17)
    {
      if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps5(v17, a4, a5))
      {
        return 0;
      }
    }
  }

  v18 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 24));
  if (v19)
  {
    v20 = v18[1];
    if (v20)
    {
      if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps7(v20, a4, a5))
      {
        return 0;
      }
    }
  }

  v21 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 32));
  if (v22)
  {
    v23 = v21[1];
    if (v23)
    {
      if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps6(v23, "upperBoundsGroups", 17, a4, a5))
      {
        return 0;
      }
    }
  }

  v24 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 40));
  return (v25 & 1) == 0 || (v26 = v24[1]) == 0 || mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v26, "upperBoundsMap", 14, a4, a5);
}

double mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::initProperties(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[2];
    a3[1] = a4[1];
    a3[2] = v5;
    *a3 = v4;
  }

  else
  {
    *&v4 = 0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return *&v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v31, a6);
    if (v31)
    {
      mlir::Diagnostic::operator<<<42ul>(v32, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "lowerBoundsGroups", 0x11uLL);
  if (v13)
  {
    v14 = *(v12 + 8);
    if (v14)
    {
      if (!mlir::DenseIntElementsAttr::classof(*(v12 + 8)))
      {
        a5(&v31, a6);
        if (!v31)
        {
          goto LABEL_4;
        }

LABEL_29:
        if (v31)
        {
          LODWORD(v30[0]) = 0;
          v30[1] = v14;
          v21 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v33, v30, 1);
          v22 = v33 + 24 * v34;
          v23 = *v21;
          *(v22 + 16) = *(v21 + 16);
          *v22 = v23;
          ++v34;
        }

        goto LABEL_4;
      }

      *a3 = v14;
    }
  }

  v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "lowerBoundsMap", 0xEuLL);
  if ((v16 & 1) == 0 || (v14 = *(v15 + 8)) == 0)
  {
LABEL_18:
    v17 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "reductions", 0xAuLL);
    if (v18)
    {
      v14 = *(v17 + 8);
      if (v14)
      {
        if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          a5(&v31, a6);
          if (!v31)
          {
            goto LABEL_4;
          }

          goto LABEL_29;
        }

        a3[2] = v14;
      }
    }

    v19 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "steps", 5uLL);
    if (v20)
    {
      v14 = *(v19 + 8);
      if (v14)
      {
        if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          a5(&v31, a6);
          if (!v31)
          {
            goto LABEL_4;
          }

          goto LABEL_29;
        }

        a3[3] = v14;
      }
    }

    v24 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "upperBoundsGroups", 0x11uLL);
    if (v25)
    {
      v26 = *(v24 + 8);
      v30[0] = v26;
      if (v26)
      {
        if (!mlir::DenseIntElementsAttr::classof(v26))
        {
          a5(&v31, a6);
          if (!v31)
          {
            goto LABEL_4;
          }

          goto LABEL_43;
        }

        a3[4] = v26;
      }
    }

    v27 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "upperBoundsMap", 0xEuLL);
    if (v28)
    {
      v29 = *(v27 + 8);
      v30[0] = v29;
      if (v29)
      {
        if (*(*v29 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
        {
          a5(&v31, a6);
          if (!v31)
          {
            goto LABEL_4;
          }

LABEL_43:
          if (v31)
          {
            mlir::Diagnostic::operator<<<mlir::Attribute &>(v32, v30);
          }

          goto LABEL_4;
        }

        a3[5] = v29;
      }
    }

    result = 1;
    goto LABEL_5;
  }

  if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    a3[1] = v14;
    goto LABEL_18;
  }

  a5(&v31, a6);
  if (v31)
  {
    goto LABEL_29;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
  result = 0;
LABEL_5:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v34[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  v32 = v34;
  v33 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v31 = 261;
    v29 = "lowerBoundsGroups";
    v30 = 17;
    v9 = mlir::StringAttr::get(v8, &v29, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v32, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v31 = 261;
    v29 = "lowerBoundsMap";
    v30 = 14;
    v12 = mlir::StringAttr::get(v11, &v29, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v32, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v31 = 261;
    v29 = "reductions";
    v30 = 10;
    v15 = mlir::StringAttr::get(v14, &v29, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v32, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v31 = 261;
    v29 = "steps";
    v30 = 5;
    v18 = mlir::StringAttr::get(v17, &v29, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v32, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v31 = 261;
    v29 = "upperBoundsGroups";
    v30 = 17;
    v21 = mlir::StringAttr::get(v20, &v29, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v32, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v31 = 261;
    v29 = "upperBoundsMap";
    v30 = 14;
    v24 = mlir::StringAttr::get(v23, &v29, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v32, v24, v22);
  }

  v25 = v32;
  if (v33)
  {
    v26 = mlir::DictionaryAttr::get(v3, v32, v33);
    v25 = v32;
  }

  else
  {
    v26 = 0;
  }

  if (v25 != v34)
  {
    free(v25);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

__n128 mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineParallelOp>::hashProperties(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v24 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v5 = HIDWORD(v2);
  v6 = 0x9DDFEA08EB382D69 * ((8 * v2 - 0xAE502812AA7333) ^ HIDWORD(v2));
  v23 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  v7 = a2[2];
  v8 = a2[3];
  v9 = (8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7);
  v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ ((0x9DDFEA08EB382D69 * v9) >> 47) ^ (0x9DDFEA08EB382D69 * v9));
  v22 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v11 = HIDWORD(v8);
  v12 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
  v21 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 47));
  v13 = a2[5];
  v14 = 8 * a2[4] - 0xAE502812AA7333;
  v15 = 0x9DDFEA08EB382D69 * (HIDWORD(a2[4]) ^ ((0x9DDFEA08EB382D69 * (v14 ^ HIDWORD(a2[4]))) >> 47) ^ (0x9DDFEA08EB382D69 * (v14 ^ HIDWORD(a2[4]))));
  v20 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
  v16 = 0x9DDFEA08EB382D69 * (HIDWORD(v13) ^ ((0x9DDFEA08EB382D69 * ((8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13))) >> 47) ^ (0x9DDFEA08EB382D69 * ((8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13))));
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  v27 = 0;
  v28 = 0xFF51AFD7ED558CCDLL;
  v19 = 0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47));
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v25, 0, v25, v26, &v24, &v23, &v22, &v21, &v20, &v19);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::affine::AffineParallelOp>,mlir::OpTrait::VariadicResults<mlir::affine::AffineParallelOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineParallelOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineParallelOp>,mlir::OpTrait::SingleBlock<mlir::affine::AffineParallelOp>,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineParallelOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineParallelOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineParallelOp>,mlir::OpTrait::AutomaticAllocationScope<mlir::affine::AffineParallelOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineParallelOp>,mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::affine::AffineParallelOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::affine::AffineParallelOp>,mlir::LoopLikeOpInterface::Trait<mlir::affine::AffineParallelOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineParallelOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineParallelOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3) && mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v3 + 5);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  (*(*a3 + 16))(a3, v4[8]);
  (*(*a3 + 16))(a3, v4[9]);
  (*(*a3 + 16))(a3, v4[10]);
  (*(*a3 + 16))(a3, v4[11]);
  (*(*a3 + 16))(a3, v4[12]);
  v5 = v4[13];
  v6 = *(*a3 + 16);

  return v6(a3, v5);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineParallelOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineParallelOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x68uLL, 0x80040FDC59921uLL);
  *v2 = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::isDefinedOutsideOfLoop;
  v2[1] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::getLoopRegions;
  v2[2] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::moveOutOfLoop;
  v2[3] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::promoteIfSingleIteration;
  v2[4] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::getLoopInductionVars;
  v2[5] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::getLoopLowerBounds;
  v2[6] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::getLoopSteps;
  v2[7] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::getLoopUpperBounds;
  v2[8] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::getInitsMutable;
  v2[9] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::getRegionIterArgs;
  v2[10] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::getYieldedValuesMutable;
  v2[11] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::getLoopResults;
  v2[12] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::replaceWithAdditionalYields;
  v3 = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::isDefinedOutsideOfLoop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a3;
  v4 = *(mlir::Value::getParentRegion(&v10) + 16);
  if (v4 == a2)
  {
    return 0;
  }

  while (1)
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
      break;
    }

    v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v6)
    {
      break;
    }

    v4 = *(v6 + 16);
    v7 = v4 != 0;
    if (v4 == a2 || v4 == 0)
    {
      return !v7;
    }
  }

  v7 = 0;
  return !v7;
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineParallelOp>::getLoopRegions(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = ((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::Region *>::append<mlir::Region * const*,void>(a2, &v3, &v4);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(int a1, mlir::affine::AffineParallelOp *this)
{
  v42[4] = *MEMORY[0x277D85DE8];
  v3 = (this + 64);
  v4 = *(*(this + 2 * ((*(this + 11) >> 23) & 1) + 9) + 8);
  LowerBoundsOperands = mlir::affine::AffineParallelOp::getLowerBoundsOperands(this);
  mlir::affine::AffineValueMap::AffineValueMap(&v33, v4, LowerBoundsOperands & 0xFFFFFFFFFFFFFFF9 | 2, v6, 0, 0);
  v7 = mlir::affine::AffineValueMap::canonicalize(&v33);
  v8 = *(*(v3 + 2 * ((*(this + 11) >> 23) & 1) + 5) + 8);
  UpperBoundsOperands = mlir::affine::AffineParallelOp::getUpperBoundsOperands(this);
  mlir::affine::AffineValueMap::AffineValueMap(&v26, v8, UpperBoundsOperands & 0xFFFFFFFFFFFFFFF9 | 2, v10, 0, 0);
  v11 = mlir::affine::AffineValueMap::canonicalize(&v26);
  if ((v7 & 1) != 0 || v11)
  {
    if (v7)
    {
      v13 = v39;
      v14 = v38;
      Impl = mlir::AffineMap::getImpl(v35, v36, v33, v34, v37);
      v16 = mlir::affine::AffineParallelOp::getUpperBoundsOperands(this);
      v18 = v17;
      v40 = v42;
      v41 = 0x400000000;
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v40, v14 & 0xFFFFFFFFFFFFFFF9, 0, v14 & 0xFFFFFFFFFFFFFFF9, v13);
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v40, v16, 0, v16, v18);
      if ((*(this + 46) & 0x80) != 0)
      {
        mlir::detail::OperandStorage::setOperands(v3, this, v40 & 0xFFFFFFFFFFFFFFF9, v41);
      }

      *(v3 + 2 * ((*(this + 11) >> 23) & 1) + 1) = mlir::AffineMapAttr::get(Impl);
      if (v40 != v42)
      {
        free(v40);
      }
    }

    if (v11)
    {
      v19 = v32;
      v20 = v31;
      v21 = mlir::AffineMap::getImpl(v28, v29, v26, v27, v30);
      v22 = mlir::affine::AffineParallelOp::getLowerBoundsOperands(this);
      v40 = v42;
      v41 = 0x400000000;
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v40, v22, 0, v22, v23);
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v40, v20 & 0xFFFFFFFFFFFFFFF9, 0, v20 & 0xFFFFFFFFFFFFFFF9, v19);
      if ((*(this + 46) & 0x80) != 0)
      {
        mlir::detail::OperandStorage::setOperands(v3, this, v40 & 0xFFFFFFFFFFFFFFF9, v41);
      }

      *(v3 + 2 * ((*(this + 11) >> 23) & 1) + 5) = mlir::AffineMapAttr::get(v21);
      if (v40 != v42)
      {
        free(v40);
      }
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  mlir::affine::AffineValueMap::~AffineValueMap(&v26);
  mlir::affine::AffineValueMap::~AffineValueMap(&v33);
  v24 = *MEMORY[0x277D85DE8];
  return v12;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[14] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RecursivelySpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID();
  v9[12] = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[13] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 13);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, unsigned int *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v103[8] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (*(v7 + 3) - v8 > 1uLL)
  {
    *v8 = 10272;
    *(v7 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v7, " (", 2uLL);
  }

  v9 = a2 + 16;
  v10 = *(((&a2[4 * ((a2[11] >> 23) & 1) + 17] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10] + 8);
  if (v10)
  {
    v11 = v10 - 8;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v11 + 48);
  v13 = *(v11 + 56);
  v14 = (*(*a3 + 16))(a3);
  if (v13 != v12)
  {
    v15 = v14;
    (*(*a3 + 160))(a3, *v12);
    if (v13 - v12 != 8)
    {
      v16 = v12 + 8;
      do
      {
        v17 = *(v15 + 4);
        if (*(v15 + 3) - v17 > 1uLL)
        {
          *v17 = 8236;
          *(v15 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v15, ", ", 2uLL);
        }

        v18 = *v16;
        v16 += 8;
        (*(*a3 + 160))(a3, v18);
      }

      while (v16 != v13);
    }
  }

  v19 = (*(*a3 + 16))(a3);
  v20 = *(v19 + 4);
  if ((*(v19 + 3) - v20) > 4)
  {
    *(v20 + 4) = 40;
    *v20 = 540876841;
    *(v19 + 4) += 5;
  }

  else
  {
    llvm::raw_ostream::write(v19, ") = (", 5uLL);
  }

  v21 = &v9[4 * ((a2[11] >> 23) & 1)];
  v23 = *v21;
  v22 = v21[1];
  LowerBoundsOperands = mlir::affine::AffineParallelOp::getLowerBoundsOperands(a2);
  printMinMaxBound(a3, v22, v23, LowerBoundsOperands & 0xFFFFFFFFFFFFFFF9 | 2, v25, "max", 3uLL);
  v26 = (*(*a3 + 16))(a3);
  v27 = *(v26 + 4);
  if ((*(v26 + 3) - v27) > 5)
  {
    *(v27 + 4) = 10272;
    *v27 = 1869881385;
    *(v26 + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(v26, ") to (", 6uLL);
  }

  v28 = &v9[4 * ((a2[11] >> 23) & 1)];
  v30 = *(v28 + 4);
  v29 = *(v28 + 5);
  UpperBoundsOperands = mlir::affine::AffineParallelOp::getUpperBoundsOperands(a2);
  printMinMaxBound(a3, v29, v30, UpperBoundsOperands & 0xFFFFFFFFFFFFFFF9 | 2, v32, "min", 3uLL);
  v33 = (*(*a3 + 16))(a3);
  v34 = *(v33 + 4);
  if (v34 >= *(v33 + 3))
  {
    llvm::raw_ostream::write(v33, 41);
  }

  else
  {
    *(v33 + 4) = v34 + 1;
    *v34 = 41;
  }

  mlir::affine::AffineParallelOp::getSteps(&v101, a2);
  if (v102)
  {
    v35 = v101;
    v36 = 8 * v102;
    while (*v35 == 1)
    {
      ++v35;
      v36 -= 8;
      if (!v36)
      {
        goto LABEL_41;
      }
    }

    v37 = (*(*a3 + 16))(a3);
    v38 = *(v37 + 4);
    if (*(v37 + 3) - v38 > 6uLL)
    {
      *(v38 + 3) = 673214565;
      *v38 = 1702130464;
      *(v37 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v37, " step (", 7uLL);
    }

    v39 = v102;
    if (v102)
    {
      v40 = v101;
      v41 = (*(*a3 + 16))(a3);
      llvm::write_integer(v41, *v40, 0, 0);
      if (v39 != 1)
      {
        v42 = v40 + 1;
        v43 = 8 * v39 - 8;
        do
        {
          v44 = (*(*a3 + 16))(a3);
          v45 = *(v44 + 4);
          if (*(v44 + 3) - v45 > 1uLL)
          {
            *v45 = 8236;
            *(v44 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v44, ", ", 2uLL);
          }

          v46 = (*(*a3 + 16))(a3);
          v47 = *v42++;
          llvm::write_integer(v46, v47, 0, 0);
          v43 -= 8;
        }

        while (v43);
      }
    }

    v48 = (*(*a3 + 16))(a3);
    v49 = *(v48 + 4);
    if (v49 >= *(v48 + 3))
    {
      llvm::raw_ostream::write(v48, 41);
    }

    else
    {
      *(v48 + 4) = v49 + 1;
      *v49 = 41;
    }
  }

LABEL_41:
  if (a2[9])
  {
    v50 = (*(*a3 + 16))(a3);
    v51 = *(v50 + 4);
    if ((*(v50 + 3) - v51) > 8)
    {
      *(v51 + 8) = 40;
      *v51 = *" reduce (";
      *(v50 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(v50, " reduce (", 9uLL);
    }

    v52 = *&v9[4 * ((a2[11] >> 23) & 1) + 4];
    v53 = *(v52 + 16);
    if (v53)
    {
      v54 = *(v52 + 8);
      v100[0] = *v54;
      Int = mlir::IntegerAttr::getInt(v100);
      v56 = mlir::arith::symbolizeAtomicRMWKind(Int);
      v57 = (*(*a3 + 16))(a3);
      v58 = *(v57 + 4);
      if (*(v57 + 3) == v58)
      {
        llvm::raw_ostream::write(v57, "", 1uLL);
      }

      else
      {
        *v58 = 34;
        ++*(v57 + 4);
      }

      v59 = mlir::arith::stringifyAtomicRMWKind(v56);
      v61 = v60;
      v62 = (*(*a3 + 16))(a3);
      llvm::raw_ostream::operator<<(v62, v59, v61);
      v63 = (*(*a3 + 16))(a3);
      v64 = *(v63 + 4);
      if (*(v63 + 3) == v64)
      {
        llvm::raw_ostream::write(v63, "", 1uLL);
      }

      else
      {
        *v64 = 34;
        ++*(v63 + 4);
      }

      if (v53 != 1)
      {
        v65 = v54 + 1;
        v66 = 8 * v53 - 8;
        do
        {
          v67 = (*(*a3 + 16))(a3);
          v68 = *(v67 + 4);
          if (*(v67 + 3) - v68 > 1uLL)
          {
            *v68 = 8236;
            *(v67 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v67, ", ", 2uLL);
          }

          v100[0] = *v65;
          v69 = mlir::IntegerAttr::getInt(v100);
          v70 = mlir::arith::symbolizeAtomicRMWKind(v69);
          v71 = (*(*a3 + 16))(a3);
          v72 = *(v71 + 4);
          if (*(v71 + 3) == v72)
          {
            llvm::raw_ostream::write(v71, "", 1uLL);
          }

          else
          {
            *v72 = 34;
            ++*(v71 + 4);
          }

          v73 = mlir::arith::stringifyAtomicRMWKind(v70);
          v75 = v74;
          v76 = (*(*a3 + 16))(a3);
          llvm::raw_ostream::operator<<(v76, v73, v75);
          v77 = (*(*a3 + 16))(a3);
          v78 = *(v77 + 4);
          if (*(v77 + 3) == v78)
          {
            llvm::raw_ostream::write(v77, "", 1uLL);
          }

          else
          {
            *v78 = 34;
            ++*(v77 + 4);
          }

          ++v65;
          v66 -= 8;
        }

        while (v66);
      }
    }

    v79 = (*(*a3 + 16))(a3);
    v80 = *(v79 + 4);
    if ((*(v79 + 3) - v80) > 5)
    {
      *(v80 + 4) = 10272;
      *v80 = 1043144745;
      *(v79 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v79, ") -> (", 6uLL);
    }

    v81 = a2[9];
    if (v81)
    {
      v82 = a2 - 4;
    }

    else
    {
      v82 = 0;
    }

    if (v81)
    {
      (*(*a3 + 32))(a3, *(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
      if (v81 != 1)
      {
        v83 = v82 - 4;
        v84 = 1;
        while (1)
        {
          v85 = (*(*a3 + 16))(a3);
          v86 = *(v85 + 4);
          if (*(v85 + 3) - v86 > 1uLL)
          {
            *v86 = 8236;
            *(v85 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v85, ", ", 2uLL);
          }

          v87 = *(a2 - 1) & 7;
          v88 = v82;
          v89 = v84;
          if (v87 == 6)
          {
            goto LABEL_79;
          }

          v90 = (5 - v87);
          v91 = v83;
          v89 = v84 - v90;
          if (v84 > v90)
          {
            break;
          }

LABEL_80:
          (*(*a3 + 32))(a3, *(v91 + 1) & 0xFFFFFFFFFFFFFFF8);
          ++v84;
          v83 -= 4;
          if (v81 == v84)
          {
            goto LABEL_81;
          }
        }

        v88 = &v82[-4 * v90];
LABEL_79:
        v91 = &v88[-6 * v89];
        goto LABEL_80;
      }
    }

LABEL_81:
    v92 = (*(*a3 + 16))(a3);
    v93 = *(v92 + 4);
    if (*(v92 + 3) == v93)
    {
      llvm::raw_ostream::write(v92, ")", 1uLL);
    }

    else
    {
      *v93 = 41;
      ++*(v92 + 4);
    }

    v9 = a2 + 16;
  }

  v94 = (*(*a3 + 16))(a3);
  v95 = *(v94 + 4);
  if (v95 >= *(v94 + 3))
  {
    llvm::raw_ostream::write(v94, 32);
  }

  else
  {
    *(v94 + 4) = v95 + 1;
    *v95 = 32;
  }

  (*(*a3 + 224))(a3, ((&v9[4 * ((a2[11] >> 23) & 1) + 1] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10], 0, a2[9] != 0, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v97 = *(AttrDictionary + 8);
  v98 = *(AttrDictionary + 16);
  v100[0] = "reductions";
  v100[1] = 10;
  v100[2] = "lowerBoundsMap";
  v100[3] = 14;
  v100[4] = "lowerBoundsGroups";
  v100[5] = 17;
  v100[6] = "upperBoundsMap";
  v100[7] = 14;
  v100[8] = "upperBoundsGroups";
  v100[9] = 17;
  v100[10] = "steps";
  v100[11] = 5;
  (*(*a3 + 192))(a3, v97, v98, v100, 6);
  if (v101 != v103)
  {
    free(v101);
  }

  v99 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::affine::AffineParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::verifyRegionInvariants(unsigned int *a1, mlir::Operation *a2)
{
  v22[25] = *MEMORY[0x277D85DE8];
  v2 = a1[11];
  v3 = v2 & 0x7FFFFF;
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = (((&a1[4 * ((v2 >> 23) & 1) + 17] + ((v2 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10]);
    do
    {
      if (v4 != *v4)
      {
        v5 = v4[1];
        if (v5)
        {
          v6 = v5 - 8;
        }

        else
        {
          v6 = 0;
        }

        v7 = *(*(v6 + 32) + 48);
        if (*(v7 + 16) != &mlir::detail::TypeIDResolver<mlir::affine::AffineYieldOp,void>::id)
        {
          v13 = 1283;
          v12[0] = "expects regions to end with '";
          v12[2] = "affine.yield";
          v12[3] = 12;
          v14[0] = v12;
          v14[2] = "', found '";
          v15 = 770;
          v9 = *(v7 + 8);
          v16 = v14;
          v17 = *(v9 + 16);
          v18 = 1282;
          v19[0] = &v16;
          v19[2] = "'";
          v20 = 770;
          mlir::Operation::emitOpError(a1, v19, v21);
          mlir::Diagnostic::attachNote(v22, 0, 0);
        }
      }

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  v8 = mlir::detail::verifyLoopLikeOpInterface(a1, a2);
  v10 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v4 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffinePrefetchOp>::readProperties;
  v4[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffinePrefetchOp>::writeProperties;
  v5 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffinePrefetchOp>::getAffineMapAttrForMemRef;
  v7 = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v7, v6);
  mlir::OperationName::Impl::Impl(a1, "affine.prefetch", 0xF, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffinePrefetchOp,void>::id, v10);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
  *a1 = &unk_286E9DCB8;
  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::foldHook(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (a4 > 10)
  {
    if (a4 == 12)
    {
      if (*a3 != 0x7974696C61636F6CLL || *(a3 + 8) != 1953392968)
      {
        goto LABEL_28;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
      goto LABEL_30;
    }

    v6 = 0;
    if (a4 == 11)
    {
      if (*a3 != 0x6143617461447369 || *(a3 + 3) != 0x6568636143617461)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }
  }

  else
  {
    if (a4 == 3)
    {
      if (*a3 != 24941 || *(a3 + 2) != 112)
      {
        goto LABEL_28;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
      goto LABEL_30;
    }

    v6 = 0;
    if (a4 == 7)
    {
      if (*a3 != 1918333801 || *(a3 + 3) != 1702127986)
      {
LABEL_28:
        v4 = 0;
        v6 = 0;
        return v6 | v4;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
LABEL_30:
      v11 = *v5;
      v6 = v11 & 0xFFFFFFFFFFFFFF00;
      v4 = v11;
    }
  }

  return v6 | v4;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  if (v6 > 10)
  {
    if (v6 == 12)
    {
      v19 = *v5;
      v20 = *(v5 + 2);
      if (v19 == 0x7974696C61636F6CLL && v20 == 1953392968)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v22 = a4;
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }

        v4[10] = v22;
      }
    }

    else if (v6 == 11)
    {
      v10 = *v5;
      v11 = *(v5 + 3);
      if (v10 == 0x6143617461447369 && v11 == 0x6568636143617461)
      {
        if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v13 = a4[1], *(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
        {
          if (v13[2] == 1)
          {
            v14 = a4;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }

        v4[8] = v14;
      }
    }
  }

  else if (v6 == 3)
  {
    v15 = *v5;
    v16 = *(v5 + 2);
    if (v15 == 24941 && v16 == 112)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
        {
          v18 = a4;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }

      v4[11] = v18;
    }
  }

  else if (v6 == 7)
  {
    v7 = *v5;
    v8 = *(v5 + 3);
    if (v7 == 1918333801 && v8 == 1702127986)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v23 = a4[1], *(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v23[2] == 1)
        {
          v24 = a4;
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v24 = 0;
      }

      v4[9] = v24;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v21 = 261;
    v19 = "isDataCache";
    v20 = 11;
    v9 = mlir::StringAttr::get(v8, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v21 = 261;
    v19 = "isWrite";
    v20 = 7;
    v12 = mlir::StringAttr::get(v11, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v21 = 261;
    v19 = "localityHint";
    v20 = 12;
    v15 = mlir::StringAttr::get(v14, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v21 = 261;
    v19 = "map";
    v20 = 3;
    v18 = mlir::StringAttr::get(v17, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v18, v16);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v9 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 0;
  if ((v10 & 1) == 0 || (v11 = v9[1]) == 0 || mlir::affine::__mlir_ods_local_attr_constraint_AffineOps8(v11, "isDataCache", 11, a4, a5))
  {
    v12 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 8));
    if ((v13 & 1) == 0 || (v14 = v12[1]) == 0 || mlir::affine::__mlir_ods_local_attr_constraint_AffineOps8(v14, "isWrite", 7, a4, a5))
    {
      v15 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 16));
      if ((v16 & 1) == 0 || (v17 = v15[1]) == 0 || mlir::affine::__mlir_ods_local_attr_constraint_AffineOps9(v17, a4, a5))
      {
        v18 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 24));
        if ((v19 & 1) == 0)
        {
          return 1;
        }

        v20 = v18[1];
        if (!v20 || mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v20, "map", 3, a4, a5))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

double mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::initProperties(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[1];
    *a3 = *a4;
    a3[1] = v5;
  }

  else
  {
    *&v4 = 0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return *&v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v29, a6);
    if (v29)
    {
      mlir::Diagnostic::operator<<<42ul>(v30, "expected DictionaryAttr to set properties");
    }

    goto LABEL_28;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "isDataCache", 0xBuLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v13 = v12[1], *(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v13[2] != 1)
      {
        a5(&v29, a6);
        if (!v29)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      }

      *a3 = v12;
    }
  }

  v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "isWrite", 7uLL);
  if (v15)
  {
    v12 = *(v14 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v16 = v12[1], *(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v16[2] != 1)
      {
        a5(&v29, a6);
        if (!v29)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      }

      a3[1] = v12;
    }
  }

  v17 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "localityHint", 0xCuLL);
  if ((v18 & 1) == 0 || (v12 = *(v17 + 8)) == 0)
  {
LABEL_31:
    v24 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "map", 3uLL);
    if (v25)
    {
      v26 = *(v24 + 8);
      if (v26)
      {
        if (*(*v26 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
        {
          a5(&v29, a6);
          if (!v29)
          {
            goto LABEL_28;
          }

          if (!v29)
          {
            goto LABEL_28;
          }

          v27 = 0;
          v28 = v26;
          goto LABEL_27;
        }

        a3[3] = v26;
      }
    }

    result = 1;
    goto LABEL_29;
  }

  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    a3[2] = v12;
    goto LABEL_31;
  }

  a5(&v29, a6);
  if (!v29)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (v29)
  {
    v27 = 0;
    v28 = v12;
LABEL_27:
    v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v31, &v27, 1);
    v20 = v31 + 24 * v32;
    v21 = *v19;
    *(v20 + 16) = *(v19 + 16);
    *v20 = v21;
    ++v32;
  }

LABEL_28:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
  result = 0;
LABEL_29:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v28[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  v26 = v28;
  v27 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v25 = 261;
    v23 = "isDataCache";
    v24 = 11;
    v9 = mlir::StringAttr::get(v8, &v23, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v26, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v25 = 261;
    v23 = "isWrite";
    v24 = 7;
    v12 = mlir::StringAttr::get(v11, &v23, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v26, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v25 = 261;
    v23 = "localityHint";
    v24 = 12;
    v15 = mlir::StringAttr::get(v14, &v23, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v26, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v25 = 261;
    v23 = "map";
    v24 = 3;
    v18 = mlir::StringAttr::get(v17, &v23, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v26, v18, v16);
  }

  v19 = v26;
  if (v27)
  {
    v20 = mlir::DictionaryAttr::get(v3, v26, v27);
    v19 = v26;
  }

  else
  {
    v20 = 0;
  }

  if (v19 != v28)
  {
    free(v19);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

__n128 mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::copyProperties(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffinePrefetchOp>::hashProperties(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v17 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v5 = HIDWORD(v2);
  v6 = 0x9DDFEA08EB382D69 * ((8 * v2 - 0xAE502812AA7333) ^ HIDWORD(v2));
  v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  v7 = a2[3];
  v8 = 8 * a2[2] - 0xAE502812AA7333;
  v9 = 0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ ((0x9DDFEA08EB382D69 * (v8 ^ HIDWORD(a2[2]))) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ HIDWORD(a2[2]))));
  v15 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v10 = HIDWORD(v7);
  v11 = 0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7));
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  memset(v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  v20 = 0;
  v21 = 0xFF51AFD7ED558CCDLL;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v18, 0, v18, v19, &v17, &v16, &v15, &v14);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffinePrefetchOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  (*(*a3 + 16))(a3, v4[8]);
  (*(*a3 + 16))(a3, v4[9]);
  (*(*a3 + 16))(a3, v4[10]);
  v5 = v4[11];
  v6 = *(*a3 + 16);

  return v6(a3, v5);
}

uint64_t mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffinePrefetchOp>::getAffineMapAttrForMemRef(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a2 + 24) + 32);
  v8 = 261;
  v7[0] = "map";
  v7[1] = 3;
  result = mlir::StringAttr::get(v4, v7, a3);
  v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[8] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[7] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 7);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v50[8] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, " ", 1uLL);
  }

  else
  {
    *v8 = 32;
    ++*(v7 + 4);
  }

  ODSOperands = mlir::affine::AffinePrefetchOp::getODSOperands(a2, 0);
  (*(*a3 + 160))(a3, *(ODSOperands + 24));
  v10 = (*(*a3 + 16))(a3);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 91);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 91;
  }

  Attr = mlir::Operation::getAttr(a2, "map", 3uLL);
  if (Attr)
  {
    v13 = Attr;
    if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v14 = *(a2 + 72);
        v15 = *(a2 + 68) - 1;
      }

      else
      {
        v14 = 0;
        v15 = -1;
      }

      (*(*a3 + 240))(a3, Attr, (v14 + 32) & 0xFFFFFFFFFFFFFFF9 | 2, v15);
    }
  }

  v16 = (*(*a3 + 16))(a3, v13);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 93);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 93;
  }

  v18 = (*(*a3 + 16))(a3);
  v19 = *(v18 + 4);
  if (*(v18 + 3) - v19 > 1uLL)
  {
    *v19 = 8236;
    *(v18 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v18, ", ", 2uLL);
  }

  v20 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
  v21 = *(v20 + 24);
  if (v21 > 0x40)
  {
    v22 = llvm::APInt::countLeadingZerosSlowCase((v20 + 16)) == v21;
  }

  else
  {
    v22 = *(v20 + 16) == 0;
  }

  v23 = v22;
  v24 = (*(*a3 + 16))(a3);
  if (v23)
  {
    v25 = 4;
  }

  else
  {
    v25 = 5;
  }

  if (v23)
  {
    v26 = "read";
  }

  else
  {
    v26 = "write";
  }

  llvm::raw_ostream::operator<<(v24, v26, v25);
  v27 = (*(*a3 + 16))(a3);
  v28 = *(v27 + 4);
  if (*(v27 + 3) - v28 > 1uLL)
  {
    *v28 = 8236;
    *(v27 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v27, ", ", 2uLL);
  }

  v29 = (*(*a3 + 16))(a3);
  v30 = *(v29 + 4);
  if ((*(v29 + 3) - v30) > 8)
  {
    *(v30 + 8) = 60;
    *v30 = *"locality<";
    *(v29 + 4) += 9;
  }

  else
  {
    llvm::raw_ostream::write(v29, "locality<", 9uLL);
  }

  LocalityHint = mlir::affine::AffinePrefetchOp::getLocalityHint(a2);
  v32 = (*(*a3 + 16))(a3);
  write_unsigned<unsigned long long>(v32, LocalityHint, 0, 0, 0);
  v33 = (*(*a3 + 16))(a3);
  v34 = *(v33 + 4);
  if ((*(v33 + 3) - v34) > 2)
  {
    *(v34 + 2) = 32;
    *v34 = 11326;
    *(v33 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v33, ">, ", 3uLL);
  }

  v35 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v36 = *(v35 + 24);
  if (v36 > 0x40)
  {
    v37 = llvm::APInt::countLeadingZerosSlowCase((v35 + 16)) == v36;
  }

  else
  {
    v37 = *(v35 + 16) == 0;
  }

  v38 = v37;
  v39 = (*(*a3 + 16))(a3);
  if (v38)
  {
    v40 = 5;
  }

  else
  {
    v40 = 4;
  }

  if (v38)
  {
    v41 = "instr";
  }

  else
  {
    v41 = "data";
  }

  llvm::raw_ostream::operator<<(v39, v41, v40);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v43 = *(AttrDictionary + 8);
  v44 = *(AttrDictionary + 16);
  v50[0] = "map";
  v50[1] = 3;
  v50[2] = "localityHint";
  v50[3] = 12;
  v50[4] = "isDataCache";
  v50[5] = 11;
  v50[6] = "isWrite";
  v50[7] = 7;
  (*(*a3 + 192))(a3, v43, v44, v50, 4);
  v45 = (*(*a3 + 16))(a3);
  v46 = *(v45 + 4);
  if ((*(v45 + 3) - v46) > 2)
  {
    *(v46 + 2) = 32;
    *v46 = 14880;
    *(v45 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v45, " : ", 3uLL);
  }

  v47 = mlir::affine::AffinePrefetchOp::getODSOperands(a2, 0);
  result = (*(*a3 + 32))(a3, *(*(v47 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v49 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::Op<mlir::affine::AffinePrefetchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1))
  {
    goto LABEL_27;
  }

  v5 = a1 + 16 * ((*(a1 + 44) >> 23) & 1);
  v8 = *(v5 + 64);
  v6 = (v5 + 64);
  v7 = v8;
  if (!v8)
  {
    v21 = "requires attribute 'isDataCache'";
    goto LABEL_26;
  }

  v9 = v6[1];
  if (!v9)
  {
    v21 = "requires attribute 'isWrite'";
    goto LABEL_26;
  }

  v10 = v6[2];
  if (!v10)
  {
    v21 = "requires attribute 'localityHint'";
    goto LABEL_26;
  }

  v11 = v6[3];
  if (!v11)
  {
    v21 = "requires attribute 'map'";
LABEL_26:
    v38[0] = v21;
    v39 = 259;
    mlir::Operation::emitOpError(a1, v38, v40);
    v22 = v41;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v40);
    if ((v22 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v40[0] = a1;
  if (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps8(v9, "isWrite", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v40))
  {
    v40[0] = a1;
    if (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps9(v10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v40))
    {
      v40[0] = a1;
      if (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps8(v7, "isDataCache", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v40))
      {
        v40[0] = a1;
        if (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v11, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v40))
        {
          ODSOperands = mlir::affine::AffinePrefetchOp::getODSOperands(a1, 0);
          v14 = v13;
          if (v13)
          {
            v15 = 0;
            v16 = ODSOperands + 24;
            while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps4(a1, (*(*v16 + 8) & 0xFFFFFFFFFFFFFFF8), v15))
            {
              ++v15;
              v16 += 32;
              if (v14 == v15)
              {
                goto LABEL_17;
              }
            }

            goto LABEL_27;
          }

LABEL_17:
          v17 = mlir::affine::AffinePrefetchOp::getODSOperands(a1, 1u);
          if (v18)
          {
            v19 = v18;
            v20 = v17 + 24;
            while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(*v20 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v14))
            {
              LODWORD(v14) = v14 + 1;
              v20 += 32;
              if (!--v19)
              {
                goto LABEL_29;
              }
            }

            goto LABEL_27;
          }

LABEL_29:
          Attr = mlir::Operation::getAttr(a1, "map", 3uLL);
          if (Attr && *(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
          {
            v34 = Attr[1];
            v35 = v34[2];
            if (*((*(*(mlir::affine::AffinePrefetchOp::getODSOperands(a1, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16) != v35)
            {
              v37 = "affine.prefetch affine map num results must equal memref rank";
              goto LABEL_49;
            }

            if ((*(a1 + 46) & 0x80) != 0)
            {
              v36 = *(a1 + 68);
            }

            else
            {
              v36 = 0;
            }

            if (*v34 + v34[1] + 1 == v36)
            {
              goto LABEL_33;
            }
          }

          else if ((*(a1 + 46) & 0x80) != 0 && *(a1 + 68) == 1)
          {
LABEL_33:
            AffineScope = mlir::affine::getAffineScope(a1, v27);
            if ((*(a1 + 46) & 0x80) != 0)
            {
              v29 = *(a1 + 68);
              v30 = v29 - 1;
              if (v29 == 1)
              {
                v23 = 1;
                goto LABEL_28;
              }

              v31 = *(a1 + 72) + 32;
            }

            else
            {
              v30 = -1;
              v31 = 32;
            }

            v32 = (v31 + 24);
            while (1)
            {
              v33 = *v32;
              if ((mlir::affine::isValidDim(*v32, AffineScope) & 1) == 0 && (mlir::affine::isValidSymbol(v33, AffineScope) & 1) == 0)
              {
                break;
              }

              v32 += 4;
              v23 = 1;
              if (!--v30)
              {
                goto LABEL_28;
              }
            }

            v37 = "index must be a valid dimension or symbol identifier";
LABEL_49:
            v38[0] = v37;
            v39 = 259;
            mlir::Operation::emitOpError(a1, v38, v40);
            v23 = v41 ^ 1;
            mlir::InFlightDiagnostic::~InFlightDiagnostic(v40);
            goto LABEL_28;
          }

          v37 = "too few operands";
          goto LABEL_49;
        }
      }
    }
  }

LABEL_27:
  v23 = 0;
LABEL_28:
  v24 = *MEMORY[0x277D85DE8];
  return v23 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineStoreOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffineStoreOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineStoreOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::affine::AffineStoreOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineStoreOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineStoreOp>,mlir::affine::AffineWriteOpInterface::Trait<mlir::affine::AffineStoreOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineStoreOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineStoreOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineStoreOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "affine.store", 0xC, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineStoreOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E9DD80;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::foldHook(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 24941 ? (v4 = *(a3 + 2) == 112) : (v4 = 0), v4))
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 3)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 2);
    if (v5 == 24941 && v6 == 112)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "map";
    v7[1] = 3;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v7 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 1;
  if (v8)
  {
    v9 = v7[1];
    if (v9)
    {
      if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v9, "map", 3, a4, a5))
      {
        return 0;
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "map", 3uLL);
    if (v11)
    {
      v12 = *(v10 + 8);
      if (v12)
      {
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
        {
          a5(&v19, a6);
          if (v19)
          {
            if (v19)
            {
              v17 = 0;
              v18 = v12;
              v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v17, 1);
              v14 = v21 + 24 * v22;
              v15 = *v13;
              *(v14 + 16) = *(v13 + 16);
              *v14 = v15;
              ++v22;
            }
          }

          goto LABEL_4;
        }

        *a3 = v12;
      }
    }

    result = 1;
    goto LABEL_13;
  }

  a5(&v19, a6);
  if (v19)
  {
    mlir::Diagnostic::operator<<<42ul>(v20, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  result = 0;
LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v13 = v15;
  v14 = 0x300000000;
  if (v4)
  {
    v5 = *(**v4 + 32);
    v12 = 261;
    v11[0] = "map";
    v11[1] = 3;
    v6 = mlir::StringAttr::get(v5, v11, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v6, v4);
    v7 = v13;
    if (v14)
    {
      v8 = mlir::DictionaryAttr::get(v3, v13, v14);
      v7 = v13;
    }

    else
    {
      v8 = 0;
    }

    if (v7 != v15)
    {
      free(v7);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineStoreOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineStoreOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffineStoreOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineStoreOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::affine::AffineStoreOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineStoreOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineStoreOp>,mlir::affine::AffineWriteOpInterface::Trait<mlir::affine::AffineStoreOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineStoreOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineStoreOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineStoreOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
  *v2 = mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>::getMemRef;
  v2[1] = mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>::getMemRefType;
  v2[2] = mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>::getMapOperands;
  v2[3] = mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>::getAffineMap;
  v2[4] = mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>::getValueToStore;
  v3 = mlir::detail::TypeIDResolver<mlir::affine::AffineWriteOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>::getMapOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 72);
    v3 = *(a2 + 68) - 2;
  }

  else
  {
    v2 = 0;
  }

  return v2 + 64;
}

uint64_t mlir::detail::TypeIDResolver<mlir::affine::AffineWriteOpInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC23CB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23CB0))
  {
    v1 = llvm::getTypeName<mlir::affine::AffineWriteOpInterface>();
    qword_27FC23CA8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC23CB0);
  }

  return qword_27FC23CA8;
}

uint64_t llvm::getTypeName<mlir::affine::AffineWriteOpInterface>()
{
  if ((atomic_load_explicit(&qword_27FC23CC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23CC8))
  {
    qword_27FC23CB8 = llvm::detail::getTypeNameImpl<mlir::affine::AffineWriteOpInterface>();
    unk_27FC23CC0 = v1;
    __cxa_guard_release(&qword_27FC23CC8);
  }

  return qword_27FC23CB8;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::AffineWriteOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::AffineWriteOpInterface]";
  v6 = 98;
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

void mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>::getAffineMapAttrForMemRef;
  v3 = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>::getAffineMapAttrForMemRef(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a2 + 24) + 32);
  v8 = 261;
  v7[0] = "map";
  v7[1] = 3;
  result = mlir::StringAttr::get(v4, v7, a3);
  v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

unint64_t mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>::getEffects(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  result = mlir::affine::AffineStoreOp::getODSOperandIndexAndLength(&v9, 1u);
  v6 = HIDWORD(result);
  if (HIDWORD(result) + result > result)
  {
    v7 = 32 * result;
    do
    {
      v8 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>();
      v13 = *(a2 + 72) + v7;
      v14 = v8;
      v12 = 0;
      v11 = 0;
      v10 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
      result = llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Write *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a3, &v14, &v13, &v12, &v11, &v10);
      v7 += 32;
      LODWORD(v6) = v6 - 1;
    }

    while (v6);
  }

  return result;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  v10[10] = *MEMORY[0x277D85DE8];
  v10[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v10[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v10[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v10[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v10[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v10[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC23CD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23CD8))
  {
    v8 = llvm::getTypeName<mlir::affine::AffineWriteOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineWriteOpInterface::Trait>(void)::Empty>>();
    qword_27FC23CD0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
    __cxa_guard_release(&qword_27FC23CD8);
  }

  v10[6] = qword_27FC23CD0;
  v10[7] = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v10[9] = v2;
  do
  {
    v4 = v10[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 9);
  result = v4 == a1;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::getTypeName<mlir::affine::AffineWriteOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineWriteOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC23CF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23CF0))
  {
    qword_27FC23CE0 = llvm::detail::getTypeNameImpl<mlir::affine::AffineWriteOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineWriteOpInterface::Trait>(void)::Empty>>();
    *algn_27FC23CE8 = v1;
    __cxa_guard_release(&qword_27FC23CF0);
  }

  return qword_27FC23CE0;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::AffineWriteOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineWriteOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::AffineWriteOpInterface::Trait<Empty>]";
  v6 = 112;
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

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v26[2] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, " ", 1uLL);
  }

  else
  {
    *v8 = 32;
    ++*(v7 + 4);
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (*(v9 + 3) - v10 > 1uLL)
  {
    *v10 = 8236;
    *(v9 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v9, ", ", 2uLL);
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 56));
  v11 = (*(*a3 + 16))(a3);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 91);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 91;
  }

  Attr = mlir::Operation::getAttr(a2, "map", 3uLL);
  if (Attr)
  {
    v14 = Attr;
    if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v15 = *(a2 + 72);
        v16 = *(a2 + 68) - 2;
      }

      else
      {
        v15 = 0;
        v16 = -2;
      }

      (*(*a3 + 240))(a3, Attr, (v15 + 64) & 0xFFFFFFFFFFFFFFF9 | 2, v16);
    }
  }

  v17 = (*(*a3 + 16))(a3, v14);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 93);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 93;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v20 = *(AttrDictionary + 8);
  v21 = *(AttrDictionary + 16);
  v26[0] = "map";
  v26[1] = 3;
  (*(*a3 + 192))(a3, v20, v21, v26, 1);
  v22 = (*(*a3 + 16))(a3);
  v23 = *(v22 + 4);
  if ((*(v22 + 3) - v23) > 2)
  {
    *(v23 + 2) = 32;
    *v23 = 14880;
    *(v22 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v22, " : ", 3uLL);
  }

  result = (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 2))
  {
    goto LABEL_17;
  }

  v28 = a1;
  v5 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  if (!v5)
  {
    v29[0] = "requires attribute 'map'";
    v30 = 259;
    mlir::Operation::emitOpError(a1, v29, v31);
    v16 = v32;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v31);
    if ((v16 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_17:
    v17 = 0;
    goto LABEL_18;
  }

  v31[0] = a1;
  if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v5, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v31))
  {
    goto LABEL_17;
  }

  mlir::affine::AffineStoreOp::getODSOperands(&v28, 0);
  v7 = v6;
  ODSOperands = mlir::affine::AffineStoreOp::getODSOperands(&v28, 1u);
  if (v9)
  {
    v10 = v9;
    v11 = ODSOperands + 24;
    while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps4(a1, (*(*v11 + 8) & 0xFFFFFFFFFFFFFFF8), v7))
    {
      ++v7;
      v11 += 32;
      if (!--v10)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_17;
  }

LABEL_11:
  v12 = mlir::affine::AffineStoreOp::getODSOperands(&v28, 2u);
  if (v13)
  {
    v14 = v13;
    v15 = v12 + 24;
    while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(*v15 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v7))
    {
      ++v7;
      v15 += 32;
      if (!--v14)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_17;
  }

LABEL_19:
  v20 = *(a1 + 72);
  v21 = *(*(v20 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  if ((*(*(v20 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) == *(v21 + 24))
  {
    Attr = mlir::Operation::getAttr(a1, "map", 3uLL);
    if (Attr)
    {
      if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
      {
        v23 = Attr;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    if ((*(a1 + 46) & 0x80) != 0)
    {
      v24 = *(a1 + 68);
      v25 = v24 - 2;
      v26 = *(a1 + 72) + 64;
      v27 = v24 - 2;
    }

    else
    {
      v25 = -2;
      v27 = -2;
      v26 = 64;
    }

    v17 = verifyMemoryOpIndexing(a1, v23, v26, v25, v21, v27);
  }

  else
  {
    v29[0] = "value to store must have the same type as memref element type";
    v30 = 259;
    mlir::Operation::emitOpError(a1, v29, v31);
    v17 = v32 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v31);
  }

LABEL_18:
  v18 = *MEMORY[0x277D85DE8];
  return v17 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::OneResult<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineVectorLoadOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineVectorLoadOp>,mlir::affine::AffineReadOpInterface::Trait<mlir::affine::AffineVectorLoadOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineVectorLoadOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineVectorLoadOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "affine.vector_load", 0x12, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineVectorLoadOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E9DE48;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 24941 ? (v4 = *(a3 + 2) == 112) : (v4 = 0), v4))
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 3)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 2);
    if (v5 == 24941 && v6 == 112)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "map";
    v7[1] = 3;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v7 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 1;
  if (v8)
  {
    v9 = v7[1];
    if (v9)
    {
      if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v9, "map", 3, a4, a5))
      {
        return 0;
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "map", 3uLL);
    if (v11)
    {
      v12 = *(v10 + 8);
      if (v12)
      {
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
        {
          a5(&v19, a6);
          if (v19)
          {
            if (v19)
            {
              v17 = 0;
              v18 = v12;
              v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v17, 1);
              v14 = v21 + 24 * v22;
              v15 = *v13;
              *(v14 + 16) = *(v13 + 16);
              *v14 = v15;
              ++v22;
            }
          }

          goto LABEL_4;
        }

        *a3 = v12;
      }
    }

    result = 1;
    goto LABEL_13;
  }

  a5(&v19, a6);
  if (v19)
  {
    mlir::Diagnostic::operator<<<42ul>(v20, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  result = 0;
LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v13 = v15;
  v14 = 0x300000000;
  if (v4)
  {
    v5 = *(**v4 + 32);
    v12 = 261;
    v11[0] = "map";
    v11[1] = 3;
    v6 = mlir::StringAttr::get(v5, v11, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v6, v4);
    v7 = v13;
    if (v14)
    {
      v8 = mlir::DictionaryAttr::get(v3, v13, v14);
      v7 = v13;
    }

    else
    {
      v8 = 0;
    }

    if (v7 != v15)
    {
      free(v7);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::OneResult<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineVectorLoadOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineVectorLoadOp>,mlir::affine::AffineReadOpInterface::Trait<mlir::affine::AffineVectorLoadOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineVectorLoadOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineVectorLoadOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
  *v2 = mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getMemRef;
  v2[1] = mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getMemRefType;
  v2[2] = mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getMapOperands;
  v2[3] = mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getAffineMap;
  v2[4] = mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getValue;
  v3 = mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getMapOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 72);
    v3 = *(a2 + 68) - 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 + 32;
}

void mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getAffineMapAttrForMemRef;
  v3 = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getAffineMapAttrForMemRef(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a2 + 24) + 32);
  v8 = 261;
  v7[0] = "map";
  v7[1] = 3;
  result = mlir::StringAttr::get(v4, v7, a3);
  v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getEffects(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>();
  v10 = *(a2 + 72);
  v11 = v5;
  v9 = 0;
  v8 = 0;
  v7 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
  return llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a3, &v11, &v10, &v9, &v8, &v7);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v11[11] = *MEMORY[0x277D85DE8];
  v11[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v11[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC23D00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23D00))
  {
    v9 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl>(void)::Empty>>();
    qword_27FC23CF8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v9, v10);
    __cxa_guard_release(&qword_27FC23D00);
  }

  v11[2] = qword_27FC23CF8;
  v11[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v11[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v11[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v11[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[7] = mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineReadOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[8] = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v11[10] = v3;
  do
  {
    v5 = v11[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC23D18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23D18))
  {
    qword_27FC23D08 = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl>(void)::Empty>>();
    unk_27FC23D10 = v1;
    __cxa_guard_release(&qword_27FC23D18);
  }

  return qword_27FC23D08;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl<Empty>]";
  v6 = 122;
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

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v26[2] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, " ", 1uLL);
  }

  else
  {
    *v8 = 32;
    ++*(v7 + 4);
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (v10 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 91);
  }

  else
  {
    *(v9 + 4) = v10 + 1;
    *v10 = 91;
  }

  Attr = mlir::Operation::getAttr(a2, "map", 3uLL);
  if (Attr)
  {
    v12 = Attr;
    if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v13 = *(a2 + 72);
        v14 = *(a2 + 68) - 1;
      }

      else
      {
        v13 = 0;
        v14 = -1;
      }

      (*(*a3 + 240))(a3, Attr, (v13 + 32) & 0xFFFFFFFFFFFFFFF9 | 2, v14);
    }
  }

  v15 = (*(*a3 + 16))(a3, v12);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 93);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 93;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v18 = *(AttrDictionary + 8);
  v19 = *(AttrDictionary + 16);
  v26[0] = "map";
  v26[1] = 3;
  (*(*a3 + 192))(a3, v18, v19, v26, 1);
  v20 = (*(*a3 + 16))(a3);
  v21 = *(v20 + 4);
  if ((*(v20 + 3) - v21) > 2)
  {
    *(v21 + 2) = 32;
    *v21 = 14880;
    *(v20 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v20, " : ", 3uLL);
  }

  (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a3 + 16))(a3);
  v23 = *(v22 + 4);
  if (*(v22 + 3) - v23 > 1uLL)
  {
    *v23 = 8236;
    *(v22 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v22, ", ", 2uLL);
  }

  result = (*(*a3 + 32))(a3, *(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1))
  {
    goto LABEL_33;
  }

  v5 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  if (v5)
  {
    v30[0] = a1;
    if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v5, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30))
    {
      goto LABEL_33;
    }

    ODSOperands = mlir::affine::AffineVectorLoadOp::getODSOperands(a1, 0);
    v8 = v7;
    if (v7)
    {
      v9 = 0;
      v10 = ODSOperands + 24;
      while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps4(a1, (*(*v10 + 8) & 0xFFFFFFFFFFFFFFF8), v9))
      {
        ++v9;
        v10 += 32;
        if (v8 == v9)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_33;
    }

LABEL_11:
    v11 = mlir::affine::AffineVectorLoadOp::getODSOperands(a1, 1u);
    if (v12)
    {
      v13 = v12;
      v14 = v11 + 24;
      while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(*v14 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v8))
      {
        LODWORD(v8) = v8 + 1;
        v14 += 32;
        if (!--v13)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_33;
    }

LABEL_15:
    v15 = *(a1 + 36) ? a1 - 16 : 0;
    if (!mlir::affine::__mlir_ods_local_type_constraint_AffineOps6(a1, (*(v15 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
    {
LABEL_33:
      v25 = 0;
      goto LABEL_34;
    }
  }

  else
  {
    v28 = "requires attribute 'map'";
    v29 = 259;
    mlir::Operation::emitOpError(a1, &v28, v30);
    v16 = v31;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v30);
    if (v16)
    {
      goto LABEL_33;
    }
  }

  v17 = *(*(*(a1 + 72) + 24) + 8);
  Attr = mlir::Operation::getAttr(a1, "map", 3uLL);
  if (Attr)
  {
    if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      v19 = Attr;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  if ((*(a1 + 46) & 0x80) != 0)
  {
    v20 = *(a1 + 68);
    v21 = v20 - 1;
    v22 = *(a1 + 72) + 32;
    v23 = v20 - 1;
  }

  else
  {
    v21 = -1;
    v23 = -1;
    v22 = 32;
  }

  if ((verifyMemoryOpIndexing(a1, v19, v22, v21, v17 & 0xFFFFFFFFFFFFFFF8, v23) & 1) == 0)
  {
    goto LABEL_33;
  }

  if (*(a1 + 36))
  {
    v24 = a1 - 16;
  }

  else
  {
    v24 = 0;
  }

  v25 = verifyVectorMemoryOp(a1, v17 & 0xFFFFFFFFFFFFFFF8, *(v24 + 8) & 0xFFFFFFFFFFFFFFF8);
LABEL_34:
  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineVectorStoreOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineVectorStoreOp>,mlir::affine::AffineWriteOpInterface::Trait<mlir::affine::AffineVectorStoreOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineVectorStoreOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineVectorStoreOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "affine.vector_store", 0x13, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineVectorStoreOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E9DF10;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 24941 ? (v4 = *(a3 + 2) == 112) : (v4 = 0), v4))
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 3)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 2);
    if (v5 == 24941 && v6 == 112)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "map";
    v7[1] = 3;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v7 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 1;
  if (v8)
  {
    v9 = v7[1];
    if (v9)
    {
      if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v9, "map", 3, a4, a5))
      {
        return 0;
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "map", 3uLL);
    if (v11)
    {
      v12 = *(v10 + 8);
      if (v12)
      {
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
        {
          a5(&v19, a6);
          if (v19)
          {
            if (v19)
            {
              v17 = 0;
              v18 = v12;
              v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v17, 1);
              v14 = v21 + 24 * v22;
              v15 = *v13;
              *(v14 + 16) = *(v13 + 16);
              *v14 = v15;
              ++v22;
            }
          }

          goto LABEL_4;
        }

        *a3 = v12;
      }
    }

    result = 1;
    goto LABEL_13;
  }

  a5(&v19, a6);
  if (v19)
  {
    mlir::Diagnostic::operator<<<42ul>(v20, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  result = 0;
LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v13 = v15;
  v14 = 0x300000000;
  if (v4)
  {
    v5 = *(**v4 + 32);
    v12 = 261;
    v11[0] = "map";
    v11[1] = 3;
    v6 = mlir::StringAttr::get(v5, v11, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v6, v4);
    v7 = v13;
    if (v14)
    {
      v8 = mlir::DictionaryAttr::get(v3, v13, v14);
      v7 = v13;
    }

    else
    {
      v8 = 0;
    }

    if (v7 != v15)
    {
      free(v7);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineVectorStoreOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineVectorStoreOp>,mlir::affine::AffineWriteOpInterface::Trait<mlir::affine::AffineVectorStoreOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineVectorStoreOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineVectorStoreOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
  *v2 = mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getMemRef;
  v2[1] = mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getMemRefType;
  v2[2] = mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getMapOperands;
  v2[3] = mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getAffineMap;
  v2[4] = mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getValueToStore;
  v3 = mlir::detail::TypeIDResolver<mlir::affine::AffineWriteOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getMapOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 72);
    v3 = *(a2 + 68) - 2;
  }

  else
  {
    v2 = 0;
  }

  return v2 + 64;
}

void mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getAffineMapAttrForMemRef;
  v3 = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getAffineMapAttrForMemRef(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a2 + 24) + 32);
  v8 = 261;
  v7[0] = "map";
  v7[1] = 3;
  result = mlir::StringAttr::get(v4, v7, a3);
  v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

unint64_t mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getEffects(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  result = mlir::affine::AffineVectorStoreOp::getODSOperandIndexAndLength(&v9, 1u);
  v6 = HIDWORD(result);
  if (HIDWORD(result) + result > result)
  {
    v7 = 32 * result;
    do
    {
      v8 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>();
      v13 = *(a2 + 72) + v7;
      v14 = v8;
      v12 = 0;
      v11 = 0;
      v10 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
      result = llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Write *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a3, &v14, &v13, &v12, &v11, &v10);
      v7 += 32;
      LODWORD(v6) = v6 - 1;
    }

    while (v6);
  }

  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v28[2] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, " ", 1uLL);
  }

  else
  {
    *v8 = 32;
    ++*(v7 + 4);
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (*(v9 + 3) - v10 > 1uLL)
  {
    *v10 = 8236;
    *(v9 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v9, ", ", 2uLL);
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 56));
  v11 = (*(*a3 + 16))(a3);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 91);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 91;
  }

  Attr = mlir::Operation::getAttr(a2, "map", 3uLL);
  if (Attr)
  {
    v14 = Attr;
    if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v15 = *(a2 + 72);
        v16 = *(a2 + 68) - 2;
      }

      else
      {
        v15 = 0;
        v16 = -2;
      }

      (*(*a3 + 240))(a3, Attr, (v15 + 64) & 0xFFFFFFFFFFFFFFF9 | 2, v16);
    }
  }

  v17 = (*(*a3 + 16))(a3, v14);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 93);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 93;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v20 = *(AttrDictionary + 8);
  v21 = *(AttrDictionary + 16);
  v28[0] = "map";
  v28[1] = 3;
  (*(*a3 + 192))(a3, v20, v21, v28, 1);
  v22 = (*(*a3 + 16))(a3);
  v23 = *(v22 + 4);
  if ((*(v22 + 3) - v23) > 2)
  {
    *(v23 + 2) = 32;
    *v23 = 14880;
    *(v22 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v22, " : ", 3uLL);
  }

  (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v24 = (*(*a3 + 16))(a3);
  v25 = *(v24 + 4);
  if (*(v24 + 3) - v25 > 1uLL)
  {
    *v25 = 8236;
    *(v24 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v24, ", ", 2uLL);
  }

  result = (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 2))
  {
    goto LABEL_30;
  }

  v31 = a1;
  v5 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  if (!v5)
  {
    v32 = "requires attribute 'map'";
    v33 = 259;
    mlir::Operation::emitOpError(a1, &v32, v34);
    v19 = v35;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v34);
    if ((v19 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_30:
    v28 = 0;
    goto LABEL_31;
  }

  v34[0] = a1;
  if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v5, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v34))
  {
    goto LABEL_30;
  }

  ODSOperands = mlir::affine::AffineVectorStoreOp::getODSOperands(&v31, 0);
  v8 = v7;
  if (v7)
  {
    v9 = 0;
    v10 = ODSOperands + 24;
    while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps6(a1, (*(*v10 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v9))
    {
      ++v9;
      v10 += 32;
      if (v8 == v9)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_30;
  }

LABEL_11:
  v11 = mlir::affine::AffineVectorStoreOp::getODSOperands(&v31, 1u);
  if (v12)
  {
    v13 = v12;
    v14 = v11 + 24;
    while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps4(a1, (*(*v14 + 8) & 0xFFFFFFFFFFFFFFF8), v8))
    {
      LODWORD(v8) = v8 + 1;
      v14 += 32;
      if (!--v13)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_30;
  }

LABEL_15:
  v15 = mlir::affine::AffineVectorStoreOp::getODSOperands(&v31, 2u);
  if (v16)
  {
    v17 = v16;
    v18 = v15 + 24;
    while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(*v18 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v8))
    {
      LODWORD(v8) = v8 + 1;
      v18 += 32;
      if (!--v17)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_30;
  }

LABEL_21:
  v34[0] = a1;
  v20 = *(*(*(a1 + 72) + 56) + 8);
  Attr = mlir::Operation::getAttr(a1, "map", 3uLL);
  if (Attr)
  {
    if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      v22 = Attr;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  if ((*(a1 + 46) & 0x80) != 0)
  {
    v23 = *(a1 + 68);
    v24 = v23 - 2;
    v25 = *(a1 + 72) + 64;
    v26 = v23 - 2;
  }

  else
  {
    v24 = -2;
    v26 = -2;
    v25 = 64;
  }

  if ((verifyMemoryOpIndexing(a1, v22, v25, v24, v20 & 0xFFFFFFFFFFFFFFF8, v26) & 1) == 0)
  {
    goto LABEL_30;
  }

  v27 = mlir::affine::AffineVectorStoreOp::getODSOperands(v34, 0);
  v28 = verifyVectorMemoryOp(a1, v20 & 0xFFFFFFFFFFFFFFF8, *(*(v27 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
LABEL_31:
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineYieldOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffineYieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineYieldOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineYieldOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineYieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineYieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineYieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineYieldOp>,mlir::OpTrait::IsTerminator<mlir::affine::AffineYieldOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::affine::AffineYieldOp>,mlir::OpTrait::ReturnLike<mlir::affine::AffineYieldOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineYieldOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "affine.yield", 0xC, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineYieldOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E9DFD8;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineYieldOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffineYieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineYieldOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineYieldOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineYieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineYieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineYieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineYieldOp>,mlir::OpTrait::IsTerminator<mlir::affine::AffineYieldOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::affine::AffineYieldOp>,mlir::OpTrait::ReturnLike<mlir::affine::AffineYieldOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineYieldOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineYieldOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineYieldOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::affine::AffineYieldOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineYieldOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineYieldOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineYieldOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineYieldOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::affine::AffineYieldOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::affine::AffineYieldOp>::getMutableSuccessorOperands;
  v2[1] = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::affine::AffineYieldOp>::getSuccessorRegions;
  v3 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

double mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::affine::AffineYieldOp>::getMutableSuccessorOperands@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v2 = *(a1 + 68);
  }

  else
  {
    v2 = 0;
  }

  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 12) = v2;
  *(a2 + 16) = a2 + 32;
  *&result = 0x100000000;
  *(a2 + 24) = 0x100000000;
  return result;
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::affine::AffineYieldOp>::getSuccessorRegions(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(v2 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v3 && *(v3 + 16))
    {
      InterfaceFor = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(*(v3 + 16));
      v6 = *(a2 + 16);
      if (v6)
      {
        v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8;
      }
    }

    else
    {
      InterfaceFor = 0;
    }
  }

  else
  {
    InterfaceFor = 0;
  }

  v8 = *(InterfaceFor + 16);

  return v8();
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[12] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[11] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 11);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v32[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v32, 0);
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68))
  {
    v8 = (*(*a3 + 16))(a3);
    v9 = *(v8 + 4);
    if (v9 >= *(v8 + 3))
    {
      llvm::raw_ostream::write(v8, 32);
    }

    else
    {
      *(v8 + 4) = v9 + 1;
      *v9 = 32;
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v10 = *(a2 + 68);
      v11 = *(a2 + 72);
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    v12 = (*(*a3 + 16))(a3);
    if (v10)
    {
      v13 = v12;
      (*(*a3 + 160))(a3, *(v11 + 24));
      v14 = v10 - 1;
      if (v14)
      {
        v15 = (v11 + 56);
        do
        {
          v16 = *(v13 + 4);
          if (*(v13 + 3) - v16 > 1uLL)
          {
            *v16 = 8236;
            *(v13 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v13, ", ", 2uLL);
          }

          v17 = *v15;
          v15 += 4;
          (*(*a3 + 160))(a3, v17);
          --v14;
        }

        while (v14);
      }
    }

    v18 = (*(*a3 + 16))(a3);
    v19 = *(v18 + 4);
    if (v19 >= *(v18 + 3))
    {
      llvm::raw_ostream::write(v18, 32);
    }

    else
    {
      *(v18 + 4) = v19 + 1;
      *v19 = 32;
    }

    v20 = (*(*a3 + 16))(a3);
    v21 = *(v20 + 4);
    if (*(v20 + 3) == v21)
    {
      llvm::raw_ostream::write(v20, ":", 1uLL);
    }

    else
    {
      *v21 = 58;
      ++*(v20 + 4);
    }

    v22 = (*(*a3 + 16))(a3);
    v23 = *(v22 + 4);
    if (v23 >= *(v22 + 3))
    {
      llvm::raw_ostream::write(v22, 32);
    }

    else
    {
      *(v22 + 4) = v23 + 1;
      *v23 = 32;
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v24 = *(a2 + 68);
      if (v24)
      {
        v25 = *(a2 + 72);
        (*(*a3 + 32))(a3, *(*(v25 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v24 != 1)
        {
          v26 = v24 - 1;
          v27 = (v25 + 56);
          do
          {
            v28 = (*(*a3 + 16))(a3);
            v29 = *(v28 + 4);
            if (*(v28 + 3) - v29 > 1uLL)
            {
              *v29 = 8236;
              *(v28 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v28, ", ", 2uLL);
            }

            v30 = *v27;
            v27 += 4;
            (*(*a3 + 32))(a3, *(v30 + 8) & 0xFFFFFFFFFFFFFFF8);
            --v26;
          }

          while (v26);
        }
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyIsTerminator(a1, v5))
  {
    v14 = 0;
    goto LABEL_19;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v6 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v6)
    {
      v6 = *(v6 + 16);
    }
  }

  v7 = *(v6 + 36);
  if (v7)
  {
    v8 = v6 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 44);
  if ((v9 & 0x800000) != 0)
  {
    v10 = *(a1 + 68);
    v11 = *(a1 + 72);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = *(*(v6 + 48) + 16);
  if (v12 != &mlir::detail::TypeIDResolver<mlir::affine::AffineParallelOp,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::affine::AffineIfOp,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id)
  {
    v30 = 257;
    mlir::Operation::emitOpError(a1, v29, &v31);
    if (v31)
    {
      v13 = "only terminates affine.if/for/parallel regions";
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  if ((v9 & 0x800000) != 0)
  {
    v17 = *(a1 + 68);
  }

  else
  {
    v17 = 0;
  }

  if (v7 != v17)
  {
    v30 = 257;
    mlir::Operation::emitOpError(a1, v29, &v31);
    if (v31)
    {
      mlir::Diagnostic::operator<<<71ul>(v32, "parent of yield must have same number of results as the yield operands");
    }

    goto LABEL_41;
  }

  v14 = 1;
  if (v7 && v10)
  {
    v18 = 0;
    v19 = v10 - 1;
    v20 = v7 - 1;
    v21 = v11 + 24;
    v22 = v6 - 16;
    while (1)
    {
      v23 = v8;
      if (!v18)
      {
        goto LABEL_31;
      }

      v24 = *(v6 - 8) & 7;
      v25 = v6 - 16;
      v26 = v18;
      if (v24 != 6)
      {
        v27 = (5 - v24);
        v23 = v22;
        v26 = v18 - v27;
        if (v18 <= v27)
        {
          goto LABEL_31;
        }

        v25 = v6 - 16 - 16 * v27;
      }

      v23 = v25 - 24 * v26;
LABEL_31:
      if ((*(*v21 + 8) ^ *(v23 + 8)) >= 8)
      {
        v30 = 257;
        mlir::Operation::emitOpError(a1, v29, &v31);
        if (v31)
        {
          v13 = "types mismatch between yield op and its parent";
LABEL_40:
          mlir::Diagnostic::operator<<<47ul>(v32, v13);
        }

LABEL_41:
        v14 = v32[192] ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
        break;
      }

      if (v20 != v18)
      {
        v21 += 32;
        v22 -= 16;
        if (v19 != v18++)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_19:
  v15 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

uint64_t anonymous namespace::AffineInlinerInterface::isLegalToInline(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(*(a2 + 16) + 48) + 16);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::affine::AffineParallelOp,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::affine::AffineIfOp,void>::id)
  {
    return 0;
  }

  v9 = *(a3 + 8);
  if (v9 == a3 || *(v9 + 8) != a3)
  {
    return 0;
  }

  v11 = v9 + 24;
  v12 = *(v9 + 32);
  if (v12 != v9 + 24)
  {
    v36 = v9 + 24;
    do
    {
      v37[0] = llvm::DefaultDoCastIfPossible<mlir::MemoryEffectOpInterface,mlir::Operation &,llvm::CastInfo<mlir::MemoryEffectOpInterface,mlir::Operation,void>>::doCastIfPossible(v12);
      v37[1] = v15;
      if (!v37[0] || !mlir::MemoryEffectOpInterface::hasNoEffect(v37))
      {
        if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
        {
          isValidDim = mlir::affine::isValidDim(v12 - 16, a3);
          v19 = *(v12 + 44);
          if (isValidDim)
          {
            if ((v19 & 0x800000) != 0)
            {
              v20 = *(v12 + 68);
              v21 = *(v12 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
            }

            else
            {
              v20 = 0;
              v21 = 2;
            }

            v37[0] = mlir::affine::isValidDim;
            if ((remainsLegalAfterInline(v21, v20, a3, a2, a5, llvm::function_ref<BOOL ()(mlir::Value,mlir::Region *)>::callback_fn<BOOL (*)(mlir::Value,mlir::Region *)>, v37) & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            if ((v19 & 0x800000) != 0)
            {
              v22 = *(v12 + 68);
              v23 = *(v12 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
            }

            else
            {
              v22 = 0;
              v23 = 2;
            }

            v37[0] = mlir::affine::isValidSymbol;
            result = remainsLegalAfterInline(v23, v22, a3, a2, a5, llvm::function_ref<BOOL ()(mlir::Value,mlir::Region *)>::callback_fn<BOOL (*)(mlir::Value,mlir::Region *)>, v37);
            if (!result)
            {
              return result;
            }
          }
        }

        else
        {
          if (!mlir::OpInterface<mlir::affine::AffineReadOpInterface,mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits>::getInterfaceFor(v12) || (InterfaceFor = mlir::OpInterface<mlir::affine::AffineReadOpInterface,mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits>::getInterfaceFor(v12), (v17 = v12) == 0))
          {
            if (mlir::OpInterface<mlir::affine::AffineWriteOpInterface,mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits>::getInterfaceFor(v12))
            {
              InterfaceFor = mlir::OpInterface<mlir::affine::AffineWriteOpInterface,mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits>::getInterfaceFor(v12);
              v17 = v12;
            }

            else
            {
              v17 = 0;
              InterfaceFor = 0;
            }

            if (!v17)
            {
              return 0;
            }
          }

          v24 = (*(InterfaceFor + 24))(InterfaceFor, v17);
          v25 = (*(InterfaceFor + 16))(InterfaceFor, v17);
          if (v26 >= *v24)
          {
            v27 = *v24;
          }

          else
          {
            v27 = v26;
          }

          v28 = v25 & 0xFFFFFFFFFFFFFFF9;
          v29 = (*(InterfaceFor + 16))(InterfaceFor, v17);
          v31 = v30;
          v32 = v24[1];
          v37[0] = mlir::affine::isValidDim;
          result = remainsLegalAfterInline(v28 | 2, v27, a3, a2, a5, llvm::function_ref<BOOL ()(mlir::Value,mlir::Region *)>::callback_fn<BOOL (*)(mlir::Value,mlir::Region *)>, v37);
          if (!result)
          {
            return result;
          }

          v33 = 32 * (v31 - v32);
          if (v31 <= v32)
          {
            v33 = 0;
          }

          v34 = (v33 + v29) & 0xFFFFFFFFFFFFFFF9;
          v35 = v31 >= v32 ? v32 : v31;
          v37[0] = mlir::affine::isValidSymbol;
          v11 = v36;
          if ((remainsLegalAfterInline(v34 | 2, v35, a3, a2, a5, llvm::function_ref<BOOL ()(mlir::Value,mlir::Region *)>::callback_fn<BOOL (*)(mlir::Value,mlir::Region *)>, v37) & 1) == 0)
          {
            return 0;
          }
        }
      }

      v12 = *(v12 + 8);
    }

    while (v12 != v11);
  }

  return 1;
}

BOOL anonymous namespace::AffineInlinerInterface::isLegalToInline(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(v3 + 48) + 32))(*(v3 + 48), v4))
  {
    return 1;
  }

  v5 = *(*(v3 + 48) + 16);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id)
  {
    return 1;
  }

  return v5 == &mlir::detail::TypeIDResolver<mlir::affine::AffineParallelOp,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::affine::AffineIfOp,void>::id;
}

uint64_t remainsLegalAfterInline(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = a1;
  v28 = 0;
  if (a2)
  {
    for (i = 0; i != a2; v28 = ++i)
    {
      v14 = mlir::ValueRange::dereference_iterator(&v27, i);
      if (mlir::affine::isTopLevelValue(v14, a3))
      {
        v15 = *(v14 + 8) & 7;
        if (v15 == 7)
        {
          v26 = v14;
          v16 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(a5, &v26);
          v17 = 0;
          if (v16 && v16 != *a5 + 16 * *(a5 + 16))
          {
            v17 = *(v16 + 8);
          }

          if ((a6(a7, v17, a4) & 1) == 0)
          {
LABEL_27:
            result = 0;
            goto LABEL_28;
          }
        }

        else
        {
          v26 = 0;
          if (v14)
          {
            if (v15 == 6)
            {
              v18 = v14 + 24 * *(v14 + 16) + 120;
            }

            else
            {
              v18 = v14 + 16 * v15 + 16;
            }
          }

          else
          {
            v18 = 0;
          }

          InterfaceFor = mlir::OpInterface<mlir::ShapedDimOpInterface,mlir::detail::ShapedDimOpInterfaceInterfaceTraits>::getInterfaceFor(v18);
          if ((~*(v14 + 8) & 7) != 0)
          {
            v20 = v14;
          }

          else
          {
            v20 = 0;
          }

          if (v20)
          {
            v21 = *(v20 + 8) & 7;
            if (v21 == 6)
            {
              v22 = v20 + 24 * *(v20 + 16) + 120;
            }

            else
            {
              v22 = v20 + 16 * v21 + 16;
            }
          }

          else
          {
            v22 = 0;
          }

          v25 = &v26;
          if (!mlir::detail::constant_op_binder<mlir::Attribute>::match(&v25, v22) && !InterfaceFor)
          {
            goto LABEL_27;
          }
        }
      }
    }
  }

  result = 1;
LABEL_28:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpInterface<mlir::affine::AffineReadOpInterface,mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::OpInterface<mlir::affine::AffineWriteOpInterface,mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::affine::AffineWriteOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::affine::AffineWriteOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::affine::AffineWriteOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

BOOL mlir::AsmParser::parseAttribute<mlir::AffineMapAttr>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v16 = 0;
  if ((*(*a1 + 440))(a1, &v16, 0))
  {
    if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      v8 = v16;
    }

    else
    {
      v8 = 0;
    }

    *a2 = v8;
    if (v8)
    {
      v9 = *(**v8 + 32);
      v18 = 261;
      v17[0] = "map";
      v17[1] = 3;
      v10 = mlir::StringAttr::get(v9, v17, v7);
      mlir::NamedAttrList::push_back(a3, v10, v8);
      v11 = 1;
    }

    else
    {
      v14 = "invalid kind of attribute specified";
      v15 = 259;
      (*(*a1 + 24))(v17, a1, v6, &v14);
      v11 = (v19 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL llvm::concat_iterator<mlir::Value,mlir::Value*,mlir::Value*>::incrementHelper<0ul>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  if (*a1 != v2)
  {
    *a1 = v1 + 8;
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<mlir::Value,mlir::Value*,mlir::Value*>::incrementHelper<1ul>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  if (v1 != v2)
  {
    *(a1 + 8) = v1 + 8;
  }

  return v1 != v2;
}

uint64_t llvm::concat_iterator<mlir::Value,mlir::Value*,mlir::Value*>::getHelper<0ul>(void *a1)
{
  if (*a1 == a1[2])
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t llvm::concat_iterator<mlir::Value,mlir::Value*,mlir::Value*>::getHelper<1ul>(uint64_t a1)
{
  if (*(a1 + 8) == *(a1 + 24))
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineMinOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "affine.min";
    v5[3] = 10;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineMaxOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "affine.max";
    v5[3] = 10;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::find(uint64_t a1, unint64_t a2)
{
  v2 = a1 + 8;
  if (*a1)
  {
    v3 = 8;
  }

  else
  {
    v2 = *(a1 + 8);
    v3 = *(a1 + 16);
    if (!v3)
    {
      v4 = 0;
      return v2 + 16 * v4;
    }
  }

  v6 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v6 >> 47) ^ v6);
  LODWORD(v6) = -348639895 * ((v7 >> 47) ^ v7);
  v8 = v3 - 1;
  v9 = (v3 - 1) & v6;
  v10 = *(v2 + 16 * v9);
  if (v10 == a2)
  {
    return v2 + 16 * v9;
  }

  v11 = 1;
  while (v10 != -4096)
  {
    v12 = v9 + v11++;
    v9 = v12 & v8;
    v10 = *(v2 + 16 * v9);
    if (v10 == a2)
    {
      return v2 + 16 * v9;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v2 = *(a1 + 8);
    v4 = *(a1 + 16);
    return v2 + 16 * v4;
  }

  return a1 + 136;
}

unint64_t *llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<void canonicalizeMapOrSetAndOperands<mlir::AffineMap>(mlir::AffineMap *,llvm::SmallVectorImpl<mlir::Value> *)::{lambda(mlir::AffineExpr)#1}>(unint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (a2 && v2 == 6)
  {
    return llvm::SmallBitVector::set(*result, *(a2 + 16));
  }

  if (a2 && v2 == 7)
  {
    return llvm::SmallBitVector::set(*++result, *(a2 + 16));
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  v19 = 0;
  result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::LookupBucketFor<mlir::Value>(a2, *a3, &v19);
  v9 = v19;
  if (result)
  {
    v10 = a2 + 8;
    if (*a2)
    {
      v11 = 8;
    }

    else
    {
      v10 = *(a2 + 8);
      v11 = *(a2 + 16);
    }

    v15 = 0;
    v16 = v10 + 16 * v11;
    goto LABEL_17;
  }

  v20 = v19;
  v12 = *a2;
  v13 = *a2 >> 1;
  if (*a2)
  {
    v14 = 8;
  }

  else
  {
    v14 = *(a2 + 16);
  }

  if (4 * v13 + 4 >= 3 * v14)
  {
    v14 *= 2;
    goto LABEL_19;
  }

  if (v14 + ~v13 - *(a2 + 4) <= v14 >> 3)
  {
LABEL_19:
    llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::grow(a2, v14);
    result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::LookupBucketFor<mlir::Value>(a2, *a3, &v20);
    v12 = *a2;
    v9 = v20;
  }

  *a2 = v12 + 2;
  if (*v9 != -4096)
  {
    --*(a2 + 4);
  }

  *v9 = *a3;
  v9[1] = *a4;
  v17 = a2 + 8;
  if (*a2)
  {
    v18 = 8;
  }

  else
  {
    v17 = *(a2 + 8);
    v18 = *(a2 + 16);
  }

  v16 = v17 + 16 * v18;
  v15 = 1;
LABEL_17:
  *a1 = v9;
  *(a1 + 8) = v16;
  *(a1 + 16) = v15;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::LookupBucketFor<mlir::Value>(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v9 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v5 >> 47) ^ v5);
  LODWORD(v5) = -348639895 * ((v6 >> 47) ^ v6);
  v7 = v4 - 1;
  v8 = (v4 - 1) & v5;
  v9 = (v3 + 16 * v8);
  v10 = *v9;
  if (*v9 == a2)
  {
    result = 1;
  }

  else
  {
    v12 = 0;
    v13 = 1;
    result = 1;
    while (v10 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v10 == -8192;
      }

      if (v14)
      {
        v12 = v9;
      }

      v15 = v8 + v13++;
      v8 = v15 & v7;
      v9 = (v3 + 16 * (v15 & v7));
      v10 = *v9;
      if (*v9 == a2)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v12)
    {
      v9 = v12;
    }
  }

LABEL_7:
  *a3 = v9;
  return result;
}

uint64_t llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::grow(uint64_t a1, unsigned int a2)
{
  v16[16] = *MEMORY[0x277D85DE8];
  if (a2 >= 9)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a2 > 8)
    {
      v14 = a2;
      *(a1 + 8) = llvm::allocate_buffer((16 * a2), 8uLL);
      *(a1 + 16) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::moveFromOldBuckets(a1, v6, &v6[2 * v7]);
    v15 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F891030);
  }

  v8 = 0;
  v9 = v16;
  do
  {
    v10 = *(a1 + v8 + 8);
    if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *v9 = v10;
      v9[1] = *(a1 + v8 + 16);
      v9 += 2;
    }

    v8 += 16;
  }

  while (v8 != 128);
  if (a2 > 8)
  {
    *a1 &= ~1u;
    v11 = a2;
    *(a1 + 8) = llvm::allocate_buffer((16 * a2), 8uLL);
    *(a1 + 16) = v11;
  }

  result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::moveFromOldBuckets(a1, v16, v9);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::moveFromOldBuckets(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = result + 8;
    v9 = result + 136;
  }

  else
  {
    v7 = *(result + 16);
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = *(result + 8);
    v9 = v8 + 16 * v7;
  }

  v10 = 0;
  v11 = (v9 - v8 - 16) >> 4;
  v12 = vdupq_n_s64(v11);
  v13 = (v8 + 16);
  do
  {
    v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_25D0A0500)));
    if (v14.i8[0])
    {
      *(v13 - 2) = -4096;
    }

    if (v14.i8[4])
    {
      *v13 = -4096;
    }

    v10 += 2;
    v13 += 4;
  }

  while (((v11 + 2) & 0x1FFFFFFFFFFFFFFELL) != v10);
LABEL_15:
  while (a2 != a3)
  {
    v15 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v17 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::LookupBucketFor<mlir::Value>(v5, v15, &v17);
      v16 = v17;
      *v17 = *a2;
      v16[1] = a2[1];
      *v5 += 2;
    }

    a2 += 2;
  }

  return result;
}

unint64_t *llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<void canonicalizeMapOrSetAndOperands<mlir::IntegerSet>(mlir::IntegerSet *,llvm::SmallVectorImpl<mlir::Value> *)::{lambda(mlir::AffineExpr)#1}>(unint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (a2 && v2 == 6)
  {
    return llvm::SmallBitVector::set(*result, *(a2 + 16));
  }

  if (a2 && v2 == 7)
  {
    return llvm::SmallBitVector::set(*++result, *(a2 + 16));
  }

  return result;
}

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineApplyOp>::~SimplifyAffineOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineApplyOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v31[8] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 44);
  v6 = *(*(a2 + 16 * ((v5 >> 23) & 1) + 64) + 8);
  v22 = v6;
  if ((v5 & 0x800000) != 0)
  {
    v7 = *(a2 + 68);
    v8 = *(a2 + 72);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v23 = v25;
  v24 = 0x800000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v23, v8, 0, v8, v7);
  composeAffineMapAndOperands(&v22, &v23);
  mlir::affine::canonicalizeMapAndOperands(&v22, &v23);
  simplifyMapWithOperands(&v22, v23, v24);
  v10 = v22;
  v9 = v23;
  if (v22 != v6)
  {
LABEL_4:
    v11 = v24;
    v12 = *(a2 + 24);
    v13 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineApplyOp>((a3 + 1), *(**v12 + 32));
    v26[0] = v12;
    v26[1] = v13;
    v26[2] = v27;
    v26[3] = 0x400000000;
    v27[4] = v28;
    v27[5] = 0x400000000;
    v28[4] = v29;
    v28[5] = 0x400000000;
    v29[8] = 4;
    v29[9] = v30;
    v29[10] = 0x100000000;
    v30[1] = v31;
    v30[2] = 0x100000000;
    v31[1] = 0;
    v31[2] = 0;
    v31[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v31[4] = 0;
    v31[6] = 0;
    mlir::affine::AffineApplyOp::build(a3 + 1, v26, v10, v9 & 0xFFFFFFFFFFFFFFF9, v11);
    v14 = mlir::Operation::create(v26);
    mlir::OpBuilder::insert((a3 + 1), v14);
    v15 = *(*(v14 + 6) + 16);
    mlir::OperationState::~OperationState(v26);
    if (v15 == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    (*(*a3 + 8))(a3, a2, v16);
    v17 = 1;
    v9 = v23;
    goto LABEL_13;
  }

  if (v7)
  {
    v18 = 0;
    v19 = (v8 + 24);
    while (*v19 == *(v23 + v18))
    {
      v18 += 8;
      v19 += 4;
      if (8 * v7 == v18)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_4;
  }

LABEL_12:
  v17 = 0;
LABEL_13:
  if (v9 != v25)
  {
    free(v9);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

void simplifyMapWithOperands(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x600000000;
  v6 = *a1;
  v7 = *(*a1 + 8);
  if (v7 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v13, v15, v7, 8);
    v6 = *a1;
    LODWORD(v7) = *(*a1 + 8);
  }

  if (v7)
  {
    v8 = (v6 + 24);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v12 = v10;
      simplifyExprAndOperands(&v12, **a1, *(*a1 + 4), a2, a3);
      llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v13, v12);
      v9 -= 8;
    }

    while (v9);
    v6 = *a1;
  }

  *a1 = mlir::AffineMap::getImpl(*v6, *(v6 + 4), v13, v14, *(v6 + 16));
  if (v13 != v15)
  {
    free(v13);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void simplifyExprAndOperands(void ***a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v70[6] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  if (*a1)
  {
    v6 = *(*a1 + 2) <= 4;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_110;
  }

  v12 = v5[2];
  v63 = v5[3];
  v64 = v12;
  simplifyExprAndOperands(&v64);
  simplifyExprAndOperands(&v63);
  AffineBinaryOpExpr = mlir::getAffineBinaryOpExpr(*(v5 + 2), v64, v63);
  *a1 = AffineBinaryOpExpr;
  v15 = *(AffineBinaryOpExpr + 2);
  v16 = v15 >= 5 ? 0 : AffineBinaryOpExpr;
  if ((v15 - 2) > 2 || v16 == 0)
  {
    goto LABEL_110;
  }

  v18 = v16[3];
  v19 = v18 && *(v18 + 2) == 5;
  if (!v19 || v18[2] < 1)
  {
    goto LABEL_110;
  }

  v60 = v18[2];
  v61 = v16;
  v20 = v16[2];
  v56 = v16[3];
  v57 = *AffineBinaryOpExpr;
  v68 = v70;
  v69 = 0x300000000;
  v65 = v67;
  v66 = 0x300000000;
  v21 = 8 * a5;
  if (a5 >= 4)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v70, a5, 16);
    if (a5 > HIDWORD(v66))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, a5, 16);
    }

    goto LABEL_23;
  }

  if (a5)
  {
LABEL_23:
    v22 = 8 * a5;
    v23 = a4;
    do
    {
      v24 = *v23++;
      LowerBound = getLowerBound(v24);
      llvm::SmallVectorTemplateBase<std::optional<long long>,true>::push_back(&v68, LowerBound, v26);
      UpperBound = getUpperBound(v24);
      llvm::SmallVectorTemplateBase<std::optional<long long>,true>::push_back(&v65, UpperBound, v28);
      v22 -= 8;
    }

    while (v22);
  }

  if (*(v20 + 8) != 5 || v20 == 0)
  {
    BoundForAffineExpr = mlir::getBoundForAffineExpr(v20, a2, a3, v68, v69, v65, v66, 0);
    v58 = v30 ^ 1;
  }

  else
  {
    v58 = 0;
    BoundForAffineExpr = *(v20 + 16);
  }

  if (v65 != v67)
  {
    free(v65);
  }

  v62 = v20;
  if (v68 != v70)
  {
    free(v68);
  }

  v68 = v70;
  v69 = 0x300000000;
  v65 = v67;
  v66 = 0x300000000;
  if (a5 >= 4)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v70, a5, 16);
    if (a5 > HIDWORD(v66))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, a5, 16);
    }

    goto LABEL_39;
  }

  if (a5)
  {
LABEL_39:
    v31 = a4;
    do
    {
      v32 = *v31++;
      v33 = getLowerBound(v32);
      llvm::SmallVectorTemplateBase<std::optional<long long>,true>::push_back(&v68, v33, v34);
      v35 = getUpperBound(v32);
      llvm::SmallVectorTemplateBase<std::optional<long long>,true>::push_back(&v65, v35, v36);
      v21 -= 8;
    }

    while (v21);
  }

  if (*(v62 + 8) != 5 || v62 == 0)
  {
    v40 = mlir::getBoundForAffineExpr(v62, a2, a3, v68, v69, v65, v66, 1);
    v39 = v38 ^ 1;
  }

  else
  {
    v39 = 0;
    v40 = *(v62 + 16);
  }

  if (v65 != v67)
  {
    free(v65);
  }

  if (v68 != v70)
  {
    free(v68);
  }

  if ((v58 | v39))
  {
    goto LABEL_52;
  }

  v44 = *(v61 + 2);
  if (v44 == 4)
  {
    if (BoundForAffineExpr)
    {
      if ((BoundForAffineExpr ^ v60) < 0)
      {
        v51 = BoundForAffineExpr / v60;
      }

      else
      {
        v51 = (BoundForAffineExpr - 1) / v60 + 1;
      }
    }

    else
    {
      v51 = 0;
    }

    if (v40)
    {
      if ((v40 ^ v60) < 0)
      {
        v54 = v40 / v60;
      }

      else
      {
        v54 = (v40 - 1) / v60 + 1;
      }
    }

    else
    {
      v54 = 0;
    }

    if (v51 != v54)
    {
      goto LABEL_52;
    }

    if (BoundForAffineExpr)
    {
      v42 = v57;
      if (((BoundForAffineExpr ^ v60) & 0x8000000000000000) == 0)
      {
        v43 = (BoundForAffineExpr - 1) / v60 + 1;
        goto LABEL_108;
      }

      goto LABEL_107;
    }

LABEL_106:
    v43 = 0;
    v42 = v57;
    goto LABEL_108;
  }

  if (v44 == 3)
  {
    if (BoundForAffineExpr)
    {
      if ((BoundForAffineExpr ^ v60) < 0)
      {
        v45 = (BoundForAffineExpr + 1) / v60 - 1;
      }

      else
      {
        v45 = BoundForAffineExpr / v60;
      }
    }

    else
    {
      v45 = 0;
    }

    if (v40)
    {
      if ((v40 ^ v60) < 0)
      {
        v53 = (v40 + 1) / v60 - 1;
      }

      else
      {
        v53 = v40 / v60;
      }
    }

    else
    {
      v53 = 0;
    }

    if (v45 != v53)
    {
      goto LABEL_52;
    }

    if (BoundForAffineExpr)
    {
      v42 = v57;
      if ((BoundForAffineExpr ^ v60) < 0)
      {
        v43 = (BoundForAffineExpr + 1) / v60 - 1;
        goto LABEL_108;
      }

LABEL_107:
      v43 = BoundForAffineExpr / v60;
      goto LABEL_108;
    }

    goto LABEL_106;
  }

  if (v44 == 2 && BoundForAffineExpr < v60 && v40 < v60)
  {
    *a1 = v62;
    goto LABEL_110;
  }

LABEL_52:
  if (*(v62 + 8) >= 5)
  {
    v41 = 0;
  }

  else
  {
    v41 = v62;
  }

  if (v41 && !*(v41 + 8))
  {
    v47 = *(v41 + 16);
    v46 = *(v41 + 24);
    LargestKnownDivisor = getLargestKnownDivisor(v47, a4);
    if (isNonNegativeBoundedBy(v46, a4, a5, LargestKnownDivisor))
    {
      v50 = v47;
    }

    else
    {
      LargestKnownDivisor = getLargestKnownDivisor(v46, a4);
      if (!isNonNegativeBoundedBy(v47, a4, a5, LargestKnownDivisor))
      {
        goto LABEL_57;
      }

      v50 = v46;
      v46 = v47;
    }

    v68 = v50;
    v65 = v46;
    if (v60 % LargestKnownDivisor || *(v61 + 2) != 3)
    {
      if (LargestKnownDivisor % v60 || *(v61 + 2) != 2)
      {
        goto LABEL_110;
      }

      AffineConstantExpr = mlir::AffineExpr::operator%(&v65, v56, v49);
    }

    else
    {
      AffineConstantExpr = mlir::AffineExpr::floorDiv(&v68, v56, v49);
    }

LABEL_109:
    *a1 = AffineConstantExpr;
    goto LABEL_110;
  }

LABEL_57:
  if (isNonNegativeBoundedBy(v62, a4, a5, v60) && *(v61 + 2) == 3 || !(getLargestKnownDivisor(v62, a4) % v60) && *(v61 + 2) == 2)
  {
    v42 = **a1;
    v43 = 0;
LABEL_108:
    AffineConstantExpr = mlir::getAffineConstantExpr(v43, v42, v14);
    goto LABEL_109;
  }

LABEL_110:
  v55 = *MEMORY[0x277D85DE8];
}

BOOL isNonNegativeBoundedBy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  if (a1 && v6 == 5)
  {
    v7 = *(a1 + 16);
    return v7 >= 0 && v7 < a4;
  }

  else
  {
    result = 0;
    if (a1 && v6 == 6)
    {
      v10 = mlir::affine::getForInductionVarOwner(*(a2 + 8 * *(a1 + 16)));
      result = 0;
      if (v10)
      {
        v11 = v10 + 16 * ((*(v10 + 44) >> 23) & 1);
        v13 = *(v11 + 64);
        v12 = v11 + 64;
        v14 = *(v13 + 8);
        if (*(v14 + 8) == 1)
        {
          v15 = *(v14 + 24);
          if (*(v15 + 8) == 5 && (*(v15 + 16) & 0x8000000000000000) == 0)
          {
            v16 = *(*(v12 + 16) + 8);
            if (*(v16 + 8) == 1)
            {
              v17 = *(v16 + 24);
              if (*(v17 + 8) == 5 && *(v17 + 16) <= a4)
              {
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t getLargestKnownDivisor(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  result = mlir::AffineExpr::getLargestKnownDivisor(&v14);
  if (*(a1 + 8) == 6 && a1 != 0)
  {
    v6 = mlir::affine::getForInductionVarOwner(*(a2 + 8 * *(a1 + 16)));
    if (v6)
    {
      v7 = v6;
      v8 = *(*&v6[4 * ((v6[11] >> 23) & 1) + 16] + 8);
      if (*(v8 + 8) == 1 && (v9 = *(v8 + 24), *(v9 + 8) == 5) && !*(v9 + 16))
      {

        return mlir::affine::AffineForOp::getStepAsInt(v6);
      }

      else
      {
        v13 = *(*&v6[4 * ((v6[11] >> 23) & 1) + 16] + 8);
        LargestKnownDivisorOfMapExprs = mlir::AffineMap::getLargestKnownDivisorOfMapExprs(&v13);
        StepAsInt = mlir::affine::AffineForOp::getStepAsInt(v7);
        if (StepAsInt >= 0)
        {
          v12 = StepAsInt;
        }

        else
        {
          v12 = -StepAsInt;
        }

        return std::__gcd<unsigned long long>(LargestKnownDivisorOfMapExprs, v12);
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyAffineOp<mlir::affine::AffineApplyOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyAffineOp<mlir::affine::AffineApplyOp>]";
  v6 = 130;
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

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineForOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v6[36] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v5, a2, "affine.yield", 0xC);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v6, 0, 0, 0, 0);
  v2 = mlir::Operation::create(v5);
  mlir::OperationState::~OperationState(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void anonymous namespace::AffineForEmptyLoopFolder::~AffineForEmptyLoopFolder(_anonymous_namespace_::AffineForEmptyLoopFolder *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::AffineForEmptyLoopFolder::matchAndRewrite(uint64_t a1, uint64_t a2, void (***a3)(void, uint64_t, unint64_t, uint64_t))
{
  v42[4] = *MEMORY[0x277D85DE8];
  v3 = a2 + 64;
  v4 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  v5 = v4 - 8;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = *(v5 + 40);
  v7 = v5 + 32;
  if (v6 == v7 || *(v6 + 8) != v7)
  {
    v8 = 0;
    goto LABEL_6;
  }

  if (!*(a2 + 36))
  {
LABEL_13:
    v8 = 1;
    goto LABEL_6;
  }

  if ((v14 & 1) != 0 && !TrivialConstantTripCount)
  {
    v15 = *(a2 + 44);
    v16 = (v3 + 16 * ((v15 >> 23) & 1));
    v17 = (v16[7] + v16[6]);
    v18 = v16[8];
    if ((v15 & 0x800000) != 0)
    {
      v19 = *(a2 + 72);
    }

    else
    {
      v19 = 0;
    }

    (**a3)(a3, a2, (v19 + 32 * v17) & 0xFFFFFFFFFFFFFFF9 | 2, (v18 + v17) - v17);
    goto LABEL_13;
  }

  v21 = *(a2 + 40);
  v20 = *(a2 + 44);
  v40 = v42;
  v41 = 0x400000000;
  v22 = *(((v3 + 16 * ((v20 >> 23) & 1) + ((v20 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v21 + 8);
  if (v22)
  {
    v23 = (v22 - 8);
  }

  else
  {
    v23 = 0;
  }

  v24 = v23[4];
  if ((*(v24 + 46) & 0x80) != 0 && (v25 = *(v24 + 68), v25))
  {
    v38 = TrivialConstantTripCount;
    v39 = v14;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = v23[6];
    v30 = v23[7];
    v31 = &v30[-v29];
    v32 = (v29 + 8);
    do
    {
      v33 = *(*(v24 + 72) + 32 * v26 + 24);
      v34 = v32;
      if (v31 != 8)
      {
        v34 = v32;
        while (*v34 != v33)
        {
          v34 += 8;
          if (v34 == v30)
          {
            v34 = v30;
            break;
          }
        }
      }

      if (v34 == v30)
      {
        v27 = 1;
      }

      else
      {
        v35 = ((v34 - v32) >> 3);
        v28 |= v26 != v35;
        v33 = *(*(a2 + 72) + 32 * (*(a2 + 108) + *(a2 + 104)) + 32 * v35 + 24);
      }

      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v40, v33);
      ++v26;
    }

    while (v26 != v25);
    if (v39 & 1) == 0 && ((v27 | v28))
    {
      v8 = 0;
      goto LABEL_37;
    }

    if ((v39 & v28 & (v38 > 1)) != 0)
    {
      v8 = 0;
      goto LABEL_37;
    }

    v37 = v40;
    v36 = v41;
  }

  else
  {
    v36 = 0;
    v37 = v42;
  }

  (**a3)(a3, a2, v37 & 0xFFFFFFFFFFFFFFF9, v36);
  v8 = 1;
LABEL_37:
  if (v40 != v42)
  {
    free(v40);
  }

LABEL_6:
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::AffineForEmptyLoopFolder>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::AffineForEmptyLoopFolder]";
  v6 = 109;
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

BOOL llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<mlir::affine::AffineForOp::replaceWithAdditionalYields(mlir::RewriterBase &,mlir::ValueRange,BOOL,std::function<llvm::SmallVector<mlir::Value,6u> ()(mlir::OpBuilder &,mlir::Location,llvm::ArrayRef<mlir::BlockArgument>)> const&)::$_1>(uint64_t **a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = **a1;
  while (1)
  {
    v4 = *(v2 + 16);
    if (!v4)
    {
      break;
    }

    v5 = *(v4 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v5)
    {
      break;
    }

    v2 = *(v5 + 16);
    result = v2 != 0;
    if (v2 == v3 || v2 == 0)
    {
      return result;
    }
  }

  return 0;
}

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineIfOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v6[36] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v5, a2, "affine.yield", 0xC);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v6, 0, 0, 0, 0);
  v2 = mlir::Operation::create(v5);
  mlir::OperationState::~OperationState(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void anonymous namespace::SimplifyDeadElse::~SimplifyDeadElse(_anonymous_namespace_::SimplifyDeadElse *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyDeadElse::matchAndRewrite(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v3 = a2 + 16;
  v4 = ((&a2[4 * ((a2[11] >> 23) & 1) + 17] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10];
  if (*(v4 + 24) == v4 + 24)
  {
    return 0;
  }

  v5 = *(((&a2[4 * ((a2[11] >> 23) & 1) + 17] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10] + 32);
  v6 = v5 - 8;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(v6 + 40);
  v8 = v6 + 32;
  if (v7 == v8 || *(v7 + 8) != v8 || a2[9])
  {
    return 0;
  }

  (*(*a3 + 40))(a3, a2);
  v12 = *(((&v3[4 * ((a2[11] >> 23) & 1) + 1] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10] + 32);
  if (v12)
  {
    v13 = v12 - 8;
  }

  else
  {
    v13 = 0;
  }

  (*(*a3 + 24))(a3, v13);
  (*(*a3 + 48))(a3, a2);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyDeadElse>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyDeadElse]";
  v6 = 101;
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

void anonymous namespace::AlwaysTrueOrFalseIf::~AlwaysTrueOrFalseIf(_anonymous_namespace_::AlwaysTrueOrFalseIf *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::AlwaysTrueOrFalseIf::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Attr = mlir::Operation::getAttr(a2, "condition", 9uLL);
  if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
  {
    v7 = Attr;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v7 + 8);
  if (v8 != mlir::IntegerSet::getEmptySet(*v8, v8[1], ***(v8 + 1), v6))
  {
    if (!v8[4])
    {
      return 0;
    }

    v10 = 0;
    v11 = *(v8 + 3);
    v12 = v11;
    v13 = v8[4];
    do
    {
      v14 = *v12++;
      v10 += v14;
      --v13;
    }

    while (v13);
    if (v10 != 1)
    {
      return 0;
    }

    v15 = 0;
    v16 = v8[4];
    do
    {
      v17 = *v11++;
      v15 += v17;
      --v16;
    }

    while (v16);
    if (v15 != v8[4])
    {
      return 0;
    }

    v18 = *(v8 + 1);
    v19 = *v18;
    if (v19 != mlir::getAffineConstantExpr(0, **v18, v9))
    {
      return 0;
    }

    v26 = ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v27 = 8;
    goto LABEL_18;
  }

  v21 = *(a2 + 44);
  if (*(a2 + 36))
  {
    v22 = *(a2 + 40);
    v23 = (v21 >> 23) & 1;
    v24 = (v21 >> 21) & 0x7F8;
LABEL_17:
    v26 = ((a2 + 16 * v23 + v24 + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v22;
    v27 = 32;
LABEL_18:
    v28 = *(v26 + v27);
    if (v28)
    {
      v29 = v28 - 8;
    }

    else
    {
      v29 = 0;
    }

    v30 = *(v29 + 32);
    v31 = *(a2 + 16);
    (*(*a3 + 32))(a3);
    if ((*(v30 + 46) & 0x80) != 0)
    {
      v32 = *(v30 + 68);
      v33 = *(v30 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    }

    else
    {
      v32 = 0;
      v33 = 2;
    }

    (**a3)(a3, a2, v33, v32);
    goto LABEL_24;
  }

  v23 = (v21 >> 23) & 1;
  v24 = (v21 >> 21) & 0x7F8;
  v22 = *(a2 + 40);
  v25 = ((a2 + 16 * v23 + v24 + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v22;
  if (*(v25 + 24) != v25 + 24)
  {
    goto LABEL_17;
  }

  v30 = a2;
LABEL_24:
  (*(*a3 + 16))(a3, v30);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::AlwaysTrueOrFalseIf>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::AlwaysTrueOrFalseIf]";
  v6 = 104;
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

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineLoadOp>::~SimplifyAffineOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineLoadOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41[8] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 44);
  v6 = *(*(a2 + 16 * ((v5 >> 23) & 1) + 64) + 8);
  v26 = v6;
  if ((v5 & 0x800000) != 0)
  {
    v7 = *(a2 + 72);
    v8 = *(a2 + 68) - 1;
  }

  else
  {
    v7 = 0;
    v8 = -1;
  }

  v31 = v33;
  v32 = 0x800000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v31, v7 + 32, 0, v7 + 32, v8);
  composeAffineMapAndOperands(&v26, &v31);
  mlir::affine::canonicalizeMapAndOperands(&v26, &v31);
  simplifyMapWithOperands(&v26, v31, v32);
  v9 = v26;
  v10 = v31;
  if (v26 == v6)
  {
    if (!v8)
    {
LABEL_13:
      v16 = 0;
      goto LABEL_14;
    }

    v22 = 0;
    v23 = (v7 + 56);
    while (*v23 == *(v31 + v22))
    {
      ++v22;
      v23 += 4;
      if (v8 == v22)
      {
        goto LABEL_13;
      }
    }
  }

  v11 = v32;
  v12 = *(*(a2 + 72) + 24);
  v13 = *(a2 + 24);
  v14 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineLoadOp,void>::id, *(**v13 + 32));
  if ((v15 & 1) == 0)
  {
    v30 = 1283;
    v29[2] = "affine.load";
    v29[3] = 11;
    v28 = 259;
    llvm::operator+(v29, &v27, v34);
    llvm::report_fatal_error(v34, 1);
  }

  v34[0] = v13;
  v34[1] = v14;
  v35[0] = &v36;
  v35[1] = 0x400000000;
  v37[0] = v38;
  v37[1] = 0x400000000;
  v38[4] = v39;
  v38[5] = 0x400000000;
  v39[8] = 4;
  v39[9] = v40;
  v39[10] = 0x100000000;
  v40[1] = v41;
  v40[2] = 0x100000000;
  v41[1] = 0;
  v41[2] = 0;
  v41[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v41[4] = 0;
  v41[6] = 0;
  v29[0] = v12;
  v16 = 1;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v35, v29, 0, v29, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v35, v10 & 0xFFFFFFFFFFFFFFF9, 0, v10 & 0xFFFFFFFFFFFFFFF9, v11);
  v17 = *(v29[0] + 8) & 0xFFFFFFFFFFFFFFF8;
  v18 = mlir::AffineMapAttr::get(v9);
  mlir::OperationState::addAttribute(v34, "map", 3, v18);
  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v37, *(v17 + 24));
  v19 = mlir::Operation::create(v34);
  mlir::OpBuilder::insert((a3 + 8), v19);
  v20 = *(*(v19 + 6) + 16);
  mlir::OperationState::~OperationState(v34);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::affine::AffineLoadOp,void>::id)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  (*(*a3 + 8))(a3, a2, v21);
  v10 = v31;
LABEL_14:
  if (v10 != v33)
  {
    free(v10);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v16;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyAffineOp<mlir::affine::AffineLoadOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyAffineOp<mlir::affine::AffineLoadOp>]";
  v6 = 129;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23DB8))
  {
    qword_27FC23DA8 = llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties>();
    unk_27FC23DB0 = v1;
    __cxa_guard_release(&qword_27FC23DB8);
  }

  return qword_27FC23DA8;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties]";
  v6 = 127;
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

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineStoreOp>::~SimplifyAffineOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineStoreOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41[8] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 44);
  v6 = *(*(a2 + 16 * ((v5 >> 23) & 1) + 64) + 8);
  v27 = v6;
  if ((v5 & 0x800000) != 0)
  {
    v7 = *(a2 + 72);
    v8 = *(a2 + 68) - 2;
  }

  else
  {
    v7 = 0;
    v8 = -2;
  }

  v32 = v34;
  v33 = 0x800000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v32, v7 + 64, 0, v7 + 64, v8);
  composeAffineMapAndOperands(&v27, &v32);
  mlir::affine::canonicalizeMapAndOperands(&v27, &v32);
  simplifyMapWithOperands(&v27, v32, v33);
  v9 = v27;
  v10 = v32;
  if (v27 == v6)
  {
    if (!v8)
    {
LABEL_13:
      v18 = 0;
      goto LABEL_14;
    }

    v23 = 0;
    v24 = (v7 + 88);
    while (*v24 == *(v32 + v23))
    {
      ++v23;
      v24 += 4;
      if (v8 == v23)
      {
        goto LABEL_13;
      }
    }
  }

  v11 = v33;
  v12 = *(a2 + 72);
  v13 = *(v12 + 24);
  v14 = *(v12 + 56);
  v15 = *(a2 + 24);
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineStoreOp,void>::id, *(**v15 + 32));
  if ((v17 & 1) == 0)
  {
    v31 = 1283;
    v30[2] = "affine.store";
    v30[3] = 12;
    v29 = 259;
    llvm::operator+(v30, v28, v35);
    llvm::report_fatal_error(v35, 1);
  }

  v35[0] = v15;
  v35[1] = v16;
  v36[0] = v37;
  v36[1] = 0x400000000;
  v37[4] = v38;
  v37[5] = 0x400000000;
  v38[4] = v39;
  v38[5] = 0x400000000;
  v39[8] = 4;
  v39[9] = v40;
  v39[10] = 0x100000000;
  v40[1] = v41;
  v40[2] = 0x100000000;
  v41[1] = 0;
  v41[2] = 0;
  v41[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v41[4] = 0;
  v41[6] = 0;
  v30[0] = v13;
  v28[0] = v14;
  v18 = 1;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v36, v30, 0, v30, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v36, v28, 0, v28, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v36, v10 & 0xFFFFFFFFFFFFFFF9, 0, v10 & 0xFFFFFFFFFFFFFFF9, v11);
  v19 = mlir::AffineMapAttr::get(v9);
  *mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties>(v35) = v19;
  v20 = mlir::Operation::create(v35);
  mlir::OpBuilder::insert((a3 + 8), v20);
  v21 = *(*(v20 + 6) + 16);
  mlir::OperationState::~OperationState(v35);
  if (v21 == &mlir::detail::TypeIDResolver<mlir::affine::AffineStoreOp,void>::id)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  (*(*a3 + 8))(a3, a2, v22);
  v10 = v32;
LABEL_14:
  if (v10 != v34)
  {
    free(v10);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v18;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyAffineOp<mlir::affine::AffineStoreOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyAffineOp<mlir::affine::AffineStoreOp>]";
  v6 = 130;
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

void CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMinOp>::~CanonicalizeSingleResultAffineMinMaxOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a2 + 44);
  v6 = *(*(a2 + 16 * ((v5 >> 23) & 1) + 64) + 8);
  if (*(v6 + 8) != 1)
  {
    return 0;
  }

  v14[3] = v3;
  v14[4] = v4;
  v14[0] = v6;
  if ((v5 & 0x800000) != 0)
  {
    v9 = *(a2 + 68);
    v10 = *(a2 + 72);
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v13[0] = v10;
  v13[1] = v9;
  v11 = mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap,mlir::OperandRange>(a3 + 1, *(a2 + 24), v14, v13);
  (*(*a3 + 8))(a3, a2, v11);
  return 1;
}