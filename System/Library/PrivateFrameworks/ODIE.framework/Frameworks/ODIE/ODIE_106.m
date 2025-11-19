BOOL replaceSoftmax(uint64_t *a1, mlir::Operation *a2)
{
  v42[8] = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 9) + 24);
  v32 = "expected ranked tensor input to softmax";
  v34 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v32, &v27);
  if (v29 == 1)
  {
    v5 = *(*(a2 + 9) + 56);
    v6 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v5 + 8) & 0xFFFFFFFFFFFFFFF8));
    if (v6 && ((*(v7 + 24))(v7, v6), !v8))
    {
      (*(v28 + 24))(v28, v27);
      v14 = mlir::ODIE::Compiler::wrapAroundDimension(a1, v5, v13);
      v15 = *(a2 - 1);
      v16 = a1[4];
      v17 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SoftmaxOp>(*(**v16 + 32));
      v32 = v16;
      v33[0] = v17;
      v33[1] = &v34;
      v33[2] = 0x400000000;
      v35 = v37;
      v36 = 0x400000000;
      v37[4] = v38;
      v37[5] = 0x400000000;
      v38[8] = 4;
      v39 = v41;
      v40 = 0x100000000;
      v41[1] = v42;
      v41[2] = 0x100000000;
      v42[1] = 0;
      v42[2] = 0;
      v42[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v42[4] = 0;
      v42[6] = 0;
      mlir::ODIE::Compiler::CoreML::SoftmaxOp::build(a1, &v32, v15 & 0xFFFFFFFFFFFFFFF8, v4, v14);
      v18 = mlir::Operation::create(&v32);
      mlir::OpBuilder::insert(a1, v18);
      v19 = *(*(v18 + 6) + 16);
      mlir::OperationState::~OperationState(&v32);
      if (v19 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SoftmaxOp,void>::id)
      {
        v20 = v18;
      }

      else
      {
        v20 = 0;
      }

      v21 = *(a2 + 9);
      if (v21)
      {
        v22 = (a2 - 16);
      }

      else
      {
        v22 = 0;
      }

      v30[0] = v22;
      v30[1] = v21;
      v23 = *(v20 + 9);
      v24 = (v20 - 16);
      if (!v23)
      {
        v24 = 0;
      }

      v32 = v24;
      v33[0] = v23;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v30, &v32);
      if (*(a2 + 2))
      {
        *(a2 + 2) = 0;
        v26 = *a2;
        v25 = *(a2 + 1);
        *v25 = *a2;
        *(v26 + 8) = v25;
        *a2 = 0;
        *(a2 + 1) = 0;
      }

      mlir::Operation::destroy(a2);
      v10 = 1;
    }

    else
    {
      v9 = *(a2 + 3);
      v31 = 257;
      emitDiag(v9, 2, v30, &v32);
      if (v32)
      {
        mlir::Diagnostic::operator<<<42ul>(v33, "expected 0-D tensor for softmax dimension");
      }

      v10 = (v39 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v32);
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t replaceWithInputOrCast(uint64_t *a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v4 = *(a2 + 68);
    if (v4 == *(a2 + 36))
    {
      v28 = *(a2 + 72);
      *&v29 = v28;
      *(&v29 + 1) = v4;
      v5 = (a2 - 16);
      v6 = (a2 - 16);
      if (v4)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!*(a2 + 36))
  {
    v4 = 0;
    v28 = 0u;
    v29 = 0u;
    v5 = (a2 - 16);
LABEL_4:
    v6 = 0;
LABEL_5:
    v23 = v6;
    v24 = 0;
    v25 = v6;
    v26 = v4;
    v7 = mlir::ValueTypeRange<mlir::OperandRange>::operator==<mlir::ValueTypeRange<mlir::ResultRange>>(&v28, &v23);
    if (v7)
    {
      v8 = replaceWithInput(v7, a2);
    }

    else
    {
      v9 = *(a2 + 36);
      if (v9)
      {
        v10 = v5;
      }

      else
      {
        v10 = 0;
      }

      v28 = v10;
      *&v29 = v10;
      *(&v29 + 1) = v9;
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v11 = *(a2 + 72);
        v12 = *(a2 + 68);
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      v23 = v11;
      v24 = v12;
      v13 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::OperandRange>(a1, a1[4], &v28, &v23);
      v14 = *(a2 + 36);
      if (v14)
      {
        v15 = v5;
      }

      else
      {
        v15 = 0;
      }

      v23 = v15;
      v24 = v14;
      v16 = *(v13 + 9);
      v17 = v13 - 16;
      if (!v16)
      {
        v17 = 0;
      }

      *&v28 = v17;
      *(&v28 + 1) = v16;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v23, &v28);
      if (*(a2 + 16))
      {
        *(a2 + 16) = 0;
        v19 = *a2;
        v18 = *(a2 + 8);
        *v18 = *a2;
        *(v19 + 8) = v18;
        *a2 = 0;
        *(a2 + 8) = 0;
      }

      mlir::Operation::destroy(a2);
      v8 = 1;
    }

    goto LABEL_24;
  }

  v20 = *(a2 + 24);
  v27 = 257;
  emitDiag(v20, 2, &v23, &v28);
  if (v28)
  {
    mlir::Diagnostic::operator<<<89ul>(&v28 + 8, "cannot replace an op with its operands if the number of operands and results don't match");
  }

  v8 = (v30 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
LABEL_24:
  v21 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL replaceYield(mlir::OpBuilder *a1, uint64_t *a2)
{
  v34[8] = *MEMORY[0x277D85DE8];
  if (*(a2 + 9))
  {
    v3 = a2[3];
    *&v21[0] = "expect 0 results for Yield op";
    v22 = 259;
    emitDiag(v3, 2, v21, &v24);
    v4 = (v31 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
  }

  else
  {
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v6 = *(a2 + 17);
      v7 = a2[9] & 0xFFFFFFFFFFFFFFF9 | 2;
    }

    else
    {
      v6 = 0;
      v7 = 2;
    }

    v8 = *(a1 + 4);
    v9 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::YieldOp>(a1, *(**v8 + 32));
    v24 = v8;
    v25 = v9;
    v26 = v28;
    v27 = 0x400000000;
    v28[4] = v29;
    v28[5] = 0x400000000;
    v29[4] = v30;
    v29[5] = 0x400000000;
    v30[8] = 4;
    v31 = v33;
    v32 = 0x100000000;
    v33[1] = v34;
    v33[2] = 0x100000000;
    v34[1] = 0;
    v34[2] = 0;
    v34[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v34[4] = 0;
    v34[6] = 0;
    memset(v21, 0, sizeof(v21));
    mlir::TypeRange::TypeRange<mlir::ResultRange>(v23, v21);
    mlir::ODIE::Compiler::CoreML::YieldOp::build(a1, &v24, v23[0], v23[1], v7, v6, 0, 0);
    v10 = mlir::Operation::create(&v24);
    mlir::OpBuilder::insert(a1, v10);
    v11 = *(*(v10 + 6) + 16);
    mlir::OperationState::~OperationState(&v24);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::YieldOp,void>::id)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v13 = *(a2 + 9);
    if (v13)
    {
      v14 = a2 - 2;
    }

    else
    {
      v14 = 0;
    }

    *&v21[0] = v14;
    *(&v21[0] + 1) = v13;
    v15 = *(v12 + 9);
    v16 = (v12 - 16);
    if (!v15)
    {
      v16 = 0;
    }

    v24 = v16;
    v25 = v15;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v21, &v24);
    if (a2[2])
    {
      a2[2] = 0;
      v18 = *a2;
      v17 = a2[1];
      *v17 = *a2;
      *(v18 + 8) = v17;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v4 = 1;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v4;
}

unint64_t getAbsOps(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a4;
  v41 = 1283;
  v37 = "expected ranked tensor inputs to ";
  v39 = a2;
  v40 = a3;
  mlir::ODIE::Compiler::getShapedRankedType(v8, &v37, v42);
  if (v43 != 1)
  {
    return 0;
  }

  LODWORD(v37) = 0;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v37, 1, 0);
  GreaterOrEqualOps = mlir::ODIE::Compiler::getGreaterOrEqualOps(a1, *a4, Tensor);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = GreaterOrEqualOps;
  v13 = mlir::ODIE::Compiler::negateValue(a1, GreaterOrEqualOps);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = v13;
  TensorConstantWithSameTypeAs = mlir::ODIE::Compiler::createTensorConstantWithSameTypeAsOther<int>(a1, 1, *a4);
  v34 = v16;
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v31 = mlir::ODIE::Compiler::createTensorConstantWithSameTypeAsOther<int>(a1, -1, *a4);
  v32 = v17;
  if (v17 & 1) != 0 && (v37 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, v12, *a4), v38 = v18, (v18) && (v35 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, v15, *a4), v36 = v19, (v19))
  {
    v30 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, a1[4], v42, &v37, &TensorConstantWithSameTypeAs);
    v29 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, a1[4], v42, &v35, &v31);
    v28 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::MulOp &,mlir::ODIE::Compiler::CoreML::MulOp &>(a1, a1[4], v42, &v30, &v29);
    v20 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::ShapedType &,mlir::Value const&,mlir::ODIE::Compiler::CoreML::AddOp &>(a1, a1[4], v42, a4, &v28) - 16;
    v21 = *a5;
    v22 = (*(a5[1] + 8))();
    v23 = mlir::ODIE::Compiler::castValueToElementType(a1, v20, v22);
    if (v24)
    {
      v25 = v23 & 0xFFFFFFFFFFFFFF00;
    }

    else
    {
      v25 = 0;
    }

    if (v24)
    {
      v26 = v23;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  return v25 | v26;
}

unint64_t mlir::ODIE::Compiler::createTensorConstantWithSameTypeAsOther<int>(uint64_t *a1, int a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  LODWORD(v13[0]) = a2;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v13, 1, 0);
  v6 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, Tensor, a3);
  if (v7)
  {
    v12[0] = v6;
    v12[1] = a3;
    mlir::ODIE::Compiler::getBroadcastedValues(v12, 2uLL, a1, v13);
    if (v14[48] == 1)
    {
      v8 = *v13[0] & 0xFFFFFFFFFFFFFF00;
      v9 = *v13[0];
      if (v13[0] != v14)
      {
        free(v13[0]);
      }
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    result = v9 | v8;
  }

  else
  {
    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::MulOp &,mlir::ODIE::Compiler::CoreML::MulOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AddOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::AddOp::build(a1, v15, *a3, *a4 - 16, *a5 - 16);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::ShapedType &,mlir::Value const&,mlir::ODIE::Compiler::CoreML::AddOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MulOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::MulOp::build(a1, v15, *a3, *a4, *a5 - 16);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id)
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

unint64_t getPromotedType(uint64_t *a1, uint64_t *a2)
{
  v3 = a1;
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id && (PromotedType = getPromotedType(a1[1], a2[1]), (v8 & 1) != 0))
    {
      v9 = a2 & 0xFFFFFFFFFFFFFF00;
      if (PromotedType == v3[1])
      {
        v9 = v3 & 0xFFFFFFFFFFFFFF00;
      }

      else
      {
        LOBYTE(v3) = a2;
      }
    }

    else
    {
      LOBYTE(v3) = 0;
      v9 = 0;
    }
  }

  else
  {
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a1);
    if (v4)
    {
      v6 = (*(v5 + 8))(v5, v4);
    }

    else
    {
      v6 = v3;
    }

    v24 = v6;
    v10 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a2);
    if (v10)
    {
      v12 = (*(v11 + 8))(v11, v10);
    }

    else
    {
      v12 = a2;
    }

    v23 = v12;
    v13 = *v6;
    v14 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v13 + 8, v14) || (v15 = *v12, v16 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(), mlir::detail::InterfaceMap::lookup(v15 + 8, v16)))
    {
      v17 = *v6;
      v18 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
      if (mlir::detail::InterfaceMap::lookup(v17 + 8, v18) || (v20 = *v12, v21 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(), !mlir::detail::InterfaceMap::lookup(v20 + 8, v21)))
      {
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v24);
        if (IntOrFloatBitWidth <= mlir::Type::getIntOrFloatBitWidth(&v23))
        {
          v3 = a2;
        }
      }

      else
      {
        v3 = a2;
      }
    }

    v9 = v3 & 0xFFFFFFFFFFFFFF00;
  }

  return v9 | v3;
}

void *mlir::InFlightDiagnostic::append<llvm::StringRef const&>(void *a1, void *a2)
{
  if (*a1)
  {
    v6 = 261;
    v3 = a2[1];
    v5[0] = *a2;
    v5[1] = v3;
    mlir::Diagnostic::operator<<((a1 + 1), v5);
  }

  return a1;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AddOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v8;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
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
  mlir::ODIE::Compiler::CoreML::AddOp::build(a1, v13, *a3, *a4);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t insertMatmul(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v63[8] = *MEMORY[0x277D85DE8];
  *&v54 = "expected matmul lhs input to be shaped + ranked";
  v57 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(a2, &v54, &v51);
  if ((v53[0] & 1) == 0 || (v6 = v51, v7 = v52, *&v54 = "expected matmul rhs input to be shaped + ranked", v57 = 259, mlir::ODIE::Compiler::getShapedRankedType(a3, &v54, &v51), (v53[0] & 1) == 0))
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v8 = v51;
  v9 = v52;
  (*(v7 + 24))(v7, v6);
  v11 = v10;
  (*(v9 + 24))(v9, v8);
  if (v12 != v11)
  {
    v31 = *(a1 + 4);
    v57 = 257;
    emitDiag(v31, 2, &v54, &v51);
    if (v51)
    {
      mlir::Diagnostic::operator<<<46ul>(&v52, "rank did not match between matmul lhs and rhs");
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&v54, &v51);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v51);
    if ((~*(a2 + 8) & 7) != 0)
    {
      v32 = a2;
    }

    else
    {
      v32 = 0;
    }

    if (!v32)
    {
      goto LABEL_26;
    }

    v33 = *(v32 + 8) & 7;
    if (v33 == 6)
    {
      v34 = v32 + 24 * *(v32 + 16) + 120;
      if (!v34)
      {
LABEL_26:
        v35 = (a2 + 32);
        goto LABEL_29;
      }
    }

    else
    {
      v34 = v32 + 16 * v33 + 16;
    }

    v35 = (v34 + 24);
LABEL_29:
    mlir::Diagnostic::attachNote(&v54 + 1, *v35, 1);
  }

  v46 = a1;
  v47 = a2;
  v48 = a3;
  v50 = 0;
  (*(v7 + 24))(v7, v6);
  if (v13 >= 3)
  {
    v14 = 0;
    v15 = v13 - 2;
    while (1)
    {
      if (*((*(v7 + 24))(v7, v6) + 8 * v14) != 0x8000000000000000 && *((*(v9 + 24))(v9, v8) + 8 * v14) != 0x8000000000000000)
      {
        v16 = *((*(v7 + 24))(v7, v6) + 8 * v14);
        if (v16 != *((*(v9 + 24))(v9, v8) + 8 * v14))
        {
          break;
        }
      }

      v50 = ++v14;
      if (v15 == v14)
      {
        goto LABEL_10;
      }
    }

    v41 = *(v46 + 4);
    v57 = 257;
    emitDiag(v41, 2, &v54, &v51);
    if (v51)
    {
      mlir::Diagnostic::operator<<<11ul>(&v52, "dimension ");
    }

    v42 = mlir::InFlightDiagnostic::operator<<<long long &>(&v51, &v50);
    v43 = v42;
    if (*v42)
    {
      mlir::Diagnostic::operator<<<42ul>((v42 + 1), " did not match between matmul lhs and rhs");
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&v54, v43);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v51);
    if ((~*(a2 + 8) & 7) != 0)
    {
      v37 = a2;
    }

    else
    {
      v37 = 0;
    }

    if (!v37)
    {
      goto LABEL_49;
    }

    v38 = *(v37 + 8) & 7;
    if (v38 == 6)
    {
      v39 = v37 + 24 * *(v37 + 16) + 120;
      if (!v39)
      {
LABEL_49:
        v40 = (a2 + 32);
        goto LABEL_52;
      }

LABEL_51:
      v40 = (v39 + 24);
LABEL_52:
      mlir::Diagnostic::attachNote(&v54 + 1, *v40, 1);
    }

LABEL_50:
    v39 = v37 + 16 * v38 + 16;
    goto LABEL_51;
  }

LABEL_10:
  if (*((*(v7 + 24))(v7, v6) + 8 * (v11 - 1)) != 0x8000000000000000 && *((*(v9 + 24))(v9, v8) + 8 * (v11 - 2)) != 0x8000000000000000)
  {
    v17 = *((*(v7 + 24))(v7, v6) + 8 * (v11 - 1));
    if (v17 != *((*(v9 + 24))(v9, v8) + 8 * (v11 - 2)))
    {
      v36 = *(v46 + 4);
      v57 = 257;
      emitDiag(v36, 2, &v54, &v51);
      if (v51)
      {
        mlir::Diagnostic::operator<<<79ul>(&v52, "expected last dimension of matmul lhs to match second-to-last dimension of rhs");
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(&v54, &v51);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v51);
      if ((~*(a2 + 8) & 7) != 0)
      {
        v37 = a2;
      }

      else
      {
        v37 = 0;
      }

      if (v37)
      {
        v38 = *(v37 + 8) & 7;
        if (v38 != 6)
        {
          goto LABEL_50;
        }

        v39 = v37 + 24 * *(v37 + 16) + 120;
        if (v39)
        {
          goto LABEL_51;
        }
      }

      v40 = (a2 + 32);
      goto LABEL_52;
    }
  }

  v18 = (*(v7 + 24))(v7, v6);
  v51 = v53;
  v52 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v51, v18, &v18[8 * v19]);
  (*(v9 + 24))(v9, v8);
  v21 = *((*(v9 + 24))(v9, v8) + 8 * (v20 - 1));
  v22 = v51;
  v23 = v52;
  *(v51 + v52 - 1) = v21;
  v24 = (*(v7 + 8))(v7, v6);
  *&v54 = v22;
  *(&v54 + 1) = v23;
  v49 = 0;
  v50 = v24;
  v25 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v24 + 32), &v54, &v50, &v49);
  v26 = *(v46 + 4);
  v27 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>(v46, *(**v26 + 32));
  *&v54 = v26;
  *(&v54 + 1) = v27;
  v55 = &v57;
  v56 = 0x400000000;
  v58 = v60;
  v59 = 0x400000000;
  v60[4] = v61;
  v60[5] = 0x400000000;
  v61[8] = 4;
  v61[9] = v62;
  v61[10] = 0x100000000;
  v62[1] = v63;
  v62[2] = 0x100000000;
  v63[1] = 0;
  v63[2] = 0;
  v63[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v63[4] = 0;
  v63[6] = 0;
  mlir::ODIE::Compiler::CoreML::BatchMatmulOp::build(v46, &v54, v25, v47, v48);
  v28 = mlir::Operation::create(&v54);
  mlir::OpBuilder::insert(v46, v28);
  v29 = *(*(v28 + 6) + 16);
  v30 = (v28 - 16);
  mlir::OperationState::~OperationState(&v54);
  if (v29 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,void>::id)
  {
    v30 = -16;
  }

  if (v51 != v53)
  {
    free(v51);
  }

  v44 = *MEMORY[0x277D85DE8];
  return v30;
}

char *getAxesForTotalReduction(uint64_t *a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = "Expect input to be a ranked tensor type for torch.any";
  v20[8] = 259;
  mlir::ODIE::Compiler::getShapedRankedType(a2, &v18, &v15);
  if (v17 == 1)
  {
    v4 = v15;
    v3 = v16;
    (*(v16 + 24))(v16, v15);
    v18 = v20;
    v19 = 0xC00000000;
    llvm::SmallVectorImpl<int>::resizeImpl<false>(&v18, v5);
    (*(v3 + 24))(v3, v4);
    v7 = v6;
    v8 = v18;
    if (v7 >= 1)
    {
      v9 = 0;
      do
      {
        *&v8[4 * v9] = v9;
        ++v9;
        (*(v3 + 24))(v3, v4);
        v11 = v10;
        v8 = v18;
      }

      while (v11 > v9);
    }

    v12 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v8, v19);
    if (v18 != v20)
    {
      free(v18);
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

BOOL replaceAnyImpl(uint64_t *a1, uint64_t *a2, uint64_t a3, char *a4, uint64_t a5)
{
  v73[8] = *MEMORY[0x277D85DE8];
  v58 = a4;
  v9 = (a2 - 2);
  if (*(a2 + 9))
  {
    v10 = a2 - 2;
  }

  else
  {
    v10 = 0;
  }

  v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((v10[1] & 0xFFFFFFFFFFFFFFF8));
  v13 = v12;
  v14 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(a3 + 8) & 0xFFFFFFFFFFFFFFF8));
  v16 = v15;
  v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(a4 + 1) & 0xFFFFFFFFFFFFFFF8));
  if (v14)
  {
    v19 = v11 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19 || v17 == 0)
  {
    v21 = a2[3];
    v62 = 257;
    emitDiag(v21, 2, v61, &v64);
    if (v64)
    {
      mlir::Diagnostic::operator<<<69ul>(&v64 + 8, "Expect ranked tensor types for all inputs and output of torch.any op");
    }

    goto LABEL_39;
  }

  v22 = v17;
  v23 = v18;
  (*(v18 + 24))(v18, v17);
  if (v24 >= 2)
  {
    v25 = a2[3];
    v62 = 257;
    emitDiag(v25, 2, v61, &v64);
    if (v64)
    {
      mlir::Diagnostic::operator<<<32ul>(&v64 + 8, "Expect axes rank to be 0D or 1D");
    }

LABEL_39:
    v51 = (v70 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v64);
    goto LABEL_40;
  }

  if (!v24)
  {
    LODWORD(v64) = 1;
    v57 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, &v64, 1);
    v63 = 1;
    v26 = (*(v23 + 8))(v23, v22);
    *&v64 = &v63;
    *(&v64 + 1) = 1;
    v61[0] = v26;
    v59[0] = 0;
    *&v64 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v26 + 32), &v64, v61, v59);
    v58 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, a1[4], &v64, &v58, &v57) - 16;
  }

  v27 = (*(v16 + 8))(v16, v14);
  if (*(*v27 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v27[2] & 0x3FFFFFFF) != 1)
  {
    ComparisonWithZero = mlir::ODIE::Compiler::getComparisonWithZero(a1, a3);
    if ((v29 & 1) == 0)
    {
      v52 = a2[3];
      v62 = 257;
      emitDiag(v52, 2, v61, &v64);
      if (v64)
      {
        mlir::Diagnostic::operator<<<41ul>(&v64 + 8, "unable to compare input tensor with zero");
      }

      goto LABEL_39;
    }

    a3 = ComparisonWithZero;
  }

  v30 = (*(v13 + 24))(v13, v11);
  v32 = v31;
  v33 = mlir::IntegerType::get(*(**a2[3] + 32), 1, 0);
  *&v64 = v30;
  *(&v64 + 1) = v32;
  v61[0] = v33;
  v59[0] = 0;
  v34 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v33 + 32), &v64, v61, v59);
  v35 = a1;
  v36 = a1[4];
  v37 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AnyOp,void>::id, *(**v36 + 32));
  if ((v38 & 1) == 0)
  {
    v62 = 1283;
    v61[2] = "coreml.any";
    v61[3] = 10;
    v60 = 259;
    llvm::operator+(v61, v59, &v64);
    llvm::report_fatal_error(&v64, 1);
  }

  *&v64 = v36;
  *(&v64 + 1) = v37;
  v65 = v67;
  v66 = 0x400000000;
  v67[4] = v68;
  v67[5] = 0x400000000;
  v68[4] = v69;
  v68[5] = 0x400000000;
  v69[8] = 4;
  v70 = v72;
  v71 = 0x100000000;
  v72[1] = v73;
  v72[2] = 0x100000000;
  v73[1] = 0;
  v73[2] = 0;
  v73[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v73[4] = 0;
  v73[6] = 0;
  mlir::ODIE::Compiler::CoreML::AnyOp::build(a1, &v64, v34, a3, v58, a5);
  v39 = mlir::Operation::create(&v64);
  mlir::OpBuilder::insert(v35, v39);
  v40 = *(*(v39 + 6) + 16);
  mlir::OperationState::~OperationState(&v64);
  if (v40 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AnyOp,void>::id)
  {
    v41 = v39;
  }

  else
  {
    v41 = 0;
  }

  v42 = (v41 - 16);
  v59[0] = (v41 - 16);
  v43 = (*(v16 + 8))(v16, v14);
  if (*(*v43 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v43[2] == -2147483640)
  {
    v44 = (*(v16 + 8))(v16, v14);
    v45 = mlir::ODIE::Compiler::castValueToElementType(v35, v42, v44);
    if ((v46 & 1) == 0)
    {
      v55 = a2[3];
      v62 = 257;
      emitDiag(v55, 2, v61, &v64);
      if (v64)
      {
        mlir::Diagnostic::operator<<<33ul>(&v64 + 8, "Unable to cast result to u8 type");
      }

      goto LABEL_39;
    }

    v59[0] = v45;
  }

  v47 = *(a2 + 9);
  if (v47)
  {
    v48 = v9;
  }

  else
  {
    v48 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v48, v47, v59, 1);
  if (a2[2])
  {
    a2[2] = 0;
    v50 = *a2;
    v49 = a2[1];
    *v49 = *a2;
    *(v50 + 8) = v49;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  v51 = 1;
LABEL_40:
  v53 = *MEMORY[0x277D85DE8];
  return v51;
}

unint64_t getTupleAs1DIntTensor(uint64_t a1, void **a2)
{
  v2 = a2;
  v32 = *MEMORY[0x277D85DE8];
  getTupleAsInts(&v28, a1, a2[4]);
  if (v31 == 1)
  {
    v24 = v29;
    v4 = mlir::IntegerType::get(*v2, 32, 1);
    *&v25 = &v24;
    *(&v25 + 1) = 1;
    v19[0] = v4;
    v21 = 0;
    v19[0] = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v4 + 32), &v25, v19, &v21);
    v5 = mlir::TensorType::operator mlir::ShapedType(v19);
    *&v25 = mlir::DenseIntOrFPElementsAttr::getRaw(v5, v6, v28, 4 * v29);
    v7 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(v2, *(v2 + 4), &v25);
    if (*(v7 + 9))
    {
      v2 = (v7 - 16);
    }

    else
    {
      v2 = 0;
    }

    v8 = v2 & 0xFFFFFFFFFFFFFF00;
    goto LABEL_19;
  }

  getTupleAsValues(&v25, a1, *(v2 + 4));
  if (v27 != 1)
  {
    goto LABEL_15;
  }

  if (DWORD2(v25))
  {
    v9 = v25;
    v10 = 8 * DWORD2(v25);
    while (1)
    {
      v11 = *v9;
      v19[0] = "Expect element in tuple to be a shaped, ranked type";
      v20 = 259;
      mlir::ODIE::Compiler::getShapedRankedType(v11, v19, &v21);
      if (v23 != 1)
      {
        break;
      }

      v13 = v21;
      v12 = v22;
      (*(v22 + 24))(v22, v21);
      if (v14)
      {
        break;
      }

      v15 = (*(v12 + 8))(v12, v13);
      if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v15[2] & 0x3FFFFFFF) != 0x20)
      {
        break;
      }

      ++v9;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_14;
      }
    }

LABEL_15:
    LOBYTE(v2) = 0;
    v8 = 0;
    goto LABEL_16;
  }

LABEL_14:
  LODWORD(v21) = 0;
  v19[0] = mlir::ODIE::Compiler::createTensorConstant<int>(v2, &v21, 1, 0);
  v16 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::Value &,llvm::SmallVector<mlir::Value,6u> &>(v2, *(v2 + 4), v19, &v25);
  LOBYTE(v2) = v16 - 16;
  v8 = (v16 - 16) & 0xFFFFFFFFFFFFFF00;
LABEL_16:
  if (v27 == 1 && v25 != &v26)
  {
    free(v25);
  }

LABEL_19:
  if (v31 == 1 && v28 != &v30)
  {
    free(v28);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v8 | v2;
}

void getTupleAsInts(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  getTupleAsValues(&v27, a2, a3);
  if (v30 == 1)
  {
    v24 = v26;
    v25 = 0xC00000000;
    if (v28)
    {
      v4 = v27;
      v5 = v27 + 8 * v28;
      do
      {
        v6 = *v4;
        v20 = 0;
        v21 = &v20;
        if ((~*(v6 + 8) & 7) == 0)
        {
          v6 = 0;
        }

        if (!v6)
        {
          goto LABEL_24;
        }

        v7 = *(v6 + 8) & 7;
        if (v7 == 6)
        {
          v8 = v6 + 24 * *(v6 + 16);
          v9 = v8 + 120;
          if (v8 == -120)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v9 = v6 + 16 * v7 + 16;
        }

        if (!mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v21, v9))
        {
          goto LABEL_24;
        }

        v10 = *(v20 + 8);
        v11 = (*(*(v20 + 16) + 24))();
        if (v12)
        {
          v13 = 8 * v12;
          v14 = 1;
          do
          {
            v15 = *v11++;
            v14 *= v15;
            v13 -= 8;
          }

          while (v13);
          if (v14 != 1)
          {
            goto LABEL_24;
          }
        }

        v16 = *(v20 + 8);
        v21 = (*(*(v20 + 16) + 8))();
        if (mlir::Type::getIntOrFloatBitWidth(&v21) != 32)
        {
LABEL_24:
          *a1 = 0;
          *(a1 + 64) = 0;
          goto LABEL_27;
        }

        mlir::DenseElementsAttr::tryGetValues<int,void>(&v20, &v21);
        if (v22)
        {
          v17 = 0;
        }

        else
        {
          v17 = v23;
        }

        llvm::SmallVectorTemplateBase<int,true>::push_back(&v24, *(v21 + v17));
        ++v4;
      }

      while (v4 != v5);
      v18 = v25;
      *a1 = a1 + 16;
      *(a1 + 8) = 0xC00000000;
      if (v18)
      {
        llvm::SmallVectorImpl<int>::operator=(a1, &v24);
      }
    }

    else
    {
      *a1 = a1 + 16;
      *(a1 + 8) = 0xC00000000;
    }

    *(a1 + 64) = 1;
LABEL_27:
    if (v24 != v26)
    {
      free(v24);
    }

    if ((v30 & 1) != 0 && v27 != &v29)
    {
      free(v27);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 64) = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
}

void getTupleAsValues(uint64_t a1, uint64_t a2, void *a3)
{
  v11[24] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v5 = *(a2 + 72);
      v6 = *(a2 + 68);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    v9 = v11;
    v10 = 0x600000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v9, v5, 0, v5, v6);
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    if (v10)
    {
      llvm::SmallVectorImpl<mlir::Value>::operator=(a1, &v9);
    }

    *(a1 + 64) = 1;
    if (v9 != v11)
    {
      free(v9);
    }
  }

  else
  {
    v8[16] = 257;
    emitDiag(a3, 2, v8, &v9);
    if (v9)
    {
      mlir::Diagnostic::operator<<<55ul>(&v10, "cannot convert a tuple of unknown origin into a tensor");
    }

    *a1 = 0;
    *(a1 + 64) = 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  }

  v7 = *MEMORY[0x277D85DE8];
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::Value &,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConcatOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v8;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
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
  mlir::ODIE::Compiler::CoreML::ConcatOp::build(a1, v13, *a3, *a4 & 0xFFFFFFFFFFFFFFF9, *(a4 + 8));
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConcatOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t replaceRange(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v47[8] = *MEMORY[0x277D85DE8];
  v8 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = *v8;
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v11 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(v11 + 8))(v11, v8);
  v13 = (*(a4 + 8))(a4, a3);
  PromotedType = getPromotedType(v12, v13);
  if (v15)
  {
    v16 = PromotedType;
    if (v12 != PromotedType)
    {
      v17 = *a1;
      *&v38 = (*(v11 + 24))(v11, v8);
      *(&v38 + 1) = v18;
      v34 = v16;
      v37 = 0;
      v19 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v16 + 32), &v38, &v34, &v37);
      v20 = *(v17 + 4);
      v21 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CastOp>(v17, *(**v20 + 32));
      *&v38 = v20;
      *(&v38 + 1) = v21;
      v39 = &v41;
      v40 = 0x400000000;
      v42 = v44;
      v43 = 0x400000000;
      v44[4] = v45;
      v44[5] = 0x400000000;
      v45[8] = 4;
      v45[9] = v46;
      v45[10] = 0x100000000;
      v46[1] = v47;
      v46[2] = 0x100000000;
      v47[1] = 0;
      v47[2] = 0;
      v47[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v47[4] = 0;
      v47[6] = 0;
      mlir::ODIE::Compiler::CoreML::CastOp::build(v17, &v38, v19, v6);
      v22 = mlir::Operation::create(&v38);
      mlir::OpBuilder::insert(v17, v22);
      v23 = *(*(v22 + 6) + 16);
      v6 = (v22 - 16);
      mlir::OperationState::~OperationState(&v38);
      if (v23 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
      {
        v6 = -16;
      }
    }
  }

  else
  {
    v24 = **(a1 + 8);
    v36 = 257;
    emitDiag(v24, 2, &v34, &v38);
    if (v38)
    {
      mlir::Diagnostic::operator<<<37ul>(&v38 + 8, "Unable to get promoted type between ");
      if (v38)
      {
        LODWORD(v34) = 4;
        v35 = v12;
        v25 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v40, &v34, 1);
        v26 = v40 + 24 * v41;
        v27 = *v25;
        *(v26 + 16) = *(v25 + 16);
        *v26 = v27;
        ++v41;
        if (v38)
        {
          mlir::Diagnostic::operator<<<6ul>(&v38 + 8, " and ");
        }
      }
    }

    v28 = (*(a4 + 8))(a4, a3);
    if (v38)
    {
      LODWORD(v34) = 4;
      v35 = v28;
      v29 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v40, &v34, 1);
      v30 = v40 + 24 * v41;
      v31 = *v29;
      *(v30 + 16) = *(v29 + 16);
      *v30 = v31;
      ++v41;
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
    v6 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v6;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::RangeOp,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::RangeOp>(a1, *(**a2 + 32));
  v17[0] = a2;
  v17[1] = v12;
  v17[2] = v18;
  v17[3] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  mlir::ODIE::Compiler::CoreML::RangeOp::build(a1, v17, *a3, *a4, *a5, *a6);
  v13 = mlir::Operation::create(v17);
  mlir::OpBuilder::insert(a1, v13);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RangeOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t validatePoolingOpInput(uint64_t a1, const void **a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 46) & 0x80) != 0 && (*(a1 + 68) - 8) > 0xFFFFFFF9)
  {
    v5 = *(*(a1 + 72) + 24);
    if (*(a2 + 23) >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = a2[1];
    }

    std::string::basic_string[abi:nn200100](__p, v6 + 37);
    if (v12 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if (v6)
    {
      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      memmove(v7, v8, v6);
    }

    strcpy(v7 + v6, " expects shaped tensor type for input");
    v17[12] = 260;
    v16 = __p;
    mlir::ODIE::Compiler::getShapedRankedType(v5, &v16, v13);
    v4 = v14;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v3 = *(a1 + 24);
    v15 = 257;
    emitDiag(v3, 2, v13, &v16);
    if (v16)
    {
      v15 = 260;
      v13[0] = a2;
      mlir::Diagnostic::operator<<(v17, v13);
      if (v16)
      {
        mlir::Diagnostic::operator<<<34ul>(v17, " expects between 2 and 7 operands");
      }
    }

    v4 = (v18 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

void getPoolingOpKernelStridePadding(uint64_t a1, void **a2, uint64_t a3, unsigned int a4, void *a5)
{
  v37[25] = *MEMORY[0x277D85DE8];
  v10 = *(*(a3 + 72) + 56);
  if ((~*(v10 + 8) & 7) == 0)
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = *(v10 + 8) & 7;
    if (v11 == 6)
    {
      v12 = v10 + 24 * *(v10 + 16) + 120;
    }

    else
    {
      v12 = v10 + 16 * v11 + 16;
    }
  }

  else
  {
    v12 = 0;
  }

  TupleAs1DIntTensor = getTupleAs1DIntTensor(v12, a2);
  v15 = v14;
  if (v14)
  {
    v16 = TupleAs1DIntTensor;
    mlir::ODIE::Compiler::extract1DIntVector<int>(TupleAs1DIntTensor, &v31);
    if ((v35 & 1) == 0)
    {
      v24 = *(a3 + 24);
      v30 = 257;
      emitDiag(v24, 2, v29, &v36);
      if (v36)
      {
        v30 = 260;
        v29[0] = a5;
        mlir::Diagnostic::operator<<(v37, v29);
        if (v36)
        {
          mlir::Diagnostic::operator<<<42ul>(v37, " - kernel size is expected to be constant");
        }
      }

      goto LABEL_27;
    }

    TensorFromOptionalTuple = getTensorFromOptionalTuple(a4, a2, a3, 2, v31, v32);
    v19 = v18;
    if (v18)
    {
      v20 = TensorFromOptionalTuple;
      v36 = 0;
      v21 = getTensorFromOptionalTuple(a4, a2, a3, 3, &v36, 2);
      if (v22)
      {
        *a1 = v16;
        *(a1 + 8) = v15;
        *(a1 + 16) = v20;
        *(a1 + 24) = v19;
        *(a1 + 32) = v21;
        *(a1 + 40) = v22;
        *(a1 + 48) = 1;
LABEL_28:
        if (v35 == 1 && v31 != &v33)
        {
          free(v31);
        }

        goto LABEL_31;
      }

      v27 = *(a3 + 24);
      v30 = 257;
      emitDiag(v27, 2, v29, &v36);
      if (!v36 || (v30 = 260, v29[0] = a5, mlir::Diagnostic::operator<<(v37, v29), !v36))
      {
LABEL_27:
        *a1 = 0;
        *(a1 + 48) = 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v36);
        goto LABEL_28;
      }

      v26 = " - failed to construct padding";
    }

    else
    {
      v25 = *(a3 + 24);
      v30 = 257;
      emitDiag(v25, 2, v29, &v36);
      if (!v36)
      {
        goto LABEL_27;
      }

      v30 = 260;
      v29[0] = a5;
      mlir::Diagnostic::operator<<(v37, v29);
      if (!v36)
      {
        goto LABEL_27;
      }

      v26 = " - failed to construct strides";
    }

    mlir::Diagnostic::operator<<<31ul>(v37, v26);
    goto LABEL_27;
  }

  v23 = *(a3 + 24);
  v34 = 257;
  emitDiag(v23, 2, &v31, &v36);
  if (v36)
  {
    v34 = 260;
    v31 = a5;
    mlir::Diagnostic::operator<<(v37, &v31);
    if (v36)
    {
      mlir::Diagnostic::operator<<<39ul>(v37, " - unable to parse kernel size operand");
    }
  }

  *a1 = 0;
  *(a1 + 48) = 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v36);
LABEL_31:
  v28 = *MEMORY[0x277D85DE8];
}

char *getBooleanFromOptionalTensor(unsigned int a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1 <= a4)
  {
    v14[0] = a5;
    Tensor = mlir::ODIE::Compiler::createTensorConstant<BOOL>(a2, v14, 1);
  }

  else
  {
    Tensor = *(*(a3 + 72) + 32 * a4 + 24);
    v7 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(Tensor + 1) & 0xFFFFFFFFFFFFFFF8));
    if (!v7 || ((*(v8 + 24))(v8, v7), v9))
    {
      v10 = *(a3 + 24);
      v13[16] = 257;
      emitDiag(v10, 2, v13, v14);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
      Tensor = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return Tensor;
}

char *getTensorFromOptionalTuple(unsigned int a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  if (a1 <= a4)
  {
    return mlir::ODIE::Compiler::create1DTensorConstant<int>(a2, a5, a6);
  }

  v9 = *(*(a3 + 72) + 32 * a4 + 24);
  if ((~*(v9 + 8) & 7) == 0)
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = *(v9 + 8) & 7;
    if (v10 == 6)
    {
      v11 = v9 + 24 * *(v9 + 16) + 120;
    }

    else
    {
      v11 = v9 + 16 * v10 + 16;
    }
  }

  else
  {
    v11 = 0;
  }

  TupleAs1DIntTensor = getTupleAs1DIntTensor(v11, a2);
  v12 = TupleAs1DIntTensor;
  if (v14)
  {
    v15 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(TupleAs1DIntTensor + 8) & 0xFFFFFFFFFFFFFFF8));
    v17 = (*(v16 + 24))(v16, v15);
    if (v18)
    {
      v19 = 8 * v18;
      v20 = 1;
      do
      {
        v21 = *v17++;
        v20 *= v21;
        v19 -= 8;
      }

      while (v19);
      if (v20 <= 0)
      {
        return mlir::ODIE::Compiler::create1DTensorConstant<int>(a2, a5, a6);
      }
    }
  }

  return v12;
}

unint64_t mlir::ODIE::Compiler::getCastingTargetType<(mlir::ODIE::Compiler::CastingSemantics)2>(void *a1, uint64_t **this, uint64_t **a3)
{
  v6 = *this;
  v7 = *(**this + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || ((*(v6 + 2) + 2147483632) <= 0x30 ? (v22 = ((1 << (*(v6 + 8) - 16)) & 0x1000000010001) == 0, *(v6 + 8)) : (v22 = 1), v22))
  {
    v8 = *a3;
    v9 = *(**a3 + 136);
    if (v9 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || ((*(v8 + 8) + 2147483632) <= 0x30 ? (v23 = ((1 << (*(v8 + 8) - 16)) & 0x1000000010001) == 0, *(v8 + 8)) : (v23 = 1), v23))
    {
      if (v7 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
      {
        LOBYTE(v8) = 0;
        v24 = 0;
        return v24 | v8;
      }

      if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && *(v6 + 2) == -2147483640)
      {
        v21 = 0;
      }

      else
      {
        v21 = v9 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v25 = *(v8 + 8), v25 >> 30 != 2) || (v25 & 0x3FFFFFFF) != 8;
        if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && *(v6 + 2) == 1073741832)
        {
          if (v21)
          {
LABEL_72:
            if (v9 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && *(v8 + 8) == -2147483647)
            {
              v24 = v6 & 0xFFFFFFFFFFFFFF00;
              LOBYTE(v8) = *this;
              return v24 | v8;
            }

            IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(this);
            if (IntOrFloatBitWidth <= mlir::Type::getIntOrFloatBitWidth(a3))
            {
              v8 = *a3;
            }

            else
            {
              v8 = *this;
            }

LABEL_78:
            v24 = v8 & 0xFFFFFFFFFFFFFF00;
            return v24 | v8;
          }

LABEL_80:
          v8 = mlir::IntegerType::get(a1, 16, 1);
          v24 = v8 & 0xFFFFFFFFFFFFFF00;
          return v24 | v8;
        }
      }

      if (v9 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        goto LABEL_71;
      }

      v26 = *(v8 + 8);
      if (v26 >> 30 != 1)
      {
        goto LABEL_71;
      }

      if ((v26 & 0x3FFFFFFF) != 8)
      {
        v21 = 1;
      }

      if (v21)
      {
LABEL_71:
        if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && *(v6 + 2) == -2147483647)
        {
          goto LABEL_78;
        }

        goto LABEL_72;
      }

      goto LABEL_80;
    }
  }

  v24 = v6 & 0xFFFFFFFFFFFFFF00;
  if (v6 == *a3)
  {
    v8 = *this;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  if (v6 != *a3)
  {
    v24 = 0;
  }

  return v24 | v8;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BitwiseAndOp,mlir::Type,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BitwiseAndOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::BitwiseAndOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BitwiseAndOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BitwiseAndOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BitwiseAndOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.bitwise_and";
    v6[3] = 18;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BitwiseOrOp,mlir::Type,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BitwiseOrOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::BitwiseOrOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BitwiseOrOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BitwiseOrOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BitwiseOrOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.bitwise_or";
    v6[3] = 17;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BitwiseXorOp,mlir::Type,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BitwiseXorOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::BitwiseXorOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BitwiseXorOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BitwiseXorOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BitwiseXorOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.bitwise_xor";
    v6[3] = 18;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t disaggregateTupleInputs(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v20 = 257;
    emitDiag(a2, 2, v19, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<55ul>(&v22, "cannot convert a tuple of unknown origin into a tensor");
    }

    goto LABEL_14;
  }

  __src = *(a1 + 48);
  v5 = mlir::OperationName::stripDialect(&__src);
  if (v6 != 15 || (*v5 == 0x6F635F656C707574 ? (v7 = *(v5 + 7) == 0x7463757274736E6FLL) : (v7 = 0), !v7))
  {
    v8 = *(a1 + 24);
    v20 = 257;
    emitDiag(v8, 2, v19, &__src);
    if (__src)
    {
    }

    v18 = *(a1 + 48);
    v9 = mlir::OperationName::stripDialect(&v18);
    if (__src)
    {
      v20 = 261;
      v19[0] = v9;
      v19[1] = v10;
      mlir::Diagnostic::operator<<(&v22, v19);
      if (__src)
      {
      }
    }

LABEL_14:
    v11 = v23[184] ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    goto LABEL_15;
  }

  if ((*(a1 + 46) & 0x80) != 0)
  {
    v14 = *(a1 + 72);
    v15 = *(a1 + 68);
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  __src = v23;
  v22 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&__src, v14, 0, v14, v15);
  v16 = __src;
  v17 = __src + 8 * v22;
  *(a3 + 8) = 0;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(a3, v16, v17);
  if (__src != v23)
  {
    free(__src);
  }

  v11 = 1;
LABEL_15:
  v12 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

char *mlir::ODIE::Compiler::insertComparisonOp<mlir::ODIE::Compiler::CoreML::MinimumOp>(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v25[25] = *MEMORY[0x277D85DE8];
  v18 = a2;
  v10 = (*(a5 + 8))(a5, a4);
  v11 = mlir::ODIE::Compiler::castValueToElementType(a1, a3, v10);
  if (v12)
  {
    v17 = v11;
    __src = a2;
    v25[0] = v11;
    mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v21);
    if (v23)
    {
      v13 = *v21[0];
      v17 = *(v21[0] + 1);
      v18 = v13;
      __src = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
      v14 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MinimumOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, a1[4], &__src, &v18, &v17) - 16;
    }

    else
    {
      v20 = 257;
      emitDiag(a6, 2, v19, &__src);
      if (__src)
      {
        mlir::Diagnostic::operator<<<58ul>(v25, "unable to broadcast min value and input to a common shape");
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
      v14 = 0;
    }

    if (v23 == 1 && v21[0] != v22)
    {
      free(v21[0]);
    }
  }

  else
  {
    v22[8] = 257;
    emitDiag(a6, 2, v21, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<51ul>(v25, "unable to cast value to same element type as input");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::ExpandDimsOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,void>::id)
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

char *buildConvTranspose<mlir::ODIE::Compiler::CoreML::ConvTranspose3dOp>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v15 = a2;
  v149[8] = *MEMORY[0x277D85DE8];
  v114 = a4;
  v115 = a2;
  v17 = a1[4];
  *&v141 = "expects shaped type for convolution transpose input";
  v143 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(a2, &v141, &v111);
  *&v141 = "expects shaped type for convolution transpose input";
  v143 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(a3, &v141, v110);
  if (v113 != 1 || (v110[16] & 1) == 0)
  {
    LOBYTE(v116) = 0;
    LOBYTE(v117) = 0;
    goto LABEL_63;
  }

  v18 = *(a8 + 8);
  v103 = a3;
  v104 = a5;
  v19 = 0;
  if (v18)
  {
    v20 = *a8;
    do
    {
      v21 = *v20++;
      v19 |= v21 > 0;
      --v18;
    }

    while (v18);
  }

  v23 = v111;
  v22 = v112;
  (*(v112 + 24))(v112, v111);
  v138 = v140;
  v139 = 0xC00000000;
  llvm::SmallVectorImpl<int>::assign(&v138, 2 * v24, 0);
  (*(v22 + 24))(v22, v23);
  v136[0] = v137;
  v136[1] = 0xC00000000;
  llvm::SmallVectorImpl<int>::assign(v136, 2 * v25, 0);
  (*(v22 + 24))(v22, v23);
  v133 = v135;
  v134 = 0xC00000000;
  llvm::SmallVectorImpl<int>::assign(&v133, 2 * v26, 0);
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, *a6, *(a6 + 8), 0);
  if (v19)
  {
    TensorConstantWithSameTypeAs = mlir::ODIE::Compiler::createTensorConstantWithSameTypeAsOther<int>(a1, 0, Tensor);
    if ((v29 & 1) == 0)
    {
      v132[8] = 257;
      emitDiag(v17, 2, &v130, &v141);
      if (v141)
      {
        mlir::Diagnostic::operator<<<48ul>(&v141 + 8, "Failed to set padding to 0 for conv_transpose2d");
      }

      v116 = 0;
      LOBYTE(v117) = 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v141);
      goto LABEL_57;
    }

    if (*(a6 + 8))
    {
      v30 = 0;
      v31 = *a6;
      v32 = v133 + 20;
      do
      {
        v33 = *&v31[4 * v30];
        *(v32 - 1) = v33;
        *v32 = v33;
        ++v30;
        v32 += 2;
      }

      while (v30 < *(a6 + 8));
    }

    if (*(a8 + 8))
    {
      v34 = 0;
      v35 = *a8;
      v36 = v136[0] + 20;
      do
      {
        *v36 = v35[v34];
        v36 += 2;
        ++v34;
      }

      while (v34 < *(a8 + 8));
    }

    v102 = TensorConstantWithSameTypeAs;
    if (v134 >= 5)
    {
      v37 = 0;
      v38 = 0;
      v39 = v133;
      v40 = v136[0];
      v41 = 4;
      v42 = v138;
      do
      {
        v43 = v39[v41];
        v44 = v40[v41];
        v45 = v43 - v44;
        if (v43 >= v44)
        {
          v39[v41] = v45;
          v46 = v42[v41];
        }

        else
        {
          v46 = v44 - v43;
          v42[v41] = v46;
          v45 = v39[v41];
        }

        v37 |= v46 > 0;
        v38 |= v45 > 0;
        ++v41;
      }

      while (v41 < v134);
      if (v37)
      {
        v100 = v17;
        v47 = (*(v22 + 24))(v22, v23);
        v130 = v132;
        v131 = 0x600000000;
        llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v130, v47, &v47[8 * v48]);
        if (v139)
        {
          v49 = 0;
          v50 = 1;
          do
          {
            if (*((*(v22 + 24))(v22, v23) + v49) != 0x8000000000000000)
            {
              *(v130 + v49) += *(v138 + v50) + *(v138 + v49);
            }

            v51 = v50 + 1;
            v50 += 2;
            v49 += 8;
          }

          while (v51 < v139);
        }

        *&v120 = mlir::ODIE::Compiler::CoreML::PaddingModeAttr::get(*a1, 1u);
        v52 = v130;
        v53 = v131;
        v54 = (*(v15 + 1) & 0xFFFFFFFFFFFFFFF8);
        v55 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v54);
        v57 = v55;
        if (v55)
        {
          v55 = (*(v56 + 8))(v56, v55);
        }

        v95 = v57 ? v55 : v54;
        *&v141 = v52;
        *(&v141 + 1) = v53;
        v126 = v95;
        v123 = 0;
        *&v109 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v95 + 32), &v141, &v126, &v123);
        v119 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v138, v139, 0);
        LODWORD(v141) = 0;
        v96 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v141, 1, 0);
        v97 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, v96, v15);
        v99 = v98;
        v123 = v97;
        LOBYTE(v124) = v98;
        if (v98)
        {
          v17 = v100;
          v15 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::PadOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::ODIE::Compiler::CoreML::PaddingModeAttr &>(a1, v100, &v109, &v115, &v119, &v123, &v120) - 16;
          v115 = v15;
        }

        else
        {
          v129 = 257;
          v17 = v100;
          emitDiag(v100, 2, &v126, &v141);
          if (v141)
          {
            mlir::Diagnostic::operator<<<58ul>(&v141 + 8, "Failed to create padding constant with same type as input");
          }

          v116 = 0;
          LOBYTE(v117) = 0;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v141);
        }

        if (v130 != v132)
        {
          free(v130);
        }

        if ((v99 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_31;
    }
  }

  else
  {
    v102 = Tensor;
  }

  v38 = 0;
LABEL_31:
  v58 = *a10;
  v59 = (*(a10[1] + 24))();
  v130 = v132;
  v131 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v130, v59, &v59[8 * v60]);
  v109 = *a10;
  if (v38)
  {
    v101 = a7;
    v61 = v17;
    if (v134)
    {
      v62 = 0;
      v63 = 1;
      do
      {
        v64 = *a10;
        if (*((*(a10[1] + 24))() + v62) != 0x8000000000000000)
        {
          *(v130 + v62) += *(v133 + v63) + *(v133 + v62);
        }

        v65 = v63 + 1;
        v63 += 2;
        v62 += 8;
      }

      while (v65 < v134);
    }

    v66 = v130;
    v67 = v131;
    v68 = *a10;
    v69 = (*(a10[1] + 8))();
    *&v141 = v66;
    *(&v141 + 1) = v67;
    v126 = v69;
    v123 = 0;
    *&v141 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v69 + 32), &v141, &v126, &v123);
    *&v109 = mlir::TensorType::operator mlir::ShapedType(&v141);
    *(&v109 + 1) = v70;
    v17 = v61;
    a7 = v101;
  }

  (*(v22 + 24))(v22, v23);
  v72 = create1DTensorConstantWithElement<int>(a1, -1, v71);
  v73 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConvTranspose3dOp,void>::id, *(**v17 + 32));
  if ((v74 & 1) == 0)
  {
    v129 = 1283;
    v128[0] = "coreml.conv_transpose3d";
    v128[1] = 23;
    v125[8] = 259;
    llvm::operator+(&v126, &v123, &v141);
    llvm::report_fatal_error(&v141, 1);
  }

  *&v141 = v17;
  *(&v141 + 1) = v73;
  v142[0] = &v143;
  v142[1] = 0x400000000;
  v144 = v146;
  v145 = 0x400000000;
  v146[4] = v147;
  v146[5] = 0x400000000;
  v147[8] = 4;
  v147[9] = v148;
  v147[10] = 0x100000000;
  v148[1] = v149;
  v148[2] = 0x100000000;
  v149[2] = 0;
  v149[1] = 0;
  v149[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v149[4] = 0;
  v149[6] = 0;
  mlir::ODIE::Compiler::CoreML::ConvTranspose3dOp::build(a1, &v141, v109, v15, v103, v104, v102, a7, v72, a9);
  v75 = mlir::Operation::create(&v141);
  mlir::OpBuilder::insert(a1, v75);
  v76 = *(*(v75 + 6) + 16);
  mlir::OperationState::~OperationState(&v141);
  if (v76 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConvTranspose3dOp,void>::id)
  {
    v77 = v75;
  }

  else
  {
    v77 = 0;
  }

  v108 = v77 - 16;
  v116 = addBiasToConv(a1, &v108, &v114, &v109);
  LOBYTE(v117) = v78;
  if (v38)
  {
    (*(v22 + 24))(v22, v23);
    *&v141 = v142;
    *(&v141 + 1) = 0xC00000000;
    llvm::SmallVectorImpl<int>::assign(&v141, v79, 0);
    (*(v22 + 24))(v22, v23);
    v126 = v128;
    v127 = 0xC00000000;
    llvm::SmallVectorImpl<int>::assign(&v126, v80, 0);
    (*(v22 + 24))(v22, v23);
    v123 = v125;
    v124 = 0xC00000000;
    llvm::SmallVectorImpl<int>::assign(&v123, v81, 1);
    if (DWORD2(v141))
    {
      v82 = 0;
      v83 = v141;
      v84 = v126;
      v85 = (v133 + 4);
      do
      {
        *(v83 + 4 * v82) = *(v85 - 1);
        v86 = *v85;
        v85 += 2;
        v84[v82++] = v86;
      }

      while (v82 < DWORD2(v141));
    }

    v87 = *a10;
    (*(a10[1] + 24))();
    v122 = v88;
    v89 = mlir::IntegerType::get(*a1, 32, 1);
    *&v120 = &v122;
    *(&v120 + 1) = 1;
    v118 = 0;
    v119 = v89;
    *&v120 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v89 + 32), &v120, &v119, &v118);
    v107 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GetShapeOp,mlir::RankedTensorType,mlir::Value &>(a1, a1[4], &v120, &v116);
    v122 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v141, DWORD2(v141));
    v106 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v123, v124);
    v105 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v126, v127);
    v90 = *a10;
    (*(a10[1] + 24))();
    v121 = v91;
    v92 = mlir::IntegerType::get(*a1, 32, 1);
    *&v120 = &v121;
    *(&v120 + 1) = 1;
    v118 = 0;
    v119 = v92;
    v119 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v92 + 32), &v120, &v119, &v118);
    *&v120 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SubOp,mlir::RankedTensorType,mlir::ODIE::Compiler::CoreML::GetShapeOp &,mlir::Value &>(a1, v17, &v119, &v107, &v105);
    v116 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SliceOp,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::ODIE::Compiler::CoreML::SubOp &,mlir::Value &>(a1, v17, a10, &v116, &v122, &v120, &v106) - 16;
    LOBYTE(v117) = 1;
    if (v123 != v125)
    {
      free(v123);
    }

    if (v126 != v128)
    {
      free(v126);
    }

    if (v141 != v142)
    {
      free(v141);
    }
  }

  if (v130 != v132)
  {
    free(v130);
  }

LABEL_57:
  if (v133 != v135)
  {
    free(v133);
  }

  if (v136[0] != v137)
  {
    free(v136[0]);
  }

  if (v138 != v140)
  {
    free(v138);
  }

LABEL_63:
  result = v116;
  v94 = *MEMORY[0x277D85DE8];
  return result;
}

char *buildConvTranspose<mlir::ODIE::Compiler::CoreML::ConvTranspose2dOp>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v15 = a2;
  v148[8] = *MEMORY[0x277D85DE8];
  v114 = a4;
  v115 = a2;
  v17 = a1[4];
  *&v140 = "expects shaped type for convolution transpose input";
  v142 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(a2, &v140, &v111);
  *&v140 = "expects shaped type for convolution transpose input";
  v142 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(a3, &v140, v110);
  if (v113 != 1 || (v110[16] & 1) == 0)
  {
    LOBYTE(v116) = 0;
    LOBYTE(v117) = 0;
    goto LABEL_63;
  }

  v18 = *(a8 + 8);
  v103 = a5;
  v104 = a7;
  v102 = a3;
  v19 = 0;
  if (v18)
  {
    v20 = *a8;
    do
    {
      v21 = *v20++;
      v19 |= v21 > 0;
      --v18;
    }

    while (v18);
  }

  v23 = v111;
  v22 = v112;
  (*(v112 + 24))(v112, v111);
  v137 = v139;
  v138 = 0xC00000000;
  llvm::SmallVectorImpl<int>::assign(&v137, 2 * v24, 0);
  (*(v22 + 24))(v22, v23);
  v135[0] = v136;
  v135[1] = 0xC00000000;
  llvm::SmallVectorImpl<int>::assign(v135, 2 * v25, 0);
  (*(v22 + 24))(v22, v23);
  v132 = v134;
  v133 = 0xC00000000;
  llvm::SmallVectorImpl<int>::assign(&v132, 2 * v26, 0);
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, *a6, *(a6 + 8), 0);
  if (v19)
  {
    TensorConstantWithSameTypeAs = mlir::ODIE::Compiler::createTensorConstantWithSameTypeAsOther<int>(a1, 0, Tensor);
    if ((v29 & 1) == 0)
    {
      v131[8] = 257;
      emitDiag(v17, 2, &v129, &v140);
      if (v140)
      {
        mlir::Diagnostic::operator<<<48ul>(&v140 + 8, "Failed to set padding to 0 for conv_transpose2d");
      }

      v116 = 0;
      LOBYTE(v117) = 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v140);
      goto LABEL_57;
    }

    if (*(a6 + 8))
    {
      v30 = 0;
      v31 = *a6;
      v32 = v132 + 20;
      do
      {
        v33 = *&v31[4 * v30];
        *(v32 - 1) = v33;
        *v32 = v33;
        ++v30;
        v32 += 2;
      }

      while (v30 < *(a6 + 8));
    }

    if (*(a8 + 8))
    {
      v34 = 0;
      v35 = *a8;
      v36 = v135[0] + 20;
      do
      {
        *v36 = v35[v34];
        v36 += 2;
        ++v34;
      }

      while (v34 < *(a8 + 8));
    }

    v99 = TensorConstantWithSameTypeAs;
    if (v133 >= 5)
    {
      v37 = 0;
      v38 = 0;
      v39 = v132;
      v40 = v135[0];
      v41 = 4;
      v42 = v137;
      do
      {
        v43 = v39[v41];
        v44 = v40[v41];
        v45 = v43 - v44;
        if (v43 >= v44)
        {
          v39[v41] = v45;
          v46 = v42[v41];
        }

        else
        {
          v46 = v44 - v43;
          v42[v41] = v46;
          v45 = v39[v41];
        }

        v37 |= v46 > 0;
        v38 |= v45 > 0;
        ++v41;
      }

      while (v41 < v133);
      if (v37)
      {
        v100 = v17;
        v47 = (*(v22 + 24))(v22, v23);
        v129 = v131;
        v130 = 0x600000000;
        llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v129, v47, &v47[8 * v48]);
        if (v138)
        {
          v49 = 0;
          v50 = 1;
          do
          {
            if (*((*(v22 + 24))(v22, v23) + v49) != 0x8000000000000000)
            {
              *(v129 + v49) += *(v137 + v50) + *(v137 + v49);
            }

            v51 = v50 + 1;
            v50 += 2;
            v49 += 8;
          }

          while (v51 < v138);
        }

        *&v120 = mlir::ODIE::Compiler::CoreML::PaddingModeAttr::get(*a1, 1u);
        v52 = v129;
        v53 = v130;
        v54 = (*(v15 + 1) & 0xFFFFFFFFFFFFFFF8);
        v55 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v54);
        v57 = v55;
        if (v55)
        {
          v55 = (*(v56 + 8))(v56, v55);
        }

        v94 = v57 ? v55 : v54;
        *&v140 = v52;
        *(&v140 + 1) = v53;
        v126 = v94;
        v123 = 0;
        *&v109 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v94 + 32), &v140, &v126, &v123);
        v119 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v137, v138, 0);
        LODWORD(v140) = 0;
        v95 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v140, 1, 0);
        v96 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, v95, v15);
        v98 = v97;
        v123 = v96;
        LOBYTE(v124) = v97;
        if (v97)
        {
          v17 = v100;
          v15 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::PadOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::ODIE::Compiler::CoreML::PaddingModeAttr &>(a1, v100, &v109, &v115, &v119, &v123, &v120) - 16;
          v115 = v15;
        }

        else
        {
          v128[8] = 257;
          emitDiag(v100, 2, &v126, &v140);
          if (v140)
          {
            mlir::Diagnostic::operator<<<58ul>(&v140 + 8, "Failed to create padding constant with same type as input");
          }

          v116 = 0;
          LOBYTE(v117) = 0;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v140);
          v17 = v100;
        }

        if (v129 != v131)
        {
          free(v129);
        }

        if ((v98 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_31;
    }
  }

  else
  {
    v99 = Tensor;
  }

  v38 = 0;
LABEL_31:
  v58 = *a10;
  v59 = (*(a10[1] + 24))();
  v129 = v131;
  v130 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v129, v59, &v59[8 * v60]);
  v109 = *a10;
  v101 = v17;
  if (v38)
  {
    if (v133)
    {
      v61 = 0;
      v62 = 1;
      do
      {
        v63 = *a10;
        if (*((*(a10[1] + 24))() + v61) != 0x8000000000000000)
        {
          *(v129 + v61) += *(v132 + v62) + *(v132 + v61);
        }

        v64 = v62 + 1;
        v62 += 2;
        v61 += 8;
      }

      while (v64 < v133);
    }

    v65 = v129;
    v66 = v130;
    v67 = *a10;
    v68 = (*(a10[1] + 8))();
    *&v140 = v65;
    *(&v140 + 1) = v66;
    v126 = v68;
    v123 = 0;
    *&v140 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v68 + 32), &v140, &v126, &v123);
    v69 = mlir::TensorType::operator mlir::ShapedType(&v140);
    *&v109 = v69;
    *(&v109 + 1) = v70;
    v17 = v101;
  }

  else
  {
    v69 = v109;
  }

  (*(v22 + 24))(v22, v23);
  v72 = create1DTensorConstantWithElement<int>(a1, -1, v71);
  v73 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConvTranspose2dOp>(a1, *(**v17 + 32));
  *&v140 = v17;
  *(&v140 + 1) = v73;
  v141[0] = &v142;
  v141[1] = 0x400000000;
  v143 = v145;
  v144 = 0x400000000;
  v145[4] = v146;
  v145[5] = 0x400000000;
  v146[8] = 4;
  v146[9] = v147;
  v146[10] = 0x100000000;
  v147[1] = v148;
  v147[2] = 0x100000000;
  v148[2] = 0;
  v148[1] = 0;
  v148[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v148[4] = 0;
  v148[6] = 0;
  mlir::ODIE::Compiler::CoreML::ConvTranspose2dOp::build(a1, &v140, v69, v15, v102, v103, v99, v104, v72, a9);
  v74 = mlir::Operation::create(&v140);
  mlir::OpBuilder::insert(a1, v74);
  v75 = *(*(v74 + 6) + 16);
  mlir::OperationState::~OperationState(&v140);
  if (v75 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConvTranspose2dOp,void>::id)
  {
    v76 = v74;
  }

  else
  {
    v76 = 0;
  }

  v108 = v76 - 16;
  v116 = addBiasToConv(a1, &v108, &v114, &v109);
  LOBYTE(v117) = v77;
  if (v38)
  {
    (*(v22 + 24))(v22, v23);
    *&v140 = v141;
    *(&v140 + 1) = 0xC00000000;
    llvm::SmallVectorImpl<int>::assign(&v140, v78, 0);
    (*(v22 + 24))(v22, v23);
    v126 = v128;
    v127 = 0xC00000000;
    llvm::SmallVectorImpl<int>::assign(&v126, v79, 0);
    (*(v22 + 24))(v22, v23);
    v123 = v125;
    v124 = 0xC00000000;
    llvm::SmallVectorImpl<int>::assign(&v123, v80, 1);
    if (DWORD2(v140))
    {
      v81 = 0;
      v82 = v140;
      v83 = v126;
      v84 = (v132 + 4);
      do
      {
        *(v82 + 4 * v81) = *(v84 - 1);
        v85 = *v84;
        v84 += 2;
        v83[v81++] = v85;
      }

      while (v81 < DWORD2(v140));
    }

    v86 = *a10;
    (*(a10[1] + 24))();
    v122 = v87;
    v88 = mlir::IntegerType::get(*a1, 32, 1);
    *&v120 = &v122;
    *(&v120 + 1) = 1;
    v118 = 0;
    v119 = v88;
    *&v120 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v88 + 32), &v120, &v119, &v118);
    v107 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GetShapeOp,mlir::RankedTensorType,mlir::Value &>(a1, a1[4], &v120, &v116);
    v122 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v140, DWORD2(v140));
    v106 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v123, v124);
    v105 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v126, v127);
    v89 = *a10;
    (*(a10[1] + 24))();
    v121 = v90;
    v91 = mlir::IntegerType::get(*a1, 32, 1);
    *&v120 = &v121;
    *(&v120 + 1) = 1;
    v118 = 0;
    v119 = v91;
    v119 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v91 + 32), &v120, &v119, &v118);
    *&v120 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SubOp,mlir::RankedTensorType,mlir::ODIE::Compiler::CoreML::GetShapeOp &,mlir::Value &>(a1, v101, &v119, &v107, &v105);
    v116 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SliceOp,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::ODIE::Compiler::CoreML::SubOp &,mlir::Value &>(a1, v101, a10, &v116, &v122, &v120, &v106) - 16;
    LOBYTE(v117) = 1;
    if (v123 != v125)
    {
      free(v123);
    }

    if (v126 != v128)
    {
      free(v126);
    }

    if (v140 != v141)
    {
      free(v140);
    }
  }

  if (v129 != v131)
  {
    free(v129);
  }

LABEL_57:
  if (v132 != v134)
  {
    free(v132);
  }

  if (v135[0] != v136)
  {
    free(v135[0]);
  }

  if (v137 != v139)
  {
    free(v137);
  }

LABEL_63:
  result = v116;
  v93 = *MEMORY[0x277D85DE8];
  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::ShrinkDimsOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::PadOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::ODIE::Compiler::CoreML::PaddingModeAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v24[8] = *MEMORY[0x277D85DE8];
  v14 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::PadOp>(*(**a2 + 32));
  v19[0] = a2;
  v19[1] = v14;
  v19[2] = v20;
  v19[3] = 0x400000000;
  v20[4] = v21;
  v20[5] = 0x400000000;
  v21[4] = v22;
  v21[5] = 0x400000000;
  v22[8] = 4;
  v22[9] = v23;
  v22[10] = 0x100000000;
  v23[1] = v24;
  v23[2] = 0x100000000;
  v24[1] = 0;
  v24[2] = 0;
  v24[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v24[4] = 0;
  v24[6] = 0;
  mlir::ODIE::Compiler::CoreML::PadOp::build(a1, v19, *a3, *a4, *a5, *a6, *a7);
  v15 = mlir::Operation::create(v19);
  mlir::OpBuilder::insert(a1, v15);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PadOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

char *create1DTensorConstantWithElement<int>(uint64_t *a1, int a2, unint64_t a3)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v7 = v9;
  v8 = 0xC00000000;
  llvm::SmallVectorImpl<int>::assign(&v7, a3, a2);
  v4 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v7, v8);
  if (v7 != v9)
  {
    free(v7);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

char *addBiasToConv(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v48[6] = *MEMORY[0x277D85DE8];
  if (*(*(*(*a3 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
  {
    v16 = *a2;
    goto LABEL_27;
  }

  v8 = a1[4];
  v9 = *a4;
  v10 = (*(a4[1] + 24))();
  v12 = v10;
  v46 = v48;
  v47 = 0xC00000000;
  v43 = v45;
  v44 = 0x600000000;
  switch(v11)
  {
    case 3:
      v32 = v8;
      v19 = *(v10 + 8);
      LODWORD(__src) = 1;
      *(&__src + 4) = v19 | 0x100000000;
      LODWORD(v47) = 0;
      llvm::SmallVectorImpl<int>::append<int const*,void>(&v46, &__src, &__src + 12);
      v20 = *(v12 + 8);
      *&__src = 1;
      *(&__src + 1) = v20;
      v40.i64[0] = 1;
      LODWORD(v44) = 0;
      v15 = &v40.i64[1];
      goto LABEL_9;
    case 4:
      v32 = v8;
      v17 = *(v10 + 8);
      LODWORD(__src) = 1;
      DWORD1(__src) = v17;
      *(&__src + 1) = 0x100000001;
      LODWORD(v47) = 0;
      llvm::SmallVectorImpl<int>::append<int const*,void>(&v46, &__src, &v40);
      v18 = *(v12 + 8);
      *&__src = 1;
      *(&__src + 1) = v18;
      v40 = vdupq_n_s64(1uLL);
      LODWORD(v44) = 0;
      v15 = &v41;
      goto LABEL_9;
    case 5:
      v32 = v8;
      v13 = *(v10 + 8);
      LODWORD(__src) = 1;
      DWORD1(__src) = v13;
      *(&__src + 1) = 0x100000001;
      v40.i32[0] = 1;
      LODWORD(v47) = 0;
      llvm::SmallVectorImpl<int>::append<int const*,void>(&v46, &__src, &v40.i8[4]);
      v14 = *(v12 + 8);
      *&__src = 1;
      *(&__src + 1) = v14;
      v40 = vdupq_n_s64(1uLL);
      v41 = 1;
      LODWORD(v44) = 0;
      v15 = &v42;
LABEL_9:
      llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v43, &__src, v15);
      v33 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v46, v47);
      v21 = v43;
      v22 = v44;
      v23 = (*(*a3 + 8) & 0xFFFFFFFFFFFFFFF8);
      v24 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v23);
      v26 = v24;
      if (v24)
      {
        v24 = (*(v25 + 8))(v25, v24);
      }

      if (v26)
      {
        v27 = v24;
      }

      else
      {
        v27 = v23;
      }

      *&__src = v21;
      *(&__src + 1) = v22;
      v36[0] = v27;
      v34[0] = 0;
      *&__src = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v27 + 32), &__src, v36, v34);
      v28 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, a1[4], &__src, a3, &v33);
      v29 = *a2;
      *&__src = v28 - 16;
      *(&__src + 1) = v29;
      mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v36);
      if (v38)
      {
        *&__src = *v36[0];
        v16 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, a1[4], a4, a2, &__src) - 16;
      }

      else
      {
        v35 = 257;
        emitDiag(v32, 2, v34, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<51ul>(&__src + 8, "Failed to broadcast bias for convolution operation");
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        v16 = 0;
      }

      if (v38 == 1 && v36[0] != v37)
      {
        free(v36[0]);
      }

      goto LABEL_23;
  }

  v36[0] = "Can't reshape convolution bias, input is not 3D/4D/5D";
  v37[8] = 259;
  emitDiag(v8, 2, v36, &__src);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  v16 = 0;
LABEL_23:
  if (v43 != v45)
  {
    free(v43);
  }

  if (v46 != v48)
  {
    free(v46);
  }

LABEL_27:
  v30 = *MEMORY[0x277D85DE8];
  return v16;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SubOp,mlir::RankedTensorType,mlir::ODIE::Compiler::CoreML::GetShapeOp &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SubOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::SubOp::build(a1, v15, *a3, *a4 - 16, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SubOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SliceOp,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::ODIE::Compiler::CoreML::SubOp &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void *a6, uint64_t *a7)
{
  v24[8] = *MEMORY[0x277D85DE8];
  v14 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SliceOp>(a1, *(**a2 + 32));
  v19[0] = a2;
  v19[1] = v14;
  v19[2] = v20;
  v19[3] = 0x400000000;
  v20[4] = v21;
  v20[5] = 0x400000000;
  v21[4] = v22;
  v21[5] = 0x400000000;
  v22[8] = 4;
  v22[9] = v23;
  v22[10] = 0x100000000;
  v23[1] = v24;
  v23[2] = 0x100000000;
  v24[1] = 0;
  v24[2] = 0;
  v24[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v24[4] = 0;
  v24[6] = 0;
  mlir::ODIE::Compiler::CoreML::SliceOp::build(a1, v19, *a3, *a4, *a5, *a6 - 16, *a7);
  v15 = mlir::Operation::create(v19);
  mlir::OpBuilder::insert(a1, v15);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::PadOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PadOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "coreml.pad";
    v5[3] = 10;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::Conv2dOp,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v27[8] = *MEMORY[0x277D85DE8];
  v17 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::Conv2dOp>(a1, *(**a2 + 32));
  v22[0] = a2;
  v22[1] = v17;
  v22[2] = v23;
  v22[3] = 0x400000000;
  v23[4] = v24;
  v23[5] = 0x400000000;
  v24[4] = v25;
  v24[5] = 0x400000000;
  v25[8] = 4;
  v25[9] = v26;
  v25[10] = 0x100000000;
  v26[1] = v27;
  v26[2] = 0x100000000;
  v27[1] = 0;
  v27[2] = 0;
  v27[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v27[4] = 0;
  v27[6] = 0;
  mlir::ODIE::Compiler::CoreML::Conv2dOp::build(a1, v22, *a3, *a4, *a5, *a6, *a7, *a8, *a9);
  v18 = mlir::Operation::create(v22);
  mlir::OpBuilder::insert(a1, v18);
  if (*(*(v18 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::Conv2dOp,void>::id)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::InvokeOp,mlir::FlatSymbolRefAttr &,llvm::SmallVector<mlir::Type,6u> &,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::InvokeOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::InvokeOp::build(a1, v15, *a3, *a4 & 0xFFFFFFFFFFFFFFF9 | 2, *(a4 + 8), *a5 & 0xFFFFFFFFFFFFFFF9, *(a5 + 8));
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InvokeOp,void>::id)
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

char *getBinaryOps<mlir::ODIE::Compiler::CoreML::DivideOp>(uint64_t *a1, uint64_t *a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v87 = *MEMORY[0x277D85DE8];
  v70 = a5;
  v71 = a4;
  v12 = *a2;
  v13 = a2[1];
  __src = "expected ranked tensor x input to ";
  v84 = v12;
  v85 = v13;
  LOWORD(v86) = 1283;
  mlir::ODIE::Compiler::getShapedRankedType(a4, &__src, &v67);
  LOWORD(v86) = 1283;
  v14 = *a2;
  v15 = a2[1];
  __src = "expected ranked tensor y input to ";
  v84 = v14;
  v85 = v15;
  mlir::ODIE::Compiler::getShapedRankedType(a5, &__src, &v64);
  v16 = 0;
  if (v69 != 1)
  {
    v17 = 0;
    goto LABEL_40;
  }

  v17 = 0;
  if ((v66 & 1) == 0)
  {
LABEL_40:
    v56 = *MEMORY[0x277D85DE8];
    return (v17 | v16);
  }

  v18 = a6;
  v19 = a3;
  v21 = v67;
  v20 = v68;
  v22 = (*(v68 + 8))(v68, v67);
  v23 = v65;
  v62 = v64;
  v24 = (*(v65 + 8))(v65);
  PromotedType = getPromotedType(v22, v24);
  if ((v26 & 1) == 0)
  {
    v42 = *v19;
    v80[8] = 257;
    emitDiag(v42, 2, &v78, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<37ul>(&v83, "Unable to get promoted type between ");
    }

    v43 = (*(v20 + 8))(v20, v21);
    if (__src)
    {
      LODWORD(v78) = 4;
      v79 = v43;
      v44 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v85, &v78, 1);
      v45 = v85 + 24 * v86;
      v46 = *v44;
      *(v45 + 16) = *(v44 + 16);
      *v45 = v46;
      ++v86;
      if (__src)
      {
        mlir::Diagnostic::operator<<<6ul>(&v83, " and ");
      }
    }

    v47 = (*(v23 + 8))(v23, v62);
    if (__src)
    {
      LODWORD(v78) = 4;
      v79 = v47;
      v48 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v85, &v78, 1);
      v49 = v85 + 24 * v86;
      v50 = *v48;
      *(v49 + 16) = *(v48 + 16);
      *v49 = v50;
      ++v86;
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v16 = 0;
    v17 = 0;
    goto LABEL_40;
  }

  v27 = PromotedType;
  v28 = mlir::ODIE::Compiler::castValueToElementType(a1, a4, PromotedType);
  if (v29)
  {
    v30 = v28;
    v71 = v28;
    v31 = mlir::ODIE::Compiler::castValueToElementType(a1, a5, v27);
    if (v32)
    {
      v70 = v31;
      __src = v30;
      v83 = v31;
      mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v78);
      if (v81)
      {
        v33 = *v78;
        v34 = *(v78 + 1);
        v70 = v34;
        v71 = v33;
        if (*(v18 + 8) != 1)
        {
LABEL_36:
          v55 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::Value &,mlir::Value &>(a1, a1[4], &v71, &v70);
          v17 = (v55 - 16) & 0xFFFFFFFFFFFFFF00;
          v16 = (v55 - 16);
LABEL_37:
          if (v81 == 1 && v78 != v80)
          {
            free(v78);
          }

          goto LABEL_40;
        }

        v35 = *v18;
        v36 = (*(v23 + 8))(v23, v62);
        v37 = mlir::ODIE::Compiler::castValueToElementType(a1, v35, v36);
        if (v38)
        {
          __src = v34;
          v83 = v37;
          mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v74);
          v39 = v77;
          if (v77)
          {
            v40 = *(v74[0] + 1);
            __src = *v74[0];
            v72[0] = v40;
            v41 = *v19;
            v63 = *(__src + 1) & 0xFFFFFFFFFFFFFFF8;
            v70 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, v41, &v63, &__src, v72) - 16;
          }

          else
          {
            v54 = *v19;
            v73 = 257;
            emitDiag(v54, 2, v72, &__src);
            if (__src)
            {
              mlir::Diagnostic::operator<<<41ul>(&v83, "Unable to broadcast RHS and alpha of op ");
            }

            mlir::InFlightDiagnostic::append<llvm::StringRef const&>(&__src, a2);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
          }

          if (v77 == 1 && v74[0] != &v75)
          {
            free(v74[0]);
          }

          if (v39)
          {
            goto LABEL_36;
          }

LABEL_28:
          v16 = 0;
          v17 = 0;
          goto LABEL_37;
        }

        v53 = *v19;
        v76 = 257;
        emitDiag(v53, 2, v74, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<49ul>(&v83, "Failed to cast alpha to rhs element type for op ");
        }

        mlir::InFlightDiagnostic::append<llvm::StringRef const&>(&__src, a2);
      }

      else
      {
        v51 = *v19;
        v76 = 257;
        emitDiag(v51, 2, v74, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<37ul>(&v83, " Unable to broadcast LHS and RHS of ");
        }

        v52 = mlir::InFlightDiagnostic::append<llvm::StringRef const&>(&__src, a2);
        if (*v52)
        {
          mlir::Diagnostic::operator<<<4ul>((v52 + 1), " op");
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
      goto LABEL_28;
    }
  }

  v58 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::Value &,mlir::Value &>(v58, v59, v60, v61);
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::DivideOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v8;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
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
  mlir::ODIE::Compiler::CoreML::DivideOp::build(a1, v13, *a3, *a4);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::DivideOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::FillOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v25[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FillOp,void>::id, *(**a2 + 32));
  if ((v11 & 1) == 0)
  {
    v19 = 1283;
    v18[2] = "coreml.fill";
    v18[3] = 11;
    v17 = 259;
    llvm::operator+(v18, &v16, v20);
    llvm::report_fatal_error(v20, 1);
  }

  v20[0] = a2;
  v20[1] = v10;
  v20[2] = v21;
  v20[3] = 0x400000000;
  v21[4] = v22;
  v21[5] = 0x400000000;
  v22[4] = v23;
  v22[5] = 0x400000000;
  v23[8] = 4;
  v23[9] = v24;
  v23[10] = 0x100000000;
  v24[1] = v25;
  v24[2] = 0x100000000;
  v25[1] = 0;
  v25[2] = 0;
  v25[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v25[4] = 0;
  v25[6] = 0;
  mlir::ODIE::Compiler::CoreML::FillOp::build(a1, v20, *a3, *a4, *a5);
  v12 = mlir::Operation::create(v20);
  mlir::OpBuilder::insert(a1, v12);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FillOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ExpOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExpOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "coreml.exp";
    v5[3] = 10;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ModuloOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ModuloOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v8;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
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
  mlir::ODIE::Compiler::CoreML::ModuloOp::build(a1, v13, *a3, *a4);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ModuloOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ModuloOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ModuloOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.modulo";
    v6[3] = 13;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::FloorDivideOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::FloorDivideOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::FloorDivideOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FloorDivideOp,void>::id)
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

BOOL replaceFullImpl(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v5 = a2 - 2;
  if (*(a2 + 9))
  {
    v6 = a2 - 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = (v6[1] & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = *v7;
    v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v10 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
  }

  else
  {
    v10 = 0;
  }

  v27[0] = v7;
  v27[1] = v10;
  v11 = *(a2[9] + 56);
  v12 = (*(v10 + 8))(v10, v7);
  v25 = mlir::ODIE::Compiler::castValueToElementType(a1, v11, v12);
  v26 = v13;
  if (v13)
  {
    v14 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::FillOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, a1[4], v27, &v28, &v25);
    v15 = *(a2 + 9);
    if (v15)
    {
      v16 = v5;
    }

    else
    {
      v16 = 0;
    }

    v29[0] = v16;
    v29[1] = v15;
    v17 = *(v14 + 9);
    v18 = (v14 - 16);
    if (!v17)
    {
      v18 = 0;
    }

    v31 = v18;
    v32[0] = v17;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v29, &v31);
    if (a2[2])
    {
      a2[2] = 0;
      v20 = *a2;
      v19 = a2[1];
      *v19 = *a2;
      *(v20 + 8) = v19;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v21 = 1;
  }

  else
  {
    v22 = a2[3];
    v30 = 257;
    emitDiag(v22, 2, v29, &v31);
    if (v31)
    {
      mlir::Diagnostic::operator<<<40ul>(v32, "unable to cast scalar to result's dtype");
    }

    v21 = (v33 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MaximumOp,mlir::Type &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MaximumOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::MaximumOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MaximumOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MinimumOp,mlir::Type &,mlir::ODIE::Compiler::CoreML::MaximumOp &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MinimumOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::MinimumOp::build(a1, v15, *a3, *a4 - 16, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MinimumOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::OrOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::OrOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::OrOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OrOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::AddOp&,mlir::ODIE::Compiler::CoreML::MulOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AddOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::AddOp::build(a1, v15, *a3, *a4 - 16, *a5 - 16);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
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

void getStackedIndexInfo(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v40[24] = *MEMORY[0x277D85DE8];
  v8 = *((*(a3 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  v29 = v8;
  if (!a4 || (v38 = *(a4 + 48), v9 = mlir::OperationName::stripDialect(&v38), v10 != 15) || (*v9 == 0x6F635F656C707574 ? (v11 = *(v9 + 7) == 0x7463757274736E6FLL) : (v11 = 0), !v11))
  {
    v12 = *(a4 + 24);
    v33 = 257;
    emitDiag(v12, 2, &v30, &v38);
    if (v38)
    {
      mlir::Diagnostic::operator<<<66ul>(&v39, "expect indices of index/index_put op to come from tuple construct");
    }

LABEL_9:
    LOBYTE(v30) = 0;
    v35 = 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
    goto LABEL_10;
  }

  v14 = *(a4 + 44);
  if ((v14 & 0x800000) != 0)
  {
    v15 = *(a4 + 68);
  }

  else
  {
    v15 = 0;
  }

  if (v8 < v15)
  {
    v16 = a2[4];
    v33 = 257;
    emitDiag(v16, 2, &v30, &v38);
    if (v38)
    {
      mlir::Diagnostic::operator<<<17ul>(&v39, "require at most ");
    }

    v17 = mlir::InFlightDiagnostic::operator<<<long long &>(&v38, &v29);
    v18 = v17;
    if (*v17)
    {
      mlir::Diagnostic::operator<<<32ul>((v17 + 1), " elements in indices, but have ");
    }

    if ((*(a4 + 46) & 0x80) != 0)
    {
      v19 = *(a4 + 68);
    }

    else
    {
      v19 = 0;
    }

    LODWORD(v36[0]) = v19;
    mlir::InFlightDiagnostic::operator<<<unsigned int>(v18, v36);
    goto LABEL_9;
  }

  v38 = v40;
  v39 = 0x600000000;
  v36[0] = v37;
  v36[1] = 0x600000000;
  if ((v14 & 0x800000) != 0)
  {
    v20 = *(a4 + 68);
    if (v20)
    {
      v21 = (*(a4 + 72) + 24);
      do
      {
        v22 = *v21;
        v23 = *(*v21 + 8) & 0xFFFFFFFFFFFFFFF8;
        if (v23)
        {
          v24 = *(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
        }

        else
        {
          v24 = 0;
        }

        if (v24)
        {
          llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v38, 0);
          v28 = a2 + 4;
        }

        else
        {
          llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v38, *v21);
          if ((~*(v22 + 8) & 7) != 0)
          {
            v25 = v22;
          }

          else
          {
            v25 = 0;
          }

          if (v25)
          {
            v26 = *(v25 + 8) & 7;
            if (v26 != 6)
            {
              v27 = v25 + 16 * v26 + 16;
LABEL_46:
              v28 = (v27 + 24);
              goto LABEL_47;
            }

            v27 = v25 + 24 * *(v25 + 16) + 120;
            if (v27)
            {
              goto LABEL_46;
            }
          }

          v28 = (v22 + 32);
        }

LABEL_47:
        llvm::SmallVectorTemplateBase<mlir::Location,true>::push_back(v36, *v28);
        v21 += 4;
        --v20;
      }

      while (v20);
    }
  }

  mlir::ODIE::Compiler::getSanitizedIndices(a2, &v38, v36, a3, 1, &v30);
  if (v36[0] != v37)
  {
    free(v36[0]);
  }

  if (v38 != v40)
  {
    free(v38);
  }

LABEL_10:
  if (v35 == 1)
  {
    v38 = v40;
    v39 = 0x600000000;
    if (v31)
    {
      llvm::SmallVectorImpl<mlir::Value>::operator=(&v38, &v30);
    }

    mlir::ODIE::Compiler::getStackedInfoFromSanitizedIndices(a2, a3, &v38, v34, a1);
    if (v38 != v40)
    {
      free(v38);
    }

    if ((v35 & 1) != 0 && v30 != &v32)
    {
      free(v30);
    }
  }

  else
  {
    *a1 = 0;
    a1[24] = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "coreml.gather_along_axis";
    v5[3] = 24;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::RankedTensorType,mlir::ODIE::Compiler::CoreML::ReshapeOp &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>(a1, *(**a2 + 32));
  v17[0] = a2;
  v17[1] = v12;
  v17[2] = v18;
  v17[3] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::build(a1, v17, *a3, *a4 - 16, *a5, *a6);
  v13 = mlir::Operation::create(v17);
  mlir::OpBuilder::insert(a1, v13);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp,mlir::ShapedType &,mlir::Value &,mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5, uint64_t *a6)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp>(*(**a2 + 32));
  v17[0] = a2;
  v17[1] = v12;
  v17[2] = v18;
  v17[3] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp::build(a1, v17, *a3, *a4, *a5 - 16, *a6);
  v13 = mlir::Operation::create(v17);
  mlir::OpBuilder::insert(a1, v13);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void llvm::SmallVectorImpl<long long>::append<int *,void>(uint64_t a1, int *a2, int *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = *(a1 + 8);
  v8 = v7 + a3 - a2;
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    v7 = *(a1 + 8);
  }

  if (v4 != a3)
  {
    v9 = (*a1 + 8 * v7);
    do
    {
      v10 = *v4++;
      *v9++ = v10;
    }

    while (v4 != a3);
  }

  *(a1 + 8) = v7 + (v6 >> 2);
}

unint64_t getBinaryComparisonOps<mlir::ODIE::Compiler::CoreML::NotEqualOp>(uint64_t *a1, __int16 **a2, void **a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v58[8] = *MEMORY[0x277D85DE8];
  v12 = *a2;
  v13 = a2[1];
  __src = "expected ranked tensor inputs to ";
  v50 = v12;
  v51 = v13;
  v52 = 1283;
  mlir::ODIE::Compiler::getShapedRankedType(a4, &__src, &v40);
  v52 = 1283;
  v14 = *a2;
  v15 = a2[1];
  __src = "expected ranked tensor inputs to ";
  v50 = v14;
  v51 = v15;
  mlir::ODIE::Compiler::getShapedRankedType(a5, &__src, &v37);
  v16 = 0;
  if (v42 != 1)
  {
    v17 = 0;
    goto LABEL_25;
  }

  v17 = 0;
  if (v39)
  {
    v18 = (*(v38 + 8))(v38, v37);
    v20 = v40;
    v19 = v41;
    if (v18 == (*(v41 + 8))(v41, v40))
    {
LABEL_6:
      __src = a4;
      v49 = a5;
      mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v45);
      if (v47)
      {
        v25 = *v45[0];
        v24 = *(v45[0] + 1);
        if (a2[1] == 2 && (**a2 == 25964 || **a2 == 29804))
        {
          v26 = *(v45[0] + 1);
        }

        else
        {
          v26 = *v45[0];
          v25 = *(v45[0] + 1);
        }

        v29 = a1[4];
        v30 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::NotEqualOp>(a1, *(**v29 + 32));
        __src = v29;
        v49 = v30;
        v50 = &v52;
        v51 = 0x400000000;
        v53 = v55;
        v54 = 0x400000000;
        v55[4] = v56;
        v55[5] = 0x400000000;
        v56[8] = 4;
        v56[9] = v57;
        v56[10] = 0x100000000;
        v57[1] = v58;
        v57[2] = 0x100000000;
        v58[1] = 0;
        v58[2] = 0;
        v58[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v58[4] = 0;
        v58[6] = 0;
        mlir::ODIE::Compiler::CoreML::NotEqualOp::build(a1, &__src, *a6, v26, v25);
        v31 = mlir::Operation::create(&__src);
        mlir::OpBuilder::insert(a1, v31);
        v32 = *(*(v31 + 6) + 16);
        v33 = v31 - 16;
        mlir::OperationState::~OperationState(&__src);
        v34 = -16;
        if (v32 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::NotEqualOp,void>::id)
        {
          v34 = v33;
        }

        v17 = v34 & 0xFFFFFFFFFFFFFF00;
        v16 = v34;
      }

      else
      {
        v27 = *a3;
        v44 = 257;
        emitDiag(v27, 2, v43, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<40ul>(&v49, " Unable to broadcast LHS and RHS of op ");
        }

        mlir::InFlightDiagnostic::append<llvm::StringRef const&>(&__src, a2);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        v16 = 0;
        v17 = 0;
      }

      if (v47 == 1 && v45[0] != v46)
      {
        free(v45[0]);
      }

      goto LABEL_25;
    }

    v21 = (*(v19 + 8))(v19, v20);
    v22 = mlir::ODIE::Compiler::castValueToElementType(a1, a5, v21);
    if (v23)
    {
      a5 = v22;
      goto LABEL_6;
    }

    v28 = *a3;
    v46[8] = 257;
    emitDiag(v28, 2, v45, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<47ul>(&v49, " Unable to cast RHS to same type as LHS of op ");
    }

    mlir::InFlightDiagnostic::append<llvm::StringRef const&>(&__src, a2);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v16 = 0;
    v17 = 0;
  }

LABEL_25:
  v35 = *MEMORY[0x277D85DE8];
  return v17 | v16;
}

uint64_t getReduceOps<mlir::ODIE::Compiler::CoreML::ReduceSumOp>(uint64_t *a1, const char **a2, void **a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t **a7)
{
  v9 = a4;
  v59[8] = *MEMORY[0x277D85DE8];
  v42 = a4;
  ReductionDimFromTupleOrNone = getReductionDimFromTupleOrNone(a1, a4, a5, *a3);
  if ((v14 & 1) == 0)
  {
    v35 = *a3;
    v48 = 257;
    emitDiag(v35, 2, v45, &v49);
    if (v49)
    {
      mlir::Diagnostic::operator<<<37ul>(&v50, " failed to infer reduction dims for ");
      if (v49)
      {
        mlir::Diagnostic::operator<<(&v50, v9);
      }
    }

    goto LABEL_25;
  }

  v15 = ReductionDimFromTupleOrNone;
  v49 = "Dims are not statically shaped.";
  v53 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(ReductionDimFromTupleOrNone, &v49, v41);
  if (v41[16] != 1)
  {
    goto LABEL_26;
  }

  v48 = 1283;
  v16 = *a2;
  v17 = a2[1];
  v45[0] = "input and output of ";
  v46 = v16;
  v47 = v17;
  v49 = v45;
  v51 = " must be ranked.";
  v53 = 770;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &v49, &v38);
  if (v40 != 1)
  {
    goto LABEL_26;
  }

  v18 = v38;
  v19 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v38);
  v21 = v18;
  if (v19)
  {
    v21 = (*(v20 + 8))(v20, v19);
  }

  v22 = *a7;
  v23 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(*a7);
  if (v23)
  {
    v22 = (*(v24 + 8))(v24, v23);
  }

  if (v21 == v22)
  {
    goto LABEL_14;
  }

  if (*(*v21 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v21[1] & 0x3FFFFFFF) != 1 || *(*v22 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v22[1] & 0x3FFFFFFF) != 0x20)
  {
    v36 = *a3;
    v48 = 257;
    emitDiag(v36, 2, v45, &v49);
    if (v49)
    {
      mlir::Diagnostic::operator<<<44ul>(&v50, "input and output types are mismatching for ");
    }

    mlir::InFlightDiagnostic::append<llvm::StringRef const&>(&v49, a2);
LABEL_25:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v49);
LABEL_26:
    result = 0;
    goto LABEL_27;
  }

  v25 = mlir::IntegerType::get(*a1, 32, 1);
  v26 = *v39;
  LOBYTE(v49) = 0;
  LOBYTE(v51) = 0;
  v49 = v26(v39, v18, &v49, v25);
  v50 = v27;
  v9 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::ShapedType,mlir::Value &>(a1, a1[4], &v49, &v42) - 16;
LABEL_14:
  v28 = a1[4];
  v29 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceSumOp,void>::id, *(**v28 + 32));
  if ((v30 & 1) == 0)
  {
    v48 = 1283;
    v46 = "coreml.reduce_sum";
    v47 = 17;
    v44 = 259;
    llvm::operator+(v45, &v43, &v49);
    llvm::report_fatal_error(&v49, 1);
  }

  v49 = v28;
  v50 = v29;
  v51 = &v53;
  v52 = 0x400000000;
  v54 = v56;
  v55 = 0x400000000;
  v56[4] = v57;
  v56[5] = 0x400000000;
  v57[8] = 4;
  v57[9] = v58;
  v57[10] = 0x100000000;
  v58[1] = v59;
  v58[2] = 0x100000000;
  v59[1] = 0;
  v59[2] = 0;
  v59[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v59[4] = 0;
  v59[6] = 0;
  mlir::ODIE::Compiler::CoreML::ReduceSumOp::build(a1, &v49, *a7, v9, v15, *a6);
  v31 = mlir::Operation::create(&v49);
  mlir::OpBuilder::insert(a1, v31);
  v32 = *(*(v31 + 6) + 16);
  v33 = v31 - 16;
  mlir::OperationState::~OperationState(&v49);
  if (v32 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceSumOp,void>::id)
  {
    result = v33;
  }

  else
  {
    result = -16;
  }

LABEL_27:
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t getReductionDimFromTupleOrNone(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v39 = a3;
  if (!a3 || ((v6 = *(a3 + 8), (v6 & 0xFFFFFFFFFFFFFFF8) != 0) ? (v7 = *(*(v6 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id) : (v7 = 0), v7))
  {
    v43 = "expecting ranked tensors";
    v45[8] = 259;
    mlir::ODIE::Compiler::getShapedRankedType(a2, &v43, &__src);
    if (v37)
    {
      v43 = v45;
      v44 = 0xC00000000;
      (*(*(&__src + 1) + 24))(*(&__src + 1), __src);
      v12 = v11;
      if (v11 >= 1)
      {
        v13 = 0;
        do
        {
          llvm::SmallVectorTemplateBase<int,true>::push_back(&v43, v13++);
        }

        while (v12 != v13);
      }

      v14 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v43, v44);
      if (v43 != v45)
      {
        free(v43);
      }

      goto LABEL_28;
    }

LABEL_39:
    v25 = 0;
    v24 = 0;
    goto LABEL_40;
  }

  v9 = *(a3 + 8) & 7;
  if (v9 == 6)
  {
    v10 = a3 + 24 * *(a3 + 16) + 120;
  }

  else
  {
    v10 = a3 + 16 * v9 + 16;
  }

  v43 = *(v10 + 48);
  v15 = mlir::OperationName::stripDialect(&v43);
  if (v16 != 15 || (*v15 == 0x6F635F656C707574 ? (v17 = *(v15 + 7) == 0x7463757274736E6FLL) : (v17 = 0), !v17))
  {
    LODWORD(__src) = 1;
    v43 = v45;
    v44 = 0xC00000000;
    llvm::SmallVectorImpl<int>::append<int const*,void>(&v43, &__src, &__src + 4);
    Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v43, v44, 1);
    v42 = 1;
    v18 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
    v19 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v18);
    v21 = v19;
    if (v19)
    {
      v19 = (*(v20 + 8))(v20, v19);
    }

    if (v21)
    {
      v22 = v19;
    }

    else
    {
      v22 = v18;
    }

    *&__src = &v42;
    *(&__src + 1) = 1;
    v40 = 0;
    v41 = v22;
    *&__src = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v22 + 32), &__src, &v41, &v40);
    v23 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, a1[4], &__src, &v39, &Tensor);
    if (v43 != v45)
    {
      free(v43);
    }

    v14 = (v23 - 16);
    goto LABEL_28;
  }

  v26 = 0;
  v27 = *(a3 + 8) & 7;
  v28 = v27 == 7;
  if (v27 == 7)
  {
    v29 = 0;
  }

  else
  {
    v29 = a3;
  }

  if (!v28)
  {
    v30 = *(v29 + 8) & 7;
    if (v30 == 6)
    {
      v26 = v29 + 24 * *(v29 + 16) + 120;
    }

    else
    {
      v26 = v29 + 16 * v30 + 16;
    }
  }

  TupleAs1DIntTensor = getTupleAs1DIntTensor(v26, a1);
  if ((v32 & 1) == 0)
  {
    *&__src = "Invalid dims for reduce operation.";
    v38 = 259;
    emitDiag(a4, 2, &__src, &v43);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v43);
    goto LABEL_39;
  }

  v14 = TupleAs1DIntTensor;
LABEL_28:
  v24 = v14 & 0xFFFFFFFFFFFFFF00;
  v25 = v14;
LABEL_40:
  v33 = *MEMORY[0x277D85DE8];
  return v24 | v25;
}

void mlir::ImplicitLocOpBuilder::create<mlir::ODIE::Compiler::CoreML::ReduceL2Norm,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &,replaceLinalgVectorNorm(mlir::ImplicitLocOpBuilder&,mlir::Operation *)::$_0>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 32);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceL2Norm,void>::id, *(**v10 + 32));
  if (v12)
  {
    v17[0] = v10;
    v17[1] = v11;
    v17[2] = v18;
    v17[3] = 0x400000000;
    v18[4] = v19;
    v18[5] = 0x400000000;
    v19[4] = v20;
    v19[5] = 0x400000000;
    v20[8] = 4;
    v20[9] = v21;
    v20[10] = 0x100000000;
    v21[1] = v22;
    v21[2] = 0x100000000;
    v22[1] = 0;
    v22[2] = 0;
    v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v22[4] = 0;
    v22[6] = 0;
    mlir::ODIE::Compiler::CoreML::ReduceL2Norm::build(a1, v17, *a2, *a3, *a4, *a5);
  }

  v16 = 1283;
  v15[2] = "coreml.decomposable.reduce_l2_norm";
  v15[3] = 34;
  v14 = 259;
  llvm::operator+(v15, &v13, v17);
  llvm::report_fatal_error(v17, 1);
}

uint64_t getBinaryOps<mlir::ODIE::Compiler::CoreML::PowOp>(uint64_t *a1, uint64_t *a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v84 = *MEMORY[0x277D85DE8];
  v67 = a5;
  v68 = a4;
  v12 = *a2;
  v13 = a2[1];
  __src = "expected ranked tensor x input to ";
  v81 = v12;
  v82 = v13;
  LOWORD(v83) = 1283;
  mlir::ODIE::Compiler::getShapedRankedType(a4, &__src, &v64);
  LOWORD(v83) = 1283;
  v14 = *a2;
  v15 = a2[1];
  __src = "expected ranked tensor y input to ";
  v81 = v14;
  v82 = v15;
  mlir::ODIE::Compiler::getShapedRankedType(a5, &__src, &v61);
  v16 = 0;
  if (v66 != 1)
  {
    v17 = 0;
    goto LABEL_40;
  }

  v17 = 0;
  if ((v63 & 1) == 0)
  {
LABEL_40:
    v56 = *MEMORY[0x277D85DE8];
    return v17 | v16;
  }

  v18 = a6;
  v19 = a3;
  v21 = v64;
  v20 = v65;
  v22 = (*(v65 + 8))(v65, v64);
  v23 = v62;
  v59 = v61;
  v24 = (*(v62 + 8))(v62);
  PromotedType = getPromotedType(v22, v24);
  if ((v26 & 1) == 0)
  {
    v42 = *v19;
    v77[8] = 257;
    emitDiag(v42, 2, &v75, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<37ul>(&v80, "Unable to get promoted type between ");
    }

    v43 = (*(v20 + 8))(v20, v21);
    if (__src)
    {
      LODWORD(v75) = 4;
      v76 = v43;
      v44 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v82, &v75, 1);
      v45 = v82 + 24 * v83;
      v46 = *v44;
      *(v45 + 16) = *(v44 + 16);
      *v45 = v46;
      ++v83;
      if (__src)
      {
        mlir::Diagnostic::operator<<<6ul>(&v80, " and ");
      }
    }

    v47 = (*(v23 + 8))(v23, v59);
    if (__src)
    {
      LODWORD(v75) = 4;
      v76 = v47;
      v48 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v82, &v75, 1);
      v49 = v82 + 24 * v83;
      v50 = *v48;
      *(v49 + 16) = *(v48 + 16);
      *v49 = v50;
      ++v83;
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v16 = 0;
    v17 = 0;
    goto LABEL_40;
  }

  v27 = PromotedType;
  v28 = mlir::ODIE::Compiler::castValueToElementType(a1, a4, PromotedType);
  if (v29)
  {
    v30 = v28;
    v68 = v28;
    v31 = mlir::ODIE::Compiler::castValueToElementType(a1, a5, v27);
    if (v32)
    {
      v67 = v31;
      __src = v30;
      v80 = v31;
      mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v75);
      if (v78)
      {
        v33 = *v75;
        v34 = *(v75 + 1);
        v67 = v34;
        v68 = v33;
        if (*(v18 + 8) != 1)
        {
LABEL_36:
          v55 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::PowOp,mlir::Value &,mlir::Value &>(a1, a1[4], &v68, &v67);
          v17 = (v55 - 16) & 0xFFFFFFFFFFFFFF00;
          v16 = (v55 - 16);
LABEL_37:
          if (v78 == 1 && v75 != v77)
          {
            free(v75);
          }

          goto LABEL_40;
        }

        v35 = *v18;
        v36 = (*(v23 + 8))(v23, v59);
        v37 = mlir::ODIE::Compiler::castValueToElementType(a1, v35, v36);
        if (v38)
        {
          __src = v34;
          v80 = v37;
          mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v71);
          v39 = v74;
          if (v74)
          {
            v40 = *(v71[0] + 1);
            __src = *v71[0];
            v69[0] = v40;
            v41 = *v19;
            v60 = *(__src + 1) & 0xFFFFFFFFFFFFFFF8;
            v67 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, v41, &v60, &__src, v69) - 16;
          }

          else
          {
            v54 = *v19;
            v70 = 257;
            emitDiag(v54, 2, v69, &__src);
            if (__src)
            {
              mlir::Diagnostic::operator<<<41ul>(&v80, "Unable to broadcast RHS and alpha of op ");
            }

            mlir::InFlightDiagnostic::append<llvm::StringRef const&>(&__src, a2);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
          }

          if (v74 == 1 && v71[0] != &v72)
          {
            free(v71[0]);
          }

          if (v39)
          {
            goto LABEL_36;
          }

LABEL_28:
          v16 = 0;
          v17 = 0;
          goto LABEL_37;
        }

        v53 = *v19;
        v73 = 257;
        emitDiag(v53, 2, v71, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<49ul>(&v80, "Failed to cast alpha to rhs element type for op ");
        }

        mlir::InFlightDiagnostic::append<llvm::StringRef const&>(&__src, a2);
      }

      else
      {
        v51 = *v19;
        v73 = 257;
        emitDiag(v51, 2, v71, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<37ul>(&v80, " Unable to broadcast LHS and RHS of ");
        }

        v52 = mlir::InFlightDiagnostic::append<llvm::StringRef const&>(&__src, a2);
        if (*v52)
        {
          mlir::Diagnostic::operator<<<4ul>((v52 + 1), " op");
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
      goto LABEL_28;
    }
  }

  v58 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::YieldOp,mlir::Value &>(v58);
}

void mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::YieldOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::YieldOp>(a1, *(**a2 + 32));
  v9[0] = a2;
  v9[1] = v6;
  v10[0] = v11;
  v10[1] = 0x400000000;
  v11[4] = v12;
  v11[5] = 0x400000000;
  v12[4] = v13;
  v12[5] = 0x400000000;
  v13[8] = 4;
  v13[9] = v14;
  v13[10] = 0x100000000;
  v14[1] = v15;
  v14[2] = 0x100000000;
  v15[1] = 0;
  v15[2] = 0;
  v15[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v15[4] = 0;
  v15[6] = 0;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v10, a3, 0, a3, 1);
  v7 = mlir::Operation::create(v9);
  mlir::OpBuilder::insert(a1, v7);
  mlir::OperationState::~OperationState(v9);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t getReduceOps<mlir::ODIE::Compiler::CoreML::ReduceMaxOp>(uint64_t *a1, const char **a2, void **a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t **a7)
{
  v9 = a4;
  v59[8] = *MEMORY[0x277D85DE8];
  v42 = a4;
  ReductionDimFromTupleOrNone = getReductionDimFromTupleOrNone(a1, a4, a5, *a3);
  if ((v14 & 1) == 0)
  {
    v35 = *a3;
    v48 = 257;
    emitDiag(v35, 2, v45, &v49);
    if (v49)
    {
      mlir::Diagnostic::operator<<<37ul>(&v50, " failed to infer reduction dims for ");
      if (v49)
      {
        mlir::Diagnostic::operator<<(&v50, v9);
      }
    }

    goto LABEL_25;
  }

  v15 = ReductionDimFromTupleOrNone;
  v49 = "Dims are not statically shaped.";
  v53 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(ReductionDimFromTupleOrNone, &v49, v41);
  if (v41[16] != 1)
  {
    goto LABEL_26;
  }

  v48 = 1283;
  v16 = *a2;
  v17 = a2[1];
  v45[0] = "input and output of ";
  v46 = v16;
  v47 = v17;
  v49 = v45;
  v51 = " must be ranked.";
  v53 = 770;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &v49, &v38);
  if (v40 != 1)
  {
    goto LABEL_26;
  }

  v18 = v38;
  v19 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v38);
  v21 = v18;
  if (v19)
  {
    v21 = (*(v20 + 8))(v20, v19);
  }

  v22 = *a7;
  v23 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(*a7);
  if (v23)
  {
    v22 = (*(v24 + 8))(v24, v23);
  }

  if (v21 == v22)
  {
    goto LABEL_14;
  }

  if (*(*v21 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v21[1] & 0x3FFFFFFF) != 1 || *(*v22 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v22[1] & 0x3FFFFFFF) != 0x20)
  {
    v36 = *a3;
    v48 = 257;
    emitDiag(v36, 2, v45, &v49);
    if (v49)
    {
      mlir::Diagnostic::operator<<<44ul>(&v50, "input and output types are mismatching for ");
    }

    mlir::InFlightDiagnostic::append<llvm::StringRef const&>(&v49, a2);
LABEL_25:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v49);
LABEL_26:
    result = 0;
    goto LABEL_27;
  }

  v25 = mlir::IntegerType::get(*a1, 32, 1);
  v26 = *v39;
  LOBYTE(v49) = 0;
  LOBYTE(v51) = 0;
  v49 = v26(v39, v18, &v49, v25);
  v50 = v27;
  v9 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::ShapedType,mlir::Value &>(a1, a1[4], &v49, &v42) - 16;
LABEL_14:
  v28 = a1[4];
  v29 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceMaxOp,void>::id, *(**v28 + 32));
  if ((v30 & 1) == 0)
  {
    v48 = 1283;
    v46 = "coreml.reduce_max";
    v47 = 17;
    v44 = 259;
    llvm::operator+(v45, &v43, &v49);
    llvm::report_fatal_error(&v49, 1);
  }

  v49 = v28;
  v50 = v29;
  v51 = &v53;
  v52 = 0x400000000;
  v54 = v56;
  v55 = 0x400000000;
  v56[4] = v57;
  v56[5] = 0x400000000;
  v57[8] = 4;
  v57[9] = v58;
  v57[10] = 0x100000000;
  v58[1] = v59;
  v58[2] = 0x100000000;
  v59[1] = 0;
  v59[2] = 0;
  v59[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v59[4] = 0;
  v59[6] = 0;
  mlir::ODIE::Compiler::CoreML::ReduceMaxOp::build(a1, &v49, *a7, v9, v15, *a6);
  v31 = mlir::Operation::create(&v49);
  mlir::OpBuilder::insert(a1, v31);
  v32 = *(*(v31 + 6) + 16);
  v33 = v31 - 16;
  mlir::OperationState::~OperationState(&v49);
  if (v32 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceMaxOp,void>::id)
  {
    result = v33;
  }

  else
  {
    result = -16;
  }

LABEL_27:
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getReduceOps<mlir::ODIE::Compiler::CoreML::ReduceMinOp>(uint64_t *a1, const char **a2, void **a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t **a7)
{
  v9 = a4;
  v59[8] = *MEMORY[0x277D85DE8];
  v42 = a4;
  ReductionDimFromTupleOrNone = getReductionDimFromTupleOrNone(a1, a4, a5, *a3);
  if ((v14 & 1) == 0)
  {
    v35 = *a3;
    v48 = 257;
    emitDiag(v35, 2, v45, &v49);
    if (v49)
    {
      mlir::Diagnostic::operator<<<37ul>(&v50, " failed to infer reduction dims for ");
      if (v49)
      {
        mlir::Diagnostic::operator<<(&v50, v9);
      }
    }

    goto LABEL_25;
  }

  v15 = ReductionDimFromTupleOrNone;
  v49 = "Dims are not statically shaped.";
  v53 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(ReductionDimFromTupleOrNone, &v49, v41);
  if (v41[16] != 1)
  {
    goto LABEL_26;
  }

  v48 = 1283;
  v16 = *a2;
  v17 = a2[1];
  v45[0] = "input and output of ";
  v46 = v16;
  v47 = v17;
  v49 = v45;
  v51 = " must be ranked.";
  v53 = 770;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &v49, &v38);
  if (v40 != 1)
  {
    goto LABEL_26;
  }

  v18 = v38;
  v19 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v38);
  v21 = v18;
  if (v19)
  {
    v21 = (*(v20 + 8))(v20, v19);
  }

  v22 = *a7;
  v23 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(*a7);
  if (v23)
  {
    v22 = (*(v24 + 8))(v24, v23);
  }

  if (v21 == v22)
  {
    goto LABEL_14;
  }

  if (*(*v21 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v21[1] & 0x3FFFFFFF) != 1 || *(*v22 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v22[1] & 0x3FFFFFFF) != 0x20)
  {
    v36 = *a3;
    v48 = 257;
    emitDiag(v36, 2, v45, &v49);
    if (v49)
    {
      mlir::Diagnostic::operator<<<44ul>(&v50, "input and output types are mismatching for ");
    }

    mlir::InFlightDiagnostic::append<llvm::StringRef const&>(&v49, a2);
LABEL_25:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v49);
LABEL_26:
    result = 0;
    goto LABEL_27;
  }

  v25 = mlir::IntegerType::get(*a1, 32, 1);
  v26 = *v39;
  LOBYTE(v49) = 0;
  LOBYTE(v51) = 0;
  v49 = v26(v39, v18, &v49, v25);
  v50 = v27;
  v9 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::ShapedType,mlir::Value &>(a1, a1[4], &v49, &v42) - 16;
LABEL_14:
  v28 = a1[4];
  v29 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceMinOp,void>::id, *(**v28 + 32));
  if ((v30 & 1) == 0)
  {
    v48 = 1283;
    v46 = "coreml.reduce_min";
    v47 = 17;
    v44 = 259;
    llvm::operator+(v45, &v43, &v49);
    llvm::report_fatal_error(&v49, 1);
  }

  v49 = v28;
  v50 = v29;
  v51 = &v53;
  v52 = 0x400000000;
  v54 = v56;
  v55 = 0x400000000;
  v56[4] = v57;
  v56[5] = 0x400000000;
  v57[8] = 4;
  v57[9] = v58;
  v57[10] = 0x100000000;
  v58[1] = v59;
  v58[2] = 0x100000000;
  v59[1] = 0;
  v59[2] = 0;
  v59[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v59[4] = 0;
  v59[6] = 0;
  mlir::ODIE::Compiler::CoreML::ReduceMinOp::build(a1, &v49, *a7, v9, v15, *a6);
  v31 = mlir::Operation::create(&v49);
  mlir::OpBuilder::insert(a1, v31);
  v32 = *(*(v31 + 6) + 16);
  v33 = v31 - 16;
  mlir::OperationState::~OperationState(&v49);
  if (v32 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceMinOp,void>::id)
  {
    result = v33;
  }

  else
  {
    result = -16;
  }

LABEL_27:
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::ShapedType,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CastOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v8;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
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
  mlir::ODIE::Compiler::CoreML::CastOp::build(a1, v13, *a3, *a4);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::PowOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::PowOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v8;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
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
  mlir::ODIE::Compiler::CoreML::PowOp::build(a1, v13, *a3, *a4);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PowOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::PowOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PowOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.pow";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::LogOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::LogOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "coreml.log";
    v5[3] = 10;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::LogOp,mlir::ShapedType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::LogOp>(*(**a2 + 32));
  v13[0] = a2;
  v13[1] = v8;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
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
  mlir::ODIE::Compiler::CoreML::LogOp::build(a1, v13, *a3, *a4);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::LogOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::LogOp &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::DivideOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::DivideOp::build(a1, v15, *a3, *a4 - 16, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::DivideOp,void>::id)
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

uint64_t replaceBinaryLogicalOp<mlir::ODIE::Compiler::CoreML::AndOp>(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::{lambda(mlir::Value,mlir::ShapedType)#1}::operator()(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[25] = *MEMORY[0x277D85DE8];
  v6 = (*(a4 + 8))(a4, a3);
  if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v6[2] & 0x3FFFFFFF) != 1)
  {
    ComparisonWithZero = mlir::ODIE::Compiler::getComparisonWithZero(*a1, a2);
    if (v8)
    {
      a2 = ComparisonWithZero;
    }

    else
    {
      v9 = *(*a1[1] + 24);
      v12[16] = 257;
      emitDiag(v9, 2, v12, &v13);
      if (v13)
      {
        mlir::Diagnostic::operator<<<32ul>(v14, "unable to compare input tensor ");
        if (v13)
        {
          mlir::Diagnostic::operator<<(v14, a2);
          if (v13)
          {
            mlir::Diagnostic::operator<<<11ul>(v14, " with zero");
          }
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
      a2 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return a2;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AndOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AndOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::AndOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AndOp,void>::id)
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

uint64_t replaceBinaryLogicalOp<mlir::ODIE::Compiler::CoreML::OrOp>(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::{lambda(mlir::Value,mlir::ShapedType)#1}::operator()(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[25] = *MEMORY[0x277D85DE8];
  v6 = (*(a4 + 8))(a4, a3);
  if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v6[2] & 0x3FFFFFFF) != 1)
  {
    ComparisonWithZero = mlir::ODIE::Compiler::getComparisonWithZero(*a1, a2);
    if (v8)
    {
      a2 = ComparisonWithZero;
    }

    else
    {
      v9 = *(*a1[1] + 24);
      v12[16] = 257;
      emitDiag(v9, 2, v12, &v13);
      if (v13)
      {
        mlir::Diagnostic::operator<<<32ul>(v14, "unable to compare input tensor ");
        if (v13)
        {
          mlir::Diagnostic::operator<<(v14, a2);
          if (v13)
          {
            mlir::Diagnostic::operator<<<11ul>(v14, " with zero");
          }
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
      a2 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t replaceBinaryLogicalOp<mlir::ODIE::Compiler::CoreML::XorOp>(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::{lambda(mlir::Value,mlir::ShapedType)#1}::operator()(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[25] = *MEMORY[0x277D85DE8];
  v6 = (*(a4 + 8))(a4, a3);
  if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v6[2] & 0x3FFFFFFF) != 1)
  {
    ComparisonWithZero = mlir::ODIE::Compiler::getComparisonWithZero(*a1, a2);
    if (v8)
    {
      a2 = ComparisonWithZero;
    }

    else
    {
      v9 = *(*a1[1] + 24);
      v12[16] = 257;
      emitDiag(v9, 2, v12, &v13);
      if (v13)
      {
        mlir::Diagnostic::operator<<<32ul>(v14, "unable to compare input tensor ");
        if (v13)
        {
          mlir::Diagnostic::operator<<(v14, a2);
          if (v13)
          {
            mlir::Diagnostic::operator<<<11ul>(v14, " with zero");
          }
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
      a2 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return a2;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::XorOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::XorOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::XorOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::XorOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::XorOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::XorOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.xor";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

void getReduceResultType(mlir::Operation *a1, uint64_t a2)
{
  if (*(a2 + 36))
  {
    v3 = a2 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id)
  {
    v9 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(**(v4 + 8));
    if (v9)
    {
      *a1 = v9;
      *(a1 + 1) = v10;
      *(a1 + 16) = 1;
    }

    else
    {
      *a1 = 0;
      *(a1 + 16) = 0;
    }
  }

  else
  {
    v5 = *(a2 + 24);
    v6 = *(*(a2 + 48) + 8);
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    v12 = 1283;
    v11[0] = "input and output of ";
    v11[2] = v8;
    v11[3] = v7;
    v13[0] = v11;
    v13[2] = " must be ranked.";
    v14 = 770;
    mlir::ODIE::Compiler::getShapedRankedType(v4, v5, v13, a1);
  }
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReduceMeanOp,mlir::ShapedType const&,mlir::Value &,mlir::Value &,mlir::Value const&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReduceMeanOp>(a1, *(**a2 + 32));
  v17[0] = a2;
  v17[1] = v12;
  v17[2] = v18;
  v17[3] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  mlir::ODIE::Compiler::CoreML::ReduceMeanOp::build(a1, v17, *a3, *a4, *a5, *a6);
  v13 = mlir::Operation::create(v17);
  mlir::OpBuilder::insert(a1, v13);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceMeanOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MaxPool2dOp,mlir::Type &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MaxPool2dOp,void>::id, *(**a2 + 32));
  if ((v18 & 1) == 0)
  {
    v26 = 1283;
    v25[2] = "coreml.max_pool_2d";
    v25[3] = 18;
    v24 = 259;
    llvm::operator+(v25, &v23, v27);
    llvm::report_fatal_error(v27, 1);
  }

  v27[0] = a2;
  v27[1] = v17;
  v27[2] = v28;
  v27[3] = 0x400000000;
  v28[4] = v29;
  v28[5] = 0x400000000;
  v29[4] = v30;
  v29[5] = 0x400000000;
  v30[8] = 4;
  v30[9] = v31;
  v30[10] = 0x100000000;
  v31[1] = v32;
  v31[2] = 0x100000000;
  v32[1] = 0;
  v32[2] = 0;
  v32[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v32[4] = 0;
  v32[6] = 0;
  mlir::ODIE::Compiler::CoreML::MaxPool2dOp::build(a1, v27, *a3, *a4, *a5, *a6, *a7, *a8, *a9);
  v19 = mlir::Operation::create(v27);
  mlir::OpBuilder::insert(a1, v19);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MaxPool2dOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v27);
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MaximumOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MaximumOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v8;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
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
  mlir::ODIE::Compiler::CoreML::MaximumOp::build(a1, v13, *a3, *a4);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MaximumOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MinimumOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MinimumOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v8;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
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
  mlir::ODIE::Compiler::CoreML::MinimumOp::build(a1, v13, *a3, *a4);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MinimumOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MulOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v8;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
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
  mlir::ODIE::Compiler::CoreML::MulOp::build(a1, v13, *a3, *a4);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t replaceGroupNorm(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_1::operator()(uint64_t a1, float a2)
{
  v33[8] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v22 = a2;
  v25 = 1;
  v4 = *(**v3 + 440);
  *&v26 = &v25;
  *(&v26 + 1) = 1;
  v23 = 0;
  v24 = v4;
  v24 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v4 + 32), &v26, &v24, &v23);
  v5 = mlir::TensorType::operator mlir::ShapedType(&v24);
  *&v26 = mlir::DenseIntOrFPElementsAttr::getRaw(v5, v6, &v22, 4);
  v7 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(v3, v3[4], &v26);
  v8 = mlir::ODIE::Compiler::castValueToElementType(*a1, (v7 - 16), **(a1 + 8));
  if (v9)
  {
    v25 = 0x8000000000000000;
    v10 = *a1;
    v11 = **(a1 + 8);
    *&v26 = &v25;
    *(&v26 + 1) = 1;
    v23 = 0;
    v24 = v11;
    v12 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v11 + 32), &v26, &v24, &v23);
    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v15 = v10[4];
    v16 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>(v10, *(**v15 + 32));
    *&v26 = v15;
    *(&v26 + 1) = v16;
    v27 = v29;
    v28 = 0x400000000;
    v29[4] = v30;
    v29[5] = 0x400000000;
    v30[4] = v31;
    v30[5] = 0x400000000;
    v31[8] = 4;
    v31[9] = v32;
    v31[10] = 0x100000000;
    v32[1] = v33;
    v32[2] = 0x100000000;
    v33[1] = 0;
    v33[2] = 0;
    v33[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v33[4] = 0;
    v33[6] = 0;
    mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::build(v10, &v26, v12, v8, *v14 - 16, *v13);
    v17 = mlir::Operation::create(&v26);
    mlir::OpBuilder::insert(v10, v17);
    v18 = *(*(v17 + 6) + 16);
    v19 = v17 - 16;
    mlir::OperationState::~OperationState(&v26);
    if (v18 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,void>::id)
    {
      v8 = v19;
    }

    else
    {
      v8 = -16;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t replaceGroupNorm(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_2::operator()(uint64_t **a1, uint64_t a2)
{
  v36[8] = *MEMORY[0x277D85DE8];
  ShapeAsValue = getShapeAsValue(*a1, a2);
  v5 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v8 = mlir::detail::InterfaceMap::lookup(v6 + 8, v7);
  (*(v8 + 24))(v8, v5);
  v9 = *a1;
  v11 = v10 - 2;
  LODWORD(v29) = 2;
  DWORD1(v29) = v10 - 2;
  v12 = mlir::ODIE::Compiler::create1DTensorConstant<int>(v9, &v29, 2);
  v13 = *a1;
  v27 = 2;
  v14 = mlir::IntegerType::get(*v13, 32, 1);
  *&v29 = &v27;
  *(&v29 + 1) = 1;
  v28[0] = v14;
  v25 = 0;
  v28[0] = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v14 + 32), &v29, v28, &v25);
  v26 = v11;
  v15 = mlir::IntegerType::get(**a1, 32, 1);
  *&v29 = &v26;
  *(&v29 + 1) = 1;
  v24 = 0;
  v25 = v15;
  v28[1] = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v15 + 32), &v29, &v25, &v24);
  v16 = a1[1];
  v17 = v13[4];
  v18 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SplitOp>(*(**v17 + 32));
  *&v29 = v17;
  *(&v29 + 1) = v18;
  v30 = v32;
  v31 = 0x400000000;
  v32[4] = v33;
  v32[5] = 0x400000000;
  v33[4] = v34;
  v33[5] = 0x400000000;
  v34[8] = 4;
  v34[9] = v35;
  v34[10] = 0x100000000;
  v35[1] = v36;
  v35[2] = 0x100000000;
  v36[1] = 0;
  v36[2] = 0;
  v36[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v36[4] = 0;
  v36[6] = 0;
  mlir::ODIE::Compiler::CoreML::SplitOp::build(v13, &v29, v28 + 2, 2, ShapeAsValue, v12, *v16);
  v19 = mlir::Operation::create(&v29);
  mlir::OpBuilder::insert(v13, v19);
  v20 = *(*(v19 + 6) + 16);
  v21 = v19 - 32;
  mlir::OperationState::~OperationState(&v29);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SplitOp,void>::id)
  {
    result = v21;
  }

  else
  {
    result = -32;
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

char *getShapeAsValue(uint64_t *a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v12 = a2;
  v3 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v6 = mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  (*(v6 + 24))(v6, v3);
  v16[0] = v7;
  v8 = mlir::IntegerType::get(*a1, 32, 1);
  *&v15 = v16;
  *(&v15 + 1) = 1;
  v13 = 0;
  v14 = v8;
  *&v15 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v8 + 32), &v15, &v14, &v13);
  v9 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GetShapeOp,mlir::RankedTensorType,mlir::Value &>(a1, a1[4], &v15, &v12);
  v10 = *MEMORY[0x277D85DE8];
  return v9 - 16;
}

uint64_t mlir::Diagnostic::operator<<<95ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReshapeOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::ReshapeOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SplitOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SplitOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "coreml.split";
    v5[3] = 12;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::ODIE::Compiler::CoreML::ConcatOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReshapeOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::ReshapeOp::build(a1, v15, *a3, *a4, *a5 - 16);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::ShapedType &,mlir::Value &,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReshapeOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::ReshapeOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
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

uint64_t *llvm::CastInfo<mlir::ShapedType,mlir::RankedTensorType,void>::doCast(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return a1;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::PowOp,mlir::Type,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::PowOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::PowOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PowOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::DivideOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::DivideOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::DivideOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::RankedTensorType &,mlir::DenseFPElementsAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t **a4)
{
  v25[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConstantOp>(a1, *(**a2 + 32));
  v19[0] = a2;
  v19[1] = v8;
  v19[2] = &v20;
  v19[3] = 0x400000000;
  v21[0] = v22;
  v21[1] = 0x400000000;
  v22[4] = v23;
  v22[5] = 0x400000000;
  v23[8] = 4;
  v23[9] = v24;
  v23[10] = 0x100000000;
  v24[1] = v25;
  v24[2] = 0x100000000;
  v25[1] = 0;
  v25[2] = 0;
  v25[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v25[4] = 0;
  v25[6] = 0;
  v9 = *a3;
  v11 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(a4);
  if (v11)
  {
    v12 = *(v10 + 24);
  }

  else
  {
    v12 = 0;
  }

  v18 = v9;
  v13 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(v19);
  *v13 = v11;
  v13[1] = v12;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v21, &v18, v19);
  v14 = mlir::Operation::create(v19);
  mlir::OpBuilder::insert(a1, v14);
  if (*(*(v14 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

char *get1DTensorOfIntegersExceptAtOneIndex(uint64_t *a1, int64_t a2, int a3, unint64_t a4, char *a5, uint64_t a6)
{
  v8 = a4;
  v89 = *MEMORY[0x277D85DE8];
  v60 = a4;
  v67 = 0uLL;
  *&v65 = &v67;
  if ((~*(a4 + 8) & 7) != 0)
  {
    v12 = a4;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = *(v12 + 8) & 7;
    if (v13 == 6)
    {
      v14 = v12 + 24 * *(v12 + 16);
      v15 = v14 + 120;
      if (v14 == -120)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v15 = v12 + 16 * v13 + 16;
    }

    if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v65, v15))
    {
      goto LABEL_27;
    }

    v67 = 0uLL;
    *&v65 = &v67;
    v16 = (~*(a5 + 2) & 7) != 0 ? a5 : 0;
    if (!v16)
    {
      goto LABEL_27;
    }

    v17 = *(v16 + 1) & 7;
    if (v17 == 6)
    {
      v18 = &v16[24 * *(v16 + 2)];
      v19 = (v18 + 120);
      if (v18 == -120)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v19 = &v16[16 * v17 + 16];
    }

    if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v65, v19))
    {
      *&v65 = v66;
      *(&v65 + 1) = 0xC00000000;
      llvm::SmallVectorImpl<int>::assign(&v65, a2, a3);
      mlir::ODIE::Compiler::extract1DIntVector<int>(v8, &v67);
      if (v71)
      {
        v20 = *v67;
        if (v67 != &v68)
        {
          free(v67);
        }

        mlir::ODIE::Compiler::extract1DIntVector<int>(a5, &v67);
        if (v71)
        {
          v21 = v67;
          v22 = v65;
          *(v65 + 4 * ((v20 % a2 + a2) % a2)) = *v67;
          if (v21 != &v68)
          {
            free(v21);
            v22 = v65;
          }

          v23 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v22, DWORD2(v65));
          if (v65 != v66)
          {
            free(v65);
          }

          goto LABEL_62;
        }
      }

      goto LABEL_63;
    }
  }

LABEL_27:
  v24 = create1DTensorConstantWithElement<int>(a1, 1, 1uLL);
  v59 = v24;
  v67 = 0uLL;
  *&v65 = &v67;
  if ((~*(v8 + 2) & 7) != 0)
  {
    v25 = v8;
  }

  else
  {
    v25 = 0;
  }

  if (!v25)
  {
    goto LABEL_48;
  }

  v26 = *(v25 + 1) & 7;
  if (v26 == 6)
  {
    v27 = &v25[24 * *(v25 + 2)];
    v28 = (v27 + 120);
    if (v27 == -120)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v28 = &v25[16 * v26 + 16];
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v65, v28))
  {
LABEL_48:
    v31 = v66;
    *&v65 = v66;
    *(&v65 + 1) = 0xC00000000;
    llvm::SmallVectorImpl<int>::assign(&v65, a2, a3);
    v56 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v65, DWORD2(v65));
    *&v67 = v8;
    if (!*((*(v8 + 1) & 0xFFFFFFFFFFFFFFF8) + 16))
    {
      v62 = *(v24 + 1) & 0xFFFFFFFFFFFFFFF8;
      v8 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, a6, &v62, &v67, &v59) - 16;
    }

    v60 = v8;
    *&v67 = a5;
    if (!*((*(a5 + 1) & 0xFFFFFFFFFFFFFFF8) + 16))
    {
      v62 = *(v24 + 1) & 0xFFFFFFFFFFFFFFF8;
      a5 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, a6, &v62, &v67, &v59) - 16;
    }

    Tensor = create1DTensorConstantWithElement<int>(a1, a2, 1uLL);
    v64 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ModuloOp,mlir::Value &,mlir::Value &>(a1, a1[4], &v60, &Tensor);
    v37 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ODIE::Compiler::CoreML::ModuloOp &,mlir::Value &>(a1, a1[4], &v64, &Tensor);
    v38 = a1[4];
    v39 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ModuloOp>(a1, *(**v38 + 32));
    *&v67 = v38;
    *(&v67 + 1) = v39;
    v68 = v70;
    v69 = 0x400000000;
    v71 = v73;
    v72 = 0x400000000;
    v74 = v76;
    v75 = 0x400000000;
    v77 = 4;
    v78 = &v80;
    v79 = 0x100000000;
    v81 = &v83;
    v82 = 0x100000000;
    v84 = 0;
    v85 = 0;
    v86 = &mlir::detail::TypeIDResolver<void,void>::id;
    v87 = 0;
    v88 = 0;
    mlir::ODIE::Compiler::CoreML::ModuloOp::build(a1, &v67, (v37 - 16), Tensor);
    v40 = mlir::Operation::create(&v67);
    mlir::OpBuilder::insert(a1, v40);
    v41 = *(*(v40 + 6) + 16);
    mlir::OperationState::~OperationState(&v67);
    if (v41 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ModuloOp,void>::id)
    {
      v42 = v40;
    }

    else
    {
      v42 = 0;
    }

    v57 = v42;
    v43 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ODIE::Compiler::CoreML::ModuloOp &,mlir::Value &>(a1, a1[4], &v57, &v59);
    v63 = a2;
    v44 = mlir::IntegerType::get(*a1, 32, 1);
    *&v67 = &v63;
    *(&v67 + 1) = 1;
    v61 = 0;
    v62 = v44;
    v45 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v44 + 32), &v67, &v62, &v61);
    v46 = a1[4];
    updated = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SliceUpdateOp>(a1, *(**v46 + 32));
    *&v67 = v46;
    *(&v67 + 1) = updated;
    v68 = v70;
    v69 = 0x400000000;
    v71 = v73;
    v72 = 0x400000000;
    v74 = v76;
    v75 = 0x400000000;
    v77 = 4;
    v78 = &v80;
    v79 = 0x100000000;
    v81 = &v83;
    v82 = 0x100000000;
    v84 = 0;
    v85 = 0;
    v86 = &mlir::detail::TypeIDResolver<void,void>::id;
    v87 = 0;
    v88 = 0;
    mlir::ODIE::Compiler::CoreML::SliceUpdateOp::build(a1, &v67, v45, v56, (v42 - 16), (v43 - 16), v59, a5);
    v48 = mlir::Operation::create(&v67);
    mlir::OpBuilder::insert(a1, v48);
    if (*(*(v48 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceUpdateOp,void>::id)
    {
      v35 = v48;
    }

    else
    {
      v35 = 0;
    }

    mlir::OperationState::~OperationState(&v67);
    v36 = v65;
LABEL_59:
    if (v36 != v31)
    {
      free(v36);
    }

    v23 = v35 - 16;
LABEL_62:
    v49 = *MEMORY[0x277D85DE8];
    return v23;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v8, &v67);
  if (v71)
  {
    v29 = *v67;
    if (v67 != &v68)
    {
      free(v67);
    }

    v30 = (v29 % a2 + a2) % a2;
    v31 = &v68;
    *&v67 = &v68;
    *(&v67 + 1) = 0x600000000;
    if (v30 >= 1)
    {
      *&v65 = v66;
      *(&v65 + 1) = 0xC00000000;
      llvm::SmallVectorImpl<int>::assign(&v65, v30, a3);
      v32 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v65, DWORD2(v65));
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v67, v32);
      if (v65 != v66)
      {
        free(v65);
      }
    }

    *&v65 = a5;
    if (!*((*(a5 + 1) & 0xFFFFFFFFFFFFFFF8) + 16))
    {
      v62 = *(v24 + 1) & 0xFFFFFFFFFFFFFFF8;
      a5 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, a6, &v62, &v65, &v59) - 16;
    }

    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v67, a5);
    if (v30 < a2 - 1)
    {
      *&v65 = v66;
      *(&v65 + 1) = 0xC00000000;
      llvm::SmallVectorImpl<int>::assign(&v65, ~v30 + a2, a3);
      v33 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v65, DWORD2(v65));
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v67, v33);
      if (v65 != v66)
      {
        free(v65);
      }
    }

    LODWORD(v65) = 0;
    Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v65, 1, 0);
    v64 = a2;
    v34 = mlir::IntegerType::get(*a1, 32, 1);
    *&v65 = &v64;
    *(&v65 + 1) = 1;
    v61 = 0;
    v62 = v34;
    *&v65 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v34 + 32), &v65, &v62, &v61);
    v35 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::Value &,llvm::SmallVector<mlir::Value,6u> &>(a1, a6, &v65, &Tensor, &v67);
    v36 = v67;
    goto LABEL_59;
  }

LABEL_63:
  v51 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::Type,mlir::Value &,mlir::Value &>(v51, v52, v53, v54, v55);
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::Type,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReshapeOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::ReshapeOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ODIE::Compiler::CoreML::ModuloOp &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AddOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v8;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
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
  mlir::ODIE::Compiler::CoreML::AddOp::build(a1, v13, *a3 - 16, *a4);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,mlir::Type,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::ShrinkDimsOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SubOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SubOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v8;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
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
  mlir::ODIE::Compiler::CoreML::SubOp::build(a1, v13, *a3, *a4);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SubOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t replaceTopK(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_2::operator()(void ***a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v11 = **a1;
    v20 = 257;
    emitDiag(v11, 2, &v18, &v21);
    if (!v21)
    {
      goto LABEL_15;
    }

    mlir::Diagnostic::operator<<<43ul>(v22, "topk op expects ranked tensor for operand ");
    if (!v21)
    {
      goto LABEL_15;
    }

    v20 = 261;
    v18 = a3;
    v19 = a4;
LABEL_5:
    mlir::Diagnostic::operator<<(v22, &v18);
LABEL_15:
    v14 = v22[192] ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
    goto LABEL_16;
  }

  if (v10[2])
  {
    goto LABEL_10;
  }

  v21 = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!a5)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x25CFE04B0);
  }

  if (((*(*a5 + 48))(a5, &v21) & 1) == 0)
  {
LABEL_10:
    v15 = **a1;
    v20 = 257;
    emitDiag(v15, 2, &v18, &v21);
    if (!v21)
    {
      goto LABEL_15;
    }

    mlir::Diagnostic::operator<<<25ul>(v22, "topk op expects operand ");
    if (!v21)
    {
      goto LABEL_15;
    }

    v20 = 261;
    v18 = a3;
    v19 = a4;
    mlir::Diagnostic::operator<<(v22, &v18);
    if (!v21)
    {
      goto LABEL_15;
    }

    mlir::Diagnostic::operator<<<26ul>(v22, " to be a scalar of type: ");
    if (!v21)
    {
      goto LABEL_15;
    }

    v20 = 261;
    v18 = a6;
    v19 = a7;
    goto LABEL_5;
  }

  v14 = 1;
LABEL_16:
  v16 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

BOOL std::__function::__func<replaceTopK(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_0,std::allocator<replaceTopK(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_0>,BOOL ()(mlir::RankedTensorType)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  if (*(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (v3 = v2[2], v3 >> 30 == 1))
  {
    return (v3 & 0x3FFFFFFF) == 32;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(mlir::RankedTensorType)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SliceOp,mlir::Type &,mlir::ODIE::Compiler::CoreML::SortOp &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v24[8] = *MEMORY[0x277D85DE8];
  v14 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SliceOp>(a1, *(**a2 + 32));
  v19[0] = a2;
  v19[1] = v14;
  v19[2] = v20;
  v19[3] = 0x400000000;
  v20[4] = v21;
  v20[5] = 0x400000000;
  v21[4] = v22;
  v21[5] = 0x400000000;
  v22[8] = 4;
  v22[9] = v23;
  v22[10] = 0x100000000;
  v23[1] = v24;
  v23[2] = 0x100000000;
  v24[1] = 0;
  v24[2] = 0;
  v24[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v24[4] = 0;
  v24[6] = 0;
  mlir::ODIE::Compiler::CoreML::SliceOp::build(a1, v19, *a3, *a4 - 16, *a5, *a6, *a7);
  v15 = mlir::Operation::create(v19);
  mlir::OpBuilder::insert(a1, v15);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SliceOp,mlir::Type &,mlir::ODIE::Compiler::CoreML::ArgSortOp &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v24[8] = *MEMORY[0x277D85DE8];
  v14 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SliceOp>(a1, *(**a2 + 32));
  v19[0] = a2;
  v19[1] = v14;
  v19[2] = v20;
  v19[3] = 0x400000000;
  v20[4] = v21;
  v20[5] = 0x400000000;
  v21[4] = v22;
  v21[5] = 0x400000000;
  v22[8] = 4;
  v22[9] = v23;
  v22[10] = 0x100000000;
  v23[1] = v24;
  v23[2] = 0x100000000;
  v24[1] = 0;
  v24[2] = 0;
  v24[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v24[4] = 0;
  v24[6] = 0;
  mlir::ODIE::Compiler::CoreML::SliceOp::build(a1, v19, *a3, *a4 - 16, *a5, *a6, *a7);
  v15 = mlir::Operation::create(v19);
  mlir::OpBuilder::insert(a1, v15);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,mlir::Type,mlir::Value &,mlir::ODIE::Compiler::CoreML::ReshapeOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::ExpandDimsOp::build(a1, v15, *a3, *a4, *a5 - 16);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,void>::id)
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

uint64_t replaceUpsampleOp(uint64_t *a1, uint64_t *a2, unsigned int a3)
{
  v78 = *MEMORY[0x277D85DE8];
  v4 = a2[3];
  v5 = a2[6];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) < 4u || *(a2 + 9) >= 2u)
  {
    v72 = 257;
    emitDiag(v4, 2, &v69, &v74);
    if (v74)
    {
      mlir::Diagnostic::operator<<<35ul>(v75, "expects 4 inputs and 1 output for ");
      if (v74)
      {
        mlir::Diagnostic::operator<<(v75, v5);
        if (v74)
        {
          mlir::Diagnostic::operator<<<7ul>(v75, ", got ");
        }
      }
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v6 = *(a2 + 17);
    }

    else
    {
      v6 = 0;
    }

    LODWORD(v69) = v6;
    v7 = *(mlir::InFlightDiagnostic::operator<<<unsigned int>(&v74, &v69) + 200);
    goto LABEL_11;
  }

  v66 = *(a2[9] + 24);
  v12 = *(v5 + 8);
  v14 = *(v12 + 16);
  v13 = *(v12 + 24);
  v72 = 1283;
  v69 = "Input to ";
  v71[0] = v14;
  v71[1] = v13;
  v74 = &v69;
  v75[1] = " must be a shaped type";
  v76 = 770;
  mlir::ODIE::Compiler::getShapedRankedType(v66, &v74, &v63);
  if (v65 != 1)
  {
    v4 = 0;
    goto LABEL_12;
  }

  v15 = a2[9];
  v16 = v15[7];
  v17 = v15[15];
  v18 = *(*(*(v16 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id && (*(v16 + 8) & 0xFFFFFFFFFFFFFFF8) != 0;
  v19 = *(*(*(v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id && (*(v17 + 8) & 0xFFFFFFFFFFFFFFF8) != 0;
  if (v18 == v19)
  {
    v72 = 257;
    emitDiag(v4, 2, &v69, &v74);
    if (v74)
    {
      mlir::Diagnostic::operator<<<51ul>(v75, "only one of size or scale_factor should be defined");
    }

    goto LABEL_31;
  }

  v20 = a3 == 0;
  v21 = !mlir::ODIE::Compiler::isConstFalse(v15[11]);
  if (v18)
  {
    if ((~*(v17 + 8) & 7) != 0)
    {
      v22 = v17;
    }

    else
    {
      v22 = 0;
    }

    if (v22)
    {
      v23 = *(v22 + 8) & 7;
      if (v23 == 6)
      {
        v24 = v22 + 24 * *(v22 + 16) + 120;
      }

      else
      {
        v24 = v22 + 16 * v23 + 16;
      }
    }

    else
    {
      v24 = 0;
    }

    getTupleAsValues(&v69, v24, v4);
    v30 = v70;
    if (v70 == 1)
    {
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v69, *v69);
      v30 = v70;
    }

    if (v30 == 2)
    {
      if (*(a2 + 9))
      {
        v31 = (a2 - 2);
      }

      else
      {
        v31 = 0;
      }

      v58 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v32 = mlir::ODIE::Compiler::createCoreMLResizeByScaleOp(a1, &v58, &v66, v69, v69 + 1, v20 & v21, a3, 0, *(*(a2[6] + 8) + 16), *(*(a2[6] + 8) + 24));
      goto LABEL_48;
    }

    v68 = 257;
    emitDiag(v4, 2, v67, &v74);
    if (v74)
    {
      v36 = "Scale factor must be a scalar or a tuple of size 2";
LABEL_52:
      mlir::Diagnostic::operator<<<51ul>(v75, v36);
      goto LABEL_80;
    }

    goto LABEL_80;
  }

  ShapeAsValue = getShapeAsValue(a1, v66);
  (*(v64 + 24))(v64, v63);
  v26 = v25;
  if ((~*(v16 + 8) & 7) != 0)
  {
    v27 = v16;
  }

  else
  {
    v27 = 0;
  }

  if (v27)
  {
    v28 = *(v27 + 8) & 7;
    if (v28 == 6)
    {
      v29 = v27 + 24 * *(v27 + 16) + 120;
    }

    else
    {
      v29 = v27 + 16 * v28 + 16;
    }
  }

  else
  {
    v29 = 0;
  }

  TupleAs1DIntTensor = getTupleAs1DIntTensor(v29, a1);
  if ((v38 & 1) == 0)
  {
    v72 = 257;
    emitDiag(v4, 2, &v69, &v74);
    if (v74)
    {
      mlir::Diagnostic::operator<<<56ul>(v75, "Failed to convert output_sizes tuple to a 1d int tensor");
    }

LABEL_31:
    v7 = v77;
LABEL_11:
    v4 = (v7 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v74);
LABEL_12:
    v8 = *MEMORY[0x277D85DE8];
    return v4;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(TupleAs1DIntTensor, &v69);
  if ((v73 & 1) == 0)
  {
    v68 = 257;
    emitDiag(v4, 2, v67, &v74);
    if (v74)
    {
      mlir::Diagnostic::operator<<<18ul>(v75, "Output sizes for ");
      if (v74)
      {
        mlir::Diagnostic::operator<<(v75, v5);
        if (v74)
        {
          mlir::Diagnostic::operator<<<35ul>(v75, " must be an int or a tuple of ints");
        }
      }
    }

    goto LABEL_80;
  }

  if (v70 == 2)
  {
    v40 = *v69;
    v39 = *(v69 + 1);
  }

  else
  {
    if (v70 != 1)
    {
      v68 = 257;
      emitDiag(v4, 2, v67, &v74);
      if (v74)
      {
        mlir::Diagnostic::operator<<<81ul>(v75, "Output sizes for upsample_bilinear2d must be an int or a tuple of ints of size 2");
      }

      goto LABEL_80;
    }

    v39 = *v69;
    v40 = *v69;
  }

  LODWORD(v74) = v40;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v74, 1, 0);
  LODWORD(v74) = v39;
  v60 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v74, 1, 0);
  v41 = mlir::ODIE::Compiler::calculateScaleFromOutputSize(a1, &ShapeAsValue, &v63, &v60, v26 - 1);
  v43 = v42;
  v58 = v41;
  v59 = v42;
  if (v65)
  {
    v56 = mlir::ODIE::Compiler::calculateScaleFromOutputSize(a1, &ShapeAsValue, &v63, &Tensor, v26 - 2);
    v57 = v44;
    if (v44 & 1) != 0 && (v43)
    {
      if (*(a2 + 9))
      {
        v45 = (a2 - 2);
      }

      else
      {
        v45 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v45, 0);
      v47 = *(a2[6] + 8);
      v48 = *(v47 + 16);
      v54 = *(v47 + 24);
      v55 = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
      v32 = mlir::ODIE::Compiler::createCoreMLResizeByScaleOp(a1, &v55, &v66, &v56, &v58, v20 & v21, a3, 1, v48, v54);
LABEL_48:
      v34 = v33;
      if (v33)
      {
        v35 = v32;
      }

      else
      {
        v68 = 257;
        emitDiag(v4, 2, v67, &v74);
        if (v74)
        {
          mlir::Diagnostic::operator<<<43ul>(v75, "Failed to create coreml.resize_by_scale op");
        }

        v4 = (v77 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v74);
        v35 = 0;
      }

      goto LABEL_81;
    }

    v68 = 257;
    emitDiag(v4, 2, v67, &v74);
    if (v74)
    {
      v36 = "Failed to calculate scales for upsample_bilinear2d";
      goto LABEL_52;
    }

LABEL_80:
    v4 = (v77 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v74);
    v35 = 0;
    v34 = 0;
LABEL_81:
    if (v73 == 1 && v69 != v71)
    {
      free(v69);
    }

    if (v34)
    {
      v74 = v35;
      v49 = *(a2 + 9);
      if (v49)
      {
        v50 = (a2 - 2);
      }

      else
      {
        v50 = 0;
      }

      mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v50, v49, &v74, 1);
      if (a2[2])
      {
        a2[2] = 0;
        v52 = *a2;
        v51 = a2[1];
        *v51 = *a2;
        *(v52 + 8) = v51;
        *a2 = 0;
        a2[1] = 0;
      }

      mlir::Operation::destroy(a2);
      v4 = 1;
    }

    goto LABEL_12;
  }

  v53 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SelectOp,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &>(v53);
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SelectOp,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SelectOp>(a1, *(**a2 + 32));
  v17[0] = a2;
  v17[1] = v12;
  v17[2] = v18;
  v17[3] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  mlir::ODIE::Compiler::CoreML::SelectOp::build(a1, v17, *a3, *a4, *a5, *a6);
  v13 = mlir::Operation::create(v17);
  mlir::OpBuilder::insert(a1, v13);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SelectOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::WhereOp,mlir::Type &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v27[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::WhereOp,void>::id, *(**a2 + 32));
  if ((v13 & 1) == 0)
  {
    v21 = 1283;
    v20[2] = "coreml.where";
    v20[3] = 12;
    v19 = 259;
    llvm::operator+(v20, &v18, v22);
    llvm::report_fatal_error(v22, 1);
  }

  v22[0] = a2;
  v22[1] = v12;
  v22[2] = v23;
  v22[3] = 0x400000000;
  v23[4] = v24;
  v23[5] = 0x400000000;
  v24[4] = v25;
  v24[5] = 0x400000000;
  v25[8] = 4;
  v25[9] = v26;
  v25[10] = 0x100000000;
  v26[1] = v27;
  v26[2] = 0x100000000;
  v27[1] = 0;
  v27[2] = 0;
  v27[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v27[4] = 0;
  v27[6] = 0;
  mlir::ODIE::Compiler::CoreML::WhereOp::build(a1, v22, *a3, *a4, *a5, *a6);
  v14 = mlir::Operation::create(v22);
  mlir::OpBuilder::insert(a1, v14);
  if (*(*(v14 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::WhereOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t anonymous namespace::reshapeConst(uint64_t a1, const void *a2, uint64_t a3, mlir::OpBuilder *a4)
{
  v4 = a1;
  v63[8] = *MEMORY[0x277D85DE8];
  v55 = 0uLL;
  __src = &v55;
  v5 = *(a1 + 8) & 7;
  if (v5 == 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  if (!v6)
  {
    goto LABEL_16;
  }

  v10 = *(v6 + 8) & 7;
  if (v10 == 6)
  {
    v11 = v6 + 24 * *(v6 + 16);
    v12 = v11 + 120;
    if (v11 == -120)
    {
LABEL_16:
      if (v5 == 7)
      {
        v18 = 0;
      }

      else
      {
        v18 = v4;
      }

      if (!v18)
      {
        goto LABEL_22;
      }

      v19 = *(v18 + 8) & 7;
      if (v19 == 6)
      {
        v20 = v18 + 24 * *(v18 + 16) + 120;
        if (!v20)
        {
LABEL_22:
          v21 = (v4 + 32);
LABEL_25:
          v22 = *v21;
          v53 = 257;
          emitDiag(v22, 2, &__src, &v55);
          if (v55)
          {
            mlir::Diagnostic::operator<<<19ul>(&v55 + 8, "expect const value");
          }

          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v55);
          v4 = 0;
          goto LABEL_49;
        }
      }

      else
      {
        v20 = v18 + 16 * v19 + 16;
      }

      v21 = (v20 + 24);
      goto LABEL_25;
    }
  }

  else
  {
    v12 = v6 + 16 * v10 + 16;
  }

  v13 = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&__src, v12);
  v5 = *(v4 + 8) & 7;
  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = (*(v4 + 8) & 7) == 7;
  if (v5 == 7)
  {
    v15 = 0;
  }

  else
  {
    v15 = v4;
  }

  if (v15)
  {
    v16 = *(v15 + 8) & 7;
    if (v16 == 6)
    {
      v17 = v15 + 24 * *(v15 + 16) + 120;
    }

    else
    {
      v17 = v15 + 16 * v16 + 16;
    }
  }

  else
  {
    v17 = 0;
  }

  Attr = mlir::Operation::getAttr(v17, "value", 5uLL);
  Raw = Attr;
  v25 = *(*Attr + 136);
  if (v25 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
  {
    v27 = Attr;
  }

  else
  {
    v27 = 0;
  }

  v28 = (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v28)
  {
    v29 = *v28;
    v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v31 = mlir::detail::InterfaceMap::lookup(v29 + 8, v30);
  }

  else
  {
    v31 = 0;
  }

  v32 = (*(v31 + 24))(v31, v28);
  if (a3 != v33 || memcmp(a2, v32, 8 * a3))
  {
    v34 = (*(v31 + 8))(v31, v28);
    *&v55 = a2;
    *(&v55 + 1) = a3;
    __src = v34;
    v54 = 0;
    *&v55 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v34 + 32), &v55, &__src, &v54);
    v35 = mlir::TensorType::operator mlir::ShapedType(&v55);
    if (*(v27 + 8) != v35)
    {
      Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v35, v36, *(v27 + 32), *(v27 + 40));
    }

    v50 = Raw;
    v37 = (*(v31 + 8))(v31, v28);
    *&v55 = a2;
    *(&v55 + 1) = a3;
    __src = v37;
    v54 = 0;
    v38 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v37 + 32), &v55, &__src, &v54);
    v39 = *(a4 + 4);
    v40 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConstantOp>(a4, *(**v39 + 32));
    *&v55 = v39;
    *(&v55 + 1) = v40;
    v56 = &v58;
    v57 = 0x400000000;
    v59[0] = v60;
    v59[1] = 0x400000000;
    v60[4] = v61;
    v60[5] = 0x400000000;
    v61[8] = 4;
    v61[9] = v62;
    v61[10] = 0x100000000;
    v62[1] = v63;
    v62[2] = 0x100000000;
    v63[1] = 0;
    v63[2] = 0;
    v63[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v63[4] = 0;
    v63[6] = 0;
    v42 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v50);
    if (v42)
    {
      v43 = *(v41 + 24);
    }

    else
    {
      v43 = 0;
    }

    __src = v38;
    v44 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(&v55);
    *v44 = v42;
    v44[1] = v43;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v59, &__src, v52);
    v45 = mlir::Operation::create(&v55);
    mlir::OpBuilder::insert(a4, v45);
    v46 = *(*(v45 + 6) + 16);
    v47 = v45 - 16;
    mlir::OperationState::~OperationState(&v55);
    if (v46 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
    {
      v4 = v47;
    }

    else
    {
      v4 = -16;
    }
  }

LABEL_49:
  v48 = *MEMORY[0x277D85DE8];
  return v4;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<anonymous namespace::createShapedZeroTensorConstant(mlir::ImplicitLocOpBuilder &,mlir::Type,mlir::ShapedType)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*a1 + 32);
  v4 = 257;
  emitDiag(v2, 2, v3, a2);
}

BOOL anonymous namespace::replaceQuantizeOrDequantize(uint64_t *a1, int a2, uint64_t *a3)
{
  v76 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 46) & 0x80) == 0 || *(a1 + 17) != 4)
  {
    v14 = a1[3];
    v72 = 257;
    emitDiag(v14, 2, v70, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<32ul>(&__src + 8, "unable to legalize TorchImport.");
      if (__src)
      {
        mlir::Diagnostic::operator<<(&__src + 8, a1[6]);
        if (__src)
        {
          mlir::Diagnostic::operator<<<38ul>(&__src + 8, "because number of inputs is incorrect");
        }
      }
    }

    goto LABEL_31;
  }

  v6 = a1[9];
  v7 = v6[3];
  v8 = v6[7];
  v9 = v6[11];
  v10 = v6[15];
  v68 = v10;
  v69 = v7;
  v11 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = *v11;
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v60 = mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
  }

  else
  {
    v60 = 0;
  }

  v15 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
  v59 = a2;
  if (v15)
  {
    v16 = *v15;
    v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v18 = mlir::detail::InterfaceMap::lookup(v16 + 8, v17);
  }

  else
  {
    v18 = 0;
  }

  v19 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19)
  {
    v20 = *v19;
    v21 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v22 = mlir::detail::InterfaceMap::lookup(v20 + 8, v21);
  }

  else
  {
    v22 = 0;
  }

  v66 = 0;
  *&__src = &v66;
  if ((~*(v10 + 8) & 7) != 0)
  {
    v23 = v10;
  }

  else
  {
    v23 = 0;
  }

  if (!v23)
  {
LABEL_29:
    v29 = a3[4];
    v72 = 257;
    emitDiag(v29, 2, v70, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<30ul>(&__src + 8, "A scalar int axis must exist.");
    }

LABEL_31:
    v30 = (v75 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    goto LABEL_32;
  }

  v24 = *(v23 + 8) & 7;
  if (v24 == 6)
  {
    v25 = v23 + 24 * *(v23 + 16);
    v26 = v25 + 120;
    if (v25 == -120)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v26 = v23 + 16 * v24 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&__src, v26))
  {
    goto LABEL_29;
  }

  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v66, &__src);
  *v70 = __src;
  v71 = v74;
  mlir::DenseElementsAttr::IntElementIterator::operator*(v70, &v63);
  if (v64 > 0x40)
  {
    v27 = *v63;
    MEMORY[0x25F891010]();
    if (v27 < 0)
    {
      goto LABEL_28;
    }

LABEL_34:
    v58 = v27;
    goto LABEL_36;
  }

  if (v64)
  {
    v27 = (v63 << -v64) >> -v64;
    if (v27 < 0)
    {
LABEL_28:
      (*(v60 + 24))(v60, v11);
      v58 = v27 + v28 - 1;
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v58 = 0;
LABEL_36:
  v70[0] = &v71;
  v70[1] = 0x600000000;
  v33 = (*(v18 + 24))(v18, v15);
  if (v34)
  {
    v35 = 8 * v34;
    v36 = 1;
    do
    {
      v37 = *v33++;
      v36 *= v37;
      v35 -= 8;
    }

    while (v35);
    if (v36 > 1)
    {
      goto LABEL_44;
    }
  }

  v38 = (*(v22 + 24))(v22, v19);
  if (v39)
  {
    v40 = 8 * v39;
    v41 = 1;
    do
    {
      v42 = *v38++;
      v41 *= v42;
      v40 -= 8;
    }

    while (v40);
    if (v41 >= 2)
    {
LABEL_44:
      *&__src = *((*(v60 + 24))(v60, v11) + 8 * v58);
      LODWORD(v70[1]) = 0;
      llvm::SmallVectorImpl<long long>::append<long long const*,void>(v70, &__src, &__src + 8);
    }
  }

  v67 = v43;
  if (v43)
  {
    v62 = v44;
    if (v44)
    {
      if (v59)
      {
        v45 = *(a1 + 9);
        if (v45)
        {
          v46 = (a1 - 2);
        }

        else
        {
          v46 = 0;
        }

        __src = v46;
        *&v74 = v46;
        *(&v74 + 1) = v45;
        v47 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(a3, a3[4], &__src, &v69, &v66, &v61, &v68);
      }

      else
      {
        v50 = *(a1 + 9);
        if (v50)
        {
          v51 = (a1 - 2);
        }

        else
        {
          v51 = 0;
        }

        __src = v51;
        *&v74 = v51;
        *(&v74 + 1) = v50;
        v47 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(a3, a3[4], &__src, &v69, &v66, &v61, &v68);
      }

      v52 = *(a1 + 9);
      if (v52)
      {
        v53 = a1 - 2;
      }

      else
      {
        v53 = 0;
      }

      v63 = v53;
      v64 = v52;
      v54 = *(v47 + 9);
      v55 = v47 - 16;
      if (!v54)
      {
        v55 = 0;
      }

      *&__src = v55;
      *(&__src + 1) = v54;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v63, &__src);
      if (a1[2])
      {
        a1[2] = 0;
        v57 = *a1;
        v56 = a1[1];
        *v56 = *a1;
        *(v57 + 8) = v56;
        *a1 = 0;
        a1[1] = 0;
      }

      mlir::Operation::destroy(a1);
      v30 = 1;
      goto LABEL_67;
    }

    v48 = a1[3];
    v49 = "failed to reshape zero_point";
  }

  else
  {
    v48 = a1[3];
    v49 = "failed to reshape scale";
  }

  v63 = v49;
  v65 = 259;
  emitDiag(v48, 2, &v63, &__src);
  v30 = (v75 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
LABEL_67:
  if (v70[0] != &v71)
  {
    free(v70[0]);
  }

LABEL_32:
  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, __int128 *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v32 = *MEMORY[0x277D85DE8];
  v14 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,void>::id, *(**a2 + 32));
  if ((v15 & 1) == 0)
  {
    v23 = 1283;
    *&v22 = "coremlax.quantize";
    *(&v22 + 1) = 17;
    v31 = 259;
    llvm::operator+(&v21, v30, v24);
    llvm::report_fatal_error(v24, 1);
  }

  v24[0] = a2;
  v24[1] = v14;
  v24[2] = v25;
  v24[3] = 0x400000000;
  v25[4] = v26;
  v25[5] = 0x400000000;
  v26[4] = v27;
  v26[5] = 0x400000000;
  v27[8] = 4;
  v27[9] = v28;
  v27[10] = 0x100000000;
  v28[1] = v29;
  v28[2] = 0x100000000;
  v29[1] = 0;
  v29[2] = 0;
  v29[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v29[4] = 0;
  v29[6] = 0;
  v16 = a3[1];
  v21 = *a3;
  v22 = v16;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v30, &v21);
  mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::build(a1, v24, v30[0], v30[1], *a4, *a5, *a6, *a7);
  v17 = mlir::Operation::create(v24);
  mlir::OpBuilder::insert(a1, v17);
  if (*(*(v17 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, __int128 *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v32 = *MEMORY[0x277D85DE8];
  v14 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,void>::id, *(**a2 + 32));
  if ((v15 & 1) == 0)
  {
    v23 = 1283;
    *&v22 = "coremlax.dequantize";
    *(&v22 + 1) = 19;
    v31 = 259;
    llvm::operator+(&v21, v30, v24);
    llvm::report_fatal_error(v24, 1);
  }

  v24[0] = a2;
  v24[1] = v14;
  v24[2] = v25;
  v24[3] = 0x400000000;
  v25[4] = v26;
  v25[5] = 0x400000000;
  v26[4] = v27;
  v26[5] = 0x400000000;
  v27[8] = 4;
  v27[9] = v28;
  v27[10] = 0x100000000;
  v28[1] = v29;
  v28[2] = 0x100000000;
  v29[1] = 0;
  v29[2] = 0;
  v29[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v29[4] = 0;
  v29[6] = 0;
  v16 = a3[1];
  v21 = *a3;
  v22 = v16;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v30, &v21);
  mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::build(a1, v24, v30[0], v30[1], *a4, *a5, *a6, *a7);
  v17 = mlir::Operation::create(v24);
  mlir::OpBuilder::insert(a1, v17);
  if (*(*(v17 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SoftmaxOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SoftmaxOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "coreml.softmax";
    v5[3] = 14;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::Type const&,mlir::Value,mlir::Value&,mlir::Value&,mlir::Value&,mlir::Value&,mlir::Value&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchNormOp,void>::id, *(**a2 + 32));
  if ((v18 & 1) == 0)
  {
    v26 = 1283;
    v25[2] = "coreml.batchnorm";
    v25[3] = 16;
    v24 = 259;
    llvm::operator+(v25, &v23, v27);
    llvm::report_fatal_error(v27, 1);
  }

  v27[0] = a2;
  v27[1] = v17;
  v27[2] = v28;
  v27[3] = 0x400000000;
  v28[4] = v29;
  v28[5] = 0x400000000;
  v29[4] = v30;
  v29[5] = 0x400000000;
  v30[8] = 4;
  v30[9] = v31;
  v30[10] = 0x100000000;
  v31[1] = v32;
  v31[2] = 0x100000000;
  v32[1] = 0;
  v32[2] = 0;
  v32[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v32[4] = 0;
  v32[6] = 0;
  mlir::ODIE::Compiler::CoreML::BatchNormOp::build(a1, v27, *a3, *a4, *a5, *a6, *a7, *a8, *a9);
  v19 = mlir::Operation::create(v27);
  mlir::OpBuilder::insert(a1, v19);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchNormOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v27);
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, _OWORD *a3, void *a4)
{
  v21[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CastOp>(a1, *(**a2 + 32));
  v16[0] = a2;
  v16[1] = v8;
  v16[2] = v17;
  v16[3] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[8] = 4;
  v19[9] = v20;
  v19[10] = 0x100000000;
  v20[1] = v21;
  v20[2] = 0x100000000;
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v21[4] = 0;
  v21[6] = 0;
  v9 = a3[1];
  v14[0] = *a3;
  v14[1] = v9;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v15, v14);
  mlir::ODIE::Compiler::CoreML::CastOp::build(a1, v16, v15[0], v15[1], *a4 & 0xFFFFFFFFFFFFFFF9 | 2, a4[1], 0, 0);
  v10 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t **mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(uint64_t **result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v15 = result;
  v16 = 0;
  v17 = a3;
  v18 = 0;
  if (a2 && a4)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = v15;
      if (v7)
      {
        v9 = v15[1] & 7;
        if (v15)
        {
          v10 = v9 == 6;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          v11 = (5 - v9);
          if (v7 <= v11)
          {
            v8 = &v15[-2 * v7];
            goto LABEL_13;
          }

          v8 = &v15[-2 * v11];
          v7 -= v11;
        }

        v8 -= 3 * v7;
      }

LABEL_13:
      v14 = mlir::ValueRange::dereference_iterator(&v17, v6);
      result = mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v8, &v14);
      v7 = v16 + 1;
      v6 = v18 + 1;
      v16 = v7;
      ++v18;
    }

    while (v7 != a2 && v6 != a4);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::ODIE::Compiler::Transforms::createAddUniqueID(uint64_t a1)
{
  *__p = *a1;
  v2 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  mlir::ODIE::Compiler::Transforms::impl::createAddUniqueID();
}

uint64_t mlir::ODIE::Compiler::Transforms::impl::AddUniqueIDBase<mlir::ODIE::Compiler::Transforms::AddUniqueIDPass>::AddUniqueIDBase(uint64_t a1)
{
  *(a1 + 8) = &mlir::ODIE::Compiler::Transforms::impl::AddUniqueIDBase<mlir::ODIE::Compiler::Transforms::AddUniqueIDPass>::resolveTypeID(void)::id;
  *(a1 + 16) = "builtin.module";
  *(a1 + 24) = 14;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 192;
  *(a1 + 184) = 0x400000000;
  *(a1 + 224) = a1 + 240;
  *(a1 + 232) = 0x400000000;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0x1000000000;
  *(a1 + 328) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *a1 = &unk_286EA3670;
  *&v4 = "String tag to identify the locations added by this pass";
  *(&v4 + 1) = 55;
  v3 = "unique";
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc,llvm::cl::initializer<char [7]>>((a1 + 336), (a1 + 144), "tag", 3, &v4, &v3);
  *(a1 + 336) = &unk_286E98FD0;
  *(a1 + 560) = &unk_286E99050;
  return a1;
}

void mlir::ODIE::Compiler::Transforms::AddUniqueIDPass::~AddUniqueIDPass(mlir::ODIE::Compiler::Transforms::AddUniqueIDPass *this)
{
  *this = &unk_286EA3670;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 336);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_286EA3670;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 336);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Transforms::AddUniqueIDPass::runOnOperation(mlir::ODIE::Compiler::Transforms::AddUniqueIDPass *this, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v9[0] = *(***(v3 + 24) + 32);
  memset(&v9[1], 0, 24);
  v8 = 0;
  v6 = 260;
  v5[0] = this + 456;
  v7 = mlir::StringAttr::get(v9[0], v5, a3);
  v5[0] = v9;
  v5[1] = &v8;
  v5[2] = &v7;
  return mlir::detail::walk<mlir::ForwardIterator>(v3, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::Transforms::AddUniqueIDPass::runOnOperation(void)::{lambda(mlir::Operation *)#1}>, v5, 1);
}

llvm::cl::Option *mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc,llvm::cl::initializer<char [7]>>(llvm::cl::Option *a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, const char **a6)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v26[0] = a3;
  v26[1] = a4;
  v25[0] = a2;
  v25[1] = 0;
  v8 = llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<char [7]>>(a1, v26, v25, a5, a6);
  v9 = v8 + 224;
  *(v8 + 232) = 0;
  *v8 = &unk_286E75DD0;
  *(v8 + 28) = &unk_286E75E50;
  v11 = a2[21];
  v10 = a2[22];
  if (v11 >= v10)
  {
    v13 = a2[20];
    v14 = (v11 - v13) >> 3;
    if ((v14 + 1) >> 61)
    {
      std::vector<mlir::detail::PassOptions::OptionBase *>::__throw_length_error[abi:nn200100]();
    }

    v15 = v10 - v13;
    v16 = v15 >> 2;
    if (v15 >> 2 <= (v14 + 1))
    {
      v16 = v14 + 1;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      v17 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v16;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::detail::PassOptions::OptionBase *>>((a2 + 20), v17);
    }

    v18 = (8 * v14);
    *v18 = v9;
    v12 = 8 * v14 + 8;
    v19 = a2[20];
    v20 = a2[21] - v19;
    v21 = v18 - v20;
    memcpy(v18 - v20, v19, v20);
    v22 = a2[20];
    a2[20] = v21;
    a2[21] = v12;
    a2[22] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v11 = v9;
    v12 = (v11 + 1);
  }

  a2[21] = v12;
  v27[0] = &unk_286EA36E0;
  v27[1] = a1;
  v27[3] = v27;
  std::function<void ()(std::string const&)>::operator=(a1 + 24, v27);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](v27);
  v23 = *MEMORY[0x277D85DE8];
  return a1;
}

llvm::cl::Option *llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<char [7]>>(llvm::cl::Option *a1, uint64_t *a2, const void **a3, _OWORD *a4, const char **a5)
{
  v10 = llvm::cl::Option::Option(a1, 0, 0);
  *(v10 + 120) = 0;
  *(v10 + 128) = 0;
  *(v10 + 160) = 0;
  *(v10 + 168) = 0;
  *(v10 + 152) = 0;
  *(v10 + 176) = 0;
  *(v10 + 136) = 0;
  *(v10 + 144) = &unk_286E79070;
  *v10 = &unk_286E792E0;
  *(v10 + 184) = &unk_286E791E0;
  *(v10 + 192) = &unk_286E75EB0;
  *(v10 + 216) = v10 + 192;
  llvm::cl::apply<llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>,llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<char [7]>>(v10, a2, a3, a4, a5);
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void llvm::cl::apply<llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>,llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<char [7]>>(uint64_t a1, uint64_t *a2, const void **a3, _OWORD *a4, const char **a5)
{
  llvm::cl::Option::setArgStr(a1, *a2, a2[1]);
  llvm::cl::sub::apply<llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>>(a3, a1);
  *(a1 + 32) = *a4;

  llvm::cl::initializer<char [7]>::apply<llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>>(a5, a1);
}

void llvm::cl::initializer<char [7]>::apply<llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>>(const char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = strlen(*a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v4;
  if (v4)
  {
    memmove(&__dst, v3, v4);
  }

  __dst.__r_.__value_.__s.__data_[v5] = 0;
  std::string::operator=((a2 + 120), &__dst);
  *(a2 + 176) = 1;
  std::string::operator=((a2 + 152), &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN4llvm2cl6parserISB_EEEC1IJNSD_4descENSD_11initializerIA7_cEEEEERS4_NSC_9StringRefEDpOT_EUlRKT_E_NS9_ISU_EEFvRKSB_EE7__cloneEPNS0_6__baseISY_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EA36E0;
  a2[1] = v2;
  return result;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::Transforms::AddUniqueIDPass::runOnOperation(void)::{lambda(mlir::Operation *)#1}>(uint64_t ***a1, uint64_t a2, const llvm::Twine *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v18 = "op_id";
  v20[8] = 259;
  v6 = mlir::StringAttr::get(*v5, &v18, a3);
  v7 = a1[1];
  v8 = *v7;
  *v7 = (*v7 + 1);
  v9 = mlir::FileLineColRange::get(v6, v8, 0);
  v10 = mlir::NameLoc::get(*a1[2], v9);
  v11 = v10;
  v12 = *(a2 + 24);
  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id)
  {
    v15 = v12[1];
    v16 = v12[2];
    v18 = v20;
    v19 = 0x600000000;
    llvm::SmallVectorImpl<mlir::Location>::append<mlir::Location const*,void>(&v18, v15, &v15[8 * v16]);
    llvm::SmallVectorTemplateBase<mlir::Location,true>::push_back(&v18, v11);
    v14 = mlir::FusedLoc::get(v18, v19, 0, **a1);
    if (v18 != v20)
    {
      free(v18);
    }
  }

  else
  {
    v13 = **a1;
    v18 = *(a2 + 24);
    v19 = v10;
    v14 = mlir::FusedLoc::get(&v18, 2, 0, v13);
  }

  *(a2 + 24) = v14;
  v17 = *MEMORY[0x277D85DE8];
}

std::string *mlir::ODIE::Compiler::Transforms::AddUniqueIDPass::AddUniqueIDPass(std::string *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  mlir::ODIE::Compiler::Transforms::impl::AddUniqueIDBase<mlir::ODIE::Compiler::Transforms::AddUniqueIDPass>::AddUniqueIDBase(a1);
  llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::operator=<std::string>(a1 + 14, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  a1->__r_.__value_.__r.__words[0] = &unk_286EA3600;
  return a1;
}

mlir::Pass **std::unique_ptr<mlir::ODIE::Compiler::Transforms::anonymous namespace::CollapseStaticallyShapedAllocations>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::CollapseStaticallyShapedAllocations::~CollapseStaticallyShapedAllocations(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::CollapseStaticallyShapedAllocations *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::CollapseStaticallyShapedAllocations::runOnOperation(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::CollapseStaticallyShapedAllocations *this)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = *(***((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
  operator new();
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::CollapsableOpRewriter::~CollapsableOpRewriter(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::CollapsableOpRewriter *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,mlir::ODIE::Compiler::Interfaces::detail::CollapseAndHoistAllocationsInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v7 = *(*a1 + 48);

  return v7(a1, a2, InterfaceFor, a3);
}

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations>::match(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,mlir::ODIE::Compiler::Interfaces::detail::CollapseAndHoistAllocationsInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v5 = *(*a1 + 56);

  return v5(a1, a2, InterfaceFor);
}

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,mlir::ODIE::Compiler::Interfaces::detail::CollapseAndHoistAllocationsInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v7 = *(*a1 + 64);

  return v7(a1, a2, InterfaceFor, a3);
}

uint64_t mlir::OpInterface<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,mlir::ODIE::Compiler::Interfaces::detail::CollapseAndHoistAllocationsInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Interfaces::CollapseAndHoistAllocations,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Transforms::anonymous namespace::CollapsableOpRewriter>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Transforms::(anonymous namespace)::CollapsableOpRewriter]";
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

void mlir::ODIE::Compiler::Transforms::anonymous namespace::AllocOpRewriter::~AllocOpRewriter(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::AllocOpRewriter *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Transforms::anonymous namespace::AllocOpRewriter::matchAndRewrite(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  mlir::ODIE::Compiler::Analysis::MemoryReuse::getOffsetForAllocation(*(a1 + 96), a2, &v13);
  if (v15 != 1)
  {
    return 0;
  }

  v6 = *(a1 + 104);
  v11 = *((*(a2 - 1) & 0xFFFFFFFFFFFFFFF8) + 48);
  v7 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::find(v6, &v11);
  v12 = *(v7[1] + 8 * v13);
  v11 = *(a2 - 1) & 0xFFFFFFFFFFFFFFF8;
  IndexAttr = mlir::Builder::getIndexAttr((a3 + 8), v14);
  v8 = mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::AllocViewOp,mlir::Type,mlir::Value &,mlir::IntegerAttr>((a3 + 8), a2[3], &v11, &v12, &IndexAttr);
  (*(*a3 + 8))(a3, a2, v8);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Transforms::anonymous namespace::AllocOpRewriter>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Transforms::(anonymous namespace)::AllocOpRewriter]";
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

void mlir::ODIE::Compiler::Transforms::createCompileForDelegates(uint64_t a1)
{
  v1 = (a1 + 8);
  v2 = *(a1 + 8);
  v3 = *a1;
  v4 = v2;
  if (*(a1 + 16))
  {
    *(v2 + 16) = &v4;
    *a1 = v1;
    *v1 = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    v3 = &v4;
  }

  *__p = *(a1 + 24);
  v7 = *(a1 + 40);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  mlir::ODIE::Compiler::Transforms::impl::createCompileForDelegates();
}

mlir::Pass **std::unique_ptr<mlir::ODIE::Compiler::Transforms::anonymous namespace::CompileForDelegates>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    *v2 = &unk_286EA38B8;
    mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(v2 + 888);
    mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(v2 + 336);
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

uint64_t mlir::ODIE::Compiler::Transforms::impl::CompileForDelegatesBase<mlir::ODIE::Compiler::Transforms::anonymous namespace::CompileForDelegates>::CompileForDelegatesBase(uint64_t a1)
{
  *(a1 + 16) = "builtin.module";
  *(a1 + 24) = 14;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 192;
  *(a1 + 184) = 0x400000000;
  *(a1 + 224) = a1 + 240;
  *(a1 + 232) = 0x400000000;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0x1000000000;
  *(a1 + 328) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *a1 = &unk_286EA38B8;
  *&v3 = "A map of compilers to use for the given delegate tag.";
  *(&v3 + 1) = 53;
  mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::Option<llvm::cl::desc>(a1 + 336, (a1 + 144), &v3);
  *(a1 + 336) = &unk_286EA3928;
  *(a1 + 872) = &unk_286EA39A8;
  *&v3 = "The directory in which to place assets.";
  *(&v3 + 1) = 39;
  mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::Option<llvm::cl::desc>((a1 + 888), (a1 + 144), "binaryDir", 9, &v3);
  *(a1 + 888) = &unk_286EA3C60;
  *(a1 + 1424) = &unk_286EA3CE0;
  return a1;
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::CompileForDelegates::~CompileForDelegates(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::CompileForDelegates *this)
{
  *this = &unk_286EA38B8;
  mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(this + 888);
  mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(this + 336);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_286EA38B8;
  mlir::detail::PassOptions::Option<std::__fs::filesystem::path,mlir::detail::PassOptions::GenericOptionParser<std::__fs::filesystem::path>>::~Option(this + 888);
  mlir::detail::PassOptions::Option<std::map<std::string,std::function<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>,std::less<std::string>,std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>,mlir::detail::PassOptions::GenericOptionParser<std::allocator<std::pair<std::string const,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>>>>::~Option(this + 336);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Transforms::anonymous namespace::CompileForDelegates::runOnOperation(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::CompileForDelegates *this)
{
  v3 = this;
  v157 = *MEMORY[0x277D85DE8];
  v4 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v139[1] = *(***(v4 + 24) + 32);
  v139[2] = 0;
  v140 = *(v4 + 16);
  v141 = v4;
  v139[0] = &unk_286E76228;
  memset(v150, 0, 20);
  v5 = *(this + 57);
  v6 = this + 464;
  if (v5 != (this + 464))
  {
    v7 = *(v5 + 32);
    v8 = *(v5 + 55);
    if (v8 >= 0)
    {
      v7 = v5 + 32;
    }

    v9 = *(v5 + 40);
    if (v8 >= 0)
    {
      v9 = *(v5 + 55);
    }

    *&v156 = v7;
    *(&v156 + 1) = v9;
    v10 = *(v4 + 24);
    LOBYTE(v148) = 0;
    LOBYTE(v149[0]) = 0;
    *v144 = *(**v10 + 32);
    memset(&v144[8], 0, 24);
    mlir::OpBuilder::create<mlir::ModuleOp,std::optional<llvm::StringRef> &>(v144, v10, &v148);
  }

  v148 = 0uLL;
  v149[0] = 0;
  *v144 = v150;
  *&v144[8] = v139;
  *&v144[16] = &v148;
  *&v156 = v144;
  if (!mlir::detail::walk<mlir::ForwardIterator>(v4, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_4ODIE8Compiler10Transforms12_GLOBAL__N_119CompileForDelegates24generateDelegatedRegionsENS1_8ModuleOpERNS1_10IRRewriterEE3__0NSD_6CoreML15IsolatedGroupOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESU_E4typeES4_OT1_EUlS4_E_EES2_lS4_, &v156, 1))
  {
    v15 = 0;
    v11 = 0;
    goto LABEL_52;
  }

  v11 = v150[0].__r_.__value_.__r.__words[0];
  if (!LODWORD(v150[0].__r_.__value_.__r.__words[1]))
  {
    LODWORD(v24) = v150[0].__r_.__value_.__r.__words[2];
    *v144 = v4;
    *&v144[16] = 0;
    *&v144[24] = 0;
LABEL_49:
    v2 = 1;
    goto LABEL_50;
  }

  v12 = v150[0].__r_.__value_.__r.__words[0] + 24 * LODWORD(v150[0].__r_.__value_.__r.__words[2]);
  v13 = v150[0].__r_.__value_.__r.__words[0];
  if (LODWORD(v150[0].__r_.__value_.__r.__words[2]))
  {
    v14 = 24 * LODWORD(v150[0].__r_.__value_.__r.__words[2]);
    v13 = v150[0].__r_.__value_.__r.__words[0];
    while (*v13 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v13 += 3;
      v14 -= 24;
      if (!v14)
      {
        goto LABEL_32;
      }
    }
  }

  if (v13 == v12)
  {
LABEL_32:
    LODWORD(v24) = v150[0].__r_.__value_.__r.__words[2];
    *v144 = v4;
    *&v144[16] = 0;
    *&v144[24] = 0;
    goto LABEL_33;
  }

  do
  {
    v16 = v13;
    v17 = v13 + 3;
    v13 = v12;
    if (v17 != v12)
    {
      v13 = v17;
      while (*v13 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v13 += 3;
        if (v13 == v12)
        {
          v13 = v12;
          break;
        }
      }
    }

    mlir::Region::getOps<mlir::ODIE::Compiler::CoreML::GraphOp>((((*(v16 + 16) + 16 * ((*(*(v16 + 16) + 44) >> 23) & 1) + ((*(*(v16 + 16) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(v16 + 16) + 40)), v144);
    if (*&v144[16] == v147)
    {
      v19 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>,llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::doFind<llvm::StringRef>(v150[0].__r_.__value_.__l.__data_, v150[0].__r_.__value_.__r.__words[2], v16, v18);
      if (v19)
      {
        v20 = v19;
        v21 = *(v19 + 16);
        if (v21)
        {
          if (*(v21 + 2))
          {
            *(v21 + 2) = 0;
            v23 = *v21;
            v22 = *(v21 + 1);
            *v22 = *v21;
            *(v23 + 8) = v22;
            *v21 = 0;
            *(v21 + 1) = 0;
          }

          mlir::Operation::destroy(v21);
        }

        *v20 = xmmword_25D0A05F0;
        v150[0].__r_.__value_.__r.__words[1] = vadd_s32(v150[0].__r_.__value_.__r.__words[1], 0x1FFFFFFFFLL);
      }
    }
  }

  while (v13 != v12);
  v11 = v150[0].__r_.__value_.__r.__words[0];
  *v144 = v4;
  *&v144[16] = 0;
  *&v144[24] = 0;
  if (!LODWORD(v150[0].__r_.__value_.__r.__words[1]))
  {
    LODWORD(v24) = v150[0].__r_.__value_.__r.__words[2];
    goto LABEL_49;
  }

  LODWORD(v24) = v150[0].__r_.__value_.__r.__words[2];
  v12 = v150[0].__r_.__value_.__r.__words[0] + 24 * LODWORD(v150[0].__r_.__value_.__r.__words[2]);
LABEL_33:
  v25 = v11;
  if (v24)
  {
    v25 = v11;
    while (*v25 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v25 += 3;
      if (v25 == v12)
      {
        goto LABEL_46;
      }
    }
  }

  if (v25 != v12)
  {
    v2 = v4;
    v24 = _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_4ODIE8Compiler10Transforms12_GLOBAL__N_119CompileForDelegates24generateDelegatedRegionsENS1_8ModuleOpERNS1_10IRRewriterEE3__2NSD_6CoreML8InvokeOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESU_E4typeES4_OT1_EUlS4_E_EES2_lS4_;
    while (1)
    {
      v26 = v25[2];
      *&v156 = v25 + 2;
      *(&v156 + 1) = v144;
      v155[0] = &v156;
      if (!mlir::detail::walk<mlir::ForwardIterator>(v26, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_4ODIE8Compiler10Transforms12_GLOBAL__N_119CompileForDelegates24generateDelegatedRegionsENS1_8ModuleOpERNS1_10IRRewriterEE3__1NSD_6CoreML6CallOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESU_E4typeES4_OT1_EUlS4_E_EES2_lS4_, v155, 1))
      {
        break;
      }

      *&v156 = v25 + 2;
      *(&v156 + 1) = v144;
      v27 = v25[2];
      v155[0] = &v156;
      if (!mlir::detail::walk<mlir::ForwardIterator>(v27, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_4ODIE8Compiler10Transforms12_GLOBAL__N_119CompileForDelegates24generateDelegatedRegionsENS1_8ModuleOpERNS1_10IRRewriterEE3__2NSD_6CoreML8InvokeOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESU_E4typeES4_OT1_EUlS4_E_EES2_lS4_, v155, 1))
      {
        break;
      }

      do
      {
        v25 += 3;
      }

      while (v25 != v12 && *v25 >= 0xFFFFFFFFFFFFFFFELL);
      if (v25 == v12)
      {
        v11 = v150[0].__r_.__value_.__r.__words[0];
        LODWORD(v24) = v150[0].__r_.__value_.__r.__words[2];
        v2 = LODWORD(v150[0].__r_.__value_.__r.__words[1]) == 0;
        goto LABEL_50;
      }
    }

    v11 = 0;
    v15 = 0;
    goto LABEL_51;
  }

LABEL_46:
  v2 = 0;
LABEL_50:
  memset(v150, 0, 20);
  v15 = 1;
LABEL_51:
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(&v144[8]);
  MEMORY[0x25F891030](*&v144[8], 8);
  v1 = v24;
LABEL_52:
  MEMORY[0x25F891030](v148, 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>,llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::destroyAll(v150[0].__r_.__value_.__l.__data_, v150[0].__r_.__value_.__r.__words[2]);
  result = MEMORY[0x25F891030](v150[0].__r_.__value_.__r.__words[0], 8);
  v30 = *(v3 + 5);
  if ((v15 & 1) == 0)
  {
    *(v3 + 5) = v30 | 4;
    goto LABEL_237;
  }

  v31 = **(***((v30 & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
  v138 = v11;
  v137 = v1;
  v136 = v4;
  if (*(v31 + 41) == 1)
  {
    v32 = *(v31 + 48);
    if (*(v3 + 1031) < 0)
    {
      std::string::__init_copy_ctor_external(&v143, *(v3 + 126), *(v3 + 127));
    }

    else
    {
      v143 = *(v3 + 42);
    }

    v142 = v32;
    v33 = *(v3 + 57);
    *&v148 = v149;
    *(&v148 + 1) = 0x600000000;
    if (v33 != v6)
    {
      v34 = 0;
      v35 = v33;
      do
      {
        v36 = v34;
        v37 = *(v35 + 1);
        if (v37)
        {
          do
          {
            v38 = v37;
            v37 = *v37;
          }

          while (v37);
        }

        else
        {
          do
          {
            v38 = *(v35 + 2);
            v39 = *v38 == v35;
            v35 = v38;
          }

          while (!v39);
        }

        v34 = v36 + 1;
        v35 = v38;
      }

      while (v38 != v6);
      if (v36 >= 6)
      {
        *v144 = 0;
        v40 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v148, v149, v36 + 1, 8, v144);
        v41 = v148;
        if (DWORD2(v148))
        {
          v42 = 2 * DWORD2(v148);
          v43 = v42 * 4;
          v44 = v40;
          v45 = v148;
          do
          {
            *v44++ = *v45;
            *v45++ = 0;
            v43 -= 8;
          }

          while (v43);
          v46 = v41 - 2;
          do
          {
            v47 = *&v46[v42];
            if (v47 && !atomic_fetch_add(v47 + 1, 0xFFFFFFFFFFFFFFFFLL))
            {
              (*(*v47 + 16))(v47);
            }

            v42 -= 2;
          }

          while (v42 * 4);
          v41 = v148;
        }

        v48 = *v144;
        if (v41 != v149)
        {
          free(v41);
        }

        *&v148 = v40;
        HIDWORD(v148) = v48;
      }

      v64 = *(v33 + 32);
      v65 = *(v33 + 55);
      if (v65 >= 0)
      {
        v64 = v33 + 32;
      }

      if (v65 < 0)
      {
        v65 = *(v33 + 40);
      }

      *v144 = v64;
      *&v144[8] = v65;
      v66 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>,llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::doFind<llvm::StringRef>(v11, v1, v144, v29);
      v68 = 0;
      if (v66 && v66 != v11 + 24 * v1)
      {
        v69 = *(v33 + 55);
        v70 = *(v33 + 32);
        if (v69 >= 0)
        {
          v70 = v33 + 32;
        }

        if (v69 < 0)
        {
          v69 = *(v33 + 40);
        }

        *v144 = v70;
        *&v144[8] = v69;
        v71 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>,llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::doFind<llvm::StringRef>(v11, v1, v144, v67);
        v72 = v11 + 24 * v1;
        if (v71)
        {
          v72 = v71;
        }

        v68 = *(v72 + 16);
      }

      if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v150, v143.__r_.__value_.__l.__data_, v143.__r_.__value_.__l.__size_);
      }

      else
      {
        v150[0] = v143;
      }

      if (*(v33 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v150[1], *(v33 + 32), *(v33 + 40));
      }

      else
      {
        v73 = *(v33 + 32);
        v150[1].__r_.__value_.__r.__words[2] = *(v33 + 48);
        *&v150[1].__r_.__value_.__l.__data_ = v73;
      }

      std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::__value_func[abi:nn200100](&v151, v33 + 56);
      *v144 = v150[0];
      *&v144[40] = *(&v150[1].__r_.__value_.__l + 2);
      memset(v150, 0, sizeof(v150));
      v153 = v68;
      *&v144[24] = *&v150[1].__r_.__value_.__l.__data_;
      if (v152)
      {
        if (v152 == &v151)
        {
          v146 = &v145;
          (*(*v152 + 24))();
          v68 = v153;
        }

        else
        {
          v146 = v152;
          v152 = 0;
        }
      }

      else
      {
        v146 = 0;
      }

      v147 = v68;
      operator new();
    }

    DWORD2(v148) = 0;
    (*(*v32 + 32))(v32, &v142);
    v74 = v148;
    v75 = 1;
    if (DWORD2(v148))
    {
      v76 = 8 * DWORD2(v148) - 8;
      do
      {
        v77 = *v74;
        *v144 = *v74 + 24;
        v144[8] = 1;
        std::mutex::lock(*v144);
        std::__assoc_sub_state::__sub_wait(v77, v144);
        v150[0].__r_.__value_.__r.__words[0] = 0;
        v78 = *(v77 + 16);
        std::exception_ptr::~exception_ptr(v150);
        if (v78)
        {
          std::exception_ptr::exception_ptr(v150, (v77 + 16));
          v134.__ptr_ = v150;
          std::rethrow_exception(v134);
        }

        if (v144[8] == 1)
        {
          std::mutex::unlock(*v144);
        }

        v79 = *(v77 + 140);
        if ((v79 & 1) == 0)
        {
          break;
        }

        v74 += 2;
        v80 = v76;
        v76 -= 8;
      }

      while (v80);
      v74 = v148;
      if (DWORD2(v148))
      {
        v81 = 8 * DWORD2(v148);
        v82 = v148 - 8;
        v1 = v137;
        do
        {
          v83 = *(v82 + v81);
          if (v83 && !atomic_fetch_add(v83 + 1, 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(*v83 + 16))(v83);
          }

          v81 -= 8;
        }

        while (v81);
        v74 = v148;
        v75 = v79;
      }

      else
      {
        v75 = v79;
        v1 = v137;
      }
    }

    if (v74 != v149)
    {
      free(v74);
    }

    (*(*v142 + 32))(v142, &v142);
    if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v143.__r_.__value_.__l.__data_);
    }

    if ((v75 & 1) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_109;
  }

  if (*(v3 + 1031) < 0)
  {
    std::string::__init_copy_ctor_external(v144, *(v3 + 126), *(v3 + 127));
  }

  else
  {
    *v144 = *(v3 + 63);
    *&v144[16] = *(v3 + 128);
  }

  v49 = *(v3 + 57);
  if (v49 == v6)
  {
    v58 = 1;
  }

  else
  {
    do
    {
      v50 = v49[4];
      v51 = *(v49 + 55);
      if (v51 >= 0)
      {
        v50 = (v49 + 4);
      }

      if (v51 < 0)
      {
        v51 = v49[5];
      }

      v150[0].__r_.__value_.__r.__words[0] = v50;
      v150[0].__r_.__value_.__l.__size_ = v51;
      v52 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>,llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::doFind<llvm::StringRef>(v11, v1, v150, v29);
      v53 = 0;
      if (v52 && v52 != v11 + 24 * v1)
      {
        v54 = *(v49 + 55);
        v55 = v49[4];
        if (v54 >= 0)
        {
          v55 = (v49 + 4);
        }

        if (v54 < 0)
        {
          v54 = v49[5];
        }

        v150[0].__r_.__value_.__r.__words[0] = v55;
        v150[0].__r_.__value_.__l.__size_ = v54;
        v56 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>,llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::doFind<llvm::StringRef>(v11, v1, v150, 0);
        if (v56)
        {
          v57 = v56;
        }

        else
        {
          v57 = v11 + 24 * v1;
        }

        v53 = *(v57 + 16);
      }

      if (!v58)
      {
        break;
      }

      v59 = v49[1];
      if (v59)
      {
        do
        {
          v60 = v59;
          v59 = *v59;
        }

        while (v59);
      }

      else
      {
        do
        {
          v60 = v49[2];
          v39 = *v60 == v49;
          v49 = v60;
        }

        while (!v39);
      }

      v49 = v60;
    }

    while (v60 != v6);
  }

  if ((v144[23] & 0x80000000) != 0)
  {
    operator delete(*v144);
    if (v58)
    {
      goto LABEL_109;
    }

LABEL_162:
    *(v3 + 5) |= 4uLL;
    goto LABEL_236;
  }

  if (!v58)
  {
    goto LABEL_162;
  }

LABEL_109:
  v148 = 0uLL;
  v149[0] = 0;
  if (v2)
  {
    goto LABEL_224;
  }

  v61 = v11;
  v62 = v137;
  if (v137)
  {
    v63 = 24 * v137;
    v61 = v11;
    while (*v61 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v61 += 3;
      v63 -= 24;
      if (!v63)
      {
        goto LABEL_224;
      }
    }

    v62 = v137;
  }

  v84 = (v11 + 24 * v62);
  if (v61 == v84)
  {
    goto LABEL_224;
  }

  v85 = 0;
  do
  {
    mlir::Region::getOps<mlir::ODIE::Compiler::CoreML::GraphOp>((((v61[2] + 16 * ((*(v61[2] + 44) >> 23) & 1) + ((*(v61[2] + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v61[2] + 40)), v144);
    *&v150[0].__r_.__value_.__l.__data_ = *v144;
    *&v150[0].__r_.__value_.__r.__words[2] = *&v144[16];
    *&v150[1].__r_.__value_.__r.__words[1] = *&v144[32];
    v151 = v145;
    v86 = v147;
    while (v150[0].__r_.__value_.__r.__words[2] != v86)
    {
      v87 = (*(&v151 + 1))();
      v154[0] = 0;
      v88 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>>>,llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>>>::LookupBucketFor<llvm::StringRef>(v85, v149[0], v61, v154);
      v89 = v154[0];
      if (v88)
      {
        v90 = *(v154[0] + 16);
        goto LABEL_175;
      }

      v155[0] = v154[0];
      v91 = DWORD2(v148);
      v92 = v149[0];
      if (4 * DWORD2(v148) + 4 >= (3 * v149[0]))
      {
        v93 = 2 * v149[0];
LABEL_183:
        v135 = v3;
        v99 = (v93 - 1) | ((v93 - 1) >> 1);
        v100 = v99 | (v99 >> 2) | ((v99 | (v99 >> 2)) >> 4);
        v101 = ((v100 | (v100 >> 8)) >> 16) | v100 | (v100 >> 8);
        if ((v101 + 1) > 0x40)
        {
          v102 = (v101 + 1);
        }

        else
        {
          v102 = 64;
        }

        v149[0] = v102;
        buffer = llvm::allocate_buffer((8 * (v102 + 4 * v102)), 8uLL);
        v104 = buffer;
        *&v148 = buffer;
        v105 = 0;
        if (v85)
        {
          *(&v148 + 1) = 0;
          do
          {
            *&buffer[v105] = xmmword_25D0A05E0;
            v105 += 40;
          }

          while (40 * v102 != v105);
          if (v92)
          {
            v106 = 0;
            v107 = 40 * v92;
            v108 = v85;
            do
            {
              if (*v108 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                *&v156 = 0;
                llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>>>,llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>>>::LookupBucketFor<llvm::StringRef>(v104, v102, v108, &v156);
                v109 = v156;
                *v156 = *v108;
                *(v109 + 32) = 0;
                *(v109 + 16) = 0;
                *(v109 + 24) = 0;
                *(v109 + 16) = *(v108 + 16);
                *(v108 + 16) = 0;
                *(v109 + 24) = *(v108 + 24);
                *(v108 + 24) = 0;
                v110 = *(v109 + 28);
                *(v109 + 28) = *(v108 + 28);
                *(v108 + 28) = v110;
                v111 = *(v109 + 32);
                *(v109 + 32) = *(v108 + 32);
                *(v108 + 32) = v111;
                DWORD2(v148) = ++v106;
                MEMORY[0x25F891030](0, 8);
              }

              v108 += 40;
              v107 -= 40;
            }

            while (v107);
          }

          MEMORY[0x25F891030](v85, 8);
          v104 = v148;
          LODWORD(v102) = v149[0];
          v91 = DWORD2(v148);
        }

        else
        {
          *(&v148 + 1) = 0;
          do
          {
            *&buffer[v105] = xmmword_25D0A05E0;
            v105 += 40;
          }

          while (40 * v102 != v105);
          v91 = 0;
        }

        llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>>>,llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>>>::LookupBucketFor<llvm::StringRef>(v104, v102, v61, v155);
        v89 = v155[0];
        v85 = v104;
        v3 = v135;
        goto LABEL_172;
      }

      v93 = v149[0];
      if (v149[0] + ~DWORD2(v148) - HIDWORD(v148) <= v149[0] >> 3)
      {
        goto LABEL_183;
      }

LABEL_172:
      DWORD2(v148) = v91 + 1;
      if (*v89 != -1)
      {
        --HIDWORD(v148);
      }

      v90 = 0;
      *v89 = *v61;
      *(v89 + 16) = 0;
      *(v89 + 24) = 0;
      *(v89 + 32) = 0;
LABEL_175:
      v156 = *(*(v87 + 16 * ((*(v87 + 44) >> 23) & 1) + 120) + 16);
      v143.__r_.__value_.__r.__words[0] = 0;
      v94 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>,llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>::LookupBucketFor<llvm::StringRef>(v90, *(v89 + 32), &v156, &v143);
      v95 = v143.__r_.__value_.__r.__words[0];
      if (v94)
      {
        goto LABEL_181;
      }

      v154[0] = v143.__r_.__value_.__r.__words[0];
      v96 = *(v89 + 24);
      v97 = *(v89 + 32);
      if (4 * v96 + 4 >= (3 * v97))
      {
        v98 = 2 * v97;
LABEL_196:
        v112 = *(v89 + 16);
        v113 = (v98 - 1) | ((v98 - 1) >> 1);
        v114 = v113 | (v113 >> 2) | ((v113 | (v113 >> 2)) >> 4);
        v115 = ((v114 | (v114 >> 8)) >> 16) | v114 | (v114 >> 8);
        if ((v115 + 1) > 0x40)
        {
          v116 = v115 + 1;
        }

        else
        {
          v116 = 64;
        }

        *(v89 + 32) = v116;
        v117 = llvm::allocate_buffer((24 * v116), 8uLL);
        *(v89 + 16) = v117;
        if (v112)
        {
          v118 = v3;
          *(v89 + 24) = 0;
          v119 = *(v89 + 32);
          v120 = xmmword_25D0A05E0;
          if (v119)
          {
            v121 = 24 * v119;
            do
            {
              *v117 = xmmword_25D0A05E0;
              v117 = (v117 + 24);
              v121 -= 24;
            }

            while (v121);
          }

          if (v97)
          {
            v122 = 24 * v97;
            v123 = v112;
            do
            {
              if (*v123 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v155[0] = 0;
                llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>,llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>::LookupBucketFor<llvm::StringRef>(*(v89 + 16), *(v89 + 32), v123, v155);
                v124 = v155[0];
                v120 = *v123;
                *v155[0] = *v123;
                *(v124 + 16) = *(v123 + 16);
                ++*(v89 + 24);
              }

              v123 += 24;
              v122 -= 24;
            }

            while (v122);
          }

          MEMORY[0x25F891030](v112, 8, v120);
          LODWORD(v125) = *(v89 + 32);
          v3 = v118;
        }

        else
        {
          *(v89 + 24) = 0;
          v125 = *(v89 + 32);
          if (v125)
          {
            v126 = 24 * v125;
            do
            {
              *v117 = xmmword_25D0A05E0;
              v117 = (v117 + 24);
              v126 -= 24;
            }

            while (v126);
          }
        }

        llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>,llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::CoreML::GraphOp>>::LookupBucketFor<llvm::StringRef>(*(v89 + 16), v125, &v156, v154);
        v96 = *(v89 + 24);
        v95 = v154[0];
        goto LABEL_178;
      }

      v98 = *(v89 + 32);
      if (v97 + ~v96 - *(v89 + 28) <= v97 >> 3)
      {
        goto LABEL_196;
      }

LABEL_178:
      *(v89 + 24) = v96 + 1;
      if (*v95 != -1)
      {
        --*(v89 + 28);
      }

      *v95 = v156;
      v95[2] = 0;
LABEL_181:
      v95[2] = v87;
      mlir::Region::OpIterator::operator++(v150);
      llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(v150);
    }

    v61 += 3;
    if (v61 == v84)
    {
      v11 = v138;
    }

    else
    {
      v11 = v138;
      do
      {
        if (*v61 < 0xFFFFFFFFFFFFFFFELL)
        {
          break;
        }

        v61 += 3;
      }

      while (v61 != v84);
    }
  }

  while (v61 != v84);
LABEL_224:
  v127 = *(((v136 + 16 * ((*(v136 + 44) >> 23) & 1) + ((*(v136 + 44) >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v136 + 40) + 8);
  if (v127)
  {
    v128 = v127 - 8;
  }

  else
  {
    v128 = 0;
  }

  v129 = *(v128 + 40);
  v140 = v128;
  v141 = v129;
  *v144 = &v148;
  *&v144[8] = v139;
  v150[0].__r_.__value_.__r.__words[0] = v144;
  if (!mlir::detail::walk<mlir::ForwardIterator>(v136, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4ODIE8Compiler10Transforms12_GLOBAL__N_119CompileForDelegates14runOnOperationEvE3__0NSD_6CoreML15IsolatedGroupOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESR_E4typeES4_OT1_EUlS4_E_EES2_lS4_, v150, 1))
  {
    *(v3 + 5) |= 4uLL;
  }

  v130 = v148;
  v1 = v137;
  if (v149[0])
  {
    v131 = 40 * v149[0];
    v132 = (v148 + 16);
    do
    {
      if (*(v132 - 2) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        MEMORY[0x25F891030](*v132, 8);
      }

      v132 += 5;
      v131 -= 40;
    }

    while (v131);
    v130 = v148;
  }

  MEMORY[0x25F891030](v130, 8);
LABEL_236:
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>,llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::OwningOpRef<mlir::ModuleOp>>>::destroyAll(v11, v1);
  result = MEMORY[0x25F891030](v11, 8);
LABEL_237:
  v133 = *MEMORY[0x277D85DE8];
  return result;
}