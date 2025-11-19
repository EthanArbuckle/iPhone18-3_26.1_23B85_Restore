void sub_25641BBEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSTruncateOpHandler *EmitterViewerSPI::MPSTruncateOpHandler::MPSTruncateOpHandler(EmitterViewerSPI::MPSTruncateOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859920;
  v30 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v30);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MLViewerNodeSPI alloc];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v23 = [(MLViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;
  v25 = ;
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25641BFE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSTypeConstraintOpHandler *EmitterViewerSPI::MPSTypeConstraintOpHandler::MPSTypeConstraintOpHandler(EmitterViewerSPI::MPSTypeConstraintOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859938;
  v5 = *(*(a3 + 6) + 8);
  v30 = a3;
  v31 = v5;
  Value = mlir::StringAttr::getValue(&v31);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v30 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(v30 + 9))
  {
    v13 = v30 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"output", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  mlir::mps::TypeConstraintOp::getTypeConstraint(&v30);
  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MLViewerNodeSPI alloc];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v23 = [(MLViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"This operation does not modify the input value in any way. It enforces the input value type to be more specialized than (or the same as) the constraint type."];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25641C3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSUnrealizedFoldOpHandler *EmitterViewerSPI::MPSUnrealizedFoldOpHandler::MPSUnrealizedFoldOpHandler(EmitterViewerSPI::MPSUnrealizedFoldOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859950;
  v30 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v30);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"output", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MLViewerNodeSPI alloc];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v23 = [(MLViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"This op serves the purpose of representing a folding mechanism expected to materialize. It is meant to be used within the conversion mechanism where we expect a less specialized, or generic return type for an operation, but we already have a more specialized type (in most cases, statically defined).\n\nThis op is valid if the input is more specialized than the output."}];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25641C7A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSUpdateRandomStateOpHandler *EmitterViewerSPI::MPSUpdateRandomStateOpHandler::MPSUpdateRandomStateOpHandler(EmitterViewerSPI::MPSUpdateRandomStateOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859968;
  v31 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v31);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v30 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v30 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v28 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"state", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"shape", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [MLViewerNodeSPI alloc];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
  v24 = [(MLViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25641CBA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSVariableFromTensorOpHandler *EmitterViewerSPI::MPSVariableFromTensorOpHandler::MPSVariableFromTensorOpHandler(EmitterViewerSPI::MPSVariableFromTensorOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859980;
  v30 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v30);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MLViewerNodeSPI alloc];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v23 = [(MLViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"Create and return a variable formed from input tensor. This variable will be used to make changes to the original input tensor data, and will not persist across multiple executions of the same graph."}];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25641CF84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXnorOpHandler *EmitterViewerSPI::MPSXnorOpHandler::MPSXnorOpHandler(EmitterViewerSPI::MPSXnorOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859998;
  v31 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v31);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v30 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v30 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v28 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [MLViewerNodeSPI alloc];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
  v24 = [(MLViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25641D38C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXorOpHandler *EmitterViewerSPI::MPSXorOpHandler::MPSXorOpHandler(EmitterViewerSPI::MPSXorOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868599B0;
  v31 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v31);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v30 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v30 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v28 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [MLViewerNodeSPI alloc];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
  v24 = [(MLViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25641D79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ConditionOpHandler *EmitterViewerSPI::ConditionOpHandler::ConditionOpHandler(EmitterViewerSPI::ConditionOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868599C8;
  v4 = *(*(a3 + 6) + 8);
  v37 = a3;
  v38 = v4;
  Value = mlir::StringAttr::getValue(&v38);
  v6 = strlen(Value);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v36 = v6;
  if (v6)
  {
    memmove(&__dst, Value, v6);
  }

  *(&__dst + v7) = 0;
  if (v36 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v33 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mps::serialization::ConditionOp::getODSOperandIndexAndLength(&v37, 0);
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"condition", *(*(v37 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v11)
  {
    [v9 addObject:v11];
  }

  v12 = mlir::mps::serialization::ConditionOp::getODSOperandIndexAndLength(&v37, 1u);
  if ((*(v37 + 46) & 0x80) != 0)
  {
    v13 = *(v37 + 9);
  }

  else
  {
    v13 = 0;
  }

  v14 = (HIDWORD(v12) + v12);
  v15 = v14 - v12;
  if (v14 != v12)
  {
    v27 = 0;
    v28 = 0;
    v29 = v13 + 32 * v12;
    do
    {
      v30 = *(v29 + 32 * v27 + 24);
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"args%d", v28];
      v32 = EmitViewerSPI::emitNodeInputPort(a2, v31, v30);

      if (v32)
      {
        [v9 addObject:v32];
      }

      v27 = (v28 + 1);
      v28 = v27;
    }

    while (v15 > v27);
  }

  v16 = [MEMORY[0x277CBEB18] array];
  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [MLViewerNodeSPI alloc];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
  v24 = [(MLViewerNodeSPI *)v19 initWithType:v33 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25641DBD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ForOpHandler *EmitterViewerSPI::ForOpHandler::ForOpHandler(EmitterViewerSPI::ForOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868599E0;
  v5 = *(*(a3 + 6) + 8);
  v82 = a3;
  v83 = v5;
  Value = mlir::StringAttr::getValue(&v83);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v81 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v81 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v79 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mps::serialization::ForOp::getODSOperandIndexAndLength(&v82, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"lowerBound", *(*(v82 + 9) + 32 * ODSOperandIndexAndLength + 24));
  v73 = this;
  v13 = v10;
  v77 = v12;
  if (v12)
  {
    [v79 addObject:v12];
  }

  v14 = mlir::mps::serialization::ForOp::getODSOperandIndexAndLength(&v82, 1u);
  v15 = EmitViewerSPI::emitNodeInputPort(a2, @"upperBound", *(*(v82 + 9) + 32 * v14 + 24));
  v75 = v15;
  if (v15)
  {
    [v79 addObject:v15];
  }

  v16 = mlir::mps::serialization::ForOp::getODSOperandIndexAndLength(&v82, 2u);
  v17 = EmitViewerSPI::emitNodeInputPort(a2, @"step", *(*(v82 + 9) + 32 * v16 + 24));
  if (v17)
  {
    [v79 addObject:v17];
  }

  v18 = mlir::mps::serialization::ForOp::getODSOperandIndexAndLength(&v82, 3u);
  if ((*(v82 + 46) & 0x80) != 0)
  {
    v19 = *(v82 + 9);
  }

  else
  {
    v19 = 0;
  }

  v20 = (HIDWORD(v18) + v18);
  v21 = v20 - v18;
  if (v20 != v18)
  {
    v62 = 0;
    v63 = 0;
    v64 = v19 + 32 * v18;
    do
    {
      v65 = *(v64 + 32 * v62 + 24);
      v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"initArgs%d", v63];
      v67 = EmitViewerSPI::emitNodeInputPort(a2, v66, v65);

      if (v67)
      {
        [v79 addObject:v67];
      }

      v62 = (v63 + 1);
      v63 = v62;
    }

    while (v21 > v62);
  }

  v78 = [MEMORY[0x277CBEB18] array];
  ODSResultIndexAndLength = mlir::mps::serialization::ForOp::getODSResultIndexAndLength(&v82, 0);
  v23 = ODSResultIndexAndLength;
  if (*(v82 + 9))
  {
    NextResultAtOffset = v82 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v25 = (HIDWORD(v23) + v23);
  v26 = v25 - v23;
  if (v25 != v23)
  {
    v68 = 0;
    v69 = 0;
    do
    {
      v70 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v68);
      v71 = [MEMORY[0x277CCACA8] stringWithFormat:@"results%d", v69];
      v72 = EmitViewerSPI::emitNodeOutputPort(a2, v71, v70);

      if (v72)
      {
        [v78 addObject:v72];
      }

      v68 = (v69 + 1);
      v69 = v68;
    }

    while (v26 > v68);
  }

  v74 = [MEMORY[0x277CBEB18] array];
  v76 = [MEMORY[0x277CBEB18] array];
  v27 = 0;
  v28 = (((v82 + 16 * ((*(v82 + 11) >> 23) & 1) + ((*(v82 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v82 + 10));
  while (*v28 != v28)
  {
    v29 = v28[1];
    v30 = v29 ? v29 - 8 : 0;
    if (v27 >= ((*(v30 + 56) - *(v30 + 48)) >> 3))
    {
      break;
    }

    v31 = v28[1];
    if (v31)
    {
      v32 = v31 - 8;
    }

    else
    {
      v32 = 0;
    }

    v33 = *(*(v32 + 48) + 8 * v27);
    if (!v33)
    {
      goto LABEL_27;
    }

    v34 = a2[7];
    if (!*&v34)
    {
      goto LABEL_55;
    }

    v35 = 0x9DDFEA08EB382D69 * ((8 * (v33 & 0x1FFFFFFF) + 8) ^ HIDWORD(v33));
    v36 = 0x9DDFEA08EB382D69 * (HIDWORD(v33) ^ (v35 >> 47) ^ v35);
    v37 = 0x9DDFEA08EB382D69 * (v36 ^ (v36 >> 47));
    v38 = vcnt_s8(v34);
    v38.i16[0] = vaddlv_u8(v38);
    if (v38.u32[0] > 1uLL)
    {
      v39 = v37;
      if (v37 >= *&v34)
      {
        v39 = v37 % *&v34;
      }
    }

    else
    {
      v39 = (*&v34 - 1) & v37;
    }

    v40 = *(*&a2[6] + 8 * v39);
    if (!v40 || (v41 = *v40) == 0)
    {
LABEL_55:
      v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"region_arg%d", v27];
      v44 = EmitViewerSPI::emitNodeOutputPort(a2, v43, v33);
      goto LABEL_56;
    }

    while (1)
    {
      v42 = v41[1];
      if (v42 == v37)
      {
        break;
      }

      if (v38.u32[0] > 1uLL)
      {
        if (v42 >= *&v34)
        {
          v42 %= *&v34;
        }
      }

      else
      {
        v42 &= *&v34 - 1;
      }

      if (v42 != v39)
      {
        goto LABEL_55;
      }

LABEL_48:
      v41 = *v41;
      if (!v41)
      {
        goto LABEL_55;
      }
    }

    if (v41[2] != v33)
    {
      goto LABEL_48;
    }

    v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"region_arg%d", v27];
    v44 = EmitViewerSPI::emitNodeInputPort(a2, v43, v33);
LABEL_56:
    v45 = v44;

    if (v45)
    {
      [v79 addObject:v45];
    }

LABEL_27:
    ++v27;
  }

  v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = v28[1]; i != v28; i = i[1])
  {
    v57 = i - 1;
    if (!i)
    {
      v57 = 0;
    }

    v58 = v57 + 4;
    for (j = v57[5]; j != v58; j = j[1])
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
      v61 = EmitViewerSPI::emitNode(a2, ValuePtr);
      if (v61)
      {
        [v46 addObject:v61];
      }
    }
  }

  v48 = [[MLViewerNodeRegionSPI alloc] initWithName:@"region" returnType:0 nodes:v46];
  [v76 addObject:v48];

  v49 = [MLViewerNodeSPI alloc];
  v50 = [MEMORY[0x277CBEA60] arrayWithArray:v79];
  v51 = [MEMORY[0x277CBEA60] arrayWithArray:v78];
  v52 = [MEMORY[0x277CBEA60] arrayWithArray:v74];
  v53 = [MEMORY[0x277CBEA60] arrayWithArray:v76];
  v54 = [(MLViewerNodeSPI *)v49 initWithType:v13 inputs:v50 outputs:v51 properties:v52 regions:v53];
  v55 = *(v73 + 3);
  *(v73 + 3) = v54;

  if (v81 < 0)
  {
    operator delete(__dst);
  }

  return v73;
}

void sub_25641E438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::IfOpHandler *EmitterViewerSPI::IfOpHandler::IfOpHandler(EmitterViewerSPI::IfOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868599F8;
  v5 = *(*(a3 + 6) + 8);
  v93 = a3;
  v94 = v5;
  Value = mlir::StringAttr::getValue(&v94);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v92 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v92 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v85 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = 0x277CBE000uLL;
  v89 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"condition", *(*(v93 + 9) + 24));
  if (v11)
  {
    [v89 addObject:v11];
  }

  v88 = [MEMORY[0x277CBEB18] array];
  ODSResultIndexAndLength = mlir::mps::serialization::IfOp::getODSResultIndexAndLength(&v93, 0);
  v13 = ODSResultIndexAndLength;
  if (*(v93 + 9))
  {
    NextResultAtOffset = v93 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v15 = (HIDWORD(v13) + v13);
  v16 = v15 - v13;
  if (v15 != v13)
  {
    v80 = 0;
    v81 = 0;
    do
    {
      v82 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v80);
      v83 = [MEMORY[0x277CCACA8] stringWithFormat:@"results%d", v81];
      v84 = EmitViewerSPI::emitNodeOutputPort(a2, v83, v82);

      if (v84)
      {
        [v88 addObject:v84];
      }

      v80 = (v81 + 1);
      v81 = v80;
      v10 = 0x277CBE000;
    }

    while (v16 > v80);
  }

  v86 = [*(v10 + 2840) array];
  v87 = [*(v10 + 2840) array];
  v17 = 0;
  v18 = (((v93 + 16 * ((*(v93 + 11) >> 23) & 1) + ((*(v93 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v93 + 10));
  v90 = this;
  while (*v18 != v18)
  {
    v19 = v18[1];
    v20 = v19 ? v19 - 8 : 0;
    if (v17 >= ((*(v20 + 56) - *(v20 + 48)) >> 3))
    {
      break;
    }

    v21 = v18[1];
    if (v21)
    {
      v22 = v21 - 8;
    }

    else
    {
      v22 = 0;
    }

    v23 = *(*(v22 + 48) + 8 * v17);
    if (!v23)
    {
      goto LABEL_20;
    }

    v24 = a2[7];
    if (!*&v24)
    {
      goto LABEL_48;
    }

    v25 = 0x9DDFEA08EB382D69 * ((8 * (v23 & 0x1FFFFFFF) + 8) ^ HIDWORD(v23));
    v26 = 0x9DDFEA08EB382D69 * (HIDWORD(v23) ^ (v25 >> 47) ^ v25);
    v27 = 0x9DDFEA08EB382D69 * (v26 ^ (v26 >> 47));
    v28 = vcnt_s8(v24);
    v28.i16[0] = vaddlv_u8(v28);
    if (v28.u32[0] > 1uLL)
    {
      v29 = v27;
      if (v27 >= *&v24)
      {
        v29 = v27 % *&v24;
      }
    }

    else
    {
      v29 = (*&v24 - 1) & v27;
    }

    v30 = *(*&a2[6] + 8 * v29);
    if (!v30 || (v31 = *v30) == 0)
    {
LABEL_48:
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"then_arg%d", v17];
      v34 = EmitViewerSPI::emitNodeOutputPort(a2, v33, v23);
      goto LABEL_49;
    }

    while (1)
    {
      v32 = v31[1];
      if (v32 == v27)
      {
        break;
      }

      if (v28.u32[0] > 1uLL)
      {
        if (v32 >= *&v24)
        {
          v32 %= *&v24;
        }
      }

      else
      {
        v32 &= *&v24 - 1;
      }

      if (v32 != v29)
      {
        goto LABEL_48;
      }

LABEL_41:
      v31 = *v31;
      if (!v31)
      {
        goto LABEL_48;
      }
    }

    if (v31[2] != v23)
    {
      goto LABEL_41;
    }

    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"then_arg%d", v17];
    v34 = EmitViewerSPI::emitNodeInputPort(a2, v33, v23);
LABEL_49:
    v35 = v34;

    if (v35)
    {
      [v89 addObject:v35];
    }

LABEL_20:
    ++v17;
  }

  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = v18[1]; i != v18; i = i[1])
  {
    v38 = i - 1;
    if (!i)
    {
      v38 = 0;
    }

    v39 = v38 + 4;
    for (j = v38[5]; j != v39; j = j[1])
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
      v42 = EmitViewerSPI::emitNode(a2, ValuePtr);
      if (v42)
      {
        [v36 addObject:v42];
      }
    }
  }

  v43 = [[MLViewerNodeRegionSPI alloc] initWithName:@"then" returnType:0 nodes:v36];
  [v87 addObject:v43];

  v44 = 0;
  v45 = ((v93 + 16 * ((*(v93 + 11) >> 23) & 1) + ((*(v93 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v93 + 10);
  v46 = (v45 + 24);
  while (*v46 != v46)
  {
    v47 = *(v45 + 32);
    v48 = v47 ? v47 - 8 : 0;
    if (v44 >= ((*(v48 + 56) - *(v48 + 48)) >> 3))
    {
      break;
    }

    v49 = *(v45 + 32);
    if (v49)
    {
      v50 = v49 - 8;
    }

    else
    {
      v50 = 0;
    }

    v51 = *(*(v50 + 48) + 8 * v44);
    if (!v51)
    {
      goto LABEL_64;
    }

    v52 = a2[7];
    if (!*&v52)
    {
      goto LABEL_92;
    }

    v53 = 0x9DDFEA08EB382D69 * ((8 * (v51 & 0x1FFFFFFF) + 8) ^ HIDWORD(v51));
    v54 = 0x9DDFEA08EB382D69 * (HIDWORD(v51) ^ (v53 >> 47) ^ v53);
    v55 = 0x9DDFEA08EB382D69 * (v54 ^ (v54 >> 47));
    v56 = vcnt_s8(v52);
    v56.i16[0] = vaddlv_u8(v56);
    if (v56.u32[0] > 1uLL)
    {
      v57 = v55;
      if (v55 >= *&v52)
      {
        v57 = v55 % *&v52;
      }
    }

    else
    {
      v57 = (*&v52 - 1) & v55;
    }

    v58 = *(*&a2[6] + 8 * v57);
    if (!v58 || (v59 = *v58) == 0)
    {
LABEL_92:
      v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"else_arg%d", v44];
      v62 = EmitViewerSPI::emitNodeOutputPort(a2, v61, v51);
      goto LABEL_93;
    }

    while (1)
    {
      v60 = v59[1];
      if (v60 == v55)
      {
        break;
      }

      if (v56.u32[0] > 1uLL)
      {
        if (v60 >= *&v52)
        {
          v60 %= *&v52;
        }
      }

      else
      {
        v60 &= *&v52 - 1;
      }

      if (v60 != v57)
      {
        goto LABEL_92;
      }

LABEL_85:
      v59 = *v59;
      if (!v59)
      {
        goto LABEL_92;
      }
    }

    if (v59[2] != v51)
    {
      goto LABEL_85;
    }

    v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"else_arg%d", v44];
    v62 = EmitViewerSPI::emitNodeInputPort(a2, v61, v51);
LABEL_93:
    v63 = v62;

    if (v63)
    {
      [v89 addObject:v63];
    }

LABEL_64:
    ++v44;
  }

  v64 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (k = *(v45 + 32); k != v46; k = k[1])
  {
    v66 = k - 1;
    if (!k)
    {
      v66 = 0;
    }

    v67 = v66 + 4;
    for (m = v66[5]; m != v67; m = m[1])
    {
      v69 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(m);
      v70 = EmitViewerSPI::emitNode(a2, v69);
      if (v70)
      {
        [v64 addObject:v70];
      }
    }
  }

  v71 = [[MLViewerNodeRegionSPI alloc] initWithName:@"else" returnType:0 nodes:v64];
  [v87 addObject:v71];

  v72 = [MLViewerNodeSPI alloc];
  v73 = [MEMORY[0x277CBEA60] arrayWithArray:v89];
  v74 = [MEMORY[0x277CBEA60] arrayWithArray:v88];
  v75 = [MEMORY[0x277CBEA60] arrayWithArray:v86];
  v76 = [MEMORY[0x277CBEA60] arrayWithArray:v87];
  v77 = [(MLViewerNodeSPI *)v72 initWithType:v85 inputs:v73 outputs:v74 properties:v75 regions:v76];
  v78 = *(v90 + 3);
  *(v90 + 3) = v77;

  if (v92 < 0)
  {
    operator delete(__dst);
  }

  return v90;
}

void sub_25641EEA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSExtractOpHandler *EmitterViewerSPI::MPSExtractOpHandler::MPSExtractOpHandler(EmitterViewerSPI::MPSExtractOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859A10;
  v4 = *(*(a3 + 6) + 8);
  v40 = a3;
  v41 = v4;
  Value = mlir::StringAttr::getValue(&v41);
  v6 = strlen(Value);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v39 = v6;
  if (v6)
  {
    memmove(&__dst, Value, v6);
  }

  *(&__dst + v7) = 0;
  if (v39 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v36 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mps::serialization::ExtractOp::getODSOperandIndexAndLength(&v40, 0);
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"tensor", *(*(v40 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v11)
  {
    [v9 addObject:v11];
  }

  v12 = mlir::mps::serialization::ExtractOp::getODSOperandIndexAndLength(&v40, 1u);
  if ((*(v40 + 46) & 0x80) != 0)
  {
    v13 = *(v40 + 9);
  }

  else
  {
    v13 = 0;
  }

  v14 = (HIDWORD(v12) + v12);
  v15 = v14 - v12;
  if (v14 != v12)
  {
    v30 = 0;
    v31 = 0;
    v32 = v13 + 32 * v12;
    do
    {
      v33 = *(v32 + 32 * v30 + 24);
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"indices%d", v31];
      v35 = EmitViewerSPI::emitNodeInputPort(a2, v34, v33);

      if (v35)
      {
        [v9 addObject:v35];
      }

      v30 = (v31 + 1);
      v31 = v30;
    }

    while (v15 > v30);
  }

  v16 = [MEMORY[0x277CBEB18] array];
  if (*(v40 + 9))
  {
    v17 = v40 - 16;
  }

  else
  {
    v17 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0);
  v19 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v19)
  {
    [v16 addObject:v19];
  }

  v20 = [MEMORY[0x277CBEB18] array];
  v21 = [MEMORY[0x277CBEB18] array];
  v22 = [MLViewerNodeSPI alloc];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v20];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v21];
  v27 = [(MLViewerNodeSPI *)v22 initWithType:v36 inputs:v23 outputs:v24 properties:v25 regions:v26];
  v28 = *(this + 3);
  *(this + 3) = v27;

  if (v39 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25641F3A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSFromElementsOpHandler *EmitterViewerSPI::MPSFromElementsOpHandler::MPSFromElementsOpHandler(EmitterViewerSPI::MPSFromElementsOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859A28;
  v4 = *(*(a3 + 6) + 8);
  v38 = a3;
  v39 = v4;
  Value = mlir::StringAttr::getValue(&v39);
  v6 = strlen(Value);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v37 = v6;
  if (v6)
  {
    memmove(&__dst, Value, v6);
  }

  *(&__dst + v7) = 0;
  if (v37 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v34 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mps::serialization::FromElementsOp::getODSOperandIndexAndLength(&v38, 0);
  if ((*(v38 + 46) & 0x80) != 0)
  {
    v11 = *(v38 + 9);
  }

  else
  {
    v11 = 0;
  }

  v12 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  v13 = v12 - ODSOperandIndexAndLength;
  if (v12 != ODSOperandIndexAndLength)
  {
    v28 = 0;
    v29 = 0;
    v30 = v11 + 32 * ODSOperandIndexAndLength;
    do
    {
      v31 = *(v30 + 32 * v28 + 24);
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"elements%d", v29];
      v33 = EmitViewerSPI::emitNodeInputPort(a2, v32, v31);

      if (v33)
      {
        [v9 addObject:v33];
      }

      v28 = (v29 + 1);
      v29 = v28;
    }

    while (v13 > v28);
  }

  v14 = [MEMORY[0x277CBEB18] array];
  if (*(v38 + 9))
  {
    v15 = v38 - 16;
  }

  else
  {
    v15 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
  v17 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v17)
  {
    [v14 addObject:v17];
  }

  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [MEMORY[0x277CBEB18] array];
  v20 = [MLViewerNodeSPI alloc];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v19];
  v25 = [(MLViewerNodeSPI *)v20 initWithType:v34 inputs:v21 outputs:v22 properties:v23 regions:v24];
  v26 = *(this + 3);
  *(this + 3) = v25;

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25641F7E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSFuncOpHandler *EmitterViewerSPI::MPSFuncOpHandler::MPSFuncOpHandler(EmitterViewerSPI::MPSFuncOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859A40;
  v64 = a3;
  v59[0] = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(v59);
  v5 = strlen(Value);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v63 = v5;
  if (v5)
  {
    memmove(&__dst, Value, v5);
  }

  *(&__dst + v6) = 0;
  if (v63 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v58 = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CBEB18] array];
  v56 = [MEMORY[0x277CBEB18] array];
  SymName = mlir::mps::serialization::FuncOp::getSymName(&v64);
  v12 = EmitViewerSPI::emitStringProperty(SymName, @"sym_name", SymName, v11);
  if (v12)
  {
    [v56 addObject:v12];
  }

  v54 = v8;
  v13 = 0;
  FunctionType = mlir::mps::serialization::FuncOp::getFunctionType(&v64);
  while (v13 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v14 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v13);
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"result%d", v13];
    v16 = EmitViewerSPI::emitNodeOutputPort(v15, v15, v14);

    if (v16)
    {
      [v9 addObject:v16];
    }

    ++v13;
  }

  SymVisibility = mlir::mps::serialization::FuncOp::getSymVisibility(&v64, v59);
  if (v60 == 1)
  {
    v18 = EmitViewerSPI::emitStringProperty(SymVisibility, @"sym_visibility", v59[0], v59[1]);
    if (v18)
    {
      [v56 addObject:v18];
    }
  }

  v57 = [MEMORY[0x277CBEB18] array];
  v19 = 0;
  v20 = (((v64 + 16 * ((*(v64 + 11) >> 23) & 1) + ((*(v64 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v64 + 10));
  while (*v20 != v20)
  {
    v21 = v20[1];
    v22 = v21 ? v21 - 8 : 0;
    if (v19 >= ((*(v22 + 56) - *(v22 + 48)) >> 3))
    {
      break;
    }

    v23 = v20[1];
    if (v23)
    {
      v24 = v23 - 8;
    }

    else
    {
      v24 = 0;
    }

    v25 = *(*(v24 + 48) + 8 * v19);
    if (!v25)
    {
      goto LABEL_23;
    }

    v26 = a2[7];
    if (!*&v26)
    {
      goto LABEL_51;
    }

    v27 = 0x9DDFEA08EB382D69 * ((8 * (v25 & 0x1FFFFFFF) + 8) ^ HIDWORD(v25));
    v28 = 0x9DDFEA08EB382D69 * (HIDWORD(v25) ^ (v27 >> 47) ^ v27);
    v29 = 0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47));
    v30 = vcnt_s8(v26);
    v30.i16[0] = vaddlv_u8(v30);
    if (v30.u32[0] > 1uLL)
    {
      v31 = v29;
      if (v29 >= *&v26)
      {
        v31 = v29 % *&v26;
      }
    }

    else
    {
      v31 = (*&v26 - 1) & v29;
    }

    v32 = *(*&a2[6] + 8 * v31);
    if (!v32 || (v33 = *v32) == 0)
    {
LABEL_51:
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"body_arg%d", v19];
      v36 = EmitViewerSPI::emitNodeOutputPort(a2, v35, v25);
      goto LABEL_52;
    }

    while (1)
    {
      v34 = v33[1];
      if (v34 == v29)
      {
        break;
      }

      if (v30.u32[0] > 1uLL)
      {
        if (v34 >= *&v26)
        {
          v34 %= *&v26;
        }
      }

      else
      {
        v34 &= *&v26 - 1;
      }

      if (v34 != v31)
      {
        goto LABEL_51;
      }

LABEL_44:
      v33 = *v33;
      if (!v33)
      {
        goto LABEL_51;
      }
    }

    if (v33[2] != v25)
    {
      goto LABEL_44;
    }

    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"body_arg%d", v19];
    v36 = EmitViewerSPI::emitNodeInputPort(a2, v35, v25);
LABEL_52:
    v37 = v36;

    if (v37)
    {
      [v58 addObject:v37];
    }

LABEL_23:
    ++v19;
  }

  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = v20[1]; i != v20; i = i[1])
  {
    v49 = i - 1;
    if (!i)
    {
      v49 = 0;
    }

    v50 = v49 + 4;
    for (j = v49[5]; j != v50; j = j[1])
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
      v53 = EmitViewerSPI::emitNode(a2, ValuePtr);
      if (v53)
      {
        [v38 addObject:v53];
      }
    }
  }

  v40 = [[MLViewerNodeRegionSPI alloc] initWithName:@"body" returnType:@"mps.return" nodes:v38];
  [v57 addObject:v40];

  v41 = [MLViewerNodeSPI alloc];
  v42 = [MEMORY[0x277CBEA60] arrayWithArray:v58];
  v43 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v44 = [MEMORY[0x277CBEA60] arrayWithArray:v56];
  v45 = [MEMORY[0x277CBEA60] arrayWithArray:v57];
  v46 = [(MLViewerNodeSPI *)v41 initWithType:v54 inputs:v42 outputs:v43 properties:v44 regions:v45];
  v47 = *(this + 3);
  *(this + 3) = v46;

  if (v63 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25641FED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSModuleOpHandler *EmitterViewerSPI::MPSModuleOpHandler::MPSModuleOpHandler(EmitterViewerSPI::MPSModuleOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859A58;
  v60 = a3;
  v56[0] = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(v56);
  v5 = strlen(Value);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v59 = v5;
  if (v5)
  {
    memmove(&__dst, Value, v5);
  }

  *(&__dst + v6) = 0;
  if (v59 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x277CBEB18] array];
  v51 = [MEMORY[0x277CBEB18] array];
  v52 = [MEMORY[0x277CBEB18] array];
  SymName = mlir::mps::serialization::ModuleOp::getSymName(&v60, v56);
  if (v57 == 1)
  {
    v11 = EmitViewerSPI::emitStringProperty(SymName, @"sym_name", v56[0], v56[1]);
    if (v11)
    {
      [v52 addObject:v11];
    }
  }

  SymVisibility = mlir::mps::serialization::ModuleOp::getSymVisibility(&v60, v54);
  if (v55 == 1)
  {
    v13 = EmitViewerSPI::emitStringProperty(SymVisibility, @"sym_visibility", v54[0], v54[1]);
    if (v13)
    {
      [v52 addObject:v13];
    }
  }

  v49 = v8;
  v53 = [MEMORY[0x277CBEB18] array];
  v14 = 0;
  v15 = (((v60 + 16 * ((*(v60 + 11) >> 23) & 1) + ((*(v60 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v60 + 10));
  while (*v15 != v15)
  {
    v16 = v15[1];
    v17 = v16 ? v16 - 8 : 0;
    if (v14 >= ((*(v17 + 56) - *(v17 + 48)) >> 3))
    {
      break;
    }

    v18 = v15[1];
    if (v18)
    {
      v19 = v18 - 8;
    }

    else
    {
      v19 = 0;
    }

    v20 = *(*(v19 + 48) + 8 * v14);
    if (!v20)
    {
      goto LABEL_20;
    }

    v21 = a2[7];
    if (!*&v21)
    {
      goto LABEL_48;
    }

    v22 = 0x9DDFEA08EB382D69 * ((8 * (v20 & 0x1FFFFFFF) + 8) ^ HIDWORD(v20));
    v23 = 0x9DDFEA08EB382D69 * (HIDWORD(v20) ^ (v22 >> 47) ^ v22);
    v24 = 0x9DDFEA08EB382D69 * (v23 ^ (v23 >> 47));
    v25 = vcnt_s8(v21);
    v25.i16[0] = vaddlv_u8(v25);
    if (v25.u32[0] > 1uLL)
    {
      v26 = v24;
      if (v24 >= *&v21)
      {
        v26 = v24 % *&v21;
      }
    }

    else
    {
      v26 = (*&v21 - 1) & v24;
    }

    v27 = *(*&a2[6] + 8 * v26);
    if (!v27 || (v28 = *v27) == 0)
    {
LABEL_48:
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"body_arg%d", v14];
      v31 = EmitViewerSPI::emitNodeOutputPort(a2, v30, v20);
      goto LABEL_49;
    }

    while (1)
    {
      v29 = v28[1];
      if (v29 == v24)
      {
        break;
      }

      if (v25.u32[0] > 1uLL)
      {
        if (v29 >= *&v21)
        {
          v29 %= *&v21;
        }
      }

      else
      {
        v29 &= *&v21 - 1;
      }

      if (v29 != v26)
      {
        goto LABEL_48;
      }

LABEL_41:
      v28 = *v28;
      if (!v28)
      {
        goto LABEL_48;
      }
    }

    if (v28[2] != v20)
    {
      goto LABEL_41;
    }

    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"body_arg%d", v14];
    v31 = EmitViewerSPI::emitNodeInputPort(a2, v30, v20);
LABEL_49:
    v32 = v31;

    if (v32)
    {
      [v9 addObject:v32];
    }

LABEL_20:
    ++v14;
  }

  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = v15[1]; i != v15; i = i[1])
  {
    v44 = i - 1;
    if (!i)
    {
      v44 = 0;
    }

    v45 = v44 + 4;
    for (j = v44[5]; j != v45; j = j[1])
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
      v48 = EmitViewerSPI::emitNode(a2, ValuePtr);
      if (v48)
      {
        [v33 addObject:v48];
      }
    }
  }

  v35 = [[MLViewerNodeRegionSPI alloc] initWithName:@"body" returnType:0 nodes:v33];
  [v53 addObject:v35];

  v36 = [MLViewerNodeSPI alloc];
  v37 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v38 = [MEMORY[0x277CBEA60] arrayWithArray:v51];
  v39 = [MEMORY[0x277CBEA60] arrayWithArray:v52];
  v40 = [MEMORY[0x277CBEA60] arrayWithArray:v53];
  v41 = [(MLViewerNodeSPI *)v36 initWithType:v49 inputs:v37 outputs:v38 properties:v39 regions:v40];
  v42 = *(this + 3);
  *(this + 3) = v41;

  if (v59 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2564205D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReturnOpHandler *EmitterViewerSPI::MPSReturnOpHandler::MPSReturnOpHandler(EmitterViewerSPI::MPSReturnOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859A70;
  v4 = *(*(a3 + 6) + 8);
  v35 = a3;
  v36 = v4;
  Value = mlir::StringAttr::getValue(&v36);
  v6 = strlen(Value);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v34 = v6;
  if (v6)
  {
    memmove(&__dst, Value, v6);
  }

  *(&__dst + v7) = 0;
  if (v34 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v31 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mps::serialization::ReturnOp::getODSOperandIndexAndLength(&v35, 0);
  if ((*(v35 + 46) & 0x80) != 0)
  {
    v11 = *(v35 + 9);
  }

  else
  {
    v11 = 0;
  }

  v12 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  v13 = v12 - ODSOperandIndexAndLength;
  if (v12 != ODSOperandIndexAndLength)
  {
    v25 = 0;
    v26 = 0;
    v27 = v11 + 32 * ODSOperandIndexAndLength;
    do
    {
      v28 = *(v27 + 32 * v25 + 24);
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"operands%d", v26];
      v30 = EmitViewerSPI::emitNodeInputPort(a2, v29, v28);

      if (v30)
      {
        [v9 addObject:v30];
      }

      v25 = (v26 + 1);
      v26 = v25;
    }

    while (v13 > v25);
  }

  v14 = [MEMORY[0x277CBEB18] array];
  v15 = [MEMORY[0x277CBEB18] array];
  v16 = [MEMORY[0x277CBEB18] array];
  v17 = [MLViewerNodeSPI alloc];
  v18 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v22 = [(MLViewerNodeSPI *)v17 initWithType:v31 inputs:v18 outputs:v19 properties:v20 regions:v21];
  v23 = *(this + 3);
  *(this + 3) = v22;

  if (v34 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256420A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::WhileOpHandler *EmitterViewerSPI::WhileOpHandler::WhileOpHandler(EmitterViewerSPI::WhileOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859A88;
  v5 = *(*(a3 + 6) + 8);
  v102 = a3;
  v103 = v5;
  Value = mlir::StringAttr::getValue(&v103);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v101 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v101 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v94 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v98 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mps::serialization::WhileOp::getODSOperandIndexAndLength(&v102, 0);
  if ((*(v102 + 46) & 0x80) != 0)
  {
    v11 = *(v102 + 9);
  }

  else
  {
    v11 = 0;
  }

  v12 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  v13 = v12 - ODSOperandIndexAndLength;
  if (v12 != ODSOperandIndexAndLength)
  {
    v83 = 0;
    v84 = 0;
    v85 = v11 + 32 * ODSOperandIndexAndLength;
    do
    {
      v86 = *(v85 + 32 * v83 + 24);
      v87 = [MEMORY[0x277CCACA8] stringWithFormat:@"inits%d", v84];
      v88 = EmitViewerSPI::emitNodeInputPort(a2, v87, v86);

      if (v88)
      {
        [v98 addObject:v88];
      }

      v83 = (v84 + 1);
      v84 = v83;
    }

    while (v13 > v83);
  }

  v14 = 0x277CBE000uLL;
  v97 = [MEMORY[0x277CBEB18] array];
  ODSResultIndexAndLength = mlir::mps::serialization::WhileOp::getODSResultIndexAndLength(&v102, 0);
  v16 = ODSResultIndexAndLength;
  if (*(v102 + 9))
  {
    NextResultAtOffset = v102 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v18 = (HIDWORD(v16) + v16);
  v19 = v18 - v16;
  if (v18 != v16)
  {
    v89 = 0;
    v90 = 0;
    do
    {
      v91 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v89);
      v92 = [MEMORY[0x277CCACA8] stringWithFormat:@"results%d", v90];
      v93 = EmitViewerSPI::emitNodeOutputPort(a2, v92, v91);

      if (v93)
      {
        [v97 addObject:v93];
      }

      v89 = (v90 + 1);
      v90 = v89;
      v14 = 0x277CBE000;
    }

    while (v19 > v89);
  }

  v95 = [*(v14 + 2840) array];
  v96 = [*(v14 + 2840) array];
  v20 = 0;
  v21 = (((v102 + 16 * ((*(v102 + 11) >> 23) & 1) + ((*(v102 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v102 + 10));
  v99 = this;
  while (*v21 != v21)
  {
    v22 = v21[1];
    v23 = v22 ? v22 - 8 : 0;
    if (v20 >= ((*(v23 + 56) - *(v23 + 48)) >> 3))
    {
      break;
    }

    v24 = v21[1];
    if (v24)
    {
      v25 = v24 - 8;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(*(v25 + 48) + 8 * v20);
    if (!v26)
    {
      goto LABEL_21;
    }

    v27 = a2[7];
    if (!*&v27)
    {
      goto LABEL_49;
    }

    v28 = 0x9DDFEA08EB382D69 * ((8 * (v26 & 0x1FFFFFFF) + 8) ^ HIDWORD(v26));
    v29 = 0x9DDFEA08EB382D69 * (HIDWORD(v26) ^ (v28 >> 47) ^ v28);
    v30 = 0x9DDFEA08EB382D69 * (v29 ^ (v29 >> 47));
    v31 = vcnt_s8(v27);
    v31.i16[0] = vaddlv_u8(v31);
    if (v31.u32[0] > 1uLL)
    {
      v32 = v30;
      if (v30 >= *&v27)
      {
        v32 = v30 % *&v27;
      }
    }

    else
    {
      v32 = (*&v27 - 1) & v30;
    }

    v33 = *(*&a2[6] + 8 * v32);
    if (!v33 || (v34 = *v33) == 0)
    {
LABEL_49:
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"before_arg%d", v20];
      v37 = EmitViewerSPI::emitNodeOutputPort(a2, v36, v26);
      goto LABEL_50;
    }

    while (1)
    {
      v35 = v34[1];
      if (v35 == v30)
      {
        break;
      }

      if (v31.u32[0] > 1uLL)
      {
        if (v35 >= *&v27)
        {
          v35 %= *&v27;
        }
      }

      else
      {
        v35 &= *&v27 - 1;
      }

      if (v35 != v32)
      {
        goto LABEL_49;
      }

LABEL_42:
      v34 = *v34;
      if (!v34)
      {
        goto LABEL_49;
      }
    }

    if (v34[2] != v26)
    {
      goto LABEL_42;
    }

    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"before_arg%d", v20];
    v37 = EmitViewerSPI::emitNodeInputPort(a2, v36, v26);
LABEL_50:
    v38 = v37;

    if (v38)
    {
      [v98 addObject:v38];
    }

LABEL_21:
    ++v20;
  }

  v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = v21[1]; i != v21; i = i[1])
  {
    v41 = i - 1;
    if (!i)
    {
      v41 = 0;
    }

    v42 = v41 + 4;
    for (j = v41[5]; j != v42; j = j[1])
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
      v45 = EmitViewerSPI::emitNode(a2, ValuePtr);
      if (v45)
      {
        [v39 addObject:v45];
      }
    }
  }

  v46 = [[MLViewerNodeRegionSPI alloc] initWithName:@"before" returnType:0 nodes:v39];
  [v96 addObject:v46];

  v47 = 0;
  v48 = ((v102 + 16 * ((*(v102 + 11) >> 23) & 1) + ((*(v102 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v102 + 10);
  v49 = (v48 + 24);
  while (*v49 != v49)
  {
    v50 = *(v48 + 32);
    v51 = v50 ? v50 - 8 : 0;
    if (v47 >= ((*(v51 + 56) - *(v51 + 48)) >> 3))
    {
      break;
    }

    v52 = *(v48 + 32);
    if (v52)
    {
      v53 = v52 - 8;
    }

    else
    {
      v53 = 0;
    }

    v54 = *(*(v53 + 48) + 8 * v47);
    if (!v54)
    {
      goto LABEL_65;
    }

    v55 = a2[7];
    if (!*&v55)
    {
      goto LABEL_93;
    }

    v56 = 0x9DDFEA08EB382D69 * ((8 * (v54 & 0x1FFFFFFF) + 8) ^ HIDWORD(v54));
    v57 = 0x9DDFEA08EB382D69 * (HIDWORD(v54) ^ (v56 >> 47) ^ v56);
    v58 = 0x9DDFEA08EB382D69 * (v57 ^ (v57 >> 47));
    v59 = vcnt_s8(v55);
    v59.i16[0] = vaddlv_u8(v59);
    if (v59.u32[0] > 1uLL)
    {
      v60 = v58;
      if (v58 >= *&v55)
      {
        v60 = v58 % *&v55;
      }
    }

    else
    {
      v60 = (*&v55 - 1) & v58;
    }

    v61 = *(*&a2[6] + 8 * v60);
    if (!v61 || (v62 = *v61) == 0)
    {
LABEL_93:
      v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"after_arg%d", v47];
      v65 = EmitViewerSPI::emitNodeOutputPort(a2, v64, v54);
      goto LABEL_94;
    }

    while (1)
    {
      v63 = v62[1];
      if (v63 == v58)
      {
        break;
      }

      if (v59.u32[0] > 1uLL)
      {
        if (v63 >= *&v55)
        {
          v63 %= *&v55;
        }
      }

      else
      {
        v63 &= *&v55 - 1;
      }

      if (v63 != v60)
      {
        goto LABEL_93;
      }

LABEL_86:
      v62 = *v62;
      if (!v62)
      {
        goto LABEL_93;
      }
    }

    if (v62[2] != v54)
    {
      goto LABEL_86;
    }

    v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"after_arg%d", v47];
    v65 = EmitViewerSPI::emitNodeInputPort(a2, v64, v54);
LABEL_94:
    v66 = v65;

    if (v66)
    {
      [v98 addObject:v66];
    }

LABEL_65:
    ++v47;
  }

  v67 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (k = *(v48 + 32); k != v49; k = k[1])
  {
    v69 = k - 1;
    if (!k)
    {
      v69 = 0;
    }

    v70 = v69 + 4;
    for (m = v69[5]; m != v70; m = m[1])
    {
      v72 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(m);
      v73 = EmitViewerSPI::emitNode(a2, v72);
      if (v73)
      {
        [v67 addObject:v73];
      }
    }
  }

  v74 = [[MLViewerNodeRegionSPI alloc] initWithName:@"after" returnType:0 nodes:v67];
  [v96 addObject:v74];

  v75 = [MLViewerNodeSPI alloc];
  v76 = [MEMORY[0x277CBEA60] arrayWithArray:v98];
  v77 = [MEMORY[0x277CBEA60] arrayWithArray:v97];
  v78 = [MEMORY[0x277CBEA60] arrayWithArray:v95];
  v79 = [MEMORY[0x277CBEA60] arrayWithArray:v96];
  v80 = [(MLViewerNodeSPI *)v75 initWithType:v94 inputs:v76 outputs:v77 properties:v78 regions:v79];
  v81 = *(v99 + 3);
  *(v99 + 3) = v80;

  if (v101 < 0)
  {
    operator delete(__dst);
  }

  return v99;
}

void sub_25642140C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::YieldOpHandler *EmitterViewerSPI::YieldOpHandler::YieldOpHandler(EmitterViewerSPI::YieldOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859AA0;
  v4 = *(*(a3 + 6) + 8);
  v35 = a3;
  v36 = v4;
  Value = mlir::StringAttr::getValue(&v36);
  v6 = strlen(Value);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v34 = v6;
  if (v6)
  {
    memmove(&__dst, Value, v6);
  }

  *(&__dst + v7) = 0;
  if (v34 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v31 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mps::serialization::YieldOp::getODSOperandIndexAndLength(&v35, 0);
  if ((*(v35 + 46) & 0x80) != 0)
  {
    v11 = *(v35 + 9);
  }

  else
  {
    v11 = 0;
  }

  v12 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  v13 = v12 - ODSOperandIndexAndLength;
  if (v12 != ODSOperandIndexAndLength)
  {
    v25 = 0;
    v26 = 0;
    v27 = v11 + 32 * ODSOperandIndexAndLength;
    do
    {
      v28 = *(v27 + 32 * v25 + 24);
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"results%d", v26];
      v30 = EmitViewerSPI::emitNodeInputPort(a2, v29, v28);

      if (v30)
      {
        [v9 addObject:v30];
      }

      v25 = (v26 + 1);
      v26 = v25;
    }

    while (v13 > v25);
  }

  v14 = [MEMORY[0x277CBEB18] array];
  v15 = [MEMORY[0x277CBEB18] array];
  v16 = [MEMORY[0x277CBEB18] array];
  v17 = [MLViewerNodeSPI alloc];
  v18 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v22 = [(MLViewerNodeSPI *)v17 initWithType:v31 inputs:v18 outputs:v19 properties:v20 regions:v21];
  v23 = *(this + 3);
  *(this + 3) = v22;

  if (v34 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256421888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXANEOpHandler *EmitterViewerSPI::MPSXANEOpHandler::MPSXANEOpHandler(EmitterViewerSPI::MPSXANEOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859AB8;
  v4 = *(*(a3 + 6) + 8);
  v62 = a3;
  FunctionType = v4;
  Value = mlir::StringAttr::getValue(&FunctionType);
  v6 = strlen(Value);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v61 = v6;
  if (v6)
  {
    memmove(&__dst, Value, v6);
  }

  *(&__dst + v7) = 0;
  if (v61 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v54 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v58 = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CBEB18] array];
  v57 = [MEMORY[0x277CBEB18] array];
  v10 = 0;
  FunctionType = mlir::mpsx::ANEOp::getFunctionType(&v62);
  while (v10 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v11 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v10);
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"result%d", v10];
    v13 = EmitViewerSPI::emitNodeOutputPort(v12, v12, v11);

    if (v13)
    {
      [v9 addObject:v13];
    }

    ++v10;
  }

  AneFamily = mlir::mpsx::ANEOp::getAneFamily(&v62);
  v16 = EmitViewerSPI::emitStringProperty(AneFamily, @"ane_family", AneFamily, v15);
  if (v16)
  {
    [v57 addObject:v16];
  }

  IsExternal = mlir::mpsx::ANEOp::getIsExternal(&v62);
  v17 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"is_external" dataType:2147483656 shape:&unk_2868B06D0];
  if (v17)
  {
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:&IsExternal length:1];
    [(MLViewerNodePropertyDataSPI *)v17 setValue:v18];

    [v57 addObject:v17];
  }

  mlir::mpsx::ANEOp::getReadDataFromFileInfos(&v62);

  v56 = [MEMORY[0x277CBEB18] array];
  v19 = 0;
  v20 = (((v62 + 16 * ((*(v62 + 11) >> 23) & 1) + ((*(v62 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v62 + 10));
  while (*v20 != v20)
  {
    v21 = v20[1];
    v22 = v21 ? v21 - 8 : 0;
    if (v19 >= ((*(v22 + 56) - *(v22 + 48)) >> 3))
    {
      break;
    }

    v23 = v20[1];
    if (v23)
    {
      v24 = v23 - 8;
    }

    else
    {
      v24 = 0;
    }

    v25 = *(*(v24 + 48) + 8 * v19);
    if (!v25)
    {
      goto LABEL_21;
    }

    v26 = a2[7];
    if (!*&v26)
    {
      goto LABEL_49;
    }

    v27 = 0x9DDFEA08EB382D69 * ((8 * (v25 & 0x1FFFFFFF) + 8) ^ HIDWORD(v25));
    v28 = 0x9DDFEA08EB382D69 * (HIDWORD(v25) ^ (v27 >> 47) ^ v27);
    v29 = 0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47));
    v30 = vcnt_s8(v26);
    v30.i16[0] = vaddlv_u8(v30);
    if (v30.u32[0] > 1uLL)
    {
      v31 = v29;
      if (v29 >= *&v26)
      {
        v31 = v29 % *&v26;
      }
    }

    else
    {
      v31 = (*&v26 - 1) & v29;
    }

    v32 = *(*&a2[6] + 8 * v31);
    if (!v32 || (v33 = *v32) == 0)
    {
LABEL_49:
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"body_arg%d", v19];
      v36 = EmitViewerSPI::emitNodeOutputPort(a2, v35, v25);
      goto LABEL_50;
    }

    while (1)
    {
      v34 = v33[1];
      if (v34 == v29)
      {
        break;
      }

      if (v30.u32[0] > 1uLL)
      {
        if (v34 >= *&v26)
        {
          v34 %= *&v26;
        }
      }

      else
      {
        v34 &= *&v26 - 1;
      }

      if (v34 != v31)
      {
        goto LABEL_49;
      }

LABEL_42:
      v33 = *v33;
      if (!v33)
      {
        goto LABEL_49;
      }
    }

    if (v33[2] != v25)
    {
      goto LABEL_42;
    }

    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"body_arg%d", v19];
    v36 = EmitViewerSPI::emitNodeInputPort(a2, v35, v25);
LABEL_50:
    v37 = v36;

    if (v37)
    {
      [v58 addObject:v37];
    }

LABEL_21:
    ++v19;
  }

  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = v20[1]; i != v20; i = i[1])
  {
    v49 = i - 1;
    if (!i)
    {
      v49 = 0;
    }

    v50 = v49 + 4;
    for (j = v49[5]; j != v50; j = j[1])
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
      v53 = EmitViewerSPI::emitNode(a2, ValuePtr);
      if (v53)
      {
        [v38 addObject:v53];
      }
    }
  }

  v40 = [[MLViewerNodeRegionSPI alloc] initWithName:@"body" returnType:0 nodes:v38];
  [v56 addObject:v40];

  v41 = [MLViewerNodeSPI alloc];
  v42 = [MEMORY[0x277CBEA60] arrayWithArray:v58];
  v43 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v44 = [MEMORY[0x277CBEA60] arrayWithArray:v57];
  v45 = [MEMORY[0x277CBEA60] arrayWithArray:v56];
  v46 = [(MLViewerNodeSPI *)v41 initWithType:v54 inputs:v42 outputs:v43 properties:v44 regions:v45];
  v47 = *(this + 3);
  *(this + 3) = v46;

  if (v61 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256421F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXBufferToTensorOpHandler *EmitterViewerSPI::MPSXBufferToTensorOpHandler::MPSXBufferToTensorOpHandler(EmitterViewerSPI::MPSXBufferToTensorOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859AD0;
  v5 = *(*(a3 + 6) + 8);
  v47 = a3;
  v48 = v5;
  Value = mlir::StringAttr::getValue(&v48);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v46 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v46 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v43 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v47 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(v47 + 9))
  {
    v13 = v47 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  Shape = mlir::mpsx::BufferToTensorOp::getShape(&v47);
  if (v18)
  {
    if (Shape)
    {
      v19 = Shape;
      Shape = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Shape + 8);
      v20 = Shape;
      v21 = v19;
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }

    v22 = EmitViewerSPI::emitElementsAttrProperty(Shape, @"shape", v21, v20);
    if (v22)
    {
      [v16 addObject:v22];
    }
  }

  mlir::mpsx::BufferToTensorOp::getResultElementType(&v47);
  Interleave = mlir::mpsx::BufferToTensorOp::getInterleave(&v47);
  if (v24)
  {
    if (Interleave)
    {
      v25 = Interleave;
      Interleave = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Interleave + 8);
      v26 = Interleave;
      v27 = v25;
    }

    else
    {
      v27 = 0;
      v26 = 0;
    }

    v28 = EmitViewerSPI::emitElementsAttrProperty(Interleave, @"interleave", v27, v26);
    if (v28)
    {
      [v16 addObject:v28];
    }
  }

  LOBYTE(v48) = mlir::mpsx::BufferToTensorOp::getIsTensorBufferOp(&v47);
  v29 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"isTensorBufferOp" dataType:2147483656 shape:&unk_2868B06E8];
  if (v29)
  {
    v30 = [MEMORY[0x277CBEA90] dataWithBytes:&v48 length:1];
    [(MLViewerNodePropertyDataSPI *)v29 setValue:v30];

    [v16 addObject:v29];
  }

  IsChannelAndInterleaveSame = mlir::mpsx::BufferToTensorOp::getIsChannelAndInterleaveSame(&v47);
  v31 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"isChannelAndInterleaveSame" dataType:2147483656 shape:&unk_2868B0700];
  if (v31)
  {
    v32 = [MEMORY[0x277CBEA90] dataWithBytes:&IsChannelAndInterleaveSame length:1];
    [(MLViewerNodePropertyDataSPI *)v31 setValue:v32];

    [v16 addObject:v31];
  }

  v33 = [MEMORY[0x277CBEB18] array];
  v34 = [MLViewerNodeSPI alloc];
  v35 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v36 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v37 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v38 = [MEMORY[0x277CBEA60] arrayWithArray:v33];
  v39 = [(MLViewerNodeSPI *)v34 initWithType:v43 inputs:v35 outputs:v36 properties:v37 regions:v38];
  v40 = *(this + 3);
  *(this + 3) = v39;

  v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Converts a buffer to a tensor for MIL tensor buffer ops."];
  [*(this + 3) setLocalizedDescription:v41];

  if (v46 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2564225AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXCPUOpHandler *EmitterViewerSPI::MPSXCPUOpHandler::MPSXCPUOpHandler(EmitterViewerSPI::MPSXCPUOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859AE8;
  v4 = *(*(a3 + 6) + 8);
  v57 = a3;
  FunctionType = v4;
  Value = mlir::StringAttr::getValue(&FunctionType);
  v6 = strlen(Value);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v56 = v6;
  if (v6)
  {
    memmove(&__dst, Value, v6);
  }

  *(&__dst + v7) = 0;
  if (v56 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v51 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v54 = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CBEB18] array];
  v50 = [MEMORY[0x277CBEB18] array];
  v10 = 0;
  FunctionType = mlir::mpsx::CPUOp::getFunctionType(&v57);
  while (v10 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v11 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v10);
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"result%d", v10];
    v13 = EmitViewerSPI::emitNodeOutputPort(v12, v12, v11);

    if (v13)
    {
      [v9 addObject:v13];
    }

    ++v10;
  }

  v52 = [MEMORY[0x277CBEB18] array];
  v14 = 0;
  v15 = (((v57 + 16 * ((*(v57 + 11) >> 23) & 1) + ((*(v57 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v57 + 10));
  while (*v15 != v15)
  {
    v16 = v15[1];
    v17 = v16 ? v16 - 8 : 0;
    if (v14 >= ((*(v17 + 56) - *(v17 + 48)) >> 3))
    {
      break;
    }

    v18 = v15[1];
    if (v18)
    {
      v19 = v18 - 8;
    }

    else
    {
      v19 = 0;
    }

    v20 = *(*(v19 + 48) + 8 * v14);
    if (!v20)
    {
      goto LABEL_17;
    }

    v21 = a2[7];
    if (!*&v21)
    {
      goto LABEL_45;
    }

    v22 = 0x9DDFEA08EB382D69 * ((8 * (v20 & 0x1FFFFFFF) + 8) ^ HIDWORD(v20));
    v23 = 0x9DDFEA08EB382D69 * (HIDWORD(v20) ^ (v22 >> 47) ^ v22);
    v24 = 0x9DDFEA08EB382D69 * (v23 ^ (v23 >> 47));
    v25 = vcnt_s8(v21);
    v25.i16[0] = vaddlv_u8(v25);
    if (v25.u32[0] > 1uLL)
    {
      v26 = v24;
      if (v24 >= *&v21)
      {
        v26 = v24 % *&v21;
      }
    }

    else
    {
      v26 = (*&v21 - 1) & v24;
    }

    v27 = *(*&a2[6] + 8 * v26);
    if (!v27 || (v28 = *v27) == 0)
    {
LABEL_45:
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"body_arg%d", v14];
      v31 = EmitViewerSPI::emitNodeOutputPort(a2, v30, v20);
      goto LABEL_46;
    }

    while (1)
    {
      v29 = v28[1];
      if (v29 == v24)
      {
        break;
      }

      if (v25.u32[0] > 1uLL)
      {
        if (v29 >= *&v21)
        {
          v29 %= *&v21;
        }
      }

      else
      {
        v29 &= *&v21 - 1;
      }

      if (v29 != v26)
      {
        goto LABEL_45;
      }

LABEL_38:
      v28 = *v28;
      if (!v28)
      {
        goto LABEL_45;
      }
    }

    if (v28[2] != v20)
    {
      goto LABEL_38;
    }

    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"body_arg%d", v14];
    v31 = EmitViewerSPI::emitNodeInputPort(a2, v30, v20);
LABEL_46:
    v32 = v31;

    if (v32)
    {
      [v54 addObject:v32];
    }

LABEL_17:
    ++v14;
  }

  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = v15[1]; i != v15; i = i[1])
  {
    v35 = i - 1;
    if (!i)
    {
      v35 = 0;
    }

    v36 = v35 + 4;
    for (j = v35[5]; j != v36; j = j[1])
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
      v39 = EmitViewerSPI::emitNode(a2, ValuePtr);
      if (v39)
      {
        [v33 addObject:v39];
      }
    }
  }

  v40 = [[MLViewerNodeRegionSPI alloc] initWithName:@"body" returnType:0 nodes:v33];
  [v52 addObject:v40];

  v41 = [MLViewerNodeSPI alloc];
  v42 = [MEMORY[0x277CBEA60] arrayWithArray:v54];
  v43 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v44 = [MEMORY[0x277CBEA60] arrayWithArray:v50];
  v45 = [MEMORY[0x277CBEA60] arrayWithArray:v52];
  v46 = [(MLViewerNodeSPI *)v41 initWithType:v51 inputs:v42 outputs:v43 properties:v44 regions:v45];
  v47 = *(this + 3);
  *(this + 3) = v46;

  v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Container that represents a region of ops that will run on the CPU."];
  [*(this + 3) setLocalizedDescription:v48];

  if (v56 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256422CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXDeinterleaveOpHandler *EmitterViewerSPI::MPSXDeinterleaveOpHandler::MPSXDeinterleaveOpHandler(EmitterViewerSPI::MPSXDeinterleaveOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859B00;
  v5 = *(*(a3 + 6) + 8);
  v32 = a3;
  v33 = v5;
  Value = mlir::StringAttr::getValue(&v33);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v31 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v31 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v29 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v32 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(v32 + 9))
  {
    v13 = v32 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  LODWORD(v33) = mlir::mpsx::DeinterleaveOp::getInterleaveFactor(&v32);
  v17 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"interleave_factor" dataType:32 shape:&unk_2868B0718];
  if (v17)
  {
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:&v33 length:4];
    [(MLViewerNodePropertyDataSPI *)v17 setValue:v18];

    [v16 addObject:v17];
  }

  v19 = [MEMORY[0x277CBEB18] array];
  v20 = [MLViewerNodeSPI alloc];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v19];
  v25 = [(MLViewerNodeSPI *)v20 initWithType:v29 inputs:v21 outputs:v22 properties:v23 regions:v24];
  v26 = *(this + 3);
  *(this + 3) = v25;

  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Create a deinterleave op. Input is expected to be in NCHW or NDCHW data layout. The data layout will be transformed from N[D](C/I)H(W*I) to N[D]CHW."];
  [*(this + 3) setLocalizedDescription:v27];

  if (v31 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256423138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXFPToIntClampedOpHandler *EmitterViewerSPI::MPSXFPToIntClampedOpHandler::MPSXFPToIntClampedOpHandler(EmitterViewerSPI::MPSXFPToIntClampedOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859B18;
  v5 = *(*(a3 + 6) + 8);
  v30 = a3;
  v31 = v5;
  Value = mlir::StringAttr::getValue(&v31);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v30 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(v30 + 9))
  {
    v13 = v30 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  mlir::mpsx::FPToIntClampedOp::getResultElementType(&v30);
  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MLViewerNodeSPI alloc];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v23 = [(MLViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;
  v25 = ;
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256423530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXFusionOpHandler *EmitterViewerSPI::MPSXFusionOpHandler::MPSXFusionOpHandler(EmitterViewerSPI::MPSXFusionOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859B30;
  v83 = a3;
  v79[0] = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(v79);
  v5 = strlen(Value);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v82 = v5;
  if (v5)
  {
    memmove(&__dst, Value, v5);
  }

  *(&__dst + v6) = 0;
  if (v82 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v74 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v8 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mpsx::FusionOp::getODSOperandIndexAndLength(&v83, 0);
  if ((*(v83 + 46) & 0x80) != 0)
  {
    v10 = *(v83 + 9);
  }

  else
  {
    v10 = 0;
  }

  v11 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  v12 = v11 - ODSOperandIndexAndLength;
  if (v11 != ODSOperandIndexAndLength)
  {
    v63 = 0;
    v64 = 0;
    v65 = v10 + 32 * ODSOperandIndexAndLength;
    do
    {
      v66 = *(v65 + 32 * v63 + 24);
      v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"inputs%d", v64];
      v68 = EmitViewerSPI::emitNodeInputPort(a2, v67, v66);

      if (v68)
      {
        [v8 addObject:v68];
      }

      v63 = (v64 + 1);
      v64 = v63;
    }

    while (v12 > v63);
  }

  v78 = [MEMORY[0x277CBEB18] array];
  ODSResultIndexAndLength = mlir::mpsx::FusionOp::getODSResultIndexAndLength(&v83, 0);
  v14 = ODSResultIndexAndLength;
  if (*(v83 + 9))
  {
    NextResultAtOffset = v83 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v16 = (HIDWORD(v14) + v14);
  v17 = v16 - v14;
  if (v16 != v14)
  {
    v69 = 0;
    v70 = 0;
    do
    {
      v71 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v69);
      v72 = [MEMORY[0x277CCACA8] stringWithFormat:@"results%d", v70];
      v73 = EmitViewerSPI::emitNodeOutputPort(a2, v72, v71);

      if (v73)
      {
        [v78 addObject:v73];
      }

      v69 = (v70 + 1);
      v70 = v69;
    }

    while (v17 > v69);
  }

  v75 = [MEMORY[0x277CBEB18] array];
  FusionType = mlir::mpsx::FusionOp::getFusionType(&v83);
  v19 = [MEMORY[0x277CBEB18] array];
  v20 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"custom" value:0];
  [v19 addObject:v20];

  v21 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"QuantizedConv2D" value:1];
  [v19 addObject:v21];

  v22 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"QuantizedGatherND" value:2];
  [v19 addObject:v22];

  v23 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"QuantizedMatMul" value:3];
  [v19 addObject:v23];

  v24 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"fusionType" type:@"MPSXFusionType" cases:v19 value:FusionType];
  if (v24)
  {
    [v75 addObject:v24];
  }

  CustomFusionType = mlir::mpsx::FusionOp::getCustomFusionType(&v83, v79);
  if (v80 == 1)
  {
    v26 = EmitViewerSPI::emitStringProperty(CustomFusionType, @"customFusionType", v79[0], v79[1]);
    if (v26)
    {
      [v75 addObject:v26];
    }
  }

  v76 = [MEMORY[0x277CBEB18] array];
  v27 = 0;
  v28 = (((v83 + 16 * ((*(v83 + 11) >> 23) & 1) + ((*(v83 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v83 + 10));
  while (*v28 != v28)
  {
    v29 = v28[1];
    v30 = v29 ? v29 - 8 : 0;
    if (v27 >= ((*(v30 + 56) - *(v30 + 48)) >> 3))
    {
      break;
    }

    v31 = v28[1];
    if (v31)
    {
      v32 = v31 - 8;
    }

    else
    {
      v32 = 0;
    }

    v33 = *(*(v32 + 48) + 8 * v27);
    if (!v33)
    {
      goto LABEL_27;
    }

    v34 = a2[7];
    if (!*&v34)
    {
      goto LABEL_55;
    }

    v35 = 0x9DDFEA08EB382D69 * ((8 * (v33 & 0x1FFFFFFF) + 8) ^ HIDWORD(v33));
    v36 = 0x9DDFEA08EB382D69 * (HIDWORD(v33) ^ (v35 >> 47) ^ v35);
    v37 = 0x9DDFEA08EB382D69 * (v36 ^ (v36 >> 47));
    v38 = vcnt_s8(v34);
    v38.i16[0] = vaddlv_u8(v38);
    if (v38.u32[0] > 1uLL)
    {
      v39 = v37;
      if (v37 >= *&v34)
      {
        v39 = v37 % *&v34;
      }
    }

    else
    {
      v39 = (*&v34 - 1) & v37;
    }

    v40 = *(*&a2[6] + 8 * v39);
    if (!v40 || (v41 = *v40) == 0)
    {
LABEL_55:
      v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"op_arg%d", v27];
      v44 = EmitViewerSPI::emitNodeOutputPort(a2, v43, v33);
      goto LABEL_56;
    }

    while (1)
    {
      v42 = v41[1];
      if (v42 == v37)
      {
        break;
      }

      if (v38.u32[0] > 1uLL)
      {
        if (v42 >= *&v34)
        {
          v42 %= *&v34;
        }
      }

      else
      {
        v42 &= *&v34 - 1;
      }

      if (v42 != v39)
      {
        goto LABEL_55;
      }

LABEL_48:
      v41 = *v41;
      if (!v41)
      {
        goto LABEL_55;
      }
    }

    if (v41[2] != v33)
    {
      goto LABEL_48;
    }

    v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"op_arg%d", v27];
    v44 = EmitViewerSPI::emitNodeInputPort(a2, v43, v33);
LABEL_56:
    v45 = v44;

    if (v45)
    {
      [v8 addObject:v45];
    }

LABEL_27:
    ++v27;
  }

  v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = v28[1]; i != v28; i = i[1])
  {
    v48 = i - 1;
    if (!i)
    {
      v48 = 0;
    }

    v49 = v48 + 4;
    for (j = v48[5]; j != v49; j = j[1])
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
      v52 = EmitViewerSPI::emitNode(a2, ValuePtr);
      if (v52)
      {
        [v46 addObject:v52];
      }
    }
  }

  v53 = [[MLViewerNodeRegionSPI alloc] initWithName:@"op" returnType:0 nodes:v46];
  [v76 addObject:v53];

  v54 = [MLViewerNodeSPI alloc];
  v55 = [MEMORY[0x277CBEA60] arrayWithArray:v8];
  v56 = [MEMORY[0x277CBEA60] arrayWithArray:v78];
  v57 = [MEMORY[0x277CBEA60] arrayWithArray:v75];
  v58 = [MEMORY[0x277CBEA60] arrayWithArray:v76];
  v59 = [(MLViewerNodeSPI *)v54 initWithType:v74 inputs:v55 outputs:v56 properties:v57 regions:v58];
  v60 = *(this + 3);
  *(this + 3) = v59;

  v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Represents a set of operations that is clustered together."];
  [*(this + 3) setLocalizedDescription:v61];

  if (v82 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256423E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXFusionReturnOpHandler *EmitterViewerSPI::MPSXFusionReturnOpHandler::MPSXFusionReturnOpHandler(EmitterViewerSPI::MPSXFusionReturnOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859B48;
  v4 = *(*(a3 + 6) + 8);
  v36 = a3;
  v37 = v4;
  Value = mlir::StringAttr::getValue(&v37);
  v6 = strlen(Value);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v35 = v6;
  if (v6)
  {
    memmove(&__dst, Value, v6);
  }

  *(&__dst + v7) = 0;
  if (v35 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v32 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mpsx::FusionOp::getODSOperandIndexAndLength(&v36, 0);
  if ((*(v36 + 46) & 0x80) != 0)
  {
    v11 = *(v36 + 9);
  }

  else
  {
    v11 = 0;
  }

  v12 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  v13 = v12 - ODSOperandIndexAndLength;
  if (v12 != ODSOperandIndexAndLength)
  {
    v26 = 0;
    v27 = 0;
    v28 = v11 + 32 * ODSOperandIndexAndLength;
    do
    {
      v29 = *(v28 + 32 * v26 + 24);
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"results%d", v27];
      v31 = EmitViewerSPI::emitNodeInputPort(a2, v30, v29);

      if (v31)
      {
        [v9 addObject:v31];
      }

      v26 = (v27 + 1);
      v27 = v26;
    }

    while (v13 > v26);
  }

  v14 = [MEMORY[0x277CBEB18] array];
  v15 = [MEMORY[0x277CBEB18] array];
  v16 = [MEMORY[0x277CBEB18] array];
  v17 = [MLViewerNodeSPI alloc];
  v18 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v22 = [(MLViewerNodeSPI *)v17 initWithType:v32 inputs:v18 outputs:v19 properties:v20 regions:v21];
  v23 = *(this + 3);
  *(this + 3) = v22;

  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"The return operation represents a return operation within a fused region."];
  [*(this + 3) setLocalizedDescription:v24];

  if (v35 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2564242F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXGPUOpHandler *EmitterViewerSPI::MPSXGPUOpHandler::MPSXGPUOpHandler(EmitterViewerSPI::MPSXGPUOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859B60;
  v4 = *(*(a3 + 6) + 8);
  v57 = a3;
  FunctionType = v4;
  Value = mlir::StringAttr::getValue(&FunctionType);
  v6 = strlen(Value);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v56 = v6;
  if (v6)
  {
    memmove(&__dst, Value, v6);
  }

  *(&__dst + v7) = 0;
  if (v56 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v51 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v54 = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CBEB18] array];
  v50 = [MEMORY[0x277CBEB18] array];
  v10 = 0;
  FunctionType = mlir::mpsx::CPUOp::getFunctionType(&v57);
  while (v10 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v11 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v10);
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"result%d", v10];
    v13 = EmitViewerSPI::emitNodeOutputPort(v12, v12, v11);

    if (v13)
    {
      [v9 addObject:v13];
    }

    ++v10;
  }

  v52 = [MEMORY[0x277CBEB18] array];
  v14 = 0;
  v15 = (((v57 + 16 * ((*(v57 + 11) >> 23) & 1) + ((*(v57 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v57 + 10));
  while (*v15 != v15)
  {
    v16 = v15[1];
    v17 = v16 ? v16 - 8 : 0;
    if (v14 >= ((*(v17 + 56) - *(v17 + 48)) >> 3))
    {
      break;
    }

    v18 = v15[1];
    if (v18)
    {
      v19 = v18 - 8;
    }

    else
    {
      v19 = 0;
    }

    v20 = *(*(v19 + 48) + 8 * v14);
    if (!v20)
    {
      goto LABEL_17;
    }

    v21 = a2[7];
    if (!*&v21)
    {
      goto LABEL_45;
    }

    v22 = 0x9DDFEA08EB382D69 * ((8 * (v20 & 0x1FFFFFFF) + 8) ^ HIDWORD(v20));
    v23 = 0x9DDFEA08EB382D69 * (HIDWORD(v20) ^ (v22 >> 47) ^ v22);
    v24 = 0x9DDFEA08EB382D69 * (v23 ^ (v23 >> 47));
    v25 = vcnt_s8(v21);
    v25.i16[0] = vaddlv_u8(v25);
    if (v25.u32[0] > 1uLL)
    {
      v26 = v24;
      if (v24 >= *&v21)
      {
        v26 = v24 % *&v21;
      }
    }

    else
    {
      v26 = (*&v21 - 1) & v24;
    }

    v27 = *(*&a2[6] + 8 * v26);
    if (!v27 || (v28 = *v27) == 0)
    {
LABEL_45:
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"body_arg%d", v14];
      v31 = EmitViewerSPI::emitNodeOutputPort(a2, v30, v20);
      goto LABEL_46;
    }

    while (1)
    {
      v29 = v28[1];
      if (v29 == v24)
      {
        break;
      }

      if (v25.u32[0] > 1uLL)
      {
        if (v29 >= *&v21)
        {
          v29 %= *&v21;
        }
      }

      else
      {
        v29 &= *&v21 - 1;
      }

      if (v29 != v26)
      {
        goto LABEL_45;
      }

LABEL_38:
      v28 = *v28;
      if (!v28)
      {
        goto LABEL_45;
      }
    }

    if (v28[2] != v20)
    {
      goto LABEL_38;
    }

    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"body_arg%d", v14];
    v31 = EmitViewerSPI::emitNodeInputPort(a2, v30, v20);
LABEL_46:
    v32 = v31;

    if (v32)
    {
      [v54 addObject:v32];
    }

LABEL_17:
    ++v14;
  }

  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = v15[1]; i != v15; i = i[1])
  {
    v35 = i - 1;
    if (!i)
    {
      v35 = 0;
    }

    v36 = v35 + 4;
    for (j = v35[5]; j != v36; j = j[1])
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
      v39 = EmitViewerSPI::emitNode(a2, ValuePtr);
      if (v39)
      {
        [v33 addObject:v39];
      }
    }
  }

  v40 = [[MLViewerNodeRegionSPI alloc] initWithName:@"body" returnType:@"mpsx.region_return" nodes:v33];
  [v52 addObject:v40];

  v41 = [MLViewerNodeSPI alloc];
  v42 = [MEMORY[0x277CBEA60] arrayWithArray:v54];
  v43 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v44 = [MEMORY[0x277CBEA60] arrayWithArray:v50];
  v45 = [MEMORY[0x277CBEA60] arrayWithArray:v52];
  v46 = [(MLViewerNodeSPI *)v41 initWithType:v51 inputs:v42 outputs:v43 properties:v44 regions:v45];
  v47 = *(this + 3);
  *(this + 3) = v46;

  v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Container that represents a region of ops that will run on the GPU."];
  [*(this + 3) setLocalizedDescription:v48];

  if (v56 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256424978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXInterleaveOpHandler *EmitterViewerSPI::MPSXInterleaveOpHandler::MPSXInterleaveOpHandler(EmitterViewerSPI::MPSXInterleaveOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859B78;
  v5 = *(*(a3 + 6) + 8);
  v32 = a3;
  v33 = v5;
  Value = mlir::StringAttr::getValue(&v33);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v31 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v31 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v29 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v32 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(v32 + 9))
  {
    v13 = v32 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  LODWORD(v33) = mlir::mpsx::DeinterleaveOp::getInterleaveFactor(&v32);
  v17 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"interleave_factor" dataType:32 shape:&unk_2868B0730];
  if (v17)
  {
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:&v33 length:4];
    [(MLViewerNodePropertyDataSPI *)v17 setValue:v18];

    [v16 addObject:v17];
  }

  v19 = [MEMORY[0x277CBEB18] array];
  v20 = [MLViewerNodeSPI alloc];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v19];
  v25 = [(MLViewerNodeSPI *)v20 initWithType:v29 inputs:v21 outputs:v22 properties:v23 regions:v24];
  v26 = *(this + 3);
  *(this + 3) = v25;

  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"Create an interleave op. The input is expected to be in NCHW or NDCHW data layout. The data layout will be transformed from N[D]CHW to N[D](C/I)H(W*I). This operation should only be used to be folded with an ANE Region op. Interleave factors 1, 2, 4, 8 are natively supported by ANE. Interleave factors in between can be used if the I/O buffers are aligned and filled properly."}];
  [*(this + 3) setLocalizedDescription:v27];

  if (v31 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256424E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXListPopBackOpHandler *EmitterViewerSPI::MPSXListPopBackOpHandler::MPSXListPopBackOpHandler(EmitterViewerSPI::MPSXListPopBackOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859B90;
  v34 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v34);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v33 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v33 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v31 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input_list", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"output_list", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  if (*(a3 + 9))
  {
    v16 = a3 - 16;
  }

  else
  {
    v16 = 0;
  }

  v17 = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 1);
  v18 = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0);
  v19 = EmitViewerSPI::emitNodeOutputPort(a2, @"element", v18);
  if (v19)
  {
    [v12 addObject:v19];
  }

  v20 = [MEMORY[0x277CBEB18] array];
  v21 = [MEMORY[0x277CBEB18] array];
  v22 = [MLViewerNodeSPI alloc];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v20];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v21];
  v27 = [(MLViewerNodeSPI *)v22 initWithType:v31 inputs:v23 outputs:v24 properties:v25 regions:v26];
  v28 = *(this + 3);
  *(this + 3) = v27;
  v29 = ;
  [*(this + 3) setLocalizedDescription:v29];

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256425244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXListPushBackOpHandler *EmitterViewerSPI::MPSXListPushBackOpHandler::MPSXListPushBackOpHandler(EmitterViewerSPI::MPSXListPushBackOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859BA8;
  v31 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v31);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v30 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v30 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v28 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input_list", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"element", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [MLViewerNodeSPI alloc];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
  v24 = [(MLViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256425664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXMakeListOpHandler *EmitterViewerSPI::MPSXMakeListOpHandler::MPSXMakeListOpHandler(EmitterViewerSPI::MPSXMakeListOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859BC0;
  v5 = *(*(a3 + 6) + 8);
  v34 = a3;
  v35 = v5;
  Value = mlir::StringAttr::getValue(&v35);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v33 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v33 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v31 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CBEB18] array];
  if (*(v34 + 9))
  {
    v12 = v34 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v14 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v14)
  {
    [v11 addObject:v14];
  }

  v15 = [MEMORY[0x277CBEB18] array];
  mlir::mpsx::FPToIntClampedOp::getResultElementType(&v34);
  MaxSize = mlir::mpsx::MakeListOp::getMaxSize(&v34);
  LODWORD(v35) = MaxSize;
  BYTE4(v35) = BYTE4(MaxSize);
  if ((MaxSize & 0x100000000) != 0)
  {
    v17 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"max_size" dataType:32 shape:&unk_2868B0748];
    if (v17)
    {
      if ((v35 & 0x100000000) == 0)
      {
        v30 = std::__throw_bad_optional_access[abi:nn200100]();

        if (v33 < 0)
        {
          operator delete(__dst);
        }

        _Unwind_Resume(v30);
      }

      v18 = [MEMORY[0x277CBEA90] dataWithBytes:&v35 length:8];
      [(MLViewerNodePropertyDataSPI *)v17 setValue:v18];

      [v15 addObject:v17];
    }
  }

  v19 = [MEMORY[0x277CBEB18] array];
  v20 = [MLViewerNodeSPI alloc];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v22 = v11;
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v19];
  v26 = [(MLViewerNodeSPI *)v20 initWithType:v31 inputs:v21 outputs:v23 properties:v24 regions:v25];
  v27 = *(this + 3);
  *(this + 3) = v26;
  v28 = ;
  [*(this + 3) setLocalizedDescription:v28];

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

EmitterViewerSPI::MPSXMemrefBackedOpHandler *EmitterViewerSPI::MPSXMemrefBackedOpHandler::MPSXMemrefBackedOpHandler(EmitterViewerSPI::MPSXMemrefBackedOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859BD8;
  v5 = *(*(a3 + 6) + 8);
  v64 = a3;
  v65 = v5;
  Value = mlir::StringAttr::getValue(&v65);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v63 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v63 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v60 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mpsx::FusionOp::getODSOperandIndexAndLength(&v64, 0);
  v59 = this;
  if ((*(v64 + 46) & 0x80) != 0)
  {
    v12 = *(v64 + 9);
  }

  else
  {
    v12 = 0;
  }

  v13 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  v14 = v13 - ODSOperandIndexAndLength;
  if (v13 != ODSOperandIndexAndLength)
  {
    v51 = 0;
    v52 = 0;
    v53 = v12 + 32 * ODSOperandIndexAndLength;
    do
    {
      v54 = *(v53 + 32 * v51 + 24);
      v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"inputs%d", v52];
      v56 = EmitViewerSPI::emitNodeInputPort(a2, v55, v54);

      if (v56)
      {
        [v10 addObject:v56];
      }

      v51 = (v52 + 1);
      v52 = v51;
    }

    while (v14 > v51);
  }

  v58 = [MEMORY[0x277CBEB18] array];
  v57 = [MEMORY[0x277CBEB18] array];
  v61 = [MEMORY[0x277CBEB18] array];
  v15 = 0;
  v16 = (((v64 + 16 * ((*(v64 + 11) >> 23) & 1) + ((*(v64 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v64 + 10));
  while (*v16 != v16)
  {
    v17 = v16[1];
    v18 = v17 ? v17 - 8 : 0;
    if (v15 >= ((*(v18 + 56) - *(v18 + 48)) >> 3))
    {
      break;
    }

    v19 = v16[1];
    if (v19)
    {
      v20 = v19 - 8;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(*(v20 + 48) + 8 * v15);
    if (!v21)
    {
      goto LABEL_15;
    }

    v22 = a2[7];
    if (!*&v22)
    {
      goto LABEL_43;
    }

    v23 = 0x9DDFEA08EB382D69 * ((8 * (v21 & 0x1FFFFFFF) + 8) ^ HIDWORD(v21));
    v24 = 0x9DDFEA08EB382D69 * (HIDWORD(v21) ^ (v23 >> 47) ^ v23);
    v25 = 0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47));
    v26 = vcnt_s8(v22);
    v26.i16[0] = vaddlv_u8(v26);
    if (v26.u32[0] > 1uLL)
    {
      v27 = v25;
      if (v25 >= *&v22)
      {
        v27 = v25 % *&v22;
      }
    }

    else
    {
      v27 = (*&v22 - 1) & v25;
    }

    v28 = *(*&a2[6] + 8 * v27);
    if (!v28 || (v29 = *v28) == 0)
    {
LABEL_43:
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"op_arg%d", v15];
      v32 = EmitViewerSPI::emitNodeOutputPort(a2, v31, v21);
      goto LABEL_44;
    }

    while (1)
    {
      v30 = v29[1];
      if (v30 == v25)
      {
        break;
      }

      if (v26.u32[0] > 1uLL)
      {
        if (v30 >= *&v22)
        {
          v30 %= *&v22;
        }
      }

      else
      {
        v30 &= *&v22 - 1;
      }

      if (v30 != v27)
      {
        goto LABEL_43;
      }

LABEL_36:
      v29 = *v29;
      if (!v29)
      {
        goto LABEL_43;
      }
    }

    if (v29[2] != v21)
    {
      goto LABEL_36;
    }

    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"op_arg%d", v15];
    v32 = EmitViewerSPI::emitNodeInputPort(a2, v31, v21);
LABEL_44:
    v33 = v32;

    if (v33)
    {
      [v10 addObject:v33];
    }

LABEL_15:
    ++v15;
  }

  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = v16[1]; i != v16; i = i[1])
  {
    v36 = i - 1;
    if (!i)
    {
      v36 = 0;
    }

    v37 = v36 + 4;
    for (j = v36[5]; j != v37; j = j[1])
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
      v40 = EmitViewerSPI::emitNode(a2, ValuePtr);
      if (v40)
      {
        [v34 addObject:v40];
      }
    }
  }

  v41 = [[MLViewerNodeRegionSPI alloc] initWithName:@"op" returnType:0 nodes:v34];
  [v61 addObject:v41];

  v42 = [MLViewerNodeSPI alloc];
  v43 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v44 = [MEMORY[0x277CBEA60] arrayWithArray:v58];
  v45 = [MEMORY[0x277CBEA60] arrayWithArray:v57];
  v46 = [MEMORY[0x277CBEA60] arrayWithArray:v61];
  v47 = [(MLViewerNodeSPI *)v42 initWithType:v60 inputs:v43 outputs:v44 properties:v45 regions:v46];
  v48 = *(v59 + 3);
  *(v59 + 3) = v47;

  v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Marks a region of ops which are using memrefs."];
  [*(v59 + 3) setLocalizedDescription:v49];

  if (v63 < 0)
  {
    operator delete(__dst);
  }

  return v59;
}

void sub_256426174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, void *a14, void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void EmitterViewerSPI::MPSXQuantizedConv2DOpHandler::MPSXQuantizedConv2DOpHandler(EmitterViewerSPI::MPSXQuantizedConv2DOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859BF0;
  v3 = *(*(a3 + 6) + 8);
  v10 = a3;
  v11 = v3;
  Value = mlir::StringAttr::getValue(&v11);
  v5 = strlen(Value);
  if (v5 < 0x7FFFFFFFFFFFFFF8)
  {
    v6 = v5;
    if (v5 < 0x17)
    {
      v9 = v5;
      if (v5)
      {
        memmove(&__dst, Value, v5);
      }

      *(&__dst + v6) = 0;
      if (v9 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
      objc_claimAutoreleasedReturnValue();
      [MEMORY[0x277CBEB18] array];
      objc_claimAutoreleasedReturnValue();
      mlir::mpsx::QuantizedConv2DOp::getODSOperandIndexAndLength(&v10, 0);
    }

    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void EmitterViewerSPI::MPSXQuantizedGatherOpHandler::MPSXQuantizedGatherOpHandler(EmitterViewerSPI::MPSXQuantizedGatherOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859C08;
  v3 = *(*(a3 + 6) + 8);
  v10 = a3;
  v11 = v3;
  Value = mlir::StringAttr::getValue(&v11);
  v5 = strlen(Value);
  if (v5 < 0x7FFFFFFFFFFFFFF8)
  {
    v6 = v5;
    if (v5 < 0x17)
    {
      v9 = v5;
      if (v5)
      {
        memmove(&__dst, Value, v5);
      }

      *(&__dst + v6) = 0;
      if (v9 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
      [MEMORY[0x277CBEB18] array];
      objc_claimAutoreleasedReturnValue();
      mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(&v10, 0);
    }

    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void sub_256427AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void EmitterViewerSPI::MPSXQuantizedMatMulOpHandler::MPSXQuantizedMatMulOpHandler(EmitterViewerSPI::MPSXQuantizedMatMulOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859C20;
  v3 = *(*(a3 + 6) + 8);
  v10 = a3;
  v11 = v3;
  Value = mlir::StringAttr::getValue(&v11);
  v5 = strlen(Value);
  if (v5 < 0x7FFFFFFFFFFFFFF8)
  {
    v6 = v5;
    if (v5 < 0x17)
    {
      v9 = v5;
      if (v5)
      {
        memmove(&__dst, Value, v5);
      }

      *(&__dst + v6) = 0;
      if (v9 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
      [MEMORY[0x277CBEB18] array];
      objc_claimAutoreleasedReturnValue();
      mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v10, 0);
    }

    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

EmitterViewerSPI::MPSXRegionReturnOpHandler *EmitterViewerSPI::MPSXRegionReturnOpHandler::MPSXRegionReturnOpHandler(EmitterViewerSPI::MPSXRegionReturnOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859C38;
  v4 = *(*(a3 + 6) + 8);
  v35 = a3;
  v36 = v4;
  Value = mlir::StringAttr::getValue(&v36);
  v6 = strlen(Value);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v34 = v6;
  if (v6)
  {
    memmove(&__dst, Value, v6);
  }

  *(&__dst + v7) = 0;
  if (v34 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v31 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mpsx::FusionOp::getODSOperandIndexAndLength(&v35, 0);
  if ((*(v35 + 46) & 0x80) != 0)
  {
    v11 = *(v35 + 9);
  }

  else
  {
    v11 = 0;
  }

  v12 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  v13 = v12 - ODSOperandIndexAndLength;
  if (v12 != ODSOperandIndexAndLength)
  {
    v25 = 0;
    v26 = 0;
    v27 = v11 + 32 * ODSOperandIndexAndLength;
    do
    {
      v28 = *(v27 + 32 * v25 + 24);
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"inputs%d", v26];
      v30 = EmitViewerSPI::emitNodeInputPort(a2, v29, v28);

      if (v30)
      {
        [v9 addObject:v30];
      }

      v25 = (v26 + 1);
      v26 = v25;
    }

    while (v13 > v25);
  }

  v14 = [MEMORY[0x277CBEB18] array];
  v15 = [MEMORY[0x277CBEB18] array];
  v16 = [MEMORY[0x277CBEB18] array];
  v17 = [MLViewerNodeSPI alloc];
  v18 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v22 = [(MLViewerNodeSPI *)v17 initWithType:v31 inputs:v18 outputs:v19 properties:v20 regions:v21];
  v23 = *(this + 3);
  *(this + 3) = v22;

  if (v34 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256428AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXReturnStitchedOpHandler *EmitterViewerSPI::MPSXReturnStitchedOpHandler::MPSXReturnStitchedOpHandler(EmitterViewerSPI::MPSXReturnStitchedOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859C50;
  v27 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v27);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v26 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v26 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v24 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  v13 = [MEMORY[0x277CBEB18] array];
  v14 = [MEMORY[0x277CBEB18] array];
  v15 = [MLViewerNodeSPI alloc];
  v16 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v17 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v18 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v20 = [(MLViewerNodeSPI *)v15 initWithType:v24 inputs:v16 outputs:v17 properties:v18 regions:v19];
  v21 = *(this + 3);
  *(this + 3) = v20;

  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"The return operation represents a return operation within a stitched region."];
  [*(this + 3) setLocalizedDescription:v22];

  if (v26 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256428E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXSparseDenseMatMulOpHandler *EmitterViewerSPI::MPSXSparseDenseMatMulOpHandler::MPSXSparseDenseMatMulOpHandler(EmitterViewerSPI::MPSXSparseDenseMatMulOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859C68;
  v5 = *(*(a3 + 6) + 8);
  v45 = a3;
  v46 = v5;
  Value = mlir::StringAttr::getValue(&v46);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v44 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v44 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v40 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"sparse_values", *(*(v45 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"index_tensor0", *(*(v45 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"index_tensor1", *(*(v45 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"sparse_shape", *(*(v45 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = EmitViewerSPI::emitNodeInputPort(a2, @"dense", *(*(v45 + 9) + 152));
  if (v15)
  {
    [v10 addObject:v15];
  }

  v41 = [MEMORY[0x277CBEB18] array];
  if (*(v45 + 9))
  {
    v16 = v45 - 16;
  }

  else
  {
    v16 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
  v18 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v18)
  {
    [v41 addObject:v18];
  }

  v19 = [MEMORY[0x277CBEB18] array];
  LOBYTE(v46) = mlir::mpsx::SparseDenseMatMulOp::getTransposeLhs(&v45);
  v20 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"transpose_lhs" dataType:2147483656 shape:&unk_2868B0838];
  if (v20)
  {
    v21 = [MEMORY[0x277CBEA90] dataWithBytes:&v46 length:1];
    [(MLViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v19 addObject:v20];
  }

  TransposeRhs = mlir::mpsx::SparseDenseMatMulOp::getTransposeRhs(&v45);
  v22 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"transpose_rhs" dataType:2147483656 shape:&unk_2868B0850];
  if (v22)
  {
    v23 = [MEMORY[0x277CBEA90] dataWithBytes:&TransposeRhs length:1];
    [(MLViewerNodePropertyDataSPI *)v22 setValue:v23];

    [v19 addObject:v22];
  }

  StorageType = mlir::mpsx::SparseDenseMatMulOp::getStorageType(&v45);
  v25 = [MEMORY[0x277CBEB18] array];
  v26 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"COO" value:0];
  [v25 addObject:v26];

  v27 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CSC" value:1];
  [v25 addObject:v27];

  v28 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CSR" value:2];
  [v25 addObject:v28];

  v29 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"storage_type" type:@"MPSSparseTensorStorage" cases:v25 value:StorageType];
  if (v29)
  {
    [v19 addObject:v29];
  }

  v30 = [MEMORY[0x277CBEB18] array];
  v31 = [MLViewerNodeSPI alloc];
  v32 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v33 = [MEMORY[0x277CBEA60] arrayWithArray:v41];
  v34 = [MEMORY[0x277CBEA60] arrayWithArray:v19];
  v35 = [MEMORY[0x277CBEA60] arrayWithArray:v30];
  v36 = [(MLViewerNodeSPI *)v31 initWithType:v40 inputs:v32 outputs:v33 properties:v34 regions:v35];
  v37 = *(this + 3);
  *(this + 3) = v36;

  v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"The operation represents the multiplication between a sparse matrix and a dense matrix. The sparse matrix is expected to be on the left hand side, while the dense matrix on the right hand side. The opposite combination (dense times sparse) is currently supported through the transpose formula:\nC^T = (B * Asparse)^T = (Asparse^T * B^T)."}];
  [*(this + 3) setLocalizedDescription:v38];

  if (v44 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256429480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXStitchedOpHandler *EmitterViewerSPI::MPSXStitchedOpHandler::MPSXStitchedOpHandler(EmitterViewerSPI::MPSXStitchedOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859C80;
  v55 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v55);
  v6 = strlen(Value);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v54 = v6;
  if (v6)
  {
    memmove(&__dst, Value, v6);
  }

  *(&__dst + v7) = 0;
  if (v54 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v48 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x277CBEB18] array];
  v51 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v10 = a3 - 16;
  }

  else
  {
    v10 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
  v12 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v12)
  {
    [v51 addObject:v12];
  }

  v50 = [MEMORY[0x277CBEB18] array];
  v52 = [MEMORY[0x277CBEB18] array];
  v13 = 0;
  v14 = (((a3 + 16 * ((*(a3 + 11) >> 23) & 1) + ((*(a3 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a3 + 10));
  while (*v14 != v14)
  {
    v15 = v14[1];
    v16 = v15 ? v15 - 8 : 0;
    if (v13 >= ((*(v16 + 56) - *(v16 + 48)) >> 3))
    {
      break;
    }

    v17 = v14[1];
    if (v17)
    {
      v18 = v17 - 8;
    }

    else
    {
      v18 = 0;
    }

    v19 = *(*(v18 + 48) + 8 * v13);
    if (!v19)
    {
      goto LABEL_17;
    }

    v20 = a2[7];
    if (!*&v20)
    {
      goto LABEL_45;
    }

    v21 = 0x9DDFEA08EB382D69 * ((8 * (v19 & 0x1FFFFFFF) + 8) ^ HIDWORD(v19));
    v22 = 0x9DDFEA08EB382D69 * (HIDWORD(v19) ^ (v21 >> 47) ^ v21);
    v23 = 0x9DDFEA08EB382D69 * (v22 ^ (v22 >> 47));
    v24 = vcnt_s8(v20);
    v24.i16[0] = vaddlv_u8(v24);
    if (v24.u32[0] > 1uLL)
    {
      v25 = v23;
      if (v23 >= *&v20)
      {
        v25 = v23 % *&v20;
      }
    }

    else
    {
      v25 = (*&v20 - 1) & v23;
    }

    v26 = *(*&a2[6] + 8 * v25);
    if (!v26 || (v27 = *v26) == 0)
    {
LABEL_45:
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"op_arg%d", v13];
      v30 = EmitViewerSPI::emitNodeOutputPort(a2, v29, v19);
      goto LABEL_46;
    }

    while (1)
    {
      v28 = v27[1];
      if (v28 == v23)
      {
        break;
      }

      if (v24.u32[0] > 1uLL)
      {
        if (v28 >= *&v20)
        {
          v28 %= *&v20;
        }
      }

      else
      {
        v28 &= *&v20 - 1;
      }

      if (v28 != v25)
      {
        goto LABEL_45;
      }

LABEL_38:
      v27 = *v27;
      if (!v27)
      {
        goto LABEL_45;
      }
    }

    if (v27[2] != v19)
    {
      goto LABEL_38;
    }

    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"op_arg%d", v13];
    v30 = EmitViewerSPI::emitNodeInputPort(a2, v29, v19);
LABEL_46:
    v31 = v30;

    if (v31)
    {
      [v9 addObject:v31];
    }

LABEL_17:
    ++v13;
  }

  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = v14[1]; i != v14; i = i[1])
  {
    v43 = i - 1;
    if (!i)
    {
      v43 = 0;
    }

    v44 = v43 + 4;
    for (j = v43[5]; j != v44; j = j[1])
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
      v47 = EmitViewerSPI::emitNode(a2, ValuePtr);
      if (v47)
      {
        [v32 addObject:v47];
      }
    }
  }

  v34 = [[MLViewerNodeRegionSPI alloc] initWithName:@"op" returnType:@"mpsx.stitched_return" nodes:v32];
  [v52 addObject:v34];

  v35 = [MLViewerNodeSPI alloc];
  v36 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v37 = [MEMORY[0x277CBEA60] arrayWithArray:v51];
  v38 = [MEMORY[0x277CBEA60] arrayWithArray:v50];
  v39 = [MEMORY[0x277CBEA60] arrayWithArray:v52];
  v40 = [(MLViewerNodeSPI *)v35 initWithType:v48 inputs:v36 outputs:v37 properties:v38 regions:v39];
  v41 = *(this + 3);
  *(this + 3) = v40;

  if (v54 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256429B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXTensorToBufferOpHandler *EmitterViewerSPI::MPSXTensorToBufferOpHandler::MPSXTensorToBufferOpHandler(EmitterViewerSPI::MPSXTensorToBufferOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859C98;
  v5 = *(*(a3 + 6) + 8);
  v47 = a3;
  v48 = v5;
  Value = mlir::StringAttr::getValue(&v48);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v46 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v46 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v43 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v47 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(v47 + 9))
  {
    v13 = v47 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  Shape = mlir::mpsx::BufferToTensorOp::getShape(&v47);
  if (v18)
  {
    if (Shape)
    {
      v19 = Shape;
      Shape = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Shape + 8);
      v20 = Shape;
      v21 = v19;
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }

    v22 = EmitViewerSPI::emitElementsAttrProperty(Shape, @"shape", v21, v20);
    if (v22)
    {
      [v16 addObject:v22];
    }
  }

  mlir::mpsx::BufferToTensorOp::getResultElementType(&v47);
  Interleave = mlir::mpsx::BufferToTensorOp::getInterleave(&v47);
  if (v24)
  {
    if (Interleave)
    {
      v25 = Interleave;
      Interleave = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Interleave + 8);
      v26 = Interleave;
      v27 = v25;
    }

    else
    {
      v27 = 0;
      v26 = 0;
    }

    v28 = EmitViewerSPI::emitElementsAttrProperty(Interleave, @"interleave", v27, v26);
    if (v28)
    {
      [v16 addObject:v28];
    }
  }

  LOBYTE(v48) = mlir::mpsx::BufferToTensorOp::getIsTensorBufferOp(&v47);
  v29 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"isTensorBufferOp" dataType:2147483656 shape:&unk_2868B0868];
  if (v29)
  {
    v30 = [MEMORY[0x277CBEA90] dataWithBytes:&v48 length:1];
    [(MLViewerNodePropertyDataSPI *)v29 setValue:v30];

    [v16 addObject:v29];
  }

  IsChannelAndInterleaveSame = mlir::mpsx::BufferToTensorOp::getIsChannelAndInterleaveSame(&v47);
  v31 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"isChannelAndInterleaveSame" dataType:2147483656 shape:&unk_2868B0880];
  if (v31)
  {
    v32 = [MEMORY[0x277CBEA90] dataWithBytes:&IsChannelAndInterleaveSame length:1];
    [(MLViewerNodePropertyDataSPI *)v31 setValue:v32];

    [v16 addObject:v31];
  }

  v33 = [MEMORY[0x277CBEB18] array];
  v34 = [MLViewerNodeSPI alloc];
  v35 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v36 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v37 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v38 = [MEMORY[0x277CBEA60] arrayWithArray:v33];
  v39 = [(MLViewerNodeSPI *)v34 initWithType:v43 inputs:v35 outputs:v36 properties:v37 regions:v38];
  v40 = *(this + 3);
  *(this + 3) = v39;

  v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Converts a tensor to a buffer for MIL tensor buffer ops."];
  [*(this + 3) setLocalizedDescription:v41];

  if (v46 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25642A118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXUseMemrefOpHandler *EmitterViewerSPI::MPSXUseMemrefOpHandler::MPSXUseMemrefOpHandler(EmitterViewerSPI::MPSXUseMemrefOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859CB0;
  v4 = *(*(a3 + 6) + 8);
  v36 = a3;
  v37 = v4;
  Value = mlir::StringAttr::getValue(&v37);
  v6 = strlen(Value);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v35 = v6;
  if (v6)
  {
    memmove(&__dst, Value, v6);
  }

  *(&__dst + v7) = 0;
  if (v35 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v32 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mpsx::FusionOp::getODSOperandIndexAndLength(&v36, 0);
  if ((*(v36 + 46) & 0x80) != 0)
  {
    v11 = *(v36 + 9);
  }

  else
  {
    v11 = 0;
  }

  v12 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  v13 = v12 - ODSOperandIndexAndLength;
  if (v12 != ODSOperandIndexAndLength)
  {
    v26 = 0;
    v27 = 0;
    v28 = v11 + 32 * ODSOperandIndexAndLength;
    do
    {
      v29 = *(v28 + 32 * v26 + 24);
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"inputs%d", v27];
      v31 = EmitViewerSPI::emitNodeInputPort(a2, v30, v29);

      if (v31)
      {
        [v9 addObject:v31];
      }

      v26 = (v27 + 1);
      v27 = v26;
    }

    while (v13 > v26);
  }

  v14 = [MEMORY[0x277CBEB18] array];
  v15 = [MEMORY[0x277CBEB18] array];
  v16 = [MEMORY[0x277CBEB18] array];
  v17 = [MLViewerNodeSPI alloc];
  v18 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v22 = [(MLViewerNodeSPI *)v17 initWithType:v32 inputs:v18 outputs:v19 properties:v20 regions:v21];
  v23 = *(this + 3);
  *(this + 3) = v22;

  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Assigns to which memref a tensor should be written."];
  [*(this + 3) setLocalizedDescription:v24];

  if (v35 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25642A588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXVarHandleOpHandler *EmitterViewerSPI::MPSXVarHandleOpHandler::MPSXVarHandleOpHandler(EmitterViewerSPI::MPSXVarHandleOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859CC8;
  v5 = *(*(a3 + 6) + 8);
  v32 = a3;
  v33 = v5;
  Value = mlir::StringAttr::getValue(&v33);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v31 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v31 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v29 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CBEB18] array];
  if (*(v32 + 9))
  {
    v12 = v32 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v14 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v14)
  {
    [v11 addObject:v14];
  }

  v15 = [MEMORY[0x277CBEB18] array];
  Identifier = mlir::mpsx::VarHandleOp::getIdentifier(&v32);
  v18 = EmitViewerSPI::emitStringProperty(Identifier, @"identifier", Identifier, v17);
  if (v18)
  {
    [v15 addObject:v18];
  }

  v19 = [MEMORY[0x277CBEB18] array];
  v20 = [MLViewerNodeSPI alloc];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v19];
  v25 = [(MLViewerNodeSPI *)v20 initWithType:v29 inputs:v21 outputs:v22 properties:v23 regions:v24];
  v26 = *(this + 3);
  *(this + 3) = v25;

  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Inserts a variableHandle for a tensor resource."];
  [*(this + 3) setLocalizedDescription:v27];

  if (v31 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25642A958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::PlacementANEIOCastOpHandler *EmitterViewerSPI::PlacementANEIOCastOpHandler::PlacementANEIOCastOpHandler(EmitterViewerSPI::PlacementANEIOCastOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859CE0;
  v29 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v29);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v28 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v28 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v26 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"output", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MLViewerNodeSPI alloc];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v23 = [(MLViewerNodeSPI *)v18 initWithType:v26 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v28 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25642AD04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::PlacementHostTypeCastOpHandler *EmitterViewerSPI::PlacementHostTypeCastOpHandler::PlacementHostTypeCastOpHandler(EmitterViewerSPI::PlacementHostTypeCastOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859CF8;
  v29 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v29);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v28 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v28 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v26 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MLViewerNodeSPI alloc];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v23 = [(MLViewerNodeSPI *)v18 initWithType:v26 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v28 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25642B094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::PlacementMemrefToTensorOpHandler *EmitterViewerSPI::PlacementMemrefToTensorOpHandler::PlacementMemrefToTensorOpHandler(EmitterViewerSPI::PlacementMemrefToTensorOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859D10;
  v5 = *(*(a3 + 6) + 8);
  v39 = a3;
  v40 = v5;
  Value = mlir::StringAttr::getValue(&v40);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v38 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v38 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v36 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v39 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(v39 + 9))
  {
    v13 = v39 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  KernelZeroPoint = mlir::anec::Linear::getKernelZeroPoint(&v39);
  if (v18)
  {
    if (KernelZeroPoint)
    {
      v19 = KernelZeroPoint;
      KernelZeroPoint = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelZeroPoint + 8);
      v20 = KernelZeroPoint;
      v21 = v19;
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }

    v15 = EmitViewerSPI::emitElementsAttrProperty(KernelZeroPoint, @"shape", v21, v20);
    if (v15)
    {
      [v16 addObject:v15];
    }
  }

  mlir::placement::MemrefToTensor::getResultElementType(&v39);
  Interleave = mlir::placement::MemrefToTensor::getInterleave(&v39);
  LODWORD(v40) = Interleave;
  BYTE4(v40) = BYTE4(Interleave);
  if ((Interleave & 0x100000000) != 0)
  {
    v23 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"interleave" dataType:32 shape:&unk_2868B0898];
    if (v23)
    {
      if ((v40 & 0x100000000) == 0)
      {
        v35 = std::__throw_bad_optional_access[abi:nn200100]();

        if (v38 < 0)
        {
          operator delete(__dst);
        }

        _Unwind_Resume(v35);
      }

      v24 = [MEMORY[0x277CBEA90] dataWithBytes:&v40 length:8];
      [(MLViewerNodePropertyDataSPI *)v23 setValue:v24];

      [v16 addObject:v23];
    }
  }

  v25 = [MEMORY[0x277CBEB18] array];
  v26 = [MLViewerNodeSPI alloc];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v28 = v12;
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v30 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v31 = [MEMORY[0x277CBEA60] arrayWithArray:v25];
  v32 = [(MLViewerNodeSPI *)v26 initWithType:v36 inputs:v27 outputs:v29 properties:v30 regions:v31];
  v33 = *(this + 3);
  *(this + 3) = v32;

  if (v38 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

EmitterViewerSPI::PlacementRegionCallOpHandler *EmitterViewerSPI::PlacementRegionCallOpHandler::PlacementRegionCallOpHandler(EmitterViewerSPI::PlacementRegionCallOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859D28;
  v5 = *(*(a3 + 6) + 8);
  v56 = a3;
  v57 = v5;
  Value = mlir::StringAttr::getValue(&v57);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v55 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v55 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x277CBEB18] array];
  v53 = this;
  ODSOperandIndexAndLength = mlir::mpsx::FusionOp::getODSOperandIndexAndLength(&v56, 0);
  if ((*(v56 + 46) & 0x80) != 0)
  {
    v13 = *(v56 + 9);
  }

  else
  {
    v13 = 0;
  }

  v14 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  v15 = v14 - ODSOperandIndexAndLength;
  if (v14 != ODSOperandIndexAndLength)
  {
    v41 = 0;
    v42 = 0;
    v43 = v13 + 32 * ODSOperandIndexAndLength;
    do
    {
      v44 = *(v43 + 32 * v41 + 24);
      v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"inputs%d", v42];
      v46 = EmitViewerSPI::emitNodeInputPort(a2, v45, v44);

      if (v46)
      {
        [v11 addObject:v46];
      }

      v41 = (v42 + 1);
      v42 = v41;
    }

    while (v15 > v41);
  }

  v16 = [MEMORY[0x277CBEB18] array];
  v52 = v10;
  ODSResultIndexAndLength = mlir::mpsx::FusionOp::getODSResultIndexAndLength(&v56, 0);
  v18 = ODSResultIndexAndLength;
  if (*(v56 + 9))
  {
    NextResultAtOffset = v56 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v20 = (HIDWORD(v18) + v18);
  v21 = v20 - v18;
  if (v20 != v18)
  {
    v47 = 0;
    v48 = 0;
    do
    {
      v49 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v47);
      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"results%d", v48];
      v51 = EmitViewerSPI::emitNodeOutputPort(a2, v50, v49);

      if (v51)
      {
        [v16 addObject:v51];
      }

      v47 = (v48 + 1);
      v48 = v47;
    }

    while (v21 > v47);
  }

  v22 = [MEMORY[0x277CBEB18] array];
  Callee = mlir::placement::RegionCall::getCallee(&v56);
  v25 = EmitViewerSPI::emitStringProperty(Callee, @"callee", Callee, v24);
  if (v25)
  {
    [v22 addObject:v25];
  }

  RegionType = mlir::placement::RegionCall::getRegionType(&v56);
  v27 = [MEMORY[0x277CBEB18] array];
  v28 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"GPU" value:0];
  [v27 addObject:v28];

  v29 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ANE" value:1];
  [v27 addObject:v29];

  v30 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CPU" value:2];
  [v27 addObject:v30];

  v31 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"region_type" type:@"RegionType" cases:v27 value:RegionType];
  if (v31)
  {
    [v22 addObject:v31];
  }

  v32 = [MEMORY[0x277CBEB18] array];
  v33 = [MLViewerNodeSPI alloc];
  v34 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v35 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v36 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v37 = [MEMORY[0x277CBEA60] arrayWithArray:v32];
  v38 = [(MLViewerNodeSPI *)v33 initWithType:v52 inputs:v34 outputs:v35 properties:v36 regions:v37];
  v39 = *(v53 + 3);
  *(v53 + 3) = v38;

  if (v55 < 0)
  {
    operator delete(__dst);
  }

  return v53;
}

void sub_25642BB1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::PlacementReplacedOpsOpHandler *EmitterViewerSPI::PlacementReplacedOpsOpHandler::PlacementReplacedOpsOpHandler(EmitterViewerSPI::PlacementReplacedOpsOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859D40;
  v4 = *(*(a3 + 6) + 8);
  v60 = a3;
  FunctionType = v4;
  Value = mlir::StringAttr::getValue(&FunctionType);
  v6 = strlen(Value);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v59 = v6;
  if (v6)
  {
    memmove(&__dst, Value, v6);
  }

  *(&__dst + v7) = 0;
  if (v59 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v57 = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CBEB18] array];
  v55 = [MEMORY[0x277CBEB18] array];
  ReplacedBy = mlir::placement::ReplacedOps::getReplacedBy(&v60);
  v13 = EmitViewerSPI::emitStringProperty(ReplacedBy, @"replaced_by", ReplacedBy, v12);
  if (v13)
  {
    [v55 addObject:v13];
  }

  v53 = v9;
  v14 = 0;
  FunctionType = mlir::anec::A11Legacy::getFunctionType(&v60);
  while (v14 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v15 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v14);
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"result%d", v14];
    v17 = EmitViewerSPI::emitNodeOutputPort(v16, v16, v15);

    if (v17)
    {
      [v10 addObject:v17];
    }

    ++v14;
  }

  v56 = [MEMORY[0x277CBEB18] array];
  v18 = 0;
  v19 = (((v60 + 16 * ((*(v60 + 11) >> 23) & 1) + ((*(v60 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v60 + 10));
  while (*v19 != v19)
  {
    v20 = v19[1];
    v21 = v20 ? v20 - 8 : 0;
    if (v18 >= ((*(v21 + 56) - *(v21 + 48)) >> 3))
    {
      break;
    }

    v22 = v19[1];
    if (v22)
    {
      v23 = v22 - 8;
    }

    else
    {
      v23 = 0;
    }

    v24 = *(*(v23 + 48) + 8 * v18);
    if (!v24)
    {
      goto LABEL_19;
    }

    v25 = a2[7];
    if (!*&v25)
    {
      goto LABEL_47;
    }

    v26 = 0x9DDFEA08EB382D69 * ((8 * (v24 & 0x1FFFFFFF) + 8) ^ HIDWORD(v24));
    v27 = 0x9DDFEA08EB382D69 * (HIDWORD(v24) ^ (v26 >> 47) ^ v26);
    v28 = 0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47));
    v29 = vcnt_s8(v25);
    v29.i16[0] = vaddlv_u8(v29);
    if (v29.u32[0] > 1uLL)
    {
      v30 = v28;
      if (v28 >= *&v25)
      {
        v30 = v28 % *&v25;
      }
    }

    else
    {
      v30 = (*&v25 - 1) & v28;
    }

    v31 = *(*&a2[6] + 8 * v30);
    if (!v31 || (v32 = *v31) == 0)
    {
LABEL_47:
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"body_arg%d", v18];
      v35 = EmitViewerSPI::emitNodeOutputPort(a2, v34, v24);
      goto LABEL_48;
    }

    while (1)
    {
      v33 = v32[1];
      if (v33 == v28)
      {
        break;
      }

      if (v29.u32[0] > 1uLL)
      {
        if (v33 >= *&v25)
        {
          v33 %= *&v25;
        }
      }

      else
      {
        v33 &= *&v25 - 1;
      }

      if (v33 != v30)
      {
        goto LABEL_47;
      }

LABEL_40:
      v32 = *v32;
      if (!v32)
      {
        goto LABEL_47;
      }
    }

    if (v32[2] != v24)
    {
      goto LABEL_40;
    }

    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"body_arg%d", v18];
    v35 = EmitViewerSPI::emitNodeInputPort(a2, v34, v24);
LABEL_48:
    v36 = v35;

    if (v36)
    {
      [v57 addObject:v36];
    }

LABEL_19:
    ++v18;
  }

  v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = v19[1]; i != v19; i = i[1])
  {
    v48 = i - 1;
    if (!i)
    {
      v48 = 0;
    }

    v49 = v48 + 4;
    for (j = v48[5]; j != v49; j = j[1])
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
      v52 = EmitViewerSPI::emitNode(a2, ValuePtr);
      if (v52)
      {
        [v37 addObject:v52];
      }
    }
  }

  v39 = [[MLViewerNodeRegionSPI alloc] initWithName:@"body" returnType:0 nodes:v37];
  [v56 addObject:v39];

  v40 = [MLViewerNodeSPI alloc];
  v41 = [MEMORY[0x277CBEA60] arrayWithArray:v57];
  v42 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v43 = [MEMORY[0x277CBEA60] arrayWithArray:v55];
  v44 = [MEMORY[0x277CBEA60] arrayWithArray:v56];
  v45 = [(MLViewerNodeSPI *)v40 initWithType:v53 inputs:v41 outputs:v42 properties:v43 regions:v44];
  v46 = *(this + 3);
  *(this + 3) = v45;

  if (v59 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25642C21C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::PlacementReplacedOpsLiveOutsOpHandler *EmitterViewerSPI::PlacementReplacedOpsLiveOutsOpHandler::PlacementReplacedOpsLiveOutsOpHandler(EmitterViewerSPI::PlacementReplacedOpsLiveOutsOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859D58;
  v4 = *(*(a3 + 6) + 8);
  v35 = a3;
  v36 = v4;
  Value = mlir::StringAttr::getValue(&v36);
  v6 = strlen(Value);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v34 = v6;
  if (v6)
  {
    memmove(&__dst, Value, v6);
  }

  *(&__dst + v7) = 0;
  if (v34 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v31 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mpsx::FusionOp::getODSOperandIndexAndLength(&v35, 0);
  if ((*(v35 + 46) & 0x80) != 0)
  {
    v11 = *(v35 + 9);
  }

  else
  {
    v11 = 0;
  }

  v12 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  v13 = v12 - ODSOperandIndexAndLength;
  if (v12 != ODSOperandIndexAndLength)
  {
    v25 = 0;
    v26 = 0;
    v27 = v11 + 32 * ODSOperandIndexAndLength;
    do
    {
      v28 = *(v27 + 32 * v25 + 24);
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"outs%d", v26];
      v30 = EmitViewerSPI::emitNodeInputPort(a2, v29, v28);

      if (v30)
      {
        [v9 addObject:v30];
      }

      v25 = (v26 + 1);
      v26 = v25;
    }

    while (v13 > v25);
  }

  v14 = [MEMORY[0x277CBEB18] array];
  v15 = [MEMORY[0x277CBEB18] array];
  v16 = [MEMORY[0x277CBEB18] array];
  v17 = [MLViewerNodeSPI alloc];
  v18 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v22 = [(MLViewerNodeSPI *)v17 initWithType:v31 inputs:v18 outputs:v19 properties:v20 regions:v21];
  v23 = *(this + 3);
  *(this + 3) = v22;

  if (v34 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25642C680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::PlacementStartTimerOpHandler *EmitterViewerSPI::PlacementStartTimerOpHandler::PlacementStartTimerOpHandler(EmitterViewerSPI::PlacementStartTimerOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859D70;
  v5 = *(*(a3 + 6) + 8);
  v32 = a3;
  v33 = v5;
  Value = mlir::StringAttr::getValue(&v33);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v31 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v31 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x277CBEB18] array];
  v29 = v11;
  v12 = [MEMORY[0x277CBEB18] array];
  if (*(v32 + 9))
  {
    v13 = v32 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"timer", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  ReplacedOpsRef = mlir::placement::StartTimer::getReplacedOpsRef(&v32);
  v19 = EmitViewerSPI::emitStringProperty(ReplacedOpsRef, @"replaced_ops_ref", ReplacedOpsRef, v18);
  if (v19)
  {
    [v16 addObject:v19];
  }

  v20 = [MEMORY[0x277CBEB18] array];
  v21 = [MLViewerNodeSPI alloc];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v20];
  v26 = [(MLViewerNodeSPI *)v21 initWithType:v10 inputs:v22 outputs:v23 properties:v24 regions:v25];
  v27 = *(this + 3);
  *(this + 3) = v26;

  if (v31 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25642CA14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::PlacementStopTimerOpHandler *EmitterViewerSPI::PlacementStopTimerOpHandler::PlacementStopTimerOpHandler(EmitterViewerSPI::PlacementStopTimerOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859D88;
  v26 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v26);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v25 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v25 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v23 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"timer", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  v13 = [MEMORY[0x277CBEB18] array];
  v14 = [MEMORY[0x277CBEB18] array];
  v15 = [MLViewerNodeSPI alloc];
  v16 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v17 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v18 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v20 = [(MLViewerNodeSPI *)v15 initWithType:v23 inputs:v16 outputs:v17 properties:v18 regions:v19];
  v21 = *(this + 3);
  *(this + 3) = v20;

  if (v25 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25642CD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::PlacementTensorToMemrefOpHandler *EmitterViewerSPI::PlacementTensorToMemrefOpHandler::PlacementTensorToMemrefOpHandler(EmitterViewerSPI::PlacementTensorToMemrefOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859DA0;
  v5 = *(*(a3 + 6) + 8);
  v39 = a3;
  v40 = v5;
  Value = mlir::StringAttr::getValue(&v40);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v38 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v38 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v36 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v39 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(v39 + 9))
  {
    v13 = v39 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  KernelZeroPoint = mlir::anec::Linear::getKernelZeroPoint(&v39);
  if (v18)
  {
    if (KernelZeroPoint)
    {
      v19 = KernelZeroPoint;
      KernelZeroPoint = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelZeroPoint + 8);
      v20 = KernelZeroPoint;
      v21 = v19;
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }

    v15 = EmitViewerSPI::emitElementsAttrProperty(KernelZeroPoint, @"shape", v21, v20);
    if (v15)
    {
      [v16 addObject:v15];
    }
  }

  mlir::placement::MemrefToTensor::getResultElementType(&v39);
  Interleave = mlir::placement::MemrefToTensor::getInterleave(&v39);
  LODWORD(v40) = Interleave;
  BYTE4(v40) = BYTE4(Interleave);
  if ((Interleave & 0x100000000) != 0)
  {
    v23 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"interleave" dataType:32 shape:&unk_2868B08B0];
    if (v23)
    {
      if ((v40 & 0x100000000) == 0)
      {
        v35 = std::__throw_bad_optional_access[abi:nn200100]();

        if (v38 < 0)
        {
          operator delete(__dst);
        }

        _Unwind_Resume(v35);
      }

      v24 = [MEMORY[0x277CBEA90] dataWithBytes:&v40 length:8];
      [(MLViewerNodePropertyDataSPI *)v23 setValue:v24];

      [v16 addObject:v23];
    }
  }

  v25 = [MEMORY[0x277CBEB18] array];
  v26 = [MLViewerNodeSPI alloc];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v28 = v12;
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v30 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v31 = [MEMORY[0x277CBEA60] arrayWithArray:v25];
  v32 = [(MLViewerNodeSPI *)v26 initWithType:v36 inputs:v27 outputs:v29 properties:v30 regions:v31];
  v33 = *(this + 3);
  *(this + 3) = v32;

  if (v38 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

EmitterViewerSPI::MPSSPIRMSNormOpHandler *EmitterViewerSPI::MPSSPIRMSNormOpHandler::MPSSPIRMSNormOpHandler(EmitterViewerSPI::MPSSPIRMSNormOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859DB8;
  v31 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v31);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v30 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v30 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v28 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"epsilon", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", *(*(a3 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v15 = a3 - 16;
  }

  else
  {
    v15 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
  v17 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v17)
  {
    [v14 addObject:v17];
  }

  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [MEMORY[0x277CBEB18] array];
  v20 = [MLViewerNodeSPI alloc];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v19];
  v25 = [(MLViewerNodeSPI *)v20 initWithType:v28 inputs:v21 outputs:v22 properties:v23 regions:v24];
  v26 = *(this + 3);
  *(this + 3) = v25;

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25642D608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSPIScaledDotProductAttentionOpHandler *EmitterViewerSPI::MPSSPIScaledDotProductAttentionOpHandler::MPSSPIScaledDotProductAttentionOpHandler(EmitterViewerSPI::MPSSPIScaledDotProductAttentionOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859DD0;
  v33 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v33);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v32 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v32 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v30 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"query", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"key", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"value", *(*(a3 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"mask", *(*(a3 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = EmitViewerSPI::emitNodeInputPort(a2, @"scale", *(*(a3 + 9) + 152));
  if (v15)
  {
    [v10 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v17 = a3 - 16;
  }

  else
  {
    v17 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0);
  v19 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v19)
  {
    [v16 addObject:v19];
  }

  v20 = [MEMORY[0x277CBEB18] array];
  v21 = [MEMORY[0x277CBEB18] array];
  v22 = [MLViewerNodeSPI alloc];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v20];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v21];
  v27 = [(MLViewerNodeSPI *)v22 initWithType:v30 inputs:v23 outputs:v24 properties:v25 regions:v26];
  v28 = *(this + 3);
  *(this + 3) = v27;

  if (v32 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25642DA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSPIStridedArrayViewOpHandler *EmitterViewerSPI::MPSSPIStridedArrayViewOpHandler::MPSSPIStridedArrayViewOpHandler(EmitterViewerSPI::MPSSPIStridedArrayViewOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859DE8;
  v5 = *(*(a3 + 6) + 8);
  v62 = a3;
  v63 = v5;
  Value = mlir::StringAttr::getValue(&v63);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v61 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v61 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mps_spi::StridedArrayViewOp::getODSOperandIndexAndLength(&v62, 0);
  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"source", *(*(v62 + 9) + 32 * ODSOperandIndexAndLength + 24));
  v59 = v13;
  if (v13)
  {
    [v11 addObject:v13];
  }

  v14 = mlir::mps_spi::StridedArrayViewOp::getODSOperandIndexAndLength(&v62, 1u);
  v58 = v10;
  if ((*(v62 + 46) & 0x80) != 0)
  {
    v15 = *(v62 + 9);
  }

  else
  {
    v15 = 0;
  }

  v16 = (HIDWORD(v14) + v14);
  v17 = v16 - v14;
  if (v16 != v14)
  {
    v40 = 0;
    v41 = 0;
    v42 = v15 + 32 * v14;
    do
    {
      v43 = *(v42 + 32 * v40 + 24);
      v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"offsets%d", v41];
      v45 = EmitViewerSPI::emitNodeInputPort(a2, v44, v43);

      if (v45)
      {
        [v11 addObject:v45];
      }

      v40 = (v41 + 1);
      v41 = v40;
    }

    while (v17 > v40);
  }

  v18 = mlir::mps_spi::StridedArrayViewOp::getODSOperandIndexAndLength(&v62, 2u);
  if ((*(v62 + 46) & 0x80) != 0)
  {
    v19 = *(v62 + 9);
  }

  else
  {
    v19 = 0;
  }

  v20 = (HIDWORD(v18) + v18);
  v21 = v20 - v18;
  if (v20 != v18)
  {
    v46 = 0;
    v47 = 0;
    v48 = v19 + 32 * v18;
    do
    {
      v49 = *(v48 + 32 * v46 + 24);
      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"sizes%d", v47];
      v51 = EmitViewerSPI::emitNodeInputPort(a2, v50, v49);

      if (v51)
      {
        [v11 addObject:v51];
      }

      v46 = (v47 + 1);
      v47 = v46;
    }

    while (v21 > v46);
  }

  v22 = mlir::mps_spi::StridedArrayViewOp::getODSOperandIndexAndLength(&v62, 3u);
  if ((*(v62 + 46) & 0x80) != 0)
  {
    v23 = *(v62 + 9);
  }

  else
  {
    v23 = 0;
  }

  v24 = (HIDWORD(v22) + v22);
  v25 = v24 - v22;
  if (v24 != v22)
  {
    v52 = 0;
    v53 = 0;
    v54 = v23 + 32 * v22;
    do
    {
      v55 = *(v54 + 32 * v52 + 24);
      v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"strides%d", v53];
      v57 = EmitViewerSPI::emitNodeInputPort(a2, v56, v55);

      if (v57)
      {
        [v11 addObject:v57];
      }

      v52 = (v53 + 1);
      v53 = v52;
    }

    while (v25 > v52);
  }

  v26 = [MEMORY[0x277CBEB18] array];
  if (*(v62 + 9))
  {
    v27 = v62 - 16;
  }

  else
  {
    v27 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v27, 0);
  v29 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v29)
  {
    [v26 addObject:v29];
  }

  v30 = [MEMORY[0x277CBEB18] array];
  v31 = [MEMORY[0x277CBEB18] array];
  v32 = [MLViewerNodeSPI alloc];
  v33 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v34 = [MEMORY[0x277CBEA60] arrayWithArray:v26];
  v35 = [MEMORY[0x277CBEA60] arrayWithArray:v30];
  v36 = [MEMORY[0x277CBEA60] arrayWithArray:v31];
  v37 = [(MLViewerNodeSPI *)v32 initWithType:v58 inputs:v33 outputs:v34 properties:v35 regions:v36];
  v38 = *(this + 3);
  *(this + 3) = v37;

  if (v61 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25642E0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLAddOpHandler *EmitterViewerSPI::COREMLAddOpHandler::COREMLAddOpHandler(EmitterViewerSPI::COREMLAddOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859E00;
  v30 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v30);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"x", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"y", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"outputs", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [MLViewerNodeSPI alloc];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
  v24 = [(MLViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25642E4B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLAllOpHandler *EmitterViewerSPI::COREMLAllOpHandler::COREMLAllOpHandler(EmitterViewerSPI::COREMLAllOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859E18;
  v31 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v31);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v30 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v30 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v28 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"keep_dims", *(*(a3 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v15 = a3 - 16;
  }

  else
  {
    v15 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
  v17 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v17)
  {
    [v14 addObject:v17];
  }

  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [MEMORY[0x277CBEB18] array];
  v20 = [MLViewerNodeSPI alloc];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v19];
  v25 = [(MLViewerNodeSPI *)v20 initWithType:v28 inputs:v21 outputs:v22 properties:v23 regions:v24];
  v26 = *(this + 3);
  *(this + 3) = v25;

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25642E8B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLAndOpHandler *EmitterViewerSPI::COREMLAndOpHandler::COREMLAndOpHandler(EmitterViewerSPI::COREMLAndOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859E30;
  v30 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v30);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"x", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"y", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [MLViewerNodeSPI alloc];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
  v24 = [(MLViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25642ECA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLAnyOpHandler *EmitterViewerSPI::COREMLAnyOpHandler::COREMLAnyOpHandler(EmitterViewerSPI::COREMLAnyOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859E48;
  v31 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v31);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v30 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v30 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v28 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"keep_dims", *(*(a3 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v15 = a3 - 16;
  }

  else
  {
    v15 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
  v17 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v17)
  {
    [v14 addObject:v17];
  }

  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [MEMORY[0x277CBEB18] array];
  v20 = [MLViewerNodeSPI alloc];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v19];
  v25 = [(MLViewerNodeSPI *)v20 initWithType:v28 inputs:v21 outputs:v22 properties:v23 regions:v24];
  v26 = *(this + 3);
  *(this + 3) = v25;

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25642F0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLAvgPool2dOpHandler *EmitterViewerSPI::COREMLAvgPool2dOpHandler::COREMLAvgPool2dOpHandler(EmitterViewerSPI::COREMLAvgPool2dOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859E60;
  v36 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v36);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v35 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v35 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v33 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  v32 = v11;
  if (v11)
  {
    [v10 addObject:{v11, v11}];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"kernel_size", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"stride", *(*(a3 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"padding", *(*(a3 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = EmitViewerSPI::emitNodeInputPort(a2, @"ceil_mode", *(*(a3 + 9) + 152));
  if (v15)
  {
    [v10 addObject:v15];
  }

  v16 = EmitViewerSPI::emitNodeInputPort(a2, @"count_include_pad", *(*(a3 + 9) + 184));
  if (v16)
  {
    [v10 addObject:v16];
  }

  v17 = EmitViewerSPI::emitNodeInputPort(a2, @"divisor_override", *(*(a3 + 9) + 216));
  if (v17)
  {
    [v10 addObject:v17];
  }

  v18 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v19 = a3 - 16;
  }

  else
  {
    v19 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0);
  v21 = EmitViewerSPI::emitNodeOutputPort(a2, @"output", NextResultAtOffset);
  if (v21)
  {
    [v18 addObject:v21];
  }

  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MEMORY[0x277CBEB18] array];
  v24 = [MLViewerNodeSPI alloc];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v23];
  v29 = [(MLViewerNodeSPI *)v24 initWithType:v33 inputs:v25 outputs:v26 properties:v27 regions:v28];
  v30 = *(this + 3);
  *(this + 3) = v29;

  if (v35 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25642F598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLAwaitOpHandler *EmitterViewerSPI::COREMLAwaitOpHandler::COREMLAwaitOpHandler(EmitterViewerSPI::COREMLAwaitOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859E78;
  v29 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v29);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v28 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v28 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v26 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MLViewerNodeSPI alloc];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v23 = [(MLViewerNodeSPI *)v18 initWithType:v26 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v28 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25642F998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLBatchMatmulOpHandler *EmitterViewerSPI::COREMLBatchMatmulOpHandler::COREMLBatchMatmulOpHandler(EmitterViewerSPI::COREMLBatchMatmulOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859E90;
  v30 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v30);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"x", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"y", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"outputs", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [MLViewerNodeSPI alloc];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
  v24 = [(MLViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25642FD5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLBatchNormOpHandler *EmitterViewerSPI::COREMLBatchNormOpHandler::COREMLBatchNormOpHandler(EmitterViewerSPI::COREMLBatchNormOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859EA8;
  v34 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v34);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v33 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v33 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v31 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"weight", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"bias", *(*(a3 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"mean", *(*(a3 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = EmitViewerSPI::emitNodeInputPort(a2, @"variance", *(*(a3 + 9) + 152));
  if (v15)
  {
    [v10 addObject:v15];
  }

  v16 = EmitViewerSPI::emitNodeInputPort(a2, @"epsilon", *(*(a3 + 9) + 184));
  if (v16)
  {
    [v10 addObject:v16];
  }

  v17 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v18 = a3 - 16;
  }

  else
  {
    v18 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
  v20 = EmitViewerSPI::emitNodeOutputPort(a2, @"output", NextResultAtOffset);
  if (v20)
  {
    [v17 addObject:v20];
  }

  v21 = [MEMORY[0x277CBEB18] array];
  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MLViewerNodeSPI alloc];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v21];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v28 = [(MLViewerNodeSPI *)v23 initWithType:v31 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2564301FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLBroadcastInDimsOpHandler *EmitterViewerSPI::COREMLBroadcastInDimsOpHandler::COREMLBroadcastInDimsOpHandler(EmitterViewerSPI::COREMLBroadcastInDimsOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859EC0;
  v31 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v31);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v30 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v30 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v28 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"dim_sizes", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", *(*(a3 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v15 = a3 - 16;
  }

  else
  {
    v15 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
  v17 = EmitViewerSPI::emitNodeOutputPort(a2, @"output", NextResultAtOffset);
  if (v17)
  {
    [v14 addObject:v17];
  }

  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [MEMORY[0x277CBEB18] array];
  v20 = [MLViewerNodeSPI alloc];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v19];
  v25 = [(MLViewerNodeSPI *)v20 initWithType:v28 inputs:v21 outputs:v22 properties:v23 regions:v24];
  v26 = *(this + 3);
  *(this + 3) = v25;

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256430648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLBroadcastShapesOpHandler *EmitterViewerSPI::COREMLBroadcastShapesOpHandler::COREMLBroadcastShapesOpHandler(EmitterViewerSPI::COREMLBroadcastShapesOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859ED8;
  v30 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v30);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"shape_1", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"shape_2", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"output", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [MLViewerNodeSPI alloc];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
  v24 = [(MLViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256430A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLBroadcastToOpHandler *EmitterViewerSPI::COREMLBroadcastToOpHandler::COREMLBroadcastToOpHandler(EmitterViewerSPI::COREMLBroadcastToOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859EF0;
  v30 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v30);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"shape", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"output", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [MLViewerNodeSPI alloc];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
  v24 = [(MLViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256430DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLCallOpHandler *EmitterViewerSPI::COREMLCallOpHandler::COREMLCallOpHandler(EmitterViewerSPI::COREMLCallOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859F08;
  v4 = *(*(a3 + 6) + 8);
  v35 = a3;
  v36 = v4;
  Value = mlir::StringAttr::getValue(&v36);
  v6 = strlen(Value);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v34 = v6;
  if (v6)
  {
    memmove(&__dst, Value, v6);
  }

  *(&__dst + v7) = 0;
  if (v34 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v31 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::ODIE::Compiler::CoreML::CallOp::getODSOperandIndexAndLength(&v35, 0);
  if ((*(v35 + 46) & 0x80) != 0)
  {
    v11 = *(v35 + 9);
  }

  else
  {
    v11 = 0;
  }

  v12 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  v13 = v12 - ODSOperandIndexAndLength;
  if (v12 != ODSOperandIndexAndLength)
  {
    v25 = 0;
    v26 = 0;
    v27 = v11 + 32 * ODSOperandIndexAndLength;
    do
    {
      v28 = *(v27 + 32 * v25 + 24);
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"operands%d", v26];
      v30 = EmitViewerSPI::emitNodeInputPort(a2, v29, v28);

      if (v30)
      {
        [v9 addObject:v30];
      }

      v25 = (v26 + 1);
      v26 = v25;
    }

    while (v13 > v25);
  }

  v14 = [MEMORY[0x277CBEB18] array];
  v15 = [MEMORY[0x277CBEB18] array];
  mlir::ODIE::Compiler::CoreML::CallOp::getCallee(&v35);
  v16 = [MEMORY[0x277CBEB18] array];
  v17 = [MLViewerNodeSPI alloc];
  v18 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v22 = [(MLViewerNodeSPI *)v17 initWithType:v31 inputs:v18 outputs:v19 properties:v20 regions:v21];
  v23 = *(this + 3);
  *(this + 3) = v22;

  if (v34 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2564311D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLCastOpHandler *EmitterViewerSPI::COREMLCastOpHandler::COREMLCastOpHandler(EmitterViewerSPI::COREMLCastOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859F20;
  v29 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v29);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v28 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v28 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v26 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"output", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MLViewerNodeSPI alloc];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v23 = [(MLViewerNodeSPI *)v18 initWithType:v26 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v28 < 0)
  {
    operator delete(__dst);
  }

  return this;
}