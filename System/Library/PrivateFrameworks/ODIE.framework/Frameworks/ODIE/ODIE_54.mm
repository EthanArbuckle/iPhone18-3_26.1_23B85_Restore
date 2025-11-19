void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F238, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F238))
  {
    qword_27FC1F228 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::Properties>();
    unk_27FC1F230 = v1;
    __cxa_guard_release(&qword_27FC1F238);
  }

  return qword_27FC1F228;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::Properties]";
  v6 = 140;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::AllocConstOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t *mlir::SideEffects::Effect::get<mlir::MemoryEffects::Allocate>()
{
  {
    mlir::SideEffects::Effect::get<mlir::MemoryEffects::Allocate>(void)::instance = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID();
  }

  return &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Allocate>(void)::instance;
}

uint64_t mlir::detail::TypeIDResolver<mlir::SideEffects::DefaultResource,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::SideEffects::DefaultResource>();
      mlir::detail::TypeIDResolver<mlir::SideEffects::DefaultResource,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[288];
}

uint64_t llvm::getTypeName<mlir::SideEffects::DefaultResource>()
{
  {
    llvm::getTypeName<mlir::SideEffects::DefaultResource>(void)::Name = llvm::detail::getTypeNameImpl<mlir::SideEffects::DefaultResource>();
    *algn_27FC19918 = v1;
  }

  return llvm::getTypeName<mlir::SideEffects::DefaultResource>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::SideEffects::DefaultResource>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::SideEffects::DefaultResource]";
  v6 = 96;
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

uint64_t llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Allocate *,mlir::OpResult,int,BOOL,mlir::SideEffects::DefaultResource *>(uint64_t a1, void *a2, uint64_t *a3, int *a4, char *a5, uint64_t *a6)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v8 = *a4;
  v9 = *a5;
  v10 = *a6;
  v17[0] = *a2;
  v17[1] = v10;
  v17[2] = v7 & 0xFFFFFFFFFFFFFFF9 | 4;
  v17[3] = 0;
  v18 = v8;
  v19 = v9;
  v11 = llvm::SmallVectorTemplateCommon<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>>(a1, v17, 1);
  v12 = *a1 + 40 * *(a1 + 8);
  v13 = *(v11 + 32);
  v14 = *(v11 + 16);
  *v12 = *v11;
  *(v12 + 16) = v14;
  *(v12 + 32) = v13;
  LODWORD(v12) = *(a1 + 8) + 1;
  *(a1 + 8) = v12;
  v15 = *MEMORY[0x277D85DE8];
  return *a1 + 40 * v12 - 40;
}

unint64_t llvm::SmallVectorTemplateCommon<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v5 > *(a1 + 12))
  {
    v7 = *a1 + 40 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 40);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 40);
    }
  }

  return v3;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F260, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F260))
  {
    qword_27FC1F250 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::Properties>();
    *algn_27FC1F258 = v1;
    __cxa_guard_release(&qword_27FC1F260);
  }

  return qword_27FC1F250;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::Properties]";
  v6 = 139;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::AllocViewOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AsyncAwaitOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AsyncAwaitOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::detail::AsyncAwaitOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F288, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F288))
  {
    qword_27FC1F278 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::AsyncAwaitOpGenericAdaptorBase::Properties>();
    unk_27FC1F280 = v1;
    __cxa_guard_release(&qword_27FC1F288);
  }

  return qword_27FC1F278;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::AsyncAwaitOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::detail::AsyncAwaitOpGenericAdaptorBase::Properties]";
  v6 = 140;
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

BOOL llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand*,mlir::OpAsmParser::UnresolvedOperand*>::incrementHelper<0ul>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  if (*a1 != v2)
  {
    *a1 = v1 + 32;
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand*,mlir::OpAsmParser::UnresolvedOperand*>::incrementHelper<1ul>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  if (v1 != v2)
  {
    *(a1 + 8) = v1 + 32;
  }

  return v1 != v2;
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand*,mlir::OpAsmParser::UnresolvedOperand*>::getHelper<0ul>(void *a1)
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

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand*,mlir::OpAsmParser::UnresolvedOperand*>::getHelper<1ul>(uint64_t a1)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F2B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F2B0))
  {
    qword_27FC1F2A0 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>();
    *algn_27FC1F2A8 = v1;
    __cxa_guard_release(&qword_27FC1F2B0);
  }

  return qword_27FC1F2A0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties]";
  v6 = 134;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::CallOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F2D8))
  {
    qword_27FC1F2C8 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties>();
    unk_27FC1F2D0 = v1;
    __cxa_guard_release(&qword_27FC1F2D8);
  }

  return qword_27FC1F2C8;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties]";
  v6 = 135;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::ConstOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F300, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F300))
  {
    qword_27FC1F2F0 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::Properties>();
    *algn_27FC1F2F8 = v1;
    __cxa_guard_release(&qword_27FC1F300);
  }

  return qword_27FC1F2F0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::Properties]";
  v6 = 144;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::ContextExtractOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F328))
  {
    qword_27FC1F318 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::Properties>();
    unk_27FC1F320 = v1;
    __cxa_guard_release(&qword_27FC1F328);
  }

  return qword_27FC1F318;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::Properties]";
  v6 = 143;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::ContextInsertOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::range_size<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &> &>(uint64_t **a1)
{
  v1 = 0;
  v2 = a1[1];
  v3 = **a1;
  v4 = v3 + 32 * (*a1)[1];
  v5 = *v2;
  v6 = *v2 + 32 * v2[1];
  v14 = v3;
  v15 = v5;
  v16 = v4;
  v17 = v6;
  while (v3 != v4 || v5 != v6 || v16 != v4 || v17 != v6)
  {
    v8 = &unk_286E871F8;
    v9 = 16;
    do
    {
      v10 = v9;
      v11 = *(v8 - 1);
      v12 = (&v14 + (*v8 >> 1));
      if (*v8)
      {
        v11 = *(*v12 + v11);
      }

      if (v11(v12))
      {
        break;
      }

      v8 += 2;
      v9 = v10 - 16;
    }

    while (v10);
    ++v1;
    v3 = v14;
    v5 = v15;
  }

  return v1;
}

BOOL llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::incrementHelper<0ul>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  if (*a1 != v2)
  {
    *a1 = v1 + 32;
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::incrementHelper<1ul>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  if (v1 != v2)
  {
    *(a1 + 8) = v1 + 32;
  }

  return v1 != v2;
}

uint64_t llvm::detail::zip_common<llvm::detail::zip_first<llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type *>,std::tuple<mlir::OpAsmParser::UnresolvedOperand const&,mlir::Type&>,llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type *>::deref<0ul,1ul>(uint64_t a1)
{
  v2 = &unk_286E87218;
  do
  {
    v3 = *(v2 - 1);
    v4 = (a1 + (*v2 >> 1));
    if (*v2)
    {
      v3 = *(*v4 + v3);
    }

    v2 += 2;
    result = v3(v4);
  }

  while (!result);
  v6 = *(a1 + 32);
  return result;
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<0ul>(void *a1)
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

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<1ul>(uint64_t a1)
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

uint64_t llvm::detail::zip_common<llvm::detail::zip_first<llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type *>,std::tuple<mlir::OpAsmParser::UnresolvedOperand const&,mlir::Type&>,llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type *>::tup_inc<0ul,1ul>(uint64_t a1)
{
  v2 = &unk_286E871F8;
  v3 = 16;
  do
  {
    v4 = v3;
    v5 = *(v2 - 1);
    v6 = (a1 + (*v2 >> 1));
    if (*v2)
    {
      v5 = *(*v6 + v5);
    }

    result = v5(v6);
    if (result)
    {
      break;
    }

    v2 += 2;
    v3 = v4 - 16;
  }

  while (v4);
  *(a1 + 32) += 8;
  return result;
}

void mlir::RewritePatternSet::add<mlir::ODIE::Compiler::Exec::CopyOp>(llvm::LogicalResult (*)(mlir::ODIE::Compiler::Exec::CopyOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t llvm::detail::zip_common<llvm::detail::zip_first<llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type const*>,std::tuple<mlir::OpAsmParser::UnresolvedOperand const&,mlir::Type const&>,llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type const*>::deref<0ul,1ul>(uint64_t a1)
{
  v2 = &unk_286E87218;
  do
  {
    v3 = *(v2 - 1);
    v4 = (a1 + (*v2 >> 1));
    if (*v2)
    {
      v3 = *(*v4 + v3);
    }

    v2 += 2;
    result = v3(v4);
  }

  while (!result);
  v6 = *(a1 + 32);
  return result;
}

uint64_t llvm::detail::zip_common<llvm::detail::zip_first<llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type const*>,std::tuple<mlir::OpAsmParser::UnresolvedOperand const&,mlir::Type const&>,llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type const*>::tup_inc<0ul,1ul>(uint64_t a1)
{
  v2 = &unk_286E871F8;
  v3 = 16;
  do
  {
    v4 = v3;
    v5 = *(v2 - 1);
    v6 = (a1 + (*v2 >> 1));
    if (*v2)
    {
      v5 = *(*v6 + v5);
    }

    result = v5(v6);
    if (result)
    {
      break;
    }

    v2 += 2;
    v3 = v4 - 16;
  }

  while (v4);
  *(a1 + 32) += 8;
  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F350, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F350))
  {
    qword_27FC1F340 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::Properties>();
    *algn_27FC1F348 = v1;
    __cxa_guard_release(&qword_27FC1F350);
  }

  return qword_27FC1F340;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::Properties]";
  v6 = 139;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::InferTypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F378))
  {
    qword_27FC1F368 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::Properties>();
    unk_27FC1F370 = v1;
    __cxa_guard_release(&qword_27FC1F378);
  }

  return qword_27FC1F368;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::Properties]";
  v6 = 134;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::InitOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F3A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F3A0))
  {
    qword_27FC1F390 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::Properties>();
    *algn_27FC1F398 = v1;
    __cxa_guard_release(&qword_27FC1F3A0);
  }

  return qword_27FC1F390;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::Properties]";
  v6 = 143;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::IsolatedGroupOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::Exec::anonymous namespace::GroupDropUnusedResults<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::~GroupDropUnusedResults(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Exec::anonymous namespace::GroupDropUnusedResults<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = (((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  if (*v3 != v3)
  {
    v4 = v3[1];
    if (*(v4 + 8) == v3)
    {
      v8 = *(a2 + 36);
      if (v8)
      {
        v9 = a3;
        v10 = *(v4 + 24);
        v50[0] = 0;
        v52 = v54;
        v53 = 0x600000000;
        v50[1] = 0;
        v51 = 0;
        if ((*(v10 + 46) & 0x80) == 0)
        {
          goto LABEL_23;
        }

        v11 = *(v10 + 68);
        v12 = *(v10 + 72);
        if (v11)
        {
          v47 = v10;
          v13 = 0;
          v14 = a2 - 16;
          v15 = v11 - 1;
          v16 = v8 - 1;
          v17 = (v12 + 24);
          v18 = a2 - 16;
          while (1)
          {
            v19 = a2 - 16;
            if (v13)
            {
              v20 = *(a2 - 8) & 7;
              v21 = a2 - 16;
              v22 = v13;
              if (v20 == 6)
              {
                goto LABEL_12;
              }

              v23 = (5 - v20);
              v19 = v18;
              v22 = v13 - v23;
              if (v13 > v23)
              {
                break;
              }
            }

LABEL_13:
            if (*v19)
            {
              llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v52, *v17);
              v24 = *(v19 + 8);
              if ((v24 & 7) == 6)
              {
                v25 = *(v19 + 16) + 6;
              }

              else
              {
                v25 = v24 & 7;
              }

              v26 = v53 - 1;
              LODWORD(v55) = v25;
              *llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::operator[](v50, &v55) = v26;
            }

            if (v16 != v13)
            {
              v18 -= 16;
              v17 += 4;
              if (v15 != v13++)
              {
                continue;
              }
            }

            v10 = v47;
            v9 = a3;
            if ((*(v47 + 46) & 0x80) != 0)
            {
              v28 = *(v47 + 68);
              v12 = *(v47 + 72);
              goto LABEL_25;
            }

LABEL_23:
            v12 = 0;
            goto LABEL_24;
          }

          v21 = v14 - 16 * v23;
LABEL_12:
          v19 = v21 - 24 * v22;
          goto LABEL_13;
        }

LABEL_24:
        v28 = 0;
LABEL_25:
        if (v28 != v53)
        {
          goto LABEL_35;
        }

        if (v53)
        {
          v29 = v52;
          v30 = ((v28 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
          v31 = 8 * v53;
          v32 = (v12 + 24);
          v33 = v28;
          while (v33 && *v29 == *v32)
          {
            ++v29;
            v32 += 4;
            --v33;
            v31 -= 8;
            if (!v31)
            {
              goto LABEL_33;
            }
          }

          goto LABEL_35;
        }

        v30 = 0;
LABEL_33:
        if (v30 != v28)
        {
LABEL_35:
          v34 = (v9 + 24);
          v49 = *(v9 + 24);
          *(v9 + 24) = *(v10 + 16);
          *(v9 + 32) = v10;
          v35 = *(v10 + 24);
          v36 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::YieldOp>(v9 + 8, *(**v35 + 32));
          v55 = v35;
          v56 = v36;
          v57 = v59;
          v58 = 0x400000000;
          v60 = v62;
          v61 = 0x400000000;
          v63 = v65;
          v64 = 0x400000000;
          v66 = 4;
          v67 = &v69;
          v68 = 0x100000000;
          v70 = &v72;
          v71 = 0x100000000;
          v73 = 0;
          v74 = 0;
          v75 = &mlir::detail::TypeIDResolver<void,void>::id;
          v76 = 0;
          v77 = 0;
          llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v57, v52 & 0xFFFFFFFFFFFFFFF9, 0, v52 & 0xFFFFFFFFFFFFFFF9, v53);
          v37 = mlir::Operation::create(&v55);
          mlir::OpBuilder::insert((v9 + 8), v37);
          v38 = *(*(v37 + 6) + 16);
          mlir::OperationState::~OperationState(&v55);
          if (v38 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::YieldOp,void>::id)
          {
            v39 = v37;
          }

          else
          {
            v39 = 0;
          }

          (*(*v9 + 8))(v9, v10, v39);
          if (v49)
          {
            *v34 = v49;
          }

          else
          {
            *v34 = 0;
            *(v9 + 32) = 0;
          }

          v40 = *(a2 + 24);
          if ((*(a2 + 46) & 0x80) != 0)
          {
            v41 = *(a2 + 68);
            v42 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
          }

          else
          {
            v41 = 0;
            v42 = 2;
          }

          AttrDictionary = mlir::Operation::getAttrDictionary(a2);
          v44 = *(AttrDictionary + 8);
          v45 = *(AttrDictionary + 16);
          v46 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>(v9 + 8, *(**v40 + 32));
          v55 = v40;
          v56 = v46;
          v57 = v59;
          v58 = 0x400000000;
          v60 = v62;
          v61 = 0x400000000;
          v63 = v65;
          v64 = 0x400000000;
          v66 = 4;
          v67 = &v69;
          v68 = 0x100000000;
          v70 = &v72;
          v71 = 0x100000000;
          v73 = 0;
          v74 = 0;
          v75 = &mlir::detail::TypeIDResolver<void,void>::id;
          v76 = 0;
          v77 = 0;
          llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v57, v42, 0, v42, v41);
          v66 = 0;
          llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(&v63, v44, &v44[16 * v45]);
          mlir::OperationState::addRegion(&v55);
        }

        MEMORY[0x25F891030](v50[0], 4);
        if (v52 != v54)
        {
          free(v52);
        }
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::YieldOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::YieldOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "exec.yield";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "exec.isolated_group";
    v6[3] = 19;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::anonymous namespace::GroupDropUnusedResults<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::(anonymous namespace)::GroupDropUnusedResults<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>]";
  v6 = 180;
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

void mlir::ODIE::Compiler::Exec::anonymous namespace::GroupDropUnusedOperands<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::~GroupDropUnusedOperands(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Exec::anonymous namespace::GroupDropUnusedOperands<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::matchAndRewrite(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 44);
  if ((v2 & 0x800000) != 0 && (v4 = *(a2 + 68)) != 0)
  {
    v5 = *(((a2 + ((v2 >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
    if (v5)
    {
      v6 = (v5 - 8);
    }

    else
    {
      v6 = 0;
    }

    v22[0] = v23;
    v22[1] = 0x600000000;
    llvm::SmallVectorImpl<unsigned long>::assign(v22, (v4 + 63) >> 6, 0);
    v7 = 0;
    v23[12] = v4;
    v19 = v21;
    *v20 = 0x600000000;
    for (i = 24; ; i += 32)
    {
      v9 = (*(a2 + 46) & 0x80) != 0 ? *(a2 + 68) : 0;
      if (v7 >= v9)
      {
        break;
      }

      if (**(*(v6 + 6) + 8 * v7))
      {
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v19, *(*(a2 + 72) + i));
      }

      else
      {
        *(v22[0] + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
      }

      ++v7;
    }

    mlir::Block::eraseArguments(v6, v22);
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v10 = *(a2 + 68);
    }

    else
    {
      v10 = 0;
    }

    v13 = a2;
    v14 = 0;
    v15 = v10;
    v16 = v18;
    v17 = 0x100000000;
    mlir::MutableOperandRange::assign(&v13, v19 & 0xFFFFFFFFFFFFFFF9, v20[0]);
    if (v16 != v18)
    {
      free(v16);
    }

    if (v19 != v21)
    {
      free(v19);
    }

    if (v22[0] != v23)
    {
      free(v22[0]);
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::anonymous namespace::GroupDropUnusedOperands<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::(anonymous namespace)::GroupDropUnusedOperands<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>]";
  v6 = 181;
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

void mlir::ODIE::Compiler::Exec::anonymous namespace::RemoveUnusedOp<mlir::ODIE::Compiler::Exec::AllocOp>::~RemoveUnusedOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Exec::anonymous namespace::RemoveUnusedOp<mlir::ODIE::Compiler::Exec::AllocOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 36);
  v6 = a2 - 16;
  if (!v5)
  {
    v6 = 0;
  }

  v8[0] = v6;
  v8[1] = 0;
  v8[2] = v6;
  v8[3] = v5;
  v9 = 0;
  if (v5)
  {
    mlir::ResultRange::UseIterator::skipOverResultsWithNoUsers(v8);
    if (v9)
    {
      return 0;
    }
  }

  (*(*a3 + 16))(a3, a2);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::anonymous namespace::RemoveUnusedOp<mlir::ODIE::Compiler::Exec::AllocOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::(anonymous namespace)::RemoveUnusedOp<mlir::ODIE::Compiler::Exec::AllocOp>]";
  v6 = 164;
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

void mlir::ODIE::Compiler::Exec::TrivialViewsPattern::~TrivialViewsPattern(mlir::ODIE::Compiler::Exec::TrivialViewsPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Exec::TrivialViewsPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
  v10 = *(v4 + 24);
  if (v10 > 0x40)
  {
    operator new[]();
  }

  if (*(v4 + 16) || (*(a2 - 8) ^ *(*(*(a2 + 72) + 24) + 8)) >= 8)
  {
    v9 = "not a trivial view";
    v11 = 259;
    v12 = &v9;
    v8 = *(a3 + 16);
    if (v8 && v8[2] == 1)
    {
      (*(*v8 + 88))(v8, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::Exec::AllocViewOp &>(mlir::ODIE::Compiler::Exec::AllocViewOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v12);
    }

    return 0;
  }

  else
  {
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v5 = *(a2 + 68);
      v6 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    }

    else
    {
      v5 = 0;
      v6 = 2;
    }

    (**a3)(a3, a2, v6, v5);
    return 1;
  }
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::TrivialViewsPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::TrivialViewsPattern]";
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

void mlir::ODIE::Compiler::Exec::CombineViewsPattern::~CombineViewsPattern(mlir::ODIE::Compiler::Exec::CombineViewsPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Exec::CombineViewsPattern::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a2 + 72) + 24);
  v6 = *(v5 + 8);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = *(v5 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v5 + 24 * *(v5 + 16);
    v9 = v8 + 120;
    if (v8 == -120)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = v5 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocViewOp,void>::id)
  {
LABEL_9:
    v10 = "Base is not a view";
LABEL_10:
    v20 = v10;
    v22 = 259;
    v25 = &v20;
    v11 = a3[2];
    if (v11)
    {
      if (v11[2] == 1)
      {
        (*(*v11 + 88))(v11, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::Exec::AllocViewOp &>(mlir::ODIE::Compiler::Exec::AllocViewOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v25);
      }
    }

    return 0;
  }

  if ((*(*(*(v9 + 72) + 24) + 8) ^ v6) >= 8)
  {
    v10 = "BaseView and CurrentView base types are different";
    goto LABEL_10;
  }

  (*(*a3 + 40))(a3, a2);
  v13 = *(a2 + 72);
  v14 = *(*(v9 + 72) + 24);
  v15 = v13[1];
  if (v15)
  {
    v16 = *v13;
    *v15 = *v13;
    if (v16)
    {
      *(v16 + 8) = v13[1];
    }
  }

  v13[3] = v14;
  v13[1] = v14;
  v17 = *v14;
  *v13 = *v14;
  if (v17)
  {
    *(v17 + 8) = v13;
  }

  *v14 = v13;
  v18 = *(v9 + 16 * ((*(v9 + 44) >> 23) & 1) + 72);
  v26 = *(v18 + 24);
  if (v26 > 0x40)
  {
    operator new[]();
  }

  v25 = *(v18 + 16);
  v19 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
  v24 = *(v19 + 24);
  if (v24 > 0x40)
  {
    operator new[]();
  }

  v23 = *(v19 + 16);
  llvm::APInt::sadd_sat(&v25, &v23, &v20);
  *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8) = mlir::IntegerAttr::get(*(**(***(a2 + 24) + 32) + 472), &v20);
  if (v21 >= 0x41 && v20)
  {
    MEMORY[0x25F891010](v20, 0x1000C8000313F17);
  }

  if (v26 >= 0x41 && v25)
  {
    MEMORY[0x25F891010](v25, 0x1000C8000313F17);
  }

  (*(*a3 + 48))(a3, a2);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::CombineViewsPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::CombineViewsPattern]";
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

void mlir::ODIE::Compiler::Exec::ViewOfAllocPattern::~ViewOfAllocPattern(mlir::ODIE::Compiler::Exec::ViewOfAllocPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Exec::ViewOfAllocPattern::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a2 + 72) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16);
    v8 = (v7 + 120);
    if (v7 == -120)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = (v5 + 16 * v6 + 16);
  }

  if (*(*(v8 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocOp,void>::id && mlir::Operation::hasOneUse(v8))
  {
    v12[0] = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
    v14 = 0;
    v9 = mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::AllocOp,mlir::Type,decltype(nullptr)>((a3 + 1), *(a2 + 24), v12);
    (*(*a3 + 8))(a3, a2, v9);
    return 1;
  }

LABEL_11:
  v12[0] = "Base is not a single-use alloc";
  v13 = 259;
  v14 = v12;
  v11 = a3[2];
  if (v11)
  {
    if (v11[2] == 1)
    {
      (*(*v11 + 88))(v11, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::Exec::AllocViewOp &>(mlir::ODIE::Compiler::Exec::AllocViewOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v14);
    }
  }

  return 0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::ViewOfAllocPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::ViewOfAllocPattern]";
  v6 = 108;
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

void mlir::ODIE::Compiler::Exec::anonymous namespace::RemoveUnusedOp<mlir::ODIE::Compiler::Exec::UndefOp>::~RemoveUnusedOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Exec::anonymous namespace::RemoveUnusedOp<mlir::ODIE::Compiler::Exec::UndefOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 36);
  v6 = a2 - 16;
  if (!v5)
  {
    v6 = 0;
  }

  v8[0] = v6;
  v8[1] = 0;
  v8[2] = v6;
  v8[3] = v5;
  v9 = 0;
  if (v5)
  {
    mlir::ResultRange::UseIterator::skipOverResultsWithNoUsers(v8);
    if (v9)
    {
      return 0;
    }
  }

  (*(*a3 + 16))(a3, a2);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::anonymous namespace::RemoveUnusedOp<mlir::ODIE::Compiler::Exec::UndefOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::(anonymous namespace)::RemoveUnusedOp<mlir::ODIE::Compiler::Exec::UndefOp>]";
  v6 = 164;
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

uint64_t mlir::ODIE::Compiler::Exec::ContextType::setTypes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v3 = **(***a1 + 32);
  v7 = *a1;
  v6[0] = &v7;
  v6[1] = v5;
  return mlir::detail::StorageUniquerImpl::mutate(*(v3 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id, v7, llvm::function_ref<llvm::LogicalResult ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<llvm::LogicalResult mlir::StorageUniquer::mutate<mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage,llvm::ArrayRef<mlir::Type> &>(mlir::TypeID,mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage *,llvm::ArrayRef<mlir::Type> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v6);
}

void mlir::FieldParser<llvm::SmallVector<mlir::Type,6u>,llvm::SmallVector<mlir::Type,6u>>::parse(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v5 = v7;
  v6 = 0x600000000;
  if ((*(*a1 + 392))())
  {
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000000;
    if (v6)
    {
      llvm::SmallVectorImpl<mlir::Type>::operator=(a2, &v5);
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v3;
  if (v5 != v7)
  {
    free(v5);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t std::optional<llvm::SmallVector<mlir::Type,6u>>::value_or[abi:nn200100]<llvm::SmallVector<mlir::Type,6u>>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(result + 64);
  *a3 = a3 + 2;
  a3[1] = 0x600000000;
  if (v3 == 1)
  {
    if (*(result + 8))
    {
      return llvm::SmallVectorImpl<mlir::Type>::operator=(a3, result);
    }
  }

  else if (*(a2 + 8))
  {
    return llvm::SmallVectorImpl<mlir::Type>::operator=(a3, a2);
  }

  return result;
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<llvm::ArrayRef<mlir::Type>,(void *)0>(uint64_t result, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = result;
    result = (*(*result + 32))(result, *a2);
    if (a3 != 1)
    {
      v6 = 8 * a3;
      v7 = a2 + 1;
      v8 = v6 - 8;
      do
      {
        v9 = (*(*v5 + 16))(v5);
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

        v11 = *v7++;
        result = (*(*v5 + 32))(v5, v11);
        v8 -= 8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::AsyncMemRefType::get(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v11 = a2;
  *(&v11 + 1) = a3;
  *(&v9 + 1) = a6;
  v10 = a4;
  v8 = a7;
  *&v9 = a5;
  return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::AsyncMemRefType,llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>(a1, &v11, &v10, &v9, &v8);
}

uint64_t mlir::ODIE::Compiler::Exec::AsyncFutureType::parse(mlir::ODIE::Compiler::Exec::AsyncFutureType *this, mlir::AsmParser *a2)
{
  v12[26] = *MEMORY[0x277D85DE8];
  (*(*this + 32))(this, a2);
  (*(*this + 40))(this);
  if (((*(*this + 152))(this) & 1) == 0)
  {
    goto LABEL_6;
  }

  v10[0] = 0;
  v3 = (*(*this + 536))(this, v10);
  v4 = *this;
  if ((v3 & 1) == 0)
  {
    v8 = (*(v4 + 40))(this);
    v11 = 259;
    (*(*this + 24))(v12, this, v8, v10);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    goto LABEL_6;
  }

  v5 = v10[0];
  if (((*(v4 + 168))(this) & 1) == 0)
  {
LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  v6 = (*(*this + 32))(this);
  result = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::AsyncFutureType,mlir::Type>(*v6, v5);
LABEL_7:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::ExecDialect::parseType(uint64_t a1, mlir::ODIE::Compiler::Exec::AsyncMemRefType *a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::KeywordSwitch(v45, a2, 0);
  v56 = "type";
  v57 = 4;
  if (v48[2])
  {
    goto LABEL_2;
  }

  v7 = v47;
  if (v47 == 4)
  {
    if (*v46 == 1701869940)
    {
      (*(*a2 + 32))(a2);
      (*(*a2 + 40))(a2);
      if (((*(*a2 + 152))(a2) & 1) == 0)
      {
        goto LABEL_108;
      }

      __p.n128_u64[0] = 0;
      v18 = (*(*a2 + 536))(a2, &__p);
      v19 = *a2;
      if (v18)
      {
        v20 = __p.n128_u64[0];
        if ((*(v19 + 168))(a2))
        {
          v21 = *(*(*a2 + 32))(a2);
          __p.n128_u64[0] = v20;
          v22 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::MetaType,mlir::Type>(v21, &__p);
LABEL_88:
          v6 = v22;
LABEL_109:
          v32 = v6 == 0;
          goto LABEL_110;
        }

LABEL_108:
        v6 = 0;
        goto LABEL_109;
      }

      v33 = (*(v19 + 40))(a2);
LABEL_107:
      v60 = v34;
      v63 = 259;
      (*(*a2 + 24))(&__p, a2, v33, &v60);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
      goto LABEL_108;
    }

    goto LABEL_24;
  }

  if (v47)
  {
LABEL_24:
    v49 = "context";
    v50 = 7;
    goto LABEL_25;
  }

  (*(*v45[0] + 648))(v45[0], &v56, 1);
  v49 = "context";
  v50 = 7;
  if (v48[2])
  {
    goto LABEL_2;
  }

  v7 = v47;
  if (v47)
  {
LABEL_25:
    if (v7 != 7 || (*v46 == 1953394531 ? (v13 = *(v46 + 3) == 1954047348) : (v13 = 0), !v13))
    {
      v52.__r_.__value_.__r.__words[0] = "task";
      v52.__r_.__value_.__l.__size_ = 4;
      if (!v7)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    }

    (*(*a2 + 32))(a2);
    (*(*a2 + 40))(a2);
    v52.__r_.__value_.__s.__data_[0] = 0;
    v53 = 0;
    LOBYTE(v60) = 0;
    v64 = 0;
    if (((*(*a2 + 152))(a2) & 1) == 0)
    {
      goto LABEL_94;
    }

    mlir::FieldParser<std::string,std::string>::parse(a2, &__p);
    v23 = std::__optional_storage_base<std::string,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::string,false>>(&v52, &__p);
    if (v66[8] == 1 && (v66[7] & 0x80000000) != 0)
    {
      operator delete(__p.n128_u64[0]);
    }

    v24 = *a2;
    if (v53)
    {
      if (((*(v24 + 128))(a2, v23) & 1) == 0)
      {
        goto LABEL_68;
      }

      mlir::FieldParser<llvm::SmallVector<mlir::Type,6u>,llvm::SmallVector<mlir::Type,6u>>::parse(a2, &__p);
      std::__optional_storage_base<llvm::SmallVector<mlir::Type,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::Type,6u>,false>>(&v60, &__p);
      if (v67 == 1 && __p.n128_u64[0] != v66)
      {
        free(__p.n128_u64[0]);
      }

      if (v64)
      {
LABEL_68:
        if ((*(*a2 + 168))(a2))
        {
          v25 = *(*(*a2 + 32))(a2);
          if (v53 == 1)
          {
            if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v51, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
            }

            else
            {
              v51 = v52;
            }
          }

          else
          {
            *(&v51.__r_.__value_.__s + 23) = 0;
            v51.__r_.__value_.__s.__data_[0] = 0;
          }

          if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v39 = &v51;
          }

          else
          {
            v39 = v51.__r_.__value_.__r.__words[0];
          }

          if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = SHIBYTE(v51.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v51.__r_.__value_.__l.__size_;
          }

          v56 = v58;
          v57 = 0x600000000;
          std::optional<llvm::SmallVector<mlir::Type,6u>>::value_or[abi:nn200100]<llvm::SmallVector<mlir::Type,6u>>(&v60, &v56, &__p);
          v41 = __p.n128_u64[0];
          v42 = __p.n128_u32[2];
          v54[0] = v39;
          v54[1] = size;
          v6 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::ContextType,llvm::StringRef &>(v25, v54, v43, v44);
          v55 = v6;
          mlir::ODIE::Compiler::Exec::ContextType::setTypes(&v55, v41, v42);
          if (__p.n128_u64[0] != v66)
          {
            free(__p.n128_u64[0]);
          }

          if (v56 != v58)
          {
            free(v56);
          }

          if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v51.__r_.__value_.__l.__data_);
          }

          goto LABEL_95;
        }

LABEL_94:
        v6 = 0;
LABEL_95:
        if (v64 == 1 && v60 != v62)
        {
          free(v60);
        }

        if (v53 == 1 && SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }

        goto LABEL_109;
      }

      v35 = (*(*a2 + 40))(a2);
    }

    else
    {
      v35 = (*(v24 + 40))(a2, v23);
    }

    v56 = v36;
    v59 = 259;
    (*(*a2 + 24))(&__p, a2, v35, &v56);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
    goto LABEL_94;
  }

  (*(*v45[0] + 648))(v45[0], &v49, 1);
  v52.__r_.__value_.__r.__words[0] = "task";
  v52.__r_.__value_.__l.__size_ = 4;
  if (v48[2])
  {
    goto LABEL_2;
  }

  v7 = v47;
  if (!v47)
  {
LABEL_19:
    (*(*v45[0] + 648))(v45[0], &v52, 1);
    v56 = "task_result";
    v57 = 11;
    if (v48[2])
    {
      goto LABEL_2;
    }

    v7 = v47;
    if (!v47)
    {
      goto LABEL_21;
    }

    goto LABEL_34;
  }

LABEL_31:
  if (v7 == 4 && *v46 == 1802723700)
  {
    (*(*a2 + 32))(a2);
    (*(*a2 + 40))(a2);
    LOBYTE(v60) = 0;
    v64 = 0;
    if ((*(*a2 + 152))(a2))
    {
      mlir::FieldParser<llvm::SmallVector<mlir::Type,6u>,llvm::SmallVector<mlir::Type,6u>>::parse(a2, &__p);
      std::__optional_storage_base<llvm::SmallVector<mlir::Type,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::Type,6u>,false>>(&v60, &__p);
      if (v67 == 1 && __p.n128_u64[0] != v66)
      {
        free(__p.n128_u64[0]);
      }

      v26 = *a2;
      if (v64)
      {
        if ((*(v26 + 168))(a2))
        {
          v27 = *(*(*a2 + 32))(a2);
          __p.n128_u64[0] = v60;
          __p.n128_u64[1] = v61;
          v6 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::TaskType,llvm::ArrayRef<mlir::Type>>(v27, &__p);
LABEL_103:
          if (v64 == 1 && v60 != v62)
          {
            free(v60);
          }

          goto LABEL_109;
        }
      }

      else
      {
        v37 = (*(v26 + 40))(a2);
        v59 = 259;
        (*(*a2 + 24))(&__p, a2, v37, &v56);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
      }
    }

    v6 = 0;
    goto LABEL_103;
  }

  v56 = "task_result";
  v57 = 11;
  if (v7)
  {
LABEL_34:
    if (v7 != 11 || (*v46 == 0x7365725F6B736174 ? (v14 = *(v46 + 3) == 0x746C757365725F6BLL) : (v14 = 0), !v14))
    {
      __p.n128_u64[0] = "async.memref";
      __p.n128_u64[1] = 12;
      goto LABEL_40;
    }

    (*(*a2 + 32))(a2);
    (*(*a2 + 40))(a2);
    if (((*(*a2 + 152))(a2) & 1) == 0)
    {
      goto LABEL_108;
    }

    __p.n128_u64[0] = 0;
    v28 = (*(*a2 + 536))(a2, &__p);
    v29 = *a2;
    if (v28)
    {
      v30 = __p.n128_u64[0];
      if ((*(v29 + 168))(a2))
      {
        v31 = *(*(*a2 + 32))(a2);
        __p.n128_u64[0] = v30;
        v22 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::TaskResultType,mlir::Type>(v31, &__p);
        goto LABEL_88;
      }

      goto LABEL_108;
    }

    v33 = (*(v29 + 40))(a2);
    goto LABEL_107;
  }

LABEL_21:
  (*(*v45[0] + 648))(v45[0], &v56, 1);
  __p.n128_u64[0] = "async.memref";
  __p.n128_u64[1] = 12;
  if (v48[2])
  {
    goto LABEL_2;
  }

  v7 = v47;
LABEL_40:
  if (v7)
  {
    if (v7 == 12 && *v46 == 0x656D2E636E797361 && v46[2] == 1717924461)
    {
      v17 = mlir::ODIE::Compiler::Exec::AsyncMemRefType::parse(a2, v5);
LABEL_90:
      v6 = v17;
      v32 = v17 == 0;
LABEL_110:
      v38 = !v32;
      v48[0] = v38;
      *&v48[1] = 257;
      goto LABEL_3;
    }

    __p.n128_u64[0] = "async.future";
    __p.n128_u64[1] = 12;
LABEL_47:
    if (v7 != 12)
    {
      goto LABEL_76;
    }

    if (*v46 != 0x75662E636E797361 || v46[2] != 1701999988)
    {
      goto LABEL_76;
    }

    v17 = mlir::ODIE::Compiler::Exec::AsyncFutureType::parse(a2, v5);
    goto LABEL_90;
  }

  (*(*v45[0] + 648))(v45[0], &__p, 1);
  __p.n128_u64[0] = "async.future";
  __p.n128_u64[1] = 12;
  if (v48[2])
  {
    goto LABEL_2;
  }

  v7 = v47;
  if (v47)
  {
    goto LABEL_47;
  }

  (*(*v45[0] + 648))(v45[0], &__p, 1);
  if (v48[2])
  {
LABEL_2:
    v6 = 0;
LABEL_3:
    v7 = 0;
    v8 = 0;
    goto LABEL_4;
  }

  v7 = v47;
LABEL_76:
  v6 = 0;
  v8 = v46;
  *v48 = 0;
  v48[2] = 1;
LABEL_4:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v45) & 0x100) == 0)
  {
    v59 = 257;
    (*(*a2 + 24))(&__p, a2, v4, &v56);
    if (__p.n128_u64[0])
    {
      if (__p.n128_u64[0])
      {
        v63 = 261;
        v60 = v8;
        v61 = v7;
        mlir::Diagnostic::operator<<(&__p.n128_i64[1], &v60);
        if (__p.n128_u64[0])
        {
          if (__p.n128_u64[0])
          {
            v9 = *(a1 + 8);
            v10 = *(a1 + 16);
            v63 = 261;
            v60 = v9;
            v61 = v10;
            mlir::Diagnostic::operator<<(&__p.n128_i64[1], &v60);
            if (__p.n128_u64[0])
            {
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void mlir::ODIE::Compiler::Exec::ExecDialect::printType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a2 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MetaType,void>::id)
  {
    v6 = (*(*a3 + 16))(a3);
    v10 = *(v6 + 4);
    if (*(v6 + 3) - v10 <= 3uLL)
    {
      v8 = "type";
      v9 = 4;
      goto LABEL_11;
    }

    *v10 = 1701869940;
    v13 = *(v6 + 4) + 4;
LABEL_15:
    *(v6 + 4) = v13;
    goto LABEL_16;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id)
  {
    v11 = (*(*a3 + 16))(a3);
    v12 = *(v11 + 4);
    if (*(v11 + 3) - v12 > 6uLL)
    {
      *(v12 + 3) = 1954047348;
      *v12 = 1953394531;
      *(v11 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v11, "context", 7uLL);
    }

    v18 = (*(*a3 + 16))(a3);
    v19 = *(v18 + 4);
    if (*(v18 + 3) == v19)
    {
      llvm::raw_ostream::write(v18, "<", 1uLL);
    }

    else
    {
      *v19 = 60;
      ++*(v18 + 4);
    }

    if (!*(a2 + 16))
    {
      goto LABEL_41;
    }

    (*(*a3 + 80))(a3, *(a2 + 8));
    if (!*(a2 + 16) || !*(a2 + 32))
    {
      goto LABEL_41;
    }

    v21 = (*(*a3 + 16))(a3);
    v22 = *(v21 + 4);
    if (*(v21 + 3) == v22)
    {
      llvm::raw_ostream::write(v21, ",", 1uLL);
    }

    else
    {
      *v22 = 44;
      ++*(v21 + 4);
    }

    if (!*(a2 + 16) || !*(a2 + 32))
    {
      goto LABEL_41;
    }

    v33 = (*(*a3 + 16))(a3);
    v34 = *(v33 + 4);
    if (v34 >= *(v33 + 3))
    {
      llvm::raw_ostream::write(v33, 32);
    }

    else
    {
      *(v33 + 4) = v34 + 1;
      *v34 = 32;
    }

    if (*(a2 + 16))
    {
      v27 = *(a2 + 24);
      v28 = *(a2 + 32);
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }
  }

  else
  {
    if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskType,void>::id)
    {
      if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskResultType,void>::id)
      {
        v6 = (*(*a3 + 16))(a3);
        v20 = *(v6 + 4);
        if ((*(v6 + 3) - v20) <= 0xA)
        {
          v8 = "task_result";
          v9 = 11;
          goto LABEL_11;
        }

        *(v20 + 7) = 1953265011;
        *v20 = *"task_result";
        v13 = *(v6 + 4) + 11;
      }

      else
      {
        if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncMemRefType,void>::id)
        {
          v25 = (*(*a3 + 16))(a3);
          v26 = *(v25 + 4);
          if ((*(v25 + 3) - v26) > 0xB)
          {
            *(v26 + 8) = 1717924461;
            *v26 = *"async.memref";
            *(v25 + 4) += 12;
          }

          else
          {
            llvm::raw_ostream::write(v25, "async.memref", 0xCuLL);
          }

          v31 = (*(*a3 + 16))(a3);
          v32 = *(v31 + 4);
          if (*(v31 + 3) == v32)
          {
            llvm::raw_ostream::write(v31, "<", 1uLL);
          }

          else
          {
            *v32 = 60;
            ++*(v31 + 4);
          }

          v35 = *(a2 + 16);
          if (v35)
          {
            v36 = *(a2 + 8);
            v37 = 8 * v35;
            do
            {
              v38 = *v36;
              v39 = (*(*a3 + 16))(a3);
              llvm::write_integer(v39, v38, 0, 0);
              v40 = (*(*a3 + 16))(a3);
              v41 = *(v40 + 4);
              if (v41 >= *(v40 + 3))
              {
                llvm::raw_ostream::write(v40, 120);
              }

              else
              {
                *(v40 + 4) = v41 + 1;
                *v41 = 120;
              }

              ++v36;
              v37 -= 8;
            }

            while (v37);
          }

          (*(*a3 + 32))(a3, *(a2 + 24));
          v42 = *(a2 + 32);
          if (v42)
          {
            v43 = *(a2 + 32);
            if (((*(*(a2 + 40) + 8))() & 1) == 0)
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

              (*(*a3 + 40))(a3, v42);
            }
          }

          v46 = *(a2 + 48);
          if (v46)
          {
            v47 = (*(*a3 + 16))(a3);
            v48 = *(v47 + 4);
            if (*(v47 + 3) - v48 > 1uLL)
            {
              *v48 = 8236;
              *(v47 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v47, ", ", 2uLL);
            }

            (*(*a3 + 40))(a3, v46);
          }

          goto LABEL_41;
        }

        if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncFutureType,void>::id)
        {
          return;
        }

        v6 = (*(*a3 + 16))(a3);
        v7 = *(v6 + 4);
        if ((*(v6 + 3) - v7) <= 0xB)
        {
          v8 = "async.future";
          v9 = 12;
LABEL_11:
          llvm::raw_ostream::write(v6, v8, v9);
LABEL_16:
          v14 = (*(*a3 + 16))(a3);
          v15 = *(v14 + 4);
          if (*(v14 + 3) == v15)
          {
            llvm::raw_ostream::write(v14, "<", 1uLL);
          }

          else
          {
            *v15 = 60;
            ++*(v14 + 4);
          }

          (*(*a3 + 32))(a3, *(a2 + 8));
          goto LABEL_41;
        }

        *(v7 + 8) = 1701999988;
        *v7 = *"async.future";
        v13 = *(v6 + 4) + 12;
      }

      goto LABEL_15;
    }

    v16 = (*(*a3 + 16))(a3);
    v17 = *(v16 + 4);
    if (*(v16 + 3) - v17 > 3uLL)
    {
      *v17 = 1802723700;
      *(v16 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v16, "task", 4uLL);
    }

    v23 = (*(*a3 + 16))(a3);
    v24 = *(v23 + 4);
    if (*(v23 + 3) == v24)
    {
      llvm::raw_ostream::write(v23, "<", 1uLL);
    }

    else
    {
      *v24 = 60;
      ++*(v23 + 4);
    }

    v27 = *(a2 + 8);
    v28 = *(a2 + 16);
  }

  mlir::AsmPrinter::printStrippedAttrOrType<llvm::ArrayRef<mlir::Type>,(void *)0>(a3, v27, v28);
LABEL_41:
  v29 = (*(*a3 + 16))(a3);
  v30 = *(v29 + 4);
  if (*(v29 + 3) == v30)
  {

    llvm::raw_ostream::write(v29, ">", 1uLL);
  }

  else
  {
    *v30 = 62;
    ++*(v29 + 4);
  }
}

uint64_t mlir::ODIE::Compiler::Exec::AsyncMemRefType::parse(mlir::ODIE::Compiler::Exec::AsyncMemRefType *this, mlir::AsmParser *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  if (((*(*this + 152))(this, a2) & 1) == 0)
  {
    v3 = 0;
    goto LABEL_20;
  }

  v25 = v27;
  v26 = 0x400000000;
  if ((*(*this + 600))(this, &v25, 0, 1))
  {
    v16 = 0;
    v3 = 0;
    if (((*(*this + 536))(this, &v16) & 1) == 0)
    {
      goto LABEL_18;
    }

    if (((*(*this + 128))(this) & 1) == 0)
    {
      v7 = 0;
      v6 = 0;
LABEL_10:
      v15 = 0;
      if (((*(*this + 128))(this) & 1) == 0 || ((*(*this + 440))(this, &v15, 0)) && ((*(*this + 168))(this))
      {
        v8 = *(*(*this + 32))(this);
        v28 = v30;
        v29 = 0x400000000;
        if (v26)
        {
          llvm::SmallVectorImpl<long long>::operator=(&v28, &v25);
          v10 = v15;
          v9 = v16;
          v31 = v33;
          v32 = 0x400000000;
          if (v29)
          {
            llvm::SmallVectorImpl<long long>::operator=(&v31, &v28);
            if (v31 != v33)
            {
              free(v31);
            }
          }
        }

        else
        {
          v10 = v15;
          v9 = v16;
          v31 = v33;
          v32 = 0x400000000;
        }

        v18 = v8;
        v13 = *v8;
        v17[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncMemRefType,void>::id;
        v17[1] = &v18;
        v24[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail22AsyncMemRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_15AsyncMemRefTypeEJRNS_11SmallVectorIxLj4EEERNS1_4TypeERNS1_25MemRefLayoutAttrInterfaceERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESQ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSS_E_EEvlS7_;
        v24[1] = v17;
        v20[0] = v28;
        v20[1] = v29;
        v21 = v9;
        v22[0] = v6;
        v22[1] = v7;
        v23 = v10;
        memset(v35, 0, sizeof(v35));
        memset(v34, 0, sizeof(v34));
        v36 = 0;
        v37 = 0xFF51AFD7ED558CCDLL;
        v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>(v34, 0, v34, v35, v20, &v21, v22, &v23);
        v19 = v20;
        *&v34[0] = v20;
        *(&v34[0] + 1) = v24;
        v3 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v13 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncMemRefType,void>::id, v14, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage *)>,mlir::TypeID,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v19, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage *)>,mlir::TypeID,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v34);
        if (v28 != v30)
        {
          free(v28);
        }

        goto LABEL_18;
      }

      goto LABEL_17;
    }

    *&v34[0] = 0;
    if ((*(*this + 440))(this, v34, 0))
    {
      v4 = llvm::DefaultDoCastIfPossible<mlir::MemRefLayoutAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::MemRefLayoutAttrInterface,mlir::Attribute,void>>::doCastIfPossible(*&v34[0]);
      if (v4)
      {
        v6 = v4;
        v7 = v5;
        goto LABEL_10;
      }
    }
  }

LABEL_17:
  v3 = 0;
LABEL_18:
  if (v25 != v27)
  {
    free(v25);
  }

LABEL_20:
  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

void mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::AsyncFutureType,mlir::Type,mlir::ODIE::Compiler::Exec::detail::AsyncFutureTypeStorage,mlir::detail::TypeUniquer>::attachInterface<mlir::ODIE::Compiler::Exec::FutureAwaitableTypeModel>(uint64_t a1)
{
  v6[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncFutureType,void>::id;
  v1 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), v6);
  if (!v1 || (v2 = *(v1 + 8)) == 0)
  {
    llvm::report_fatal_error("Registering an interface for an attribute/type that is not itself registered.", 1);
  }

  v3 = *v2;
  v4 = v2[17];
  v5 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AwaitableType,void>::resolveTypeID();
  v6[0] = v4;
  v6[1] = v5;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v3 + 72, v6);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::FutureAwaitableTypeModel>((v2 + 1));
}

void mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::AsyncMemRefType,mlir::Type,mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::attachInterface<mlir::ODIE::Compiler::Exec::AsyncMemRefAwaitableTypeModel>(uint64_t a1)
{
  v6[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncMemRefType,void>::id;
  v1 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), v6);
  if (!v1 || (v2 = *(v1 + 8)) == 0)
  {
    llvm::report_fatal_error("Registering an interface for an attribute/type that is not itself registered.", 1);
  }

  v3 = *v2;
  v4 = v2[17];
  v5 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AwaitableType,void>::resolveTypeID();
  v6[0] = v4;
  v6[1] = v5;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v3 + 72, v6);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::AsyncMemRefAwaitableTypeModel>((v2 + 1));
}

void mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::TaskResultType,mlir::Type,mlir::ODIE::Compiler::Exec::detail::TaskResultTypeStorage,mlir::detail::TypeUniquer>::attachInterface<mlir::ODIE::Compiler::Exec::TaskResultAwaitableTypeModel>(uint64_t a1)
{
  v6[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskResultType,void>::id;
  v1 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), v6);
  if (!v1 || (v2 = *(v1 + 8)) == 0)
  {
    llvm::report_fatal_error("Registering an interface for an attribute/type that is not itself registered.", 1);
  }

  v3 = *v2;
  v4 = v2[17];
  v5 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AwaitableType,void>::resolveTypeID();
  v6[0] = v4;
  v6[1] = v5;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v3 + 72, v6);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::TaskResultAwaitableTypeModel>((v2 + 1));
}

void std::__optional_storage_base<llvm::SmallVector<mlir::Type,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::Type,6u>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == *(a2 + 64))
  {
    if (*(a1 + 64))
    {

      llvm::SmallVectorImpl<mlir::Type>::operator=(a1, a2);
    }
  }

  else if (*(a1 + 64))
  {
    v3 = *a1;
    if (*a1 != a1 + 16)
    {
      free(v3);
    }

    *(a1 + 64) = 0;
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    if (*(a2 + 8))
    {
      llvm::SmallVectorImpl<mlir::Type>::operator=(a1, a2);
    }

    *(a1 + 64) = 1;
  }
}

BOOL mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  if (!memcmp(*(a1 + 8), *a2, 8 * v2) && *(a1 + 24) == *(a2 + 16) && *(a1 + 32) == *(a2 + 24))
  {
    return *(a1 + 48) == *(a2 + 40);
  }

  return 0;
}

uint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage *)>,mlir::TypeID,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t *a1, unint64_t *a2)
{
  v4 = mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage::construct(a2, *a1);
  v5 = v3;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(*(v6 + 8), v3, v4);
  }

  return v5;
}

__n128 mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage::construct(unint64_t *a1, uint64_t a2)
{
  v10 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = mlir::StorageUniquer::StorageAllocator::copyInto<long long>(a1, *a2, *(a2 + 8));
  v7 = v6;
  v8 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 56, 3);
  *v8 = 0;
  *(v8 + 8) = v5;
  *(v8 + 16) = v7;
  result = v10;
  *(v8 + 24) = v10;
  *(v8 + 40) = v3;
  *(v8 + 48) = v4;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail22AsyncMemRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_15AsyncMemRefTypeEJRNS_11SmallVectorIxLj4EEERNS1_4TypeERNS1_25MemRefLayoutAttrInterfaceERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESQ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSS_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::MetaType,mlir::Type>(void *a1, uint64_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MetaType,void>::id;
  v7[1] = &v8;
  v8 = a1;
  v3 = *a2;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail15MetaTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_8MetaTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v11[1] = v7;
  v10 = v3;
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  v14 = 0;
  v15 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type>(v12, 0, v12, v13, &v10);
  v9 = &v10;
  *&v12[0] = &v10;
  *(&v12[0] + 1) = v11;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MetaType,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::MetaTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::MetaTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::MetaTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::MetaTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::MetaTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::MetaTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::MetaTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::MetaTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::MetaTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail15MetaTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_8MetaTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::ContextType,llvm::StringRef &>(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = *a1;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id;
  v9[1] = &v10;
  v10 = a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail18ContextTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_11ContextTypeEJRNS_9StringRefEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v14[1] = v9;
  v13[0] = v5;
  v13[1] = v6;
  v7 = llvm::hashing::detail::hash_combine_range_impl<char const>(v5, v5 + v6, a3, a4);
  v11[0] = v13;
  v11[1] = v14;
  v12 = v13;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id, v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage,llvm::StringRef &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage *)>,mlir::TypeID,llvm::StringRef &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage,llvm::StringRef &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage *)>,mlir::TypeID,llvm::StringRef &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage,llvm::StringRef &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage *)>,mlir::TypeID,llvm::StringRef &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(const void ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (v2)
  {
    return memcmp(*(a2 + 8), **a1, v2) == 0;
  }

  return 1;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage,llvm::StringRef &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage *)>,mlir::TypeID,llvm::StringRef &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 88, 3);
  v6 = mlir::StorageUniquer::StorageAllocator::copyInto(a2, *v4, *(v4 + 8));
  *v5 = 0;
  v5[1] = v6;
  v5[2] = v7;
  v5[3] = v5 + 5;
  v5[4] = 0x600000000;
  v8 = a1[1];
  if (*v8)
  {
    (*v8)(*(v8 + 8), v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail18ContextTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_11ContextTypeEJRNS_9StringRefEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::Type,6u>,llvm::SmallVector<mlir::Type,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = *a1;
  v4 = 0;
  if (((*(*v2 + 536))(v2, &v4) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a1[1], v4);
  return 1;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::TaskType,llvm::ArrayRef<mlir::Type>>(void *a1, __int128 *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskType,void>::id;
  v6[1] = &v7;
  v7 = a1;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail15TaskTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_8TaskTypeEJNS_8ArrayRefINS1_4TypeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v10[1] = v6;
  v9 = *a2;
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  v13 = 0;
  v14 = 0xFF51AFD7ED558CCDLL;
  v3 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::Type>>(v11, 0, v11, v12, &v9);
  v8 = &v9;
  *&v11[0] = &v9;
  *(&v11[0] + 1) = v10;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskType,void>::id, v3, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage,llvm::ArrayRef<mlir::Type>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Type> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage,llvm::ArrayRef<mlir::Type>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Type> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::Type>>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, unint64_t *a4, uint64_t a5)
{
  v11 = a2;
  v8 = llvm::hashing::detail::hash_combine_range_impl<mlir::Type const*>(*a5, (*a5 + 8 * *(a5 + 8)), a3, a4);
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v11, a3, a4, v8);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v11, v9, a4);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage,llvm::ArrayRef<mlir::Type>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Type> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage,llvm::ArrayRef<mlir::Type>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Type> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = mlir::StorageUniquer::StorageAllocator::copyInto<mlir::Type>(a2, **a1, *(*a1 + 8));
  v6 = v5;
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v7 = 0;
  v7[1] = v4;
  v7[2] = v6;
  v8 = *(a1 + 8);
  if (*v8)
  {
    (*v8)(*(v8 + 8), v7);
  }

  return v7;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail15TaskTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_8TaskTypeEJNS_8ArrayRefINS1_4TypeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::TaskResultType,mlir::Type>(void *a1, uint64_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskResultType,void>::id;
  v7[1] = &v8;
  v8 = a1;
  v3 = *a2;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail21TaskResultTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_14TaskResultTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v11[1] = v7;
  v10 = v3;
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  v14 = 0;
  v15 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type>(v12, 0, v12, v13, &v10);
  v9 = &v10;
  *&v12[0] = &v10;
  *(&v12[0] + 1) = v11;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskResultType,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::TaskResultTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::TaskResultTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::TaskResultTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::TaskResultTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::TaskResultTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::TaskResultTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::TaskResultTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::TaskResultTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::TaskResultTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail21TaskResultTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_14TaskResultTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::AsyncMemRefType,llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>(void *a1, __int128 *a2, uint64_t *a3, __int128 *a4, uint64_t *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncMemRefType,void>::id;
  v11[1] = &v12;
  v12 = a1;
  v6 = *a3;
  v7 = *a5;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail22AsyncMemRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_15AsyncMemRefTypeEJNS_8ArrayRefIxEENS1_4TypeENS1_25MemRefLayoutAttrInterfaceENS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_;
  v18[1] = v11;
  v14 = *a2;
  v15 = v6;
  v16 = *a4;
  v17 = v7;
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>(v19, 0, v19, v20, &v14, &v15, &v16, &v17);
  v13 = &v14;
  *&v19[0] = &v14;
  *(&v19[0] + 1) = v18;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v5 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncMemRefType,void>::id, v8, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage,llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage,llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v19);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage,llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t *a1, unint64_t *a2)
{
  v4 = mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage::construct(a2, *a1);
  v5 = v3;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(*(v6 + 8), v3, v4);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail22AsyncMemRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_15AsyncMemRefTypeEJNS_8ArrayRefIxEENS1_4TypeENS1_25MemRefLayoutAttrInterfaceENS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::AsyncFutureType,mlir::Type>(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncFutureType,void>::id;
  v6[1] = &v7;
  v7 = a1;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail22AsyncFutureTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_15AsyncFutureTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v10[1] = v6;
  v9 = a2;
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  v13 = 0;
  v14 = 0xFF51AFD7ED558CCDLL;
  v3 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type>(v11, 0, v11, v12, &v9);
  v8 = &v9;
  *&v11[0] = &v9;
  *(&v11[0] + 1) = v10;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncFutureType,void>::id, v3, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AsyncFutureTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::AsyncFutureTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::AsyncFutureTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AsyncFutureTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::AsyncFutureTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::AsyncFutureTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::Exec::detail::AsyncFutureTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::Exec::detail::AsyncFutureTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::Exec::detail::AsyncFutureTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4Exec6detail22AsyncFutureTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_15AsyncFutureTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<llvm::LogicalResult mlir::StorageUniquer::mutate<mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage,llvm::ArrayRef<mlir::Type> &>(mlir::TypeID,mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage *,llvm::ArrayRef<mlir::Type> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1)
{
  v1 = **a1;
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = a1[1];
  v3 = *v2;
  v4 = (*v2 + 8 * v2[1]);
  *(v1 + 32) = 0;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v1 + 24, v3, v4);
  return 1;
}

void mlir::Dialect::addType<mlir::ODIE::Compiler::Exec::MetaType>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::ODIE::Compiler::Exec::MetaType>(a1, &v2);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MetaType,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MetaType,void>::id);
}

void mlir::Dialect::addType<mlir::ODIE::Compiler::Exec::ContextType>(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v10, 0, sizeof(v10));
  v9[1] = 0x300000000;
  *&v7 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::ContextType,mlir::Type,mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage,mlir::detail::TypeUniquer,mlir::TypeTrait::IsMutable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v8 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v9[0] = v10;
  mlir::AbstractType::AbstractType(&v4, a1, v9, &v7, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec11ContextTypeES2_NSF_6detail18ContextTypeStorageENSB_11TypeUniquerEJNS1_9TypeTrait9IsMutableEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v3, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec11ContextTypeES2_NSE_6detail18ContextTypeStorageENSA_11TypeUniquerEJNS1_9TypeTrait9IsMutableEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id, "exec.context", 12);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v7);
  mlir::detail::InterfaceMap::~InterfaceMap(v9);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id, &v4);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v6);
  mlir::detail::InterfaceMap::~InterfaceMap(&v5);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id);
}

void mlir::Dialect::addType<mlir::ODIE::Compiler::Exec::TaskType>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::ODIE::Compiler::Exec::TaskType>(a1, &v2);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskType,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskType,void>::id);
}

void mlir::Dialect::addType<mlir::ODIE::Compiler::Exec::TaskResultType>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::ODIE::Compiler::Exec::TaskResultType>(a1, &v2);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskResultType,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskResultType,void>::id);
}

void mlir::Dialect::addType<mlir::ODIE::Compiler::Exec::AsyncMemRefType>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::ODIE::Compiler::Exec::AsyncMemRefType>(a1, &v2);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncMemRefType,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncMemRefType,void>::id);
}

void mlir::Dialect::addType<mlir::ODIE::Compiler::Exec::AsyncFutureType>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::ODIE::Compiler::Exec::AsyncFutureType>(a1, &v2);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncFutureType,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncFutureType,void>::id);
}

void mlir::AbstractType::get<mlir::ODIE::Compiler::Exec::MetaType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::MetaType,mlir::Type,mlir::ODIE::Compiler::Exec::detail::MetaTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractType::AbstractType(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec8MetaTypeES2_NSF_6detail15MetaTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v4, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec8MetaTypeES2_NSE_6detail15MetaTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MetaType,void>::id, "exec.type", 9);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec8MetaTypeES2_NSF_6detail15MetaTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  if (*(a2 + 8))
  {
    return a5(a6);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec8MetaTypeES2_NSE_6detail15MetaTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a2[1];
  if (v5)
  {
    v5 = *a5;
  }

  v6 = *(**a2 + 32);
  v8 = v5;
  return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::MetaType,mlir::Type>(v6, &v8);
}

BOOL mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::ContextType,mlir::Type,mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage,mlir::detail::TypeUniquer,mlir::TypeTrait::IsMutable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

uint64_t mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[293];
}

uint64_t llvm::getTypeName<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>>();
    unk_27FC19940 = v1;
  }

  return llvm::getTypeName<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::StorageUserTrait::IsMutable<Empty>]";
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

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec11ContextTypeES2_NSE_6detail18ContextTypeStorageENSA_11TypeUniquerEJNS1_9TypeTrait9IsMutableEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = *(**a2 + 32);
  v6 = *(a2 + 8);
  return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::ContextType,llvm::StringRef &>(v4, &v6, a3, a4);
}

void llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::ODIE::Compiler::Exec::detail::ContextTypeStorage>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 != (a2 + 40))
  {
    free(v2);
  }
}

void mlir::AbstractType::get<mlir::ODIE::Compiler::Exec::TaskType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::TaskType,mlir::Type,mlir::ODIE::Compiler::Exec::detail::TaskTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractType::AbstractType(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec8TaskTypeES2_NSF_6detail15TaskTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v4, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec8TaskTypeES2_NSE_6detail15TaskTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskType,void>::id, "exec.task", 9);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec8TaskTypeES2_NSF_6detail15TaskTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v9 = *(a2 + 8);
    v10 = 8 * v6;
    do
    {
      if (*v9)
      {
        result = a5(a6);
      }

      ++v9;
      v10 -= 8;
    }

    while (v10);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec8TaskTypeES2_NSE_6detail15TaskTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a2[4];
  if (a6 < v6)
  {
    v6 = a6;
  }

  v7 = *(**a2 + 32);
  *&v9 = a5;
  *(&v9 + 1) = v6;
  return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::TaskType,llvm::ArrayRef<mlir::Type>>(v7, &v9);
}

void mlir::AbstractType::get<mlir::ODIE::Compiler::Exec::TaskResultType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::TaskResultType,mlir::Type,mlir::ODIE::Compiler::Exec::detail::TaskResultTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractType::AbstractType(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec14TaskResultTypeES2_NSF_6detail21TaskResultTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v4, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec14TaskResultTypeES2_NSE_6detail21TaskResultTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskResultType,void>::id, "exec.task_result", 16);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec14TaskResultTypeES2_NSF_6detail21TaskResultTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  if (*(a2 + 8))
  {
    return a5(a6);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec14TaskResultTypeES2_NSE_6detail21TaskResultTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a2[1];
  if (v5)
  {
    v5 = *a5;
  }

  v6 = *(**a2 + 32);
  v8 = v5;
  return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::TaskResultType,mlir::Type>(v6, &v8);
}

void mlir::AbstractType::get<mlir::ODIE::Compiler::Exec::AsyncMemRefType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x300000000;
  v4 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v4 = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncMemRefType>::cloneWith;
  v4[1] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncMemRefType>::getElementType;
  v4[2] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncMemRefType>::hasRank;
  v4[3] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncMemRefType>::getShape;
  v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v11, v5, v4);
  *&v9 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::AsyncMemRefType,mlir::Type,mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v10 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v11, &v9, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec15AsyncMemRefTypeES2_NSF_6detail22AsyncMemRefTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v8, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec15AsyncMemRefTypeES2_NSE_6detail22AsyncMemRefTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v7, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncMemRefType,void>::id, "exec.async.memref", 17);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v9);
  mlir::detail::InterfaceMap::~InterfaceMap(v11);
  v6 = *MEMORY[0x277D85DE8];
}

void *mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncMemRefType>::cloneWith(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(**a2 + 32);
  v5 = *(a2 + 48);
  if (*(a3 + 16))
  {
    v6 = *a3;
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v15 = v6;
  v14 = a4;
  v13 = *(a2 + 32);
  v12 = v5;
  v7 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::AsyncMemRefType,llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>(v4, &v15, &v14, &v13, &v12);
  v8 = v7;
  if (v7)
  {
    v9 = *v7;
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
  }

  return v8;
}

uint64_t mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::ODIE::Compiler::Exec::AsyncMemRefType>::getShape(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  v3 = *(a2 + 16);
  return result;
}

BOOL mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::AsyncMemRefType,mlir::Type,mlir::ODIE::Compiler::Exec::detail::AsyncMemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec15AsyncMemRefTypeES2_NSF_6detail22AsyncMemRefTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v7 = a2[4];
  v8 = a2[6];
  if (a2[3])
  {
    a5(a6);
  }

  if (v7)
  {
    a3(a4, v7);
  }

  if (v8)
  {

    a3(a4, v8);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec15AsyncMemRefTypeES2_NSE_6detail22AsyncMemRefTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v33[10] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v22.i64[0] = a3;
  v22.i64[1] = a4;
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(v6, v7, &v27);
  if (v9)
  {
    v9 = *a5;
  }

  v12 = mlir::AttrTypeSubElementHandler<mlir::MemRefLayoutAttrInterface,void>::replace(v8, v10, &v22);
  v14 = v13;
  if (v11)
  {
    v15 = v22.i64[0];
    v22 = vaddq_s64(v22, xmmword_25D0A0600);
    v16 = *v15;
  }

  else
  {
    v16 = 0;
  }

  v32[0] = v33;
  v32[1] = 0x600000000;
  if (v28)
  {
    llvm::SmallVectorImpl<long long>::operator=(v32, &v27);
  }

  v33[6] = v9;
  v33[7] = v12;
  v33[8] = v14;
  v33[9] = v16;
  if (v27 != v29)
  {
    free(v27);
  }

  v17 = *(**a2 + 32);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,llvm::SmallVector<long long,6u>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>::__tuple_impl(&v27, v32);
  *&v26 = v27;
  *(&v26 + 1) = v28;
  v25 = v29[6];
  v24 = v30;
  v23 = v31;
  v18 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::AsyncMemRefType,llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>(v17, &v26, &v25, &v24, &v23);
  if (v27 != v29)
  {
    free(v27);
  }

  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void mlir::AbstractType::get<mlir::ODIE::Compiler::Exec::AsyncFutureType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::Exec::AsyncFutureType,mlir::Type,mlir::ODIE::Compiler::Exec::detail::AsyncFutureTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractType::AbstractType(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec15AsyncFutureTypeES2_NSF_6detail22AsyncFutureTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v4, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec15AsyncFutureTypeES2_NSE_6detail22AsyncFutureTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncFutureType,void>::id, "exec.async.future", 17);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec15AsyncFutureTypeES2_NSF_6detail22AsyncFutureTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  if (*(a2 + 8))
  {
    return a5(a6);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4Exec15AsyncFutureTypeES2_NSE_6detail22AsyncFutureTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a2[1];
  if (v5)
  {
    v5 = *a5;
  }

  return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::AsyncFutureType,mlir::Type>(*(**a2 + 32), v5);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::FutureAwaitableTypeModel>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::AwaitableTypeInterfaceTraits::FallbackModel<mlir::ODIE::Compiler::Exec::FutureAwaitableTypeModel>::getEventualType;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AwaitableType,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::AsyncMemRefAwaitableTypeModel>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::AwaitableTypeInterfaceTraits::FallbackModel<mlir::ODIE::Compiler::Exec::AsyncMemRefAwaitableTypeModel>::getEventualType;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AwaitableType,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::Exec::TaskResultAwaitableTypeModel>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::ODIE::Compiler::Exec::detail::AwaitableTypeInterfaceTraits::FallbackModel<mlir::ODIE::Compiler::Exec::TaskResultAwaitableTypeModel>::getEventualType;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AwaitableType,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::~SmallDenseMap(uint64_t a1)
{
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::destroyAll(a1);
  if ((*a1 & 1) == 0)
  {
    MEMORY[0x25F891030](*(a1 + 8), 8);
  }

  return a1;
}

void mlir::ODIE::Compiler::registerScfDialectCollapseAndHoistAllocationsModels(mlir::DialectRegistry &)::$_0::__invoke(uint64_t *a1)
{
  v1 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v11 = 1283;
    v10[0] = "Attempting to attach an interface to an unregistered operation ";
    v10[2] = "scf.if";
    v10[3] = 6;
    v8 = ".";
    v9 = 259;
    llvm::operator+(v10, &v8, v12);
    llvm::report_fatal_error(v12, 1);
  }

  v3 = v1;
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v4 = (*(v1 + 8) + 32);
  }

  else
  {
    v4 = (v1 + 24);
  }

  v5 = *v4;
  v12[0] = *(v1 + 16);
  v12[1] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,void>::resolveTypeID();
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v5 + 72, v12);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::ODIE::Compiler::Interfaces::detail::CollapseAndHoistAllocationsInterfaceTraits::FallbackModel<mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::IfOp>>::collapseAndHoistAllocationsHook;
  v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v3 + 32, v7, v6);
}

uint64_t mlir::ODIE::Compiler::Interfaces::detail::CollapseAndHoistAllocationsInterfaceTraits::FallbackModel<mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::IfOp>>::collapseAndHoistAllocationsHook(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v111 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Analysis::MemoryReuse::MemoryReuse(v82, a2, 0);
  mlir::ODIE::Compiler::Analysis::MemoryReuse::getMemorySpaces(v82, &v95);
  v5 = v96;
  if (v95 != v97)
  {
    free(v95);
  }

  if (v5)
  {
    v6 = *(a2 + 44);
    if ((v6 & 0x7FFFFF) != 0)
    {
      v7 = ((a2 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v8 = v7 + 24 * (v6 & 0x7FFFFF);
      do
      {
        v9 = *(v7 + 8);
        if (v9)
        {
          v10 = v9 - 8;
        }

        else
        {
          v10 = 0;
        }

        v11 = (v10 + 32);
          ;
        }

        while (i != v11)
        {
          mlir::ODIE::Compiler::Analysis::MemoryReuse::getOffsetForAllocation(v82, i, &v95);
          if (v97[0] == 1)
          {
            IndexAttr = mlir::Builder::getIndexAttr((a3 + 8), v95);
            mlir::Operation::setAttr(i, "exec.memref_index", 0x11, IndexAttr);
            v14 = mlir::Builder::getIndexAttr((a3 + 8), v96);
            mlir::Operation::setAttr(i, "exec.memref_offset", 0x12, v14);
          }

          do
          {
            i = *(i + 1);
          }

          while (i != v11 && *(*(i + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocOp,void>::id);
        }

        v7 += 24;
      }

      while (v7 != v8);
    }

    v85[0] = 1;
    v85[1] = -4096;
    v85[10] = -4096;
    v85[19] = -4096;
    v85[28] = -4096;
    mlir::ODIE::Compiler::Analysis::MemoryReuse::getMemorySpaces(v82, &v95);
    v15 = v95;
    if (v96)
    {
      v16 = v95 + 8 * v96;
      do
      {
        *&v106 = *v15;
        mlir::ODIE::Compiler::Analysis::MemoryReuse::getTotalAllocationSize(v82, v106, &v89);
        v17 = v89;
        if (v90)
        {
          v18 = 8 * v90;
          do
          {
            v19 = *v17;
            v17 += 2;
            v20 = *(a2 + 24);
            *&v101 = v19;
            v21 = mlir::IntegerType::get(*(a3 + 8), 8, 0);
            v84[0] = mlir::MemRefType::get(&v101, 1, v21, 0, 0, v106);
            v86 = 0;
            v22 = mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::AllocOp,mlir::MemRefType,decltype(nullptr)>((a3 + 8), v20, v84);
            v23 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::operator[](v85, &v106);
            llvm::SmallVectorTemplateBase<mlir::ODIE::Compiler::Exec::AllocOp,true>::push_back(v23, v22);
            v18 -= 8;
          }

          while (v18);
          v17 = v89;
        }

        if (v17 != &v91)
        {
          free(v17);
        }

        v15 += 8;
      }

      while (v15 != v16);
      v15 = v95;
    }

    if (v15 != v97)
    {
      free(v15);
    }

    (*(*a3 + 40))(a3, a2);
    v24 = *(a2 + 44);
    if ((v24 & 0x7FFFFF) != 0)
    {
      v25 = ((a2 + 16 * ((v24 >> 23) & 1) + ((v24 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v79 = v25 + 24 * (v24 & 0x7FFFFF);
      while (1)
      {
        v26 = *(v25 + 8);
        v27 = v26 ? v26 - 8 : 0;
        v89 = 1;
        v90 = -4096;
        v92 = -4096;
        v93 = -4096;
        v94 = -4096;
        llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::copyFrom(&v89, v85);
        v95 = 1;
        v96 = -4096;
        v98 = -4096;
        v99 = -4096;
        v100 = -4096;
        v28 = v89;
        v80 = v25;
        if (v89 <= 1)
        {
          break;
        }

        v32 = &v95;
        v33 = &v90;
        if ((v89 & 1) != 0 || (v33 = v90, v32 = (v90 + 72 * v91), v91))
        {
          v28 = v89 & 1;
          v31 = v33;
          do
          {
            if ((*v31 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              goto LABEL_49;
            }

            v31 += 9;
          }

          while (v31 != v32);
          v31 = v32;
          goto LABEL_49;
        }

        v35 = 0;
        v31 = v90;
LABEL_53:
        v34 = &v33[9 * v35];
LABEL_54:
        while (v31 != v34)
        {
          v36 = v31[1];
          v37 = *(v31 + 4);
          *&v106 = &v107;
          *(&v106 + 1) = 0x600000000;
          if (v37 < 7)
          {
            if (!v37)
            {
              v43 = 0;
              goto LABEL_62;
            }

            v38 = 0;
            v39 = &v107;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v106, &v107, v37, 8);
            v38 = DWORD2(v106);
            v39 = v106;
          }

          v40 = 8 * v37;
          v41 = v39 + v38;
          do
          {
            v42 = *v36++;
            *v41++ = v42 - 16;
            v40 -= 8;
          }

          while (v40);
          v43 = DWORD2(v106);
LABEL_62:
          DWORD2(v106) = v43 + v37;
          v44 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::operator[](&v95, v31);
          llvm::SmallVectorImpl<mlir::Value>::operator=(v44, &v106);
          if (v106 != &v107)
          {
            free(v106);
          }

          do
          {
            v31 += 9;
          }

          while (v31 != v32 && (*v31 | 0x1000) == 0xFFFFFFFFFFFFF000);
        }

        llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::~SmallDenseMap(&v89);
        v45 = *(a3 + 24);
        v46 = *(v27 + 40);
        *(a3 + 24) = v27;
        *(a3 + 32) = v46;
        while (v46 != v27 + 32 && *(*(v46 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocOp,void>::id)
        {
          v46 = *(v46 + 8);
        }

        v81 = v45;
        *&v106 = v46;
        *(&v106 + 1) = v27 + 32;
        *&v107 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::filter;
        *(&v107 + 1) = mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::unwrap;
        *&v108 = v27 + 32;
        *(&v108 + 1) = v27 + 32;
        *&v109 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::filter;
        *(&v109 + 1) = mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::unwrap;
        *&v110 = "exec.memref_offset";
        *(&v110 + 1) = 18;
        llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::IfOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(&v106);
        v84[0] = v27 + 32;
        v84[1] = v27 + 32;
        v84[2] = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::filter;
        v84[3] = mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::unwrap;
        v84[4] = v27 + 32;
        v84[5] = v27 + 32;
        v84[6] = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::filter;
        v84[7] = mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::unwrap;
        v84[8] = "exec.memref_offset";
        v84[9] = 18;
        llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::IfOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(v84);
        v103 = v108;
        v104 = v109;
        v101 = v106;
        v102 = v107;
        v47 = v84[0];
        v86 = v88;
        v87 = 0x600000000;
        v105 = v110;
        v48 = v106;
        if (v106 == v84[0])
        {
          v53 = 0;
          v49 = 0;
          v54 = 6;
        }

        else
        {
          v49 = 0;
          do
          {
            v50 = *(v48 + 8);
            *&v106 = v50;
            v51 = *(&v106 + 1);
            if (v50 != *(&v106 + 1))
            {
              v52 = v107;
              do
              {
                if (v52(v50))
                {
                  break;
                }

                v50 = *(v50 + 8);
              }

              while (v50 != v51);
              *&v106 = v50;
            }

            ++v49;
            llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::IfOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(&v106);
            v48 = v106;
          }

          while (v106 != v47);
          v53 = v87;
          v54 = HIDWORD(v87);
        }

        v55 = v49 + v53;
        if (v55 > v54)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v88, v55, 8);
          v53 = v87;
        }

        v106 = v101;
        v107 = v102;
        v108 = v103;
        v109 = v104;
        v110 = v105;
        v56 = v101;
        v57 = v86;
        if (v101 != v47)
        {
          v58 = v86 + 8 * v53;
          do
          {
            *v58 = (*(&v107 + 1))(v56);
            v59 = *(v56 + 8);
            *&v106 = v59;
            v60 = *(&v106 + 1);
            if (v59 != *(&v106 + 1))
            {
              v61 = v107;
              do
              {
                if (v61(v59))
                {
                  break;
                }

                v59 = *(v59 + 8);
              }

              while (v59 != v60);
              *&v106 = v59;
            }

            llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::IfOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(&v106);
            ++v58;
            v56 = v106;
          }

          while (v106 != v47);
          v53 = v87;
          v57 = v86;
        }

        v62 = v53 + v49;
        LODWORD(v87) = v62;
        v63 = v81;
        if (v62)
        {
          v64 = *(a3 + 24);
          v65 = *(a3 + 32);
          v66 = 8 * v62;
          do
          {
            v67 = *v57;
            *(a3 + 24) = *(*v57 + 16);
            *(a3 + 32) = v67;
            v84[0] = *((*(v67 - 8) & 0xFFFFFFFFFFFFFFF8) + 48);
            v68 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::find(&v95, v84);
            Attr = mlir::Operation::getAttr(v67, "exec.memref_index", 0x11uLL);
            if (Attr)
            {
              if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
              {
                v70 = Attr;
              }

              else
              {
                v70 = 0;
              }
            }

            else
            {
              v70 = 0;
            }

            *&v101 = v70;
            *&v106 = *(v68[1] + 8 * mlir::IntegerAttr::getInt(&v101));
            v71 = *(v67 + 24);
            v84[0] = *(v67 - 8) & 0xFFFFFFFFFFFFFFF8;
            *&v101 = mlir::Operation::getAttr(v67, "exec.memref_offset", 0x12uLL);
            v72 = mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::Type,mlir::Value &,mlir::IntegerAttr>((a3 + 8), v71, v84, &v106, &v101);
            if (*(v72 + 9))
            {
              v73 = (v72 - 16);
            }

            else
            {
              v73 = 0;
            }

            v84[0] = v73;
            mlir::RewriterBase::replaceAllOpUsesWith(a3, v67, v84, 1);
            if (v64)
            {
              *(a3 + 24) = v64;
              *(a3 + 32) = v65;
            }

            else
            {
              v65 = 0;
              *(a3 + 24) = 0;
              *(a3 + 32) = 0;
            }

            v63 = v81;
            ++v57;
            v66 -= 8;
          }

          while (v66);
          v57 = v86;
          if (v87)
          {
            v74 = 8 * v87;
            do
            {
              v75 = *v57++;
              (*(*a3 + 16))(a3, v75, v63);
              v74 -= 8;
            }

            while (v74);
            v57 = v86;
            v63 = v81;
          }
        }

        if (v57 != v88)
        {
          free(v57);
          v63 = v81;
        }

        if (v63.n128_u64[0])
        {
          *(a3 + 24) = v63;
        }

        else
        {
          *(a3 + 24) = 0;
          *(a3 + 32) = 0;
        }

        llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::~SmallDenseMap(&v95);
        v25 = v80 + 24;
        if (v80 + 24 == v79)
        {
          goto LABEL_117;
        }
      }

      v29 = v90;
      v30 = v91;
      if (v89)
      {
        v31 = &v95;
      }

      else
      {
        v31 = (v90 + 72 * v91);
      }

      if (v89)
      {
        v29 = &v90;
        v30 = 4;
      }

      v32 = &v29[9 * v30];
LABEL_49:
      if (v28)
      {
        v34 = &v95;
        goto LABEL_54;
      }

      v33 = v90;
      v35 = v91;
      goto LABEL_53;
    }

LABEL_117:
    (*(*a3 + 48))(a3, a2);
    llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::~SmallDenseMap(v85);
    v76 = 1;
  }

  else
  {
    v76 = 0;
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>,mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>::destroyAll(v83);
  MEMORY[0x25F891030](v83[0], 8);
  MEMORY[0x25F891030](v82[0], 8);
  v77 = *MEMORY[0x277D85DE8];
  return v76;
}

uint64_t llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::IfOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(uint64_t *a1)
{
  result = *a1;
  while (result != a1[4])
  {
    v3 = (a1[3])();
    result = mlir::Operation::hasAttr(v3, a1[8], a1[9]);
    if (result)
    {
      break;
    }

    v4 = a1[1];
    result = *(*a1 + 8);
    *a1 = result;
    if (result != v4)
    {
      do
      {
        v5 = (a1[2])();
        result = *a1;
        if (v5)
        {
          break;
        }

        result = *(result + 8);
        *a1 = result;
      }

      while (result != a1[1]);
    }
  }

  return result;
}

void mlir::ODIE::Compiler::registerScfDialectCollapseAndHoistAllocationsModels(mlir::DialectRegistry &)::$_1::__invoke(uint64_t *a1)
{
  v1 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v11 = 1283;
    v10[0] = "Attempting to attach an interface to an unregistered operation ";
    v10[2] = "scf.while";
    v10[3] = 9;
    v8 = ".";
    v9 = 259;
    llvm::operator+(v10, &v8, v12);
    llvm::report_fatal_error(v12, 1);
  }

  v3 = v1;
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v4 = (*(v1 + 8) + 32);
  }

  else
  {
    v4 = (v1 + 24);
  }

  v5 = *v4;
  v12[0] = *(v1 + 16);
  v12[1] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,void>::resolveTypeID();
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v5 + 72, v12);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::ODIE::Compiler::Interfaces::detail::CollapseAndHoistAllocationsInterfaceTraits::FallbackModel<mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::WhileOp>>::collapseAndHoistAllocationsHook;
  v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v3 + 32, v7, v6);
}

uint64_t mlir::ODIE::Compiler::Interfaces::detail::CollapseAndHoistAllocationsInterfaceTraits::FallbackModel<mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::WhileOp>>::collapseAndHoistAllocationsHook(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v111 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::Analysis::MemoryReuse::MemoryReuse(v82, a2, 0);
  mlir::ODIE::Compiler::Analysis::MemoryReuse::getMemorySpaces(v82, &v95);
  v5 = v96;
  if (v95 != v97)
  {
    free(v95);
  }

  if (v5)
  {
    v6 = *(a2 + 44);
    if ((v6 & 0x7FFFFF) != 0)
    {
      v7 = ((a2 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v8 = v7 + 24 * (v6 & 0x7FFFFF);
      do
      {
        v9 = *(v7 + 8);
        if (v9)
        {
          v10 = v9 - 8;
        }

        else
        {
          v10 = 0;
        }

        v11 = (v10 + 32);
          ;
        }

        while (i != v11)
        {
          mlir::ODIE::Compiler::Analysis::MemoryReuse::getOffsetForAllocation(v82, i, &v95);
          if (v97[0] == 1)
          {
            IndexAttr = mlir::Builder::getIndexAttr((a3 + 8), v95);
            mlir::Operation::setAttr(i, "exec.memref_index", 0x11, IndexAttr);
            v14 = mlir::Builder::getIndexAttr((a3 + 8), v96);
            mlir::Operation::setAttr(i, "exec.memref_offset", 0x12, v14);
          }

          do
          {
            i = *(i + 1);
          }

          while (i != v11 && *(*(i + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocOp,void>::id);
        }

        v7 += 24;
      }

      while (v7 != v8);
    }

    v85[0] = 1;
    v85[1] = -4096;
    v85[10] = -4096;
    v85[19] = -4096;
    v85[28] = -4096;
    mlir::ODIE::Compiler::Analysis::MemoryReuse::getMemorySpaces(v82, &v95);
    v15 = v95;
    if (v96)
    {
      v16 = v95 + 8 * v96;
      do
      {
        *&v106 = *v15;
        mlir::ODIE::Compiler::Analysis::MemoryReuse::getTotalAllocationSize(v82, v106, &v89);
        v17 = v89;
        if (v90)
        {
          v18 = 8 * v90;
          do
          {
            v19 = *v17;
            v17 += 2;
            v20 = *(a2 + 24);
            *&v101 = v19;
            v21 = mlir::IntegerType::get(*(a3 + 8), 8, 0);
            v84[0] = mlir::MemRefType::get(&v101, 1, v21, 0, 0, v106);
            v86 = 0;
            v22 = mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::AllocOp,mlir::MemRefType,decltype(nullptr)>((a3 + 8), v20, v84);
            v23 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::operator[](v85, &v106);
            llvm::SmallVectorTemplateBase<mlir::ODIE::Compiler::Exec::AllocOp,true>::push_back(v23, v22);
            v18 -= 8;
          }

          while (v18);
          v17 = v89;
        }

        if (v17 != &v91)
        {
          free(v17);
        }

        v15 += 8;
      }

      while (v15 != v16);
      v15 = v95;
    }

    if (v15 != v97)
    {
      free(v15);
    }

    (*(*a3 + 40))(a3, a2);
    v24 = *(a2 + 44);
    if ((v24 & 0x7FFFFF) != 0)
    {
      v25 = ((a2 + 16 * ((v24 >> 23) & 1) + ((v24 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v79 = v25 + 24 * (v24 & 0x7FFFFF);
      while (1)
      {
        v26 = *(v25 + 8);
        v27 = v26 ? v26 - 8 : 0;
        v89 = 1;
        v90 = -4096;
        v92 = -4096;
        v93 = -4096;
        v94 = -4096;
        llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::copyFrom(&v89, v85);
        v95 = 1;
        v96 = -4096;
        v98 = -4096;
        v99 = -4096;
        v100 = -4096;
        v28 = v89;
        v80 = v25;
        if (v89 <= 1)
        {
          break;
        }

        v32 = &v95;
        v33 = &v90;
        if ((v89 & 1) != 0 || (v33 = v90, v32 = (v90 + 72 * v91), v91))
        {
          v28 = v89 & 1;
          v31 = v33;
          do
          {
            if ((*v31 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              goto LABEL_49;
            }

            v31 += 9;
          }

          while (v31 != v32);
          v31 = v32;
          goto LABEL_49;
        }

        v35 = 0;
        v31 = v90;
LABEL_53:
        v34 = &v33[9 * v35];
LABEL_54:
        while (v31 != v34)
        {
          v36 = v31[1];
          v37 = *(v31 + 4);
          *&v106 = &v107;
          *(&v106 + 1) = 0x600000000;
          if (v37 < 7)
          {
            if (!v37)
            {
              v43 = 0;
              goto LABEL_62;
            }

            v38 = 0;
            v39 = &v107;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v106, &v107, v37, 8);
            v38 = DWORD2(v106);
            v39 = v106;
          }

          v40 = 8 * v37;
          v41 = v39 + v38;
          do
          {
            v42 = *v36++;
            *v41++ = v42 - 16;
            v40 -= 8;
          }

          while (v40);
          v43 = DWORD2(v106);
LABEL_62:
          DWORD2(v106) = v43 + v37;
          v44 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::operator[](&v95, v31);
          llvm::SmallVectorImpl<mlir::Value>::operator=(v44, &v106);
          if (v106 != &v107)
          {
            free(v106);
          }

          do
          {
            v31 += 9;
          }

          while (v31 != v32 && (*v31 | 0x1000) == 0xFFFFFFFFFFFFF000);
        }

        llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::~SmallDenseMap(&v89);
        v45 = *(a3 + 24);
        v46 = *(v27 + 40);
        *(a3 + 24) = v27;
        *(a3 + 32) = v46;
        while (v46 != v27 + 32 && *(*(v46 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocOp,void>::id)
        {
          v46 = *(v46 + 8);
        }

        v81 = v45;
        *&v106 = v46;
        *(&v106 + 1) = v27 + 32;
        *&v107 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::filter;
        *(&v107 + 1) = mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::unwrap;
        *&v108 = v27 + 32;
        *(&v108 + 1) = v27 + 32;
        *&v109 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::filter;
        *(&v109 + 1) = mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::unwrap;
        *&v110 = "exec.memref_offset";
        *(&v110 + 1) = 18;
        llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::WhileOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(&v106);
        v84[0] = v27 + 32;
        v84[1] = v27 + 32;
        v84[2] = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::filter;
        v84[3] = mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::unwrap;
        v84[4] = v27 + 32;
        v84[5] = v27 + 32;
        v84[6] = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::filter;
        v84[7] = mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>::unwrap;
        v84[8] = "exec.memref_offset";
        v84[9] = 18;
        llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::WhileOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(v84);
        v103 = v108;
        v104 = v109;
        v101 = v106;
        v102 = v107;
        v47 = v84[0];
        v86 = v88;
        v87 = 0x600000000;
        v105 = v110;
        v48 = v106;
        if (v106 == v84[0])
        {
          v53 = 0;
          v49 = 0;
          v54 = 6;
        }

        else
        {
          v49 = 0;
          do
          {
            v50 = *(v48 + 8);
            *&v106 = v50;
            v51 = *(&v106 + 1);
            if (v50 != *(&v106 + 1))
            {
              v52 = v107;
              do
              {
                if (v52(v50))
                {
                  break;
                }

                v50 = *(v50 + 8);
              }

              while (v50 != v51);
              *&v106 = v50;
            }

            ++v49;
            llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::WhileOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(&v106);
            v48 = v106;
          }

          while (v106 != v47);
          v53 = v87;
          v54 = HIDWORD(v87);
        }

        v55 = v49 + v53;
        if (v55 > v54)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v88, v55, 8);
          v53 = v87;
        }

        v106 = v101;
        v107 = v102;
        v108 = v103;
        v109 = v104;
        v110 = v105;
        v56 = v101;
        v57 = v86;
        if (v101 != v47)
        {
          v58 = v86 + 8 * v53;
          do
          {
            *v58 = (*(&v107 + 1))(v56);
            v59 = *(v56 + 8);
            *&v106 = v59;
            v60 = *(&v106 + 1);
            if (v59 != *(&v106 + 1))
            {
              v61 = v107;
              do
              {
                if (v61(v59))
                {
                  break;
                }

                v59 = *(v59 + 8);
              }

              while (v59 != v60);
              *&v106 = v59;
            }

            llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::WhileOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(&v106);
            ++v58;
            v56 = v106;
          }

          while (v106 != v47);
          v53 = v87;
          v57 = v86;
        }

        v62 = v53 + v49;
        LODWORD(v87) = v62;
        v63 = v81;
        if (v62)
        {
          v64 = *(a3 + 24);
          v65 = *(a3 + 32);
          v66 = 8 * v62;
          do
          {
            v67 = *v57;
            *(a3 + 24) = *(*v57 + 16);
            *(a3 + 32) = v67;
            v84[0] = *((*(v67 - 8) & 0xFFFFFFFFFFFFFFF8) + 48);
            v68 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::find(&v95, v84);
            Attr = mlir::Operation::getAttr(v67, "exec.memref_index", 0x11uLL);
            if (Attr)
            {
              if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
              {
                v70 = Attr;
              }

              else
              {
                v70 = 0;
              }
            }

            else
            {
              v70 = 0;
            }

            *&v101 = v70;
            *&v106 = *(v68[1] + 8 * mlir::IntegerAttr::getInt(&v101));
            v71 = *(v67 + 24);
            v84[0] = *(v67 - 8) & 0xFFFFFFFFFFFFFFF8;
            *&v101 = mlir::Operation::getAttr(v67, "exec.memref_offset", 0x12uLL);
            v72 = mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::Type,mlir::Value &,mlir::IntegerAttr>((a3 + 8), v71, v84, &v106, &v101);
            if (*(v72 + 9))
            {
              v73 = (v72 - 16);
            }

            else
            {
              v73 = 0;
            }

            v84[0] = v73;
            mlir::RewriterBase::replaceAllOpUsesWith(a3, v67, v84, 1);
            if (v64)
            {
              *(a3 + 24) = v64;
              *(a3 + 32) = v65;
            }

            else
            {
              v65 = 0;
              *(a3 + 24) = 0;
              *(a3 + 32) = 0;
            }

            v63 = v81;
            ++v57;
            v66 -= 8;
          }

          while (v66);
          v57 = v86;
          if (v87)
          {
            v74 = 8 * v87;
            do
            {
              v75 = *v57++;
              (*(*a3 + 16))(a3, v75, v63);
              v74 -= 8;
            }

            while (v74);
            v57 = v86;
            v63 = v81;
          }
        }

        if (v57 != v88)
        {
          free(v57);
          v63 = v81;
        }

        if (v63.n128_u64[0])
        {
          *(a3 + 24) = v63;
        }

        else
        {
          *(a3 + 24) = 0;
          *(a3 + 32) = 0;
        }

        llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::~SmallDenseMap(&v95);
        v25 = v80 + 24;
        if (v80 + 24 == v79)
        {
          goto LABEL_117;
        }
      }

      v29 = v90;
      v30 = v91;
      if (v89)
      {
        v31 = &v95;
      }

      else
      {
        v31 = (v90 + 72 * v91);
      }

      if (v89)
      {
        v29 = &v90;
        v30 = 4;
      }

      v32 = &v29[9 * v30];
LABEL_49:
      if (v28)
      {
        v34 = &v95;
        goto LABEL_54;
      }

      v33 = v90;
      v35 = v91;
      goto LABEL_53;
    }

LABEL_117:
    (*(*a3 + 48))(a3, a2);
    llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Exec::AllocOp,6u>>>::~SmallDenseMap(v85);
    v76 = 1;
  }

  else
  {
    v76 = 0;
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>,mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>::destroyAll(v83);
  MEMORY[0x25F891030](v83[0], 8);
  MEMORY[0x25F891030](v82[0], 8);
  v77 = *MEMORY[0x277D85DE8];
  return v76;
}

uint64_t llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::scf::WhileOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(uint64_t *a1)
{
  result = *a1;
  while (result != a1[4])
  {
    v3 = (a1[3])();
    result = mlir::Operation::hasAttr(v3, a1[8], a1[9]);
    if (result)
    {
      break;
    }

    v4 = a1[1];
    result = *(*a1 + 8);
    *a1 = result;
    if (result != v4)
    {
      do
      {
        v5 = (a1[2])();
        result = *a1;
        if (v5)
        {
          break;
        }

        result = *(result + 8);
        *a1 = result;
      }

      while (result != a1[1]);
    }
  }

  return result;
}

void *mlir::DialectRegistry::addExtension<mlir::scf::SCFDialect>(void (*)(mlir::MLIRContext *,mlir::scf::SCFDialect *))::Extension::~Extension(void *a1)
{
  *a1 = &unk_286E78AE0;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  return a1;
}

void mlir::DialectRegistry::addExtension<mlir::scf::SCFDialect>(void (*)(mlir::MLIRContext *,mlir::scf::SCFDialect *))::Extension::~Extension(void *a1)
{
  *a1 = &unk_286E78AE0;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

BOOL anonymous namespace::FuncInlinerInterface::isLegalToInline(_anonymous_namespace_::FuncInlinerInterface *this, mlir::Operation *a2, mlir::Operation *a3)
{
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  if (a2 && *(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id && *(a2 + 2 * ((*(a2 + 11) >> 23) & 1) + 10))
  {
    return 0;
  }

  if (v3)
  {
    return *(v3 + 2 * ((*(v3 + 11) >> 23) & 1) + 10) == 0;
  }

  return 1;
}

uint64_t anonymous namespace::FuncInlinerInterface::isLegalToInline()
{
  return 1;
}

{
  return 1;
}

void anonymous namespace::FuncInlinerInterface::handleTerminator(_anonymous_namespace_::FuncInlinerInterface *this, mlir::Operation *a2, mlir::Block *a3)
{
  v12 = a3;
  if (a2 && *(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
  {
    v5 = *(a2 + 2);
    v4 = *(a2 + 3);
    v11[0] = *(**v4 + 32);
    v11[1] = 0;
    v11[2] = v5;
    v11[3] = a2;
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v6 = *(a2 + 17);
      v7 = *(a2 + 9);
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v10[0] = v7;
    v10[1] = v6;
    mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,mlir::OperandRange>(v11, v4, &v12, v10);
    if (*(a2 + 2))
    {
      *(a2 + 2) = 0;
      v9 = *a2;
      v8 = *(a2 + 1);
      *v8 = *a2;
      *(v9 + 8) = v8;
      *a2 = 0;
      *(a2 + 1) = 0;
    }

    mlir::Operation::destroy(a2);
  }
}

void anonymous namespace::FuncInlinerInterface::handleTerminator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v11[0] = a3;
  v11[1] = a4;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v4 = *(a2 + 68);
    if (v4)
    {
      v5 = 0;
      v6 = (*(a2 + 72) + 24);
      do
      {
        v7 = *v6;
        v6 += 4;
        v8 = mlir::ValueRange::dereference_iterator(v11, v5);
        v10 = v7;
        mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v8, &v10);
        ++v5;
      }

      while (v4 != v5);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

char *mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::cf::BranchOp>(a1, *(**a2 + 32));
  v16[0] = a2;
  v16[1] = v8;
  v17[0] = v18;
  v17[1] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v21[0] = v22;
  v21[1] = 0x100000000;
  v22[1] = v23;
  v22[2] = 0x100000000;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v23[4] = 0;
  v23[6] = 0;
  v9 = *a4;
  v10 = a4[1];
  v11 = v9 & 0xFFFFFFFFFFFFFFF9;
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(v21, *a3);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v17, v11 | 2, 0, v11 | 2, v10);
  v12 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v12);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::cf::BranchOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "cf.br";
    v6[3] = 5;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

void *mlir::DialectRegistry::addExtension<mlir::func::FuncDialect>(void (*)(mlir::MLIRContext *,mlir::func::FuncDialect *))::Extension::~Extension(void *a1)
{
  *a1 = &unk_286E78AE0;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  return a1;
}

void mlir::DialectRegistry::addExtension<mlir::func::FuncDialect>(void (*)(mlir::MLIRContext *,mlir::func::FuncDialect *))::Extension::~Extension(void *a1)
{
  *a1 = &unk_286E78AE0;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

void mlir::cf::ControlFlowDialect::ControlFlowDialect(mlir::cf::ControlFlowDialect *this, mlir::MLIRContext *a2, uint64_t a3, unint64_t *a4)
{
  *(this + 1) = "cf";
  *(this + 2) = 2;
  *(this + 3) = &mlir::detail::TypeIDResolver<mlir::cf::ControlFlowDialect,void>::id;
  *(this + 4) = a2;
  *(this + 20) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *this = &unk_286E875E8;
  mlir::MLIRContext::loadDialect<mlir::arith::ArithDialect>(a2, a2, a3, a4);
  mlir::cf::ControlFlowDialect::initialize(this);
}

mlir::Dialect *mlir::MLIRContext::loadDialect<mlir::arith::ArithDialect>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  result = mlir::MLIRContext::isDialectLoading(a1, "arith", 5, a4);
  if ((result & 1) == 0)
  {
    v6 = a1;
    return mlir::MLIRContext::getOrLoadDialect(a1, "arith", 5uLL, &mlir::detail::TypeIDResolver<mlir::arith::ArithDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::arith::ArithDialect * mlir::MLIRContext::getOrLoadDialect<mlir::arith::ArithDialect>(void)::{lambda(void)#1}>, &v6);
  }

  return result;
}

void mlir::cf::ControlFlowDialect::~ControlFlowDialect(mlir::cf::ControlFlowDialect *this)
{
  mlir::Dialect::~Dialect(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::cf::AssertOp::canonicalize(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 72) + 24);
  v9 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if ((~*(v2 + 8) & 7) == 0)
  {
    v2 = 0;
  }

  if (!v2)
  {
    return 0;
  }

  v5 = *(v2 + 8) & 7;
  if (v5 == 6)
  {
    v6 = v2 + 24 * *(v2 + 16);
    v7 = (v6 + 120);
    if (v6 == -120)
    {
      return 0;
    }
  }

  else
  {
    v7 = (v2 + 16 * v5 + 16);
  }

  result = mlir::detail::constant_int_predicate_matcher::match(&v9, v7);
  if (result)
  {
    (*(*a2 + 16))(a2, a1);
    return 1;
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Write *>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Write *>(a1, a2);
  }

  else
  {
    v4 = (*a1 + 40 * v3);
    v5 = *a2;
    v6 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
    *v4 = v5;
    v4[1] = v6;
    v4[2] = 0;
    v4[3] = 0;
    *(v4 + 29) = 0;
    v7 = *(a1 + 8) + 1;
    *(a1 + 8) = v7;
    return *a1 + 40 * v7 - 40;
  }
}

uint64_t mlir::cf::BranchOp::canonicalize(uint64_t a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 44);
  v5 = *(((a1 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24);
  v6 = *(a1 + 16);
  if (v5 == v6 || !*v5 || **v5)
  {
    v15 = *(((a1 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24);
    if ((v4 & 0x800000) != 0)
    {
      v7 = *(a1 + 68);
      v8 = *(a1 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    }

    else
    {
      v7 = 0;
      v8 = 2;
    }

    v19[0] = v8;
    v19[1] = v7;
    v16 = v18;
    v17 = 0x400000000;
    if (v5 == v6 || !collapseBranch(&v15, v19, &v16))
    {
      v10 = 0;
    }

    else
    {
      v9 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,mlir::ValueRange &>((a2 + 8), *(a1 + 24), &v15, v19);
      (*(*a2 + 8))(a2, a1, v9);
      v10 = 1;
    }

    if (v16 != v18)
    {
      free(v16);
    }
  }

  else
  {
    if ((v4 & 0x800000) != 0)
    {
      v11 = *(a1 + 72);
      v12 = *(a1 + 68);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v16 = v18;
    v17 = 0x600000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v16, v11, 0, v11, v12);
    (*(*a2 + 16))(a2, a1);
    (*(*a2 + 32))(a2, v5, v6, v6 + 4, v16 & 0xFFFFFFFFFFFFFFF9, v17);
    if (v16 != v18)
    {
      free(v16);
    }

    v10 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

void mlir::cf::CondBranchOp::getSuccessorOperands(mlir::cf::CondBranchOp *this, uint64_t a2, int a3)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v5 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  if (a3)
  {
    v6 = v5[1] + *v5;
    v7 = v5[2];
    v8 = *(*(*(a2 + 48) + 96) + 8 * *(*(a2 + 48) + 104) - 8);
    v9 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v5, 3);
    __src = 2;
    v15 = v8;
    v16 = v9;
    *&v17 = a2;
    *(&v17 + 1) = __PAIR64__(v7, v6);
  }

  else
  {
    v10 = *(*(*(a2 + 48) + 96) + 8 * *(*(a2 + 48) + 104) - 8);
    v11 = *v5;
    v12 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v5, 3);
    __src = 1;
    v15 = v10;
    v16 = v12;
    *&v17 = a2;
    *(&v17 + 1) = v11;
  }

  v18 = v20;
  v19 = 0x100000000;
  llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(&v18, &__src, &v17);
  *this = 0;
  *(this + 8) = v17;
  *(this + 3) = this + 40;
  *(this + 4) = 0x100000000;
  if (v19)
  {
    llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=(this + 24, &v18);
  }

  if (v18 != v20)
  {
    free(v18);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void mlir::cf::SwitchOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v35[6] = *MEMORY[0x277D85DE8];
  v32 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v32, 0, &v32, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a4, 0, a4, a5);
  v18 = 16 * a7;
  if (a7)
  {
    v19 = a6;
    do
    {
      v20 = *v19;
      v21 = v19[1];
      v19 += 2;
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, v20, 0, v20, v21);
    }

    while (v19 != (a6 + 16 * a7));
    v33 = v35;
    v34 = 0xC00000000;
    v22 = (a6 + 8);
    v23 = 16 * a7;
    do
    {
      v24 = *v22;
      v22 += 4;
      llvm::SmallVectorTemplateBase<int,true>::push_back(&v33, v24);
      v23 -= 16;
    }

    while (v23);
    v25 = v33;
    v26 = v34;
  }

  else
  {
    v26 = 0;
    v33 = v35;
    v34 = 0xC00000000;
    v25 = v35;
  }

  v27 = mlir::detail::DenseArrayAttrImpl<int>::get(*a1, v25, v26);
  *mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(a2) = v27;
  if (v33 != v35)
  {
    free(v33);
  }

  if (a7)
  {
    LODWORD(a7) = 0;
    v28 = (a6 + 8);
    do
    {
      v29 = *v28;
      v28 += 4;
      LODWORD(a7) = a7 + v29;
      v18 -= 16;
    }

    while (v18);
  }

  v30 = mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(a2);
  v30[4] = 1;
  v30[5] = a5;
  v30[6] = a7;
  if (a8)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(a2) + 8) = a8;
  }

  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a9);
  llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, a10, 0, a10, a11);
  v31 = *MEMORY[0x277D85DE8];
}

void mlir::cf::SwitchOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, uint64_t Raw, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = a11;
  v19 = a12;
  v21 = a9;
  v20 = a10;
  if (Raw)
  {
    v22 = Raw;
    v32 = Raw;
    v23 = mlir::VectorType::get(&v32, 1uLL, *(a3 + 8) & 0xFFFFFFFFFFFFFFF8, 0, 0);
    v24 = v23;
    if (v23)
    {
      v25 = a5;
      v26 = a6;
      v27 = *v23;
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v29 = v27 + 8;
      a6 = v26;
      a5 = v25;
      v19 = a12;
      v18 = a11;
      v30 = mlir::detail::InterfaceMap::lookup(v29, v28);
    }

    else
    {
      v30 = 0;
    }

    Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v24, v30, a7, 4 * v22);
    v21 = a9;
    v20 = a10;
  }

  mlir::cf::SwitchOp::build(a1, a2, a3, a5, a6, v18, v19, Raw, a4, v21, v20);
}

void mlir::cf::SwitchOp::getSuccessorOperands(mlir::cf::SwitchOp *this, mlir::Operation **a2, int a3)
{
  v39[3] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = *a2;
    v7 = (*a2 + 16 * ((*(*a2 + 11) >> 23) & 1));
    v8 = v7[20];
    v9 = v7[21];
    v7 += 20;
    v10 = v7[2];
    v11 = v9 + v8;
    v12 = *(*(*(*a2 + 6) + 96) + 8 * *(*(*a2 + 6) + 104) - 8);
    v13 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*a2 + 3) + 32), v7, 3);
    __src = 2;
    v31 = v12;
    v32 = v13;
    v35 = v6;
    v36 = v11;
    v37 = v10;
    v38[0] = v39;
    v38[1] = 0x100000000;
    llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(v38, &__src, v33);
    AttrDictionary = mlir::Operation::getAttrDictionary(*a2);
    v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(AttrDictionary + 8), *(AttrDictionary + 8) + 16 * *(AttrDictionary + 16), **(*(*a2 + 6) + 96));
    if (v17)
    {
      v18 = *v15;
      v16 = v15[1];
    }

    else
    {
      v18 = 0;
    }

    mlir::MutableOperandRangeRange::MutableOperandRangeRange(&__src, &v35, v18, v16);
    if (v38[0] != v39)
    {
      free(v38[0]);
    }

    mlir::MutableOperandRangeRange::dereference(&__src, v34[5] + (a3 - 1), &v26);
    if (v32 != v34)
    {
      free(v32);
    }

    *this = 0;
    *(this + 8) = v26;
    *(this + 3) = this + 40;
    *(this + 4) = 0x100000000;
    if (v28)
    {
      llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=(this + 24, &v27);
    }

    v24 = v27;
    if (v27 != v29)
    {
LABEL_16:
      free(v24);
    }
  }

  else
  {
    v19 = *a2;
    v20 = *a2 + 16 * ((*(*a2 + 11) >> 23) & 1);
    v21 = *(v20 + 80);
    v22 = *(*(*(*a2 + 6) + 96) + 8 * *(*(*a2 + 6) + 104) - 8);
    v23 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(v19 + 3) + 32), v20 + 80, 3);
    __src = 1;
    v31 = v22;
    v32 = v23;
    *&v26 = v19;
    *(&v26 + 1) = v21;
    v27 = v29;
    v28 = 0x100000000;
    llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(&v27, &__src, v33);
    *this = 0;
    *(this + 8) = v26;
    *(this + 3) = this + 40;
    *(this + 4) = 0x100000000;
    if (v28)
    {
      llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=(this + 24, &v27);
    }

    v24 = v27;
    if (v27 != v29)
    {
      goto LABEL_16;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t simplifySwitchWithOnlyDefault(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) != 1)
  {
    return 0;
  }

  v14[3] = v2;
  v14[4] = v3;
  v6 = *(a1 + 44);
  v7 = a1 + 16 * ((v6 >> 23) & 1);
  v14[0] = *(((v7 + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24);
  v8 = *(v7 + 80);
  v9 = *(v7 + 84);
  if ((v6 & 0x800000) != 0)
  {
    v10 = *(a1 + 72);
  }

  else
  {
    v10 = 0;
  }

  v13[0] = v10 + 32 * v8;
  v13[1] = (v9 + v8) - v8;
  v11 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>((a2 + 8), *(a1 + 24), v14, v13);
  (*(*a2 + 8))(a2, a1, v11);
  return 1;
}

uint64_t dropSwitchCasesThatMatchDefault(uint64_t a1, uint64_t a2)
{
  v67[6] = *MEMORY[0x277D85DE8];
  v66[0] = v67;
  v66[1] = 0x600000000;
  v64[0] = v65;
  v64[1] = 0x300000000;
  v62[0] = &v63;
  v62[1] = 0x300000000;
  v4 = a1 + 64;
  v6 = *(a1 + 40);
  v5 = *(a1 + 44);
  v7 = a1 + 64 + 16 * ((v5 >> 23) & 1);
  v53 = *(v7 + 8);
  v54 = v53 != 0;
  v8 = ((v7 + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = 32;
  }

  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v53, v55);
  v59 = *v55;
  v60 = *&v55[16];
  v61 = *&v55[32];
  *&v55[8] = *v55;
  *&v55[24] = v60;
  *v55 = 0;
  v10 = v56;
  v11 = v60;
  if (v60 == v56)
  {
    v12 = 0;
    goto LABEL_41;
  }

  v49 = a2;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  do
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v55[8], &v57);
    v16 = v58;
    v52 = v58;
    v50 = v14;
    v51 = v57;
    v17 = *(v9 + 32 * v14 + 24);
    v18 = *(a1 + 44);
    v19 = (v4 + 16 * ((v18 >> 23) & 1));
    if (v17 != *(((v19 + ((v18 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24))
    {
      goto LABEL_21;
    }

    if ((v18 & 0x800000) != 0)
    {
      v20 = *(a1 + 72);
    }

    else
    {
      v20 = 0;
    }

    if (v14)
    {
      LODWORD(v21) = 0;
      v22 = 4 * v13;
      v23 = *(*v19 + 24);
      do
      {
        v24 = *v23++;
        v21 = (v24 + v21);
        v22 -= 4;
      }

      while (v22);
      if ((v18 & 0x800000) != 0)
      {
LABEL_14:
        v25 = *(a1 + 72);
        goto LABEL_15;
      }
    }

    else
    {
      v21 = 0;
      if ((v18 & 0x800000) != 0)
      {
        goto LABEL_14;
      }
    }

    v25 = 0;
LABEL_15:
    v26 = v19[4];
    v27 = v19[5] + v26;
    v28 = *(*(*v19 + 24) + 4 * v14);
    if (v27 - v26 == v28)
    {
      if (!v28)
      {
LABEL_20:
        v15 = 1;
        goto LABEL_29;
      }

      v29 = (v25 + 32 * v26 + 24);
      v30 = (v20 + 32 * v21 + 32 * v27 + 24);
      while (*v30 == *v29)
      {
        v29 += 4;
        v30 += 4;
        if (!--v28)
        {
          goto LABEL_20;
        }
      }
    }

LABEL_21:
    llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(v66, v17);
    v31 = *(a1 + 44);
    if ((v31 & 0x800000) != 0)
    {
      v32 = *(a1 + 72);
    }

    else
    {
      v32 = 0;
    }

    v33 = (v4 + 16 * ((v31 >> 23) & 1));
    v34 = v33[4];
    v35 = v33[5];
    v36 = *(*v33 + 24);
    if (v50)
    {
      LODWORD(v37) = 0;
      v38 = 4 * v50;
      v39 = v36;
      do
      {
        v40 = *v39++;
        v37 = (v40 + v37);
        v38 -= 4;
      }

      while (v38);
    }

    else
    {
      v37 = 0;
    }

    llvm::SmallVectorTemplateBase<mlir::ValueRange,true>::push_back(v64, (v32 + 32 * (v35 + v34) + 32 * v37) & 0xFFFFFFFFFFFFFFF9 | 2, v36[v50]);
    llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(v62, &v51);
    v16 = v52;
LABEL_29:
    if (v16 >= 0x41 && v51)
    {
      MEMORY[0x25F891010](v51, 0x1000C8000313F17);
    }

    ++v14;
    ++v11;
    *v55 = v14;
    *&v55[24] = v11;
    ++v13;
  }

  while (v11 != v10);
  if (v15)
  {
    v41 = *(a1 + 47);
    v42 = *(a1 + 72);
    *&v59 = *(v42 + 24);
    v50 = *(((a1 + 8 * v41 + 87) & 0xFFFFFFFFFFFFFFF8) + 24);
    v43 = *(a1 + 96);
    v44 = v42 + 32 * v43;
    v45 = (*(a1 + 100) + v43) - v43;
    *v55 = v44;
    *&v55[8] = v45;
    v46 = mlir::OpBuilder::create<mlir::cf::SwitchOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Block *,mlir::OperandRange,llvm::SmallVector<llvm::APInt,3u> &,llvm::SmallVector<mlir::Block *,6u> &,llvm::SmallVector<mlir::ValueRange,3u> &>(v49 + 8, *(a1 + 24), &v59, &v50, v55, v62, v66, v64);
    (*(*v49 + 8))(v49, a1, v46);
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

LABEL_41:
  llvm::SmallVector<llvm::APInt,3u>::~SmallVector(v62);
  if (v64[0] != v65)
  {
    free(v64[0]);
  }

  if (v66[0] != v67)
  {
    free(v66[0]);
  }

  v47 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t simplifyConstSwitchValue(uint64_t a1, uint64_t a2)
{
  v12 = 1;
  v2 = *(*(a1 + 72) + 24);
  v10 = &v11;
  v11 = 0;
  if ((~*(v2 + 8) & 7) == 0)
  {
    v2 = 0;
  }

  if (!v2)
  {
    goto LABEL_10;
  }

  v5 = *(v2 + 8) & 7;
  if (v5 == 6)
  {
    v6 = v2 + 24 * *(v2 + 16);
    v7 = (v6 + 120);
    if (v6 == -120)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = (v2 + 16 * v5 + 16);
  }

  if (!mlir::detail::constant_int_value_binder::match(&v10, v7))
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  foldSwitch(a1, a2, &v11);
  v8 = 1;
LABEL_11:
  if (v12 >= 0x41 && v11)
  {
    MEMORY[0x25F891010](v11, 0x1000C8000313F17);
  }

  return v8;
}

uint64_t simplifyPassThroughSwitch(uint64_t a1, uint64_t **a2)
{
  v69[8] = *MEMORY[0x277D85DE8];
  v48 = v60;
  v58 = v60;
  v59 = 0x600000000;
  v55 = v57;
  v56 = 0x300000000;
  v52 = &v54;
  v53 = 0x100000000;
  v4 = a1 + 64;
  v5 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
  v6 = *(v5 + 8);
  v7 = (*(*(v5 + 16) + 24))();
  if (v8)
  {
    v9 = 8 * v8;
    v10 = 1;
    do
    {
      v11 = *v7++;
      v10 *= v11;
      v9 -= 8;
    }

    while (v9);
    v12 = v10 + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 > HIDWORD(v53))
  {
    llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>::grow(&v52, v12);
  }

  if (*(a1 + 40))
  {
    v13 = ((v4 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  else
  {
    v13 = 32;
  }

  v14 = *(v5 + 8);
  v15 = (*(*(v5 + 16) + 24))();
  if (v16)
  {
    v17 = 8 * v16;
    v18 = 1;
    do
    {
      v19 = *v15++;
      v18 *= v19;
      v17 -= 8;
    }

    while (v17);
    if (v18 < 1)
    {
      v20 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v18 = 1;
  }

  v37 = 0;
  v20 = 0;
  for (i = 0; i != v18; ++i)
  {
    v50 = *(v13 + 32 * i + 24);
    v39 = *(a1 + 44);
    if ((v39 & 0x800000) != 0)
    {
      v40 = *(a1 + 72);
    }

    else
    {
      v40 = 0;
    }

    v41 = (v4 + 16 * ((v39 >> 23) & 1));
    if (i)
    {
      LODWORD(v42) = 0;
      v43 = 4 * v37;
      v44 = *(*v41 + 24);
      do
      {
        v45 = *v44++;
        v42 = (v45 + v42);
        v43 -= 4;
      }

      while (v43);
    }

    else
    {
      v42 = 0;
    }

    v46 = v40 + 32 * (v41[5] + v41[4]) + 32 * v42;
    v47 = *(*(*v41 + 24) + 4 * i);
    v61 = v46 & 0xFFFFFFFFFFFFFFF9 | 2;
    v62 = v47;
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,6u>>::emplace_back<>(&v52);
    v20 |= collapseBranch(&v50, &v61, &v52[64 * v53 - 64]);
    llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(&v58, v50);
    llvm::SmallVectorTemplateBase<mlir::ValueRange,true>::push_back(&v55, v61, v62);
    ++v37;
  }

LABEL_16:
  v21 = *(a1 + 44);
  v22 = v4 + 16 * ((v21 >> 23) & 1);
  v49 = *(((v22 + ((v21 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
  v23 = *(v22 + 16);
  v24 = *(v22 + 20);
  if ((v21 & 0x800000) != 0)
  {
    v25 = *(a1 + 72);
  }

  else
  {
    v25 = 0;
  }

  v50 = (v25 + 32 * v23) & 0xFFFFFFFFFFFFFFF9 | 2;
  v51 = (v24 + v23) - v23;
  llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,6u>>::emplace_back<>(&v52);
  if (collapseBranch(&v49, &v50, &v52[64 * v53 - 64]) & 1 | v20 & 1)
  {
    v26 = *(*(a1 + 72) + 24);
    v27 = *(a1 + 24);
    v28 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::cf::SwitchOp>((a2 + 1), *(**v27 + 32));
    v61 = v27;
    v62 = v28;
    v63 = v65;
    v64 = 0x400000000;
    v65[4] = v66;
    v65[5] = 0x400000000;
    v66[4] = v67;
    v66[5] = 0x400000000;
    v67[8] = 4;
    v67[9] = v68;
    v67[10] = 0x100000000;
    v68[1] = v69;
    v68[2] = 0x100000000;
    v69[2] = 0;
    v69[1] = 0;
    v69[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v69[4] = 0;
    v69[6] = 0;
    v29 = v58 | 4;
    if (!v59)
    {
      v29 = 0;
    }

    mlir::cf::SwitchOp::build(a2 + 1, &v61, v26, v50, v51, v55, v56, v5, v49, v29, v59);
    v30 = mlir::Operation::create(&v61);
    mlir::OpBuilder::insert((a2 + 1), v30);
    v31 = *(*(v30 + 6) + 16);
    mlir::OperationState::~OperationState(&v61);
    if (v31 == &mlir::detail::TypeIDResolver<mlir::cf::SwitchOp,void>::id)
    {
      v32 = v30;
    }

    else
    {
      v32 = 0;
    }

    ((*a2)[1])(a2, a1, v32);
    v33 = 1;
  }

  else
  {
    v33 = 0;
  }

  v34 = v48;
  llvm::SmallVector<llvm::SmallVector<mlir::Value,6u>,1u>::~SmallVector(&v52);
  if (v55 != v57)
  {
    free(v55);
  }

  if (v58 != v34)
  {
    free(v58);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v33;
}

uint64_t simplifySwitchFromSwitchOnSameCondition(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *v2;
  if (!*v2)
  {
    return 0;
  }

  v4 = *(v3[2] + 16);
  if (*v3 || v4 == 0)
  {
    return 0;
  }

  v6 = *(v4 + 32);
  v7 = *(*(v6 + 48) + 16);
  v8 = v7 == &mlir::detail::TypeIDResolver<mlir::cf::SwitchOp,void>::id ? v6 : 0;
  if (v7 != &mlir::detail::TypeIDResolver<mlir::cf::SwitchOp,void>::id)
  {
    return 0;
  }

  v10 = *(a1 + 72);
  if (*(v10 + 24) != *(*(v6 + 72) + 24))
  {
    return 0;
  }

  v12 = (v6 + ((*(v6 + 44) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8;
  if (*(v12 + 24) == v2)
  {
    return 0;
  }

  v14 = *(v6 + 40);
  v15 = v12 + 32;
  if (!v14)
  {
    v15 = 32;
  }

  v16 = 0;
  v17 = v14 - 1;
  if (v17)
  {
    v18 = (v15 + 24);
    while (*v18 != v2)
    {
      ++v16;
      v18 += 4;
      if (v17 == v16)
      {
        goto LABEL_21;
      }
    }
  }

  if (v16 == v17)
  {
LABEL_21:
    *&v29 = *(((a1 + ((*(a1 + 44) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8) + 24);
    v19 = *(a1 + 96);
    v20 = v10 + 32 * v19;
    v21 = (*(a1 + 100) + v19) - v19;
    *&v26 = v20;
    *(&v26 + 1) = v21;
    v22 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>((a2 + 8), *(a1 + 24), &v29, &v26);
    (*(*a2 + 8))(a2, a1, v22);
  }

  else
  {
    v23 = *(v8 + 88) != 0;
    v24 = *(v8 + 88);
    v25 = v23;
    mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v24, &v26);
    v29 = v26;
    v30 = v27 + v16;
    v31 = v28;
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v29, &v26);
    foldSwitch(a1, a2, &v26);
    if (DWORD2(v26) >= 0x41)
    {
      if (v26)
      {
        MEMORY[0x25F891010](v26, 0x1000C8000313F17);
      }
    }
  }

  return 1;
}

uint64_t simplifySwitchFromDefaultSwitchOnSameCondition(uint64_t a1, uint64_t a2)
{
  v91[7] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *v2;
  if (!*v2 || ((v4 = *(v3[2] + 16), !*v3) ? (v5 = v4 == 0) : (v5 = 1), v5 || (v6 = *(v4 + 32), *(*(v6 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::cf::SwitchOp,void>::id) || *(*(a1 + 72) + 24) != *(*(v6 + 72) + 24) || (v8 = (v6 + ((*(v6 + 44) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8, *(v8 + 24) != v2)))
  {
    v9 = 0;
    goto LABEL_10;
  }

  *v76 = 0;
  v77 = 0;
  v78 = 0;
  v13 = v8 + 32;
  if (*(v6 + 40))
  {
    v14 = v13;
  }

  else
  {
    v14 = 32;
  }

  v74 = *(v6 + 88);
  v75 = v74 != 0;
  v15 = *(v74 + 8);
  v16 = (*(*(v74 + 16) + 24))();
  if (!v17)
  {
    v19 = 1;
LABEL_57:
    v54 = 0;
    v55 = 0;
    v56 = (v14 + 24);
    while (1)
    {
      if (v2 != *v56)
      {
        mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v74, v79);
        v90 = *v79;
        v91[0] = v55 + *&v79[16];
        v91[1] = *&v79[24];
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v90, v79);
        v88[0] = 0;
        v57 = v78;
        if ((llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::LookupBucketFor<llvm::APInt>(v54, v78, v79, v88) & 1) == 0)
        {
          v58 = v88[0];
          *&v90 = v88[0];
          v59 = v77;
          if (4 * v77 + 4 >= 3 * v57)
          {
            v57 *= 2;
          }

          else if (v57 + ~v77 - HIDWORD(v77) > v57 >> 3)
          {
LABEL_65:
            LODWORD(v77) = v59 + 1;
            v60 = v58[2];
            if (v60)
            {
              --HIDWORD(v77);
              if (v60 >= 0x41 && *v58)
              {
                MEMORY[0x25F891010](*v58, 0x1000C8000313F17);
              }
            }

            else if (*v58 != -1)
            {
              --HIDWORD(v77);
            }

            *v58 = *v79;
            v58[2] = *&v79[8];
            goto LABEL_72;
          }

          llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::grow(v76, v57);
          v54 = *v76;
          llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::LookupBucketFor<llvm::APInt>(*v76, v78, v79, &v90);
          v59 = v77;
          v58 = v90;
          goto LABEL_65;
        }

        if (*&v79[8] >= 0x41u && *v79)
        {
          MEMORY[0x25F891010](*v79, 0x1000C8000313F17);
        }
      }

LABEL_72:
      ++v55;
      v56 += 4;
      if (v19 == v55)
      {
        goto LABEL_18;
      }
    }
  }

  v18 = 8 * v17;
  v19 = 1;
  do
  {
    v20 = *v16++;
    v19 *= v20;
    v18 -= 8;
  }

  while (v18);
  if (v19 >= 1)
  {
    goto LABEL_57;
  }

LABEL_18:
  *&v90 = v91;
  *(&v90 + 1) = 0x600000000;
  v88[0] = v89;
  v88[1] = 0x300000000;
  v86[0] = &v87;
  v86[1] = 0x300000000;
  v22 = *(a1 + 40);
  v21 = *(a1 + 44);
  v23 = a1 + 64 + 16 * ((v21 >> 23) & 1);
  v72 = *(v23 + 8);
  v73 = v72 != 0;
  v24 = ((v23 + ((v21 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (!v22)
  {
    v24 = 32;
  }

  v68 = v24;
  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v72, v79);
  v83 = *v79;
  v84 = *&v79[16];
  v85 = *&v79[32];
  *&v79[8] = *v79;
  *&v79[24] = v84;
  *v79 = 0;
  v25 = v80;
  v26 = v84;
  if (v84 == v80)
  {
    v9 = 0;
    goto LABEL_77;
  }

  v27 = 0;
  v65 = 0;
  v28 = *v76;
  v29 = v78;
  v67 = v78 - 1;
  v66 = *v76 + 16 * v78;
  do
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v79[8], &v81);
    v71 = v82;
    v69 = v27;
    __s1 = v81;
    v33 = v27;
    if (v29)
    {
      v82 = 0;
      v81 = -1;
      v34 = llvm::hash_value(&__s1, v30, v31, v32);
      for (i = 1; ; ++i)
      {
        v36 = v34 & v67;
        v37 = v28 + 16 * (v34 & v67);
        if (v71 == *(v37 + 8))
        {
          if (v71 > 0x40)
          {
            if (!memcmp(__s1, *v37, ((v71 + 63) >> 3) & 0x3FFFFFF8))
            {
              goto LABEL_33;
            }
          }

          else if (__s1 == *v37)
          {
            goto LABEL_33;
          }
        }

        if (llvm::DenseMapInfo<llvm::APInt,void>::isEqual(v28 + 16 * v36, &v81))
        {
          break;
        }

        v34 = v36 + i;
      }

      v37 = 0;
LABEL_33:
      if (v82 >= 0x41 && v81)
      {
        MEMORY[0x25F891010](v81, 0x1000C8000313F17);
      }

      if (v37 && v37 != v66)
      {
        v65 = 1;
        goto LABEL_48;
      }

      v33 = v69;
    }

    llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(&v90, *(v68 + 32 * v33 + 24));
    v38 = *(a1 + 44);
    if ((v38 & 0x800000) != 0)
    {
      v39 = *(a1 + 72);
    }

    else
    {
      v39 = 0;
    }

    v40 = (a1 + 64 + 16 * ((v38 >> 23) & 1));
    v41 = v40[4];
    v42 = v40[5];
    v43 = *(*v40 + 24);
    if (v69)
    {
      LODWORD(v44) = 0;
      v45 = 4 * v69;
      v46 = v43;
      do
      {
        v47 = *v46++;
        v44 = (v47 + v44);
        v45 -= 4;
      }

      while (v45);
    }

    else
    {
      v44 = 0;
    }

    llvm::SmallVectorTemplateBase<mlir::ValueRange,true>::push_back(v88, (v39 + 32 * (v42 + v41) + 32 * v44) & 0xFFFFFFFFFFFFFFF9 | 2, v43[v69]);
    llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(v86, &__s1);
LABEL_48:
    if (v71 >= 0x41 && __s1)
    {
      MEMORY[0x25F891010](__s1, 0x1000C8000313F17);
    }

    ++v27;
    ++v26;
    *v79 = v27;
    *&v79[24] = v26;
  }

  while (v26 != v25);
  if (v65)
  {
    v48 = *(a1 + 47);
    v49 = *(a1 + 72);
    *&v83 = *(v49 + 24);
    v69 = *(((a1 + 8 * v48 + 87) & 0xFFFFFFFFFFFFFFF8) + 24);
    v50 = *(a1 + 96);
    v51 = v49 + 32 * v50;
    v52 = (*(a1 + 100) + v50) - v50;
    *v79 = v51;
    *&v79[8] = v52;
    v53 = mlir::OpBuilder::create<mlir::cf::SwitchOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Block *,mlir::OperandRange,llvm::SmallVector<llvm::APInt,3u> &,llvm::SmallVector<mlir::Block *,6u> &,llvm::SmallVector<mlir::ValueRange,3u> &>(a2 + 8, *(a1 + 24), &v83, &v69, v79, v86, &v90, v88);
    (*(*a2 + 8))(a2, a1, v53);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

LABEL_77:
  llvm::SmallVector<llvm::APInt,3u>::~SmallVector(v86);
  if (v88[0] != v89)
  {
    free(v88[0]);
  }

  if (v90 != v91)
  {
    free(v90);
  }

  v61 = *v76;
  if (v78)
  {
    v62 = (*v76 + 8);
    v63 = 16 * v78;
    do
    {
      if (*v62 >= 0x41u)
      {
        v64 = *(v62 - 1);
        if (v64)
        {
          MEMORY[0x25F891010](v64, 0x1000C8000313F17);
        }
      }

      v62 += 4;
      v63 -= 16;
    }

    while (v63);
  }

  MEMORY[0x25F891030](v61, 8);
LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL mlir::cf::AssertOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v3 = 1;
  }

  else
  {
    a2(&v8, a3);
    if (v8)
    {
      mlir::Diagnostic::operator<<<12ul>(v9, "attribute '");
      if (v8)
      {
        v7 = 261;
        v6[0] = "msg";
        v6[1] = 3;
        mlir::Diagnostic::operator<<(v9, v6);
        if (v8)
        {
          mlir::Diagnostic::operator<<<49ul>(v9, "' failed to satisfy constraint: string attribute");
        }
      }
    }

    v3 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::cf::__mlir_ods_local_type_constraint_ControlFlowOps1(mlir::Operation *a1, _DWORD *a2, unsigned int a3)
{
  v18[25] = *MEMORY[0x277D85DE8];
  v14 = a3;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && a2[2] == 1)
  {
    v4 = 1;
  }

  else
  {
    v13 = 261;
    v12[0] = "operand";
    v12[1] = 7;
    mlir::Operation::emitOpError(a1, v12, &v17);
    if (v17)
    {
      mlir::Diagnostic::operator<<<3ul>(v18, " #");
    }

    v5 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v17, &v14);
    v6 = v5;
    if (*v5)
    {
      mlir::Diagnostic::operator<<<42ul>((v5 + 1), " must be 1-bit signless integer, but got ");
      if (*v6)
      {
        v15 = 4;
        v16 = a2;
        v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v6 + 3), &v15, 1);
        v8 = v6[3] + 24 * *(v6 + 8);
        v9 = *v7;
        *(v8 + 16) = *(v7 + 16);
        *v8 = v9;
        ++*(v6 + 8);
      }
    }

    v4 = (v6[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t mlir::cf::AssertOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v12[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v12);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v14, v5))
  {
    return 0;
  }

  if (v14)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties>(a2);
    *v7 = v14;
  }

  v13 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v12[0] = a1;
  v12[1] = &v13;
  v12[2] = a2;
  if (!mlir::cf::AssertOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::AssertOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v12))
  {
    return 0;
  }

  v9 = (*(*a1 + 32))(a1);
  v10 = mlir::IntegerType::get(*v9, 1, 0);
  return (*(*a1 + 728))(a1, v15, v10, a2 + 16) & 1;
}

BOOL mlir::cf::BranchOp::parse(uint64_t a1, uint64_t a2)
{
  v11[16] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x400000000;
  v8[0] = &v9;
  v8[1] = 0x100000000;
  if (((*(*a1 + 800))() & 1) == 0)
  {
    goto LABEL_11;
  }

  if ((*(*a1 + 288))(a1))
  {
    v4 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, v10, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v8) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
  }

  (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, 0);
    v5 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v10, v8, v4, a2 + 16);
    goto LABEL_12;
  }

LABEL_11:
  v5 = 0;
LABEL_12:
  if (v8[0] != &v9)
  {
    free(v8[0]);
  }

  if (v10[0] != v11)
  {
    free(v10[0]);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::cf::CondBranchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v16, 0, &v16, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a4, 0, a4, a5);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a6, 0, a6, a7);
  v15 = mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(a2);
  *v15 = 1;
  v15[1] = a5;
  v15[2] = a7;
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a8);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a9);
}

BOOL mlir::cf::CondBranchOp::parse(uint64_t a1, uint64_t a2)
{
  v27[16] = *MEMORY[0x277D85DE8];
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v25 = v27;
  v26 = 0x400000000;
  v23[0] = &v24;
  v23[1] = 0x100000000;
  v20 = v22;
  v21 = 0x400000000;
  v18[0] = &v19;
  v18[1] = 0x100000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v16, 1) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 800))(a1, &v15) & 1) == 0)
  {
    goto LABEL_24;
  }

  if ((*(*a1 + 288))(a1))
  {
    v4 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v25, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v23) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 800))(a1, &v14))
  {
    if ((*(*a1 + 288))(a1))
    {
      v5 = (*(*a1 + 40))(a1);
      if (((*(*a1 + 720))(a1, &v20, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v18) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v5 = 0;
    }

    (*(*a1 + 40))(a1);
    if ((*(*a1 + 488))(a1, a2 + 112))
    {
      llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, v15);
      llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, v14);
      v6 = v26;
      v7 = v21;
      v8 = mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(a2);
      *v8 = 1;
      v8[1] = v6;
      v8[2] = v7;
      v9 = (*(*a1 + 32))(a1);
      v10 = mlir::IntegerType::get(*v9, 1, 0);
      if (((*(*a1 + 728))(a1, v16, v10, a2 + 16) & 1) != 0 && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v25, v23, v4, a2 + 16))
      {
        v11 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v20, v18, v5, a2 + 16);
        goto LABEL_25;
      }
    }
  }

LABEL_24:
  v11 = 0;
LABEL_25:
  if (v18[0] != &v19)
  {
    free(v18[0]);
  }

  if (v20 != v22)
  {
    free(v20);
  }

  if (v23[0] != &v24)
  {
    free(v23[0]);
  }

  if (v25 != v27)
  {
    free(v25);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL mlir::cf::SwitchOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps3(v10, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps2(v13, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps3(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1 && *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v3 = a1[1], *(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v3[2] == 32)
  {
    v4 = 1;
  }

  else
  {
    a2(&v9, a3);
    if (v9)
    {
      mlir::Diagnostic::operator<<<12ul>(v10, "attribute '");
      if (v9)
      {
        v8 = 261;
        v7[0] = "case_operand_segments";
        v7[1] = 21;
        mlir::Diagnostic::operator<<(v10, v7);
        if (v9)
        {
          mlir::Diagnostic::operator<<<58ul>(v10, "' failed to satisfy constraint: i32 dense array attribute");
        }
      }
    }

    v4 = (v10[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps2(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1 && !mlir::DenseIntElementsAttr::classof(a1))
  {
    a2(&v10, a3);
    if (v10)
    {
      mlir::Diagnostic::operator<<<12ul>(v11, "attribute '");
      if (v10)
      {
        v9 = 261;
        v8[0] = "case_values";
        v8[1] = 11;
        mlir::Diagnostic::operator<<(v11, v8);
        if (v10)
        {
          mlir::Diagnostic::operator<<<59ul>(v11, "' failed to satisfy constraint: integer elements attribute");
        }
      }
    }

    v5 = (v11[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  }

  else
  {
    v5 = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = 0;
  if ((*(*a1 + 56))(a1, &v15))
  {
    v4 = v15;
    if (v15 && (!(v5 = mlir::DenseIntElementsAttr::classof(v15)) ? (v6 = 0) : (v6 = v4), *a2 = v6, !v5))
    {
      v14[16] = 257;
      (*(*a1 + 16))(&v19, a1, v14);
      if (v19)
      {
        mlir::Diagnostic::operator<<<10ul>(v20, "expected ");
      }

      {
        llvm::getTypeName<mlir::DenseIntElementsAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::DenseIntElementsAttr>();
        *algn_27FC17BF8 = v13;
      }

      if (v19)
      {
        v18 = 261;
        v16 = llvm::getTypeName<mlir::DenseIntElementsAttr>(void)::Name;
        v17 = *algn_27FC17BF8;
        mlir::Diagnostic::operator<<(v20, &v16);
        if (v19)
        {
          mlir::Diagnostic::operator<<<12ul>(v20, ", but got: ");
          if (v19)
          {
            LODWORD(v16) = 0;
            v17 = v15;
            v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v16, 1);
            v9 = v21 + 24 * v22;
            v10 = *v8;
            *(v9 + 16) = *(v8 + 16);
            *v9 = v10;
            ++v22;
          }
        }
      }

      v7 = (v23 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::cf::SwitchOp::parse(char *a1, uint64_t a2)
{
  v67 = *MEMORY[0x277D85DE8];
  memset(v33, 0, sizeof(v33));
  v34 = 0;
  v32[0] = v33;
  v32[1] = 1;
  v30[1] = 1;
  v31 = 0;
  v29 = 0;
  v30[0] = &v31;
  v56 = v58;
  v57 = 0x400000000;
  v54[0] = &v55;
  v54[1] = 0x100000000;
  v51 = v53;
  v52 = 0x200000000;
  v48 = v50;
  v49 = 0x400000000;
  v45 = v47;
  v46 = 0xC00000000;
  v43[0] = &v44;
  v43[1] = 0x100000000;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v33, 1) & 1) == 0)
  {
    goto LABEL_45;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_45;
  }

  v37 = 0;
  if (!mlir::AsmParser::parseType<mlir::IntegerType>(a1, &v37))
  {
    goto LABEL_45;
  }

  v31 = v37;
  if (((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_45;
  }

  v28 = (*(*a1 + 40))(a1);
  v5 = (*(*a1 + 40))(a1);
  v40 = &v42;
  v41 = 0x100000000;
  v37 = &v39;
  v38 = 0x100000000;
  v66[8] = 257;
  if (((*(*a1 + 400))(a1, "default", 7, &v64) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 800))(a1, &v29) & 1) == 0 || ((*(*a1 + 288))(a1) & 1) != 0 && (((*(*a1 + 720))(a1, &v56, 0, 0, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 584))(a1, v54) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0))
  {
LABEL_44:
    llvm::SmallVector<llvm::SmallVector<mlir::Type,6u>,1u>::~SmallVector(&v37);
    llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u>::~SmallVector(&v40);
LABEL_45:
    v12 = 0;
    goto LABEL_46;
  }

  v23 = v5;
  v64 = v66;
  v65 = 0x300000000;
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v31);
  if ((*(*a1 + 128))(a1))
  {
    if (IntOrFloatBitWidth)
    {
      v7 = 0xFFFFFFFFFFFFFFFFLL >> -IntOrFloatBitWidth;
    }

    else
    {
      v7 = 0;
    }

    v24 = v7;
    while (1)
    {
      v36 = 0;
      if ((mlir::AsmParser::parseInteger<long long>(a1, &v36) & 1) == 0)
      {
        break;
      }

      LODWORD(v60) = IntOrFloatBitWidth;
      if (IntOrFloatBitWidth > 0x40)
      {
        llvm::APInt::initSlowCase(&v59);
      }

      v59 = (v36 & v24);
      v8 = llvm::SmallVectorTemplateCommon<llvm::APInt,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::APInt,false>>(&v64, &v59, 1);
      v9 = &v64[2 * v65];
      *(v9 + 2) = *(v8 + 8);
      *v9 = *v8;
      *(v8 + 8) = 0;
      LODWORD(v65) = v65 + 1;
      if (v60 >= 0x41 && v59)
      {
        MEMORY[0x25F891010](v59, 0x1000C8000313F17);
      }

      v35 = 0;
      v62[0] = v63;
      v62[1] = 0x100000000;
      v59 = v61;
      v60 = 0x600000000;
      if (((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 800))(a1, &v35) & 1) == 0 || ((*(*a1 + 288))(a1) & 1) != 0 && (((*(*a1 + 720))(a1, v62, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 584))(a1, &v59) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0))
      {
        if (v59 != v61)
        {
          free(v59);
        }

        if (v62[0] != v63)
        {
          free(v62[0]);
        }

        break;
      }

      llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(&v51, v35);
      llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>>::emplace_back<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>&>(&v40, v62);
      llvm::SmallVectorImpl<llvm::SmallVector<mlir::Type,6u>>::emplace_back<llvm::SmallVector<mlir::Type,6u>&>(&v37, &v59);
      if (v59 != v61)
      {
        free(v59);
      }

      if (v62[0] != v63)
      {
        free(v62[0]);
      }

      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    llvm::SmallVector<llvm::APInt,3u>::~SmallVector(&v64);
    goto LABEL_44;
  }

LABEL_36:
  if (v65)
  {
    v62[0] = v65;
    v10 = mlir::VectorType::get(v62, 1uLL, v31, 0, 0);
    _ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeELPv0EEET_(&v59, v10);
    v11 = mlir::DenseElementsAttr::get(v59, v60, v64, v65);
    llvm::SmallVector<llvm::APInt,3u>::~SmallVector(&v64);
    if (v11)
    {
      *(mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(a2) + 8) = v11;
    }
  }

  else
  {
    llvm::SmallVector<llvm::APInt,3u>::~SmallVector(&v64);
  }

  if (v41)
  {
    v15 = v40;
    v25 = &v40[48 * v41];
    do
    {
      llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::append<mlir::OpAsmParser::UnresolvedOperand const*,void>(&v48, *v15, (*v15 + 32 * *(v15 + 2)));
      llvm::SmallVectorTemplateBase<int,true>::push_back(&v45, *(v15 + 2));
      v15 += 48;
    }

    while (v15 != v25);
  }

  if (v38)
  {
    v16 = v37;
    v26 = &v37[64 * v38];
    do
    {
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v43, *v16, (*v16 + 8 * *(v16 + 2)));
      v16 += 64;
    }

    while (v16 != v26);
  }

  llvm::SmallVector<llvm::SmallVector<mlir::Type,6u>,1u>::~SmallVector(&v37);
  llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u>::~SmallVector(&v40);
  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    goto LABEL_45;
  }

  v64 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_45;
  }

  v17 = *(a2 + 8);
  v37 = a1;
  v38 = &v64;
  v39 = a2;
  if (!mlir::cf::SwitchOp::verifyInherentAttrs(v17, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::SwitchOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v37))
  {
    goto LABEL_45;
  }

  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, v29);
  v18 = v52 ? v51 | 4 : 0;
  llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, v18, 0, v18, v52);
  v19 = v57;
  v27 = v49;
  v20 = mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(a2);
  v20[4] = 1;
  v20[5] = v19;
  v20[6] = v27;
  v21 = (*(*a1 + 32))(a1);
  v22 = mlir::detail::DenseArrayAttrImpl<int>::get(*v21, v45, v46);
  *mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(a2) = v22;
  if (!mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v32, v30, v4, a2 + 16) || !mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v56, v54, v28, a2 + 16))
  {
    goto LABEL_45;
  }

  v12 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v48, v43, v23, a2 + 16);
LABEL_46:
  if (v43[0] != &v44)
  {
    free(v43[0]);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  if (v48 != v50)
  {
    free(v48);
  }

  if (v51 != v53)
  {
    free(v51);
  }

  if (v54[0] != &v55)
  {
    free(v54[0]);
  }

  if (v56 != v58)
  {
    free(v56);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::append<mlir::OpAsmParser::UnresolvedOperand const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - __src) >> 5);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 32);
    LODWORD(v7) = *(a1 + 8);
  }

  if (__src != a3)
  {
    memcpy((*a1 + 32 * v7), __src, v6);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 5);
}

BOOL mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke(llvm::APInt *this)
{
  v1 = this;
  v2 = *(this + 2);
  if (v2 < 0x41)
  {
    return *v1 == 1;
  }

  if (v2 - llvm::APInt::countLeadingZerosSlowCase(this) <= 0x40)
  {
    v1 = *v1;
    return *v1 == 1;
  }

  return 0;
}

uint64_t collapseBranch(uint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = (*a1 + 32);
  if (*(*(*a1 + 40) + 8) != v4)
  {
    return 0;
  }

  v5 = *v4;
  if (*(*(v5 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
  {
    return 0;
  }

  v10 = *(v3 + 48);
  v11 = *(v3 + 56);
  if (v10 != v11)
  {
    v12 = *(v3 + 48);
    do
    {
      v13 = *v12;
      while (1)
      {
        v13 = *v13;
        if (!v13)
        {
          break;
        }

        if (v13[2] != v5)
        {
          return 0;
        }
      }

      ++v12;
    }

    while (v12 != v11);
  }

  v14 = *(v5 + 44);
  v15 = *(((v5 + 16 * ((v14 >> 23) & 1) + ((v14 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24);
  if (v15 == v3)
  {
    return 0;
  }

  if ((v14 & 0x800000) != 0)
  {
    v16 = *(v5 + 72);
    v17 = *(v5 + 68);
    if (v10 != v11)
    {
      if (v17)
      {
        v18 = (v16 + 24);
        do
        {
          v19 = *v18;
          if ((~*(*v18 + 8) & 7) != 0)
          {
            v20 = 0;
          }

          else
          {
            v20 = *v18;
          }

          if (v20)
          {
            if (*(v20 + 16) == *a1)
            {
              v19 = mlir::ValueRange::dereference_iterator(a2, *(v20 + 24));
            }
          }

          llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a3, v19);
          v18 += 4;
          --v17;
        }

        while (v17);
      }

      goto LABEL_23;
    }

LABEL_26:
    *a1 = v15;
    v21 = v16 & 0xFFFFFFFFFFFFFFF9 | 2;
    goto LABEL_27;
  }

  if (v10 == v11)
  {
    v17 = 0;
    v16 = 0;
    goto LABEL_26;
  }

LABEL_23:
  *a1 = v15;
  v17 = *(a3 + 8);
  v21 = *a3 & 0xFFFFFFFFFFFFFFF9;
LABEL_27:
  *a2 = v21;
  a2[1] = v17;
  return 1;
}

char *mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,mlir::ValueRange &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::cf::BranchOp>(a1, *(**a2 + 32));
  v16[0] = a2;
  v16[1] = v8;
  v17[0] = v18;
  v17[1] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v21[0] = v22;
  v21[1] = 0x100000000;
  v22[1] = v23;
  v22[2] = 0x100000000;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v23[4] = 0;
  v23[6] = 0;
  v9 = *a3;
  v11 = *a4;
  v10 = a4[1];
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(v21, v9);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v17, v11, 0, v11, v10);
  v12 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v12);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t **_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeELPv0EEET_(uint64_t **a1, uint64_t *a2)
{
  *a1 = a2;
  if (a2)
  {
    v3 = *a2;
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v5 = mlir::detail::InterfaceMap::lookup(v3 + 8, v4);
  }

  else
  {
    v5 = 0;
  }

  a1[1] = v5;
  return a1;
}

char *mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::cf::BranchOp>(a1, *(**a2 + 32));
  v16[0] = a2;
  v16[1] = v8;
  v17[0] = v18;
  v17[1] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v21[0] = v22;
  v21[1] = 0x100000000;
  v22[1] = v23;
  v22[2] = 0x100000000;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v23[4] = 0;
  v23[6] = 0;
  v9 = *a4;
  v10 = a4[1];
  v11 = v9 & 0xFFFFFFFFFFFFFFF9;
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(v21, *a3);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v17, v11 | 2, 0, v11 | 2, v10);
  v12 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v12);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

unint64_t llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(uint64_t a1, unint64_t a2)
{
  result = llvm::SmallVectorTemplateCommon<llvm::APInt,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::APInt,false>>(a1, a2, 1);
  v4 = *a1 + 16 * *(a1 + 8);
  v5 = *(result + 8);
  *(v4 + 8) = v5;
  if (v5 > 0x40)
  {
    operator new[]();
  }

  *v4 = *result;
  ++*(a1 + 8);
  return result;
}

unint64_t llvm::SmallVectorTemplateCommon<llvm::APInt,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::APInt,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + 16 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(a1, v5);
    }
  }

  return a2;
}

void llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 16, &v6);
  llvm::SmallVectorTemplateBase<llvm::APInt,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

uint64_t llvm::SmallVectorTemplateBase<llvm::APInt,false>::moveElementsForGrow(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = (a2 + 8);
    v5 = 16 * v3;
    v6 = (v2 + 8);
    do
    {
      *v4 = *v6;
      *(v4 - 1) = *(v6 - 1);
      *v6 = 0;
      v6 += 4;
      v4 += 4;
      v5 -= 16;
    }

    while (v5);
    v2 = *a1;
    v7 = *(a1 + 8);
  }

  else
  {
    v7 = 0;
  }

  return llvm::SmallVectorTemplateBase<llvm::APInt,false>::destroy_range(v2, (v2 + 16 * v7));
}

uint64_t llvm::SmallVectorTemplateBase<llvm::APInt,false>::destroy_range(uint64_t result, void *a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = *(v2 - 2);
      v2 -= 2;
      if (v4 >= 0x41)
      {
        result = *v2;
        if (*v2)
        {
          result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
        }
      }
    }

    while (v2 != v3);
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::cf::SwitchOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Block *,mlir::OperandRange,llvm::SmallVector<llvm::APInt,3u> &,llvm::SmallVector<mlir::Block *,6u> &,llvm::SmallVector<mlir::ValueRange,3u> &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v15 = a1;
  v54[8] = *MEMORY[0x277D85DE8];
  v16 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::cf::SwitchOp>(a1, *(**a2 + 32));
  v49[0] = a2;
  v49[1] = v16;
  v49[2] = v50;
  v49[3] = 0x400000000;
  v50[4] = v51;
  v50[5] = 0x400000000;
  v51[4] = v52;
  v51[5] = 0x400000000;
  v52[8] = 4;
  v52[9] = v53;
  v52[10] = 0x100000000;
  v53[1] = v54;
  v53[2] = 0x100000000;
  v54[1] = 0;
  v54[2] = 0;
  v54[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v54[4] = 0;
  v54[6] = 0;
  v17 = *a3;
  v18 = *a4;
  v20 = *a5;
  v19 = a5[1];
  v21 = *(a6 + 8);
  v22 = *a7;
  v23 = *(a7 + 2);
  v24 = *a8;
  v25 = *(a8 + 8);
  if (v21)
  {
    v46 = v18;
    v47 = v19;
    v26 = *a6;
    v48 = v21;
    v27 = mlir::VectorType::get(&v48, 1uLL, *(v17 + 8) & 0xFFFFFFFFFFFFFFF8, 0, 0);
    v28 = v27;
    if (v27)
    {
      v45 = v15;
      v29 = v17;
      v30 = v22;
      v31 = v20;
      v32 = v25;
      v33 = v24;
      v34 = v26;
      v35 = *v27;
      v36 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v37 = v35 + 8;
      v26 = v34;
      v24 = v33;
      v25 = v32;
      v20 = v31;
      v22 = v30;
      v17 = v29;
      v15 = v45;
      v38 = mlir::detail::InterfaceMap::lookup(v37, v36);
    }

    else
    {
      v38 = 0;
    }

    v39 = mlir::DenseElementsAttr::get(v28, v38, v26, v21);
    v18 = v46;
    v19 = v47;
  }

  else
  {
    v39 = 0;
  }

  v40 = v22 | 4;
  if (!v23)
  {
    v40 = 0;
  }

  mlir::cf::SwitchOp::build(v15, v49, v17, v20 & 0xFFFFFFFFFFFFFFF9 | 2, v19, v24, v25, v39, v18, v40, v23);
  v41 = mlir::Operation::create(v49);
  mlir::OpBuilder::insert(v15, v41);
  if (*(*(v41 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::SwitchOp,void>::id)
  {
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  mlir::OperationState::~OperationState(v49);
  v43 = *MEMORY[0x277D85DE8];
  return v42;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::cf::SwitchOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::cf::SwitchOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "cf.switch";
    v6[3] = 9;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t llvm::SmallVector<llvm::APInt,3u>::~SmallVector(uint64_t a1)
{
  llvm::SmallVectorTemplateBase<llvm::APInt,false>::destroy_range(*a1, (*a1 + 16 * *(a1 + 8)));
  if (*a1 != a1 + 16)
  {
    free(*a1);
  }

  return a1;
}

uint64_t foldSwitch(uint64_t a1, uint64_t a2, const void **a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a1 + 64;
  v6 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 8) != 0;
  v35 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
  v36 = v6;
  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v35, v37);
  v41 = *v37;
  v42 = *&v37[16];
  v43 = *&v37[32];
  *&v37[8] = *v37;
  *&v37[24] = v42;
  *v37 = 0;
  v7 = v38 - v42;
  if (v38 != v42)
  {
    v8 = 0;
    v9 = v42 + 1;
    v10 = 24;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v37[8], &__s1);
      v11 = v40;
      v12 = __s1;
      if (v40 > 0x40)
      {
        if (!memcmp(__s1, *a3, ((v40 + 63) >> 3) & 0x3FFFFFF8))
        {
LABEL_14:
          v21 = *(a1 + 44);
          v22 = (v5 + 16 * ((v21 >> 23) & 1));
          if (*(a1 + 40))
          {
            v23 = ((v22 + ((v21 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
          }

          else
          {
            v23 = 32;
          }

          v34 = *(v23 + v10);
          if ((v21 & 0x800000) != 0)
          {
            v24 = *(a1 + 72);
          }

          else
          {
            v24 = 0;
          }

          v25 = v24 + 32 * (v22[5] + v22[4]);
          v26 = *(*v22 + 24);
          if (v8)
          {
            LODWORD(v27) = 0;
            v28 = 4 * v8;
            v29 = v26;
            do
            {
              v30 = *v29++;
              v27 = (v30 + v27);
              v28 -= 4;
            }

            while (v28);
          }

          else
          {
            v27 = 0;
          }

          v31 = v26[v8];
          __s1 = (v25 + 32 * v27);
          v40 = v31;
          v32 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>((a2 + 8), *(a1 + 24), &v34, &__s1);
          result = (*(*a2 + 8))(a2, a1, v32);
          if (v11 >= 0x41 && v12)
          {
            result = MEMORY[0x25F891010](v12, 0x1000C8000313F17);
          }

          goto LABEL_13;
        }

        if (v12)
        {
          MEMORY[0x25F891010](v12, 0x1000C8000313F17);
        }
      }

      else if (__s1 == *a3)
      {
        goto LABEL_14;
      }

      *&v37[24] = v9 + v8;
      v10 += 32;
      *v37 = ++v8;
    }

    while (v7 != v8);
  }

  v13 = *(a1 + 44);
  v14 = v5 + 16 * ((v13 >> 23) & 1);
  *&v41 = *(((v14 + ((v13 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
  v15 = *(v14 + 16);
  v16 = *(v14 + 20);
  if ((v13 & 0x800000) != 0)
  {
    v17 = *(a1 + 72);
  }

  else
  {
    v17 = 0;
  }

  *v37 = v17 + 32 * v15;
  *&v37[8] = (v16 + v15) - v15;
  v18 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>((a2 + 8), *(a1 + 24), &v41, v37);
  result = (*(*a2 + 8))(a2, a1, v18);
LABEL_13:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,6u>>::emplace_back<>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>::growAndEmplaceBack<>(a1);
  }

  v2 = (*a1 + (v1 << 6));
  *v2 = v2 + 2;
  v2[1] = 0x600000000;
  ++*(a1 + 8);
  return a1;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 64, &v6);
  llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>::moveElementsForGrow(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = *a1;
    v6 = v2 << 6;
    do
    {
      *a2 = a2 + 2;
      a2[1] = 0x600000000;
      if (*(v5 + 8))
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=(a2, v5);
      }

      a2 += 8;
      v5 += 64;
      v6 -= 64;
    }

    while (v6);
    v7 = *(a1 + 8);
    if (v7)
    {
      v8 = (*a1 + (v7 << 6) - 64);
      v9 = -64 * v7;
      do
      {
        if (v8 + 2 != *v8)
        {
          free(*v8);
        }

        v8 -= 8;
        v9 += 64;
      }

      while (v9);
    }
  }
}

uint64_t llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>::growAndEmplaceBack<>(uint64_t a1)
{
  v8 = 0;
  v2 = a1 + 16;
  v3 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 64, &v8);
  v4 = &v3[8 * *(a1 + 8)];
  *v4 = v4 + 2;
  v4[1] = 0x600000000;
  llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>::moveElementsForGrow(a1, v3);
  v5 = v8;
  if (*a1 != v2)
  {
    free(*a1);
  }

  *a1 = v3;
  v6 = (*(a1 + 8) + 1);
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  return &v3[8 * v6 - 8];
}

char **llvm::SmallVector<llvm::SmallVector<mlir::Value,6u>,1u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[64 * v3 - 64];
    v5 = -64 * v3;
    do
    {
      if (v4 + 2 != *v4)
      {
        free(*v4);
      }

      v4 -= 8;
      v5 += 64;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::LookupBucketFor<llvm::APInt>(uint64_t a1, const llvm::APInt *a2, llvm::hashing::detail::hash_state **this, unint64_t *a4)
{
  if (a2)
  {
    v6 = a2;
    v20 = 0;
    v19 = -1;
    v18 = 0;
    v17 = -2;
    v8 = llvm::hash_value(this, a2, this, a4);
    v9 = 0;
    v10 = v6 - 1;
    for (i = 1; ; ++i)
    {
      v12 = v8 & v10;
      v13 = a1 + 16 * (v8 & v10);
      v14 = *(this + 2);
      if (v14 == *(v13 + 8))
      {
        if (v14 > 0x40)
        {
          if (!memcmp(*this, *v13, ((v14 + 63) >> 3) & 0x3FFFFFF8))
          {
LABEL_12:
            v15 = 1;
            goto LABEL_13;
          }
        }

        else if (*this == *v13)
        {
          goto LABEL_12;
        }
      }

      if (llvm::DenseMapInfo<llvm::APInt,void>::isEqual(a1 + 16 * v12, &v19))
      {
        break;
      }

      if (llvm::DenseMapInfo<llvm::APInt,void>::isEqual(a1 + 16 * v12, &v17) && v9 == 0)
      {
        v9 = a1 + 16 * v12;
      }

      v8 = v12 + i;
    }

    v15 = 0;
    if (v9)
    {
      v13 = v9;
    }

LABEL_13:
    *a4 = v13;
    if (v18 >= 0x41 && v17)
    {
      MEMORY[0x25F891010](v17, 0x1000C8000313F17);
    }

    if (v20 >= 0x41 && v19)
    {
      MEMORY[0x25F891010](v19, 0x1000C8000313F17);
    }
  }

  else
  {
    v15 = 0;
    *a4 = 0;
  }

  return v15;
}

BOOL llvm::DenseMapInfo<llvm::APInt,void>::isEqual(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  if (v2 > 0x40)
  {
    return memcmp(*a1, *a2, ((v2 + 63) >> 3) & 0x3FFFFFF8) == 0;
  }

  return *a1 == *a2;
}

char *llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 16 * v10;
      v12 = result + 8;
      do
      {
        *v12 = 0;
        *(v12 - 1) = -1;
        v12 += 4;
        v11 -= 16;
      }

      while (v11);
    }

    if (v3)
    {
      v13 = 16 * v3;
      v14 = v4;
      do
      {
        if (*(v14 + 2) || *v14 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v18 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::LookupBucketFor<llvm::APInt>(*a1, *(a1 + 16), v14, &v18);
          llvm::APInt::operator=(v18, v14);
          ++*(a1 + 8);
          if (*(v14 + 2) >= 0x41u)
          {
            if (*v14)
            {
              MEMORY[0x25F891010](*v14, 0x1000C8000313F17);
            }
          }
        }

        v14 += 2;
        v13 -= 16;
      }

      while (v13);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = 16 * v15;
    v17 = result + 8;
    do
    {
      *v17 = 0;
      *(v17 - 1) = -1;
      v17 += 4;
      v16 -= 16;
    }

    while (v16);
  }

  return result;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>>::emplace_back<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::growAndEmplaceBack<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>&>(a1, a2);
  }

  else
  {
    v4 = (*a1 + 48 * v3);
    *v4 = v4 + 2;
    v4[1] = 0x100000000;
    if (*(a2 + 8))
    {
      llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::operator=(v4, a2);
    }

    v5 = *(a1 + 8) + 1;
    *(a1 + 8) = v5;
    return *a1 + 48 * v5 - 48;
  }
}

uint64_t llvm::SmallVectorImpl<llvm::SmallVector<mlir::Type,6u>>::emplace_back<llvm::SmallVector<mlir::Type,6u>&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Type,6u>,false>::growAndEmplaceBack<llvm::SmallVector<mlir::Type,6u>&>(a1, a2);
  }

  else
  {
    v4 = (*a1 + (v3 << 6));
    *v4 = v4 + 2;
    v4[1] = 0x600000000;
    if (*(a2 + 8))
    {
      llvm::SmallVectorImpl<mlir::Type>::operator=(v4, a2);
    }

    v5 = (*(a1 + 8) + 1);
    *(a1 + 8) = v5;
    return *a1 + (v5 << 6) - 64;
  }
}

uint64_t llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::growAndEmplaceBack<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>&>(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v4 = a1 + 16;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 48, &v10);
  v6 = &v5[6 * *(a1 + 8)];
  *v6 = v6 + 2;
  v6[1] = 0x100000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::operator=(v6, a2);
  }

  llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::moveElementsForGrow(a1, v5);
  v7 = v10;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  v8 = *(a1 + 8) + 1;
  *(a1 + 8) = v8;
  *(a1 + 12) = v7;
  return &v5[6 * v8 - 6];
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::moveElementsForGrow(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = *a1;
    v6 = 48 * v2;
    do
    {
      *a2 = a2 + 2;
      a2[1] = 0x100000000;
      if (*(v5 + 8))
      {
        llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::operator=(a2, v5);
      }

      a2 += 6;
      v5 += 48;
      v6 -= 48;
    }

    while (v6);
    v7 = *(a1 + 8);
    if (v7)
    {
      v8 = (*a1 + 48 * v7 - 48);
      v9 = -48 * v7;
      do
      {
        if (v8 + 2 != *v8)
        {
          free(*v8);
        }

        v8 -= 6;
        v9 += 48;
      }

      while (v9);
    }
  }
}

uint64_t llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 32 * v6 - 4);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 32 * v7 - 4);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 32);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 32 * v7), (*a2 + 32 * v7), 32 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 32 * v4 - 4);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        memmove(*a1, *a2, 32 * v5 - 4);
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4, 32);
    }

    v5 = 0;
LABEL_10:
    v6 = *(a2 + 8) - v5;
    if (v6)
    {
      memcpy((*a1 + 32 * v5), (*a2 + 32 * v5), 32 * v6);
    }

LABEL_12:
    *(a1 + 8) = v4;
  }

  return a1;
}

double llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

uint64_t llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Type,6u>,false>::growAndEmplaceBack<llvm::SmallVector<mlir::Type,6u>&>(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v4 = a1 + 16;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 64, &v10);
  v6 = &v5[8 * *(a1 + 8)];
  *v6 = v6 + 2;
  v6[1] = 0x600000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<mlir::Type>::operator=(v6, a2);
  }

  llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Type,6u>,false>::moveElementsForGrow(a1, v5);
  v7 = v10;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  v8 = (*(a1 + 8) + 1);
  *(a1 + 8) = v8;
  *(a1 + 12) = v7;
  return &v5[8 * v8 - 8];
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Type,6u>,false>::moveElementsForGrow(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = *a1;
    v6 = v2 << 6;
    do
    {
      *a2 = a2 + 2;
      a2[1] = 0x600000000;
      if (*(v5 + 8))
      {
        llvm::SmallVectorImpl<mlir::Type>::operator=(a2, v5);
      }

      a2 += 8;
      v5 += 64;
      v6 -= 64;
    }

    while (v6);
    v7 = *(a1 + 8);
    if (v7)
    {
      v8 = (*a1 + (v7 << 6) - 64);
      v9 = -64 * v7;
      do
      {
        if (v8 + 2 != *v8)
        {
          free(*v8);
        }

        v8 -= 8;
        v9 += 64;
      }

      while (v9);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 29549 ? (v4 = *(a3 + 2) == 103) : (v4 = 0), v4))
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

void mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 3)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 2);
    if (v5 == 29549 && v6 == 103)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

void mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "msg";
    v7[1] = 3;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "msg", 3uLL);
    if (v11)
    {
      v12 = *(v10 + 8);
      if (v12)
      {
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
    v11[0] = "msg";
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

unint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[7] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[6] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 6);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v17[4] = *MEMORY[0x277D85DE8];
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

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, ",", 1uLL);
  }

  else
  {
    *v10 = 44;
    ++*(v9 + 4);
  }

  v11 = (*(*a3 + 16))(a3);
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

  (*(*a3 + 48))(a3, *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64));
  v15 = v17;
  v16 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v15, "msg", 3);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v15, v16);
  if (v15 != v17)
  {
    free(v15);
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  if (!v6)
  {
    v10 = "requires attribute 'msg'";
    v11 = 259;
    mlir::Operation::emitOpError(a1, &v10, v12);
    v7 = v13 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    goto LABEL_9;
  }

  v12[0] = a1;
  if (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v12))
  {
    v7 = mlir::cf::__mlir_ods_local_type_constraint_ControlFlowOps1(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0);
  }

  else
  {
LABEL_8:
    v7 = 0;
  }

LABEL_9:
  v8 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

double mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::BranchOp>::getSuccessorOperands@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v2 = *(a1 + 68);
  }

  else
  {
    v2 = 0;
  }

  *a2 = 0;
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  *(a2 + 20) = v2;
  *(a2 + 24) = a2 + 40;
  *&result = 0x100000000;
  *(a2 + 32) = 0x100000000;
  return result;
}

unint64_t mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::BranchOp>::getSuccessorBlockArgument(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v3 = a2[10];
  if (v3)
  {
    v6 = a2 + 16;
    v7 = 24;
    while (1)
    {
      v8 = a2[11];
      v9 = (v8 & 0x800000) != 0 ? a2[17] : 0;
      v16 = 0;
      v17 = a2;
      v18 = 0;
      v19 = v9;
      v20 = v22;
      v21 = 0x100000000;
      BranchSuccessorArgument = mlir::detail::getBranchSuccessorArgument(&v16, a3, *(((&v6[4 * ((v8 >> 23) & 1) + 1] + ((v8 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + v7));
      v12 = v11;
      if (v20 != v22)
      {
        free(v20);
      }

      if (v12)
      {
        break;
      }

      v7 += 32;
      if (!--v3)
      {
        v14 = 0;
        goto LABEL_13;
      }
    }

    v14 = BranchSuccessorArgument;
LABEL_13:
    result = v14 | BranchSuccessorArgument & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
    result = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[10] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneSuccessor<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneSuccessor>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[9] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

__guard mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[300];
}

uint64_t llvm::getTypeName<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>>();
    *algn_27FC19978 = v1;
  }

  return llvm::getTypeName<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::BranchOpInterface::Trait<Empty>]";
  v6 = 99;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v36[4] = *MEMORY[0x277D85DE8];
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

  (*(*a3 + 176))(a3, *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24));
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68))
  {
    v9 = (*(*a3 + 16))(a3);
    v10 = *(v9 + 4);
    if (*(v9 + 3) == v10)
    {
      llvm::raw_ostream::write(v9, "(", 1uLL);
    }

    else
    {
      *v10 = 40;
      ++*(v9 + 4);
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v11 = *(a2 + 68);
      v12 = *(a2 + 72);
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    v13 = (*(*a3 + 16))(a3);
    if (v11)
    {
      v14 = v13;
      (*(*a3 + 160))(a3, *(v12 + 24));
      v15 = v11 - 1;
      if (v15)
      {
        v16 = (v12 + 56);
        do
        {
          v17 = *(v14 + 4);
          if (*(v14 + 3) - v17 > 1uLL)
          {
            *v17 = 8236;
            *(v14 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v14, ", ", 2uLL);
          }

          v18 = *v16;
          v16 += 4;
          (*(*a3 + 160))(a3, v18);
          --v15;
        }

        while (v15);
      }
    }

    v19 = (*(*a3 + 16))(a3);
    v20 = *(v19 + 4);
    if (v20 >= *(v19 + 3))
    {
      llvm::raw_ostream::write(v19, 32);
    }

    else
    {
      *(v19 + 4) = v20 + 1;
      *v20 = 32;
    }

    v21 = (*(*a3 + 16))(a3);
    v22 = *(v21 + 4);
    if (*(v21 + 3) == v22)
    {
      llvm::raw_ostream::write(v21, ":", 1uLL);
    }

    else
    {
      *v22 = 58;
      ++*(v21 + 4);
    }

    v23 = (*(*a3 + 16))(a3);
    v24 = *(v23 + 4);
    if (v24 >= *(v23 + 3))
    {
      llvm::raw_ostream::write(v23, 32);
    }

    else
    {
      *(v23 + 4) = v24 + 1;
      *v24 = 32;
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v25 = *(a2 + 68);
      if (v25)
      {
        v26 = *(a2 + 72);
        (*(*a3 + 32))(a3, *(*(v26 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v25 != 1)
        {
          v27 = v25 - 1;
          v28 = (v26 + 56);
          do
          {
            v29 = (*(*a3 + 16))(a3);
            v30 = *(v29 + 4);
            if (*(v29 + 3) - v30 > 1uLL)
            {
              *v30 = 8236;
              *(v29 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v29, ", ", 2uLL);
            }

            v31 = *v28;
            v28 += 4;
            (*(*a3 + 32))(a3, *(v31 + 8) & 0xFFFFFFFFFFFFFFF8);
            --v27;
          }

          while (v27);
        }
      }
    }

    v32 = (*(*a3 + 16))(a3);
    v33 = *(v32 + 4);
    if (*(v32 + 3) == v33)
    {
      llvm::raw_ostream::write(v32, ")", 1uLL);
    }

    else
    {
      *v33 = 41;
      ++*(v32 + 4);
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v36, 0);
  v35 = *MEMORY[0x277D85DE8];
}

BOOL mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v19[3] = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyZeroResults(a1, v3) && mlir::OpTrait::impl::verifyOneSuccessor(a1, v4))
  {
    v6 = *(a1 + 40);
    if (!v6)
    {
LABEL_16:
      IsTerminator = mlir::OpTrait::impl::verifyIsTerminator(a1, v5);
      goto LABEL_15;
    }

    v7 = 0;
    while (1)
    {
      v8 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
      v13 = 0;
      v14 = a1;
      v15 = 0;
      v16 = v8;
      v17 = v19;
      v18 = 0x100000000;
      v9 = mlir::detail::verifyBranchSuccessorOperands(a1, v7, &v13);
      if (v17 != v19)
      {
        free(v17);
      }

      if ((v9 & 1) == 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_16;
      }
    }
  }

  IsTerminator = 0;
LABEL_15:
  v11 = *MEMORY[0x277D85DE8];
  return IsTerminator;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4 == 19)
  {
    v4 = *(a3 + 11);
    v5 = *a3 == 0x53646E617265706FLL && a3[1] == 0x6953746E656D6765;
    v6 = 1400139365;
  }

  else
  {
    if (a4 != 21)
    {
      goto LABEL_15;
    }

    v4 = *(a3 + 13);
    v5 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
    v6 = 1935635566;
  }

  v7 = v6 | 0x73657A6900000000;
  if (v5 && v4 == v7)
  {
    v11 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64, 3);
    v10 = v11 & 0xFFFFFFFFFFFFFF00;
    v9 = v11;
    return v10 | v9;
  }

LABEL_15:
  v9 = 0;
  v10 = 0;
  return v10 | v9;
}

void *mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  if (v5 == 19)
  {
    v6 = *v4 ^ 0x53646E617265706FLL;
    v7 = v4[1] ^ 0x6953746E656D6765;
    v8 = *(v4 + 11);
    v9 = 1400139365;
  }

  else
  {
    if (v5 != 21)
    {
      return result;
    }

    v6 = *v4 ^ 0x5F646E617265706FLL;
    v7 = v4[1] ^ 0x5F746E656D676573;
    v8 = *(v4 + 13);
    v9 = 1935635566;
  }

  if (v6 | v7 | v8 ^ (v9 | 0x73657A6900000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = a4 == 0;
  }

  if (!v10 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v11 = *(a4 + 8);
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v11[2] == 32 && *(a4 + 16) == 3)
    {
      v12 = *(a4 + 32);
      if (v12 >= 4)
      {
        return memmove((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64), *(a4 + 24), v12 & 0xFFFFFFFFFFFFFFFCLL);
      }
    }
  }

  return result;
}