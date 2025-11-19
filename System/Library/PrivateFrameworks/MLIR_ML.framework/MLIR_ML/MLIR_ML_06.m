void sub_256431568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLClassOpHandler *EmitterViewerSPI::COREMLClassOpHandler::COREMLClassOpHandler(EmitterViewerSPI::COREMLClassOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859F38;
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

  v9 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v51 = [MEMORY[0x277CBEB18] array];
  v52 = [MEMORY[0x277CBEB18] array];
  SymName = mlir::ODIE::Compiler::CoreML::ClassOp::getSymName(&v56);
  v13 = EmitViewerSPI::emitStringProperty(SymName, @"sym_name", SymName, v12);
  if (v13)
  {
    [v52 addObject:v13];
  }

  v49 = v9;

  v53 = [MEMORY[0x277CBEB18] array];
  v14 = 0;
  v15 = (((v56 + 16 * ((*(v56 + 11) >> 23) & 1) + ((*(v56 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v56 + 10));
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
      goto LABEL_14;
    }

    v21 = a2[7];
    if (!*&v21)
    {
      goto LABEL_42;
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
LABEL_42:
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"body_arg%d", v14];
      v31 = EmitViewerSPI::emitNodeOutputPort(a2, v30, v20);
      goto LABEL_43;
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
        goto LABEL_42;
      }

LABEL_35:
      v28 = *v28;
      if (!v28)
      {
        goto LABEL_42;
      }
    }

    if (v28[2] != v20)
    {
      goto LABEL_35;
    }

    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"body_arg%d", v14];
    v31 = EmitViewerSPI::emitNodeInputPort(a2, v30, v20);
LABEL_43:
    v32 = v31;

    if (v32)
    {
      [v10 addObject:v32];
    }

LABEL_14:
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
  v37 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v38 = [MEMORY[0x277CBEA60] arrayWithArray:v51];
  v39 = [MEMORY[0x277CBEA60] arrayWithArray:v52];
  v40 = [MEMORY[0x277CBEA60] arrayWithArray:v53];
  v41 = [(MLViewerNodeSPI *)v36 initWithType:v49 inputs:v37 outputs:v38 properties:v39 regions:v40];
  v42 = *(this + 3);
  *(this + 3) = v41;

  if (v55 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256431B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLConcatOpHandler *EmitterViewerSPI::COREMLConcatOpHandler::COREMLConcatOpHandler(EmitterViewerSPI::COREMLConcatOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859F50;
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
  ODSOperandIndexAndLength = mlir::ODIE::Compiler::CoreML::ConcatOp::getODSOperandIndexAndLength(&v40, 0);
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"dimension", *(*(v40 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v11)
  {
    [v9 addObject:v11];
  }

  v12 = mlir::ODIE::Compiler::CoreML::ConcatOp::getODSOperandIndexAndLength(&v40, 1u);
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
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"inputs%d", v31];
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

void sub_25643203C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLConditionOpHandler *EmitterViewerSPI::COREMLConditionOpHandler::COREMLConditionOpHandler(EmitterViewerSPI::COREMLConditionOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859F68;
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
  ODSOperandIndexAndLength = mlir::ODIE::Compiler::CoreML::ConditionOp::getODSOperandIndexAndLength(&v37, 0);
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"condition", *(*(v37 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v11)
  {
    [v9 addObject:v11];
  }

  v12 = mlir::ODIE::Compiler::CoreML::ConditionOp::getODSOperandIndexAndLength(&v37, 1u);
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

void sub_25643247C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLConstantOpHandler *EmitterViewerSPI::COREMLConstantOpHandler::COREMLConstantOpHandler(EmitterViewerSPI::COREMLConstantOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859F80;
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

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x277CBEB18] array];
  v27 = v11;
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
  mlir::ODIE::Compiler::CoreML::ConstantOp::getValue(&v30);
  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MLViewerNodeSPI alloc];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v20 = v10;
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v24 = [(MLViewerNodeSPI *)v18 initWithType:v20 inputs:v19 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2564327F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLConv2dOpHandler *EmitterViewerSPI::COREMLConv2dOpHandler::COREMLConv2dOpHandler(EmitterViewerSPI::COREMLConv2dOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859F98;
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

  v15 = EmitViewerSPI::emitNodeInputPort(a2, @"dilation", *(*(a3 + 9) + 152));
  if (v15)
  {
    [v10 addObject:v15];
  }

  v16 = EmitViewerSPI::emitNodeInputPort(a2, @"groups", *(*(a3 + 9) + 184));
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

void sub_256432C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLCosOpHandler *EmitterViewerSPI::COREMLCosOpHandler::COREMLCosOpHandler(EmitterViewerSPI::COREMLCosOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859FB0;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"x", *(*(a3 + 9) + 24));
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
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"outputs", NextResultAtOffset);
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

void sub_256433074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLCreateComplexOpHandler *EmitterViewerSPI::COREMLCreateComplexOpHandler::COREMLCreateComplexOpHandler(EmitterViewerSPI::COREMLCreateComplexOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859FC8;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"real", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"imaginary", *(*(a3 + 9) + 56));
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

void sub_256433438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLCreateTokenOpHandler *EmitterViewerSPI::COREMLCreateTokenOpHandler::COREMLCreateTokenOpHandler(EmitterViewerSPI::COREMLCreateTokenOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859FE0;
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

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x277CBEB18] array];
  v27 = v11;
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
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"token", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x277CBEB18] array];
  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MLViewerNodeSPI alloc];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v20 = v10;
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v24 = [(MLViewerNodeSPI *)v18 initWithType:v20 inputs:v19 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2564337A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLDelegateOpHandler *EmitterViewerSPI::COREMLDelegateOpHandler::COREMLDelegateOpHandler(EmitterViewerSPI::COREMLDelegateOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_286859FF8;
  v4 = *(*(a3 + 6) + 8);
  v48 = a3;
  v49 = v4;
  Value = mlir::StringAttr::getValue(&v49);
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

  v47 = v6;
  if (v6)
  {
    memmove(&__dst, Value, v6);
  }

  *(&__dst + v7) = 0;
  if (v47 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v44 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::ODIE::Compiler::CoreML::DelegateOp::getODSOperandIndexAndLength(&v48, 0);
  if ((*(v48 + 46) & 0x80) != 0)
  {
    v11 = *(v48 + 9);
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
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"inputs%d", v34];
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

  v14 = [MEMORY[0x277CBEB18] array];
  ODSResultIndexAndLength = mlir::ODIE::Compiler::CoreML::DelegateOp::getODSResultIndexAndLength(&v48, 0);
  v16 = ODSResultIndexAndLength;
  if (*(v48 + 9))
  {
    NextResultAtOffset = v48 - 16;
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
    v39 = 0;
    v40 = 0;
    do
    {
      v41 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v39);
      v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"outputs%d", v40];
      v43 = EmitViewerSPI::emitNodeOutputPort(a2, v42, v41);

      if (v43)
      {
        [v14 addObject:v43];
      }

      v39 = (v40 + 1);
      v40 = v39;
    }

    while (v19 > v39);
  }

  v20 = [MEMORY[0x277CBEB18] array];
  DelegateId = mlir::ODIE::Compiler::CoreML::DelegateOp::getDelegateId(&v48);
  v23 = EmitViewerSPI::emitStringProperty(DelegateId, @"delegate_id", DelegateId, v22);
  if (v23)
  {
    [v20 addObject:v23];
  }

  v24 = [MEMORY[0x277CBEB18] array];
  v25 = [MLViewerNodeSPI alloc];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v20];
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v24];
  v30 = [(MLViewerNodeSPI *)v25 initWithType:v44 inputs:v26 outputs:v27 properties:v28 regions:v29];
  v31 = *(this + 3);
  *(this + 3) = v30;

  if (v47 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256433C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLDivideOpHandler *EmitterViewerSPI::COREMLDivideOpHandler::COREMLDivideOpHandler(EmitterViewerSPI::COREMLDivideOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A010;
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

void sub_256434080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLEqualOpHandler *EmitterViewerSPI::COREMLEqualOpHandler::COREMLEqualOpHandler(EmitterViewerSPI::COREMLEqualOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A028;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"other", *(*(a3 + 9) + 56));
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

void sub_25643444C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLErrorOpHandler *EmitterViewerSPI::COREMLErrorOpHandler::COREMLErrorOpHandler(EmitterViewerSPI::COREMLErrorOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A040;
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

  v34 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v35 = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CBEB18] array];
  ODSResultIndexAndLength = mlir::ODIE::Compiler::CoreML::ErrorOp::getODSResultIndexAndLength(&v38, 0);
  v12 = ODSResultIndexAndLength;
  if (*(v38 + 9))
  {
    NextResultAtOffset = v38 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v14 = (HIDWORD(v12) + v12);
  v15 = v14 - v12;
  if (v14 != v12)
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v31 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v29);
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"results%d", v30];
      v33 = EmitViewerSPI::emitNodeOutputPort(a2, v32, v31);

      if (v33)
      {
        [v10 addObject:v33];
      }

      v29 = (v30 + 1);
      v30 = v29;
    }

    while (v15 > v29);
  }

  v16 = [MEMORY[0x277CBEB18] array];
  Message = mlir::ODIE::Compiler::CoreML::ErrorOp::getMessage(&v38);
  v19 = EmitViewerSPI::emitStringProperty(Message, @"message", Message, v18);
  if (v19)
  {
    [v16 addObject:v19];
  }

  v20 = [MEMORY[0x277CBEB18] array];
  v21 = [MLViewerNodeSPI alloc];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v35];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v20];
  v26 = [(MLViewerNodeSPI *)v21 initWithType:v34 inputs:v22 outputs:v23 properties:v24 regions:v25];
  v27 = *(this + 3);
  *(this + 3) = v26;

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256434870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLExpOpHandler *EmitterViewerSPI::COREMLExpOpHandler::COREMLExpOpHandler(EmitterViewerSPI::COREMLExpOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A058;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"x", *(*(a3 + 9) + 24));
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
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"outputs", NextResultAtOffset);
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

void sub_256434C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLExpandDimsOpHandler *EmitterViewerSPI::COREMLExpandDimsOpHandler::COREMLExpandDimsOpHandler(EmitterViewerSPI::COREMLExpandDimsOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A070;
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

void sub_256434FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLFillOpHandler *EmitterViewerSPI::COREMLFillOpHandler::COREMLFillOpHandler(EmitterViewerSPI::COREMLFillOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A088;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"shape", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"value", *(*(a3 + 9) + 56));
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

void sub_2564353B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLFloorDivideOpHandler *EmitterViewerSPI::COREMLFloorDivideOpHandler::COREMLFloorDivideOpHandler(EmitterViewerSPI::COREMLFloorDivideOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A0A0;
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

void sub_25643577C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLFuncOpHandler *EmitterViewerSPI::COREMLFuncOpHandler::COREMLFuncOpHandler(EmitterViewerSPI::COREMLFuncOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A0B8;
  v4 = *(*(a3 + 6) + 8);
  v63 = a3;
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

  v62 = v6;
  if (v6)
  {
    memmove(&__dst, Value, v6);
  }

  *(&__dst + v7) = 0;
  if (v62 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v59 = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CBEB18] array];
  v58 = [MEMORY[0x277CBEB18] array];
  SymName = mlir::ODIE::Compiler::CoreML::FuncOp::getSymName(&v63);
  v13 = EmitViewerSPI::emitStringProperty(SymName, @"sym_name", SymName, v12);
  if (v13)
  {
    [v58 addObject:v13];
  }

  v55 = v9;
  v14 = 0;
  FunctionType = mlir::ODIE::Compiler::CoreML::FuncOp::getFunctionType(&v63);
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

  NoInline = mlir::ODIE::Compiler::CoreML::FuncOp::getNoInline(&v63);
  v18 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"no_inline" dataType:2147483656 shape:&unk_2868B08C8];
  if (v18)
  {
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:&NoInline length:1];
    [(MLViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v58 addObject:v18];
  }

  mlir::ODIE::Compiler::CoreML::FuncOp::getExternAttr(&v63);
  mlir::ODIE::Compiler::CoreML::FuncOp::getSafeTransforms(&v63);

  v57 = [MEMORY[0x277CBEB18] array];
  v20 = 0;
  v21 = (((v63 + 16 * ((*(v63 + 11) >> 23) & 1) + ((*(v63 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v63 + 10));
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
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"body_arg%d", v20];
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

    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"body_arg%d", v20];
    v37 = EmitViewerSPI::emitNodeInputPort(a2, v36, v26);
LABEL_50:
    v38 = v37;

    if (v38)
    {
      [v59 addObject:v38];
    }

LABEL_21:
    ++v20;
  }

  v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = v21[1]; i != v21; i = i[1])
  {
    v50 = i - 1;
    if (!i)
    {
      v50 = 0;
    }

    v51 = v50 + 4;
    for (j = v50[5]; j != v51; j = j[1])
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
      v54 = EmitViewerSPI::emitNode(a2, ValuePtr);
      if (v54)
      {
        [v39 addObject:v54];
      }
    }
  }

  v41 = [[MLViewerNodeRegionSPI alloc] initWithName:@"body" returnType:0 nodes:v39];
  [v57 addObject:v41];

  v42 = [MLViewerNodeSPI alloc];
  v43 = [MEMORY[0x277CBEA60] arrayWithArray:v59];
  v44 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v45 = [MEMORY[0x277CBEA60] arrayWithArray:v58];
  v46 = [MEMORY[0x277CBEA60] arrayWithArray:v57];
  v47 = [(MLViewerNodeSPI *)v42 initWithType:v55 inputs:v43 outputs:v44 properties:v45 regions:v46];
  v48 = *(this + 3);
  *(this + 3) = v47;

  if (v62 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256435E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLGELUOpHandler *EmitterViewerSPI::COREMLGELUOpHandler::COREMLGELUOpHandler(EmitterViewerSPI::COREMLGELUOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A0D0;
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
  v11 = v30;
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v30 + 9) + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  if (*(v11 + 9))
  {
    v14 = v11 - 16;
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
  mlir::ODIE::Compiler::CoreML::GELUOp::getApproximate(&v30);
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

void sub_2564362F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLGatherNdOpHandler *EmitterViewerSPI::COREMLGatherNdOpHandler::COREMLGatherNdOpHandler(EmitterViewerSPI::COREMLGatherNdOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A0E8;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"indices", *(*(a3 + 9) + 56));
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

void sub_2564366C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLGetShapeOpHandler *EmitterViewerSPI::COREMLGetShapeOpHandler::COREMLGetShapeOpHandler(EmitterViewerSPI::COREMLGetShapeOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A100;
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
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"shape", NextResultAtOffset);
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

void sub_256436A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLGraphOpHandler *EmitterViewerSPI::COREMLGraphOpHandler::COREMLGraphOpHandler(EmitterViewerSPI::COREMLGraphOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A118;
  v5 = *(*(a3 + 6) + 8);
  v70 = a3;
  FunctionType = v5;
  Value = mlir::StringAttr::getValue(&FunctionType);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v69 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v69 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v64 = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CBEB18] array];
  v63 = [MEMORY[0x277CBEB18] array];
  SymName = mlir::ODIE::Compiler::CoreML::GraphOp::getSymName(&v70);
  v14 = EmitViewerSPI::emitStringProperty(SymName, @"sym_name", SymName, v13);
  if (v14)
  {
    [v63 addObject:v14];
  }

  v61 = this;
  v62 = v10;
  v15 = 0;
  FunctionType = mlir::ODIE::Compiler::CoreML::GraphOp::getFunctionType(&v70);
  while (v15 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v16 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v15);
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"result%d", v15];
    v18 = EmitViewerSPI::emitNodeOutputPort(v17, v17, v16);

    if (v18)
    {
      [v11 addObject:v18];
    }

    ++v15;
  }

  Priv = mlir::ODIE::Compiler::CoreML::GraphOp::getPriv(&v70);
  v19 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"priv" dataType:2147483656 shape:&unk_2868B08E0];
  if (v19)
  {
    v20 = [MEMORY[0x277CBEA90] dataWithBytes:&Priv length:1];
    [(MLViewerNodePropertyDataSPI *)v19 setValue:v20];

    [v63 addObject:v19];
  }

  Externalize = mlir::ODIE::Compiler::CoreML::GraphOp::getExternalize(&v70);
  v21 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"externalize" dataType:2147483656 shape:&unk_2868B08F8];
  if (v21)
  {
    v22 = [MEMORY[0x277CBEA90] dataWithBytes:&Externalize length:1];
    [(MLViewerNodePropertyDataSPI *)v21 setValue:v22];

    [v63 addObject:v21];
  }

  NoInline = mlir::ODIE::Compiler::CoreML::GraphOp::getNoInline(&v70);
  v23 = [[MLViewerNodePropertyDataSPI alloc] initWithName:@"no_inline" dataType:2147483656 shape:&unk_2868B0910];
  if (v23)
  {
    v24 = [MEMORY[0x277CBEA90] dataWithBytes:&NoInline length:1];
    [(MLViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v63 addObject:v23];
  }

  v60 = [MEMORY[0x277CBEB18] array];
  v25 = 0;
  v26 = (((v70 + 16 * ((*(v70 + 11) >> 23) & 1) + ((*(v70 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v70 + 10));
  while (*v26 != v26)
  {
    v27 = v26[1];
    v28 = v27 ? v27 - 8 : 0;
    if (v25 >= ((*(v28 + 56) - *(v28 + 48)) >> 3))
    {
      break;
    }

    v29 = v26[1];
    if (v29)
    {
      v30 = v29 - 8;
    }

    else
    {
      v30 = 0;
    }

    v31 = *(*(v30 + 48) + 8 * v25);
    if (!v31)
    {
      goto LABEL_25;
    }

    v32 = a2[7];
    if (!*&v32)
    {
      goto LABEL_53;
    }

    v33 = 0x9DDFEA08EB382D69 * ((8 * (v31 & 0x1FFFFFFF) + 8) ^ HIDWORD(v31));
    v34 = 0x9DDFEA08EB382D69 * (HIDWORD(v31) ^ (v33 >> 47) ^ v33);
    v35 = 0x9DDFEA08EB382D69 * (v34 ^ (v34 >> 47));
    v36 = vcnt_s8(v32);
    v36.i16[0] = vaddlv_u8(v36);
    if (v36.u32[0] > 1uLL)
    {
      v37 = v35;
      if (v35 >= *&v32)
      {
        v37 = v35 % *&v32;
      }
    }

    else
    {
      v37 = (*&v32 - 1) & v35;
    }

    v38 = *(*&a2[6] + 8 * v37);
    if (!v38 || (v39 = *v38) == 0)
    {
LABEL_53:
      v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"body_arg%d", v25];
      v42 = EmitViewerSPI::emitNodeOutputPort(a2, v41, v31);
      goto LABEL_54;
    }

    while (1)
    {
      v40 = v39[1];
      if (v40 == v35)
      {
        break;
      }

      if (v36.u32[0] > 1uLL)
      {
        if (v40 >= *&v32)
        {
          v40 %= *&v32;
        }
      }

      else
      {
        v40 &= *&v32 - 1;
      }

      if (v40 != v37)
      {
        goto LABEL_53;
      }

LABEL_46:
      v39 = *v39;
      if (!v39)
      {
        goto LABEL_53;
      }
    }

    if (v39[2] != v31)
    {
      goto LABEL_46;
    }

    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"body_arg%d", v25];
    v42 = EmitViewerSPI::emitNodeInputPort(a2, v41, v31);
LABEL_54:
    v43 = v42;

    if (v43)
    {
      [v64 addObject:v43];
    }

LABEL_25:
    ++v25;
  }

  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = v26[1]; i != v26; i = i[1])
  {
    v55 = i - 1;
    if (!i)
    {
      v55 = 0;
    }

    v56 = v55 + 4;
    for (j = v55[5]; j != v56; j = j[1])
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
      v59 = EmitViewerSPI::emitNode(a2, ValuePtr);
      if (v59)
      {
        [v44 addObject:v59];
      }
    }
  }

  v46 = [[MLViewerNodeRegionSPI alloc] initWithName:@"body" returnType:0 nodes:v44];
  [v60 addObject:v46];

  v47 = [MLViewerNodeSPI alloc];
  v48 = [MEMORY[0x277CBEA60] arrayWithArray:v64];
  v49 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v50 = [MEMORY[0x277CBEA60] arrayWithArray:v63];
  v51 = [MEMORY[0x277CBEA60] arrayWithArray:v60];
  v52 = [(MLViewerNodeSPI *)v47 initWithType:v62 inputs:v48 outputs:v49 properties:v50 regions:v51];
  v53 = *(v61 + 3);
  *(v61 + 3) = v52;

  if (v69 < 0)
  {
    operator delete(__dst);
  }

  return v61;
}

void sub_256437240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLGreaterOpHandler *EmitterViewerSPI::COREMLGreaterOpHandler::COREMLGreaterOpHandler(EmitterViewerSPI::COREMLGreaterOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A130;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"other", *(*(a3 + 9) + 56));
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

void sub_2564376E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLIfOpHandler *EmitterViewerSPI::COREMLIfOpHandler::COREMLIfOpHandler(EmitterViewerSPI::COREMLIfOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A148;
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
  ODSResultIndexAndLength = mlir::ODIE::Compiler::CoreML::IfOp::getODSResultIndexAndLength(&v93, 0);
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

void sub_256438064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLImaginaryPartOpHandler *EmitterViewerSPI::COREMLImaginaryPartOpHandler::COREMLImaginaryPartOpHandler(EmitterViewerSPI::COREMLImaginaryPartOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A160;
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

void sub_256438494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLImportOpHandler *EmitterViewerSPI::COREMLImportOpHandler::COREMLImportOpHandler(EmitterViewerSPI::COREMLImportOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A178;
  v33 = a3;
  v29[0] = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(v29);
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

  v32 = v5;
  if (v5)
  {
    memmove(&__dst, Value, v5);
  }

  *(&__dst + v6) = 0;
  if (v32 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x277CBEB18] array];
  v28 = v9;
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CBEB18] array];
  mlir::ODIE::Compiler::CoreML::ImportOp::getToImport(&v33);
  SymName = mlir::ODIE::Compiler::CoreML::ImportOp::getSymName(&v33);
  v14 = EmitViewerSPI::emitStringProperty(SymName, @"sym_name", SymName, v13);
  if (v14)
  {
    [v11 addObject:v14];
  }

  Path = mlir::ODIE::Compiler::CoreML::ImportOp::getPath(&v33, v29);
  if (v30 == 1)
  {
    v16 = EmitViewerSPI::emitStringProperty(Path, @"path", v29[0], v29[1]);
    if (v16)
    {
      [v11 addObject:v16];
    }
  }

  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MLViewerNodeSPI alloc];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v20 = v8;
  v21 = v10;
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v17];
  v25 = [(MLViewerNodeSPI *)v18 initWithType:v20 inputs:v19 outputs:v22 properties:v23 regions:v24];
  v26 = *(this + 3);
  *(this + 3) = v25;

  if (v32 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_256438834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLInvokeOpHandler *EmitterViewerSPI::COREMLInvokeOpHandler::COREMLInvokeOpHandler(EmitterViewerSPI::COREMLInvokeOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A190;
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
  ODSOperandIndexAndLength = mlir::ODIE::Compiler::CoreML::InvokeOp::getODSOperandIndexAndLength(&v35, 0);
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
  mlir::ODIE::Compiler::CoreML::InvokeOp::getCallee(&v35);
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

void sub_256438C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLIsolatedGroupOpHandler *EmitterViewerSPI::COREMLIsolatedGroupOpHandler::COREMLIsolatedGroupOpHandler(EmitterViewerSPI::COREMLIsolatedGroupOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A1A8;
  v5 = *(*(a3 + 6) + 8);
  v77 = a3;
  v78 = v5;
  Value = mlir::StringAttr::getValue(&v78);
  v7 = strlen(Value);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v76 = v7;
  if (v7)
  {
    memmove(&__dst, Value, v7);
  }

  *(&__dst + v8) = 0;
  if (v76 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v74 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getODSOperandIndexAndLength(&v77, 0);
  v70 = this;
  if ((*(v77 + 46) & 0x80) != 0)
  {
    v12 = *(v77 + 9);
  }

  else
  {
    v12 = 0;
  }

  v13 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  v14 = v13 - ODSOperandIndexAndLength;
  if (v13 != ODSOperandIndexAndLength)
  {
    v59 = 0;
    v60 = 0;
    v61 = v12 + 32 * ODSOperandIndexAndLength;
    do
    {
      v62 = *(v61 + 32 * v59 + 24);
      v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"inputs%d", v60];
      v64 = EmitViewerSPI::emitNodeInputPort(a2, v63, v62);

      if (v64)
      {
        [v74 addObject:v64];
      }

      v59 = (v60 + 1);
      v60 = v59;
    }

    while (v14 > v59);
  }

  v73 = [MEMORY[0x277CBEB18] array];
  ODSResultIndexAndLength = mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getODSResultIndexAndLength(&v77, 0);
  v16 = ODSResultIndexAndLength;
  if (*(v77 + 9))
  {
    NextResultAtOffset = v77 - 16;
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
    v65 = 0;
    v66 = 0;
    do
    {
      v67 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v65);
      v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"outputs%d", v66];
      v69 = EmitViewerSPI::emitNodeOutputPort(a2, v68, v67);

      if (v69)
      {
        [v73 addObject:v69];
      }

      v65 = (v66 + 1);
      v66 = v65;
    }

    while (v19 > v65);
  }

  v71 = [MEMORY[0x277CBEB18] array];
  DelegateId = mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getDelegateId(&v77);
  v22 = EmitViewerSPI::emitStringProperty(DelegateId, @"delegate_id", DelegateId, v21);
  if (v22)
  {
    [v71 addObject:v22];
  }

  v72 = [MEMORY[0x277CBEB18] array];
  v23 = 0;
  v24 = (((v77 + 16 * ((*(v77 + 11) >> 23) & 1) + ((*(v77 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v77 + 10));
  v25 = v10;
  while (*v24 != v24)
  {
    v26 = v24[1];
    v27 = v26 ? v26 - 8 : 0;
    if (v23 >= ((*(v27 + 56) - *(v27 + 48)) >> 3))
    {
      break;
    }

    v28 = v24[1];
    if (v28)
    {
      v29 = v28 - 8;
    }

    else
    {
      v29 = 0;
    }

    v30 = *(*(v29 + 48) + 8 * v23);
    if (!v30)
    {
      goto LABEL_23;
    }

    v31 = a2[7];
    if (!*&v31)
    {
      goto LABEL_51;
    }

    v32 = 0x9DDFEA08EB382D69 * ((8 * (v30 & 0x1FFFFFFF) + 8) ^ HIDWORD(v30));
    v33 = 0x9DDFEA08EB382D69 * (HIDWORD(v30) ^ (v32 >> 47) ^ v32);
    v34 = 0x9DDFEA08EB382D69 * (v33 ^ (v33 >> 47));
    v35 = vcnt_s8(v31);
    v35.i16[0] = vaddlv_u8(v35);
    if (v35.u32[0] > 1uLL)
    {
      v36 = v34;
      if (v34 >= *&v31)
      {
        v36 = v34 % *&v31;
      }
    }

    else
    {
      v36 = (*&v31 - 1) & v34;
    }

    v37 = *(*&a2[6] + 8 * v36);
    if (!v37 || (v38 = *v37) == 0)
    {
LABEL_51:
      v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"group_arg%d", v23];
      v41 = EmitViewerSPI::emitNodeOutputPort(a2, v40, v30);
      goto LABEL_52;
    }

    while (1)
    {
      v39 = v38[1];
      if (v39 == v34)
      {
        break;
      }

      if (v35.u32[0] > 1uLL)
      {
        if (v39 >= *&v31)
        {
          v39 %= *&v31;
        }
      }

      else
      {
        v39 &= *&v31 - 1;
      }

      if (v39 != v36)
      {
        goto LABEL_51;
      }

LABEL_44:
      v38 = *v38;
      if (!v38)
      {
        goto LABEL_51;
      }
    }

    if (v38[2] != v30)
    {
      goto LABEL_44;
    }

    v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"group_arg%d", v23];
    v41 = EmitViewerSPI::emitNodeInputPort(a2, v40, v30);
LABEL_52:
    v42 = v41;

    if (v42)
    {
      [v74 addObject:v42];
    }

LABEL_23:
    ++v23;
  }

  v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = v24[1]; i != v24; i = i[1])
  {
    v54 = i - 1;
    if (!i)
    {
      v54 = 0;
    }

    v55 = v54 + 4;
    for (j = v54[5]; j != v55; j = j[1])
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
      v58 = EmitViewerSPI::emitNode(a2, ValuePtr);
      if (v58)
      {
        [v43 addObject:v58];
      }
    }
  }

  v45 = [[MLViewerNodeRegionSPI alloc] initWithName:@"group" returnType:0 nodes:v43];
  [v72 addObject:v45];

  v46 = [MLViewerNodeSPI alloc];
  v47 = [MEMORY[0x277CBEA60] arrayWithArray:v74];
  v48 = [MEMORY[0x277CBEA60] arrayWithArray:v73];
  v49 = [MEMORY[0x277CBEA60] arrayWithArray:v71];
  v50 = [MEMORY[0x277CBEA60] arrayWithArray:v72];
  v51 = [(MLViewerNodeSPI *)v46 initWithType:v25 inputs:v47 outputs:v48 properties:v49 regions:v50];
  v52 = *(v70 + 3);
  *(v70 + 3) = v51;

  if (v76 < 0)
  {
    operator delete(__dst);
  }

  return v70;
}

void sub_2564393B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLJoinTokenOpHandler *EmitterViewerSPI::COREMLJoinTokenOpHandler::COREMLJoinTokenOpHandler(EmitterViewerSPI::COREMLJoinTokenOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A1C0;
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
  ODSOperandIndexAndLength = mlir::ODIE::Compiler::CoreML::JoinTokenOp::getODSOperandIndexAndLength(&v40, 0);
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"in_token", *(*(v40 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v11)
  {
    [v9 addObject:v11];
  }

  v12 = mlir::ODIE::Compiler::CoreML::JoinTokenOp::getODSOperandIndexAndLength(&v40, 1u);
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
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"rest_tokens%d", v31];
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
  v19 = EmitViewerSPI::emitNodeOutputPort(a2, @"token", NextResultAtOffset);
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

void sub_2564398CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLLogOpHandler *EmitterViewerSPI::COREMLLogOpHandler::COREMLLogOpHandler(EmitterViewerSPI::COREMLLogOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A1D8;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"x", *(*(a3 + 9) + 24));
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
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"outputs", NextResultAtOffset);
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

void sub_256439C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLMaxPool2dOpHandler *EmitterViewerSPI::COREMLMaxPool2dOpHandler::COREMLMaxPool2dOpHandler(EmitterViewerSPI::COREMLMaxPool2dOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A1F0;
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

  v15 = EmitViewerSPI::emitNodeInputPort(a2, @"dilation", *(*(a3 + 9) + 152));
  if (v15)
  {
    [v10 addObject:v15];
  }

  v16 = EmitViewerSPI::emitNodeInputPort(a2, @"ceil_mode", *(*(a3 + 9) + 184));
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

void sub_25643A11C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLMaximumOpHandler *EmitterViewerSPI::COREMLMaximumOpHandler::COREMLMaximumOpHandler(EmitterViewerSPI::COREMLMaximumOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A208;
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

void sub_25643A534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLMemberOpHandler *EmitterViewerSPI::COREMLMemberOpHandler::COREMLMemberOpHandler(EmitterViewerSPI::COREMLMemberOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A220;
  v28 = a3;
  v25[0] = *(*(a3 + 6) + 8);
  Value = mlir::StringAttr::getValue(v25);
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

  v27 = v5;
  if (v5)
  {
    memmove(&__dst, Value, v5);
  }

  *(&__dst + v6) = 0;
  if (v27 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x277CBEB18] array];
  v24 = v9;
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CBEB18] array];
  SymName = mlir::ODIE::Compiler::CoreML::MemberOp::getSymName(&v28);
  v14 = EmitViewerSPI::emitStringProperty(SymName, @"sym_name", SymName, v13);
  if (v14)
  {
    [v11 addObject:v14];
  }

  mlir::ODIE::Compiler::CoreML::MemberOp::getType(&v28);
  mlir::ODIE::Compiler::CoreML::MemberOp::getValue(&v28, v25);

  v15 = [MEMORY[0x277CBEB18] array];
  v16 = [MLViewerNodeSPI alloc];
  v17 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v18 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v19 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
  v21 = [(MLViewerNodeSPI *)v16 initWithType:v8 inputs:v17 outputs:v18 properties:v19 regions:v20];
  v22 = *(this + 3);
  *(this + 3) = v21;

  if (v27 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25643A89C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLMinimumOpHandler *EmitterViewerSPI::COREMLMinimumOpHandler::COREMLMinimumOpHandler(EmitterViewerSPI::COREMLMinimumOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A238;
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

void sub_25643AC4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLModuleOpHandler *EmitterViewerSPI::COREMLModuleOpHandler::COREMLModuleOpHandler(EmitterViewerSPI::COREMLModuleOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A250;
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

  v9 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x277CBEB18] array];
  v51 = [MEMORY[0x277CBEB18] array];
  v52 = [MEMORY[0x277CBEB18] array];
  SymName = mlir::ODIE::Compiler::CoreML::ModuleOp::getSymName(&v56);
  v13 = EmitViewerSPI::emitStringProperty(SymName, @"sym_name", SymName, v12);
  if (v13)
  {
    [v52 addObject:v13];
  }

  v49 = v9;

  v53 = [MEMORY[0x277CBEB18] array];
  v14 = 0;
  v15 = (((v56 + 16 * ((*(v56 + 11) >> 23) & 1) + ((*(v56 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v56 + 10));
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
      goto LABEL_14;
    }

    v21 = a2[7];
    if (!*&v21)
    {
      goto LABEL_42;
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
LABEL_42:
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"body_arg%d", v14];
      v31 = EmitViewerSPI::emitNodeOutputPort(a2, v30, v20);
      goto LABEL_43;
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
        goto LABEL_42;
      }

LABEL_35:
      v28 = *v28;
      if (!v28)
      {
        goto LABEL_42;
      }
    }

    if (v28[2] != v20)
    {
      goto LABEL_35;
    }

    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"body_arg%d", v14];
    v31 = EmitViewerSPI::emitNodeInputPort(a2, v30, v20);
LABEL_43:
    v32 = v31;

    if (v32)
    {
      [v10 addObject:v32];
    }

LABEL_14:
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
  v37 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v38 = [MEMORY[0x277CBEA60] arrayWithArray:v51];
  v39 = [MEMORY[0x277CBEA60] arrayWithArray:v52];
  v40 = [MEMORY[0x277CBEA60] arrayWithArray:v53];
  v41 = [(MLViewerNodeSPI *)v36 initWithType:v49 inputs:v37 outputs:v38 properties:v39 regions:v40];
  v42 = *(this + 3);
  *(this + 3) = v41;

  if (v55 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25643B25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLModuloOpHandler *EmitterViewerSPI::COREMLModuloOpHandler::COREMLModuloOpHandler(EmitterViewerSPI::COREMLModuloOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A268;
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

void sub_25643B688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLMulOpHandler *EmitterViewerSPI::COREMLMulOpHandler::COREMLMulOpHandler(EmitterViewerSPI::COREMLMulOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A280;
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

void sub_25643BA54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLNonZeroOpHandler *EmitterViewerSPI::COREMLNonZeroOpHandler::COREMLNonZeroOpHandler(EmitterViewerSPI::COREMLNonZeroOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A298;
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

void sub_25643BDEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLNotEqualOpHandler *EmitterViewerSPI::COREMLNotEqualOpHandler::COREMLNotEqualOpHandler(EmitterViewerSPI::COREMLNotEqualOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A2B0;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"other", *(*(a3 + 9) + 56));
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

void sub_25643C1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLNotOpHandler *EmitterViewerSPI::COREMLNotOpHandler::COREMLNotOpHandler(EmitterViewerSPI::COREMLNotOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A2C8;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"x", *(*(a3 + 9) + 24));
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

void sub_25643C548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLOrOpHandler *EmitterViewerSPI::COREMLOrOpHandler::COREMLOrOpHandler(EmitterViewerSPI::COREMLOrOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A2E0;
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

void sub_25643C90C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLOutputOpHandler *EmitterViewerSPI::COREMLOutputOpHandler::COREMLOutputOpHandler(EmitterViewerSPI::COREMLOutputOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A2F8;
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
  ODSOperandIndexAndLength = mlir::ODIE::Compiler::CoreML::OutputOp::getODSOperandIndexAndLength(&v35, 0);
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

void sub_25643CCDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLPlaceholderOpHandler *EmitterViewerSPI::COREMLPlaceholderOpHandler::COREMLPlaceholderOpHandler(EmitterViewerSPI::COREMLPlaceholderOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A310;
  v4 = *(*(a3 + 6) + 8);
  v48 = a3;
  v49 = v4;
  Value = mlir::StringAttr::getValue(&v49);
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

  v47 = v6;
  if (v6)
  {
    memmove(&__dst, Value, v6);
  }

  *(&__dst + v7) = 0;
  if (v47 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v44 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x277CBEB18] array];
  ODSOperandIndexAndLength = mlir::ODIE::Compiler::CoreML::PlaceholderOp::getODSOperandIndexAndLength(&v48, 0);
  if ((*(v48 + 46) & 0x80) != 0)
  {
    v11 = *(v48 + 9);
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
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"operands%d", v34];
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

  v14 = [MEMORY[0x277CBEB18] array];
  ODSResultIndexAndLength = mlir::ODIE::Compiler::CoreML::PlaceholderOp::getODSResultIndexAndLength(&v48, 0);
  v16 = ODSResultIndexAndLength;
  if (*(v48 + 9))
  {
    NextResultAtOffset = v48 - 16;
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
    v39 = 0;
    v40 = 0;
    do
    {
      v41 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v39);
      v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"results%d", v40];
      v43 = EmitViewerSPI::emitNodeOutputPort(a2, v42, v41);

      if (v43)
      {
        [v14 addObject:v43];
      }

      v39 = (v40 + 1);
      v40 = v39;
    }

    while (v19 > v39);
  }

  v20 = [MEMORY[0x277CBEB18] array];
  Opname = mlir::ODIE::Compiler::CoreML::PlaceholderOp::getOpname(&v48);
  v23 = EmitViewerSPI::emitStringProperty(Opname, @"opname", Opname, v22);
  if (v23)
  {
    [v20 addObject:v23];
  }

  v24 = [MEMORY[0x277CBEB18] array];
  v25 = [MLViewerNodeSPI alloc];
  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  v28 = [MEMORY[0x277CBEA60] arrayWithArray:v20];
  v29 = [MEMORY[0x277CBEA60] arrayWithArray:v24];
  v30 = [(MLViewerNodeSPI *)v25 initWithType:v44 inputs:v26 outputs:v27 properties:v28 regions:v29];
  v31 = *(this + 3);
  *(this + 3) = v30;

  if (v47 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_25643D1AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLPowOpHandler *EmitterViewerSPI::COREMLPowOpHandler::COREMLPowOpHandler(EmitterViewerSPI::COREMLPowOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A328;
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

void sub_25643D5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLRangeOpHandler *EmitterViewerSPI::COREMLRangeOpHandler::COREMLRangeOpHandler(EmitterViewerSPI::COREMLRangeOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A340;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"start", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"stop", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"step", *(*(a3 + 9) + 88));
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
  v17 = EmitViewerSPI::emitNodeOutputPort(a2, @"outputs", NextResultAtOffset);
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

void sub_25643D9B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLReLUOpHandler *EmitterViewerSPI::COREMLReLUOpHandler::COREMLReLUOpHandler(EmitterViewerSPI::COREMLReLUOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A358;
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

void sub_25643DD6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLReadHandleOpHandler *EmitterViewerSPI::COREMLReadHandleOpHandler::COREMLReadHandleOpHandler(EmitterViewerSPI::COREMLReadHandleOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A370;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"handle", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"in_token", *(*(a3 + 9) + 56));
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

  if (*(a3 + 9))
  {
    v17 = a3 - 16;
  }

  else
  {
    v17 = 0;
  }

  v18 = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 1);
  v19 = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
  v20 = EmitViewerSPI::emitNodeOutputPort(a2, @"out_token", v19);
  if (v20)
  {
    [v13 addObject:v20];
  }

  v21 = [MEMORY[0x277CBEB18] array];
  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MLViewerNodeSPI alloc];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
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

void sub_25643E17C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLRealPartOpHandler *EmitterViewerSPI::COREMLRealPartOpHandler::COREMLRealPartOpHandler(EmitterViewerSPI::COREMLRealPartOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A388;
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

void sub_25643E530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLReduceMaxOpHandler *EmitterViewerSPI::COREMLReduceMaxOpHandler::COREMLReduceMaxOpHandler(EmitterViewerSPI::COREMLReduceMaxOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A3A0;
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

void sub_25643E928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLReduceMeanOpHandler *EmitterViewerSPI::COREMLReduceMeanOpHandler::COREMLReduceMeanOpHandler(EmitterViewerSPI::COREMLReduceMeanOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A3B8;
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

void sub_25643ED44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLReduceSumOpHandler *EmitterViewerSPI::COREMLReduceSumOpHandler::COREMLReduceSumOpHandler(EmitterViewerSPI::COREMLReduceSumOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A3D0;
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

void sub_25643F160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLReshapeOpHandler *EmitterViewerSPI::COREMLReshapeOpHandler::COREMLReshapeOpHandler(EmitterViewerSPI::COREMLReshapeOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A3E8;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"new_shape", *(*(a3 + 9) + 56));
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

void sub_25643F548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLReturnOpHandler *EmitterViewerSPI::COREMLReturnOpHandler::COREMLReturnOpHandler(EmitterViewerSPI::COREMLReturnOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A400;
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
  ODSOperandIndexAndLength = mlir::ODIE::Compiler::CoreML::ReturnOp::getODSOperandIndexAndLength(&v35, 0);
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

void sub_25643F918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLRsqrtOpHandler *EmitterViewerSPI::COREMLRsqrtOpHandler::COREMLRsqrtOpHandler(EmitterViewerSPI::COREMLRsqrtOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A418;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"x", *(*(a3 + 9) + 24));
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
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"outputs", NextResultAtOffset);
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

void sub_25643FCA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLScatterNdOpHandler *EmitterViewerSPI::COREMLScatterNdOpHandler::COREMLScatterNdOpHandler(EmitterViewerSPI::COREMLScatterNdOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A430;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"indices", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"updates", *(*(a3 + 9) + 88));
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

void sub_25644009C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLSelectOpHandler *EmitterViewerSPI::COREMLSelectOpHandler::COREMLSelectOpHandler(EmitterViewerSPI::COREMLSelectOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A448;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"dim", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"index", *(*(a3 + 9) + 88));
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

void sub_2564404B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLShrinkDimsOpHandler *EmitterViewerSPI::COREMLShrinkDimsOpHandler::COREMLShrinkDimsOpHandler(EmitterViewerSPI::COREMLShrinkDimsOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A460;
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

void sub_2564408A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLSigmoidOpHandler *EmitterViewerSPI::COREMLSigmoidOpHandler::COREMLSigmoidOpHandler(EmitterViewerSPI::COREMLSigmoidOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A478;
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

void sub_256440C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLSiluOpHandler *EmitterViewerSPI::COREMLSiluOpHandler::COREMLSiluOpHandler(EmitterViewerSPI::COREMLSiluOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A490;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"x", *(*(a3 + 9) + 24));
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
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"outputs", NextResultAtOffset);
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

void sub_256440FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLSinOpHandler *EmitterViewerSPI::COREMLSinOpHandler::COREMLSinOpHandler(EmitterViewerSPI::COREMLSinOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A4A8;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"x", *(*(a3 + 9) + 24));
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
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"outputs", NextResultAtOffset);
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

void sub_256441358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLSliceOpHandler *EmitterViewerSPI::COREMLSliceOpHandler::COREMLSliceOpHandler(EmitterViewerSPI::COREMLSliceOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A4C0;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"start_indices", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"end_indices", *(*(a3 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"strides", *(*(a3 + 9) + 120));
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

void sub_256441784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLSliceUpdateOpHandler *EmitterViewerSPI::COREMLSliceUpdateOpHandler::COREMLSliceUpdateOpHandler(EmitterViewerSPI::COREMLSliceUpdateOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A4D8;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"start_indices", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"end_indices", *(*(a3 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"strides", *(*(a3 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = EmitViewerSPI::emitNodeInputPort(a2, @"update", *(*(a3 + 9) + 152));
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
  v19 = EmitViewerSPI::emitNodeOutputPort(a2, @"output", NextResultAtOffset);
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

void sub_256441C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLSoftmaxOpHandler *EmitterViewerSPI::COREMLSoftmaxOpHandler::COREMLSoftmaxOpHandler(EmitterViewerSPI::COREMLSoftmaxOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A4F0;
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

void sub_256442020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLSplitOpHandler *EmitterViewerSPI::COREMLSplitOpHandler::COREMLSplitOpHandler(EmitterViewerSPI::COREMLSplitOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A508;
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

  v33 = [MEMORY[0x277CCACA8] stringWithCString:p_dst encoding:4];
  v35 = [MEMORY[0x277CBEB18] array];
  v9 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v38 + 9) + 24));
  if (v9)
  {
    [v35 addObject:v9];
  }

  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"split_size_or_sections", *(*(v38 + 9) + 56));
  if (v10)
  {
    [v35 addObject:v10];
  }

  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"dim", *(*(v38 + 9) + 88));
  if (v11)
  {
    [v35 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  ODSResultIndexAndLength = mlir::ODIE::Compiler::CoreML::SplitOp::getODSResultIndexAndLength(&v38, 0);
  v14 = ODSResultIndexAndLength;
  if (*(v38 + 9))
  {
    NextResultAtOffset = v38 - 16;
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
    v28 = 0;
    v29 = 0;
    do
    {
      v30 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v28);
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"results%d", v29];
      v32 = EmitViewerSPI::emitNodeOutputPort(a2, v31, v30);

      if (v32)
      {
        [v12 addObject:v32];
      }

      v28 = (v29 + 1);
      v29 = v28;
    }

    while (v17 > v28);
  }

  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [MEMORY[0x277CBEB18] array];
  v20 = [MLViewerNodeSPI alloc];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v35];
  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v19];
  v25 = [(MLViewerNodeSPI *)v20 initWithType:v33 inputs:v21 outputs:v22 properties:v23 regions:v24];
  v26 = *(this + 3);
  *(this + 3) = v25;

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_2564424B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLSqrtOpHandler *EmitterViewerSPI::COREMLSqrtOpHandler::COREMLSqrtOpHandler(EmitterViewerSPI::COREMLSqrtOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A520;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"x", *(*(a3 + 9) + 24));
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
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"outputs", NextResultAtOffset);
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

void sub_256442880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLStackOpHandler *EmitterViewerSPI::COREMLStackOpHandler::COREMLStackOpHandler(EmitterViewerSPI::COREMLStackOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A538;
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
  ODSOperandIndexAndLength = mlir::ODIE::Compiler::CoreML::StackOp::getODSOperandIndexAndLength(&v40, 0);
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v40 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v11)
  {
    [v9 addObject:v11];
  }

  v12 = mlir::ODIE::Compiler::CoreML::StackOp::getODSOperandIndexAndLength(&v40, 1u);
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
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"inputs%d", v31];
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
  v19 = EmitViewerSPI::emitNodeOutputPort(a2, @"output", NextResultAtOffset);
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

void sub_256442CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLSubOpHandler *EmitterViewerSPI::COREMLSubOpHandler::COREMLSubOpHandler(EmitterViewerSPI::COREMLSubOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A550;
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

void sub_2564430D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLTanhOpHandler *EmitterViewerSPI::COREMLTanhOpHandler::COREMLTanhOpHandler(EmitterViewerSPI::COREMLTanhOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A568;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"x", *(*(a3 + 9) + 24));
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
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"outputs", NextResultAtOffset);
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

void sub_256443468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLTileOpHandler *EmitterViewerSPI::COREMLTileOpHandler::COREMLTileOpHandler(EmitterViewerSPI::COREMLTileOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A580;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"dims", *(*(a3 + 9) + 56));
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

void sub_25644382C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLTransposeOpHandler *EmitterViewerSPI::COREMLTransposeOpHandler::COREMLTransposeOpHandler(EmitterViewerSPI::COREMLTransposeOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A598;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"permutation", *(*(a3 + 9) + 56));
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

void sub_256443BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLWhereOpHandler *EmitterViewerSPI::COREMLWhereOpHandler::COREMLWhereOpHandler(EmitterViewerSPI::COREMLWhereOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A5B0;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"condition", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"a", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"b", *(*(a3 + 9) + 88));
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
  v17 = EmitViewerSPI::emitNodeOutputPort(a2, @"results", NextResultAtOffset);
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

void sub_256443FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLWhileOpHandler *EmitterViewerSPI::COREMLWhileOpHandler::COREMLWhileOpHandler(EmitterViewerSPI::COREMLWhileOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A5C8;
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
  ODSOperandIndexAndLength = mlir::ODIE::Compiler::CoreML::WhileOp::getODSOperandIndexAndLength(&v102, 0);
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
  ODSResultIndexAndLength = mlir::ODIE::Compiler::CoreML::WhileOp::getODSResultIndexAndLength(&v102, 0);
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

void sub_256444A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLWriteHandleOpHandler *EmitterViewerSPI::COREMLWriteHandleOpHandler::COREMLWriteHandleOpHandler(EmitterViewerSPI::COREMLWriteHandleOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A5E0;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"handle", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"data", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"in_token", *(*(a3 + 9) + 88));
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
  v17 = EmitViewerSPI::emitNodeOutputPort(a2, @"out_token", NextResultAtOffset);
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

void sub_256444EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::COREMLYieldOpHandler *EmitterViewerSPI::COREMLYieldOpHandler::COREMLYieldOpHandler(EmitterViewerSPI::COREMLYieldOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A5F8;
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
  ODSOperandIndexAndLength = mlir::ODIE::Compiler::CoreML::YieldOp::getODSOperandIndexAndLength(&v35, 0);
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
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"args%d", v26];
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

void sub_2564452B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::CMLAXCastOpHandler *EmitterViewerSPI::CMLAXCastOpHandler::CMLAXCastOpHandler(EmitterViewerSPI::CMLAXCastOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A610;
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

void sub_25644563C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::CMLAXConstexprBlockwiseShiftScaleOpHandler *EmitterViewerSPI::CMLAXConstexprBlockwiseShiftScaleOpHandler::CMLAXConstexprBlockwiseShiftScaleOpHandler(EmitterViewerSPI::CMLAXConstexprBlockwiseShiftScaleOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_28685A628;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"data", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"scale", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"offset", *(*(a3 + 9) + 88));
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