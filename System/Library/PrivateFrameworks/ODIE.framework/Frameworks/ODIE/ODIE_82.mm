uint64_t llvm::getTypeName<mlir::LLVM::detail::SDivOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21298, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21298))
  {
    qword_27FC21288 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::SDivOpGenericAdaptorBase::Properties>();
    unk_27FC21290 = v1;
    __cxa_guard_release(&qword_27FC21298);
  }

  return qword_27FC21288;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::SDivOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::SDivOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::SDivOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::SelectOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::SelectOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::SelectOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC212C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC212C0))
  {
    qword_27FC212B0 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::SelectOpGenericAdaptorBase::Properties>();
    *algn_27FC212B8 = v1;
    __cxa_guard_release(&qword_27FC212C0);
  }

  return qword_27FC212B0;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::SelectOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::SelectOpGenericAdaptorBase::Properties]";
  v6 = 120;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::SelectOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*,mlir::Type const*>::increment<0ul,1ul,2ul>(uint64_t a1)
{
  v2 = 0;
  v9[6] = *MEMORY[0x277D85DE8];
  v9[1] = 0;
  v9[3] = 0;
  v9[0] = llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*,mlir::Type const*>::incrementHelper<0ul>;
  v9[2] = llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*,mlir::Type const*>::incrementHelper<1ul>;
  v9[4] = llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*,mlir::Type const*>::incrementHelper<2ul>;
  v9[5] = 0;
  do
  {
    v3 = v9[v2];
    v4 = v9[v2 + 1];
    v5 = (a1 + (v4 >> 1));
    if (v4)
    {
      v3 = *(*v5 + v3);
    }

    result = v3(v5);
    if (result)
    {
      break;
    }

    v7 = v2 == 4;
    v2 += 2;
  }

  while (!v7);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*,mlir::Type const*>::incrementHelper<0ul>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[3];
  if (*a1 != v2)
  {
    *a1 = v1 + 8;
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*,mlir::Type const*>::incrementHelper<1ul>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 32);
  if (v1 != v2)
  {
    *(a1 + 8) = v1 + 8;
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*,mlir::Type const*>::incrementHelper<2ul>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 40);
  if (v1 != v2)
  {
    *(a1 + 16) = v1 + 8;
  }

  return v1 != v2;
}

uint64_t llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*,mlir::Type const*>::getHelper<0ul>(void *a1)
{
  if (*a1 == a1[3])
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*,mlir::Type const*>::getHelper<1ul>(uint64_t a1)
{
  if (*(a1 + 8) == *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*,mlir::Type const*>::getHelper<2ul>(uint64_t a1)
{
  if (*(a1 + 16) == *(a1 + 40))
  {
    return 0;
  }

  else
  {
    return *(a1 + 16);
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::ShlOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ShlOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::ShlOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC212E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC212E8))
  {
    qword_27FC212D8 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::ShlOpGenericAdaptorBase::Properties>();
    unk_27FC212E0 = v1;
    __cxa_guard_release(&qword_27FC212E8);
  }

  return qword_27FC212D8;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::ShlOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::ShlOpGenericAdaptorBase::Properties]";
  v6 = 117;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::ShuffleVectorOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ShuffleVectorOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::ShuffleVectorOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21310, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21310))
  {
    qword_27FC21300 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::ShuffleVectorOpGenericAdaptorBase::Properties>();
    *algn_27FC21308 = v1;
    __cxa_guard_release(&qword_27FC21310);
  }

  return qword_27FC21300;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::ShuffleVectorOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::ShuffleVectorOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::ShuffleVectorOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  result = *(a3 + 16);
  v4 = *(a3 + 32);
  v5 = *(a3 + 64);
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 64) = v5;
  *(a2 + 16) = result;
  *(a2 + 32) = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21338, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21338))
  {
    qword_27FC21328 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>();
    unk_27FC21330 = v1;
    __cxa_guard_release(&qword_27FC21338);
  }

  return qword_27FC21328;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties]";
  v6 = 119;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::StoreOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::SubOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::SubOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::SubOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21360, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21360))
  {
    qword_27FC21350 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::SubOpGenericAdaptorBase::Properties>();
    *algn_27FC21358 = v1;
    __cxa_guard_release(&qword_27FC21360);
  }

  return qword_27FC21350;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::SubOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::SubOpGenericAdaptorBase::Properties]";
  v6 = 117;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::SwitchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::SwitchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::SwitchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::SwitchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::SwitchOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21388, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21388))
  {
    qword_27FC21378 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::SwitchOpGenericAdaptorBase::Properties>();
    unk_27FC21380 = v1;
    __cxa_guard_release(&qword_27FC21388);
  }

  return qword_27FC21378;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::SwitchOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::SwitchOpGenericAdaptorBase::Properties]";
  v6 = 120;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::SwitchOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::TruncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::TruncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::TruncOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC213B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC213B0))
  {
    qword_27FC213A0 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::TruncOpGenericAdaptorBase::Properties>();
    *algn_27FC213A8 = v1;
    __cxa_guard_release(&qword_27FC213B0);
  }

  return qword_27FC213A0;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::TruncOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::TruncOpGenericAdaptorBase::Properties]";
  v6 = 119;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::UDivOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::UDivOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::UDivOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC213D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC213D8))
  {
    qword_27FC213C8 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::UDivOpGenericAdaptorBase::Properties>();
    unk_27FC213D0 = v1;
    __cxa_guard_release(&qword_27FC213D8);
  }

  return qword_27FC213C8;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::UDivOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::UDivOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::UDivOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::UIToFPOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::UIToFPOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::UIToFPOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21400))
  {
    qword_27FC213F0 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::UIToFPOpGenericAdaptorBase::Properties>();
    *algn_27FC213F8 = v1;
    __cxa_guard_release(&qword_27FC21400);
  }

  return qword_27FC213F0;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::UIToFPOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::UIToFPOpGenericAdaptorBase::Properties]";
  v6 = 120;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::UIToFPOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::ZExtOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ZExtOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::ZExtOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21428, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21428))
  {
    qword_27FC21418 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::ZExtOpGenericAdaptorBase::Properties>();
    unk_27FC21420 = v1;
    __cxa_guard_release(&qword_27FC21428);
  }

  return qword_27FC21418;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::ZExtOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::ZExtOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::ZExtOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::AbsOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AbsOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::AbsOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21450))
  {
    qword_27FC21440 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::AbsOpGenericAdaptorBase::Properties>();
    *algn_27FC21448 = v1;
    __cxa_guard_release(&qword_27FC21450);
  }

  return qword_27FC21440;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::AbsOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::AbsOpGenericAdaptorBase::Properties]";
  v6 = 117;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::AssumeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AssumeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::AssumeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AssumeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::AssumeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21478, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21478))
  {
    qword_27FC21468 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::AssumeOpGenericAdaptorBase::Properties>();
    unk_27FC21470 = v1;
    __cxa_guard_release(&qword_27FC21478);
  }

  return qword_27FC21468;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::AssumeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::AssumeOpGenericAdaptorBase::Properties]";
  v6 = 120;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::AssumeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_1>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::ConstrainedFPTruncIntrGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ConstrainedFPTruncIntrGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::ConstrainedFPTruncIntrGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ConstrainedFPTruncIntrGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::ConstrainedFPTruncIntrGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC214A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC214A0))
  {
    qword_27FC21490 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::ConstrainedFPTruncIntrGenericAdaptorBase::Properties>();
    *algn_27FC21498 = v1;
    __cxa_guard_release(&qword_27FC214A0);
  }

  return qword_27FC21490;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::ConstrainedFPTruncIntrGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::ConstrainedFPTruncIntrGenericAdaptorBase::Properties]";
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

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::FPExceptionBehaviorAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::FPExceptionBehaviorAttr]";
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

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::RoundingModeAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::RoundingModeAttr]";
  v6 = 90;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::ConstrainedFPTruncIntr::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::CopySignOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::CopySignOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::CopySignOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC214F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC214F8))
  {
    qword_27FC214E8 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::CopySignOpGenericAdaptorBase::Properties>();
    unk_27FC214F0 = v1;
    __cxa_guard_release(&qword_27FC214F8);
  }

  return qword_27FC214E8;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::CopySignOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::CopySignOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::CopySignOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t llvm::range_size<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &> &>(uint64_t **a1)
{
  v1 = 0;
  v2 = a1[1];
  v3 = a1[2];
  v4 = **a1;
  v5 = v4 + 32 * (*a1)[1];
  v6 = *v2;
  v7 = *v2 + 32 * v2[1];
  v8 = *v3;
  v9 = *v3 + 32 * v3[1];
  v13 = v4;
  v14 = v6;
  v15 = v8;
  v16 = v5;
  v17 = v7;
  v18 = v9;
  while (1)
  {
    if (v4 == v5 && v6 == v7 && v8 == v9)
    {
      v10 = v16 == v5 && v17 == v7;
      if (v10 && v18 == v9)
      {
        break;
      }
    }

    ++v1;
    llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::increment<0ul,1ul,2ul>(&v13);
    v4 = v13;
    v6 = v14;
    v8 = v15;
  }

  return v1;
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::increment<0ul,1ul,2ul>(uint64_t a1)
{
  v2 = 0;
  v9[6] = *MEMORY[0x277D85DE8];
  v9[1] = 0;
  v9[3] = 0;
  v9[0] = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::incrementHelper<0ul>;
  v9[2] = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::incrementHelper<1ul>;
  v9[4] = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::incrementHelper<2ul>;
  v9[5] = 0;
  do
  {
    v3 = v9[v2];
    v4 = v9[v2 + 1];
    v5 = (a1 + (v4 >> 1));
    if (v4)
    {
      v3 = *(*v5 + v3);
    }

    result = v3(v5);
    if (result)
    {
      break;
    }

    v7 = v2 == 4;
    v2 += 2;
  }

  while (!v7);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::incrementHelper<0ul>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[3];
  if (*a1 != v2)
  {
    *a1 = v1 + 32;
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::incrementHelper<1ul>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 32);
  if (v1 != v2)
  {
    *(a1 + 8) = v1 + 32;
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::incrementHelper<2ul>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 40);
  if (v1 != v2)
  {
    *(a1 + 16) = v1 + 32;
  }

  return v1 != v2;
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::get<0ul,1ul,2ul>(uint64_t a1)
{
  v2 = 0;
  v8[6] = *MEMORY[0x277D85DE8];
  v8[1] = 0;
  v8[3] = 0;
  v8[0] = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<0ul>;
  v8[2] = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<1ul>;
  v8[4] = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<2ul>;
  v8[5] = 0;
  do
  {
    v3 = v8[v2];
    v4 = v8[v2 + 1];
    v5 = (a1 + (v4 >> 1));
    if (v4)
    {
      v3 = *(*v5 + v3);
    }

    result = v3(v5);
    v2 += 2;
  }

  while (!result);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<0ul>(void *a1)
{
  if (*a1 == a1[3])
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<1ul>(uint64_t a1)
{
  if (*(a1 + 8) == *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<2ul>(uint64_t a1)
{
  if (*(a1 + 16) == *(a1 + 40))
  {
    return 0;
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::increment<0ul,1ul,2ul,3ul>(uint64_t a1)
{
  v2 = 0;
  v9[8] = *MEMORY[0x277D85DE8];
  v9[1] = 0;
  v9[3] = 0;
  v9[5] = 0;
  v9[0] = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::incrementHelper<0ul>;
  v9[2] = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::incrementHelper<1ul>;
  v9[4] = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::incrementHelper<2ul>;
  v9[6] = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::incrementHelper<3ul>;
  v9[7] = 0;
  do
  {
    v3 = v9[v2];
    v4 = v9[v2 + 1];
    v5 = (a1 + (v4 >> 1));
    if (v4)
    {
      v3 = *(*v5 + v3);
    }

    result = v3(v5);
    if (result)
    {
      break;
    }

    v7 = v2 == 6;
    v2 += 2;
  }

  while (!v7);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::incrementHelper<0ul>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[4];
  if (*a1 != v2)
  {
    *a1 = v1 + 32;
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::incrementHelper<1ul>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 40);
  if (v1 != v2)
  {
    *(a1 + 8) = v1 + 32;
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::incrementHelper<2ul>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 48);
  if (v1 != v2)
  {
    *(a1 + 16) = v1 + 32;
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::incrementHelper<3ul>(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 56);
  if (v1 != v2)
  {
    *(a1 + 24) = v1 + 32;
  }

  return v1 != v2;
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<0ul>(void *a1)
{
  if (*a1 == a1[4])
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<1ul>(uint64_t a1)
{
  if (*(a1 + 8) == *(a1 + 40))
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<2ul>(uint64_t a1)
{
  if (*(a1 + 16) == *(a1 + 48))
  {
    return 0;
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<3ul>(uint64_t a1)
{
  if (*(a1 + 24) == *(a1 + 56))
  {
    return 0;
  }

  else
  {
    return *(a1 + 24);
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::CosOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::CosOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::CosOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21520, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21520))
  {
    qword_27FC21510 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::CosOpGenericAdaptorBase::Properties>();
    *algn_27FC21518 = v1;
    __cxa_guard_release(&qword_27FC21520);
  }

  return qword_27FC21510;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::CosOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::CosOpGenericAdaptorBase::Properties]";
  v6 = 117;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::CosOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::CoshOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::CoshOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::CoshOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21548, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21548))
  {
    qword_27FC21538 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::CoshOpGenericAdaptorBase::Properties>();
    unk_27FC21540 = v1;
    __cxa_guard_release(&qword_27FC21548);
  }

  return qword_27FC21538;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::CoshOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::CoshOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::CoshOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::CountLeadingZerosOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::CountLeadingZerosOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::CountLeadingZerosOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21570))
  {
    qword_27FC21560 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::CountLeadingZerosOpGenericAdaptorBase::Properties>();
    *algn_27FC21568 = v1;
    __cxa_guard_release(&qword_27FC21570);
  }

  return qword_27FC21560;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::CountLeadingZerosOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::CountLeadingZerosOpGenericAdaptorBase::Properties]";
  v6 = 131;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::CountTrailingZerosOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::CountTrailingZerosOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::CountTrailingZerosOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21598, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21598))
  {
    qword_27FC21588 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::CountTrailingZerosOpGenericAdaptorBase::Properties>();
    unk_27FC21590 = v1;
    __cxa_guard_release(&qword_27FC21598);
  }

  return qword_27FC21588;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::CountTrailingZerosOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::CountTrailingZerosOpGenericAdaptorBase::Properties]";
  v6 = 132;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::DbgDeclareOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::DbgDeclareOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::DbgDeclareOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::DbgDeclareOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::DbgDeclareOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC215C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC215C0))
  {
    qword_27FC215B0 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::DbgDeclareOpGenericAdaptorBase::Properties>();
    *algn_27FC215B8 = v1;
    __cxa_guard_release(&qword_27FC215C0);
  }

  return qword_27FC215B0;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::DbgDeclareOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::DbgDeclareOpGenericAdaptorBase::Properties]";
  v6 = 124;
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

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::DIExpressionAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::DIExpressionAttr]";
  v6 = 90;
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

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::DILocalVariableAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::DILocalVariableAttr]";
  v6 = 93;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::DbgDeclareOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::DbgLabelOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::DbgLabelOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::DbgLabelOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21618, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21618))
  {
    qword_27FC21608 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::DbgLabelOpGenericAdaptorBase::Properties>();
    unk_27FC21610 = v1;
    __cxa_guard_release(&qword_27FC21618);
  }

  return qword_27FC21608;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::DbgLabelOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::DbgLabelOpGenericAdaptorBase::Properties]";
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

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::DILabelAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::DILabelAttr]";
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

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM11DILabelAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::DILabelAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::DbgLabelOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::DbgValueOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::DbgValueOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::DbgValueOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::DbgValueOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::DbgValueOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21658, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21658))
  {
    qword_27FC21648 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::DbgValueOpGenericAdaptorBase::Properties>();
    unk_27FC21650 = v1;
    __cxa_guard_release(&qword_27FC21658);
  }

  return qword_27FC21648;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::DbgValueOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::DbgValueOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::DbgValueOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::Exp2OpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::Exp2OpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::Exp2OpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21680, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21680))
  {
    qword_27FC21670 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::Exp2OpGenericAdaptorBase::Properties>();
    *algn_27FC21678 = v1;
    __cxa_guard_release(&qword_27FC21680);
  }

  return qword_27FC21670;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::Exp2OpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::Exp2OpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::Exp2Op::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::ExpOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ExpOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::ExpOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC216A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC216A8))
  {
    qword_27FC21698 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::ExpOpGenericAdaptorBase::Properties>();
    unk_27FC216A0 = v1;
    __cxa_guard_release(&qword_27FC216A8);
  }

  return qword_27FC21698;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::ExpOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::ExpOpGenericAdaptorBase::Properties]";
  v6 = 117;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::ExpOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::ExpectWithProbabilityOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ExpectWithProbabilityOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::ExpectWithProbabilityOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC216D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC216D0))
  {
    qword_27FC216C0 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::ExpectWithProbabilityOpGenericAdaptorBase::Properties>();
    *algn_27FC216C8 = v1;
    __cxa_guard_release(&qword_27FC216D0);
  }

  return qword_27FC216C0;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::ExpectWithProbabilityOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::ExpectWithProbabilityOpGenericAdaptorBase::Properties]";
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

const char *llvm::detail::getTypeNameImpl<mlir::FloatAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::FloatAttr]";
  v6 = 77;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::ExpectWithProbabilityOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::FAbsOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::FAbsOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::FAbsOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21710, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21710))
  {
    qword_27FC21700 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::FAbsOpGenericAdaptorBase::Properties>();
    *algn_27FC21708 = v1;
    __cxa_guard_release(&qword_27FC21710);
  }

  return qword_27FC21700;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::FAbsOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::FAbsOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FAbsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::FCeilOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::FCeilOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::FCeilOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21738, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21738))
  {
    qword_27FC21728 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::FCeilOpGenericAdaptorBase::Properties>();
    unk_27FC21730 = v1;
    __cxa_guard_release(&qword_27FC21738);
  }

  return qword_27FC21728;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::FCeilOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::FCeilOpGenericAdaptorBase::Properties]";
  v6 = 119;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FCeilOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::FFloorOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::FFloorOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::FFloorOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21760, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21760))
  {
    qword_27FC21750 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::FFloorOpGenericAdaptorBase::Properties>();
    *algn_27FC21758 = v1;
    __cxa_guard_release(&qword_27FC21760);
  }

  return qword_27FC21750;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::FFloorOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::FFloorOpGenericAdaptorBase::Properties]";
  v6 = 120;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FFloorOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::FMAOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::FMAOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::FMAOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21788, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21788))
  {
    qword_27FC21778 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::FMAOpGenericAdaptorBase::Properties>();
    unk_27FC21780 = v1;
    __cxa_guard_release(&qword_27FC21788);
  }

  return qword_27FC21778;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::FMAOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::FMAOpGenericAdaptorBase::Properties]";
  v6 = 117;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FMAOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::FMulAddOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::FMulAddOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::FMulAddOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC217B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC217B0))
  {
    qword_27FC217A0 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::FMulAddOpGenericAdaptorBase::Properties>();
    *algn_27FC217A8 = v1;
    __cxa_guard_release(&qword_27FC217B0);
  }

  return qword_27FC217A0;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::FMulAddOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::FMulAddOpGenericAdaptorBase::Properties]";
  v6 = 121;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FMulAddOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::FTruncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::FTruncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::FTruncOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC217D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC217D8))
  {
    qword_27FC217C8 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::FTruncOpGenericAdaptorBase::Properties>();
    unk_27FC217D0 = v1;
    __cxa_guard_release(&qword_27FC217D8);
  }

  return qword_27FC217C8;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::FTruncOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::FTruncOpGenericAdaptorBase::Properties]";
  v6 = 120;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FTruncOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::InvariantEndOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InvariantEndOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::InvariantEndOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21800, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21800))
  {
    qword_27FC217F0 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::InvariantEndOpGenericAdaptorBase::Properties>();
    *algn_27FC217F8 = v1;
    __cxa_guard_release(&qword_27FC21800);
  }

  return qword_27FC217F0;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::InvariantEndOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::InvariantEndOpGenericAdaptorBase::Properties]";
  v6 = 126;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::InvariantEndOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::InvariantStartOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InvariantStartOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::InvariantStartOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21828, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21828))
  {
    qword_27FC21818 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::InvariantStartOpGenericAdaptorBase::Properties>();
    unk_27FC21820 = v1;
    __cxa_guard_release(&qword_27FC21828);
  }

  return qword_27FC21818;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::InvariantStartOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::InvariantStartOpGenericAdaptorBase::Properties]";
  v6 = 128;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::InvariantStartOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::IsFPClassGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::IsFPClassGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::IsFPClassGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21850))
  {
    qword_27FC21840 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::IsFPClassGenericAdaptorBase::Properties>();
    *algn_27FC21848 = v1;
    __cxa_guard_release(&qword_27FC21850);
  }

  return qword_27FC21840;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::IsFPClassGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::IsFPClassGenericAdaptorBase::Properties]";
  v6 = 121;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::LifetimeEndOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LifetimeEndOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::LifetimeEndOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21878, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21878))
  {
    qword_27FC21868 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::LifetimeEndOpGenericAdaptorBase::Properties>();
    unk_27FC21870 = v1;
    __cxa_guard_release(&qword_27FC21878);
  }

  return qword_27FC21868;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::LifetimeEndOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::LifetimeEndOpGenericAdaptorBase::Properties]";
  v6 = 125;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::LifetimeEndOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::LifetimeStartOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LifetimeStartOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::LifetimeStartOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC218A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC218A0))
  {
    qword_27FC21890 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::LifetimeStartOpGenericAdaptorBase::Properties>();
    *algn_27FC21898 = v1;
    __cxa_guard_release(&qword_27FC218A0);
  }

  return qword_27FC21890;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::LifetimeStartOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::LifetimeStartOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::LifetimeStartOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::Log10OpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::Log10OpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::Log10OpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC218C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC218C8))
  {
    qword_27FC218B8 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::Log10OpGenericAdaptorBase::Properties>();
    unk_27FC218C0 = v1;
    __cxa_guard_release(&qword_27FC218C8);
  }

  return qword_27FC218B8;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::Log10OpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::Log10OpGenericAdaptorBase::Properties]";
  v6 = 119;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::Log10Op::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::Log2OpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::Log2OpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::Log2OpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC218F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC218F0))
  {
    qword_27FC218E0 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::Log2OpGenericAdaptorBase::Properties>();
    *algn_27FC218E8 = v1;
    __cxa_guard_release(&qword_27FC218F0);
  }

  return qword_27FC218E0;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::Log2OpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::Log2OpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::Log2Op::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::LogOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LogOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::LogOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21918))
  {
    qword_27FC21908 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::LogOpGenericAdaptorBase::Properties>();
    unk_27FC21910 = v1;
    __cxa_guard_release(&qword_27FC21918);
  }

  return qword_27FC21908;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::LogOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::LogOpGenericAdaptorBase::Properties]";
  v6 = 117;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::LogOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::MaskedLoadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MaskedLoadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::MaskedLoadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MaskedLoadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::MaskedLoadOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21940))
  {
    qword_27FC21930 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MaskedLoadOpGenericAdaptorBase::Properties>();
    *algn_27FC21938 = v1;
    __cxa_guard_release(&qword_27FC21940);
  }

  return qword_27FC21930;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MaskedLoadOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::MaskedLoadOpGenericAdaptorBase::Properties]";
  v6 = 124;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MaskedLoadOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::MaskedStoreOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MaskedStoreOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::MaskedStoreOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21968, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21968))
  {
    qword_27FC21958 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MaskedStoreOpGenericAdaptorBase::Properties>();
    unk_27FC21960 = v1;
    __cxa_guard_release(&qword_27FC21968);
  }

  return qword_27FC21958;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MaskedStoreOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::MaskedStoreOpGenericAdaptorBase::Properties]";
  v6 = 125;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MaskedStoreOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::MatrixColumnMajorLoadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MatrixColumnMajorLoadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::MatrixColumnMajorLoadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MatrixColumnMajorLoadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::MatrixColumnMajorLoadOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21990, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21990))
  {
    qword_27FC21980 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MatrixColumnMajorLoadOpGenericAdaptorBase::Properties>();
    *algn_27FC21988 = v1;
    __cxa_guard_release(&qword_27FC21990);
  }

  return qword_27FC21980;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MatrixColumnMajorLoadOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::MatrixColumnMajorLoadOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MatrixColumnMajorLoadOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::MatrixColumnMajorStoreOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MatrixColumnMajorStoreOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::MatrixColumnMajorStoreOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MatrixColumnMajorStoreOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::MatrixColumnMajorStoreOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC219B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC219B8))
  {
    qword_27FC219A8 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MatrixColumnMajorStoreOpGenericAdaptorBase::Properties>();
    unk_27FC219B0 = v1;
    __cxa_guard_release(&qword_27FC219B8);
  }

  return qword_27FC219A8;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MatrixColumnMajorStoreOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::MatrixColumnMajorStoreOpGenericAdaptorBase::Properties]";
  v6 = 136;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MatrixColumnMajorStoreOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::MatrixMultiplyOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MatrixMultiplyOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::MatrixMultiplyOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MatrixMultiplyOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::MatrixMultiplyOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC219E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC219E0))
  {
    qword_27FC219D0 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MatrixMultiplyOpGenericAdaptorBase::Properties>();
    *algn_27FC219D8 = v1;
    __cxa_guard_release(&qword_27FC219E0);
  }

  return qword_27FC219D0;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MatrixMultiplyOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::MatrixMultiplyOpGenericAdaptorBase::Properties]";
  v6 = 128;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MatrixMultiplyOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::MatrixTransposeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MatrixTransposeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::MatrixTransposeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MatrixTransposeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::MatrixTransposeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21A08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21A08))
  {
    qword_27FC219F8 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MatrixTransposeOpGenericAdaptorBase::Properties>();
    unk_27FC21A00 = v1;
    __cxa_guard_release(&qword_27FC21A08);
  }

  return qword_27FC219F8;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MatrixTransposeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::MatrixTransposeOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MatrixTransposeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::MaxNumOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MaxNumOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::MaxNumOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21A30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21A30))
  {
    qword_27FC21A20 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MaxNumOpGenericAdaptorBase::Properties>();
    *algn_27FC21A28 = v1;
    __cxa_guard_release(&qword_27FC21A30);
  }

  return qword_27FC21A20;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MaxNumOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::MaxNumOpGenericAdaptorBase::Properties]";
  v6 = 120;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MaxNumOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::MaximumOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MaximumOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::MaximumOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21A58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21A58))
  {
    qword_27FC21A48 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MaximumOpGenericAdaptorBase::Properties>();
    unk_27FC21A50 = v1;
    __cxa_guard_release(&qword_27FC21A58);
  }

  return qword_27FC21A48;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MaximumOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::MaximumOpGenericAdaptorBase::Properties]";
  v6 = 121;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MaximumOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::MemcpyInlineOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyInlineOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::MemcpyInlineOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyInlineOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::MemcpyInlineOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21A80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21A80))
  {
    qword_27FC21A70 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MemcpyInlineOpGenericAdaptorBase::Properties>();
    *algn_27FC21A78 = v1;
    __cxa_guard_release(&qword_27FC21A80);
  }

  return qword_27FC21A70;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MemcpyInlineOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::MemcpyInlineOpGenericAdaptorBase::Properties]";
  v6 = 126;
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

uint64_t llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Write *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(uint64_t a1, void *a2, uint64_t *a3, int *a4, char *a5, uint64_t *a6)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v8 = *a4;
  v9 = *a5;
  v10 = *a6;
  v17[0] = *a2;
  v17[1] = v10;
  v17[2] = v7 & 0xFFFFFFFFFFFFFFF9 | 2;
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

uint64_t llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(uint64_t a1, void *a2, uint64_t *a3, int *a4, char *a5, uint64_t *a6)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v8 = *a4;
  v9 = *a5;
  v10 = *a6;
  v17[0] = *a2;
  v17[1] = v10;
  v17[2] = v7 & 0xFFFFFFFFFFFFFFF9 | 2;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::MemcpyOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::MemcpyOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::MemcpyOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21AA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21AA8))
  {
    qword_27FC21A98 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MemcpyOpGenericAdaptorBase::Properties>();
    unk_27FC21AA0 = v1;
    __cxa_guard_release(&qword_27FC21AA8);
  }

  return qword_27FC21A98;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MemcpyOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::MemcpyOpGenericAdaptorBase::Properties]";
  v6 = 120;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::MemmoveOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemmoveOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::MemmoveOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemmoveOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::MemmoveOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21AD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21AD0))
  {
    qword_27FC21AC0 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MemmoveOpGenericAdaptorBase::Properties>();
    *algn_27FC21AC8 = v1;
    __cxa_guard_release(&qword_27FC21AD0);
  }

  return qword_27FC21AC0;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MemmoveOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::MemmoveOpGenericAdaptorBase::Properties]";
  v6 = 121;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::MemsetInlineOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetInlineOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::MemsetInlineOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetInlineOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::MemsetInlineOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21AF8))
  {
    qword_27FC21AE8 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MemsetInlineOpGenericAdaptorBase::Properties>();
    unk_27FC21AF0 = v1;
    __cxa_guard_release(&qword_27FC21AF8);
  }

  return qword_27FC21AE8;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MemsetInlineOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::MemsetInlineOpGenericAdaptorBase::Properties]";
  v6 = 126;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::MemsetOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::MemsetOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::MemsetOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21B20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21B20))
  {
    qword_27FC21B10 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MemsetOpGenericAdaptorBase::Properties>();
    *algn_27FC21B18 = v1;
    __cxa_guard_release(&qword_27FC21B20);
  }

  return qword_27FC21B10;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MemsetOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::MemsetOpGenericAdaptorBase::Properties]";
  v6 = 120;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::MinNumOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MinNumOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::MinNumOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21B48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21B48))
  {
    qword_27FC21B38 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MinNumOpGenericAdaptorBase::Properties>();
    unk_27FC21B40 = v1;
    __cxa_guard_release(&qword_27FC21B48);
  }

  return qword_27FC21B38;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MinNumOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::MinNumOpGenericAdaptorBase::Properties]";
  v6 = 120;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MinNumOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::MinimumOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MinimumOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::MinimumOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21B70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21B70))
  {
    qword_27FC21B60 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MinimumOpGenericAdaptorBase::Properties>();
    *algn_27FC21B68 = v1;
    __cxa_guard_release(&qword_27FC21B70);
  }

  return qword_27FC21B60;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::MinimumOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::MinimumOpGenericAdaptorBase::Properties]";
  v6 = 121;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MinimumOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::NearbyintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::NearbyintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::NearbyintOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21B98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21B98))
  {
    qword_27FC21B88 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::NearbyintOpGenericAdaptorBase::Properties>();
    unk_27FC21B90 = v1;
    __cxa_guard_release(&qword_27FC21B98);
  }

  return qword_27FC21B88;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::NearbyintOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::NearbyintOpGenericAdaptorBase::Properties]";
  v6 = 123;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::NearbyintOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::NoAliasScopeDeclOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::NoAliasScopeDeclOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::NoAliasScopeDeclOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21BC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21BC0))
  {
    qword_27FC21BB0 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::NoAliasScopeDeclOpGenericAdaptorBase::Properties>();
    *algn_27FC21BB8 = v1;
    __cxa_guard_release(&qword_27FC21BC0);
  }

  return qword_27FC21BB0;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::NoAliasScopeDeclOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::NoAliasScopeDeclOpGenericAdaptorBase::Properties]";
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

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::AliasScopeAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::AliasScopeAttr]";
  v6 = 88;
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

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM14AliasScopeAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::AliasScopeAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::NoAliasScopeDeclOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::PowIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::PowIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::PowIOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21C00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21C00))
  {
    qword_27FC21BF0 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::PowIOpGenericAdaptorBase::Properties>();
    *algn_27FC21BF8 = v1;
    __cxa_guard_release(&qword_27FC21C00);
  }

  return qword_27FC21BF0;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::PowIOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::PowIOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::PowIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::PowOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::PowOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::PowOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21C28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21C28))
  {
    qword_27FC21C18 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::PowOpGenericAdaptorBase::Properties>();
    unk_27FC21C20 = v1;
    __cxa_guard_release(&qword_27FC21C28);
  }

  return qword_27FC21C18;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::PowOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::PowOpGenericAdaptorBase::Properties]";
  v6 = 117;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::PowOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::PrefetchGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::PrefetchGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::PrefetchGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::PrefetchGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::PrefetchGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21C50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21C50))
  {
    qword_27FC21C40 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::PrefetchGenericAdaptorBase::Properties>();
    *algn_27FC21C48 = v1;
    __cxa_guard_release(&qword_27FC21C50);
  }

  return qword_27FC21C40;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::PrefetchGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::PrefetchGenericAdaptorBase::Properties]";
  v6 = 120;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::RintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::RintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::RintOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21C78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21C78))
  {
    qword_27FC21C68 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::RintOpGenericAdaptorBase::Properties>();
    unk_27FC21C70 = v1;
    __cxa_guard_release(&qword_27FC21C78);
  }

  return qword_27FC21C68;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::RintOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::RintOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::RintOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::RoundEvenOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::RoundEvenOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::RoundEvenOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21CA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21CA0))
  {
    qword_27FC21C90 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::RoundEvenOpGenericAdaptorBase::Properties>();
    *algn_27FC21C98 = v1;
    __cxa_guard_release(&qword_27FC21CA0);
  }

  return qword_27FC21C90;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::RoundEvenOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::RoundEvenOpGenericAdaptorBase::Properties]";
  v6 = 123;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::RoundEvenOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::RoundOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::RoundOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::RoundOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21CC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21CC8))
  {
    qword_27FC21CB8 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::RoundOpGenericAdaptorBase::Properties>();
    unk_27FC21CC0 = v1;
    __cxa_guard_release(&qword_27FC21CC8);
  }

  return qword_27FC21CB8;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::RoundOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::RoundOpGenericAdaptorBase::Properties]";
  v6 = 119;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::RoundOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::SinOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::SinOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::SinOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21CF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21CF0))
  {
    qword_27FC21CE0 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::SinOpGenericAdaptorBase::Properties>();
    *algn_27FC21CE8 = v1;
    __cxa_guard_release(&qword_27FC21CF0);
  }

  return qword_27FC21CE0;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::SinOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::SinOpGenericAdaptorBase::Properties]";
  v6 = 117;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::SinOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::SinhOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::SinhOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::SinhOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21D18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21D18))
  {
    qword_27FC21D08 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::SinhOpGenericAdaptorBase::Properties>();
    unk_27FC21D10 = v1;
    __cxa_guard_release(&qword_27FC21D18);
  }

  return qword_27FC21D08;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::SinhOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::SinhOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::SinhOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::SqrtOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::SqrtOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::SqrtOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21D40))
  {
    qword_27FC21D30 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::SqrtOpGenericAdaptorBase::Properties>();
    *algn_27FC21D38 = v1;
    __cxa_guard_release(&qword_27FC21D40);
  }

  return qword_27FC21D30;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::SqrtOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::SqrtOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::SqrtOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::TanOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::TanOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::TanOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21D68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21D68))
  {
    qword_27FC21D58 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::TanOpGenericAdaptorBase::Properties>();
    unk_27FC21D60 = v1;
    __cxa_guard_release(&qword_27FC21D68);
  }

  return qword_27FC21D58;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::TanOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::TanOpGenericAdaptorBase::Properties]";
  v6 = 117;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::TanOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::TanhOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::TanhOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::TanhOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21D90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21D90))
  {
    qword_27FC21D80 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::TanhOpGenericAdaptorBase::Properties>();
    *algn_27FC21D88 = v1;
    __cxa_guard_release(&qword_27FC21D90);
  }

  return qword_27FC21D80;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::TanhOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::TanhOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::TanhOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::UBSanTrapGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::UBSanTrapGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::UBSanTrapGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21DB8))
  {
    qword_27FC21DA8 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::UBSanTrapGenericAdaptorBase::Properties>();
    unk_27FC21DB0 = v1;
    __cxa_guard_release(&qword_27FC21DB8);
  }

  return qword_27FC21DA8;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::UBSanTrapGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::UBSanTrapGenericAdaptorBase::Properties]";
  v6 = 121;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::masked_gatherGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::masked_gatherGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::masked_gatherGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21DE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21DE0))
  {
    qword_27FC21DD0 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::masked_gatherGenericAdaptorBase::Properties>();
    *algn_27FC21DD8 = v1;
    __cxa_guard_release(&qword_27FC21DE0);
  }

  return qword_27FC21DD0;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::masked_gatherGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::masked_gatherGenericAdaptorBase::Properties]";
  v6 = 125;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::masked_gather::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::masked_scatterGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::masked_scatterGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::masked_scatterGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21E08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21E08))
  {
    qword_27FC21DF8 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::masked_scatterGenericAdaptorBase::Properties>();
    unk_27FC21E00 = v1;
    __cxa_guard_release(&qword_27FC21E08);
  }

  return qword_27FC21DF8;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::masked_scatterGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::masked_scatterGenericAdaptorBase::Properties]";
  v6 = 126;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::masked_scatter::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::vector_extractGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::vector_extractGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::vector_extractGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21E30))
  {
    qword_27FC21E20 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::vector_extractGenericAdaptorBase::Properties>();
    *algn_27FC21E28 = v1;
    __cxa_guard_release(&qword_27FC21E30);
  }

  return qword_27FC21E20;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::vector_extractGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::vector_extractGenericAdaptorBase::Properties]";
  v6 = 126;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::vector_extract::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::vector_insertGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::vector_insertGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::vector_insertGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21E58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21E58))
  {
    qword_27FC21E48 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::vector_insertGenericAdaptorBase::Properties>();
    unk_27FC21E50 = v1;
    __cxa_guard_release(&qword_27FC21E58);
  }

  return qword_27FC21E48;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::vector_insertGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::vector_insertGenericAdaptorBase::Properties]";
  v6 = 125;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::vector_insert::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::vector_reduce_faddGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::vector_reduce_faddGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::vector_reduce_faddGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21E80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21E80))
  {
    qword_27FC21E70 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::vector_reduce_faddGenericAdaptorBase::Properties>();
    *algn_27FC21E78 = v1;
    __cxa_guard_release(&qword_27FC21E80);
  }

  return qword_27FC21E70;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::vector_reduce_faddGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::vector_reduce_faddGenericAdaptorBase::Properties]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::vector_reduce_fmaxGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::vector_reduce_fmaxGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::vector_reduce_fmaxGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21EA8))
  {
    qword_27FC21E98 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::vector_reduce_fmaxGenericAdaptorBase::Properties>();
    unk_27FC21EA0 = v1;
    __cxa_guard_release(&qword_27FC21EA8);
  }

  return qword_27FC21E98;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::vector_reduce_fmaxGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::vector_reduce_fmaxGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::vector_reduce_fmax::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::vector_reduce_fmaximumGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::vector_reduce_fmaximumGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::vector_reduce_fmaximumGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21ED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21ED0))
  {
    qword_27FC21EC0 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::vector_reduce_fmaximumGenericAdaptorBase::Properties>();
    *algn_27FC21EC8 = v1;
    __cxa_guard_release(&qword_27FC21ED0);
  }

  return qword_27FC21EC0;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::vector_reduce_fmaximumGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::vector_reduce_fmaximumGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::vector_reduce_fmaximum::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::vector_reduce_fminGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::vector_reduce_fminGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::vector_reduce_fminGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21EF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21EF8))
  {
    qword_27FC21EE8 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::vector_reduce_fminGenericAdaptorBase::Properties>();
    unk_27FC21EF0 = v1;
    __cxa_guard_release(&qword_27FC21EF8);
  }

  return qword_27FC21EE8;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::vector_reduce_fminGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::vector_reduce_fminGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::vector_reduce_fmin::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::vector_reduce_fminimumGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::vector_reduce_fminimumGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::vector_reduce_fminimumGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21F20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21F20))
  {
    qword_27FC21F10 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::vector_reduce_fminimumGenericAdaptorBase::Properties>();
    *algn_27FC21F18 = v1;
    __cxa_guard_release(&qword_27FC21F20);
  }

  return qword_27FC21F10;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::vector_reduce_fminimumGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::vector_reduce_fminimumGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::vector_reduce_fminimum::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::LLVM::detail::vector_reduce_fmulGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::vector_reduce_fmulGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::LLVM::detail::vector_reduce_fmulGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC21F48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21F48))
  {
    qword_27FC21F38 = llvm::detail::getTypeNameImpl<mlir::LLVM::detail::vector_reduce_fmulGenericAdaptorBase::Properties>();
    unk_27FC21F40 = v1;
    __cxa_guard_release(&qword_27FC21F48);
  }

  return qword_27FC21F38;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::detail::vector_reduce_fmulGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::detail::vector_reduce_fmulGenericAdaptorBase::Properties]";
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

void llvm::function_ref<void ()(llvm::Twine const&)>::callback_fn<mlir::LLVM::LLVMDialect::verifyOperationAttribute(mlir::Operation *,mlir::NamedAttribute)::$_0>(mlir::Operation **a1, llvm::formatv_object_base **a2)
{
  v12[25] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v8 = 257;
  mlir::Operation::emitOpError(v3, v7, &v11);
  llvm::Twine::str(a2, __p);
  if (v11)
  {
    v10 = 260;
    v9 = __p;
    mlir::Diagnostic::operator<<(v12, &v9);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::UndefOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::UndefOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "llvm.mlir.undef";
    v6[3] = 15;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::GEPOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::GEPOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "llvm.getelementptr";
    v6[3] = 18;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

BOOL mlir::LLVM::detail::verifyAccessGroupOpInterface(mlir::LLVM::detail *this, mlir::Operation *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  InterfaceFor = mlir::OpInterface<mlir::LLVM::AccessGroupOpInterface,mlir::LLVM::detail::AccessGroupOpInterfaceInterfaceTraits>::getInterfaceFor(this);
  v4 = (*InterfaceFor)(InterfaceFor, this);
  if (v4 && (v5 = *(v4 + 16)) != 0)
  {
    v6 = *(v4 + 8);
    v7 = 8 * v5;
    while (*(**v6 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupAttr,void>::id)
    {
      v6 += 8;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v11 = "expected op to return array of ";
    v12 = 259;
    mlir::Operation::emitOpError(this, &v11, &v15);
    if (v15)
    {
      v14 = 262;
      v13[0] = "access_group";
      v13[1] = 12;
      mlir::Diagnostic::operator<<(v16, v13);
      if (v15)
      {
        mlir::Diagnostic::operator<<<12ul>(v16, " attributes");
      }
    }

    v8 = (v16[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
  }

  else
  {
LABEL_6:
    v8 = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL mlir::LLVM::detail::verifyAliasAnalysisOpInterface(mlir::LLVM::detail *this, mlir::Operation *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (this)
  {
    InterfaceFor = mlir::OpInterface<mlir::LLVM::AliasAnalysisOpInterface,mlir::LLVM::detail::AliasAnalysisOpInterfaceInterfaceTraits>::getInterfaceFor(this);
  }

  else
  {
    InterfaceFor = 0;
  }

  v4 = (*InterfaceFor)(InterfaceFor, this);
  if (v4 && !isArrayOf<mlir::LLVM::AliasScopeAttr>(this, v4) || (v5 = InterfaceFor[2](InterfaceFor, this)) != 0 && !isArrayOf<mlir::LLVM::AliasScopeAttr>(this, v5))
  {
    v10 = 0;
  }

  else
  {
    v6 = InterfaceFor[4](InterfaceFor, this);
    if (v6 && (v7 = *(v6 + 16)) != 0)
    {
      v8 = *(v6 + 8);
      v9 = 8 * v7;
      while (*(**v8 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATagAttr,void>::id)
      {
        v8 += 8;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_13;
        }
      }

      v13 = "expected op to return array of ";
      v14 = 259;
      mlir::Operation::emitOpError(this, &v13, &v17);
      if (v17)
      {
        v16 = 262;
        v15[0] = "tbaa_tag";
        v15[1] = 8;
        mlir::Diagnostic::operator<<(v18, v15);
        if (v17)
        {
          mlir::Diagnostic::operator<<<12ul>(v18, " attributes");
        }
      }

      v10 = (v18[192] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
    }

    else
    {
LABEL_13:
      v10 = 1;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

BOOL isArrayOf<mlir::LLVM::AliasScopeAttr>(mlir::Operation *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(a2 + 8);
    v4 = 8 * v2;
    while (*(**v3 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id)
    {
      v3 += 8;
      v4 -= 8;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v8 = "expected op to return array of ";
    v9 = 259;
    mlir::Operation::emitOpError(a1, &v8, &v12);
    if (v12)
    {
      v11 = 262;
      v10[0] = "alias_scope";
      v10[1] = 11;
      mlir::Diagnostic::operator<<(v13, v10);
      if (v12)
      {
        mlir::Diagnostic::operator<<<12ul>(v13, " attributes");
      }
    }

    v5 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  else
  {
LABEL_5:
    v5 = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void mlir::LLVM::CallOp::getAccessedOperands(mlir::LLVM::CallOp *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*this + 44);
  v4 = *this + 16 * ((v3 >> 23) & 1);
  v5 = *(v4 + 208);
  if ((v3 & 0x800000) != 0)
  {
    v6 = *(*this + 72);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v4 + 112) == 0;
  v8 = v6 + 32 * v7;
  v9 = 0;
  v10 = v5 - v7;
  if (v5 != v7)
  {
    v14 = v8 + 24;
    while (*(*(*(*v14 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
    {
      ++v9;
      v14 += 32;
      if (v10 == v9)
      {
        v13 = 0;
        *a2 = a2 + 16;
        v12 = (a2 + 8);
        *(a2 + 12) = 6;
        goto LABEL_28;
      }
    }
  }

  v11 = (a2 + 16);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v12 = (a2 + 8);
  if (v9 == v10)
  {
    v13 = 0;
  }

  else
  {
    v15 = 0;
    v16 = v9;
    do
    {
      v17 = v15++;
      if (v16 + 1 == v10)
      {
        break;
      }

      v18 = v8 + 56 + 32 * v16++;
      while (*(*(*(*v18 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
      {
        ++v16;
        v18 += 32;
        if (v10 == v16)
        {
          goto LABEL_17;
        }
      }
    }

    while (v10 != v16);
LABEL_17:
    if (v17 < 6)
    {
      v19 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, v11, v15, 8);
      v19 = *(a2 + 8);
      v11 = *a2;
    }

    v20 = &v11[8 * v19];
    v21 = *(v8 + 32 * v9 + 24);
    do
    {
      *v20 = v21;
      if (v9 + 1 == v10)
      {
        break;
      }

      v22 = v8 + 56 + 32 * v9++;
      while (1)
      {
        v21 = *v22;
        if (*(*(*(*v22 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
        {
          break;
        }

        ++v9;
        v22 += 32;
        if (v10 == v9)
        {
          goto LABEL_27;
        }
      }

      v20 += 8;
    }

    while (v10 != v9);
LABEL_27:
    v13 = *v12 + v15;
  }

LABEL_28:
  *v12 = v13;
}

uint64_t mlir::OpInterface<mlir::LLVM::AccessGroupOpInterface,mlir::LLVM::detail::AccessGroupOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::OpInterface<mlir::LLVM::AliasAnalysisOpInterface,mlir::LLVM::detail::AliasAnalysisOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::LLVM::AliasAnalysisOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::LLVM::AliasAnalysisOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::LLVM::AliasAnalysisOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

void mlir::LLVM::AllocaOp::getPromotableSlots(mlir::LLVM::AllocaOp *this@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 16);
  v4 = *((*(v3 + 24) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v4)
  {
    v5 = v4 - 8;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v3)
  {
    __src[0] = v2 - 16;
    __src[1] = *(*(v2 + 16 * ((*(v2 + 44) >> 23) & 1) + 72) + 8);
    *a2 = a2 + 2;
    a2[1] = 0x300000000;
    llvm::SmallVectorImpl<mlir::MemorySlot>::append<mlir::MemorySlot const*,void>(a2, __src, &v8);
  }

  else
  {
    *a2 = a2 + 2;
    a2[1] = 0x300000000;
  }

  v6 = *MEMORY[0x277D85DE8];
}

char *mlir::OpBuilder::create<mlir::LLVM::UndefOp,mlir::Type const&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::UndefOp>(a1, *(**a2 + 32));
  v12[0] = a2;
  v12[1] = v6;
  v12[2] = &v13;
  v12[3] = 0x400000000;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[8] = 4;
  v16[9] = v17;
  v16[10] = 0x100000000;
  v17[1] = v18;
  v17[2] = 0x100000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v18[4] = 0;
  v18[6] = 0;
  v11 = *a3;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v14, &v11, v12);
  v7 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v7);
  if (*(*(v7 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::UndefOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v12);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void mlir::LLVM::AllocaOp::handleBlockArgument(mlir::Operation **a1, uint64_t a2, uint64_t a3, mlir::OpBuilder *a4)
{
  v18 = a3;
  mlir::Operation::getUsers(*a1, v15);
  v5 = v16;
  v6 = v17;
  v14 = v16;
  v13[0] = v15[0];
  for (v13[1] = v15[1]; v14 != v6; v5 = v14)
  {
    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = *(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::DbgDeclareOp,void>::id;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v9 = *(v7 + 24);
      v10 = v7 + 16 * ((*(v7 + 44) >> 23) & 1);
      v12 = *(v10 + 72);
      v11 = *(v10 + 64);
      mlir::OpBuilder::create<mlir::LLVM::DbgValueOp,mlir::BlockArgument &,mlir::LLVM::DILocalVariableAttr,mlir::LLVM::DIExpressionAttr>(a4, v9, &v18, &v12, &v11);
    }

    mlir::ResultRange::UseIterator::operator++(v13);
  }
}

char *mlir::OpBuilder::create<mlir::LLVM::DbgValueOp,mlir::BlockArgument &,mlir::LLVM::DILocalVariableAttr,mlir::LLVM::DIExpressionAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::DbgValueOp>(a1, *(**a2 + 32));
  v15[0] = a2;
  v15[1] = v10;
  v15[2] = v16;
  v15[3] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[8] = 4;
  v18[9] = v19;
  v18[10] = 0x100000000;
  v19[1] = v20;
  v19[2] = 0x100000000;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v20[4] = 0;
  v20[6] = 0;
  mlir::LLVM::DbgValueOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::DbgValueOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void mlir::LLVM::AllocaOp::handlePromotionComplete(mlir::Operation **a1@<X0>, void *a2@<X2>, _BYTE *a3@<X8>)
{
  if (a2 && !*a2)
  {
    v5 = 0;
    v6 = a2[1] & 7;
    v7 = v6 == 7;
    if (v6 == 7)
    {
      v8 = 0;
    }

    else
    {
      v8 = a2;
    }

    if (!v7)
    {
      v9 = v8[1] & 7;
      if (v9 == 6)
      {
        v5 = &v8[3 * v8[2] + 15];
      }

      else
      {
        v5 = &v8[2 * v9 + 2];
      }
    }

    if (*(v5 + 2))
    {
      *(v5 + 2) = 0;
      v11 = *v5;
      v10 = *(v5 + 1);
      *v10 = *v5;
      *(v11 + 8) = v10;
      *v5 = 0;
      *(v5 + 1) = 0;
    }

    mlir::Operation::destroy(v5);
  }

  v12 = *a1;
  if (*(*a1 + 2))
  {
    *(v12 + 2) = 0;
    v14 = *v12;
    v13 = *(v12 + 1);
    *v13 = *v12;
    *(v14 + 8) = v13;
    *v12 = 0;
    *(v12 + 1) = 0;
  }

  mlir::Operation::destroy(v12);
  *a3 = 0;
  a3[16] = 0;
}

uint64_t mlir::LLVM::AllocaOp::getDestructurableSlots@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(*(*this + 72) + 24);
  *&v18 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = this;
  v5 = *(v3 + 8) & 7;
  if (v5 == 6)
  {
    v6 = v3 + 24 * *(v3 + 16);
    v7 = (v6 + 120);
    if (v6 == -120)
    {
LABEL_16:
      *a2 = a2 + 16;
      *(a2 + 8) = 0x100000000;
      goto LABEL_17;
    }
  }

  else
  {
    v7 = (v3 + 16 * v5 + 16);
  }

  this = mlir::detail::constant_int_predicate_matcher::match(&v18, v7);
  if ((this & 1) == 0)
  {
    goto LABEL_16;
  }

  v8 = *(*(*v4 + 16 * ((*(*v4 + 44) >> 23) & 1) + 72) + 8);
  v9 = *v8;
  v10 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID();
  this = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
  if (!this)
  {
    goto LABEL_16;
  }

  v11 = *v8;
  v12 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID();
  this = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
  if (!v8)
  {
    goto LABEL_16;
  }

  this = (*this)(v16);
  if (v17 != 1)
  {
    goto LABEL_16;
  }

  v13 = *v4;
  *&v18 = *v4 - 16;
  v14 = *(*(v13 + 16 * ((*(v13 + 44) >> 23) & 1) + 72) + 8);
  v19[0] = 0;
  v19[1] = 0;
  *(&v18 + 1) = v14;
  v20 = 0;
  llvm::DenseMap<mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>::copyFrom(v19, v16);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x100000000;
  *(a2 + 16) = v18;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  llvm::DenseMap<mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>::copyFrom(a2 + 32, v19);
  ++*(a2 + 8);
  this = MEMORY[0x25F891030](v19[0], 8);
  if (v17)
  {
    this = MEMORY[0x25F891030](v16[0], 8);
  }

LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t mlir::LLVM::AllocaOp::destructure@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int8x16_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v54[8] = *MEMORY[0x277D85DE8];
  a3[1] = vextq_s8(*(*a1 + 8), *(*a1 + 8), 8uLL);
  v9 = *(*(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) + 8);
  if (v9)
  {
    v10 = *v9;
    v11 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v10 + 8, v11);
  }

  else
  {
    result = 0;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v13 = 8;
  if (*(a2 + 20))
  {
    v13 = 12;
  }

  v14 = *(a2 + v13);
  if (v14)
  {
    v15 = 8 * v14;
    v16 = *a2;
    while (*v16 >= 0xFFFFFFFFFFFFFFFELL)
    {
      ++v16;
      v15 -= 8;
      if (!v15)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    v16 = *a2;
  }

  v17 = *a2 + 8 * v14;
  if (v16 != v17)
  {
    v45 = 0;
    v43 = result;
    v44 = v9;
    v42 = a4;
LABEL_14:
    v46 = *v16;
    v18 = (*(result + 8))(result, v9);
    v19 = *(*a1 + 24);
    v20 = *(**v19 + 32);
    LODWORD(v49[0]) = 0;
    v21 = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMPointerType,unsigned int &>(v20, v49);
    v22 = *(*(*a1 + 72) + 24);
    v23 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::AllocaOp>(a3, *(**v19 + 32));
    v49[0] = v19;
    v49[1] = v23;
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
    mlir::LLVM::AllocaOp::build(a3, v49, v21, v22, 0, v18, 0);
    v24 = mlir::Operation::create(v49);
    mlir::OpBuilder::insert(a3, v24);
    if (*(*(v24 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::AllocaOp,void>::id)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    mlir::OperationState::~OperationState(v49);
    if (!v25)
    {
      v28 = 0;
      v29 = v46;
      v30 = v42;
      goto LABEL_25;
    }

    v26 = *(v25 + 6);
    if (*(v26 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v28 = *(*(v26 + 8) + 32);
      v29 = v46;
      v30 = v42;
      if (!v28)
      {
        goto LABEL_25;
      }

      v35 = mlir::detail::TypeIDResolver<mlir::DestructurableAllocationOpInterface,void>::resolveTypeID();
      v34 = (*(*v28 + 104))(v28, v35, v26);
    }

    else
    {
      v27 = mlir::detail::TypeIDResolver<mlir::DestructurableAllocationOpInterface,void>::resolveTypeID();
      v28 = mlir::detail::InterfaceMap::lookup(v26 + 32, v27);
      v29 = v46;
      v30 = v42;
      if (v28)
      {
        goto LABEL_25;
      }

      v31 = *(v26 + 24);
      v32 = *(v25 + 6);
      v33 = mlir::detail::TypeIDResolver<mlir::DestructurableAllocationOpInterface,void>::resolveTypeID();
      v34 = (*(*v31 + 104))(v31, v33, v32);
    }

    v28 = v34;
LABEL_25:
    v36 = *(v30 + 8);
    if (v36 >= *(v30 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v30, (v30 + 16), v36 + 1, 16);
      v36 = *(v30 + 8);
    }

    v37 = (*v30 + 16 * v36);
    *v37 = v25;
    v37[1] = v28;
    ++*(v30 + 8);
    v48 = 0;
    v38 = *(a5 + 16);
    if (llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::LookupBucketFor<mlir::Attribute>(v45, v38, v29, &v48))
    {
LABEL_33:
      result = v43;
      v9 = v44;
      while (1)
      {
        if (++v16 == v17)
        {
          goto LABEL_40;
        }

        if (*v16 < 0xFFFFFFFFFFFFFFFELL)
        {
          if (v16 != v17)
          {
            goto LABEL_14;
          }

          goto LABEL_40;
        }
      }
    }

    v39 = v48;
    v49[0] = v48;
    v40 = *(a5 + 8);
    if (4 * v40 + 4 >= 3 * v38)
    {
      v38 *= 2;
    }

    else if (v38 + ~v40 - *(a5 + 12) > v38 >> 3)
    {
LABEL_30:
      *(a5 + 8) = v40 + 1;
      if (*v39 != -4096)
      {
        --*(a5 + 12);
      }

      *v39 = v29;
      v39[1] = (v25 - 16);
      v39[2] = v18;
      goto LABEL_33;
    }

    llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::grow(a5, v38);
    v45 = *a5;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::LookupBucketFor<mlir::Attribute>(*a5, *(a5 + 16), v29, v49);
    v40 = *(a5 + 8);
    v39 = v49[0];
    goto LABEL_30;
  }

LABEL_40:
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::StoreOp::getStored(uint64_t a1, uint64_t a2, mlir::OpBuilder *a3, uint64_t a4, const mlir::DataLayout *a5)
{
  v108 = *MEMORY[0x277D85DE8];
  v8 = *(*a1 + 24);
  v9 = *(*(*a1 + 72) + 24);
  TypeSizeInBits = mlir::DataLayout::getTypeSizeInBits(a5, *(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
  }

  v13 = mlir::DataLayout::getTypeSizeInBits(a5, *(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
  }

  if (v13 == TypeSizeInBits)
  {
    v14 = *MEMORY[0x277D85DE8];
    v15 = *(a4 + 8) & 0xFFFFFFFFFFFFFFF8;

    return castSameSizedTypes(a3, v8, v9, v15, a5);
  }

  else
  {
    v72 = (v13 - TypeSizeInBits);
    v17 = castToSameSizedInt(a3, v8, a4, a5);
    v18 = castToSameSizedInt(a3, v8, v9, a5);
    v19 = (*(v17 + 8) & 0xFFFFFFFFFFFFFFF8);
    v81 = v83;
    v82 = 0x100000000;
    v20 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::ZExtOp>(a3, *(**v8 + 32));
    IntegerAttr = v8;
    v86 = v20;
    v87 = v89;
    v88 = 0x400000000;
    v90 = v92;
    v91 = 0x400000000;
    v93 = v95;
    v94 = 0x400000000;
    v96 = 4;
    v97 = &v99;
    v98 = 0x100000000;
    v100 = &v102;
    v101 = 0x100000000;
    v103 = 0;
    v104 = 0;
    v105 = &mlir::detail::TypeIDResolver<void,void>::id;
    v106 = 0;
    v107 = 0;
    __src = v19;
    v78 = v18;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v87, &v78, 0, &v78, 1);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v90, &__src, v76);
    v21 = mlir::Operation::create(&IntegerAttr);
    v22 = v21;
    v23 = *(a3 + 2);
    if (v23)
    {
      v24 = *(a3 + 3);
      *(v21 + 2) = v23;
      *(v21 + 8) = -1;
      v25 = *v24;
      *v21 = *v24;
      *(v21 + 1) = v24;
      *(v25 + 1) = v21;
      *v24 = v21;
    }

    if ((mlir::OpBuilder::tryFold(a3, v21, &v81) & 1) != 0 && v82)
    {
      if (*(v22 + 2))
      {
        *(v22 + 2) = 0;
        v27 = *v22;
        v26 = *(v22 + 1);
        *v26 = *v22;
        *(v27 + 8) = v26;
        *v22 = 0;
        *(v22 + 1) = 0;
      }

      mlir::Operation::destroy(v22);
    }

    else
    {
      v28 = *(v22 + 9);
      if (v28)
      {
        v29 = (v22 - 16);
      }

      else
      {
        v29 = 0;
      }

      LODWORD(v82) = 0;
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v81, v29, 0, v29, v28);
      if (*(a3 + 2))
      {
        v30 = *(a3 + 1);
        if (v30)
        {
          (*(*v30 + 16))(v30, v22, 0, 0);
        }
      }
    }

    mlir::OperationState::~OperationState(&IntegerAttr);
    v31 = *v81;
    if (v81 != v83)
    {
      free(v81);
    }

    if (isBigEndian(a5))
    {
      IntegerAttr = mlir::Builder::getIntegerAttr(a3, *(v17 + 8) & 0xFFFFFFFFFFFFFFF8, v72);
      v32 = mlir::OpBuilder::create<mlir::LLVM::ConstantOp,mlir::IntegerAttr>(a3, v8, &IntegerAttr);
      v81 = v83;
      v82 = 0x100000000;
      v33 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::ShlOp>(a3, *(**v8 + 32));
      IntegerAttr = v8;
      v86 = v33;
      v87 = v89;
      v88 = 0x400000000;
      v90 = v92;
      v91 = 0x400000000;
      v93 = v95;
      v94 = 0x400000000;
      v96 = 4;
      v97 = &v99;
      v98 = 0x100000000;
      v100 = &v102;
      v101 = 0x100000000;
      v103 = 0;
      v104 = 0;
      v105 = &mlir::detail::TypeIDResolver<void,void>::id;
      v106 = 0;
      v107 = 0;
      mlir::LLVM::ShlOp::build(a3, &IntegerAttr, v31, (v32 - 16), 0);
      v34 = mlir::Operation::create(&IntegerAttr);
      v35 = v34;
      v36 = *(a3 + 2);
      if (v36)
      {
        v37 = *(a3 + 3);
        *(v34 + 2) = v36;
        *(v34 + 8) = -1;
        v38 = *v37;
        *v34 = *v37;
        *(v34 + 1) = v37;
        *(v38 + 1) = v34;
        *v37 = v34;
      }

      if ((mlir::OpBuilder::tryFold(a3, v34, &v81) & 1) != 0 && v82)
      {
        if (*(v35 + 2))
        {
          *(v35 + 2) = 0;
          v40 = *v35;
          v39 = *(v35 + 1);
          *v39 = *v35;
          *(v40 + 8) = v39;
          *v35 = 0;
          *(v35 + 1) = 0;
        }

        mlir::Operation::destroy(v35);
      }

      else
      {
        v41 = *(v35 + 9);
        if (v41)
        {
          v42 = (v35 - 16);
        }

        else
        {
          v42 = 0;
        }

        LODWORD(v82) = 0;
        llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v81, v42, 0, v42, v41);
        if (*(a3 + 2))
        {
          v43 = *(a3 + 1);
          if (v43)
          {
            (*(*v43 + 16))(v43, v35, 0, 0);
          }
        }
      }

      mlir::OperationState::~OperationState(&IntegerAttr);
      v31 = *v81;
      if (v81 != v83)
      {
        free(v81);
      }
    }

    v74 = 1;
    v73 = 0;
    if (isBigEndian(a5))
    {
      llvm::APInt::getAllOnes(v72, &v81);
      llvm::APInt::zext(&v81, v13, &IntegerAttr);
      v73 = IntegerAttr;
      v74 = v86;
      LODWORD(v86) = 0;
      if (v82 >= 0x41 && v81)
      {
        MEMORY[0x25F891010](v81, 0x1000C8000313F17);
      }
    }

    else
    {
      llvm::APInt::getAllOnes(TypeSizeInBits, &v81);
      llvm::APInt::zext(&v81, v13, &IntegerAttr);
      v73 = IntegerAttr;
      v74 = v86;
      LODWORD(v86) = 0;
      if (v82 >= 0x41 && v81)
      {
        MEMORY[0x25F891010](v81, 0x1000C8000313F17);
      }

      llvm::APInt::flipAllBits(&v73);
    }

    IntegerAttr = mlir::IntegerAttr::get((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8), &v73);
    v44 = mlir::OpBuilder::create<mlir::LLVM::ConstantOp,mlir::IntegerAttr>(a3, v8, &IntegerAttr);
    v78 = &v80;
    v79 = 0x100000000;
    v45 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::AndOp,void>::id, *(**v8 + 32));
    if ((v46 & 1) == 0)
    {
      v84 = 1283;
      v83[0] = "llvm.and";
      v83[1] = 8;
      v77 = 259;
      llvm::operator+(&v81, &__src, &IntegerAttr);
      llvm::report_fatal_error(&IntegerAttr, 1);
    }

    IntegerAttr = v8;
    v86 = v45;
    v87 = v89;
    v88 = 0x400000000;
    v90 = v92;
    v91 = 0x400000000;
    v93 = v95;
    v94 = 0x400000000;
    v96 = 4;
    v97 = &v99;
    v98 = 0x100000000;
    v100 = &v102;
    v101 = 0x100000000;
    v103 = 0;
    v104 = 0;
    v105 = &mlir::detail::TypeIDResolver<void,void>::id;
    v106 = 0;
    v107 = 0;
    mlir::LLVM::AndOp::build(a3, &IntegerAttr, v17, (v44 - 16));
    v47 = mlir::Operation::create(&IntegerAttr);
    v48 = v47;
    v49 = *(a3 + 2);
    if (v49)
    {
      v50 = *(a3 + 3);
      *(v47 + 2) = v49;
      *(v47 + 8) = -1;
      v51 = *v50;
      *v47 = *v50;
      *(v47 + 1) = v50;
      *(v51 + 1) = v47;
      *v50 = v47;
    }

    if ((mlir::OpBuilder::tryFold(a3, v47, &v78) & 1) != 0 && v79)
    {
      if (*(v48 + 2))
      {
        *(v48 + 2) = 0;
        v53 = *v48;
        v52 = *(v48 + 1);
        *v52 = *v48;
        *(v53 + 8) = v52;
        *v48 = 0;
        *(v48 + 1) = 0;
      }

      mlir::Operation::destroy(v48);
    }

    else
    {
      v54 = *(v48 + 9);
      if (v54)
      {
        v55 = (v48 - 16);
      }

      else
      {
        v55 = 0;
      }

      LODWORD(v79) = 0;
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v78, v55, 0, v55, v54);
      if (*(a3 + 2))
      {
        v56 = *(a3 + 1);
        if (v56)
        {
          (*(*v56 + 16))(v56, v48, 0, 0);
        }
      }
    }

    mlir::OperationState::~OperationState(&IntegerAttr);
    v57 = *v78;
    if (v78 != &v80)
    {
      free(v78);
    }

    v81 = v83;
    v82 = 0x100000000;
    v58 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::OrOp>(a3, *(**v8 + 32));
    IntegerAttr = v8;
    v86 = v58;
    v87 = v89;
    v88 = 0x400000000;
    v90 = v92;
    v91 = 0x400000000;
    v93 = v95;
    v94 = 0x400000000;
    v96 = 4;
    v97 = &v99;
    v98 = 0x100000000;
    v100 = &v102;
    v101 = 0x100000000;
    v103 = 0;
    v104 = 0;
    v105 = &mlir::detail::TypeIDResolver<void,void>::id;
    v106 = 0;
    v107 = 0;
    mlir::LLVM::OrOp::build(a3, &IntegerAttr, v57, v31, 0);
    v59 = mlir::Operation::create(&IntegerAttr);
    v60 = v59;
    v61 = *(a3 + 2);
    if (v61)
    {
      v62 = *(a3 + 3);
      *(v59 + 2) = v61;
      *(v59 + 8) = -1;
      v63 = *v62;
      *v59 = *v62;
      *(v59 + 1) = v62;
      *(v63 + 1) = v59;
      *v62 = v59;
    }

    if ((mlir::OpBuilder::tryFold(a3, v59, &v81) & 1) != 0 && v82)
    {
      if (*(v60 + 2))
      {
        *(v60 + 2) = 0;
        v65 = *v60;
        v64 = *(v60 + 1);
        *v64 = *v60;
        *(v65 + 8) = v64;
        *v60 = 0;
        *(v60 + 1) = 0;
      }

      mlir::Operation::destroy(v60);
    }

    else
    {
      v66 = *(v60 + 9);
      if (v66)
      {
        v67 = (v60 - 16);
      }

      else
      {
        v67 = 0;
      }

      LODWORD(v82) = 0;
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v81, v67, 0, v67, v66);
      if (*(a3 + 2))
      {
        v68 = *(a3 + 1);
        if (v68)
        {
          (*(*v68 + 16))(v68, v60, 0, 0);
        }
      }
    }

    mlir::OperationState::~OperationState(&IntegerAttr);
    v69 = *v81;
    if (v81 != v83)
    {
      free(v81);
    }

    v70 = castIntValueToSameSizedType(a3, v8, v69, *(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v74 >= 0x41 && v73)
    {
      MEMORY[0x25F891010](v73, 0x1000C8000313F17);
    }

    v71 = *MEMORY[0x277D85DE8];
    return v70;
  }
}

uint64_t mlir::LLVM::LoadOp::canUsesBeRemoved(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + 3) - *(a3 + 4) != 1)
  {
    return 0;
  }

  v6 = *a3;
  v7 = 8;
  if (*(a3 + 20))
  {
    v7 = 12;
  }

  v8 = *(a3 + v7);
  if (v8)
  {
    v9 = 8 * v8;
    v10 = v6 + 8 * v8;
    while (*v6 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v6 += 8;
      v9 -= 8;
      if (!v9)
      {
        v6 = v10;
        break;
      }
    }
  }

  v11 = *(*v6 + 24);
  if (v11 != *a2 || *(*(*a1 + 72) + 24) != v11)
  {
    return 0;
  }

  result = areConversionCompatible(a5, *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8, a2[1], 1);
  if (result)
  {
    return *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 144) == 0;
  }

  return result;
}

uint64_t areConversionCompatible(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 == a3)
  {
    return 1;
  }

  result = isSupportedTypeForConversion(a2);
  if (result)
  {
    result = isSupportedTypeForConversion(a3);
    if (result)
    {
      TypeSize = mlir::DataLayout::getTypeSize(a1, a2);
      if (v9)
      {
      }

      v12 = mlir::DataLayout::getTypeSize(a1, a3);
      if (v11)
      {
      }

      if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id && *(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
      {
        return TypeSize == v12;
      }

      else if (a4)
      {
        return TypeSize <= v12;
      }

      else
      {
        return TypeSize >= v12;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::LoadOp::removeBlockingUses(uint64_t a1, uint64_t a2, uint64_t a3, mlir::OpBuilder *a4, uint64_t *a5, const mlir::DataLayout *a6)
{
  v10 = *(*a1 + 24);
  v11 = *(*a1 - 8);
  v24 = a5;
  v12 = a5[1];
  TypeSizeInBits = mlir::DataLayout::getTypeSizeInBits(a6, v12 & 0xFFFFFFFFFFFFFFF8);
  if (v13)
  {
  }

  v16 = mlir::DataLayout::getTypeSizeInBits(a6, v11 & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
  }

  v17 = TypeSizeInBits - v16;
  if (v17)
  {
    v23 = castToSameSizedInt(a4, v10, a5, a6);
    if (isBigEndian(a6))
    {
      IntegerAttr = mlir::Builder::getIntegerAttr(a4, v12 & 0xFFFFFFFFFFFFFFF8, v17);
      v22 = mlir::OpBuilder::create<mlir::LLVM::ConstantOp,mlir::IntegerAttr>(a4, v10, &IntegerAttr);
      v23 = mlir::OpBuilder::createOrFold<mlir::LLVM::LShrOp,mlir::Value &,mlir::LLVM::ConstantOp &>(a4, v10, &v24, &v22);
    }

    v22 = mlir::IntegerType::get(*a4, v16, 0);
    v23 = mlir::OpBuilder::create<mlir::LLVM::TruncOp,mlir::IntegerType,mlir::Value &>(a4, v10, &v22, &v23) - 16;
    v18 = castIntValueToSameSizedType(a4, v10, v23, v11 & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v18 = castSameSizedTypes(a4, v10, a5, v11 & 0xFFFFFFFFFFFFFFF8, a6);
  }

  v19 = (*a1 - 16);
  v24 = v18;
  mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v19, &v24);
  return 1;
}

uint64_t mlir::LLVM::StoreOp::canUsesBeRemoved(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + 3) - *(a3 + 4) != 1)
  {
    return 0;
  }

  v6 = *a3;
  v7 = 8;
  if (*(a3 + 20))
  {
    v7 = 12;
  }

  v8 = *(a3 + v7);
  if (v8)
  {
    v9 = 8 * v8;
    v10 = v6 + 8 * v8;
    while (*v6 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v6 += 8;
      v9 -= 8;
      if (!v9)
      {
        v6 = v10;
        break;
      }
    }
  }

  v11 = *(*v6 + 24);
  if (v11 != *a2)
  {
    return 0;
  }

  v12 = *(*a1 + 72);
  if (*(v12 + 56) != v11)
  {
    return 0;
  }

  v14 = *(v12 + 24);
  if (v14 == v11)
  {
    return 0;
  }

  result = areConversionCompatible(a5, a2[1], *(v14 + 8) & 0xFFFFFFFFFFFFFFF8, 0);
  if (result)
  {
    return *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 136) == 0;
  }

  return result;
}

BOOL isValidAccessType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  TypeSize = mlir::DataLayout::getTypeSize(a3, a2);
  if (v5)
  {
  }

  v8 = mlir::DataLayout::getTypeSize(a3, *(a1 + 8));
  if (v7)
  {
  }

  return TypeSize <= v8;
}

uint64_t mlir::LLVM::LoadOp::canRewire(uint64_t a1, uint64_t a2, llvm::SmallPtrSetImplBase *a3, uint64_t a4, uint64_t a5)
{
  if (*(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 144))
  {
    return 0;
  }

  v10 = mlir::IntegerType::get(*(***(*a1 + 24) + 32), 32, 0);
  v11 = mlir::IntegerAttr::get(v10, 0);
  result = getTypeAtIndex(a2, v11);
  if (result)
  {
    v12 = result;
    TypeSize = mlir::DataLayout::getTypeSize(a5, *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v13)
    {
    }

    v16 = mlir::DataLayout::getTypeSize(a5, v12);
    if (v15)
    {
    }

    if (TypeSize <= v16)
    {
      llvm::SmallPtrSetImpl<mlir::Attribute>::insert(a3, v11, v17);
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t getTypeAtIndex(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v2 = **(a1 + 8);
  v3 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID();
  v4 = mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  (*v4)(v8);
  if (v9 == 1 && (v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>,mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>::doFind<mlir::Attribute>(v8, &v10)) != 0)
  {
    v6 = *(v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v9 == 1)
  {
    MEMORY[0x25F891030](v8[0], 8);
  }

  return v6;
}

const void **llvm::SmallPtrSetImpl<mlir::Attribute>::insert@<X0>(llvm::SmallPtrSetImplBase *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  result = llvm::SmallPtrSetImplBase::insert_imp(a1, a2);
  v7 = 8;
  if (*(a1 + 20))
  {
    v7 = 12;
  }

  v8 = *a1 + 8 * *(a1 + v7);
  if (v8 != result)
  {
    while (*result >= 0xFFFFFFFFFFFFFFFELL)
    {
      if (++result == v8)
      {
        result = v8;
        break;
      }
    }
  }

  *a3 = result;
  *(a3 + 8) = v8;
  *(a3 + 16) = v6;
  return result;
}

uint64_t mlir::LLVM::LoadOp::rewire(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = mlir::IntegerType::get(*(***(*a1 + 24) + 32), 32, 0);
  v14 = mlir::IntegerAttr::get(v5, 0);
  v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::doFind<mlir::Attribute>(a3, &v14);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = *a3 + 24 * *(a3 + 16);
  }

  v8 = *(*a1 + 72);
  v9 = *(v7 + 8);
  v10 = v8[1];
  if (v10)
  {
    v11 = *v8;
    *v10 = *v8;
    if (v11)
    {
      *(v11 + 8) = v8[1];
    }
  }

  v8[3] = v9;
  v12 = *v9;
  *v8 = *v9;
  v8[1] = v9;
  if (v12)
  {
    *(v12 + 8) = v8;
  }

  *v9 = v8;
  return 0;
}

uint64_t mlir::LLVM::StoreOp::canRewire(uint64_t *a1, void *a2, llvm::SmallPtrSetImplBase *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  if (*(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 136) || *(*(v5 + 72) + 24) == *a2)
  {
    return 0;
  }

  v11 = mlir::IntegerType::get(*(***(v5 + 24) + 32), 32, 0);
  v12 = mlir::IntegerAttr::get(v11, 0);
  result = getTypeAtIndex(a2, v12);
  if (result)
  {
    v13 = result;
    TypeSize = mlir::DataLayout::getTypeSize(a5, *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v14)
    {
    }

    v17 = mlir::DataLayout::getTypeSize(a5, v13);
    if (v16)
    {
    }

    if (TypeSize <= v17)
    {
      llvm::SmallPtrSetImpl<mlir::Attribute>::insert(a3, v12, v18);
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t mlir::LLVM::StoreOp::rewire(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = mlir::IntegerType::get(*(***(*a1 + 24) + 32), 32, 0);
  v15 = mlir::IntegerAttr::get(v5, 0);
  v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::doFind<mlir::Attribute>(a3, &v15);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = *a3 + 24 * *(a3 + 16);
  }

  v8 = *(*a1 + 72);
  v9 = v8 + 4;
  v10 = *(v7 + 8);
  v11 = v8[5];
  if (v11)
  {
    v12 = *v9;
    *v11 = *v9;
    if (v12)
    {
      *(v12 + 8) = v8[5];
    }
  }

  v8[7] = v10;
  v13 = *v10;
  v8[4] = *v10;
  v8[5] = v10;
  if (v13)
  {
    *(v13 + 8) = v9;
  }

  *v10 = v9;
  return 0;
}

void forwardToUsers(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 36);
  v3 = a1 - 16;
  if (v2)
  {
    v4 = (a1 - 16);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v8 = v4;
      if (i)
      {
        v9 = *(a1 - 8) & 7;
        v10 = v3;
        v11 = i;
        if (v9 != 6)
        {
          v12 = (5 - v9);
          v11 = i - v12;
          if (i <= v12)
          {
            v8 = (v3 - 16 * i);
            goto LABEL_12;
          }

          v10 = v3 - 16 * v12;
        }

        v8 = (v10 - 24 * v11);
      }

LABEL_12:
      for (j = *v8; j; j = *j)
      {
        llvm::SmallVectorTemplateBase<mlir::OpOperand *,true>::push_back(a2, j);
      }
    }
  }
}

BOOL mlir::LLVM::DbgValueOp::canUsesBeRemoved(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 3) - *(a2 + 4) != 1)
  {
    return 0;
  }

  v2 = *a2;
  v3 = 8;
  if (*(a2 + 20))
  {
    v3 = 12;
  }

  v4 = *(a2 + v3);
  if (v4)
  {
    v5 = 8 * v4;
    v6 = v2 + 8 * v4;
    while (*v2 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v2 += 8;
      v5 -= 8;
      if (!v5)
      {
        v2 = v6;
        return *(*v2 + 24) == *(*(*a1 + 72) + 24);
      }
    }
  }

  return *(*v2 + 24) == *(*(*a1 + 72) + 24);
}

uint64_t mlir::LLVM::DbgValueOp::removeBlockingUses(uint64_t *a1, uint64_t a2, mlir::OpBuilder *a3)
{
  v4 = *a1;
  *(a3 + 2) = *(*a1 + 16);
  *(a3 + 3) = v4;
  v5 = *(*(v4 + 72) + 24);
  v6 = *(v5 + 8);
  if ((~*(v5 + 8) & 7) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 != 6)
  {
    v9 = v7 + 16 * v8 + 16;
    goto LABEL_9;
  }

  v9 = v7 + 24 * *(v7 + 16) + 120;
  if (v9)
  {
LABEL_9:
    v10 = (v9 + 24);
    goto LABEL_10;
  }

LABEL_7:
  v10 = (v5 + 32);
LABEL_10:
  v11 = *v10;
  v19 = v6 & 0xFFFFFFFFFFFFFFF8;
  v12 = mlir::OpBuilder::create<mlir::LLVM::UndefOp,mlir::Type>(a3, v11, &v19);
  v13 = *(*a1 + 72);
  v14 = v12 - 16;
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
  v17 = *v14;
  *v13 = *v14;
  v13[1] = v14;
  if (v17)
  {
    *(v17 + 8) = v13;
  }

  *v14 = v13;
  return 0;
}

char *mlir::OpBuilder::create<mlir::LLVM::UndefOp,mlir::Type>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::UndefOp>(a1, *(**a2 + 32));
  v12[0] = a2;
  v12[1] = v6;
  v12[2] = &v13;
  v12[3] = 0x400000000;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[8] = 4;
  v16[9] = v17;
  v16[10] = 0x100000000;
  v17[1] = v18;
  v17[2] = 0x100000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v18[4] = 0;
  v18[6] = 0;
  v11 = *a3;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v14, &v11, v12);
  v7 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v7);
  if (*(*(v7 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::UndefOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v12);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

char *mlir::LLVM::DbgDeclareOp::visitReplacedValues(char *result, __int128 *a2, uint64_t a3, int8x16_t *a4)
{
  if (a3)
  {
    v6 = result;
    v7 = 16 * a3;
    do
    {
      v8 = *a2++;
      v13 = v8;
      a4[1] = vextq_s8(*(v8 + 8), *(v8 + 8), 8uLL);
      v9 = *(*v6 + 24);
      v10 = *v6 + 16 * ((*(*v6 + 44) >> 23) & 1);
      v12 = *(v10 + 72);
      v11 = *(v10 + 64);
      result = mlir::OpBuilder::create<mlir::LLVM::DbgValueOp,mlir::Value &,mlir::LLVM::DILocalVariableAttr,mlir::LLVM::DIExpressionAttr>(a4, v9, &v13 + 1, &v12, &v11);
      v7 -= 16;
    }

    while (v7);
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::LLVM::DbgValueOp,mlir::Value &,mlir::LLVM::DILocalVariableAttr,mlir::LLVM::DIExpressionAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::DbgValueOp>(a1, *(**a2 + 32));
  v15[0] = a2;
  v15[1] = v10;
  v15[2] = v16;
  v15[3] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[8] = 4;
  v18[9] = v19;
  v18[10] = 0x100000000;
  v19[1] = v20;
  v19[2] = 0x100000000;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v20[4] = 0;
  v20[6] = 0;
  mlir::LLVM::DbgValueOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::DbgValueOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t mlir::LLVM::GEPOp::canUsesBeRemoved(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v4 = *(v19 + 16 * ((*(v19 + 44) >> 23) & 1) + 80);
  ODSOperands = mlir::LLVM::GEPOp::getODSOperands(&v19, 1u);
  v21 = v4;
  v22 = ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2;
  v7 = *(v4 + 24);
  v8 = *(v4 + 32);
  v23 = v6;
  v24 = &v21;
  v25 = v7;
  v26 = v22;
  v27 = 0;
  if (v8 <= 3 && v6 == 0)
  {
LABEL_17:
    forwardToUsers(*a1, a3);
    result = 1;
  }

  else
  {
    v10 = v6;
    v11 = (v7 + (v8 & 0xFFFFFFFFFFFFFFFCLL));
    while (1)
    {
      v12 = mlir::LLVM::GEPIndicesAdaptor<mlir::ValueRange>::iterator::operator*(&v24);
      if ((v12 & 4) != 0)
      {
        break;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFF8;
      if ((v12 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        break;
      }

      v20 = *(v13 + 24);
      if (v20 >= 0x41)
      {
        operator new[]();
      }

      if (*(v13 + 16))
      {
        break;
      }

      v14 = v27;
      if (*v25 == 0x80000000)
      {
        v14 = ++v27;
      }

      v15 = ++v25;
      if (v24 == &v21 && v15 == v11 && v14 == v10)
      {
        goto LABEL_17;
      }
    }

    result = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::GEPOp::ensureOnlySafeAccesses(mlir::LLVM::GEPOp *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(mlir::LLVM::GEPOp::getODSOperands(a1, 0) + 24) != *a2)
  {
    return 1;
  }

  v9 = gepToByteOffset(a4, *a1);
  if (v10)
  {
    v11 = v9;
    TypeSize = mlir::DataLayout::getTypeSize(a4, a2[1]);
    if (v12)
    {
    }

    if (TypeSize > v11)
    {
      v14 = *a1;
      if (*(*a1 + 36))
      {
        v15 = *a1 - 16;
      }

      else
      {
        v15 = 0;
      }

      v17[0] = v15;
      v16 = *(***(v14 + 24) + 32);
      v18 = (TypeSize - v11);
      v19 = mlir::IntegerType::get(v16, 8, 0);
      v17[1] = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMArrayType,mlir::Type,unsigned long long>(v16, &v19, &v18);
      llvm::SmallVectorImpl<mlir::MemorySlot>::emplace_back<mlir::MemorySlot>(a3, v17);
      return 1;
    }
  }

  return 0;
}

unint64_t gepToByteOffset(uint64_t a1, uint64_t a2)
{
  v56[6] = *MEMORY[0x277D85DE8];
  v46 = a2;
  v54 = v56;
  v55 = 0x600000000;
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
  ODSOperands = mlir::LLVM::GEPOp::getODSOperands(&v46, 1u);
  v51 = v3;
  v52 = ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2;
  v53 = v5;
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  v47 = &v51;
  v48 = v6;
  v49 = v52;
  v50 = 0;
  if (v7 > 3 || v5 != 0)
  {
    v9 = v5;
    v10 = (v6 + (v7 & 0xFFFFFFFFFFFFFFFCLL));
    do
    {
      v11 = mlir::LLVM::GEPIndicesAdaptor<mlir::ValueRange>::iterator::operator*(&v47);
      v12 = v11 & 0xFFFFFFFFFFFFFFF8;
      if ((v11 & 4) != 0)
      {
        v12 = 0;
      }

      v45 = v12;
      if (!v12 || (Int = mlir::IntegerAttr::getInt(&v45), Int < 0))
      {
        v41 = 0;
        v40 = 0;
        goto LABEL_48;
      }

      llvm::SmallVectorTemplateBase<unsigned long long,true>::push_back(&v54, Int);
      v14 = v50;
      if (*v48 == 0x80000000)
      {
        v14 = ++v50;
      }

      v15 = ++v48;
    }

    while (v47 != &v51 || v15 != v10 || v14 != v9);
  }

  v16 = *(*(v46 + 16 * ((*(v46 + 44) >> 23) & 1) + 64) + 8);
  v17 = *v54;
  v19 = mlir::DataLayout::getTypeSize(a1, v16) * v17;
  if (v18)
  {
  }

  if (v55 == 1)
  {
LABEL_46:
    v40 = v19 & 0xFFFFFFFFFFFFFF00;
    v41 = v19;
    goto LABEL_48;
  }

  v20 = v54 + 8 * v55;
  v21 = (v54 + 8);
  v22 = &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id;
  v44 = v20;
  while (1)
  {
    v23 = *v21;
    v24 = *(*v16 + 136);
    if (v24 == v22)
    {
      TypeSize = mlir::DataLayout::getTypeSize(a1, *(v16 + 8));
      if (v38)
      {
      }

      v19 += TypeSize * v23;
      v16 = *(v16 + 8);
      goto LABEL_45;
    }

    if (v24 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id)
    {
      break;
    }

    v25 = *(v16 + 24);
    v26 = v25 & 1;
    v27 = 16;
    if ((v25 & 1) == 0)
    {
      v27 = 8;
    }

    v28 = *(v16 + v27);
    if (v23)
    {
      v29 = v22;
      for (i = 0; i != v23; ++i)
      {
        v31 = *(v16 + 24);
        if (v31)
        {
          v31 = *(v16 + 28);
        }

        if ((v31 & 2) == 0)
        {
          TypeABIAlignment = mlir::DataLayout::getTypeABIAlignment(a1, *(v28 + 8 * i));
          v33 = (v19 - (v19 != 0)) / TypeABIAlignment;
          if (v19)
          {
            ++v33;
          }

          v19 = v33 * TypeABIAlignment;
        }

        v35 = mlir::DataLayout::getTypeSize(a1, *(v28 + 8 * i));
        if (v34)
        {
        }

        v19 += v35;
      }

      v25 = *(v16 + 24);
      v26 = v25 & 1;
      v22 = v29;
      v20 = v44;
    }

    if (v26)
    {
      v25 = *(v16 + 28);
    }

    if ((v25 & 2) == 0)
    {
      v36 = mlir::DataLayout::getTypeABIAlignment(a1, *(v28 + 8 * v23));
      v37 = (v19 - (v19 != 0)) / v36;
      if (v19)
      {
        ++v37;
      }

      v19 = v37 * v36;
    }

    v16 = *(v28 + 8 * v23);
LABEL_45:
    if (++v21 == v20)
    {
      goto LABEL_46;
    }
  }

  v41 = 0;
  v40 = 0;
LABEL_48:
  if (v54 != v56)
  {
    free(v54);
  }

  v42 = *MEMORY[0x277D85DE8];
  return v40 | v41;
}

uint64_t llvm::SmallVectorImpl<mlir::MemorySlot>::emplace_back<mlir::MemorySlot>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::MemorySlot,true>::push_back(a1, *a2, a2[1]);
    v4 = *(a1 + 8);
  }

  else
  {
    *(*a1 + 16 * v3) = *a2;
    v4 = *(a1 + 8) + 1;
    *(a1 + 8) = v4;
  }

  return *a1 + 16 * v4 - 16;
}

uint64_t mlir::LLVM::GEPOp::canRewire(mlir::LLVM::GEPOp *a1, void *a2, llvm::SmallPtrSetImplBase *a3, uint64_t a4, uint64_t a5)
{
  if (*(*(*(*(mlir::LLVM::GEPOp::getODSOperands(a1, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id || *(mlir::LLVM::GEPOp::getODSOperands(a1, 0) + 24) != *a2)
  {
    return 0;
  }

  getSubslotAccessInfo(a2, a5, *a1, v23);
  v10 = v24;
  if (v24 == 1)
  {
    v12 = mlir::IntegerType::get(*(***(*a1 + 24) + 32), 32, 0);
    v22 = mlir::IntegerAttr::get(v12, v23[0]);
    llvm::SmallPtrSetImpl<mlir::Attribute>::insert(a3, v22, v21);
    v13 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>,mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>::doFind<mlir::Attribute>(a2 + 2, &v22);
    if (v13)
    {
      v14 = *(v13 + 8);
    }

    else
    {
      v14 = 0;
    }

    TypeSize = mlir::DataLayout::getTypeSize(a5, v14);
    if (v15)
    {
    }

    v17 = *(***(*a1 + 24) + 32);
    v18 = (TypeSize - v23[2]);
    v21[0] = mlir::IntegerType::get(v17, 8, 0);
    v25 = v18;
    v19 = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMArrayType,mlir::Type,unsigned long long>(v17, v21, &v25);
    v20 = *a1 - 16;
    if (!*(*a1 + 36))
    {
      v20 = 0;
    }

    v21[0] = v20;
    v21[1] = v19;
    llvm::SmallVectorImpl<mlir::MemorySlot>::emplace_back<mlir::MemorySlot>(a4, v21);
  }

  return v10;
}

unint64_t getSubslotAccessInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = gepToByteOffset(a2, a3);
  if (v8)
  {
    v9 = result;
    v10 = *(a1 + 8);
    result = mlir::DataLayout::getTypeSize(a2, v10);
    v13 = result;
    if (v11)
    {
    }

    if (v9 < v13)
    {
      v14 = *(*v10 + 136);
      if (v14 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id)
      {
        result = mlir::DataLayout::getTypeSize(a2, *(v10 + 8));
        v18 = result;
        if (v17)
        {
        }

        v15 = v9 / v18;
        v12 = v9 % v18;
        LOBYTE(v14) = (v9 / v18) >> 29 == 0;
        if ((v9 / v18) >> 29)
        {
          LODWORD(v15) = 0;
        }

        v16 = v15 & 0xFFFFFF00;
        goto LABEL_39;
      }

      if (v14 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id)
      {
        LOBYTE(v15) = 0;
        v16 = 0;
LABEL_39:
        *a4 = v16 | v15;
        *(a4 + 8) = v12;
        goto LABEL_40;
      }

      v19 = *(v10 + 24);
      if (v19)
      {
        v20 = (v10 + 16);
        LODWORD(v15) = *(v10 + 28) >> 3;
        if (v15)
        {
LABEL_16:
          v21 = 0;
          v22 = 0;
          v23 = *v20;
          v24 = 8 * v15;
          while (1)
          {
            result = mlir::DataLayout::getTypeSize(a2, *(v23 + 8 * v22));
            v26 = result;
            if (v25)
            {
            }

            v27 = *(v10 + 24);
            if (v27)
            {
              v27 = *(v10 + 28);
            }

            if ((v27 & 2) == 0)
            {
              result = mlir::DataLayout::getTypeABIAlignment(a2, *(v23 + 8 * v22));
              v28 = (v21 - (v21 != 0)) / result;
              if (v21)
              {
                ++v28;
              }

              v21 = v28 * result;
              if (v9 < v28 * result)
              {
LABEL_27:
                LOBYTE(v14) = 0;
                LOBYTE(v15) = 0;
                goto LABEL_30;
              }
            }

            if (v9 < v21 + v26)
            {
              break;
            }

            ++v22;
            v21 += v26;
            v24 -= 8;
            if (!v24)
            {
              goto LABEL_27;
            }
          }

          v16 = v22 & 0x1FFFFF00;
          if (v22 >> 29)
          {
            v12 = v22 >> 29;
          }

          else
          {
            v12 = v9 - v21;
          }

          LOBYTE(v14) = v22 >> 29 == 0;
          if (v22 >> 29)
          {
            LOBYTE(v15) = 0;
          }

          else
          {
            LOBYTE(v15) = v22;
          }

          if (v22 >> 29)
          {
            v16 = 0;
          }

          goto LABEL_39;
        }
      }

      else
      {
        v20 = (v10 + 8);
        LODWORD(v15) = v19 >> 2;
        if (v15)
        {
          goto LABEL_16;
        }
      }

      LOBYTE(v14) = 0;
LABEL_30:
      v16 = 0;
      goto LABEL_39;
    }
  }

  LOBYTE(v14) = 0;
  *a4 = 0;
LABEL_40:
  *(a4 + 16) = v14;
  return result;
}

uint64_t mlir::LLVM::GEPOp::rewire(uint64_t *a1, uint64_t a2, uint64_t a3, void **a4, uint64_t a5)
{
  v27[1] = *MEMORY[0x277D85DE8];
  getSubslotAccessInfo(a2, a5, *a1, &v25);
  v8 = mlir::IntegerType::get(*(***(*a1 + 24) + 32), 32, 0);
  v24 = mlir::IntegerAttr::get(v8, v25);
  v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::doFind<mlir::Attribute>(a3, &v24);
  v10 = *(a3 + 16);
  v11 = *a3 + 24 * v10;
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *a3 + 24 * v10;
  }

  v23 = mlir::IntegerType::get(*a4, 8, 0);
  v13 = *a1;
  v14 = *(*a1 + 24);
  v15 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  v27[0] = (v26 << 35) | 4;
  v21[0] = v27;
  v21[1] = 1;
  v22 = v15;
  v20 = *(v13 + 16 * ((*(v13 + 44) >> 23) & 1) + 72) != 0;
  v16 = mlir::OpBuilder::createOrFold<mlir::LLVM::GEPOp,mlir::Type,mlir::IntegerType &,mlir::Value const&,llvm::ArrayRef<mlir::LLVM::GEPArg>,BOOL>(a4, v14, &v22, &v23, (v12 + 8), v21, &v20);
  v17 = (*a1 - 16);
  v21[0] = v16;
  mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v17, v21);
  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t mlir::OpBuilder::createOrFold<mlir::LLVM::GEPOp,mlir::Type,mlir::IntegerType &,mlir::Value const&,llvm::ArrayRef<mlir::LLVM::GEPArg>,BOOL>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, unsigned __int8 *a7)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x100000000;
  mlir::OpBuilder::createOrFold<mlir::LLVM::GEPOp,mlir::Type,mlir::IntegerType &,mlir::Value const&,llvm::ArrayRef<mlir::LLVM::GEPArg>,BOOL>(a1, v10, a2, a3, a4, a5, a6, a7);
  v7 = *v10[0];
  if (v10[0] != v11)
  {
    free(v10[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

char *mlir::LLVM::MemsetOp::getStored(uint64_t *a1, uint64_t a2, mlir::OpBuilder *a3)
{
  v3 = *a1;
  v10 = *(a2 + 8);
  if ((*(v10 + 8) & 0x3FFFFFFF) == 8)
  {
    return *(*(v3 + 72) + 56);
  }

  v9 = 8;
  v6 = *(v3 + 24);
  v8 = *(*(v3 + 72) + 56);
  result = mlir::OpBuilder::create<mlir::LLVM::ZExtOp,mlir::IntegerType &,mlir::detail::TypedValue<mlir::IntegerType>>(a3, v6, &v10, &v8) - 16;
  v11 = result;
  if ((*(v10 + 8) & 0x3FFFFFFFu) >= 9)
  {
    do
    {
      v8 = mlir::OpBuilder::create<mlir::LLVM::ConstantOp,mlir::IntegerType &,unsigned long long &>(a3, *(v3 + 24), &v10, &v9) - 16;
      v7 = mlir::OpBuilder::create<mlir::LLVM::ShlOp,mlir::Value &,mlir::Value &>(a3, *(v3 + 24), &v11, &v8) - 16;
      result = mlir::OpBuilder::create<mlir::LLVM::OrOp,mlir::Value &,mlir::Value &>(a3, *(v3 + 24), &v11, &v7) - 16;
      v11 = result;
      v9 *= 2;
    }

    while (v9 < (*(v10 + 8) & 0x3FFFFFFFu));
  }

  return result;
}

BOOL mlir::LLVM::MemsetOp::canUsesBeRemoved(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v18 = *a1;
  v6 = *(a2 + 8);
  if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 0;
  }

  v7 = v6[2];
  if ((v7 & 7) != 0 || (v7 & 0x3FFFFFFF) == 0)
  {
    return 0;
  }

  if (mlir::LLVM::MemsetOp::getIsVolatile(&v18))
  {
    return 0;
  }

  v13 = v12;
  TypeSize = mlir::DataLayout::getTypeSize(a5, *(a2 + 8));
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v16 = TypeSize;
  if (v15)
  {
  }

  return v11 == v16;
}

BOOL definitelyWritesOnlyWithinSlot<mlir::LLVM::MemsetOp>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*(*(*(*a2 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
  {
    return 0;
  }

  if (*(*(a1 + 72) + 24) != *a2)
  {
    return 0;
  }

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  TypeSize = mlir::DataLayout::getTypeSize(a3, a2[1]);
  if (v8)
  {
  }

  return v7 <= TypeSize;
}

uint64_t mlir::LLVM::MemsetOp::canRewire(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v16 = v7;
  v8 = *(v7 + 48);
  if (*(v8 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v9 = (*(v8 + 8) + 32);
  }

  else
  {
    v9 = (v8 + 24);
  }

  if (***(a2 + 8) != *v9)
  {
    return 0;
  }

  if (mlir::LLVM::MemsetOp::getIsVolatile(&v16))
  {
    return 0;
  }

  v10 = **(a2 + 8);
  v11 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID();
  v12 = mlir::detail::InterfaceMap::lookup(v10 + 8, v11);
  (*v12)(v14);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  MEMORY[0x25F891030](v14[0], 8);
  result = areAllIndicesI32(a2);
  if (result)
  {
    return definitelyWritesOnlyWithinSlot<mlir::LLVM::MemsetOp>(v7, a2, a5);
  }

  return result;
}

uint64_t mlir::LLVM::MemsetOp::rewire(uint64_t *a1, uint64_t a2, uint64_t a3, mlir::OpBuilder *a4, uint64_t a5)
{
  v76[8] = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = **(a2 + 8);
  v11 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID();
  v12 = mlir::detail::InterfaceMap::lookup(v10 + 8, v11);
  (*v12)(&v60);
  v71[0] = 0;
  v58 = v9;
  v13 = *(*(v9 + 72) + 88);
  v70[0] = v71;
  if ((~*(v13 + 8) & 7) == 0)
  {
    v13 = 0;
  }

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = *(v13 + 8) & 7;
  if (v14 == 6)
  {
    v15 = v13 + 24 * *(v13 + 16);
    v16 = v15 + 120;
    if (v15 == -120)
    {
LABEL_6:
      v17 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v16 = v13 + 16 * v14 + 16;
  }

  mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(v70, v16);
  v17 = v71[0];
LABEL_9:
  v18 = *(a2 + 8);
  if (*(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id)
  {
    v19 = v18[6];
    if (v19)
    {
      v19 = v18[7];
    }

    v56 = (v19 >> 1) & 1;
  }

  else
  {
    LOBYTE(v56) = 0;
  }

  v55 = mlir::IntegerType::get(*(***(v9 + 24) + 32), 32, 0);
  if (*(v17 + 6) > 0x40u)
  {
    operator new[]();
  }

  v54 = v17[2];
  if (v61)
  {
    v20 = 0;
    v21 = 0;
    v52 = a3;
    v53 = a5;
    v51 = v17;
    while (1)
    {
      v59 = mlir::IntegerAttr::get(v55, v21);
      v22 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>,mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>::doFind<mlir::Attribute>(&v60, &v59);
      v23 = v60 + 16 * v62;
      if (v22)
      {
        v23 = v22;
      }

      v24 = *(v23 + 8);
      TypeSize = mlir::DataLayout::getTypeSize(a5, v24);
      if (v25)
      {
      }

      if ((v56 & 1) == 0)
      {
        TypeABIAlignment = mlir::DataLayout::getTypeABIAlignment(a5, v24);
        v28 = (v20 - (v20 != 0)) / TypeABIAlignment;
        if (v20)
        {
          ++v28;
        }

        v20 = v28 * TypeABIAlignment;
      }

      if (v54 <= v20)
      {
        goto LABEL_48;
      }

      if (llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::doFind<mlir::Attribute>(a3, &v59))
      {
        break;
      }

LABEL_47:
      v20 += TypeSize;
      if (++v21 >= v61)
      {
        goto LABEL_48;
      }
    }

    if (TypeSize >= v54 - v20)
    {
      v29 = v54 - v20;
    }

    else
    {
      v29 = TypeSize;
    }

    v64 = v59;
    v65 = v58;
    v30 = *(*(v58 + 72) + 88);
    if ((~*(v30 + 8) & 7) != 0)
    {
      v31 = *(*(v58 + 72) + 88);
    }

    else
    {
      v31 = 0;
    }

    v57 = TypeSize;
    if (!v31)
    {
      goto LABEL_38;
    }

    v32 = *(v31 + 8) & 7;
    if (v32 == 6)
    {
      v33 = v31 + 24 * *(v31 + 16) + 120;
      if (!v33)
      {
LABEL_38:
        v34 = (v30 + 32);
LABEL_41:
        v35 = *v34;
        v71[0] = mlir::IntegerAttr::get(v17[1], v29);
        v36 = mlir::OpBuilder::create<mlir::LLVM::ConstantOp,mlir::IntegerAttr>(a4, v35, v71);
        v37 = *(v58 + 24);
        v38 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::doFind<mlir::Attribute>(a3, &v64);
        v39 = a4;
        v40 = *a3;
        v41 = *(a3 + 16);
        v42 = *(*(v58 + 72) + 56);
        IsVolatile = mlir::LLVM::MemsetOp::getIsVolatile(&v65);
        v44 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::MemsetOp,void>::id, *(**v37 + 32));
        if ((v45 & 1) == 0)
        {
          v69 = 1283;
          v68[2] = "llvm.intr.memset";
          v68[3] = 16;
          v67 = 259;
          llvm::operator+(v68, &v66, v70);
          llvm::report_fatal_error(v70, 1);
        }

        v46 = (v40 + 24 * v41);
        if (v38)
        {
          v46 = v38;
        }

        v71[0] = v37;
        v71[1] = v44;
        v71[2] = v72;
        v71[3] = 0x400000000;
        v72[4] = v73;
        v72[5] = 0x400000000;
        v73[4] = v74;
        v73[5] = 0x400000000;
        v74[8] = 4;
        v74[9] = v75;
        v74[10] = 0x100000000;
        v75[1] = v76;
        v75[2] = 0x100000000;
        v76[1] = 0;
        v76[2] = 0;
        v76[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v76[4] = 0;
        v76[6] = 0;
        v47 = 592;
        if (IsVolatile)
        {
          v47 = 600;
        }

        mlir::LLVM::MemsetOp::build(v44, v71, v46[1], v42, (v36 - 16), *(**v39 + v47), 0, 0, 0, 0);
        v48 = mlir::Operation::create(v71);
        mlir::OpBuilder::insert(v39, v48);
        mlir::OperationState::~OperationState(v71);
        a3 = v52;
        a5 = v53;
        a4 = v39;
        v17 = v51;
        TypeSize = v57;
        goto LABEL_47;
      }
    }

    else
    {
      v33 = v31 + 16 * v32 + 16;
    }

    v34 = (v33 + 24);
    goto LABEL_41;
  }

LABEL_48:
  if (v63 == 1)
  {
    MEMORY[0x25F891030](v60, 8);
  }

  v49 = *MEMORY[0x277D85DE8];
  return 1;
}

char *mlir::LLVM::MemsetInlineOp::getStored(uint64_t *a1, uint64_t a2, mlir::OpBuilder *a3)
{
  v3 = *a1;
  v10 = *(a2 + 8);
  if ((*(v10 + 8) & 0x3FFFFFFF) == 8)
  {
    return *(*(v3 + 72) + 56);
  }

  v9 = 8;
  v6 = *(v3 + 24);
  v8 = *(*(v3 + 72) + 56);
  result = mlir::OpBuilder::create<mlir::LLVM::ZExtOp,mlir::IntegerType &,mlir::detail::TypedValue<mlir::IntegerType>>(a3, v6, &v10, &v8) - 16;
  v11 = result;
  if ((*(v10 + 8) & 0x3FFFFFFFu) >= 9)
  {
    do
    {
      v8 = mlir::OpBuilder::create<mlir::LLVM::ConstantOp,mlir::IntegerType &,unsigned long long &>(a3, *(v3 + 24), &v10, &v9) - 16;
      v7 = mlir::OpBuilder::create<mlir::LLVM::ShlOp,mlir::Value &,mlir::Value &>(a3, *(v3 + 24), &v11, &v8) - 16;
      result = mlir::OpBuilder::create<mlir::LLVM::OrOp,mlir::Value &,mlir::Value &>(a3, *(v3 + 24), &v11, &v7) - 16;
      v11 = result;
      v9 *= 2;
    }

    while (v9 < (*(v10 + 8) & 0x3FFFFFFFu));
  }

  return result;
}

BOOL mlir::LLVM::MemsetInlineOp::canUsesBeRemoved(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v18 = *a1;
  v6 = *(a2 + 8);
  if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 0;
  }

  v7 = v6[2];
  if ((v7 & 7) != 0 || (v7 & 0x3FFFFFFF) == 0)
  {
    return 0;
  }

  if (mlir::LLVM::MemsetInlineOp::getIsVolatile(&v18))
  {
    return 0;
  }

  v13 = v12;
  TypeSize = mlir::DataLayout::getTypeSize(a5, *(a2 + 8));
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v16 = TypeSize;
  if (v15)
  {
  }

  return v11 == v16;
}

BOOL definitelyWritesOnlyWithinSlot<mlir::LLVM::MemsetInlineOp>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*(*(*(*a2 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
  {
    return 0;
  }

  if (*(*(a1 + 72) + 24) != *a2)
  {
    return 0;
  }

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  TypeSize = mlir::DataLayout::getTypeSize(a3, a2[1]);
  if (v8)
  {
  }

  return v7 <= TypeSize;
}

uint64_t mlir::LLVM::MemsetInlineOp::canRewire(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v16 = v7;
  v8 = *(v7 + 48);
  if (*(v8 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v9 = (*(v8 + 8) + 32);
  }

  else
  {
    v9 = (v8 + 24);
  }

  if (***(a2 + 8) != *v9)
  {
    return 0;
  }

  if (mlir::LLVM::MemsetInlineOp::getIsVolatile(&v16))
  {
    return 0;
  }

  v10 = **(a2 + 8);
  v11 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID();
  v12 = mlir::detail::InterfaceMap::lookup(v10 + 8, v11);
  (*v12)(v14);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  MEMORY[0x25F891030](v14[0], 8);
  result = areAllIndicesI32(a2);
  if (result)
  {
    return definitelyWritesOnlyWithinSlot<mlir::LLVM::MemsetInlineOp>(v7, a2, a5);
  }

  return result;
}

uint64_t mlir::LLVM::MemsetInlineOp::rewire(uint64_t *a1, uint64_t a2, uint64_t a3, mlir::OpBuilder *a4, uint64_t a5)
{
  v65[8] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = **(a2 + 8);
  v10 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID();
  v11 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
  (*v11)(&v49);
  v43 = v8;
  v12 = *(v8 + 16 * ((*(v8 + 44) >> 23) & 1) + 88);
  v13 = *(a2 + 8);
  if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id)
  {
    v14 = v13[6];
    if (v14)
    {
      v14 = v13[7];
    }

    v46 = (v14 >> 1) & 1;
  }

  else
  {
    LOBYTE(v46) = 0;
  }

  v45 = mlir::IntegerType::get(*(***(v8 + 24) + 32), 32, 0);
  if (*(v12 + 24) > 0x40u)
  {
    operator new[]();
  }

  v44 = *(v12 + 16);
  if (v50)
  {
    v15 = 0;
    v16 = 0;
    v40 = v12;
    v41 = a5;
    do
    {
      v48 = mlir::IntegerAttr::get(v45, v16);
      v17 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>,mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>::doFind<mlir::Attribute>(&v49, &v48);
      v18 = v49 + 16 * v51;
      if (v17)
      {
        v18 = v17;
      }

      v19 = *(v18 + 8);
      TypeSize = mlir::DataLayout::getTypeSize(a5, v19);
      if (v20)
      {
      }

      if ((v46 & 1) == 0)
      {
        TypeABIAlignment = mlir::DataLayout::getTypeABIAlignment(a5, v19);
        v23 = (v15 - (v15 != 0)) / TypeABIAlignment;
        if (v15)
        {
          ++v23;
        }

        v15 = v23 * TypeABIAlignment;
      }

      if (v44 <= v15)
      {
        break;
      }

      if (llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::doFind<mlir::Attribute>(a3, &v48))
      {
        v47 = TypeSize;
        if (TypeSize >= v44 - v15)
        {
          v24 = v44 - v15;
        }

        else
        {
          v24 = TypeSize;
        }

        v53 = v48;
        v54 = v43;
        v25 = mlir::IntegerAttr::get(*(v12 + 8), v24);
        v26 = *(v43 + 24);
        v27 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::doFind<mlir::Attribute>(a3, &v53);
        v28 = *a3;
        v29 = a3;
        v30 = *(a3 + 16);
        v31 = *(*(v43 + 72) + 56);
        IsVolatile = mlir::LLVM::MemsetInlineOp::getIsVolatile(&v54);
        v33 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::MemsetInlineOp,void>::id, *(**v26 + 32));
        if ((v34 & 1) == 0)
        {
          v58 = 1283;
          v57[2] = "llvm.intr.memset.inline";
          v57[3] = 23;
          v56 = 259;
          llvm::operator+(v57, &v55, v59);
          llvm::report_fatal_error(v59, 1);
        }

        v35 = (v28 + 24 * v30);
        if (v27)
        {
          v35 = v27;
        }

        v60[0] = v26;
        v60[1] = v33;
        v60[2] = v61;
        v60[3] = 0x400000000;
        v61[4] = v62;
        v61[5] = 0x400000000;
        v62[4] = v63;
        v62[5] = 0x400000000;
        v63[8] = 4;
        v63[9] = v64;
        v63[10] = 0x100000000;
        v64[1] = v65;
        v64[2] = 0x100000000;
        v65[1] = 0;
        v65[2] = 0;
        v65[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v65[4] = 0;
        v65[6] = 0;
        v36 = 592;
        if (IsVolatile)
        {
          v36 = 600;
        }

        mlir::LLVM::MemsetInlineOp::build(v33, v60, v35[1], v31, v25, *(**a4 + v36), 0, 0, 0, 0);
        v37 = mlir::Operation::create(v60);
        mlir::OpBuilder::insert(a4, v37);
        mlir::OperationState::~OperationState(v60);
        v12 = v40;
        a5 = v41;
        a3 = v29;
        TypeSize = v47;
      }

      v15 += TypeSize;
      ++v16;
    }

    while (v16 < v50);
  }

  if (v52 == 1)
  {
    MEMORY[0x25F891030](v49, 8);
  }

  v38 = *MEMORY[0x277D85DE8];
  return 1;
}

BOOL mlir::LLVM::MemcpyOp::canUsesBeRemoved(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v15 = v5;
  if (*(*(v5 + 72) + 24) == *(*(v5 + 72) + 56))
  {
    return 0;
  }

  if (mlir::LLVM::MemcpyOp::getIsVolatile(&v15))
  {
    return 0;
  }

  v10 = v9;
  TypeSize = mlir::DataLayout::getTypeSize(a5, *(a2 + 8));
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v13 = TypeSize;
  if (v12)
  {
  }

  return v8 == v13;
}

BOOL mlir::LLVM::MemcpyOp::ensureOnlySafeAccesses(mlir::DataLayout **a1, uint64_t *a2)
{
  v3 = *a1;
  mlir::DataLayout::closest(*a1, v11);
  {
    v6 = v4;
    TypeSize = mlir::DataLayout::getTypeSize(v11, a2[1]);
    if (v7)
    {
    }

    v9 = v6 <= TypeSize;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x25F891030](v11[17], 8);
  MEMORY[0x25F891030](v11[14], 8);
  MEMORY[0x25F891030](v11[11], 8);
  MEMORY[0x25F891030](v11[8], 8);
  MEMORY[0x25F891030](v11[5], 8);
  return v9;
}

uint64_t mlir::LLVM::MemcpyOp::canRewire(uint64_t *a1, uint64_t a2, llvm::SmallPtrSetImplBase *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v27 = *a1;
  if (mlir::LLVM::MemcpyOp::getIsVolatile(&v27))
  {
    return 0;
  }

  v9 = **(a2 + 8);
  v10 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID();
  v11 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
  (*v11)(v25);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  MEMORY[0x25F891030](v25[0], 8);
  result = areAllIndicesI32(a2);
  if (!result)
  {
    return result;
  }

  v15 = v14;
  TypeSize = mlir::DataLayout::getTypeSize(a5, *(a2 + 8));
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v18 = TypeSize;
  if (v17)
  {
  }

  if (v13 != v18)
  {
    return 0;
  }

  if (*(*(v8 + 72) + 56) != *a2)
  {
    return 1;
  }

  v19 = std::begin[abi:nn200100]<llvm::DenseMap<mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>>(a2 + 16);
  v21 = *(a2 + 16) + 16 * *(a2 + 32);
  if (v21 == v19)
  {
    return 1;
  }

  v22 = v19;
  v23 = v20;
  do
  {
    v24 = *v22;
    v22 += 2;
    llvm::SmallPtrSetImpl<mlir::Attribute>::insert(a3, v24, v25);
    while (v22 != v23 && (*v22 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v22 += 2;
    }

    result = 1;
  }

  while (v22 != v21);
  return result;
}