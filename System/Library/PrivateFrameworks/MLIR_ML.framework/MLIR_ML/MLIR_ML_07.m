void sub_256445A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::CMLAXConstexprLutToDenseOpHandler *EmitterViewerSPI::CMLAXConstexprLutToDenseOpHandler::CMLAXConstexprLutToDenseOpHandler(EmitterViewerSPI::CMLAXConstexprLutToDenseOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A640;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"indices", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"lut", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"vector_axis", *(*(a3 + 9) + 88));
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

void sub_256445E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::CMLAXCopyDiscardingConstraintsOpHandler *EmitterViewerSPI::CMLAXCopyDiscardingConstraintsOpHandler::CMLAXCopyDiscardingConstraintsOpHandler(EmitterViewerSPI::CMLAXCopyDiscardingConstraintsOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A658;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"source", *(*(a3 + 9) + 24));
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

void sub_256446204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::CMLAXCopyWithConstraintsOpHandler *EmitterViewerSPI::CMLAXCopyWithConstraintsOpHandler::CMLAXCopyWithConstraintsOpHandler(EmitterViewerSPI::CMLAXCopyWithConstraintsOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A670;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"source", *(*(a3 + 9) + 24));
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

void sub_256446594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::CMLAXDequantizeOpHandler *EmitterViewerSPI::CMLAXDequantizeOpHandler::CMLAXDequantizeOpHandler(EmitterViewerSPI::CMLAXDequantizeOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A688;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"scale", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"zero_point", *(*(a3 + 9) + 88));
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
  v18 = EmitViewerSPI::emitNodeOutputPort(a2, @"output", NextResultAtOffset);
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
  v26 = [(MLViewerNodeSPI *)v21 initWithType:v29 inputs:v22 outputs:v23 properties:v24 regions:v25];
  v27 = *(this + 3);
  *(this + 3) = v26;

  if (v31 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2564469C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::CMLAXQuantizeOpHandler *EmitterViewerSPI::CMLAXQuantizeOpHandler::CMLAXQuantizeOpHandler(EmitterViewerSPI::CMLAXQuantizeOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A6A0;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"scale", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"zero_point", *(*(a3 + 9) + 88));
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
  v18 = EmitViewerSPI::emitNodeOutputPort(a2, @"output", NextResultAtOffset);
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
  v26 = [(MLViewerNodeSPI *)v21 initWithType:v29 inputs:v22 outputs:v23 properties:v24 regions:v25];
  v27 = *(this + 3);
  *(this + 3) = v26;

  if (v31 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256446E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::CMLAXViewOpHandler *EmitterViewerSPI::CMLAXViewOpHandler::CMLAXViewOpHandler(EmitterViewerSPI::CMLAXViewOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A6B8;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"source", *(*(a3 + 9) + 24));
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

void sub_2564471E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const char *llvm::getTypeName<mlir::mpsx::ListType>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mpsx::ListType]";
  v6 = 70;
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

uint64_t mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(uint64_t a1)
{
  {
    v10 = llvm::getTypeName<mlir::ShapedType>();
    mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v10, v11);
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    do
    {
      v5 = v4 >> 1;
      v6 = &v3[2 * (v4 >> 1)];
      v8 = *v6;
      v7 = v6 + 2;
      v4 += ~(v4 >> 1);
      if (v8 < mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id)
      {
        v3 = v7;
      }

      else
      {
        v4 = v5;
      }
    }

    while (v4);
  }

  else
  {
    v2 = 0;
    v3 = *a1;
  }

  if (v3 != (*a1 + 16 * v2) && *v3 == mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id)
  {
    return v3[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::ShapedType>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ShapedType]";
  v6 = 66;
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

void std::__hash_table<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>>>::__assign_unique<std::pair<std::string const,MPSMLIRViewerSPIOps> const*>(uint64_t *a1, std::string *__str, std::string *a3)
{
  v4 = __str;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (!v8 || __str == a3)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        std::string::operator=((v8 + 16), v4);
        *(v8 + 40) = v4[1].__r_.__value_.__l.__data_;
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>>>::__node_insert_unique(a1, v8);
        v4 = (v4 + 32);
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    if (v10)
    {
      do
      {
        v12 = *v10;
        if (*(v10 + 39) < 0)
        {
          operator delete(v10[2]);
        }

        operator delete(v10);
        v10 = v12;
      }

      while (v12);
    }
  }

  while (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,MPSMLIRViewerSPIOps> const&>(a1, v4);
    v4 = (v4 + 32);
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = (a2 + 16);
  v5 = *(a2 + 39);
  v6 = *(a2 + 24);
  if ((v5 & 0x80u) == 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v18, v7, v8);
  *(v4 - 1) = v9;
  v10 = std::__hash_table<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>>>::__node_insert_unique_prepare[abi:nn200100](a1, v9, v4);
  if (!v10)
  {
    v11 = a1[1];
    v12 = v2[1];
    v13 = vcnt_s8(v11);
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      if (v12 >= *&v11)
      {
        v12 %= *&v11;
      }
    }

    else
    {
      v12 &= *&v11 - 1;
    }

    v14 = *a1;
    v15 = *(*a1 + 8 * v12);
    if (v15)
    {
      *v2 = *v15;
    }

    else
    {
      *v2 = a1[2];
      a1[2] = v2;
      *(v14 + 8 * v12) = a1 + 2;
      if (!*v2)
      {
LABEL_22:
        ++a1[3];
        return v2;
      }

      v16 = *(*v2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v16 >= *&v11)
        {
          v16 %= *&v11;
        }
      }

      else
      {
        v16 &= *&v11 - 1;
      }

      v15 = (*a1 + 8 * v16);
    }

    *v15 = v2;
    goto LABEL_22;
  }

  return v10;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>>>::__node_insert_unique_prepare[abi:nn200100](uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.u32[0];
    if (v6.u32[0] > 1uLL)
    {
      v8 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v8 = (v4 - 1) & a2;
    }

    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        v11 = *(a3 + 23);
        if (v11 >= 0)
        {
          v12 = *(a3 + 23);
        }

        else
        {
          v12 = a3[1];
        }

        if (v11 >= 0)
        {
          v13 = a3;
        }

        else
        {
          v13 = *a3;
        }

        do
        {
          v14 = v10[1];
          if (v14 == a2)
          {
            v15 = *(v10 + 39);
            v16 = v15;
            if (v15 < 0)
            {
              v15 = v10[3];
            }

            if (v15 == v12)
            {
              v17 = v16 >= 0 ? (v10 + 2) : v10[2];
              if (!memcmp(v17, v13, v12))
              {
                return v10;
              }
            }
          }

          else
          {
            if (v7 <= 1)
            {
              v14 &= v4 - 1;
            }

            else if (v14 >= v4)
            {
              v14 %= v4;
            }

            if (v14 != v8)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  v18 = (*(a1 + 24) + 1);
  v19 = *(a1 + 32);
  if (!v4 || (v19 * v4) < v18)
  {
    v20 = 1;
    if (v4 >= 3)
    {
      v20 = (v4 & (v4 - 1)) != 0;
    }

    v21 = v20 | (2 * v4);
    v22 = vcvtps_u32_f32(v18 / v19);
    if (v21 <= v22)
    {
      prime = v22;
    }

    else
    {
      prime = v21;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v4 = *(a1 + 8);
    }

    if (prime > v4)
    {
      goto LABEL_42;
    }

    if (prime < v4)
    {
      v24 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v4 < 3 || (v25 = vcnt_s8(v4), v25.i16[0] = vaddlv_u8(v25), v25.u32[0] > 1uLL))
      {
        v27 = prime;
        v24 = std::__next_prime(v24);
        prime = v27;
      }

      else
      {
        v26 = 1 << -__clz(v24 - 1);
        if (v24 >= 2)
        {
          v24 = v26;
        }
      }

      if (prime <= v24)
      {
        prime = v24;
      }

      if (prime < v4)
      {
LABEL_42:
        std::__hash_table<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>>>::__do_rehash<true>(a1, prime);
      }
    }
  }

  return 0;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 <= 0x40)
    {
      v6 = *(a2 + a3 - 16);
      v7 = *a2 - 0x3C5A37A36834CED9 * (v6 + a3);
      v9 = a2[2];
      v8 = a2[3];
      v10 = __ROR8__(v7 + v8, 52);
      v11 = v7 + a2[1];
      v12 = __ROR8__(v11, 7);
      v13 = v11 + v9;
      v14 = *(a2 + a3 - 32) + v9;
      v15 = *(a2 + a3 - 8) + v8;
      v16 = __ROR8__(v15 + v14, 52);
      v17 = v12 + __ROR8__(*a2 - 0x3C5A37A36834CED9 * (v6 + a3), 37) + v10 + __ROR8__(v13, 31);
      v18 = *(a2 + a3 - 24) + v14 + v6;
      v19 = v18 + v15;
      v20 = 0x9AE16A3B2F90404FLL;
      v21 = 0xC3A5C85C97CB3127 * (v19 + v17) - 0x651E95C4D06FBFB1 * (v13 + v8 + __ROR8__(v14, 37) + __ROR8__(*(a2 + a3 - 24) + v14, 7) + v16 + __ROR8__(v18, 31));
      v22 = v17 - 0x3C5A37A36834CED9 * (v21 ^ (v21 >> 47));
      return (v22 ^ (v22 >> 47)) * v20;
    }

    v29 = *(a2 + a3 - 48);
    v30 = *(a2 + a3 - 40);
    v31 = *(a2 + a3 - 24);
    v32 = *(a2 + a3 - 56);
    v33 = *(a2 + a3 - 16);
    v34 = *(a2 + a3 - 8);
    v35 = v32 + v33;
    v36 = 0x9DDFEA08EB382D69 * (v31 ^ ((0x9DDFEA08EB382D69 * (v31 ^ (v29 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v31 ^ (v29 + a3))));
    v37 = 0x9DDFEA08EB382D69 * (v36 ^ (v36 >> 47));
    v38 = *(a2 + a3 - 64) + a3;
    v39 = v38 + v32 + v29;
    v40 = __ROR8__(v39, 44) + v38;
    v41 = __ROR8__(v30 + v38 + v37, 21);
    v42 = v39 + v30;
    v43 = v40 + v41;
    v44 = v35 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
    v45 = v44 + v31 + v33;
    v46 = v45 + v34;
    v47 = __ROR8__(v45, 44) + v44 + __ROR8__(v44 + v30 + v34, 21);
    v49 = *a2;
    v48 = a2 + 4;
    v50 = v49 - 0x4B6D499041670D8DLL * v30;
    v51 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v52 = *(v48 - 3);
      v53 = v50 + v42 + v35 + v52;
      v54 = v48[2];
      v55 = v48[3];
      v56 = v48[1];
      v35 = v56 + v42 - 0x4B6D499041670D8DLL * __ROR8__(v35 + v43 + v54, 42);
      v57 = v37 + v46;
      v58 = *(v48 - 2);
      v59 = *(v48 - 1);
      v60 = *(v48 - 4) - 0x4B6D499041670D8DLL * v43;
      v61 = v60 + v46 + v59;
      v62 = v60 + v52 + v58;
      v42 = v62 + v59;
      v63 = __ROR8__(v62, 44) + v60;
      v64 = (0xB492B66FBE98F273 * __ROR8__(v53, 37)) ^ v47;
      v50 = 0xB492B66FBE98F273 * __ROR8__(v57, 33);
      v43 = v63 + __ROR8__(v61 + v64, 21);
      v65 = v50 + v47 + *v48;
      v46 = v65 + v56 + v54 + v55;
      v47 = __ROR8__(v65 + v56 + v54, 44) + v65 + __ROR8__(v35 + v58 + v65 + v55, 21);
      v48 += 8;
      v37 = v64;
      v51 += 64;
    }

    while (v51);
    v66 = v64 - 0x4B6D499041670D8DLL * (v35 ^ (v35 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v46 ^ ((0x9DDFEA08EB382D69 * (v46 ^ v42)) >> 47) ^ (0x9DDFEA08EB382D69 * (v46 ^ v42)))) ^ ((0x9DDFEA08EB382D69 * (v46 ^ ((0x9DDFEA08EB382D69 * (v46 ^ v42)) >> 47) ^ (0x9DDFEA08EB382D69 * (v46 ^ v42)))) >> 47));
    v67 = v50 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v47 ^ ((0x9DDFEA08EB382D69 * (v47 ^ v43)) >> 47) ^ (0x9DDFEA08EB382D69 * (v47 ^ v43)))) ^ ((0x9DDFEA08EB382D69 * (v47 ^ ((0x9DDFEA08EB382D69 * (v47 ^ v43)) >> 47) ^ (0x9DDFEA08EB382D69 * (v47 ^ v43)))) >> 47));
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v67 ^ ((0x9DDFEA08EB382D69 * (v67 ^ v66)) >> 47) ^ (0x9DDFEA08EB382D69 * (v67 ^ v66)))) ^ ((0x9DDFEA08EB382D69 * (v67 ^ ((0x9DDFEA08EB382D69 * (v67 ^ v66)) >> 47) ^ (0x9DDFEA08EB382D69 * (v67 ^ v66)))) >> 47));
  }

  else
  {
    if (a3 > 0x10)
    {
      v23 = a2[1];
      v24 = 0xB492B66FBE98F273 * *a2;
      v25 = __ROR8__(0x9AE16A3B2F90404FLL * *(a2 + a3 - 8), 30) + __ROR8__(v24 - v23, 43);
      v26 = v24 + a3 + __ROR8__(v23 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a2 + a3 - 8);
      v20 = 0x9DDFEA08EB382D69;
      v27 = 0x9DDFEA08EB382D69 * ((v25 - 0x3C5A37A36834CED9 * *(a2 + a3 - 16)) ^ v26);
      v28 = v26 ^ (v27 >> 47) ^ v27;
LABEL_8:
      v22 = 0x9DDFEA08EB382D69 * v28;
      return (v22 ^ (v22 >> 47)) * v20;
    }

    if (a3 >= 9)
    {
      v3 = *(a2 + a3 - 8);
      v4 = __ROR8__(v3 + a3, a3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) >> 47))) ^ v3;
    }

    if (a3 >= 4)
    {
      v68 = *(a2 + a3 - 4);
      v20 = 0x9DDFEA08EB382D69;
      v69 = 0x9DDFEA08EB382D69 * (((8 * *a2) + a3) ^ v68);
      v28 = v68 ^ (v69 >> 47) ^ v69;
      goto LABEL_8;
    }

    result = 0x9AE16A3B2F90404FLL;
    if (a3)
    {
      v70 = (0xC949D7C7509E6557 * (a3 | (4 * *(a2 + a3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a2 | (*(a2 + (a3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v70 ^ (v70 >> 47));
    }
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,MPSMLIRViewerSPIOps> const&>(void *a1, uint64_t a2)
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

void sub_256448228(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,void *>>>>::~unique_ptr[abi:nn200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>>>::find<std::string>(void *a1, uint64_t a2)
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
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  v13 = *v12;
  if (*v12)
  {
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

    do
    {
      v16 = v13[1];
      if (v16 == v8)
      {
        v17 = *(v13 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v13[3];
        }

        if (v17 == v15)
        {
          v19 = v18 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v19, v2, v15))
          {
            return v13;
          }
        }
      }

      else
      {
        if (v10 <= 1)
        {
          v16 &= *&v7 - 1;
        }

        else if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v11)
        {
          return 0;
        }
      }

      v13 = *v13;
    }

    while (v13);
  }

  return v13;
}

void *std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_11:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_11;
  }

  return v9;
}

EmitterViewerSPI::ReturnOpHandler *EmitterViewerSPI::ReturnOpHandler::ReturnOpHandler(EmitterViewerSPI::ReturnOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A6D0;
  v23 = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(&v23);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v22 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v22 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v20 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0;
  for (i = 24; (*(a3 + 46) & 0x80) != 0; i += 32)
  {
    if (v11 >= *(a3 + 17))
    {
      break;
    }

    v13 = *(*(a3 + 9) + i);
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"ret%d", v11];
    v15 = EmitViewerSPI::emitNodeInputPort(a2, v14, v13);
    [v10 addObject:v15];

    ++v11;
  }

  v16 = [MLViewerNodeSPI alloc];
  v17 = [(MLViewerNodeSPI *)v16 initWithType:v20 inputs:v10 outputs:MEMORY[0x277CBEBF8] properties:MEMORY[0x277CBEBF8] regions:MEMORY[0x277CBEBF8]];
  v18 = *(this + 3);
  *(this + 3) = v17;

  if (v22 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2564489D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlir::mps::serializeMPSModule(uint64_t a1)
{
  v2[9] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Attribute::getContext((a1 + 24));
  memset(&v2[1], 0, 24);
  mlir::OpBuilder::create<mlir::mps::serialization::ModuleOp>(v2, *(a1 + 24));
}

void mlir::OpBuilder::create<mlir::mps::serialization::ModuleOp>(uint64_t a1, uint64_t a2)
{
  v10[38] = *MEMORY[0x277D85DE8];
  v7 = a2;
  Context = mlir::Attribute::getContext(&v7);
  v5 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::serialization::ModuleOp,void>::id, Context);
  if (v6)
  {
    mlir::OperationState::OperationState(v10, a2, v5);
    v9[0] = 0;
    v9[16] = 0;
    mlir::mps::serialization::ModuleOp::build(a1, v10);
  }

  mlir::OpBuilder::create<mlir::mps::serialization::ModuleOp>(v10, v9, v8);
}

uint64_t mlir::Dialect::getRegisteredInterface<mlir::mps::MPSBytecodeDialectInterface>(uint64_t a1)
{
  {
    v1 = *(a1 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    v8 = a1;
    mlir::Dialect::getRegisteredInterface<mlir::mps::MPSBytecodeDialectInterface>();
    a1 = v8;
    v1 = *(v8 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(a1 + 48);
  v3 = ((mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id >> 4) ^ (mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id >> 9)) & (v1 - 1);
  v4 = *(v2 + 16 * v3);
  if (v4 != mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id)
  {
    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (v1 - 1);
      v4 = *(v2 + 16 * v3);
      if (v4 == mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

LABEL_4:
  if (v3 == v1)
  {
    return 0;
  }

  return *(v2 + 16 * v3 + 8);
}

void mlir::mps::importMPSModule(uint64_t ***a1@<X0>, mlir::StringAttr **a2@<X1>, uint64_t **a3@<X8>)
{
  v24[5] = *MEMORY[0x277D85DE8];
  v5 = ***a1;
  v6 = *a2;
  v7 = (*(*v5 + 16))(v5);
  mlir::FileLineColLoc::get(v6, v7, v8, 0, 0);
  *&v15 = *a2;
  Dialect = mlir::MLIRContext::getOrLoadDialect(v15, "mps", 3, &mlir::detail::TypeIDResolver<mlir::mps::MPSDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::mps::MPSDialect * mlir::MLIRContext::getOrLoadDialect<mlir::mps::MPSDialect>(void)::{lambda(void)#1}>, &v15);
  v10 = *(Dialect + 40);
  *(Dialect + 40) = 1;
  llvm::MemoryBufferRef::MemoryBufferRef(&v15, v5);
  if (!mlir::isBytecode(&v15))
  {
    *&v15 = *a2;
    BYTE8(v15) = 1;
    v16 = 0uLL;
    LODWORD(v17) = 0;
    v18 = 0;
    v19 = v21;
    v20 = 0x600000000;
    v21[6] = &v22;
    v21[7] = 0x600000000;
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v24[0] = v24;
    v24[1] = v24;
    memset(&v24[2], 0, 24);
    if (mlir::parseSourceFile(a1, v23, &v15, &v14))
    {
      mlir::detail::constructContainerOpForParserIfNecessary<mlir::ModuleOp>(v23, v15, v14, a3);
    }

    else
    {
      *a3 = 0;
    }

    mlir::Block::~Block(v23);
    mlir::ParserConfig::~ParserConfig(&v15);
  }

  v15 = 0u;
  v16 = 0u;
  v17 = &v17;
  v18 = &v17;
  v20 = 0;
  v21[0] = 0;
  v19 = 0;
  v11 = llvm::MemoryBufferRef::MemoryBufferRef(v23, v5);
  if (mlir::readBytecodeFile(v11, &v15, a2))
  {
    ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v18);
    if (*(*(ValuePtr + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      mlir::Operation::CloneOptions::all(ValuePtr);
      mlir::Operation::clone();
    }

    if (*(*(llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v18) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::serialization::ModuleOp,void>::id)
    {
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v18);
      mlir::PassManager::PassManager();
    }
  }

  *a3 = 0;
  mlir::Block::~Block(&v15);
  *(Dialect + 40) = v10;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v9 = (*result + 16 * v8);
  v10 = *v9;
  if (*a2 != *v9)
  {
    v14 = 0;
    v15 = 1;
    while (v10 != -4096)
    {
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v10 == -8192;
      }

      if (v16)
      {
        v14 = v9;
      }

      v17 = v8 + v15++;
      v8 = v17 & v7;
      v9 = (v6 + 16 * (v17 & v7));
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v14)
    {
      v9 = v14;
    }

LABEL_5:
    v21 = v9;
    v12 = *(result + 8);
    if (4 * v12 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v12 - *(result + 12) > v5 >> 3)
    {
      *(result + 8) = v12 + 1;
      if (*v9 == -4096)
      {
LABEL_9:
        v13 = *a3;
        *v9 = *a2;
        v9[1] = v13;
        v6 = *result;
        v5 = *(result + 16);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v18 = result;
    v19 = a4;
    v20 = a3;
    llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::LookupBucketFor<mlir::Dialect const*>(v18, a2, &v21);
    a3 = v20;
    result = v18;
    a4 = v19;
    v9 = v21;
    ++*(v18 + 8);
    if (*v9 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v11 = 0;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v11;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::LookupBucketFor<mlir::Dialect const*>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
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
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
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

void *llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(uint64_t a1, int a2)
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
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
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
        v25 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = ((v25 >> 4) ^ (v25 >> 9)) & v16;
          v23 = &result[2 * v26];
          v27 = *v23;
          if (v25 != *v23)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -4096)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -8192;
              }

              if (v30)
              {
                v28 = v23;
              }

              v31 = v26 + v29++;
              v26 = v31 & v16;
              v23 = &result[2 * (v31 & v16)];
              v27 = *v23;
              if (v25 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v28)
            {
              v23 = v28;
            }
          }

LABEL_23:
          v24 = *(v17 + 1);
          *v23 = v25;
          v23[1] = v24;
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
      *(v20 - 2) = -4096;
      *v20 = -4096;
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
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

const char *llvm::getTypeName<mlir::BytecodeDialectInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::BytecodeDialectInterface]";
  v6 = 80;
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

void mlir::mps::MPSSerializationPass::~MPSSerializationPass(mlir::mps::MPSSerializationPass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x259C63180);
}

const char *mlir::PassWrapper<mlir::mps::MPSSerializationPass,mlir::OperationPass<mlir::mps::serialization::ModuleOp>>::getName()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::MPSSerializationPass]";
  v6 = 81;
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

void *mlir::mps::MPSSerializationPass::getDependentDialects(mlir::mps::MPSSerializationPass *this, mlir::DialectRegistry *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v12[0] = &unk_28685A7A0;
  v13 = v12;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::func::FuncDialect,void>::id, "func", 4uLL, v12);
  if (v13 == v12)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))();
  }

  v12[0] = &unk_28685A830;
  v13 = v12;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mps::MPSDialect,void>::id, "mps", 3uLL, v12);
  if (v13 == v12)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))();
  }

  v12[0] = &unk_28685A8B0;
  v13 = v12;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::scf::SCFDialect,void>::id, "scf", 3uLL, v12);
  if (v13 == v12)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))();
  }

  v12[0] = &unk_28685A930;
  v13 = v12;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::tensor::TensorDialect,void>::id, "tensor", 6uLL, v12);
  result = v13;
  if (v13 == v12)
  {
    result = (*(*v13 + 32))(v13);
    v5 = *(this + 44);
    if (!v5)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v13)
  {
    result = (*(*v13 + 40))();
  }

  v5 = *(this + 44);
  if (v5)
  {
LABEL_19:
    v6 = *(this + 43);
    v7 = &v6[3 * v5];
    v8 = v6;
    do
    {
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      v12[0] = &unk_28685A9B0;
      v12[1] = v6;
      v13 = v12;
      mlir::DialectRegistry::insert(a2, v9, v10, v11, v12);
      result = v13;
      if (v13 == v12)
      {
        result = (*(*v13 + 32))(v13);
      }

      else if (v13)
      {
        result = (*(*v13 + 40))();
      }

      v8 += 3;
      v6 += 3;
    }

    while (v8 != v7);
  }

  return result;
}

void mlir::mps::MPSSerializationPass::runOnOperation(mlir::mps::MPSSerializationPass *this)
{
  v33 = *MEMORY[0x277D85DE8];
  v9[0] = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  memset(&v9[1], 0, 24);
  v2 = *(this + 5);
  v19[0] = v9;
  v10[0] = v19;
  mlir::detail::walk<mlir::ForwardIterator>((v2 & 0xFFFFFFFFFFFFFFF8), _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_3mps20MPSSerializationPass14runOnOperationEvEUlNS1_4func6FuncOpEE_SE_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_, v10, 1);
  Context = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  v19[1] = 0;
  v19[2] = 0;
  v19[0] = &unk_28685B800;
  v20 = 0;
  v25 = 0;
  v26 = 0;
  v21 = v23;
  v22 = 0;
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  v27 = 0x1000000000;
  v28 = 0;
  v29 = 0;
  v30 = 0x2800000000;
  v31 = 0;
  v32 = Context;
  v10[0] = &v10[2];
  v10[2] = "mps";
  v10[3] = 3;
  v10[1] = 0x200000001;
  mlir::ConversionTarget::setDialectAction(v19, &v10[2], 1, 0);
  if (v10[0] != &v10[2])
  {
    free(v10[0]);
  }

  v4 = *(this + 44);
  if (v4)
  {
    v5 = (*(this + 43) + 8);
    v6 = 24 * v4;
    do
    {
      v7 = *v5;
      v10[0] = &v10[2];
      *&v10[2] = v7;
      v10[1] = 0x200000001;
      mlir::ConversionTarget::setDialectAction(v19, &v10[2], 1, 0);
      if (v10[0] != &v10[2])
      {
        free(v10[0]);
      }

      v5 = (v5 + 24);
      v6 -= 24;
    }

    while (v6);
  }

  v10[0] = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  memset(&v10[1], 0, 32);
  v10[5] = v11;
  v10[6] = 0x600000000;
  v11[6] = 0;
  v11[7] = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v17 = 0;
  v18 = 0x2800000000;
  v8 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v15 = 0x2800000000;
  v16 = 0;
  mlir::Attribute::getContext((v8 + 24));
  operator new();
}

BOOL mlir::OperationPass<mlir::mps::serialization::ModuleOp>::canScheduleOn(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 8);
  Value = mlir::StringAttr::getValue(&v6);
  if ((*(a1 + 32) & 1) == 0 || v4 != *(a1 + 24))
  {
    return 0;
  }

  if (v4)
  {
    return memcmp(Value, *(a1 + 16), v4) == 0;
  }

  return 1;
}

void mlir::Pass::~Pass(mlir::Pass *this)
{
  *this = &unk_286867B68;
  v2 = *(this + 39);
  if (v2)
  {
    *(this + 40) = v2;
    operator delete(v2);
  }

  if (*(this + 73))
  {
    v3 = *(this + 72);
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = *(*(this + 35) + v4);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 17));
        }

        v4 += 8;
      }

      while (8 * v3 != v4);
    }
  }

  free(*(this + 35));
  v7 = *(this + 29);
  if (v7 != this + 248)
  {
    free(v7);
  }

  v8 = *(this + 23);
  if (v8 != this + 200)
  {
    free(v8);
  }

  v9 = *(this + 16);
  if (v9)
  {
    *(this + 17) = v9;
    operator delete(v9);
  }

  if (*(this + 120) == 1)
  {
    v10 = *(this + 8);
    if (v10 != *(this + 7))
    {
      free(v10);
    }
  }
}

uint64_t std::__function::__func<void mlir::DialectRegistry::insert<mlir::func::FuncDialect>(void)::{lambda(mlir::MLIRContext *)#1},std::allocator<void mlir::DialectRegistry::insert<mlir::func::FuncDialect>(void)::{lambda(mlir::MLIRContext *)#1}>,mlir::Dialect * ()(mlir::MLIRContext *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir15DialectRegistry6insertINS_4func11FuncDialectEEEvvEUlPNS_11MLIRContextEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir15DialectRegistry6insertINS_4func11FuncDialectEEEvvEUlPNS_11MLIRContextEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir15DialectRegistry6insertINS_4func11FuncDialectEEEvvEUlPNS_11MLIRContextEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir15DialectRegistry6insertINS_4func11FuncDialectEEEvvEUlPNS_11MLIRContextEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<void mlir::DialectRegistry::insert<mlir::mps::MPSDialect>(void)::{lambda(mlir::MLIRContext *)#1},std::allocator<void mlir::DialectRegistry::insert<mlir::mps::MPSDialect>(void)::{lambda(mlir::MLIRContext *)#1}>,mlir::Dialect * ()(mlir::MLIRContext *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir15DialectRegistry6insertINS_3mps10MPSDialectEEEvvEUlPNS_11MLIRContextEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir15DialectRegistry6insertINS_3mps10MPSDialectEEEvvEUlPNS_11MLIRContextEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir15DialectRegistry6insertINS_3mps10MPSDialectEEEvvEUlPNS_11MLIRContextEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir15DialectRegistry6insertINS_3mps10MPSDialectEEEvvEUlPNS_11MLIRContextEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<void mlir::DialectRegistry::insert<mlir::scf::SCFDialect>(void)::{lambda(mlir::MLIRContext *)#1},std::allocator<void mlir::DialectRegistry::insert<mlir::scf::SCFDialect>(void)::{lambda(mlir::MLIRContext *)#1}>,mlir::Dialect * ()(mlir::MLIRContext *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir15DialectRegistry6insertINS_3scf10SCFDialectEEEvvEUlPNS_11MLIRContextEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir15DialectRegistry6insertINS_3scf10SCFDialectEEEvvEUlPNS_11MLIRContextEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir15DialectRegistry6insertINS_3scf10SCFDialectEEEvvEUlPNS_11MLIRContextEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir15DialectRegistry6insertINS_3scf10SCFDialectEEEvvEUlPNS_11MLIRContextEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<void mlir::DialectRegistry::insert<mlir::tensor::TensorDialect>(void)::{lambda(mlir::MLIRContext *)#1},std::allocator<void mlir::DialectRegistry::insert<mlir::tensor::TensorDialect>(void)::{lambda(mlir::MLIRContext *)#1}>,mlir::Dialect * ()(mlir::MLIRContext *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir15DialectRegistry6insertINS_6tensor13TensorDialectEEEvvEUlPNS_11MLIRContextEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir15DialectRegistry6insertINS_6tensor13TensorDialectEEEvvEUlPNS_11MLIRContextEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir15DialectRegistry6insertINS_6tensor13TensorDialectEEEvvEUlPNS_11MLIRContextEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir15DialectRegistry6insertINS_6tensor13TensorDialectEEEvvEUlPNS_11MLIRContextEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<mlir::mps::anonymous namespace::addExtraDialectsToRegistry(mlir::DialectRegistry &,llvm::ArrayRef<mlir::mps::DialectInfo>)::$_0,std::allocator<mlir::mps::anonymous namespace::addExtraDialectsToRegistry(mlir::DialectRegistry &,llvm::ArrayRef<mlir::mps::DialectInfo>)::$_0>,mlir::Dialect * ()(mlir::MLIRContext *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28685A9B0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlir::mps::anonymous namespace::addExtraDialectsToRegistry(mlir::DialectRegistry &,llvm::ArrayRef<mlir::mps::DialectInfo>)::$_0,std::allocator<mlir::mps::anonymous namespace::addExtraDialectsToRegistry(mlir::DialectRegistry &,llvm::ArrayRef<mlir::mps::DialectInfo>)::$_0>,mlir::Dialect * ()(mlir::MLIRContext *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir3mps12_GLOBAL__N_126addExtraDialectsToRegistryERNS_15DialectRegistryEN4llvm8ArrayRefINS0_11DialectInfoEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir3mps12_GLOBAL__N_126addExtraDialectsToRegistryERNS_15DialectRegistryEN4llvm8ArrayRefINS0_11DialectInfoEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir3mps12_GLOBAL__N_126addExtraDialectsToRegistryERNS_15DialectRegistryEN4llvm8ArrayRefINS0_11DialectInfoEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir3mps12_GLOBAL__N_126addExtraDialectsToRegistryERNS_15DialectRegistryEN4llvm8ArrayRefINS0_11DialectInfoEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

mlir::StringAttr ****_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_3mps20MPSSerializationPass14runOnOperationEvEUlNS1_4func6FuncOpEE_SE_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_(mlir::StringAttr ****result, uint64_t a2)
{
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      mlir::mps::MPSSerializationPass::runOnOperation(void)::{lambda(mlir::func::FuncOp)#1}::operator()(*result, a2);
    }
  }

  return result;
}

void mlir::mps::MPSSerializationPass::runOnOperation(void)::{lambda(mlir::func::FuncOp)#1}::operator()(mlir::StringAttr ***a1, uint64_t a2)
{
  v18 = a2;
  v4 = *a1;
  v5 = *a1 + 2;
  v6 = *(a2 + 16);
  NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(a2);
  *v5 = v6;
  v4[3] = NodePtr;
  v8 = *a1;
  v9 = *(a2 + 24);
  if (!*(a2 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(a2, "sym_name", 8), (v11 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(a2 + 56, "sym_name", 8uLL);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v12 = InherentAttr;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = v12;
  v17[0] = mlir::StringAttr::getValue(&v16);
  v17[1] = v13;
  v14[1] = 0;
  FunctionType = mlir::func::FuncOp::getFunctionType(&v18);
  v14[0] = 0;
  mlir::OpBuilder::create<mlir::mps::serialization::FuncOp,llvm::StringRef,mlir::FunctionType,llvm::ArrayRef<mlir::NamedAttribute>>(v8, v9, v17, &FunctionType, v14);
}

void mlir::OpBuilder::create<mlir::mps::serialization::FuncOp,llvm::StringRef,mlir::FunctionType,llvm::ArrayRef<mlir::NamedAttribute>>(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v16[38] = *MEMORY[0x277D85DE8];
  v13 = a2;
  Context = mlir::Attribute::getContext(&v13);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::serialization::FuncOp,void>::id, Context);
  if (v12)
  {
    mlir::OperationState::OperationState(v16, a2, v11);
    mlir::mps::serialization::FuncOp::build(a1, v16, *a3, *(a3 + 8), *a4, *a5, *(a5 + 8));
  }

  mlir::OpBuilder::create<mlir::mps::serialization::FuncOp,llvm::StringRef,mlir::FunctionType,llvm::ArrayRef<mlir::NamedAttribute>>(v16, v15, v14);
}

void mlir::Operation::setAttr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[9] = *MEMORY[0x277D85DE8];
  v9 = a2;
  if (*(a1 + 47) && (Value = mlir::StringAttr::getValue(&v9), mlir::Operation::getInherentAttr(a1, Value, v6), (v7 & 1) != 0))
  {
    mlir::Operation::setInherentAttr(a1, v9, a3);
  }

  else
  {
    mlir::NamedAttrList::NamedAttrList(v10, *(a1 + 56));
    if (mlir::NamedAttrList::set(v10, v9, a3) != a3)
    {
      Context = mlir::Attribute::getContext((a1 + 24));
      *(a1 + 56) = mlir::NamedAttrList::getDictionary(v10, Context);
    }

    if (v10[0] != v11)
    {
      free(v10[0]);
    }
  }
}

uint64_t mlir::Region::takeBody(mlir::Region *this, mlir::Region *a2)
{
  result = mlir::Region::dropAllReferences(this);
  v5 = *(this + 1);
  if (v5 != this)
  {
    do
    {
      v6 = *(v5 + 1);
      v7 = (v5 - 8);
      if (v5)
      {
        v8 = v5 - 8;
      }

      else
      {
        v8 = 0;
      }

      llvm::ilist_traits<mlir::Block>::removeNodeFromList(this, v8);
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
      *v10 = v9;
      *(v9 + 8) = v10;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      mlir::Block::~Block(v7);
      result = MEMORY[0x259C63180]();
      v5 = v6;
    }

    while (v6 != this);
  }

  if (*a2 != a2 && a2 != this)
  {
    v11 = *(a2 + 1);
    result = llvm::ilist_traits<mlir::Block>::transferNodesFromList(this, a2, v11, a2);
    if (v11 != a2)
    {
      v12 = *a2;
      v13 = *v11;
      *(v13 + 8) = a2;
      *a2 = v13;
      v14 = *this;
      *(v12 + 8) = this;
      *v11 = v14;
      *(v14 + 8) = v11;
      *this = v12;
    }
  }

  return result;
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZNS1_3mps20MPSSerializationPass14runOnOperationEvENKUlNS1_4func6FuncOpEE_clESE_EUlNSD_8ReturnOpEE_SG_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_(mlir::OpBuilder ***a1, mlir::Operation *a2)
{
  if (a2)
  {
    if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
    {
      mlir::mps::MPSSerializationPass::runOnOperation(void)::{lambda(mlir::func::FuncOp)#1}::operator() const(mlir::func::FuncOp)::{lambda(mlir::func::ReturnOp)#1}::operator()(*a1, a2);
    }
  }
}

uint64_t mlir::OpBuilder::create<mlir::mps::serialization::ReturnOp,llvm::SmallVector<mlir::Value,6u>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x277D85DE8];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::serialization::ReturnOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::serialization::ReturnOp,llvm::SmallVector<mlir::Value,6u>>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::mps::serialization::ReturnOp::build(a1, v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::serialization::ReturnOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v10;
}

void mlir::ConversionTarget::~ConversionTarget(mlir::ConversionTarget *this)
{
  mlir::ConversionTarget::~ConversionTarget(this);
}

{
  *this = &unk_28685B800;
  v2 = this + 120;
  v3 = *(this + 18);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    if (!*(this + 27))
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    if (!*(this + 27))
    {
LABEL_19:
      free(*(this + 12));
      if (*(this + 21))
      {
        v10 = *(this + 20);
        if (v10)
        {
          v11 = 0;
          do
          {
            v12 = *(*(this + 9) + v11);
            if (v12 != -8 && v12 != 0)
            {
              llvm::deallocate_buffer(v12, (*v12 + 17));
            }

            v11 += 8;
          }

          while (8 * v10 != v11);
        }
      }

      free(*(this + 9));
      v14 = *(this + 6);
      v15 = *(this + 16);
      if (v15)
      {
        v16 = (v14 + 32);
        v17 = v14 + 8;
        v18 = 40 * v15;
        while (1)
        {
          if ((*(v16 - 4) | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            v19 = *v16;
            if (v16 - 3 == *v16)
            {
              (*(*v19 + 32))(v19);
            }

            else if (v19)
            {
              (*(*v19 + 40))(v19);
            }
          }

          v16 += 5;
          v17 += 40;
          v18 -= 40;
          if (!v18)
          {
            llvm::deallocate_buffer(*(this + 6), (40 * *(this + 16)));
          }
        }
      }

      llvm::deallocate_buffer(v14, 0);
    }
  }

  v4 = *(this + 26);
  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = *(*(this + 12) + v5);
      if (v6 != -8 && v6 != 0)
      {
        v8 = *v6;
        v9 = *(v6 + 4);
        if (v9 == (v6 + 8))
        {
          (*(*v9 + 32))(v9);
        }

        else if (v9)
        {
          (*(*v9 + 40))(v9);
        }

        llvm::deallocate_buffer(v6, (v8 + 41));
      }

      v5 += 8;
    }

    while (8 * v4 != v5);
  }

  goto LABEL_19;
}

void sub_25644C328()
{

  JUMPOUT(0x259C63180);
}

void *mlir::mps::anonymous namespace::ConvertForOp<mlir::scf::ForOp,mlir::mps::serialization::ForOp>::~ConvertForOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertForOp<mlir::scf::ForOp,mlir::mps::serialization::ForOp>::~ConvertForOp(void *a1)
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

uint64_t mlir::OpConversionPattern<mlir::scf::ForOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::scf::ForOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

void mlir::mps::anonymous namespace::ConvertForOp<mlir::scf::ForOp,mlir::mps::serialization::ForOp>::matchAndRewrite(int a1, uint64_t a2, mlir::scf::detail::ForOpGenericAdaptorBase *this, double a4, int32x4_t a5, uint64_t a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 24);
  ODSOperandIndexAndLength = mlir::scf::detail::ForOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 12), a4, a5);
  v10 = *(this + 5);
  v27 = v10;
  v28 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(&v27, ODSOperandIndexAndLength);
  }

  v27 = v10;
  v28 = 0;
  v26 = mlir::ValueRange::dereference_iterator(&v27, 0);
  v13 = mlir::scf::detail::ForOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 12), v11, v12);
  v14 = *(this + 5);
  v27 = v14;
  v28 = v13;
  if (v13)
  {
    v14 = mlir::ValueRange::offset_base(&v27, v13);
  }

  v27 = v14;
  v28 = 0;
  v25 = mlir::ValueRange::dereference_iterator(&v27, 0);
  v17 = mlir::scf::detail::ForOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 2u, *(this + 12), v15, v16);
  v18 = *(this + 5);
  v27 = v18;
  v28 = v17;
  if (v17)
  {
    v18 = mlir::ValueRange::offset_base(&v27, v17);
  }

  v27 = v18;
  v28 = 0;
  v24 = mlir::ValueRange::dereference_iterator(&v27, 0);
  v21 = mlir::scf::detail::ForOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 3u, *(this + 12), v19, v20);
  v22 = *(this + 5);
  v27 = v22;
  v28 = v21;
  if (v21)
  {
    v22 = mlir::ValueRange::offset_base(&v27, v21);
    v23 = v28;
  }

  else
  {
    v23 = 0;
  }

  v27 = v22;
  v28 = (HIDWORD(v21) + v21) - v23;
  mlir::OpBuilder::create<mlir::mps::serialization::ForOp,mlir::Value,mlir::Value,mlir::Value,mlir::ValueRange>(a6 + 8, v8, &v26, &v25, &v24, &v27);
}

void mlir::OpBuilder::create<mlir::mps::serialization::ForOp,mlir::Value,mlir::Value,mlir::Value,mlir::ValueRange>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v18[38] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::serialization::ForOp,void>::id, Context);
  if (v14)
  {
    mlir::OperationState::OperationState(v18, a2, v13);
    mlir::mps::serialization::ForOp::build(a1, v18, *a3, *a4, *a5, *a6, *(a6 + 8));
  }

  mlir::OpBuilder::create<mlir::mps::serialization::ForOp,mlir::Value,mlir::Value,mlir::Value,mlir::ValueRange>(v18, v17, v16);
}

void mlir::mps::anonymous namespace::inlineRegion(mlir::mps::_anonymous_namespace_ *this, mlir::Region **a2, mlir::Region *a3, mlir::PatternRewriter *a4)
{
  v8[2] = *MEMORY[0x277D85DE8];
  for (i = *a2; *a2 != a2; i = *a2)
  {
    if (i)
    {
      v7 = i - 8;
    }

    else
    {
      v7 = 0;
    }

    (*(*a3 + 24))(a3, v7, a3, a4);
  }

  mlir::TypeRange::TypeRange(v8, 0, 0);
  mlir::OpBuilder::createBlock();
}

void *mlir::mps::anonymous namespace::ConvertWhileOp<mlir::scf::WhileOp,mlir::mps::serialization::WhileOp>::~ConvertWhileOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertWhileOp<mlir::scf::WhileOp,mlir::mps::serialization::WhileOp>::~ConvertWhileOp(void *a1)
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

uint64_t mlir::OpConversionPattern<mlir::scf::WhileOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::scf::WhileOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

void mlir::mps::anonymous namespace::ConvertWhileOp<mlir::scf::WhileOp,mlir::mps::serialization::WhileOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 24);
  v7 = *(a2 + 36);
  if (v7)
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v13 = v15;
  v14 = 0x600000000;
  if (v7 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v15[i] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, i) + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    v10 = v14;
    v11 = v13;
  }

  else
  {
    v10 = 0;
    v11 = v15;
  }

  LODWORD(v14) = v10 + v7;
  mlir::TypeRange::TypeRange(v16, v11, (v10 + v7));
  v12 = *(a3 + 40);
  mlir::OpBuilder::create<mlir::mps::serialization::WhileOp,mlir::TypeRange,mlir::ValueRange>(a4 + 8, v6, v16, &v12);
}

void mlir::OpBuilder::create<mlir::mps::serialization::WhileOp,mlir::TypeRange,mlir::ValueRange>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v14[38] = *MEMORY[0x277D85DE8];
  v11 = a2;
  Context = mlir::Attribute::getContext(&v11);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::serialization::WhileOp,void>::id, Context);
  if (v10)
  {
    mlir::OperationState::OperationState(v14, a2, v9);
    mlir::mps::serialization::WhileOp::build(a1, v14, *a3, a3[1], *a4, *(a4 + 8), 0, 0);
  }

  mlir::OpBuilder::create<mlir::mps::serialization::WhileOp,mlir::TypeRange,mlir::ValueRange>(v14, v13, v12);
}

void *mlir::mps::anonymous namespace::ConvertIfOp<mlir::scf::IfOp,mlir::mps::serialization::IfOp>::~ConvertIfOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertIfOp<mlir::scf::IfOp,mlir::mps::serialization::IfOp>::~ConvertIfOp(void *a1)
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

uint64_t mlir::OpConversionPattern<mlir::scf::IfOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::scf::IfOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

void mlir::mps::anonymous namespace::ConvertIfOp<mlir::scf::IfOp,mlir::mps::serialization::IfOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 24);
  v7 = *(a2 + 36);
  if (v7)
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v13 = v15;
  v14 = 0x600000000;
  if (v7 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v15[i] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, i) + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    v10 = v14;
    v11 = v13;
  }

  else
  {
    v10 = 0;
    v11 = v15;
  }

  LODWORD(v14) = v10 + v7;
  mlir::TypeRange::TypeRange(v16, v11, (v10 + v7));
  v17[0] = *(a3 + 40);
  v17[1] = 0;
  v12 = mlir::ValueRange::dereference_iterator(v17, 0);
  mlir::OpBuilder::create<mlir::mps::serialization::IfOp,mlir::TypeRange,mlir::Value>(a4 + 8, v6, v16, &v12);
}

void mlir::OpBuilder::create<mlir::mps::serialization::IfOp,mlir::TypeRange,mlir::Value>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v14[38] = *MEMORY[0x277D85DE8];
  v11 = a2;
  Context = mlir::Attribute::getContext(&v11);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::serialization::IfOp,void>::id, Context);
  if (v10)
  {
    mlir::OperationState::OperationState(v14, a2, v9);
    mlir::mps::serialization::IfOp::build(a1, v14, *a3, a3[1], *a4);
  }

  mlir::OpBuilder::create<mlir::mps::serialization::IfOp,mlir::TypeRange,mlir::Value>(v14, v13, v12);
}

void *mlir::mps::anonymous namespace::ConvertConditionOp<mlir::scf::ConditionOp,mlir::mps::serialization::ConditionOp>::~ConvertConditionOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertConditionOp<mlir::scf::ConditionOp,mlir::mps::serialization::ConditionOp>::~ConvertConditionOp(void *a1)
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

uint64_t mlir::OpConversionPattern<mlir::scf::ConditionOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::scf::ConditionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::mps::anonymous namespace::ConvertConditionOp<mlir::scf::ConditionOp,mlir::mps::serialization::ConditionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 36);
  if (v7)
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v24 = v26;
  v25 = 0x600000000;
  if (v7 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v26[i] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, i) + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    v10 = v25;
    v11 = v24;
  }

  else
  {
    v10 = 0;
    v11 = v26;
  }

  LODWORD(v25) = v10 + v7;
  mlir::TypeRange::TypeRange(v27, v11, (v10 + v7));
  ODSOperandIndexAndLength = mlir::scf::detail::ConditionOpGenericAdaptorBase::getODSOperandIndexAndLength(a3, 0, *(a3 + 48), v12, v13);
  v15 = *(a3 + 40);
  v28 = v15;
  v29 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v15 = mlir::ValueRange::offset_base(&v28, ODSOperandIndexAndLength);
  }

  v28 = v15;
  v29 = 0;
  v23 = mlir::ValueRange::dereference_iterator(&v28, 0);
  v18 = mlir::scf::detail::ConditionOpGenericAdaptorBase::getODSOperandIndexAndLength(a3, 1u, *(a3 + 48), v16, v17);
  v19 = *(a3 + 40);
  v28 = v19;
  v29 = v18;
  if (v18)
  {
    v19 = mlir::ValueRange::offset_base(&v28, v18);
    v20 = v29;
  }

  else
  {
    v20 = 0;
  }

  v28 = v19;
  v29 = (HIDWORD(v18) + v18) - v20;
  v21 = mlir::OpBuilder::create<mlir::mps::serialization::ConditionOp,mlir::TypeRange,mlir::Value,mlir::ValueRange>((a4 + 8), *(a2 + 24), v27, &v23, &v28);
  (*(*a4 + 8))(a4, a2, v21);
  if (v24 != v26)
  {
    free(v24);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::serialization::ConditionOp,mlir::TypeRange,mlir::Value,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v19[38] = *MEMORY[0x277D85DE8];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::serialization::ConditionOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::serialization::ConditionOp,mlir::TypeRange,mlir::Value,mlir::ValueRange>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::serialization::ConditionOp::build(a1, v19, *a3, a3[1], *a4, *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::serialization::ConditionOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

void *mlir::mps::anonymous namespace::ConvertYieldOp<mlir::scf::YieldOp,mlir::mps::serialization::YieldOp>::~ConvertYieldOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertYieldOp<mlir::scf::YieldOp,mlir::mps::serialization::YieldOp>::~ConvertYieldOp(void *a1)
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

uint64_t mlir::OpConversionPattern<mlir::scf::YieldOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::scf::YieldOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::mps::anonymous namespace::ConvertYieldOp<mlir::scf::YieldOp,mlir::mps::serialization::YieldOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 36);
  if (v7)
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  if (v7 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v15[i] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, i) + 8) & 0xFFFFFFFFFFFFFFF8;
    }
  }

  mlir::TypeRange::TypeRange(v16, v15, v7);
  ODSOperandIndexAndLength = mlir::scf::detail::YieldOpGenericAdaptorBase::getODSOperandIndexAndLength(a3, 0, *(a3 + 48));
  v11 = *(a3 + 40);
  v17 = v11;
  v18 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v11 = mlir::ValueRange::offset_base(&v17, ODSOperandIndexAndLength);
    v12 = v18;
  }

  else
  {
    v12 = 0;
  }

  v17 = v11;
  v18 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength) - v12;
  v13 = mlir::OpBuilder::create<mlir::mps::serialization::YieldOp,mlir::TypeRange,mlir::ValueRange>((a4 + 8), *(a2 + 24), v16, &v17);
  (*(*a4 + 8))(a4, a2, v13);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::serialization::YieldOp,mlir::TypeRange,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::serialization::YieldOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::serialization::YieldOp,mlir::TypeRange,mlir::ValueRange>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::serialization::YieldOp::build(a1, v17, *a3, a3[1], *a4, *(a4 + 8), 0, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::serialization::YieldOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

void *mlir::mps::anonymous namespace::ConvertFromElementsOp<mlir::tensor::FromElementsOp,mlir::mps::serialization::FromElementsOp>::~ConvertFromElementsOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertFromElementsOp<mlir::tensor::FromElementsOp,mlir::mps::serialization::FromElementsOp>::~ConvertFromElementsOp(void *a1)
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

uint64_t mlir::OpConversionPattern<mlir::tensor::FromElementsOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::tensor::FromElementsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::mps::anonymous namespace::ConvertFromElementsOp<mlir::tensor::FromElementsOp,mlir::mps::serialization::FromElementsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v10 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(a3 + 40);
  v8 = mlir::OpBuilder::create<mlir::mps::serialization::FromElementsOp,mlir::RankedTensorType,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v10, &v11);
  (*(*a4 + 8))(a4, a2, v8);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::serialization::FromElementsOp,mlir::RankedTensorType,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::serialization::FromElementsOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::serialization::FromElementsOp,mlir::RankedTensorType,mlir::ValueRange>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::serialization::FromElementsOp::build(a1, v17, *a3, *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::serialization::FromElementsOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

void *mlir::mps::anonymous namespace::ConvertExtractOp<mlir::tensor::ExtractOp,mlir::mps::serialization::ExtractOp>::~ConvertExtractOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertExtractOp<mlir::tensor::ExtractOp,mlir::mps::serialization::ExtractOp>::~ConvertExtractOp(void *a1)
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

uint64_t mlir::OpConversionPattern<mlir::tensor::ExtractOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::tensor::ExtractOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::mps::anonymous namespace::ConvertExtractOp<mlir::tensor::ExtractOp,mlir::mps::serialization::ExtractOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v20 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  ODSOperandIndexAndLength = mlir::tensor::detail::ExtractOpGenericAdaptorBase::getODSOperandIndexAndLength(a3, 0, *(a3 + 48), v8, v9);
  v11 = *(a3 + 40);
  v21 = v11;
  v22 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v11 = mlir::ValueRange::offset_base(&v21, ODSOperandIndexAndLength);
  }

  v21 = v11;
  v22 = 0;
  v19 = mlir::ValueRange::dereference_iterator(&v21, 0);
  v14 = mlir::tensor::detail::ExtractOpGenericAdaptorBase::getODSOperandIndexAndLength(a3, 1u, *(a3 + 48), v12, v13);
  v15 = *(a3 + 40);
  v21 = v15;
  v22 = v14;
  if (v14)
  {
    v15 = mlir::ValueRange::offset_base(&v21, v14);
    v16 = v22;
  }

  else
  {
    v16 = 0;
  }

  v21 = v15;
  v22 = (HIDWORD(v14) + v14) - v16;
  v17 = mlir::OpBuilder::create<mlir::mps::serialization::ExtractOp,mlir::Type,mlir::Value,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v20, &v19, &v21);
  (*(*a4 + 8))(a4, a2, v17);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::serialization::ExtractOp,mlir::Type,mlir::Value,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v19[38] = *MEMORY[0x277D85DE8];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::serialization::ExtractOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::serialization::ExtractOp,mlir::Type,mlir::Value,mlir::ValueRange>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::serialization::ExtractOp::build(a1, v19, *a3, *a4, *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::serialization::ExtractOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

void mlir::PDLPatternModule::~PDLPatternModule(mlir::PDLPatternModule *this)
{
  if (*(this + 33))
  {
    v2 = *(this + 32);
    if (v2)
    {
      v3 = 0;
      do
      {
        v4 = *(*(this + 15) + v3);
        if (v4 != -8 && v4 != 0)
        {
          v6 = *v4;
          v7 = *(v4 + 4);
          if (v7 == (v4 + 8))
          {
            (*(*v7 + 32))(v7);
          }

          else if (v7)
          {
            (*(*v7 + 40))(v7);
          }

          llvm::deallocate_buffer(v4, (v6 + 41));
        }

        v3 += 8;
      }

      while (8 * v2 != v3);
    }
  }

  free(*(this + 15));
  if (*(this + 27))
  {
    v8 = *(this + 26);
    if (v8)
    {
      v9 = 0;
      do
      {
        v10 = *(*(this + 12) + v9);
        if (v10 != -8 && v10 != 0)
        {
          v12 = *v10;
          v13 = *(v10 + 4);
          if (v13 == (v10 + 8))
          {
            (*(*v13 + 32))(v13);
          }

          else if (v13)
          {
            (*(*v13 + 40))(v13);
          }

          llvm::deallocate_buffer(v10, (v12 + 41));
        }

        v9 += 8;
      }

      while (8 * v8 != v9);
    }
  }

  free(*(this + 12));
  llvm::deallocate_buffer(*(this + 9), (16 * *(this + 22)));
}

void mlir::mps::MPSDeserializationPass::~MPSDeserializationPass(mlir::mps::MPSDeserializationPass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x259C63180);
}

const char *mlir::PassWrapper<mlir::mps::MPSDeserializationPass,mlir::OperationPass<mlir::mps::serialization::ModuleOp>>::getName()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::MPSDeserializationPass]";
  v6 = 83;
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

void *mlir::mps::MPSDeserializationPass::getDependentDialects(mlir::mps::MPSDeserializationPass *this, mlir::DialectRegistry *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v12[0] = &unk_28685A7A0;
  v13 = v12;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::func::FuncDialect,void>::id, "func", 4uLL, v12);
  if (v13 == v12)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))();
  }

  v12[0] = &unk_28685A830;
  v13 = v12;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mps::MPSDialect,void>::id, "mps", 3uLL, v12);
  if (v13 == v12)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))();
  }

  v12[0] = &unk_28685A8B0;
  v13 = v12;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::scf::SCFDialect,void>::id, "scf", 3uLL, v12);
  if (v13 == v12)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))();
  }

  v12[0] = &unk_28685A930;
  v13 = v12;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::tensor::TensorDialect,void>::id, "tensor", 6uLL, v12);
  result = v13;
  if (v13 == v12)
  {
    result = (*(*v13 + 32))(v13);
    v5 = *(this + 44);
    if (!v5)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v13)
  {
    result = (*(*v13 + 40))();
  }

  v5 = *(this + 44);
  if (v5)
  {
LABEL_19:
    v6 = *(this + 43);
    v7 = &v6[3 * v5];
    v8 = v6;
    do
    {
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      v12[0] = &unk_28685A9B0;
      v12[1] = v6;
      v13 = v12;
      mlir::DialectRegistry::insert(a2, v9, v10, v11, v12);
      result = v13;
      if (v13 == v12)
      {
        result = (*(*v13 + 32))(v13);
      }

      else if (v13)
      {
        result = (*(*v13 + 40))();
      }

      v8 += 3;
      v6 += 3;
    }

    while (v8 != v7);
  }

  return result;
}

void mlir::mps::MPSDeserializationPass::runOnOperation(mlir::mps::MPSDeserializationPass *this)
{
  v33 = *MEMORY[0x277D85DE8];
  v9[0] = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  memset(&v9[1], 0, 24);
  v2 = *(this + 5);
  v19[0] = v9;
  v10[0] = v19;
  mlir::detail::walk<mlir::ForwardIterator>((v2 & 0xFFFFFFFFFFFFFFF8), _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_3mps22MPSDeserializationPass14runOnOperationEvEUlNSB_13serialization6FuncOpEE_SE_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_, v10, 1);
  Context = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  v19[1] = 0;
  v19[2] = 0;
  v19[0] = &unk_28685B800;
  v20 = 0;
  v25 = 0;
  v26 = 0;
  v21 = v23;
  v22 = 0;
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  v27 = 0x1000000000;
  v28 = 0;
  v29 = 0;
  v30 = 0x2800000000;
  v31 = 0;
  v32 = Context;
  v10[0] = &v10[2];
  v10[2] = "mps";
  v10[3] = 3;
  v10[1] = 0x200000001;
  mlir::ConversionTarget::setDialectAction(v19, &v10[2], 1, 0);
  if (v10[0] != &v10[2])
  {
    free(v10[0]);
  }

  v10[0] = &v10[2];
  v10[2] = "scf";
  v10[3] = 3;
  v10[1] = 0x200000001;
  mlir::ConversionTarget::setDialectAction(v19, &v10[2], 1, 0);
  if (v10[0] != &v10[2])
  {
    free(v10[0]);
  }

  v10[0] = &v10[2];
  v10[2] = "tensor";
  v10[3] = 6;
  v10[1] = 0x200000001;
  mlir::ConversionTarget::setDialectAction(v19, &v10[2], 1, 0);
  if (v10[0] != &v10[2])
  {
    free(v10[0]);
  }

  v10[0] = &v10[2];
  v10[2] = "func";
  v10[3] = 4;
  v10[1] = 0x200000001;
  mlir::ConversionTarget::setDialectAction(v19, &v10[2], 1, 0);
  if (v10[0] != &v10[2])
  {
    free(v10[0]);
  }

  v4 = *(this + 44);
  if (v4)
  {
    v5 = (*(this + 43) + 8);
    v6 = 24 * v4;
    do
    {
      v7 = *v5;
      v10[0] = &v10[2];
      *&v10[2] = v7;
      v10[1] = 0x200000001;
      mlir::ConversionTarget::setDialectAction(v19, &v10[2], 1, 0);
      if (v10[0] != &v10[2])
      {
        free(v10[0]);
      }

      v5 = (v5 + 24);
      v6 -= 24;
    }

    while (v6);
  }

  mlir::OperationName::OperationName(v10, "mps.for", 7, v32);
  mlir::ConversionTarget::setOpAction(v19, v10[0], 2);
  mlir::OperationName::OperationName(v10, "mps.while", 9, v32);
  mlir::ConversionTarget::setOpAction(v19, v10[0], 2);
  mlir::OperationName::OperationName(v10, "mps.if", 6, v32);
  mlir::ConversionTarget::setOpAction(v19, v10[0], 2);
  mlir::ConversionTarget::addIllegalOp<mlir::mps::serialization::ConditionOp,mlir::mps::serialization::YieldOp,mlir::mps::serialization::ExtractOp,mlir::mps::serialization::FromElementsOp>(v19);
  v10[0] = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  memset(&v10[1], 0, 32);
  v10[5] = v11;
  v10[6] = 0x600000000;
  v11[6] = 0;
  v11[7] = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0x2800000000;
  v16 = 0;
  v8 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v17 = 0;
  v18 = 0x2800000000;
  mlir::Attribute::getContext((v8 + 24));
  operator new();
}

mlir::StringAttr ****_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_3mps22MPSDeserializationPass14runOnOperationEvEUlNSB_13serialization6FuncOpEE_SE_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_(mlir::StringAttr ****result, uint64_t a2)
{
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::serialization::FuncOp,void>::id)
    {
      mlir::mps::MPSDeserializationPass::runOnOperation(void)::{lambda(mlir::mps::serialization::FuncOp)#1}::operator()(*result, a2);
    }
  }

  return result;
}

void mlir::mps::MPSDeserializationPass::runOnOperation(void)::{lambda(mlir::mps::serialization::FuncOp)#1}::operator()(mlir::StringAttr ***a1, uint64_t a2)
{
  v18 = a2;
  v4 = *a1;
  v5 = *a1 + 2;
  v6 = *(a2 + 16);
  NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(a2);
  *v5 = v6;
  v4[3] = NodePtr;
  v8 = *a1;
  v9 = *(a2 + 24);
  if (!*(a2 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(a2, "sym_name", 8), (v11 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(a2 + 56, "sym_name", 8uLL);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v12 = InherentAttr;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = v12;
  v17[0] = mlir::StringAttr::getValue(&v16);
  v17[1] = v13;
  v14[1] = 0;
  FunctionType = mlir::mps::serialization::FuncOp::getFunctionType(&v18);
  v14[0] = 0;
  mlir::OpBuilder::create<mlir::func::FuncOp,llvm::StringRef,mlir::FunctionType,llvm::ArrayRef<mlir::NamedAttribute>>(v8, v9, v17, &FunctionType, v14);
}

void mlir::OpBuilder::create<mlir::func::FuncOp,llvm::StringRef,mlir::FunctionType,llvm::ArrayRef<mlir::NamedAttribute>>(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v16[38] = *MEMORY[0x277D85DE8];
  v13 = a2;
  Context = mlir::Attribute::getContext(&v13);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id, Context);
  if (v12)
  {
    mlir::OperationState::OperationState(v16, a2, v11);
    mlir::func::FuncOp::build(a1, v16, *a3, *(a3 + 8), *a4, *a5, *(a5 + 8));
  }

  mlir::OpBuilder::create<mlir::func::FuncOp,llvm::StringRef,mlir::FunctionType,llvm::ArrayRef<mlir::NamedAttribute>>(v16, v15, v14);
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZNS1_3mps22MPSDeserializationPass14runOnOperationEvENKUlNSB_13serialization6FuncOpEE_clESE_EUlNSD_8ReturnOpEE_SG_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_(mlir::OpBuilder ***a1, mlir::Operation *a2)
{
  if (a2)
  {
    if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::serialization::ReturnOp,void>::id)
    {
      mlir::mps::MPSDeserializationPass::runOnOperation(void)::{lambda(mlir::mps::serialization::FuncOp)#1}::operator() const(mlir::mps::serialization::FuncOp)::{lambda(mlir::mps::serialization::ReturnOp)#1}::operator()(*a1, a2);
    }
  }
}

uint64_t mlir::OpBuilder::create<mlir::func::ReturnOp,llvm::SmallVector<mlir::Value,6u>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x277D85DE8];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::func::ReturnOp,llvm::SmallVector<mlir::Value,6u>>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::func::ReturnOp::build(a1, v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v10;
}

_DWORD *mlir::ConversionTarget::addIllegalOp<mlir::mps::serialization::ConditionOp,mlir::mps::serialization::YieldOp,mlir::mps::serialization::ExtractOp,mlir::mps::serialization::FromElementsOp>(uint64_t a1)
{
  mlir::OperationName::OperationName(&v3, "mps.condition", 13, *(a1 + 152));
  mlir::ConversionTarget::setOpAction(a1, v3, 2);
  mlir::OperationName::OperationName(&v3, "mps.yield", 9, *(a1 + 152));
  mlir::ConversionTarget::setOpAction(a1, v3, 2);
  mlir::OperationName::OperationName(&v3, "mps.extract", 11, *(a1 + 152));
  mlir::ConversionTarget::setOpAction(a1, v3, 2);
  mlir::OperationName::OperationName(&v3, "mps.from_elements", 17, *(a1 + 152));
  return mlir::ConversionTarget::setOpAction(a1, v3, 2);
}

void *mlir::mps::anonymous namespace::ConvertForOp<mlir::mps::serialization::ForOp,mlir::scf::ForOp>::~ConvertForOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertForOp<mlir::mps::serialization::ForOp,mlir::scf::ForOp>::~ConvertForOp(void *a1)
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

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::ForOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::ForOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

void mlir::mps::anonymous namespace::ConvertForOp<mlir::mps::serialization::ForOp,mlir::scf::ForOp>::matchAndRewrite(int a1, uint64_t a2, mlir::mps::serialization::detail::ForOpGenericAdaptorBase *this, double a4, int32x4_t a5, uint64_t a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 24);
  ODSOperandIndexAndLength = mlir::mps::serialization::detail::ForOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 12), a4, a5);
  v10 = *(this + 5);
  v27 = v10;
  v28 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(&v27, ODSOperandIndexAndLength);
  }

  v27 = v10;
  v28 = 0;
  v26 = mlir::ValueRange::dereference_iterator(&v27, 0);
  v13 = mlir::mps::serialization::detail::ForOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 12), v11, v12);
  v14 = *(this + 5);
  v27 = v14;
  v28 = v13;
  if (v13)
  {
    v14 = mlir::ValueRange::offset_base(&v27, v13);
  }

  v27 = v14;
  v28 = 0;
  v25 = mlir::ValueRange::dereference_iterator(&v27, 0);
  v17 = mlir::mps::serialization::detail::ForOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 2u, *(this + 12), v15, v16);
  v18 = *(this + 5);
  v27 = v18;
  v28 = v17;
  if (v17)
  {
    v18 = mlir::ValueRange::offset_base(&v27, v17);
  }

  v27 = v18;
  v28 = 0;
  v24 = mlir::ValueRange::dereference_iterator(&v27, 0);
  v21 = mlir::mps::serialization::detail::ForOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 3u, *(this + 12), v19, v20);
  v22 = *(this + 5);
  v27 = v22;
  v28 = v21;
  if (v21)
  {
    v22 = mlir::ValueRange::offset_base(&v27, v21);
    v23 = v28;
  }

  else
  {
    v23 = 0;
  }

  v27 = v22;
  v28 = (HIDWORD(v21) + v21) - v23;
  mlir::OpBuilder::create<mlir::scf::ForOp,mlir::Value,mlir::Value,mlir::Value,mlir::ValueRange>(a6 + 8, v8, &v26, &v25, &v24, &v27);
}

void mlir::OpBuilder::create<mlir::scf::ForOp,mlir::Value,mlir::Value,mlir::Value,mlir::ValueRange>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v18[38] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id, Context);
  if (v14)
  {
    mlir::OperationState::OperationState(v18, a2, v13);
    mlir::scf::ForOp::build(a1, v18, *a3, *a4, *a5, *a6, *(a6 + 8));
  }

  mlir::OpBuilder::create<mlir::scf::ForOp,mlir::Value,mlir::Value,mlir::Value,mlir::ValueRange>(v18, v17, v16);
}

void *mlir::mps::anonymous namespace::ConvertWhileOp<mlir::mps::serialization::WhileOp,mlir::scf::WhileOp>::~ConvertWhileOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertWhileOp<mlir::mps::serialization::WhileOp,mlir::scf::WhileOp>::~ConvertWhileOp(void *a1)
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

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::WhileOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::WhileOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

void mlir::mps::anonymous namespace::ConvertWhileOp<mlir::mps::serialization::WhileOp,mlir::scf::WhileOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 24);
  v7 = *(a2 + 36);
  if (v7)
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v13 = v15;
  v14 = 0x600000000;
  if (v7 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v15[i] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, i) + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    v10 = v14;
    v11 = v13;
  }

  else
  {
    v10 = 0;
    v11 = v15;
  }

  LODWORD(v14) = v10 + v7;
  mlir::TypeRange::TypeRange(v16, v11, (v10 + v7));
  v12 = *(a3 + 40);
  mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::TypeRange,mlir::ValueRange>(a4 + 8, v6, v16, &v12);
}

void mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::TypeRange,mlir::ValueRange>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v14[38] = *MEMORY[0x277D85DE8];
  v11 = a2;
  Context = mlir::Attribute::getContext(&v11);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id, Context);
  if (v10)
  {
    mlir::OperationState::OperationState(v14, a2, v9);
    mlir::scf::WhileOp::build(a1, v14, *a3, a3[1], *a4, *(a4 + 8), 0, 0);
  }

  mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::TypeRange,mlir::ValueRange>(v14, v13, v12);
}

void *mlir::mps::anonymous namespace::ConvertIfOp<mlir::mps::serialization::IfOp,mlir::scf::IfOp>::~ConvertIfOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertIfOp<mlir::mps::serialization::IfOp,mlir::scf::IfOp>::~ConvertIfOp(void *a1)
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

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::IfOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::IfOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

void mlir::mps::anonymous namespace::ConvertIfOp<mlir::mps::serialization::IfOp,mlir::scf::IfOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 24);
  v7 = *(a2 + 36);
  if (v7)
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v13 = v15;
  v14 = 0x600000000;
  if (v7 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v15[i] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, i) + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    v10 = v14;
    v11 = v13;
  }

  else
  {
    v10 = 0;
    v11 = v15;
  }

  LODWORD(v14) = v10 + v7;
  mlir::TypeRange::TypeRange(v16, v11, (v10 + v7));
  v17[0] = *(a3 + 40);
  v17[1] = 0;
  v12 = mlir::ValueRange::dereference_iterator(v17, 0);
  mlir::OpBuilder::create<mlir::scf::IfOp,mlir::TypeRange,mlir::Value>(a4 + 8, v6, v16, &v12);
}

void mlir::OpBuilder::create<mlir::scf::IfOp,mlir::TypeRange,mlir::Value>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v14[38] = *MEMORY[0x277D85DE8];
  v11 = a2;
  Context = mlir::Attribute::getContext(&v11);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id, Context);
  if (v10)
  {
    mlir::OperationState::OperationState(v14, a2, v9);
    mlir::scf::IfOp::build(a1, v14, *a3, a3[1], *a4);
  }

  mlir::OpBuilder::create<mlir::scf::IfOp,mlir::TypeRange,mlir::Value>(v14, v13, v12);
}

void *mlir::mps::anonymous namespace::ConvertConditionOp<mlir::mps::serialization::ConditionOp,mlir::scf::ConditionOp>::~ConvertConditionOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertConditionOp<mlir::mps::serialization::ConditionOp,mlir::scf::ConditionOp>::~ConvertConditionOp(void *a1)
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

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::ConditionOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::ConditionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::mps::anonymous namespace::ConvertConditionOp<mlir::mps::serialization::ConditionOp,mlir::scf::ConditionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 36);
  if (v7)
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v24 = v26;
  v25 = 0x600000000;
  if (v7 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v26[i] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, i) + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    v10 = v25;
    v11 = v24;
  }

  else
  {
    v10 = 0;
    v11 = v26;
  }

  LODWORD(v25) = v10 + v7;
  mlir::TypeRange::TypeRange(v27, v11, (v10 + v7));
  ODSOperandIndexAndLength = mlir::mps::serialization::detail::ConditionOpGenericAdaptorBase::getODSOperandIndexAndLength(a3, 0, *(a3 + 48), v12, v13);
  v15 = *(a3 + 40);
  v28 = v15;
  v29 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v15 = mlir::ValueRange::offset_base(&v28, ODSOperandIndexAndLength);
  }

  v28 = v15;
  v29 = 0;
  v23 = mlir::ValueRange::dereference_iterator(&v28, 0);
  v18 = mlir::mps::serialization::detail::ConditionOpGenericAdaptorBase::getODSOperandIndexAndLength(a3, 1u, *(a3 + 48), v16, v17);
  v19 = *(a3 + 40);
  v28 = v19;
  v29 = v18;
  if (v18)
  {
    v19 = mlir::ValueRange::offset_base(&v28, v18);
    v20 = v29;
  }

  else
  {
    v20 = 0;
  }

  v28 = v19;
  v29 = (HIDWORD(v18) + v18) - v20;
  v21 = mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::TypeRange,mlir::Value,mlir::ValueRange>((a4 + 8), *(a2 + 24), v27, &v23, &v28);
  (*(*a4 + 8))(a4, a2, v21);
  if (v24 != v26)
  {
    free(v24);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::TypeRange,mlir::Value,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v19[38] = *MEMORY[0x277D85DE8];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::TypeRange,mlir::Value,mlir::ValueRange>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::scf::ConditionOp::build(a1, v19, *a3, a3[1], *a4, *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

void *mlir::mps::anonymous namespace::ConvertYieldOp<mlir::mps::serialization::YieldOp,mlir::scf::YieldOp>::~ConvertYieldOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertYieldOp<mlir::mps::serialization::YieldOp,mlir::scf::YieldOp>::~ConvertYieldOp(void *a1)
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

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::YieldOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::YieldOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::mps::anonymous namespace::ConvertYieldOp<mlir::mps::serialization::YieldOp,mlir::scf::YieldOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 36);
  if (v7)
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  if (v7 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v15[i] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, i) + 8) & 0xFFFFFFFFFFFFFFF8;
    }
  }

  mlir::TypeRange::TypeRange(v16, v15, v7);
  ODSOperandIndexAndLength = mlir::mps::serialization::detail::YieldOpGenericAdaptorBase::getODSOperandIndexAndLength(a3, 0, *(a3 + 48));
  v11 = *(a3 + 40);
  v17 = v11;
  v18 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v11 = mlir::ValueRange::offset_base(&v17, ODSOperandIndexAndLength);
    v12 = v18;
  }

  else
  {
    v12 = 0;
  }

  v17 = v11;
  v18 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength) - v12;
  v13 = mlir::OpBuilder::create<mlir::scf::YieldOp,mlir::TypeRange,mlir::ValueRange>((a4 + 8), *(a2 + 24), v16, &v17);
  (*(*a4 + 8))(a4, a2, v13);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::scf::YieldOp,mlir::TypeRange,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::YieldOp,mlir::TypeRange,mlir::ValueRange>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::scf::YieldOp::build(a1, v17, *a3, a3[1], *a4, *(a4 + 8), 0, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

void *mlir::mps::anonymous namespace::ConvertFromElementsOp<mlir::mps::serialization::FromElementsOp,mlir::tensor::FromElementsOp>::~ConvertFromElementsOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertFromElementsOp<mlir::mps::serialization::FromElementsOp,mlir::tensor::FromElementsOp>::~ConvertFromElementsOp(void *a1)
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

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::FromElementsOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::FromElementsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::mps::anonymous namespace::ConvertFromElementsOp<mlir::mps::serialization::FromElementsOp,mlir::tensor::FromElementsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v10 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(a3 + 40);
  v8 = mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::RankedTensorType,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v10, &v11);
  (*(*a4 + 8))(a4, a2, v8);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::RankedTensorType,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::RankedTensorType,mlir::ValueRange>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::tensor::FromElementsOp::build(a1, v17, *a3, *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

void *mlir::mps::anonymous namespace::ConvertExtractOp<mlir::mps::serialization::ExtractOp,mlir::tensor::ExtractOp>::~ConvertExtractOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertExtractOp<mlir::mps::serialization::ExtractOp,mlir::tensor::ExtractOp>::~ConvertExtractOp(void *a1)
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

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::ExtractOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::ExtractOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::mps::anonymous namespace::ConvertExtractOp<mlir::mps::serialization::ExtractOp,mlir::tensor::ExtractOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v20 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  ODSOperandIndexAndLength = mlir::mps::serialization::detail::ExtractOpGenericAdaptorBase::getODSOperandIndexAndLength(a3, 0, *(a3 + 48), v8, v9);
  v11 = *(a3 + 40);
  v21 = v11;
  v22 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v11 = mlir::ValueRange::offset_base(&v21, ODSOperandIndexAndLength);
  }

  v21 = v11;
  v22 = 0;
  v19 = mlir::ValueRange::dereference_iterator(&v21, 0);
  v14 = mlir::mps::serialization::detail::ExtractOpGenericAdaptorBase::getODSOperandIndexAndLength(a3, 1u, *(a3 + 48), v12, v13);
  v15 = *(a3 + 40);
  v21 = v15;
  v22 = v14;
  if (v14)
  {
    v15 = mlir::ValueRange::offset_base(&v21, v14);
    v16 = v22;
  }

  else
  {
    v16 = 0;
  }

  v21 = v15;
  v22 = (HIDWORD(v14) + v14) - v16;
  v17 = mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Type,mlir::Value,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v20, &v19, &v21);
  (*(*a4 + 8))(a4, a2, v17);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Type,mlir::Value,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v19[38] = *MEMORY[0x277D85DE8];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Type,mlir::Value,mlir::ValueRange>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::tensor::ExtractOp::build(a1, v19, *a3, *a4, *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

void OUTLINED_FUNCTION_0(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a3 = a4;
  *(a3 + 32) = 259;
  llvm::operator+(a2, a3, a1);

  llvm::report_fatal_error(v4, 1);
}

BOOL mlir::OperationPass<mlir::ModuleOp>::canScheduleOn(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 8);
  Value = mlir::StringAttr::getValue(&v6);
  if ((*(a1 + 32) & 1) == 0 || v4 != *(a1 + 24))
  {
    return 0;
  }

  if (v4)
  {
    return memcmp(Value, *(a1 + 16), v4) == 0;
  }

  return 1;
}

uint64_t mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, _BYTE **a6)
{
  v16 = *MEMORY[0x277D85DE8];
  v10[0] = a3;
  v10[1] = a4;
  v13 = a2;
  v14 = 0;
  v8 = llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1, v10, &v13, a5, a6);
  *(v8 + 200) = 0;
  *v8 = &unk_28685B3E0;
  *(v8 + 192) = &unk_28685B460;
  v13 = (v8 + 192);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a2 + 160, &v13);
  v11[0] = &unk_28685B508;
  v11[1] = a1;
  v15 = &v13;
  v12 = v11;
  v13 = &unk_28685B508;
  v14 = a1;
  std::__function::__value_func<void ()(BOOL const&)>::swap[abi:nn200100](&v13, a1 + 160);
  if (v15 == &v13)
  {
    (*(*v15 + 4))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 5))();
  }

  if (v12 == v11)
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))();
  }

  return a1;
}

void *mlir::Pass::Option<BOOL,llvm::cl::parser<BOOL>>::~Option(void *a1)
{
  *a1 = &unk_28689F938;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_28689F010;
  v4 = a1[12];
  if (v4 != a1[11])
  {
    free(v4);
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void mlir::Pass::Option<BOOL,llvm::cl::parser<BOOL>>::~Option(void *a1)
{
  *a1 = &unk_28689F938;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_28689F010;
  v4 = a1[12];
  if (v4 != a1[11])
  {
    free(v4);
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
  }

  if (v6 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 61);
  }

  else
  {
    *(v7 + 4) = v6 + 1;
    *v6 = 61;
  }

  v9 = *(a1 + 128) == 0;
  if (*(a1 + 128))
  {
    v10 = 4;
  }

  else
  {
    v10 = 5;
  }

  if (v9)
  {
    v11 = "false";
  }

  else
  {
    v11 = "true";
  }

  v12 = *(this + 4);
  if (v10 <= *(this + 3) - v12)
  {
    result = memcpy(v12, v11, v10);
    *(this + 4) += v10;
  }

  else
  {

    return llvm::raw_ostream::write(this, v11, v10);
  }

  return result;
}

uint64_t mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result + 128) = *(a2 - 64);
  *(result + 200) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::Option<BOOL,llvm::cl::parser<BOOL>>::~Option(uint64_t a1)
{
  *(a1 - 192) = &unk_28689F938;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(a1 - 192) = &unk_28689F010;
  v4 = *(a1 - 96);
  if (v4 != *(a1 - 104))
  {
    free(v4);
  }

  v5 = *(a1 - 128);
  if (v5 != (a1 - 112))
  {

    free(v5);
  }
}

{
  *(a1 - 192) = &unk_28689F938;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(a1 - 192) = &unk_28689F010;
  v4 = *(a1 - 96);
  if (v4 != *(a1 - 104))
  {
    free(v4);
  }

  v5 = *(a1 - 128);
  if (v5 != (a1 - 112))
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

uint64_t non-virtual thunk tomlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result - 64) = *(a2 - 64);
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<BOOL>>(uint64_t a1, uint64_t *a2, const void **a3, _OWORD *a4, _BYTE **a5)
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
  *(a1 + 136) = &unk_28685B4A0;
  *(a1 + 144) = 0;
  *a1 = &unk_28689F938;
  *(a1 + 152) = &unk_28689F1F8;
  *(a1 + 160) = &unk_28685B4C0;
  *(a1 + 184) = a1 + 160;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1]);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a3, a1);
  *(a1 + 32) = *a4;
  v12 = *a5;
  *(a1 + 128) = **a5;
  *(a1 + 145) = 1;
  *(a1 + 144) = *v12;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    *(8 * v8) = *a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void *mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::~Option(void *a1)
{
  *a1 = &unk_28689F938;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_28689F010;
  v4 = a1[12];
  if (v4 != a1[11])
  {
    free(v4);
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::~Option(void *a1)
{
  *a1 = &unk_28689F938;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_28689F010;
  v4 = a1[12];
  if (v4 != a1[11])
  {
    free(v4);
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::~Option(uint64_t a1)
{
  *(a1 - 192) = &unk_28689F938;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(a1 - 192) = &unk_28689F010;
  v4 = *(a1 - 96);
  if (v4 != *(a1 - 104))
  {
    free(v4);
  }

  v5 = *(a1 - 128);
  if (v5 != (a1 - 112))
  {

    free(v5);
  }
}

{
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::~Option((a1 - 192));
}

const void **llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(const void **result, uint64_t a2)
{
  v3 = *result;
  if (!*result)
  {
    v5 = result[1];
    if (!v5)
    {
      return result;
    }

    v6 = *(v5 + 2);
    if (!v6)
    {
      return result;
    }

    v7 = *v5;
    v8 = &(*v5)[v6];
    while (1)
    {
      v9 = *v7;
      v10 = *(a2 + 88);
      if (*(a2 + 96) != v10)
      {
        goto LABEL_9;
      }

      v11 = *(a2 + 108);
      if (v11)
      {
        v12 = 8 * v11;
        v13 = *(a2 + 88);
        while (*v13 != v9)
        {
          ++v13;
          v12 -= 8;
          if (!v12)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_10;
      }

LABEL_16:
      if (v11 < *(a2 + 104))
      {
        *(a2 + 108) = v11 + 1;
        *(v10 + 8 * v11) = v9;
      }

      else
      {
LABEL_9:
        result = llvm::SmallPtrSetImplBase::insert_imp_big((a2 + 88), v9);
      }

LABEL_10:
      if (++v7 == v8)
      {
        return result;
      }
    }
  }

  v4 = *(a2 + 88);
  result = (a2 + 88);
  if (*(a2 + 96) != v4)
  {
LABEL_3:

    return llvm::SmallPtrSetImplBase::insert_imp_big(result, v3);
  }

  v14 = *(a2 + 108);
  if (!v14)
  {
LABEL_22:
    if (v14 < *(a2 + 104))
    {
      *(a2 + 108) = v14 + 1;
      *(v4 + 8 * v14) = v3;
      return result;
    }

    goto LABEL_3;
  }

  v15 = 8 * v14;
  v16 = *(a2 + 88);
  while (*v16 != v3)
  {
    ++v16;
    v15 -= 8;
    if (!v15)
    {
      goto LABEL_22;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(BOOL const&)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v7[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v7[0] + 24))(v7, v5);
        result = (*(v7[0] + 32))(v7);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS7_4descENS7_11initializerIbEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKbEE7__cloneEPNS0_6__baseISS_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28685B508;
  a2[1] = v2;
  return result;
}

uint64_t mlir::detail::walk<mlir::ForwardIterator>(mlir::ForwardIterator *a1, mlir::Operation *a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    result = (a2)(a3, a1);
    if (!result)
    {
      return result;
    }

    if (result == 2)
    {
      return 1;
    }
  }

  Iterable = mlir::ForwardIterator::makeIterable(a1, a2);
  if (v8)
  {
    v9 = Iterable;
    v10 = Iterable + 24 * v8;
    do
    {
      for (i = *(v9 + 8); i != v9; i = *(i + 8))
      {
        v12 = i - 8;
        if (!i)
        {
          v12 = 0;
        }

        v13 = *(v12 + 40);
        v14 = v12 + 32;
        while (v13 != v14)
        {
          v15 = *(v13 + 8);
          ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v13);
          v17 = mlir::detail::walk<mlir::ForwardIterator>(ValuePtr, a2, a3, a4);
          v13 = v15;
          if (!v17)
          {
            return 0;
          }
        }
      }

      v9 += 24;
    }

    while (v9 != v10);
  }

  if (a4 != 1)
  {
    return 1;
  }

  return (a2)(a3, a1);
}

{
  if (!a4)
  {
    (a2)(a3, a1);
  }

  result = mlir::ForwardIterator::makeIterable(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = result + 24 * v8;
    do
    {
      for (i = *(v9 + 8); i != v9; i = *(i + 8))
      {
        v12 = i - 8;
        if (!i)
        {
          v12 = 0;
        }

        result = *(v12 + 40);
        v13 = v12 + 32;
        if (result != v12 + 32)
        {
          do
          {
            v14 = *(result + 8);
            ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(result);
            mlir::detail::walk<mlir::ForwardIterator>(ValuePtr, a2, a3, a4);
            result = v14;
          }

          while (v14 != v13);
        }
      }

      v9 += 24;
    }

    while (v9 != v10);
  }

  if (a4 == 1)
  {

    return (a2)(a3, a1);
  }

  return result;
}

{
  Iterable = mlir::ForwardIterator::makeIterable(a1, a2);
  if (!v8)
  {
    return 1;
  }

  v9 = Iterable;
  v10 = Iterable + 24 * v8;
  if (a4 == 1)
  {
    while (1)
    {
      v22 = *(v9 + 8);
      if (v22 != v9)
      {
        break;
      }

LABEL_24:
      v9 += 24;
      result = 1;
      if (v9 == v10)
      {
        return result;
      }
    }

    while (1)
    {
      v23 = *(v22 + 8);
      v24 = *(v22 + 32);
      if (v24 != v22 + 24)
      {
        break;
      }

LABEL_29:
      result = (a2)(a3, v22 - 8);
      if (!result)
      {
        return result;
      }

      v22 = v23;
      if (v23 == v9)
      {
        goto LABEL_24;
      }
    }

    while (1)
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v24);
      result = mlir::detail::walk<mlir::ForwardIterator>(ValuePtr, a2, a3, 1);
      if (!result)
      {
        break;
      }

      v24 = *(v24 + 8);
      if (v24 == v22 + 24)
      {
        goto LABEL_29;
      }
    }
  }

  else if (a4)
  {
    while (1)
    {
      v17 = *(v9 + 8);
      if (v17 != v9)
      {
        break;
      }

LABEL_16:
      v9 += 24;
      result = 1;
      if (v9 == v10)
      {
        return result;
      }
    }

    while (1)
    {
      v18 = *(v17 + 8);
      v19 = v17 + 24;
      v20 = *(v17 + 32);
      if (v20 != v17 + 24)
      {
        break;
      }

LABEL_19:
      v17 = v18;
      if (v18 == v9)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v21 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v20);
      result = mlir::detail::walk<mlir::ForwardIterator>(v21, a2, a3, a4);
      if (!result)
      {
        break;
      }

      v20 = *(v20 + 8);
      if (v20 == v19)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    while (1)
    {
      v11 = *(v9 + 8);
      if (v11 != v9)
      {
        break;
      }

LABEL_5:
      v9 += 24;
      result = 1;
      if (v9 == v10)
      {
        return result;
      }
    }

    while (1)
    {
      v13 = *(v11 + 8);
      result = (a2)(a3, v11 - 8);
      if (result != 2)
      {
        if (!result)
        {
          return result;
        }

        v14 = v11 + 24;
        v15 = *(v11 + 32);
        if (v15 != v14)
        {
          break;
        }
      }

LABEL_7:
      v11 = v13;
      if (v13 == v9)
      {
        goto LABEL_5;
      }
    }

    while (1)
    {
      v16 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v15);
      result = mlir::detail::walk<mlir::ForwardIterator>(v16, a2, a3, 0);
      if (!result)
      {
        break;
      }

      v15 = *(v15 + 8);
      if (v15 == v14)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

{
  result = mlir::ForwardIterator::makeIterable(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = result + 24 * v8;
    if (a4)
    {
      if (a4 == 1)
      {
        do
        {
          v11 = *(v9 + 8);
          if (v11 != v9)
          {
            do
            {
              v12 = *(v11 + 8);
              for (i = *(v11 + 32); i != v11 + 24; i = *(i + 8))
              {
                ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(i);
                mlir::detail::walk<mlir::ForwardIterator>(ValuePtr, a2, a3, 1);
              }

              result = (a2)(a3, v11 - 8);
              v11 = v12;
            }

            while (v12 != v9);
          }

          v9 += 24;
        }

        while (v9 != v10);
      }

      else
      {
        do
        {
          v20 = *(v9 + 8);
          if (v20 != v9)
          {
            do
            {
              v21 = *(v20 + 8);
              v22 = v20 + 24;
              v23 = *(v20 + 32);
              if (v23 != v20 + 24)
              {
                do
                {
                  v24 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v23);
                  result = mlir::detail::walk<mlir::ForwardIterator>(v24, a2, a3, a4);
                  v23 = *(v23 + 8);
                }

                while (v23 != v22);
              }

              v20 = v21;
            }

            while (v21 != v9);
          }

          v9 += 24;
        }

        while (v9 != v10);
      }
    }

    else
    {
      do
      {
        v15 = *(v9 + 8);
        if (v15 != v9)
        {
          do
          {
            v16 = *(v15 + 8);
            result = (a2)(a3, v15 - 8);
            v17 = v15 + 24;
            for (j = *(v15 + 32); j != v17; j = *(j + 8))
            {
              v19 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
              result = mlir::detail::walk<mlir::ForwardIterator>(v19, a2, a3, 0);
            }

            v15 = v16;
          }

          while (v16 != v9);
        }

        v9 += 24;
      }

      while (v9 != v10);
    }
  }

  return result;
}

void mlir::IRRewriter::~IRRewriter(mlir::IRRewriter *this)
{
  mlir::RewriterBase::~RewriterBase(this);

  JUMPOUT(0x259C63180);
}

void *std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[22];
    if (v3 != v2 + 24)
    {
      free(v3);
    }

    v4 = v2[19];
    if (v4)
    {
      v5 = v2[20];
      v6 = v2[19];
      if (v5 != v4)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 8);
        }

        while (v5 != v4);
        v6 = v2[19];
      }

      v2[20] = v4;
      operator delete(v6);
    }

    v7 = v2[16];
    if (v7)
    {
      v8 = v2[17];
      v9 = v2[16];
      if (v8 != v7)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x259C63150](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v2[16];
      }

      v2[17] = v7;
      operator delete(v9);
    }

    v12 = v2[2];
    if (v12 != v2 + 4)
    {
      free(v12);
    }

    MEMORY[0x259C63180](v2, 0x10A0C40DB3FE637);
  }

  return a1;
}

void *llvm::raw_ostream::operator<<(void *result, const void *a2, size_t a3)
{
  v4 = result[4];
  if (a3 <= result[3] - v4)
  {
    if (a3)
    {
      v5 = result;
      memcpy(v4, a2, a3);
      result = v5;
      v5[4] += a3;
    }
  }

  else
  {

    return llvm::raw_ostream::write(result, a2, a3);
  }

  return result;
}

float mlir::getIntValues<unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v92[5] = *MEMORY[0x277D85DE8];
  *&v87 = a1;
  *(&v87 + 1) = a2;
  if (!mlir::ElementsAttr::isSplat(&v87) || a4)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v87, *(&v87 + 1));
  }

  else
  {
    NumElements = 1;
  }

  v7 = *(a3 + 8);
  if (NumElements != v7)
  {
    if (NumElements >= v7)
    {
      if (NumElements > *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (NumElements != v7)
      {
        bzero((*a3 + 8 * v7), 8 * (NumElements - v7));
      }
    }

    *(a3 + 8) = NumElements;
  }

  v8 = *a3;
  v90 = v87;
  Type = mlir::ElementsAttr::getType(&v90);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v89[0] = v10;
  v89[1] = Type;
  ElementType = mlir::ShapedType::getElementType(v89);
  isSplat = mlir::ElementsAttr::isSplat(&v90);
  ElementsAttrRawData = mlir::getElementsAttrRawData(v90);
  v14 = v13;
  if (!isSplat || a4)
  {
    v16 = mlir::ElementsAttr::getNumElements(v90, *(&v90 + 1));
    if (mlir::Type::isUnsignedInteger(&ElementType, 8))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_20;
    }

    if (mlir::Type::isInteger(&ElementType, 8))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_31;
    }

    if (mlir::Type::isUnsignedInteger(&ElementType, 16))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      if (v16 >= 2)
      {
        v22 = 0;
        v21 = v16 & 0x7FFFFFFFFFFFFFFELL;
        v23 = v8 + 1;
        do
        {
          if (isSplat)
          {
            v24 = 0;
          }

          else
          {
            v24 = v22;
          }

          if (isSplat)
          {
            v25 = 0;
          }

          else
          {
            v25 = v22 + 1;
          }

          v26 = *&ElementsAttrRawData[2 * v25];
          *(v23 - 1) = *&ElementsAttrRawData[2 * v24];
          *v23 = v26;
          v23 += 2;
          v22 += 2;
        }

        while (v22 != v21);
        goto LABEL_198;
      }

      goto LABEL_40;
    }

    if (mlir::Type::isInteger(&ElementType, 16))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_57;
    }

    if (mlir::Type::isUnsignedInteger(&ElementType, 32))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_64;
    }

    if (mlir::Type::isInteger(&ElementType, 32))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_80;
    }

    if (mlir::Type::isUnsignedInteger(&ElementType, 64))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_96;
    }

    if (mlir::Type::isInteger(&ElementType, 64))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_116;
    }

    if (mlir::Type::isF16(&ElementType))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_127;
    }

    if (mlir::Type::isF32(&ElementType))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_134;
    }

    if (mlir::Type::isF64(&ElementType))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_150;
    }

    if (mlir::Type::isBF16(&ElementType))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_165;
    }

LABEL_167:
    if (mlir::Type::isInteger(&ElementType, 1))
    {
      if (isSplat)
      {
        v63 = 1;
      }

      else
      {
        v63 = v16;
      }

      llvm::SmallVector<char,40u>::SmallVector(v91, v63);
      mlir::detail::unpackBooleanData(ElementsAttrRawData, v14, v91[0], v91[1]);
      v64 = v91[0];
      if (v16 >= 1)
      {
        for (i = 0; i != v16; ++i)
        {
          if (isSplat)
          {
            v66 = 0;
          }

          else
          {
            v66 = i;
          }

          v8[i] = v64[v66];
        }
      }

      if (v64 != v92)
      {
        free(v64);
      }
    }

    else
    {
      mlir::Type::getIntOrFloatBitWidth(&ElementType);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&ElementType);
      mlir::detail::unpackQuantizedData<unsigned long long>(ElementsAttrRawData, v14, v8, v16, IntOrFloatBitWidth);
    }

    return *&v15;
  }

  if (mlir::Type::isUnsignedInteger(&ElementType, 8))
  {
    v16 = 1;
LABEL_20:
    for (j = 0; j != v16; ++j)
    {
      if (isSplat)
      {
        v18 = 0;
      }

      else
      {
        v18 = j;
      }

      v8[j] = ElementsAttrRawData[v18];
    }

    return *&v15;
  }

  if (mlir::Type::isInteger(&ElementType, 8))
  {
    v16 = 1;
LABEL_31:
    for (k = 0; k != v16; ++k)
    {
      if (isSplat)
      {
        v20 = 0;
      }

      else
      {
        v20 = k;
      }

      v8[k] = ElementsAttrRawData[v20];
    }

    return *&v15;
  }

  if (mlir::Type::isUnsignedInteger(&ElementType, 16))
  {
    v16 = 1;
LABEL_40:
    v21 = 0;
    do
    {
      if (isSplat)
      {
        v78 = 0;
      }

      else
      {
        v78 = v21;
      }

      v8[v21++] = *&ElementsAttrRawData[2 * v78];
LABEL_198:
      ;
    }

    while (v16 != v21);
    return *&v15;
  }

  if (mlir::Type::isInteger(&ElementType, 16))
  {
    v16 = 1;
LABEL_57:
    if (v16 >= 2)
    {
      v29 = 0;
      v27 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v30 = v8 + 1;
      do
      {
        if (isSplat)
        {
          v31 = 0;
        }

        else
        {
          v31 = v29;
        }

        if (isSplat)
        {
          v32 = 0;
        }

        else
        {
          v32 = v29 + 1;
        }

        v33 = *&ElementsAttrRawData[2 * v32];
        *(v30 - 1) = *&ElementsAttrRawData[2 * v31];
        *v30 = v33;
        v30 += 2;
        v29 += 2;
      }

      while (v29 != v27);
      goto LABEL_203;
    }

    v27 = 0;
    do
    {
      if (isSplat)
      {
        v79 = 0;
      }

      else
      {
        v79 = v27;
      }

      v8[v27++] = *&ElementsAttrRawData[2 * v79];
LABEL_203:
      ;
    }

    while (v16 != v27);
    return *&v15;
  }

  if (mlir::Type::isUnsignedInteger(&ElementType, 32))
  {
    v16 = 1;
LABEL_64:
    if (v16 >= 2)
    {
      v35 = 0;
      v28 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v36 = v8 + 1;
      do
      {
        if (isSplat)
        {
          v37 = 0;
        }

        else
        {
          v37 = v35;
        }

        if (isSplat)
        {
          v38 = 0;
        }

        else
        {
          v38 = v35 + 1;
        }

        v39 = *&ElementsAttrRawData[4 * v38];
        *(v36 - 1) = *&ElementsAttrRawData[4 * v37];
        *v36 = v39;
        v36 += 2;
        v35 += 2;
      }

      while (v35 != v28);
      goto LABEL_208;
    }

    v28 = 0;
    do
    {
      if (isSplat)
      {
        v80 = 0;
      }

      else
      {
        v80 = v28;
      }

      v8[v28++] = *&ElementsAttrRawData[4 * v80];
LABEL_208:
      ;
    }

    while (v16 != v28);
    return *&v15;
  }

  if (mlir::Type::isInteger(&ElementType, 32))
  {
    v16 = 1;
LABEL_80:
    if (v16 >= 2)
    {
      v42 = 0;
      v34 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v43 = v8 + 1;
      do
      {
        if (isSplat)
        {
          v44 = 0;
        }

        else
        {
          v44 = v42;
        }

        if (isSplat)
        {
          v45 = 0;
        }

        else
        {
          v45 = v42 + 1;
        }

        v46 = *&ElementsAttrRawData[4 * v45];
        *(v43 - 1) = *&ElementsAttrRawData[4 * v44];
        *v43 = v46;
        v43 += 2;
        v42 += 2;
      }

      while (v42 != v34);
      goto LABEL_213;
    }

    v34 = 0;
    do
    {
      if (isSplat)
      {
        v81 = 0;
      }

      else
      {
        v81 = v34;
      }

      v8[v34++] = *&ElementsAttrRawData[4 * v81];
LABEL_213:
      ;
    }

    while (v16 != v34);
    return *&v15;
  }

  if (mlir::Type::isUnsignedInteger(&ElementType, 64))
  {
    v16 = 1;
LABEL_96:
    for (m = 0; m != v16; ++m)
    {
      if (isSplat)
      {
        v41 = 0;
      }

      else
      {
        v41 = m;
      }

      v8[m] = *&ElementsAttrRawData[8 * v41];
    }

    return *&v15;
  }

  if (mlir::Type::isInteger(&ElementType, 64))
  {
    v16 = 1;
LABEL_116:
    for (n = 0; n != v16; ++n)
    {
      if (isSplat)
      {
        v48 = 0;
      }

      else
      {
        v48 = n;
      }

      v8[n] = *&ElementsAttrRawData[8 * v48];
    }

    return *&v15;
  }

  if (mlir::Type::isF16(&ElementType))
  {
    v16 = 1;
LABEL_127:
    if (v16 >= 2)
    {
      v51 = 0;
      v49 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v52 = v8 + 1;
      do
      {
        if (isSplat)
        {
          v53 = 0;
        }

        else
        {
          v53 = v51;
        }

        if (isSplat)
        {
          v54 = 0;
        }

        else
        {
          v54 = v51 + 1;
        }

        LOWORD(v15) = *&ElementsAttrRawData[2 * v53];
        v55 = *&ElementsAttrRawData[2 * v54];
        *(v52 - 1) = *&v15;
        *v52 = v55;
        v52 += 2;
        v51 += 2;
      }

      while (v51 != v49);
      goto LABEL_218;
    }

    v49 = 0;
    do
    {
      if (isSplat)
      {
        v82 = 0;
      }

      else
      {
        v82 = v49;
      }

      LOWORD(v15) = *&ElementsAttrRawData[2 * v82];
      v8[v49++] = *&v15;
LABEL_218:
      ;
    }

    while (v16 != v49);
    return *&v15;
  }

  if (mlir::Type::isF32(&ElementType))
  {
    v16 = 1;
LABEL_134:
    if (v16 >= 2)
    {
      v57 = 0;
      v50 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v58 = v8 + 1;
      do
      {
        if (isSplat)
        {
          v59 = 0;
        }

        else
        {
          v59 = v57;
        }

        if (isSplat)
        {
          v60 = 0;
        }

        else
        {
          v60 = v57 + 1;
        }

        LODWORD(v15) = *&ElementsAttrRawData[4 * v59];
        v61 = *&ElementsAttrRawData[4 * v60];
        *(v58 - 1) = *&v15;
        *v58 = v61;
        v58 += 2;
        v57 += 2;
      }

      while (v57 != v50);
      goto LABEL_223;
    }

    v50 = 0;
    do
    {
      if (isSplat)
      {
        v83 = 0;
      }

      else
      {
        v83 = v50;
      }

      LODWORD(v15) = *&ElementsAttrRawData[4 * v83];
      v8[v50++] = *&v15;
LABEL_223:
      ;
    }

    while (v16 != v50);
    return *&v15;
  }

  if (mlir::Type::isF64(&ElementType))
  {
    v16 = 1;
LABEL_150:
    if (v16 >= 2)
    {
      v67 = 0;
      v56 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v68 = v8 + 1;
      do
      {
        if (isSplat)
        {
          v69 = 0;
        }

        else
        {
          v69 = v67;
        }

        if (isSplat)
        {
          v70 = 0;
        }

        else
        {
          v70 = v67 + 1;
        }

        v15 = *&ElementsAttrRawData[8 * v69];
        v71 = *&ElementsAttrRawData[8 * v70];
        *(v68 - 1) = v15;
        *v68 = v71;
        v68 += 2;
        v67 += 2;
      }

      while (v67 != v56);
      goto LABEL_228;
    }

    v56 = 0;
    do
    {
      if (isSplat)
      {
        v84 = 0;
      }

      else
      {
        v84 = v56;
      }

      v15 = *&ElementsAttrRawData[8 * v84];
      v8[v56++] = v15;
LABEL_228:
      ;
    }

    while (v16 != v56);
    return *&v15;
  }

  v16 = 1;
  if (!mlir::Type::isBF16(&ElementType))
  {
    goto LABEL_167;
  }

LABEL_165:
  if (v16 >= 2)
  {
    v73 = 0;
    v62 = v16 & 0x7FFFFFFFFFFFFFFELL;
    v74 = v8 + 1;
    do
    {
      if (isSplat)
      {
        v75 = 0;
      }

      else
      {
        v75 = v73;
      }

      if (isSplat)
      {
        v76 = 0;
      }

      else
      {
        v76 = v73 + 1;
      }

      LODWORD(v15) = *&ElementsAttrRawData[2 * v75] << 16;
      v77 = COERCE_FLOAT(*&ElementsAttrRawData[2 * v76] << 16);
      *(v74 - 1) = *&v15;
      *v74 = v77;
      v74 += 2;
      v73 += 2;
    }

    while (v73 != v62);
    goto LABEL_233;
  }

  v62 = 0;
  do
  {
    if (isSplat)
    {
      v85 = 0;
    }

    else
    {
      v85 = v62;
    }

    LODWORD(v15) = *&ElementsAttrRawData[2 * v85] << 16;
    v8[v62++] = *&v15;
LABEL_233:
    ;
  }

  while (v16 != v62);
  return *&v15;
}

uint64_t mlir::matchConstantWithIntVector<unsigned long long>(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  if (!a1)
  {
    return 0;
  }

  v7 = &v8;
  v10 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (!DefiningOp)
  {
    return 0;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v7, DefiningOp))
  {
    return 0;
  }

  v6[0] = mlir::ElementsAttr::getShapedType(&v8);
  v6[1] = v4;
  if (*(*mlir::ShapedType::getElementType(v6) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 0;
  }

  mlir::getIntValues<unsigned long long>(v8, v9, a2, 1);
  return 1;
}

uint64_t mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(void **a1, uint64_t a2)
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
    v5 = (*v8[0] & 0xFFFFFFFFFFFFFFF8);
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8))
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    result = v5 != 0;
    if (v5)
    {
      v7 = *a1;
      if (*a1)
      {
        *v7 = v5;
        v7[1] = v6;
      }
    }

    if (v8[0] != v9)
    {
      free(v8[0]);
      return v5 != 0;
    }
  }

  return result;
}

const char *llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::ConstantLike<Empty>]";
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

uint64_t llvm::SmallVector<char,40u>::SmallVector(uint64_t result, size_t a2)
{
  *result = result + 24;
  *(result + 8) = xmmword_2573695B0;
  if (a2)
  {
    if (a2 >= 0x29)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v3 = result;
    bzero(*result, a2);
    result = v3;
    *(v3 + 8) = a2;
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackBooleanData(unsigned __int8 *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v4 = (a3 + 3);
    do
    {
      if (a4)
      {
        if (a4 >= 8)
        {
          v5 = 8;
        }

        else
        {
          v5 = a4;
        }

        if (v5 <= 1)
        {
          v6 = 1;
        }

        else
        {
          v6 = v5;
        }

        v7 = *result;
        v8 = vdupq_n_s64(v6 - 1);
        v9 = vmovn_s64(vcgeq_u64(v8, xmmword_2573686A0));
        if (vuzp1_s8(vuzp1_s16(v9, 0), 0).u8[0])
        {
          *(v4 - 3) = v7 & 1;
        }

        if (vuzp1_s8(vuzp1_s16(v9, 0), 0).i8[1])
        {
          *(v4 - 2) = (v7 & 2) != 0;
        }

        if (vuzp1_s8(vuzp1_s16(0, vmovn_s64(vcgeq_u64(v8, xmmword_2573695C0))), 0).i8[2])
        {
          *(v4 - 1) = (v7 & 4) != 0;
          *v4 = (v7 & 8) != 0;
        }

        v10 = vmovn_s64(vcgeq_u64(v8, xmmword_2573695D0));
        if (vuzp1_s8(0, vuzp1_s16(v10, 0)).i32[1])
        {
          v4[1] = (v7 & 0x10) != 0;
        }

        if (vuzp1_s8(0, vuzp1_s16(v10, 0)).i8[5])
        {
          v4[2] = (v7 & 0x20) != 0;
        }

        if (vuzp1_s8(0, vuzp1_s16(0, vmovn_s64(vcgeq_u64(v8, xmmword_2573695E0)))).i8[6])
        {
          v4[3] = (v7 & 0x40) != 0;
          v4[4] = v7 >> 7;
        }
      }

      a4 -= 8;
      ++result;
      v4 += 8;
      --a2;
    }

    while (a2);
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackQuantizedData<unsigned long long>(unsigned __int8 *result, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (a5 != 6 && a5 != 3)
  {
    if (!a2)
    {
      return result;
    }

    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    while (1)
    {
      if (a4 - v9 * v11 >= v11)
      {
        v12 = 8 / a5;
      }

      else
      {
        v12 = a4 - v9 * v11;
      }

      if (!v12)
      {
        goto LABEL_13;
      }

      v13 = *result;
      v14 = &a3[v9 * v11];
      v15 = vdupq_n_s64(v12 - 1);
      v16 = vmovn_s64(vcgeq_u64(v15, xmmword_2573686A0));
      if (v16.i8[0])
      {
        *v14 = v10 & v13;
      }

      if (v16.i8[4])
      {
        v14[1] = (v13 >> a5) & v10;
      }

      v17 = (v12 + 1) & 0x1E;
      if (v17 == 2)
      {
        goto LABEL_13;
      }

      v18 = vmovn_s64(vcgtq_u64(v15, xmmword_2573686B0));
      if (v18.i8[0])
      {
        v14[2] = (v13 >> (2 * a5)) & v10;
        if (v18.i8[4])
        {
LABEL_28:
          v14[3] = (v13 >> (3 * a5)) & v10;
          if (v17 == 4)
          {
            goto LABEL_13;
          }

          goto LABEL_29;
        }
      }

      else if (v18.i8[4])
      {
        goto LABEL_28;
      }

      if (v17 == 4)
      {
        goto LABEL_13;
      }

LABEL_29:
      v19 = vmovn_s64(vcgtq_u64(v15, xmmword_2573686C0));
      if (v19.i8[0])
      {
        v14[4] = (v13 >> (4 * a5)) & v10;
        if ((v19.i8[4] & 1) == 0)
        {
LABEL_31:
          if (v17 != 6)
          {
            goto LABEL_35;
          }

          goto LABEL_13;
        }
      }

      else if ((v19.i8[4] & 1) == 0)
      {
        goto LABEL_31;
      }

      v14[5] = (v13 >> (5 * a5)) & v10;
      if (v17 != 6)
      {
LABEL_35:
        v20 = vmovn_s64(vcgtq_u64(v15, xmmword_2573695F0));
        if (v20.i8[0])
        {
          v14[6] = (v13 >> (6 * a5)) & v10;
        }

        if (v20.i8[4])
        {
          v14[7] = (v13 >> (7 * a5)) & v10;
        }
      }

LABEL_13:
      ++v9;
      ++result;
      if (!--a2)
      {
        return result;
      }
    }
  }

  if (a4)
  {
    v5 = 0;
    v6 = 2;
    if (a5 == 3)
    {
      v6 = 5;
    }

    do
    {
      v7 = result[v5 >> 3] >> (v5 & 7);
      if ((v5 & 7) > v6)
      {
        v8 = (v5 >> 3) + 1;
        if (v8 < a2)
        {
          v7 |= result[v8] << (8 - (v5 & 7));
        }
      }

      *a3++ = v7 & ~(-1 << a5);
      v5 += a5;
      --a4;
    }

    while (a4);
  }

  return result;
}

float mlir::getIntValues<long long>(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = a1;
  v10 = a2;
  if (!mlir::ElementsAttr::isSplat(&v9) || a4)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v9, v10);
  }

  else
  {
    NumElements = 1;
  }

  v7 = *(a3 + 8);
  if (NumElements != v7)
  {
    if (NumElements >= v7)
    {
      if (NumElements > *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (NumElements != v7)
      {
        bzero((*a3 + 8 * v7), 8 * (NumElements - v7));
      }
    }

    *(a3 + 8) = NumElements;
  }

  return mlir::copyElementsAttrData<long long>(v9, v10, *a3, a4);
}

float mlir::copyElementsAttrData<long long>(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v89[5] = *MEMORY[0x277D85DE8];
  v86 = a1;
  v87 = a2;
  Type = mlir::ElementsAttr::getType(&v86);
  v7 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v85[0] = v7;
  v85[1] = Type;
  ElementType = mlir::ShapedType::getElementType(v85);
  isSplat = mlir::ElementsAttr::isSplat(&v86);
  ElementsAttrRawData = mlir::getElementsAttrRawData(v86);
  v11 = v10;
  if (!isSplat || a4)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v86, v87);
    if (mlir::Type::isUnsignedInteger(&ElementType, 8))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_9;
    }

    if (mlir::Type::isInteger(&ElementType, 8))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_20;
    }

    if (mlir::Type::isUnsignedInteger(&ElementType, 16))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      if (NumElements >= 2)
      {
        v19 = 0;
        v18 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v20 = a3 + 1;
        do
        {
          if (isSplat)
          {
            v21 = 0;
          }

          else
          {
            v21 = v19;
          }

          if (isSplat)
          {
            v22 = 0;
          }

          else
          {
            v22 = v19 + 1;
          }

          v23 = *&ElementsAttrRawData[2 * v22];
          *(v20 - 1) = *&ElementsAttrRawData[2 * v21];
          *v20 = v23;
          v20 += 2;
          v19 += 2;
        }

        while (v19 != v18);
        goto LABEL_187;
      }

      goto LABEL_29;
    }

    if (mlir::Type::isInteger(&ElementType, 16))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_46;
    }

    if (mlir::Type::isUnsignedInteger(&ElementType, 32))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_53;
    }

    if (mlir::Type::isInteger(&ElementType, 32))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_69;
    }

    if (mlir::Type::isUnsignedInteger(&ElementType, 64))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_85;
    }

    if (mlir::Type::isInteger(&ElementType, 64))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_105;
    }

    if (mlir::Type::isF16(&ElementType))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_116;
    }

    if (mlir::Type::isF32(&ElementType))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_123;
    }

    if (mlir::Type::isF64(&ElementType))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_139;
    }

    if (mlir::Type::isBF16(&ElementType))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_154;
    }

LABEL_156:
    if (mlir::Type::isInteger(&ElementType, 1))
    {
      if (isSplat)
      {
        v60 = 1;
      }

      else
      {
        v60 = NumElements;
      }

      llvm::SmallVector<char,40u>::SmallVector(v88, v60);
      mlir::detail::unpackBooleanData(ElementsAttrRawData, v11, v88[0], v88[1]);
      v61 = v88[0];
      if (NumElements >= 1)
      {
        for (i = 0; i != NumElements; ++i)
        {
          if (isSplat)
          {
            v63 = 0;
          }

          else
          {
            v63 = i;
          }

          a3[i] = v61[v63];
        }
      }

      if (v61 != v89)
      {
        free(v61);
      }
    }

    else
    {
      mlir::Type::getIntOrFloatBitWidth(&ElementType);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&ElementType);
      mlir::detail::unpackQuantizedData<unsigned long long>(ElementsAttrRawData, v11, a3, NumElements, IntOrFloatBitWidth);
    }

    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&ElementType, 8))
  {
    NumElements = 1;
LABEL_9:
    for (j = 0; j != NumElements; ++j)
    {
      if (isSplat)
      {
        v15 = 0;
      }

      else
      {
        v15 = j;
      }

      a3[j] = ElementsAttrRawData[v15];
    }

    return *&v12;
  }

  if (mlir::Type::isInteger(&ElementType, 8))
  {
    NumElements = 1;
LABEL_20:
    for (k = 0; k != NumElements; ++k)
    {
      if (isSplat)
      {
        v17 = 0;
      }

      else
      {
        v17 = k;
      }

      a3[k] = ElementsAttrRawData[v17];
    }

    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&ElementType, 16))
  {
    NumElements = 1;
LABEL_29:
    v18 = 0;
    do
    {
      if (isSplat)
      {
        v75 = 0;
      }

      else
      {
        v75 = v18;
      }

      a3[v18++] = *&ElementsAttrRawData[2 * v75];
LABEL_187:
      ;
    }

    while (NumElements != v18);
    return *&v12;
  }

  if (mlir::Type::isInteger(&ElementType, 16))
  {
    NumElements = 1;
LABEL_46:
    if (NumElements >= 2)
    {
      v26 = 0;
      v24 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v27 = a3 + 1;
      do
      {
        if (isSplat)
        {
          v28 = 0;
        }

        else
        {
          v28 = v26;
        }

        if (isSplat)
        {
          v29 = 0;
        }

        else
        {
          v29 = v26 + 1;
        }

        v30 = *&ElementsAttrRawData[2 * v29];
        *(v27 - 1) = *&ElementsAttrRawData[2 * v28];
        *v27 = v30;
        v27 += 2;
        v26 += 2;
      }

      while (v26 != v24);
      goto LABEL_192;
    }

    v24 = 0;
    do
    {
      if (isSplat)
      {
        v76 = 0;
      }

      else
      {
        v76 = v24;
      }

      a3[v24++] = *&ElementsAttrRawData[2 * v76];
LABEL_192:
      ;
    }

    while (NumElements != v24);
    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&ElementType, 32))
  {
    NumElements = 1;
LABEL_53:
    if (NumElements >= 2)
    {
      v32 = 0;
      v25 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v33 = a3 + 1;
      do
      {
        if (isSplat)
        {
          v34 = 0;
        }

        else
        {
          v34 = v32;
        }

        if (isSplat)
        {
          v35 = 0;
        }

        else
        {
          v35 = v32 + 1;
        }

        v36 = *&ElementsAttrRawData[4 * v35];
        *(v33 - 1) = *&ElementsAttrRawData[4 * v34];
        *v33 = v36;
        v33 += 2;
        v32 += 2;
      }

      while (v32 != v25);
      goto LABEL_197;
    }

    v25 = 0;
    do
    {
      if (isSplat)
      {
        v77 = 0;
      }

      else
      {
        v77 = v25;
      }

      a3[v25++] = *&ElementsAttrRawData[4 * v77];
LABEL_197:
      ;
    }

    while (NumElements != v25);
    return *&v12;
  }

  if (mlir::Type::isInteger(&ElementType, 32))
  {
    NumElements = 1;
LABEL_69:
    if (NumElements >= 2)
    {
      v39 = 0;
      v31 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v40 = a3 + 1;
      do
      {
        if (isSplat)
        {
          v41 = 0;
        }

        else
        {
          v41 = v39;
        }

        if (isSplat)
        {
          v42 = 0;
        }

        else
        {
          v42 = v39 + 1;
        }

        v43 = *&ElementsAttrRawData[4 * v42];
        *(v40 - 1) = *&ElementsAttrRawData[4 * v41];
        *v40 = v43;
        v40 += 2;
        v39 += 2;
      }

      while (v39 != v31);
      goto LABEL_202;
    }

    v31 = 0;
    do
    {
      if (isSplat)
      {
        v78 = 0;
      }

      else
      {
        v78 = v31;
      }

      a3[v31++] = *&ElementsAttrRawData[4 * v78];
LABEL_202:
      ;
    }

    while (NumElements != v31);
    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&ElementType, 64))
  {
    NumElements = 1;
LABEL_85:
    for (m = 0; m != NumElements; ++m)
    {
      if (isSplat)
      {
        v38 = 0;
      }

      else
      {
        v38 = m;
      }

      a3[m] = *&ElementsAttrRawData[8 * v38];
    }

    return *&v12;
  }

  if (mlir::Type::isInteger(&ElementType, 64))
  {
    NumElements = 1;
LABEL_105:
    for (n = 0; n != NumElements; ++n)
    {
      if (isSplat)
      {
        v45 = 0;
      }

      else
      {
        v45 = n;
      }

      a3[n] = *&ElementsAttrRawData[8 * v45];
    }

    return *&v12;
  }

  if (mlir::Type::isF16(&ElementType))
  {
    NumElements = 1;
LABEL_116:
    if (NumElements >= 2)
    {
      v48 = 0;
      v46 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v49 = a3 + 1;
      do
      {
        if (isSplat)
        {
          v50 = 0;
        }

        else
        {
          v50 = v48;
        }

        if (isSplat)
        {
          v51 = 0;
        }

        else
        {
          v51 = v48 + 1;
        }

        LOWORD(v12) = *&ElementsAttrRawData[2 * v50];
        v52 = *&ElementsAttrRawData[2 * v51];
        *(v49 - 1) = *&v12;
        *v49 = v52;
        v49 += 2;
        v48 += 2;
      }

      while (v48 != v46);
      goto LABEL_207;
    }

    v46 = 0;
    do
    {
      if (isSplat)
      {
        v79 = 0;
      }

      else
      {
        v79 = v46;
      }

      LOWORD(v12) = *&ElementsAttrRawData[2 * v79];
      a3[v46++] = *&v12;
LABEL_207:
      ;
    }

    while (NumElements != v46);
    return *&v12;
  }

  if (mlir::Type::isF32(&ElementType))
  {
    NumElements = 1;
LABEL_123:
    if (NumElements >= 2)
    {
      v54 = 0;
      v47 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v55 = a3 + 1;
      do
      {
        if (isSplat)
        {
          v56 = 0;
        }

        else
        {
          v56 = v54;
        }

        if (isSplat)
        {
          v57 = 0;
        }

        else
        {
          v57 = v54 + 1;
        }

        LODWORD(v12) = *&ElementsAttrRawData[4 * v56];
        v58 = *&ElementsAttrRawData[4 * v57];
        *(v55 - 1) = *&v12;
        *v55 = v58;
        v55 += 2;
        v54 += 2;
      }

      while (v54 != v47);
      goto LABEL_212;
    }

    v47 = 0;
    do
    {
      if (isSplat)
      {
        v80 = 0;
      }

      else
      {
        v80 = v47;
      }

      LODWORD(v12) = *&ElementsAttrRawData[4 * v80];
      a3[v47++] = *&v12;
LABEL_212:
      ;
    }

    while (NumElements != v47);
    return *&v12;
  }

  if (mlir::Type::isF64(&ElementType))
  {
    NumElements = 1;
LABEL_139:
    if (NumElements >= 2)
    {
      v64 = 0;
      v53 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v65 = a3 + 1;
      do
      {
        if (isSplat)
        {
          v66 = 0;
        }

        else
        {
          v66 = v64;
        }

        if (isSplat)
        {
          v67 = 0;
        }

        else
        {
          v67 = v64 + 1;
        }

        v12 = *&ElementsAttrRawData[8 * v66];
        v68 = *&ElementsAttrRawData[8 * v67];
        *(v65 - 1) = v12;
        *v65 = v68;
        v65 += 2;
        v64 += 2;
      }

      while (v64 != v53);
      goto LABEL_217;
    }

    v53 = 0;
    do
    {
      if (isSplat)
      {
        v81 = 0;
      }

      else
      {
        v81 = v53;
      }

      v12 = *&ElementsAttrRawData[8 * v81];
      a3[v53++] = v12;
LABEL_217:
      ;
    }

    while (NumElements != v53);
    return *&v12;
  }

  NumElements = 1;
  if (!mlir::Type::isBF16(&ElementType))
  {
    goto LABEL_156;
  }

LABEL_154:
  if (NumElements >= 2)
  {
    v70 = 0;
    v59 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v71 = a3 + 1;
    do
    {
      if (isSplat)
      {
        v72 = 0;
      }

      else
      {
        v72 = v70;
      }

      if (isSplat)
      {
        v73 = 0;
      }

      else
      {
        v73 = v70 + 1;
      }

      LODWORD(v12) = *&ElementsAttrRawData[2 * v72] << 16;
      v74 = COERCE_FLOAT(*&ElementsAttrRawData[2 * v73] << 16);
      *(v71 - 1) = *&v12;
      *v71 = v74;
      v71 += 2;
      v70 += 2;
    }

    while (v70 != v59);
    goto LABEL_222;
  }

  v59 = 0;
  do
  {
    if (isSplat)
    {
      v82 = 0;
    }

    else
    {
      v82 = v59;
    }

    LODWORD(v12) = *&ElementsAttrRawData[2 * v82] << 16;
    a3[v59++] = *&v12;
LABEL_222:
    ;
  }

  while (NumElements != v59);
  return *&v12;
}

uint64_t mlir::ElementsAttr::value_begin<llvm::APInt>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = mlir::ElementsAttr::try_value_begin<llvm::APInt>(a1, &v6);
  if (v9 != 1)
  {
    mlir::ElementsAttr::value_begin<llvm::APInt>(&v6, a1);
  }

  *a2 = v6;
  v5 = v8;
  *(a2 + 8) = v7;
  *(a2 + 16) = v5;
  return result;
}

uint64_t mlir::ElementsAttr::try_value_begin<llvm::APInt>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  {
    v5 = a1;
    mlir::ElementsAttr::try_value_begin<llvm::APInt>();
    a1 = v5;
  }

  result = mlir::ElementsAttr::getValuesImpl(a1, mlir::detail::TypeIDResolver<llvm::APInt,void>::resolveTypeID(void)::id);
  if (v9 == 1)
  {
    v4 = v8;
    if (v6 != 1)
    {
      v8 = 0;
    }

    *a2 = v6;
    *(a2 + 1) = v7;
    *(a2 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    if ((v6 & 1) == 0)
    {
      result = v8;
      if (v8)
      {
        return (*(*v8 + 8))(v8);
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

llvm::raw_ostream *mlir::operator<<(llvm::raw_ostream *a1, uint64_t a2)
{
  v4 = a2;
  mlir::Attribute::print(&v4, a1);
  return a1;
}

{
  v4 = a2;
  mlir::Type::print(&v4, a1);
  return a1;
}

{
  if (*(a2 + 64) == 1)
  {
    mlir::operator<<(a1, a2);
  }

  else
  {
    llvm::operator<<(a1);
  }

  return a1;
}

{
  v4 = a2;
  mlir::AffineExpr::print(&v4, a1);
  return a1;
}

void *llvm::raw_ostream::operator<<(void *a1, char *__s)
{
  if (!__s)
  {
    return a1;
  }

  v4 = strlen(__s);
  v5 = a1[4];
  if (v4 <= a1[3] - v5)
  {
    if (v4)
    {
      memcpy(v5, __s, v4);
      a1[4] += v4;
    }

    return a1;
  }

  return llvm::raw_ostream::write(a1, __s, v4);
}

const char *llvm::getTypeName<llvm::APInt>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = llvm::APInt]";
  v6 = 61;
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

uint64_t mlir::ElementsAttr::getValues<mlir::Attribute>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  ShapedType = mlir::ElementsAttr::getShapedType(a1);
  v6 = v5;
  mlir::ElementsAttr::value_begin<mlir::Attribute>(a1, v12);
  NumElements = mlir::ElementsAttr::getNumElements(*a1, a1[1]);
  v9 = 257;
  v10 = 0;
  v11 = NumElements;
  result = mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<mlir::Attribute>>::ElementsAttrRange(a2, ShapedType, v6, v12, &v9);
  if ((v9 & 1) == 0)
  {
    result = v10;
    v10 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v12[0] & 1) == 0)
  {
    result = v13;
    v13 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t mlir::ElementsAttr::value_begin<mlir::Attribute>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = mlir::ElementsAttr::try_value_begin<mlir::Attribute>(a1, &v6);
  if (v9 != 1)
  {
    mlir::ElementsAttr::value_begin<mlir::Attribute>(&v6, a1);
  }

  *a2 = v6;
  v5 = v8;
  *(a2 + 8) = v7;
  *(a2 + 16) = v5;
  return result;
}

uint64_t mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<mlir::Attribute>>::ElementsAttrRange(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, char *a5)
{
  v23 = *a4;
  v24 = a4[1];
  if (v23 == 1)
  {
    v25 = *(a4 + 1);
  }

  else
  {
    (*(**(a4 + 1) + 16))(&v25);
  }

  v26 = *(a4 + 2);
  v20 = *a5;
  v21 = a5[1];
  if (*a5 == 1)
  {
    v22[0] = *(a5 + 1);
  }

  else
  {
    (*(**(a5 + 1) + 16))(v22);
  }

  v9 = *(a5 + 2);
  v22[1] = v9;
  v10 = v23;
  if (v23 == 1)
  {
    v11 = v25;
    v12 = v25;
  }

  else
  {
    v11 = 0;
    v12 = v25;
    v25 = 0;
  }

  v13 = v22[0];
  if (v20 != 1)
  {
    v22[0] = 0;
  }

  v14 = v24;
  v15 = v26;
  if ((v23 & 1) == 0 && v11)
  {
    (*(*v11 + 8))(v11);
  }

  *a1 = v10;
  *(a1 + 1) = v14;
  if (v10)
  {
    *(a1 + 8) = v12;
  }

  else
  {
    (*(*v12 + 16))(v12);
  }

  *(a1 + 16) = v15;
  *(a1 + 24) = v20;
  *(a1 + 25) = v21;
  if (v20)
  {
    *(a1 + 32) = v13;
    *(a1 + 40) = v9;
    *(a1 + 48) = a2;
    *(a1 + 56) = a3;
    if (v10)
    {
      goto LABEL_24;
    }
  }

  else
  {
    (*(*v13 + 16))(v13);
    *(a1 + 40) = v9;
    *(a1 + 48) = a2;
    *(a1 + 56) = a3;
    (*(*v13 + 8))(v13);
    if (v10)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

LABEL_24:
  if ((v20 & 1) == 0)
  {
    v16 = v22[0];
    v22[0] = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }

  if ((v23 & 1) == 0)
  {
    v17 = v25;
    v25 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }
  }

  return a1;
}

uint64_t mlir::ElementsAttr::try_value_begin<mlir::Attribute>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  {
    v5 = a1;
    mlir::ElementsAttr::try_value_begin<mlir::Attribute>();
    a1 = v5;
  }

  result = mlir::ElementsAttr::getValuesImpl(a1, mlir::detail::TypeIDResolver<mlir::Attribute,void>::resolveTypeID(void)::id);
  if (v9 == 1)
  {
    v4 = v8;
    if (v6 != 1)
    {
      v8 = 0;
    }

    *a2 = v6;
    *(a2 + 1) = v7;
    *(a2 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    if ((v6 & 1) == 0)
    {
      result = v8;
      if (v8)
      {
        return (*(*v8 + 8))(v8);
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

const char *llvm::getTypeName<mlir::Attribute>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::Attribute]";
  v6 = 65;
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

uint64_t mlir::OpBuilder::create<mlir::mps::ConstantOp,int>(uint64_t **a1, uint64_t a2, unsigned int *a3)
{
  v15[38] = *MEMORY[0x277D85DE8];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ConstantOp,int>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ConstantOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReciprocalSquareRootOp,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x277D85DE8];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReciprocalSquareRootOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReciprocalSquareRootOp,mlir::Value>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ReciprocalSquareRootOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReciprocalSquareRootOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

uint64_t mlir::detail::constant_op_binder<mlir::Attribute>::match(unint64_t **a1, uint64_t a2)
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
    v5 = v8[0];
    v6 = *v8[0] & 0xFFFFFFFFFFFFFFF8;
    result = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
      v5 = v8[0];
    }

    if (v5 != v9)
    {
      v7 = v6 != 0;
      free(v5);
      return v7;
    }
  }

  return result;
}

uint64_t mlir::detail::constant_int_value_binder::match(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 136);
  v4 = v3 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  if (v3 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v15[0] = v5;
  if (v4)
  {
    mlir::IntegerAttr::getValue(v15, &v16);
    if (*(v2 + 8) >= 0x41u && *v2)
    {
      MEMORY[0x259C63150](*v2, 0x1000C8000313F17);
    }

    *v2 = v16;
    *(v2 + 8) = v17;
    return 1;
  }

  else
  {
    v6 = a2;
    if (mlir::DenseElementsAttr::classof(a2))
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v16 = v7;
    if (v7)
    {
      v7 = mlir::DenseElementsAttr::isSplat(&v16) ? v6 : 0;
      v14 = v7;
      if (v7)
      {
        mlir::DenseElementsAttr::getType(&v14);
        mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(&v16, v14, 0);
        v6 = v14;
        NumElements = mlir::DenseElementsAttr::getNumElements(&v14);
        mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(v15, v6, NumElements);
        v9 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v16);
        v10 = *(*v9 + 136);
        v11 = v10 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
        LODWORD(v6) = v10 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
        if (v10 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v12 = v9;
        }

        else
        {
          v12 = 0;
        }

        v15[0] = v12;
        if (v11)
        {
          mlir::IntegerAttr::getValue(v15, &v16);
          if (*(v2 + 8) >= 0x41u)
          {
            if (*v2)
            {
              MEMORY[0x259C63150](*v2, 0x1000C8000313F17);
            }
          }

          *v2 = v16;
          *(v2 + 8) = v17;
        }

        LODWORD(v7) = 1;
      }
    }

    return v7 & v6;
  }
}

BOOL mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke(llvm::APInt *this)
{
  v1 = this;
  v2 = *(this + 2);
  if (v2 < 0x41)
  {
    return *v1 == 0;
  }

  if (v2 - llvm::APInt::countLeadingZerosSlowCase(this) <= 0x40)
  {
    v1 = *v1;
    return *v1 == 0;
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ConstantOp,float>(mlir::Float32Type **a1, uint64_t a2, float *a3)
{
  v16[38] = *MEMORY[0x277D85DE8];
  v13 = a2;
  Context = mlir::Attribute::getContext(&v13);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ConstantOp,int>(v16, v15, v14);
  }

  mlir::OperationState::OperationState(v16, a2, v7);
  mlir::mps::ConstantOp::build(a1, v16, v9, *a3);
  v10 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v10 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v11;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseIntElementsAttr &>(mlir::OpBuilder *a1, uint64_t a2, void **a3)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ConstantOp,int>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v7);
  v9 = *a3;
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  mlir::mps::ConstantOp::build(a1, v17, v9, v10);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

unint64_t mlir::getSingleIntValue<long long>(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v12 = a2;
  v10[0] = mlir::ElementsAttr::getShapedType(&v11);
  v10[1] = v2;
  Shape = mlir::ShapedType::getShape(v10);
  if (mlir::ShapedType::getNumElements(Shape, v4) == 1 && (v9[0] = mlir::ElementsAttr::getShapedType(&v11), v9[1] = v5, *(*mlir::ShapedType::getElementType(v9) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
  {
    v9[0] = 0;
    mlir::copyElementsAttrData<long long>(v11, v12, v9, 1);
    v7 = v9[0] & 0xFFFFFFFFFFFFFF00;
    v6 = LOBYTE(v9[0]);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

const char *llvm::getTypeName<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HasRecursiveMemoryEffects<Empty>]";
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

const char *llvm::getTypeName<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::IsTerminator<Empty>]";
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

uint64_t mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
        mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::MemoryEffectOpInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::MemoryEffectOpInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor();
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
      if (v7 < mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id)
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

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::MemoryEffectOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemoryEffectOpInterface]";
  v6 = 79;
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

uint64_t mlir::matchConstantWithIntVector<long long>(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  if (!a1)
  {
    return 0;
  }

  v7 = &v8;
  v10 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (!DefiningOp)
  {
    return 0;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v7, DefiningOp))
  {
    return 0;
  }

  v6[0] = mlir::ElementsAttr::getShapedType(&v8);
  v6[1] = v4;
  if (*(*mlir::ShapedType::getElementType(v6) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 0;
  }

  mlir::getIntValues<long long>(v8, v9, a2, 1);
  return 1;
}

void *OUTLINED_FUNCTION_16(const void *a1, size_t a2)
{

  return llvm::raw_ostream::operator<<(v2, a1, a2);
}

uint64_t mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
        mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::FunctionOpInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::FunctionOpInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor();
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
      if (v7 < mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id)
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

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}