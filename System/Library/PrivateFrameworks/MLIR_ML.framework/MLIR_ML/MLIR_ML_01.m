void sub_2563C0DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECEluOpHandler *EmitterViewerSPI::ANECEluOpHandler::ANECEluOpHandler(EmitterViewerSPI::ANECEluOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  v35[3] = *MEMORY[0x277D85DE8];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286857FA0;
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

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(v33 + 9))
  {
    v13 = v33 - 16;
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
  mlir::anec::Rsqrt::getEpsilon(&v33, &v34);
  v17 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"alpha" dataType:268435488 shape:&unk_2868AF878];
  if (v17)
  {
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:&v34 length:32];
    [(MLViewerNodePropertyDataSPI *)v17 setValue:v18];

    [v16 addObject:v17];
  }

  v19 = v35[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v20) == v19)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v35);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v35);
  }

  v21 = [MEMORY[0x277CBEB18] array];
  v22 = [MLViewerNodeSPI alloc];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
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

void sub_2563C123C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  llvm::APFloat::~APFloat(&a17);

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECErfOpHandler *EmitterViewerSPI::ANECErfOpHandler::ANECErfOpHandler(EmitterViewerSPI::ANECErfOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286857FB8;
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

void sub_2563C1604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECExp2OpHandler *EmitterViewerSPI::ANECExp2OpHandler::ANECExp2OpHandler(EmitterViewerSPI::ANECExp2OpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286857FD0;
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

void sub_2563C1994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECFlattenOpHandler *EmitterViewerSPI::ANECFlattenOpHandler::ANECFlattenOpHandler(EmitterViewerSPI::ANECFlattenOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286857FE8;
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

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v31 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v34 + 9) + 24));
  if (v11)
  {
    [v31 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(v34 + 9))
  {
    v13 = v34 - 16;
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
  FlattenMode = mlir::anec::Flatten::getFlattenMode(&v34);
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:1];
  [v18 addObject:v19];

  v20 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:2];
  [v18 addObject:v20];

  v21 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"flatten_mode" type:@"ANECFlattenMode" cases:v18 value:FlattenMode];
  if (v21)
  {
    [v16 addObject:v21];
  }

  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MLViewerNodeSPI alloc];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v31];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v28 = [(MLViewerNodeSPI *)v23 initWithType:v10 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563C1DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECFloorOpHandler *EmitterViewerSPI::ANECFloorOpHandler::ANECFloorOpHandler(EmitterViewerSPI::ANECFloorOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858000;
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

void sub_2563C21A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECGOCOpHandler *EmitterViewerSPI::ANECGOCOpHandler::ANECGOCOpHandler(EmitterViewerSPI::ANECGOCOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858018;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"scale", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"bias", *(*(a3 + 9) + 88));
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

void sub_2563C2598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECGatherNDOpHandler *EmitterViewerSPI::ANECGatherNDOpHandler::ANECGatherNDOpHandler(EmitterViewerSPI::ANECGatherNDOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858030;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"data", *(*(v34 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"index", *(*(v34 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(v34 + 9))
  {
    v14 = v34 - 16;
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
  Axes = mlir::anec::Softmax::getAxes(&v34);
  v19 = Axes;
  if (Axes)
  {
    Axes = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Axes + 8);
    v20 = Axes;
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(Axes, @"axes", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MLViewerNodeSPI alloc];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
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

void sub_2563C29DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECGeluOpHandler *EmitterViewerSPI::ANECGeluOpHandler::ANECGeluOpHandler(EmitterViewerSPI::ANECGeluOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858048;
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

void sub_2563C2D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECGlobalArgMinMaxOpHandler *EmitterViewerSPI::ANECGlobalArgMinMaxOpHandler::ANECGlobalArgMinMaxOpHandler(EmitterViewerSPI::ANECGlobalArgMinMaxOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858060;
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

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(v36 + 9))
  {
    v13 = v36 - 16;
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
  LODWORD(v37) = mlir::anec::GlobalArgMinMax::getAxis(&v36);
  v17 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"axis" dataType:32 shape:&unk_2868AF890];
  if (v17)
  {
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:&v37 length:4];
    [(MLViewerNodePropertyDataSPI *)v17 setValue:v18];

    [v16 addObject:v17];
  }

  FlattenMode = mlir::anec::Unflatten::getFlattenMode(&v36);
  v20 = [MEMORY[0x277CBEB18] array];
  v21 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Min" value:0];
  [v20 addObject:v21];

  v22 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Max" value:1];
  [v20 addObject:v22];

  v23 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"mode" type:@"ANECArgMinMaxMode" cases:v20 value:FlattenMode];
  if (v23)
  {
    [v16 addObject:v23];
  }

  v24 = [MEMORY[0x277CBEB18] array];
  v25 = [MLViewerNodeSPI alloc];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v24];
  v30 = [(MLViewerNodeSPI *)v25 initWithType:v33 inputs:v26 outputs:v27 properties:v28 regions:v29];
  v31 = *(this + 3);
  *(this + 3) = v30;

  if (v35 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563C3254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECHighPrecisionSigmoidOpHandler *EmitterViewerSPI::ANECHighPrecisionSigmoidOpHandler::ANECHighPrecisionSigmoidOpHandler(EmitterViewerSPI::ANECHighPrecisionSigmoidOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858078;
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

void sub_2563C3634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECInputViewOpHandler *EmitterViewerSPI::ANECInputViewOpHandler::ANECInputViewOpHandler(EmitterViewerSPI::ANECInputViewOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858090;
  v5 = *(*(a3 + 6) + 8);
  v40 = a3;
  Height = v5;
  Value = mlir::StringAttr::getValue(&Height);
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

  v33 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v34 = [MEMORY[0x277CBEB18] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v40 + 9) + 24));
  if (v10)
  {
    [v34 addObject:v10];
  }

  v11 = [MEMORY[0x277CBEB18] array];
  if (*(v40 + 9))
  {
    v12 = v40 - 16;
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
  Height = mlir::anec::Resize::getHeight(&v40);
  v16 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"dimension" dataType:64 shape:&unk_2868AF8A8];
  if (v16)
  {
    v17 = [MEMORY[0x277CBEA90] dataWithBytes:&Height length:8];
    [(MLViewerNodePropertyDataSPI *)v16 setValue:v17];

    [v15 addObject:v16];
  }

  Offset = mlir::anec::InputView::getOffset(&v40);
  v18 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"offset" dataType:64 shape:&unk_2868AF8C0];
  if (v18)
  {
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:&Offset length:8];
    [(MLViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v15 addObject:v18];
  }

  Size = mlir::anec::InputView::getSize(&v40);
  v20 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"size" dataType:64 shape:&unk_2868AF8D8];
  if (v20)
  {
    v21 = [MEMORY[0x277CBEA90] dataWithBytes:&Size length:8];
    [(MLViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v15 addObject:v20];
  }

  Step = mlir::anec::InputView::getStep(&v40);
  v22 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"step" dataType:536870976 shape:&unk_2868AF8F0];
  if (v22)
  {
    v23 = [MEMORY[0x277CBEA90] dataWithBytes:&Step length:8];
    [(MLViewerNodePropertyDataSPI *)v22 setValue:v23];

    [v15 addObject:v22];
  }

  v24 = [MEMORY[0x277CBEB18] array];
  v25 = [MLViewerNodeSPI alloc];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v34];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v24];
  v30 = [(MLViewerNodeSPI *)v25 initWithType:v33 inputs:v26 outputs:v27 properties:v28 regions:v29];
  v31 = *(this + 3);
  *(this + 3) = v30;

  if (v39 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563C3B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECInstanceNormOpHandler *EmitterViewerSPI::ANECInstanceNormOpHandler::ANECInstanceNormOpHandler(EmitterViewerSPI::ANECInstanceNormOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  v39[3] = *MEMORY[0x277D85DE8];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868580A8;
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
  DestinationSize = mlir::anec::Unflatten::getDestinationSize(&v37);
  v18 = DestinationSize;
  if (DestinationSize)
  {
    DestinationSize = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DestinationSize + 8);
    v19 = DestinationSize;
  }

  else
  {
    v19 = 0;
  }

  v20 = EmitViewerSPI::emitElementsAttrProperty(DestinationSize, @"axes", v18, v19);
  if (v20)
  {
    [v16 addObject:v20];
  }

  mlir::anec::InstanceNorm::getEpsilon(&v37, &v38);
  v21 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"epsilon" dataType:268435488 shape:&unk_2868AF908];
  if (v21)
  {
    v22 = [MEMORY[0x277CBEA90] dataWithBytes:&v38 length:32];
    [(MLViewerNodePropertyDataSPI *)v21 setValue:v22];

    [v16 addObject:v21];
  }

  v23 = v39[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v24) == v23)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v39);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v39);
  }

  v25 = [MEMORY[0x277CBEB18] array];
  v26 = [MLViewerNodeSPI alloc];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v30 = [MEMORY[0x277CBEA60] arrayWithArray:v25];
  v31 = [(MLViewerNodeSPI *)v26 initWithType:v34 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563C40B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  llvm::APFloat::~APFloat(&a17);

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECInvertOpHandler *EmitterViewerSPI::ANECInvertOpHandler::ANECInvertOpHandler(EmitterViewerSPI::ANECInvertOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  v35[3] = *MEMORY[0x277D85DE8];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868580C0;
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

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(v33 + 9))
  {
    v13 = v33 - 16;
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
  mlir::anec::Rsqrt::getEpsilon(&v33, &v34);
  v17 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"epsilon" dataType:268435488 shape:&unk_2868AF920];
  if (v17)
  {
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:&v34 length:32];
    [(MLViewerNodePropertyDataSPI *)v17 setValue:v18];

    [v16 addObject:v17];
  }

  v19 = v35[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v20) == v19)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v35);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v35);
  }

  v21 = [MEMORY[0x277CBEB18] array];
  v22 = [MLViewerNodeSPI alloc];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
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

void sub_2563C4564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  llvm::APFloat::~APFloat(&a17);

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECL2NormPoolOpHandler *EmitterViewerSPI::ANECL2NormPoolOpHandler::ANECL2NormPoolOpHandler(EmitterViewerSPI::ANECL2NormPoolOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868580D8;
  v5 = *(*(a3 + 6) + 8);
  v41 = a3;
  v42 = v5;
  Value = mlir::StringAttr::getValue(&v42);
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

  v40 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v40 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v41 + 9) + 24));
  if (v12)
  {
    [v11 addObject:v12];
  }

  v38 = [MEMORY[0x277CBEB18] array];
  if (*(v41 + 9))
  {
    v13 = v41 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v38 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  Stride = mlir::anec::MaxPool::getStride(&v41);
  v18 = Stride;
  if (Stride)
  {
    Stride = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Stride + 8);
    v19 = Stride;
  }

  else
  {
    v19 = 0;
  }

  v20 = EmitViewerSPI::emitElementsAttrProperty(Stride, @"stride", v18, v19);
  if (v20)
  {
    [v16 addObject:v20];
  }

  Padding = mlir::anec::MaxPool::getPadding(&v41);
  v22 = Padding;
  if (Padding)
  {
    Padding = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Padding + 8);
    v23 = Padding;
  }

  else
  {
    v23 = 0;
  }

  v24 = EmitViewerSPI::emitElementsAttrProperty(Padding, @"padding", v22, v23);
  if (v24)
  {
    [v16 addObject:v24];
  }

  Ksize = mlir::anec::MaxPool::getKsize(&v41);
  v26 = Ksize;
  if (Ksize)
  {
    Ksize = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Ksize + 8);
    v27 = Ksize;
  }

  else
  {
    v27 = 0;
  }

  v28 = EmitViewerSPI::emitElementsAttrProperty(Ksize, @"ksize", v26, v27);
  if (v28)
  {
    [v16 addObject:v28];
  }

  v29 = [MEMORY[0x277CBEB18] array];
  v30 = [MLViewerNodeSPI alloc];
  v31 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v32 = [MEMORY[0x277CBEA60] arrayWithArray:v38];
  v33 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v34 = [MEMORY[0x277CBEA60] arrayWithArray:v29];
  v35 = [(MLViewerNodeSPI *)v30 initWithType:v10 inputs:v31 outputs:v32 properties:v33 regions:v34];
  v36 = *(this + 3);
  *(this + 3) = v35;

  if (v40 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563C4A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECLayerNormOpHandler *EmitterViewerSPI::ANECLayerNormOpHandler::ANECLayerNormOpHandler(EmitterViewerSPI::ANECLayerNormOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  v39[3] = *MEMORY[0x277D85DE8];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868580F0;
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
  DestinationSize = mlir::anec::Unflatten::getDestinationSize(&v37);
  v18 = DestinationSize;
  if (DestinationSize)
  {
    DestinationSize = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DestinationSize + 8);
    v19 = DestinationSize;
  }

  else
  {
    v19 = 0;
  }

  v20 = EmitViewerSPI::emitElementsAttrProperty(DestinationSize, @"axes", v18, v19);
  if (v20)
  {
    [v16 addObject:v20];
  }

  mlir::anec::InstanceNorm::getEpsilon(&v37, &v38);
  v21 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"epsilon" dataType:268435488 shape:&unk_2868AF938];
  if (v21)
  {
    v22 = [MEMORY[0x277CBEA90] dataWithBytes:&v38 length:32];
    [(MLViewerNodePropertyDataSPI *)v21 setValue:v22];

    [v16 addObject:v21];
  }

  v23 = v39[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v24) == v23)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v39);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v39);
  }

  v25 = [MEMORY[0x277CBEB18] array];
  v26 = [MLViewerNodeSPI alloc];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v30 = [MEMORY[0x277CBEA60] arrayWithArray:v25];
  v31 = [(MLViewerNodeSPI *)v26 initWithType:v34 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563C4F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  llvm::APFloat::~APFloat(&a17);

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECLeakyReluOpHandler *EmitterViewerSPI::ANECLeakyReluOpHandler::ANECLeakyReluOpHandler(EmitterViewerSPI::ANECLeakyReluOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  v39[3] = *MEMORY[0x277D85DE8];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858108;
  v35 = a3;
  v38 = *(*(a3 + 6) + 8);
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

  v32 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v35 + 9) + 24));
  if (v10)
  {
    [v9 addObject:v10];
  }

  v11 = [MEMORY[0x277CBEB18] array];
  if (*(v35 + 9))
  {
    v12 = v35 - 16;
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
  mlir::anec::DeQuant::getScale(&v35, &v38);
  v16 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"offset" dataType:268435488 shape:&unk_2868AF950];
  if (v16)
  {
    v17 = [MEMORY[0x277CBEA90] dataWithBytes:&v38 length:32];
    [(MLViewerNodePropertyDataSPI *)v16 setValue:v17];

    [v15 addObject:v16];
  }

  mlir::anec::InstanceNorm::getEpsilon(&v35, v36);
  v18 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"slope" dataType:268435488 shape:&unk_2868AF968];
  if (v18)
  {
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:v36 length:32];
    [(MLViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v15 addObject:v18];
  }

  v20 = v37[0];
  v22 = llvm::APFloatBase::PPCDoubleDouble(v21);
  if (v22 == v20)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v37);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v37);
  }

  if (v22 == v39[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v39);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v39);
  }

  v23 = [MEMORY[0x277CBEB18] array];
  v24 = [MLViewerNodeSPI alloc];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v23];
  v29 = [(MLViewerNodeSPI *)v24 initWithType:v32 inputs:v25 outputs:v26 properties:v27 regions:v28];
  v30 = *(this + 3);
  *(this + 3) = v29;

  if (v34 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563C5458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  llvm::APFloat::~APFloat(&a17);

  llvm::APFloat::~APFloat(&a21);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECLinearOpHandler *EmitterViewerSPI::ANECLinearOpHandler::ANECLinearOpHandler(EmitterViewerSPI::ANECLinearOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858120;
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

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x277CBEB18] array];
  v41 = v11;
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v44 + 9) + 24));
  if (v12)
  {
    [v11 addObject:{v12, v11}];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"kernel", *(*(v44 + 9) + 56));
  if (v13)
  {
    [v11 addObject:v13];
  }

  v14 = [MEMORY[0x277CBEB18] array];
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
    [v14 addObject:v17];
  }

  v18 = [MEMORY[0x277CBEB18] array];
  KernelScale = mlir::anec::Linear::getKernelScale(&v44);
  if (v20)
  {
    if (KernelScale)
    {
      v21 = KernelScale;
      KernelScale = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelScale + 8);
      v22 = KernelScale;
      v23 = v21;
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }

    v24 = EmitViewerSPI::emitElementsAttrProperty(KernelScale, @"kernel_scale", v23, v22);
    if (v24)
    {
      [v18 addObject:v24];
    }
  }

  KernelZeroPoint = mlir::anec::Linear::getKernelZeroPoint(&v44);
  if (v26)
  {
    if (KernelZeroPoint)
    {
      v27 = KernelZeroPoint;
      KernelZeroPoint = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelZeroPoint + 8);
      v28 = KernelZeroPoint;
      v29 = v27;
    }

    else
    {
      v29 = 0;
      v28 = 0;
    }

    v30 = EmitViewerSPI::emitElementsAttrProperty(KernelZeroPoint, @"kernel_zero_point", v29, v28);
    if (v30)
    {
      [v18 addObject:v30];
    }
  }

  mlir::anec::Linear::getKernelLut(&v44);
  v31 = [MEMORY[0x277CBEB18] array];
  v32 = [MLViewerNodeSPI alloc];
  v33 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v34 = v10;
  v35 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v36 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
  v37 = [MEMORY[0x277CBEA60] arrayWithArray:v31];
  v38 = [(MLViewerNodeSPI *)v32 initWithType:v34 inputs:v33 outputs:v35 properties:v36 regions:v37];
  v39 = *(this + 3);
  *(this + 3) = v38;

  if (v43 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563C5954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECLog2OpHandler *EmitterViewerSPI::ANECLog2OpHandler::ANECLog2OpHandler(EmitterViewerSPI::ANECLog2OpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  v35[3] = *MEMORY[0x277D85DE8];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858138;
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

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(v33 + 9))
  {
    v13 = v33 - 16;
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
  mlir::anec::Rsqrt::getEpsilon(&v33, &v34);
  v17 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"epsilon" dataType:268435488 shape:&unk_2868AF980];
  if (v17)
  {
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:&v34 length:32];
    [(MLViewerNodePropertyDataSPI *)v17 setValue:v18];

    [v16 addObject:v17];
  }

  v19 = v35[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v20) == v19)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v35);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v35);
  }

  v21 = [MEMORY[0x277CBEB18] array];
  v22 = [MLViewerNodeSPI alloc];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
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

void sub_2563C5DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  llvm::APFloat::~APFloat(&a17);

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECMatMulOpHandler *EmitterViewerSPI::ANECMatMulOpHandler::ANECMatMulOpHandler(EmitterViewerSPI::ANECMatMulOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858150;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(v35 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(v35 + 9) + 56));
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
  mlir::anec::MatMul::getBias(&v35, &v36);
  if (v38 == 1)
  {
    v18 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"bias" dataType:268435488 shape:&unk_2868AF998];
    if (v18)
    {
      if ((v38 & 1) == 0)
      {
        v31 = std::__throw_bad_optional_access[abi:nn200100]();

        std::optional<llvm::APFloat>::~optional(&v36);
        if (v34 < 0)
        {
          operator delete(__dst);
        }

        _Unwind_Resume(v31);
      }

      v19 = [MEMORY[0x277CBEA90] dataWithBytes:&v36 length:40];
      [(MLViewerNodePropertyDataSPI *)v18 setValue:v19];

      [v17 addObject:v18];
    }

    if (v38)
    {
      v21 = v37[0];
      if (llvm::APFloatBase::PPCDoubleDouble(v20) == v21)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v37);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v37);
      }
    }
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

  if (v34 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

_BYTE *std::optional<llvm::APFloat>::~optional(_BYTE *result)
{
  if (result[32] == 1)
  {
    v1 = result;
    v2 = (result + 8);
    v3 = *(result + 1);
    if (llvm::APFloatBase::PPCDoubleDouble(result) == v3)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v2);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v2);
    }

    return v1;
  }

  return result;
}

EmitterViewerSPI::ANECMaxPoolOpHandler *EmitterViewerSPI::ANECMaxPoolOpHandler::ANECMaxPoolOpHandler(EmitterViewerSPI::ANECMaxPoolOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858168;
  v5 = *(*(a3 + 6) + 8);
  v41 = a3;
  v42 = v5;
  Value = mlir::StringAttr::getValue(&v42);
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

  v40 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v40 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v41 + 9) + 24));
  if (v12)
  {
    [v11 addObject:v12];
  }

  v38 = [MEMORY[0x277CBEB18] array];
  if (*(v41 + 9))
  {
    v13 = v41 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v38 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  Stride = mlir::anec::MaxPool::getStride(&v41);
  v18 = Stride;
  if (Stride)
  {
    Stride = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Stride + 8);
    v19 = Stride;
  }

  else
  {
    v19 = 0;
  }

  v20 = EmitViewerSPI::emitElementsAttrProperty(Stride, @"stride", v18, v19);
  if (v20)
  {
    [v16 addObject:v20];
  }

  Padding = mlir::anec::MaxPool::getPadding(&v41);
  v22 = Padding;
  if (Padding)
  {
    Padding = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Padding + 8);
    v23 = Padding;
  }

  else
  {
    v23 = 0;
  }

  v24 = EmitViewerSPI::emitElementsAttrProperty(Padding, @"padding", v22, v23);
  if (v24)
  {
    [v16 addObject:v24];
  }

  Ksize = mlir::anec::MaxPool::getKsize(&v41);
  v26 = Ksize;
  if (Ksize)
  {
    Ksize = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Ksize + 8);
    v27 = Ksize;
  }

  else
  {
    v27 = 0;
  }

  v28 = EmitViewerSPI::emitElementsAttrProperty(Ksize, @"ksize", v26, v27);
  if (v28)
  {
    [v16 addObject:v28];
  }

  v29 = [MEMORY[0x277CBEB18] array];
  v30 = [MLViewerNodeSPI alloc];
  v31 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v32 = [MEMORY[0x277CBEA60] arrayWithArray:v38];
  v33 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v34 = [MEMORY[0x277CBEA60] arrayWithArray:v29];
  v35 = [(MLViewerNodeSPI *)v30 initWithType:v10 inputs:v31 outputs:v32 properties:v33 regions:v34];
  v36 = *(this + 3);
  *(this + 3) = v35;

  if (v40 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563C680C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECNReluOpHandler *EmitterViewerSPI::ANECNReluOpHandler::ANECNReluOpHandler(EmitterViewerSPI::ANECNReluOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  v39[3] = *MEMORY[0x277D85DE8];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858180;
  v35 = a3;
  v38 = *(*(a3 + 6) + 8);
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

  v32 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v35 + 9) + 24));
  if (v10)
  {
    [v9 addObject:v10];
  }

  v11 = [MEMORY[0x277CBEB18] array];
  if (*(v35 + 9))
  {
    v12 = v35 - 16;
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
  mlir::anec::DeQuant::getScale(&v35, &v38);
  v16 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"max_value" dataType:268435488 shape:&unk_2868AF9B0];
  if (v16)
  {
    v17 = [MEMORY[0x277CBEA90] dataWithBytes:&v38 length:32];
    [(MLViewerNodePropertyDataSPI *)v16 setValue:v17];

    [v15 addObject:v16];
  }

  mlir::anec::InstanceNorm::getEpsilon(&v35, v36);
  v18 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"slope" dataType:268435488 shape:&unk_2868AF9C8];
  if (v18)
  {
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:v36 length:32];
    [(MLViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v15 addObject:v18];
  }

  v20 = v37[0];
  v22 = llvm::APFloatBase::PPCDoubleDouble(v21);
  if (v22 == v20)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v37);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v37);
  }

  if (v22 == v39[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v39);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v39);
  }

  v23 = [MEMORY[0x277CBEB18] array];
  v24 = [MLViewerNodeSPI alloc];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v23];
  v29 = [(MLViewerNodeSPI *)v24 initWithType:v32 inputs:v25 outputs:v26 properties:v27 regions:v28];
  v30 = *(this + 3);
  *(this + 3) = v29;

  if (v34 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563C6D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  llvm::APFloat::~APFloat(&a17);

  llvm::APFloat::~APFloat(&a21);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECPaddingOpHandler *EmitterViewerSPI::ANECPaddingOpHandler::ANECPaddingOpHandler(EmitterViewerSPI::ANECPaddingOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  v43[3] = *MEMORY[0x277D85DE8];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858198;
  v5 = *(*(a3 + 6) + 8);
  v41 = a3;
  v42 = v5;
  Value = mlir::StringAttr::getValue(&v42);
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

  v40 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v40 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v38 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v41 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(v41 + 9))
  {
    v13 = v41 - 16;
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
  Padding = mlir::anec::MaxPool::getPadding(&v41);
  v18 = Padding;
  if (Padding)
  {
    Padding = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Padding + 8);
    v19 = Padding;
  }

  else
  {
    v19 = 0;
  }

  v20 = EmitViewerSPI::emitElementsAttrProperty(Padding, @"padding_modes", v18, v19);
  if (v20)
  {
    [v16 addObject:v20];
  }

  Stride = mlir::anec::MaxPool::getStride(&v41);
  v22 = Stride;
  if (Stride)
  {
    Stride = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Stride + 8);
    v23 = Stride;
  }

  else
  {
    v23 = 0;
  }

  v24 = EmitViewerSPI::emitElementsAttrProperty(Stride, @"padding_sizes", v22, v23);
  if (v24)
  {
    [v16 addObject:v24];
  }

  mlir::anec::Padding::getBackgroundValue(&v41, &v42);
  v25 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"background_value" dataType:268435488 shape:&unk_2868AF9E0];
  if (v25)
  {
    v26 = [MEMORY[0x277CBEA90] dataWithBytes:&v42 length:32];
    [(MLViewerNodePropertyDataSPI *)v25 setValue:v26];

    [v16 addObject:v25];
  }

  v27 = v43[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v28) == v27)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v43);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v43);
  }

  v29 = [MEMORY[0x277CBEB18] array];
  v30 = [MLViewerNodeSPI alloc];
  v31 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v32 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v33 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v34 = [MEMORY[0x277CBEA60] arrayWithArray:v29];
  v35 = [(MLViewerNodeSPI *)v30 initWithType:v38 inputs:v31 outputs:v32 properties:v33 regions:v34];
  v36 = *(this + 3);
  *(this + 3) = v35;

  if (v40 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563C72A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  llvm::APFloat::~APFloat(&a17);

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECPixelShuffleOpHandler *EmitterViewerSPI::ANECPixelShuffleOpHandler::ANECPixelShuffleOpHandler(EmitterViewerSPI::ANECPixelShuffleOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868581B0;
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

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x277CBEB18] array];
  v31 = v11;
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v34 + 9) + 24));
  if (v12)
  {
    [v11 addObject:{v12, v11}];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(v34 + 9))
  {
    v14 = v34 - 16;
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
  Axes = mlir::anec::Softmax::getAxes(&v34);
  v19 = Axes;
  if (Axes)
  {
    Axes = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Axes + 8);
    v20 = Axes;
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(Axes, @"factors", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MLViewerNodeSPI alloc];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v28 = [(MLViewerNodeSPI *)v23 initWithType:v10 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563C76FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECPixelUnshuffleOpHandler *EmitterViewerSPI::ANECPixelUnshuffleOpHandler::ANECPixelUnshuffleOpHandler(EmitterViewerSPI::ANECPixelUnshuffleOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868581C8;
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

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x277CBEB18] array];
  v31 = v11;
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v34 + 9) + 24));
  if (v12)
  {
    [v11 addObject:{v12, v11}];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(v34 + 9))
  {
    v14 = v34 - 16;
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
  Axes = mlir::anec::Softmax::getAxes(&v34);
  v19 = Axes;
  if (Axes)
  {
    Axes = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Axes + 8);
    v20 = Axes;
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(Axes, @"factors", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MLViewerNodeSPI alloc];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v28 = [(MLViewerNodeSPI *)v23 initWithType:v10 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563C7B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECQuantOpHandler *EmitterViewerSPI::ANECQuantOpHandler::ANECQuantOpHandler(EmitterViewerSPI::ANECQuantOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  v38[3] = *MEMORY[0x277D85DE8];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868581E0;
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

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(v36 + 9))
  {
    v13 = v36 - 16;
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
  mlir::anec::DeQuant::getScale(&v36, &v37);
  v17 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"scale" dataType:268435488 shape:&unk_2868AF9F8];
  if (v17)
  {
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:&v37 length:32];
    [(MLViewerNodePropertyDataSPI *)v17 setValue:v18];

    [v16 addObject:v17];
  }

  ZeroPoint = mlir::anec::DeQuant::getZeroPoint(&v36);
  v19 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"zero_point" dataType:536870944 shape:&unk_2868AFA10];
  if (v19)
  {
    v20 = [MEMORY[0x277CBEA90] dataWithBytes:&ZeroPoint length:4];
    [(MLViewerNodePropertyDataSPI *)v19 setValue:v20];

    [v16 addObject:v19];
  }

  v21 = v38[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v22) == v21)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v38);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v38);
  }

  v23 = [MEMORY[0x277CBEB18] array];
  v24 = [MLViewerNodeSPI alloc];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v23];
  v29 = [(MLViewerNodeSPI *)v24 initWithType:v32 inputs:v25 outputs:v26 properties:v27 regions:v28];
  v30 = *(this + 3);
  *(this + 3) = v29;

  if (v35 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563C7FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19)
{
  llvm::APFloat::~APFloat(&a19);

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECReduceAvgOpHandler *EmitterViewerSPI::ANECReduceAvgOpHandler::ANECReduceAvgOpHandler(EmitterViewerSPI::ANECReduceAvgOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868581F8;
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

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x277CBEB18] array];
  v31 = v11;
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v34 + 9) + 24));
  if (v12)
  {
    [v11 addObject:{v12, v11}];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(v34 + 9))
  {
    v14 = v34 - 16;
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
  Axes = mlir::anec::Softmax::getAxes(&v34);
  v19 = Axes;
  if (Axes)
  {
    Axes = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Axes + 8);
    v20 = Axes;
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(Axes, @"axes", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MLViewerNodeSPI alloc];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v28 = [(MLViewerNodeSPI *)v23 initWithType:v10 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563C8430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECReduceMaxOpHandler *EmitterViewerSPI::ANECReduceMaxOpHandler::ANECReduceMaxOpHandler(EmitterViewerSPI::ANECReduceMaxOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858210;
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

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x277CBEB18] array];
  v31 = v11;
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v34 + 9) + 24));
  if (v12)
  {
    [v11 addObject:{v12, v11}];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(v34 + 9))
  {
    v14 = v34 - 16;
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
  Axes = mlir::anec::Softmax::getAxes(&v34);
  v19 = Axes;
  if (Axes)
  {
    Axes = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Axes + 8);
    v20 = Axes;
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(Axes, @"axes", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MLViewerNodeSPI alloc];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v28 = [(MLViewerNodeSPI *)v23 initWithType:v10 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563C8838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECReduceMinOpHandler *EmitterViewerSPI::ANECReduceMinOpHandler::ANECReduceMinOpHandler(EmitterViewerSPI::ANECReduceMinOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858228;
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

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x277CBEB18] array];
  v31 = v11;
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v34 + 9) + 24));
  if (v12)
  {
    [v11 addObject:{v12, v11}];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(v34 + 9))
  {
    v14 = v34 - 16;
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
  Axes = mlir::anec::Softmax::getAxes(&v34);
  v19 = Axes;
  if (Axes)
  {
    Axes = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Axes + 8);
    v20 = Axes;
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(Axes, @"axes", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MLViewerNodeSPI alloc];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v28 = [(MLViewerNodeSPI *)v23 initWithType:v10 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563C8C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECReduceSumOpHandler *EmitterViewerSPI::ANECReduceSumOpHandler::ANECReduceSumOpHandler(EmitterViewerSPI::ANECReduceSumOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858240;
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

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x277CBEB18] array];
  v31 = v11;
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v34 + 9) + 24));
  if (v12)
  {
    [v11 addObject:{v12, v11}];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(v34 + 9))
  {
    v14 = v34 - 16;
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
  Axes = mlir::anec::Softmax::getAxes(&v34);
  v19 = Axes;
  if (Axes)
  {
    Axes = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Axes + 8);
    v20 = Axes;
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(Axes, @"axes", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MLViewerNodeSPI alloc];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v28 = [(MLViewerNodeSPI *)v23 initWithType:v10 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563C9048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECRegionReturnOpHandler *EmitterViewerSPI::ANECRegionReturnOpHandler::ANECRegionReturnOpHandler(EmitterViewerSPI::ANECRegionReturnOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858258;
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

void sub_2563C942C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECReluOpHandler *EmitterViewerSPI::ANECReluOpHandler::ANECReluOpHandler(EmitterViewerSPI::ANECReluOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858270;
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

void sub_2563C97B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECResampleOpHandler *EmitterViewerSPI::ANECResampleOpHandler::ANECResampleOpHandler(EmitterViewerSPI::ANECResampleOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  v60[3] = *MEMORY[0x277D85DE8];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858288;
  v5 = *(*(a3 + 6) + 8);
  v58 = a3;
  v59 = v5;
  Value = mlir::StringAttr::getValue(&v59);
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

  v57 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v57 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v53 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v55 = [MEMORY[0x277CBEB18] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"data", *(*(v58 + 9) + 24));
  if (v10)
  {
    [v55 addObject:v10];
  }

  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"warp", *(*(v58 + 9) + 56));
  if (v11)
  {
    [v55 addObject:v11];
  }

  v54 = [MEMORY[0x277CBEB18] array];
  if (*(v58 + 9))
  {
    v12 = v58 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v14 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v14)
  {
    [v54 addObject:v14];
  }

  v15 = [MEMORY[0x277CBEB18] array];
  CoordinateMode = mlir::anec::Resample::getCoordinateMode(&v58);
  v17 = CoordinateMode;
  if (CoordinateMode)
  {
    CoordinateMode = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*CoordinateMode + 8);
    v18 = CoordinateMode;
  }

  else
  {
    v18 = 0;
  }

  v19 = EmitViewerSPI::emitElementsAttrProperty(CoordinateMode, @"coordinate_mode", v17, v18);
  if (v19)
  {
    [v15 addObject:v19];
  }

  NormalizedRange = mlir::anec::Resample::getNormalizedRange(&v58);
  v21 = NormalizedRange;
  if (NormalizedRange)
  {
    NormalizedRange = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*NormalizedRange + 8);
    v22 = NormalizedRange;
  }

  else
  {
    v22 = 0;
  }

  v23 = EmitViewerSPI::emitElementsAttrProperty(NormalizedRange, @"normalized_range", v21, v22);
  if (v23)
  {
    [v15 addObject:v23];
  }

  CoordinateType = mlir::anec::Resample::getCoordinateType(&v58);
  v25 = CoordinateType;
  if (CoordinateType)
  {
    CoordinateType = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*CoordinateType + 8);
    v26 = CoordinateType;
  }

  else
  {
    v26 = 0;
  }

  v27 = EmitViewerSPI::emitElementsAttrProperty(CoordinateType, @"coordinate_type", v25, v26);
  if (v27)
  {
    [v15 addObject:v27];
  }

  WarpCoordinateMode = mlir::anec::Resample::getWarpCoordinateMode(&v58);
  v29 = WarpCoordinateMode;
  if (WarpCoordinateMode)
  {
    WarpCoordinateMode = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*WarpCoordinateMode + 8);
    v30 = WarpCoordinateMode;
  }

  else
  {
    v30 = 0;
  }

  v31 = EmitViewerSPI::emitElementsAttrProperty(WarpCoordinateMode, @"warp_coordinate_mode", v29, v30);
  if (v31)
  {
    [v15 addObject:v31];
  }

  SamplingMethod = mlir::anec::Resample::getSamplingMethod(&v58);
  v33 = SamplingMethod;
  if (SamplingMethod)
  {
    SamplingMethod = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*SamplingMethod + 8);
    v34 = SamplingMethod;
  }

  else
  {
    v34 = 0;
  }

  v35 = EmitViewerSPI::emitElementsAttrProperty(SamplingMethod, @"sampling_method", v33, v34);
  if (v35)
  {
    [v15 addObject:v35];
  }

  PaddingModes = mlir::anec::Resample::getPaddingModes(&v58);
  v37 = PaddingModes;
  if (PaddingModes)
  {
    PaddingModes = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*PaddingModes + 8);
    v38 = PaddingModes;
  }

  else
  {
    v38 = 0;
  }

  v39 = EmitViewerSPI::emitElementsAttrProperty(PaddingModes, @"padding_modes", v37, v38);
  if (v39)
  {
    [v15 addObject:v39];
  }

  mlir::anec::Resample::getBackgroundValue(&v58, &v59);
  v40 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"background_value" dataType:268435488 shape:&unk_2868AFA28];
  if (v40)
  {
    v41 = [MEMORY[0x277CBEA90] dataWithBytes:&v59 length:32];
    [(MLViewerNodePropertyDataSPI *)v40 setValue:v41];

    [v15 addObject:v40];
  }

  v42 = v60[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v43) == v42)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v60);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v60);
  }

  v44 = [MEMORY[0x277CBEB18] array];
  v45 = [MLViewerNodeSPI alloc];
  v46 = [MEMORY[0x277CBEA60] arrayWithArray:v55];
  v47 = [MEMORY[0x277CBEA60] arrayWithArray:v54];
  v48 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v49 = [MEMORY[0x277CBEA60] arrayWithArray:v44];
  v50 = [(MLViewerNodeSPI *)v45 initWithType:v53 inputs:v46 outputs:v47 properties:v48 regions:v49];
  v51 = *(this + 3);
  *(this + 3) = v50;

  if (v57 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563C9E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21)
{
  llvm::APFloat::~APFloat(&a21);

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECReshapeOpHandler *EmitterViewerSPI::ANECReshapeOpHandler::ANECReshapeOpHandler(EmitterViewerSPI::ANECReshapeOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868582A0;
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

void sub_2563CA2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECResizeOpHandler *EmitterViewerSPI::ANECResizeOpHandler::ANECResizeOpHandler(EmitterViewerSPI::ANECResizeOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  v53[3] = *MEMORY[0x277D85DE8];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868582B8;
  v49 = a3;
  v52 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v52);
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

  v48 = v6;
  if (v6)
  {
    memmove(&__dst, Value, v6);
  }

  *(&__dst + v7) = 0;
  if (v48 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v43 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v44 = [MEMORY[0x277CBEB18] array];
  v9 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v49 + 9) + 24));
  if (v9)
  {
    [v44 addObject:v9];
  }

  v10 = [MEMORY[0x277CBEB18] array];
  if (*(v49 + 9))
  {
    v11 = v49 - 16;
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
  Height = mlir::anec::Resize::getHeight(&v49);
  v15 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"height" dataType:64 shape:&unk_2868AFA40];
  if (v15)
  {
    v16 = [MEMORY[0x277CBEA90] dataWithBytes:&Height length:8];
    [(MLViewerNodePropertyDataSPI *)v15 setValue:v16];

    [v14 addObject:v15];
  }

  Width = mlir::anec::Resize::getWidth(&v49);
  v17 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"width" dataType:64 shape:&unk_2868AFA58];
  if (v17)
  {
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:&Width length:8];
    [(MLViewerNodePropertyDataSPI *)v17 setValue:v18];

    [v14 addObject:v17];
  }

  mlir::anec::Resize::getScaleFactorX(&v49, &v52);
  v19 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"scale_factor_x" dataType:268435488 shape:&unk_2868AFA70];
  if (v19)
  {
    v20 = [MEMORY[0x277CBEA90] dataWithBytes:&v52 length:32];
    [(MLViewerNodePropertyDataSPI *)v19 setValue:v20];

    [v14 addObject:v19];
  }

  mlir::anec::Resize::getScaleFactorY(&v49, v50);
  v21 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"scale_factor_y" dataType:268435488 shape:&unk_2868AFA88];
  if (v21)
  {
    v22 = [MEMORY[0x277CBEA90] dataWithBytes:v50 length:32];
    [(MLViewerNodePropertyDataSPI *)v21 setValue:v22];

    [v14 addObject:v21];
  }

  SamplingMethods = mlir::anec::Resize::getSamplingMethods(&v49);
  v24 = SamplingMethods;
  if (SamplingMethods)
  {
    SamplingMethods = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*SamplingMethods + 8);
    v25 = SamplingMethods;
  }

  else
  {
    v25 = 0;
  }

  v26 = EmitViewerSPI::emitElementsAttrProperty(SamplingMethods, @"sampling_methods", v24, v25);
  if (v26)
  {
    [v14 addObject:v26];
  }

  SamplingModes = mlir::anec::Resize::getSamplingModes(&v49);
  v28 = SamplingModes;
  if (SamplingModes)
  {
    SamplingModes = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*SamplingModes + 8);
    v29 = SamplingModes;
  }

  else
  {
    v29 = 0;
  }

  v30 = EmitViewerSPI::emitElementsAttrProperty(SamplingModes, @"sampling_modes", v28, v29);
  if (v30)
  {
    [v14 addObject:v30];
  }

  v31 = v51[0];
  v33 = llvm::APFloatBase::PPCDoubleDouble(v32);
  if (v33 == v31)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v51);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v51);
  }

  if (v33 == v53[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v53);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v53);
  }

  v34 = [MEMORY[0x277CBEB18] array];
  v35 = [MLViewerNodeSPI alloc];
  v36 = [MEMORY[0x277CBEA60] arrayWithArray:v44];
  v37 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v38 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v39 = [MEMORY[0x277CBEA60] arrayWithArray:v34];
  v40 = [(MLViewerNodeSPI *)v35 initWithType:v43 inputs:v36 outputs:v37 properties:v38 regions:v39];
  v41 = *(this + 3);
  *(this + 3) = v40;

  if (v48 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563CA958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  llvm::APFloat::~APFloat(&a21);

  llvm::APFloat::~APFloat(&a25);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECRingBufferReaderOpHandler *EmitterViewerSPI::ANECRingBufferReaderOpHandler::ANECRingBufferReaderOpHandler(EmitterViewerSPI::ANECRingBufferReaderOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868582D0;
  v4 = *(*(a3 + 6) + 8);
  v56 = a3;
  v57 = v4;
  Value = mlir::StringAttr::getValue(&v57);
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

  v55 = v6;
  if (v6)
  {
    memmove(&__dst, Value, v6);
  }

  *(&__dst + v7) = 0;
  if (v55 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v52 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::anec::RingBufferReader::getODSOperandIndexAndLength(&v56, 0, v10, v11);
  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v56 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v13)
  {
    [v9 addObject:v13];
  }

  v16 = mlir::anec::RingBufferReader::getODSOperandIndexAndLength(&v56, 1u, v14, v15);
  if ((*(v56 + 46) & 0x80) != 0)
  {
    v17 = *(v56 + 9);
  }

  else
  {
    v17 = 0;
  }

  v18 = (HIDWORD(v16) + v16);
  v19 = v18 - v16;
  if (v18 != v16)
  {
    v28 = 0;
    v29 = 0;
    v30 = v17 + 32 * v16;
    do
    {
      v31 = *(v30 + 32 * v28 + 24);
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"live_in_params%d", v29];
      v33 = EmitViewerSPI::emitNodeInputPort(a2, v32, v31);

      if (v33)
      {
        [v9 addObject:v33];
      }

      v28 = (v29 + 1);
      v29 = v28;
    }

    while (v19 > v28);
  }

  v20 = [MEMORY[0x277CBEB18] array];
  if (*(v56 + 9))
  {
    v21 = v56 - 16;
  }

  else
  {
    v21 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, 0);
  v23 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v23)
  {
    [v20 addObject:v23];
  }

  v24 = [MEMORY[0x277CBEB18] array];
  Padding = mlir::anec::MaxPool::getPadding(&v56);
  v26 = Padding;
  if (Padding)
  {
    Padding = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Padding + 8);
    v27 = Padding;
  }

  else
  {
    v27 = 0;
  }

  v34 = EmitViewerSPI::emitElementsAttrProperty(Padding, @"offsets", v26, v27);
  if (v34)
  {
    [v24 addObject:v34];
  }

  Ksize = mlir::anec::MaxPool::getKsize(&v56);
  v36 = Ksize;
  if (Ksize)
  {
    Ksize = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Ksize + 8);
    v37 = Ksize;
  }

  else
  {
    v37 = 0;
  }

  v38 = EmitViewerSPI::emitElementsAttrProperty(Ksize, @"is_dynamic_offsets", v36, v37);
  if (v38)
  {
    [v24 addObject:v38];
  }

  Stride = mlir::anec::MaxPool::getStride(&v56);
  v40 = Stride;
  if (Stride)
  {
    Stride = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Stride + 8);
    v41 = Stride;
  }

  else
  {
    v41 = 0;
  }

  v42 = EmitViewerSPI::emitElementsAttrProperty(Stride, @"slice_size", v40, v41);
  if (v42)
  {
    [v24 addObject:v42];
  }

  v43 = [MEMORY[0x277CBEB18] array];
  v44 = [MLViewerNodeSPI alloc];
  v45 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v46 = [MEMORY[0x277CBEA60] arrayWithArray:v20];
  v47 = [MEMORY[0x277CBEA60] arrayWithArray:v24];
  v48 = [MEMORY[0x277CBEA60] arrayWithArray:v43];
  v49 = [(MLViewerNodeSPI *)v44 initWithType:v52 inputs:v45 outputs:v46 properties:v47 regions:v48];
  v50 = *(this + 3);
  *(this + 3) = v49;

  if (v55 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563CAF8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECRingBufferWriterOpHandler *EmitterViewerSPI::ANECRingBufferWriterOpHandler::ANECRingBufferWriterOpHandler(EmitterViewerSPI::ANECRingBufferWriterOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868582E8;
  v4 = *(*(a3 + 6) + 8);
  v54 = a3;
  v55 = v4;
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

  v53 = v6;
  if (v6)
  {
    memmove(&__dst, Value, v6);
  }

  *(&__dst + v7) = 0;
  if (v53 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v50 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::anec::RingBufferWriter::getODSOperandIndexAndLength(&v54, 0, v10, v11);
  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"state", *(*(v54 + 9) + 32 * ODSOperandIndexAndLength + 24));
  v49 = v13;
  if (v13)
  {
    [v9 addObject:v13];
  }

  v16 = mlir::anec::RingBufferWriter::getODSOperandIndexAndLength(&v54, 1u, v14, v15);
  v17 = EmitViewerSPI::emitNodeInputPort(a2, @"update", *(*(v54 + 9) + 32 * v16 + 24));
  if (v17)
  {
    [v9 addObject:v17];
  }

  v20 = mlir::anec::RingBufferWriter::getODSOperandIndexAndLength(&v54, 2u, v18, v19);
  if ((*(v54 + 46) & 0x80) != 0)
  {
    v21 = *(v54 + 9);
  }

  else
  {
    v21 = 0;
  }

  v22 = (HIDWORD(v20) + v20);
  v23 = v22 - v20;
  if (v22 != v20)
  {
    v29 = 0;
    v30 = 0;
    v31 = v21 + 32 * v20;
    do
    {
      v32 = *(v31 + 32 * v29 + 24);
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"live_in_params%d", v30];
      v34 = EmitViewerSPI::emitNodeInputPort(a2, v33, v32);

      if (v34)
      {
        [v9 addObject:v34];
      }

      v29 = (v30 + 1);
      v30 = v29;
    }

    while (v23 > v29);
  }

  v24 = [MEMORY[0x277CBEB18] array];
  v25 = [MEMORY[0x277CBEB18] array];
  Offsets = mlir::anec::RingBufferWriter::getOffsets(&v54);
  v27 = Offsets;
  if (Offsets)
  {
    Offsets = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Offsets + 8);
    v28 = Offsets;
  }

  else
  {
    v28 = 0;
  }

  v35 = EmitViewerSPI::emitElementsAttrProperty(Offsets, @"offsets", v27, v28);
  if (v35)
  {
    [v25 addObject:v35];
  }

  DestinationSize = mlir::anec::Unflatten::getDestinationSize(&v54);
  v37 = DestinationSize;
  if (DestinationSize)
  {
    DestinationSize = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DestinationSize + 8);
    v38 = DestinationSize;
  }

  else
  {
    v38 = 0;
  }

  v39 = EmitViewerSPI::emitElementsAttrProperty(DestinationSize, @"is_dynamic_offsets", v37, v38);
  if (v39)
  {
    [v25 addObject:v39];
  }

  v40 = [MEMORY[0x277CBEB18] array];
  v41 = [MLViewerNodeSPI alloc];
  v42 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v43 = [MEMORY[0x277CBEA60] arrayWithArray:v24];
  v44 = [MEMORY[0x277CBEA60] arrayWithArray:v25];
  v45 = [MEMORY[0x277CBEA60] arrayWithArray:v40];
  v46 = [(MLViewerNodeSPI *)v41 initWithType:v50 inputs:v42 outputs:v43 properties:v44 regions:v45];
  v47 = *(this + 3);
  *(this + 3) = v46;

  if (v53 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563CB4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECRoundNearestOpHandler *EmitterViewerSPI::ANECRoundNearestOpHandler::ANECRoundNearestOpHandler(EmitterViewerSPI::ANECRoundNearestOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858300;
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

void sub_2563CB8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECRsqrtOpHandler *EmitterViewerSPI::ANECRsqrtOpHandler::ANECRsqrtOpHandler(EmitterViewerSPI::ANECRsqrtOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  v35[3] = *MEMORY[0x277D85DE8];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858318;
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

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(v33 + 9))
  {
    v13 = v33 - 16;
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
  mlir::anec::Rsqrt::getEpsilon(&v33, &v34);
  v17 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"epsilon" dataType:268435488 shape:&unk_2868AFAA0];
  if (v17)
  {
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:&v34 length:32];
    [(MLViewerNodePropertyDataSPI *)v17 setValue:v18];

    [v16 addObject:v17];
  }

  v19 = v35[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v20) == v19)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v35);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v35);
  }

  v21 = [MEMORY[0x277CBEB18] array];
  v22 = [MLViewerNodeSPI alloc];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
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

void sub_2563CBD40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  llvm::APFloat::~APFloat(&a17);

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECScaledElementWiseOpHandler *EmitterViewerSPI::ANECScaledElementWiseOpHandler::ANECScaledElementWiseOpHandler(EmitterViewerSPI::ANECScaledElementWiseOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  v53[3] = *MEMORY[0x277D85DE8];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858330;
  v47 = a3;
  v52 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v52);
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

  v40 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v42 = [MEMORY[0x277CBEB18] array];
  v9 = EmitViewerSPI::emitNodeInputPort(a2, @"input1", *(*(v47 + 9) + 24));
  if (v9)
  {
    [v42 addObject:v9];
  }

  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"input2", *(*(v47 + 9) + 56));
  if (v10)
  {
    [v42 addObject:v10];
  }

  v41 = [MEMORY[0x277CBEB18] array];
  if (*(v47 + 9))
  {
    v11 = v47 - 16;
  }

  else
  {
    v11 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
  v13 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v13)
  {
    [v41 addObject:v13];
  }

  v14 = [MEMORY[0x277CBEB18] array];
  Mode = mlir::anec::ScaledElementWise::getMode(&v47);
  v17 = EmitViewerSPI::emitStringProperty(Mode, @"mode", Mode, v16);
  if (v17)
  {
    [v14 addObject:v17];
  }

  mlir::anec::ScaledElementWise::getPreScale(&v47, &v52);
  v18 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"pre_scale" dataType:268435488 shape:&unk_2868AFAB8];
  if (v18)
  {
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:&v52 length:32];
    [(MLViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v14 addObject:v18];
  }

  mlir::anec::ScaledElementWise::getScale(&v47, v50);
  v20 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"scale" dataType:268435488 shape:&unk_2868AFAD0];
  if (v20)
  {
    v21 = [MEMORY[0x277CBEA90] dataWithBytes:v50 length:32];
    [(MLViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v14 addObject:v20];
  }

  mlir::anec::ScaledElementWise::getBias(&v47, v48);
  v22 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"bias" dataType:268435488 shape:&unk_2868AFAE8];
  if (v22)
  {
    v23 = [MEMORY[0x277CBEA90] dataWithBytes:v48 length:32];
    [(MLViewerNodePropertyDataSPI *)v22 setValue:v23];

    [v14 addObject:v22];
  }

  NegateSrc1 = mlir::anec::ScaledElementWise::getNegateSrc1(&v47);
  v24 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"negate_src1" dataType:2147483656 shape:&unk_2868AFB00];
  if (v24)
  {
    v25 = [MEMORY[0x277CBEA90] dataWithBytes:&NegateSrc1 length:1];
    [(MLViewerNodePropertyDataSPI *)v24 setValue:v25];

    [v14 addObject:v24];
  }

  NegateSrc2 = mlir::anec::ScaledElementWise::getNegateSrc2(&v47);
  v26 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"negate_src2" dataType:2147483656 shape:&unk_2868AFB18];
  if (v26)
  {
    v27 = [MEMORY[0x277CBEA90] dataWithBytes:&NegateSrc2 length:1];
    [(MLViewerNodePropertyDataSPI *)v26 setValue:v27];

    [v14 addObject:v26];
  }

  v28 = v49[0];
  v30 = llvm::APFloatBase::PPCDoubleDouble(v29);
  if (v30 == v28)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v49);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v49);
  }

  if (v30 == v51[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v51);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v51);
  }

  if (v30 == v53[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v53);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v53);
  }

  v31 = [MEMORY[0x277CBEB18] array];
  v32 = [MLViewerNodeSPI alloc];
  v33 = [MEMORY[0x277CBEA60] arrayWithArray:v42];
  v34 = [MEMORY[0x277CBEA60] arrayWithArray:v41];
  v35 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v36 = [MEMORY[0x277CBEA60] arrayWithArray:v31];
  v37 = [(MLViewerNodeSPI *)v32 initWithType:v40 inputs:v33 outputs:v34 properties:v35 regions:v36];
  v38 = *(this + 3);
  *(this + 3) = v37;

  if (v46 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563CC460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, void *a12, void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  llvm::APFloat::~APFloat(&a22);

  llvm::APFloat::~APFloat(&a26);
  llvm::APFloat::~APFloat((v35 - 128));

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECSigmoidOpHandler *EmitterViewerSPI::ANECSigmoidOpHandler::ANECSigmoidOpHandler(EmitterViewerSPI::ANECSigmoidOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858348;
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

void sub_2563CC8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECSignOpHandler *EmitterViewerSPI::ANECSignOpHandler::ANECSignOpHandler(EmitterViewerSPI::ANECSignOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858360;
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

void sub_2563CCC88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECSinOpHandler *EmitterViewerSPI::ANECSinOpHandler::ANECSinOpHandler(EmitterViewerSPI::ANECSinOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858378;
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

void sub_2563CD018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECSoftmaxOpHandler *EmitterViewerSPI::ANECSoftmaxOpHandler::ANECSoftmaxOpHandler(EmitterViewerSPI::ANECSoftmaxOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858390;
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
  v34 = v11;
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v37 + 9) + 24));
  if (v12)
  {
    [v11 addObject:{v12, v11}];
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

  v17 = [MEMORY[0x277CBEB18] array];
  Axes = mlir::anec::Softmax::getAxes(&v37);
  v19 = Axes;
  if (Axes)
  {
    Axes = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Axes + 8);
    v20 = Axes;
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(Axes, @"axes", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  LOBYTE(v38) = mlir::anec::Softmax::getSubtractMax(&v37);
  v22 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"subtractMax" dataType:2147483656 shape:&unk_2868AFB30];
  if (v22)
  {
    v23 = [MEMORY[0x277CBEA90] dataWithBytes:&v38 length:1];
    [(MLViewerNodePropertyDataSPI *)v22 setValue:v23];

    [v17 addObject:v22];
  }

  v24 = [MEMORY[0x277CBEB18] array];
  v25 = [MLViewerNodeSPI alloc];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v27 = v10;
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v30 = [MEMORY[0x277CBEA60] arrayWithArray:v24];
  v31 = [(MLViewerNodeSPI *)v25 initWithType:v27 inputs:v26 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563CD480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECSpaceToBatchOpHandler *EmitterViewerSPI::ANECSpaceToBatchOpHandler::ANECSpaceToBatchOpHandler(EmitterViewerSPI::ANECSpaceToBatchOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868583A8;
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

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x277CBEB18] array];
  v31 = v11;
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v34 + 9) + 24));
  if (v12)
  {
    [v11 addObject:{v12, v11}];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(v34 + 9))
  {
    v14 = v34 - 16;
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
  Axes = mlir::anec::Softmax::getAxes(&v34);
  v19 = Axes;
  if (Axes)
  {
    Axes = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Axes + 8);
    v20 = Axes;
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(Axes, @"factors", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MLViewerNodeSPI alloc];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v28 = [(MLViewerNodeSPI *)v23 initWithType:v10 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563CD8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECSpaceToChannelOpHandler *EmitterViewerSPI::ANECSpaceToChannelOpHandler::ANECSpaceToChannelOpHandler(EmitterViewerSPI::ANECSpaceToChannelOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868583C0;
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

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x277CBEB18] array];
  v31 = v11;
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v34 + 9) + 24));
  if (v12)
  {
    [v11 addObject:{v12, v11}];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(v34 + 9))
  {
    v14 = v34 - 16;
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
  Axes = mlir::anec::Softmax::getAxes(&v34);
  v19 = Axes;
  if (Axes)
  {
    Axes = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Axes + 8);
    v20 = Axes;
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(Axes, @"factors", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MLViewerNodeSPI alloc];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v28 = [(MLViewerNodeSPI *)v23 initWithType:v10 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563CDCB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECSqrOpHandler *EmitterViewerSPI::ANECSqrOpHandler::ANECSqrOpHandler(EmitterViewerSPI::ANECSqrOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868583D8;
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

void sub_2563CE05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECSqrtOpHandler *EmitterViewerSPI::ANECSqrtOpHandler::ANECSqrtOpHandler(EmitterViewerSPI::ANECSqrtOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868583F0;
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

void sub_2563CE3EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECStateOpHandler *EmitterViewerSPI::ANECStateOpHandler::ANECStateOpHandler(EmitterViewerSPI::ANECStateOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858408;
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

void sub_2563CE77C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECSwishOpHandler *EmitterViewerSPI::ANECSwishOpHandler::ANECSwishOpHandler(EmitterViewerSPI::ANECSwishOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858420;
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

void sub_2563CEB0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECTanhOpHandler *EmitterViewerSPI::ANECTanhOpHandler::ANECTanhOpHandler(EmitterViewerSPI::ANECTanhOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858438;
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

void sub_2563CEE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECTensorBufferToTensorOpHandler *EmitterViewerSPI::ANECTensorBufferToTensorOpHandler::ANECTensorBufferToTensorOpHandler(EmitterViewerSPI::ANECTensorBufferToTensorOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858450;
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
  Offsets = mlir::anec::RingBufferWriter::getOffsets(&v37);
  v18 = Offsets;
  if (Offsets)
  {
    Offsets = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Offsets + 8);
    v19 = Offsets;
  }

  else
  {
    v19 = 0;
  }

  v20 = EmitViewerSPI::emitElementsAttrProperty(Offsets, @"strides", v18, v19);
  if (v20)
  {
    [v16 addObject:v20];
  }

  DestinationSize = mlir::anec::Unflatten::getDestinationSize(&v37);
  v22 = DestinationSize;
  if (DestinationSize)
  {
    DestinationSize = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DestinationSize + 8);
    v23 = DestinationSize;
  }

  else
  {
    v23 = 0;
  }

  v24 = EmitViewerSPI::emitElementsAttrProperty(DestinationSize, @"interleave", v22, v23);
  if (v24)
  {
    [v16 addObject:v24];
  }

  v25 = [MEMORY[0x277CBEB18] array];
  v26 = [MLViewerNodeSPI alloc];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v30 = [MEMORY[0x277CBEA60] arrayWithArray:v25];
  v31 = [(MLViewerNodeSPI *)v26 initWithType:v34 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563CF2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECTensorToTensorBufferOpHandler *EmitterViewerSPI::ANECTensorToTensorBufferOpHandler::ANECTensorToTensorBufferOpHandler(EmitterViewerSPI::ANECTensorToTensorBufferOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858468;
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
  Offsets = mlir::anec::RingBufferWriter::getOffsets(&v37);
  v18 = Offsets;
  if (Offsets)
  {
    Offsets = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Offsets + 8);
    v19 = Offsets;
  }

  else
  {
    v19 = 0;
  }

  v20 = EmitViewerSPI::emitElementsAttrProperty(Offsets, @"strides", v18, v19);
  if (v20)
  {
    [v16 addObject:v20];
  }

  DestinationSize = mlir::anec::Unflatten::getDestinationSize(&v37);
  v22 = DestinationSize;
  if (DestinationSize)
  {
    DestinationSize = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DestinationSize + 8);
    v23 = DestinationSize;
  }

  else
  {
    v23 = 0;
  }

  v24 = EmitViewerSPI::emitElementsAttrProperty(DestinationSize, @"interleave", v22, v23);
  if (v24)
  {
    [v16 addObject:v24];
  }

  v25 = [MEMORY[0x277CBEB18] array];
  v26 = [MLViewerNodeSPI alloc];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v30 = [MEMORY[0x277CBEA60] arrayWithArray:v25];
  v31 = [(MLViewerNodeSPI *)v26 initWithType:v34 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563CF73C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECTileOpHandler *EmitterViewerSPI::ANECTileOpHandler::ANECTileOpHandler(EmitterViewerSPI::ANECTileOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858480;
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

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x277CBEB18] array];
  v31 = v11;
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"data", *(*(v34 + 9) + 24));
  if (v12)
  {
    [v11 addObject:{v12, v11}];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(v34 + 9))
  {
    v14 = v34 - 16;
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
  Axes = mlir::anec::Softmax::getAxes(&v34);
  v19 = Axes;
  if (Axes)
  {
    Axes = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Axes + 8);
    v20 = Axes;
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(Axes, @"multipliers", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MLViewerNodeSPI alloc];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v28 = [(MLViewerNodeSPI *)v23 initWithType:v10 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563CFB50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECTransposeOpHandler *EmitterViewerSPI::ANECTransposeOpHandler::ANECTransposeOpHandler(EmitterViewerSPI::ANECTransposeOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858498;
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

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x277CBEB18] array];
  v31 = v11;
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v34 + 9) + 24));
  if (v12)
  {
    [v11 addObject:{v12, v11}];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(v34 + 9))
  {
    v14 = v34 - 16;
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
  Axes = mlir::anec::Softmax::getAxes(&v34);
  v19 = Axes;
  if (Axes)
  {
    Axes = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Axes + 8);
    v20 = Axes;
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(Axes, @"transpose_list", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MLViewerNodeSPI alloc];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v22];
  v28 = [(MLViewerNodeSPI *)v23 initWithType:v10 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563CFF58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECTruncOpHandler *EmitterViewerSPI::ANECTruncOpHandler::ANECTruncOpHandler(EmitterViewerSPI::ANECTruncOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868584B0;
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

void sub_2563D0304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECUnflattenOpHandler *EmitterViewerSPI::ANECUnflattenOpHandler::ANECUnflattenOpHandler(EmitterViewerSPI::ANECUnflattenOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868584C8;
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

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v35 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v38 + 9) + 24));
  if (v11)
  {
    [v35 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  if (*(v38 + 9))
  {
    v13 = v38 - 16;
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
  FlattenMode = mlir::anec::Unflatten::getFlattenMode(&v38);
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:1];
  [v18 addObject:v19];

  v20 = [[MLViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:2];
  [v18 addObject:v20];

  v21 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"flatten_mode" type:@"ANECFlattenMode" cases:v18 value:FlattenMode];
  if (v21)
  {
    [v16 addObject:v21];
  }

  DestinationSize = mlir::anec::Unflatten::getDestinationSize(&v38);
  v23 = DestinationSize;
  if (DestinationSize)
  {
    DestinationSize = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DestinationSize + 8);
    v24 = DestinationSize;
  }

  else
  {
    v24 = 0;
  }

  v25 = EmitViewerSPI::emitElementsAttrProperty(DestinationSize, @"destination_size", v23, v24);
  if (v25)
  {
    [v16 addObject:v25];
  }

  v26 = [MEMORY[0x277CBEB18] array];
  v27 = [MLViewerNodeSPI alloc];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v35];
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v30 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v31 = [MEMORY[0x277CBEA60] arrayWithArray:v26];
  v32 = [(MLViewerNodeSPI *)v27 initWithType:v10 inputs:v28 outputs:v29 properties:v30 regions:v31];
  v33 = *(this + 3);
  *(this + 3) = v32;

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563D07A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECUnrealizedConversionCastOpHandler *EmitterViewerSPI::ANECUnrealizedConversionCastOpHandler::ANECUnrealizedConversionCastOpHandler(EmitterViewerSPI::ANECUnrealizedConversionCastOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868584E0;
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

void sub_2563D0B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSACosOpHandler *EmitterViewerSPI::MPSACosOpHandler::MPSACosOpHandler(EmitterViewerSPI::MPSACosOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868584F8;
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

void sub_2563D0F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSACoshOpHandler *EmitterViewerSPI::MPSACoshOpHandler::MPSACoshOpHandler(EmitterViewerSPI::MPSACoshOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858510;
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

void sub_2563D1314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSASinOpHandler *EmitterViewerSPI::MPSASinOpHandler::MPSASinOpHandler(EmitterViewerSPI::MPSASinOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858528;
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

void sub_2563D16E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSASinhOpHandler *EmitterViewerSPI::MPSASinhOpHandler::MPSASinhOpHandler(EmitterViewerSPI::MPSASinhOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858540;
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

void sub_2563D1ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSATan2OpHandler *EmitterViewerSPI::MPSATan2OpHandler::MPSATan2OpHandler(EmitterViewerSPI::MPSATan2OpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858558;
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

void sub_2563D1EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSATanOpHandler *EmitterViewerSPI::MPSATanOpHandler::MPSATanOpHandler(EmitterViewerSPI::MPSATanOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858570;
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

void sub_2563D22A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSATanhOpHandler *EmitterViewerSPI::MPSATanhOpHandler::MPSATanhOpHandler(EmitterViewerSPI::MPSATanhOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858588;
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

void sub_2563D2674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSAbsoluteOpHandler *EmitterViewerSPI::MPSAbsoluteOpHandler::MPSAbsoluteOpHandler(EmitterViewerSPI::MPSAbsoluteOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868585A0;
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

void sub_2563D2A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSAbsoluteSquareOpHandler *EmitterViewerSPI::MPSAbsoluteSquareOpHandler::MPSAbsoluteSquareOpHandler(EmitterViewerSPI::MPSAbsoluteSquareOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868585B8;
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

  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Returns absolute square element-wise"];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563D2E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSAddOpHandler *EmitterViewerSPI::MPSAddOpHandler::MPSAddOpHandler(EmitterViewerSPI::MPSAddOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868585D0;
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

void sub_2563D3224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSAndOpHandler *EmitterViewerSPI::MPSAndOpHandler::MPSAndOpHandler(EmitterViewerSPI::MPSAndOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868585E8;
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

void sub_2563D3634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSAssignVariableOpHandler *EmitterViewerSPI::MPSAssignVariableOpHandler::MPSAssignVariableOpHandler(EmitterViewerSPI::MPSAssignVariableOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858600;
  v28 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v28);
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

  v27 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v27 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v25 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"resource", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  v14 = [MEMORY[0x277CBEB18] array];
  v15 = [MEMORY[0x277CBEB18] array];
  v16 = [MLViewerNodeSPI alloc];
  v17 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v18 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v21 = [(MLViewerNodeSPI *)v16 initWithType:v25 inputs:v17 outputs:v18 properties:v19 regions:v20];
  v22 = *(this + 3);
  *(this + 3) = v21;

  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Inserts a variableHandle for a tensor resource."];
  [*(this + 3) setLocalizedDescription:v23];

  if (v27 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563D39F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSBandPartOpHandler *EmitterViewerSPI::MPSBandPartOpHandler::MPSBandPartOpHandler(EmitterViewerSPI::MPSBandPartOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858618;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"num_lower", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"num_upper", *(*(a3 + 9) + 88));
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

  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"Copy a tensor setting everything outside a central band in each innermost matrix to zero. For rank one and rank zero inputs this operation behaves as it would if the missing dimensions had extent of one. This means that for rank one the values after 'num_upper' are zeroed out and for rank zero the input is simply copied to the output. If num_lower or num_upper are negative, keep entire lower or upper triangle, respectively."}];
  [*(this + 3) setLocalizedDescription:v27];

  if (v31 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563D3E24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSBatchToSpaceOpHandler *EmitterViewerSPI::MPSBatchToSpaceOpHandler::MPSBatchToSpaceOpHandler(EmitterViewerSPI::MPSBatchToSpaceOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858630;
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
  LOBYTE(v38) = mlir::mps::BatchToSpaceOp::getPixelShuffle(&v37);
  v20 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"pixel_shuffle" dataType:2147483656 shape:&unk_2868AFB48];
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

void sub_2563D4348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSBiasAddGradOpHandler *EmitterViewerSPI::MPSBiasAddGradOpHandler::MPSBiasAddGradOpHandler(EmitterViewerSPI::MPSBiasAddGradOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858648;
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
  v40 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"out_backprop", *(*(v43 + 9) + 24));
  if (v11)
  {
    [v40 addObject:v11];
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
  DataFormat = mlir::mps::BiasAddGradOp::getDataFormat(&v43);
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

  v30 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"data_format" type:@"MPSTensorDataLayout" cases:v18 value:DataFormat];
  if (v30)
  {
    [v16 addObject:v30];
  }

  v31 = [MEMORY[0x277CBEB18] array];
  v32 = [MLViewerNodeSPI alloc];
  v33 = [MEMORY[0x277CBEA60] arrayWithArray:v40];
  v34 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v35 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v36 = [MEMORY[0x277CBEA60] arrayWithArray:v31];
  v37 = [(MLViewerNodeSPI *)v32 initWithType:v10 inputs:v33 outputs:v34 properties:v35 regions:v36];
  v38 = *(this + 3);
  *(this + 3) = v37;

  if (v42 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563D4988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSBiasAddOpHandler *EmitterViewerSPI::MPSBiasAddOpHandler::MPSBiasAddOpHandler(EmitterViewerSPI::MPSBiasAddOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858660;
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

  v41 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"value", *(*(v45 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"bias", *(*(v45 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v42 = [MEMORY[0x277CBEB18] array];
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
    [v42 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  DataFormat = mlir::mps::BiasAddOp::getDataFormat(&v45);
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

  v30 = [[MLViewerNodePropertyEnumSPI alloc] initWithName:@"data_format" type:@"MPSTensorDataLayout" cases:v18 value:DataFormat];
  if (v30)
  {
    [v16 addObject:v30];
  }

  v31 = [MEMORY[0x277CBEB18] array];
  v32 = [MLViewerNodeSPI alloc];
  v33 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v34 = [MEMORY[0x277CBEA60] arrayWithArray:v42];
  v35 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v36 = [MEMORY[0x277CBEA60] arrayWithArray:v31];
  v37 = [(MLViewerNodeSPI *)v32 initWithType:v41 inputs:v33 outputs:v34 properties:v35 regions:v36];
  v38 = *(this + 3);
  *(this + 3) = v37;
  v39 = ;
  [*(this + 3) setLocalizedDescription:v39];

  if (v44 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2563D5018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSBitwiseAndOpHandler *EmitterViewerSPI::MPSBitwiseAndOpHandler::MPSBitwiseAndOpHandler(EmitterViewerSPI::MPSBitwiseAndOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858678;
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

void sub_2563D547C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSBitwiseLeftShiftOpHandler *EmitterViewerSPI::MPSBitwiseLeftShiftOpHandler::MPSBitwiseLeftShiftOpHandler(EmitterViewerSPI::MPSBitwiseLeftShiftOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286858690;
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

void sub_2563D588C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSBitwiseNotOpHandler *EmitterViewerSPI::MPSBitwiseNotOpHandler::MPSBitwiseNotOpHandler(EmitterViewerSPI::MPSBitwiseNotOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868586A8;
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

void sub_2563D5C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSBitwiseOrOpHandler *EmitterViewerSPI::MPSBitwiseOrOpHandler::MPSBitwiseOrOpHandler(EmitterViewerSPI::MPSBitwiseOrOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868586C0;
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

void sub_2563D6070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSBitwisePopcountOpHandler *EmitterViewerSPI::MPSBitwisePopcountOpHandler::MPSBitwisePopcountOpHandler(EmitterViewerSPI::MPSBitwisePopcountOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_2868586D8;
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

  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Returns number of ON bits element-wise"];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}