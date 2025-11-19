void sub_2563EE428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSGatherOpHandler *EmitterViewerSPI::MPSGatherOpHandler::MPSGatherOpHandler(EmitterViewerSPI::MPSGatherOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858C60;
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

  v32 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"updates", *(*(v37 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"indices", *(*(v37 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v37 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v33 = [MEMORY[0x277CBEB18] array];
  if (*(v37 + 9))
  {
    v14 = v37 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v33 addObject:v16];
  }

  v17 = [MEMORY[0x277CBEB18] array];
  LODWORD(v38) = mlir::mps::GatherOp::getBatchDims(&v37);
  v18 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"batch_dims" dataType:32 shape:&unk_2868AFF50];
  if (v18)
  {
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:&v38 length:4];
    [(MLViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v17 addObject:v18];
  }

  AllowNegativeIndices = mlir::mps::GatherOp::getAllowNegativeIndices(&v37);
  v20 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"allow_negative_indices" dataType:2147483656 shape:&unk_2868AFF68];
  if (v20)
  {
    v21 = [MEMORY[0x277CBEA90] dataWithBytes:&AllowNegativeIndices length:1];
    [(MLViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v17 addObject:v20];
  }

  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MLViewerNodeSPI alloc];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v33];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v28 = [(MLViewerNodeSPI *)v23 initWithType:v32 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;
  v30 = ;
  [*(this + 3) setLocalizedDescription:v30];

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563EE984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSGeluOpHandler *EmitterViewerSPI::MPSGeluOpHandler::MPSGeluOpHandler(EmitterViewerSPI::MPSGeluOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858C78;
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

void sub_2563EEDB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSGetCoordOpHandler *EmitterViewerSPI::MPSGetCoordOpHandler::MPSGetCoordOpHandler(EmitterViewerSPI::MPSGetCoordOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858C90;
  v5 = *(*(a3 + 6) + 8);
  v31 = a3;
  v32 = v5;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"shape", *(*(v31 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v31 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(v31 + 9))
  {
    v14 = v31 - 16;
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
  mlir::mps::GetCoordOp::getResultType(&v31);
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [MLViewerNodeSPI alloc];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
  v24 = [(MLViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"The generated values start from zero on a given axis and increase with stride of one along that axis."];
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563EF1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSGreaterThanOpHandler *EmitterViewerSPI::MPSGreaterThanOpHandler::MPSGreaterThanOpHandler(EmitterViewerSPI::MPSGreaterThanOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858CA8;
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

void sub_2563EF5E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSGreaterThanOrEqualToOpHandler *EmitterViewerSPI::MPSGreaterThanOrEqualToOpHandler::MPSGreaterThanOrEqualToOpHandler(EmitterViewerSPI::MPSGreaterThanOrEqualToOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858CC0;
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

void sub_2563EF9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSHammingDistanceOpHandler *EmitterViewerSPI::MPSHammingDistanceOpHandler::MPSHammingDistanceOpHandler(EmitterViewerSPI::MPSHammingDistanceOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858CD8;
  v5 = *(*(a3 + 6) + 8);
  v31 = a3;
  v32 = v5;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(v31 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(v31 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(v31 + 9))
  {
    v14 = v31 - 16;
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
  mlir::mps::HammingDistanceOp::getResultElementType(&v31);
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

void sub_2563EFE10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSHermiteanToRealFFTOpHandler *EmitterViewerSPI::MPSHermiteanToRealFFTOpHandler::MPSHermiteanToRealFFTOpHandler(EmitterViewerSPI::MPSHermiteanToRealFFTOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858CF0;
  v5 = *(*(a3 + 6) + 8);
  v42 = a3;
  v43 = v5;
  Value = mlir::StringAttr::getValue(&v43);
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

  v41 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v41 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v37 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v42 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", *(*(v42 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v38 = [MEMORY[0x277CBEB18] array];
  if (*(v42 + 9))
  {
    v13 = v42 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"output", NextResultAtOffset);
  if (v15)
  {
    [v38 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  ScalingMode = mlir::mps::HermiteanToRealFFTOp::getScalingMode(&v42);
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v18 addObject:v19];

  v20 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"size" value:1];
  [v18 addObject:v20];

  v21 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"unitary" value:2];
  [v18 addObject:v21];

  v22 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"scaling_mode" type:@"MPSFFTScalingMode" cases:v18 value:ScalingMode];
  if (v22)
  {
    [v16 addObject:v22];
  }

  LOBYTE(v43) = mlir::mps::HermiteanToRealFFTOp::getInverse(&v42);
  v23 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"inverse" dataType:2147483656 shape:&unk_2868AFF80];
  if (v23)
  {
    v24 = [MEMORY[0x277CBEA90] dataWithBytes:&v43 length:1];
    [(MLViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v16 addObject:v23];
  }

  RoundToOdd = mlir::mps::HermiteanToRealFFTOp::getRoundToOdd(&v42);
  v25 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"round_to_odd" dataType:2147483656 shape:&unk_2868AFF98];
  if (v25)
  {
    v26 = [MEMORY[0x277CBEA90] dataWithBytes:&RoundToOdd length:1];
    [(MLViewerNodePropertyDataSPI *)v25 setValue:v26];

    [v16 addObject:v25];
  }

  v27 = [MEMORY[0x277CBEB18] array];
  v28 = [MLViewerNodeSPI alloc];
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v30 = [MEMORY[0x277CBEA60] arrayWithArray:v38];
  v31 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v32 = [MEMORY[0x277CBEA60] arrayWithArray:v27];
  v33 = [(MLViewerNodeSPI *)v28 initWithType:v37 inputs:v29 outputs:v30 properties:v31 regions:v32];
  v34 = *(this + 3);
  *(this + 3) = v33;
  v35 = ;
  [*(this + 3) setLocalizedDescription:v35];

  if (v41 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563F03FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSIdentityOpHandler *EmitterViewerSPI::MPSIdentityOpHandler::MPSIdentityOpHandler(EmitterViewerSPI::MPSIdentityOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858D08;
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

  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Returns a tensor with the same shape and contents as input."];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563F0840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSImToColOpHandler *EmitterViewerSPI::MPSImToColOpHandler::MPSImToColOpHandler(EmitterViewerSPI::MPSImToColOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858D20;
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
  v57 = [MEMORY[0x277CBEB18] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v60 + 9) + 24));
  if (v10)
  {
    [v57 addObject:v10];
  }

  v56 = [MEMORY[0x277CBEB18] array];
  if (*(v60 + 9))
  {
    v11 = v60 - 16;
  }

  else
  {
    v11 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
  v13 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v13)
  {
    [v56 addObject:v13];
  }

  v14 = [MEMORY[0x277CBEB18] array];
  KernelSizes = mlir::mps::ImToColOp::getKernelSizes(&v60);
  v16 = KernelSizes;
  if (KernelSizes)
  {
    KernelSizes = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelSizes + 8);
    v17 = KernelSizes;
  }

  else
  {
    v17 = 0;
  }

  v18 = EmitViewerSPI::emitElementsAttrProperty(KernelSizes, @"kernel_sizes", v16, v17);
  if (v18)
  {
    [v14 addObject:v18];
  }

  Strides = mlir::mps::ImToColOp::getStrides(&v60);
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
  if (v22)
  {
    [v14 addObject:v22];
  }

  DilationRates = mlir::mps::ImToColOp::getDilationRates(&v60);
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
    [v14 addObject:v26];
  }

  ExplicitPadding = mlir::mps::ImToColOp::getExplicitPadding(&v60);
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
    [v14 addObject:v30];
  }

  DataLayout = mlir::mps::ImToColOp::getDataLayout(&v60);
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
    [v14 addObject:v44];
  }

  v45 = [MEMORY[0x277CBEB18] array];
  v46 = [MLViewerNodeSPI alloc];
  v47 = [MEMORY[0x277CBEA60] arrayWithArray:v57];
  v48 = [MEMORY[0x277CBEA60] arrayWithArray:v56];
  v49 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
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

void sub_2563F0FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSImaginaryPartOpHandler *EmitterViewerSPI::MPSImaginaryPartOpHandler::MPSImaginaryPartOpHandler(EmitterViewerSPI::MPSImaginaryPartOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858D38;
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

  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Extracts the imaginary part of the input tensor."];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563F1430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSInitRandomPhiloxStateOpHandler *EmitterViewerSPI::MPSInitRandomPhiloxStateOpHandler::MPSInitRandomPhiloxStateOpHandler(EmitterViewerSPI::MPSInitRandomPhiloxStateOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858D50;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"counter_low", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"counter_high", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"key", *(*(a3 + 9) + 88));
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

void sub_2563F186C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSInstanceNormOpHandler *EmitterViewerSPI::MPSInstanceNormOpHandler::MPSInstanceNormOpHandler(EmitterViewerSPI::MPSInstanceNormOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  v37[3] = *MEMORY[0x277D85DE8];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858D68;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", *(*(v35 + 9) + 56));
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
  mlir::mps::InstanceNormOp::getEpsilon(&v35, &v36);
  v18 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"epsilon" dataType:268435488 shape:&unk_2868AFFB0];
  if (v18)
  {
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:&v36 length:32];
    [(MLViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v17 addObject:v18];
  }

  v20 = v37[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v21) == v20)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v37);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v37);
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

  if (v34 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563F1D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  llvm::APFloat::~APFloat(&a17);

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSIsFiniteOpHandler *EmitterViewerSPI::MPSIsFiniteOpHandler::MPSIsFiniteOpHandler(EmitterViewerSPI::MPSIsFiniteOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858D80;
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

void sub_2563F2178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSIsInfiniteOpHandler *EmitterViewerSPI::MPSIsInfiniteOpHandler::MPSIsInfiniteOpHandler(EmitterViewerSPI::MPSIsInfiniteOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858D98;
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

void sub_2563F254C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSIsNaNOpHandler *EmitterViewerSPI::MPSIsNaNOpHandler::MPSIsNaNOpHandler(EmitterViewerSPI::MPSIsNaNOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858DB0;
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

void sub_2563F2920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSLPNormOpHandler *EmitterViewerSPI::MPSLPNormOpHandler::MPSLPNormOpHandler(EmitterViewerSPI::MPSLPNormOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858DC8;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"p", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", *(*(a3 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"epsilon", *(*(a3 + 9) + 120));
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

  v28 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "Computes x = x / ||x||_{p} elementwise, where:\n* ||x||_{p} =\n(pow(pow(abs(x0), p) + pow(abs(x1), p) + ... + pow(abs(xn), p), 1/p)\n\n* p > 0.");;
  [*(this + 3) setLocalizedDescription:v28];

  if (v32 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563F2D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSLSTMGradientOpHandler *EmitterViewerSPI::MPSLSTMGradientOpHandler::MPSLSTMGradientOpHandler(EmitterViewerSPI::MPSLSTMGradientOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858DE0;
  v5 = *(*(a3 + 6) + 8);
  v140 = a3;
  v141 = v5;
  Value = mlir::StringAttr::getValue(&v141);
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

  v139 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v139 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v137 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mps::LSTMGradientOp::getODSOperandIndexAndLength(&v140, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient_input_sequence", *(*(v140 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::LSTMGradientOp::getODSOperandIndexAndLength(&v140, 1u);
  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"recurrent_weight", *(*(v140 + 9) + 32 * v13 + 24));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = mlir::mps::LSTMGradientOp::getODSOperandIndexAndLength(&v140, 2u);
  v16 = EmitViewerSPI::emitNodeInputPort(a2, @"training_state", *(*(v140 + 9) + 32 * v15 + 24));
  if (v16)
  {
    [v10 addObject:v16];
  }

  v17 = mlir::mps::LSTMGradientOp::getODSOperandIndexAndLength(&v140, 3u);
  v18 = EmitViewerSPI::emitNodeInputPort(a2, @"output_cell_fwd", *(*(v140 + 9) + 32 * v17 + 24));
  if (v18)
  {
    [v10 addObject:v18];
  }

  v19 = mlir::mps::LSTMGradientOp::getODSOperandIndexAndLength(&v140, 4u);
  if ((*(v140 + 46) & 0x80) != 0)
  {
    v20 = *(v140 + 9);
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

  v23 = mlir::mps::LSTMGradientOp::getODSOperandIndexAndLength(&v140, 5u);
  if ((*(v140 + 46) & 0x80) != 0)
  {
    v24 = *(v140 + 9);
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

  v26 = EmitViewerSPI::emitNodeInputPort(a2, @"input_cell", v25);
  if (v26)
  {
    [v10 addObject:v26];
  }

  v27 = mlir::mps::LSTMGradientOp::getODSOperandIndexAndLength(&v140, 6u);
  if ((*(v140 + 46) & 0x80) != 0)
  {
    v28 = *(v140 + 9);
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

  v30 = EmitViewerSPI::emitNodeInputPort(a2, @"mask", v29);
  if (v30)
  {
    [v10 addObject:v30];
  }

  v31 = mlir::mps::LSTMGradientOp::getODSOperandIndexAndLength(&v140, 7u);
  if ((*(v140 + 46) & 0x80) != 0)
  {
    v32 = *(v140 + 9);
  }

  else
  {
    v32 = 0;
  }

  if (HIDWORD(v31) + v31 == v31)
  {
    v33 = 0;
  }

  else
  {
    v33 = *(v32 + 32 * v31 + 24);
  }

  v34 = EmitViewerSPI::emitNodeInputPort(a2, @"peephole", v33);
  if (v34)
  {
    [v10 addObject:v34];
  }

  v35 = mlir::mps::LSTMGradientOp::getODSOperandIndexAndLength(&v140, 8u);
  if ((*(v140 + 46) & 0x80) != 0)
  {
    v36 = *(v140 + 9);
  }

  else
  {
    v36 = 0;
  }

  if (HIDWORD(v35) + v35 == v35)
  {
    v37 = 0;
  }

  else
  {
    v37 = *(v36 + 32 * v35 + 24);
  }

  v38 = EmitViewerSPI::emitNodeInputPort(a2, @"cell_clip", v37);
  if (v38)
  {
    [v10 addObject:v38];
  }

  v39 = mlir::mps::LSTMGradientOp::getODSOperandIndexAndLength(&v140, 9u);
  if ((*(v140 + 46) & 0x80) != 0)
  {
    v40 = *(v140 + 9);
  }

  else
  {
    v40 = 0;
  }

  if (HIDWORD(v39) + v39 == v39)
  {
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + 32 * v39 + 24);
  }

  v42 = EmitViewerSPI::emitNodeInputPort(a2, @"cell_gradient", v41);
  if (v42)
  {
    [v10 addObject:v42];
  }

  v43 = [MEMORY[0x277CBEB18] array];
  ODSResultIndexAndLength = mlir::mps::LSTMGradientOp::getODSResultIndexAndLength(&v140, 0, v44, v45);
  if (*(v140 + 9))
  {
    NextResultAtOffset = v140 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v48 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
  v49 = EmitViewerSPI::emitNodeOutputPort(a2, @"gradient_output_sequence", v48);
  if (v49)
  {
    [v43 addObject:v49];
  }

  v52 = mlir::mps::LSTMGradientOp::getODSResultIndexAndLength(&v140, 1u, v50, v51);
  if (*(v140 + 9))
  {
    v53 = v140 - 16;
  }

  else
  {
    v53 = 0;
  }

  if (v52)
  {
    v53 = mlir::detail::OpResultImpl::getNextResultAtOffset(v53, v52);
  }

  v54 = mlir::detail::OpResultImpl::getNextResultAtOffset(v53, 0);
  v55 = EmitViewerSPI::emitNodeOutputPort(a2, @"gradient_recurrent_weight", v54);
  if (v55)
  {
    [v43 addObject:v55];
  }

  v58 = mlir::mps::LSTMGradientOp::getODSResultIndexAndLength(&v140, 2u, v56, v57);
  if (*(v140 + 9))
  {
    v59 = v140 - 16;
  }

  else
  {
    v59 = 0;
  }

  if (v58)
  {
    v59 = mlir::detail::OpResultImpl::getNextResultAtOffset(v59, v58);
  }

  v60 = mlir::detail::OpResultImpl::getNextResultAtOffset(v59, 0);
  v61 = EmitViewerSPI::emitNodeOutputPort(a2, @"gradient_input_state", v60);
  if (v61)
  {
    [v43 addObject:v61];
  }

  v64 = mlir::mps::LSTMGradientOp::getODSResultIndexAndLength(&v140, 3u, v62, v63);
  if (*(v140 + 9))
  {
    v65 = v140 - 16;
  }

  else
  {
    v65 = 0;
  }

  if (v64)
  {
    v65 = mlir::detail::OpResultImpl::getNextResultAtOffset(v65, v64);
  }

  v66 = mlir::detail::OpResultImpl::getNextResultAtOffset(v65, 0);
  v67 = EmitViewerSPI::emitNodeOutputPort(a2, @"gradient_input_cell", v66);
  if (v67)
  {
    [v43 addObject:v67];
  }

  v70 = mlir::mps::LSTMGradientOp::getODSResultIndexAndLength(&v140, 4u, v68, v69);
  if (*(v140 + 9))
  {
    v71 = v140 - 16;
  }

  else
  {
    v71 = 0;
  }

  if (v70)
  {
    v71 = mlir::detail::OpResultImpl::getNextResultAtOffset(v71, v70);
  }

  if (HIDWORD(v70) + v70 == v70)
  {
    v72 = 0;
  }

  else
  {
    v72 = mlir::detail::OpResultImpl::getNextResultAtOffset(v71, 0);
  }

  v73 = EmitViewerSPI::emitNodeOutputPort(a2, @"gradient_peephole", v72);
  if (v73)
  {
    [v43 addObject:v73];
  }

  v74 = [MEMORY[0x277CBEB18] array];
  IgateActivation = mlir::mps::LSTMGradientOp::getIgateActivation(&v140);
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

  v83 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"igate_activation" type:@"MPSRNNActivation" cases:v76 value:IgateActivation];
  if (v83)
  {
    [v74 addObject:v83];
  }

  FgateActivation = mlir::mps::LSTMGradientOp::getFgateActivation(&v140);
  v85 = [MEMORY[0x277CBEB18] array];
  v86 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v85 addObject:v86];

  v87 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"relu" value:1];
  [v85 addObject:v87];

  v88 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"tanh" value:2];
  [v85 addObject:v88];

  v89 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sigmoid" value:3];
  [v85 addObject:v89];

  v90 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"hard_sigmoid" value:4];
  [v85 addObject:v90];

  v91 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"scaled_tanh" value:5];
  [v85 addObject:v91];

  v92 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"fgate_activation" type:@"MPSRNNActivation" cases:v85 value:FgateActivation];
  if (v92)
  {
    [v74 addObject:v92];
  }

  ZgateActivation = mlir::mps::LSTMGradientOp::getZgateActivation(&v140);
  v94 = [MEMORY[0x277CBEB18] array];
  v95 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v94 addObject:v95];

  v96 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"relu" value:1];
  [v94 addObject:v96];

  v97 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"tanh" value:2];
  [v94 addObject:v97];

  v98 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sigmoid" value:3];
  [v94 addObject:v98];

  v99 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"hard_sigmoid" value:4];
  [v94 addObject:v99];

  v100 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"scaled_tanh" value:5];
  [v94 addObject:v100];

  v101 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"zgate_activation" type:@"MPSRNNActivation" cases:v94 value:ZgateActivation];
  if (v101)
  {
    [v74 addObject:v101];
  }

  OgateActivation = mlir::mps::LSTMGradientOp::getOgateActivation(&v140);
  v103 = [MEMORY[0x277CBEB18] array];
  v104 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v103 addObject:v104];

  v105 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"relu" value:1];
  [v103 addObject:v105];

  v106 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"tanh" value:2];
  [v103 addObject:v106];

  v107 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sigmoid" value:3];
  [v103 addObject:v107];

  v108 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"hard_sigmoid" value:4];
  [v103 addObject:v108];

  v109 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"scaled_tanh" value:5];
  [v103 addObject:v109];

  v110 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"ogate_activation" type:@"MPSRNNActivation" cases:v103 value:OgateActivation];
  if (v110)
  {
    [v74 addObject:v110];
  }

  CellActivation = mlir::mps::LSTMGradientOp::getCellActivation(&v140);
  v112 = [MEMORY[0x277CBEB18] array];
  v113 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v112 addObject:v113];

  v114 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"relu" value:1];
  [v112 addObject:v114];

  v115 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"tanh" value:2];
  [v112 addObject:v115];

  v116 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sigmoid" value:3];
  [v112 addObject:v116];

  v117 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"hard_sigmoid" value:4];
  [v112 addObject:v117];

  v118 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"scaled_tanh" value:5];
  [v112 addObject:v118];

  v119 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"cell_activation" type:@"MPSRNNActivation" cases:v112 value:CellActivation];
  if (v119)
  {
    [v74 addObject:v119];
  }

  GateLayout = mlir::mps::LSTMGradientOp::getGateLayout(&v140);
  v121 = [MEMORY[0x277CBEB18] array];
  v122 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"IFZO" value:0];
  [v121 addObject:v122];

  v123 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"IZFO" value:1];
  [v121 addObject:v123];

  v124 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"IFOZ" value:2];
  [v121 addObject:v124];

  v125 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"IOFZ" value:3];
  [v121 addObject:v125];

  v126 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"gate_layout" type:@"MPSLSTMGateLayout" cases:v121 value:GateLayout];
  if (v126)
  {
    [v74 addObject:v126];
  }

  v127 = [MEMORY[0x277CBEB18] array];
  v128 = [MLViewerNodeSPI alloc];
  v129 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v130 = [MEMORY[0x277CBEA60] arrayWithArray:v43];
  v131 = [MEMORY[0x277CBEA60] arrayWithArray:v74];
  v132 = [MEMORY[0x277CBEA60] arrayWithArray:v127];
  v133 = [(MLViewerNodeSPI *)v128 initWithType:v137 inputs:v129 outputs:v130 properties:v131 regions:v132];
  v134 = *(this + 3);
  *(this + 3) = v133;
  v135 = ;
  [*(this + 3) setLocalizedDescription:v135];

  if (v139 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563F3F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSLSTMOpHandler *EmitterViewerSPI::MPSLSTMOpHandler::MPSLSTMOpHandler(EmitterViewerSPI::MPSLSTMOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858DF8;
  v5 = *(*(a3 + 6) + 8);
  v122 = a3;
  v123 = v5;
  Value = mlir::StringAttr::getValue(&v123);
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

  v121 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v121 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v119 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mps::LSTMOp::getODSOperandIndexAndLength(&v122, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input_sequence", *(*(v122 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::LSTMOp::getODSOperandIndexAndLength(&v122, 1u);
  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"recurrent_weight", *(*(v122 + 9) + 32 * v13 + 24));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = mlir::mps::LSTMOp::getODSOperandIndexAndLength(&v122, 2u);
  if ((*(v122 + 46) & 0x80) != 0)
  {
    v16 = *(v122 + 9);
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

  v19 = mlir::mps::LSTMOp::getODSOperandIndexAndLength(&v122, 3u);
  if ((*(v122 + 46) & 0x80) != 0)
  {
    v20 = *(v122 + 9);
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

  v22 = EmitViewerSPI::emitNodeInputPort(a2, @"input_cell", v21);
  if (v22)
  {
    [v10 addObject:v22];
  }

  v23 = mlir::mps::LSTMOp::getODSOperandIndexAndLength(&v122, 4u);
  if ((*(v122 + 46) & 0x80) != 0)
  {
    v24 = *(v122 + 9);
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

  v27 = mlir::mps::LSTMOp::getODSOperandIndexAndLength(&v122, 5u);
  if ((*(v122 + 46) & 0x80) != 0)
  {
    v28 = *(v122 + 9);
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

  v30 = EmitViewerSPI::emitNodeInputPort(a2, @"peephole", v29);
  if (v30)
  {
    [v10 addObject:v30];
  }

  v31 = mlir::mps::LSTMOp::getODSOperandIndexAndLength(&v122, 6u);
  if ((*(v122 + 46) & 0x80) != 0)
  {
    v32 = *(v122 + 9);
  }

  else
  {
    v32 = 0;
  }

  if (HIDWORD(v31) + v31 == v31)
  {
    v33 = 0;
  }

  else
  {
    v33 = *(v32 + 32 * v31 + 24);
  }

  v34 = EmitViewerSPI::emitNodeInputPort(a2, @"cell_clip", v33);
  if (v34)
  {
    [v10 addObject:v34];
  }

  v35 = [MEMORY[0x277CBEB18] array];
  ODSResultIndexAndLength = mlir::mps::LSTMOp::getODSResultIndexAndLength(&v122, 0, v36, v37);
  if (*(v122 + 9))
  {
    NextResultAtOffset = v122 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v40 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
  v41 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", v40);
  if (v41)
  {
    [v35 addObject:v41];
  }

  v44 = mlir::mps::LSTMOp::getODSResultIndexAndLength(&v122, 1u, v42, v43);
  if (*(v122 + 9))
  {
    v45 = v122 - 16;
  }

  else
  {
    v45 = 0;
  }

  if (v44)
  {
    v45 = mlir::detail::OpResultImpl::getNextResultAtOffset(v45, v44);
  }

  v46 = mlir::detail::OpResultImpl::getNextResultAtOffset(v45, 0);
  v47 = EmitViewerSPI::emitNodeOutputPort(a2, @"output_cell", v46);
  if (v47)
  {
    [v35 addObject:v47];
  }

  v50 = mlir::mps::LSTMOp::getODSResultIndexAndLength(&v122, 2u, v48, v49);
  if (*(v122 + 9))
  {
    v51 = v122 - 16;
  }

  else
  {
    v51 = 0;
  }

  if (v50)
  {
    v51 = mlir::detail::OpResultImpl::getNextResultAtOffset(v51, v50);
  }

  if (HIDWORD(v50) + v50 == v50)
  {
    v52 = 0;
  }

  else
  {
    v52 = mlir::detail::OpResultImpl::getNextResultAtOffset(v51, 0);
  }

  v53 = EmitViewerSPI::emitNodeOutputPort(a2, @"training_state", v52);
  if (v53)
  {
    [v35 addObject:v53];
  }

  v54 = [MEMORY[0x277CBEB18] array];
  IgateActivation = mlir::mps::LSTMOp::getIgateActivation(&v122);
  v56 = [MEMORY[0x277CBEB18] array];
  v57 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v56 addObject:v57];

  v58 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"relu" value:1];
  [v56 addObject:v58];

  v59 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"tanh" value:2];
  [v56 addObject:v59];

  v60 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sigmoid" value:3];
  [v56 addObject:v60];

  v61 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"hard_sigmoid" value:4];
  [v56 addObject:v61];

  v62 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"scaled_tanh" value:5];
  [v56 addObject:v62];

  v63 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"igate_activation" type:@"MPSRNNActivation" cases:v56 value:IgateActivation];
  if (v63)
  {
    [v54 addObject:v63];
  }

  FgateActivation = mlir::mps::LSTMOp::getFgateActivation(&v122);
  v65 = [MEMORY[0x277CBEB18] array];
  v66 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v65 addObject:v66];

  v67 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"relu" value:1];
  [v65 addObject:v67];

  v68 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"tanh" value:2];
  [v65 addObject:v68];

  v69 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sigmoid" value:3];
  [v65 addObject:v69];

  v70 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"hard_sigmoid" value:4];
  [v65 addObject:v70];

  v71 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"scaled_tanh" value:5];
  [v65 addObject:v71];

  v72 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"fgate_activation" type:@"MPSRNNActivation" cases:v65 value:FgateActivation];
  if (v72)
  {
    [v54 addObject:v72];
  }

  ZgateActivation = mlir::mps::LSTMOp::getZgateActivation(&v122);
  v74 = [MEMORY[0x277CBEB18] array];
  v75 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v74 addObject:v75];

  v76 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"relu" value:1];
  [v74 addObject:v76];

  v77 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"tanh" value:2];
  [v74 addObject:v77];

  v78 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sigmoid" value:3];
  [v74 addObject:v78];

  v79 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"hard_sigmoid" value:4];
  [v74 addObject:v79];

  v80 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"scaled_tanh" value:5];
  [v74 addObject:v80];

  v81 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"zgate_activation" type:@"MPSRNNActivation" cases:v74 value:ZgateActivation];
  if (v81)
  {
    [v54 addObject:v81];
  }

  OgateActivation = mlir::mps::LSTMOp::getOgateActivation(&v122);
  v83 = [MEMORY[0x277CBEB18] array];
  v84 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v83 addObject:v84];

  v85 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"relu" value:1];
  [v83 addObject:v85];

  v86 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"tanh" value:2];
  [v83 addObject:v86];

  v87 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sigmoid" value:3];
  [v83 addObject:v87];

  v88 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"hard_sigmoid" value:4];
  [v83 addObject:v88];

  v89 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"scaled_tanh" value:5];
  [v83 addObject:v89];

  v90 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"ogate_activation" type:@"MPSRNNActivation" cases:v83 value:OgateActivation];
  if (v90)
  {
    [v54 addObject:v90];
  }

  CellActivation = mlir::mps::LSTMOp::getCellActivation(&v122);
  v92 = [MEMORY[0x277CBEB18] array];
  v93 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v92 addObject:v93];

  v94 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"relu" value:1];
  [v92 addObject:v94];

  v95 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"tanh" value:2];
  [v92 addObject:v95];

  v96 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sigmoid" value:3];
  [v92 addObject:v96];

  v97 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"hard_sigmoid" value:4];
  [v92 addObject:v97];

  v98 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"scaled_tanh" value:5];
  [v92 addObject:v98];

  v99 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"cell_activation" type:@"MPSRNNActivation" cases:v92 value:CellActivation];
  if (v99)
  {
    [v54 addObject:v99];
  }

  GateLayout = mlir::mps::LSTMOp::getGateLayout(&v122);
  v101 = [MEMORY[0x277CBEB18] array];
  v102 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"IFZO" value:0];
  [v101 addObject:v102];

  v103 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"IZFO" value:1];
  [v101 addObject:v103];

  v104 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"IFOZ" value:2];
  [v101 addObject:v104];

  v105 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"IOFZ" value:3];
  [v101 addObject:v105];

  v106 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"gate_layout" type:@"MPSLSTMGateLayout" cases:v101 value:GateLayout];
  if (v106)
  {
    [v54 addObject:v106];
  }

  LOBYTE(v123) = mlir::mps::LSTMOp::getTraining(&v122);
  v107 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"training" dataType:2147483656 shape:&unk_2868AFFC8];
  if (v107)
  {
    v108 = [MEMORY[0x277CBEA90] dataWithBytes:&v123 length:1];
    [(MLViewerNodePropertyDataSPI *)v107 setValue:v108];

    [v54 addObject:v107];
  }

  v109 = [MEMORY[0x277CBEB18] array];
  v110 = [MLViewerNodeSPI alloc];
  v111 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v112 = [MEMORY[0x277CBEA60] arrayWithArray:v35];
  v113 = [MEMORY[0x277CBEA60] arrayWithArray:v54];
  v114 = [MEMORY[0x277CBEA60] arrayWithArray:v109];
  v115 = [(MLViewerNodeSPI *)v110 initWithType:v119 inputs:v111 outputs:v112 properties:v113 regions:v114];
  v116 = *(this + 3);
  *(this + 3) = v115;
  v117 = ;
  [*(this + 3) setLocalizedDescription:v117];

  if (v121 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563F5150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSLeakyReluOpHandler *EmitterViewerSPI::MPSLeakyReluOpHandler::MPSLeakyReluOpHandler(EmitterViewerSPI::MPSLeakyReluOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858E10;
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

void sub_2563F5728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSLessThanOpHandler *EmitterViewerSPI::MPSLessThanOpHandler::MPSLessThanOpHandler(EmitterViewerSPI::MPSLessThanOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858E28;
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

void sub_2563F5B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSLessThanOrEqualToOpHandler *EmitterViewerSPI::MPSLessThanOrEqualToOpHandler::MPSLessThanOrEqualToOpHandler(EmitterViewerSPI::MPSLessThanOrEqualToOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858E40;
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

void sub_2563F5F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSLocalConvolutionDataGradientOpHandler *EmitterViewerSPI::MPSLocalConvolutionDataGradientOpHandler::MPSLocalConvolutionDataGradientOpHandler(EmitterViewerSPI::MPSLocalConvolutionDataGradientOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858E58;
  v5 = *(*(a3 + 6) + 8);
  v53 = a3;
  v54 = v5;
  Value = mlir::StringAttr::getValue(&v54);
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

  v52 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v52 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v49 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v53 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"weights", *(*(v53 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v50 = [MEMORY[0x277CBEB18] array];
  if (*(v53 + 9))
  {
    v13 = v53 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v50 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  DataLayout = mlir::mps::LocalConvolutionDataGradientOp::getDataLayout(&v53);
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v18 addObject:v19];

  v20 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v18 addObject:v20];

  v21 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v18 addObject:v21];

  v22 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v18 addObject:v22];

  v23 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v18 addObject:v23];

  v24 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v18 addObject:v24];

  v25 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v18 addObject:v25];

  v26 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v18 addObject:v26];

  v27 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v18 addObject:v27];

  v28 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v18 addObject:v28];

  v29 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v18 addObject:v29];

  v30 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v18 value:DataLayout];
  if (v30)
  {
    [v16 addObject:v30];
  }

  KernelSizes = mlir::mps::LocalConvolutionDataGradientOp::getKernelSizes(&v53);
  v32 = KernelSizes;
  if (KernelSizes)
  {
    KernelSizes = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelSizes + 8);
    v33 = KernelSizes;
  }

  else
  {
    v33 = 0;
  }

  v34 = EmitViewerSPI::emitElementsAttrProperty(KernelSizes, @"kernel_sizes", v32, v33);
  if (v34)
  {
    [v16 addObject:v34];
  }

  DilationRates = mlir::mps::LocalConvolutionDataGradientOp::getDilationRates(&v53);
  v36 = DilationRates;
  if (DilationRates)
  {
    DilationRates = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DilationRates + 8);
    v37 = DilationRates;
  }

  else
  {
    v37 = 0;
  }

  v38 = EmitViewerSPI::emitElementsAttrProperty(DilationRates, @"dilation_rates", v36, v37);
  if (v38)
  {
    [v16 addObject:v38];
  }

  v39 = [MEMORY[0x277CBEB18] array];
  v40 = [MLViewerNodeSPI alloc];
  v41 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v42 = [MEMORY[0x277CBEA60] arrayWithArray:v50];
  v43 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v44 = [MEMORY[0x277CBEA60] arrayWithArray:v39];
  v45 = [(MLViewerNodeSPI *)v40 initWithType:v49 inputs:v41 outputs:v42 properties:v43 regions:v44];
  v46 = *(this + 3);
  *(this + 3) = v45;

  v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"returns the gradient of the local_convolution operation relative to the input tensor."];
  [*(this + 3) setLocalizedDescription:v47];

  if (v52 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563F664C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSLocalConvolutionOpHandler *EmitterViewerSPI::MPSLocalConvolutionOpHandler::MPSLocalConvolutionOpHandler(EmitterViewerSPI::MPSLocalConvolutionOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858E70;
  v5 = *(*(a3 + 6) + 8);
  v53 = a3;
  v54 = v5;
  Value = mlir::StringAttr::getValue(&v54);
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

  v52 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v52 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v49 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v53 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"weights", *(*(v53 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v50 = [MEMORY[0x277CBEB18] array];
  if (*(v53 + 9))
  {
    v13 = v53 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v50 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  DataLayout = mlir::mps::LocalConvolutionOp::getDataLayout(&v53);
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v18 addObject:v19];

  v20 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v18 addObject:v20];

  v21 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v18 addObject:v21];

  v22 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v18 addObject:v22];

  v23 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v18 addObject:v23];

  v24 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v18 addObject:v24];

  v25 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v18 addObject:v25];

  v26 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v18 addObject:v26];

  v27 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v18 addObject:v27];

  v28 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v18 addObject:v28];

  v29 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v18 addObject:v29];

  v30 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v18 value:DataLayout];
  if (v30)
  {
    [v16 addObject:v30];
  }

  KernelSizes = mlir::mps::LocalConvolutionOp::getKernelSizes(&v53);
  v32 = KernelSizes;
  if (KernelSizes)
  {
    KernelSizes = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelSizes + 8);
    v33 = KernelSizes;
  }

  else
  {
    v33 = 0;
  }

  v34 = EmitViewerSPI::emitElementsAttrProperty(KernelSizes, @"kernel_sizes", v32, v33);
  if (v34)
  {
    [v16 addObject:v34];
  }

  DilationRates = mlir::mps::LocalConvolutionOp::getDilationRates(&v53);
  v36 = DilationRates;
  if (DilationRates)
  {
    DilationRates = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DilationRates + 8);
    v37 = DilationRates;
  }

  else
  {
    v37 = 0;
  }

  v38 = EmitViewerSPI::emitElementsAttrProperty(DilationRates, @"dilation_rates", v36, v37);
  if (v38)
  {
    [v16 addObject:v38];
  }

  v39 = [MEMORY[0x277CBEB18] array];
  v40 = [MLViewerNodeSPI alloc];
  v41 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v42 = [MEMORY[0x277CBEA60] arrayWithArray:v50];
  v43 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v44 = [MEMORY[0x277CBEA60] arrayWithArray:v39];
  v45 = [(MLViewerNodeSPI *)v40 initWithType:v49 inputs:v41 outputs:v42 properties:v43 regions:v44];
  v46 = *(this + 3);
  *(this + 3) = v45;

  v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"For each pixel of the input image, a different set of weights is provided in the channels of the weight tensor and form a 2d filter for that pixel. The weights are arranged in HW order inside the channels of the weight tensor. The destination pixel is calculated as the weighted sum of the pixels surrounding the pixel at the same location of the input image. The input image is zero padded when the filter reaches outside of the input."}];
  [*(this + 3) setLocalizedDescription:v47];

  if (v52 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563F6DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSLocalConvolutionWeightGradientOpHandler *EmitterViewerSPI::MPSLocalConvolutionWeightGradientOpHandler::MPSLocalConvolutionWeightGradientOpHandler(EmitterViewerSPI::MPSLocalConvolutionWeightGradientOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858E88;
  v5 = *(*(a3 + 6) + 8);
  v53 = a3;
  v54 = v5;
  Value = mlir::StringAttr::getValue(&v54);
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

  v52 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v52 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v49 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v53 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v53 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v50 = [MEMORY[0x277CBEB18] array];
  if (*(v53 + 9))
  {
    v13 = v53 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v50 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  DataLayout = mlir::mps::LocalConvolutionWeightGradientOp::getDataLayout(&v53);
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v18 addObject:v19];

  v20 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v18 addObject:v20];

  v21 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v18 addObject:v21];

  v22 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v18 addObject:v22];

  v23 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v18 addObject:v23];

  v24 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v18 addObject:v24];

  v25 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v18 addObject:v25];

  v26 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v18 addObject:v26];

  v27 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v18 addObject:v27];

  v28 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v18 addObject:v28];

  v29 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v18 addObject:v29];

  v30 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v18 value:DataLayout];
  if (v30)
  {
    [v16 addObject:v30];
  }

  KernelSizes = mlir::mps::LocalConvolutionWeightGradientOp::getKernelSizes(&v53);
  v32 = KernelSizes;
  if (KernelSizes)
  {
    KernelSizes = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelSizes + 8);
    v33 = KernelSizes;
  }

  else
  {
    v33 = 0;
  }

  v34 = EmitViewerSPI::emitElementsAttrProperty(KernelSizes, @"kernel_sizes", v32, v33);
  if (v34)
  {
    [v16 addObject:v34];
  }

  DilationRates = mlir::mps::LocalConvolutionWeightGradientOp::getDilationRates(&v53);
  v36 = DilationRates;
  if (DilationRates)
  {
    DilationRates = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DilationRates + 8);
    v37 = DilationRates;
  }

  else
  {
    v37 = 0;
  }

  v38 = EmitViewerSPI::emitElementsAttrProperty(DilationRates, @"dilation_rates", v36, v37);
  if (v38)
  {
    [v16 addObject:v38];
  }

  v39 = [MEMORY[0x277CBEB18] array];
  v40 = [MLViewerNodeSPI alloc];
  v41 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v42 = [MEMORY[0x277CBEA60] arrayWithArray:v50];
  v43 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v44 = [MEMORY[0x277CBEA60] arrayWithArray:v39];
  v45 = [(MLViewerNodeSPI *)v40 initWithType:v49 inputs:v41 outputs:v42 properties:v43 regions:v44];
  v46 = *(this + 3);
  *(this + 3) = v45;

  v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"returns the gradient of the local_convolution operation relative to the weight tensor."];
  [*(this + 3) setLocalizedDescription:v47];

  if (v52 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563F753C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSLogarithmBase2OpHandler *EmitterViewerSPI::MPSLogarithmBase2OpHandler::MPSLogarithmBase2OpHandler(EmitterViewerSPI::MPSLogarithmBase2OpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858EA0;
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

void sub_2563F798C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSLogarithmBase10OpHandler *EmitterViewerSPI::MPSLogarithmBase10OpHandler::MPSLogarithmBase10OpHandler(EmitterViewerSPI::MPSLogarithmBase10OpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858EB8;
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

void sub_2563F7D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSLogarithmOpHandler *EmitterViewerSPI::MPSLogarithmOpHandler::MPSLogarithmOpHandler(EmitterViewerSPI::MPSLogarithmOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858ED0;
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

void sub_2563F8134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSMatMulOpHandler *EmitterViewerSPI::MPSMatMulOpHandler::MPSMatMulOpHandler(EmitterViewerSPI::MPSMatMulOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858EE8;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(v36 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(v36 + 9) + 56));
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
  LOBYTE(v37) = mlir::mps::MatMulOp::getTransposeLhs(&v36);
  v18 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"transpose_lhs" dataType:2147483656 shape:&unk_2868AFFE0];
  if (v18)
  {
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:&v37 length:1];
    [(MLViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v17 addObject:v18];
  }

  TransposeRhs = mlir::mps::MatMulOp::getTransposeRhs(&v36);
  v20 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"transpose_rhs" dataType:2147483656 shape:&unk_2868AFFF8];
  if (v20)
  {
    v21 = [MEMORY[0x277CBEA90] dataWithBytes:&TransposeRhs length:1];
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

void sub_2563F862C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSMaterializeSparseTensorOpHandler *EmitterViewerSPI::MPSMaterializeSparseTensorOpHandler::MPSMaterializeSparseTensorOpHandler(EmitterViewerSPI::MPSMaterializeSparseTensorOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858F00;
  v4 = *(*(a3 + 6) + 8);
  v47 = a3;
  v48 = v4;
  Value = mlir::StringAttr::getValue(&v48);
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

  v46 = v6;
  if (v6)
  {
    memmove(&__dst, Value, v6);
  }

  *(&__dst + v7) = 0;
  if (v46 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v43 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mps::MaterializeSparseTensorOp::getODSOperandIndexAndLength(&v47, 0);
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"sparse_values", *(*(v47 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v11)
  {
    [v9 addObject:v11];
  }

  v12 = mlir::mps::MaterializeSparseTensorOp::getODSOperandIndexAndLength(&v47, 1u);
  if ((*(v47 + 46) & 0x80) != 0)
  {
    v13 = *(v47 + 9);
  }

  else
  {
    v13 = 0;
  }

  v14 = (HIDWORD(v12) + v12);
  v15 = v14 - v12;
  if (v14 != v12)
  {
    v37 = 0;
    v38 = 0;
    v39 = v13 + 32 * v12;
    do
    {
      v40 = *(v39 + 32 * v37 + 24);
      v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"index_tensors%d", v38];
      v42 = EmitViewerSPI::emitNodeInputPort(a2, v41, v40);

      if (v42)
      {
        [v9 addObject:v42];
      }

      v37 = (v38 + 1);
      v38 = v37;
    }

    while (v15 > v37);
  }

  v16 = [MEMORY[0x277CBEB18] array];
  if (*(v47 + 9))
  {
    v17 = v47 - 16;
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
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v47);
  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"COO" value:0];
  [v22 addObject:v23];

  v24 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CSC" value:1];
  [v22 addObject:v24];

  v25 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CSR" value:2];
  [v22 addObject:v25];

  v26 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"storage_type" type:@"MPSSparseTensorStorage" cases:v22 value:StorageType];
  if (v26)
  {
    [v20 addObject:v26];
  }

  v27 = [MEMORY[0x277CBEB18] array];
  v28 = [MLViewerNodeSPI alloc];
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v30 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v31 = [MEMORY[0x277CBEA60] arrayWithArray:v20];
  v32 = [MEMORY[0x277CBEA60] arrayWithArray:v27];
  v33 = [(MLViewerNodeSPI *)v28 initWithType:v43 inputs:v29 outputs:v30 properties:v31 regions:v32];
  v34 = *(this + 3);
  *(this + 3) = v33;
  v35 = ;
  [*(this + 3) setLocalizedDescription:v35];

  if (v46 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563F8BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSMatrixDecompositionLUOpHandler *EmitterViewerSPI::MPSMatrixDecompositionLUOpHandler::MPSMatrixDecompositionLUOpHandler(EmitterViewerSPI::MPSMatrixDecompositionLUOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858F18;
  v38 = *(*(a3 + 6) + 8);
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

  v35 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
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
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"lu_matrix", NextResultAtOffset);
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
  v19 = EmitViewerSPI::emitNodeOutputPort(a2, @"pivot_indices", v18);
  if (v19)
  {
    [v12 addObject:v19];
  }

  if (*(a3 + 9))
  {
    v20 = a3 - 16;
  }

  else
  {
    v20 = 0;
  }

  v21 = mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 2);
  v22 = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, 0);
  v23 = EmitViewerSPI::emitNodeOutputPort(a2, @"lu_status", v22);
  if (v23)
  {
    [v12 addObject:v23];
  }

  v24 = [MEMORY[0x277CBEB18] array];
  v25 = [MEMORY[0x277CBEB18] array];
  v26 = [MLViewerNodeSPI alloc];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v24];
  v30 = [MEMORY[0x277CBEA60] arrayWithArray:v25];
  v31 = [(MLViewerNodeSPI *)v26 initWithType:v35 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;

  v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"Return the LU decomposition of an input matrix A as A = P*L*U The result contains the LU decomposition in packed form, a pivot_indices matrix to track matrix pivots and a status"}];
  [*(this + 3) setLocalizedDescription:v33];

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563F90A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSMatrixInverseOpHandler *EmitterViewerSPI::MPSMatrixInverseOpHandler::MPSMatrixInverseOpHandler(EmitterViewerSPI::MPSMatrixInverseOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858F30;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input_matrix", *(*(a3 + 9) + 24));
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
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"inverse_matrix", NextResultAtOffset);
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

  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Computes inverse for a square input"];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563F94A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSMatrixSolverLUOpHandler *EmitterViewerSPI::MPSMatrixSolverLUOpHandler::MPSMatrixSolverLUOpHandler(EmitterViewerSPI::MPSMatrixSolverLUOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858F48;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lu_matrix", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"pivot_indices", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs_matrix", *(*(a3 + 9) + 88));
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
  v17 = EmitViewerSPI::emitNodeOutputPort(a2, @"solution_matrix", NextResultAtOffset);
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

  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"Solves for x, in the equation Ax = b. Inputs are LU factorized matrix of A, permutation matrix (P), rhs matrix (b). Returns x"}];
  [*(this + 3) setLocalizedDescription:v27];

  if (v31 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563F98E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSMaximumOpHandler *EmitterViewerSPI::MPSMaximumOpHandler::MPSMaximumOpHandler(EmitterViewerSPI::MPSMaximumOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858F60;
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

void sub_2563F9D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSMinimumOpHandler *EmitterViewerSPI::MPSMinimumOpHandler::MPSMinimumOpHandler(EmitterViewerSPI::MPSMinimumOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858F78;
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

void sub_2563FA120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSModuloOpHandler *EmitterViewerSPI::MPSModuloOpHandler::MPSModuloOpHandler(EmitterViewerSPI::MPSModuloOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858F90;
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

void sub_2563FA530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSMultiplyOpHandler *EmitterViewerSPI::MPSMultiplyOpHandler::MPSMultiplyOpHandler(EmitterViewerSPI::MPSMultiplyOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858FA8;
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

void sub_2563FA940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSNReluOpHandler *EmitterViewerSPI::MPSNReluOpHandler::MPSNReluOpHandler(EmitterViewerSPI::MPSNReluOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858FC0;
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

void sub_2563FAD84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSNandOpHandler *EmitterViewerSPI::MPSNandOpHandler::MPSNandOpHandler(EmitterViewerSPI::MPSNandOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858FD8;
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

void sub_2563FB1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSNegativeOpHandler *EmitterViewerSPI::MPSNegativeOpHandler::MPSNegativeOpHandler(EmitterViewerSPI::MPSNegativeOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858FF0;
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

void sub_2563FB58C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSNonMaximumSuppressionOpHandler *EmitterViewerSPI::MPSNonMaximumSuppressionOpHandler::MPSNonMaximumSuppressionOpHandler(EmitterViewerSPI::MPSNonMaximumSuppressionOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859008;
  v5 = *(*(a3 + 6) + 8);
  v59 = a3;
  v60 = v5;
  Value = mlir::StringAttr::getValue(&v60);
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

  v58 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v58 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v55 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mps::NonMaximumSuppressionOp::getODSOperandIndexAndLength(&v59, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"boxes", *(*(v59 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::NonMaximumSuppressionOp::getODSOperandIndexAndLength(&v59, 1u);
  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"scores", *(*(v59 + 9) + 32 * v13 + 24));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = mlir::mps::NonMaximumSuppressionOp::getODSOperandIndexAndLength(&v59, 2u);
  if ((*(v59 + 46) & 0x80) != 0)
  {
    v16 = *(v59 + 9);
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

  v18 = EmitViewerSPI::emitNodeInputPort(a2, @"class_indices", v17);
  if (v18)
  {
    [v10 addObject:v18];
  }

  v19 = mlir::mps::NonMaximumSuppressionOp::getODSOperandIndexAndLength(&v59, 3u);
  v20 = EmitViewerSPI::emitNodeInputPort(a2, @"iou_threshold", *(*(v59 + 9) + 32 * v19 + 24));
  if (v20)
  {
    [v10 addObject:v20];
  }

  v21 = mlir::mps::NonMaximumSuppressionOp::getODSOperandIndexAndLength(&v59, 4u);
  v22 = EmitViewerSPI::emitNodeInputPort(a2, @"score_threshold", *(*(v59 + 9) + 32 * v21 + 24));
  if (v22)
  {
    [v10 addObject:v22];
  }

  v23 = [MEMORY[0x277CBEB18] array];
  if (*(v59 + 9))
  {
    v24 = v59 - 16;
  }

  else
  {
    v24 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v24, 0);
  v26 = EmitViewerSPI::emitNodeOutputPort(a2, @"selected_indices", NextResultAtOffset);
  if (v26)
  {
    [v23 addObject:v26];
  }

  if (*(v59 + 9))
  {
    v27 = v59 - 16;
  }

  else
  {
    v27 = 0;
  }

  v28 = mlir::detail::OpResultImpl::getNextResultAtOffset(v27, 1);
  v29 = mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0);
  v30 = EmitViewerSPI::emitNodeOutputPort(a2, @"num_boxes", v29);
  if (v30)
  {
    [v23 addObject:v30];
  }

  v31 = [MEMORY[0x277CBEB18] array];
  PerClassSuppression = mlir::mps::NonMaximumSuppressionOp::getPerClassSuppression(&v59);
  v32 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"per_class_suppression" dataType:2147483656 shape:&unk_2868B0010];
  if (v32)
  {
    v33 = [MEMORY[0x277CBEA90] dataWithBytes:&PerClassSuppression length:1];
    [(MLViewerNodePropertyDataSPI *)v32 setValue:v33];

    [v31 addObject:v32];
  }

  CoordinateMode = mlir::mps::NonMaximumSuppressionOp::getCoordinateMode(&v59);
  v35 = [MEMORY[0x277CBEB18] array];
  v36 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"cornersHeightFirst" value:0];
  [v35 addObject:v36];

  v37 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"cornersWidthFirst" value:1];
  [v35 addObject:v37];

  v38 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"centersHeightFirst" value:2];
  [v35 addObject:v38];

  v39 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"centersWidthFirst" value:3];
  [v35 addObject:v39];

  v40 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"coordinate_mode" type:@"MPSCropResizeCoordinateMode" cases:v35 value:CoordinateMode];
  if (v40)
  {
    [v31 addObject:v40];
  }

  MaxBoxes = mlir::mps::NonMaximumSuppressionOp::getMaxBoxes(&v59);
  LODWORD(v60) = MaxBoxes;
  BYTE4(v60) = BYTE4(MaxBoxes);
  if ((MaxBoxes & 0x100000000) != 0)
  {
    v42 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"max_boxes" dataType:32 shape:&unk_2868B0028];
    if (v42)
    {
      if ((v60 & 0x100000000) == 0)
      {
        v54 = std::__throw_bad_optional_access[abi:nn200100]();

        if (v58 < 0)
        {
          operator delete(__dst);
        }

        _Unwind_Resume(v54);
      }

      v43 = [MEMORY[0x277CBEA90] dataWithBytes:&v60 length:8];
      [(MLViewerNodePropertyDataSPI *)v42 setValue:v43];

      [v31 addObject:v42];
    }
  }

  v44 = [MEMORY[0x277CBEB18] array];
  v45 = [MLViewerNodeSPI alloc];
  v46 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v47 = [MEMORY[0x277CBEA60] arrayWithArray:v23];
  v48 = [MEMORY[0x277CBEA60] arrayWithArray:v31];
  v49 = [MEMORY[0x277CBEA60] arrayWithArray:v44];
  v50 = [(MLViewerNodeSPI *)v45 initWithType:v55 inputs:v46 outputs:v47 properties:v48 regions:v49];
  v51 = *(this + 3);
  *(this + 3) = v50;
  v52 = ;
  [*(this + 3) setLocalizedDescription:v52];

  if (v58 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

EmitterViewerSPI::MPSNonZeroOpHandler *EmitterViewerSPI::MPSNonZeroOpHandler::MPSNonZeroOpHandler(EmitterViewerSPI::MPSNonZeroOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859020;
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

void sub_2563FC1D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSNorOpHandler *EmitterViewerSPI::MPSNorOpHandler::MPSNorOpHandler(EmitterViewerSPI::MPSNorOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859038;
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

void sub_2563FC5DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSNormalizationOpHandler *EmitterViewerSPI::MPSNormalizationOpHandler::MPSNormalizationOpHandler(EmitterViewerSPI::MPSNormalizationOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  v40[3] = *MEMORY[0x277D85DE8];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859050;
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

  v35 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v38 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"mean", *(*(v38 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"variance", *(*(v38 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"gamma", *(*(v38 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = EmitViewerSPI::emitNodeInputPort(a2, @"beta", *(*(v38 + 9) + 152));
  if (v15)
  {
    [v10 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  if (*(v38 + 9))
  {
    v17 = v38 - 16;
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
  mlir::mps::NormalizationOp::getEpsilon(&v38, &v39);
  v21 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"epsilon" dataType:268435488 shape:&unk_2868B0040];
  if (v21)
  {
    v22 = [MEMORY[0x277CBEA90] dataWithBytes:&v39 length:32];
    [(MLViewerNodePropertyDataSPI *)v21 setValue:v22];

    [v20 addObject:v21];
  }

  v23 = v40[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v24) == v23)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v40);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v40);
  }

  v25 = [MEMORY[0x277CBEB18] array];
  v26 = [MLViewerNodeSPI alloc];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v20];
  v30 = [MEMORY[0x277CBEA60] arrayWithArray:v25];
  v31 = [(MLViewerNodeSPI *)v26 initWithType:v35 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;
  v33 = ;
  [*(this + 3) setLocalizedDescription:v33];

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563FCB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  llvm::APFloat::~APFloat(&a17);

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSNotEqualToOpHandler *EmitterViewerSPI::MPSNotEqualToOpHandler::MPSNotEqualToOpHandler(EmitterViewerSPI::MPSNotEqualToOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859068;
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

void sub_2563FCFD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSNotOpHandler *EmitterViewerSPI::MPSNotOpHandler::MPSNotOpHandler(EmitterViewerSPI::MPSNotOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859080;
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

void sub_2563FD3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSOneHotOpHandler *EmitterViewerSPI::MPSOneHotOpHandler::MPSOneHotOpHandler(EmitterViewerSPI::MPSOneHotOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859098;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"indices", *(*(v32 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"depth", *(*(v32 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v32 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = [MEMORY[0x277CBEB18] array];
  if (*(v32 + 9))
  {
    v15 = v32 - 16;
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
  mlir::mps::OneHotOp::getResultElementType(&v32);
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

void sub_2563FD804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSOrOpHandler *EmitterViewerSPI::MPSOrOpHandler::MPSOrOpHandler(EmitterViewerSPI::MPSOrOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868590B0;
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

void sub_2563FDC38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPReluOpHandler *EmitterViewerSPI::MPSPReluOpHandler::MPSPReluOpHandler(EmitterViewerSPI::MPSPReluOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868590C8;
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

  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"Where i = 1 ... C, if x_i > 0, return x_i, otherwise return alpha_i * x_i."}];
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563FE048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPadGradientOpHandler *EmitterViewerSPI::MPSPadGradientOpHandler::MPSPadGradientOpHandler(EmitterViewerSPI::MPSPadGradientOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868590E0;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v39 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v39 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"paddings", *(*(v39 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v36 = [MEMORY[0x277CBEB18] array];
  if (*(v39 + 9))
  {
    v14 = v39 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v36 addObject:v16];
  }

  v17 = [MEMORY[0x277CBEB18] array];
  PaddingMode = mlir::mps::PadGradientOp::getPaddingMode(&v39);
  v19 = [MEMORY[0x277CBEB18] array];
  v20 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"constant" value:0];
  [v19 addObject:v20];

  v21 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"reflect" value:1];
  [v19 addObject:v21];

  v22 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"symmetric" value:2];
  [v19 addObject:v22];

  v23 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"clampToEdge" value:3];
  [v19 addObject:v23];

  v24 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"paddingMode" type:@"MPSPaddingMode" cases:v19 value:PaddingMode];
  if (v24)
  {
    [v17 addObject:v24];
  }

  v25 = [MEMORY[0x277CBEB18] array];
  v26 = [MLViewerNodeSPI alloc];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v36];
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v30 = [MEMORY[0x277CBEA60] arrayWithArray:v25];
  v31 = [(MLViewerNodeSPI *)v26 initWithType:v35 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;
  v33 = ;
  [*(this + 3) setLocalizedDescription:v33];

  if (v38 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563FE5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPadOpHandler *EmitterViewerSPI::MPSPadOpHandler::MPSPadOpHandler(EmitterViewerSPI::MPSPadOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868590F8;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v39 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"paddings", *(*(v39 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"constant_values", *(*(v39 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v36 = [MEMORY[0x277CBEB18] array];
  if (*(v39 + 9))
  {
    v14 = v39 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v36 addObject:v16];
  }

  v17 = [MEMORY[0x277CBEB18] array];
  PaddingMode = mlir::mps::PadOp::getPaddingMode(&v39);
  v19 = [MEMORY[0x277CBEB18] array];
  v20 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"constant" value:0];
  [v19 addObject:v20];

  v21 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"reflect" value:1];
  [v19 addObject:v21];

  v22 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"symmetric" value:2];
  [v19 addObject:v22];

  v23 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"clampToEdge" value:3];
  [v19 addObject:v23];

  v24 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"paddingMode" type:@"MPSPaddingMode" cases:v19 value:PaddingMode];
  if (v24)
  {
    [v17 addObject:v24];
  }

  v25 = [MEMORY[0x277CBEB18] array];
  v26 = [MLViewerNodeSPI alloc];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v36];
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v30 = [MEMORY[0x277CBEA60] arrayWithArray:v25];
  v31 = [(MLViewerNodeSPI *)v26 initWithType:v35 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;

  v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Pad the input tensor specifying padding values and padding mode"];
  [*(this + 3) setLocalizedDescription:v33];

  if (v38 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563FEB50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPermuteOpHandler *EmitterViewerSPI::MPSPermuteOpHandler::MPSPermuteOpHandler(EmitterViewerSPI::MPSPermuteOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859110;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"perm", *(*(a3 + 9) + 56));
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

void sub_2563FEFA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPlaceholderOpHandler *EmitterViewerSPI::MPSPlaceholderOpHandler::MPSPlaceholderOpHandler(EmitterViewerSPI::MPSPlaceholderOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859128;
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
  v11 = [MEMORY[0x277CBEB18] array];
  if (*(a3 + 9))
  {
    v12 = a3 - 16;
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
  v16 = [MEMORY[0x277CBEB18] array];
  v17 = [MLViewerNodeSPI alloc];
  v18 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v22 = [(MLViewerNodeSPI *)v17 initWithType:v26 inputs:v18 outputs:v19 properties:v20 regions:v21];
  v23 = *(this + 3);
  *(this + 3) = v22;

  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Inserts a placeholder for a tensor that will be always fed."];
  [*(this + 3) setLocalizedDescription:v24];

  if (v28 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563FF350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPoolAvgGradientOpHandler *EmitterViewerSPI::MPSPoolAvgGradientOpHandler::MPSPoolAvgGradientOpHandler(EmitterViewerSPI::MPSPoolAvgGradientOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859140;
  v5 = *(*(a3 + 6) + 8);
  v63 = a3;
  v64 = v5;
  Value = mlir::StringAttr::getValue(&v64);
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

  v62 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v62 >= 0)
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v63 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v63 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(v63 + 9))
  {
    v14 = v63 - 16;
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
  WindowSizes = mlir::mps::PoolAvgGradientOp::getWindowSizes(&v63);
  v19 = WindowSizes;
  if (WindowSizes)
  {
    WindowSizes = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*WindowSizes + 8);
    v20 = WindowSizes;
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(WindowSizes, @"window_sizes", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  Strides = mlir::mps::PoolAvgGradientOp::getStrides(&v63);
  v23 = Strides;
  if (Strides)
  {
    Strides = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    v24 = Strides;
  }

  else
  {
    v24 = 0;
  }

  v25 = EmitViewerSPI::emitElementsAttrProperty(Strides, @"strides", v23, v24);
  if (v25)
  {
    [v17 addObject:v25];
  }

  DilationRates = mlir::mps::PoolAvgGradientOp::getDilationRates(&v63);
  v27 = DilationRates;
  if (DilationRates)
  {
    DilationRates = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DilationRates + 8);
    v28 = DilationRates;
  }

  else
  {
    v28 = 0;
  }

  v29 = EmitViewerSPI::emitElementsAttrProperty(DilationRates, @"dilation_rates", v27, v28);
  if (v29)
  {
    [v17 addObject:v29];
  }

  PaddingStyle = mlir::mps::PoolAvgGradientOp::getPaddingStyle(&v63);
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

  ExplicitPadding = mlir::mps::PoolAvgGradientOp::getExplicitPadding(&v63);
  if (v39)
  {
    if (ExplicitPadding)
    {
      v40 = ExplicitPadding;
      ExplicitPadding = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
      v41 = ExplicitPadding;
      v42 = v40;
    }

    else
    {
      v42 = 0;
      v41 = 0;
    }

    v43 = EmitViewerSPI::emitElementsAttrProperty(ExplicitPadding, @"explicit_padding", v42, v41);
    if (v43)
    {
      [v17 addObject:v43];
    }
  }

  LOBYTE(v64) = mlir::mps::PoolAvgGradientOp::getCeilMode(&v63);
  v44 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"ceil_mode" dataType:2147483656 shape:&unk_2868B0058];
  if (v44)
  {
    v45 = [MEMORY[0x277CBEA90] dataWithBytes:&v64 length:1];
    [(MLViewerNodePropertyDataSPI *)v44 setValue:v45];

    [v17 addObject:v44];
  }

  IncludeZeroPad = mlir::mps::PoolAvgGradientOp::getIncludeZeroPad(&v63);
  v46 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"include_zero_pad" dataType:2147483656 shape:&unk_2868B0070];
  if (v46)
  {
    v47 = [MEMORY[0x277CBEA90] dataWithBytes:&IncludeZeroPad length:1];
    [(MLViewerNodePropertyDataSPI *)v46 setValue:v47];

    [v17 addObject:v46];
  }

  v48 = [MEMORY[0x277CBEB18] array];
  v49 = [MLViewerNodeSPI alloc];
  v50 = [MEMORY[0x277CBEA60] arrayWithArray:v59];
  v51 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v52 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v53 = [MEMORY[0x277CBEA60] arrayWithArray:v48];
  v54 = [(MLViewerNodeSPI *)v49 initWithType:v58 inputs:v50 outputs:v51 properties:v52 regions:v53];
  v55 = *(this + 3);
  *(this + 3) = v54;

  v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"Computes the gradient backpropagation for the pooling operation in four dimensions. If indices are provided, then output_shape should be provided too and input should not be provided. If input is provided, then indices and output_shape should not be provided."}];
  [*(this + 3) setLocalizedDescription:v56];

  if (v62 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563FFAD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPoolAvgOpHandler *EmitterViewerSPI::MPSPoolAvgOpHandler::MPSPoolAvgOpHandler(EmitterViewerSPI::MPSPoolAvgOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859158;
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

  v56 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v61 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v57 = [MEMORY[0x277CBEB18] array];
  if (*(v61 + 9))
  {
    v12 = v61 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v14 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v14)
  {
    [v57 addObject:v14];
  }

  v15 = [MEMORY[0x277CBEB18] array];
  WindowSizes = mlir::mps::PoolAvgOp::getWindowSizes(&v61);
  v17 = WindowSizes;
  if (WindowSizes)
  {
    WindowSizes = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*WindowSizes + 8);
    v18 = WindowSizes;
  }

  else
  {
    v18 = 0;
  }

  v19 = EmitViewerSPI::emitElementsAttrProperty(WindowSizes, @"window_sizes", v17, v18);
  if (v19)
  {
    [v15 addObject:v19];
  }

  Strides = mlir::mps::PoolAvgOp::getStrides(&v61);
  v21 = Strides;
  if (Strides)
  {
    Strides = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    v22 = Strides;
  }

  else
  {
    v22 = 0;
  }

  v23 = EmitViewerSPI::emitElementsAttrProperty(Strides, @"strides", v21, v22);
  if (v23)
  {
    [v15 addObject:v23];
  }

  DilationRates = mlir::mps::PoolAvgOp::getDilationRates(&v61);
  v25 = DilationRates;
  if (DilationRates)
  {
    DilationRates = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DilationRates + 8);
    v26 = DilationRates;
  }

  else
  {
    v26 = 0;
  }

  v27 = EmitViewerSPI::emitElementsAttrProperty(DilationRates, @"dilation_rates", v25, v26);
  if (v27)
  {
    [v15 addObject:v27];
  }

  PaddingStyle = mlir::mps::PoolAvgOp::getPaddingStyle(&v61);
  v29 = [MEMORY[0x277CBEB18] array];
  v30 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v29 addObject:v30];

  v31 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v29 addObject:v31];

  v32 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v29 addObject:v32];

  v33 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v29 addObject:v33];

  v34 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v29 addObject:v34];

  v35 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v29 value:PaddingStyle];
  if (v35)
  {
    [v15 addObject:v35];
  }

  ExplicitPadding = mlir::mps::PoolAvgOp::getExplicitPadding(&v61);
  if (v37)
  {
    if (ExplicitPadding)
    {
      v38 = ExplicitPadding;
      ExplicitPadding = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
      v39 = ExplicitPadding;
      v40 = v38;
    }

    else
    {
      v40 = 0;
      v39 = 0;
    }

    v41 = EmitViewerSPI::emitElementsAttrProperty(ExplicitPadding, @"explicit_padding", v40, v39);
    if (v41)
    {
      [v15 addObject:v41];
    }
  }

  LOBYTE(v62) = mlir::mps::PoolAvgOp::getCeilMode(&v61);
  v42 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"ceil_mode" dataType:2147483656 shape:&unk_2868B0088];
  if (v42)
  {
    v43 = [MEMORY[0x277CBEA90] dataWithBytes:&v62 length:1];
    [(MLViewerNodePropertyDataSPI *)v42 setValue:v43];

    [v15 addObject:v42];
  }

  IncludeZeroPad = mlir::mps::PoolAvgOp::getIncludeZeroPad(&v61);
  v44 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"include_zero_pad" dataType:2147483656 shape:&unk_2868B00A0];
  if (v44)
  {
    v45 = [MEMORY[0x277CBEA90] dataWithBytes:&IncludeZeroPad length:1];
    [(MLViewerNodePropertyDataSPI *)v44 setValue:v45];

    [v15 addObject:v44];
  }

  v46 = [MEMORY[0x277CBEB18] array];
  v47 = [MLViewerNodeSPI alloc];
  v48 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v49 = [MEMORY[0x277CBEA60] arrayWithArray:v57];
  v50 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v51 = [MEMORY[0x277CBEA60] arrayWithArray:v46];
  v52 = [(MLViewerNodeSPI *)v47 initWithType:v56 inputs:v48 outputs:v49 properties:v50 regions:v51];
  v53 = *(this + 3);
  *(this + 3) = v52;
  v54 = ;
  [*(this + 3) setLocalizedDescription:v54];

  if (v60 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256400310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPoolL2NormGradientOpHandler *EmitterViewerSPI::MPSPoolL2NormGradientOpHandler::MPSPoolL2NormGradientOpHandler(EmitterViewerSPI::MPSPoolL2NormGradientOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859170;
  v5 = *(*(a3 + 6) + 8);
  v63 = a3;
  v64 = v5;
  Value = mlir::StringAttr::getValue(&v64);
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

  v62 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v62 >= 0)
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v63 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v63 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(v63 + 9))
  {
    v14 = v63 - 16;
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
  WindowSizes = mlir::mps::PoolL2NormGradientOp::getWindowSizes(&v63);
  v19 = WindowSizes;
  if (WindowSizes)
  {
    WindowSizes = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*WindowSizes + 8);
    v20 = WindowSizes;
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(WindowSizes, @"window_sizes", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  Strides = mlir::mps::PoolL2NormGradientOp::getStrides(&v63);
  v23 = Strides;
  if (Strides)
  {
    Strides = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    v24 = Strides;
  }

  else
  {
    v24 = 0;
  }

  v25 = EmitViewerSPI::emitElementsAttrProperty(Strides, @"strides", v23, v24);
  if (v25)
  {
    [v17 addObject:v25];
  }

  DilationRates = mlir::mps::PoolL2NormGradientOp::getDilationRates(&v63);
  v27 = DilationRates;
  if (DilationRates)
  {
    DilationRates = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DilationRates + 8);
    v28 = DilationRates;
  }

  else
  {
    v28 = 0;
  }

  v29 = EmitViewerSPI::emitElementsAttrProperty(DilationRates, @"dilation_rates", v27, v28);
  if (v29)
  {
    [v17 addObject:v29];
  }

  PaddingStyle = mlir::mps::PoolL2NormGradientOp::getPaddingStyle(&v63);
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

  ExplicitPadding = mlir::mps::PoolL2NormGradientOp::getExplicitPadding(&v63);
  if (v39)
  {
    if (ExplicitPadding)
    {
      v40 = ExplicitPadding;
      ExplicitPadding = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
      v41 = ExplicitPadding;
      v42 = v40;
    }

    else
    {
      v42 = 0;
      v41 = 0;
    }

    v43 = EmitViewerSPI::emitElementsAttrProperty(ExplicitPadding, @"explicit_padding", v42, v41);
    if (v43)
    {
      [v17 addObject:v43];
    }
  }

  LOBYTE(v64) = mlir::mps::PoolL2NormGradientOp::getCeilMode(&v63);
  v44 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"ceil_mode" dataType:2147483656 shape:&unk_2868B00B8];
  if (v44)
  {
    v45 = [MEMORY[0x277CBEA90] dataWithBytes:&v64 length:1];
    [(MLViewerNodePropertyDataSPI *)v44 setValue:v45];

    [v17 addObject:v44];
  }

  IncludeZeroPad = mlir::mps::PoolL2NormGradientOp::getIncludeZeroPad(&v63);
  v46 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"include_zero_pad" dataType:2147483656 shape:&unk_2868B00D0];
  if (v46)
  {
    v47 = [MEMORY[0x277CBEA90] dataWithBytes:&IncludeZeroPad length:1];
    [(MLViewerNodePropertyDataSPI *)v46 setValue:v47];

    [v17 addObject:v46];
  }

  v48 = [MEMORY[0x277CBEB18] array];
  v49 = [MLViewerNodeSPI alloc];
  v50 = [MEMORY[0x277CBEA60] arrayWithArray:v59];
  v51 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v52 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v53 = [MEMORY[0x277CBEA60] arrayWithArray:v48];
  v54 = [(MLViewerNodeSPI *)v49 initWithType:v58 inputs:v50 outputs:v51 properties:v52 regions:v53];
  v55 = *(this + 3);
  *(this + 3) = v54;

  v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"Computes the gradient backpropagation for the pooling operation in four dimensions. If indices are provided, then output_shape should be provided too and input should not be provided. If input is provided, then indices and output_shape should not be provided."}];
  [*(this + 3) setLocalizedDescription:v56];

  if (v62 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256400B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPoolL2NormOpHandler *EmitterViewerSPI::MPSPoolL2NormOpHandler::MPSPoolL2NormOpHandler(EmitterViewerSPI::MPSPoolL2NormOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859188;
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

  v56 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v61 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v57 = [MEMORY[0x277CBEB18] array];
  if (*(v61 + 9))
  {
    v12 = v61 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v14 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v14)
  {
    [v57 addObject:v14];
  }

  v15 = [MEMORY[0x277CBEB18] array];
  WindowSizes = mlir::mps::PoolL2NormOp::getWindowSizes(&v61);
  v17 = WindowSizes;
  if (WindowSizes)
  {
    WindowSizes = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*WindowSizes + 8);
    v18 = WindowSizes;
  }

  else
  {
    v18 = 0;
  }

  v19 = EmitViewerSPI::emitElementsAttrProperty(WindowSizes, @"window_sizes", v17, v18);
  if (v19)
  {
    [v15 addObject:v19];
  }

  Strides = mlir::mps::PoolL2NormOp::getStrides(&v61);
  v21 = Strides;
  if (Strides)
  {
    Strides = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    v22 = Strides;
  }

  else
  {
    v22 = 0;
  }

  v23 = EmitViewerSPI::emitElementsAttrProperty(Strides, @"strides", v21, v22);
  if (v23)
  {
    [v15 addObject:v23];
  }

  DilationRates = mlir::mps::PoolL2NormOp::getDilationRates(&v61);
  v25 = DilationRates;
  if (DilationRates)
  {
    DilationRates = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DilationRates + 8);
    v26 = DilationRates;
  }

  else
  {
    v26 = 0;
  }

  v27 = EmitViewerSPI::emitElementsAttrProperty(DilationRates, @"dilation_rates", v25, v26);
  if (v27)
  {
    [v15 addObject:v27];
  }

  PaddingStyle = mlir::mps::PoolL2NormOp::getPaddingStyle(&v61);
  v29 = [MEMORY[0x277CBEB18] array];
  v30 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v29 addObject:v30];

  v31 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v29 addObject:v31];

  v32 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v29 addObject:v32];

  v33 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v29 addObject:v33];

  v34 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v29 addObject:v34];

  v35 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v29 value:PaddingStyle];
  if (v35)
  {
    [v15 addObject:v35];
  }

  ExplicitPadding = mlir::mps::PoolL2NormOp::getExplicitPadding(&v61);
  if (v37)
  {
    if (ExplicitPadding)
    {
      v38 = ExplicitPadding;
      ExplicitPadding = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
      v39 = ExplicitPadding;
      v40 = v38;
    }

    else
    {
      v40 = 0;
      v39 = 0;
    }

    v41 = EmitViewerSPI::emitElementsAttrProperty(ExplicitPadding, @"explicit_padding", v40, v39);
    if (v41)
    {
      [v15 addObject:v41];
    }
  }

  LOBYTE(v62) = mlir::mps::PoolL2NormOp::getCeilMode(&v61);
  v42 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"ceil_mode" dataType:2147483656 shape:&unk_2868B00E8];
  if (v42)
  {
    v43 = [MEMORY[0x277CBEA90] dataWithBytes:&v62 length:1];
    [(MLViewerNodePropertyDataSPI *)v42 setValue:v43];

    [v15 addObject:v42];
  }

  IncludeZeroPad = mlir::mps::PoolL2NormOp::getIncludeZeroPad(&v61);
  v44 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"include_zero_pad" dataType:2147483656 shape:&unk_2868B0100];
  if (v44)
  {
    v45 = [MEMORY[0x277CBEA90] dataWithBytes:&IncludeZeroPad length:1];
    [(MLViewerNodePropertyDataSPI *)v44 setValue:v45];

    [v15 addObject:v44];
  }

  v46 = [MEMORY[0x277CBEB18] array];
  v47 = [MLViewerNodeSPI alloc];
  v48 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v49 = [MEMORY[0x277CBEA60] arrayWithArray:v57];
  v50 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v51 = [MEMORY[0x277CBEA60] arrayWithArray:v46];
  v52 = [(MLViewerNodeSPI *)v47 initWithType:v56 inputs:v48 outputs:v49 properties:v50 regions:v51];
  v53 = *(this + 3);
  *(this + 3) = v52;
  v54 = ;
  [*(this + 3) setLocalizedDescription:v54];

  if (v60 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2564013B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPoolMaxGradientOpHandler *EmitterViewerSPI::MPSPoolMaxGradientOpHandler::MPSPoolMaxGradientOpHandler(EmitterViewerSPI::MPSPoolMaxGradientOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868591A0;
  v5 = *(*(a3 + 6) + 8);
  v87 = a3;
  v88 = v5;
  Value = mlir::StringAttr::getValue(&v88);
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

  v81 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v82 = v10;
  ODSOperandIndexAndLength = mlir::mps::PoolMaxGradientOp::getODSOperandIndexAndLength(&v87, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v87 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::PoolMaxGradientOp::getODSOperandIndexAndLength(&v87, 1u);
  if ((*(v87 + 46) & 0x80) != 0)
  {
    v14 = *(v87 + 9);
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

  v16 = EmitViewerSPI::emitNodeInputPort(a2, @"input", v15);
  if (v16)
  {
    [v10 addObject:v16];
  }

  v17 = mlir::mps::PoolMaxGradientOp::getODSOperandIndexAndLength(&v87, 2u);
  if ((*(v87 + 46) & 0x80) != 0)
  {
    v18 = *(v87 + 9);
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v17) + v17 == v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(v18 + 32 * v17 + 24);
  }

  v20 = EmitViewerSPI::emitNodeInputPort(a2, @"indices", v19);
  if (v20)
  {
    [v10 addObject:v20];
  }

  v21 = mlir::mps::PoolMaxGradientOp::getODSOperandIndexAndLength(&v87, 3u);
  if ((*(v87 + 46) & 0x80) != 0)
  {
    v22 = *(v87 + 9);
  }

  else
  {
    v22 = 0;
  }

  if (HIDWORD(v21) + v21 == v21)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(v22 + 32 * v21 + 24);
  }

  v24 = EmitViewerSPI::emitNodeInputPort(a2, @"output_shape", v23);
  if (v24)
  {
    [v10 addObject:v24];
  }

  v83 = [MEMORY[0x277CBEB18] array];
  if (*(v87 + 9))
  {
    v25 = v87 - 16;
  }

  else
  {
    v25 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0);
  v27 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v27)
  {
    [v83 addObject:v27];
  }

  v28 = [MEMORY[0x277CBEB18] array];
  WindowSizes = mlir::mps::PoolMaxGradientOp::getWindowSizes(&v87);
  v30 = WindowSizes;
  if (WindowSizes)
  {
    WindowSizes = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*WindowSizes + 8);
    v31 = WindowSizes;
  }

  else
  {
    v31 = 0;
  }

  v32 = EmitViewerSPI::emitElementsAttrProperty(WindowSizes, @"window_sizes", v30, v31);
  v80 = v32;
  if (v32)
  {
    [v28 addObject:v32];
  }

  Strides = mlir::mps::PoolMaxGradientOp::getStrides(&v87);
  v34 = Strides;
  if (Strides)
  {
    Strides = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    v35 = Strides;
  }

  else
  {
    v35 = 0;
  }

  v36 = EmitViewerSPI::emitElementsAttrProperty(Strides, @"strides", v34, v35);
  if (v36)
  {
    [v28 addObject:v36];
  }

  DilationRates = mlir::mps::PoolMaxGradientOp::getDilationRates(&v87);
  v38 = DilationRates;
  if (DilationRates)
  {
    DilationRates = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DilationRates + 8);
    v39 = DilationRates;
  }

  else
  {
    v39 = 0;
  }

  v40 = EmitViewerSPI::emitElementsAttrProperty(DilationRates, @"dilation_rates", v38, v39);
  if (v40)
  {
    [v28 addObject:v40];
  }

  PaddingStyle = mlir::mps::PoolMaxGradientOp::getPaddingStyle(&v87);
  v42 = [MEMORY[0x277CBEB18] array];
  v43 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v42 addObject:v43];

  v44 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v42 addObject:v44];

  v45 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v42 addObject:v45];

  v46 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v42 addObject:v46];

  v47 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v42 addObject:v47];

  v48 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v42 value:PaddingStyle];
  if (v48)
  {
    [v28 addObject:v48];
  }

  ExplicitPadding = mlir::mps::PoolMaxGradientOp::getExplicitPadding(&v87);
  if (v50)
  {
    if (ExplicitPadding)
    {
      v51 = ExplicitPadding;
      ExplicitPadding = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
      v52 = ExplicitPadding;
      v53 = v51;
    }

    else
    {
      v53 = 0;
      v52 = 0;
    }

    v54 = EmitViewerSPI::emitElementsAttrProperty(ExplicitPadding, @"explicit_padding", v53, v52);
    if (v54)
    {
      [v28 addObject:v54];
    }
  }

  LOBYTE(v88) = mlir::mps::PoolMaxGradientOp::getCeilMode(&v87);
  v55 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"ceil_mode" dataType:2147483656 shape:&unk_2868B0118];
  if (v55)
  {
    v56 = [MEMORY[0x277CBEA90] dataWithBytes:&v88 length:1];
    [(MLViewerNodePropertyDataSPI *)v55 setValue:v56];

    [v28 addObject:v55];
  }

  IncludeZeroPad = mlir::mps::PoolMaxGradientOp::getIncludeZeroPad(&v87);
  v57 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"include_zero_pad" dataType:2147483656 shape:&unk_2868B0130];
  if (v57)
  {
    v58 = [MEMORY[0x277CBEA90] dataWithBytes:&IncludeZeroPad length:1];
    [(MLViewerNodePropertyDataSPI *)v57 setValue:v58];

    [v28 addObject:v57];
  }

  IndicesMode = mlir::mps::PoolMaxGradientOp::getIndicesMode(&v87);
  v60 = [MEMORY[0x277CBEB18] array];
  v61 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Global_Flatten1D" value:0];
  [v60 addObject:v61];

  v62 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Global_Flatten2D" value:1];
  [v60 addObject:v62];

  v63 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Global_Flatten3D" value:2];
  [v60 addObject:v63];

  v64 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Global_Flatten4D" value:3];
  [v60 addObject:v64];

  v65 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Local_Flatten1D" value:4];
  [v60 addObject:v65];

  v66 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Local_Flatten2D" value:5];
  [v60 addObject:v66];

  v67 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Local_Flatten3D" value:6];
  [v60 addObject:v67];

  v68 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Local_Flatten4D" value:7];
  [v60 addObject:v68];

  v69 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"indices_mode" type:@"MPSPoolIndicesMode" cases:v60 value:IndicesMode];
  if (v69)
  {
    [v28 addObject:v69];
  }

  mlir::mps::PoolMaxGradientOp::getIndicesResultType(&v87);
  v70 = [MEMORY[0x277CBEB18] array];
  v71 = [MLViewerNodeSPI alloc];
  v72 = [MEMORY[0x277CBEA60] arrayWithArray:v82];
  v73 = [MEMORY[0x277CBEA60] arrayWithArray:v83];
  v74 = [MEMORY[0x277CBEA60] arrayWithArray:v28];
  v75 = [MEMORY[0x277CBEA60] arrayWithArray:v70];
  v76 = [(MLViewerNodeSPI *)v71 initWithType:v81 inputs:v72 outputs:v73 properties:v74 regions:v75];
  v77 = *(this + 3);
  *(this + 3) = v76;

  v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"Computes the gradient backpropagation for the pooling operation in four dimensions. If indices are provided, then output_shape should be provided too and input should not be provided. If input is provided, then indices and output_shape should not be provided."}];
  [*(this + 3) setLocalizedDescription:v78];

  if (v86 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256401F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, void *a12, void *a13, void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPoolMaxOpHandler *EmitterViewerSPI::MPSPoolMaxOpHandler::MPSPoolMaxOpHandler(EmitterViewerSPI::MPSPoolMaxOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868591B8;
  v5 = *(*(a3 + 6) + 8);
  v79 = a3;
  v80 = v5;
  Value = mlir::StringAttr::getValue(&v80);
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

  v78 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v78 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v74 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v75 = [MEMORY[0x277CBEB18] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v79 + 9) + 24));
  if (v10)
  {
    [v75 addObject:v10];
  }

  v11 = [MEMORY[0x277CBEB18] array];
  if (*(v79 + 9))
  {
    v12 = v79 - 16;
  }

  else
  {
    v12 = 0;
  }

  v73 = v11;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v14 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v14)
  {
    [v11 addObject:v14];
  }

  if (*(v79 + 9))
  {
    v15 = v79 - 16;
  }

  else
  {
    v15 = 0;
  }

  v16 = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 1);
  v17 = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
  v18 = EmitViewerSPI::emitNodeOutputPort(a2, @"indices", v17);
  if (v18)
  {
    [v11 addObject:v18];
  }

  v19 = [MEMORY[0x277CBEB18] array];
  WindowSizes = mlir::mps::PoolMaxOp::getWindowSizes(&v79);
  v21 = WindowSizes;
  if (WindowSizes)
  {
    WindowSizes = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*WindowSizes + 8);
    v22 = WindowSizes;
  }

  else
  {
    v22 = 0;
  }

  v23 = EmitViewerSPI::emitElementsAttrProperty(WindowSizes, @"window_sizes", v21, v22);
  v72 = v23;
  if (v23)
  {
    [v19 addObject:v23];
  }

  Strides = mlir::mps::PoolMaxOp::getStrides(&v79);
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
  v71 = v27;
  if (v27)
  {
    [v19 addObject:v27];
  }

  DilationRates = mlir::mps::PoolMaxOp::getDilationRates(&v79);
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
    [v19 addObject:v31];
  }

  PaddingStyle = mlir::mps::PoolMaxOp::getPaddingStyle(&v79);
  v33 = [MEMORY[0x277CBEB18] array];
  v34 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v33 addObject:v34];

  v35 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v33 addObject:v35];

  v36 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v33 addObject:v36];

  v37 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v33 addObject:v37];

  v38 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v33 addObject:v38];

  v39 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v33 value:PaddingStyle];
  if (v39)
  {
    [v19 addObject:v39];
  }

  ExplicitPadding = mlir::mps::PoolMaxOp::getExplicitPadding(&v79);
  if (v41)
  {
    if (ExplicitPadding)
    {
      v42 = ExplicitPadding;
      ExplicitPadding = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
      v43 = ExplicitPadding;
      v44 = v42;
    }

    else
    {
      v44 = 0;
      v43 = 0;
    }

    v45 = EmitViewerSPI::emitElementsAttrProperty(ExplicitPadding, @"explicit_padding", v44, v43);
    if (v45)
    {
      [v19 addObject:v45];
    }
  }

  LOBYTE(v80) = mlir::mps::PoolMaxOp::getCeilMode(&v79);
  v46 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"ceil_mode" dataType:2147483656 shape:&unk_2868B0148];
  if (v46)
  {
    v47 = [MEMORY[0x277CBEA90] dataWithBytes:&v80 length:1];
    [(MLViewerNodePropertyDataSPI *)v46 setValue:v47];

    [v19 addObject:v46];
  }

  IncludeZeroPad = mlir::mps::PoolMaxOp::getIncludeZeroPad(&v79);
  v48 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"include_zero_pad" dataType:2147483656 shape:&unk_2868B0160];
  if (v48)
  {
    v49 = [MEMORY[0x277CBEA90] dataWithBytes:&IncludeZeroPad length:1];
    [(MLViewerNodePropertyDataSPI *)v48 setValue:v49];

    [v19 addObject:v48];
  }

  IndicesMode = mlir::mps::PoolMaxOp::getIndicesMode(&v79);
  v51 = [MEMORY[0x277CBEB18] array];
  v52 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Global_Flatten1D" value:0];
  [v51 addObject:v52];

  v53 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Global_Flatten2D" value:1];
  [v51 addObject:v53];

  v54 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Global_Flatten3D" value:2];
  [v51 addObject:v54];

  v55 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Global_Flatten4D" value:3];
  [v51 addObject:v55];

  v56 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Local_Flatten1D" value:4];
  [v51 addObject:v56];

  v57 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Local_Flatten2D" value:5];
  [v51 addObject:v57];

  v58 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Local_Flatten3D" value:6];
  [v51 addObject:v58];

  v59 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Local_Flatten4D" value:7];
  [v51 addObject:v59];

  v60 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"indices_mode" type:@"MPSPoolIndicesMode" cases:v51 value:IndicesMode];
  if (v60)
  {
    [v19 addObject:v60];
  }

  mlir::mps::PoolMaxOp::getIndicesResultType(&v79);
  v61 = [MEMORY[0x277CBEB18] array];
  v62 = [MLViewerNodeSPI alloc];
  v63 = [MEMORY[0x277CBEA60] arrayWithArray:v75];
  v64 = [MEMORY[0x277CBEA60] arrayWithArray:v73];
  v65 = [MEMORY[0x277CBEA60] arrayWithArray:v19];
  v66 = [MEMORY[0x277CBEA60] arrayWithArray:v61];
  v67 = [(MLViewerNodeSPI *)v62 initWithType:v74 inputs:v63 outputs:v64 properties:v65 regions:v66];
  v68 = *(this + 3);
  *(this + 3) = v67;
  v69 = ;
  [*(this + 3) setLocalizedDescription:v69];

  if (v78 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256402A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPowerOpHandler *EmitterViewerSPI::MPSPowerOpHandler::MPSPowerOpHandler(EmitterViewerSPI::MPSPowerOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868591D0;
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

void sub_256402FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPruningGradientOpHandler *EmitterViewerSPI::MPSPruningGradientOpHandler::MPSPruningGradientOpHandler(EmitterViewerSPI::MPSPruningGradientOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  v46[3] = *MEMORY[0x277D85DE8];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868591E8;
  v5 = *(*(a3 + 6) + 8);
  v44 = a3;
  v45 = v5;
  Value = mlir::StringAttr::getValue(&v45);
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

  v43 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v43 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v41 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v44 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"incoming_gradient", *(*(v44 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(v44 + 9))
  {
    v14 = v44 - 16;
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
  PruningMetric = mlir::mps::PruningGradientOp::getPruningMetric(&v44);
  v19 = [MEMORY[0x277CBEB18] array];
  v20 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"magnitude_pruning" value:0];
  [v19 addObject:v20];

  v21 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"pruning_metric" type:@"MPSPruningMetric" cases:v19 value:PruningMetric];
  if (v21)
  {
    [v17 addObject:v21];
  }

  PruningStructure = mlir::mps::PruningGradientOp::getPruningStructure(&v44);
  v23 = [MEMORY[0x277CBEB18] array];
  v24 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"random_pruning" value:0];
  [v23 addObject:v24];

  v25 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"block_1d_2_4_pruning" value:1];
  [v23 addObject:v25];

  v26 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"pruning_structure" type:@"MPSPruningStructure" cases:v23 value:PruningStructure];
  if (v26)
  {
    [v17 addObject:v26];
  }

  mlir::mps::PruningGradientOp::getSparsity(&v44, &v45);
  v27 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"sparsity" dataType:268435488 shape:&unk_2868B0178];
  if (v27)
  {
    v28 = [MEMORY[0x277CBEA90] dataWithBytes:&v45 length:32];
    [(MLViewerNodePropertyDataSPI *)v27 setValue:v28];

    [v17 addObject:v27];
  }

  v29 = v46[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v30) == v29)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v46);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v46);
  }

  v31 = [MEMORY[0x277CBEB18] array];
  v32 = [MLViewerNodeSPI alloc];
  v33 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v34 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v35 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v36 = [MEMORY[0x277CBEA60] arrayWithArray:v31];
  v37 = [(MLViewerNodeSPI *)v32 initWithType:v41 inputs:v33 outputs:v34 properties:v35 regions:v36];
  v38 = *(this + 3);
  *(this + 3) = v37;

  v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"Gradient of prune tensor. Computed based on a pruning metric, a target sparsity and a pruning structure."}];
  [*(this + 3) setLocalizedDescription:v39];

  if (v43 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2564035D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19)
{
  llvm::APFloat::~APFloat(&a19);

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSPruningOpHandler *EmitterViewerSPI::MPSPruningOpHandler::MPSPruningOpHandler(EmitterViewerSPI::MPSPruningOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  v45[3] = *MEMORY[0x277D85DE8];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859200;
  v5 = *(*(a3 + 6) + 8);
  v43 = a3;
  v44 = v5;
  Value = mlir::StringAttr::getValue(&v44);
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

  v42 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v42 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v40 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v43 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(v43 + 9))
  {
    v13 = v43 - 16;
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
  PruningMetric = mlir::mps::PruningOp::getPruningMetric(&v43);
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"magnitude_pruning" value:0];
  [v18 addObject:v19];

  v20 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"pruning_metric" type:@"MPSPruningMetric" cases:v18 value:PruningMetric];
  if (v20)
  {
    [v16 addObject:v20];
  }

  PruningStructure = mlir::mps::PruningOp::getPruningStructure(&v43);
  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"random_pruning" value:0];
  [v22 addObject:v23];

  v24 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"block_1d_2_4_pruning" value:1];
  [v22 addObject:v24];

  v25 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"pruning_structure" type:@"MPSPruningStructure" cases:v22 value:PruningStructure];
  if (v25)
  {
    [v16 addObject:v25];
  }

  mlir::mps::PruningOp::getSparsity(&v43, &v44);
  v26 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"sparsity" dataType:268435488 shape:&unk_2868B0190];
  if (v26)
  {
    v27 = [MEMORY[0x277CBEA90] dataWithBytes:&v44 length:32];
    [(MLViewerNodePropertyDataSPI *)v26 setValue:v27];

    [v16 addObject:v26];
  }

  v28 = v45[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v29) == v28)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v45);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v45);
  }

  v30 = [MEMORY[0x277CBEB18] array];
  v31 = [MLViewerNodeSPI alloc];
  v32 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v33 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v34 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v35 = [MEMORY[0x277CBEA60] arrayWithArray:v30];
  v36 = [(MLViewerNodeSPI *)v31 initWithType:v40 inputs:v32 outputs:v33 properties:v34 regions:v35];
  v37 = *(this + 3);
  *(this + 3) = v36;

  v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"Prune a tensor based on a pruning metric, a target sparsity and a pruning structure."}];
  [*(this + 3) setLocalizedDescription:v38];

  if (v42 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256403C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  llvm::APFloat::~APFloat(&a17);

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSQuantizeOpHandler *EmitterViewerSPI::MPSQuantizeOpHandler::MPSQuantizeOpHandler(EmitterViewerSPI::MPSQuantizeOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859218;
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

  v33 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v36 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"scale", *(*(v36 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"zero_point", *(*(v36 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = [MEMORY[0x277CBEB18] array];
  if (*(v36 + 9))
  {
    v15 = v36 - 16;
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
  mlir::mps::QuantizeOp::getDtype(&v36);
  Axis = mlir::mps::QuantizeOp::getAxis(&v36);
  LODWORD(v37) = Axis;
  BYTE4(v37) = BYTE4(Axis);
  if ((Axis & 0x100000000) != 0)
  {
    v20 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"axis" dataType:536870944 shape:&unk_2868B01A8];
    if (v20)
    {
      if ((v37 & 0x100000000) == 0)
      {
        v32 = std::__throw_bad_optional_access[abi:nn200100]();

        if (v35 < 0)
        {
          operator delete(__dst);
        }

        _Unwind_Resume(v32);
      }

      v21 = [MEMORY[0x277CBEA90] dataWithBytes:&v37 length:8];
      [(MLViewerNodePropertyDataSPI *)v20 setValue:v21];

      [v18 addObject:v20];
    }
  }

  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MLViewerNodeSPI alloc];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v28 = [(MLViewerNodeSPI *)v23 initWithType:v33 inputs:v24 outputs:v25 properties:v26 regions:v27];
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

EmitterViewerSPI::MPSRandomNormalOpHandler *EmitterViewerSPI::MPSRandomNormalOpHandler::MPSRandomNormalOpHandler(EmitterViewerSPI::MPSRandomNormalOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  v41[3] = *MEMORY[0x277D85DE8];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859230;
  v37 = a3;
  v40 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v40);
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

  v34 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"state", *(*(v37 + 9) + 24));
  if (v10)
  {
    [v9 addObject:v10];
  }

  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"shape", *(*(v37 + 9) + 56));
  if (v11)
  {
    [v9 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(v37 + 9))
  {
    v13 = v37 - 16;
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
  mlir::mps::RandomNormalOp::getResultElementType(&v37);
  mlir::mps::RandomNormalOp::getMean(&v37, &v40);
  v17 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"mean" dataType:268435488 shape:&unk_2868B01C0];
  if (v17)
  {
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:&v40 length:32];
    [(MLViewerNodePropertyDataSPI *)v17 setValue:v18];

    [v16 addObject:v17];
  }

  mlir::mps::RandomNormalOp::getStdDev(&v37, v38);
  v19 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"std_dev" dataType:268435488 shape:&unk_2868B01D8];
  if (v19)
  {
    v20 = [MEMORY[0x277CBEA90] dataWithBytes:v38 length:32];
    [(MLViewerNodePropertyDataSPI *)v19 setValue:v20];

    [v16 addObject:v19];
  }

  mlir::mps::RandomNormalOp::getSamplingMethod(&v37);

  v21 = v39[0];
  v23 = llvm::APFloatBase::PPCDoubleDouble(v22);
  if (v23 == v21)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v39);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v39);
  }

  if (v23 == v41[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v41);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v41);
  }

  v24 = [MEMORY[0x277CBEB18] array];
  v25 = [MLViewerNodeSPI alloc];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
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

void sub_2564047BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  llvm::APFloat::~APFloat(&a17);

  llvm::APFloat::~APFloat(&a21);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSRandomTruncatedNormalOpHandler *EmitterViewerSPI::MPSRandomTruncatedNormalOpHandler::MPSRandomTruncatedNormalOpHandler(EmitterViewerSPI::MPSRandomTruncatedNormalOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  v49[3] = *MEMORY[0x277D85DE8];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859248;
  v41 = a3;
  v48 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v48);
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

  v40 = v6;
  if (v6)
  {
    memmove(&__dst, Value, v6);
  }

  *(&__dst + v7) = 0;
  if (v40 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v37 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v38 = [MEMORY[0x277CBEB18] array];
  v9 = EmitViewerSPI::emitNodeInputPort(a2, @"state", *(*(v41 + 9) + 24));
  if (v9)
  {
    [v38 addObject:v9];
  }

  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"shape", *(*(v41 + 9) + 56));
  if (v10)
  {
    [v38 addObject:v10];
  }

  v11 = [MEMORY[0x277CBEB18] array];
  if (*(v41 + 9))
  {
    v12 = v41 - 16;
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
  mlir::mps::RandomTruncatedNormalOp::getResultElementType(&v41);
  mlir::mps::RandomTruncatedNormalOp::getMean(&v41, &v48);
  v16 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"mean" dataType:268435488 shape:&unk_2868B01F0];
  if (v16)
  {
    v17 = [MEMORY[0x277CBEA90] dataWithBytes:&v48 length:32];
    [(MLViewerNodePropertyDataSPI *)v16 setValue:v17];

    [v15 addObject:v16];
  }

  mlir::mps::RandomTruncatedNormalOp::getStdDev(&v41, v46);
  v18 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"std_dev" dataType:268435488 shape:&unk_2868B0208];
  if (v18)
  {
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:v46 length:32];
    [(MLViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v15 addObject:v18];
  }

  mlir::mps::RandomTruncatedNormalOp::getMinimum(&v41, v44);
  v20 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"minimum" dataType:268435488 shape:&unk_2868B0220];
  if (v20)
  {
    v21 = [MEMORY[0x277CBEA90] dataWithBytes:v44 length:32];
    [(MLViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v15 addObject:v20];
  }

  mlir::mps::RandomTruncatedNormalOp::getMaximum(&v41, v42);
  v22 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"maximum" dataType:268435488 shape:&unk_2868B0238];
  if (v22)
  {
    v23 = [MEMORY[0x277CBEA90] dataWithBytes:v42 length:32];
    [(MLViewerNodePropertyDataSPI *)v22 setValue:v23];

    [v15 addObject:v22];
  }

  mlir::mps::RandomTruncatedNormalOp::getSamplingMethod(&v41);

  v24 = v43[0];
  v26 = llvm::APFloatBase::PPCDoubleDouble(v25);
  if (v26 == v24)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v43);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v43);
  }

  if (v26 == v45[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v45);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v45);
  }

  if (v26 == v47[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v47);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v47);
  }

  if (v26 == v49[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v49);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v49);
  }

  v27 = [MEMORY[0x277CBEB18] array];
  v28 = [MLViewerNodeSPI alloc];
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v38];
  v30 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v31 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v32 = [MEMORY[0x277CBEA60] arrayWithArray:v27];
  v33 = [(MLViewerNodeSPI *)v28 initWithType:v37 inputs:v29 outputs:v30 properties:v31 regions:v32];
  v34 = *(this + 3);
  *(this + 3) = v33;
  v35 = ;
  [*(this + 3) setLocalizedDescription:v35];

  if (v40 < 0)
  {
    operator delete(__dst);
  }

  return this;
}