const char *llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl<Empty>]";
  v6 = 110;
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

uint64_t mlir::Op<mlir::anec::UnrealizedConversionCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    v7 = a1;
    if (mlir::anec::UnrealizedConversionCast::verifyInvariantsImpl(&v7))
    {
      {
        mlir::anec::parentIsAtLeast<(mlir::anec::Family)2>();
      }

      if (((*(**(a1 + 6) + 32))(*(a1 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
      {
        mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(a1);
      }
    }
  }

  return 0;
}

void ZinIrBroadcastUnitInfo::~ZinIrBroadcastUnitInfo(ZinIrBroadcastUnitInfo *this)
{
  *this = &unk_286870E90;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_28686BAA0;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_286870E90;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_28686BAA0;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

uint64_t *std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension&&>,std::tuple<>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_11:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_11;
  }

  return result;
}

void ZinIrConvUnitInfo::~ZinIrConvUnitInfo(ZinIrConvUnitInfo *this)
{
  *this = &unk_28686BB10;
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  *this = &unk_28686BAA0;
  v4 = *(this + 5);
  if (v4)
  {
    v5 = *(this + 6);
    v6 = *(this + 5);
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *(this + 5);
    }

    *(this + 6) = v4;
    operator delete(v6);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28686BB10;
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  *this = &unk_28686BAA0;
  v4 = *(this + 5);
  if (v4)
  {
    v5 = *(this + 6);
    v6 = *(this + 5);
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *(this + 5);
    }

    *(this + 6) = v4;
    operator delete(v6);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

uint64_t llvm::SmallVectorTemplateBase<int,true>::push_back(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (v2 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*result + 4 * v2) = a2;
  ++*(result + 8);
  return result;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ClampedRelu,mlir::Value &,llvm::APFloat &,llvm::APFloat>(mlir::Float16Type **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v29[38] = *MEMORY[0x277D85DE8];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ClampedRelu,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ClampedRelu,mlir::Value &,llvm::APFloat &,llvm::APFloat>(v29, v24, v23);
  }

  mlir::OperationState::OperationState(v29, a2, v11);
  v13 = *a3;
  v15 = *(a4 + 8);
  v14 = (a4 + 8);
  v17 = llvm::APFloatBase::PPCDoubleDouble(v16);
  if (v17 == v15)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v28, v14);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v28, v14);
  }

  v18 = (a5 + 8);
  if (v17 == *(a5 + 8))
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v26, v18);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v26, v18);
  }

  mlir::anec::ClampedRelu::build(a1, v29, v13, v27, v25);
  if (v17 == v26.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v26);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v26);
  }

  if (v17 == v28[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v28);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v28);
  }

  v19 = mlir::OpBuilder::create(a1, v29);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ClampedRelu,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v29);
  return v20;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ClampedRelu,mlir::Value &,llvm::APFloat,llvm::APFloat&>(mlir::Float16Type **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v29[38] = *MEMORY[0x277D85DE8];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ClampedRelu,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ClampedRelu,mlir::Value &,llvm::APFloat &,llvm::APFloat>(v29, v24, v23);
  }

  mlir::OperationState::OperationState(v29, a2, v11);
  v13 = *a3;
  v15 = *(a4 + 8);
  v14 = (a4 + 8);
  v17 = llvm::APFloatBase::PPCDoubleDouble(v16);
  if (v17 == v15)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v28, v14);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v28, v14);
  }

  v18 = (a5 + 8);
  if (v17 == *(a5 + 8))
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v26, v18);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v26, v18);
  }

  mlir::anec::ClampedRelu::build(a1, v29, v13, v27, v25);
  if (v17 == v26[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v26);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v26);
  }

  if (v17 == v28.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v28);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v28);
  }

  v19 = mlir::OpBuilder::create(a1, v29);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ClampedRelu,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v29);
  return v20;
}

void std::__shared_ptr_pointer<mlir::anec::ANECIRNeuron *,std::shared_ptr<mlir::anec::ANECIRNeuron>::__shared_ptr_default_delete<mlir::anec::ANECIRNeuron,mlir::anec::ANECIRNeuron>,std::allocator<mlir::anec::ANECIRNeuron>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

mlir::anec::ANECIRUnit *std::__shared_ptr_pointer<mlir::anec::ANECIRNeuron *,std::shared_ptr<mlir::anec::ANECIRNeuron>::__shared_ptr_default_delete<mlir::anec::ANECIRNeuron,mlir::anec::ANECIRNeuron>,std::allocator<mlir::anec::ANECIRNeuron>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    mlir::anec::ANECIRUnit::~ANECIRUnit(result);

    JUMPOUT(0x259C63180);
  }

  return result;
}

void ZinIrScaledEWUnitInfo::~ZinIrScaledEWUnitInfo(ZinIrScaledEWUnitInfo *this)
{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::detail::constant_op_binder<mlir::DenseFPElementsAttr>::match(unint64_t **a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  {
    mlir::detail::constant_op_binder<mlir::ElementsAttr>::match();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v8[0] = v9;
    v8[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v8);
    v5 = *v8[0] & 0xFFFFFFFFFFFFFFF8;
    if (mlir::DenseFPElementsAttr::classof(v5))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    result = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
    }

    if (v8[0] != v9)
    {
      v7 = v6 != 0;
      free(v8[0]);
      return v7;
    }
  }

  return result;
}

void ZinIrSoftmaxUnitInfo::~ZinIrSoftmaxUnitInfo(ZinIrSoftmaxUnitInfo *this)
{
  *this = &unk_286870F28;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_28686BAA0;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_286870F28;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_28686BAA0;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

uint64_t *std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::__emplace_unique_key_args<ZinIrDimension,ZinIrDimension>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_11:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_11;
  }

  return result;
}

void ZinIrChannelToSpaceUnitInfo::~ZinIrChannelToSpaceUnitInfo(ZinIrChannelToSpaceUnitInfo *this)
{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

void ZinIrPixelShuffleUnitInfo::~ZinIrPixelShuffleUnitInfo(ZinIrPixelShuffleUnitInfo *this)
{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

void ZinIrPixelUnshuffleUnitInfo::~ZinIrPixelUnshuffleUnitInfo(ZinIrPixelUnshuffleUnitInfo *this)
{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

void ZinIrSpaceToChannelUnitInfo::~ZinIrSpaceToChannelUnitInfo(ZinIrSpaceToChannelUnitInfo *this)
{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

void ZinIrBatchToSpaceUnitInfo::~ZinIrBatchToSpaceUnitInfo(ZinIrBatchToSpaceUnitInfo *this)
{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

void ZinIrSpaceToBatchUnitInfo::~ZinIrSpaceToBatchUnitInfo(ZinIrSpaceToBatchUnitInfo *this)
{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

void ZinIrResizeUnitInfo::~ZinIrResizeUnitInfo(ZinIrResizeUnitInfo *this)
{
  *this = &unk_286871008;
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    v3 = this;
    operator delete(v2);
    this = v3;
    v1 = vars8;
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(this);
}

{
  *this = &unk_286871008;
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(this);

  JUMPOUT(0x259C63180);
}

void ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(ZinIrTextureUnitInfo *this)
{
  *this = &unk_286871A38;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  *this = &unk_28686BAA0;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(this);

  JUMPOUT(0x259C63180);
}

void ZinIrInputViewUnitInfo::~ZinIrInputViewUnitInfo(void **this)
{
  *this = &unk_286871030;
  if (*(this + 152) == 1)
  {
    if (*(this + 143) < 0)
    {
      operator delete(this[15]);
      if ((*(this + 119) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((*(this + 119) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(this[12]);
  }

LABEL_4:
  *this = &unk_28686BAA0;
  v2 = this[5];
  if (v2)
  {
    v3 = this[6];
    v4 = this[5];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = this[5];
    }

    this[6] = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286871030;
  if (*(this + 152) == 1)
  {
    if (*(this + 143) < 0)
    {
      operator delete(this[15]);
      if ((*(this + 119) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((*(this + 119) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(this[12]);
  }

LABEL_4:
  *this = &unk_28686BAA0;
  v2 = this[5];
  if (v2)
  {
    v3 = this[6];
    v4 = this[5];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = this[5];
    }

    this[6] = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259C63180);
}

void ZinIrTransposeUnitInfo::~ZinIrTransposeUnitInfo(ZinIrTransposeUnitInfo *this)
{
  *this = &unk_286871050;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  *this = &unk_28686BAA0;
  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(this + 6);
    v5 = *(this + 5);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(this + 5);
    }

    *(this + 6) = v3;
    operator delete(v5);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_286871050;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  *this = &unk_28686BAA0;
  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(this + 6);
    v5 = *(this + 5);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(this + 5);
    }

    *(this + 6) = v3;
    operator delete(v5);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType,mlir::detail::TypedValue<mlir::MemRefType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Reshape,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Reshape,mlir::ShapedType &,mlir::Value &>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  v11 = *a3;
  v17[0] = *a4;
  mlir::OperationState::addOperands(v18, v17, 1uLL);
  if (v19 >= v20)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v18[8] + 8 * v19++) = v11;
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Reshape,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v13;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>,unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>::LookupBucketFor<unsigned long long>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (v3 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

void *llvm::DenseMap<unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -1;
        *v13 = -1;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -1;
          v10 += 2;
        }

        while (v10 != &result[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v24 = *v17;
        if (*v17 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v25 = v16 & (((0xBF58476D1CE4E5B9 * v24) >> 31) ^ (484763065 * v24));
          v23 = &result[2 * v25];
          v26 = *v23;
          if (v24 != *v23)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -1)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -2;
              }

              if (v29)
              {
                v27 = v23;
              }

              v30 = v25 + v28++;
              v25 = v30 & v16;
              v23 = &result[2 * (v30 & v16)];
              v26 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v27)
            {
              v23 = v27;
            }
          }

LABEL_23:
          *v23 = v24;
          v23[1] = *(v17 + 1);
          *(a1 + 8) = ++v15;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -1;
      *v20 = -1;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_18:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -1;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

void ZinIrPadUnitInfo::~ZinIrPadUnitInfo(ZinIrPadUnitInfo *this)
{
  *this = &unk_286871070;
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    v3 = this;
    operator delete(v2);
    this = v3;
    v1 = vars8;
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(this);
}

{
  *this = &unk_286871070;
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    operator delete(v2);
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(this);

  JUMPOUT(0x259C63180);
}

void ZinIrMatrixMultUnitInfo::~ZinIrMatrixMultUnitInfo(ZinIrMatrixMultUnitInfo *this)
{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

void ZinIrFlattenUnitInfo::~ZinIrFlattenUnitInfo(ZinIrFlattenUnitInfo *this)
{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

void ZinIrUnflattenUnitInfo::~ZinIrUnflattenUnitInfo(ZinIrUnflattenUnitInfo *this)
{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

void ZinIrReshapeUnitInfo::~ZinIrReshapeUnitInfo(ZinIrReshapeUnitInfo *this)
{
  *this = &unk_2868710F8;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  *this = &unk_28686BAA0;
  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(this + 6);
    v5 = *(this + 5);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(this + 5);
    }

    *(this + 6) = v3;
    operator delete(v5);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_2868710F8;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  *this = &unk_28686BAA0;
  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(this + 6);
    v5 = *(this + 5);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(this + 5);
    }

    *(this + 6) = v3;
    operator delete(v5);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

void ZinIrConcatUnitInfo::~ZinIrConcatUnitInfo(ZinIrConcatUnitInfo *this)
{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

void ZinIrInstanceNormUnitInfo::~ZinIrInstanceNormUnitInfo(ZinIrInstanceNormUnitInfo *this)
{
  *this = &unk_286871170;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_28686BAA0;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_286871170;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_28686BAA0;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

void ZinIrLayerNormUnitInfo::~ZinIrLayerNormUnitInfo(ZinIrLayerNormUnitInfo *this)
{
  *this = &unk_286871170;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_28686BAA0;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_286871170;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_28686BAA0;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

void ZinIrBatchNormUnitInfo::~ZinIrBatchNormUnitInfo(ZinIrBatchNormUnitInfo *this)
{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

void ZinIrCropResizeUnitInfo::~ZinIrCropResizeUnitInfo(ZinIrCropResizeUnitInfo *this)
{
  *this = &unk_286871200;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    v3 = this;
    operator delete(v2);
    this = v3;
    v1 = vars8;
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(this);
}

{
  *this = &unk_286871200;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(this);

  JUMPOUT(0x259C63180);
}

void ZinIrGatherUnitInfo::~ZinIrGatherUnitInfo(ZinIrGatherUnitInfo *this)
{
  *this = &unk_286871228;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    v3 = this;
    operator delete(v2);
    this = v3;
    v1 = vars8;
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(this);
}

{
  *this = &unk_286871228;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(this);

  JUMPOUT(0x259C63180);
}

void ZinIrArgMinMaxUnitInfo::~ZinIrArgMinMaxUnitInfo(ZinIrArgMinMaxUnitInfo *this)
{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

void ZinIrGlobalArgMinMaxUnitInfo::~ZinIrGlobalArgMinMaxUnitInfo(ZinIrGlobalArgMinMaxUnitInfo *this)
{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

void ZinIrTileUnitInfo::~ZinIrTileUnitInfo(ZinIrTileUnitInfo *this)
{
  *this = &unk_286871290;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_28686BAA0;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_286871290;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_28686BAA0;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

uint64_t *std::__hash_table<std::__hash_value_type<ZinIrDimension,int>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,int>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,int>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,int>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension&&>,std::tuple<>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_11:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_11;
  }

  return result;
}

void ZinIrDeQuantUnitInfo::~ZinIrDeQuantUnitInfo(ZinIrDeQuantUnitInfo *this)
{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

void ZinIrQuantUnitInfo::~ZinIrQuantUnitInfo(ZinIrQuantUnitInfo *this)
{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

void ZinIrResampleUnitInfo::~ZinIrResampleUnitInfo(ZinIrResampleUnitInfo *this)
{
  *this = &unk_2868712F0;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    v3 = this;
    operator delete(v2);
    this = v3;
    v1 = vars8;
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(this);
}

{
  *this = &unk_2868712F0;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(this);

  JUMPOUT(0x259C63180);
}

void ZinIrRingBufferUnitInfo::~ZinIrRingBufferUnitInfo(ZinIrRingBufferUnitInfo *this)
{
  ZinIrRingBufferUnitInfo::~ZinIrRingBufferUnitInfo(this);

  JUMPOUT(0x259C63180);
}

{
  *this = &unk_286871318;
  v2 = *(this + 17);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 15);
  *(this + 15) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    do
    {
      v10 = *v5;
      if (*(v5 + 47) < 0)
      {
        operator delete(v5[3]);
      }

      operator delete(v5);
      v5 = v10;
    }

    while (v10);
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  *this = &unk_28686BAA0;
  v7 = *(this + 5);
  if (v7)
  {
    v8 = *(this + 6);
    v9 = *(this + 5);
    if (v8 != v7)
    {
      do
      {
        v11 = *(v8 - 1);
        v8 -= 3;
        if (v11 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = *(this + 5);
    }

    *(this + 6) = v7;
    operator delete(v9);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void *mlir::getValues<unsigned char>(uint64_t a1, void *a2)
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
    v8 = a2[1];
    if (v8 >= a2[2])
    {
      result = llvm::SmallVectorTemplateBase<unsigned char,true>::push_back(a2, v7);
    }

    else
    {
      *(*a2 + v8) = v7;
      ++a2[1];
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

void *llvm::SmallVectorTemplateBase<unsigned char,true>::push_back(void *result, char a2)
{
  v2 = result[1];
  if ((v2 + 1) > result[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*result + v2) = a2;
  ++result[1];
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::pair<ZinIrDimension,unsigned long>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_11:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::pair<ZinIrDimension,std::string>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_11:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_11;
  }

  return v7;
}

void ZinIrRingBufferReaderUnitInfo::~ZinIrRingBufferReaderUnitInfo(ZinIrRingBufferReaderUnitInfo *this)
{
  *this = &unk_286871338;
  v2 = *(this + 22);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 20);
  *(this + 20) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  ZinIrRingBufferUnitInfo::~ZinIrRingBufferUnitInfo(this);
}

{
  *this = &unk_286871338;
  v2 = *(this + 22);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 20);
  *(this + 20) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  ZinIrRingBufferUnitInfo::~ZinIrRingBufferUnitInfo(this);

  JUMPOUT(0x259C63180);
}

uint64_t *std::__hash_table<std::__hash_value_type<ZinIrDimension,long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,long>>>::__emplace_unique_key_args<ZinIrDimension,std::pair<ZinIrDimension,unsigned char>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_11:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_11;
  }

  return result;
}

void ZinIrSDPAUnitInfo::~ZinIrSDPAUnitInfo(ZinIrSDPAUnitInfo *this)
{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_28686BAA0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C63180);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::anec::A11Legacy::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x277D85DE8];
  mlir::TypeRange::TypeRange(v11, a3, a4);
  mlir::TypeRange::TypeRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::anec::A18::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x277D85DE8];
  mlir::TypeRange::TypeRange(v11, a3, a4);
  mlir::TypeRange::TypeRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::anec::A17::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x277D85DE8];
  mlir::TypeRange::TypeRange(v11, a3, a4);
  mlir::TypeRange::TypeRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::anec::A16::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x277D85DE8];
  mlir::TypeRange::TypeRange(v11, a3, a4);
  mlir::TypeRange::TypeRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::anec::A12::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x277D85DE8];
  mlir::TypeRange::TypeRange(v11, a3, a4);
  mlir::TypeRange::TypeRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::anec::A13::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x277D85DE8];
  mlir::TypeRange::TypeRange(v11, a3, a4);
  mlir::TypeRange::TypeRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::anec::A14::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x277D85DE8];
  mlir::TypeRange::TypeRange(v11, a3, a4);
  mlir::TypeRange::TypeRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::anec::A15::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x277D85DE8];
  mlir::TypeRange::TypeRange(v11, a3, a4);
  mlir::TypeRange::TypeRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::CastInfo<mlir::anec::ArgMinMaxModeAttr,mlir::Attribute const,void>::isPossible(uint64_t a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v5 = a1;
  Type = mlir::IntegerAttr::getType(&v5);
  result = mlir::Type::isSignlessInteger(&Type, 64);
  if (result)
  {
    v4 = a1;
    if (mlir::IntegerAttr::getInt(&v4))
    {
      v3 = a1;
      return mlir::IntegerAttr::getInt(&v3) == 1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void *mlir::RewritePatternSet::add(void *a1, uint64_t *a2)
{
  v4 = a1[2];
  v3 = a1[3];
  if (v4 >= v3)
  {
    v7 = a1[1];
    v8 = v4 - v7;
    v9 = (v4 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = v3 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = (v4 - v7) >> 3;
    v14 = (8 * v9);
    v15 = *a2;
    *a2 = 0;
    v16 = (8 * v9 - 8 * v13);
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    a1[1] = v16;
    a1[2] = v6;
    a1[3] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 8;
  }

  a1[2] = v6;
  return a1;
}

void *mlir::RewritePatternSet::add<mlir::anec::ElementwiseAdd>(llvm::LogicalResult (*)(mlir::anec::ElementwiseAdd,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::anec::ElementwiseAdd>(llvm::LogicalResult (*)(mlir::anec::ElementwiseAdd,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::anec::ElementwiseMax>(llvm::LogicalResult (*)(mlir::anec::ElementwiseMax,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::anec::ElementwiseMax>(llvm::LogicalResult (*)(mlir::anec::ElementwiseMax,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::anec::ElementwiseMin>(llvm::LogicalResult (*)(mlir::anec::ElementwiseMin,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::anec::ElementwiseMin>(llvm::LogicalResult (*)(mlir::anec::ElementwiseMin,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::anec::ElementwiseMult>(llvm::LogicalResult (*)(mlir::anec::ElementwiseMult,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::anec::ElementwiseMult>(llvm::LogicalResult (*)(mlir::anec::ElementwiseMult,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::anec::ElementwiseSub>(llvm::LogicalResult (*)(mlir::anec::ElementwiseSub,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::anec::ElementwiseSub>(llvm::LogicalResult (*)(mlir::anec::ElementwiseSub,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::anec::Reshape>(llvm::LogicalResult (*)(mlir::anec::Reshape,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::anec::Reshape>(llvm::LogicalResult (*)(mlir::anec::Reshape,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::MemoryEffects::Read::Read(void *this)
{
  {
    v1 = this;
    mlir::MemoryEffects::Read::Read();
    this = v1;
  }

  *this = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id;
  return this;
}

{
  {
    *this = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id;
  }

  else
  {
    v1 = this;
    mlir::MemoryEffects::Read::Read();
    this = v1;
    *v1 = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id;
  }

  return this;
}

void *mlir::SideEffects::DefaultResource::DefaultResource(void *this)
{
  {
    v2 = this;
    mlir::SideEffects::DefaultResource::DefaultResource();
    this = v2;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::SideEffects::DefaultResource,void>::resolveTypeID(void)::id;
  *this = &unk_286871588;
  this[1] = v1;
  return this;
}

{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::SideEffects::DefaultResource,void>::resolveTypeID(void)::id;
    *this = &unk_286871588;
    this[1] = v1;
  }

  else
  {
    v3 = this;
    mlir::SideEffects::DefaultResource::DefaultResource();
    this = v3;
    v2 = mlir::detail::TypeIDResolver<mlir::SideEffects::DefaultResource,void>::resolveTypeID(void)::id;
    *v3 = &unk_286871588;
    v3[1] = v2;
  }

  return this;
}

const char *llvm::getTypeName<mlir::SideEffects::DefaultResource>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::SideEffects::DefaultResource]";
  v6 = 84;
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

uint64_t llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,int,BOOL,mlir::SideEffects::DefaultResource *>(uint64_t a1, void *a2, int *a3, char *a4, uint64_t *a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = *a4;
  v7 = *a5;
  *&v14 = *a2;
  *(&v14 + 1) = v7;
  v15 = 0uLL;
  LODWORD(v16) = v5;
  BYTE4(v16) = v6;
  v8 = *(a1 + 8);
  v9 = *a1;
  if (v8 >= *(a1 + 12))
  {
    if (v9 > &v14 || v9 + 40 * v8 <= &v14)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v10 = v9 + 40 * *(a1 + 8);
  v11 = v14;
  v12 = v15;
  *(v10 + 32) = v16;
  *v10 = v11;
  *(v10 + 16) = v12;
  LODWORD(v10) = *(a1 + 8) + 1;
  *(a1 + 8) = v10;
  return *a1 + 40 * v10 - 40;
}

void *mlir::RewritePatternSet::add<mlir::anec::Transpose>(llvm::LogicalResult (*)(mlir::anec::Transpose,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::anec::Transpose>(llvm::LogicalResult (*)(mlir::anec::Transpose,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

BOOL OUTLINED_FUNCTION_7_3(void *a1)
{
}

BOOL OUTLINED_FUNCTION_9_5(void *a1)
{
}

uint64_t OUTLINED_FUNCTION_10_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return mlir::ShapedType::getElementType(&a9);
}

uint64_t OUTLINED_FUNCTION_13_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = v12;
  a12 = a1;

  return mlir::ShapedType::getShape(&a11);
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1, uint64_t a2, void *a3)
{

  return __cxa_atexit(mlir::SideEffects::DefaultResource::~DefaultResource, v3, a3);
}

void OUTLINED_FUNCTION_54_3()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

uint64_t OUTLINED_FUNCTION_56_2@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 36);
  v3 = a1 - 16;
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
}

uint64_t OUTLINED_FUNCTION_88_2()
{
  v2 = *v0 + 8;

  return mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v2);
}

uint64_t OUTLINED_FUNCTION_89_2(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a9 = v10;
  a10 = a1;

  return mlir::ShapedType::getShape(&a9);
}

uint64_t OUTLINED_FUNCTION_90_1()
{
  v2 = *v0 + 8;

  return mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v2);
}

void OUTLINED_FUNCTION_93_2()
{

  JUMPOUT(0x259C63150);
}

BOOL OUTLINED_FUNCTION_94_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a11 = v11;

  return mlir::Type::isF16(&a11);
}

BOOL OUTLINED_FUNCTION_95_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a11 = v11;

  return mlir::Type::isF16(&a11);
}

void OUTLINED_FUNCTION_96_2()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

uint64_t mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v7 = *(v1 + 8);
    result = mlir::StringAttr::getReferencedDialect(&v7);
    if (result)
    {
      {
        v6 = result;
        mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::TargetLegalizerInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::TargetLegalizerInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>();
    a1 = v9;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *a1;
  }

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>::__emplace_back_slow_path<std::function<mlir::WalkResult ()(mlir::Attribute)>>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = 32 * v2;
  __p = 0;
  v15 = v7;
  v17 = 0;
  v8 = *(a2 + 24);
  if (v8)
  {
    if (v8 == a2)
    {
      *(v7 + 24) = v7;
      (*(*v8 + 24))(v8, v7);
    }

    else
    {
      *(v7 + 24) = v8;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(v7 + 24) = 0;
  }

  v16 = v7 + 32;
  std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  v10 = v15;
  while (1)
  {
    v11 = v16;
    if (v16 == v10)
    {
      break;
    }

    v16 -= 32;
    v12 = *(v11 - 8);
    if (v12 == v11 - 32)
    {
      (*(*v12 + 32))(v12);
    }

    else if (v12)
    {
      (*(*v12 + 40))(v12);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

uint64_t *std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v3 = result;
  v5 = *result;
  v4 = result[1];
  v6 = a2[1] + *result - v4;
  if (v4 != *result)
  {
    v7 = *result;
    v8 = a2[1] + *result - v4;
    do
    {
      v9 = v7[3];
      if (v9)
      {
        if (v7 == v9)
        {
          *(v8 + 24) = v8;
          (*(*v7[3] + 24))(v7[3], v8);
        }

        else
        {
          *(v8 + 24) = v9;
          v7[3] = 0;
        }
      }

      else
      {
        *(v8 + 24) = 0;
      }

      v7 += 4;
      v8 += 32;
    }

    while (v7 != v4);
    v10 = v5;
    do
    {
      result = v5[3];
      if (v5 == result)
      {
        result = (*(*result + 32))(result);
      }

      else if (result)
      {
        result = (*(*result + 40))(result);
      }

      v5 += 4;
      v10 += 4;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *v3;
  *v3 = v6;
  v3[1] = v11;
  a2[1] = v11;
  v12 = v3[1];
  v3[1] = a2[2];
  a2[2] = v12;
  v13 = v3[2];
  v3[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
  return result;
}

const char *llvm::getTypeName<mlir::silc::PlistGeneratorInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::PlistGeneratorInterface]";
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

void mlir::anec::computeOpKeyString(mlir::anec *this@<X0>, void *a2@<X8>)
{
  if (!*(this + 47) || (InherentAttr = mlir::Operation::getInherentAttr(this, "name", 4), (v6 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(this + 56, "name", 4uLL);
  }

  if (InherentAttr)
  {
    v25[0] = InherentAttr;
    Value = mlir::StringAttr::getValue(v25);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v8;
    if (v8)
    {
      memmove(a2, Value, v8);
    }

    *(a2 + v9) = 0;
  }

  else
  {
    v25[0] = *(*(this + 6) + 8);
    v22 = 1283;
    v21[2] = mlir::StringAttr::getValue(v25);
    v21[3] = v10;
    v23[0] = v21;
    v23[2] = "_";
    v24 = 770;
    v11 = mlir::anec::ANECIRNetwork::name_counter_++;
    v20 = v11;
    v21[0] = "__";
    v25[0] = v23;
    v25[2] = &v20;
    v26 = 2818;
    llvm::Twine::str(v25, a2);
    Context = mlir::Attribute::getContext((this + 24));
    v14 = *(a2 + 23);
    v15 = *a2;
    if (v14 >= 0)
    {
      v15 = a2;
    }

    if (v14 < 0)
    {
      v14 = a2[1];
    }

    v24 = 261;
    v23[0] = v15;
    v23[1] = v14;
    v16 = mlir::StringAttr::get(Context, v23, v13);
    v17 = mlir::Attribute::getContext((this + 24));
    v26 = 261;
    v25[0] = "name";
    v25[1] = 4;
    v19 = mlir::StringAttr::get(v17, v25, v18);
    mlir::Operation::setAttr(this, v19, v16);
  }
}

uint64_t mlir::anec::getANECIRDataType(uint64_t a1)
{
  v5 = a1;
  if (mlir::Type::isSignedInteger(&v5, 4))
  {
    v1 = 0;
    v2 = 0x100000000;
  }

  else if (mlir::Type::isUnsignedInteger(&v5, 8))
  {
    v2 = 0x100000000;
    v1 = 1;
  }

  else if (mlir::Type::isSignedInteger(&v5, 8) || mlir::Type::isSignlessInteger(&v5, 8))
  {
    v2 = 0x100000000;
    v1 = 2;
  }

  else if (mlir::Type::isF16(&v5))
  {
    v2 = 0x100000000;
    v1 = 3;
  }

  else if (mlir::Type::isF32(&v5))
  {
    v2 = 0x100000000;
    v1 = 4;
  }

  else if (mlir::Type::isSignedInteger(&v5, 16) || mlir::Type::isSignlessInteger(&v5, 16))
  {
    v2 = 0x100000000;
    v1 = 5;
  }

  else if (mlir::Type::isUnsignedInteger(&v5, 16))
  {
    v2 = 0x100000000;
    v1 = 6;
  }

  else if (mlir::Type::isSignedInteger(&v5, 32))
  {
    v2 = 0x100000000;
    v1 = 7;
  }

  else if (mlir::Type::isUnsignedInteger(&v5, 32))
  {
    v2 = 0x100000000;
    v1 = 8;
  }

  else
  {
    v2 = 0x100000000;
    if (mlir::Type::isSignedInteger(&v5, 64))
    {
      v1 = 9;
    }

    else
    {
      isUnsignedInteger = mlir::Type::isUnsignedInteger(&v5, 64);
      if (!isUnsignedInteger)
      {
        v2 = 0;
      }

      v1 = 10;
      if (!isUnsignedInteger)
      {
        v1 = 0;
      }
    }
  }

  return v1 | v2;
}

{
  v1 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  v2 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v1 + 8);
  if (v2)
  {
    v2 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v1 + 8);
  }

  else
  {
    v1 = 0;
  }

  v5[0] = v1;
  v5[1] = v2;
  ElementType = mlir::ShapedType::getElementType(v5);
  return mlir::anec::getANECIRDataType(ElementType) & 0xFFFFFFFFFFLL;
}

size_t anonymous namespace::stringify_to_cfstr@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 <= 4)
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        v3 = @"UInt8";
      }

      else
      {
        v3 = @"Int4";
      }
    }

    else if (a1 == 2)
    {
      v3 = @"Int8";
    }

    else if (a1 == 3)
    {
      v3 = @"Float16";
    }

    else
    {
      v3 = @"Float32";
    }
  }

  else if (a1 > 7)
  {
    if (a1 == 8)
    {
      v3 = @"UInt32";
    }

    else if (a1 == 9)
    {
      v3 = @"Int64";
    }

    else
    {
      v3 = @"UInt64";
    }
  }

  else if (a1 == 5)
  {
    v3 = @"Int16";
  }

  else if (a1 == 6)
  {
    v3 = @"UInt16";
  }

  else
  {
    v3 = @"Int32";
  }

  CStringPtr = CFStringGetCStringPtr(v3, 0x8000100u);
  result = strlen(CStringPtr);
  if (result > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memmove(a2, CStringPtr, result);
  }

  a2[v6] = 0;
  return result;
}

void mlir::anec::ANECIRUnit::Serialize(mlir::anec::ANECIRUnit *this, const ZinIrUnitInfo *a2)
{
  v2 = *(this + 5);
  if (!v2)
  {
    mlir::anec::ANECDictionary::Create(0);
  }

  mlir::anec::ANECDictionary::Create(v2, a2);
}

void mlir::anec::ANECDictionary::Add<std::pair<std::string,mlir::anec::ANECIRDataType>,std::string (*)(std::pair<std::string,mlir::anec::ANECIRDataType> const&)>(plist::PListArray *a1, CFStringRef theString, uint64_t a3, uint64_t a4, void (*a5)(void **__return_ptr, uint64_t), char a6)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v12 = strlen(CStringPtr);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    operator new();
  }

  v15 = v12;
  if (v12)
  {
    memmove(&__dst, CStringPtr, v12);
  }

  *(&__dst + v13) = 0;
  mlir::anec::ANECDictionary::Add<std::pair<std::string,mlir::anec::ANECIRDataType>,std::string (*)(std::pair<std::string,mlir::anec::ANECIRDataType> const&)>(a1, &__dst, a3, a4, a5, a6);
  if (v15 < 0)
  {
    operator delete(__dst);
  }
}

void anonymous namespace::get_elem<std::pair<std::string,mlir::anec::ANECIRDataType>,0ul,anonymous namespace::identity_xform<std::string>>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }
}

void mlir::anec::ANECDictionary::Add<std::pair<mlir::anec::ANECIRDataType,unsigned long>,std::string (*)(std::pair<mlir::anec::ANECIRDataType,unsigned long> const&)>(plist::PListArray *a1, CFStringRef theString, uint64_t a3, uint64_t a4, void (*a5)(void **__return_ptr, uint64_t), char a6)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v12 = strlen(CStringPtr);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    operator new();
  }

  v15 = v12;
  if (v12)
  {
    memmove(&__dst, CStringPtr, v12);
  }

  *(&__dst + v13) = 0;
  mlir::anec::ANECDictionary::Add<std::pair<mlir::anec::ANECIRDataType,unsigned long>,std::string (*)(std::pair<mlir::anec::ANECIRDataType,unsigned long> const&)>(a1, &__dst, a3, a4, a5, a6);
  if (v15 < 0)
  {
    operator delete(__dst);
  }
}

void mlir::anec::ANECDictionary::Add<std::pair<mlir::anec::ANECIRDataType,unsigned long>,unsigned long (*)(std::pair<mlir::anec::ANECIRDataType,unsigned long> const&)>(plist::PListArray *a1, CFStringRef theString, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), char a6)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v12 = strlen(CStringPtr);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    operator new();
  }

  v15 = v12;
  if (v12)
  {
    memmove(&__dst, CStringPtr, v12);
  }

  *(&__dst + v13) = 0;
  mlir::anec::ANECDictionary::Add<std::pair<mlir::anec::ANECIRDataType,unsigned long>,unsigned long (*)(std::pair<mlir::anec::ANECIRDataType,unsigned long> const&)>(a1, &__dst, a3, a4, a5, a6);
  if (v15 < 0)
  {
    operator delete(__dst);
  }
}

void mlir::anec::ANECIRConvPoolBase::addParams(int a1, mlir::anec::ANECDictionary **a2, unint64_t a3, int a4, uint64_t a5)
{
  if (a5)
  {
    mlir::anec::ANECDictionary::PListEntry(*a2);
  }

  mlir::anec::ANECDictionary::PListEntry(*a2);
}

void mlir::anec::ANECDictionary::Add<unsigned long,unsigned long const& (*)(unsigned long const&)>(plist::PListArray *a1, CFStringRef theString, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), char a6)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v12 = strlen(CStringPtr);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    operator new();
  }

  v15 = v12;
  if (v12)
  {
    memmove(&__dst, CStringPtr, v12);
  }

  *(&__dst + v13) = 0;
  mlir::anec::ANECDictionary::Add<unsigned long,unsigned long const& (*)(unsigned long const&)>(a1, &__dst, a3, a4, a5, a6);
  if (v15 < 0)
  {
    operator delete(__dst);
  }
}

size_t mlir::anec::ANECIRNeuron::ActivationToAneIRType@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v3 = @"ClampedReLU";
      break;
    case 2:
      v3 = @"Cos";
      break;
    case 3:
      v3 = @"Degamma";
      break;
    case 4:
      v3 = @"Dirac";
      break;
    case 5:
      v3 = @"ELU";
      break;
    case 6:
      v3 = @"Erf";
      break;
    case 7:
      v3 = @"Exp2";
      break;
    case 8:
      v3 = @"Floor";
      break;
    case 9:
      v3 = @"GELU";
      break;
    case 10:
      v3 = @"SigmoidHighPrecision";
      break;
    case 11:
      v3 = @"Inv";
      break;
    case 12:
      v3 = @"LeakyReLU";
      break;
    case 13:
      v3 = @"Log2";
      break;
    case 14:
      v3 = @"ReLUN";
      break;
    case 15:
      v3 = @"ReLU";
      break;
    case 16:
      v3 = @"RoundNearest";
      break;
    case 17:
      v3 = @"Rsqrt";
      break;
    case 18:
      v3 = @"Sigmoid";
      break;
    case 19:
      v3 = @"Sign";
      break;
    case 20:
      v3 = @"Sin";
      break;
    case 21:
      v3 = @"Sqr";
      break;
    case 22:
      v3 = @"Sqrt";
      break;
    case 23:
      v3 = @"Swish";
      break;
    case 24:
      v3 = @"Tanh";
      break;
    case 25:
      v3 = @"Trunc";
      break;
    default:
      v3 = @"Ceil";
      break;
  }

  CStringPtr = CFStringGetCStringPtr(v3, 0x8000100u);
  result = strlen(CStringPtr);
  if (result > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memmove(a2, CStringPtr, result);
  }

  a2[v6] = 0;
  return result;
}

size_t mlir::anec::ANECIRPoolUnit::PoolTypeToAneIRType@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    if (a1 == 2)
    {
      v3 = @"L2";
    }

    else
    {
      v3 = @"Avg";
    }
  }

  else
  {
    v3 = @"Max";
  }

  CStringPtr = CFStringGetCStringPtr(v3, 0x8000100u);
  result = strlen(CStringPtr);
  if (result > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memmove(a2, CStringPtr, result);
  }

  a2[v6] = 0;
  return result;
}

uint64_t mlir::anec::ANECIRNetwork::getWeightFileIndex(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = std::__tree<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>>>::find<std::string>(a1 + 464, a2);
  if (a1 + 472 == v8)
  {
    mlir::emitError(a4, &v23);
    if (v23)
    {
      LODWORD(v20) = 3;
      *(&v20 + 1) = "Cannot find corresponding index from weight file path: ";
      v21 = 55;
      if (v26 >= v27)
      {
        if (v25 > &v20 || v25 + 24 * v26 <= &v20)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10 = v25 + 24 * v26;
      v11 = v20;
      *(v10 + 2) = v21;
      *v10 = v11;
      ++v26;
      if (v23)
      {
        v22 = 260;
        *&v20 = a2;
        mlir::Diagnostic::operator<<(&v24, &v20);
        if (v23)
        {
          mlir::InFlightDiagnostic::report(&v23);
        }
      }
    }

    if (v34 == 1)
    {
      if (v33 != &v34)
      {
        free(v33);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v32;
        v14 = __p;
        if (v32 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v32 = v12;
        operator delete(v14);
      }

      v15 = v29;
      if (v29)
      {
        v16 = v30;
        v17 = v29;
        if (v30 != v29)
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
          v17 = v29;
        }

        v30 = v15;
        operator delete(v17);
      }

      if (v25 != &v28)
      {
        free(v25);
      }
    }

    return 0;
  }

  else
  {
    *a3 = *(v8 + 104);
    return 1;
  }
}

void plist::PListArray::push_back(void *a1, __int128 *a2)
{
  v3 = a1[2];
  v4 = a1[3];
  if (v3 >= v4)
  {
    v7 = a1[1];
    v8 = (v3 - v7) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v12 + 16);
    v14 = a1[1];
    v15 = a1[2] - v14;
    v16 = v12 - v15;
    memcpy((v12 - v15), v14, v15);
    a1[1] = v16;
    a1[2] = v6;
    a1[3] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  a1[2] = v6;
}

void mlir::anec::ANECIRUnit::UpdateNamesWithProcName(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = *(a1 + 24);
  }

  mlir::anec::PrependProcNameToNameAndShorten(v8, a2, a4);
  v9 = *(a1 + 40);
  if (v9)
  {
    std::string::operator=((v9 + 8), v8);
    v10 = *(a1 + 40);
    v11 = *(v10 + 40);
    v12 = *(v10 + 48);
    if (v11 != v12)
    {
      do
      {
        mlir::anec::PrependProcNameToNameAndShorten(v11, a2, a4);
        v11 += 24;
      }

      while (v11 != v12);
      v10 = *(a1 + 40);
    }

    if ((*(v10 + 32) - 61) < 2)
    {
      for (i = *(v10 + 96); i; i = *i)
      {
        mlir::anec::PrependProcNameToNameAndShorten((i + 3), a2, a4);
      }
    }
  }

  v14 = *(a1 + 72);
  if (v14)
  {
    v15 = *(a1 + 64);
    v16 = 32 * v14;
    do
    {
      mlir::anec::PrependProcNameToNameAndShorten(v15, a2, a4);
      v15 += 32;
      v16 -= 32;
    }

    while (v16);
  }

  v19 = v8;
  v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, &v8->__r_.__value_.__l.__data_);
  std::string::operator=((v17 + 7), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void mlir::anec::ANECIRGOCUnit::~ANECIRGOCUnit(mlir::anec::ANECIRGOCUnit *this)
{
  mlir::anec::ANECIRUnit::~ANECIRUnit(this);

  JUMPOUT(0x259C63180);
}

void mlir::anec::ANECIRNeuron::~ANECIRNeuron(mlir::anec::ANECIRNeuron *this)
{
  mlir::anec::ANECIRUnit::~ANECIRUnit(this);

  JUMPOUT(0x259C63180);
}

void mlir::anec::ANECIRPoolUnit::~ANECIRPoolUnit(mlir::anec::ANECIRPoolUnit *this)
{
  mlir::anec::ANECIRUnit::~ANECIRUnit(this);

  JUMPOUT(0x259C63180);
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v21, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_33:
    operator new();
  }

  v14 = v2[23];
  if (v14 >= 0)
  {
    v15 = v2[23];
  }

  else
  {
    v15 = *(v2 + 1);
  }

  if (v14 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v7)
    {
      break;
    }

    if (v10 <= 1)
    {
      v16 &= *&v8 - 1;
    }

    else if (v16 >= *&v8)
    {
      v16 %= *&v8;
    }

    if (v16 != v11)
    {
      goto LABEL_33;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v2, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void mlir::anec::ANECDictionary::Add(uint64_t *a1, CFStringRef theString, uint64_t a3)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v6 = strlen(CStringPtr);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v13 = v6;
  if (v6)
  {
    memmove(&__dst, CStringPtr, v6);
  }

  *(&__dst + v7) = 0;
  v8 = *(a3 + 8);
  v10 = *a3;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mlir::anec::ANECDictionary::Add(a1, &__dst, &v10);
  v9 = v11;
  if (!v11 || atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v13 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_12;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (v13 < 0)
  {
LABEL_12:
    operator delete(__dst);
  }
}

void mlir::anec::ANECDictionary::PListEntry(mlir::anec::ANECDictionary *this, CFStringRef theString)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v3 = strlen(CStringPtr);
  if (v3 < 0x7FFFFFFFFFFFFFF8)
  {
    v4 = v3;
    if (v3 < 0x17)
    {
      v6 = v3;
      if (v3)
      {
        memmove(&__dst, CStringPtr, v3);
      }

      *(&__dst + v4) = 0;
      mlir::anec::ANECDictionary::PListEntry();
    }

    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

plist::PListArray *mlir::anec::ANECDictionary::Add<std::pair<std::string,mlir::anec::ANECIRDataType>,std::string (*)(std::pair<std::string,mlir::anec::ANECIRDataType> const&)>(plist::PListArray *result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void **__return_ptr, uint64_t), char a6)
{
  if (a4)
  {
    if (a4 == 1 && (a6 & 1) == 0)
    {
      a5(&__p, a3);
      mlir::anec::ANECDictionary::PListEntry();
    }

    plist::PListArray::Create(result);
  }

  return result;
}

plist::PListArray *mlir::anec::ANECDictionary::Add<std::pair<mlir::anec::ANECIRDataType,unsigned long>,std::string (*)(std::pair<mlir::anec::ANECIRDataType,unsigned long> const&)>(plist::PListArray *result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void **__return_ptr, uint64_t), char a6)
{
  if (a4)
  {
    if (a4 == 1 && (a6 & 1) == 0)
    {
      a5(&__p, a3);
      mlir::anec::ANECDictionary::PListEntry();
    }

    plist::PListArray::Create(result);
  }

  return result;
}

plist::PListArray *mlir::anec::ANECDictionary::Add<std::pair<mlir::anec::ANECIRDataType,unsigned long>,unsigned long (*)(std::pair<mlir::anec::ANECIRDataType,unsigned long> const&)>(plist::PListArray *result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), char a6)
{
  if (a4)
  {
    v6 = result;
    if (a4 == 1 && (a6 & 1) == 0)
    {
      a5(a3);
      mlir::anec::ANECDictionary::PListEntry(v6);
    }

    plist::PListArray::Create(result);
  }

  return result;
}

plist::PListArray *mlir::anec::ANECDictionary::Add<unsigned long,unsigned long const& (*)(unsigned long const&)>(plist::PListArray *result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), char a6)
{
  if (a4)
  {
    v6 = result;
    if (a4 == 1 && (a6 & 1) == 0)
    {
      a5(a3);
      mlir::anec::ANECDictionary::PListEntry(v6);
    }

    plist::PListArray::Create(result);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

void std::__shared_ptr_emplace<plist::PListString>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2868716C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

unint64_t mlir::anec::ANECIRWeightSerializer::addConstant(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  ElementType = a2;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 48, &ElementType, &ShapedType);
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = v6 - 1;
  v8 = ((a2 >> 4) ^ (a2 >> 9)) & (v6 - 1);
  v9 = *(v5 + 16 * v8);
  if (v9 != a2)
  {
    v20 = 1;
    v21 = *(v5 + 16 * (((a2 >> 4) ^ (a2 >> 9)) & v7));
    v22 = ((a2 >> 4) ^ (a2 >> 9)) & v7;
    while (v21 != -4096)
    {
      v23 = v22 + v20++;
      v22 = v23 & v7;
      v21 = *(v5 + 16 * v22);
      if (v21 == a2)
      {
        if (v22 == v6)
        {
          goto LABEL_4;
        }

        if (v9 != a2)
        {
          v24 = 1;
          while (v9 != -4096)
          {
            v25 = v8 + v24++;
            v8 = v25 & v7;
            v9 = *(v5 + 16 * v8);
            if (v9 == a2)
            {
              goto LABEL_24;
            }
          }

          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    goto LABEL_4;
  }

  if (v8 == v6)
  {
LABEL_4:
    ShapedType = mlir::ElementsAttr::getShapedType(&v31);
    v37 = v10;
    ElementType = mlir::ShapedType::getElementType(&ShapedType);
    if (mlir::Type::getIntOrFloatBitWidth(&ElementType) == 32)
    {
      v11 = 4;
    }

    else
    {
      ShapedType = mlir::ElementsAttr::getShapedType(&v31);
      v37 = v12;
      ElementType = mlir::ShapedType::getElementType(&ShapedType);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&ElementType);
      v11 = 1;
      if (IntOrFloatBitWidth == 16)
      {
        v11 = 2;
      }
    }

    v14 = (*a1 - (*a1 != 0)) / v11;
    if (*a1)
    {
      ++v14;
    }

    v15 = v14 * v11;
    llvm::raw_ostream::write(*(a1 + 72), v30, v14 * v11 - *a1);
    v16 = v31;
    v28 = v31;
    v29 = v15;
    ElementType = v31;
    v35 = 0;
    llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::try_emplace<unsigned int>(a1 + 8, &ElementType, &v35, &ShapedType);
    if (v38 == 1)
    {
      v17 = *(a1 + 40);
      *(ShapedType + 8) = v17;
      v33 = &v29;
      ElementType = &v28;
      if (v17 >= *(a1 + 44))
      {
        llvm::SmallVectorTemplateBase<std::pair<mlir::pdl_to_pdl_interp::Qualifier *,mlir::Block *>,true>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::pdl_to_pdl_interp::Qualifier *&&>,std::tuple<mlir::Block *&&>>(a1 + 32, &std::piecewise_construct, &ElementType, &v33);
      }

      else
      {
        v18 = (*(a1 + 32) + 16 * v17);
        *v18 = v16;
        v18[1] = v15;
        *(a1 + 40) = v17 + 1;
      }
    }

    Type = mlir::ElementsAttr::getType(&v31);
    if (Type)
    {
      mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    *a1 = mlir::mps::writeConstantData(*(a1 + 72), v31, v32);
    return v15;
  }

LABEL_24:
  if (v8 == v6)
  {
LABEL_25:
    v26 = (a1 + 40);
  }

  else
  {
    v26 = (v5 + 16 * v8 + 8);
  }

  return *(*(a1 + 32) + 16 * *v26 + 8);
}

uint64_t mlir::anec::ANECIRWeightSerializer::lookupConstant(mlir::anec::ANECIRWeightSerializer *this, mlir::Operation *a2)
{
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v11, a2);
  v3 = *(this + 6);
  if (v3)
  {
    v4 = *(this + 1);
    v5 = (v3 - 1) & ((LODWORD(v12[0]) >> 4) ^ (LODWORD(v12[0]) >> 9));
    v6 = *(v4 + 16 * v5);
    if (v6 == v12[0])
    {
LABEL_3:
      if (v5 != v3)
      {
        v7 = (v4 + 16 * v5 + 8);
        return *(*(this + 4) + 16 * *v7 + 8);
      }
    }

    else
    {
      v9 = 1;
      while (v6 != -4096)
      {
        v10 = v5 + v9++;
        v5 = v10 & (v3 - 1);
        v6 = *(v4 + 16 * v5);
        if (v6 == v12[0])
        {
          goto LABEL_3;
        }
      }
    }
  }

  v7 = (this + 40);
  return *(*(this + 4) + 16 * *v7 + 8);
}

void mlir::anec::ANECDictionary::Create(mlir::anec::ANECDictionary *this, const ZinIrUnitInfo *a2)
{
  switch(*(this + 8))
  {
    case 2:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xD:
    case 0xE:
    case 0x17:
    case 0x1A:
    case 0x1B:
    case 0x1D:
    case 0x1E:
    case 0x21:
    case 0x26:
    case 0x28:
    case 0x2A:
    case 0x2F:
    case 0x30:
    case 0x31:
    case 0x32:
    case 0x33:
    case 0x34:
    case 0x35:
    case 0x36:
    case 0x37:
    case 0x38:
    case 0x39:
    case 0x40:
    case 0x41:
    case 0x42:
    case 0x43:
    case 0x44:
    case 0x45:
    case 0x46:
    case 0x47:
    case 0x48:
    case 0x49:
    case 0x4A:
      __break(1u);
      JUMPOUT(0x25680142CLL);
    case 3:
      ZinCreateConcatUnit(this);
      break;
    case 4:
      ZinCreateEWUnit(this);
      break;
    case 5:
      ZinCreateScaledEWUnit(this);
      break;
    case 0xB:
      ZinCreateFlattenUnit(this);
      break;
    case 0xC:
      ZinCreateUnflattenUnit(this);
      break;
    case 0xF:
      ZinCreateArgMinMaxUnit(this);
      break;
    case 0x10:
      ZinCreateGlobalArgMinMaxUnit(this);
      break;
    case 0x11:
      ZinCreateInputViewUnit(this);
      break;
    case 0x12:
      ZinCreateMatrixMultUnit(this);
      break;
    case 0x13:
      ZinCreateBroadcastUnit(this);
      break;
    case 0x14:
      ZinCreateReductionUnit(this);
      break;
    case 0x15:
      ZinCreateTransposeUnit(this);
      break;
    case 0x16:
      ZinCreateReshapeUnit(this);
      break;
    case 0x18:
      ZinCreateSoftmaxUnit(this);
      break;
    case 0x19:
      ZinCreateInstanceNormUnit(this);
      break;
    case 0x1C:
      ZinCreateLayerNormUnit(this);
      break;
    case 0x1F:
      ZinCreatePixelShuffleUnit(this);
      break;
    case 0x20:
      ZinCreatePixelUnshuffleUnit(this);
      break;
    case 0x22:
      ZinCreateSpaceToBatchUnit(this);
      break;
    case 0x23:
      ZinCreateBatchToSpaceUnit(this);
      break;
    case 0x24:
      ZinCreateSpaceToChannelUnit(this);
      break;
    case 0x25:
      ZinCreateChannelToSpaceUnit(this);
      break;
    case 0x27:
      ZinCreateGatherUnit(this);
      break;
    case 0x29:
      ZinCreateResizeUnit(this);
      break;
    case 0x2B:
      ZinCreateResampleUnit(this);
      break;
    case 0x2C:
      ZinCreatePadUnit(this);
      break;
    case 0x2D:
      ZinCreateTileUnit(this);
      break;
    case 0x2E:
      ZinCreateCropResizeUnit(this);
      break;
    case 0x3A:
      ZinCreateQuantUnit(this);
      break;
    case 0x3B:
      ZinCreateDeQuantUnit(this);
      break;
    case 0x3C:
      ZinCreateLinearUnit(this);
      break;
    case 0x3D:
      ZinCreateRingBufferWriterUnit(this);
      break;
    case 0x3E:
      ZinCreateRingBufferReaderUnit(this);
      break;
    case 0x3F:
      ZinCreateBatchNormUnit(this);
      break;
    case 0x4B:
    case 0x4C:
      ZinCreateAllGatherUnit(this);
      break;
    case 0x4D:
      ZinCreateSDPAUnit(this);
      break;
    case 0x4E:
      ZinCreateAllReduceUnit(this);
      break;
    default:
      ZinCreateConvUnit(this);
      break;
  }

  operator new();
}

void mlir::anec::ANECDictionary::Add(uint64_t *a1, uint64_t a2, uint64_t **a3)
{
  plist::PListDict::GetValueForKey(*a1, a2, &v13);
  v7 = v13;
  v6 = v14;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
      return;
    }
  }

  else if (v7)
  {
    return;
  }

  v8 = *a1;
  if (!std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((v8 + 8), a2))
  {
    v13 = a2;
    v9 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v8 + 8), a2);
    v11 = *a3;
    v10 = a3[1];
    if (v10)
    {
      atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
    }

    v12 = v9[6];
    v9[5] = v11;
    v9[6] = v10;
    if (v12)
    {
      if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }
}

void mlir::anec::ANECDictionary::PListEntry(mlir::anec::ANECDictionary *this)
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void mlir::anec::ANECDictionary::PListEntry(void **a1@<X1>, void *a2@<X8>)
{
  v2 = (*a1)[1];
  *a2 = **a1;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void mlir::anec::ANECDictionary::PListEntry(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void mlir::anec::ANECDictionary::Create(ZinIrUnitInfo const&)::$_0::__invoke(const __CFString *a1, uint64_t *a2, uint64_t *a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  ZinGetString(a1, __p);
  plist::PListType::PListFromCF(&v6, a2);
  mlir::anec::ANECDictionary::Add(a3, __p, &v6);
  v5 = v7;
  if (!v7 || atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v9) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_4;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (SHIBYTE(v9) < 0)
  {
LABEL_4:
    operator delete(__p[0]);
  }
}

BOOL ZinGetString(CFStringRef theString, uint64_t a2)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    *a2 = 0;
    *(a2 + 23) = 0;
    if (theString)
    {
      goto LABEL_3;
    }

    return 0;
  }

  **a2 = 0;
  *(a2 + 8) = 0;
  if (!theString)
  {
    return 0;
  }

LABEL_3:
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  if (CStringPtr)
  {
    v5 = CStringPtr;
    v6 = strlen(CStringPtr);
    if (v6 <= 0x7FFFFFFFFFFFFFF7)
    {
      v7 = v6;
      if (v6 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v6;
      if (v6)
      {
        memmove(&__dst, v5, v6);
      }

      __dst.__r_.__value_.__s.__data_[v7] = 0;
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = __dst;
      return 1;
    }

LABEL_37:
    std::string::__throw_length_error[abi:nn200100]();
  }

  Length = CFStringGetLength(theString);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v11 = MaximumSizeForEncoding + 1;
  if ((MaximumSizeForEncoding + 1) > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_37;
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = MaximumSizeForEncoding + 1;
  if (MaximumSizeForEncoding != -1)
  {
    bzero(&__dst, v11);
  }

  __dst.__r_.__value_.__s.__data_[v11] = 0;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  CString = CFStringGetCString(theString, p_dst, v11, 0x8000100u);
  result = CString != 0;
  v14 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (CString)
  {
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &__dst;
    }

    else
    {
      v15 = __dst.__r_.__value_.__r.__words[0];
    }

    v16 = strlen(v15);
    std::string::resize(&__dst, v16, 0);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v18 = __dst;
    }

    result = 1;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
      result = 1;
    }

    *a2 = v18;
    v14 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  if (v14 < 0)
  {
    v17 = result;
    operator delete(__dst.__r_.__value_.__l.__data_);
    return v17;
  }

  return result;
}

void std::__shared_ptr_pointer<mlir::anec::ANECDictionary *,std::shared_ptr<mlir::anec::ANECDictionary>::__shared_ptr_default_delete<mlir::anec::ANECDictionary,mlir::anec::ANECDictionary>,std::allocator<mlir::anec::ANECDictionary>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

uint64_t std::__shared_ptr_pointer<mlir::anec::ANECDictionary *,std::shared_ptr<mlir::anec::ANECDictionary>::__shared_ptr_default_delete<mlir::anec::ANECDictionary,mlir::anec::ANECDictionary>,std::allocator<mlir::anec::ANECDictionary>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    v2 = *(result + 8);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    JUMPOUT(0x259C63180);
  }

  return result;
}

void std::__shared_ptr_pointer<plist::PListInt *,std::shared_ptr<plist::PListType>::__shared_ptr_default_delete<plist::PListType,plist::PListInt>,std::allocator<plist::PListInt>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

uint64_t std::__shared_ptr_pointer<plist::PListInt *,std::shared_ptr<plist::PListType>::__shared_ptr_default_delete<plist::PListType,plist::PListInt>,std::allocator<plist::PListInt>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<plist::PListBool *,std::shared_ptr<plist::PListType>::__shared_ptr_default_delete<plist::PListType,plist::PListBool>,std::allocator<plist::PListBool>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

uint64_t std::__shared_ptr_pointer<plist::PListBool *,std::shared_ptr<plist::PListType>::__shared_ptr_default_delete<plist::PListType,plist::PListBool>,std::allocator<plist::PListBool>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<plist::PListString *,std::shared_ptr<plist::PListType>::__shared_ptr_default_delete<plist::PListType,plist::PListString>,std::allocator<plist::PListString>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

uint64_t std::__shared_ptr_pointer<plist::PListString *,std::shared_ptr<plist::PListType>::__shared_ptr_default_delete<plist::PListType,plist::PListString>,std::allocator<plist::PListString>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *plist::PListType::PListFromCF@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  if (this)
  {
    v4 = this;
    v5 = CFGetTypeID(this);
    if (v5 == CFStringGetTypeID())
    {
      __p[0] = 0;
      __p[1] = 0;
      v15 = 0;
      ZinGetString(v4, __p);
      operator new();
    }

    v6 = CFGetTypeID(v4);
    if (v6 == CFBooleanGetTypeID())
    {
      CFBooleanGetValue(v4);
      operator new();
    }

    v7 = CFGetTypeID(v4);
    if (v7 == CFNumberGetTypeID())
    {
      Type = CFNumberGetType(v4);
      v13 = 0.0;
      CFNumberGetValue(v4, Type, &v13);
      IsFloatType = CFNumberIsFloatType(v4);
      ByteSize = CFNumberGetByteSize(v4);
      if (IsFloatType)
      {
        if (ByteSize == 4)
        {
          operator new();
        }

        CFNumberGetByteSize(v4);
        operator new();
      }

      if (ByteSize == 1)
      {
        operator new();
      }

      if (CFNumberGetByteSize(v4) == 2)
      {
        operator new();
      }

      if (CFNumberGetByteSize(v4) == 4)
      {
        operator new();
      }

      CFNumberGetByteSize(v4);
      operator new();
    }

    v11 = CFGetTypeID(v4);
    if (v11 == CFDictionaryGetTypeID())
    {
      operator new();
    }

    v12 = CFGetTypeID(v4);
    this = CFArrayGetTypeID();
    if (v12 == this)
    {
      operator new();
    }
  }

  *a1 = 0;
  a1[1] = 0;
  return this;
}

void *plist::PListString::DoPrint(uint64_t a1, void *a2, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v24 = __len;
  if (__len)
  {
    memset(__b, 32, __len);
  }

  *(__b + __len) = 0;
  if ((v24 & 0x80u) == 0)
  {
    v6 = __b;
  }

  else
  {
    v6 = __b[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v7 = v24;
  }

  else
  {
    v7 = __b[1];
  }

  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v6, v7);
  v22 = 8;
  strcpy(v21, "<string>");
  v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, v21, 8);
  v12 = *(a1 + 8);
  v11 = a1 + 8;
  v10 = v12;
  v13 = *(v11 + 23);
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = *(v11 + 8);
  }

  v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, v14, v15);
  v20 = 10;
  strcpy(__p, "</string>\n");
  v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, __p, 10);
  if ((v20 & 0x80000000) == 0)
  {
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    operator delete(v21[0]);
    if ((v24 & 0x80000000) == 0)
    {
      return v17;
    }

LABEL_25:
    operator delete(__b[0]);
    return v17;
  }

  operator delete(__p[0]);
  if (v22 < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v24 < 0)
  {
    goto LABEL_25;
  }

  return v17;
}

plist::PListReal *plist::PListReal::PListReal(plist::PListReal *this, double a2)
{
  *this = &unk_2868717E0;
  *(this + 1) = 0;
  v3 = this + 8;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (a2 == -INFINITY)
  {
    MEMORY[0x259C62C80](v3, "-infinity");
  }

  else if (a2 == INFINITY)
  {
    MEMORY[0x259C62C80](v3, "+infinity");
  }

  else if (a2 == 0.0)
  {
    MEMORY[0x259C62C80](v3, "0.0");
  }

  else
  {
    v4 = v3;
    memset(&v10, 0, sizeof(v10));
    v6 = snprintf(0, 0, "%.*g", 17, a2);
    begin = 0;
    v8 = v6 + 1;
    if (v6 != -1)
    {
      std::vector<char>::__append(&v10, v6 + 1);
      begin = v10.__begin_;
    }

    snprintf(begin, v8, "%.*g", 17, a2);
    MEMORY[0x259C62C80](v4, v10.__begin_);
    if (v10.__begin_)
    {
      v10.__end_ = v10.__begin_;
      operator delete(v10.__begin_);
    }
  }

  return this;
}

void *plist::PListReal::DoPrint(uint64_t a1, void *a2, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v24 = __len;
  if (__len)
  {
    memset(__b, 32, __len);
  }

  *(__b + __len) = 0;
  if ((v24 & 0x80u) == 0)
  {
    v6 = __b;
  }

  else
  {
    v6 = __b[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v7 = v24;
  }

  else
  {
    v7 = __b[1];
  }

  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v6, v7);
  v22 = 6;
  strcpy(v21, "<real>");
  v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, v21, 6);
  v12 = *(a1 + 8);
  v11 = a1 + 8;
  v10 = v12;
  v13 = *(v11 + 23);
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = *(v11 + 8);
  }

  v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, v14, v15);
  v20 = 8;
  strcpy(__p, "</real>\n");
  v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, __p, 8);
  if ((v20 & 0x80000000) == 0)
  {
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    operator delete(v21[0]);
    if ((v24 & 0x80000000) == 0)
    {
      return v17;
    }

LABEL_25:
    operator delete(__b[0]);
    return v17;
  }

  operator delete(__p[0]);
  if (v22 < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v24 < 0)
  {
    goto LABEL_25;
  }

  return v17;
}

void *plist::PListInt::DoPrint(uint64_t a1, void *a2, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v21 = __len;
  if (__len)
  {
    memset(__b, 32, __len);
  }

  *(__b + __len) = 0;
  if ((v21 & 0x80u) == 0)
  {
    v6 = __b;
  }

  else
  {
    v6 = __b[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v7 = v21;
  }

  else
  {
    v7 = __b[1];
  }

  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v6, v7);
  v19 = 9;
  strcpy(__p, "<integer>");
  v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, __p, 9);
  std::to_string(&v17, *(a1 + 8));
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v17;
  }

  else
  {
    v10 = v17.__r_.__value_.__r.__words[0];
  }

  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v17.__r_.__value_.__l.__size_;
  }

  v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, v10, size);
  v16 = 11;
  strcpy(v15, "</integer>\n");
  v13 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, v15, 11);
  if (v16 < 0)
  {
    operator delete(v15[0]);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_21:
      if ((v19 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

LABEL_26:
      operator delete(__p[0]);
      if ((v21 & 0x80000000) == 0)
      {
        return v13;
      }

LABEL_27:
      operator delete(__b[0]);
      return v13;
    }
  }

  else if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(v17.__r_.__value_.__l.__data_);
  if (v19 < 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  if (v21 < 0)
  {
    goto LABEL_27;
  }

  return v13;
}

void *plist::PListBool::DoPrint(uint64_t a1, void *a2, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v12 = __len;
  if (__len)
  {
    memset(&__b, 32, __len);
  }

  *(&__b + __len) = 0;
  if (v12 >= 0)
  {
    p_b = &__b;
  }

  else
  {
    p_b = __b;
  }

  if (v12 >= 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = *(&__b + 1);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, p_b, v7);
  if (v12 < 0)
  {
    operator delete(__b);
  }

  if (*(a1 + 8) == 1)
  {
    v12 = 8;
    strcpy(&__b, "<true/>\n");
    v8 = a2;
    v9 = 8;
  }

  else
  {
    v12 = 9;
    strcpy(&__b, "<false/>\n");
    v8 = a2;
    v9 = 9;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, &__b, v9);
  if (v12 < 0)
  {
    operator delete(__b);
  }

  return a2;
}

void *plist::PListDict::DoPrint(uint64_t a1, void *a2, size_t __len, uint64_t a4)
{
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_62:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v32 = __len;
  if (__len)
  {
    memset(&__b, 32, __len);
  }

  *(&__b + __len) = 0;
  if ((v32 & 0x80u) == 0)
  {
    p_b = &__b;
  }

  else
  {
    p_b = __b;
  }

  if ((v32 & 0x80u) == 0)
  {
    v9 = v32;
  }

  else
  {
    v9 = v31;
  }

  v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, p_b, v9);
  v29 = 7;
  strcpy(__p, "<dict>\n");
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, __p, 7);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (v32 < 0)
  {
    operator delete(__b);
    v11 = *(a1 + 24);
    if (!v11)
    {
      goto LABEL_46;
    }

    goto LABEL_19;
  }

  v11 = *(a1 + 24);
  if (v11)
  {
LABEL_19:
    v12 = a4 + __len;
    do
    {
      if (v12 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_62;
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v32 = a4 + __len;
      if (v12)
      {
        memset(&__b, 32, v12);
      }

      *(&__b + v12) = 0;
      if ((v32 & 0x80u) == 0)
      {
        v13 = &__b;
      }

      else
      {
        v13 = __b;
      }

      if ((v32 & 0x80u) == 0)
      {
        v14 = v32;
      }

      else
      {
        v14 = v31;
      }

      v15 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v13, v14);
      v29 = 5;
      strcpy(__p, "<key>");
      v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, __p, 5);
      v17 = *(v11 + 39);
      if (v17 >= 0)
      {
        v18 = (v11 + 2);
      }

      else
      {
        v18 = v11[2];
      }

      if (v17 >= 0)
      {
        v19 = *(v11 + 39);
      }

      else
      {
        v19 = v11[3];
      }

      v20 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, v18, v19);
      v27 = 7;
      strcpy(v26, "</key>\n");
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, v26, 7);
      if (v27 < 0)
      {
        operator delete(v26[0]);
        if ((v29 & 0x80000000) == 0)
        {
LABEL_41:
          if (v32 < 0)
          {
            goto LABEL_45;
          }

          goto LABEL_20;
        }
      }

      else if ((v29 & 0x80000000) == 0)
      {
        goto LABEL_41;
      }

      operator delete(__p[0]);
      if (v32 < 0)
      {
LABEL_45:
        operator delete(__b);
      }

LABEL_20:
      (*(*v11[5] + 16))(v11[5], a2, v12, a4);
      v11 = *v11;
    }

    while (v11);
  }

LABEL_46:
  if (__len >= 0x17)
  {
    operator new();
  }

  v32 = __len;
  if (__len)
  {
    memset(&__b, 32, __len);
  }

  *(&__b + __len) = 0;
  if ((v32 & 0x80u) == 0)
  {
    v21 = &__b;
  }

  else
  {
    v21 = __b;
  }

  if ((v32 & 0x80u) == 0)
  {
    v22 = v32;
  }

  else
  {
    v22 = v31;
  }

  v23 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v21, v22);
  v29 = 8;
  strcpy(__p, "</dict>\n");
  v24 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v23, __p, 8);
  if (v29 < 0)
  {
    operator delete(__p[0]);
    if ((v32 & 0x80000000) == 0)
    {
      return v24;
    }

LABEL_61:
    operator delete(__b);
    return v24;
  }

  if (v32 < 0)
  {
    goto LABEL_61;
  }

  return v24;
}

uint64_t **plist::PListDict::GetValueForKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>>>::find<std::string>((a1 + 8), a2);
  if (result)
  {
    v5 = result[6];
    *a3 = result[5];
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void *plist::PListArray::DoPrint(uint64_t a1, void *a2, size_t __len, uint64_t a4)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v23 = __len;
  if (__len)
  {
    memset(&__b, 32, __len);
  }

  *(&__b + __len) = 0;
  if ((v23 & 0x80u) == 0)
  {
    p_b = &__b;
  }

  else
  {
    p_b = __b;
  }

  if ((v23 & 0x80u) == 0)
  {
    v9 = v23;
  }

  else
  {
    v9 = v22;
  }

  v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, p_b, v9);
  v20 = 8;
  strcpy(__p, "<array>\n");
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, __p, 8);
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__b);
LABEL_15:
  v12 = *(a1 + 8);
  v11 = *(a1 + 16);
  while (v12 != v11)
  {
    v13 = *v12;
    v12 += 2;
    (*(*v13 + 16))(v13, a2, a4 + __len, a4);
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v23 = __len;
  if (__len)
  {
    memset(&__b, 32, __len);
  }

  *(&__b + __len) = 0;
  if ((v23 & 0x80u) == 0)
  {
    v14 = &__b;
  }

  else
  {
    v14 = __b;
  }

  if ((v23 & 0x80u) == 0)
  {
    v15 = v23;
  }

  else
  {
    v15 = v22;
  }

  v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v14, v15);
  v20 = 9;
  strcpy(__p, "</array>\n");
  v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, __p, 9);
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if ((v23 & 0x80000000) == 0)
    {
      return v17;
    }

LABEL_34:
    operator delete(__b);
    return v17;
  }

  if (v23 < 0)
  {
    goto LABEL_34;
  }

  return v17;
}

void plist::PListString::~PListString(void **this)
{
  *this = &unk_286871808;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286871808;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

void plist::PListArray::~PListArray(plist::PListArray *this)
{
  *this = &unk_286871880;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v5->__on_zero_shared)(v5);
            std::__shared_weak_count::__release_weak(v5);
          }
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }
}

{
  *this = &unk_286871880;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x259C63180);
}

void plist::PListDict::~PListDict(plist::PListDict *this)
{
  *this = &unk_2868718A8;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>>>::~__hash_table(this + 8);
}

{
  *this = &unk_2868718A8;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>>>::~__hash_table(this + 8);

  JUMPOUT(0x259C63180);
}

void plist::PListReal::~PListReal(void **this)
{
  *this = &unk_2868717E0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2868717E0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

void plist::PListType::PListFromCF(void const*)::$_0::__invoke(const __CFString *a1, plist::PListType *a2, uint64_t a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  ZinGetString(a1, __p);
  plist::PListType::PListFromCF(&v11, a2, v5);
  if (!std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a3 + 8), __p))
  {
    v15 = __p;
    v7 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a3 + 8), __p);
    v9 = v11;
    v8 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v7[6];
    v7[5] = v9;
    v7[6] = v8;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  v6 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_5;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  if (SHIBYTE(v14) < 0)
  {
LABEL_5:
    operator delete(__p[0]);
  }
}

void plist::PListType::PListFromCF(void const*)::$_1::__invoke(plist::PListType *a1, void *a2)
{
  plist::PListType::PListFromCF(&v17, a1, a2);
  v3 = a2[2];
  v4 = a2[3];
  if (v3 >= v4)
  {
    v7 = a2[1];
    v8 = (v3 - v7) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = 16 * v8;
    v13 = *(&v17 + 1);
    *(16 * v8) = v17;
    v5 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = (v12 + 16);
    v14 = a2[1];
    v15 = a2[2] - v14;
    v16 = v12 - v15;
    memcpy((v12 - v15), v14, v15);
    a2[1] = v16;
    a2[2] = v6;
    a2[3] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *(&v17 + 1);
    *v3 = v17;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  a2[2] = v6;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<plist::PListType>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 6);
      if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void std::__shared_ptr_emplace<plist::PListBool>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2868718D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

void std::__shared_ptr_emplace<plist::PListReal>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286871908;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

void std::__shared_ptr_emplace<plist::PListInt>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286871940;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

void std::vector<char>::__append(std::vector<char> *this, std::vector<char>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      v10 = &end[__n];
      bzero(this->__end_, __n);
      end = v10;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v6 = (end - this->__begin_);
    v7 = &v6[__n];
    if (&v6[__n] < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = value - begin;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      operator new();
    }

    v11 = end - this->__begin_;
    v12 = &v6[__n];
    bzero(v6, __n);
    v13 = &v6[begin - end];
    memcpy(v13, begin, v11);
    this->__begin_ = v13;
    this->__end_ = v12;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::__shared_ptr_pointer<plist::PListDict *,std::shared_ptr<plist::PListDict>::__shared_ptr_default_delete<plist::PListDict,plist::PListDict>,std::allocator<plist::PListDict>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

uint64_t std::__shared_ptr_pointer<plist::PListDict *,std::shared_ptr<plist::PListDict>::__shared_ptr_default_delete<plist::PListDict,plist::PListDict>,std::allocator<plist::PListDict>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<plist::PListArray *,std::shared_ptr<plist::PListArray>::__shared_ptr_default_delete<plist::PListArray,plist::PListArray>,std::allocator<plist::PListArray>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

uint64_t std::__shared_ptr_pointer<plist::PListArray *,std::shared_ptr<plist::PListArray>::__shared_ptr_default_delete<plist::PListArray,plist::PListArray>,std::allocator<plist::PListArray>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2798396E8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::vector<std::string>::__append(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v10 = 24 * ((24 * __n - 24) / 0x18) + 24;
      bzero(this->__end_, v10);
      end = (end + v10);
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v6 = end - this->__begin_;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + __n;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * __n - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    memcpy(v14, begin, v6);
    this->__begin_ = v14;
    this->__end_ = v13;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

__CFString *ZinIrKernelFormatToCFString(unsigned int a1)
{
  if (a1 > 0x20)
  {
    return @"Int8";
  }

  else
  {
    return qword_27983A128[a1];
  }
}

void ZinAssertImpl(const char *__format, ...)
{
  va_start(va, __format);
  v3 = *MEMORY[0x277D85DE8];
  vsnprintf(__str, 0x200uLL, __format, va);
  __str[511] = 0;
  exception = __cxa_allocate_exception(0x98uLL);
  ZinException::ZinException(exception, __str);
}

void ZinException::~ZinException(std::runtime_error *this)
{
  this->__vftable = &unk_286871A00;
  if (LOBYTE(this[9].__vftable) == 1 && SHIBYTE(this[8].__imp_.__imp_) < 0)
  {
    operator delete(this[7].__imp_.__imp_);
  }

  if (LOBYTE(this[7].__vftable) == 1)
  {
    if (SHIBYTE(this[6].__imp_.__imp_) < 0)
    {
      operator delete(this[5].__imp_.__imp_);
      if ((SHIBYTE(this[5].__vftable) & 0x80000000) == 0)
      {
LABEL_7:
        if ((SHIBYTE(this[3].__imp_.__imp_) & 0x80000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }

    else if ((SHIBYTE(this[5].__vftable) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    operator delete(this[4].__vftable);
    if ((SHIBYTE(this[3].__imp_.__imp_) & 0x80000000) == 0)
    {
LABEL_8:
      if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_15:
      operator delete(this[1].__vftable);
      goto LABEL_9;
    }

LABEL_14:
    operator delete(this[2].__imp_.__imp_);
    if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_9:

  std::runtime_error::~runtime_error(this);
}

{
  this->__vftable = &unk_286871A00;
  if (LOBYTE(this[9].__vftable) == 1 && SHIBYTE(this[8].__imp_.__imp_) < 0)
  {
    operator delete(this[7].__imp_.__imp_);
  }

  if (LOBYTE(this[7].__vftable) != 1)
  {
LABEL_9:
    std::runtime_error::~runtime_error(this);

    JUMPOUT(0x259C63180);
  }

  if (SHIBYTE(this[6].__imp_.__imp_) < 0)
  {
    operator delete(this[5].__imp_.__imp_);
    if ((SHIBYTE(this[5].__vftable) & 0x80000000) == 0)
    {
LABEL_7:
      if ((SHIBYTE(this[3].__imp_.__imp_) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else if ((SHIBYTE(this[5].__vftable) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(this[4].__vftable);
  if ((SHIBYTE(this[3].__imp_.__imp_) & 0x80000000) == 0)
  {
LABEL_8:
    if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    operator delete(this[1].__vftable);
    goto LABEL_9;
  }

LABEL_14:
  operator delete(this[2].__imp_.__imp_);
  if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_15;
}

void ZinException::ZinException(ZinException *this, const char *a2)
{
  v2 = std::runtime_error::runtime_error(this, a2);
  v2->__vftable = &unk_286871A00;
  LOBYTE(v2[1].__vftable) = 0;
  LOBYTE(v2[7].__vftable) = 0;
  LOBYTE(v2[7].__imp_.__imp_) = 0;
  LOBYTE(v2[9].__vftable) = 0;
}

__CFString *ZinIrPoolingTypeToCFString(unsigned int a1)
{
  if (a1 > 0xE)
  {
    return @"Avg";
  }

  else
  {
    return qword_27983A230[a1];
  }
}

__CFString *ZinIrConvTypeToCFString(unsigned int a1)
{
  if (a1 > 6)
  {
    return @"Conv";
  }

  else
  {
    return qword_27983A2A8[a1];
  }
}

__CFString *ZinIrConvKernelModeToCFString(unsigned int a1)
{
  if (a1 > 0xF)
  {
    return @"Dense";
  }

  else
  {
    return qword_27983A2E0[a1];
  }
}

__CFString *ZinIrEWTypeToCFString(unsigned int a1)
{
  if (a1 > 0x15)
  {
    return @"Add";
  }

  else
  {
    return qword_27983A360[a1];
  }
}

__CFString *ZinIrScaledEWTypeToCFString(unsigned int a1)
{
  if (a1 > 5)
  {
    return @"Add";
  }

  else
  {
    return qword_27983A410[a1];
  }
}

__CFString *ZinIrFlattenTypeToCFString(int a1)
{
  v1 = @"NCHW";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    return @"NHWC";
  }

  else
  {
    return v1;
  }
}

uint64_t ZinIrTEPaddingModeToCFString(int a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return *(&off_27983A440 + (a1 - 1));
  }
}

__CFString *ZinIrSamplingMethodToCFString(int a1)
{
  if (a1)
  {
    return @"NearestNeighbor";
  }

  else
  {
    return @"Linear";
  }
}

__CFString *ZinIrSamplingGridModeToCFStringRef(unsigned int a1)
{
  if (a1 > 5)
  {
    return @"StrictAlignedCorners";
  }

  else
  {
    return off_27983A478[a1];
  }
}

__CFString *ZinIrNormalizedCoordinateRangeToCFString(int a1)
{
  if (a1)
  {
    return @"RangeMinusOneToOne";
  }

  else
  {
    return @"RangeZeroToOne";
  }
}

__CFString *ZinIrCoordinateModeToCFString(int a1)
{
  v1 = @"NonNormalized";
  if (a1 == 1)
  {
    v1 = @"NormalizedSymmetric";
  }

  if (a1 == 2)
  {
    return @"NormalizedReflect";
  }

  else
  {
    return v1;
  }
}

__CFString *ZinIrCropResizeBoxModeToCFString(unsigned int a1)
{
  if (a1 > 0xF)
  {
    return 0;
  }

  else
  {
    return off_27983A4A8[a1];
  }
}

__CFString *ZinIrCoordinateTypeToCFString(int a1)
{
  if (a1 == 1)
  {
    return @"Absolute";
  }

  else
  {
    return @"Relative";
  }
}

__CFString *ZinIrCoordinateToCFString(_DWORD *a1)
{
  v1 = *a1 - 1;
  if (v1 > 4)
  {
    return @"Batch";
  }

  else
  {
    return off_27983A528[v1];
  }
}

__CFString *ZinIrReductionTypeToCFString(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return @"Min";
  }

  else
  {
    return off_27983A550[a1];
  }
}

uint64_t ToCharDimension(int a1, _BYTE *a2)
{
  v4 = 0;
  v16 = *MEMORY[0x277D85DE8];
  v14[0] = xmmword_257374020;
  v14[1] = unk_257374030;
  v15 = 0x5700000004;
  v5 = v11;
  v11[0] = 0;
  v11[1] = 0;
  v10 = v11;
  do
  {
    if (!*std::__tree<std::__value_type<ZinIrDimension,char>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,char>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,char>>>::__find_equal<ZinIrDimension>(&v10, v11, &v13, &v12, (v14 + v4)))
    {
      operator new();
    }

    v4 += 8;
  }

  while (v4 != 40);
  v6 = v11[0];
  if (!v11[0])
  {
    goto LABEL_12;
  }

  v7 = v11[0];
  do
  {
    if (*(v7 + 28) >= a1)
    {
      v5 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 28) < a1));
  }

  while (v7);
  if (v5 != v11 && *(v5 + 7) <= a1)
  {
    *a2 = *(v5 + 32);
    v8 = 1;
  }

  else
  {
LABEL_12:
    v8 = 0;
  }

  std::__tree<long long>::destroy(&v10, v6);
  return v8;
}

uint64_t *std::__tree<std::__value_type<ZinIrDimension,char>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,char>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,char>>>::__find_equal<ZinIrDimension>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = *(v18 + 28);
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
    }

    else
    {
      v19 = a1 + 1;
    }

LABEL_25:
    *a3 = v19;
    return v5;
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < *(v13 + 7))
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = *(v22 + 28);
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
      }

      else
      {
        v23 = a1 + 1;
      }

LABEL_41:
      *a3 = v23;
      return v5;
    }
  }
}

__CFDictionary *ZinCreateAllGatherUnit(const ZinIrUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  ZinCreateShardingMap(Mutable, a1 + 10);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateAllReduceUnit(uint64_t a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  ZinCreateShardingMap(Mutable, (a1 + 80));
  v4 = ZinIrReductionTypeToCFString(*(a1 + 152));
  CFDictionaryAddValue(Mutable, @"Type", v4);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateArgMinMaxUnit(const ZinIrArgMinMaxUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = Mutable;
  v6 = *(a1 + 30);
  if (v6 > 4)
  {
    v7 = @"SpatialArgMin";
  }

  else
  {
    v7 = qword_27983A5B0[v6];
  }

  CFDictionaryAddValue(Mutable, @"Mode", v7);
  if ((*(a1 + 30) | 2) == 3)
  {
    v8 = *(a1 + 21);
    v15 = *(a1 + 20);
    valuePtr = v8;
    v9 = CFNumberCreate(v3, kCFNumberSInt32Type, &valuePtr);
    v10 = CFNumberCreate(v3, kCFNumberSInt32Type, &v15);
    CFDictionaryAddValue(v5, @"KernelWidth", v9);
    CFDictionaryAddValue(v5, @"KernelHeight", v10);
    CFRelease(v9);
    CFRelease(v10);
    v11 = CFArrayCreateMutable(v3, 0, MEMORY[0x277CBF128]);
    v12 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 92);
    v13 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 88);
    CFArrayAppendValue(v11, v12);
    CFArrayAppendValue(v11, v13);
    CFRelease(v12);
    CFRelease(v13);
    CFDictionaryAddValue(v5, @"Step", v11);
    CFRelease(v11);
    ZinAddPaddingToParamsDict(v5, a1 + 96, 0);
  }

  CFDictionaryAddValue(Unit, @"Params", v5);
  CFRelease(v5);
  return Unit;
}

__CFDictionary *ZinCreateBatchToSpaceUnit(const ZinIrBatchToSpaceUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = 35;
  ZinAddSpaceTransformFactorToParamsDict(Mutable, &v5, a1 + 80);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

CFMutableDictionaryRef ZinCreateBroadcastUnit(const ZinIrBroadcastUnitInfo *a1)
{
  theDict = ZinCreateUnit(a1);
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = CFArrayCreateMutable(v2, 0, MEMORY[0x277CBF128]);
  v5 = *(a1 + 12);
  if (v5)
  {
    v6 = MEMORY[0x277CBF138];
    v7 = MEMORY[0x277CBF150];
    do
    {
      v8 = CFDictionaryCreateMutable(v2, 0, v6, v7);
      valuePtr = v5[3];
      v9 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
      v10 = ZinIrCoordinateToCFString(v5 + 4);
      CFDictionaryAddValue(v8, @"Dimension", v10);
      CFDictionaryAddValue(v8, @"Size", v9);
      CFArrayAppendValue(v4, v8);
      CFRelease(v9);
      CFRelease(v8);
      v5 = *v5;
    }

    while (v5);
  }

  CFDictionaryAddValue(Mutable, @"BroadcastInfo", v4);
  CFDictionaryAddValue(theDict, @"Params", Mutable);
  CFRelease(v4);
  CFRelease(Mutable);
  return theDict;
}

__CFDictionary *ZinCreateChannelToSpaceUnit(const ZinIrChannelToSpaceUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = 37;
  ZinAddSpaceTransformFactorToParamsDict(Mutable, &v5, a1 + 80);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateConcatUnit(const ZinIrConcatUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = ZinIrCoordinateToCFString(a1 + 20);
  CFDictionaryAddValue(Mutable, @"Dimension", v4);
  v5 = MEMORY[0x277CBED28];
  if (!*(a1 + 84))
  {
    v5 = MEMORY[0x277CBED10];
  }

  CFDictionaryAddValue(Mutable, @"Interleaved", *v5);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateConvUnit(const ZinIrConvUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  valuePtr = *(a1 + 31);
  v5 = CFNumberCreate(v3, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(Unit, @"NumGroups", v5);
  CFRelease(v5);
  v6 = ZinIrConvTypeToCFString(*(a1 + 60));
  CFDictionaryAddValue(Mutable, @"Type", v6);
  if ((*(a1 + 60) - 5) <= 1)
  {
    ZinAddKernelDilationRateToParamsDict(Mutable, a1 + 280);
  }

  v7 = *MEMORY[0x277CBED28];
  v8 = *MEMORY[0x277CBED10];
  if (*(a1 + 244))
  {
    v9 = *MEMORY[0x277CBED28];
  }

  else
  {
    v9 = *MEMORY[0x277CBED10];
  }

  CFDictionaryAddValue(Mutable, @"KernelGroupReuse", v9);
  v10 = ZinIrConvKernelModeToCFString(*(a1 + 20));
  if (v10)
  {
    CFDictionaryAddValue(Mutable, @"KernelMode", v10);
  }

  if (*(a1 + 180))
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  CFDictionaryAddValue(Mutable, @"KernelMutable", v11);
  v12 = ZinIrKernelFormatToCFString(*(a1 + 21));
  if (v12)
  {
    CFDictionaryAddValue(Mutable, @"KernelType", v12);
  }

  ZinAddKernelSizeToParamsDict(Mutable, a1 + 32, 1);
  if (ZinKernelModeIsPalette(*(a1 + 20)))
  {
    ZinDictionaryAddVector<long long>(Mutable, @"KernelPaletteLUTOffset", a1 + 19);
    ZinDictionaryAddVector<int>(Mutable, @"KernelPaletteLUTIndex", a1 + 16);
    v13 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 176);
    CFDictionaryAddValue(Mutable, @"KernelPaletteVectorSize", v13);
    CFRelease(v13);
  }

  if (ZinKernelModeIsSparse(*(a1 + 20)))
  {
    v14 = CFNumberCreate(v3, kCFNumberSInt64Type, a1 + 112);
    CFDictionaryAddValue(Mutable, @"KernelMaskByteOffset", v14);
    CFRelease(v14);
    v15 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 104);
    CFDictionaryAddValue(Mutable, @"KernelMaskIndex", v15);
    CFRelease(v15);
    v16 = CFNumberCreate(v3, kCFNumberSInt64Type, a1 + 120);
    CFDictionaryAddValue(Mutable, @"KernelCoeffCount", v16);
    CFRelease(v16);
  }

  if (*(a1 + 20) != 15)
  {
    v17 = CFNumberCreate(v3, kCFNumberSInt64Type, a1 + 96);
    CFDictionaryAddValue(Mutable, @"KernelOffset", v17);
    CFRelease(v17);
    v18 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 88);
    CFDictionaryAddValue(Mutable, @"KernelIndex", v18);
    CFRelease(v18);
  }

  ZinAddStepsToParamsDict(Mutable, a1 + 292, 1);
  ZinAddPaddingToParamsDict(Mutable, a1 + 304, 1);
  v19 = ZinIrPaddingModeToCFString(*(a1 + 82));
  CFDictionaryAddValue(Mutable, @"PaddingMode", v19);
  if (*(a1 + 184) == 1)
  {
    v20 = ZinIrKernelFormatToCFString(*(a1 + 56));
    if (v20)
    {
      CFDictionaryAddValue(Mutable, @"KernelPerCoutScaleFormat", v20);
    }

    v21 = CFNumberCreate(v3, kCFNumberSInt64Type, a1 + 200);
    CFDictionaryAddValue(Mutable, @"KernelScaleByteOffset", v21);
    CFRelease(v21);
    v22 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 192);
    v23 = @"KernelScaleIndex";
  }

  else
  {
    if (ZinIrKernelQuantizationInfo::HasDefaultQuantizationScalarScale((a1 + 184)))
    {
      goto LABEL_26;
    }

    v22 = CFNumberCreate(v3, kCFNumberFloat32Type, a1 + 228);
    v23 = @"KernelScaleScalar";
  }

  CFDictionaryAddValue(Mutable, v23, v22);
  CFRelease(v22);
LABEL_26:
  if (*(a1 + 185) == 1)
  {
    v24 = a1 + 208;
    v25 = CFNumberCreate(v3, kCFNumberSInt64Type, a1 + 216);
    CFDictionaryAddValue(Mutable, @"KernelZeroPointByteOffset", v25);
    CFRelease(v25);
    v26 = @"KernelZeroPointIndex";
LABEL_30:
    v27 = CFNumberCreate(v3, kCFNumberSInt32Type, v24);
    CFDictionaryAddValue(Mutable, v26, v27);
    CFRelease(v27);
    goto LABEL_31;
  }

  if (!ZinIrKernelQuantizationInfo::HasDefaultQuantizationScalarZeroPoint((a1 + 184)))
  {
    v24 = a1 + 232;
    v26 = @"KernelZeroPointScalar";
    goto LABEL_30;
  }

LABEL_31:
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

void ZinDictionaryAddVector<long long>(__CFDictionary *a1, const void *a2, void *a3)
{
  v5 = a3[1];
  if (v5 != *a3)
  {
    if (((v5 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v6 = CFArrayCreate(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF128]);
  CFDictionaryAddValue(a1, a2, v6);
  CFRelease(v6);
}

void sub_256805794(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void ZinDictionaryAddVector<int>(__CFDictionary *a1, const void *a2, void *a3)
{
  v5 = a3[1];
  if (v5 != *a3)
  {
    if ((v5 - *a3) < 0x7FFFFFFFFFFFFFFDLL)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v6 = CFArrayCreate(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF128]);
  CFDictionaryAddValue(a1, a2, v6);
  CFRelease(v6);
}

void sub_256805928(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__CFDictionary *ZinCreateCropResizeUnit(const ZinIrCropResizeUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  TextureCommonUnit = ZinCreateTextureCommonUnit(a1);
  TextureUnitSamplingGridInfo = ZinCreateTextureUnitSamplingGridInfo(a1 + 160);
  CFDictionaryAddValue(TextureCommonUnit, @"SamplingGridInfo", TextureUnitSamplingGridInfo);
  CFRelease(TextureUnitSamplingGridInfo);
  v5 = ZinIrCropResizeBoxModeToCFString(*(a1 + 39));
  CFDictionaryAddValue(TextureCommonUnit, @"CoordinateMode", v5);
  v6 = *MEMORY[0x277CBECE8];
  if ((*(a1 + 39) & 0xFFFFFFF4) != 0)
  {
    v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a1 + 192);
    CFDictionaryAddValue(TextureCommonUnit, @"CropWidth", v7);
    CFRelease(v7);
    v8 = CFNumberCreate(v6, kCFNumberSInt32Type, a1 + 196);
    CFDictionaryAddValue(TextureCommonUnit, @"CropHeight", v8);
    CFRelease(v8);
  }

  v9 = CFNumberCreate(v6, kCFNumberSInt32Type, a1 + 184);
  CFDictionaryAddValue(TextureCommonUnit, @"OutputWidth", v9);
  CFRelease(v9);
  v10 = CFNumberCreate(v6, kCFNumberSInt32Type, a1 + 188);
  CFDictionaryAddValue(TextureCommonUnit, @"OutputHeight", v10);
  CFRelease(v10);
  CFDictionaryAddValue(Unit, @"Params", TextureCommonUnit);
  CFRelease(TextureCommonUnit);
  return Unit;
}

__CFDictionary *ZinCreateDeQuantUnit(const ZinIrDeQuantUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = Mutable;
  if (*(a1 + 22) < 1)
  {
    v6 = CFNumberCreate(v3, kCFNumberFloat32Type, a1 + 128);
    CFDictionaryAddValue(v5, @"DeQuantScale", v6);
    v10 = 6;
    ZinSetFormat(@"DeQuantScaleType", &v10, v5);
    CFRelease(v6);
  }

  else
  {
    ZinAddWeightInfoToParamsDict(Mutable, 0, @"DeQuantScaleCount", @"DeQuantScaleIndex", @"DeQuantScaleOffset", a1 + 80);
  }

  ZinSetFormat(@"DeQuantScaleType", a1 + 34, v5);
  v7 = *(a1 + 28);
  if (v7 > 0 || *(a1 + 33))
  {
    if (v7 < 1)
    {
      v8 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 132);
      CFDictionaryAddValue(v5, @"DeQuantZeroPoint", v8);
      CFRelease(v8);
    }

    else
    {
      ZinAddWeightInfoToParamsDict(v5, 0, @"DeQuantZeroPointCount", @"DeQuantZeroPointIndex", @"DeQuantZeroPointOffset", a1 + 104);
    }

    ZinSetFormat(@"DeQuantZeroPointType", a1 + 35, v5);
  }

  CFDictionaryAddValue(Unit, @"Params", v5);
  CFRelease(v5);
  return Unit;
}

__CFDictionary *ZinCreateEWUnit(const ZinIrEWUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = ZinIrEWTypeToCFString(*(a1 + 20));
  if (v4)
  {
    CFDictionaryAddValue(Mutable, @"Type", v4);
  }

  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateFlattenUnit(const ZinIrFlattenUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = ZinIrFlattenTypeToCFString(*(a1 + 20));
  CFDictionaryAddValue(Mutable, @"Mode", v4);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateGatherUnit(const ZinIrGatherUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = CFArrayCreateMutable(v3, 0, MEMORY[0x277CBF128]);
  v6 = *(a1 + 20);
  for (i = *(a1 + 21); v6 != i; ++v6)
  {
    v8 = ZinIrCoordinateToCFString(v6);
    CFArrayAppendValue(v5, v8);
  }

  CFDictionaryAddValue(Mutable, @"GatherNDAxes", v5);
  CFRelease(v5);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateGlobalArgMinMaxUnit(const ZinIrGlobalArgMinMaxUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = ZinIrReductionTypeToCFString(*(a1 + 20));
  CFDictionaryAddValue(Mutable, @"Type", v4);
  v5 = ZinIrCoordinateToCFString(a1 + 21);
  CFDictionaryAddValue(Mutable, @"Dimension", v5);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateInputViewUnit(const ZinIrInputViewUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 80);
  CFDictionaryAddValue(Mutable, @"Offset", v5);
  CFRelease(v5);
  v6 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 84);
  CFDictionaryAddValue(Mutable, @"Size", v6);
  CFRelease(v6);
  v7 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 88);
  CFDictionaryAddValue(Mutable, @"Step", v7);
  CFRelease(v7);
  v8 = ZinIrCoordinateToCFString(a1 + 23);
  CFDictionaryAddValue(Mutable, @"Dimension", v8);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateInstanceNormUnit(const ZinIrInstanceNormUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  _S0 = *(a1 + 30);
  if (_S0 != 1.0e-12)
  {
    __asm { FCVT            H0, S0 }

    valuePtr = _H0;
    v11 = CFNumberCreate(v3, kCFNumberSInt16Type, &valuePtr);
    CFDictionaryAddValue(Mutable, @"Epsilon", v11);
    CFRelease(v11);
  }

  v12 = CFArrayCreateMutable(v3, 0, MEMORY[0x277CBF128]);
  for (i = *(a1 + 12); i; i = *i)
  {
    v14 = ZinIrCoordinateToCFString(i + 4);
    CFArrayAppendValue(v12, v14);
  }

  CFDictionaryAddValue(Mutable, @"Dimension", v12);
  CFRelease(v12);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateLayerNormUnit(const ZinIrLayerNormUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  _S0 = *(a1 + 30);
  __asm { FCVT            H0, S0 }

  valuePtr = _S0;
  v10 = CFNumberCreate(v3, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"Epsilon", v10);
  CFRelease(v10);
  v11 = CFArrayCreateMutable(v3, 0, MEMORY[0x277CBF128]);
  for (i = *(a1 + 12); i; i = *i)
  {
    v13 = ZinIrCoordinateToCFString(i + 4);
    CFArrayAppendValue(v11, v13);
  }

  CFDictionaryAddValue(Mutable, @"Dimension", v11);
  CFRelease(v11);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateLinearUnit(const ZinIrLinearUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  valuePtr = *(a1 + 82);
  if (valuePtr >= 1)
  {
    v5 = CFNumberCreate(v3, kCFNumberSInt32Type, &valuePtr);
    CFDictionaryAddValue(Unit, @"InputChannels", v5);
    CFRelease(v5);
  }

  if (*(a1 + 60) != 5)
  {
    v6 = ZinIrCoordinateToCFString(a1 + 60);
    CFDictionaryAddValue(Mutable, @"GroupDimension", v6);
  }

  v7 = ZinIrConvKernelModeToCFString(*(a1 + 20));
  if (v7)
  {
    CFDictionaryAddValue(Mutable, @"KernelMode", v7);
  }

  v8 = MEMORY[0x277CBED28];
  if (!*(a1 + 180))
  {
    v8 = MEMORY[0x277CBED10];
  }

  CFDictionaryAddValue(Mutable, @"KernelMutable", *v8);
  v9 = ZinIrKernelFormatToCFString(*(a1 + 21));
  if (v9)
  {
    CFDictionaryAddValue(Mutable, @"KernelType", v9);
  }

  if (ZinKernelModeIsPalette(*(a1 + 20)))
  {
    ZinDictionaryAddVector<long long>(Mutable, @"KernelPaletteLUTOffset", a1 + 19);
    ZinDictionaryAddVector<int>(Mutable, @"KernelPaletteLUTIndex", a1 + 16);
    v10 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 176);
    CFDictionaryAddValue(Mutable, @"KernelPaletteVectorSize", v10);
    CFRelease(v10);
  }

  if (ZinKernelModeIsSparse(*(a1 + 20)))
  {
    v11 = CFNumberCreate(v3, kCFNumberSInt64Type, a1 + 112);
    CFDictionaryAddValue(Mutable, @"KernelMaskByteOffset", v11);
    CFRelease(v11);
    v12 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 104);
    CFDictionaryAddValue(Mutable, @"KernelMaskIndex", v12);
    CFRelease(v12);
    v13 = CFNumberCreate(v3, kCFNumberSInt64Type, a1 + 120);
    CFDictionaryAddValue(Mutable, @"KernelCoeffCount", v13);
    CFRelease(v13);
  }

  if (*(a1 + 20) != 15)
  {
    v14 = CFNumberCreate(v3, kCFNumberSInt64Type, a1 + 96);
    CFDictionaryAddValue(Mutable, @"KernelOffset", v14);
    CFRelease(v14);
    v15 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 88);
    CFDictionaryAddValue(Mutable, @"KernelIndex", v15);
    CFRelease(v15);
  }

  if (*(a1 + 320) == 1)
  {
    if (valuePtr <= 0)
    {
      ZinAssertImpl("Input channels must be specified for sharded kernels");
    }

    ZinCreateShardingMap(Mutable, a1 + 31);
  }

  if (*(a1 + 184) == 1)
  {
    v16 = ZinIrKernelFormatToCFString(*(a1 + 56));
    if (v16)
    {
      CFDictionaryAddValue(Mutable, @"KernelPerCoutScaleFormat", v16);
    }

    v17 = CFNumberCreate(v3, kCFNumberSInt64Type, a1 + 200);
    CFDictionaryAddValue(Mutable, @"KernelScaleByteOffset", v17);
    CFRelease(v17);
    v18 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 192);
    v19 = @"KernelScaleIndex";
  }

  else
  {
    if (ZinIrKernelQuantizationInfo::HasDefaultQuantizationScalarScale((a1 + 184)))
    {
      goto LABEL_27;
    }

    v18 = CFNumberCreate(v3, kCFNumberFloat32Type, a1 + 228);
    v19 = @"KernelScaleScalar";
  }

  CFDictionaryAddValue(Mutable, v19, v18);
  CFRelease(v18);
LABEL_27:
  if (*(a1 + 185) == 1)
  {
    v20 = a1 + 208;
    v21 = CFNumberCreate(v3, kCFNumberSInt64Type, a1 + 216);
    CFDictionaryAddValue(Mutable, @"KernelZeroPointByteOffset", v21);
    CFRelease(v21);
    v22 = @"KernelZeroPointIndex";
LABEL_31:
    v23 = CFNumberCreate(v3, kCFNumberSInt32Type, v20);
    CFDictionaryAddValue(Mutable, v22, v23);
    CFRelease(v23);
    goto LABEL_32;
  }

  if (!ZinIrKernelQuantizationInfo::HasDefaultQuantizationScalarZeroPoint((a1 + 184)))
  {
    v20 = a1 + 232;
    v22 = @"KernelZeroPointScalar";
    goto LABEL_31;
  }

LABEL_32:
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateMatrixMultUnit(const ZinIrMatrixMultUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (*(a1 + 80) == 1)
  {
    v5 = CFNumberCreate(v3, kCFNumberShortType, a1 + 82);
    CFDictionaryAddValue(Mutable, @"Bias", v5);
    CFRelease(v5);
  }

  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreatePadUnit(const ZinIrPadUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  ZinAddPaddingToParamsDict(Mutable, a1 + 156, 1);
  v5 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 180);
  CFDictionaryAddValue(Mutable, @"PadChannelFront", v5);
  CFRelease(v5);
  v6 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 184);
  CFDictionaryAddValue(Mutable, @"PadChannelBack", v6);
  CFRelease(v6);
  v7 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 188);
  CFDictionaryAddValue(Mutable, @"PadBatchFront", v7);
  CFRelease(v7);
  v8 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 192);
  CFDictionaryAddValue(Mutable, @"PadBatchBack", v8);
  CFRelease(v8);
  v9 = CFArrayCreateMutable(v3, 1, MEMORY[0x277CBF128]);
  v10 = *(a1 + 25);
  for (i = *(a1 + 26); v10 != i; v10 += 2)
  {
    PaddingInfo = ZinCreatePaddingInfo(v10);
    CFArrayAppendValue(v9, PaddingInfo);
    CFRelease(PaddingInfo);
  }

  CFDictionaryAddValue(Mutable, @"PaddingInfo", v9);
  CFRelease(v9);
  v13 = CFNumberCreate(v3, kCFNumberSInt16Type, a1 + 224);
  CFDictionaryAddValue(Mutable, @"BackgroundValue", v13);
  CFRelease(v13);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreatePixelShuffleUnit(const ZinIrPixelShuffleUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = 31;
  ZinAddSpaceTransformFactorToParamsDict(Mutable, &v5, a1 + 80);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreatePixelUnshuffleUnit(const ZinIrPixelUnshuffleUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = 32;
  ZinAddSpaceTransformFactorToParamsDict(Mutable, &v5, a1 + 80);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateQuantUnit(const ZinIrQuantUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = Mutable;
  if (*(a1 + 22) < 1)
  {
    v6 = CFNumberCreate(v3, kCFNumberFloat32Type, a1 + 128);
    CFDictionaryAddValue(v5, @"QuantScale", v6);
    CFRelease(v6);
  }

  else
  {
    ZinAddWeightInfoToParamsDict(Mutable, 0, @"ScaleCount", @"ScaleIndex", @"ScaleOffset", a1 + 80);
  }

  v7 = *(a1 + 28);
  if (v7 > 0 || *(a1 + 33) != 0)
  {
    if (v7 < 1)
    {
      v9 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 132);
      CFDictionaryAddValue(v5, @"QuantZeroPoint", v9);
      CFRelease(v9);
    }

    else
    {
      ZinAddWeightInfoToParamsDict(v5, 0, @"ZeroPointCount", @"ZeroPointIndex", @"ZeroPointOffset", a1 + 104);
    }
  }

  ZinSetFormat(@"QuantScaleType", a1 + 34, v5);
  CFDictionaryAddValue(Unit, @"Params", v5);
  CFRelease(v5);
  return Unit;
}

__CFDictionary *ZinCreateReductionUnit(const ZinIrReductionUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = ZinIrReductionTypeToCFString(*(a1 + 20));
  CFDictionaryAddValue(Mutable, @"Type", v5);
  v6 = *(a1 + 21) - 1;
  if (v6 <= 2)
  {
    CFDictionaryAddValue(Mutable, @"PostProcessType", off_27983A5D8[v6]);
  }

  v7 = CFNumberCreate(v3, kCFNumberFloat32Type, a1 + 88);
  CFDictionaryAddValue(Mutable, @"PostScale", v7);
  CFRelease(v7);
  _S0 = *(a1 + 23);
  __asm { FCVT            H0, S0 }

  valuePtr = _S0;
  v13 = CFNumberCreate(v3, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"Epsilon", v13);
  CFRelease(v13);
  v14 = CFArrayCreateMutable(v3, 0, MEMORY[0x277CBF128]);
  v15 = v14;
  v16 = *(a1 + 12);
  if ((v16 & 8) != 0)
  {
    CFArrayAppendValue(v14, @"Height");
    v16 = *(a1 + 12);
    if ((v16 & 0x10) == 0)
    {
LABEL_5:
      if ((v16 & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((v16 & 0x10) == 0)
  {
    goto LABEL_5;
  }

  CFArrayAppendValue(v15, @"Width");
  v16 = *(a1 + 12);
  if ((v16 & 2) == 0)
  {
LABEL_6:
    if ((v16 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    CFArrayAppendValue(v15, @"Channel");
    if ((*(a1 + 12) & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_12:
  CFArrayAppendValue(v15, @"Depth");
  v16 = *(a1 + 12);
  if ((v16 & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (v16)
  {
LABEL_8:
    CFArrayAppendValue(v15, @"Batch");
  }

LABEL_9:
  CFDictionaryAddValue(Mutable, @"Dimension", v15);
  CFRelease(v15);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

CFMutableDictionaryRef ZinCreateResampleUnit(const ZinIrResampleUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  theDict = ZinCreateTextureCommonUnit(a1);
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF128]);
  v5 = *(a1 + 20);
  v4 = *(a1 + 21);
  if (v5 != v4)
  {
    v6 = MEMORY[0x277CBF138];
    v7 = MEMORY[0x277CBF150];
    do
    {
      v8 = CFDictionaryCreateMutable(v2, 0, v6, v7);
      v9 = ZinIrCoordinateToCFString(v5);
      CFDictionaryAddValue(v8, @"Coordinate", v9);
      v10 = ZinIrCoordinateTypeToCFString(v5[1]);
      CFDictionaryAddValue(v8, @"CoordinateType", v10);
      CFArrayAppendValue(Mutable, v8);
      CFRelease(v8);
      v5 += 2;
    }

    while (v5 != v4);
  }

  CFDictionaryAddValue(theDict, @"CoordinateTypeInfo", Mutable);
  CFRelease(Mutable);
  v11 = *(a1 + 46);
  v12 = @"YX";
  if (v11 != 1)
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = @"XY";
  }

  CFDictionaryAddValue(theDict, @"CoordinateMode", v13);
  CFDictionaryAddValue(Unit, @"Params", theDict);
  CFRelease(theDict);
  return Unit;
}

__CFDictionary *ZinCreateReshapeUnit(int **a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = a1[10];
  *__c = a1[11];
  LODWORD(valuePtr.__r_.__value_.__l.__data_) = v5;
  v6 = a1[12];
  v18 = a1[13];
  v19 = v6;
  v17 = a1[14];
  v7 = CFNumberCreate(v3, kCFNumberSInt32Type, &valuePtr);
  v8 = CFNumberCreate(v3, kCFNumberSInt32Type, __c);
  v9 = CFNumberCreate(v3, kCFNumberSInt32Type, &v19);
  v10 = CFNumberCreate(v3, kCFNumberSInt32Type, &v18);
  v11 = CFNumberCreate(v3, kCFNumberSInt32Type, &v17);
  CFDictionaryAddValue(Mutable, @"ReshapedBatch", v7);
  CFDictionaryAddValue(Mutable, @"ReshapedChannel", v8);
  CFDictionaryAddValue(Mutable, @"ReshapedHeight", v9);
  CFDictionaryAddValue(Mutable, @"ReshapedWidth", v10);
  CFDictionaryAddValue(Mutable, @"ReshapedDepth", v11);
  CFRelease(v7);
  CFRelease(v8);
  CFRelease(v9);
  CFRelease(v10);
  CFRelease(v11);
  memset(&valuePtr, 0, sizeof(valuePtr));
  v13 = a1[15];
  v12 = a1[16];
  if (v13 == v12)
  {
    p_valuePtr = &valuePtr;
LABEL_8:
    v15 = CFStringCreateWithCString(v3, p_valuePtr, 0x8000100u);
    CFDictionaryAddValue(Mutable, @"ReshapeLinearizationOrder", v15);
    CFRelease(v15);
  }

  else
  {
    while (1)
    {
      __c[0] = 0;
      if ((ToCharDimension(*v13, __c) & 1) == 0)
      {
        break;
      }

      std::string::push_back(&valuePtr, __c[0]);
      if (++v13 == v12)
      {
        if ((valuePtr.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_valuePtr = &valuePtr;
        }

        else
        {
          p_valuePtr = valuePtr.__r_.__value_.__r.__words[0];
        }

        goto LABEL_8;
      }
    }
  }

  if (SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(valuePtr.__r_.__value_.__l.__data_);
  }

  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

void sub_256807224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFDictionary *ZinCreateResizeUnit(const ZinIrResizeUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (*(a1 + 41) == -1.0 || *(a1 + 42) == -1.0)
  {
    v7 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 156);
    CFDictionaryAddValue(Mutable, @"OutputHeight", v7);
    CFRelease(v7);
    v6 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 160);
    CFDictionaryAddValue(Mutable, @"OutputWidth", v6);
  }

  else
  {
    v5 = CFNumberCreate(v3, kCFNumberFloat32Type, a1 + 164);
    v6 = CFNumberCreate(v3, kCFNumberFloat32Type, a1 + 168);
    CFDictionaryAddValue(Mutable, @"ScaleFactorX", v5);
    CFDictionaryAddValue(Mutable, @"ScaleFactorY", v6);
    CFRelease(v5);
  }

  CFRelease(v6);
  TextureUnitSamplingInfo = ZinCreateTextureUnitSamplingInfo(a1);
  CFDictionaryAddValue(Mutable, @"SamplingMethodInfo", TextureUnitSamplingInfo);
  CFRelease(TextureUnitSamplingInfo);
  TextureUnitSamplingGridInfo = ZinCreateTextureUnitSamplingGridInfo(a1 + 176);
  CFDictionaryAddValue(Mutable, @"SamplingGridInfo", TextureUnitSamplingGridInfo);
  CFRelease(TextureUnitSamplingGridInfo);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

CFMutableDictionaryRef ZinCreateRingBufferReaderUnit(const ZinIrRingBufferReaderUnitInfo *a1)
{
  theDict = ZinCreateUnit(a1);
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  ZinAddOffsetsToParamsDict(Mutable, a1 + 120, a1 + 80, @"RingBufferReaderOffsetInfo");
  v4 = CFArrayCreateMutable(v2, 0, MEMORY[0x277CBF128]);
  v5 = *(a1 + 22);
  if (v5)
  {
    v6 = MEMORY[0x277CBF138];
    v7 = MEMORY[0x277CBF150];
    do
    {
      v8 = CFDictionaryCreateMutable(v2, 0, v6, v7);
      valuePtr = v5[3];
      v9 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
      v10 = ZinIrCoordinateToCFString(v5 + 4);
      CFDictionaryAddValue(v8, @"Dimension", v10);
      CFDictionaryAddValue(v8, @"Size", v9);
      CFArrayAppendValue(v4, v8);
      CFRelease(v9);
      CFRelease(v8);
      v5 = *v5;
    }

    while (v5);
  }

  CFDictionaryAddValue(Mutable, @"RingBufferReaderOutputSizeInfo", v4);
  CFRelease(v4);
  CFDictionaryAddValue(theDict, @"Params", Mutable);
  CFRelease(Mutable);
  return theDict;
}

__CFDictionary *ZinCreateRingBufferWriterUnit(const ZinIrRingBufferUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  ZinAddOffsetsToParamsDict(Mutable, a1 + 120, a1 + 80, @"RingBufferWriterInfo");
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateScaledEWUnit(const ZinIrScaledEWUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = ZinIrScaledEWTypeToCFString(*(a1 + 20));
  if (v5)
  {
    CFDictionaryAddValue(Mutable, @"Type", v5);
  }

  if (*(a1 + 21) != 1.0)
  {
    v6 = CFNumberCreate(v3, kCFNumberFloat32Type, a1 + 84);
    CFDictionaryAddValue(Mutable, @"Scale", v6);
    CFDictionaryAddValue(Mutable, @"ScaleType", @"Float32");
    CFRelease(v6);
    CFRelease(@"Float32");
  }

  if (*(a1 + 22) != 1.0)
  {
    v7 = CFNumberCreate(v3, kCFNumberFloat32Type, a1 + 88);
    CFDictionaryAddValue(Mutable, @"PreScale", v7);
    CFDictionaryAddValue(Mutable, @"PreScaleType", @"Float32");
    CFRelease(v7);
  }

  if (*(a1 + 23) != 0.0)
  {
    v8 = CFNumberCreate(v3, kCFNumberFloat32Type, a1 + 92);
    CFDictionaryAddValue(Mutable, @"Bias", v8);
    CFDictionaryAddValue(Mutable, @"BiasType", @"Float32");
    CFRelease(v8);
    CFRelease(@"Float32");
  }

  v9 = MEMORY[0x277CBED28];
  if (*(a1 + 96) == 1)
  {
    CFDictionaryAddValue(Mutable, @"NegateSrc1", *MEMORY[0x277CBED28]);
  }

  if (*(a1 + 97) == 1)
  {
    CFDictionaryAddValue(Mutable, @"NegateSrc2", *v9);
  }

  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

void ZinCreateShardingMap(__CFDictionary *a1, void *a2)
{
  ZinDictionaryAddVector<unsigned short>(a1, @"Mesh", a2);
  ZinDictionaryAddVector<unsigned short>(a1, @"MeshAxes", a2 + 3);
  v4 = a2[6];
  v5 = a2[7];
  v6 = a2 + 6;
  if (v4 != v5)
  {

    ZinDictionaryAddVector<unsigned short>(a1, @"TensorAxes", v6);
  }
}

void ZinDictionaryAddVector<unsigned short>(__CFDictionary *a1, const void *a2, void *a3)
{
  v5 = a3[1];
  if (v5 != *a3)
  {
    if ((v5 - *a3) < 0x3FFFFFFFFFFFFFFFLL)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v6 = CFArrayCreate(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF128]);
  CFDictionaryAddValue(a1, a2, v6);
  CFRelease(v6);
}

void sub_256807A0C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__CFDictionary *ZinCreateSDPAUnit(const ZinIrSDPAUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = Mutable;
  v5 = MEMORY[0x277CBED28];
  if (!*(a1 + 80))
  {
    v5 = MEMORY[0x277CBED10];
  }

  CFDictionaryAddValue(Mutable, @"SubtractMax", *v5);
  CFDictionaryAddValue(Unit, @"Params", v4);
  CFRelease(v4);
  return Unit;
}

__CFDictionary *ZinCreateSoftmaxUnit(const ZinIrSoftmaxUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = CFArrayCreateMutable(v3, 0, MEMORY[0x277CBF128]);
  for (i = *(a1 + 12); i; i = *i)
  {
    v7 = ZinIrCoordinateToCFString(i + 4);
    CFArrayAppendValue(v5, v7);
  }

  CFDictionaryAddValue(Mutable, @"Dimension", v5);
  CFRelease(v5);
  v8 = MEMORY[0x277CBED28];
  if (!*(a1 + 120))
  {
    v8 = MEMORY[0x277CBED10];
  }

  CFDictionaryAddValue(Mutable, @"SubtractMax", *v8);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateBatchNormUnit(const ZinIrBatchNormUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x277CBECE8];
  v4 = MEMORY[0x277CBF138];
  v5 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = CFDictionaryCreateMutable(v3, 0, v4, v5);
  ZinSetFormat(@"MeanType", a1 + 26, v7);
  ZinAddWeightInfoToParamsDict(v7, @"MeanMutable", @"MeanCount", @"MeanIndex", @"MeanOffset", a1 + 80);
  CFDictionaryAddValue(Mutable, @"BatchNormMeanGroupData", v7);
  CFRelease(v7);
  v8 = CFDictionaryCreateMutable(v3, 0, v4, v5);
  ZinSetFormat(@"VarianceType", a1 + 34, v8);
  ZinAddWeightInfoToParamsDict(v8, @"VarianceMutable", @"VarianceCount", @"VarianceIndex", @"VarianceOffset", a1 + 112);
  CFDictionaryAddValue(Mutable, @"BatchNormVarianceGroupData", v8);
  CFRelease(v8);
  if (*(a1 + 184) == 1)
  {
    v9 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v9)
    {
      v10 = v9;
      ZinSetFormat(@"GammaType", a1 + 44, v9);
      ZinAddWeightInfoToParamsDict(v10, @"GammaMutable", @"GammaCount", @"GammaIndex", @"GammaOffset", a1 + 152);
      CFDictionaryAddValue(Mutable, @"BatchNormGammaGroupData", v10);
      CFRelease(v10);
    }
  }

  if (*(a1 + 224) == 1)
  {
    v11 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v11)
    {
      v12 = v11;
      ZinSetFormat(@"BetaType", a1 + 54, v11);
      ZinAddWeightInfoToParamsDict(v12, @"BetaMutable", @"BetaCount", @"BetaIndex", @"BetaOffset", a1 + 192);
      CFDictionaryAddValue(Mutable, @"BatchNormBetaGroupData", v12);
      CFRelease(v12);
    }
  }

  _S0 = *(a1 + 36);
  __asm { FCVT            H0, S0 }

  valuePtr = _S0;
  v18 = CFNumberCreate(v3, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"Epsilon", v18);
  CFRelease(v18);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateSpaceToBatchUnit(const ZinIrSpaceToBatchUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = 34;
  ZinAddSpaceTransformFactorToParamsDict(Mutable, &v5, a1 + 80);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateSpaceToChannelUnit(const ZinIrSpaceToChannelUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = 36;
  ZinAddSpaceTransformFactorToParamsDict(Mutable, &v5, a1 + 80);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__CFDictionary *ZinCreateCoordinateInfo(_DWORD *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = ZinIrCoordinateToCFString(a1);
  CFDictionaryAddValue(Mutable, @"Coordinate", v3);
  v4 = ZinIrCoordinateModeToCFString(a1[2]);
  CFDictionaryAddValue(Mutable, @"CoordinateMode", v4);
  if (a1[2])
  {
    v5 = ZinIrNormalizedCoordinateRangeToCFString(a1[1]);
    CFDictionaryAddValue(Mutable, @"CoordinateRange", v5);
  }

  return Mutable;
}

__CFDictionary *ZinCreatePaddingInfo(_DWORD *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = ZinIrCoordinateToCFString(a1);
  CFDictionaryAddValue(Mutable, @"Coordinate", v3);
  v4 = ZinIrTEPaddingModeToCFString(a1[1]);
  CFDictionaryAddValue(Mutable, @"PaddingMode", v4);
  return Mutable;
}

__CFArray *ZinCreateTextureUnitSamplingInfo(const ZinIrTextureUnitInfo *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF128]);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  if (v4 != v5)
  {
    v6 = MEMORY[0x277CBF138];
    v7 = MEMORY[0x277CBF150];
    do
    {
      v8 = *v4++;
      v13 = v8;
      v9 = CFDictionaryCreateMutable(v2, 0, v6, v7);
      v10 = ZinIrCoordinateToCFString(&v13);
      CFDictionaryAddValue(v9, @"Coordinate", v10);
      v11 = ZinIrSamplingMethodToCFString(SHIDWORD(v13));
      CFDictionaryAddValue(v9, @"SamplingMethod", v11);
      CFArrayAppendValue(Mutable, v9);
      CFRelease(v9);
    }

    while (v4 != v5);
  }

  return Mutable;
}

__CFArray *ZinCreateTextureUnitSamplingGridInfo(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF128]);
  v4 = *a1;
  v5 = *(a1 + 8);
  if (*a1 != v5)
  {
    v6 = MEMORY[0x277CBF138];
    v7 = MEMORY[0x277CBF150];
    do
    {
      v8 = CFDictionaryCreateMutable(v2, 0, v6, v7);
      v9 = ZinIrCoordinateToCFString(v4);
      CFDictionaryAddValue(v8, @"Coordinate", v9);
      v10 = ZinIrSamplingGridModeToCFStringRef(v4[1]);
      CFDictionaryAddValue(v8, @"SamplingGridMode", v10);
      CFArrayAppendValue(Mutable, v8);
      CFRelease(v8);
      v4 += 2;
    }

    while (v4 != v5);
  }

  return Mutable;
}

__CFDictionary *ZinCreateTextureCommonUnit(const ZinIrTextureUnitInfo *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = CFArrayCreateMutable(v2, 1, MEMORY[0x277CBF128]);
  v6 = *(a1 + 10);
  for (i = *(a1 + 11); v6 != i; v6 += 3)
  {
    CoordinateInfo = ZinCreateCoordinateInfo(v6);
    CFArrayAppendValue(v4, CoordinateInfo);
    CFRelease(CoordinateInfo);
  }

  CFDictionaryAddValue(Mutable, @"CoordinateInfo", v4);
  CFRelease(v4);
  TextureUnitSamplingInfo = ZinCreateTextureUnitSamplingInfo(a1);
  theDict = Mutable;
  CFDictionaryAddValue(Mutable, @"SamplingMethodInfo", TextureUnitSamplingInfo);
  CFRelease(TextureUnitSamplingInfo);
  v9 = CFArrayCreateMutable(v2, 1, MEMORY[0x277CBF128]);
  v11 = *(a1 + 13);
  v10 = *(a1 + 14);
  if (v11 != v10)
  {
    v12 = MEMORY[0x277CBF138];
    v13 = MEMORY[0x277CBF150];
    do
    {
      v14 = CFDictionaryCreateMutable(v2, 0, v12, v13);
      v15 = ZinIrCoordinateToCFString(v11);
      CFDictionaryAddValue(v14, @"Coordinate", v15);
      v16 = ZinIrTEPaddingModeToCFString(v11[1]);
      CFDictionaryAddValue(v14, @"PaddingMode", v16);
      CFArrayAppendValue(v9, v14);
      CFRelease(v14);
      v11 += 2;
    }

    while (v11 != v10);
  }

  CFDictionaryAddValue(theDict, @"PaddingInfo", v9);
  CFRelease(v9);
  v17 = CFNumberCreate(v2, kCFNumberSInt16Type, a1 + 152);
  CFDictionaryAddValue(theDict, @"BackgroundValue", v17);
  CFRelease(v17);
  return theDict;
}

__CFDictionary *ZinCreateTileUnit(const ZinIrTileUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  for (i = *(a1 + 12); i; i = *i)
  {
    v6 = CFNumberCreate(v3, kCFNumberSInt32Type, i + 20);
    v7 = ZinIrCoordinateToCFString(i + 4);
    CFDictionaryAddValue(Mutable, v7, v6);
    CFRelease(v6);
  }

  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

CFMutableDictionaryRef ZinCreateTransposeUnit(int **a1)
{
  Unit = ZinCreateUnit(a1);
  v2 = *MEMORY[0x277CBECE8];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  Mutable = CFArrayCreateMutable(v2, 0, MEMORY[0x277CBF128]);
  v4 = a1[10];
  v5 = a1[11];
  if (v4 != v5)
  {
    v6 = MEMORY[0x277CBF150];
    do
    {
      v7 = *v4;
      v8 = v4[1];
      v4 += 2;
      v15 = v8;
      v16 = v7;
      v9 = ZinIrCoordinateToCFString(&v16);
      v10 = ZinIrCoordinateToCFString(&v15);
      v11 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], v6);
      CFDictionaryAddValue(v11, @"TransposeSourceDimension", v9);
      CFDictionaryAddValue(v11, @"TransposeDestinationDimension", v10);
      CFArrayAppendValue(Mutable, v11);
      CFRelease(v11);
    }

    while (v4 != v5);
  }

  CFDictionaryAddValue(theDict, @"TransposeDimensions", Mutable);
  CFRelease(Mutable);
  CFDictionaryAddValue(Unit, @"Params", theDict);
  CFRelease(theDict);
  return Unit;
}