void sub_256404ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  llvm::APFloat::~APFloat(&a18);

  llvm::APFloat::~APFloat(&a22);
  llvm::APFloat::~APFloat(&a26);

  llvm::APFloat::~APFloat((v34 - 128));
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSRandomUniformOpHandler *EmitterViewerSPI::MPSRandomUniformOpHandler::MPSRandomUniformOpHandler(EmitterViewerSPI::MPSRandomUniformOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859260;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"state", *(*(v33 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"shape", *(*(v33 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"minimum", *(*(v33 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"maximum", *(*(v33 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = [MEMORY[0x277CBEB18] array];
  if (*(v33 + 9))
  {
    v16 = v33 - 16;
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
  mlir::mps::RandomUniformOp::getResultElementType(&v33);
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

void sub_256405440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSRankOpHandler *EmitterViewerSPI::MPSRankOpHandler::MPSRankOpHandler(EmitterViewerSPI::MPSRankOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859278;
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

  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"This op computes the rank of the input tensor and returns it as a scalar tensor."];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256405850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReadDataFromFileOpHandler *EmitterViewerSPI::MPSReadDataFromFileOpHandler::MPSReadDataFromFileOpHandler(EmitterViewerSPI::MPSReadDataFromFileOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859290;
  v39 = a3;
  v34[0] = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(v34);
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

  v38 = v6;
  if (v6)
  {
    memmove(&__dst, Value, v6);
  }

  *(&__dst + v7) = 0;
  if (v38 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v33 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CBEB18] array];
  if (*(v39 + 9))
  {
    v11 = v39 - 16;
  }

  else
  {
    v11 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
  v13 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = [MEMORY[0x277CBEB18] array];
  FilePath = mlir::mps::ReadDataFromFileOp::getFilePath(&v39);
  v17 = EmitViewerSPI::emitStringProperty(FilePath, @"file_path", FilePath, v16);
  if (v17)
  {
    [v14 addObject:v17];
  }

  Offset = mlir::mps::ReadDataFromFileOp::getOffset(&v39);
  v18 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"offset" dataType:64 shape:&unk_2868B0250];
  if (v18)
  {
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:&Offset length:8];
    [(MLViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v14 addObject:v18];
  }

  FileSymbol = mlir::mps::ReadDataFromFileOp::getFileSymbol(&v39, v34);
  if (v35 == 1)
  {
    v21 = EmitViewerSPI::emitStringProperty(FileSymbol, @"file_symbol", v34[0], v34[1]);
    if (v21)
    {
      [v14 addObject:v21];
    }
  }

  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MLViewerNodeSPI alloc];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v25 = v10;
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v29 = [(MLViewerNodeSPI *)v23 initWithType:v33 inputs:v24 outputs:v26 properties:v27 regions:v28];
  v30 = *(this + 3);
  *(this + 3) = v29;
  v31 = ;
  [*(this + 3) setLocalizedDescription:v31];

  if (v38 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256405CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReadVariableOpHandler *EmitterViewerSPI::MPSReadVariableOpHandler::MPSReadVariableOpHandler(EmitterViewerSPI::MPSReadVariableOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868592A8;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"resource", *(*(a3 + 9) + 24));
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

  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Inserts a variableHandle for a tensor resource."];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2564060F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSRealPartOpHandler *EmitterViewerSPI::MPSRealPartOpHandler::MPSRealPartOpHandler(EmitterViewerSPI::MPSRealPartOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868592C0;
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

  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Extracts the real part of the input tensor."];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2564064C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSRealToHermiteanFFTOpHandler *EmitterViewerSPI::MPSRealToHermiteanFFTOpHandler::MPSRealToHermiteanFFTOpHandler(EmitterViewerSPI::MPSRealToHermiteanFFTOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868592D8;
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
  ScalingMode = mlir::mps::RealToHermiteanFFTOp::getScalingMode(&v39);
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

  LOBYTE(v40) = mlir::mps::RealToHermiteanFFTOp::getInverse(&v39);
  v24 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"inverse" dataType:2147483656 shape:&unk_2868B0268];
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

void sub_256406A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReciprocalOpHandler *EmitterViewerSPI::MPSReciprocalOpHandler::MPSReciprocalOpHandler(EmitterViewerSPI::MPSReciprocalOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868592F0;
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

void sub_256406E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReciprocalSquareRootOpHandler *EmitterViewerSPI::MPSReciprocalSquareRootOpHandler::MPSReciprocalSquareRootOpHandler(EmitterViewerSPI::MPSReciprocalSquareRootOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859308;
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

void sub_256407224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReductionAndOpHandler *EmitterViewerSPI::MPSReductionAndOpHandler::MPSReductionAndOpHandler(EmitterViewerSPI::MPSReductionAndOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859320;
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
  ODSOperandIndexAndLength = mlir::mps::ReductionAndOp::getODSOperandIndexAndLength(&v37, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v37 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::ReductionAndOp::getODSOperandIndexAndLength(&v37, 1u);
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
  LOBYTE(v38) = mlir::mps::ReductionAndOp::getKeepDims(&v37);
  v22 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"keep_dims" dataType:2147483656 shape:&unk_2868B0280];
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

void sub_2564076FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReductionArgMaxOpHandler *EmitterViewerSPI::MPSReductionArgMaxOpHandler::MPSReductionArgMaxOpHandler(EmitterViewerSPI::MPSReductionArgMaxOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859338;
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
  ODSOperandIndexAndLength = mlir::mps::ReductionArgMaxOp::getODSOperandIndexAndLength(&v37, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v37 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::ReductionArgMaxOp::getODSOperandIndexAndLength(&v37, 1u);
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
  LOBYTE(v38) = mlir::mps::ReductionArgMaxOp::getKeepDims(&v37);
  v22 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"keep_dims" dataType:2147483656 shape:&unk_2868B0298];
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

void sub_256407C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReductionArgMinOpHandler *EmitterViewerSPI::MPSReductionArgMinOpHandler::MPSReductionArgMinOpHandler(EmitterViewerSPI::MPSReductionArgMinOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859350;
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
  ODSOperandIndexAndLength = mlir::mps::ReductionArgMinOp::getODSOperandIndexAndLength(&v37, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v37 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::ReductionArgMinOp::getODSOperandIndexAndLength(&v37, 1u);
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
  LOBYTE(v38) = mlir::mps::ReductionArgMinOp::getKeepDims(&v37);
  v22 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"keep_dims" dataType:2147483656 shape:&unk_2868B02B0];
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

void sub_25640810C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReductionLogSumExpOpHandler *EmitterViewerSPI::MPSReductionLogSumExpOpHandler::MPSReductionLogSumExpOpHandler(EmitterViewerSPI::MPSReductionLogSumExpOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859368;
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
  ODSOperandIndexAndLength = mlir::mps::ReductionLogSumExpOp::getODSOperandIndexAndLength(&v37, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v37 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::ReductionLogSumExpOp::getODSOperandIndexAndLength(&v37, 1u);
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
  LOBYTE(v38) = mlir::mps::ReductionLogSumExpOp::getKeepDims(&v37);
  v22 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"keep_dims" dataType:2147483656 shape:&unk_2868B02C8];
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

void sub_256408614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReductionMaxOpHandler *EmitterViewerSPI::MPSReductionMaxOpHandler::MPSReductionMaxOpHandler(EmitterViewerSPI::MPSReductionMaxOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859380;
  v5 = *(*(a3 + 6) + 8);
  v40 = a3;
  v41 = v5;
  Value = mlir::StringAttr::getValue(&v41);
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

  v39 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v39 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v36 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mps::ReductionMaxOp::getODSOperandIndexAndLength(&v40, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v40 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::ReductionMaxOp::getODSOperandIndexAndLength(&v40, 1u);
  if ((*(v40 + 46) & 0x80) != 0)
  {
    v14 = *(v40 + 9);
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
  if (*(v40 + 9))
  {
    v18 = v40 - 16;
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
  LOBYTE(v41) = mlir::mps::ReductionMaxOp::getKeepDims(&v40);
  v22 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"keep_dims" dataType:2147483656 shape:&unk_2868B02E0];
  if (v22)
  {
    v23 = [MEMORY[0x277CBEA90] dataWithBytes:&v41 length:1];
    [(MLViewerNodePropertyDataSPI *)v22 setValue:v23];

    [v21 addObject:v22];
  }

  PropagateNans = mlir::mps::ReductionMaxOp::getPropagateNans(&v40);
  v24 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"propagate_nans" dataType:2147483656 shape:&unk_2868B02F8];
  if (v24)
  {
    v25 = [MEMORY[0x277CBEA90] dataWithBytes:&PropagateNans length:1];
    [(MLViewerNodePropertyDataSPI *)v24 setValue:v25];

    [v21 addObject:v24];
  }

  v26 = [MEMORY[0x277CBEB18] array];
  v27 = [MLViewerNodeSPI alloc];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v30 = [MEMORY[0x277CBEA60] arrayWithArray:v21];
  v31 = [MEMORY[0x277CBEA60] arrayWithArray:v26];
  v32 = [(MLViewerNodeSPI *)v27 initWithType:v36 inputs:v28 outputs:v29 properties:v30 regions:v31];
  v33 = *(this + 3);
  *(this + 3) = v32;
  v34 = ;
  [*(this + 3) setLocalizedDescription:v34];

  if (v39 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256408B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReductionMeanOpHandler *EmitterViewerSPI::MPSReductionMeanOpHandler::MPSReductionMeanOpHandler(EmitterViewerSPI::MPSReductionMeanOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859398;
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
  ODSOperandIndexAndLength = mlir::mps::ReductionMeanOp::getODSOperandIndexAndLength(&v37, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v37 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::ReductionMeanOp::getODSOperandIndexAndLength(&v37, 1u);
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
  LOBYTE(v38) = mlir::mps::ReductionMeanOp::getKeepDims(&v37);
  v22 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"keep_dims" dataType:2147483656 shape:&unk_2868B0310];
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

void sub_2564090B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReductionMinOpHandler *EmitterViewerSPI::MPSReductionMinOpHandler::MPSReductionMinOpHandler(EmitterViewerSPI::MPSReductionMinOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868593B0;
  v5 = *(*(a3 + 6) + 8);
  v40 = a3;
  v41 = v5;
  Value = mlir::StringAttr::getValue(&v41);
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

  v39 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v39 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v36 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mps::ReductionMinOp::getODSOperandIndexAndLength(&v40, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v40 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::ReductionMinOp::getODSOperandIndexAndLength(&v40, 1u);
  if ((*(v40 + 46) & 0x80) != 0)
  {
    v14 = *(v40 + 9);
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
  if (*(v40 + 9))
  {
    v18 = v40 - 16;
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
  LOBYTE(v41) = mlir::mps::ReductionMinOp::getKeepDims(&v40);
  v22 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"keep_dims" dataType:2147483656 shape:&unk_2868B0328];
  if (v22)
  {
    v23 = [MEMORY[0x277CBEA90] dataWithBytes:&v41 length:1];
    [(MLViewerNodePropertyDataSPI *)v22 setValue:v23];

    [v21 addObject:v22];
  }

  PropagateNans = mlir::mps::ReductionMinOp::getPropagateNans(&v40);
  v24 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"propagate_nans" dataType:2147483656 shape:&unk_2868B0340];
  if (v24)
  {
    v25 = [MEMORY[0x277CBEA90] dataWithBytes:&PropagateNans length:1];
    [(MLViewerNodePropertyDataSPI *)v24 setValue:v25];

    [v21 addObject:v24];
  }

  v26 = [MEMORY[0x277CBEB18] array];
  v27 = [MLViewerNodeSPI alloc];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v30 = [MEMORY[0x277CBEA60] arrayWithArray:v21];
  v31 = [MEMORY[0x277CBEA60] arrayWithArray:v26];
  v32 = [(MLViewerNodeSPI *)v27 initWithType:v36 inputs:v28 outputs:v29 properties:v30 regions:v31];
  v33 = *(this + 3);
  *(this + 3) = v32;
  v34 = ;
  [*(this + 3) setLocalizedDescription:v34];

  if (v39 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256409628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReductionOrOpHandler *EmitterViewerSPI::MPSReductionOrOpHandler::MPSReductionOrOpHandler(EmitterViewerSPI::MPSReductionOrOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868593C8;
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
  ODSOperandIndexAndLength = mlir::mps::ReductionOrOp::getODSOperandIndexAndLength(&v37, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v37 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::ReductionOrOp::getODSOperandIndexAndLength(&v37, 1u);
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
  LOBYTE(v38) = mlir::mps::ReductionOrOp::getKeepDims(&v37);
  v22 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"keep_dims" dataType:2147483656 shape:&unk_2868B0358];
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

void sub_256409B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReductionProdOpHandler *EmitterViewerSPI::MPSReductionProdOpHandler::MPSReductionProdOpHandler(EmitterViewerSPI::MPSReductionProdOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868593E0;
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
  ODSOperandIndexAndLength = mlir::mps::ReductionProdOp::getODSOperandIndexAndLength(&v37, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v37 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::ReductionProdOp::getODSOperandIndexAndLength(&v37, 1u);
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
  LOBYTE(v38) = mlir::mps::ReductionProdOp::getKeepDims(&v37);
  v22 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"keep_dims" dataType:2147483656 shape:&unk_2868B0370];
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

void sub_25640A054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReductionSumOpHandler *EmitterViewerSPI::MPSReductionSumOpHandler::MPSReductionSumOpHandler(EmitterViewerSPI::MPSReductionSumOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868593F8;
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
  ODSOperandIndexAndLength = mlir::mps::ReductionSumOp::getODSOperandIndexAndLength(&v37, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v37 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::ReductionSumOp::getODSOperandIndexAndLength(&v37, 1u);
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
  LOBYTE(v38) = mlir::mps::ReductionSumOp::getKeepDims(&v37);
  v22 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"keep_dims" dataType:2147483656 shape:&unk_2868B0388];
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

void sub_25640A55C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReductionVarianceOpHandler *EmitterViewerSPI::MPSReductionVarianceOpHandler::MPSReductionVarianceOpHandler(EmitterViewerSPI::MPSReductionVarianceOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859410;
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
  ODSOperandIndexAndLength = mlir::mps::ReductionVarianceOp::getODSOperandIndexAndLength(&v37, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v37 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::ReductionVarianceOp::getODSOperandIndexAndLength(&v37, 1u);
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
  LOBYTE(v38) = mlir::mps::ReductionVarianceOp::getKeepDims(&v37);
  v22 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"keep_dims" dataType:2147483656 shape:&unk_2868B03A0];
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

void sub_25640AA64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReinterpretCastOpHandler *EmitterViewerSPI::MPSReinterpretCastOpHandler::MPSReinterpretCastOpHandler(EmitterViewerSPI::MPSReinterpretCastOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859428;
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
  mlir::mps::ReinterpretCastOp::getResultElementType(&v30);
  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MLViewerNodeSPI alloc];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v23 = [(MLViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Returns the input tensor reinterpreted to result_element_type type with the innermost dimension scaled by sizeof(type(input)) / sizeof(result_element_type)."];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25640AE74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSRelu6OpHandler *EmitterViewerSPI::MPSRelu6OpHandler::MPSRelu6OpHandler(EmitterViewerSPI::MPSRelu6OpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859440;
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

void sub_25640B250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReluGradOpHandler *EmitterViewerSPI::MPSReluGradOpHandler::MPSReluGradOpHandler(EmitterViewerSPI::MPSReluGradOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859458;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"gradients", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"features", *(*(a3 + 9) + 56));
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
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"backprops", NextResultAtOffset);
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

void sub_25640B628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReluOpHandler *EmitterViewerSPI::MPSReluOpHandler::MPSReluOpHandler(EmitterViewerSPI::MPSReluOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859470;
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

void sub_25640B9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReshapeOpHandler *EmitterViewerSPI::MPSReshapeOpHandler::MPSReshapeOpHandler(EmitterViewerSPI::MPSReshapeOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859488;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v33 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"shape", *(*(v33 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(v33 + 9))
  {
    v14 = v33 - 16;
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
  LOBYTE(v34) = mlir::mps::ReshapeOp::getZeroIsCopy(&v33);
  v18 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"zero_is_copy" dataType:2147483656 shape:&unk_2868B03B8];
  if (v18)
  {
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:&v34 length:1];
    [(MLViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v17 addObject:v18];
  }

  v20 = [MEMORY[0x277CBEB18] array];
  v21 = [MLViewerNodeSPI alloc];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
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

void sub_25640BE78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSResizeGradientOpHandler *EmitterViewerSPI::MPSResizeGradientOpHandler::MPSResizeGradientOpHandler(EmitterViewerSPI::MPSResizeGradientOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868594A0;
  v5 = *(*(a3 + 6) + 8);
  v51 = a3;
  v52 = v5;
  Value = mlir::StringAttr::getValue(&v52);
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

  v50 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v50 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v46 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mps::ResizeGradientOp::getODSOperandIndexAndLength(&v51, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input_gradient", *(*(v51 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::ResizeGradientOp::getODSOperandIndexAndLength(&v51, 1u);
  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"input_shape", *(*(v51 + 9) + 32 * v13 + 24));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = mlir::mps::ResizeGradientOp::getODSOperandIndexAndLength(&v51, 2u);
  if ((*(v51 + 46) & 0x80) != 0)
  {
    v16 = *(v51 + 9);
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

  v18 = EmitViewerSPI::emitNodeInputPort(a2, @"scale", v17);
  if (v18)
  {
    [v10 addObject:v18];
  }

  v19 = mlir::mps::ResizeGradientOp::getODSOperandIndexAndLength(&v51, 3u);
  if ((*(v51 + 46) & 0x80) != 0)
  {
    v20 = *(v51 + 9);
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

  v22 = EmitViewerSPI::emitNodeInputPort(a2, @"offset", v21);
  if (v22)
  {
    [v10 addObject:v22];
  }

  v47 = [MEMORY[0x277CBEB18] array];
  if (*(v51 + 9))
  {
    v23 = v51 - 16;
  }

  else
  {
    v23 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0);
  v25 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v25)
  {
    [v47 addObject:v25];
  }

  v26 = [MEMORY[0x277CBEB18] array];
  Mode = mlir::mps::ResizeGradientOp::getMode(&v51);
  v28 = [MEMORY[0x277CBEB18] array];
  v29 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"nearest" value:0];
  [v28 addObject:v29];

  v30 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"bilinear" value:1];
  [v28 addObject:v30];

  v31 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"mode" type:@"MPSSamplingMode" cases:v28 value:Mode];
  if (v31)
  {
    [v26 addObject:v31];
  }

  LOBYTE(v52) = mlir::mps::ResizeGradientOp::getCenterResult(&v51);
  v32 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"center_result" dataType:2147483656 shape:&unk_2868B03D0];
  if (v32)
  {
    v33 = [MEMORY[0x277CBEA90] dataWithBytes:&v52 length:1];
    [(MLViewerNodePropertyDataSPI *)v32 setValue:v33];

    [v26 addObject:v32];
  }

  AlignCorners = mlir::mps::ResizeGradientOp::getAlignCorners(&v51);
  v34 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"align_corners" dataType:2147483656 shape:&unk_2868B03E8];
  if (v34)
  {
    v35 = [MEMORY[0x277CBEA90] dataWithBytes:&AlignCorners length:1];
    [(MLViewerNodePropertyDataSPI *)v34 setValue:v35];

    [v26 addObject:v34];
  }

  mlir::mps::ResizeGradientOp::getNearestRoundingMode(&v51);

  v36 = [MEMORY[0x277CBEB18] array];
  v37 = [MLViewerNodeSPI alloc];
  v38 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v39 = [MEMORY[0x277CBEA60] arrayWithArray:v47];
  v40 = [MEMORY[0x277CBEA60] arrayWithArray:v26];
  v41 = [MEMORY[0x277CBEA60] arrayWithArray:v36];
  v42 = [(MLViewerNodeSPI *)v37 initWithType:v46 inputs:v38 outputs:v39 properties:v40 regions:v41];
  v43 = *(this + 3);
  *(this + 3) = v42;
  v44 = ;
  [*(this + 3) setLocalizedDescription:v44];

  if (v50 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25640C560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSResizeOpHandler *EmitterViewerSPI::MPSResizeOpHandler::MPSResizeOpHandler(EmitterViewerSPI::MPSResizeOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868594B8;
  v5 = *(*(a3 + 6) + 8);
  v51 = a3;
  v52 = v5;
  Value = mlir::StringAttr::getValue(&v52);
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

  v50 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v50 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v46 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mps::ResizeOp::getODSOperandIndexAndLength(&v51, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v51 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::ResizeOp::getODSOperandIndexAndLength(&v51, 1u);
  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"shape", *(*(v51 + 9) + 32 * v13 + 24));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = mlir::mps::ResizeOp::getODSOperandIndexAndLength(&v51, 2u);
  if ((*(v51 + 46) & 0x80) != 0)
  {
    v16 = *(v51 + 9);
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

  v18 = EmitViewerSPI::emitNodeInputPort(a2, @"scale", v17);
  if (v18)
  {
    [v10 addObject:v18];
  }

  v19 = mlir::mps::ResizeOp::getODSOperandIndexAndLength(&v51, 3u);
  if ((*(v51 + 46) & 0x80) != 0)
  {
    v20 = *(v51 + 9);
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

  v22 = EmitViewerSPI::emitNodeInputPort(a2, @"offset", v21);
  if (v22)
  {
    [v10 addObject:v22];
  }

  v47 = [MEMORY[0x277CBEB18] array];
  if (*(v51 + 9))
  {
    v23 = v51 - 16;
  }

  else
  {
    v23 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0);
  v25 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v25)
  {
    [v47 addObject:v25];
  }

  v26 = [MEMORY[0x277CBEB18] array];
  Mode = mlir::mps::ResizeOp::getMode(&v51);
  v28 = [MEMORY[0x277CBEB18] array];
  v29 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"nearest" value:0];
  [v28 addObject:v29];

  v30 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"bilinear" value:1];
  [v28 addObject:v30];

  v31 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"mode" type:@"MPSSamplingMode" cases:v28 value:Mode];
  if (v31)
  {
    [v26 addObject:v31];
  }

  LOBYTE(v52) = mlir::mps::ResizeOp::getCenterResult(&v51);
  v32 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"center_result" dataType:2147483656 shape:&unk_2868B0400];
  if (v32)
  {
    v33 = [MEMORY[0x277CBEA90] dataWithBytes:&v52 length:1];
    [(MLViewerNodePropertyDataSPI *)v32 setValue:v33];

    [v26 addObject:v32];
  }

  AlignCorners = mlir::mps::ResizeOp::getAlignCorners(&v51);
  v34 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"align_corners" dataType:2147483656 shape:&unk_2868B0418];
  if (v34)
  {
    v35 = [MEMORY[0x277CBEA90] dataWithBytes:&AlignCorners length:1];
    [(MLViewerNodePropertyDataSPI *)v34 setValue:v35];

    [v26 addObject:v34];
  }

  mlir::mps::ResizeOp::getNearestRoundingMode(&v51);

  v36 = [MEMORY[0x277CBEB18] array];
  v37 = [MLViewerNodeSPI alloc];
  v38 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v39 = [MEMORY[0x277CBEA60] arrayWithArray:v47];
  v40 = [MEMORY[0x277CBEA60] arrayWithArray:v26];
  v41 = [MEMORY[0x277CBEA60] arrayWithArray:v36];
  v42 = [(MLViewerNodeSPI *)v37 initWithType:v46 inputs:v38 outputs:v39 properties:v40 regions:v41];
  v43 = *(this + 3);
  *(this + 3) = v42;
  v44 = ;
  [*(this + 3) setLocalizedDescription:v44];

  if (v50 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25640CCC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReverseOpHandler *EmitterViewerSPI::MPSReverseOpHandler::MPSReverseOpHandler(EmitterViewerSPI::MPSReverseOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868594D0;
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
  ODSOperandIndexAndLength = mlir::mps::ReverseOp::getODSOperandIndexAndLength(&v35, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v35 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::ReverseOp::getODSOperandIndexAndLength(&v35, 1u);
  if ((*(v35 + 46) & 0x80) != 0)
  {
    v14 = *(v35 + 9);
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
  if (*(v35 + 9))
  {
    v18 = v35 - 16;
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
  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MLViewerNodeSPI alloc];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v21];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v28 = [(MLViewerNodeSPI *)v23 initWithType:v32 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;

  v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Reverse values within tensor along provided axes. If no axes are provided then all axes are reversed."];
  [*(this + 3) setLocalizedDescription:v30];

  if (v34 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25640D1C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSRintOpHandler *EmitterViewerSPI::MPSRintOpHandler::MPSRintOpHandler(EmitterViewerSPI::MPSRintOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868594E8;
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

void sub_25640D5AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSRoundOpHandler *EmitterViewerSPI::MPSRoundOpHandler::MPSRoundOpHandler(EmitterViewerSPI::MPSRoundOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859500;
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

void sub_25640D980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSampleGridDataGradientOpHandler *EmitterViewerSPI::MPSSampleGridDataGradientOpHandler::MPSSampleGridDataGradientOpHandler(EmitterViewerSPI::MPSSampleGridDataGradientOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859518;
  v5 = *(*(a3 + 6) + 8);
  v49 = a3;
  v50 = v5;
  Value = mlir::StringAttr::getValue(&v50);
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

  v48 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v48 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v44 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v49 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"coordinates", *(*(v49 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"outputShape", *(*(v49 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v45 = [MEMORY[0x277CBEB18] array];
  if (*(v49 + 9))
  {
    v14 = v49 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v45 addObject:v16];
  }

  v17 = [MEMORY[0x277CBEB18] array];
  LOBYTE(v50) = mlir::mps::SampleGridDataGradientOp::getNormalizeCoordinates(&v49);
  v18 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"normalize_coordinates" dataType:2147483656 shape:&unk_2868B0430];
  if (v18)
  {
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:&v50 length:1];
    [(MLViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v17 addObject:v18];
  }

  RelativeCoordinates = mlir::mps::SampleGridDataGradientOp::getRelativeCoordinates(&v49);
  v20 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"relative_coordinates" dataType:2147483656 shape:&unk_2868B0448];
  if (v20)
  {
    v21 = [MEMORY[0x277CBEA90] dataWithBytes:&RelativeCoordinates length:1];
    [(MLViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v17 addObject:v20];
  }

  PaddingMode = mlir::mps::SampleGridDataGradientOp::getPaddingMode(&v49);
  v23 = [MEMORY[0x277CBEB18] array];
  v24 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"constant" value:0];
  [v23 addObject:v24];

  v25 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"reflect" value:1];
  [v23 addObject:v25];

  v26 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"symmetric" value:2];
  [v23 addObject:v26];

  v27 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"clampToEdge" value:3];
  [v23 addObject:v27];

  v28 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"padding_mode" type:@"MPSPaddingMode" cases:v23 value:PaddingMode];
  if (v28)
  {
    [v17 addObject:v28];
  }

  SamplingMode = mlir::mps::SampleGridDataGradientOp::getSamplingMode(&v49);
  v30 = [MEMORY[0x277CBEB18] array];
  v31 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"nearest" value:0];
  [v30 addObject:v31];

  v32 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"bilinear" value:1];
  [v30 addObject:v32];

  v33 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"sampling_mode" type:@"MPSSamplingMode" cases:v30 value:SamplingMode];
  if (v33)
  {
    [v17 addObject:v33];
  }

  v34 = [MEMORY[0x277CBEB18] array];
  v35 = [MLViewerNodeSPI alloc];
  v36 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v37 = [MEMORY[0x277CBEA60] arrayWithArray:v45];
  v38 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v39 = [MEMORY[0x277CBEA60] arrayWithArray:v34];
  v40 = [(MLViewerNodeSPI *)v35 initWithType:v44 inputs:v36 outputs:v37 properties:v38 regions:v39];
  v41 = *(this + 3);
  *(this + 3) = v40;

  v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Gradient of sample_grid operation relative to the input data."];
  [*(this + 3) setLocalizedDescription:v42];

  if (v48 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25640E080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSampleGridOpHandler *EmitterViewerSPI::MPSSampleGridOpHandler::MPSSampleGridOpHandler(EmitterViewerSPI::MPSSampleGridOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859530;
  v5 = *(*(a3 + 6) + 8);
  v68 = a3;
  v69 = v5;
  Value = mlir::StringAttr::getValue(&v69);
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

  v67 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v67 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v61 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v62 = v10;
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v68 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"coordinates", *(*(v68 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"constant_values", *(*(v68 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v63 = [MEMORY[0x277CBEB18] array];
  if (*(v68 + 9))
  {
    v14 = v68 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v63 addObject:v16];
  }

  v17 = [MEMORY[0x277CBEB18] array];
  LOBYTE(v69) = mlir::mps::SampleGridOp::getNormalizeCoordinates(&v68);
  v18 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"normalize_coordinates" dataType:2147483656 shape:&unk_2868B0460];
  v60 = v18;
  if (v18)
  {
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:&v69 length:{1, v18}];
    [(MLViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v17 addObject:v18];
  }

  RelativeCoordinates = mlir::mps::SampleGridOp::getRelativeCoordinates(&v68);
  v20 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"relative_coordinates" dataType:2147483656 shape:&unk_2868B0478];
  if (v20)
  {
    v21 = [MEMORY[0x277CBEA90] dataWithBytes:&RelativeCoordinates length:1];
    [(MLViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v17 addObject:v20];
  }

  AlignCorners = mlir::mps::SampleGridOp::getAlignCorners(&v68);
  v22 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"align_corners" dataType:2147483656 shape:&unk_2868B0490];
  if (v22)
  {
    v23 = [MEMORY[0x277CBEA90] dataWithBytes:&AlignCorners length:1];
    [(MLViewerNodePropertyDataSPI *)v22 setValue:v23];

    [v17 addObject:v22];
  }

  PaddingMode = mlir::mps::SampleGridOp::getPaddingMode(&v68);
  v25 = [MEMORY[0x277CBEB18] array];
  v26 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"constant" value:0];
  [v25 addObject:v26];

  v27 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"reflect" value:1];
  [v25 addObject:v27];

  v28 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"symmetric" value:2];
  [v25 addObject:v28];

  v29 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"clampToEdge" value:3];
  [v25 addObject:v29];

  v30 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"padding_mode" type:@"MPSPaddingMode" cases:v25 value:PaddingMode];
  if (v30)
  {
    [v17 addObject:v30];
  }

  SamplingMode = mlir::mps::SampleGridOp::getSamplingMode(&v68);
  v32 = [MEMORY[0x277CBEB18] array];
  v33 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"nearest" value:0];
  [v32 addObject:v33];

  v34 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"bilinear" value:1];
  [v32 addObject:v34];

  v35 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"sampling_mode" type:@"MPSSamplingMode" cases:v32 value:SamplingMode];
  if (v35)
  {
    [v17 addObject:v35];
  }

  Layout = mlir::mps::SampleGridOp::getLayout(&v68);
  v37 = [MEMORY[0x277CBEB18] array];
  v38 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v37 addObject:v38];

  v39 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v37 addObject:v39];

  v40 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v37 addObject:v40];

  v41 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v37 addObject:v41];

  v42 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v37 addObject:v42];

  v43 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v37 addObject:v43];

  v44 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v37 addObject:v44];

  v45 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v37 addObject:v45];

  v46 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v37 addObject:v46];

  v47 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v37 addObject:v47];

  v48 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v37 addObject:v48];

  v49 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"layout" type:@"MPSTensorDataLayout" cases:v37 value:Layout];
  if (v49)
  {
    [v17 addObject:v49];
  }

  mlir::mps::SampleGridOp::getNearestRoundingMode(&v68);
  v50 = [MEMORY[0x277CBEB18] array];
  v51 = [MLViewerNodeSPI alloc];
  v52 = [MEMORY[0x277CBEA60] arrayWithArray:v62];
  v53 = [MEMORY[0x277CBEA60] arrayWithArray:v63];
  v54 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v55 = [MEMORY[0x277CBEA60] arrayWithArray:v50];
  v56 = [(MLViewerNodeSPI *)v51 initWithType:v61 inputs:v52 outputs:v53 properties:v54 regions:v55];
  v57 = *(this + 3);
  *(this + 3) = v56;
  v58 = ;
  [*(this + 3) setLocalizedDescription:v58];

  if (v67 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25640EAE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSScatterAlongAxisOpHandler *EmitterViewerSPI::MPSScatterAlongAxisOpHandler::MPSScatterAlongAxisOpHandler(EmitterViewerSPI::MPSScatterAlongAxisOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859548;
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

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"data", *(*(v43 + 9) + 24));
  if (v12)
  {
    [v11 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"updates", *(*(v43 + 9) + 56));
  if (v13)
  {
    [v11 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"indices", *(*(v43 + 9) + 88));
  if (v14)
  {
    [v11 addObject:v14];
  }

  v15 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v43 + 9) + 120));
  if (v15)
  {
    [v11 addObject:v15];
  }

  v40 = [MEMORY[0x277CBEB18] array];
  if (*(v43 + 9))
  {
    v16 = v43 - 16;
  }

  else
  {
    v16 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
  v18 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v18)
  {
    [v40 addObject:v18];
  }

  v19 = [MEMORY[0x277CBEB18] array];
  Mode = mlir::mps::ScatterAlongAxisOp::getMode(&v43);
  v21 = [MEMORY[0x277CBEB18] array];
  v22 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"add" value:0];
  [v21 addObject:v22];

  v23 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"subtract" value:1];
  [v21 addObject:v23];

  v24 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"multiply" value:2];
  [v21 addObject:v24];

  v25 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"divide" value:3];
  [v21 addObject:v25];

  v26 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"min" value:4];
  [v21 addObject:v26];

  v27 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"max" value:5];
  [v21 addObject:v27];

  v28 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"set" value:6];
  [v21 addObject:v28];

  v29 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"mode" type:@"MPSScatterMode" cases:v21 value:Mode];
  if (v29)
  {
    [v19 addObject:v29];
  }

  v30 = [MEMORY[0x277CBEB18] array];
  v31 = [MLViewerNodeSPI alloc];
  v32 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v33 = v10;
  v34 = [MEMORY[0x277CBEA60] arrayWithArray:v40];
  v35 = [MEMORY[0x277CBEA60] arrayWithArray:v19];
  v36 = [MEMORY[0x277CBEA60] arrayWithArray:v30];
  v37 = [(MLViewerNodeSPI *)v31 initWithType:v33 inputs:v32 outputs:v34 properties:v35 regions:v36];
  v38 = *(this + 3);
  *(this + 3) = v37;

  if (v42 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25640F20C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSScatterNDOpHandler *EmitterViewerSPI::MPSScatterNDOpHandler::MPSScatterNDOpHandler(EmitterViewerSPI::MPSScatterNDOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859560;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"data", *(*(v43 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"updates", *(*(v43 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"indices", *(*(v43 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = [MEMORY[0x277CBEB18] array];
  if (*(v43 + 9))
  {
    v15 = v43 - 16;
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
  LODWORD(v44) = mlir::mps::ScatterNDOp::getBatchDims(&v43);
  v19 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"batch_dims" dataType:32 shape:&unk_2868B04A8];
  if (v19)
  {
    v20 = [MEMORY[0x277CBEA90] dataWithBytes:&v44 length:4];
    [(MLViewerNodePropertyDataSPI *)v19 setValue:v20];

    [v18 addObject:v19];
  }

  Mode = mlir::mps::ScatterNDOp::getMode(&v43);
  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"add" value:0];
  [v22 addObject:v23];

  v24 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"subtract" value:1];
  [v22 addObject:v24];

  v25 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"multiply" value:2];
  [v22 addObject:v25];

  v26 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"divide" value:3];
  [v22 addObject:v26];

  v27 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"min" value:4];
  [v22 addObject:v27];

  v28 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"max" value:5];
  [v22 addObject:v28];

  v29 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"set" value:6];
  [v22 addObject:v29];

  v30 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"mode" type:@"MPSScatterMode" cases:v22 value:Mode];
  if (v30)
  {
    [v18 addObject:v30];
  }

  v31 = [MEMORY[0x277CBEB18] array];
  v32 = [MLViewerNodeSPI alloc];
  v33 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v34 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v35 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
  v36 = [MEMORY[0x277CBEA60] arrayWithArray:v31];
  v37 = [(MLViewerNodeSPI *)v32 initWithType:v40 inputs:v33 outputs:v34 properties:v35 regions:v36];
  v38 = *(this + 3);
  *(this + 3) = v37;

  if (v42 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25640F8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSScatterOpHandler *EmitterViewerSPI::MPSScatterOpHandler::MPSScatterOpHandler(EmitterViewerSPI::MPSScatterOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859578;
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

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"data", *(*(v43 + 9) + 24));
  if (v12)
  {
    [v11 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"updates", *(*(v43 + 9) + 56));
  if (v13)
  {
    [v11 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"indices", *(*(v43 + 9) + 88));
  if (v14)
  {
    [v11 addObject:v14];
  }

  v15 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v43 + 9) + 120));
  if (v15)
  {
    [v11 addObject:v15];
  }

  v40 = [MEMORY[0x277CBEB18] array];
  if (*(v43 + 9))
  {
    v16 = v43 - 16;
  }

  else
  {
    v16 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
  v18 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v18)
  {
    [v40 addObject:v18];
  }

  v19 = [MEMORY[0x277CBEB18] array];
  Mode = mlir::mps::ScatterOp::getMode(&v43);
  v21 = [MEMORY[0x277CBEB18] array];
  v22 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"add" value:0];
  [v21 addObject:v22];

  v23 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"subtract" value:1];
  [v21 addObject:v23];

  v24 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"multiply" value:2];
  [v21 addObject:v24];

  v25 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"divide" value:3];
  [v21 addObject:v25];

  v26 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"min" value:4];
  [v21 addObject:v26];

  v27 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"max" value:5];
  [v21 addObject:v27];

  v28 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"set" value:6];
  [v21 addObject:v28];

  v29 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"mode" type:@"MPSScatterMode" cases:v21 value:Mode];
  if (v29)
  {
    [v19 addObject:v29];
  }

  v30 = [MEMORY[0x277CBEB18] array];
  v31 = [MLViewerNodeSPI alloc];
  v32 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v33 = v10;
  v34 = [MEMORY[0x277CBEA60] arrayWithArray:v40];
  v35 = [MEMORY[0x277CBEA60] arrayWithArray:v19];
  v36 = [MEMORY[0x277CBEA60] arrayWithArray:v30];
  v37 = [(MLViewerNodeSPI *)v31 initWithType:v33 inputs:v32 outputs:v34 properties:v35 regions:v36];
  v38 = *(this + 3);
  *(this + 3) = v37;

  if (v42 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25640FF08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSelectOpHandler *EmitterViewerSPI::MPSSelectOpHandler::MPSSelectOpHandler(EmitterViewerSPI::MPSSelectOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859590;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"condition", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"true_value", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"false_value", *(*(a3 + 9) + 88));
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

void sub_2564103BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSShapeOpHandler *EmitterViewerSPI::MPSShapeOpHandler::MPSShapeOpHandler(EmitterViewerSPI::MPSShapeOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868595A8;
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

  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"This op computes the shape if the input tensor and returns it as a 1-dimensional tensor."];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2564107B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSigmoidGradientOpHandler *EmitterViewerSPI::MPSSigmoidGradientOpHandler::MPSSigmoidGradientOpHandler(EmitterViewerSPI::MPSSigmoidGradientOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868595C0;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input_gradient", *(*(a3 + 9) + 56));
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

void sub_256410BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSigmoidGradientWithSigmoidOpHandler *EmitterViewerSPI::MPSSigmoidGradientWithSigmoidOpHandler::MPSSigmoidGradientWithSigmoidOpHandler(EmitterViewerSPI::MPSSigmoidGradientWithSigmoidOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868595D8;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"dy", *(*(a3 + 9) + 24));
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

void sub_256410FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSigmoidHardOpHandler *EmitterViewerSPI::MPSSigmoidHardOpHandler::MPSSigmoidHardOpHandler(EmitterViewerSPI::MPSSigmoidHardOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868595F0;
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

void sub_256411410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSigmoidOpHandler *EmitterViewerSPI::MPSSigmoidOpHandler::MPSSigmoidOpHandler(EmitterViewerSPI::MPSSigmoidOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859608;
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

void sub_256411808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSignOpHandler *EmitterViewerSPI::MPSSignOpHandler::MPSSignOpHandler(EmitterViewerSPI::MPSSignOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859620;
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

void sub_256411BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSignbitOpHandler *EmitterViewerSPI::MPSSignbitOpHandler::MPSSignbitOpHandler(EmitterViewerSPI::MPSSignbitOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859638;
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

void sub_256411FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSinOpHandler *EmitterViewerSPI::MPSSinOpHandler::MPSSinOpHandler(EmitterViewerSPI::MPSSinOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859650;
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

void sub_256412384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSingleGateRNNGradientOpHandler *EmitterViewerSPI::MPSSingleGateRNNGradientOpHandler::MPSSingleGateRNNGradientOpHandler(EmitterViewerSPI::MPSSingleGateRNNGradientOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859668;
  v5 = *(*(a3 + 6) + 8);
  v69 = a3;
  v70 = v5;
  Value = mlir::StringAttr::getValue(&v70);
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

  v68 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v68 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v66 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mps::SingleGateRNNGradientOp::getODSOperandIndexAndLength(&v69, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient_input_sequence", *(*(v69 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::SingleGateRNNGradientOp::getODSOperandIndexAndLength(&v69, 1u);
  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"recurrent_weight", *(*(v69 + 9) + 32 * v13 + 24));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = mlir::mps::SingleGateRNNGradientOp::getODSOperandIndexAndLength(&v69, 2u);
  v16 = EmitViewerSPI::emitNodeInputPort(a2, @"training_state", *(*(v69 + 9) + 32 * v15 + 24));
  if (v16)
  {
    [v10 addObject:v16];
  }

  v17 = mlir::mps::SingleGateRNNGradientOp::getODSOperandIndexAndLength(&v69, 3u);
  if ((*(v69 + 46) & 0x80) != 0)
  {
    v18 = *(v69 + 9);
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

  v20 = EmitViewerSPI::emitNodeInputPort(a2, @"input_state", v19);
  if (v20)
  {
    [v10 addObject:v20];
  }

  v21 = mlir::mps::SingleGateRNNGradientOp::getODSOperandIndexAndLength(&v69, 4u);
  if ((*(v69 + 46) & 0x80) != 0)
  {
    v22 = *(v69 + 9);
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

  v24 = EmitViewerSPI::emitNodeInputPort(a2, @"mask", v23);
  if (v24)
  {
    [v10 addObject:v24];
  }

  v25 = [MEMORY[0x277CBEB18] array];
  ODSResultIndexAndLength = mlir::mps::SingleGateRNNGradientOp::getODSResultIndexAndLength(&v69, 0, v26, v27);
  if (*(v69 + 9))
  {
    NextResultAtOffset = v69 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v30 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
  v31 = EmitViewerSPI::emitNodeOutputPort(a2, @"gradient_output_sequence", v30);
  if (v31)
  {
    [v25 addObject:v31];
  }

  v34 = mlir::mps::SingleGateRNNGradientOp::getODSResultIndexAndLength(&v69, 1u, v32, v33);
  if (*(v69 + 9))
  {
    v35 = v69 - 16;
  }

  else
  {
    v35 = 0;
  }

  if (v34)
  {
    v35 = mlir::detail::OpResultImpl::getNextResultAtOffset(v35, v34);
  }

  v36 = mlir::detail::OpResultImpl::getNextResultAtOffset(v35, 0);
  v37 = EmitViewerSPI::emitNodeOutputPort(a2, @"gradient_recurrent_weight", v36);
  if (v37)
  {
    [v25 addObject:v37];
  }

  v40 = mlir::mps::SingleGateRNNGradientOp::getODSResultIndexAndLength(&v69, 2u, v38, v39);
  if (*(v69 + 9))
  {
    v41 = v69 - 16;
  }

  else
  {
    v41 = 0;
  }

  if (v40)
  {
    v41 = mlir::detail::OpResultImpl::getNextResultAtOffset(v41, v40);
  }

  if (HIDWORD(v40) + v40 == v40)
  {
    v42 = 0;
  }

  else
  {
    v42 = mlir::detail::OpResultImpl::getNextResultAtOffset(v41, 0);
  }

  v43 = EmitViewerSPI::emitNodeOutputPort(a2, @"gradient_input_state", v42);
  if (v43)
  {
    [v25 addObject:v43];
  }

  v44 = [MEMORY[0x277CBEB18] array];
  Activation = mlir::mps::SingleGateRNNGradientOp::getActivation(&v69);
  v46 = [MEMORY[0x277CBEB18] array];
  v47 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v46 addObject:v47];

  v48 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"relu" value:1];
  [v46 addObject:v48];

  v49 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"tanh" value:2];
  [v46 addObject:v49];

  v50 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sigmoid" value:3];
  [v46 addObject:v50];

  v51 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"hard_sigmoid" value:4];
  [v46 addObject:v51];

  v52 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"scaled_tanh" value:5];
  [v46 addObject:v52];

  v53 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"activation" type:@"MPSRNNActivation" cases:v46 value:Activation];
  if (v53)
  {
    [v44 addObject:v53];
  }

  LOBYTE(v70) = mlir::mps::SingleGateRNNGradientOp::getGradientForInputState(&v69);
  v54 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"gradient_for_input_state" dataType:2147483656 shape:&unk_2868B04C0];
  if (v54)
  {
    v55 = [MEMORY[0x277CBEA90] dataWithBytes:&v70 length:1];
    [(MLViewerNodePropertyDataSPI *)v54 setValue:v55];

    [v44 addObject:v54];
  }

  v56 = [MEMORY[0x277CBEB18] array];
  v57 = [MLViewerNodeSPI alloc];
  v58 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v59 = [MEMORY[0x277CBEA60] arrayWithArray:v25];
  v60 = [MEMORY[0x277CBEA60] arrayWithArray:v44];
  v61 = [MEMORY[0x277CBEA60] arrayWithArray:v56];
  v62 = [(MLViewerNodeSPI *)v57 initWithType:v66 inputs:v58 outputs:v59 properties:v60 regions:v61];
  v63 = *(this + 3);
  *(this + 3) = v62;
  v64 = ;
  [*(this + 3) setLocalizedDescription:v64];

  if (v68 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256412BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSingleGateRNNOpHandler *EmitterViewerSPI::MPSSingleGateRNNOpHandler::MPSSingleGateRNNOpHandler(EmitterViewerSPI::MPSSingleGateRNNOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859680;
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

  v58 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::mps::SingleGateRNNOp::getODSOperandIndexAndLength(&v61, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input_sequence", *(*(v61 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::SingleGateRNNOp::getODSOperandIndexAndLength(&v61, 1u);
  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"recurrent_weight", *(*(v61 + 9) + 32 * v13 + 24));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = mlir::mps::SingleGateRNNOp::getODSOperandIndexAndLength(&v61, 2u);
  if ((*(v61 + 46) & 0x80) != 0)
  {
    v16 = *(v61 + 9);
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

  v19 = mlir::mps::SingleGateRNNOp::getODSOperandIndexAndLength(&v61, 3u);
  if ((*(v61 + 46) & 0x80) != 0)
  {
    v20 = *(v61 + 9);
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

  v23 = [MEMORY[0x277CBEB18] array];
  ODSResultIndexAndLength = mlir::mps::SingleGateRNNOp::getODSResultIndexAndLength(&v61, 0, v24, v25);
  if (*(v61 + 9))
  {
    NextResultAtOffset = v61 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v28 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
  v29 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", v28);
  if (v29)
  {
    [v23 addObject:v29];
  }

  v32 = mlir::mps::SingleGateRNNOp::getODSResultIndexAndLength(&v61, 1u, v30, v31);
  if (*(v61 + 9))
  {
    v33 = v61 - 16;
  }

  else
  {
    v33 = 0;
  }

  if (v32)
  {
    v33 = mlir::detail::OpResultImpl::getNextResultAtOffset(v33, v32);
  }

  if (HIDWORD(v32) + v32 == v32)
  {
    v34 = 0;
  }

  else
  {
    v34 = mlir::detail::OpResultImpl::getNextResultAtOffset(v33, 0);
  }

  v35 = EmitViewerSPI::emitNodeOutputPort(a2, @"training_state", v34);
  if (v35)
  {
    [v23 addObject:v35];
  }

  v36 = [MEMORY[0x277CBEB18] array];
  Activation = mlir::mps::SingleGateRNNOp::getActivation(&v61);
  v38 = [MEMORY[0x277CBEB18] array];
  v39 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v38 addObject:v39];

  v40 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"relu" value:1];
  [v38 addObject:v40];

  v41 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"tanh" value:2];
  [v38 addObject:v41];

  v42 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sigmoid" value:3];
  [v38 addObject:v42];

  v43 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"hard_sigmoid" value:4];
  [v38 addObject:v43];

  v44 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"scaled_tanh" value:5];
  [v38 addObject:v44];

  v45 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"activation" type:@"MPSRNNActivation" cases:v38 value:Activation];
  if (v45)
  {
    [v36 addObject:v45];
  }

  LOBYTE(v62) = mlir::mps::SingleGateRNNOp::getTraining(&v61);
  v46 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"training" dataType:2147483656 shape:&unk_2868B04D8];
  if (v46)
  {
    v47 = [MEMORY[0x277CBEA90] dataWithBytes:&v62 length:1];
    [(MLViewerNodePropertyDataSPI *)v46 setValue:v47];

    [v36 addObject:v46];
  }

  v48 = [MEMORY[0x277CBEB18] array];
  v49 = [MLViewerNodeSPI alloc];
  v50 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v51 = [MEMORY[0x277CBEA60] arrayWithArray:v23];
  v52 = [MEMORY[0x277CBEA60] arrayWithArray:v36];
  v53 = [MEMORY[0x277CBEA60] arrayWithArray:v48];
  v54 = [(MLViewerNodeSPI *)v49 initWithType:v58 inputs:v50 outputs:v51 properties:v52 regions:v53];
  v55 = *(this + 3);
  *(this + 3) = v54;
  v56 = ;
  [*(this + 3) setLocalizedDescription:v56];

  if (v60 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256413434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSinhOpHandler *EmitterViewerSPI::MPSSinhOpHandler::MPSSinhOpHandler(EmitterViewerSPI::MPSSinhOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859698;
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

void sub_25641389C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSizeOpHandler *EmitterViewerSPI::MPSSizeOpHandler::MPSSizeOpHandler(EmitterViewerSPI::MPSSizeOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868596B0;
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

void sub_256413C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSliceOpHandler *EmitterViewerSPI::MPSSliceOpHandler::MPSSliceOpHandler(EmitterViewerSPI::MPSSliceOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868596C8;
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

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"start", *(*(a3 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"length", *(*(a3 + 9) + 120));
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

void sub_25641409C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSoftmaxOpHandler *EmitterViewerSPI::MPSSoftmaxOpHandler::MPSSoftmaxOpHandler(EmitterViewerSPI::MPSSoftmaxOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868596E0;
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
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2564144D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSoftplusOpHandler *EmitterViewerSPI::MPSSoftplusOpHandler::MPSSoftplusOpHandler(EmitterViewerSPI::MPSSoftplusOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868596F8;
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

void sub_2564148B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSoftplusParametricOpHandler *EmitterViewerSPI::MPSSoftplusParametricOpHandler::MPSSoftplusParametricOpHandler(EmitterViewerSPI::MPSSoftplusParametricOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859710;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"alpha", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"beta", *(*(a3 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(a3 + 9) + 120));
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

void sub_256414D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSoftsignOpHandler *EmitterViewerSPI::MPSSoftsignOpHandler::MPSSoftsignOpHandler(EmitterViewerSPI::MPSSoftsignOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859728;
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

void sub_25641512C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSortOpHandler *EmitterViewerSPI::MPSSortOpHandler::MPSSortOpHandler(EmitterViewerSPI::MPSSortOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859740;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v37 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v37 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
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
    [v13 addObject:v16];
  }

  if (*(v37 + 9))
  {
    v17 = v37 - 16;
  }

  else
  {
    v17 = 0;
  }

  v18 = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 1);
  v19 = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
  v20 = EmitViewerSPI::emitNodeOutputPort(a2, @"indices", v19);
  if (v20)
  {
    [v13 addObject:v20];
  }

  v21 = [MEMORY[0x277CBEB18] array];
  LOBYTE(v38) = mlir::mps::SortOp::getDescending(&v37);
  v22 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"descending" dataType:2147483656 shape:&unk_2868B04F0];
  if (v22)
  {
    v23 = [MEMORY[0x277CBEA90] dataWithBytes:&v38 length:1];
    [(MLViewerNodePropertyDataSPI *)v22 setValue:v23];

    [v21 addObject:v22];
  }

  v24 = [MEMORY[0x277CBEB18] array];
  v25 = [MLViewerNodeSPI alloc];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
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

void sub_256415608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSpaceToBatchOpHandler *EmitterViewerSPI::MPSSpaceToBatchOpHandler::MPSSpaceToBatchOpHandler(EmitterViewerSPI::MPSSpaceToBatchOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859758;
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

  v33 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v34 = v10;
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v37 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"spatial_axes", *(*(v37 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"batch_axis", *(*(v37 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"block_dimensions", *(*(v37 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = [MEMORY[0x277CBEB18] array];
  if (*(v37 + 9))
  {
    v16 = v37 - 16;
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
  LOBYTE(v38) = mlir::mps::SpaceToBatchOp::getPixelShuffle(&v37);
  v20 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"pixel_shuffle" dataType:2147483656 shape:&unk_2868B0508];
  if (v20)
  {
    v21 = [MEMORY[0x277CBEA90] dataWithBytes:&v38 length:1];
    [(MLViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v19 addObject:v20];
  }

  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MLViewerNodeSPI alloc];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v25 = v15;
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v19];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v29 = [(MLViewerNodeSPI *)v23 initWithType:v33 inputs:v24 outputs:v26 properties:v27 regions:v28];
  v30 = *(this + 3);
  *(this + 3) = v29;
  v31 = ;
  [*(this + 3) setLocalizedDescription:v31];

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256415B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSpaceToDepth2DOpHandler *EmitterViewerSPI::MPSSpaceToDepth2DOpHandler::MPSSpaceToDepth2DOpHandler(EmitterViewerSPI::MPSSpaceToDepth2DOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859770;
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
  LODWORD(v39) = mlir::mps::SpaceToDepth2DOp::getBlockSize(&v38);
  v19 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"block_size" dataType:32 shape:&unk_2868B0520];
  if (v19)
  {
    v20 = [MEMORY[0x277CBEA90] dataWithBytes:&v39 length:4];
    [(MLViewerNodePropertyDataSPI *)v19 setValue:v20];

    [v18 addObject:v19];
  }

  PixelShuffle = mlir::mps::SpaceToDepth2DOp::getPixelShuffle(&v38);
  v21 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"pixel_shuffle" dataType:2147483656 shape:&unk_2868B0538];
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

void sub_2564160F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSplitOpHandler *EmitterViewerSPI::MPSSplitOpHandler::MPSSplitOpHandler(EmitterViewerSPI::MPSSplitOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859788;
  v5 = *(*(a3 + 6) + 8);
  v49 = a3;
  v50 = v5;
  Value = mlir::StringAttr::getValue(&v50);
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

  v48 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v48 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v45 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v46 = v10;
  ODSOperandIndexAndLength = mlir::mps::SplitOp::getODSOperandIndexAndLength(&v49, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"x", *(*(v49 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::SplitOp::getODSOperandIndexAndLength(&v49, 1u);
  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v49 + 9) + 32 * v13 + 24));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = mlir::mps::SplitOp::getODSOperandIndexAndLength(&v49, 2u);
  if ((*(v49 + 46) & 0x80) != 0)
  {
    v16 = *(v49 + 9);
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

  v18 = EmitViewerSPI::emitNodeInputPort(a2, @"split_sizes", v17);
  if (v18)
  {
    [v10 addObject:v18];
  }

  v19 = [MEMORY[0x277CBEB18] array];
  ODSResultIndexAndLength = mlir::mps::SplitOp::getODSResultIndexAndLength(&v49, 0);
  v21 = ODSResultIndexAndLength;
  if (*(v49 + 9))
  {
    NextResultAtOffset = v49 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  v23 = ODSResultIndexAndLength;
  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v24 = (HIDWORD(v21) + v21);
  v25 = v24 - v21;
  if (v24 != v21)
  {
    v40 = 0;
    v41 = 0;
    do
    {
      v42 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v40);
      v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"results%d", v41];
      v23 = EmitViewerSPI::emitNodeOutputPort(a2, v43, v42);

      if (v23)
      {
        [v19 addObject:v23];
      }

      v40 = (v41 + 1);
      v41 = v40;
    }

    while (v25 > v40);
  }

  v26 = [MEMORY[0x277CBEB18] array];
  NumSplits = mlir::mps::SplitOp::getNumSplits(&v49);
  LODWORD(v50) = NumSplits;
  BYTE4(v50) = BYTE4(NumSplits);
  if ((NumSplits & 0x100000000) != 0)
  {
    v28 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"num_splits" dataType:32 shape:&unk_2868B0550];
    if (v28)
    {
      if ((v50 & 0x100000000) == 0)
      {
        v44 = std::__throw_bad_optional_access[abi:nn200100]();

        if (v48 < 0)
        {
          operator delete(__dst);
        }

        _Unwind_Resume(v44);
      }

      v29 = [MEMORY[0x277CBEA90] dataWithBytes:&v50 length:8];
      [(MLViewerNodePropertyDataSPI *)v28 setValue:v29];

      [v26 addObject:v28];
    }
  }

  v30 = [MEMORY[0x277CBEB18] array];
  v31 = [MLViewerNodeSPI alloc];
  v32 = [MEMORY[0x277CBEA60] arrayWithArray:v46];
  v33 = [MEMORY[0x277CBEA60] arrayWithArray:v19];
  v34 = [MEMORY[0x277CBEA60] arrayWithArray:v26];
  v35 = [MEMORY[0x277CBEA60] arrayWithArray:v30];
  v36 = [(MLViewerNodeSPI *)v31 initWithType:v45 inputs:v32 outputs:v33 properties:v34 regions:v35];
  v37 = *(this + 3);
  *(this + 3) = v36;
  v38 = ;
  [*(this + 3) setLocalizedDescription:v38];

  if (v48 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

EmitterViewerSPI::MPSSquareOpHandler *EmitterViewerSPI::MPSSquareOpHandler::MPSSquareOpHandler(EmitterViewerSPI::MPSSquareOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868597A0;
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

void sub_256416B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSquareRootOpHandler *EmitterViewerSPI::MPSSquareRootOpHandler::MPSSquareRootOpHandler(EmitterViewerSPI::MPSSquareRootOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868597B8;
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

void sub_256416F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSqueezeOpHandler *EmitterViewerSPI::MPSSqueezeOpHandler::MPSSqueezeOpHandler(EmitterViewerSPI::MPSSqueezeOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868597D0;
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
  ODSOperandIndexAndLength = mlir::mps::SqueezeOp::getODSOperandIndexAndLength(&v35, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v35 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::SqueezeOp::getODSOperandIndexAndLength(&v35, 1u);
  if ((*(v35 + 46) & 0x80) != 0)
  {
    v14 = *(v35 + 9);
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
  if (*(v35 + 9))
  {
    v18 = v35 - 16;
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
  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MLViewerNodeSPI alloc];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v21];
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

void sub_25641738C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSStencilOpHandler *EmitterViewerSPI::MPSStencilOpHandler::MPSStencilOpHandler(EmitterViewerSPI::MPSStencilOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  v85[3] = *MEMORY[0x277D85DE8];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868597E8;
  v5 = *(*(a3 + 6) + 8);
  v83 = a3;
  v84 = v5;
  Value = mlir::StringAttr::getValue(&v84);
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
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v83 + 9) + 24));
  if (v10)
  {
    [v80 addObject:v10];
  }

  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"weights", *(*(v83 + 9) + 56));
  if (v11)
  {
    [v80 addObject:v11];
  }

  v79 = [MEMORY[0x277CBEB18] array];
  if (*(v83 + 9))
  {
    v12 = v83 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v14 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v14)
  {
    [v79 addObject:v14];
  }

  v15 = [MEMORY[0x277CBEB18] array];
  Offsets = mlir::mps::StencilOp::getOffsets(&v83);
  if (v17)
  {
    if (Offsets)
    {
      v18 = Offsets;
      Offsets = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Offsets + 8);
      v19 = Offsets;
      v20 = v18;
    }

    else
    {
      v20 = 0;
      v19 = 0;
    }

    v21 = EmitViewerSPI::emitElementsAttrProperty(Offsets, @"offsets", v20, v19);
    if (v21)
    {
      [v15 addObject:v21];
    }
  }

  Strides = mlir::mps::StencilOp::getStrides(&v83);
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
  v77 = v25;
  if (v25)
  {
    [v15 addObject:v25];
  }

  DilationRates = mlir::mps::StencilOp::getDilationRates(&v83);
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
    [v15 addObject:v29];
  }

  ExplicitPadding = mlir::mps::StencilOp::getExplicitPadding(&v83);
  if (v31)
  {
    if (ExplicitPadding)
    {
      v32 = ExplicitPadding;
      ExplicitPadding = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
      v33 = ExplicitPadding;
      v34 = v32;
    }

    else
    {
      v34 = 0;
      v33 = 0;
    }

    v35 = EmitViewerSPI::emitElementsAttrProperty(ExplicitPadding, @"explicit_padding", v34, v33);
    if (v35)
    {
      [v15 addObject:v35];
    }
  }

  mlir::mps::StencilOp::getPaddingConstant(&v83, &v84);
  v36 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"paddingConstant" dataType:268435488 shape:&unk_2868B0568];
  if (v36)
  {
    v37 = [MEMORY[0x277CBEA90] dataWithBytes:&v84 length:32];
    [(MLViewerNodePropertyDataSPI *)v36 setValue:v37];

    [v15 addObject:v36];
  }

  ReductionMode = mlir::mps::StencilOp::getReductionMode(&v83);
  v39 = [MEMORY[0x277CBEB18] array];
  v40 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"min" value:0];
  [v39 addObject:v40];

  v41 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"max" value:1];
  [v39 addObject:v41];

  v42 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sum" value:2];
  [v39 addObject:v42];

  v43 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"product" value:3];
  [v39 addObject:v43];

  v44 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"argMin " value:4];
  [v39 addObject:v44];

  v45 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"argMax" value:5];
  [v39 addObject:v45];

  v46 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"reductionMode" type:@"MPSReductionMode" cases:v39 value:ReductionMode];
  if (v46)
  {
    [v15 addObject:v46];
  }

  PaddingMode = mlir::mps::StencilOp::getPaddingMode(&v83);
  v48 = [MEMORY[0x277CBEB18] array];
  v49 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"zero" value:4];
  [v48 addObject:v49];

  v50 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"constant" value:0];
  [v48 addObject:v50];

  v51 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"clampToEdge" value:3];
  [v48 addObject:v51];

  v52 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"mirror" value:1];
  [v48 addObject:v52];

  v53 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"mirrorWithEdge" value:2];
  [v48 addObject:v53];

  v54 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"periodic" value:5];
  [v48 addObject:v54];

  v55 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"antiPeriodic" value:6];
  [v48 addObject:v55];

  v56 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"paddingMode" type:@"MPSStencilPaddingMode" cases:v48 value:PaddingMode];
  if (v56)
  {
    [v15 addObject:v56];
  }

  PaddingStyle = mlir::mps::StencilOp::getPaddingStyle(&v83);
  v58 = [MEMORY[0x277CBEB18] array];
  v59 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v58 addObject:v59];

  v60 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v58 addObject:v60];

  v61 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v58 addObject:v61];

  v62 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v58 addObject:v62];

  v63 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v58 addObject:v63];

  v64 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v58 value:PaddingStyle];
  if (v64)
  {
    [v15 addObject:v64];
  }

  v65 = v85[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v66) == v65)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v85);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v85);
  }

  v67 = [MEMORY[0x277CBEB18] array];
  v68 = [MLViewerNodeSPI alloc];
  v69 = [MEMORY[0x277CBEA60] arrayWithArray:v80];
  v70 = [MEMORY[0x277CBEA60] arrayWithArray:v79];
  v71 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v72 = [MEMORY[0x277CBEA60] arrayWithArray:v67];
  v73 = [(MLViewerNodeSPI *)v68 initWithType:v78 inputs:v69 outputs:v70 properties:v71 regions:v72];
  v74 = *(this + 3);
  *(this + 3) = v73;
  v75 = ;
  [*(this + 3) setLocalizedDescription:v75];

  if (v82 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256417E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSStridedSliceGradientOpHandler *EmitterViewerSPI::MPSStridedSliceGradientOpHandler::MPSStridedSliceGradientOpHandler(EmitterViewerSPI::MPSStridedSliceGradientOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859800;
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

  v39 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"grad_input", *(*(v45 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"fwd_shape", *(*(v45 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"begin", *(*(v45 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"end", *(*(v45 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = EmitViewerSPI::emitNodeInputPort(a2, @"stride", *(*(v45 + 9) + 152));
  if (v15)
  {
    [v10 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  if (*(v45 + 9))
  {
    v17 = v45 - 16;
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
  LODWORD(v46) = mlir::mps::StridedSliceGradientOp::getBeginMask(&v45);
  v21 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"begin_mask" dataType:32 shape:&unk_2868B0580];
  if (v21)
  {
    v22 = [MEMORY[0x277CBEA90] dataWithBytes:&v46 length:4];
    [(MLViewerNodePropertyDataSPI *)v21 setValue:v22];

    [v20 addObject:v21];
  }

  EndMask = mlir::mps::StridedSliceGradientOp::getEndMask(&v45);
  v23 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"end_mask" dataType:32 shape:&unk_2868B0598];
  if (v23)
  {
    v24 = [MEMORY[0x277CBEA90] dataWithBytes:&EndMask length:4];
    [(MLViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v20 addObject:v23];
  }

  ShrinkAxisMask = mlir::mps::StridedSliceGradientOp::getShrinkAxisMask(&v45);
  v25 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"shrink_axis_mask" dataType:32 shape:&unk_2868B05B0];
  if (v25)
  {
    v26 = [MEMORY[0x277CBEA90] dataWithBytes:&ShrinkAxisMask length:4];
    [(MLViewerNodePropertyDataSPI *)v25 setValue:v26];

    [v20 addObject:v25];
  }

  IsSize = mlir::mps::StridedSliceGradientOp::getEndIsSize(&v45);
  v27 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"end_is_size" dataType:2147483656 shape:&unk_2868B05C8];
  if (v27)
  {
    v28 = [MEMORY[0x277CBEA90] dataWithBytes:&IsSize length:1];
    [(MLViewerNodePropertyDataSPI *)v27 setValue:v28];

    [v20 addObject:v27];
  }

  v29 = [MEMORY[0x277CBEB18] array];
  v30 = [MLViewerNodeSPI alloc];
  v31 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v32 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v33 = [MEMORY[0x277CBEA60] arrayWithArray:v20];
  v34 = [MEMORY[0x277CBEA60] arrayWithArray:v29];
  v35 = [(MLViewerNodeSPI *)v30 initWithType:v39 inputs:v31 outputs:v32 properties:v33 regions:v34];
  v36 = *(this + 3);
  *(this + 3) = v35;
  v37 = ;
  [*(this + 3) setLocalizedDescription:v37];

  if (v44 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2564186A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSStridedSliceOpHandler *EmitterViewerSPI::MPSStridedSliceOpHandler::MPSStridedSliceOpHandler(EmitterViewerSPI::MPSStridedSliceOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859818;
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

  v37 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v44 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"begin", *(*(v44 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"end", *(*(v44 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"stride", *(*(v44 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v38 = [MEMORY[0x277CBEB18] array];
  if (*(v44 + 9))
  {
    v15 = v44 - 16;
  }

  else
  {
    v15 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
  v17 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v17)
  {
    [v38 addObject:v17];
  }

  v18 = [MEMORY[0x277CBEB18] array];
  LODWORD(v45) = mlir::mps::StridedSliceOp::getBeginMask(&v44);
  v19 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"begin_mask" dataType:32 shape:&unk_2868B05E0];
  if (v19)
  {
    v20 = [MEMORY[0x277CBEA90] dataWithBytes:&v45 length:4];
    [(MLViewerNodePropertyDataSPI *)v19 setValue:v20];

    [v18 addObject:v19];
  }

  EndMask = mlir::mps::StridedSliceOp::getEndMask(&v44);
  v21 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"end_mask" dataType:32 shape:&unk_2868B05F8];
  if (v21)
  {
    v22 = [MEMORY[0x277CBEA90] dataWithBytes:&EndMask length:4];
    [(MLViewerNodePropertyDataSPI *)v21 setValue:v22];

    [v18 addObject:v21];
  }

  ShrinkAxisMask = mlir::mps::StridedSliceOp::getShrinkAxisMask(&v44);
  v23 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"shrink_axis_mask" dataType:32 shape:&unk_2868B0610];
  if (v23)
  {
    v24 = [MEMORY[0x277CBEA90] dataWithBytes:&ShrinkAxisMask length:4];
    [(MLViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v18 addObject:v23];
  }

  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v44);
  v25 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"end_is_size" dataType:2147483656 shape:&unk_2868B0628];
  if (v25)
  {
    v26 = [MEMORY[0x277CBEA90] dataWithBytes:&IsSize length:1];
    [(MLViewerNodePropertyDataSPI *)v25 setValue:v26];

    [v18 addObject:v25];
  }

  v27 = [MEMORY[0x277CBEB18] array];
  v28 = [MLViewerNodeSPI alloc];
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v30 = [MEMORY[0x277CBEA60] arrayWithArray:v38];
  v31 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
  v32 = [MEMORY[0x277CBEA60] arrayWithArray:v27];
  v33 = [(MLViewerNodeSPI *)v28 initWithType:v37 inputs:v29 outputs:v30 properties:v31 regions:v32];
  v34 = *(this + 3);
  *(this + 3) = v33;
  v35 = ;
  [*(this + 3) setLocalizedDescription:v35];

  if (v43 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256418D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSStridedSliceUpdateOpHandler *EmitterViewerSPI::MPSStridedSliceUpdateOpHandler::MPSStridedSliceUpdateOpHandler(EmitterViewerSPI::MPSStridedSliceUpdateOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859830;
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

  v39 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"data", *(*(v45 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"update", *(*(v45 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"begin", *(*(v45 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"end", *(*(v45 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = EmitViewerSPI::emitNodeInputPort(a2, @"stride", *(*(v45 + 9) + 152));
  if (v15)
  {
    [v10 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  if (*(v45 + 9))
  {
    v17 = v45 - 16;
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
  LODWORD(v46) = mlir::mps::StridedSliceUpdateOp::getBeginMask(&v45);
  v21 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"begin_mask" dataType:32 shape:&unk_2868B0640];
  if (v21)
  {
    v22 = [MEMORY[0x277CBEA90] dataWithBytes:&v46 length:4];
    [(MLViewerNodePropertyDataSPI *)v21 setValue:v22];

    [v20 addObject:v21];
  }

  EndMask = mlir::mps::StridedSliceUpdateOp::getEndMask(&v45);
  v23 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"end_mask" dataType:32 shape:&unk_2868B0658];
  if (v23)
  {
    v24 = [MEMORY[0x277CBEA90] dataWithBytes:&EndMask length:4];
    [(MLViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v20 addObject:v23];
  }

  ShrinkAxisMask = mlir::mps::StridedSliceUpdateOp::getShrinkAxisMask(&v45);
  v25 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"shrink_axis_mask" dataType:32 shape:&unk_2868B0670];
  if (v25)
  {
    v26 = [MEMORY[0x277CBEA90] dataWithBytes:&ShrinkAxisMask length:4];
    [(MLViewerNodePropertyDataSPI *)v25 setValue:v26];

    [v20 addObject:v25];
  }

  IsSize = mlir::mps::StridedSliceUpdateOp::getEndIsSize(&v45);
  v27 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"end_is_size" dataType:2147483656 shape:&unk_2868B0688];
  if (v27)
  {
    v28 = [MEMORY[0x277CBEA90] dataWithBytes:&IsSize length:1];
    [(MLViewerNodePropertyDataSPI *)v27 setValue:v28];

    [v20 addObject:v27];
  }

  v29 = [MEMORY[0x277CBEB18] array];
  v30 = [MLViewerNodeSPI alloc];
  v31 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v32 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v33 = [MEMORY[0x277CBEA60] arrayWithArray:v20];
  v34 = [MEMORY[0x277CBEA60] arrayWithArray:v29];
  v35 = [(MLViewerNodeSPI *)v30 initWithType:v39 inputs:v31 outputs:v32 properties:v33 regions:v34];
  v36 = *(this + 3);
  *(this + 3) = v35;
  v37 = ;
  [*(this + 3) setLocalizedDescription:v37];

  if (v44 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256419474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSubtractOpHandler *EmitterViewerSPI::MPSSubtractOpHandler::MPSSubtractOpHandler(EmitterViewerSPI::MPSSubtractOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859848;
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

void sub_256419918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSwishOpHandler *EmitterViewerSPI::MPSSwishOpHandler::MPSSwishOpHandler(EmitterViewerSPI::MPSSwishOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859860;
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

void sub_256419CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSTanOpHandler *EmitterViewerSPI::MPSTanOpHandler::MPSTanOpHandler(EmitterViewerSPI::MPSTanOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859878;
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

void sub_25641A0C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSTanhOpHandler *EmitterViewerSPI::MPSTanhOpHandler::MPSTanhOpHandler(EmitterViewerSPI::MPSTanhOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859890;
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

void sub_25641A49C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSTileGradientOpHandler *EmitterViewerSPI::MPSTileGradientOpHandler::MPSTileGradientOpHandler(EmitterViewerSPI::MPSTileGradientOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868598A8;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"multiplier", *(*(a3 + 9) + 88));
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

void sub_25641A8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSTileOpHandler *EmitterViewerSPI::MPSTileOpHandler::MPSTileOpHandler(EmitterViewerSPI::MPSTileOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868598C0;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"multiplier", *(*(a3 + 9) + 56));
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

void sub_25641AD04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSTopKGradientOpHandler *EmitterViewerSPI::MPSTopKGradientOpHandler::MPSTopKGradientOpHandler(EmitterViewerSPI::MPSTopKGradientOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868598D8;
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

  v33 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v34 = v10;
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v37 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input_gradient", *(*(v37 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v37 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"k", *(*(v37 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = [MEMORY[0x277CBEB18] array];
  if (*(v37 + 9))
  {
    v16 = v37 - 16;
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
  LOBYTE(v38) = mlir::mps::TopKGradientOp::getSmallest(&v37);
  v20 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"smallest" dataType:2147483656 shape:&unk_2868B06A0];
  if (v20)
  {
    v21 = [MEMORY[0x277CBEA90] dataWithBytes:&v38 length:1];
    [(MLViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v19 addObject:v20];
  }

  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MLViewerNodeSPI alloc];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v25 = v15;
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v19];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v29 = [(MLViewerNodeSPI *)v23 initWithType:v33 inputs:v24 outputs:v26 properties:v27 regions:v28];
  v30 = *(this + 3);
  *(this + 3) = v29;
  v31 = ;
  [*(this + 3) setLocalizedDescription:v31];

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25641B20C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSTopKOpHandler *EmitterViewerSPI::MPSTopKOpHandler::MPSTopKOpHandler(EmitterViewerSPI::MPSTopKOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868598F0;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v38 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"k", *(*(v38 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
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
  v17 = EmitViewerSPI::emitNodeOutputPort(a2, @"values", NextResultAtOffset);
  if (v17)
  {
    [v14 addObject:v17];
  }

  if (*(v38 + 9))
  {
    v18 = v38 - 16;
  }

  else
  {
    v18 = 0;
  }

  v19 = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 1);
  v20 = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0);
  v21 = EmitViewerSPI::emitNodeOutputPort(a2, @"indices", v20);
  if (v21)
  {
    [v14 addObject:v21];
  }

  v22 = [MEMORY[0x277CBEB18] array];
  LOBYTE(v39) = mlir::mps::TopKOp::getSmallest(&v38);
  v23 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"smallest" dataType:2147483656 shape:&unk_2868B06B8];
  if (v23)
  {
    v24 = [MEMORY[0x277CBEA90] dataWithBytes:&v39 length:1];
    [(MLViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v22 addObject:v23];
  }

  v25 = [MEMORY[0x277CBEB18] array];
  v26 = [MLViewerNodeSPI alloc];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
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

void sub_25641B770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSTransposeOpHandler *EmitterViewerSPI::MPSTransposeOpHandler::MPSTransposeOpHandler(EmitterViewerSPI::MPSTransposeOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859908;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axis1", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"axis2", *(*(a3 + 9) + 88));
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