void *llvm::WithColor::warning(llvm::WithColor *this)
{
  v1 = llvm::errs(this);

  return llvm::WithColor::warning(v1, "", 0, 0);
}

void *llvm::WithColor::warning(void *a1, const void *a2, size_t a3, char a4)
{
  if (!a3)
  {
LABEL_5:
    v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks;
    if (a4)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = a1[4];
  if (a3 <= a1[3] - v6)
  {
    memcpy(v6, a2, a3);
    v8 = (a1[4] + a3);
    a1[4] = v8;
    v7 = a1;
    if (a1[3] - v8 > 1uLL)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(a1, a2, a3);
    v8 = v7[4];
    if (v7[3] - v8 > 1uLL)
    {
LABEL_4:
      *v8 = 8250;
      v7[4] += 2;
      goto LABEL_5;
    }
  }

  llvm::raw_ostream::write(v7, ": ", 2uLL);
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks;
  if (a4)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((v9[174])(a1))
  {
    (*(*a1 + 24))(a1, 5, 1, 0);
  }

LABEL_11:
  v11 = a1[4];
  if ((a1[3] - v11) > 8)
  {
    *(v11 + 8) = 32;
    *v11 = *"warning: ";
    a1[4] += 9;
    v12 = a1;
    if (a4)
    {
      return v12;
    }
  }

  else
  {
    v12 = llvm::raw_ostream::write(a1, "warning: ", 9uLL);
    if (a4)
    {
      return v12;
    }
  }

  if (!(v9[174])(a1))
  {
    return v12;
  }

  (*(*a1 + 32))(a1);
  return v12;
}

void *llvm::WithColor::note(llvm::WithColor *this)
{
  v1 = llvm::errs(this);

  return llvm::WithColor::note(v1, "", 0, 0);
}

void *llvm::WithColor::note(void *a1, const void *a2, size_t a3, char a4)
{
  if (!a3)
  {
LABEL_5:
    v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks;
    if (a4)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = a1[4];
  if (a3 <= a1[3] - v6)
  {
    memcpy(v6, a2, a3);
    v8 = (a1[4] + a3);
    a1[4] = v8;
    v7 = a1;
    if (a1[3] - v8 > 1uLL)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(a1, a2, a3);
    v8 = v7[4];
    if (v7[3] - v8 > 1uLL)
    {
LABEL_4:
      *v8 = 8250;
      v7[4] += 2;
      goto LABEL_5;
    }
  }

  llvm::raw_ostream::write(v7, ": ", 2uLL);
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks;
  if (a4)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((v9[174])(a1))
  {
    (*(*a1 + 24))(a1, 0, 1, 0);
  }

LABEL_11:
  v11 = a1[4];
  if ((a1[3] - v11) > 5)
  {
    *(v11 + 4) = 8250;
    *v11 = 1702129518;
    a1[4] += 6;
    v12 = a1;
    if (a4)
    {
      return v12;
    }
  }

  else
  {
    v12 = llvm::raw_ostream::write(a1, "note: ", 6uLL);
    if (a4)
    {
      return v12;
    }
  }

  if (!(v9[174])(a1))
  {
    return v12;
  }

  (*(*a1 + 32))(a1);
  return v12;
}

void *llvm::WithColor::remark(llvm::WithColor *this)
{
  v1 = llvm::errs(this);

  return llvm::WithColor::remark(v1, "", 0, 0);
}

void *llvm::WithColor::remark(void *a1, const void *a2, size_t a3, char a4)
{
  if (!a3)
  {
LABEL_5:
    v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks;
    if (a4)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = a1[4];
  if (a3 <= a1[3] - v6)
  {
    memcpy(v6, a2, a3);
    v8 = (a1[4] + a3);
    a1[4] = v8;
    v7 = a1;
    if (a1[3] - v8 > 1uLL)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(a1, a2, a3);
    v8 = v7[4];
    if (v7[3] - v8 > 1uLL)
    {
LABEL_4:
      *v8 = 8250;
      v7[4] += 2;
      goto LABEL_5;
    }
  }

  llvm::raw_ostream::write(v7, ": ", 2uLL);
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks;
  if (a4)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((v9[174])(a1))
  {
    (*(*a1 + 24))(a1, 4, 1, 0);
  }

LABEL_11:
  v11 = a1[4];
  if (a1[3] - v11 > 7uLL)
  {
    *v11 = 0x203A6B72616D6572;
    a1[4] += 8;
    v12 = a1;
    if (a4)
    {
      return v12;
    }
  }

  else
  {
    v12 = llvm::raw_ostream::write(a1, "remark: ", 8uLL);
    if (a4)
    {
      return v12;
    }
  }

  if (!(v9[174])(a1))
  {
    return v12;
  }

  (*(*a1 + 32))(a1);
  return v12;
}

void llvm::WithColor::~WithColor(llvm::WithColor *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    if (v2 != 1)
    {
      return;
    }
  }

  else if (!llvm::WithColor::AutoDetectFunction(*this))
  {
    return;
  }

  (*(**this + 32))();
}

{
  v2 = *(this + 2);
  if (v2)
  {
    if (v2 != 1)
    {
      return;
    }
  }

  else if (!llvm::WithColor::AutoDetectFunction(*this))
  {
    return;
  }

  (*(**this + 32))();
}

uint64_t llvm::WithColor::changeColor(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    if (!llvm::WithColor::AutoDetectFunction(*a1))
    {
      return a1;
    }

    goto LABEL_3;
  }

  if (v2 == 1)
  {
LABEL_3:
    (*(**a1 + 24))();
  }

  return a1;
}

llvm::WithColor *llvm::WithColor::resetColor(llvm::WithColor *this)
{
  v2 = *(this + 2);
  if (!v2)
  {
    if (!llvm::WithColor::AutoDetectFunction(*this))
    {
      return this;
    }

    goto LABEL_3;
  }

  if (v2 == 1)
  {
LABEL_3:
    (*(**this + 32))();
  }

  return this;
}

void **llvm::WithColor::defaultErrorHandler(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if ((*(*v1 + 48))(v1, &llvm::ErrorList::ID))
    {
      v8 = 0;
      v2 = v1[1];
      v3 = v1[2];
      if (v2 != v3)
      {
        v4 = 0;
        do
        {
          v11 = v4;
          v5 = *v2;
          *v2 = 0;
          v9 = v5;
          llvm::handleErrorImpl<llvm::WithColor::defaultErrorHandler(llvm::Error)::$_0>(&v10, &v9);
          llvm::ErrorList::join(&v11, &v10, &v12);
          v4 = v12;
          v12 = 0;
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }

          v6 = v9;
          v9 = 0;
          if (v6)
          {
            (*(*v6 + 8))(v6);
          }

          if (v11)
          {
            (*(*v11 + 8))(v11);
          }

          ++v2;
        }

        while (v2 != v3);
        v8 = v4;
      }

      return (*(*v1 + 8))(v1);
    }

    else
    {
      v12 = v1;
      llvm::handleErrorImpl<llvm::WithColor::defaultErrorHandler(llvm::Error)::$_0>(&v8, &v12);
      result = v12;
      if (v12)
      {
        v7 = (*v12)[1];

        return v7();
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return result;
}

void **llvm::WithColor::defaultWarningHandler(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if ((*(*v1 + 48))(v1, &llvm::ErrorList::ID))
    {
      v8 = 0;
      v2 = v1[1];
      v3 = v1[2];
      if (v2 != v3)
      {
        v4 = 0;
        do
        {
          v11 = v4;
          v5 = *v2;
          *v2 = 0;
          v9 = v5;
          llvm::handleErrorImpl<llvm::WithColor::defaultWarningHandler(llvm::Error)::$_0>(&v10, &v9);
          llvm::ErrorList::join(&v11, &v10, &v12);
          v4 = v12;
          v12 = 0;
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }

          v6 = v9;
          v9 = 0;
          if (v6)
          {
            (*(*v6 + 8))(v6);
          }

          if (v11)
          {
            (*(*v11 + 8))(v11);
          }

          ++v2;
        }

        while (v2 != v3);
        v8 = v4;
      }

      return (*(*v1 + 8))(v1);
    }

    else
    {
      v12 = v1;
      llvm::handleErrorImpl<llvm::WithColor::defaultWarningHandler(llvm::Error)::$_0>(&v8, &v12);
      result = v12;
      if (v12)
      {
        v7 = (*v12)[1];

        return v7();
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return result;
}

uint64_t llvm::object_deleter<llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>>::call(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::opt<char [6],llvm::cl::cat,llvm::cl::desc,llvm::cl::initializer<llvm::cl::BOOLOrDefault>>(uint64_t a1, const char *a2, llvm::cl::OptionCategory **a3, _OWORD *a4, int **a5)
{
  *a1 = &unk_28689F010;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  *(a1 + 64) = a1 + 80;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v11 = *(a1 + 72);
  if (v11 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 64) + 8 * v11) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_28689F0B8;
  *(a1 + 144) = 0;
  *a1 = &unk_2868A3410;
  *(a1 + 152) = &unk_28689F258;
  *(a1 + 160) = &unk_2868A34C0;
  *(a1 + 184) = a1 + 160;
  v12 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v12);
  llvm::cl::Option::addCategory(a1, *a3);
  *(a1 + 32) = *a4;
  v13 = **a5;
  *(a1 + 128) = v13;
  *(a1 + 148) = 1;
  *(a1 + 144) = v13;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v11 = 0;
  result = llvm::cl::parser<llvm::cl::BOOLOrDefault>::parse((a1 + 152), a1, a3, a4, a5, a6, &v11);
  if ((result & 1) == 0)
  {
    v9 = result;
    *(a1 + 128) = v11;
    *(a1 + 12) = a2;
    v10 = *(a1 + 184);
    if (v10)
    {
      (*(*v10 + 48))(v10, &v11);
      return v9;
    }

    else
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::getValueExpectedFlagDefault();
    }
  }

  return result;
}

void *llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::~opt(void *a1)
{
  *a1 = &unk_2868A3410;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::~opt(void *a1)
{
  *a1 = &unk_2868A3410;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_28689F010;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

void llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::printOptionValue(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(a1 + 148) != 1 || *(a1 + 144) != *(a1 + 128))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(a1 + 128);
    v7 = *(a1 + 144);
    v8 = *(a1 + 148);
    v6 = &unk_28689F0B8;
    llvm::cl::parser<llvm::cl::BOOLOrDefault>::printOptionDiff((a1 + 152), a1, v5, &v6, a2);
  }
}

uint64_t llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::setDefault(uint64_t result)
{
  if (*(result + 148) == 1)
  {
    *(result + 128) = *(result + 144);
  }

  else
  {
    *(result + 128) = 0;
  }

  return result;
}

uint64_t std::__function::__func<llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::{lambda(llvm::cl::BOOLOrDefault const&)#1},std::allocator<llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::{lambda(llvm::cl::BOOLOrDefault const&)#1}>,void ()(llvm::cl::BOOLOrDefault const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000002573A3AEALL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000002573A3AEALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002573A3AEALL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002573A3AEALL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

llvm *llvm::handleErrorImpl<llvm::WithColor::defaultErrorHandler(llvm::Error)::$_0>(void *a1, void *a2)
{
  result = (*(**a2 + 48))(*a2, &llvm::ErrorInfoBase::ID);
  v5 = *a2;
  *a2 = 0;
  if (!result)
  {
    *a1 = v5;
    return result;
  }

  v6 = llvm::errs(result);
  if (llvm::WithColor::AutoDetectFunction(v6))
  {
    (*(*v6 + 24))(v6, 1, 1, 0);
  }

  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 6uLL)
  {
    *(v7 + 3) = 540701295;
    *v7 = 1869771365;
    *(v6 + 4) += 7;
    v8 = v6;
    if (!llvm::WithColor::AutoDetectFunction(v6))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v8 = llvm::raw_ostream::write(v6, "error: ", 7uLL);
  if (llvm::WithColor::AutoDetectFunction(v6))
  {
LABEL_9:
    (*(*v6 + 32))(v6);
  }

LABEL_10:
  (*(*v5 + 24))(__p, v5);
  if ((v14 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v10 = v14;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = llvm::raw_ostream::write(v8, v9, v10);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 10);
    if (v14 < 0)
    {
LABEL_20:
      operator delete(__p[0]);
    }
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 10;
    if (v14 < 0)
    {
      goto LABEL_20;
    }
  }

  *a1 = 0;
  return (*(*v5 + 8))(v5);
}

llvm *llvm::handleErrorImpl<llvm::WithColor::defaultWarningHandler(llvm::Error)::$_0>(void *a1, void *a2)
{
  result = (*(**a2 + 48))(*a2, &llvm::ErrorInfoBase::ID);
  v5 = *a2;
  *a2 = 0;
  if (!result)
  {
    *a1 = v5;
    return result;
  }

  v6 = llvm::errs(result);
  if (llvm::WithColor::AutoDetectFunction(v6))
  {
    (*(*v6 + 24))(v6, 5, 1, 0);
  }

  v7 = *(v6 + 4);
  if ((*(v6 + 3) - v7) > 8)
  {
    *(v7 + 8) = 32;
    *v7 = *"warning: ";
    *(v6 + 4) += 9;
    v8 = v6;
    if (!llvm::WithColor::AutoDetectFunction(v6))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v8 = llvm::raw_ostream::write(v6, "warning: ", 9uLL);
  if (llvm::WithColor::AutoDetectFunction(v6))
  {
LABEL_9:
    (*(*v6 + 32))(v6);
  }

LABEL_10:
  (*(*v5 + 24))(__p, v5);
  if ((v14 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v10 = v14;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = llvm::raw_ostream::write(v8, v9, v10);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 10);
    if (v14 < 0)
    {
LABEL_20:
      operator delete(__p[0]);
    }
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 10;
    if (v14 < 0)
    {
      goto LABEL_20;
    }
  }

  *a1 = 0;
  return (*(*v5 + 8))(v5);
}

uint64_t llvm::yaml::dumpTokens(uint64_t a1, uint64_t a2, void *a3)
{
  v77[13] = *MEMORY[0x277D85DE8];
  llvm::SourceMgr::SourceMgr(v57);
  v58 = v57;
  v59 = 0u;
  v60 = 0u;
  v61 = 1;
  v62 = 0;
  v63 = 0;
  v64 = v66;
  v65 = 0x400000000;
  v67 = v69;
  v68 = 0;
  v69[0] = 0;
  v69[1] = 1;
  v70 = &v70;
  v71 = &v70;
  v72 = v74;
  v73 = 0x400000000;
  v75 = v77;
  v76 = 0x400000000;
  v77[12] = 0;
  *&v53 = a1;
  *(&v53 + 1) = a2;
  v54 = "YAML";
  __p = 4;
  llvm::yaml::Scanner::init(&v58, &v53);
  while (2)
  {
    llvm::yaml::Scanner::getNext(&v58, &v53);
    switch(v53)
    {
      case 1:
        v6 = a3[4];
        if (a3[3] - v6 <= 0xDuLL)
        {
          v7 = a3;
          v8 = "Stream-Start: ";
          goto LABEL_56;
        }

        v43 = "Stream-Start: ";
        goto LABEL_94;
      case 2:
        v28 = a3[4];
        if ((a3[3] - v28) <= 0xB)
        {
          v29 = a3;
          v30 = "Stream-End: ";
          goto LABEL_60;
        }

        *(v28 + 8) = 540697710;
        v44 = "Stream-End: ";
        goto LABEL_96;
      case 3:
        v20 = a3[4];
        if ((a3[3] - v20) <= 0x12)
        {
          v21 = a3;
          v22 = "Version-Directive: ";
          goto LABEL_24;
        }

        *(v20 + 15) = 540697974;
        v41 = "Version-Directive: ";
        goto LABEL_79;
      case 4:
        v26 = a3[4];
        if (a3[3] - v26 > 0xEuLL)
        {
          qmemcpy(v26, "Tag-Directive: ", 15);
          v39 = a3[4] + 15;
          goto LABEL_100;
        }

        llvm::raw_ostream::write(a3, "Tag-Directive: ", 0xFuLL);
        v13 = *(&v53 + 1);
        v14 = v54;
        v15 = a3[4];
        if (v54 > a3[3] - v15)
        {
          goto LABEL_69;
        }

        goto LABEL_101;
      case 5:
        v19 = a3[4];
        if (a3[3] - v19 > 0xFuLL)
        {
          *v19 = *"Document-Start: ";
          v39 = a3[4] + 16;
          goto LABEL_100;
        }

        llvm::raw_ostream::write(a3, "Document-Start: ", 0x10uLL);
        v13 = *(&v53 + 1);
        v14 = v54;
        v15 = a3[4];
        if (v54 > a3[3] - v15)
        {
          goto LABEL_69;
        }

        goto LABEL_101;
      case 6:
        v6 = a3[4];
        if (a3[3] - v6 <= 0xDuLL)
        {
          v7 = a3;
          v8 = "Document-End: ";
          goto LABEL_56;
        }

        v43 = "Document-End: ";
        goto LABEL_94;
      case 7:
        v35 = a3[4];
        if (a3[3] - v35 > 0xCuLL)
        {
          qmemcpy(v35, "Block-Entry: ", 13);
          v39 = a3[4] + 13;
          goto LABEL_100;
        }

        llvm::raw_ostream::write(a3, "Block-Entry: ", 0xDuLL);
        v13 = *(&v53 + 1);
        v14 = v54;
        v15 = a3[4];
        if (v54 > a3[3] - v15)
        {
          goto LABEL_69;
        }

        goto LABEL_101;
      case 8:
        v27 = a3[4];
        if ((a3[3] - v27) > 0xA)
        {
          *(v27 + 7) = 540697710;
          *v27 = *"Block-End: ";
          v39 = a3[4] + 11;
          goto LABEL_100;
        }

        llvm::raw_ostream::write(a3, "Block-End: ", 0xBuLL);
        v13 = *(&v53 + 1);
        v14 = v54;
        v15 = a3[4];
        if (v54 > a3[3] - v15)
        {
          goto LABEL_69;
        }

        goto LABEL_101;
      case 9:
        v36 = a3[4];
        if (a3[3] - v36 > 0x15uLL)
        {
          qmemcpy(v36, "Block-Sequence-Start: ", 22);
          v39 = a3[4] + 22;
          goto LABEL_100;
        }

        llvm::raw_ostream::write(a3, "Block-Sequence-Start: ", 0x16uLL);
        v13 = *(&v53 + 1);
        v14 = v54;
        v15 = a3[4];
        if (v54 > a3[3] - v15)
        {
          goto LABEL_69;
        }

        goto LABEL_101;
      case 10:
        v16 = a3[4];
        if ((a3[3] - v16) <= 0x14)
        {
          v17 = a3;
          v18 = "Block-Mapping-Start: ";
          goto LABEL_20;
        }

        v40 = "Block-Mapping-Start: ";
        goto LABEL_77;
      case 11:
        v28 = a3[4];
        if ((a3[3] - v28) > 0xB)
        {
          *(v28 + 8) = 540703090;
          v44 = "Flow-Entry: ";
LABEL_96:
          *v28 = *v44;
          v39 = a3[4] + 12;
          goto LABEL_100;
        }

        v29 = a3;
        v30 = "Flow-Entry: ";
LABEL_60:
        llvm::raw_ostream::write(v29, v30, 0xCuLL);
        v13 = *(&v53 + 1);
        v14 = v54;
        v15 = a3[4];
        if (v54 > a3[3] - v15)
        {
          goto LABEL_69;
        }

        goto LABEL_101;
      case 12:
        v16 = a3[4];
        if ((a3[3] - v16) > 0x14)
        {
          v40 = "Flow-Sequence-Start: ";
LABEL_77:
          *v16 = *v40;
          *(v16 + 13) = *(v40 + 13);
          v39 = a3[4] + 21;
          goto LABEL_100;
        }

        v17 = a3;
        v18 = "Flow-Sequence-Start: ";
LABEL_20:
        llvm::raw_ostream::write(v17, v18, 0x15uLL);
        v13 = *(&v53 + 1);
        v14 = v54;
        v15 = a3[4];
        if (v54 > a3[3] - v15)
        {
          goto LABEL_69;
        }

        goto LABEL_101;
      case 13:
        v20 = a3[4];
        if ((a3[3] - v20) > 0x12)
        {
          *(v20 + 15) = 540697710;
          v41 = "Flow-Sequence-End: ";
LABEL_79:
          *v20 = *v41;
          v39 = a3[4] + 19;
          goto LABEL_100;
        }

        v21 = a3;
        v22 = "Flow-Sequence-End: ";
LABEL_24:
        llvm::raw_ostream::write(v21, v22, 0x13uLL);
        v13 = *(&v53 + 1);
        v14 = v54;
        v15 = a3[4];
        if (v54 > a3[3] - v15)
        {
          goto LABEL_69;
        }

        goto LABEL_101;
      case 14:
        v34 = a3[4];
        if ((a3[3] - v34) > 0x13)
        {
          *(v34 + 16) = 540701810;
          *v34 = *"Flow-Mapping-Start: ";
          v39 = a3[4] + 20;
          goto LABEL_100;
        }

        llvm::raw_ostream::write(a3, "Flow-Mapping-Start: ", 0x14uLL);
        v13 = *(&v53 + 1);
        v14 = v54;
        v15 = a3[4];
        if (v54 > a3[3] - v15)
        {
          goto LABEL_69;
        }

        goto LABEL_101;
      case 15:
        v12 = a3[4];
        if ((a3[3] - v12) > 0x11)
        {
          *(v12 + 16) = 8250;
          *v12 = *"Flow-Mapping-End: ";
          v39 = a3[4] + 18;
          goto LABEL_100;
        }

        llvm::raw_ostream::write(a3, "Flow-Mapping-End: ", 0x12uLL);
        v13 = *(&v53 + 1);
        v14 = v54;
        v15 = a3[4];
        if (v54 > a3[3] - v15)
        {
          goto LABEL_69;
        }

        goto LABEL_101;
      case 16:
        v23 = a3[4];
        if ((a3[3] - v23) <= 4)
        {
          v24 = a3;
          v25 = "Key: ";
          goto LABEL_46;
        }

        *(v23 + 4) = 32;
        v42 = 981034315;
        goto LABEL_90;
      case 17:
        v9 = a3[4];
        if (a3[3] - v9 <= 6uLL)
        {
          v10 = a3;
          v11 = "Value: ";
          goto LABEL_67;
        }

        *(v9 + 3) = 540697973;
        v38 = 1970037078;
        goto LABEL_99;
      case 18:
        v31 = a3[4];
        if (a3[3] - v31 <= 7uLL)
        {
          v32 = a3;
          v33 = "Scalar: ";
          goto LABEL_40;
        }

        v45 = 0x72616C616353;
        goto LABEL_87;
      case 19:
        v6 = a3[4];
        if (a3[3] - v6 > 0xDuLL)
        {
          v43 = "Block Scalar: ";
LABEL_94:
          *v6 = *v43;
          *(v6 + 6) = *(v43 + 6);
          v39 = a3[4] + 14;
          goto LABEL_100;
        }

        v7 = a3;
        v8 = "Block Scalar: ";
LABEL_56:
        llvm::raw_ostream::write(v7, v8, 0xEuLL);
        v13 = *(&v53 + 1);
        v14 = v54;
        v15 = a3[4];
        if (v54 > a3[3] - v15)
        {
          goto LABEL_69;
        }

        goto LABEL_101;
      case 20:
        v9 = a3[4];
        if (a3[3] - v9 > 6uLL)
        {
          *(v9 + 3) = 540701537;
          v38 = 1634298945;
LABEL_99:
          *v9 = v38;
          v39 = a3[4] + 7;
          goto LABEL_100;
        }

        v10 = a3;
        v11 = "Alias: ";
LABEL_67:
        llvm::raw_ostream::write(v10, v11, 7uLL);
LABEL_68:
        v13 = *(&v53 + 1);
        v14 = v54;
        v15 = a3[4];
        if (v54 <= a3[3] - v15)
        {
          goto LABEL_101;
        }

        goto LABEL_69;
      case 21:
        v31 = a3[4];
        if (a3[3] - v31 > 7uLL)
        {
          v45 = 0x726F68636E41;
LABEL_87:
          *v31 = v45 & 0xFFFFFFFFFFFFLL | 0x203A000000000000;
          v39 = a3[4] + 8;
          goto LABEL_100;
        }

        v32 = a3;
        v33 = "Anchor: ";
LABEL_40:
        llvm::raw_ostream::write(v32, v33, 8uLL);
        v13 = *(&v53 + 1);
        v14 = v54;
        v15 = a3[4];
        if (v54 > a3[3] - v15)
        {
          goto LABEL_69;
        }

        goto LABEL_101;
      case 22:
        v23 = a3[4];
        if ((a3[3] - v23) > 4)
        {
          *(v23 + 4) = 32;
          v42 = 979853652;
LABEL_90:
          *v23 = v42;
          v39 = a3[4] + 5;
LABEL_100:
          a3[4] = v39;
          v13 = *(&v53 + 1);
          v14 = v54;
          v15 = a3[4];
          if (v54 > a3[3] - v15)
          {
LABEL_69:
            v37 = llvm::raw_ostream::write(a3, v13, v14);
            v15 = v37[4];
            if (v37[3] != v15)
            {
              goto LABEL_70;
            }

            goto LABEL_104;
          }
        }

        else
        {
          v24 = a3;
          v25 = "Tag: ";
LABEL_46:
          llvm::raw_ostream::write(v24, v25, 5uLL);
          v13 = *(&v53 + 1);
          v14 = v54;
          v15 = a3[4];
          if (v54 > a3[3] - v15)
          {
            goto LABEL_69;
          }
        }

LABEL_101:
        if (v14)
        {
          memcpy(v15, v13, v14);
          v15 = (a3[4] + v14);
          a3[4] = v15;
        }

        v37 = a3;
        if (a3[3] != v15)
        {
LABEL_70:
          *v15 = 10;
          ++v37[4];
          goto LABEL_105;
        }

LABEL_104:
        llvm::raw_ostream::write(v37, "\n", 1uLL);
LABEL_105:
        if (v53 == 2)
        {
          v46 = 3;
        }

        else
        {
          v46 = v53 == 0;
        }

        if (v56 < 0)
        {
          operator delete(__p);
        }

        if (!v46)
        {
          continue;
        }

        if (v46 == 3)
        {
          v47 = 1;
          v48 = v75;
          if (v75 == v77)
          {
            goto LABEL_115;
          }
        }

        else
        {
          v47 = 0;
          v48 = v75;
          if (v75 == v77)
          {
            goto LABEL_115;
          }
        }

        free(v48);
LABEL_115:
        if (v72 != v74)
        {
          free(v72);
        }

        v49 = v71;
        if (v71 != &v70)
        {
          do
          {
            v51 = *v49;
            v52 = v49[1];
            *v52 = *v49;
            *(v51 + 8) = v52;
            *v49 = 0;
            v49[1] = 0;
            if (*(v49 + 63) < 0)
            {
              operator delete(v49[5]);
            }

            v49 = v52;
          }

          while (v52 != &v70);
        }

        if (v65)
        {
          llvm::deallocate_buffer(*v64, 0x1000);
        }

        if (v68)
        {
          llvm::deallocate_buffer(*v67, *(v67 + 1));
        }

        if (v67 != v69)
        {
          free(v67);
        }

        if (v64 != v66)
        {
          free(v64);
        }

        llvm::SourceMgr::~SourceMgr(v57);
        return v47;
      default:
        goto LABEL_68;
    }
  }
}

uint64_t llvm::yaml::Scanner::Scanner(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *a1 = a4;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 76) = a5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a1 + 112;
  *(a1 + 104) = 0x400000000;
  *(a1 + 160) = 0;
  *(a1 + 144) = a1 + 160;
  *(a1 + 152) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = a1 + 176;
  *(a1 + 184) = a1 + 176;
  *(a1 + 192) = a1 + 208;
  *(a1 + 200) = 0x400000000;
  *(a1 + 224) = a1 + 240;
  *(a1 + 232) = 0x400000000;
  *(a1 + 336) = a6;
  *&v8 = a2;
  *(&v8 + 1) = a3;
  v9 = "YAML";
  v10 = 4;
  llvm::yaml::Scanner::init(a1, &v8);
  return a1;
}

{
  *a1 = a4;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 76) = a5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a1 + 112;
  *(a1 + 104) = 0x400000000;
  *(a1 + 160) = 0;
  *(a1 + 144) = a1 + 160;
  *(a1 + 152) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = a1 + 176;
  *(a1 + 184) = a1 + 176;
  *(a1 + 192) = a1 + 208;
  *(a1 + 200) = 0x400000000;
  *(a1 + 224) = a1 + 240;
  *(a1 + 232) = 0x400000000;
  *(a1 + 336) = a6;
  *&v8 = a2;
  *(&v8 + 1) = a3;
  v9 = "YAML";
  v10 = 4;
  llvm::yaml::Scanner::init(a1, &v8);
  return a1;
}

void llvm::yaml::Scanner::getNext(llvm::yaml::Scanner *this@<X0>, uint64_t a2@<X8>)
{
  v4 = llvm::yaml::Scanner::peekNext(this);
  v5 = *v4;
  *(a2 + 16) = v4[2];
  *a2 = v5;
  if (*(v4 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 24), v4[3], v4[4]);
    v7 = (this + 176);
    if (*(this + 22) == (this + 176))
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *(v4 + 3);
    *(a2 + 40) = v4[5];
    *(a2 + 24) = v6;
    v7 = (this + 176);
    if (*(this + 22) == (this + 176))
    {
      goto LABEL_6;
    }
  }

  v8 = *(this + 23);
  v10 = *v8;
  v9 = v8[1];
  *v9 = *v8;
  *(v10 + 8) = v9;
  *v8 = 0;
  v8[1] = 0;
  if (*(v8 + 63) < 0)
  {
    operator delete(v8[5]);
    if (*v7 != v7)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_6:
  if (*v7 != v7)
  {
    return;
  }

LABEL_9:
  if (*(this + 38))
  {
    llvm::deallocate_buffer(**(this + 18), *(*(this + 18) + 8));
  }

  *(this + 38) = 0;
  v11 = *(this + 26);
  if (v11)
  {
    *(this + 20) = 0;
    v12 = *(this + 12);
    v13 = *v12 + 4096;
    *(this + 10) = *v12;
    *(this + 11) = v13;
    if (v11 != 1)
    {
      v14 = ((v12 + 8 - *(this + 12)) >> 10) & 0x1FFFFFF;
      if (v14 >= 0x1E)
      {
        LOBYTE(v14) = 30;
      }

      llvm::deallocate_buffer(*(v12 + 8), (4096 << v14));
    }

    *(this + 26) = 1;
  }
}

uint64_t llvm::yaml::scanTokens(uint64_t a1, uint64_t a2)
{
  v35[13] = *MEMORY[0x277D85DE8];
  llvm::SourceMgr::SourceMgr(v15);
  v16 = v15;
  v17 = 0u;
  v18 = 0u;
  v19 = 1;
  v20 = 0;
  v21 = 0;
  v22 = v24;
  v23 = 0x400000000;
  v25 = v27;
  v26 = 0;
  v27[0] = 0;
  v27[1] = 1;
  v28 = &v28;
  v29 = &v28;
  v30 = v32;
  v31 = 0x400000000;
  v33 = v35;
  v34 = 0x400000000;
  v35[12] = 0;
  *&v11 = a1;
  *(&v11 + 1) = a2;
  v12 = "YAML";
  __p = 4;
  llvm::yaml::Scanner::init(&v16, &v11);
  do
  {
    llvm::yaml::Scanner::getNext(&v16, &v11);
    if (v11 == 2)
    {
      v4 = 3;
    }

    else
    {
      v4 = v11 == 0;
    }

    if (v14 < 0)
    {
      operator delete(__p);
    }
  }

  while (!v4);
  if (v4 != 3)
  {
    v5 = 0;
    v6 = v33;
    if (v33 == v35)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v5 = 1;
  v6 = v33;
  if (v33 != v35)
  {
LABEL_12:
    free(v6);
  }

LABEL_13:
  if (v30 != v32)
  {
    free(v30);
  }

  v7 = v29;
  if (v29 != &v28)
  {
    do
    {
      v9 = *v7;
      v10 = v7[1];
      *v10 = *v7;
      *(v9 + 8) = v10;
      *v7 = 0;
      v7[1] = 0;
      if (*(v7 + 63) < 0)
      {
        operator delete(v7[5]);
      }

      v7 = v10;
    }

    while (v10 != &v28);
  }

  if (v23)
  {
    llvm::deallocate_buffer(*v22, 0x1000);
  }

  if (v26)
  {
    llvm::deallocate_buffer(*v25, *(v25 + 1));
  }

  if (v25 != v27)
  {
    free(v25);
  }

  if (v22 != v24)
  {
    free(v22);
  }

  llvm::SourceMgr::~SourceMgr(v15);
  return v5;
}

void llvm::yaml::escape(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, std::string *a4@<X8>)
{
  v54 = *MEMORY[0x277D85DE8];
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  if (!a2)
  {
    return;
  }

  v6 = a1;
  v7 = &a1[a2];
  while (1)
  {
    v8 = *v6;
    if (*v6 <= 0xAu)
    {
      if (*v6 <= 7u)
      {
        if (!*v6)
        {
          v9 = a4;
          v10 = "\\0";
          goto LABEL_28;
        }

        if (v8 == 7)
        {
          v9 = a4;
          v10 = "\\a";
          goto LABEL_28;
        }
      }

      else
      {
        switch(v8)
        {
          case 8:
            v9 = a4;
            v10 = "\\b";
            goto LABEL_28;
          case 9:
            v9 = a4;
            v10 = "\\t";
            goto LABEL_28;
          case 0xA:
            v9 = a4;
            v10 = "\\n";
            goto LABEL_28;
        }
      }
    }

    else if (*v6 > 0x1Au)
    {
      switch(v8)
      {
        case 0x1B:
          v9 = a4;
          v10 = "\\e";
          goto LABEL_28;
        case 0x22:
          v9 = a4;
          v10 = "\\"";
          goto LABEL_28;
        case 0x5C:
          v9 = a4;
          v10 = "\\\";
          goto LABEL_28;
      }
    }

    else
    {
      switch(v8)
      {
        case 0xB:
          v9 = a4;
          v10 = "\\v";
          goto LABEL_28;
        case 0xC:
          v9 = a4;
          v10 = "\\f";
          goto LABEL_28;
        case 0xD:
          v9 = a4;
          v10 = "\\r";
LABEL_28:
          std::string::append(v9, v10);
          goto LABEL_29;
      }
    }

    if (v8 > 0x1F)
    {
      break;
    }

    if (*v6)
    {
      v11 = 16;
      do
      {
        *(__p + v11--) = llvm::hexdigit(unsigned int,BOOL)::LUT[v8 & 0xF];
        v12 = v8 > 0xF;
        v8 >>= 4;
      }

      while (v12);
      v13 = v11 + 1;
      v14 = 16 - v11;
      if ((16 - v11) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_140;
      }
    }

    else
    {
      LOBYTE(v53) = 48;
      v13 = 16;
      v14 = 1;
    }

    if (v14 > 0x16)
    {
      operator new();
    }

    HIBYTE(v48) = v14;
    if (v13 != 17)
    {
      memcpy(&__dst, __p + v13, v14);
    }

    *(&__dst + v14) = 0;
    v15 = HIBYTE(v48);
    if (v48 < 0)
    {
      v15 = v48;
    }

    v16 = 2 - v15;
    if ((2 - v15) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_140:
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v16 >= 0x17)
    {
      operator new();
    }

    *(&__b.__r_.__value_.__s + 23) = 2 - v15;
    if (v15 != 2)
    {
      memset(&__b, 48, v16);
    }

    __b.__r_.__value_.__s.__data_[v16] = 0;
    v17 = std::string::insert(&__b, 0, "\\x");
    v18 = v17->__r_.__value_.__r.__words[2];
    *&v51.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
    v51.__r_.__value_.__r.__words[2] = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (v48 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    if (v48 >= 0)
    {
      v20 = HIBYTE(v48);
    }

    else
    {
      v20 = v48;
    }

    v21 = std::string::append(&v51, p_dst, v20);
    v22 = v21->__r_.__value_.__r.__words[2];
    *__p = *&v21->__r_.__value_.__l.__data_;
    v53 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (v53 >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    if (v53 >= 0)
    {
      v24 = HIBYTE(v53);
    }

    else
    {
      v24 = __p[1];
    }

    std::string::append(a4, v23, v24);
    if (SHIBYTE(v53) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_69:
        if (SHIBYTE(v48) < 0)
        {
          goto LABEL_78;
        }

        goto LABEL_29;
      }
    }

    else if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    operator delete(__b.__r_.__value_.__l.__data_);
    if (SHIBYTE(v48) < 0)
    {
LABEL_78:
      operator delete(__dst);
    }

LABEL_29:
    if (++v6 == v7)
    {
      return;
    }
  }

  if ((v8 & 0x80) == 0)
  {
    std::string::push_back(a4, v8);
    goto LABEL_29;
  }

  v25 = decodeUTF8(v6, v7 - v6);
  v26 = HIDWORD(v25);
  if (HIDWORD(v25))
  {
    if (v25 > 8231)
    {
      if (v25 == 8232)
      {
        v27 = a4;
        v28 = "\\L";
      }

      else
      {
        if (v25 != 8233)
        {
          goto LABEL_82;
        }

        v27 = a4;
        v28 = "\\P";
      }
    }

    else
    {
      if (v25 != 133)
      {
        if (v25 == 160)
        {
          v27 = a4;
          v28 = "\\_";
          goto LABEL_87;
        }

LABEL_82:
        if ((a3 & 1) == 0)
        {
          v29 = v25;
          isPrintable = llvm::sys::unicode::isPrintable(v25);
          LODWORD(v25) = v29;
          if (isPrintable)
          {
            std::string::append(a4, v6, v26);
LABEL_88:
            v6 += (v26 - 1);
            goto LABEL_29;
          }
        }

        v31 = v25;
        if (v25)
        {
          v32 = 16;
          do
          {
            *(__p + v32--) = llvm::hexdigit(unsigned int,BOOL)::LUT[v31 & 0xF];
            v12 = v31 > 0xF;
            v31 >>= 4;
          }

          while (v12);
          v33 = v32 + 1;
        }

        else
        {
          LOBYTE(v53) = 48;
          v33 = 16;
        }

        v34 = 17 - v33;
        if ((17 - v33) > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_140;
        }

        if (v34 > 0x16)
        {
          operator new();
        }

        HIBYTE(v48) = 17 - v33;
        if (v33 != 17)
        {
          memcpy(&__dst, __p + v33, 17 - v33);
        }

        *(&__dst + v34) = 0;
        v35 = HIBYTE(v48);
        if ((HIBYTE(v48) & 0x80) != 0)
        {
          v35 = v48;
          if (v48 >= 3)
          {
            if (v48 >= 5)
            {
              if (v48 < 9)
              {
                goto LABEL_110;
              }

              goto LABEL_126;
            }

            goto LABEL_108;
          }
        }

        else if (HIBYTE(v48) >= 3u)
        {
          if (HIBYTE(v48) >= 5u)
          {
            if (HIBYTE(v48) > 8u)
            {
              goto LABEL_126;
            }

LABEL_110:
            std::string::basic_string[abi:nn200100](&__b, 8 - v35, 48);
            v36 = "\\U";
LABEL_111:
            v37 = std::string::insert(&__b, 0, v36);
            v38 = v37->__r_.__value_.__r.__words[2];
            *&v51.__r_.__value_.__l.__data_ = *&v37->__r_.__value_.__l.__data_;
            v51.__r_.__value_.__r.__words[2] = v38;
            v37->__r_.__value_.__l.__size_ = 0;
            v37->__r_.__value_.__r.__words[2] = 0;
            v37->__r_.__value_.__r.__words[0] = 0;
            if (v48 >= 0)
            {
              v39 = &__dst;
            }

            else
            {
              v39 = __dst;
            }

            if (v48 >= 0)
            {
              v40 = HIBYTE(v48);
            }

            else
            {
              v40 = v48;
            }

            v41 = std::string::append(&v51, v39, v40);
            v42 = v41->__r_.__value_.__r.__words[2];
            *__p = *&v41->__r_.__value_.__l.__data_;
            v53 = v42;
            v41->__r_.__value_.__l.__size_ = 0;
            v41->__r_.__value_.__r.__words[2] = 0;
            v41->__r_.__value_.__r.__words[0] = 0;
            if (v53 >= 0)
            {
              v43 = __p;
            }

            else
            {
              v43 = __p[0];
            }

            if (v53 >= 0)
            {
              v44 = HIBYTE(v53);
            }

            else
            {
              v44 = __p[1];
            }

            std::string::append(a4, v43, v44);
            if (SHIBYTE(v53) < 0)
            {
              operator delete(__p[0]);
              if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_129;
              }

LABEL_125:
              if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_126;
              }

LABEL_130:
              operator delete(__b.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v48) & 0x80000000) == 0)
              {
                goto LABEL_88;
              }
            }

            else
            {
              if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_125;
              }

LABEL_129:
              operator delete(v51.__r_.__value_.__l.__data_);
              if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_130;
              }

LABEL_126:
              if ((SHIBYTE(v48) & 0x80000000) == 0)
              {
                goto LABEL_88;
              }
            }

            operator delete(__dst);
            goto LABEL_88;
          }

LABEL_108:
          std::string::basic_string[abi:nn200100](&__b, 4 - v35, 48);
          v36 = "\\u";
          goto LABEL_111;
        }

        std::string::basic_string[abi:nn200100](&__b, 2 - v35, 48);
        v36 = "\\x";
        goto LABEL_111;
      }

      v27 = a4;
      v28 = "\\N";
    }

LABEL_87:
    std::string::append(v27, v28);
    goto LABEL_88;
  }

  __dst = &v49;
  v48 = xmmword_25736EFF0;
  encodeUTF8(65533, &__dst);
  size = HIBYTE(a4->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v46 = a4;
  }

  else
  {
    v46 = a4->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a4->__r_.__value_.__l.__size_;
  }

  std::string::__insert_with_size<char *,char *>(a4, v46 + size, __dst, &__dst[v48], v48);
  if (__dst != &v49)
  {
    free(__dst);
  }
}

uint64_t decodeUTF8(char *a1, uint64_t a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v2 = *a1;
  if ((*a1 & 0x80000000) == 0)
  {
    v3 = 0x100000000;
    return v3 | v2;
  }

  if (a2 == 1)
  {
    return 0;
  }

  if ((v2 & 0xE0) == 0xC0)
  {
    v5 = a1[1];
    v6 = v2 & 0x1F;
    if ((v5 & 0xC0) == 0x80 && v6 >= 2)
    {
      return v5 & 0x3F | (v6 << 6) | 0x200000000;
    }
  }

  if (a2 < 3)
  {
    return 0;
  }

  if ((*a1 & 0xF0) == 0xE0)
  {
    v8 = a1[1];
    if ((v8 & 0xC0) == 0x80)
    {
      v9 = a1[2];
      if ((v9 & 0xC0) == 0x80)
      {
        v10 = *a1 & 0xF;
        v11 = (v10 << 12) | ((v8 & 0x3F) << 6);
        if (v11 >= 0x800)
        {
          v2 = v11 | v9 & 0x3F;
          v3 = 0x300000000;
          if (v10 > 0xD || v11 >> 11 < 0x1B)
          {
            return v3 | v2;
          }
        }
      }
    }
  }

  if (a2 == 3)
  {
    return 0;
  }

  if ((*a1 & 0xF8) != 0xF0)
  {
    return 0;
  }

  v12 = a1[1];
  if ((v12 & 0xC0) != 0x80)
  {
    return 0;
  }

  v13 = a1[2];
  if ((v13 & 0xC0) != 0x80)
  {
    return 0;
  }

  v14 = a1[3];
  if ((v14 & 0xC0) != 0x80)
  {
    return 0;
  }

  v15 = ((*a1 & 7) << 18) | ((v12 & 0x3F) << 12);
  if ((v15 - 1114112) < 0xFFF00000)
  {
    return 0;
  }

  return v14 & 0x3F | ((v13 & 0x3F) << 6) | v15 | 0x400000000;
}

uint64_t encodeUTF8(uint64_t result, void *a2)
{
  if (result <= 0x7F)
  {
    v2 = a2[1];
    if ((v2 + 1) <= a2[2])
    {
      v3 = result;
LABEL_7:
      *(*a2 + v2) = v3;
      ++a2[1];
      return result;
    }

LABEL_17:
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (result <= 0x7FF)
  {
    v4 = (result >> 6) | 0xFFFFFFC0;
    v3 = result & 0x3F | 0x80;
    v5 = a2[1];
    if ((v5 + 1) <= a2[2])
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if (!WORD1(result))
  {
    v8 = (result >> 12) | 0xFFFFFFE0;
    v9 = a2[1];
    if ((v9 + 1) <= a2[2])
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  if (WORD1(result) <= 0x10u)
  {
    v12 = a2[1];
    if ((v12 + 1) > a2[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v8 = (result >> 12) & 0x3F | 0xFFFFFF80;
    *(*a2 + v12) = (result >> 18) | 0xF0;
    v13 = a2[1];
    v14 = a2[2];
    v9 = v13 + 1;
    a2[1] = v13 + 1;
    if (v13 + 2 <= v14)
    {
LABEL_11:
      v3 = result & 0x3F | 0x80;
      v4 = (result >> 6) & 0x3F | 0xFFFFFF80;
      *(*a2 + v9) = v8;
      v10 = a2[1];
      v11 = a2[2];
      v5 = v10 + 1;
      a2[1] = v10 + 1;
      if (v10 + 2 <= v11)
      {
LABEL_6:
        *(*a2 + v5) = v4;
        v6 = a2[1];
        v7 = a2[2];
        v2 = v6 + 1;
        a2[1] = v6 + 1;
        if (v6 + 2 <= v7)
        {
          goto LABEL_7;
        }

        goto LABEL_17;
      }

LABEL_12:
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

LABEL_16:
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  return result;
}

uint64_t llvm::yaml::parseBool(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      v2 = 0;
      v11 = *a1;
      v12 = 1;
      if (v11 <= 0x6D)
      {
        if (v11 != 78)
        {
          v3 = 0;
          if (v11 != 89)
          {
            return v3 | v2;
          }

          goto LABEL_59;
        }

        goto LABEL_58;
      }

      if (v11 != 121)
      {
        v3 = 0;
        if (v11 != 110)
        {
          return v3 | v2;
        }

        goto LABEL_58;
      }

LABEL_59:
      v3 = 256;
      v2 = v12;
      return v3 | v2;
    }

    v3 = 0;
    if (a2 != 2)
    {
      return v3 | v2;
    }

    v2 = 0;
    v5 = *a1;
    if (v5 > 0x6D)
    {
      if (v5 != 110)
      {
        v3 = 0;
        if (v5 != 111)
        {
          return v3 | v2;
        }

        LOBYTE(v6) = a1[1];
        goto LABEL_48;
      }

      v14 = a1[1];
    }

    else
    {
      if (v5 != 78)
      {
        v3 = 0;
        if (v5 != 79)
        {
          return v3 | v2;
        }

        v6 = a1[1];
        if (v6 == 78)
        {
          goto LABEL_41;
        }

LABEL_48:
        v13 = v6 == 110;
        if (!v13)
        {
          return v13;
        }

        v12 = v13;
        goto LABEL_59;
      }

      v14 = a1[1];
      if (v14 == 79)
      {
        goto LABEL_58;
      }
    }

    if (v14 != 111)
    {
      return 0;
    }

    goto LABEL_58;
  }

  if (a2 == 3)
  {
    v2 = 0;
    v7 = *a1;
    if (v7 > 0x6E)
    {
      if (v7 != 111)
      {
        v3 = 0;
        if (v7 != 121)
        {
          return v3 | v2;
        }

LABEL_40:
        if (*(a1 + 1) != 29541)
        {
          return 0;
        }

LABEL_41:
        v12 = 1;
        goto LABEL_59;
      }
    }

    else
    {
      if (v7 != 79)
      {
        v3 = 0;
        if (v7 != 89)
        {
          return v3 | v2;
        }

        if (*(a1 + 1) == 21317)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      if (*(a1 + 1) == 17990)
      {
        goto LABEL_58;
      }
    }

    if (*(a1 + 1) == 26214)
    {
      goto LABEL_58;
    }

    return 0;
  }

  if (a2 == 4)
  {
    v8 = *a1;
    if (v8 == 116)
    {
      goto LABEL_28;
    }

    if (v8 != 84)
    {
      return 0;
    }

    if (*(a1 + 1) != 21842 || a1[3] != 69)
    {
LABEL_28:
      if (*(a1 + 1) != 30066 || a1[3] != 101)
      {
        return 0;
      }
    }

    goto LABEL_41;
  }

  v3 = 0;
  if (a2 != 5)
  {
    return v3 | v2;
  }

  v4 = *a1;
  if (v4 != 102)
  {
    if (v4 != 70)
    {
      return 0;
    }

    if (*(a1 + 1) == 1163086913)
    {
LABEL_58:
      v12 = 0;
      goto LABEL_59;
    }
  }

  if (*(a1 + 1) == 1702063201)
  {
    goto LABEL_58;
  }

  return 0;
}

char *llvm::yaml::Scanner::init(uint64_t *a1, _OWORD *a2)
{
  v3 = a2[1];
  *(a1 + 1) = *a2;
  *(a1 + 3) = v3;
  v4 = a1[1];
  v5 = v4 + a1[2];
  a1[5] = v4;
  a1[6] = v5;
  *(a1 + 7) = xmmword_2573A3B40;
  *(a1 + 18) = 257;
  v6 = a2[1];
  v11 = *a2;
  v12 = v6;
  llvm::MemoryBuffer::getMemBuffer(&v11, &v13);
  v7 = *a1;
  v8 = v13;
  v13 = 0;
  *&v12 = 0;
  v11 = v8;
  v9 = *(v7 + 8);
  if (v9 >= *(v7 + 16))
  {
    *(v7 + 8) = std::vector<llvm::SourceMgr::SrcBuffer>::__emplace_back_slow_path<llvm::SourceMgr::SrcBuffer>(v7, &v11);
    llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v11);
    result = v13;
    v13 = 0;
    if (!result)
    {
      return result;
    }

    return (*(*result + 8))(result);
  }

  *(v7 + 8) = llvm::SourceMgr::SrcBuffer::SrcBuffer(v9, &v11) + 3;
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v11);
  result = v13;
  v13 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t llvm::yaml::Scanner::Scanner(uint64_t a1, _OWORD *a2, uint64_t a3, char a4, uint64_t a5)
{
  *a1 = a3;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 76) = a4;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a1 + 112;
  *(a1 + 104) = 0x400000000;
  *(a1 + 160) = 0;
  *(a1 + 144) = a1 + 160;
  *(a1 + 152) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = a1 + 176;
  *(a1 + 184) = a1 + 176;
  *(a1 + 192) = a1 + 208;
  *(a1 + 200) = 0x400000000;
  *(a1 + 224) = a1 + 240;
  *(a1 + 232) = 0x400000000;
  *(a1 + 336) = a5;
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  llvm::yaml::Scanner::init(a1, v8);
  return a1;
}

{
  *a1 = a3;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 76) = a4;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a1 + 112;
  *(a1 + 104) = 0x400000000;
  *(a1 + 160) = 0;
  *(a1 + 144) = a1 + 160;
  *(a1 + 152) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = a1 + 176;
  *(a1 + 184) = a1 + 176;
  *(a1 + 192) = a1 + 208;
  *(a1 + 200) = 0x400000000;
  *(a1 + 224) = a1 + 240;
  *(a1 + 232) = 0x400000000;
  *(a1 + 336) = a5;
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  llvm::yaml::Scanner::init(a1, v8);
  return a1;
}

uint64_t *llvm::yaml::Scanner::peekNext(uint64_t **this)
{
  v2 = 0;
  v3 = (this + 22);
  while ((v2 & 1) == 0 && *v3 != v3 || (llvm::yaml::Scanner::fetchMoreTokens(this) & 1) != 0)
  {
    llvm::yaml::Scanner::removeStaleSimpleKeyCandidates(this);
    v4 = this[23];
    v5 = *(this + 58);
    if (v5)
    {
      v6 = 24 * v5;
      for (i = this[28]; *i != v4; i += 3)
      {
        v6 -= 24;
        if (!v6)
        {
          return v4 + 2;
        }
      }
    }

    else
    {
      i = this[28];
    }

    v2 = 1;
    if (i == &this[28][3 * v5])
    {
      return v4 + 2;
    }
  }

  v8 = this[23];
  if (v8 != v3)
  {
    do
    {
      v13 = *v8;
      v14 = v8[1];
      *v14 = *v8;
      *(v13 + 8) = v14;
      *v8 = 0;
      v8[1] = 0;
      if (*(v8 + 63) < 0)
      {
        operator delete(v8[5]);
      }

      v8 = v14;
    }

    while (v14 != v3);
  }

  *(this + 58) = 0;
  this[20] += 8;
  v9 = this[10];
  if (v9 && (Slow = (v9 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 64 <= this[11]))
  {
    this[10] = (Slow + 64);
  }

  else
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow((this + 10), 64, 64, 3);
  }

  *Slow = 0;
  *(Slow + 8) = 0;
  *(Slow + 16) = 0;
  *(Slow + 24) = 0uLL;
  *(Slow + 48) = 0;
  *(Slow + 56) = 0;
  *(Slow + 40) = 0;
  v11 = this[22];
  *Slow = v11;
  *(Slow + 8) = v3;
  v11[1] = Slow;
  this[22] = Slow;
  v4 = this[23];
  return v4 + 2;
}

uint64_t llvm::yaml::Scanner::fetchMoreTokens(llvm::yaml::Scanner *this)
{
  if (*(this + 72) == 1)
  {
    llvm::yaml::Scanner::scanStreamStart(this);
    return 1;
  }

  llvm::yaml::Scanner::scanToNextToken(this);
  if (*(this + 5) == *(this + 6))
  {
    llvm::yaml::Scanner::scanStreamEnd(this);
    return 1;
  }

  llvm::yaml::Scanner::removeStaleSimpleKeyCandidates(this);
  v2 = *(this + 15);
  if (!*(this + 17) && *(this + 14) > v2)
  {
    do
    {
      v3 = *(this + 5);
      *(this + 20) += 64;
      v4 = *(this + 10);
      Slow = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
      v6 = Slow + 64;
      if (v4)
      {
        v7 = v6 > *(this + 11);
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 80, 64, 64, 3);
      }

      else
      {
        *(this + 10) = v6;
      }

      *Slow = 0;
      *(Slow + 8) = 0;
      *(Slow + 16) = 8;
      *(Slow + 24) = v3;
      *(Slow + 32) = 1;
      *(Slow + 48) = 0;
      *(Slow + 56) = 0;
      *(Slow + 40) = 0;
      v8 = *(this + 22);
      *Slow = v8;
      *(Slow + 8) = this + 176;
      *(v8 + 8) = Slow;
      *(this + 22) = Slow;
      v9 = *(this + 50);
      LODWORD(v8) = *(*(this + 24) + 4 * v9 - 4);
      *(this + 50) = v9 - 1;
      *(this + 14) = v8;
    }

    while (v8 > v2);
    v2 = *(this + 15);
  }

  v12 = *(this + 5);
  v13 = *v12;
  if (v2)
  {
    goto LABEL_18;
  }

  if (v13 == 37)
  {

    return llvm::yaml::Scanner::scanDirective(this);
  }

  if ((v12 + 4) > *(this + 6))
  {
LABEL_18:
    if (*v12 > 0x5Au)
    {
      if (*v12 > 0x7Au)
      {
        goto LABEL_44;
      }

      if (v13 != 91)
      {
        if (v13 != 93)
        {
          goto LABEL_86;
        }

LABEL_33:
        v15 = *(this + 58);
        if (v15 && *(*(this + 28) + 24 * v15 - 8) == *(this + 17))
        {
          *(this + 58) = v15 - 1;
        }

        v16 = *(this + 10);
        *(this + 73) = 256;
        *(this + 5) = v12 + 1;
        *(this + 15) = v2 + 1;
        *(this + 20) += 64;
        if (v16 && (v17 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8, v17 + 64 <= *(this + 11)))
        {
          *(this + 10) = v17 + 64;
        }

        else
        {
          v36 = v12;
          v17 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 80, 64, 64, 3);
          v12 = v36;
        }

        *v17 = 0;
        *(v17 + 8) = 0;
        v18 = 13;
LABEL_53:
        *(v17 + 16) = v18;
        v10 = 1;
        *(v17 + 24) = v12;
        *(v17 + 32) = 1;
        *(v17 + 48) = 0;
        *(v17 + 56) = 0;
        *(v17 + 40) = 0;
        v21 = *(this + 22);
        *v17 = v21;
        *(v17 + 8) = this + 176;
        *(v21 + 8) = v17;
        *(this + 22) = v17;
        v22 = *(this + 17);
        if (!v22)
        {
          return v10;
        }

        *(this + 17) = v22 - 1;
        return 1;
      }

LABEL_104:
      v10 = 1;
      llvm::yaml::Scanner::scanFlowCollectionStart(this, 1);
      return v10;
    }

    if (*v12 <= 0x39u)
    {
      if (v13 != 44)
      {
        if (v13 == 45)
        {
          goto LABEL_22;
        }

        goto LABEL_86;
      }

      goto LABEL_71;
    }

    if (v13 != 58)
    {
      if (v13 != 63)
      {
        goto LABEL_86;
      }

      goto LABEL_57;
    }

LABEL_80:
    if (!llvm::yaml::Scanner::isPlainSafeNonBlank(this, v12 + 1) || (*(this + 74) & 1) != 0)
    {

      return llvm::yaml::Scanner::scanValue(this);
    }

    v12 = *(this + 5);
    v13 = *v12;
    goto LABEL_86;
  }

  if (*v12 <= 0x3Eu)
  {
    if (*v12 <= 0x2Du)
    {
      if (v13 != 44)
      {
        if (v13 == 45)
        {
          if (v12[1] == 45 && v12[2] == 45)
          {
            v24 = *(v12 + 3);
            if (v24 <= 0x20 && ((1 << v24) & 0x100002600) != 0)
            {
              v10 = 1;
              llvm::yaml::Scanner::scanDocumentIndicator(this, 1);
              return v10;
            }
          }

LABEL_22:
          if (*(this + 6) == v12 + 1 || (v14 = *(v12 + 1), v13 = 45, v14 <= 0x20) && ((1 << v14) & 0x100002600) != 0)
          {
            llvm::yaml::Scanner::scanBlockEntry(this);
            return 1;
          }

LABEL_124:
          v40[0] = v12;
          v40[1] = 1;
          {
            return llvm::yaml::Scanner::scanPlainScalar(this);
          }

          v38 = "Unrecognized character while tokenizing.";
          v39 = 259;
          llvm::yaml::Scanner::setError(this, &v38, *(this + 5));
          return 0;
        }

        goto LABEL_86;
      }

LABEL_71:
      v25 = *(this + 58);
      if (v25 && *(*(this + 28) + 24 * v25 - 8) == *(this + 17))
      {
        *(this + 58) = v25 - 1;
      }

      v26 = *(this + 10);
      *(this + 73) = 1;
      *(this + 5) = v12 + 1;
      *(this + 15) = v2 + 1;
      *(this + 20) += 64;
      if (v26 && (v27 = (v26 + 7) & 0xFFFFFFFFFFFFFFF8, v27 + 64 <= *(this + 11)))
      {
        *(this + 10) = v27 + 64;
      }

      else
      {
        v35 = v12;
        v27 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 80, 64, 64, 3);
        v12 = v35;
      }

      *v27 = 0;
      *(v27 + 8) = 0;
      *(v27 + 16) = 11;
      v10 = 1;
      *(v27 + 24) = v12;
      *(v27 + 32) = 1;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 40) = 0;
      v29 = *(this + 22);
      v28 = (this + 176);
      *v27 = v29;
      *(v27 + 8) = v28;
      *(v29 + 8) = v27;
      *v28 = v27;
      return v10;
    }

    if (v13 == 46)
    {
      if (v12[1] == 46 && (v13 = *(v12 + 2), v13 == 46))
      {
        v34 = *(v12 + 3);
        if (v34 <= 0x20 && ((1 << v34) & 0x100002600) != 0)
        {
          llvm::yaml::Scanner::scanDocumentIndicator(this, 0);
          return 1;
        }
      }

      else
      {
        v13 = 46;
      }

      goto LABEL_124;
    }

    if (v13 != 58)
    {
      goto LABEL_86;
    }

    goto LABEL_80;
  }

  if (*v12 <= 0x5Cu)
  {
    if (v13 != 63)
    {
      if (v13 != 91)
      {
        goto LABEL_86;
      }

      goto LABEL_104;
    }

LABEL_57:
    if (v12 + 1 == *(this + 6) || (v23 = *(v12 + 1), v13 = 63, v23 <= 0x20) && ((1 << v23) & 0x100002600) != 0)
    {
      llvm::yaml::Scanner::scanKey(this);
      return 1;
    }

    goto LABEL_124;
  }

  if (v13 == 93)
  {
    goto LABEL_33;
  }

LABEL_44:
  if (v13 == 123)
  {
    llvm::yaml::Scanner::scanFlowCollectionStart(this, 0);
    return 1;
  }

  if (v13 == 125)
  {
    v19 = *(this + 58);
    if (v19 && *(*(this + 28) + 24 * v19 - 8) == *(this + 17))
    {
      *(this + 58) = v19 - 1;
    }

    v20 = *(this + 10);
    *(this + 73) = 256;
    *(this + 5) = v12 + 1;
    *(this + 15) = v2 + 1;
    *(this + 20) += 64;
    if (v20 && (v17 = (v20 + 7) & 0xFFFFFFFFFFFFFFF8, v17 + 64 <= *(this + 11)))
    {
      *(this + 10) = v17 + 64;
    }

    else
    {
      v37 = v12;
      v17 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 80, 64, 64, 3);
      v12 = v37;
    }

    *v17 = 0;
    *(v17 + 8) = 0;
    v18 = 15;
    goto LABEL_53;
  }

LABEL_86:
  if (v13 <= 38)
  {
    if (v13 != 33)
    {
      if (v13 != 34)
      {
        if (v13 != 38)
        {
          goto LABEL_124;
        }

        v30 = this;
        v31 = 0;
LABEL_95:

        return llvm::yaml::Scanner::scanAliasOrAnchor(v30, v31);
      }

      v32 = this;
      v33 = 1;
      goto LABEL_112;
    }

    return llvm::yaml::Scanner::scanTag(this);
  }

  else
  {
    if (v13 <= 61)
    {
      if (v13 != 39)
      {
        if (v13 != 42)
        {
          goto LABEL_124;
        }

        v30 = this;
        v31 = 1;
        goto LABEL_95;
      }

      v32 = this;
      v33 = 0;
LABEL_112:

      return llvm::yaml::Scanner::scanFlowScalar(v32, v33);
    }

    if (v13 == 62)
    {
      if (*(this + 17))
      {
        v13 = 62;
        goto LABEL_124;
      }
    }

    else
    {
      if (v13 != 124)
      {
        goto LABEL_124;
      }

      if (*(this + 17))
      {
        v13 = 124;
        goto LABEL_124;
      }
    }

    return llvm::yaml::Scanner::scanBlockScalar(this);
  }
}

void llvm::yaml::Scanner::removeStaleSimpleKeyCandidates(llvm::yaml::Scanner *this)
{
  v1 = *(this + 58);
  if (v1)
  {
    v3 = *(this + 28);
    v4 = v3;
    do
    {
      while (*(v4 + 12) == *(this + 16) && (*(v4 + 8) + 1024) >= *(this + 15))
      {
        v4 += 24;
        if (v4 == v3 + 24 * v1)
        {
          return;
        }
      }

      if (*(v4 + 20) == 1)
      {
        v10 = "Could not find expected : for simple key";
        v11 = 259;
        v5 = *(this + 6);
        if (v5 <= *(*v4 + 24))
        {
          v6 = (v5 - 1);
        }

        else
        {
          v6 = *(*v4 + 24);
        }

        v7 = *(this + 42);
        if (v7)
        {
          v8 = std::generic_category();
          *v7 = 22;
          v7[1] = v8;
        }

        if ((*(this + 75) & 1) == 0)
        {
          llvm::SourceMgr::PrintMessage(*this, v6, 0, &v10, 0, 0, 0, 0, *(this + 76));
        }

        *(this + 75) = 1;
        v3 = *(this + 28);
        v1 = *(this + 58);
      }

      v9 = v3 + 24 * v1 - (v4 + 24);
      if (v9)
      {
        memmove(v4, (v4 + 24), v9 - 3);
        v1 = *(this + 58);
        v3 = *(this + 28);
      }

      *(this + 58) = --v1;
    }

    while (v4 != v3 + 24 * v1);
  }
}

const char *llvm::yaml::Scanner::skip_nb_char(llvm::yaml::Scanner *this, char *a2)
{
  v2 = *(this + 6) - a2;
  if (!v2)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 == 9 || (v3 - 127) >= 0xFFFFFFA1)
  {
    return a2 + 1;
  }

  if ((v3 & 0x80) == 0)
  {
    return a2;
  }

  v4 = a2;
  v5 = decodeUTF8(a2, v2);
  a2 = v4;
  v6 = v5;
  if (!HIDWORD(v5) || v5 == 65279)
  {
    return a2;
  }

  v8 = v5 - 65534;
  result = &v4[HIDWORD(v5)];
  v10 = (v6 - 1114112) >> 20 == 4095 || v8 > 0xFFFFE001;
  if (!v10 && v6 != 133 && (v6 - 55296) <= 0xFFFF289F)
  {
    return a2;
  }

  return result;
}

const char *llvm::yaml::Scanner::skip_b_break(llvm::yaml::Scanner *this, const char *a2)
{
  v2 = *(this + 6);
  if (v2 == a2)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 == 10)
  {
    return ++a2;
  }

  if (v3 != 13)
  {
    return a2;
  }

  if (a2 + 1 == v2)
  {
    return a2 + 1;
  }

  if (a2[1] == 10)
  {
    return a2 + 2;
  }

  return a2 + 1;
}

const char *llvm::yaml::Scanner::skip_s_space(const char **this, const char *a2)
{
  if (this[6] != a2 && *a2 == 32)
  {
    ++a2;
  }

  return a2;
}

const char *llvm::yaml::Scanner::skip_s_white(const char **this, const char *a2)
{
  if (this[6] != a2)
  {
    v2 = *a2;
    if (v2 == 32 || v2 == 9)
    {
      ++a2;
    }
  }

  return a2;
}

const char *llvm::yaml::Scanner::skip_ns_char(llvm::yaml::Scanner *this, char *a2)
{
  v2 = *(this + 6) - a2;
  if (!v2)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 == 9 || v3 == 32)
  {
    return a2;
  }

  if ((v3 - 127) >= 0xFFFFFFA1)
  {
    return a2 + 1;
  }

  if ((v3 & 0x80) == 0)
  {
    return a2;
  }

  v5 = a2;
  v6 = decodeUTF8(a2, v2);
  a2 = v5;
  if (!HIDWORD(v6))
  {
    return a2;
  }

  v7 = v6;
  if (v6 == 65279)
  {
    return a2;
  }

  result = &v5[HIDWORD(v6)];
  if ((v7 - 1114112) >> 20 != 4095 && (v7 - 65534) <= 0xFFFFE001 && v7 != 133 && (v7 - 55296) <= 0xFFFF289F)
  {
    return a2;
  }

  return result;
}

uint64_t llvm::yaml::Scanner::skip_while (uint64_t a1, uint64_t (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = (a1 + (a3 >> 1));
  if (a3)
  {
    v9 = a2;
    do
    {
      result = (*(*v6 + v9))(v6, a4);
      v8 = result == a4;
      a4 = result;
    }

    while (!v8);
  }

  else
  {
    do
    {
      result = a2(v6, a4);
      v8 = result == a4;
      a4 = result;
    }

    while (!v8);
  }

  return result;
}

uint64_t llvm::yaml::Scanner::advanceWhile(uint64_t a1, uint64_t (*a2)(void *, uint64_t), uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = (a1 + (a3 >> 1));
  if (a3)
  {
    v9 = a2;
    do
    {
      result = (*(*v6 + v9))(v6, v5);
      v8 = result == v5;
      v5 = result;
    }

    while (!v8);
  }

  else
  {
    do
    {
      result = a2(v6, v5);
      v8 = result == v5;
      v5 = result;
    }

    while (!v8);
  }

  *(a1 + 60) += result - *(a1 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t llvm::yaml::Scanner::scan_ns_uri_char(uint64_t this)
{
  v3 = *(this + 40);
  v4 = *(this + 48);
  if (v3 != v4)
  {
    v14[6] = v1;
    v14[7] = v2;
    v5 = this;
    do
    {
      v6 = *v3;
      v7 = v3 + 2;
      v8 = v6 != 37 || v7 >= v4;
      if (v8 || ((v10 = v3[1], (v10 - 48) >= 0xA) ? (v11 = (v10 & 0xFFFFFFDF) - 65 > 0x19) : (v11 = 0), v11 || ((v12 = *v7, (v12 - 48) >= 0xA) ? (v13 = (v12 & 0xFFFFFFDF) - 65 >= 0x1A) : (v13 = 0), v13)))
      {
        if (v6 != 45 && (v6 & 0xFFFFFFDF) - 65 >= 0x1A)
        {
          v14[0] = v3;
          v14[1] = 1;
          this = llvm::StringRef::find_first_of(v14, "#;/?:@&=+$,_.!~*'()[]", 21, 0);
          if (this == -1)
          {
            return this;
          }

          v3 = *(v5 + 40);
          v4 = *(v5 + 48);
        }
      }

      *(v5 + 40) = ++v3;
      ++*(v5 + 60);
    }

    while (v3 != v4);
  }

  return this;
}

uint64_t llvm::yaml::Scanner::consume(llvm::yaml::Scanner *this, unsigned int a2)
{
  if (a2 >= 0x80)
  {
    v11 = "Cannot consume non-ascii characters";
    v12 = 259;
    v3 = *(this + 6);
    if (v3 <= *(this + 5))
    {
      v4 = (v3 - 1);
    }

    else
    {
      v4 = *(this + 5);
    }

    v5 = *(this + 42);
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = *(this + 5);
  v9 = *(this + 6);
  if (v8 == v9)
  {
    return 0;
  }

  v10 = *v8;
  if ((v10 & 0x80000000) == 0)
  {
    if (v10 == a2)
    {
      *(this + 5) = v8 + 1;
      ++*(this + 15);
      return 1;
    }

    return 0;
  }

  v11 = "Cannot consume non-ascii characters";
  v12 = 259;
  if (v9 <= v8)
  {
    v4 = v9 - 1;
  }

  else
  {
    v4 = v8;
  }

  v5 = *(this + 42);
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_6:
  v6 = std::generic_category();
  *v5 = 22;
  v5[1] = v6;
LABEL_7:
  if ((*(this + 75) & 1) == 0)
  {
    llvm::SourceMgr::PrintMessage(*this, v4, 0, &v11, 0, 0, 0, 0, *(this + 76));
  }

  result = 0;
  *(this + 75) = 1;
  return result;
}

void llvm::yaml::Scanner::setError(llvm::yaml::Scanner *this, llvm::formatv_object_base **a2, const char *a3)
{
  v5 = *(this + 6);
  if (v5 <= a3)
  {
    v6 = (v5 - 1);
  }

  else
  {
    v6 = a3;
  }

  v7 = *(this + 42);
  if (v7)
  {
    v8 = std::generic_category();
    *v7 = 22;
    v7[1] = v8;
  }

  if ((*(this + 75) & 1) == 0)
  {
    llvm::SourceMgr::PrintMessage(*this, v6, 0, a2, 0, 0, 0, 0, *(this + 76));
  }

  *(this + 75) = 1;
}

uint64_t llvm::yaml::Scanner::skip(uint64_t this, unsigned int a2)
{
  *(this + 40) += a2;
  *(this + 60) += a2;
  return this;
}

unint64_t llvm::yaml::Scanner::isBlankOrBreak(const char **this, const char *a2)
{
  if (this[6] == a2)
  {
    return 0;
  }

  v2 = *a2;
  v3 = v2 > 0x20;
  v4 = 0x100002600uLL >> v2;
  if (v3)
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

BOOL llvm::yaml::Scanner::isPlainSafeNonBlank(llvm::yaml::Scanner *this, const char *a2)
{
  result = 0;
  if (*(this + 6) != a2)
  {
    v4 = *a2 - 9;
    if (v4 >= 0x18 || ((0x800013u >> v4) & 1) == 0)
    {
      if (!*(this + 17))
      {
        return 1;
      }

      v6[2] = v2;
      v6[3] = v3;
      v6[0] = a2;
      v6[1] = 1;
      if (llvm::StringRef::find_first_of(v6, ",[]{}", 5, 0) == -1)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t llvm::yaml::Scanner::isLineEmpty(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  while (a2 != *(a1 + 48))
  {
    v3 = *a2;
    v4 = v3 > 0x20;
    v5 = (1 << v3) & 0x100002600;
    if (v4 || v5 == 0)
    {
      break;
    }

    ++a2;
    if (!--a3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t llvm::yaml::Scanner::consumeLineBreakIfPresent(llvm::yaml::Scanner *this)
{
  v1 = *(this + 5);
  v2 = *(this + 6);
  if (v2 == v1)
  {
    return 0;
  }

  v3 = *v1;
  if (v3 == 10)
  {
    v9 = v1 + 1;
    v10 = *(this + 16) + 1;
    *(this + 15) = 0;
    *(this + 16) = v10;
    *(this + 5) = v9;
    return 1;
  }

  if (v3 != 13)
  {
    return 0;
  }

  v4 = v1 + 1;
  if (v1 + 1 != v2)
  {
    v5 = v1[1];
    v6 = v1 + 2;
    if (v5 == 10)
    {
      v4 = v6;
    }
  }

  v7 = *(this + 16) + 1;
  *(this + 15) = 0;
  *(this + 16) = v7;
  *(this + 5) = v4;
  return 1;
}

__n128 llvm::yaml::Scanner::saveSimpleKeyCandidate(uint64_t a1, uint64_t a2, int a3, char a4)
{
  if (*(a1 + 73) == 1)
  {
    v11 = v4;
    v12 = v5;
    *v10 = a2;
    *&v10[8] = a3;
    v10[20] = a4;
    v6 = *(a1 + 224);
    *&v10[12] = *(a1 + 64);
    v7 = *(a1 + 232);
    if (v7 >= *(a1 + 236))
    {
      if (v6 <= v10 && v6 + 24 * v7 > v10)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v8 = (v6 + 24 * *(a1 + 232));
    result = *v10;
    v8[1].n128_u64[0] = *&v10[16];
    *v8 = result;
    ++*(a1 + 232);
  }

  return result;
}

uint64_t llvm::yaml::Scanner::removeSimpleKeyCandidatesOnFlowLevel(uint64_t this, int a2)
{
  v2 = *(this + 232);
  if (v2)
  {
    if (*(*(this + 224) + 24 * v2 - 8) == a2)
    {
      *(this + 232) = v2 - 1;
    }
  }

  return this;
}

uint64_t llvm::yaml::Scanner::unrollIndent(llvm::yaml::Scanner *this, uint64_t a2)
{
  if (*(this + 17) || *(this + 14) <= a2)
  {
    return 1;
  }

  v3 = this + 176;
  do
  {
    v4 = *(this + 5);
    *(this + 20) += 64;
    v5 = *(this + 10);
    v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v7 = v6 + 64;
    if (v5)
    {
      v8 = v7 > *(this + 11);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v12 = this;
      v13 = a2;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 80, 64, 64, 3);
      a2 = v13;
      v6 = Slow;
      this = v12;
    }

    else
    {
      *(this + 10) = v7;
    }

    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 8;
    *(v6 + 24) = v4;
    *(v6 + 32) = 1;
    *(v6 + 48) = 0;
    *(v6 + 56) = 0;
    *(v6 + 40) = 0;
    v9 = *(this + 22);
    *v6 = v9;
    *(v6 + 8) = v3;
    *(v9 + 8) = v6;
    *(this + 22) = v6;
    v10 = *(this + 50);
    v11 = *(*(this + 24) + 4 * v10 - 4);
    *(this + 50) = v10 - 1;
    *(this + 14) = v11;
  }

  while (v11 > a2);
  return 1;
}

uint64_t llvm::yaml::Scanner::rollIndent(uint64_t a1, int a2, int a3, unint64_t *a4)
{
  if (*(a1 + 68))
  {
    return 1;
  }

  v5 = *(a1 + 56);
  if (v5 < a2)
  {
    v6 = *(a1 + 200);
    if (v6 >= *(a1 + 204))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a1 + 192) + 4 * v6) = v5;
    v9 = *(a1 + 80);
    v7 = a1 + 80;
    v8 = v9;
    ++*(v7 + 120);
    *(v7 - 24) = a2;
    v10 = *(v7 - 40);
    *(v7 + 80) += 64;
    if (v9 && (v11 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8, v11 + 64 <= *(v7 + 8)))
    {
      *v7 = v11 + 64;
    }

    else
    {
      v15 = a3;
      v14 = a4;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v7, 64, 64, 3);
      a3 = v15;
      a4 = v14;
      v11 = Slow;
    }

    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = a3;
    *(v11 + 24) = v10;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 0u;
    v12 = *a4;
    *v11 = *a4;
    *(v11 + 8) = a4;
    *(v12 + 8) = v11;
    *a4 = v11;
  }

  return 1;
}

unint64_t llvm::yaml::Scanner::skipComment(unint64_t this)
{
  v1 = *(this + 40);
  v2 = *(this + 48);
  if (v1 != v2)
  {
    v3 = *v1;
    if (v3 == 35)
    {
      v4 = this;
LABEL_4:
      if ((v3 - 127) >= 0xFFFFFFA1)
      {
        while (1)
        {
          ++v1;
LABEL_14:
          *(v4 + 40) = v1;
          ++*(v4 + 60);
          if (v2 == v1)
          {
            break;
          }

          v3 = *v1;
          if (v3 != 9)
          {
            goto LABEL_4;
          }
        }
      }

      else if ((v3 & 0x80) != 0)
      {
        this = decodeUTF8(v1, v2 - v1);
        if (HIDWORD(this))
        {
          if (this != 65279)
          {
            v1 += HIDWORD(this);
            if ((this - 1114112) >> 20 == 4095 || (this - 65534) > 0xFFFFE001 || this == 133 || (this - 55296) >= 0xFFFF28A0)
            {
              goto LABEL_14;
            }
          }
        }
      }
    }
  }

  return this;
}

uint64_t llvm::yaml::Scanner::scanToNextToken(uint64_t this)
{
  v2 = *(this + 40);
  v1 = *(this + 48);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v2 == v1)
        {
          goto LABEL_40;
        }

        v3 = *v2;
        if (v3 != 9 && v3 != 32)
        {
          break;
        }

        *(this + 40) = ++v2;
        ++*(this + 60);
      }

      if (v3 == 35)
      {
LABEL_7:
        if ((v3 - 127) >= 0xFFFFFFA1)
        {
          while (1)
          {
            v15 = v2 + 1;
LABEL_34:
            *(this + 40) = v15;
            ++*(this + 60);
            if (v1 == v15)
            {
              break;
            }

            v3 = *v15;
            v2 = v15;
            if (v3 != 9)
            {
              goto LABEL_7;
            }
          }

          v2 = v15;
        }

        else if ((v3 & 0x80) != 0)
        {
          v4 = v1 - v2;
          if (v1 - v2 >= 2)
          {
            if ((v3 & 0xE0) == 0xC0)
            {
              v5 = v2[1];
              if ((v5 & 0xC0) == 0x80 && (v3 & 0x1Fu) >= 2)
              {
                v9 = v5 & 0x3F | ((v3 & 0x1F) << 6);
                v10 = 2;
                goto LABEL_27;
              }
            }

            if (v4 < 3)
            {
              goto LABEL_40;
            }

            if ((v3 & 0xF0) == 0xE0)
            {
              v6 = v2[1];
              if ((v6 & 0xC0) == 0x80)
              {
                v7 = v2[2];
                if ((v7 & 0xC0) == 0x80)
                {
                  v8 = ((v3 & 0xF) << 12) | ((v6 & 0x3F) << 6);
                  if (v8 >= 0x800)
                  {
                    v9 = v8 | v7 & 0x3F;
                    if ((v3 & 0xFu) > 0xD)
                    {
                      v10 = 3;
                      goto LABEL_27;
                    }

                    v10 = 3;
                    if (v8 >> 11 < 0x1B)
                    {
                      goto LABEL_27;
                    }
                  }
                }
              }
            }

            if (v4 != 3 && (v3 & 0xF8) == 0xF0)
            {
              v11 = v2[1];
              if ((v11 & 0xC0) == 0x80)
              {
                v12 = v2[2];
                if ((v12 & 0xC0) == 0x80)
                {
                  v13 = v2[3];
                  if ((v13 & 0xC0) == 0x80)
                  {
                    v14 = ((v3 & 7) << 18) | ((v11 & 0x3F) << 12);
                    if ((v14 - 1114112) >= 0xFFF00000)
                    {
                      v9 = v13 & 0x3F | ((v12 & 0x3F) << 6) | v14;
                      v10 = 4;
LABEL_27:
                      if (v9 == 65279)
                      {
                        goto LABEL_40;
                      }

                      v15 = &v2[v10];
                      if ((v9 - 1114112) >> 20 != 4095 && (v9 - 65534) <= 0xFFFFE001 && v9 != 133 && (v9 - 55296) < 0xFFFF28A0)
                      {
                        goto LABEL_40;
                      }

                      goto LABEL_34;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_40:
      if (v1 == v2)
      {
        return this;
      }

      v16 = *v2;
      if (v16 != 10)
      {
        break;
      }

      *(this + 40) = ++v2;
      v21 = *(this + 68);
      v22 = *(this + 64) + 1;
      *(this + 60) = 0;
      *(this + 64) = v22;
      if (!v21)
      {
        goto LABEL_51;
      }
    }

    if (v16 != 13)
    {
      return this;
    }

    v17 = v2 + 1;
    if (v2 + 1 == v1)
    {
      ++v2;
      *(this + 40) = v17;
      v23 = *(this + 68);
      v24 = *(this + 64) + 1;
      *(this + 60) = 0;
      *(this + 64) = v24;
      if (!v23)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v18 = v2[1];
      v2 += 2;
      if (v18 != 10)
      {
        v2 = v17;
      }

      *(this + 40) = v2;
      v19 = *(this + 68);
      v20 = *(this + 64) + 1;
      *(this + 60) = 0;
      *(this + 64) = v20;
      if (!v19)
      {
LABEL_51:
        *(this + 73) = 1;
      }
    }
  }
}

uint64_t llvm::yaml::Scanner::scanStreamStart(llvm::yaml::Scanner *this)
{
  *(this + 72) = 0;
  v1 = *(this + 5);
  v2 = *(this + 6) - v1;
  if (!v2)
  {
    goto LABEL_28;
  }

  v3 = 0;
  v4 = *v1;
  if (v4 > 0xFD)
  {
    if (v4 == 254)
    {
      if (v2 == 1 || v1[1] != 255)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v4 != 255)
      {
        goto LABEL_29;
      }

      if (v2 < 4)
      {
        if (v2 == 1 || v1[1] != 254)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v1[1] != 254)
        {
          goto LABEL_28;
        }

        if (!v1[2] && !v1[3])
        {
          goto LABEL_21;
        }
      }
    }

    v3 = 2;
    goto LABEL_29;
  }

  if (*v1)
  {
    if (v4 != 239)
    {
      goto LABEL_29;
    }

    if (v2 >= 3 && v1[1] == 187 && v1[2] == 191)
    {
      v3 = 3;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (v2 >= 4 && !v1[1] && v1[2] && v1[2] == 254 && v1[3] == 255)
  {
LABEL_21:
    v3 = 4;
    goto LABEL_29;
  }

LABEL_28:
  v3 = 0;
LABEL_29:
  v5 = *(this + 10);
  *(this + 20) += 64;
  Slow = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = Slow + 64;
  if (v5)
  {
    v8 = v7 > *(this + 11);
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v12 = this;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 80, 64, 64, 3);
    this = v12;
  }

  else
  {
    *(this + 10) = v7;
  }

  *Slow = 0;
  *(Slow + 8) = 0;
  *(Slow + 16) = 1;
  *(Slow + 24) = v1;
  *(Slow + 32) = v3;
  *(Slow + 48) = 0;
  *(Slow + 56) = 0;
  *(Slow + 40) = 0;
  v10 = *(this + 22);
  v9 = (this + 176);
  *Slow = v10;
  *(Slow + 8) = v9;
  *(v10 + 8) = Slow;
  *v9 = Slow;
  *(v9 - 17) += v3;
  return 1;
}

uint64_t llvm::yaml::Scanner::scanStreamEnd(llvm::yaml::Scanner *this)
{
  if (*(this + 15))
  {
    v1 = *(this + 16) + 1;
    *(this + 15) = 0;
    *(this + 16) = v1;
  }

  if (!*(this + 17) && (*(this + 14) & 0x80000000) == 0)
  {
    v8 = this + 176;
    do
    {
      v9 = *(this + 5);
      *(this + 20) += 64;
      v10 = *(this + 10);
      Slow = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
      v12 = Slow + 64;
      if (v10)
      {
        v13 = v12 > *(this + 11);
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        v17 = this;
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 80, 64, 64, 3);
        this = v17;
      }

      else
      {
        *(this + 10) = v12;
      }

      *Slow = 0;
      *(Slow + 8) = 0;
      *(Slow + 16) = 8;
      *(Slow + 24) = v9;
      *(Slow + 32) = 1;
      *(Slow + 48) = 0;
      *(Slow + 56) = 0;
      *(Slow + 40) = 0;
      v14 = *(this + 22);
      *Slow = v14;
      *(Slow + 8) = v8;
      *(v14 + 8) = Slow;
      *(this + 22) = Slow;
      v15 = *(this + 50);
      v16 = *(*(this + 24) + 4 * v15 - 4);
      *(this + 50) = v15 - 1;
      *(this + 14) = v16;
    }

    while ((v16 & 0x80000000) == 0);
  }

  v2 = *(this + 10);
  *(this + 58) = 0;
  *(this + 73) = 0;
  v3 = *(this + 5);
  *(this + 20) += 64;
  if (v2 && (v4 = (v2 + 7) & 0xFFFFFFFFFFFFFFF8, v4 + 64 <= *(this + 11)))
  {
    *(this + 10) = v4 + 64;
  }

  else
  {
    v18 = this;
    v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 80, 64, 64, 3);
    this = v18;
  }

  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 2;
  *(v4 + 24) = v3;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  v6 = *(this + 22);
  v5 = (this + 176);
  *v4 = v6;
  *(v4 + 8) = v5;
  *(v6 + 8) = v4;
  *v5 = v4;
  return 1;
}

uint64_t llvm::yaml::Scanner::scanDirective(llvm::yaml::Scanner *this)
{
  if (!*(this + 17) && (*(this + 14) & 0x80000000) == 0)
  {
    do
    {
      v7 = *(this + 5);
      *(this + 20) += 64;
      v8 = *(this + 10);
      Slow = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
      v10 = Slow + 64;
      if (v8)
      {
        v11 = v10 > *(this + 11);
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 80, 64, 64, 3);
      }

      else
      {
        *(this + 10) = v10;
      }

      *Slow = 0;
      *(Slow + 8) = 0;
      *(Slow + 16) = 8;
      *(Slow + 24) = v7;
      *(Slow + 32) = 1;
      *(Slow + 48) = 0;
      *(Slow + 56) = 0;
      *(Slow + 40) = 0;
      v12 = *(this + 22);
      *Slow = v12;
      *(Slow + 8) = this + 176;
      *(v12 + 8) = Slow;
      *(this + 22) = Slow;
      v13 = *(this + 50);
      LODWORD(v12) = *(*(this + 24) + 4 * v13 - 4);
      *(this + 50) = v13 - 1;
      *(this + 14) = v12;
    }

    while ((v12 & 0x80000000) == 0);
  }

  *(this + 58) = 0;
  *(this + 73) = 0;
  v3 = *(this + 5);
  v2 = *(this + 6);
  v4 = v3;
  v5 = v3;
  if (v3 != v2)
  {
    v6 = *v3;
    if (v6 < 0)
    {
      v51 = "Cannot consume non-ascii characters";
      v52 = 259;
      if (v2 <= v3)
      {
        v14 = v2 - 1;
      }

      else
      {
        v14 = v3;
      }

      v15 = *(this + 42);
      if (v15)
      {
        v16 = std::generic_category();
        *v15 = 22;
        v15[1] = v16;
      }

      if ((*(this + 75) & 1) == 0)
      {
        llvm::SourceMgr::PrintMessage(*this, v14, 0, &v51, 0, 0, 0, 0, *(this + 76));
      }

      *(this + 75) = 1;
      v5 = *(this + 5);
      v4 = *(this + 6);
    }

    else if (v6 == 37)
    {
      v5 = (v3 + 1);
      *(this + 5) = v3 + 1;
      ++*(this + 15);
      v4 = v2;
    }

    else
    {
      v4 = *(this + 6);
      v5 = *(this + 5);
    }
  }

  v17 = v5;
  while (1)
  {
    v19 = v17;
    if (v4 == v17)
    {
      v18 = v4;
      *(this + 5) = v17;
      goto LABEL_47;
    }

    v20 = *v17;
    if (v20 == 9 || v20 == 32)
    {
      break;
    }

    if ((v20 - 127) >= 0xFFFFFFA1)
    {
      ++v17;
    }

    else
    {
      if ((v20 & 0x80) == 0)
      {
        break;
      }

      v21 = decodeUTF8(v17, v4 - v17);
      if (!HIDWORD(v21))
      {
        break;
      }

      if (v21 == 65279)
      {
        break;
      }

      v17 += HIDWORD(v21);
      if ((v21 - 1114112) >> 20 != 4095 && (v21 - 65534) <= 0xFFFFE001 && v21 != 133 && (v21 - 55296) < 0xFFFF28A0)
      {
        break;
      }
    }

    v18 = v19;
    if (v17 == v19)
    {
      goto LABEL_39;
    }
  }

  v18 = v19;
  v17 = v19;
LABEL_39:
  *(this + 5) = v17;
  if (v4 != v17)
  {
    while (1)
    {
      v22 = *v17;
      v23 = v22 == 32 || v22 == 9;
      if (!v23)
      {
        break;
      }

      if (++v17 == v4)
      {
        v17 = v4;
        break;
      }
    }
  }

LABEL_47:
  v24 = v18 - v5;
  *(this + 5) = v17;
  if (v24 == 3)
  {
    if (*v5 == 16724 && v5[2] == 71)
    {
      while (v4 != v17)
      {
        v32 = *v17;
        if (v32 == 9 || v32 == 32)
        {
          break;
        }

        if ((v32 - 127) >= 0xFFFFFFA1)
        {
          v31 = v17 + 1;
        }

        else
        {
          if ((v32 & 0x80) == 0)
          {
            break;
          }

          v33 = decodeUTF8(v17, v4 - v17);
          if (!HIDWORD(v33))
          {
            break;
          }

          if (v33 == 65279)
          {
            break;
          }

          v31 = &v17[HIDWORD(v33)];
          if ((v33 - 1114112) >> 20 != 4095 && (v33 - 65534) <= 0xFFFFE001 && v33 != 133 && (v33 - 55296) < 0xFFFF28A0)
          {
            break;
          }
        }

        v23 = v31 == v17;
        v17 = v31;
        if (v23)
        {
          goto LABEL_86;
        }
      }

      v31 = v17;
LABEL_86:
      *(this + 5) = v31;
      if (v4 != v31)
      {
        while (1)
        {
          v34 = *v31;
          if (v34 != 32 && v34 != 9)
          {
            break;
          }

          if (++v31 == v4)
          {
            v31 = v4;
            break;
          }
        }
      }

      *(this + 5) = v31;
      while (1)
      {
        v37 = v31;
        if (v4 == v31)
        {
          break;
        }

        v38 = *v31;
        if (v38 == 9 || v38 == 32)
        {
LABEL_108:
          v36 = v37;
          goto LABEL_117;
        }

        if ((v38 - 127) >= 0xFFFFFFA1)
        {
          ++v31;
        }

        else
        {
          if ((v38 & 0x80) == 0)
          {
            goto LABEL_108;
          }

          v39 = decodeUTF8(v31, v4 - v31);
          if (!HIDWORD(v39))
          {
            goto LABEL_108;
          }

          if (v39 == 65279)
          {
            goto LABEL_108;
          }

          v31 = &v37[HIDWORD(v39)];
          if ((v39 - 1114112) >> 20 != 4095 && (v39 - 65534) <= 0xFFFFE001 && v39 != 133 && (v39 - 55296) < 0xFFFF28A0)
          {
            goto LABEL_108;
          }
        }

        v36 = v37;
        if (v31 == v37)
        {
          goto LABEL_118;
        }
      }

      v36 = v4;
LABEL_117:
      v31 = v37;
LABEL_118:
      v46 = *(this + 10);
      *(this + 5) = v31;
      v41 = v36 - v3;
      *(this + 20) += 64;
      v42 = (v46 + 7) & 0xFFFFFFFFFFFFFFF8;
      v47 = v42 + 64;
      if (v46)
      {
        v48 = v47 > *(this + 11);
      }

      else
      {
        v48 = 1;
      }

      if (v48)
      {
        v42 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 80, 64, 64, 3);
      }

      else
      {
        *(this + 10) = v47;
      }

      v45 = 4;
      goto LABEL_124;
    }

    return 0;
  }

  if (v24 != 4 || *v5 != 1280131417)
  {
    return 0;
  }

  while (1)
  {
    v26 = v17;
    if (v4 == v17)
    {
      break;
    }

    v27 = *v17;
    if (v27 == 9 || v27 == 32)
    {
LABEL_64:
      v25 = v26;
      goto LABEL_110;
    }

    if ((v27 - 127) >= 0xFFFFFFA1)
    {
      ++v17;
    }

    else
    {
      if ((v27 & 0x80) == 0)
      {
        goto LABEL_64;
      }

      v28 = decodeUTF8(v17, v4 - v17);
      if (!HIDWORD(v28))
      {
        goto LABEL_64;
      }

      if (v28 == 65279)
      {
        goto LABEL_64;
      }

      v17 += HIDWORD(v28);
      if ((v28 - 1114112) >> 20 != 4095 && (v28 - 65534) <= 0xFFFFE001 && v28 != 133 && (v28 - 55296) < 0xFFFF28A0)
      {
        goto LABEL_64;
      }
    }

    v25 = v26;
    if (v17 == v26)
    {
      goto LABEL_111;
    }
  }

  v25 = v4;
LABEL_110:
  v17 = v26;
LABEL_111:
  v40 = *(this + 10);
  *(this + 5) = v17;
  v41 = v25 - v3;
  *(this + 20) += 64;
  v42 = (v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = v42 + 64;
  if (v40)
  {
    v44 = v43 > *(this + 11);
  }

  else
  {
    v44 = 1;
  }

  if (v44)
  {
    v45 = 3;
    v42 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 80, 64, 64, 3);
  }

  else
  {
    *(this + 10) = v43;
    v45 = 3;
  }

LABEL_124:
  *v42 = 0;
  *(v42 + 8) = 0;
  *(v42 + 16) = v45;
  *(v42 + 24) = v3;
  *(v42 + 32) = v41;
  *(v42 + 48) = 0;
  *(v42 + 56) = 0;
  *(v42 + 40) = 0;
  v50 = *(this + 22);
  v49 = (this + 176);
  *v42 = v50;
  *(v42 + 8) = v49;
  *(v50 + 8) = v42;
  *v49 = v42;
  return 1;
}

uint64_t llvm::yaml::Scanner::scanDocumentIndicator(llvm::yaml::Scanner *this, uint64_t a2)
{
  if (!*(this + 17) && (*(this + 14) & 0x80000000) == 0)
  {
    v9 = this + 176;
    do
    {
      v10 = *(this + 5);
      *(this + 20) += 64;
      v11 = *(this + 10);
      v12 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
      v13 = v12 + 64;
      if (v11)
      {
        v14 = v13 > *(this + 11);
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        v18 = this;
        v19 = a2;
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 80, 64, 64, 3);
        a2 = v19;
        v12 = Slow;
        this = v18;
      }

      else
      {
        *(this + 10) = v13;
      }

      *v12 = 0;
      *(v12 + 8) = 0;
      *(v12 + 16) = 8;
      *(v12 + 24) = v10;
      *(v12 + 32) = 1;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 40) = 0;
      v15 = *(this + 22);
      *v12 = v15;
      *(v12 + 8) = v9;
      *(v15 + 8) = v12;
      *(this + 22) = v12;
      v16 = *(this + 50);
      v17 = *(*(this + 24) + 4 * v16 - 4);
      *(this + 50) = v16 - 1;
      *(this + 14) = v17;
    }

    while ((v17 & 0x80000000) == 0);
  }

  v2 = *(this + 10);
  *(this + 58) = 0;
  *(this + 73) = 0;
  v3 = *(this + 5);
  *(this + 5) = v3 + 3;
  *(this + 15) += 3;
  *(this + 20) += 64;
  if (v2 && (v4 = (v2 + 7) & 0xFFFFFFFFFFFFFFF8, v4 + 64 <= *(this + 11)))
  {
    *(this + 10) = v4 + 64;
  }

  else
  {
    v21 = this;
    v22 = a2;
    v23 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 80, 64, 64, 3);
    LODWORD(a2) = v22;
    v4 = v23;
    this = v21;
  }

  if (a2)
  {
    v5 = 5;
  }

  else
  {
    v5 = 6;
  }

  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = v5;
  *(v4 + 24) = v3;
  *(v4 + 32) = 3;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 40) = 0;
  v7 = *(this + 22);
  v6 = (this + 176);
  *v4 = v7;
  *(v4 + 8) = v6;
  *(v7 + 8) = v4;
  *v6 = v4;
  return 1;
}

uint64_t llvm::yaml::Scanner::scanFlowCollectionStart(llvm::yaml::Scanner *this, int a2)
{
  if (a2)
  {
    v2 = 12;
  }

  else
  {
    v2 = 14;
  }

  v3 = *(this + 10);
  v4 = *(this + 5);
  *(this + 5) = v4 + 1;
  ++*(this + 15);
  *(this + 20) += 64;
  Slow = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = Slow + 64;
  if (v3)
  {
    v7 = v6 > *(this + 11);
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v15 = this;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 80, 64, 64, 3);
    this = v15;
  }

  else
  {
    *(this + 10) = v6;
  }

  *Slow = 0;
  *(Slow + 8) = 0;
  *(Slow + 16) = v2;
  *(Slow + 24) = v4;
  *(Slow + 32) = 1;
  *(Slow + 48) = 0;
  *(Slow + 56) = 0;
  *(Slow + 40) = 0;
  v8 = *(this + 22);
  *Slow = v8;
  *(Slow + 8) = this + 176;
  *(v8 + 8) = Slow;
  *(this + 22) = Slow;
  if (*(this + 73) == 1)
  {
    v9 = *(this + 15) - 1;
    *v16 = Slow;
    *&v16[8] = v9;
    v16[20] = 0;
    v10 = *(this + 28);
    *&v16[12] = *(this + 8);
    v11 = *(this + 58);
    if (v11 >= *(this + 59))
    {
      if (v10 > v16 || v10 + 24 * v11 <= v16)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v12 = v10 + 24 * *(this + 58);
    v13 = *v16;
    *(v12 + 16) = *&v16[16];
    *v12 = v13;
    ++*(this + 58);
  }

  *(this + 73) = 1;
  ++*(this + 17);
  return 1;
}

uint64_t llvm::yaml::Scanner::scanFlowCollectionEnd(llvm::yaml::Scanner *this, int a2)
{
  v2 = *(this + 58);
  if (v2 && *(*(this + 28) + 24 * v2 - 8) == *(this + 17))
  {
    *(this + 58) = v2 - 1;
  }

  v3 = *(this + 10);
  *(this + 73) = 256;
  if (a2)
  {
    v4 = 13;
  }

  else
  {
    v4 = 15;
  }

  v5 = *(this + 5);
  *(this + 5) = v5 + 1;
  ++*(this + 15);
  *(this + 20) += 64;
  if (v3 && (Slow = (v3 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 64 <= *(this + 11)))
  {
    *(this + 10) = Slow + 64;
  }

  else
  {
    v10 = this;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 80, 64, 64, 3);
    this = v10;
  }

  *Slow = 0;
  *(Slow + 8) = 0;
  *(Slow + 16) = v4;
  *(Slow + 24) = v5;
  *(Slow + 32) = 1;
  *(Slow + 48) = 0;
  *(Slow + 56) = 0;
  *(Slow + 40) = 0;
  v7 = *(this + 22);
  *Slow = v7;
  *(Slow + 8) = this + 176;
  *(v7 + 8) = Slow;
  *(this + 22) = Slow;
  v8 = *(this + 17);
  if (v8)
  {
    *(this + 17) = v8 - 1;
  }

  return 1;
}

uint64_t llvm::yaml::Scanner::scanFlowEntry(llvm::yaml::Scanner *this)
{
  v1 = *(this + 58);
  if (v1 && *(*(this + 28) + 24 * v1 - 8) == *(this + 17))
  {
    *(this + 58) = v1 - 1;
  }

  v2 = *(this + 10);
  *(this + 73) = 1;
  v3 = *(this + 5);
  *(this + 5) = v3 + 1;
  ++*(this + 15);
  *(this + 20) += 64;
  if (v2 && (Slow = (v2 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 64 <= *(this + 11)))
  {
    *(this + 10) = Slow + 64;
  }

  else
  {
    v8 = this;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 80, 64, 64, 3);
    this = v8;
  }

  *Slow = 0;
  *(Slow + 8) = 0;
  *(Slow + 16) = 11;
  *(Slow + 24) = v3;
  *(Slow + 32) = 1;
  *(Slow + 48) = 0;
  *(Slow + 56) = 0;
  *(Slow + 40) = 0;
  v6 = *(this + 22);
  v5 = (this + 176);
  *Slow = v6;
  *(Slow + 8) = v5;
  *(v6 + 8) = Slow;
  *v5 = Slow;
  return 1;
}

uint64_t llvm::yaml::Scanner::scanBlockEntry(llvm::yaml::Scanner *this)
{
  v2 = (this + 176);
  llvm::yaml::Scanner::rollIndent(this, *(this + 15), 9, this + 22);
  v3 = *(this + 58);
  if (v3 && *(*(this + 28) + 24 * v3 - 8) == *(this + 17))
  {
    *(this + 58) = v3 - 1;
  }

  *(this + 73) = 1;
  v4 = *(this + 5);
  *(this + 5) = v4 + 1;
  ++*(this + 15);
  *(this + 20) += 64;
  v5 = *(this + 10);
  if (v5 && (Slow = (v5 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 64 <= *(this + 11)))
  {
    *(this + 10) = Slow + 64;
  }

  else
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 80, 64, 64, 3);
  }

  *Slow = 0;
  *(Slow + 8) = 0;
  *(Slow + 16) = 7;
  *(Slow + 24) = v4;
  *(Slow + 32) = 1;
  *(Slow + 48) = 0;
  *(Slow + 56) = 0;
  *(Slow + 40) = 0;
  v7 = *v2;
  *Slow = *v2;
  *(Slow + 8) = v2;
  *(v7 + 8) = Slow;
  *v2 = Slow;
  return 1;
}

uint64_t llvm::yaml::Scanner::scanKey(llvm::yaml::Scanner *this)
{
  v2 = *(this + 17);
  if (!v2)
  {
    llvm::yaml::Scanner::rollIndent(this, *(this + 15), 10, this + 22);
    v2 = *(this + 17);
  }

  v3 = *(this + 58);
  if (v3 && *(*(this + 28) + 24 * v3 - 8) == v2)
  {
    *(this + 58) = v3 - 1;
  }

  v4 = v2 == 0;
  v5 = (this + 80);
  v6 = *(this + 10);
  v7 = v4;
  *(this + 73) = v7;
  *(this + 74) = 0;
  v8 = *(this + 5);
  *(this + 5) = v8 + 1;
  ++*(this + 15);
  *(this + 20) += 64;
  if (v6 && (Slow = (v6 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 64 <= *(this + 11)))
  {
    *v5 = Slow + 64;
  }

  else
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v5, 64, 64, 3);
  }

  *Slow = 0;
  *(Slow + 8) = 0;
  *(Slow + 16) = 16;
  *(Slow + 24) = v8;
  *(Slow + 32) = 1;
  *(Slow + 48) = 0;
  *(Slow + 56) = 0;
  *(Slow + 40) = 0;
  v11 = *(this + 22);
  v10 = (this + 176);
  *Slow = v11;
  *(Slow + 8) = v10;
  *(v11 + 8) = Slow;
  *v10 = Slow;
  return 1;
}

uint64_t llvm::yaml::Scanner::scanValue(llvm::yaml::Scanner *this)
{
  v2 = *(this + 58);
  if (v2)
  {
    v3 = *(this + 28) + 24 * v2;
    v4 = *(v3 - 24);
    v5 = *(v3 - 16);
    *(this + 58) = v2 - 1;
    *&v23[4] = *(v4 + 24);
    v6 = (this + 184);
    v7 = (this + 176);
    do
    {
      v8 = *v6;
      v6 = (*v6 + 1);
    }

    while (v8 != v7 && v8 != v4);
    if (v8 == v7)
    {
      v14 = 0;
      *(this + 75) = 1;
      return v14;
    }

    *(this + 20) += 64;
    v10 = *(this + 10);
    if (v10 && (v11 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8, v11 + 64 <= *(this + 11)))
    {
      *(this + 10) = v11 + 64;
    }

    else
    {
      v21 = v5;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 80, 64, 64, 3);
      v5 = v21;
      v11 = Slow;
    }

    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 16;
    *(v11 + 20) = *v23;
    *(v11 + 36) = *&v23[16];
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 40) = 0;
    v12 = *v8;
    *v11 = *v8;
    *(v11 + 8) = v8;
    *(v12 + 8) = v11;
    *v8 = v11;
    llvm::yaml::Scanner::rollIndent(this, v5, 10, v11);
    *(this + 73) = 0;
  }

  else
  {
    if (*(this + 17))
    {
      v13 = 0;
    }

    else
    {
      llvm::yaml::Scanner::rollIndent(this, *(this + 15), 10, this + 22);
      v13 = *(this + 17) == 0;
    }

    *(this + 73) = v13;
  }

  v15 = *(this + 10);
  *(this + 74) = 0;
  v16 = *(this + 5);
  *(this + 5) = v16 + 1;
  ++*(this + 15);
  *(this + 20) += 64;
  if (v15 && (v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8, v17 + 64 <= *(this + 11)))
  {
    *(this + 10) = v17 + 64;
  }

  else
  {
    v17 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 80, 64, 64, 3);
  }

  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 17;
  v14 = 1;
  *(v17 + 24) = v16;
  *(v17 + 32) = 1;
  *(v17 + 48) = 0;
  *(v17 + 56) = 0;
  *(v17 + 40) = 0;
  v19 = *(this + 22);
  v18 = (this + 176);
  *v17 = v19;
  *(v17 + 8) = v18;
  *(v19 + 8) = v17;
  *v18 = v17;
  return v14;
}

BOOL llvm::yaml::Scanner::scanFlowScalar(llvm::yaml::Scanner *this, int a2)
{
  v3 = *(this + 5);
  v4 = *(this + 15);
  if (!a2)
  {
    i = (v3 + 1);
    *(this + 5) = v3 + 1;
    v7 = v4 + 1;
    *(this + 15) = v4 + 1;
    v5 = *(this + 6);
    if (v3 + 1 == v5)
    {
      goto LABEL_37;
    }

    while (1)
    {
      v9 = i + 1;
      v10 = *i;
      if ((i + 1) >= v5)
      {
        if (v10 == 39)
        {
          goto LABEL_37;
        }
      }

      else if (v10 == 39)
      {
        if (*v9 != 39)
        {
          goto LABEL_37;
        }

        i += 2;
        *(this + 5) = i;
        v7 += 2;
        *(this + 15) = v7;
        goto LABEL_12;
      }

      if (v10 == 9 || (v10 - 127) > 0xFFFFFFA0)
      {
        v11 = i + 1;
      }

      else if ((v10 & 0x80) == 0 || (v12 = decodeUTF8(i, v5 - i), !HIDWORD(v12)) || v12 == 65279 || (v11 = &i[HIDWORD(v12)], (v12 - 1114112) >> 20 != 4095) && (v12 - 65534) <= 0xFFFFE001 && v12 != 133 && (v12 - 55296) <= 0xFFFF289F)
      {
        if (v10 != 10)
        {
          if (v10 != 13)
          {
            goto LABEL_37;
          }

          if (v9 != v5 && i[1] == 10)
          {
            v9 = i + 2;
          }
        }

        v7 = 0;
        *(this + 5) = v9;
        v8 = *(this + 16) + 1;
        *(this + 15) = 0;
        *(this + 16) = v8;
        i = v9;
        goto LABEL_12;
      }

      if (v11 == v5)
      {
        goto LABEL_37;
      }

      *(this + 5) = v11;
      *(this + 15) = ++v7;
      i = v11;
LABEL_12:
      if (i == v5)
      {
        goto LABEL_37;
      }
    }
  }

  v5 = *(this + 6);
  for (i = (v3 + 1); ; ++i)
  {
    *(this + 5) = i;
    if (i == v5 || *i == 34 && (*(i - 1) != 92 || !wasEscaped((v3 + 1), i)))
    {
      break;
    }
  }

  v7 = v4;
LABEL_37:
  if (i == v5)
  {
    *v23 = "Expected quote at end of scalar";
    v24 = 259;
    v20 = *(this + 42);
    if (v20)
    {
      v21 = std::generic_category();
      *v20 = 22;
      v20[1] = v21;
    }

    if ((*(this + 75) & 1) == 0)
    {
      llvm::SourceMgr::PrintMessage(*this, (v5 - 1), 0, v23, 0, 0, 0, 0, *(this + 76));
    }

    *(this + 75) = 1;
  }

  else
  {
    v13 = *(this + 10);
    *(this + 5) = i + 1;
    *(this + 15) = v7 + 1;
    *(this + 20) += 64;
    if (v13 && (Slow = (v13 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 64 <= *(this + 11)))
    {
      *(this + 10) = Slow + 64;
    }

    else
    {
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 80, 64, 64, 3);
    }

    *Slow = 0;
    *(Slow + 8) = 0;
    *(Slow + 16) = 18;
    *(Slow + 24) = v3;
    *(Slow + 32) = &i[-v3 + 1];
    *(Slow + 48) = 0;
    *(Slow + 56) = 0;
    *(Slow + 40) = 0;
    v15 = *(this + 22);
    *Slow = v15;
    *(Slow + 8) = this + 176;
    *(v15 + 8) = Slow;
    *(this + 22) = Slow;
    if (*(this + 73) == 1)
    {
      *v23 = Slow;
      *&v23[8] = v4;
      v23[20] = 0;
      v16 = *(this + 28);
      *&v23[12] = *(this + 8);
      v17 = *(this + 58);
      if (v17 >= *(this + 59))
      {
        if (v16 > v23 || v16 + 24 * v17 <= v23)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v18 = v16 + 24 * *(this + 58);
      v19 = *v23;
      *(v18 + 16) = *&v23[16];
      *v18 = v19;
      ++*(this + 58);
    }

    *(this + 73) = 256;
  }

  return i != v5;
}

BOOL wasEscaped(const char *a1, const char *a2)
{
  for (i = a2 - 1; i >= a1; --i)
  {
    if (*i != 92)
    {
      break;
    }
  }

  return ((a2 - 1 - i) & 0x8000000000000001) == 1;
}

uint64_t llvm::yaml::Scanner::scanPlainScalar(llvm::yaml::Scanner *this)
{
  v2 = *(this + 5);
  v3 = *(this + 6);
  if (v2 == v3)
  {
    goto LABEL_82;
  }

  v4 = 0;
  v37 = *(this + 15);
  v5 = *(this + 14) + 1;
  v6 = *(this + 5);
LABEL_4:
  v8 = *v6;
  if (v8 == 35)
  {
    v7 = v6;
    goto LABEL_73;
  }

  v7 = v6;
  if (v6 == v3)
  {
    goto LABEL_37;
  }

  if (v8 > 0x3A)
  {
    goto LABEL_31;
  }

LABEL_7:
  if (((1 << v8) & 0x400000100002600) == 0)
  {
    while (1)
    {
LABEL_31:
      if (*(this + 17))
      {
        *v38 = v6;
        *&v38[8] = 1;
        first_of = llvm::StringRef::find_first_of(v38, ",[]{}", 5, 0);
        v7 = *(this + 5);
        v3 = *(this + 6);
        if (first_of != -1)
        {
          if (*v7 == 58)
          {
            goto LABEL_9;
          }

          goto LABEL_37;
        }
      }

      else
      {
        v7 = v6;
      }

LABEL_17:
      if (v3 == v7)
      {
        goto LABEL_37;
      }

      v14 = *v7;
      if (v14 == 9 || (v14 - 127) >= 0xFFFFFFA1)
      {
        v6 = v7 + 1;
      }

      else
      {
        if ((v14 & 0x80) == 0)
        {
          goto LABEL_37;
        }

        v15 = decodeUTF8(v7, v3 - v7);
        if (!HIDWORD(v15))
        {
          goto LABEL_37;
        }

        if (v15 == 65279)
        {
          goto LABEL_37;
        }

        v6 = &v7[HIDWORD(v15)];
        if ((v15 - 1114112) >> 20 != 4095 && (v15 - 65534) <= 0xFFFFE001 && v15 != 133 && (v15 - 55296) < 0xFFFF28A0)
        {
          goto LABEL_37;
        }
      }

      *(this + 5) = v6;
      ++*(this + 15);
      if (v6 == v3)
      {
        v7 = v6;
        goto LABEL_37;
      }

      v8 = *v6;
      if (v8 <= 0x3A)
      {
        goto LABEL_7;
      }
    }
  }

  v7 = v6;
  if (v8 == 58)
  {
LABEL_9:
    if (v3 != v7 + 1)
    {
      v9 = v7[1];
      v10 = v9 > 0x20;
      v11 = (1 << v9) & 0x100002600;
      if (v10 || v11 == 0)
      {
        if (!*(this + 17))
        {
          goto LABEL_17;
        }

        *v38 = v7 + 1;
        *&v38[8] = 1;
        v13 = llvm::StringRef::find_first_of(v38, ",[]{}", 5, 0);
        v7 = *(this + 5);
        v3 = *(this + 6);
        if (v13 == -1)
        {
          goto LABEL_17;
        }
      }
    }
  }

LABEL_37:
  if (v3 == v7)
  {
    v7 = v3;
    if (v2 != v3)
    {
LABEL_74:
      v30 = *(this + 10);
      *(this + 20) += 64;
      if (v30 && (Slow = (v30 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 64 <= *(this + 11)))
      {
        *(this + 10) = Slow + 64;
      }

      else
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 80, 64, 64, 3);
      }

      *Slow = 0;
      *(Slow + 8) = 0;
      *(Slow + 16) = 18;
      *(Slow + 24) = v2;
      *(Slow + 32) = v7 - v2;
      *(Slow + 48) = 0;
      *(Slow + 56) = 0;
      *(Slow + 40) = 0;
      v32 = *(this + 22);
      *Slow = v32;
      *(Slow + 8) = this + 176;
      *(v32 + 8) = Slow;
      *(this + 22) = Slow;
      if (*(this + 73) == 1)
      {
        *v38 = Slow;
        *&v38[8] = v37;
        v38[20] = 0;
        v33 = *(this + 28);
        *&v38[12] = *(this + 8);
        v34 = *(this + 58);
        if (v34 >= *(this + 59))
        {
          if (v33 <= v38 && v33 + 24 * v34 > v38)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v35 = v33 + 24 * *(this + 58);
        v36 = *v38;
        *(v35 + 16) = *&v38[16];
        *v35 = v36;
        ++*(this + 58);
      }

      *(this + 73) = 0;
      return 1;
    }

LABEL_82:
    *v38 = "Got empty plain scalar";
    v39 = 259;
    if (v3 <= v2)
    {
      v26 = (v3 - 1);
    }

    else
    {
      v26 = v2;
    }

    v27 = *(this + 42);
    if (v27)
    {
      goto LABEL_68;
    }

    goto LABEL_69;
  }

  v17 = *v7;
  v10 = v17 > 0x20;
  v18 = (1 << v17) & 0x100002600;
  if (v10 || v18 == 0)
  {
LABEL_73:
    if (v2 != v7)
    {
      goto LABEL_74;
    }

    goto LABEL_82;
  }

  v6 = v7;
  while (1)
  {
    while (1)
    {
      v23 = *v6;
      if (v23 > 0xC)
      {
        break;
      }

      if (v23 == 9)
      {
        goto LABEL_55;
      }

      if (v23 != 10)
      {
        goto LABEL_61;
      }

      ++v6;
LABEL_46:
      v22 = *(this + 16) + 1;
      *(this + 15) = 0;
      *(this + 16) = v22;
      v4 = 1;
      if (v3 == v6)
      {
        goto LABEL_61;
      }
    }

    if (v23 == 13)
    {
      v20 = v6 + 1;
      if (v6 + 1 == v3)
      {
        ++v6;
      }

      else
      {
        v21 = v6[1];
        v6 += 2;
        if (v21 != 10)
        {
          v6 = v20;
        }
      }

      goto LABEL_46;
    }

    if (v23 != 32)
    {
      goto LABEL_61;
    }

LABEL_55:
    v24 = *(this + 15);
    if (v4)
    {
      if (v24 < v5 && v23 == 9)
      {
        break;
      }
    }

    ++v6;
    *(this + 15) = v24 + 1;
    if (v3 == v6)
    {
LABEL_61:
      if (!*(this + 17) && *(this + 15) < v5)
      {
        goto LABEL_73;
      }

      *(this + 5) = v6;
      v7 = v3;
      if (v6 == v3)
      {
        goto LABEL_73;
      }

      goto LABEL_4;
    }
  }

  *v38 = "Found invalid tab character in indentation";
  v39 = 259;
  if (v3 <= v6)
  {
    v26 = (v3 - 1);
  }

  else
  {
    v26 = v6;
  }

  v27 = *(this + 42);
  if (!v27)
  {
    goto LABEL_69;
  }

LABEL_68:
  v28 = std::generic_category();
  *v27 = 22;
  v27[1] = v28;
LABEL_69:
  if ((*(this + 75) & 1) == 0)
  {
    llvm::SourceMgr::PrintMessage(*this, v26, 0, v38, 0, 0, 0, 0, *(this + 76));
  }

  result = 0;
  *(this + 75) = 1;
  return result;
}

uint64_t llvm::yaml::Scanner::scanAliasOrAnchor(llvm::yaml::Scanner *this, int a2)
{
  v3 = *(this + 15);
  v4 = *(this + 5);
  v5 = *(this + 6);
  *(this + 5) = v4 + 1;
  *(this + 15) = v3 + 1;
  if ((v4 + 1) == v5)
  {
    goto LABEL_36;
  }

  v6 = v3 + 2;
  v7 = (v4 + 1);
  while (1)
  {
    v9 = *v7;
    if (v9 <= 0x3A && ((1 << v9) & 0x400100100000200) != 0)
    {
      break;
    }

    if (v9 - 91 <= 0x22 && ((1 << (v9 - 91)) & 0x500000005) != 0)
    {
      break;
    }

    if (v9 - 127 >= 0xFFFFFFA1)
    {
      v8 = v7 + 1;
    }

    else
    {
      if ((v9 & 0x80) == 0)
      {
        break;
      }

      v12 = decodeUTF8(v7, v5 - v7);
      if (!HIDWORD(v12))
      {
        break;
      }

      if (v12 == 65279)
      {
        break;
      }

      v8 = &v7[HIDWORD(v12)];
      if ((v12 - 1114112) >> 20 != 4095 && (v12 - 65534) <= 0xFFFFE001 && v12 != 133 && (v12 - 55296) < 0xFFFF28A0)
      {
        break;
      }
    }

    *(this + 5) = v8;
    *(this + 15) = v6++;
    v7 = v8;
    if (v8 == v5)
    {
      v7 = v5;
      break;
    }
  }

  if ((v4 + 1) == v7)
  {
LABEL_36:
    *v26 = "Got empty alias or anchor";
    v27 = 259;
    if (v5 <= v4)
    {
      v22 = v5 - 1;
    }

    else
    {
      v22 = v4;
    }

    v23 = *(this + 42);
    if (v23)
    {
      v24 = std::generic_category();
      *v23 = 22;
      v23[1] = v24;
    }

    if ((*(this + 75) & 1) == 0)
    {
      llvm::SourceMgr::PrintMessage(*this, v22, 0, v26, 0, 0, 0, 0, *(this + 76));
    }

    result = 0;
    *(this + 75) = 1;
  }

  else
  {
    if (a2)
    {
      v13 = 20;
    }

    else
    {
      v13 = 21;
    }

    v14 = *(this + 10);
    *(this + 20) += 64;
    if (v14 && (Slow = (v14 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 64 <= *(this + 11)))
    {
      *(this + 10) = Slow + 64;
    }

    else
    {
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 80, 64, 64, 3);
    }

    *Slow = 0;
    *(Slow + 8) = 0;
    *(Slow + 16) = v13;
    *(Slow + 24) = v4;
    *(Slow + 32) = &v7[-v4];
    *(Slow + 48) = 0;
    *(Slow + 56) = 0;
    *(Slow + 40) = 0;
    v16 = *(this + 22);
    *Slow = v16;
    *(Slow + 8) = this + 176;
    *(v16 + 8) = Slow;
    *(this + 22) = Slow;
    if (*(this + 73) == 1)
    {
      *v26 = Slow;
      *&v26[8] = v3;
      v26[20] = 0;
      v17 = *(this + 28);
      *&v26[12] = *(this + 8);
      v18 = *(this + 58);
      if (v18 >= *(this + 59))
      {
        if (v17 <= v26 && v17 + 24 * v18 > v26)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v19 = v17 + 24 * *(this + 58);
      v20 = *v26;
      *(v19 + 16) = *&v26[16];
      *v19 = v20;
      ++*(this + 58);
    }

    *(this + 73) = 0;
    return 1;
  }

  return result;
}

uint64_t llvm::yaml::Scanner::scanBlockScalarIndicators(llvm::yaml::Scanner *this, char *a2, char *a3, unsigned int *a4, BOOL *a5)
{
  v5 = *(this + 5);
  if (v5 != *(this + 6) && ((v6 = *v5, v6 == 124) || v6 == 62))
  {
    *(this + 5) = v5 + 1;
    ++*(this + 15);
    *a2 = v6;
    v7 = a3;
    v8 = a4;
    v9 = a5;
  }

  else
  {
    *a2 = 32;
    v7 = a3;
    v8 = a4;
    v9 = a5;
  }

  return llvm::yaml::Scanner::scanBlockScalarHeader(this, v7, v8, v9);
}

uint64_t llvm::yaml::Scanner::scanBlockStyleIndicator(llvm::yaml::Scanner *this)
{
  v1 = *(this + 5);
  if (v1 == *(this + 6))
  {
    return 32;
  }

  v2 = *v1;
  if (v2 != 124 && v2 != 62)
  {
    return 32;
  }

  *(this + 5) = v1 + 1;
  ++*(this + 15);
  return v2;
}

uint64_t llvm::yaml::Scanner::scanBlockScalarHeader(llvm::yaml::Scanner *this, char *a2, unsigned int *a3, BOOL *a4)
{
  v6 = *(this + 5);
  if (v6 != *(this + 6) && ((v7 = *v6, v7 == 45) || v7 == 43))
  {
    *(this + 5) = v6 + 1;
    ++*(this + 15);
    *a2 = v7;
    v8 = *(this + 5);
    v9 = *(this + 6);
    if (v8 == v9)
    {
LABEL_21:
      *a3 = 0;
      if (*a2 == 32)
      {
        goto LABEL_22;
      }

LABEL_9:
      if (v9 != v8)
      {
        goto LABEL_10;
      }

      goto LABEL_28;
    }
  }

  else
  {
    *a2 = 32;
    v8 = *(this + 5);
    v9 = *(this + 6);
    if (v8 == v9)
    {
      goto LABEL_21;
    }
  }

  v10 = *v8;
  if ((v10 - 49) > 8)
  {
    goto LABEL_21;
  }

  *(this + 5) = ++v8;
  ++*(this + 15);
  *a3 = (v10 - 48);
  if (*a2 != 32)
  {
    goto LABEL_9;
  }

LABEL_22:
  if (v8 != v9)
  {
    v18 = *v8;
    if (v18 == 45 || v18 == 43)
    {
      *(this + 5) = v8 + 1;
      ++*(this + 15);
      *a2 = v18;
      v8 = *(this + 5);
      v9 = *(this + 6);
      if (v9 != v8)
      {
        goto LABEL_10;
      }

      goto LABEL_28;
    }
  }

  *a2 = 32;
  v8 = *(this + 5);
  v9 = *(this + 6);
  if (v9 == v8)
  {
LABEL_28:
    *(this + 5) = v8;
    goto LABEL_44;
  }

LABEL_10:
  while (1)
  {
    v11 = *v8;
    if (v11 != 32 && v11 != 9)
    {
      break;
    }

    if (++v8 == v9)
    {
      *(this + 5) = v9;
      goto LABEL_17;
    }
  }

  *(this + 5) = v8;
  if (*v8 == 35)
  {
    v19 = 35;
LABEL_31:
    if ((v19 - 127) >= 0xFFFFFFA1)
    {
      while (1)
      {
        v21 = v8 + 1;
LABEL_41:
        *(this + 5) = v21;
        ++*(this + 15);
        if (v9 == v21)
        {
          goto LABEL_17;
        }

        v19 = *v21;
        v8 = v21;
        if (v19 != 9)
        {
          goto LABEL_31;
        }
      }
    }

    if ((v19 & 0x80) != 0)
    {
      v20 = decodeUTF8(v8, v9 - v8);
      if (HIDWORD(v20))
      {
        if (v20 != 65279)
        {
          v21 = &v8[HIDWORD(v20)];
          if ((v20 - 1114112) >> 20 == 4095 || (v20 - 65534) > 0xFFFFE001 || v20 == 133 || (v20 - 55296) >= 0xFFFF28A0)
          {
            goto LABEL_41;
          }
        }
      }
    }
  }

LABEL_44:
  if (v8 == v9)
  {
LABEL_17:
    v13 = *(this + 10);
    *(this + 20) += 64;
    if (v13 && (Slow = (v13 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 64 <= *(this + 11)))
    {
      *(this + 10) = Slow + 64;
    }

    else
    {
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 80, 64, 64, 3);
    }

    *Slow = 0;
    *(Slow + 8) = 0;
    *(Slow + 16) = 19;
    *(Slow + 24) = v6;
    *(Slow + 32) = v9 - v6;
    *(Slow + 48) = 0;
    *(Slow + 56) = 0;
    *(Slow + 40) = 0;
    v16 = *(this + 22);
    v15 = (this + 176);
    *Slow = v16;
    *(Slow + 8) = v15;
    *(v16 + 8) = Slow;
    *v15 = Slow;
    result = 1;
    *a4 = 1;
    return result;
  }

  v22 = *v8;
  if (v22 == 10)
  {
    v23 = v8 + 1;
LABEL_52:
    v24 = *(this + 16) + 1;
    *(this + 15) = 0;
    *(this + 16) = v24;
    *(this + 5) = v23;
    return 1;
  }

  if (v22 == 13)
  {
    v23 = v8 + 1;
    if (v8 + 1 != v9 && v8[1] == 10)
    {
      v23 = v8 + 2;
    }

    goto LABEL_52;
  }

  v28 = "Expected a line break after block scalar header";
  v29 = 259;
  if (v9 <= v8)
  {
    v25 = v9 - 1;
  }

  else
  {
    v25 = v8;
  }

  v26 = *(this + 42);
  if (v26)
  {
    v27 = std::generic_category();
    *v26 = 22;
    v26[1] = v27;
  }

  if ((*(this + 75) & 1) == 0)
  {
    llvm::SourceMgr::PrintMessage(*this, v25, 0, &v28, 0, 0, 0, 0, *(this + 76));
  }

  result = 0;
  *(this + 75) = 1;
  return result;
}

uint64_t llvm::yaml::Scanner::scanBlockChompingIndicator(llvm::yaml::Scanner *this)
{
  v1 = *(this + 5);
  if (v1 == *(this + 6))
  {
    return 32;
  }

  v2 = *v1;
  if (v2 != 45 && v2 != 43)
  {
    return 32;
  }

  *(this + 5) = v1 + 1;
  ++*(this + 15);
  return v2;
}

uint64_t llvm::yaml::Scanner::scanBlockIndentationIndicator(llvm::yaml::Scanner *this)
{
  v1 = *(this + 5);
  if (v1 == *(this + 6))
  {
    return 0;
  }

  v2 = *v1;
  if ((v2 - 49) > 8)
  {
    return 0;
  }

  *(this + 5) = v1 + 1;
  ++*(this + 15);
  return (v2 - 48);
}

uint64_t llvm::yaml::Scanner::findBlockScalarIndent(llvm::yaml::Scanner *this, unsigned int *a2, uint64_t a3, unsigned int *a4, BOOL *a5)
{
  v5 = 0;
  v6 = 0;
  v8 = *(this + 5);
  v7 = *(this + 6);
  v9 = v7 + 1;
  while (2)
  {
    v10 = 0;
    do
    {
      if (v8 + v10 == v7)
      {
        *(this + 15) += v7 - v8;
        *(this + 5) = v7;
        goto LABEL_39;
      }

      v11 = *(v8 + v10++);
    }

    while (v11 == 32);
    v12 = *(this + 15) + v10 - 1;
    *(this + 15) = v12;
    *(this + 5) = v8 + v10 - 1;
    v13 = *(v8 + v10 - 1);
    if (v13 != 9 && (v13 - 127) <= 0xFFFFFFA0)
    {
      if ((v13 & 0x80) == 0 || (v30 = a2, v31 = this, v28 = a5, v29 = a4, v14 = a3, v27 = v9, v15 = decodeUTF8((v8 + v10 - 1), v9 - v8 - v10), v9 = v27, a5 = v28, a4 = v29, a2 = v30, a3 = v14, v16 = v15, this = v31, !HIDWORD(v16)) || v16 == 65279 || (v16 - 1114112) >> 20 != 4095 && (v16 - 65534) <= 0xFFFFE001 && v16 != 133 && (v16 - 55296) < 0xFFFF28A0)
      {
        if (v12 <= v6)
        {
          v17 = v5;
        }

        else
        {
          v17 = v8 + v10 - 1;
        }

        if (v12 <= v6)
        {
          v18 = v6;
        }

        else
        {
          v18 = v12;
        }

        v19 = v13 == 13 || v13 == 10;
        if (v19)
        {
          v5 = v17;
        }

        if (v19)
        {
          v6 = v18;
        }

        if (v13 == 10)
        {
          v8 += v10;
LABEL_37:
          v20 = *(this + 16) + 1;
          *(this + 15) = 0;
          *(this + 16) = v20;
          *(this + 5) = v8;
          ++*a4;
          continue;
        }

        if (v13 == 13)
        {
          if (v8 + v10 == v7)
          {
            v8 += v10;
          }

          else if (*(v8 + v10) == 10)
          {
            v8 += v10 + 1;
          }

          else
          {
            v8 += v10;
          }

          goto LABEL_37;
        }

        goto LABEL_39;
      }
    }

    break;
  }

  if (v12 <= a3)
  {
LABEL_39:
    result = 1;
    *a5 = 1;
    return result;
  }

  *a2 = v12;
  if (v6 <= v12)
  {
    return 1;
  }

  v32 = "Leading all-spaces line must be smaller than the block indent";
  v33 = 259;
  if (v7 <= v5)
  {
    v22 = (v7 - 1);
  }

  else
  {
    v22 = v5;
  }

  v23 = *(this + 42);
  if (v23)
  {
    v24 = this;
    v25 = std::generic_category();
    this = v24;
    *v23 = 22;
    v23[1] = v25;
  }

  if ((*(this + 75) & 1) == 0)
  {
    v26 = this;
    llvm::SourceMgr::PrintMessage(*this, v22, 0, &v32, 0, 0, 0, 0, *(this + 76));
    this = v26;
  }

  *(this + 75) = 1;
  return 0;
}

uint64_t llvm::yaml::Scanner::scanBlockScalarIndent(llvm::yaml::Scanner *this, unsigned int a2, unsigned int a3, BOOL *a4)
{
  v4 = *(this + 15);
  v5 = *(this + 5);
  v6 = *(this + 6);
  if (v4 < a2)
  {
    while (v5 != v6 && *v5 == 32)
    {
      *(this + 5) = ++v5;
      *(this + 15) = ++v4;
      if (a2 == v4)
      {
        v4 = a2;
        break;
      }
    }
  }

  if (v6 == v5)
  {
    return 1;
  }

  v7 = *v5;
  if (v7 != 9 && (v7 - 127) <= 0xFFFFFFA0)
  {
    if ((v7 & 0x80) == 0)
    {
      return 1;
    }

    v8 = a3;
    v9 = a2;
    v10 = a4;
    v11 = this;
    v12 = decodeUTF8(v5, v6 - v5);
    v13 = 1;
    if (!HIDWORD(v12))
    {
      return v13;
    }

    v14 = v12;
    if (v12 == 65279)
    {
      return v13;
    }

    this = v11;
    a4 = v10;
    a2 = v9;
    a3 = v8;
    if ((v14 - 1114112) >> 20 != 4095 && (v14 - 65534) <= 0xFFFFE001 && v14 != 133 && (v14 - 55296) < 0xFFFF28A0)
    {
      return 1;
    }
  }

  if (v4 <= a3)
  {
LABEL_19:
    v13 = 1;
    *a4 = 1;
    return v13;
  }

  if (v4 >= a2)
  {
    return 1;
  }

  if (v7 == 35)
  {
    goto LABEL_19;
  }

  v20 = "A text line is less indented than the block scalar";
  v21 = 259;
  if (v6 <= v5)
  {
    v5 = v6 - 1;
  }

  v16 = *(this + 42);
  if (v16)
  {
    v17 = this;
    v18 = std::generic_category();
    this = v17;
    *v16 = 22;
    v16[1] = v18;
  }

  if ((*(this + 75) & 1) == 0)
  {
    v19 = this;
    llvm::SourceMgr::PrintMessage(*this, v5, 0, &v20, 0, 0, 0, 0, *(this + 76));
    this = v19;
  }

  v13 = 0;
  *(this + 75) = 1;
  return v13;
}

uint64_t llvm::yaml::Scanner::scanBlockScalar(llvm::yaml::Scanner *this)
{
  v67[32] = *MEMORY[0x277D85DE8];
  v62 = 0;
  v2 = *(this + 5);
  if (v2 != *(this + 6) && ((v3 = *v2, v3 == 124) || v3 == 62))
  {
    *(this + 5) = v2 + 1;
    ++*(this + 15);
    v4 = v3 != 62;
  }

  else
  {
    v4 = 1;
  }

  v64 = 0;
  v63 = 0;
  v5 = llvm::yaml::Scanner::scanBlockScalarHeader(this, &v64, &v63, &v62);
  result = 0;
  if (v5)
  {
    if (v62)
    {
      return 1;
    }

    v7 = *(this + 5);
    v8 = *(this + 14);
    v9 = v8 & ~(v8 >> 31);
    v61 = 0;
    v10 = v63;
    if (v63)
    {
      v11 = 0;
      __src = v67;
      v66 = xmmword_25736B790;
      result = llvm::yaml::Scanner::scanBlockScalarIndent(this, v63, v9, &v62);
      if (result)
      {
        do
        {
LABEL_14:
          if (v62)
          {
            goto LABEL_75;
          }

          v15 = *(this + 5);
          v14 = *(this + 6);
          v16 = v15;
          while (1)
          {
            v17 = v16;
            v18 = v14 - v16;
            if (v14 == v16)
            {
              break;
            }

            v19 = *v16;
            if (v19 == 9 || (v19 - 127) >= 0xFFFFFFA1)
            {
              v16 = v17 + 1;
            }

            else if ((v19 & 0x80) == 0 || (v20 = decodeUTF8(v17, v18), !HIDWORD(v20)) || v20 == 65279 || (v16 = &v17[HIDWORD(v20)], (v20 - 1114112) >> 20 != 4095) && (v20 - 65534) <= 0xFFFFE001 && v20 != 133 && (v20 - 55296) < 0xFFFF28A0)
            {
LABEL_28:
              v21 = v17;
              goto LABEL_30;
            }

            if (v16 == v17)
            {
              goto LABEL_28;
            }
          }

          v21 = v14;
LABEL_30:
          *(this + 15) += v21 - v15;
          *(this + 5) = v17;
          if (v21 != v15)
          {
            if (v11)
            {
              v22 = v4;
            }

            else
            {
              v22 = 1;
            }

            v23 = v66;
            if ((v22 & 1) == 0 && v66)
            {
              v24 = 0;
              while (__src + v24 != v14)
              {
                v25 = *(__src + v24);
                v26 = v25 > 0x20;
                v27 = (1 << v25) & 0x100002600;
                if (v26 || v27 == 0)
                {
                  break;
                }

                if (v66 == ++v24)
                {
                  goto LABEL_56;
                }
              }

              if (!--v11)
              {
                v29 = v15;
                while (v29 != v14)
                {
                  v30 = *v29;
                  v26 = v30 > 0x20;
                  v31 = (1 << v30) & 0x100002600;
                  if (v26 || v31 == 0)
                  {
                    break;
                  }

                  if (++v29 == v21)
                  {
                    v33 = 10;
                    if ((v66 + 1) > *(&v66 + 1))
                    {
                      goto LABEL_53;
                    }

                    goto LABEL_55;
                  }
                }

                v33 = 32;
                if ((v66 + 1) > *(&v66 + 1))
                {
LABEL_53:
                  llvm::SmallVectorBase<unsigned long long>::grow_pod();
                }

LABEL_55:
                *(__src + v66) = v33;
                v23 = v66 + 1;
                *&v66 = v66 + 1;
              }
            }

LABEL_56:
            if (v23 + v11 > *(&v66 + 1))
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }

            if (v11)
            {
              memset(__src + v23, 10, v11);
              v23 = v66;
            }

            v34 = v23 + v11;
            *&v66 = v34;
            v35 = *(this + 5);
            if (*(&v66 + 1) < (v35 - v15 + v34))
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }

            if (v35 != v15)
            {
              memcpy(__src + v34, v15, v35 - v15);
              v34 = v66;
            }

            v11 = 0;
            *&v66 = v34 + v35 - v15;
            v17 = *(this + 5);
            v14 = *(this + 6);
          }

          if (v17 == v14)
          {
LABEL_75:
            v37 = v66;
            goto LABEL_76;
          }

          v36 = *v17;
          if (v36 == 10)
          {
            v12 = v17 + 1;
          }

          else
          {
            if (v36 != 13)
            {
              goto LABEL_75;
            }

            v12 = v17 + 1;
            if (v17 + 1 != v14 && v17[1] == 10)
            {
              v12 = v17 + 2;
            }
          }

          v13 = *(this + 16) + 1;
          *(this + 15) = 0;
          *(this + 16) = v13;
          *(this + 5) = v12;
          ++v11;
        }

        while ((llvm::yaml::Scanner::scanBlockScalarIndent(this, v10, v9, &v62) & 1) != 0);
        result = 0;
      }

      goto LABEL_108;
    }

    result = llvm::yaml::Scanner::findBlockScalarIndent(this, &v63, v8 & ~(v8 >> 31), &v61, &v62);
    if (!result)
    {
      return result;
    }

    v11 = v61;
    __src = v67;
    v66 = xmmword_25736B790;
    if (!v62)
    {
      v10 = v63;
      result = llvm::yaml::Scanner::scanBlockScalarIndent(this, v63, v9, &v62);
      if (result)
      {
        goto LABEL_14;
      }

      goto LABEL_108;
    }

    v37 = 0;
LABEL_76:
    if (v11)
    {
      v38 = 0;
    }

    else
    {
      v38 = *(this + 5) == *(this + 6);
    }

    if (v38)
    {
      v39 = 1;
    }

    else
    {
      v39 = v11;
    }

    v61 = v39;
    if (v64 != 43)
    {
      v39 = v37 != 0;
    }

    if (v64 == 45)
    {
      v40 = 0;
    }

    else
    {
      v40 = v39;
    }

    if (v37 + v40 > *(&v66 + 1))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    if (v40)
    {
      memset(__src + v37, 10, v40);
      v37 = v66;
    }

    v41 = v37 + v40;
    *&v66 = v41;
    if (!*(this + 17))
    {
      *(this + 73) = 1;
    }

    *(this + 74) = 0;
    if (v41 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v42 = *(this + 5);
    if (v41 >= 0x17)
    {
      operator new();
    }

    v59 = v41;
    if (v41)
    {
      memmove(__dst, __src, v41);
    }

    v43 = v42 - v7;
    *(__dst + v41) = 0;
    v45 = __dst[0];
    v44 = __dst[1];
    v60[0] = *v58;
    *(v60 + 3) = *&v58[3];
    v46 = v59;
    v47 = (this + 80);
    v48 = *(this + 10);
    *(this + 20) += 64;
    if (v48 && (v49 = (v48 + 7) & 0xFFFFFFFFFFFFFFF8, v49 + 64 <= *(this + 11)))
    {
      *v47 = v49 + 64;
      *v49 = 0;
      *(v49 + 8) = 0;
      *(v49 + 16) = 19;
      *(v49 + 24) = v7;
      *(v49 + 32) = v43;
      if ((v46 & 0x80000000) == 0)
      {
LABEL_101:
        *(v49 + 40) = v45;
        *(v49 + 48) = v44;
        *(v49 + 56) = v60[0];
        *(v49 + 59) = *(v60 + 3);
        *(v49 + 63) = v46;
        v51 = *(this + 22);
        v50 = (this + 176);
        *v49 = v51;
        *(v49 + 8) = v50;
        *(v51 + 8) = v49;
        *v50 = v49;
LABEL_107:
        result = 1;
LABEL_108:
        if (__src != v67)
        {
          v56 = result;
          free(__src);
          return v56;
        }

        return result;
      }
    }

    else
    {
      v52 = v44;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v47, 64, 64, 3);
      v44 = v52;
      v49 = Slow;
      *Slow = 0;
      *(Slow + 8) = 0;
      *(Slow + 16) = 19;
      *(Slow + 24) = v7;
      *(Slow + 32) = v43;
      if ((v46 & 0x80000000) == 0)
      {
        goto LABEL_101;
      }
    }

    std::string::__init_copy_ctor_external((v49 + 40), v45, v44);
    v55 = *(this + 22);
    v54 = (this + 176);
    *v49 = v55;
    *(v49 + 8) = v54;
    *(v55 + 8) = v49;
    *v54 = v49;
    operator delete(v45);
    goto LABEL_107;
  }

  return result;
}

uint64_t llvm::yaml::Scanner::scanTag(llvm::yaml::Scanner *this)
{
  v2 = *(this + 15);
  v3 = *(this + 5);
  v4 = *(this + 6);
  v5 = (v3 + 1);
  *(this + 5) = v3 + 1;
  *(this + 15) = v2 + 1;
  if ((v3 + 1) == v4)
  {
    goto LABEL_4;
  }

  v6 = *v5;
  if (v6 > 0x3C)
  {
    goto LABEL_39;
  }

  if (((1 << v6) & 0x100002600) != 0)
  {
    goto LABEL_4;
  }

  if (v6 != 60)
  {
LABEL_39:
    while (1)
    {
      v27 = v5;
      v28 = v4 - v5;
      if (v4 == v5)
      {
        break;
      }

      v29 = *v5;
      if (v29 == 9 || v29 == 32)
      {
LABEL_50:
        v4 = v27;
        break;
      }

      if ((v29 - 127) >= 0xFFFFFFA1)
      {
        v5 = v27 + 1;
      }

      else
      {
        if ((v29 & 0x80) == 0)
        {
          goto LABEL_50;
        }

        v30 = decodeUTF8(v27, v28);
        if (!HIDWORD(v30))
        {
          goto LABEL_50;
        }

        if (v30 == 65279)
        {
          goto LABEL_50;
        }

        v5 = &v27[HIDWORD(v30)];
        if ((v30 - 1114112) >> 20 != 4095 && (v30 - 65534) <= 0xFFFFE001 && v30 != 133 && (v30 - 55296) < 0xFFFF28A0)
        {
          goto LABEL_50;
        }
      }

      if (v5 == v27)
      {
        goto LABEL_50;
      }
    }

    *(this + 5) = v27;
    v5 = v4;
    goto LABEL_4;
  }

  v16 = (v3 + 2);
  *(this + 5) = v3 + 2;
  v17 = v2 + 2;
  for (*(this + 15) = v2 + 2; v16 != v4; *(this + 15) = ++v17)
  {
    v18 = *v16;
    v19 = v16 + 2;
    v20 = v18 != 37 || v19 >= v4;
    if (v20 || ((v23 = v16[1], (v23 - 48) >= 0xA) ? (v24 = (v23 & 0xFFFFFFDF) - 65 > 0x19) : (v24 = 0), v24 || ((v25 = *v19, (v25 - 48) >= 0xA) ? (v26 = (v25 & 0xFFFFFFDF) - 65 >= 0x1A) : (v26 = 0), v26)))
    {
      if (v18 != 45 && (v18 & 0xFFFFFFDF) - 65 >= 0x1A)
      {
        *v35 = v16;
        *&v35[8] = 1;
        first_of = llvm::StringRef::find_first_of(v35, "#;/?:@&=+$,_.!~*'()[]", 21, 0);
        v16 = *(this + 5);
        v4 = *(this + 6);
        if (first_of == -1)
        {
          break;
        }

        v17 = *(this + 15);
      }
    }

    *(this + 5) = ++v16;
  }

  if (v16 == v4)
  {
    return 0;
  }

  v31 = *v16;
  if ((v31 & 0x80000000) == 0)
  {
    if (v31 == 62)
    {
      v5 = (v16 + 1);
      *(this + 5) = v5;
      ++*(this + 15);
LABEL_4:
      v7 = &v5[-v3];
      v8 = *(this + 10);
      *(this + 20) += 64;
      if (v8 && (Slow = (v8 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 64 <= *(this + 11)))
      {
        *(this + 10) = Slow + 64;
      }

      else
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 80, 64, 64, 3);
      }

      *Slow = 0;
      *(Slow + 8) = 0;
      *(Slow + 16) = 22;
      *(Slow + 24) = v3;
      *(Slow + 32) = v7;
      *(Slow + 48) = 0;
      *(Slow + 56) = 0;
      *(Slow + 40) = 0;
      v10 = *(this + 22);
      *Slow = v10;
      *(Slow + 8) = this + 176;
      *(v10 + 8) = Slow;
      *(this + 22) = Slow;
      if (*(this + 73) == 1)
      {
        *v35 = Slow;
        *&v35[8] = v2;
        v35[20] = 0;
        v11 = *(this + 28);
        *&v35[12] = *(this + 8);
        v12 = *(this + 58);
        if (v12 >= *(this + 59))
        {
          if (v11 <= v35 && v11 + 24 * v12 > v35)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v13 = v11 + 24 * *(this + 58);
        v14 = *v35;
        *(v13 + 16) = *&v35[16];
        *v13 = v14;
        ++*(this + 58);
      }

      *(this + 73) = 0;
      return 1;
    }

    return 0;
  }

  *v35 = "Cannot consume non-ascii characters";
  v36 = 259;
  if (v4 <= v16)
  {
    v32 = (v4 - 1);
  }

  else
  {
    v32 = v16;
  }

  v33 = *(this + 42);
  if (v33)
  {
    v34 = std::generic_category();
    *v33 = 22;
    v33[1] = v34;
  }

  if ((*(this + 75) & 1) == 0)
  {
    llvm::SourceMgr::PrintMessage(*this, v32, 0, v35, 0, 0, 0, 0, *(this + 76));
  }

  result = 0;
  *(this + 75) = 1;
  return result;
}

void llvm::yaml::Stream::Stream()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void llvm::yaml::Stream::~Stream(llvm::yaml::Stream *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    std::__tree<long long>::destroy(v2 + 112, *(v2 + 120));
    llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v2 + 8);
    MEMORY[0x259C63180](v2, 0x10B0C409530C935);
  }

  std::unique_ptr<llvm::yaml::Scanner>::reset[abi:nn200100](this, 0);
}

{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    std::__tree<long long>::destroy(v2 + 112, *(v2 + 120));
    llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v2 + 8);
    MEMORY[0x259C63180](v2, 0x10B0C409530C935);
  }

  std::unique_ptr<llvm::yaml::Scanner>::reset[abi:nn200100](this, 0);
}

void llvm::yaml::Stream::printError(llvm ***a1, uint64_t a2, llvm::formatv_object_base **a3, int a4)
{
  if (a2)
  {
    v4 = *(a2 + 16);
    a2 = v4;
  }

  else
  {
    v4 = 0uLL;
  }

  llvm::SourceMgr::PrintMessage(**a1, a2, a4, a3, &v4, 1, 0, 0, *(*a1 + 76));
}

void llvm::yaml::Stream::begin(llvm::yaml::Scanner **this)
{
  if (!this[1])
  {
    llvm::yaml::Scanner::getNext(*this, &v1);
    if (v3 < 0)
    {
      operator delete(__p);
    }

    operator new();
  }

  llvm::report_fatal_error("Can only iterate over the stream once", 1);
}

unint64_t llvm::yaml::Document::skip(llvm::yaml::Document *this)
{
  if (*(**this + 75))
  {
    return 0;
  }

  result = *(this + 13);
  if (result || (result = llvm::yaml::Document::parseBlockNode(this), (*(this + 13) = result) != 0))
  {
    (*(*result + 8))(result);
    v3 = *llvm::yaml::Scanner::peekNext(**this);
    if (v3 == 2)
    {
      return 0;
    }

    else if (v3 == 6)
    {
      llvm::yaml::Scanner::getNext(**this, &v4);
      if (v6 < 0)
      {
        operator delete(__p);
      }

      return llvm::yaml::Document::skip(this);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

llvm::yaml::Document **llvm::yaml::document_iterator::operator++(llvm::yaml::Document ***a1)
{
  v2 = llvm::yaml::Document::skip(**a1);
  v3 = **a1;
  if (v2)
  {
    operator new();
  }

  **a1 = 0;
  if (v3)
  {
    std::__tree<long long>::destroy(v3 + 112, *(v3 + 15));
    llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v3 + 8);
    MEMORY[0x259C63180](v3, 0x10B0C409530C935);
  }

  return *a1;
}

uint64_t llvm::yaml::Node::Node(uint64_t a1, int a2, uint64_t *****a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = &unk_2868A3550;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = a4;
  *(a1 + 48) = a5;
  *(a1 + 56) = a6;
  *(a1 + 64) = a7;
  v8 = llvm::yaml::Scanner::peekNext(***a3)[1];
  *(a1 + 16) = v8;
  *(a1 + 24) = v8;
  return a1;
}

{
  *a1 = &unk_2868A3550;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = a4;
  *(a1 + 48) = a5;
  *(a1 + 56) = a6;
  *(a1 + 64) = a7;
  v8 = llvm::yaml::Scanner::peekNext(***a3)[1];
  *(a1 + 16) = v8;
  *(a1 + 24) = v8;
  return a1;
}

std::string *llvm::yaml::Node::getVerbatimTag@<X0>(std::string *this@<X0>, uint64_t a2@<X8>)
{
  v3 = this[2].__r_.__value_.__r.__words[2];
  if (!v3 || (size = this[2].__r_.__value_.__l.__size_, v3 == 1) && *size == 33)
  {
    v5 = this[1].__r_.__value_.__r.__words[1];
    if (v5 > 3)
    {
      if (v5 == 4)
      {
        v6 = "tag:yaml.org,2002:map";
        goto LABEL_59;
      }

      if (v5 == 5)
      {
        v6 = "tag:yaml.org,2002:seq";
        goto LABEL_59;
      }
    }

    else
    {
      if ((v5 - 1) < 2)
      {
        v6 = "tag:yaml.org,2002:str";
LABEL_59:
        *(a2 + 23) = 21;
        *a2 = *v6;
        *(a2 + 13) = *(v6 + 13);
        *(a2 + 21) = 0;
        return this;
      }

      if (!v5)
      {
        strcpy(a2, "tag:yaml.org,2002:null");
        *(a2 + 23) = 22;
        return this;
      }
    }

    *(a2 + 23) = 0;
    *a2 = 0;
    return this;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = v3;
  *(a2 + 16) = 0;
  do
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    v8 = v7 - 1;
    v9 = size[--v7];
  }

  while (v9 != 33);
  if (!v8)
  {
    v28 = *this->__r_.__value_.__l.__size_;
    v31 = *(v28 + 120);
    v29 = v28 + 120;
    v30 = v31;
    if (!v31)
    {
      goto LABEL_119;
    }

    v32 = v29;
    while (1)
    {
      v34 = v32;
      if (!*(v30 + 40))
      {
        break;
      }

      v35 = **(v30 + 32);
      if (v35 == 33)
      {
        v33 = v30;
        v32 = v30;
      }

      else
      {
        v33 = (v30 + (((v35 - 33) >> 28) & 8));
        v32 = v30;
        if (v35 <= 0x20)
        {
          goto LABEL_57;
        }
      }

LABEL_51:
      v30 = *v33;
      if (!*v33)
      {
        if (v32 != v29)
        {
          v50 = *(v32 + 40);
          if (!v50)
          {
            goto LABEL_120;
          }

          v51 = **(v32 + 32);
          if (v51 == 33)
          {
            if (v50 == 1)
            {
LABEL_120:
              v63 = *(v32 + 56);
              if (v63 <= 0x7FFFFFFFFFFFFFF7)
              {
                v64 = *(v32 + 48);
                if (v63 >= 0x17)
                {
                  operator new();
                }

                HIBYTE(v66) = *(v32 + 56);
                if (v63)
                {
                  memmove(&__dst, v64, v63);
                }

                *(&__dst + v63) = 0;
                if (*(a2 + 23) < 0)
                {
                  operator delete(*a2);
                }

                *a2 = __dst;
                *(a2 + 16) = v66;
                v58 = size + 1;
                v59 = a2;
                v57 = v3 - 1;
                goto LABEL_129;
              }

LABEL_134:
              std::string::__throw_length_error[abi:nn200100]();
            }
          }

          else if (v51 < 0x22)
          {
            goto LABEL_120;
          }
        }

LABEL_119:
        v32 = v29;
        goto LABEL_120;
      }
    }

    v33 = (v30 + 8);
LABEL_57:
    v32 = v34;
    goto LABEL_51;
  }

LABEL_11:
  v10 = v3;
  if (v3 != 1)
  {
    v10 = v3;
    if (*size == 8481)
    {
      v41 = this->__r_.__value_.__l.__size_;
      v42 = (*v41 + 120);
      v43 = *v42;
      if (!*v42)
      {
        goto LABEL_96;
      }

      v44 = *v41 + 120;
      while (1)
      {
        v46 = v44;
        v47 = *(v43 + 40);
        if (v47)
        {
          if (v47 >= 2)
          {
            v48 = 2;
          }

          else
          {
            v48 = *(v43 + 40);
          }

          v49 = memcmp(*(v43 + 32), "!!", v48);
          if (v49)
          {
            v45 = (v43 + ((v49 >> 28) & 8));
            v44 = v43;
            if ((v49 & 0x80000000) == 0)
            {
              goto LABEL_74;
            }

            goto LABEL_73;
          }

          if (v47 != 1)
          {
            v45 = v43;
            v44 = v43;
            goto LABEL_74;
          }
        }

        v45 = (v43 + 8);
LABEL_73:
        v44 = v46;
LABEL_74:
        v43 = *v45;
        if (!*v45)
        {
          if (v44 == v42)
          {
            goto LABEL_96;
          }

          v52 = *(v44 + 40);
          if (v52)
          {
            if (v52 >= 2)
            {
              v53 = 2;
            }

            else
            {
              v53 = *(v44 + 40);
            }

            v54 = memcmp("!!", *(v44 + 32), v53);
            if (v54)
            {
              if (v54 < 0)
              {
                goto LABEL_96;
              }
            }

            else if (v52 > 2)
            {
LABEL_96:
              v44 = v42;
            }
          }

          v55 = *(v44 + 56);
          if (v55 <= 0x7FFFFFFFFFFFFFF7)
          {
            v56 = *(v44 + 48);
            if (v55 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v66) = *(v44 + 56);
            if (v55)
            {
              memmove(&__dst, v56, v55);
            }

            *(&__dst + v55) = 0;
            if (*(a2 + 23) < 0)
            {
              operator delete(*a2);
            }

            *a2 = __dst;
            *(a2 + 16) = v66;
            v57 = v3 - 2;
            v58 = size + 2;
            v59 = a2;
LABEL_129:

            return std::string::append(v59, v58, v57);
          }

          goto LABEL_134;
        }
      }
    }
  }

  do
  {
    v11 = v10;
    if (!v10)
    {
      break;
    }

    --v10;
  }

  while (size[v11 - 1] != 33);
  if (v3 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v3;
  }

  v13 = this->__r_.__value_.__l.__size_;
  v14 = *v13;
  v15 = (*v13 + 15);
  v16 = *v15;
  if (!*v15)
  {
    goto LABEL_62;
  }

  v17 = (*v13 + 15);
  do
  {
    v19 = v17;
    v20 = *(v16 + 40);
    if (v12 >= v20)
    {
      v21 = *(v16 + 40);
    }

    else
    {
      v21 = v12;
    }

    if (v21 && (v22 = memcmp(*(v16 + 32), size, v21)) != 0)
    {
      v18 = (v16 + ((v22 >> 28) & 8));
      v17 = v16;
      if ((v22 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v20 >= v12)
      {
        v18 = v16;
        v17 = v16;
        goto LABEL_21;
      }

      v18 = (v16 + 8);
    }

    v17 = v19;
LABEL_21:
    v16 = *v18;
  }

  while (*v18);
  if (v17 == v15)
  {
    goto LABEL_62;
  }

  v23 = *(v17 + 40);
  if (v23 >= v12)
  {
    v24 = v12;
  }

  else
  {
    v24 = *(v17 + 40);
  }

  if (!v24 || (v25 = memcmp(size, *(v17 + 32), v24)) == 0)
  {
    if (v12 < v23)
    {
      goto LABEL_62;
    }

LABEL_42:
    v26 = *(v17 + 56);
    if (v26 <= 0x7FFFFFFFFFFFFFF7)
    {
      v27 = *(v17 + 48);
      if (v26 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v66) = *(v17 + 56);
      if (v26)
      {
        memmove(&__dst, v27, v26);
      }

      *(&__dst + v26) = 0;
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = __dst;
      *(a2 + 16) = v66;
      goto LABEL_111;
    }

    goto LABEL_134;
  }

  if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

LABEL_62:
  *&__dst = "Unknown tag handle ";
  v66 = size;
  v67 = v12;
  v68 = 1283;
  v36 = **v14;
  v37 = *(v36 + 48);
  if (v37 <= size)
  {
    v38 = (v37 - 1);
  }

  else
  {
    v38 = size;
  }

  v39 = *(v36 + 336);
  if (v39)
  {
    v40 = std::generic_category();
    *v39 = 22;
    v39[1] = v40;
  }

  if ((*(v36 + 75) & 1) == 0)
  {
    llvm::SourceMgr::PrintMessage(*v36, v38, 0, &__dst, 0, 0, 0, 0, *(v36 + 76));
  }

  *(v36 + 75) = 1;
LABEL_111:
  v60 = v3;
  do
  {
    v61 = v60;
    if (!v60)
    {
      break;
    }

    --v60;
  }

  while (size[v61 - 1] != 33);
  if (v3 >= v61)
  {
    v62 = v61;
  }

  else
  {
    v62 = v3;
  }

  return std::string::append(a2, &size[v62], v3 - v62);
}

void llvm::yaml::Node::setError(uint64_t a1, llvm::formatv_object_base **a2, uint64_t a3)
{
  v4 = ****(a1 + 8);
  v5 = *(v4 + 48);
  if (v5 <= *(a3 + 8))
  {
    v6 = (v5 - 1);
  }

  else
  {
    v6 = *(a3 + 8);
  }

  v7 = *(v4 + 336);
  if (v7)
  {
    v8 = std::generic_category();
    *v7 = 22;
    v7[1] = v8;
  }

  if ((*(v4 + 75) & 1) == 0)
  {
    llvm::SourceMgr::PrintMessage(*v4, v6, 0, a2, 0, 0, 0, 0, *(v4 + 76));
  }

  *(v4 + 75) = 1;
}

unint64_t llvm::yaml::Document::parseBlockNode(uint64_t ****this)
{
  v2 = llvm::yaml::Scanner::peekNext(**this);
  v3 = v2[2];
  v120 = *v2;
  v121 = v3;
  if (*(v2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v122, v2[3], v2[4]);
  }

  else
  {
    v4 = *(v2 + 3);
    v122.__r_.__value_.__r.__words[2] = v2[5];
    *&v122.__r_.__value_.__l.__data_ = v4;
  }

  v5 = 0;
  v6 = 0;
  __p = 0;
  v92 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = v120;
  if (v120 != 21)
  {
    goto LABEL_10;
  }

  while (2)
  {
    if (v7 == 21)
    {
      v23 = "Already encountered an anchor for this node!";
      goto LABEL_104;
    }

    llvm::yaml::Scanner::getNext(**this, &v111);
    v7 = v111;
    v12 = v112;
    v11 = v113;
    if (v9 < 0)
    {
      operator delete(v10);
    }

    v10 = v114;
    v9 = v116;
LABEL_9:
    v14 = llvm::yaml::Scanner::peekNext(**this);
    v15 = v14[2];
    v120 = *v14;
    v121 = v15;
    std::string::operator=(&v122, v14 + 1);
    v13 = v120;
    if (v120 == 21)
    {
      continue;
    }

    break;
  }

LABEL_10:
  switch(v13)
  {
    case 0:
      Slow = 0;
      goto LABEL_126;
    case 7:
      v63 = this + 1;
      v64 = this[1];
      this[11] += 11;
      if (v64 && (Slow = (v64 + 15) & 0xFFFFFFFFFFFFFFF0, Slow + 88 <= this[2]))
      {
        *v63 = Slow + 88;
        if (!Slow)
        {
          goto LABEL_126;
        }
      }

      else
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v63, 88, 88, 4);
      }

      v65 = *this;
      if (v11)
      {
        v66 = v12 + 1;
      }

      else
      {
        v66 = v12;
      }

      *Slow = &unk_2868A3550;
      *(Slow + 16) = 0;
      *(Slow + 24) = 0;
      v67 = v65[1];
      *(Slow + 8) = v65 + 1;
      *(Slow + 32) = 5;
      *(Slow + 40) = v66;
      *(Slow + 48) = v11 - (v11 != 0);
      *(Slow + 56) = v5;
      *(Slow + 64) = v6;
      v68 = llvm::yaml::Scanner::peekNext(**v67)[1];
      *(Slow + 16) = v68;
      *(Slow + 24) = v68;
      *Slow = &unk_2868A3698;
      *(Slow + 72) = 2;
      goto LABEL_81;
    case 9:
      llvm::yaml::Scanner::getNext(**this, v108);
      if (v110 < 0)
      {
        operator delete(v109);
      }

      v43 = this + 1;
      v44 = this[1];
      this[11] += 11;
      if (v44 && (Slow = (v44 + 15) & 0xFFFFFFFFFFFFFFF0, Slow + 88 <= this[2]))
      {
        *v43 = Slow + 88;
        if (!Slow)
        {
          goto LABEL_126;
        }
      }

      else
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v43, 88, 88, 4);
      }

      v45 = *this;
      if (v11)
      {
        v46 = v12 + 1;
      }

      else
      {
        v46 = v12;
      }

      *Slow = &unk_2868A3550;
      *(Slow + 16) = 0;
      *(Slow + 24) = 0;
      v47 = v45[1];
      *(Slow + 8) = v45 + 1;
      *(Slow + 32) = 5;
      *(Slow + 40) = v46;
      *(Slow + 48) = v11 - (v11 != 0);
      *(Slow + 56) = v5;
      *(Slow + 64) = v6;
      v48 = llvm::yaml::Scanner::peekNext(**v47)[1];
      *(Slow + 16) = v48;
      *(Slow + 24) = v48;
      *Slow = &unk_2868A3698;
      *(Slow + 72) = 0;
      goto LABEL_81;
    case 10:
      llvm::yaml::Scanner::getNext(**this, v105);
      if (v107 < 0)
      {
        operator delete(v106);
      }

      v49 = this + 1;
      v50 = this[1];
      this[11] += 11;
      if (v50 && (Slow = (v50 + 15) & 0xFFFFFFFFFFFFFFF0, Slow + 88 <= this[2]))
      {
        *v49 = Slow + 88;
        if (!Slow)
        {
          goto LABEL_126;
        }
      }

      else
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v49, 88, 88, 4);
      }

      v51 = *this;
      if (v11)
      {
        v52 = v12 + 1;
      }

      else
      {
        v52 = v12;
      }

      *Slow = &unk_2868A3550;
      *(Slow + 16) = 0;
      *(Slow + 24) = 0;
      v53 = v51[1];
      *(Slow + 8) = v51 + 1;
      *(Slow + 32) = 4;
      *(Slow + 40) = v52;
      *(Slow + 48) = v11 - (v11 != 0);
      *(Slow + 56) = v5;
      *(Slow + 64) = v6;
      v54 = llvm::yaml::Scanner::peekNext(**v53)[1];
      *(Slow + 16) = v54;
      *(Slow + 24) = v54;
      *Slow = &unk_2868A3660;
      *(Slow + 72) = 0;
      goto LABEL_92;
    case 11:
    case 13:
    case 15:
      v16 = this[13];
      if (v16 && (v16[4] & 0xFFFFFFFE) == 4)
      {
        goto LABEL_17;
      }

      v23 = "Unexpected token";
      goto LABEL_104;
    case 12:
      llvm::yaml::Scanner::getNext(**this, v102);
      if (v104 < 0)
      {
        operator delete(v103);
      }

      v37 = this + 1;
      v38 = this[1];
      this[11] += 11;
      if (v38 && (Slow = (v38 + 15) & 0xFFFFFFFFFFFFFFF0, Slow + 88 <= this[2]))
      {
        *v37 = Slow + 88;
        if (!Slow)
        {
          goto LABEL_126;
        }
      }

      else
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v37, 88, 88, 4);
      }

      v39 = *this;
      if (v11)
      {
        v40 = v12 + 1;
      }

      else
      {
        v40 = v12;
      }

      *Slow = &unk_2868A3550;
      *(Slow + 16) = 0;
      *(Slow + 24) = 0;
      v41 = v39[1];
      *(Slow + 8) = v39 + 1;
      *(Slow + 32) = 5;
      *(Slow + 40) = v40;
      *(Slow + 48) = v11 - (v11 != 0);
      *(Slow + 56) = v5;
      *(Slow + 64) = v6;
      v42 = llvm::yaml::Scanner::peekNext(**v41)[1];
      *(Slow + 16) = v42;
      *(Slow + 24) = v42;
      *Slow = &unk_2868A3698;
      *(Slow + 72) = 1;
LABEL_81:
      *(Slow + 76) = 1;
      *(Slow + 78) = 1;
      *(Slow + 80) = 0;
      goto LABEL_126;
    case 14:
      llvm::yaml::Scanner::getNext(**this, v99);
      if (v101 < 0)
      {
        operator delete(v100);
      }

      v69 = this + 1;
      v70 = this[1];
      this[11] += 11;
      if (v70 && (Slow = (v70 + 15) & 0xFFFFFFFFFFFFFFF0, Slow + 88 <= this[2]))
      {
        *v69 = Slow + 88;
        if (!Slow)
        {
          goto LABEL_126;
        }
      }

      else
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v69, 88, 88, 4);
      }

      v71 = *this;
      if (v11)
      {
        v72 = v12 + 1;
      }

      else
      {
        v72 = v12;
      }

      *Slow = &unk_2868A3550;
      *(Slow + 16) = 0;
      *(Slow + 24) = 0;
      v73 = v71[1];
      *(Slow + 8) = v71 + 1;
      *(Slow + 32) = 4;
      *(Slow + 40) = v72;
      *(Slow + 48) = v11 - (v11 != 0);
      *(Slow + 56) = v5;
      *(Slow + 64) = v6;
      v74 = llvm::yaml::Scanner::peekNext(**v73)[1];
      *(Slow + 16) = v74;
      *(Slow + 24) = v74;
      *Slow = &unk_2868A3660;
      *(Slow + 72) = 1;
      goto LABEL_92;
    case 16:
      v24 = this + 1;
      v25 = this[1];
      this[11] += 11;
      if (v25 && (Slow = (v25 + 15) & 0xFFFFFFFFFFFFFFF0, Slow + 88 <= this[2]))
      {
        *v24 = Slow + 88;
        if (!Slow)
        {
          goto LABEL_126;
        }
      }

      else
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v24, 88, 88, 4);
      }

      v26 = *this;
      if (v11)
      {
        v27 = v12 + 1;
      }

      else
      {
        v27 = v12;
      }

      *Slow = &unk_2868A3550;
      *(Slow + 16) = 0;
      *(Slow + 24) = 0;
      v28 = v26[1];
      *(Slow + 8) = v26 + 1;
      *(Slow + 32) = 4;
      *(Slow + 40) = v27;
      *(Slow + 48) = v11 - (v11 != 0);
      *(Slow + 56) = v5;
      *(Slow + 64) = v6;
      v29 = llvm::yaml::Scanner::peekNext(**v28)[1];
      *(Slow + 16) = v29;
      *(Slow + 24) = v29;
      *Slow = &unk_2868A3660;
      *(Slow + 72) = 2;
LABEL_92:
      *(Slow + 76) = 1;
      *(Slow + 80) = 0;
      goto LABEL_126;
    case 18:
      llvm::yaml::Scanner::getNext(**this, v96);
      if (v98 < 0)
      {
        operator delete(v97);
      }

      v30 = this + 1;
      v31 = this[1];
      this[11] += 11;
      if (v31 && (Slow = (v31 + 15) & 0xFFFFFFFFFFFFFFF0, Slow + 88 <= this[2]))
      {
        *v30 = Slow + 88;
        if (!Slow)
        {
          goto LABEL_126;
        }
      }

      else
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v30, 88, 88, 4);
      }

      v32 = *this;
      if (v11)
      {
        v33 = v12 + 1;
      }

      else
      {
        v33 = v12;
      }

      v34 = *(&v120 + 1);
      v35 = v121;
      *Slow = &unk_2868A3550;
      *(Slow + 16) = 0;
      *(Slow + 24) = 0;
      v36 = v32[1];
      *(Slow + 8) = v32 + 1;
      *(Slow + 32) = 1;
      *(Slow + 40) = v33;
      *(Slow + 48) = v11 - (v11 != 0);
      *(Slow + 56) = v5;
      *(Slow + 64) = v6;
      llvm::yaml::Scanner::peekNext(**v36);
      *Slow = &unk_2868A35B8;
      *(Slow + 72) = v34;
      *(Slow + 80) = v35;
      goto LABEL_125;
    case 19:
      llvm::yaml::Scanner::getNext(**this, v93);
      if (v95 < 0)
      {
        operator delete(v94);
      }

      if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v75 = &v122;
      }

      else
      {
        v75 = v122.__r_.__value_.__r.__words[0];
      }

      if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v122.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v122.__r_.__value_.__l.__size_;
      }

      v77 = size + 1;
      if (size == -1)
      {
        v78 = 0;
      }

      else
      {
        this[11] = (this[11] + v77);
        v78 = this[1];
        if (v78 && (v78 + v77) <= this[2])
        {
          this[1] = (v78 + v77);
        }

        else
        {
          v89 = v75;
          v90 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow((this + 1), size + 1, size + 1, 0);
          v75 = v89;
          v78 = v90;
        }

        memmove(v78, v75, size + 1);
      }

      if (v77 < size)
      {
        ++size;
      }

      this[11] += 11;
      v84 = this[1];
      if (v84 && (Slow = (v84 + 15) & 0xFFFFFFFFFFFFFFF0, Slow + 88 <= this[2]))
      {
        this[1] = (Slow + 88);
        if (!Slow)
        {
          goto LABEL_126;
        }
      }

      else
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow((this + 1), 88, 88, 4);
      }

      v85 = *this;
      if (v11)
      {
        v86 = v12 + 1;
      }

      else
      {
        v86 = v12;
      }

      v34 = *(&v120 + 1);
      v35 = v121;
      *Slow = &unk_2868A3550;
      *(Slow + 16) = 0;
      *(Slow + 24) = 0;
      v87 = v85[1];
      *(Slow + 8) = v85 + 1;
      *(Slow + 32) = 2;
      *(Slow + 40) = v86;
      *(Slow + 48) = v11 - (v11 != 0);
      *(Slow + 56) = v5;
      *(Slow + 64) = v6;
      llvm::yaml::Scanner::peekNext(**v87);
      *Slow = &unk_2868A35F0;
      *(Slow + 72) = v78;
      *(Slow + 80) = size;
LABEL_125:
      *(Slow + 16) = v34;
      *(Slow + 24) = v34 + v35;
      goto LABEL_126;
    case 20:
      llvm::yaml::Scanner::getNext(**this, v117);
      if (v119 < 0)
      {
        operator delete(v118);
      }

      v55 = this + 1;
      v56 = this[1];
      this[11] += 11;
      if (v56 && (Slow = (v56 + 15) & 0xFFFFFFFFFFFFFFF0, Slow + 88 <= this[2]))
      {
        *v55 = Slow + 88;
        if (!Slow)
        {
          goto LABEL_126;
        }
      }

      else
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v55, 88, 88, 4);
      }

      v57 = *this;
      v58 = v121;
      if (v121)
      {
        v59 = *(&v120 + 1) + 1;
      }

      else
      {
        v59 = *(&v120 + 1);
      }

      *Slow = &unk_2868A3550;
      *(Slow + 16) = 0;
      *(Slow + 24) = 0;
      *(Slow + 40) = 0u;
      *(Slow + 56) = 0u;
      v60 = v57[1];
      v61 = v58 - (v58 != 0);
      *(Slow + 8) = v57 + 1;
      *(Slow + 32) = 6;
      v62 = llvm::yaml::Scanner::peekNext(**v60)[1];
      *(Slow + 16) = v62;
      *(Slow + 24) = v62;
      *Slow = &unk_2868A36D0;
      *(Slow + 72) = v59;
      *(Slow + 80) = v61;
      goto LABEL_126;
    case 22:
      if (v8 != 22)
      {
        llvm::yaml::Scanner::getNext(**this, &v111);
        v8 = v111;
        v5 = v112;
        v6 = v113;
        if (v92 < 0)
        {
          operator delete(__p);
        }

        __p = v114;
        v92 = v116;
        goto LABEL_9;
      }

      v23 = "Already encountered a tag for this node!";
LABEL_104:
      v111 = v23;
      v115 = 259;
      v79 = **this;
      v80 = v79[6];
      if (v80 <= *(&v120 + 1))
      {
        v81 = v80 - 1;
      }

      else
      {
        v81 = *(&v120 + 1);
      }

      v82 = v79[42];
      if (v82)
      {
        v83 = std::generic_category();
        *v82 = 22;
        v82[1] = v83;
      }

      if ((*(v79 + 75) & 1) == 0)
      {
        llvm::SourceMgr::PrintMessage(*v79, v81, 0, &v111, 0, 0, 0, 0, *(v79 + 76));
      }

      Slow = 0;
      *(v79 + 75) = 1;
LABEL_126:
      if (v92 < 0)
      {
        operator delete(__p);
        if (v9 < 0)
        {
          goto LABEL_131;
        }

LABEL_128:
        if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_132:
          operator delete(v122.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if ((v9 & 0x80) == 0)
        {
          goto LABEL_128;
        }

LABEL_131:
        operator delete(v10);
        if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_132;
        }
      }

      return Slow;
    default:
LABEL_17:
      v17 = this + 1;
      v18 = this[1];
      this[11] += 9;
      if (v18 && (Slow = (v18 + 15) & 0xFFFFFFFFFFFFFFF0, Slow + 72 <= this[2]))
      {
        *v17 = Slow + 72;
        if (!Slow)
        {
          goto LABEL_126;
        }
      }

      else
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v17, 72, 72, 4);
      }

      v20 = *this;
      *Slow = &unk_2868A3550;
      *(Slow + 16) = 0;
      *(Slow + 24) = 0;
      *(Slow + 32) = 0;
      *(Slow + 40) = 0u;
      *(Slow + 56) = 0u;
      v21 = v20[1];
      *(Slow + 8) = v20 + 1;
      v22 = llvm::yaml::Scanner::peekNext(**v21)[1];
      *(Slow + 16) = v22;
      *(Slow + 24) = v22;
      *Slow = &unk_2868A3570;
      goto LABEL_126;
  }
}

void llvm::yaml::Document::setError(uint64_t **a1, llvm::formatv_object_base **a2, uint64_t a3)
{
  v4 = **a1;
  v5 = *(v4 + 48);
  if (v5 <= *(a3 + 8))
  {
    v6 = (v5 - 1);
  }

  else
  {
    v6 = *(a3 + 8);
  }

  v7 = *(v4 + 336);
  if (v7)
  {
    v8 = std::generic_category();
    *v7 = 22;
    v7[1] = v8;
  }

  if ((*(v4 + 75) & 1) == 0)
  {
    llvm::SourceMgr::PrintMessage(*v4, v6, 0, a2, 0, 0, 0, 0, *(v4 + 76));
  }

  *(v4 + 75) = 1;
}

uint64_t llvm::yaml::ScalarNode::getValue(uint64_t a1, uint64_t *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *v3;
  if (v5 == 39)
  {
    v10 = v4 != 0;
    if (v4)
    {
      v11 = v3 + 1;
    }

    else
    {
      v11 = *(a1 + 72);
    }

    if (v4 - v10 >= v4 - 2)
    {
      v12 = v4 - 2;
    }

    else
    {
      v12 = v4 - v10;
    }

    v19[0] = &unk_2868A3798;
    v20 = v19;
    result = parseScalarValue(v11, v12, a2, "'\r\n", 3, v19);
    v8 = v20;
    if (v20 != v19)
    {
LABEL_9:
      if (!v8)
      {
        return result;
      }

      v9 = result;
      (*(*v8 + 40))(v8);
      return v9;
    }

LABEL_18:
    v9 = result;
    (*(*v8 + 32))(v8);
    return v9;
  }

  if (v5 == 34)
  {
    if (v4)
    {
      ++v3;
    }

    if (v4 - (v4 != 0) >= v4 - 2)
    {
      v6 = v4 - 2;
    }

    else
    {
      v6 = v4 - (v4 != 0);
    }

    v19[0] = &unk_2868A3708;
    v19[1] = a1;
    v20 = v19;
    result = parseScalarValue(v3, v6, a2, "\\\r\n", 3, v19);
    v8 = v20;
    if (v20 != v19)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  v17 = *(a1 + 72);
  v18 = v4;
  last_not_of = llvm::StringRef::find_last_not_of(&v17, "\r\n \t", 4, 0xFFFFFFFFFFFFFFFFLL);
  if (last_not_of + 1 < v18)
  {
    v14 = last_not_of + 1;
  }

  else
  {
    v14 = v18;
  }

  v15 = v18 - v4 + v14;
  if (v18 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v18;
  }

  v18 = v16;
  v20 = 0;
  return parseScalarValue(v17, v16, a2, "\r\n", 2, v19);
}

uint64_t llvm::yaml::ScalarNode::getDoubleQuotedValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = (a2 + 1);
  }

  else
  {
    v4 = a2;
  }

  if (a3 - (a3 != 0) >= a3 - 2)
  {
    v5 = a3 - 2;
  }

  else
  {
    v5 = a3 - (a3 != 0);
  }

  v8[0] = &unk_2868A3708;
  v8[1] = a1;
  v9 = v8;
  v6 = parseScalarValue(v4, v5, a4, "\\\r\n", 3, v8);
  if (v9 == v8)
  {
    (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    (*(*v9 + 40))();
  }

  return v6;
}

uint64_t llvm::yaml::ScalarNode::getSingleQuotedValue(char *a1, uint64_t a2, uint64_t *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    ++a1;
  }

  if (a2 - (a2 != 0) >= a2 - 2)
  {
    v3 = a2 - 2;
  }

  else
  {
    v3 = a2 - (a2 != 0);
  }

  v6[0] = &unk_2868A3798;
  v7 = v6;
  v4 = parseScalarValue(a1, v3, a3, "'\r\n", 3, v6);
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return v4;
}

uint64_t llvm::yaml::ScalarNode::getPlainValue(void *a1, unint64_t a2, uint64_t *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = a2;
  last_not_of = llvm::StringRef::find_last_not_of(&v10, "\r\n \t", 4, 0xFFFFFFFFFFFFFFFFLL);
  if (last_not_of + 1 < v11)
  {
    v6 = last_not_of + 1;
  }

  else
  {
    v6 = v11;
  }

  v7 = v11 - a2 + v6;
  if (v11 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v11;
  }

  v11 = v8;
  v13 = 0;
  return parseScalarValue(v10, v8, a3, "\r\n", 2, v12);
}

uint64_t parseScalarValue(void *a1, unint64_t a2, uint64_t *p_src, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  __src = a1;
  v32 = a2;
  first_of = llvm::StringRef::find_first_of(&__src, a4, a5, 0);
  if (first_of != -1)
  {
    v11 = first_of;
    p_src[1] = 0;
    if (p_src[2] < v32)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v12 = 0;
    while (1)
    {
      v16 = *(__src + v11);
      if (v16 == 10 || v16 == 13)
      {
        break;
      }

      v25 = v32;
      if (v32 >= v11)
      {
        v25 = v11;
      }

      llvm::SmallVectorImpl<char>::insert<char const*,void>(p_src, *p_src + p_src[1], __src, __src + v25);
      if (v32 >= v11)
      {
        v26 = v11;
      }

      else
      {
        v26 = v32;
      }

      v33 = __src + v26;
      v34 = v32 - v26;
      v27 = *(a6 + 24);
      if (!v27)
      {
        v30 = std::__throw_bad_function_call[abi:nn200100]();
        return llvm::yaml::KeyValueNode::getKey(v30);
      }

      v12 = 0;
      __src = (*(*v27 + 48))(v27, &v33, p_src);
      v32 = v28;
LABEL_12:
      v11 = llvm::StringRef::find_first_of(&__src, a4, a5, 0);
      if (v11 == -1)
      {
        llvm::SmallVectorImpl<char>::insert<char const*,void>(p_src, *p_src + p_src[1], __src, __src + v32);
        return *p_src;
      }
    }

    last_not_of = llvm::StringRef::find_last_not_of(&__src, " \t", 2, v11);
    if (last_not_of == -1)
    {
      if (v12 == 10)
      {
        v20 = p_src[1];
        if (v20 + 1 > p_src[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v21 = *p_src;
        v12 = 10;
LABEL_25:
        *(v21 + v20) = v12;
        ++p_src[1];
        v23 = __src;
        v22 = v32;
        if (v32 >= v11)
        {
          v24 = v11;
        }

        else
        {
          v24 = v32;
        }

        if (v32 - v24 >= 2)
        {
          goto LABEL_29;
        }

        goto LABEL_5;
      }

      if (v12 == 32)
      {
        v12 = 10;
        *(*p_src + p_src[1] - 1) = 10;
        v23 = __src;
        v22 = v32;
        if (v32 >= v11)
        {
          v24 = v11;
        }

        else
        {
          v24 = v32;
        }

        if (v32 - v24 >= 2)
        {
LABEL_29:
          if (bswap32(*&v23[v24]) >> 16 == 3338)
          {
            ++v11;
          }
        }

LABEL_5:
        if (v22 >= v11 + 1)
        {
          v13 = v11 + 1;
        }

        else
        {
          v13 = v22;
        }

        v33 = &v23[v13];
        v34 = v22 - v13;
        first_not_of = llvm::StringRef::find_first_not_of(&v33, " \t", 2, 0);
        if (first_not_of >= v34)
        {
          v15 = v34;
        }

        else
        {
          v15 = first_not_of;
        }

        __src = &v33[v15];
        v32 = v34 - v15;
        goto LABEL_12;
      }
    }

    else
    {
      if (v32 >= last_not_of + 1)
      {
        v19 = last_not_of + 1;
      }

      else
      {
        v19 = v32;
      }

      llvm::SmallVectorImpl<char>::insert<char const*,void>(p_src, *p_src + p_src[1], __src, __src + v19);
    }

    v20 = p_src[1];
    if (v20 + 1 > p_src[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v21 = *p_src;
    v12 = 32;
    goto LABEL_25;
  }

  p_src = &__src;
  return *p_src;
}

void *llvm::yaml::KeyValueNode::getKey(llvm::yaml::KeyValueNode *this)
{
  result = *(this + 9);
  if (!result)
  {
    v3 = *llvm::yaml::Scanner::peekNext(****(this + 1));
    if (v3 > 15)
    {
      if (v3 == 16)
      {
        llvm::yaml::Scanner::getNext(****(this + 1), &v16);
        if (v18 < 0)
        {
          operator delete(__p);
        }
      }

      else if (v3 == 17)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v3)
      {
        v4 = v3 == 8;
      }

      else
      {
        v4 = 1;
      }

      if (v4)
      {
        goto LABEL_18;
      }
    }

    v5 = *llvm::yaml::Scanner::peekNext(****(this + 1));
    if (v5 != 17 && v5 != 8)
    {
      result = llvm::yaml::Document::parseBlockNode(**(this + 1));
      *(this + 9) = result;
      return result;
    }

LABEL_18:
    v7 = **(this + 1);
    v9 = *(v7 + 8);
    v8 = (v7 + 8);
    v8[10] += 72;
    result = ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = result + 9;
    if (v9)
    {
      v11 = v10 > v8[1];
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v8, 72, 72, 4);
    }

    else
    {
      *v8 = v10;
      if (!result)
      {
LABEL_24:
        *(this + 9) = result;
        return result;
      }
    }

    v12 = *(this + 1);
    *result = &unk_2868A3550;
    result[1] = v12;
    result[2] = 0;
    result[3] = 0;
    *(result + 8) = 0;
    *(result + 5) = 0u;
    *(result + 7) = 0u;
    v13 = result;
    v14 = llvm::yaml::Scanner::peekNext(***v12);
    result = v13;
    v15 = v14[1];
    v13[2] = v15;
    v13[3] = v15;
    *v13 = &unk_2868A3570;
    goto LABEL_24;
  }

  return result;
}

uint64_t llvm::yaml::Node::operator new(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = 63 - __clz(a3);
  a2[10] += a1;
  if (!*a2)
  {
    return llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, a1, a1, v4);
  }

  result = ((1 << v4) + *a2 - 1) & -(1 << v4);
  if ((result + a1) > a2[1])
  {
    return llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, a1, a1, v4);
  }

  *a2 = result + a1;
  return result;
}

uint64_t llvm::yaml::NullNode::NullNode(uint64_t a1, uint64_t *****a2)
{
  *a1 = &unk_2868A3550;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v3 = llvm::yaml::Scanner::peekNext(***a2)[1];
  *(a1 + 16) = v3;
  *(a1 + 24) = v3;
  *a1 = &unk_2868A3570;
  return a1;
}

void *llvm::yaml::KeyValueNode::getValue(llvm::yaml::KeyValueNode *this)
{
  result = *(this + 10);
  if (!result)
  {
    Key = llvm::yaml::KeyValueNode::getKey(this);
    if (!Key)
    {
      v40[0] = "Null key in Key Value.";
      v41 = 259;
      v14 = llvm::yaml::Scanner::peekNext(****(this + 1));
      v15 = ****(this + 1);
      v16 = *(v15 + 48);
      if (v16 <= v14[1])
      {
        v17 = (v16 - 1);
      }

      else
      {
        v17 = v14[1];
      }

      v18 = *(v15 + 336);
      if (v18)
      {
        v19 = std::generic_category();
        *v18 = 22;
        v18[1] = v19;
      }

      if ((*(v15 + 75) & 1) == 0)
      {
        llvm::SourceMgr::PrintMessage(*v15, v17, 0, v40, 0, 0, 0, 0, *(v15 + 76));
      }

      *(v15 + 75) = 1;
      v20 = *(this + 1);
      v21 = (*v20 + 1);
      v22 = *v21;
      (*v20)[11] += 9;
      result = ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = result + 9;
      if (v22)
      {
        v24 = v23 > v21[1];
      }

      else
      {
        v24 = 1;
      }

      if (v24)
      {
        result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v21, 72, 72, 4);
        v20 = *(this + 1);
      }

      else
      {
        *v21 = v23;
        if (!result)
        {
          goto LABEL_27;
        }
      }

      *result = &unk_2868A3550;
      result[1] = v20;
      result[2] = 0;
      result[3] = 0;
      *(result + 8) = 0;
      *(result + 5) = 0u;
      *(result + 7) = 0u;
      v13 = *v20;
      goto LABEL_26;
    }

    (*(*Key + 8))(Key);
    v4 = **(this + 1);
    v5 = **v4;
    if (*(v5 + 75) == 1)
    {
LABEL_7:
      v9 = v4[1];
      v8 = v4 + 1;
      v8[10] += 72;
      result = ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v10 = result + 9;
      if (v9)
      {
        v11 = v10 > v8[1];
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v8, 72, 72, 4);
        goto LABEL_12;
      }

      *v8 = v10;
      if (result)
      {
LABEL_12:
        v12 = *(this + 1);
        *result = &unk_2868A3550;
        result[1] = v12;
        result[2] = 0;
        result[3] = 0;
        *(result + 8) = 0;
        *(result + 5) = 0u;
        *(result + 7) = 0u;
        v13 = *v12;
LABEL_26:
        v25 = result;
        v26 = llvm::yaml::Scanner::peekNext(**v13);
        result = v25;
        v27 = v26[1];
        v25[2] = v27;
        v25[3] = v27;
        *v25 = &unk_2868A3570;
      }

LABEL_27:
      *(this + 10) = result;
      return result;
    }

    v6 = llvm::yaml::Scanner::peekNext(v5);
    v7 = *v6;
    if (*v6 > 0x11u)
    {
      goto LABEL_42;
    }

    if (((1 << v7) & 0x18901) != 0)
    {
      v4 = **(this + 1);
      goto LABEL_7;
    }

    if (v7 != 17)
    {
LABEL_42:
      v40[0] = "Unexpected token in Key Value.";
      v41 = 259;
      llvm::yaml::Node::setError(this, v40, v6);
      result = llvm::yaml::Node::operator new(72, (**(this + 1) + 8), 0x10uLL);
      if (!result)
      {
        goto LABEL_27;
      }

      v36 = *(this + 1);
      goto LABEL_44;
    }

    llvm::yaml::Scanner::getNext(****(this + 1), v37);
    if (v39 < 0)
    {
      operator delete(__p);
    }

    v28 = *llvm::yaml::Scanner::peekNext(****(this + 1));
    if (v28 != 16 && v28 != 8)
    {
      result = llvm::yaml::Document::parseBlockNode(**(this + 1));
      *(this + 10) = result;
      return result;
    }

    v30 = **(this + 1);
    v32 = *(v30 + 8);
    v31 = (v30 + 8);
    v31[10] += 72;
    Slow = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
    v34 = Slow + 72;
    if (v32)
    {
      v35 = v34 > v31[1];
    }

    else
    {
      v35 = 1;
    }

    if (v35)
    {
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v31, 72, 72, 4);
      goto LABEL_41;
    }

    *v31 = v34;
    if (Slow)
    {
LABEL_41:
      v36 = *(this + 1);
      result = Slow;
LABEL_44:
      result = llvm::yaml::NullNode::NullNode(result, v36);
      *(this + 10) = result;
      return result;
    }

    result = 0;
    *(this + 10) = 0;
  }

  return result;
}

void llvm::yaml::MappingNode::increment(llvm::yaml::MappingNode *this)
{
  v2 = ****(this + 1);
  v3 = *(v2 + 75);
  if (v3 == 1)
  {
    goto LABEL_8;
  }

  v4 = *(this + 10);
  if (v4)
  {
    Key = llvm::yaml::KeyValueNode::getKey(*(this + 10));
    if (Key)
    {
      (*(*Key + 8))(Key);
      Value = llvm::yaml::KeyValueNode::getValue(v4);
      if (Value)
      {
        (*(*Value + 8))(Value);
      }
    }

    if (*(this + 18) == 2)
    {
      LOBYTE(v3) = 1;
LABEL_8:
      *(this + 77) = v3;
      *(this + 10) = 0;
      return;
    }

    v2 = ****(this + 1);
  }

  v7 = llvm::yaml::Scanner::peekNext(v2);
  v8 = v7[2];
  v41 = *v7;
  v42 = v8;
  if (*(v7 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v43, v7[3], v7[4]);
    v10 = v41;
    if ((v41 & 0xFFFFFFFD) == 0x10)
    {
LABEL_12:
      v11 = **(this + 1);
      v13 = *(v11 + 8);
      v12 = (v11 + 8);
      v12[10] += 88;
      Slow = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
      v15 = Slow + 88;
      if (v13)
      {
        v16 = v15 > v12[1];
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v12, 88, 88, 4);
      }

      else
      {
        *v12 = v15;
        if (!Slow)
        {
LABEL_18:
          *(this + 10) = Slow;
          goto LABEL_51;
        }
      }

      v17 = *(this + 1);
      *Slow = &unk_2868A3550;
      *(Slow + 8) = v17;
      *(Slow + 16) = 0;
      *(Slow + 24) = 0;
      *(Slow + 32) = 3;
      *(Slow + 40) = 0u;
      *(Slow + 56) = 0u;
      v18 = llvm::yaml::Scanner::peekNext(***v17)[1];
      *(Slow + 16) = v18;
      *(Slow + 24) = v18;
      *Slow = &unk_2868A3628;
      *(Slow + 72) = 0;
      *(Slow + 80) = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v9 = *(v7 + 3);
    v43.__r_.__value_.__r.__words[2] = v7[5];
    *&v43.__r_.__value_.__l.__data_ = v9;
    v10 = v41;
    if ((v41 & 0xFFFFFFFD) == 0x10)
    {
      goto LABEL_12;
    }
  }

  if (*(this + 18))
  {
    if (v10)
    {
      if (v10 != 15)
      {
        if (v10 == 11)
        {
          llvm::yaml::Scanner::getNext(****(this + 1), v33);
          if (v35 < 0)
          {
            operator delete(__p);
          }

          llvm::yaml::MappingNode::increment(this);
          goto LABEL_51;
        }

        v36[0] = "Unexpected token. Expected Key, Flow Entry, or Flow Mapping End.";
        v37 = 259;
        v20 = ****(this + 1);
        v21 = *(v20 + 48);
        if (v21 <= *(&v41 + 1))
        {
          v22 = (v21 - 1);
        }

        else
        {
          v22 = *(&v41 + 1);
        }

        v23 = *(v20 + 336);
        if (v23)
        {
          v24 = std::generic_category();
          *v23 = 22;
          v23[1] = v24;
        }

        if ((*(v20 + 75) & 1) == 0)
        {
          llvm::SourceMgr::PrintMessage(*v20, v22, 0, v36, 0, 0, 0, 0, *(v20 + 76));
        }

        *(v20 + 75) = 1;
        goto LABEL_50;
      }

      llvm::yaml::Scanner::getNext(****(this + 1), v30);
      if (v32 < 0)
      {
        v19 = v31;
        goto LABEL_33;
      }
    }
  }

  else if (v10)
  {
    if (v10 != 8)
    {
      v36[0] = "Unexpected token. Expected Key or Block End";
      v37 = 259;
      v25 = ****(this + 1);
      v26 = *(v25 + 48);
      if (v26 <= *(&v41 + 1))
      {
        v27 = (v26 - 1);
      }

      else
      {
        v27 = *(&v41 + 1);
      }

      v28 = *(v25 + 336);
      if (v28)
      {
        v29 = std::generic_category();
        *v28 = 22;
        v28[1] = v29;
      }

      if ((*(v25 + 75) & 1) == 0)
      {
        llvm::SourceMgr::PrintMessage(*v25, v27, 0, v36, 0, 0, 0, 0, *(v25 + 76));
      }

      *(v25 + 75) = 1;
      goto LABEL_50;
    }

    llvm::yaml::Scanner::getNext(****(this + 1), v38);
    if (v40 < 0)
    {
      v19 = v39;
LABEL_33:
      operator delete(v19);
    }
  }

LABEL_50:
  *(this + 77) = 1;
  *(this + 10) = 0;
LABEL_51:
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }
}

void *llvm::yaml::KeyValueNode::skip(llvm::yaml::KeyValueNode *this)
{
  result = llvm::yaml::KeyValueNode::getKey(this);
  if (result)
  {
    (*(*result + 8))(result);
    result = llvm::yaml::KeyValueNode::getValue(this);
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void llvm::yaml::SequenceNode::increment(llvm::yaml::SequenceNode *this)
{
  v2 = ****(this + 1);
  if (*(v2 + 75) == 1)
  {
    *(this + 77) = 1;
    *(this + 10) = 0;
    return;
  }

  v3 = *(this + 10);
  if (v3)
  {
    (*(*v3 + 8))(*(this + 10));
    v2 = ****(this + 1);
  }

  v4 = llvm::yaml::Scanner::peekNext(v2);
  v5 = v4[2];
  v38 = *v4;
  v39 = v5;
  if (*(v4 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v40, v4[3], v4[4]);
    v7 = *(this + 18);
    if (v7 != 2)
    {
LABEL_8:
      if (v7 != 1)
      {
        if (v7)
        {
          goto LABEL_57;
        }

        if (v38)
        {
          if (v38 == 8)
          {
            llvm::yaml::Scanner::getNext(****(this + 1), v32);
            if (v34 < 0)
            {
              operator delete(v33);
            }
          }

          else
          {
            if (v38 == 7)
            {
              llvm::yaml::Scanner::getNext(****(this + 1), v35);
              if ((v37 & 0x80000000) == 0)
              {
                goto LABEL_20;
              }

              v8 = v36;
              goto LABEL_19;
            }

            v30[0] = "Unexpected token. Expected Block Entry or Block End.";
            v31 = 259;
            v15 = ****(this + 1);
            v16 = *(v15 + 48);
            if (v16 <= *(&v38 + 1))
            {
              v17 = (v16 - 1);
            }

            else
            {
              v17 = *(&v38 + 1);
            }

            v18 = *(v15 + 336);
            if (v18)
            {
              v19 = std::generic_category();
              *v18 = 22;
              v18[1] = v19;
            }

            if ((*(v15 + 75) & 1) == 0)
            {
              llvm::SourceMgr::PrintMessage(*v15, v17, 0, v30, 0, 0, 0, 0, *(v15 + 76));
            }

            *(v15 + 75) = 1;
          }
        }

        goto LABEL_56;
      }

      if (v38 <= 4)
      {
        if (!v38)
        {
          goto LABEL_56;
        }

        if (v38 != 2)
        {
LABEL_49:
          if (*(this + 78))
          {
            v20 = llvm::yaml::Document::parseBlockNode(**(this + 1));
            *(this + 10) = v20;
            if (!v20)
            {
              *(this + 77) = 1;
            }

            *(this + 78) = 0;
            goto LABEL_57;
          }

          v30[0] = "Expected , between entries!";
          v31 = 259;
          llvm::yaml::Node::setError(this, v30, &v38);
          goto LABEL_56;
        }
      }

      else if ((v38 - 5) >= 2)
      {
        if (v38 == 13)
        {
          llvm::yaml::Scanner::getNext(****(this + 1), v21);
          if (v23 < 0)
          {
            operator delete(v22);
          }

          goto LABEL_56;
        }

        if (v38 == 11)
        {
          llvm::yaml::Scanner::getNext(****(this + 1), v24);
          if (v26 < 0)
          {
            operator delete(v25);
          }

          *(this + 78) = 1;
          llvm::yaml::SequenceNode::increment(this);
          goto LABEL_57;
        }

        goto LABEL_49;
      }

      v30[0] = "Could not find closing ]!";
      v31 = 259;
      v10 = ****(this + 1);
      v11 = *(v10 + 48);
      if (v11 <= *(&v38 + 1))
      {
        v12 = (v11 - 1);
      }

      else
      {
        v12 = *(&v38 + 1);
      }

      v13 = *(v10 + 336);
      if (v13)
      {
        v14 = std::generic_category();
        *v13 = 22;
        v13[1] = v14;
      }

      if ((*(v10 + 75) & 1) == 0)
      {
        llvm::SourceMgr::PrintMessage(*v10, v12, 0, v30, 0, 0, 0, 0, *(v10 + 76));
      }

      *(v10 + 75) = 1;
      goto LABEL_56;
    }
  }

  else
  {
    v6 = *(v4 + 3);
    v40.__r_.__value_.__r.__words[2] = v4[5];
    *&v40.__r_.__value_.__l.__data_ = v6;
    v7 = *(this + 18);
    if (v7 != 2)
    {
      goto LABEL_8;
    }
  }

  if (v38 == 7)
  {
    llvm::yaml::Scanner::getNext(****(this + 1), v27);
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    v8 = __p;
LABEL_19:
    operator delete(v8);
LABEL_20:
    v9 = llvm::yaml::Document::parseBlockNode(**(this + 1));
    *(this + 10) = v9;
    if (v9)
    {
      goto LABEL_57;
    }
  }

LABEL_56:
  *(this + 77) = 1;
  *(this + 10) = 0;
LABEL_57:
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }
}