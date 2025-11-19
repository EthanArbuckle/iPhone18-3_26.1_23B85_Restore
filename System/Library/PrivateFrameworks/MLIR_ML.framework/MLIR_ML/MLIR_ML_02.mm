void sub_2563D644C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSBitwiseRightShiftOpHandler *EmitterViewerSPI::MPSBitwiseRightShiftOpHandler::MPSBitwiseRightShiftOpHandler(EmitterViewerSPI::MPSBitwiseRightShiftOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868586F0;
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

void sub_2563D6854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSBitwiseXorOpHandler *EmitterViewerSPI::MPSBitwiseXorOpHandler::MPSBitwiseXorOpHandler(EmitterViewerSPI::MPSBitwiseXorOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858708;
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

void sub_2563D6C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSBroadcastGradientArgsOpHandler *EmitterViewerSPI::MPSBroadcastGradientArgsOpHandler::MPSBroadcastGradientArgsOpHandler(EmitterViewerSPI::MPSBroadcastGradientArgsOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858720;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input0", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input1", *(*(a3 + 9) + 56));
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
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"reductionAxes", NextResultAtOffset);
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

  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"This is typically used by gradient computations for a broadcasting operation."];
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563D7074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSBroadcastToOpHandler *EmitterViewerSPI::MPSBroadcastToOpHandler::MPSBroadcastToOpHandler(EmitterViewerSPI::MPSBroadcastToOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858738;
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

  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"Broadcast will transform the input shape to be the one specified. Note that the input shape and the desired shape need to be broadcast compatible. Two shapes are broadcast compatible if, for each dimension pair, they are either equal or one of them is one."}];
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563D7484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCallOpHandler *EmitterViewerSPI::MPSCallOpHandler::MPSCallOpHandler(EmitterViewerSPI::MPSCallOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858750;
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

  v53 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mps::CallOp::getODSOperandIndexAndLength(&v56, 0);
  v52 = this;
  if ((*(v56 + 46) & 0x80) != 0)
  {
    v12 = *(v56 + 9);
  }

  else
  {
    v12 = 0;
  }

  v13 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  v14 = v13 - ODSOperandIndexAndLength;
  if (v13 != ODSOperandIndexAndLength)
  {
    v41 = 0;
    v42 = 0;
    v43 = v12 + 32 * ODSOperandIndexAndLength;
    do
    {
      v44 = *(v43 + 32 * v41 + 24);
      v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"inputs%d", v42];
      v46 = EmitViewerSPI::emitNodeInputPort(a2, v45, v44);

      if (v46)
      {
        [v10 addObject:v46];
      }

      v41 = (v42 + 1);
      v42 = v41;
    }

    while (v14 > v41);
  }

  v15 = [MEMORY[0x277CBEB18] array];
  ODSResultIndexAndLength = mlir::mps::CallOp::getODSResultIndexAndLength(&v56, 0);
  v17 = ODSResultIndexAndLength;
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

  v19 = (HIDWORD(v17) + v17);
  v20 = v19 - v17;
  if (v19 != v17)
  {
    v47 = 0;
    v48 = 0;
    do
    {
      v49 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v47);
      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"outputs%d", v48];
      v51 = EmitViewerSPI::emitNodeOutputPort(a2, v50, v49);

      if (v51)
      {
        [v15 addObject:v51];
      }

      v47 = (v48 + 1);
      v48 = v47;
    }

    while (v20 > v47);
  }

  v21 = [MEMORY[0x277CBEB18] array];
  SymbolName = mlir::mps::CallOp::getSymbolName(&v56);
  v24 = EmitViewerSPI::emitStringProperty(SymbolName, @"symbolName", SymbolName, v23);
  if (v24)
  {
    [v21 addObject:v24];
  }

  InlineMode = mlir::mps::CallOp::getInlineMode(&v56);
  v26 = [MEMORY[0x277CBEB18] array];
  v27 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"off" value:0];
  [v26 addObject:v27];

  v28 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"on" value:1];
  [v26 addObject:v28];

  v29 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"automatic" value:2];
  [v26 addObject:v29];

  v30 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"inlineMode" type:@"MPSCallInlineMode" cases:v26 value:InlineMode];
  if (v30)
  {
    [v21 addObject:v30];
  }

  v31 = [MEMORY[0x277CBEB18] array];
  v32 = [MLViewerNodeSPI alloc];
  v33 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v34 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v35 = [MEMORY[0x277CBEA60] arrayWithArray:v21];
  v36 = [MEMORY[0x277CBEA60] arrayWithArray:v31];
  v37 = [(MLViewerNodeSPI *)v32 initWithType:v53 inputs:v33 outputs:v34 properties:v35 regions:v36];
  v38 = *(v52 + 3);
  *(v52 + 3) = v37;
  v39 = ;
  [*(v52 + 3) setLocalizedDescription:v39];

  if (v55 < 0)
  {
    operator delete(__dst);
  }

  return v52;
}

void sub_2563D7A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCastOpHandler *EmitterViewerSPI::MPSCastOpHandler::MPSCastOpHandler(EmitterViewerSPI::MPSCastOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858768;
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
  mlir::mps::CastOp::getResultElementType(&v30);
  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MLViewerNodeSPI alloc];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v23 = [(MLViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Returns a tensor with the same shape and set resultElementType."];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563D7ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCeilOpHandler *EmitterViewerSPI::MPSCeilOpHandler::MPSCeilOpHandler(EmitterViewerSPI::MPSCeilOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858780;
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

void sub_2563D82B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSClampOpHandler *EmitterViewerSPI::MPSClampOpHandler::MPSClampOpHandler(EmitterViewerSPI::MPSClampOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858798;
  v32 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v32);
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"primary", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"secondary", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"tertiary", *(*(a3 + 9) + 88));
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
  v25 = [(MLViewerNodeSPI *)v20 initWithType:v29 inputs:v21 outputs:v22 properties:v23 regions:v24];
  v26 = *(this + 3);
  *(this + 3) = v25;
  v27 = ;
  [*(this + 3) setLocalizedDescription:v27];

  if (v31 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563D86F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSColToImOpHandler *EmitterViewerSPI::MPSColToImOpHandler::MPSColToImOpHandler(EmitterViewerSPI::MPSColToImOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868587B0;
  v5 = *(*(a3 + 6) + 8);
  v61 = a3;
  v62 = v5;
  Value = mlir::StringAttr::getValue(&v62);
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

  v60 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v60 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v57 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v61 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"shape", *(*(v61 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v58 = [MEMORY[0x277CBEB18] array];
  if (*(v61 + 9))
  {
    v13 = v61 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v58 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  KernelSizes = mlir::mps::ColToImOp::getKernelSizes(&v61);
  v18 = KernelSizes;
  if (KernelSizes)
  {
    KernelSizes = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelSizes + 8);
    v19 = KernelSizes;
  }

  else
  {
    v19 = 0;
  }

  v20 = EmitViewerSPI::emitElementsAttrProperty(KernelSizes, @"kernel_sizes", v18, v19);
  if (v20)
  {
    [v16 addObject:v20];
  }

  Strides = mlir::mps::ColToImOp::getStrides(&v61);
  v22 = Strides;
  if (Strides)
  {
    Strides = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    v23 = Strides;
  }

  else
  {
    v23 = 0;
  }

  v24 = EmitViewerSPI::emitElementsAttrProperty(Strides, @"strides", v22, v23);
  if (v24)
  {
    [v16 addObject:v24];
  }

  DilationRates = mlir::mps::ColToImOp::getDilationRates(&v61);
  v26 = DilationRates;
  if (DilationRates)
  {
    DilationRates = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DilationRates + 8);
    v27 = DilationRates;
  }

  else
  {
    v27 = 0;
  }

  v28 = EmitViewerSPI::emitElementsAttrProperty(DilationRates, @"dilation_rates", v26, v27);
  if (v28)
  {
    [v16 addObject:v28];
  }

  ExplicitPadding = mlir::mps::ColToImOp::getExplicitPadding(&v61);
  v30 = ExplicitPadding;
  if (ExplicitPadding)
  {
    ExplicitPadding = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
    v31 = ExplicitPadding;
  }

  else
  {
    v31 = 0;
  }

  v32 = EmitViewerSPI::emitElementsAttrProperty(ExplicitPadding, @"explicit_padding", v30, v31);
  if (v32)
  {
    [v16 addObject:v32];
  }

  DataLayout = mlir::mps::ColToImOp::getDataLayout(&v61);
  v34 = [MEMORY[0x277CBEB18] array];
  v35 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v34 addObject:v35];

  v36 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v34 addObject:v36];

  v37 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v34 addObject:v37];

  v38 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v34 addObject:v38];

  v39 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v34 addObject:v39];

  v40 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v34 addObject:v40];

  v41 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v34 addObject:v41];

  v42 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v34 addObject:v42];

  v43 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v34 addObject:v43];

  v44 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v34 addObject:v44];

  v45 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v34 addObject:v45];

  v46 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v34 value:DataLayout];
  if (v46)
  {
    [v16 addObject:v46];
  }

  v47 = [MEMORY[0x277CBEB18] array];
  v48 = [MLViewerNodeSPI alloc];
  v49 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v50 = [MEMORY[0x277CBEA60] arrayWithArray:v58];
  v51 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v52 = [MEMORY[0x277CBEA60] arrayWithArray:v47];
  v53 = [(MLViewerNodeSPI *)v48 initWithType:v57 inputs:v49 outputs:v50 properties:v51 regions:v52];
  v54 = *(this + 3);
  *(this + 3) = v53;
  v55 = ;
  [*(this + 3) setLocalizedDescription:v55];

  if (v60 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563D8EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSConcatOpHandler *EmitterViewerSPI::MPSConcatOpHandler::MPSConcatOpHandler(EmitterViewerSPI::MPSConcatOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868587C8;
  v4 = *(*(a3 + 6) + 8);
  v43 = a3;
  v44 = v4;
  Value = mlir::StringAttr::getValue(&v44);
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

  v42 = v6;
  if (v6)
  {
    memmove(&__dst, Value, v6);
  }

  *(&__dst + v7) = 0;
  if (v42 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v39 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mps::ConcatOp::getODSOperandIndexAndLength(&v43, 0);
  if ((*(v43 + 46) & 0x80) != 0)
  {
    v11 = *(v43 + 9);
  }

  else
  {
    v11 = 0;
  }

  v12 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  v13 = v12 - ODSOperandIndexAndLength;
  if (v12 != ODSOperandIndexAndLength)
  {
    v33 = 0;
    v34 = 0;
    v35 = v11 + 32 * ODSOperandIndexAndLength;
    do
    {
      v36 = *(v35 + 32 * v33 + 24);
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"values%d", v34];
      v38 = EmitViewerSPI::emitNodeInputPort(a2, v37, v36);

      if (v38)
      {
        [v9 addObject:v38];
      }

      v33 = (v34 + 1);
      v34 = v33;
    }

    while (v13 > v33);
  }

  v14 = mlir::mps::ConcatOp::getODSOperandIndexAndLength(&v43, 1u);
  v15 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v43 + 9) + 32 * v14 + 24));
  if (v15)
  {
    [v9 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  if (*(v43 + 9))
  {
    v17 = v43 - 16;
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
  LOBYTE(v44) = mlir::mps::ConcatOp::getInterleave(&v43);
  v21 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"interleave" dataType:2147483656 shape:&unk_2868AFB60];
  if (v21)
  {
    v22 = [MEMORY[0x277CBEA90] dataWithBytes:&v44 length:1];
    [(MLViewerNodePropertyDataSPI *)v21 setValue:v22];

    [v20 addObject:v21];
  }

  v23 = [MEMORY[0x277CBEB18] array];
  v24 = [MLViewerNodeSPI alloc];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v20];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v23];
  v29 = [(MLViewerNodeSPI *)v24 initWithType:v39 inputs:v25 outputs:v26 properties:v27 regions:v28];
  v30 = *(this + 3);
  *(this + 3) = v29;
  v31 = ;
  [*(this + 3) setLocalizedDescription:v31];

  if (v42 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563D9494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSConjugateOpHandler *EmitterViewerSPI::MPSConjugateOpHandler::MPSConjugateOpHandler(EmitterViewerSPI::MPSConjugateOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868587E0;
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

  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Calculates the complex complex conjugate of a tensor. For non-complex type tensors this is equivelent to an identity operation."];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563D98A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSConstantOpHandler *EmitterViewerSPI::MPSConstantOpHandler::MPSConstantOpHandler(EmitterViewerSPI::MPSConstantOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868587F8;
  v5 = *(*(a3 + 6) + 8);
  v33 = a3;
  v34 = v5;
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
  v11 = [MEMORY[0x277CBEB18] array];
  if (*(v33 + 9))
  {
    v12 = v33 - 16;
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
  if (*(v33 + 47))
  {
    mlir::mps::ConstantOp::getValue(&v33, &v34);
    v16 = v34;
    if (v34)
    {
      v17 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(v34->n128_u64[0] + 8);
    }

    else
    {
      v17 = 0;
    }

    v18 = mlir::mps::AttributeHandler::decrementRefCount(&v34);
    v19 = EmitViewerSPI::emitElementsAttrProperty(v18, @"value", v16, v17);
    if (v19)
    {
      [v15 addObject:v19];
    }
  }

  v20 = [MEMORY[0x277CBEB18] array];
  v21 = [MLViewerNodeSPI alloc];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v20];
  v26 = [(MLViewerNodeSPI *)v21 initWithType:v30 inputs:v22 outputs:v23 properties:v24 regions:v25];
  v27 = *(this + 3);
  *(this + 3) = v26;

  v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Turn a literal into an SSA value. The data is attached to the operation as an attribute."];
  [*(this + 3) setLocalizedDescription:v28];

  if (v32 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563D9CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL mlir::mps::ConstantOp::getValue@<W0>(_BOOL8 this@<X0>, __n128 **a2@<X8>)
{
  v2 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  *a2 = v2;
  if (v2)
  {
    v3 = *(v2->n128_u64[0] + 136);
    v4 = v3 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
    if (v3 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }

    v11 = v5;
    if (v4)
    {
      mlir::mps::MPSBufferTensorAttr::getHandle(&v11, &v10);
      Context = mlir::Attribute::getContext(&v11);
      Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v7);
      v9 = v10.n128_u64[0];
      llvm::sys::RWMutexImpl::lock((Manager + 48));
      ++*(v9 + 88);
      return llvm::sys::RWMutexImpl::unlock((Manager + 48));
    }
  }

  return this;
}

__n128 **mlir::mps::AttributeHandler::decrementRefCount(__n128 **this)
{
  v1 = *this;
  if (*this)
  {
    v2 = *(v1->n128_u64[0] + 136);
    if (v2 != &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v1 = 0;
    }

    v8 = v1;
    if (v2 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      mlir::mps::MPSBufferTensorAttr::getHandle(&v8, &v7);
      Context = mlir::Attribute::getContext(&v8);
      Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v4);
      v6 = v7.n128_u64[0];
      llvm::sys::RWMutexImpl::lock((Manager + 48));
      if (*(v6 + 88) == 1)
      {
        *(v6 + 88) = 0;
        if (*(v6 + 80) == 1)
        {
          mlir::AsmResourceBlob::~AsmResourceBlob((v6 + 16));
          *(v6 + 80) = 0;
        }
      }

      else
      {
        --*(v6 + 88);
      }

      return llvm::sys::RWMutexImpl::unlock((Manager + 48));
    }
  }

  return this;
}

void mlir::AsmResourceBlob::~AsmResourceBlob(mlir::AsmResourceBlob *this)
{
  v2 = *(this + 6);
  if (v2 >= 8)
  {
    v3 = this + 24;
    v4 = *this;
    v5 = *(this + 1);
    v6 = *(this + 2);
    v7 = this + 24;
    if ((v2 & 2) == 0)
    {
      v7 = *v3;
    }

    (*(v2 & 0xFFFFFFFFFFFFFFF8))(v7, v4, v5, v6);
    v8 = *(this + 6);
    if (v8 >= 8)
    {
      if ((v8 & 4) != 0)
      {
        if ((v8 & 2) == 0)
        {
          v3 = *v3;
        }

        (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
      }

      if ((v8 & 2) == 0)
      {
        llvm::deallocate_buffer(*(this + 3), *(this + 4));
      }
    }
  }
}

uint64_t llvm::unique_function<void ()(void *,unsigned long,unsigned long)>::~unique_function(uint64_t result)
{
  v1 = *(result + 24);
  if (v1 >= 8)
  {
    if ((v1 & 4) != 0)
    {
      v2 = result;
      if ((v1 & 2) == 0)
      {
        v2 = *result;
      }

      v3 = result;
      (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16))(v2);
      result = v3;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(*result, *(result + 8));
    }
  }

  return result;
}

EmitterViewerSPI::MPSConv2DDataGradientOpHandler *EmitterViewerSPI::MPSConv2DDataGradientOpHandler::MPSConv2DDataGradientOpHandler(EmitterViewerSPI::MPSConv2DDataGradientOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858810;
  v5 = *(*(a3 + 6) + 8);
  v89 = a3;
  Groups = v5;
  Value = mlir::StringAttr::getValue(&Groups);
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

  v88 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v88 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v86 = [MEMORY[0x277CBEB18] array];
  v84 = v10;
  ODSOperandIndexAndLength = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v89, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v89 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v86 addObject:v12];
  }

  v13 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v89, 1u);
  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"weights", *(*(v89 + 9) + 32 * v13 + 24));
  if (v14)
  {
    [v86 addObject:v14];
  }

  v15 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v89, 2u);
  if ((*(v89 + 46) & 0x80) != 0)
  {
    v16 = *(v89 + 9);
  }

  else
  {
    v16 = 0;
  }

  if (HIDWORD(v15) + v15 == v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v16 + 32 * v15 + 24);
  }

  v18 = EmitViewerSPI::emitNodeInputPort(a2, @"outputShape", v17);
  if (v18)
  {
    [v86 addObject:v18];
  }

  v85 = [MEMORY[0x277CBEB18] array];
  if (*(v89 + 9))
  {
    v19 = v89 - 16;
  }

  else
  {
    v19 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0);
  v21 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v21)
  {
    [v85 addObject:v21];
  }

  v22 = [MEMORY[0x277CBEB18] array];
  Groups = mlir::mps::Conv2DDataGradientOp::getGroups(&v89);
  v23 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"groups" dataType:64 shape:&unk_2868AFB78];
  if (v23)
  {
    v24 = [MEMORY[0x277CBEA90] dataWithBytes:&Groups length:8];
    [(MLViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v22 addObject:v23];
  }

  Strides = mlir::mps::Conv2DDataGradientOp::getStrides(&v89);
  v26 = Strides;
  if (Strides)
  {
    Strides = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    v27 = Strides;
  }

  else
  {
    v27 = 0;
  }

  v28 = EmitViewerSPI::emitElementsAttrProperty(Strides, @"strides", v26, v27);
  v83 = v28;
  if (v28)
  {
    [v22 addObject:v28];
  }

  DilationRates = mlir::mps::Conv2DDataGradientOp::getDilationRates(&v89);
  v30 = DilationRates;
  if (DilationRates)
  {
    DilationRates = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DilationRates + 8);
    v31 = DilationRates;
  }

  else
  {
    v31 = 0;
  }

  v32 = EmitViewerSPI::emitElementsAttrProperty(DilationRates, @"dilation_rates", v30, v31);
  if (v32)
  {
    [v22 addObject:v32];
  }

  ExplicitPadding = mlir::mps::Conv2DDataGradientOp::getExplicitPadding(&v89);
  v34 = ExplicitPadding;
  if (ExplicitPadding)
  {
    ExplicitPadding = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
    v35 = ExplicitPadding;
  }

  else
  {
    v35 = 0;
  }

  v36 = EmitViewerSPI::emitElementsAttrProperty(ExplicitPadding, @"explicit_padding", v34, v35);
  if (v36)
  {
    [v22 addObject:v36];
  }

  PaddingStyle = mlir::mps::Conv2DDataGradientOp::getPaddingStyle(&v89);
  v38 = [MEMORY[0x277CBEB18] array];
  v39 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v38 addObject:v39];

  v40 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v38 addObject:v40];

  v41 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v38 addObject:v41];

  v42 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v38 addObject:v42];

  v43 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v38 addObject:v43];

  v44 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v38 value:PaddingStyle];
  if (v44)
  {
    [v22 addObject:v44];
  }

  DataLayout = mlir::mps::Conv2DDataGradientOp::getDataLayout(&v89);
  v46 = [MEMORY[0x277CBEB18] array];
  v47 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v46 addObject:v47];

  v48 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v46 addObject:v48];

  v49 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v46 addObject:v49];

  v50 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v46 addObject:v50];

  v51 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v46 addObject:v51];

  v52 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v46 addObject:v52];

  v53 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v46 addObject:v53];

  v54 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v46 addObject:v54];

  v55 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v46 addObject:v55];

  v56 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v46 addObject:v56];

  v57 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v46 addObject:v57];

  v58 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v46 value:DataLayout];
  if (v58)
  {
    [v22 addObject:v58];
  }

  WeightsLayout = mlir::mps::Conv2DDataGradientOp::getWeightsLayout(&v89);
  v60 = [MEMORY[0x277CBEB18] array];
  v61 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v60 addObject:v61];

  v62 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v60 addObject:v62];

  v63 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v60 addObject:v63];

  v64 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v60 addObject:v64];

  v65 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v60 addObject:v65];

  v66 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v60 addObject:v66];

  v67 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v60 addObject:v67];

  v68 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v60 addObject:v68];

  v69 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v60 addObject:v69];

  v70 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v60 addObject:v70];

  v71 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v60 addObject:v71];

  v72 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"weights_layout" type:@"MPSTensorDataLayout" cases:v60 value:WeightsLayout];
  if (v72)
  {
    [v22 addObject:v72];
  }

  v73 = [MEMORY[0x277CBEB18] array];
  v74 = [MLViewerNodeSPI alloc];
  v75 = [MEMORY[0x277CBEA60] arrayWithArray:v86];
  v76 = [MEMORY[0x277CBEA60] arrayWithArray:v85];
  v77 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v78 = [MEMORY[0x277CBEA60] arrayWithArray:v73];
  v79 = [(MLViewerNodeSPI *)v74 initWithType:v84 inputs:v75 outputs:v76 properties:v77 regions:v78];
  v80 = *(this + 3);
  *(this + 3) = v79;

  v81 = [MEMORY[0x277CCACA8] stringWithUTF8String:"conv2DDataGradient operation"];
  [*(this + 3) setLocalizedDescription:v81];

  if (v88 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563DAB20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSConv2DOpHandler *EmitterViewerSPI::MPSConv2DOpHandler::MPSConv2DOpHandler(EmitterViewerSPI::MPSConv2DOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858828;
  v5 = *(*(a3 + 6) + 8);
  v82 = a3;
  Groups = v5;
  Value = mlir::StringAttr::getValue(&Groups);
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

  v77 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v79 = [MEMORY[0x277CBEB18] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v82 + 9) + 24));
  if (v10)
  {
    [v79 addObject:v10];
  }

  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"weights", *(*(v82 + 9) + 56));
  if (v11)
  {
    [v79 addObject:v11];
  }

  v78 = [MEMORY[0x277CBEB18] array];
  if (*(v82 + 9))
  {
    v12 = v82 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v14 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v14)
  {
    [v78 addObject:v14];
  }

  v15 = [MEMORY[0x277CBEB18] array];
  Groups = mlir::mps::Conv2DOp::getGroups(&v82);
  v16 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"groups" dataType:64 shape:&unk_2868AFB90];
  if (v16)
  {
    v17 = [MEMORY[0x277CBEA90] dataWithBytes:&Groups length:8];
    [(MLViewerNodePropertyDataSPI *)v16 setValue:v17];

    [v15 addObject:v16];
  }

  Strides = mlir::mps::Conv2DOp::getStrides(&v82);
  v19 = Strides;
  if (Strides)
  {
    Strides = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    v20 = Strides;
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(Strides, @"strides", v19, v20);
  v76 = v21;
  if (v21)
  {
    [v15 addObject:v21];
  }

  DilationRates = mlir::mps::Conv2DOp::getDilationRates(&v82);
  v23 = DilationRates;
  if (DilationRates)
  {
    DilationRates = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DilationRates + 8);
    v24 = DilationRates;
  }

  else
  {
    v24 = 0;
  }

  v25 = EmitViewerSPI::emitElementsAttrProperty(DilationRates, @"dilation_rates", v23, v24);
  if (v25)
  {
    [v15 addObject:v25];
  }

  ExplicitPadding = mlir::mps::Conv2DOp::getExplicitPadding(&v82);
  v27 = ExplicitPadding;
  if (ExplicitPadding)
  {
    ExplicitPadding = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
    v28 = ExplicitPadding;
  }

  else
  {
    v28 = 0;
  }

  v29 = EmitViewerSPI::emitElementsAttrProperty(ExplicitPadding, @"explicit_padding", v27, v28);
  if (v29)
  {
    [v15 addObject:v29];
  }

  PaddingStyle = mlir::mps::Conv2DOp::getPaddingStyle(&v82);
  v31 = [MEMORY[0x277CBEB18] array];
  v32 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v31 addObject:v32];

  v33 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v31 addObject:v33];

  v34 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v31 addObject:v34];

  v35 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v31 addObject:v35];

  v36 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v31 addObject:v36];

  v37 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v31 value:PaddingStyle];
  if (v37)
  {
    [v15 addObject:v37];
  }

  DataLayout = mlir::mps::Conv2DOp::getDataLayout(&v82);
  v39 = [MEMORY[0x277CBEB18] array];
  v40 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v39 addObject:v40];

  v41 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v39 addObject:v41];

  v42 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v39 addObject:v42];

  v43 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v39 addObject:v43];

  v44 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v39 addObject:v44];

  v45 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v39 addObject:v45];

  v46 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v39 addObject:v46];

  v47 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v39 addObject:v47];

  v48 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v39 addObject:v48];

  v49 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v39 addObject:v49];

  v50 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v39 addObject:v50];

  v51 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v39 value:DataLayout];
  if (v51)
  {
    [v15 addObject:v51];
  }

  WeightsLayout = mlir::mps::Conv2DOp::getWeightsLayout(&v82);
  v53 = [MEMORY[0x277CBEB18] array];
  v54 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v53 addObject:v54];

  v55 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v53 addObject:v55];

  v56 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v53 addObject:v56];

  v57 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v53 addObject:v57];

  v58 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v53 addObject:v58];

  v59 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v53 addObject:v59];

  v60 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v53 addObject:v60];

  v61 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v53 addObject:v61];

  v62 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v53 addObject:v62];

  v63 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v53 addObject:v63];

  v64 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v53 addObject:v64];

  v65 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"weights_layout" type:@"MPSTensorDataLayout" cases:v53 value:WeightsLayout];
  if (v65)
  {
    [v15 addObject:v65];
  }

  v66 = [MEMORY[0x277CBEB18] array];
  v67 = [MLViewerNodeSPI alloc];
  v68 = [MEMORY[0x277CBEA60] arrayWithArray:v79];
  v69 = [MEMORY[0x277CBEA60] arrayWithArray:v78];
  v70 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v71 = [MEMORY[0x277CBEA60] arrayWithArray:v66];
  v72 = [(MLViewerNodeSPI *)v67 initWithType:v77 inputs:v68 outputs:v69 properties:v70 regions:v71];
  v73 = *(this + 3);
  *(this + 3) = v72;
  v74 = ;
  [*(this + 3) setLocalizedDescription:v74];

  if (v81 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563DB810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSConv2DWeightsGradientOpHandler *EmitterViewerSPI::MPSConv2DWeightsGradientOpHandler::MPSConv2DWeightsGradientOpHandler(EmitterViewerSPI::MPSConv2DWeightsGradientOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858840;
  v5 = *(*(a3 + 6) + 8);
  v83 = a3;
  Groups = v5;
  Value = mlir::StringAttr::getValue(&Groups);
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

  v82 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v82 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v78 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v80 = [MEMORY[0x277CBEB18] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v83 + 9) + 24));
  if (v10)
  {
    [v80 addObject:v10];
  }

  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v83 + 9) + 56));
  if (v11)
  {
    [v80 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"outputShape", *(*(v83 + 9) + 88));
  if (v12)
  {
    [v80 addObject:v12];
  }

  v79 = [MEMORY[0x277CBEB18] array];
  if (*(v83 + 9))
  {
    v13 = v83 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v79 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  Groups = mlir::mps::Conv2DWeightsGradientOp::getGroups(&v83);
  v17 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"groups" dataType:64 shape:&unk_2868AFBA8];
  if (v17)
  {
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:&Groups length:8];
    [(MLViewerNodePropertyDataSPI *)v17 setValue:v18];

    [v16 addObject:v17];
  }

  Strides = mlir::mps::Conv2DWeightsGradientOp::getStrides(&v83);
  v20 = Strides;
  if (Strides)
  {
    Strides = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    v21 = Strides;
  }

  else
  {
    v21 = 0;
  }

  v22 = EmitViewerSPI::emitElementsAttrProperty(Strides, @"strides", v20, v21);
  v77 = v22;
  if (v22)
  {
    [v16 addObject:v22];
  }

  DilationRates = mlir::mps::Conv2DWeightsGradientOp::getDilationRates(&v83);
  v24 = DilationRates;
  if (DilationRates)
  {
    DilationRates = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DilationRates + 8);
    v25 = DilationRates;
  }

  else
  {
    v25 = 0;
  }

  v26 = EmitViewerSPI::emitElementsAttrProperty(DilationRates, @"dilation_rates", v24, v25);
  if (v26)
  {
    [v16 addObject:v26];
  }

  ExplicitPadding = mlir::mps::Conv2DWeightsGradientOp::getExplicitPadding(&v83);
  v28 = ExplicitPadding;
  if (ExplicitPadding)
  {
    ExplicitPadding = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
    v29 = ExplicitPadding;
  }

  else
  {
    v29 = 0;
  }

  v30 = EmitViewerSPI::emitElementsAttrProperty(ExplicitPadding, @"explicit_padding", v28, v29);
  if (v30)
  {
    [v16 addObject:v30];
  }

  PaddingStyle = mlir::mps::Conv2DWeightsGradientOp::getPaddingStyle(&v83);
  v32 = [MEMORY[0x277CBEB18] array];
  v33 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v32 addObject:v33];

  v34 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v32 addObject:v34];

  v35 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v32 addObject:v35];

  v36 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v32 addObject:v36];

  v37 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v32 addObject:v37];

  v38 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v32 value:PaddingStyle];
  if (v38)
  {
    [v16 addObject:v38];
  }

  DataLayout = mlir::mps::Conv2DWeightsGradientOp::getDataLayout(&v83);
  v40 = [MEMORY[0x277CBEB18] array];
  v41 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v40 addObject:v41];

  v42 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v40 addObject:v42];

  v43 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v40 addObject:v43];

  v44 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v40 addObject:v44];

  v45 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v40 addObject:v45];

  v46 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v40 addObject:v46];

  v47 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v40 addObject:v47];

  v48 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v40 addObject:v48];

  v49 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v40 addObject:v49];

  v50 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v40 addObject:v50];

  v51 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v40 addObject:v51];

  v52 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v40 value:DataLayout];
  if (v52)
  {
    [v16 addObject:v52];
  }

  WeightsLayout = mlir::mps::Conv2DWeightsGradientOp::getWeightsLayout(&v83);
  v54 = [MEMORY[0x277CBEB18] array];
  v55 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v54 addObject:v55];

  v56 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v54 addObject:v56];

  v57 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v54 addObject:v57];

  v58 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v54 addObject:v58];

  v59 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v54 addObject:v59];

  v60 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v54 addObject:v60];

  v61 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v54 addObject:v61];

  v62 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v54 addObject:v62];

  v63 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v54 addObject:v63];

  v64 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v54 addObject:v64];

  v65 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v54 addObject:v65];

  v66 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"weights_layout" type:@"MPSTensorDataLayout" cases:v54 value:WeightsLayout];
  if (v66)
  {
    [v16 addObject:v66];
  }

  v67 = [MEMORY[0x277CBEB18] array];
  v68 = [MLViewerNodeSPI alloc];
  v69 = [MEMORY[0x277CBEA60] arrayWithArray:v80];
  v70 = [MEMORY[0x277CBEA60] arrayWithArray:v79];
  v71 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v72 = [MEMORY[0x277CBEA60] arrayWithArray:v67];
  v73 = [(MLViewerNodeSPI *)v68 initWithType:v78 inputs:v69 outputs:v70 properties:v71 regions:v72];
  v74 = *(this + 3);
  *(this + 3) = v73;

  v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:"conv2DDataGradient operation"];
  [*(this + 3) setLocalizedDescription:v75];

  if (v82 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563DC518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSConv3DDataGradientOpHandler *EmitterViewerSPI::MPSConv3DDataGradientOpHandler::MPSConv3DDataGradientOpHandler(EmitterViewerSPI::MPSConv3DDataGradientOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858858;
  v5 = *(*(a3 + 6) + 8);
  v87 = a3;
  Groups = v5;
  Value = mlir::StringAttr::getValue(&Groups);
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

  v86 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v86 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v82 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v84 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mps::Conv3DDataGradientOp::getODSOperandIndexAndLength(&v87, 0);
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v87 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v11)
  {
    [v84 addObject:v11];
  }

  v12 = mlir::mps::Conv3DDataGradientOp::getODSOperandIndexAndLength(&v87, 1u);
  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"weights", *(*(v87 + 9) + 32 * v12 + 24));
  if (v13)
  {
    [v84 addObject:v13];
  }

  v14 = mlir::mps::Conv3DDataGradientOp::getODSOperandIndexAndLength(&v87, 2u);
  if ((*(v87 + 46) & 0x80) != 0)
  {
    v15 = *(v87 + 9);
  }

  else
  {
    v15 = 0;
  }

  if (HIDWORD(v14) + v14 == v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v15 + 32 * v14 + 24);
  }

  v17 = EmitViewerSPI::emitNodeInputPort(a2, @"outputShape", v16);
  if (v17)
  {
    [v84 addObject:v17];
  }

  v83 = [MEMORY[0x277CBEB18] array];
  if (*(v87 + 9))
  {
    v18 = v87 - 16;
  }

  else
  {
    v18 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
  v20 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v20)
  {
    [v83 addObject:v20];
  }

  v21 = [MEMORY[0x277CBEB18] array];
  Groups = mlir::mps::Conv3DDataGradientOp::getGroups(&v87);
  v22 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"groups" dataType:64 shape:&unk_2868AFBC0];
  if (v22)
  {
    v23 = [MEMORY[0x277CBEA90] dataWithBytes:&Groups length:8];
    [(MLViewerNodePropertyDataSPI *)v22 setValue:v23];

    [v21 addObject:v22];
  }

  Strides = mlir::mps::Conv3DDataGradientOp::getStrides(&v87);
  v25 = Strides;
  if (Strides)
  {
    Strides = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    v26 = Strides;
  }

  else
  {
    v26 = 0;
  }

  v27 = EmitViewerSPI::emitElementsAttrProperty(Strides, @"strides", v25, v26);
  v81 = v27;
  if (v27)
  {
    [v21 addObject:v27];
  }

  DilationRates = mlir::mps::Conv3DDataGradientOp::getDilationRates(&v87);
  v29 = DilationRates;
  if (DilationRates)
  {
    DilationRates = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DilationRates + 8);
    v30 = DilationRates;
  }

  else
  {
    v30 = 0;
  }

  v31 = EmitViewerSPI::emitElementsAttrProperty(DilationRates, @"dilation_rates", v29, v30);
  if (v31)
  {
    [v21 addObject:v31];
  }

  ExplicitPadding = mlir::mps::Conv3DDataGradientOp::getExplicitPadding(&v87);
  v33 = ExplicitPadding;
  if (ExplicitPadding)
  {
    ExplicitPadding = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
    v34 = ExplicitPadding;
  }

  else
  {
    v34 = 0;
  }

  v35 = EmitViewerSPI::emitElementsAttrProperty(ExplicitPadding, @"explicit_padding", v33, v34);
  if (v35)
  {
    [v21 addObject:v35];
  }

  PaddingStyle = mlir::mps::Conv3DDataGradientOp::getPaddingStyle(&v87);
  v37 = [MEMORY[0x277CBEB18] array];
  v38 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v37 addObject:v38];

  v39 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v37 addObject:v39];

  v40 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v37 addObject:v40];

  v41 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v37 addObject:v41];

  v42 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v37 addObject:v42];

  v43 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v37 value:PaddingStyle];
  if (v43)
  {
    [v21 addObject:v43];
  }

  DataLayout = mlir::mps::Conv3DDataGradientOp::getDataLayout(&v87);
  v45 = [MEMORY[0x277CBEB18] array];
  v46 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v45 addObject:v46];

  v47 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v45 addObject:v47];

  v48 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v45 addObject:v48];

  v49 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v45 addObject:v49];

  v50 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v45 addObject:v50];

  v51 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v45 addObject:v51];

  v52 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v45 addObject:v52];

  v53 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v45 addObject:v53];

  v54 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v45 addObject:v54];

  v55 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v45 addObject:v55];

  v56 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v45 addObject:v56];

  v57 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v45 value:DataLayout];
  if (v57)
  {
    [v21 addObject:v57];
  }

  WeightsLayout = mlir::mps::Conv3DDataGradientOp::getWeightsLayout(&v87);
  v59 = [MEMORY[0x277CBEB18] array];
  v60 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v59 addObject:v60];

  v61 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v59 addObject:v61];

  v62 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v59 addObject:v62];

  v63 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v59 addObject:v63];

  v64 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v59 addObject:v64];

  v65 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v59 addObject:v65];

  v66 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v59 addObject:v66];

  v67 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v59 addObject:v67];

  v68 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v59 addObject:v68];

  v69 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v59 addObject:v69];

  v70 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v59 addObject:v70];

  v71 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"weights_layout" type:@"MPSTensorDataLayout" cases:v59 value:WeightsLayout];
  if (v71)
  {
    [v21 addObject:v71];
  }

  v72 = [MEMORY[0x277CBEB18] array];
  v73 = [MLViewerNodeSPI alloc];
  v74 = [MEMORY[0x277CBEA60] arrayWithArray:v84];
  v75 = [MEMORY[0x277CBEA60] arrayWithArray:v83];
  v76 = [MEMORY[0x277CBEA60] arrayWithArray:v21];
  v77 = [MEMORY[0x277CBEA60] arrayWithArray:v72];
  v78 = [(MLViewerNodeSPI *)v73 initWithType:v82 inputs:v74 outputs:v75 properties:v76 regions:v77];
  v79 = *(this + 3);
  *(this + 3) = v78;

  if (v86 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563DD268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSConv3DOpHandler *EmitterViewerSPI::MPSConv3DOpHandler::MPSConv3DOpHandler(EmitterViewerSPI::MPSConv3DOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858870;
  v5 = *(*(a3 + 6) + 8);
  v82 = a3;
  Groups = v5;
  Value = mlir::StringAttr::getValue(&Groups);
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

  v77 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v79 = [MEMORY[0x277CBEB18] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v82 + 9) + 24));
  if (v10)
  {
    [v79 addObject:v10];
  }

  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"weights", *(*(v82 + 9) + 56));
  if (v11)
  {
    [v79 addObject:v11];
  }

  v78 = [MEMORY[0x277CBEB18] array];
  if (*(v82 + 9))
  {
    v12 = v82 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v14 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v14)
  {
    [v78 addObject:v14];
  }

  v15 = [MEMORY[0x277CBEB18] array];
  Groups = mlir::mps::Conv3DOp::getGroups(&v82);
  v16 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"groups" dataType:64 shape:&unk_2868AFBD8];
  if (v16)
  {
    v17 = [MEMORY[0x277CBEA90] dataWithBytes:&Groups length:8];
    [(MLViewerNodePropertyDataSPI *)v16 setValue:v17];

    [v15 addObject:v16];
  }

  Strides = mlir::mps::Conv3DOp::getStrides(&v82);
  v19 = Strides;
  if (Strides)
  {
    Strides = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    v20 = Strides;
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(Strides, @"strides", v19, v20);
  v76 = v21;
  if (v21)
  {
    [v15 addObject:v21];
  }

  DilationRates = mlir::mps::Conv3DOp::getDilationRates(&v82);
  v23 = DilationRates;
  if (DilationRates)
  {
    DilationRates = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DilationRates + 8);
    v24 = DilationRates;
  }

  else
  {
    v24 = 0;
  }

  v25 = EmitViewerSPI::emitElementsAttrProperty(DilationRates, @"dilation_rates", v23, v24);
  if (v25)
  {
    [v15 addObject:v25];
  }

  ExplicitPadding = mlir::mps::Conv3DOp::getExplicitPadding(&v82);
  v27 = ExplicitPadding;
  if (ExplicitPadding)
  {
    ExplicitPadding = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
    v28 = ExplicitPadding;
  }

  else
  {
    v28 = 0;
  }

  v29 = EmitViewerSPI::emitElementsAttrProperty(ExplicitPadding, @"explicit_padding", v27, v28);
  if (v29)
  {
    [v15 addObject:v29];
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v82);
  v31 = [MEMORY[0x277CBEB18] array];
  v32 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v31 addObject:v32];

  v33 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v31 addObject:v33];

  v34 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v31 addObject:v34];

  v35 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v31 addObject:v35];

  v36 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v31 addObject:v36];

  v37 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v31 value:PaddingStyle];
  if (v37)
  {
    [v15 addObject:v37];
  }

  DataLayout = mlir::mps::Conv3DOp::getDataLayout(&v82);
  v39 = [MEMORY[0x277CBEB18] array];
  v40 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v39 addObject:v40];

  v41 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v39 addObject:v41];

  v42 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v39 addObject:v42];

  v43 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v39 addObject:v43];

  v44 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v39 addObject:v44];

  v45 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v39 addObject:v45];

  v46 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v39 addObject:v46];

  v47 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v39 addObject:v47];

  v48 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v39 addObject:v48];

  v49 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v39 addObject:v49];

  v50 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v39 addObject:v50];

  v51 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v39 value:DataLayout];
  if (v51)
  {
    [v15 addObject:v51];
  }

  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v82);
  v53 = [MEMORY[0x277CBEB18] array];
  v54 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v53 addObject:v54];

  v55 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v53 addObject:v55];

  v56 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v53 addObject:v56];

  v57 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v53 addObject:v57];

  v58 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v53 addObject:v58];

  v59 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v53 addObject:v59];

  v60 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v53 addObject:v60];

  v61 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v53 addObject:v61];

  v62 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v53 addObject:v62];

  v63 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v53 addObject:v63];

  v64 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v53 addObject:v64];

  v65 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"weights_layout" type:@"MPSTensorDataLayout" cases:v53 value:WeightsLayout];
  if (v65)
  {
    [v15 addObject:v65];
  }

  v66 = [MEMORY[0x277CBEB18] array];
  v67 = [MLViewerNodeSPI alloc];
  v68 = [MEMORY[0x277CBEA60] arrayWithArray:v79];
  v69 = [MEMORY[0x277CBEA60] arrayWithArray:v78];
  v70 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v71 = [MEMORY[0x277CBEA60] arrayWithArray:v66];
  v72 = [(MLViewerNodeSPI *)v67 initWithType:v77 inputs:v68 outputs:v69 properties:v70 regions:v71];
  v73 = *(this + 3);
  *(this + 3) = v72;
  v74 = ;
  [*(this + 3) setLocalizedDescription:v74];

  if (v81 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563DDF54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSConv3DWeightsGradientOpHandler *EmitterViewerSPI::MPSConv3DWeightsGradientOpHandler::MPSConv3DWeightsGradientOpHandler(EmitterViewerSPI::MPSConv3DWeightsGradientOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858888;
  v5 = *(*(a3 + 6) + 8);
  v82 = a3;
  Groups = v5;
  Value = mlir::StringAttr::getValue(&Groups);
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

  v77 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v79 = [MEMORY[0x277CBEB18] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v82 + 9) + 24));
  if (v10)
  {
    [v79 addObject:v10];
  }

  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v82 + 9) + 56));
  if (v11)
  {
    [v79 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"outputShape", *(*(v82 + 9) + 88));
  if (v12)
  {
    [v79 addObject:v12];
  }

  v78 = [MEMORY[0x277CBEB18] array];
  if (*(v82 + 9))
  {
    v13 = v82 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v78 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  Groups = mlir::mps::Conv3DWeightsGradientOp::getGroups(&v82);
  v17 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"groups" dataType:64 shape:&unk_2868AFBF0];
  if (v17)
  {
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:&Groups length:8];
    [(MLViewerNodePropertyDataSPI *)v17 setValue:v18];

    [v16 addObject:v17];
  }

  Strides = mlir::mps::Conv3DWeightsGradientOp::getStrides(&v82);
  v20 = Strides;
  if (Strides)
  {
    Strides = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    v21 = Strides;
  }

  else
  {
    v21 = 0;
  }

  v22 = EmitViewerSPI::emitElementsAttrProperty(Strides, @"strides", v20, v21);
  v76 = v22;
  if (v22)
  {
    [v16 addObject:v22];
  }

  DilationRates = mlir::mps::Conv3DWeightsGradientOp::getDilationRates(&v82);
  v24 = DilationRates;
  if (DilationRates)
  {
    DilationRates = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DilationRates + 8);
    v25 = DilationRates;
  }

  else
  {
    v25 = 0;
  }

  v26 = EmitViewerSPI::emitElementsAttrProperty(DilationRates, @"dilation_rates", v24, v25);
  if (v26)
  {
    [v16 addObject:v26];
  }

  ExplicitPadding = mlir::mps::Conv3DWeightsGradientOp::getExplicitPadding(&v82);
  v28 = ExplicitPadding;
  if (ExplicitPadding)
  {
    ExplicitPadding = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
    v29 = ExplicitPadding;
  }

  else
  {
    v29 = 0;
  }

  v30 = EmitViewerSPI::emitElementsAttrProperty(ExplicitPadding, @"explicit_padding", v28, v29);
  if (v30)
  {
    [v16 addObject:v30];
  }

  PaddingStyle = mlir::mps::Conv3DWeightsGradientOp::getPaddingStyle(&v82);
  v32 = [MEMORY[0x277CBEB18] array];
  v33 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v32 addObject:v33];

  v34 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v32 addObject:v34];

  v35 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v32 addObject:v35];

  v36 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v32 addObject:v36];

  v37 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v32 addObject:v37];

  v38 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v32 value:PaddingStyle];
  if (v38)
  {
    [v16 addObject:v38];
  }

  DataLayout = mlir::mps::Conv3DWeightsGradientOp::getDataLayout(&v82);
  v40 = [MEMORY[0x277CBEB18] array];
  v41 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v40 addObject:v41];

  v42 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v40 addObject:v42];

  v43 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v40 addObject:v43];

  v44 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v40 addObject:v44];

  v45 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v40 addObject:v45];

  v46 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v40 addObject:v46];

  v47 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v40 addObject:v47];

  v48 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v40 addObject:v48];

  v49 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v40 addObject:v49];

  v50 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v40 addObject:v50];

  v51 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v40 addObject:v51];

  v52 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v40 value:DataLayout];
  if (v52)
  {
    [v16 addObject:v52];
  }

  WeightsLayout = mlir::mps::Conv3DWeightsGradientOp::getWeightsLayout(&v82);
  v54 = [MEMORY[0x277CBEB18] array];
  v55 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v54 addObject:v55];

  v56 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v54 addObject:v56];

  v57 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v54 addObject:v57];

  v58 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v54 addObject:v58];

  v59 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v54 addObject:v59];

  v60 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v54 addObject:v60];

  v61 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v54 addObject:v61];

  v62 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v54 addObject:v62];

  v63 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v54 addObject:v63];

  v64 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v54 addObject:v64];

  v65 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v54 addObject:v65];

  v66 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"weights_layout" type:@"MPSTensorDataLayout" cases:v54 value:WeightsLayout];
  if (v66)
  {
    [v16 addObject:v66];
  }

  v67 = [MEMORY[0x277CBEB18] array];
  v68 = [MLViewerNodeSPI alloc];
  v69 = [MEMORY[0x277CBEA60] arrayWithArray:v79];
  v70 = [MEMORY[0x277CBEA60] arrayWithArray:v78];
  v71 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v72 = [MEMORY[0x277CBEA60] arrayWithArray:v67];
  v73 = [(MLViewerNodeSPI *)v68 initWithType:v77 inputs:v69 outputs:v70 properties:v71 regions:v72];
  v74 = *(this + 3);
  *(this + 3) = v73;

  if (v81 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563DEC34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCosOpHandler *EmitterViewerSPI::MPSCosOpHandler::MPSCosOpHandler(EmitterViewerSPI::MPSCosOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868588A0;
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

void sub_2563DF190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCoshOpHandler *EmitterViewerSPI::MPSCoshOpHandler::MPSCoshOpHandler(EmitterViewerSPI::MPSCoshOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868588B8;
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

void sub_2563DF564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCostVolumeOpHandler *EmitterViewerSPI::MPSCostVolumeOpHandler::MPSCostVolumeOpHandler(EmitterViewerSPI::MPSCostVolumeOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868588D0;
  v5 = *(*(a3 + 6) + 8);
  v67 = a3;
  WindowHeight = v5;
  Value = mlir::StringAttr::getValue(&WindowHeight);
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

  v66 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v66 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v58 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v59 = v10;
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"ref", *(*(v67 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v67 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"coordinates", *(*(v67 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v60 = [MEMORY[0x277CBEB18] array];
  if (*(v67 + 9))
  {
    v14 = v67 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v60 addObject:v16];
  }

  v17 = [MEMORY[0x277CBEB18] array];
  NormalizeCoordinates = mlir::mps::CostVolumeOp::getNormalizeCoordinates(&v67);
  v18 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"normalize_coordinates" dataType:2147483656 shape:&unk_2868AFC08];
  if (v18)
  {
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:&NormalizeCoordinates length:1];
    [(MLViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v17 addObject:v18];
  }

  RelativeCoordinates = mlir::mps::CostVolumeOp::getRelativeCoordinates(&v67);
  v20 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"relative_coordinates" dataType:2147483656 shape:&unk_2868AFC20];
  if (v20)
  {
    v21 = [MEMORY[0x277CBEA90] dataWithBytes:&RelativeCoordinates length:1];
    [(MLViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v17 addObject:v20];
  }

  WindowHeight = mlir::mps::CostVolumeOp::getWindowHeight(&v67);
  v22 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"window_height" dataType:64 shape:&unk_2868AFC38];
  if (v22)
  {
    v23 = [MEMORY[0x277CBEA90] dataWithBytes:&WindowHeight length:8];
    [(MLViewerNodePropertyDataSPI *)v22 setValue:v23];

    [v17 addObject:v22];
  }

  WindowWidth = mlir::mps::CostVolumeOp::getWindowWidth(&v67);
  v24 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"window_width" dataType:64 shape:&unk_2868AFC50];
  if (v24)
  {
    v25 = [MEMORY[0x277CBEA90] dataWithBytes:&WindowWidth length:8];
    [(MLViewerNodePropertyDataSPI *)v24 setValue:v25];

    [v17 addObject:v24];
  }

  SimilarityType = mlir::mps::CostVolumeOp::getSimilarityType(&v67);
  v27 = [MEMORY[0x277CBEB18] array];
  v28 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"dot_product" value:0];
  [v27 addObject:v28];

  v29 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"abs_diff" value:1];
  [v27 addObject:v29];

  v30 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"similarity_type" type:@"MPSSimilarityType" cases:v27 value:SimilarityType];
  if (v30)
  {
    [v17 addObject:v30];
  }

  DataLayout = mlir::mps::CostVolumeOp::getDataLayout(&v67);
  v32 = [MEMORY[0x277CBEB18] array];
  v33 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v32 addObject:v33];

  v34 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v32 addObject:v34];

  v35 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v32 addObject:v35];

  v36 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v32 addObject:v36];

  v37 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v32 addObject:v37];

  v38 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v32 addObject:v38];

  v39 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v32 addObject:v39];

  v40 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v32 addObject:v40];

  v41 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v32 addObject:v41];

  v42 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v32 addObject:v42];

  v43 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v32 addObject:v43];

  v44 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v32 value:DataLayout];
  if (v44)
  {
    [v17 addObject:v44];
  }

  IsXOnly = mlir::mps::CostVolumeOp::getCoordIsXOnly(&v67);
  if ((IsXOnly & 0x100) != 0)
  {
    v45 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"coord_is_x_only" dataType:2147483656 shape:&unk_2868AFC68];
    if (v45)
    {
      if ((IsXOnly & 0x100) == 0)
      {
        v57 = std::__throw_bad_optional_access[abi:nn200100]();

        if (v66 < 0)
        {
          operator delete(__dst);
        }

        _Unwind_Resume(v57);
      }

      v46 = [MEMORY[0x277CBEA90] dataWithBytes:&IsXOnly length:2];
      [(MLViewerNodePropertyDataSPI *)v45 setValue:v46];

      [v17 addObject:v45];
    }
  }

  v47 = [MEMORY[0x277CBEB18] array];
  v48 = [MLViewerNodeSPI alloc];
  v49 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v50 = [MEMORY[0x277CBEA60] arrayWithArray:v60];
  v51 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v52 = [MEMORY[0x277CBEA60] arrayWithArray:v47];
  v53 = [(MLViewerNodeSPI *)v48 initWithType:v58 inputs:v49 outputs:v50 properties:v51 regions:v52];
  v54 = *(this + 3);
  *(this + 3) = v53;
  v55 = ;
  [*(this + 3) setLocalizedDescription:v55];

  if (v66 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

EmitterViewerSPI::MPSCreateComplexOpHandler *EmitterViewerSPI::MPSCreateComplexOpHandler::MPSCreateComplexOpHandler(EmitterViewerSPI::MPSCreateComplexOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868588E8;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"real", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"imag", *(*(a3 + 9) + 56));
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

void sub_2563E0480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCreateTextureTensorOpHandler *EmitterViewerSPI::MPSCreateTextureTensorOpHandler::MPSCreateTextureTensorOpHandler(EmitterViewerSPI::MPSCreateTextureTensorOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858900;
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

  v42 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v45 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(v45 + 9))
  {
    v13 = v45 - 16;
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
  PixelFormat = mlir::mps::CreateTextureTensorOp::getPixelFormat(&v45);
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"R8Unorm" value:0];
  [v18 addObject:v19];

  v20 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"RG8Unorm" value:1];
  [v18 addObject:v20];

  v21 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"RGBA8Unorm" value:2];
  [v18 addObject:v21];

  v22 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"BGRA8Unorm" value:3];
  [v18 addObject:v22];

  v23 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"R16Float" value:4];
  [v18 addObject:v23];

  v24 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"RG16Float" value:5];
  [v18 addObject:v24];

  v25 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"RGBA16Float" value:6];
  [v18 addObject:v25];

  v26 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"R32Float" value:7];
  [v18 addObject:v26];

  v27 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"RG32Float" value:8];
  [v18 addObject:v27];

  v28 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"RGBA32Float" value:9];
  [v18 addObject:v28];

  v29 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"pixel_format" type:@"MPSMetalPixelFormat" cases:v18 value:PixelFormat];
  if (v29)
  {
    [v16 addObject:v29];
  }

  LOBYTE(v46) = mlir::mps::CreateTextureTensorOp::getCompressed(&v45);
  v30 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"compressed" dataType:2147483656 shape:&unk_2868AFC80];
  if (v30)
  {
    v31 = [MEMORY[0x277CBEA90] dataWithBytes:&v46 length:1];
    [(MLViewerNodePropertyDataSPI *)v30 setValue:v31];

    [v16 addObject:v30];
  }

  v32 = [MEMORY[0x277CBEB18] array];
  v33 = [MLViewerNodeSPI alloc];
  v34 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v35 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v36 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v37 = [MEMORY[0x277CBEA60] arrayWithArray:v32];
  v38 = [(MLViewerNodeSPI *)v33 initWithType:v42 inputs:v34 outputs:v35 properties:v36 regions:v37];
  v39 = *(this + 3);
  *(this + 3) = v38;

  v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Creates a textureTensor op with a specified pixel format format from a tensor. The input is expected to be in NHWC data layout."];
  [*(this + 3) setLocalizedDescription:v40];

  if (v44 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563E0AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCropOpHandler *EmitterViewerSPI::MPSCropOpHandler::MPSCropOpHandler(EmitterViewerSPI::MPSCropOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858918;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"amount_before", *(*(a3 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"amount_after", *(*(a3 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v16 = a3 - 16;
  }

  else
  {
    v16 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
  v18 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v18)
  {
    [v15 addObject:v18];
  }

  v19 = [MEMORY[0x277CBEB18] array];
  v20 = [MEMORY[0x277CBEB18] array];
  v21 = [MLViewerNodeSPI alloc];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v19];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v20];
  v26 = [(MLViewerNodeSPI *)v21 initWithType:v30 inputs:v22 outputs:v23 properties:v24 regions:v25];
  v27 = *(this + 3);
  *(this + 3) = v26;
  v28 = ;
  [*(this + 3) setLocalizedDescription:v28];

  if (v32 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563E0FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCropResizeOpHandler *EmitterViewerSPI::MPSCropResizeOpHandler::MPSCropResizeOpHandler(EmitterViewerSPI::MPSCropResizeOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  v64[3] = *MEMORY[0x277D85DE8];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858930;
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

  v52 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v56 = [MEMORY[0x277CBEB18] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"images", *(*(v62 + 9) + 24));
  if (v10)
  {
    [v56 addObject:v10];
  }

  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"boxes", *(*(v62 + 9) + 56));
  if (v11)
  {
    [v56 addObject:v11];
  }

  v55 = [MEMORY[0x277CBEB18] array];
  if (*(v62 + 9))
  {
    v12 = v62 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v14 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v14)
  {
    [v55 addObject:v14];
  }

  v15 = [MEMORY[0x277CBEB18] array];
  ResizeHeight = mlir::mps::CropResizeOp::getResizeHeight(&v62);
  v54 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"resize_height" dataType:32 shape:&unk_2868AFC98];
  if (v54)
  {
    v16 = [MEMORY[0x277CBEA90] dataWithBytes:&ResizeHeight length:4];
    [(MLViewerNodePropertyDataSPI *)v54 setValue:v16];

    [v15 addObject:v54];
  }

  ResizeWidth = mlir::mps::CropResizeOp::getResizeWidth(&v62);
  v53 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"resize_width" dataType:32 shape:&unk_2868AFCB0];
  if (v53)
  {
    v17 = [MEMORY[0x277CBEA90] dataWithBytes:&ResizeWidth length:4];
    [(MLViewerNodePropertyDataSPI *)v53 setValue:v17];

    [v15 addObject:v53];
  }

  NormalizeCoordinates = mlir::mps::CropResizeOp::getNormalizeCoordinates(&v62);
  v18 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"normalize_coordinates" dataType:2147483656 shape:&unk_2868AFCC8];
  if (v18)
  {
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:&NormalizeCoordinates length:1];
    [(MLViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v15 addObject:v18];
  }

  mlir::mps::CropResizeOp::getSpatialScale(&v62, &v63);
  v20 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"spatial_scale" dataType:268435488 shape:&unk_2868AFCE0];
  if (v20)
  {
    v21 = [MEMORY[0x277CBEA90] dataWithBytes:&v63 length:32];
    [(MLViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v15 addObject:v20];
  }

  InterpolationMode = mlir::mps::CropResizeOp::getInterpolationMode(&v62);
  v23 = [MEMORY[0x277CBEB18] array];
  v24 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"nearest" value:0];
  [v23 addObject:v24];

  v25 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"bilinear" value:1];
  [v23 addObject:v25];

  v26 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"interpolation_mode" type:@"MPSSamplingMode" cases:v23 value:InterpolationMode];
  if (v26)
  {
    [v15 addObject:v26];
  }

  AlignmentMode = mlir::mps::CropResizeOp::getAlignmentMode(&v62);
  v28 = [MEMORY[0x277CBEB18] array];
  v29 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"defaultAlignment" value:0];
  [v28 addObject:v29];

  v30 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"alignCorners" value:1];
  [v28 addObject:v30];

  v31 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"offsetCorners" value:2];
  [v28 addObject:v31];

  v32 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"alignment_mode" type:@"MPSCropResizeAlignmentMode" cases:v28 value:AlignmentMode];
  if (v32)
  {
    [v15 addObject:v32];
  }

  CoordinateMode = mlir::mps::CropResizeOp::getCoordinateMode(&v62);
  v34 = [MEMORY[0x277CBEB18] array];
  v35 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"cornersHeightFirst" value:0];
  [v34 addObject:v35];

  v36 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"cornersWidthFirst" value:1];
  [v34 addObject:v36];

  v37 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"centersHeightFirst" value:2];
  [v34 addObject:v37];

  v38 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"centersWidthFirst" value:3];
  [v34 addObject:v38];

  v39 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"coordinate_mode" type:@"MPSCropResizeCoordinateMode" cases:v34 value:CoordinateMode];
  if (v39)
  {
    [v15 addObject:v39];
  }

  v40 = v64[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v41) == v40)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v64);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v64);
  }

  v42 = [MEMORY[0x277CBEB18] array];
  v43 = [MLViewerNodeSPI alloc];
  v44 = [MEMORY[0x277CBEA60] arrayWithArray:v56];
  v45 = [MEMORY[0x277CBEA60] arrayWithArray:v55];
  v46 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v47 = [MEMORY[0x277CBEA60] arrayWithArray:v42];
  v48 = [(MLViewerNodeSPI *)v43 initWithType:v52 inputs:v44 outputs:v45 properties:v46 regions:v47];
  v49 = *(this + 3);
  *(this + 3) = v48;
  v50 = ;
  [*(this + 3) setLocalizedDescription:v50];

  if (v61 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563E18C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  llvm::APFloat::~APFloat(&a25);

  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCumulativeMaximumOpHandler *EmitterViewerSPI::MPSCumulativeMaximumOpHandler::MPSCumulativeMaximumOpHandler(EmitterViewerSPI::MPSCumulativeMaximumOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858948;
  v5 = *(*(a3 + 6) + 8);
  v36 = a3;
  v37 = v5;
  Value = mlir::StringAttr::getValue(&v37);
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

  v32 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v36 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v36 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(v36 + 9))
  {
    v14 = v36 - 16;
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
  LOBYTE(v37) = mlir::mps::CumulativeMaximumOp::getExclusive(&v36);
  v18 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"exclusive" dataType:2147483656 shape:&unk_2868AFCF8];
  if (v18)
  {
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:&v37 length:1];
    [(MLViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v17 addObject:v18];
  }

  Reverse = mlir::mps::CumulativeMaximumOp::getReverse(&v36);
  v20 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"reverse" dataType:2147483656 shape:&unk_2868AFD10];
  if (v20)
  {
    v21 = [MEMORY[0x277CBEA90] dataWithBytes:&Reverse length:1];
    [(MLViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v17 addObject:v20];
  }

  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MLViewerNodeSPI alloc];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v28 = [(MLViewerNodeSPI *)v23 initWithType:v32 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;
  v30 = ;
  [*(this + 3) setLocalizedDescription:v30];

  if (v35 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563E1F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCumulativeMinimumOpHandler *EmitterViewerSPI::MPSCumulativeMinimumOpHandler::MPSCumulativeMinimumOpHandler(EmitterViewerSPI::MPSCumulativeMinimumOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858960;
  v5 = *(*(a3 + 6) + 8);
  v36 = a3;
  v37 = v5;
  Value = mlir::StringAttr::getValue(&v37);
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

  v32 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v36 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v36 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(v36 + 9))
  {
    v14 = v36 - 16;
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
  LOBYTE(v37) = mlir::mps::CumulativeMinimumOp::getExclusive(&v36);
  v18 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"exclusive" dataType:2147483656 shape:&unk_2868AFD28];
  if (v18)
  {
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:&v37 length:1];
    [(MLViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v17 addObject:v18];
  }

  Reverse = mlir::mps::CumulativeMinimumOp::getReverse(&v36);
  v20 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"reverse" dataType:2147483656 shape:&unk_2868AFD40];
  if (v20)
  {
    v21 = [MEMORY[0x277CBEA90] dataWithBytes:&Reverse length:1];
    [(MLViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v17 addObject:v20];
  }

  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MLViewerNodeSPI alloc];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v28 = [(MLViewerNodeSPI *)v23 initWithType:v32 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;
  v30 = ;
  [*(this + 3) setLocalizedDescription:v30];

  if (v35 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563E24A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCumulativeProductOpHandler *EmitterViewerSPI::MPSCumulativeProductOpHandler::MPSCumulativeProductOpHandler(EmitterViewerSPI::MPSCumulativeProductOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858978;
  v5 = *(*(a3 + 6) + 8);
  v36 = a3;
  v37 = v5;
  Value = mlir::StringAttr::getValue(&v37);
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

  v32 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v36 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v36 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(v36 + 9))
  {
    v14 = v36 - 16;
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
  LOBYTE(v37) = mlir::mps::CumulativeProductOp::getExclusive(&v36);
  v18 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"exclusive" dataType:2147483656 shape:&unk_2868AFD58];
  if (v18)
  {
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:&v37 length:1];
    [(MLViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v17 addObject:v18];
  }

  Reverse = mlir::mps::CumulativeProductOp::getReverse(&v36);
  v20 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"reverse" dataType:2147483656 shape:&unk_2868AFD70];
  if (v20)
  {
    v21 = [MEMORY[0x277CBEA90] dataWithBytes:&Reverse length:1];
    [(MLViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v17 addObject:v20];
  }

  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MLViewerNodeSPI alloc];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v28 = [(MLViewerNodeSPI *)v23 initWithType:v32 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;
  v30 = ;
  [*(this + 3) setLocalizedDescription:v30];

  if (v35 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563E29DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCumulativeSumOpHandler *EmitterViewerSPI::MPSCumulativeSumOpHandler::MPSCumulativeSumOpHandler(EmitterViewerSPI::MPSCumulativeSumOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858990;
  v5 = *(*(a3 + 6) + 8);
  v36 = a3;
  v37 = v5;
  Value = mlir::StringAttr::getValue(&v37);
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

  v32 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v36 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v36 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(v36 + 9))
  {
    v14 = v36 - 16;
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
  LOBYTE(v37) = mlir::mps::CumulativeSumOp::getExclusive(&v36);
  v18 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"exclusive" dataType:2147483656 shape:&unk_2868AFD88];
  if (v18)
  {
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:&v37 length:1];
    [(MLViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v17 addObject:v18];
  }

  Reverse = mlir::mps::CumulativeSumOp::getReverse(&v36);
  v20 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"reverse" dataType:2147483656 shape:&unk_2868AFDA0];
  if (v20)
  {
    v21 = [MEMORY[0x277CBEA90] dataWithBytes:&Reverse length:1];
    [(MLViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v17 addObject:v20];
  }

  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MLViewerNodeSPI alloc];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v28 = [(MLViewerNodeSPI *)v23 initWithType:v32 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;
  v30 = ;
  [*(this + 3) setLocalizedDescription:v30];

  if (v35 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563E2F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDegammaOpHandler *EmitterViewerSPI::MPSDegammaOpHandler::MPSDegammaOpHandler(EmitterViewerSPI::MPSDegammaOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868589A8;
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

void sub_2563E3320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDepthToSpace2DOpHandler *EmitterViewerSPI::MPSDepthToSpace2DOpHandler::MPSDepthToSpace2DOpHandler(EmitterViewerSPI::MPSDepthToSpace2DOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868589C0;
  v5 = *(*(a3 + 6) + 8);
  v38 = a3;
  v39 = v5;
  Value = mlir::StringAttr::getValue(&v39);
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

  v37 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v37 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v33 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v38 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"width_axis", *(*(v38 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"height_axis", *(*(v38 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"depth_axis", *(*(v38 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v34 = [MEMORY[0x277CBEB18] array];
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
    [v34 addObject:v17];
  }

  v18 = [MEMORY[0x277CBEB18] array];
  LODWORD(v39) = mlir::mps::DepthToSpace2DOp::getBlockSize(&v38);
  v19 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"block_size" dataType:32 shape:&unk_2868AFDB8];
  if (v19)
  {
    v20 = [MEMORY[0x277CBEA90] dataWithBytes:&v39 length:4];
    [(MLViewerNodePropertyDataSPI *)v19 setValue:v20];

    [v18 addObject:v19];
  }

  PixelShuffle = mlir::mps::DepthToSpace2DOp::getPixelShuffle(&v38);
  v21 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"pixel_shuffle" dataType:2147483656 shape:&unk_2868AFDD0];
  if (v21)
  {
    v22 = [MEMORY[0x277CBEA90] dataWithBytes:&PixelShuffle length:1];
    [(MLViewerNodePropertyDataSPI *)v21 setValue:v22];

    [v18 addObject:v21];
  }

  v23 = [MEMORY[0x277CBEB18] array];
  v24 = [MLViewerNodeSPI alloc];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v34];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v23];
  v29 = [(MLViewerNodeSPI *)v24 initWithType:v33 inputs:v25 outputs:v26 properties:v27 regions:v28];
  v30 = *(this + 3);
  *(this + 3) = v29;
  v31 = ;
  [*(this + 3) setLocalizedDescription:v31];

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563E3880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDepthwiseConv2DDataGradientOpHandler *EmitterViewerSPI::MPSDepthwiseConv2DDataGradientOpHandler::MPSDepthwiseConv2DDataGradientOpHandler(EmitterViewerSPI::MPSDepthwiseConv2DDataGradientOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868589D8;
  v5 = *(*(a3 + 6) + 8);
  v81 = a3;
  v82 = v5;
  Value = mlir::StringAttr::getValue(&v82);
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

  v80 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v80 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v76 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v77 = v10;
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v81 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"weights", *(*(v81 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"outputShape", *(*(v81 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v78 = [MEMORY[0x277CBEB18] array];
  if (*(v81 + 9))
  {
    v14 = v81 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v78 addObject:v16];
  }

  v17 = [MEMORY[0x277CBEB18] array];
  Strides = mlir::mps::DepthwiseConv2DDataGradientOp::getStrides(&v81);
  v19 = Strides;
  if (Strides)
  {
    Strides = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    v20 = Strides;
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(Strides, @"strides", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  DilationRates = mlir::mps::DepthwiseConv2DDataGradientOp::getDilationRates(&v81);
  v23 = DilationRates;
  if (DilationRates)
  {
    DilationRates = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DilationRates + 8);
    v24 = DilationRates;
  }

  else
  {
    v24 = 0;
  }

  v25 = EmitViewerSPI::emitElementsAttrProperty(DilationRates, @"dilation_rates", v23, v24);
  if (v25)
  {
    [v17 addObject:v25];
  }

  ExplicitPadding = mlir::mps::DepthwiseConv2DDataGradientOp::getExplicitPadding(&v81);
  v27 = ExplicitPadding;
  if (ExplicitPadding)
  {
    ExplicitPadding = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
    v28 = ExplicitPadding;
  }

  else
  {
    v28 = 0;
  }

  v29 = EmitViewerSPI::emitElementsAttrProperty(ExplicitPadding, @"explicit_padding", v27, v28);
  if (v29)
  {
    [v17 addObject:v29];
  }

  PaddingStyle = mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v81);
  v31 = [MEMORY[0x277CBEB18] array];
  v32 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v31 addObject:v32];

  v33 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v31 addObject:v33];

  v34 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v31 addObject:v34];

  v35 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v31 addObject:v35];

  v36 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v31 addObject:v36];

  v37 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v31 value:PaddingStyle];
  if (v37)
  {
    [v17 addObject:v37];
  }

  DataLayout = mlir::mps::DepthwiseConv2DDataGradientOp::getDataLayout(&v81);
  v39 = [MEMORY[0x277CBEB18] array];
  v40 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v39 addObject:v40];

  v41 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v39 addObject:v41];

  v42 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v39 addObject:v42];

  v43 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v39 addObject:v43];

  v44 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v39 addObject:v44];

  v45 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v39 addObject:v45];

  v46 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v39 addObject:v46];

  v47 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v39 addObject:v47];

  v48 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v39 addObject:v48];

  v49 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v39 addObject:v49];

  v50 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v39 addObject:v50];

  v51 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v39 value:DataLayout];
  if (v51)
  {
    [v17 addObject:v51];
  }

  WeightsLayout = mlir::mps::DepthwiseConv2DDataGradientOp::getWeightsLayout(&v81);
  v53 = [MEMORY[0x277CBEB18] array];
  v54 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v53 addObject:v54];

  v55 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v53 addObject:v55];

  v56 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v53 addObject:v56];

  v57 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v53 addObject:v57];

  v58 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v53 addObject:v58];

  v59 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v53 addObject:v59];

  v60 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v53 addObject:v60];

  v61 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v53 addObject:v61];

  v62 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v53 addObject:v62];

  v63 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v53 addObject:v63];

  v64 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v53 addObject:v64];

  v65 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"weights_layout" type:@"MPSTensorDataLayout" cases:v53 value:WeightsLayout];
  if (v65)
  {
    [v17 addObject:v65];
  }

  v66 = [MEMORY[0x277CBEB18] array];
  v67 = [MLViewerNodeSPI alloc];
  v68 = [MEMORY[0x277CBEA60] arrayWithArray:v77];
  v69 = [MEMORY[0x277CBEA60] arrayWithArray:v78];
  v70 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v71 = [MEMORY[0x277CBEA60] arrayWithArray:v66];
  v72 = [(MLViewerNodeSPI *)v67 initWithType:v76 inputs:v68 outputs:v69 properties:v70 regions:v71];
  v73 = *(this + 3);
  *(this + 3) = v72;

  v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Depthwise Conv2D operation"];
  [*(this + 3) setLocalizedDescription:v74];

  if (v80 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563E43F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDepthwiseConv2DOpHandler *EmitterViewerSPI::MPSDepthwiseConv2DOpHandler::MPSDepthwiseConv2DOpHandler(EmitterViewerSPI::MPSDepthwiseConv2DOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868589F0;
  v5 = *(*(a3 + 6) + 8);
  v80 = a3;
  v81 = v5;
  Value = mlir::StringAttr::getValue(&v81);
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

  v79 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v79 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v75 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v76 = v10;
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v80 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"weights", *(*(v80 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v77 = [MEMORY[0x277CBEB18] array];
  if (*(v80 + 9))
  {
    v13 = v80 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v77 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  Strides = mlir::mps::DepthwiseConv2DOp::getStrides(&v80);
  v18 = Strides;
  if (Strides)
  {
    Strides = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    v19 = Strides;
  }

  else
  {
    v19 = 0;
  }

  v20 = EmitViewerSPI::emitElementsAttrProperty(Strides, @"strides", v18, v19);
  if (v20)
  {
    [v16 addObject:v20];
  }

  DilationRates = mlir::mps::DepthwiseConv2DOp::getDilationRates(&v80);
  v22 = DilationRates;
  if (DilationRates)
  {
    DilationRates = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DilationRates + 8);
    v23 = DilationRates;
  }

  else
  {
    v23 = 0;
  }

  v24 = EmitViewerSPI::emitElementsAttrProperty(DilationRates, @"dilation_rates", v22, v23);
  if (v24)
  {
    [v16 addObject:v24];
  }

  ExplicitPadding = mlir::mps::DepthwiseConv2DOp::getExplicitPadding(&v80);
  v26 = ExplicitPadding;
  if (ExplicitPadding)
  {
    ExplicitPadding = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
    v27 = ExplicitPadding;
  }

  else
  {
    v27 = 0;
  }

  v28 = EmitViewerSPI::emitElementsAttrProperty(ExplicitPadding, @"explicit_padding", v26, v27);
  if (v28)
  {
    [v16 addObject:v28];
  }

  PaddingStyle = mlir::mps::DepthwiseConv2DOp::getPaddingStyle(&v80);
  v30 = [MEMORY[0x277CBEB18] array];
  v31 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v30 addObject:v31];

  v32 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v30 addObject:v32];

  v33 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v30 addObject:v33];

  v34 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v30 addObject:v34];

  v35 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v30 addObject:v35];

  v36 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v30 value:PaddingStyle];
  if (v36)
  {
    [v16 addObject:v36];
  }

  DataLayout = mlir::mps::DepthwiseConv2DOp::getDataLayout(&v80);
  v38 = [MEMORY[0x277CBEB18] array];
  v39 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v38 addObject:v39];

  v40 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v38 addObject:v40];

  v41 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v38 addObject:v41];

  v42 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v38 addObject:v42];

  v43 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v38 addObject:v43];

  v44 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v38 addObject:v44];

  v45 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v38 addObject:v45];

  v46 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v38 addObject:v46];

  v47 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v38 addObject:v47];

  v48 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v38 addObject:v48];

  v49 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v38 addObject:v49];

  v50 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v38 value:DataLayout];
  if (v50)
  {
    [v16 addObject:v50];
  }

  WeightsLayout = mlir::mps::DepthwiseConv2DOp::getWeightsLayout(&v80);
  v52 = [MEMORY[0x277CBEB18] array];
  v53 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v52 addObject:v53];

  v54 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v52 addObject:v54];

  v55 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v52 addObject:v55];

  v56 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v52 addObject:v56];

  v57 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v52 addObject:v57];

  v58 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v52 addObject:v58];

  v59 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v52 addObject:v59];

  v60 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v52 addObject:v60];

  v61 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v52 addObject:v61];

  v62 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v52 addObject:v62];

  v63 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v52 addObject:v63];

  v64 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"weights_layout" type:@"MPSTensorDataLayout" cases:v52 value:WeightsLayout];
  if (v64)
  {
    [v16 addObject:v64];
  }

  v65 = [MEMORY[0x277CBEB18] array];
  v66 = [MLViewerNodeSPI alloc];
  v67 = [MEMORY[0x277CBEA60] arrayWithArray:v76];
  v68 = [MEMORY[0x277CBEA60] arrayWithArray:v77];
  v69 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v70 = [MEMORY[0x277CBEA60] arrayWithArray:v65];
  v71 = [(MLViewerNodeSPI *)v66 initWithType:v75 inputs:v67 outputs:v68 properties:v69 regions:v70];
  v72 = *(this + 3);
  *(this + 3) = v71;

  v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Depthwise Conv2D operation"];
  [*(this + 3) setLocalizedDescription:v73];

  if (v79 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563E5024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDepthwiseConv2DWeightsGradientOpHandler *EmitterViewerSPI::MPSDepthwiseConv2DWeightsGradientOpHandler::MPSDepthwiseConv2DWeightsGradientOpHandler(EmitterViewerSPI::MPSDepthwiseConv2DWeightsGradientOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858A08;
  v5 = *(*(a3 + 6) + 8);
  v81 = a3;
  v82 = v5;
  Value = mlir::StringAttr::getValue(&v82);
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

  v80 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v80 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v76 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v77 = v10;
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v81 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v81 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"outputShape", *(*(v81 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v78 = [MEMORY[0x277CBEB18] array];
  if (*(v81 + 9))
  {
    v14 = v81 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v78 addObject:v16];
  }

  v17 = [MEMORY[0x277CBEB18] array];
  Strides = mlir::mps::DepthwiseConv2DWeightsGradientOp::getStrides(&v81);
  v19 = Strides;
  if (Strides)
  {
    Strides = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    v20 = Strides;
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(Strides, @"strides", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  DilationRates = mlir::mps::DepthwiseConv2DWeightsGradientOp::getDilationRates(&v81);
  v23 = DilationRates;
  if (DilationRates)
  {
    DilationRates = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DilationRates + 8);
    v24 = DilationRates;
  }

  else
  {
    v24 = 0;
  }

  v25 = EmitViewerSPI::emitElementsAttrProperty(DilationRates, @"dilation_rates", v23, v24);
  if (v25)
  {
    [v17 addObject:v25];
  }

  ExplicitPadding = mlir::mps::DepthwiseConv2DWeightsGradientOp::getExplicitPadding(&v81);
  v27 = ExplicitPadding;
  if (ExplicitPadding)
  {
    ExplicitPadding = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
    v28 = ExplicitPadding;
  }

  else
  {
    v28 = 0;
  }

  v29 = EmitViewerSPI::emitElementsAttrProperty(ExplicitPadding, @"explicit_padding", v27, v28);
  if (v29)
  {
    [v17 addObject:v29];
  }

  PaddingStyle = mlir::mps::DepthwiseConv2DWeightsGradientOp::getPaddingStyle(&v81);
  v31 = [MEMORY[0x277CBEB18] array];
  v32 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v31 addObject:v32];

  v33 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v31 addObject:v33];

  v34 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v31 addObject:v34];

  v35 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v31 addObject:v35];

  v36 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v31 addObject:v36];

  v37 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v31 value:PaddingStyle];
  if (v37)
  {
    [v17 addObject:v37];
  }

  DataLayout = mlir::mps::DepthwiseConv2DWeightsGradientOp::getDataLayout(&v81);
  v39 = [MEMORY[0x277CBEB18] array];
  v40 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v39 addObject:v40];

  v41 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v39 addObject:v41];

  v42 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v39 addObject:v42];

  v43 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v39 addObject:v43];

  v44 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v39 addObject:v44];

  v45 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v39 addObject:v45];

  v46 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v39 addObject:v46];

  v47 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v39 addObject:v47];

  v48 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v39 addObject:v48];

  v49 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v39 addObject:v49];

  v50 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v39 addObject:v50];

  v51 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v39 value:DataLayout];
  if (v51)
  {
    [v17 addObject:v51];
  }

  WeightsLayout = mlir::mps::DepthwiseConv2DWeightsGradientOp::getWeightsLayout(&v81);
  v53 = [MEMORY[0x277CBEB18] array];
  v54 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v53 addObject:v54];

  v55 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v53 addObject:v55];

  v56 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v53 addObject:v56];

  v57 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v53 addObject:v57];

  v58 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v53 addObject:v58];

  v59 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v53 addObject:v59];

  v60 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v53 addObject:v60];

  v61 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v53 addObject:v61];

  v62 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v53 addObject:v62];

  v63 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v53 addObject:v63];

  v64 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v53 addObject:v64];

  v65 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"weights_layout" type:@"MPSTensorDataLayout" cases:v53 value:WeightsLayout];
  if (v65)
  {
    [v17 addObject:v65];
  }

  v66 = [MEMORY[0x277CBEB18] array];
  v67 = [MLViewerNodeSPI alloc];
  v68 = [MEMORY[0x277CBEA60] arrayWithArray:v77];
  v69 = [MEMORY[0x277CBEA60] arrayWithArray:v78];
  v70 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v71 = [MEMORY[0x277CBEA60] arrayWithArray:v66];
  v72 = [(MLViewerNodeSPI *)v67 initWithType:v76 inputs:v68 outputs:v69 properties:v70 regions:v71];
  v73 = *(this + 3);
  *(this + 3) = v72;

  v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"DepthwiseConv2DWeightsGradient operation"];
  [*(this + 3) setLocalizedDescription:v74];

  if (v80 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563E5C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDepthwiseConv3DDataGradientOpHandler *EmitterViewerSPI::MPSDepthwiseConv3DDataGradientOpHandler::MPSDepthwiseConv3DDataGradientOpHandler(EmitterViewerSPI::MPSDepthwiseConv3DDataGradientOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858A20;
  v5 = *(*(a3 + 6) + 8);
  v60 = a3;
  v61 = v5;
  Value = mlir::StringAttr::getValue(&v61);
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

  v59 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v59 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v55 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v56 = v10;
  ODSOperandIndexAndLength = mlir::mps::DepthwiseConv3DDataGradientOp::getODSOperandIndexAndLength(&v60, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v60 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::DepthwiseConv3DDataGradientOp::getODSOperandIndexAndLength(&v60, 1u);
  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"weights", *(*(v60 + 9) + 32 * v13 + 24));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = mlir::mps::DepthwiseConv3DDataGradientOp::getODSOperandIndexAndLength(&v60, 2u);
  if ((*(v60 + 46) & 0x80) != 0)
  {
    v16 = *(v60 + 9);
  }

  else
  {
    v16 = 0;
  }

  if (HIDWORD(v15) + v15 == v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v16 + 32 * v15 + 24);
  }

  v18 = EmitViewerSPI::emitNodeInputPort(a2, @"output_shape", v17);
  if (v18)
  {
    [v10 addObject:v18];
  }

  v57 = [MEMORY[0x277CBEB18] array];
  if (*(v60 + 9))
  {
    v19 = v60 - 16;
  }

  else
  {
    v19 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0);
  v21 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v21)
  {
    [v57 addObject:v21];
  }

  v22 = [MEMORY[0x277CBEB18] array];
  Strides = mlir::mps::DepthwiseConv3DDataGradientOp::getStrides(&v60);
  v24 = Strides;
  if (Strides)
  {
    Strides = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    v25 = Strides;
  }

  else
  {
    v25 = 0;
  }

  v26 = EmitViewerSPI::emitElementsAttrProperty(Strides, @"strides", v24, v25);
  if (v26)
  {
    [v22 addObject:v26];
  }

  DilationRates = mlir::mps::DepthwiseConv3DDataGradientOp::getDilationRates(&v60);
  v28 = DilationRates;
  if (DilationRates)
  {
    DilationRates = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DilationRates + 8);
    v29 = DilationRates;
  }

  else
  {
    v29 = 0;
  }

  v30 = EmitViewerSPI::emitElementsAttrProperty(DilationRates, @"dilation_rates", v28, v29);
  if (v30)
  {
    [v22 addObject:v30];
  }

  ExplicitPadding = mlir::mps::DepthwiseConv3DDataGradientOp::getExplicitPadding(&v60);
  v32 = ExplicitPadding;
  if (ExplicitPadding)
  {
    ExplicitPadding = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
    v33 = ExplicitPadding;
  }

  else
  {
    v33 = 0;
  }

  v34 = EmitViewerSPI::emitElementsAttrProperty(ExplicitPadding, @"explicit_padding", v32, v33);
  if (v34)
  {
    [v22 addObject:v34];
  }

  PaddingStyle = mlir::mps::DepthwiseConv3DDataGradientOp::getPaddingStyle(&v60);
  v36 = [MEMORY[0x277CBEB18] array];
  v37 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v36 addObject:v37];

  v38 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v36 addObject:v38];

  v39 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v36 addObject:v39];

  v40 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v36 addObject:v40];

  v41 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v36 addObject:v41];

  v42 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v36 value:PaddingStyle];
  if (v42)
  {
    [v22 addObject:v42];
  }

  LODWORD(v61) = mlir::mps::DepthwiseConv3DDataGradientOp::getChannelAxis(&v60);
  v43 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"channelAxis" dataType:536870944 shape:&unk_2868AFDE8];
  if (v43)
  {
    v44 = [MEMORY[0x277CBEA90] dataWithBytes:&v61 length:4];
    [(MLViewerNodePropertyDataSPI *)v43 setValue:v44];

    [v22 addObject:v43];
  }

  v45 = [MEMORY[0x277CBEB18] array];
  v46 = [MLViewerNodeSPI alloc];
  v47 = [MEMORY[0x277CBEA60] arrayWithArray:v56];
  v48 = [MEMORY[0x277CBEA60] arrayWithArray:v57];
  v49 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v50 = [MEMORY[0x277CBEA60] arrayWithArray:v45];
  v51 = [(MLViewerNodeSPI *)v46 initWithType:v55 inputs:v47 outputs:v48 properties:v49 regions:v50];
  v52 = *(this + 3);
  *(this + 3) = v51;
  v53 = ;
  [*(this + 3) setLocalizedDescription:v53];

  if (v59 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563E6530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDepthwiseConv3DOpHandler *EmitterViewerSPI::MPSDepthwiseConv3DOpHandler::MPSDepthwiseConv3DOpHandler(EmitterViewerSPI::MPSDepthwiseConv3DOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858A38;
  v5 = *(*(a3 + 6) + 8);
  v54 = a3;
  v55 = v5;
  Value = mlir::StringAttr::getValue(&v55);
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

  v53 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v53 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v49 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v50 = v10;
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v54 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"weights", *(*(v54 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v51 = [MEMORY[0x277CBEB18] array];
  if (*(v54 + 9))
  {
    v13 = v54 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v51 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  Strides = mlir::mps::DepthwiseConv3DOp::getStrides(&v54);
  v18 = Strides;
  if (Strides)
  {
    Strides = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    v19 = Strides;
  }

  else
  {
    v19 = 0;
  }

  v20 = EmitViewerSPI::emitElementsAttrProperty(Strides, @"strides", v18, v19);
  if (v20)
  {
    [v16 addObject:v20];
  }

  DilationRates = mlir::mps::DepthwiseConv3DOp::getDilationRates(&v54);
  v22 = DilationRates;
  if (DilationRates)
  {
    DilationRates = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DilationRates + 8);
    v23 = DilationRates;
  }

  else
  {
    v23 = 0;
  }

  v24 = EmitViewerSPI::emitElementsAttrProperty(DilationRates, @"dilation_rates", v22, v23);
  if (v24)
  {
    [v16 addObject:v24];
  }

  ExplicitPadding = mlir::mps::DepthwiseConv3DOp::getExplicitPadding(&v54);
  v26 = ExplicitPadding;
  if (ExplicitPadding)
  {
    ExplicitPadding = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
    v27 = ExplicitPadding;
  }

  else
  {
    v27 = 0;
  }

  v28 = EmitViewerSPI::emitElementsAttrProperty(ExplicitPadding, @"explicit_padding", v26, v27);
  if (v28)
  {
    [v16 addObject:v28];
  }

  PaddingStyle = mlir::mps::DepthwiseConv3DOp::getPaddingStyle(&v54);
  v30 = [MEMORY[0x277CBEB18] array];
  v31 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v30 addObject:v31];

  v32 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v30 addObject:v32];

  v33 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v30 addObject:v33];

  v34 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v30 addObject:v34];

  v35 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v30 addObject:v35];

  v36 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v30 value:PaddingStyle];
  if (v36)
  {
    [v16 addObject:v36];
  }

  LODWORD(v55) = mlir::mps::DepthwiseConv3DOp::getChannelAxis(&v54);
  v37 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"channelAxis" dataType:536870944 shape:&unk_2868AFE00];
  if (v37)
  {
    v38 = [MEMORY[0x277CBEA90] dataWithBytes:&v55 length:4];
    [(MLViewerNodePropertyDataSPI *)v37 setValue:v38];

    [v16 addObject:v37];
  }

  v39 = [MEMORY[0x277CBEB18] array];
  v40 = [MLViewerNodeSPI alloc];
  v41 = [MEMORY[0x277CBEA60] arrayWithArray:v50];
  v42 = [MEMORY[0x277CBEA60] arrayWithArray:v51];
  v43 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v44 = [MEMORY[0x277CBEA60] arrayWithArray:v39];
  v45 = [(MLViewerNodeSPI *)v40 initWithType:v49 inputs:v41 outputs:v42 properties:v43 regions:v44];
  v46 = *(this + 3);
  *(this + 3) = v45;
  v47 = ;
  [*(this + 3) setLocalizedDescription:v47];

  if (v53 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563E6CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDepthwiseConv3DWeightsGradientOpHandler *EmitterViewerSPI::MPSDepthwiseConv3DWeightsGradientOpHandler::MPSDepthwiseConv3DWeightsGradientOpHandler(EmitterViewerSPI::MPSDepthwiseConv3DWeightsGradientOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858A50;
  v5 = *(*(a3 + 6) + 8);
  v55 = a3;
  v56 = v5;
  Value = mlir::StringAttr::getValue(&v56);
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

  v54 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v54 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v50 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v51 = v10;
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v55 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v55 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"output_shape", *(*(v55 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v52 = [MEMORY[0x277CBEB18] array];
  if (*(v55 + 9))
  {
    v14 = v55 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v52 addObject:v16];
  }

  v17 = [MEMORY[0x277CBEB18] array];
  Strides = mlir::mps::DepthwiseConv3DWeightsGradientOp::getStrides(&v55);
  v19 = Strides;
  if (Strides)
  {
    Strides = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    v20 = Strides;
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(Strides, @"strides", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  DilationRates = mlir::mps::DepthwiseConv3DWeightsGradientOp::getDilationRates(&v55);
  v23 = DilationRates;
  if (DilationRates)
  {
    DilationRates = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DilationRates + 8);
    v24 = DilationRates;
  }

  else
  {
    v24 = 0;
  }

  v25 = EmitViewerSPI::emitElementsAttrProperty(DilationRates, @"dilation_rates", v23, v24);
  if (v25)
  {
    [v17 addObject:v25];
  }

  ExplicitPadding = mlir::mps::DepthwiseConv3DWeightsGradientOp::getExplicitPadding(&v55);
  v27 = ExplicitPadding;
  if (ExplicitPadding)
  {
    ExplicitPadding = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
    v28 = ExplicitPadding;
  }

  else
  {
    v28 = 0;
  }

  v29 = EmitViewerSPI::emitElementsAttrProperty(ExplicitPadding, @"explicit_padding", v27, v28);
  if (v29)
  {
    [v17 addObject:v29];
  }

  PaddingStyle = mlir::mps::DepthwiseConv3DWeightsGradientOp::getPaddingStyle(&v55);
  v31 = [MEMORY[0x277CBEB18] array];
  v32 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v31 addObject:v32];

  v33 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v31 addObject:v33];

  v34 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v31 addObject:v34];

  v35 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v31 addObject:v35];

  v36 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v31 addObject:v36];

  v37 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v31 value:PaddingStyle];
  if (v37)
  {
    [v17 addObject:v37];
  }

  LODWORD(v56) = mlir::mps::DepthwiseConv3DWeightsGradientOp::getChannelAxis(&v55);
  v38 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"channelAxis" dataType:536870944 shape:&unk_2868AFE18];
  if (v38)
  {
    v39 = [MEMORY[0x277CBEA90] dataWithBytes:&v56 length:4];
    [(MLViewerNodePropertyDataSPI *)v38 setValue:v39];

    [v17 addObject:v38];
  }

  v40 = [MEMORY[0x277CBEB18] array];
  v41 = [MLViewerNodeSPI alloc];
  v42 = [MEMORY[0x277CBEA60] arrayWithArray:v51];
  v43 = [MEMORY[0x277CBEA60] arrayWithArray:v52];
  v44 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v45 = [MEMORY[0x277CBEA60] arrayWithArray:v40];
  v46 = [(MLViewerNodeSPI *)v41 initWithType:v50 inputs:v42 outputs:v43 properties:v44 regions:v45];
  v47 = *(this + 3);
  *(this + 3) = v46;
  v48 = ;
  [*(this + 3) setLocalizedDescription:v48];

  if (v54 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563E7448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDequantizeLUTOpHandler *EmitterViewerSPI::MPSDequantizeLUTOpHandler::MPSDequantizeLUTOpHandler(EmitterViewerSPI::MPSDequantizeLUTOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858A68;
  v5 = *(*(a3 + 6) + 8);
  v35 = a3;
  v36 = v5;
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

  v34 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v34 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v32 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v35 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"palette_lut", *(*(v35 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(v35 + 9))
  {
    v14 = v35 - 16;
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
  Axis = mlir::mps::DequantizeLUTOp::getAxis(&v35);
  LODWORD(v36) = Axis;
  BYTE4(v36) = BYTE4(Axis);
  if ((Axis & 0x100000000) != 0)
  {
    v19 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"axis" dataType:536870944 shape:&unk_2868AFE30];
    if (v19)
    {
      if ((v36 & 0x100000000) == 0)
      {
        v31 = std::__throw_bad_optional_access[abi:nn200100]();

        if (v34 < 0)
        {
          operator delete(__dst);
        }

        _Unwind_Resume(v31);
      }

      v20 = [MEMORY[0x277CBEA90] dataWithBytes:&v36 length:8];
      [(MLViewerNodePropertyDataSPI *)v19 setValue:v20];

      [v17 addObject:v19];
    }
  }

  v21 = [MEMORY[0x277CBEB18] array];
  v22 = [MLViewerNodeSPI alloc];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v21];
  v27 = [(MLViewerNodeSPI *)v22 initWithType:v32 inputs:v23 outputs:v24 properties:v25 regions:v26];
  v28 = *(this + 3);
  *(this + 3) = v27;
  v29 = ;
  [*(this + 3) setLocalizedDescription:v29];

  if (v34 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

EmitterViewerSPI::MPSDequantizeOpHandler *EmitterViewerSPI::MPSDequantizeOpHandler::MPSDequantizeOpHandler(EmitterViewerSPI::MPSDequantizeOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858A80;
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

  v35 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v36 = v10;
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v39 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"scale", *(*(v39 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"zero_point", *(*(v39 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"min", *(*(v39 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = [MEMORY[0x277CBEB18] array];
  if (*(v39 + 9))
  {
    v16 = v39 - 16;
  }

  else
  {
    v16 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
  v18 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v18)
  {
    [v15 addObject:v18];
  }

  v19 = [MEMORY[0x277CBEB18] array];
  mlir::mps::DequantizeOp::getDtype(&v39);
  Axis = mlir::mps::DequantizeOp::getAxis(&v39);
  LODWORD(v40) = Axis;
  BYTE4(v40) = BYTE4(Axis);
  if ((Axis & 0x100000000) != 0)
  {
    v21 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"axis" dataType:536870944 shape:&unk_2868AFE48];
    if (v21)
    {
      if ((v40 & 0x100000000) == 0)
      {
        v34 = std::__throw_bad_optional_access[abi:nn200100]();

        if (v38 < 0)
        {
          operator delete(__dst);
        }

        _Unwind_Resume(v34);
      }

      v22 = [MEMORY[0x277CBEA90] dataWithBytes:&v40 length:8];
      [(MLViewerNodePropertyDataSPI *)v21 setValue:v22];

      [v19 addObject:v21];
    }
  }

  v23 = [MEMORY[0x277CBEB18] array];
  v24 = [MLViewerNodeSPI alloc];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v26 = v15;
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v19];
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v23];
  v30 = [(MLViewerNodeSPI *)v24 initWithType:v35 inputs:v25 outputs:v27 properties:v28 regions:v29];
  v31 = *(this + 3);
  *(this + 3) = v30;
  v32 = ;
  [*(this + 3) setLocalizedDescription:v32];

  if (v38 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

EmitterViewerSPI::MPSDimensionSizeOpHandler *EmitterViewerSPI::MPSDimensionSizeOpHandler::MPSDimensionSizeOpHandler(EmitterViewerSPI::MPSDimensionSizeOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858A98;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", *(*(a3 + 9) + 56));
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

void sub_2563E82FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDiracOpHandler *EmitterViewerSPI::MPSDiracOpHandler::MPSDiracOpHandler(EmitterViewerSPI::MPSDiracOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858AB0;
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

void sub_2563E86C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDivideOpHandler *EmitterViewerSPI::MPSDivideOpHandler::MPSDivideOpHandler(EmitterViewerSPI::MPSDivideOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858AC8;
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

void sub_2563E8ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDynamicShapeCastOpHandler *EmitterViewerSPI::MPSDynamicShapeCastOpHandler::MPSDynamicShapeCastOpHandler(EmitterViewerSPI::MPSDynamicShapeCastOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858AE0;
  v5 = *(*(a3 + 6) + 8);
  v37 = a3;
  v38 = v5;
  Value = mlir::StringAttr::getValue(&v38);
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

  v36 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v36 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v34 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v37, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v37 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v37, 1u);
  if ((*(v37 + 46) & 0x80) != 0)
  {
    v14 = *(v37 + 9);
  }

  else
  {
    v14 = 0;
  }

  if (HIDWORD(v13) + v13 == v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v14 + 32 * v13 + 24);
  }

  v16 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", v15);
  if (v16)
  {
    [v10 addObject:v16];
  }

  v17 = [MEMORY[0x277CBEB18] array];
  if (*(v37 + 9))
  {
    v18 = v37 - 16;
  }

  else
  {
    v18 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
  v20 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v20)
  {
    [v17 addObject:v20];
  }

  v21 = [MEMORY[0x277CBEB18] array];
  LOBYTE(v38) = mlir::mps::DynamicShapeCastOp::getUnranked(&v37);
  v22 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"unranked" dataType:2147483656 shape:&unk_2868AFE60];
  if (v22)
  {
    v23 = [MEMORY[0x277CBEA90] dataWithBytes:&v38 length:1];
    [(MLViewerNodePropertyDataSPI *)v22 setValue:v23];

    [v21 addObject:v22];
  }

  v24 = [MEMORY[0x277CBEB18] array];
  v25 = [MLViewerNodeSPI alloc];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v21];
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v24];
  v30 = [(MLViewerNodeSPI *)v25 initWithType:v34 inputs:v26 outputs:v27 properties:v28 regions:v29];
  v31 = *(this + 3);
  *(this + 3) = v30;
  v32 = ;
  [*(this + 3) setLocalizedDescription:v32];

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563E8FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSEluOpHandler *EmitterViewerSPI::MPSEluOpHandler::MPSEluOpHandler(EmitterViewerSPI::MPSEluOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858AF8;
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

void sub_2563E93E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSEqualToOpHandler *EmitterViewerSPI::MPSEqualToOpHandler::MPSEqualToOpHandler(EmitterViewerSPI::MPSEqualToOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858B10;
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

void sub_2563E97F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSErfOpHandler *EmitterViewerSPI::MPSErfOpHandler::MPSErfOpHandler(EmitterViewerSPI::MPSErfOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858B28;
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

void sub_2563E9BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSExpandDimsOpHandler *EmitterViewerSPI::MPSExpandDimsOpHandler::MPSExpandDimsOpHandler(EmitterViewerSPI::MPSExpandDimsOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858B40;
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

  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"Insert a single-dimension at each axis in axes of the result tensor. Valid axis values must be in range - |result| <= axis < |result| |result| = |input| + K, where K = axes.shape[0]."}];
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563E9FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSExponentBase2OpHandler *EmitterViewerSPI::MPSExponentBase2OpHandler::MPSExponentBase2OpHandler(EmitterViewerSPI::MPSExponentBase2OpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858B58;
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

void sub_2563EA3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSExponentBase10OpHandler *EmitterViewerSPI::MPSExponentBase10OpHandler::MPSExponentBase10OpHandler(EmitterViewerSPI::MPSExponentBase10OpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858B70;
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

void sub_2563EA788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSExponentOpHandler *EmitterViewerSPI::MPSExponentOpHandler::MPSExponentOpHandler(EmitterViewerSPI::MPSExponentOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858B88;
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

void sub_2563EAB5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSFastFourierTransformOpHandler *EmitterViewerSPI::MPSFastFourierTransformOpHandler::MPSFastFourierTransformOpHandler(EmitterViewerSPI::MPSFastFourierTransformOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858BA0;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", *(*(v39 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(v39 + 9))
  {
    v14 = v39 - 16;
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
  ScalingMode = mlir::mps::FastFourierTransformOp::getScalingMode(&v39);
  v19 = [MEMORY[0x277CBEB18] array];
  v20 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v19 addObject:v20];

  v21 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"size" value:1];
  [v19 addObject:v21];

  v22 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"unitary" value:2];
  [v19 addObject:v22];

  v23 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"scaling_mode" type:@"MPSFFTScalingMode" cases:v19 value:ScalingMode];
  if (v23)
  {
    [v17 addObject:v23];
  }

  LOBYTE(v40) = mlir::mps::FastFourierTransformOp::getInverse(&v39);
  v24 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"inverse" dataType:2147483656 shape:&unk_2868AFE78];
  if (v24)
  {
    v25 = [MEMORY[0x277CBEA90] dataWithBytes:&v40 length:1];
    [(MLViewerNodePropertyDataSPI *)v24 setValue:v25];

    [v17 addObject:v24];
  }

  v26 = [MEMORY[0x277CBEB18] array];
  v27 = [MLViewerNodeSPI alloc];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v30 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v31 = [MEMORY[0x277CBEA60] arrayWithArray:v26];
  v32 = [(MLViewerNodeSPI *)v27 initWithType:v36 inputs:v28 outputs:v29 properties:v30 regions:v31];
  v33 = *(this + 3);
  *(this + 3) = v32;
  v34 = ;
  [*(this + 3) setLocalizedDescription:v34];

  if (v38 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563EB0CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSFlatten2DOpHandler *EmitterViewerSPI::MPSFlatten2DOpHandler::MPSFlatten2DOpHandler(EmitterViewerSPI::MPSFlatten2DOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858BB8;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(a3 + 9) + 56));
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

void sub_2563EB51C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSFloorDivideOpHandler *EmitterViewerSPI::MPSFloorDivideOpHandler::MPSFloorDivideOpHandler(EmitterViewerSPI::MPSFloorDivideOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858BD0;
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

void sub_2563EB92C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSFloorOpHandler *EmitterViewerSPI::MPSFloorOpHandler::MPSFloorOpHandler(EmitterViewerSPI::MPSFloorOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858BE8;
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

void sub_2563EBD08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSGRUGradientOpHandler *EmitterViewerSPI::MPSGRUGradientOpHandler::MPSGRUGradientOpHandler(EmitterViewerSPI::MPSGRUGradientOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858C00;
  v5 = *(*(a3 + 6) + 8);
  v108 = a3;
  v109 = v5;
  Value = mlir::StringAttr::getValue(&v109);
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

  v107 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v107 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v104 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v108, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient_input_sequence", *(*(v108 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v108, 1u);
  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"recurrent_weight", *(*(v108 + 9) + 32 * v13 + 24));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v108, 2u);
  v16 = EmitViewerSPI::emitNodeInputPort(a2, @"training_state", *(*(v108 + 9) + 32 * v15 + 24));
  if (v16)
  {
    [v10 addObject:v16];
  }

  v17 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v108, 3u);
  v18 = EmitViewerSPI::emitNodeInputPort(a2, @"result_forward", *(*(v108 + 9) + 32 * v17 + 24));
  if (v18)
  {
    [v10 addObject:v18];
  }

  v19 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v108, 4u);
  if ((*(v108 + 46) & 0x80) != 0)
  {
    v20 = *(v108 + 9);
  }

  else
  {
    v20 = 0;
  }

  if (HIDWORD(v19) + v19 == v19)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(v20 + 32 * v19 + 24);
  }

  v22 = EmitViewerSPI::emitNodeInputPort(a2, @"input_state", v21);
  if (v22)
  {
    [v10 addObject:v22];
  }

  v23 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v108, 5u);
  if ((*(v108 + 46) & 0x80) != 0)
  {
    v24 = *(v108 + 9);
  }

  else
  {
    v24 = 0;
  }

  if (HIDWORD(v23) + v23 == v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v24 + 32 * v23 + 24);
  }

  v26 = EmitViewerSPI::emitNodeInputPort(a2, @"mask", v25);
  if (v26)
  {
    [v10 addObject:v26];
  }

  v27 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v108, 6u);
  if ((*(v108 + 46) & 0x80) != 0)
  {
    v28 = *(v108 + 9);
  }

  else
  {
    v28 = 0;
  }

  if (HIDWORD(v27) + v27 == v27)
  {
    v29 = 0;
  }

  else
  {
    v29 = *(v28 + 32 * v27 + 24);
  }

  v30 = EmitViewerSPI::emitNodeInputPort(a2, @"bias", v29);
  if (v30)
  {
    [v10 addObject:v30];
  }

  v31 = [MEMORY[0x277CBEB18] array];
  ODSResultIndexAndLength = mlir::mps::GRUGradientOp::getODSResultIndexAndLength(&v108, 0, v32, v33);
  if (*(v108 + 9))
  {
    NextResultAtOffset = v108 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v36 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
  v37 = EmitViewerSPI::emitNodeOutputPort(a2, @"gradient_output_sequence", v36);
  if (v37)
  {
    [v31 addObject:v37];
  }

  v40 = mlir::mps::GRUGradientOp::getODSResultIndexAndLength(&v108, 1u, v38, v39);
  if (*(v108 + 9))
  {
    v41 = v108 - 16;
  }

  else
  {
    v41 = 0;
  }

  if (v40)
  {
    v41 = mlir::detail::OpResultImpl::getNextResultAtOffset(v41, v40);
  }

  v42 = mlir::detail::OpResultImpl::getNextResultAtOffset(v41, 0);
  v43 = EmitViewerSPI::emitNodeOutputPort(a2, @"gradient_recurrent_weight", v42);
  if (v43)
  {
    [v31 addObject:v43];
  }

  v46 = mlir::mps::GRUGradientOp::getODSResultIndexAndLength(&v108, 2u, v44, v45);
  if (*(v108 + 9))
  {
    v47 = v108 - 16;
  }

  else
  {
    v47 = 0;
  }

  if (v46)
  {
    v47 = mlir::detail::OpResultImpl::getNextResultAtOffset(v47, v46);
  }

  v48 = mlir::detail::OpResultImpl::getNextResultAtOffset(v47, 0);
  v49 = EmitViewerSPI::emitNodeOutputPort(a2, @"gradient_input_state", v48);
  if (v49)
  {
    [v31 addObject:v49];
  }

  v52 = mlir::mps::GRUGradientOp::getODSResultIndexAndLength(&v108, 3u, v50, v51);
  if (*(v108 + 9))
  {
    v53 = v108 - 16;
  }

  else
  {
    v53 = 0;
  }

  if (v52)
  {
    v53 = mlir::detail::OpResultImpl::getNextResultAtOffset(v53, v52);
  }

  if (HIDWORD(v52) + v52 == v52)
  {
    v54 = 0;
  }

  else
  {
    v54 = mlir::detail::OpResultImpl::getNextResultAtOffset(v53, 0);
  }

  v55 = EmitViewerSPI::emitNodeOutputPort(a2, @"gradient_bias", v54);
  if (v55)
  {
    [v31 addObject:v55];
  }

  v56 = [MEMORY[0x277CBEB18] array];
  ZgateActivation = mlir::mps::GRUGradientOp::getZgateActivation(&v108);
  v58 = [MEMORY[0x277CBEB18] array];
  v59 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v58 addObject:v59];

  v60 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"relu" value:1];
  [v58 addObject:v60];

  v61 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"tanh" value:2];
  [v58 addObject:v61];

  v62 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sigmoid" value:3];
  [v58 addObject:v62];

  v63 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"hard_sigmoid" value:4];
  [v58 addObject:v63];

  v64 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"scaled_tanh" value:5];
  [v58 addObject:v64];

  v65 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"zgate_activation" type:@"MPSRNNActivation" cases:v58 value:ZgateActivation];
  if (v65)
  {
    [v56 addObject:v65];
  }

  RgateActivation = mlir::mps::GRUGradientOp::getRgateActivation(&v108);
  v67 = [MEMORY[0x277CBEB18] array];
  v68 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v67 addObject:v68];

  v69 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"relu" value:1];
  [v67 addObject:v69];

  v70 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"tanh" value:2];
  [v67 addObject:v70];

  v71 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sigmoid" value:3];
  [v67 addObject:v71];

  v72 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"hard_sigmoid" value:4];
  [v67 addObject:v72];

  v73 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"scaled_tanh" value:5];
  [v67 addObject:v73];

  v74 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"rgate_activation" type:@"MPSRNNActivation" cases:v67 value:RgateActivation];
  if (v74)
  {
    [v56 addObject:v74];
  }

  OgateActivation = mlir::mps::GRUGradientOp::getOgateActivation(&v108);
  v76 = [MEMORY[0x277CBEB18] array];
  v77 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v76 addObject:v77];

  v78 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"relu" value:1];
  [v76 addObject:v78];

  v79 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"tanh" value:2];
  [v76 addObject:v79];

  v80 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sigmoid" value:3];
  [v76 addObject:v80];

  v81 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"hard_sigmoid" value:4];
  [v76 addObject:v81];

  v82 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"scaled_tanh" value:5];
  [v76 addObject:v82];

  v83 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"ogate_activation" type:@"MPSRNNActivation" cases:v76 value:OgateActivation];
  if (v83)
  {
    [v56 addObject:v83];
  }

  GateLayout = mlir::mps::GRUGradientOp::getGateLayout(&v108);
  v85 = [MEMORY[0x277CBEB18] array];
  v86 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ZRO" value:0];
  [v85 addObject:v86];

  v87 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"RZO" value:1];
  [v85 addObject:v87];

  v88 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ROZ" value:2];
  [v85 addObject:v88];

  v89 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"gate_layout" type:@"MPSGRUGateLayout" cases:v85 value:GateLayout];
  if (v89)
  {
    [v56 addObject:v89];
  }

  LOBYTE(v109) = mlir::mps::GRUGradientOp::getResetAfter(&v108);
  v90 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"reset_after" dataType:2147483656 shape:&unk_2868AFE90];
  if (v90)
  {
    v91 = [MEMORY[0x277CBEA90] dataWithBytes:&v109 length:1];
    [(MLViewerNodePropertyDataSPI *)v90 setValue:v91];

    [v56 addObject:v90];
  }

  FlipZ = mlir::mps::GRUGradientOp::getFlipZ(&v108);
  v92 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"flip_z" dataType:2147483656 shape:&unk_2868AFEA8];
  if (v92)
  {
    v93 = [MEMORY[0x277CBEA90] dataWithBytes:&FlipZ length:1];
    [(MLViewerNodePropertyDataSPI *)v92 setValue:v93];

    [v56 addObject:v92];
  }

  v94 = [MEMORY[0x277CBEB18] array];
  v95 = [MLViewerNodeSPI alloc];
  v96 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v97 = [MEMORY[0x277CBEA60] arrayWithArray:v31];
  v98 = [MEMORY[0x277CBEA60] arrayWithArray:v56];
  v99 = [MEMORY[0x277CBEA60] arrayWithArray:v94];
  v100 = [(MLViewerNodeSPI *)v95 initWithType:v104 inputs:v96 outputs:v97 properties:v98 regions:v99];
  v101 = *(this + 3);
  *(this + 3) = v100;
  v102 = ;
  [*(this + 3) setLocalizedDescription:v102];

  if (v107 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563ECA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSGRUOpHandler *EmitterViewerSPI::MPSGRUOpHandler::MPSGRUOpHandler(EmitterViewerSPI::MPSGRUOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858C18;
  v5 = *(*(a3 + 6) + 8);
  v95 = a3;
  v96 = v5;
  Value = mlir::StringAttr::getValue(&v96);
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

  v94 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v94 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v90 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mps::GRUOp::getODSOperandIndexAndLength(&v95, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input_sequence", *(*(v95 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::GRUOp::getODSOperandIndexAndLength(&v95, 1u);
  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"recurrent_weight", *(*(v95 + 9) + 32 * v13 + 24));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = mlir::mps::GRUOp::getODSOperandIndexAndLength(&v95, 2u);
  if ((*(v95 + 46) & 0x80) != 0)
  {
    v16 = *(v95 + 9);
  }

  else
  {
    v16 = 0;
  }

  if (HIDWORD(v15) + v15 == v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v16 + 32 * v15 + 24);
  }

  v18 = EmitViewerSPI::emitNodeInputPort(a2, @"input_state", v17);
  if (v18)
  {
    [v10 addObject:v18];
  }

  v19 = mlir::mps::GRUOp::getODSOperandIndexAndLength(&v95, 3u);
  if ((*(v95 + 46) & 0x80) != 0)
  {
    v20 = *(v95 + 9);
  }

  else
  {
    v20 = 0;
  }

  if (HIDWORD(v19) + v19 == v19)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(v20 + 32 * v19 + 24);
  }

  v22 = EmitViewerSPI::emitNodeInputPort(a2, @"mask", v21);
  if (v22)
  {
    [v10 addObject:v22];
  }

  v23 = mlir::mps::GRUOp::getODSOperandIndexAndLength(&v95, 4u);
  if ((*(v95 + 46) & 0x80) != 0)
  {
    v24 = *(v95 + 9);
  }

  else
  {
    v24 = 0;
  }

  if (HIDWORD(v23) + v23 == v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v24 + 32 * v23 + 24);
  }

  v26 = EmitViewerSPI::emitNodeInputPort(a2, @"bias", v25);
  if (v26)
  {
    [v10 addObject:v26];
  }

  v27 = [MEMORY[0x277CBEB18] array];
  ODSResultIndexAndLength = mlir::mps::GRUOp::getODSResultIndexAndLength(&v95, 0, v28, v29);
  if (*(v95 + 9))
  {
    NextResultAtOffset = v95 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v32 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
  v33 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", v32);
  if (v33)
  {
    [v27 addObject:v33];
  }

  v36 = mlir::mps::GRUOp::getODSResultIndexAndLength(&v95, 1u, v34, v35);
  if (*(v95 + 9))
  {
    v37 = v95 - 16;
  }

  else
  {
    v37 = 0;
  }

  if (v36)
  {
    v37 = mlir::detail::OpResultImpl::getNextResultAtOffset(v37, v36);
  }

  if (HIDWORD(v36) + v36 == v36)
  {
    v38 = 0;
  }

  else
  {
    v38 = mlir::detail::OpResultImpl::getNextResultAtOffset(v37, 0);
  }

  v39 = EmitViewerSPI::emitNodeOutputPort(a2, @"training_state", v38);
  if (v39)
  {
    [v27 addObject:v39];
  }

  v40 = [MEMORY[0x277CBEB18] array];
  ZgateActivation = mlir::mps::GRUOp::getZgateActivation(&v95);
  v42 = [MEMORY[0x277CBEB18] array];
  v43 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v42 addObject:v43];

  v44 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"relu" value:1];
  [v42 addObject:v44];

  v45 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"tanh" value:2];
  [v42 addObject:v45];

  v46 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sigmoid" value:3];
  [v42 addObject:v46];

  v47 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"hard_sigmoid" value:4];
  [v42 addObject:v47];

  v48 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"scaled_tanh" value:5];
  [v42 addObject:v48];

  v49 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"zgate_activation" type:@"MPSRNNActivation" cases:v42 value:ZgateActivation];
  if (v49)
  {
    [v40 addObject:v49];
  }

  RgateActivation = mlir::mps::GRUOp::getRgateActivation(&v95);
  v51 = [MEMORY[0x277CBEB18] array];
  v52 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v51 addObject:v52];

  v53 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"relu" value:1];
  [v51 addObject:v53];

  v54 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"tanh" value:2];
  [v51 addObject:v54];

  v55 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sigmoid" value:3];
  [v51 addObject:v55];

  v56 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"hard_sigmoid" value:4];
  [v51 addObject:v56];

  v57 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"scaled_tanh" value:5];
  [v51 addObject:v57];

  v58 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"rgate_activation" type:@"MPSRNNActivation" cases:v51 value:RgateActivation];
  if (v58)
  {
    [v40 addObject:v58];
  }

  OgateActivation = mlir::mps::GRUOp::getOgateActivation(&v95);
  v60 = [MEMORY[0x277CBEB18] array];
  v61 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v60 addObject:v61];

  v62 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"relu" value:1];
  [v60 addObject:v62];

  v63 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"tanh" value:2];
  [v60 addObject:v63];

  v64 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sigmoid" value:3];
  [v60 addObject:v64];

  v65 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"hard_sigmoid" value:4];
  [v60 addObject:v65];

  v66 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"scaled_tanh" value:5];
  [v60 addObject:v66];

  v67 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"ogate_activation" type:@"MPSRNNActivation" cases:v60 value:OgateActivation];
  if (v67)
  {
    [v40 addObject:v67];
  }

  GateLayout = mlir::mps::GRUOp::getGateLayout(&v95);
  v69 = [MEMORY[0x277CBEB18] array];
  v70 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ZRO" value:0];
  [v69 addObject:v70];

  v71 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"RZO" value:1];
  [v69 addObject:v71];

  v72 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ROZ" value:2];
  [v69 addObject:v72];

  v73 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"gate_layout" type:@"MPSGRUGateLayout" cases:v69 value:GateLayout];
  if (v73)
  {
    [v40 addObject:v73];
  }

  LOBYTE(v96) = mlir::mps::GRUOp::getTraining(&v95);
  v74 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"training" dataType:2147483656 shape:&unk_2868AFEC0];
  if (v74)
  {
    v75 = [MEMORY[0x277CBEA90] dataWithBytes:&v96 length:1];
    [(MLViewerNodePropertyDataSPI *)v74 setValue:v75];

    [v40 addObject:v74];
  }

  ResetAfter = mlir::mps::GRUOp::getResetAfter(&v95);
  v76 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"reset_after" dataType:2147483656 shape:&unk_2868AFED8];
  if (v76)
  {
    v77 = [MEMORY[0x277CBEA90] dataWithBytes:&ResetAfter length:1];
    [(MLViewerNodePropertyDataSPI *)v76 setValue:v77];

    [v40 addObject:v76];
  }

  FlipZ = mlir::mps::GRUOp::getFlipZ(&v95);
  v78 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"flip_z" dataType:2147483656 shape:&unk_2868AFEF0];
  if (v78)
  {
    v79 = [MEMORY[0x277CBEA90] dataWithBytes:&FlipZ length:1];
    [(MLViewerNodePropertyDataSPI *)v78 setValue:v79];

    [v40 addObject:v78];
  }

  v80 = [MEMORY[0x277CBEB18] array];
  v81 = [MLViewerNodeSPI alloc];
  v82 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v83 = [MEMORY[0x277CBEA60] arrayWithArray:v27];
  v84 = [MEMORY[0x277CBEA60] arrayWithArray:v40];
  v85 = [MEMORY[0x277CBEA60] arrayWithArray:v80];
  v86 = [(MLViewerNodeSPI *)v81 initWithType:v90 inputs:v82 outputs:v83 properties:v84 regions:v85];
  v87 = *(this + 3);
  *(this + 3) = v86;
  v88 = ;
  [*(this + 3) setLocalizedDescription:v88];

  if (v94 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563ED8EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSGatherAlongAxisOpHandler *EmitterViewerSPI::MPSGatherAlongAxisOpHandler::MPSGatherAlongAxisOpHandler(EmitterViewerSPI::MPSGatherAlongAxisOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858C30;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"updates", *(*(v34 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"indices", *(*(v34 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v34 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = [MEMORY[0x277CBEB18] array];
  if (*(v34 + 9))
  {
    v15 = v34 - 16;
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
  LOBYTE(v35) = mlir::mps::GatherAlongAxisOp::getAllowNegativeIndices(&v34);
  v19 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"allow_negative_indices" dataType:2147483656 shape:&unk_2868AFF08];
  if (v19)
  {
    v20 = [MEMORY[0x277CBEA90] dataWithBytes:&v35 length:1];
    [(MLViewerNodePropertyDataSPI *)v19 setValue:v20];

    [v18 addObject:v19];
  }

  v21 = [MEMORY[0x277CBEB18] array];
  v22 = [MLViewerNodeSPI alloc];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
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

void sub_2563EDF20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSGatherNDOpHandler *EmitterViewerSPI::MPSGatherNDOpHandler::MPSGatherNDOpHandler(EmitterViewerSPI::MPSGatherNDOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858C48;
  v5 = *(*(a3 + 6) + 8);
  v37 = a3;
  v38 = v5;
  Value = mlir::StringAttr::getValue(&v38);
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

  v36 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v36 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x277CBEB18] array];
  v33 = v11;
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"updates", *(*(v37 + 9) + 24));
  if (v12)
  {
    [v11 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"indices", *(*(v37 + 9) + 56));
  if (v13)
  {
    [v11 addObject:v13];
  }

  v14 = [MEMORY[0x277CBEB18] array];
  if (*(v37 + 9))
  {
    v15 = v37 - 16;
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
  LODWORD(v38) = mlir::mps::GatherNDOp::getBatchDims(&v37);
  v19 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"batch_dims" dataType:32 shape:&unk_2868AFF20];
  if (v19)
  {
    v20 = [MEMORY[0x277CBEA90] dataWithBytes:&v38 length:4];
    [(MLViewerNodePropertyDataSPI *)v19 setValue:v20];

    [v18 addObject:v19];
  }

  AllowNegativeIndices = mlir::mps::GatherNDOp::getAllowNegativeIndices(&v37);
  v21 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"allow_negative_indices" dataType:2147483656 shape:&unk_2868AFF38];
  if (v21)
  {
    v22 = [MEMORY[0x277CBEA90] dataWithBytes:&AllowNegativeIndices length:1];
    [(MLViewerNodePropertyDataSPI *)v21 setValue:v22];

    [v18 addObject:v21];
  }

  v23 = [MEMORY[0x277CBEB18] array];
  v24 = [MLViewerNodeSPI alloc];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v26 = v10;
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v23];
  v30 = [(MLViewerNodeSPI *)v24 initWithType:v26 inputs:v25 outputs:v27 properties:v28 regions:v29];
  v31 = *(this + 3);
  *(this + 3) = v30;

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}