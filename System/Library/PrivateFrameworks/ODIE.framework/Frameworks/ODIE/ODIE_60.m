llvm::APInt *mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(llvm::APInt *result, _BYTE **a2, uint64_t a3, llvm::APInt *a4)
{
  v5 = result;
  v6 = *(a3 + 8);
  v13 = v6;
  if (v6 > 0x40)
  {
    operator new[]();
  }

  v7 = *a3;
  v12 = *a3;
  v8 = *a2;
  if (**a2)
  {
    goto LABEL_5;
  }

  v9 = *(a4 + 2);
  if (v9 > 0x40)
  {
    result = llvm::APInt::countLeadingZerosSlowCase(a4);
    if (result == v9)
    {
LABEL_5:
      *v8 = 1;
      *(v5 + 8) = v6;
      *v5 = v7;
      *(v5 + 16) = 1;
      return result;
    }
  }

  else if (!*a4)
  {
    goto LABEL_5;
  }

  result = llvm::APInt::srem(&v12, a4, &v14);
  v10 = v14;
  v11 = v13;
  *(v5 + 8) = v15;
  *v5 = v10;
  v15 = 0;
  *(v5 + 16) = 1;
  if (v11 >= 0x41)
  {
    result = v12;
    if (v12)
    {
      return MEMORY[0x25F891010](v12, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::detail::RecursivePatternMatcher<mlir::arith::XOrIOp,mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder>::match(uint64_t *a1, uint64_t a2)
{
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id || (*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 2)
  {
    return 0;
  }

  v2 = *(*(a2 + 72) + 24);
  v3 = *a1;
  LODWORD(result) = mlir::detail::matchOperandOrValueAtIndex<mlir::detail::constant_int_value_binder>(a2, 1u, (a1 + 1));
  if (v3 == v2)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::detail::matchOperandOrValueAtIndex<mlir::detail::constant_int_value_binder>(uint64_t a1, unsigned int a2, mlir::detail::constant_int_value_binder *this)
{
  v3 = *(*(a1 + 72) + 32 * a2 + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 8) & 7;
  if (v4 == 6)
  {
    v5 = v3 + 24 * *(v3 + 16);
    v6 = (v5 + 120);
    if (v5 == -120)
    {
      return 0;
    }
  }

  else
  {
    v6 = (v3 + 16 * v4 + 16);
  }

  return mlir::detail::constant_int_value_binder::match(this, v6);
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(a2 + 8);
  if (v3 > 0x40)
  {
    operator new[]();
  }

  v4 = *a3 & *a2;
  *(result + 8) = v3;
  *result = v4;
  *(result + 16) = 1;
  return result;
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(a2 + 8);
  if (v3 > 0x40)
  {
    operator new[]();
  }

  v4 = *a3 | *a2;
  *(result + 8) = v3;
  *result = v4;
  *(result + 16) = 1;
  return result;
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(a2 + 8);
  if (v3 > 0x40)
  {
    operator new[]();
  }

  v4 = *a3 ^ *a2;
  *(result + 8) = v3;
  *result = v4;
  *(result + 16) = 1;
  return result;
}

void anonymous namespace::XOrINotCmpI::~XOrINotCmpI(_anonymous_namespace_::XOrINotCmpI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::XOrINotCmpI::matchAndRewrite(_anonymous_namespace_::XOrINotCmpI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v51[4] = *MEMORY[0x277D85DE8];
  v50[0] = v51;
  v50[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v50, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v6 + 24 * *(v6 + 16);
    v9 = v8 + 120;
    if (v8 == -120)
    {
LABEL_9:
      v10 = *(a3 + 2);
      if (!v10 || v10[2] != 1)
      {
        goto LABEL_18;
      }

      v11 = *(v5 + 3);
      goto LABEL_17;
    }
  }

  else
  {
    v9 = v6 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_18;
    }

    v11 = *(v9 + 24);
    goto LABEL_17;
  }

  v16 = mlir::Operation::getAttrOfType<mlir::arith::CmpIPredicateAttr>(v9);
  if (!v16)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_18;
    }

    v11 = *(v9 + 24);
LABEL_17:
    (*(*v10 + 88))(v10, v11, v12, &v42);
LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  v17 = v16;
  if ((*(v9 + 46) & 0x80) != 0)
  {
    v18 = *(v9 + 72);
  }

  else
  {
    v18 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v50, v9);
  v19 = *(*(v5 + 9) + 56);
  if ((~*(v19 + 8) & 7) == 0)
  {
    v19 = 0;
  }

  if (!v19)
  {
LABEL_30:
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_18;
    }

    v11 = *(v5 + 3);
    goto LABEL_17;
  }

  v20 = *(v19 + 8) & 7;
  if (v20 == 6)
  {
    v21 = v19 + 24 * *(v19 + 16);
    v22 = (v21 + 120);
    if (v21 == -120)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v22 = (v19 + 16 * v20 + 16);
  }

  {
    goto LABEL_18;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v50, v22);
  v23 = *(a3 + 1);
  v24 = *(*(v50[0] + 1) + 24);
  v42 = *(*v50[0] + 24);
  v43 = v24;
  v25 = mlir::FusedLoc::get(&v42, 2, 0, v23);
  v47 = v49;
  v48 = 0x400000000;
  v42 = v17;
  v26 = *(**v17 + 32);
  Int = mlir::IntegerAttr::getInt(&v42);
  v28 = mlir::arith::invertPredicate(Int);
  v29 = mlir::IntegerType::get(v26, 64, 0);
  v30 = mlir::IntegerAttr::get(v29, v28);
  v45[0] = v46;
  v45[1] = 0x400000000;
  v42 = v44;
  v43 = 0x400000000;
  if (v30)
  {
    v32 = v30;
    v40[0] = "predicate";
    v41[8] = 259;
    v33 = mlir::StringAttr::get(*(a3 + 1), v40, v31);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::CmpIPredicateAttr &>(&v42, v33, v32);
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v45, *(v18 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v45, *(v18 + 56));
  v40[0] = v41;
  v40[1] = 0x400000000;
  if (*(v5 + 9))
  {
    v34 = v5 - 16;
  }

  else
  {
    v34 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v40, *(v34 + 1) & 0xFFFFFFFFFFFFFFF8);
  v35 = mlir::OpBuilder::create<mlir::arith::CmpIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v25, v40, v45, &v42);
  if (v40[0] != v41)
  {
    free(v40[0]);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  if (v45[0] != v46)
  {
    free(v45[0]);
  }

  if (*(v35 + 9))
  {
    v36 = (v35 - 16);
  }

  else
  {
    v36 = 0;
  }

  v42 = v44;
  v43 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v42, v36, 0, v36, 1);
  v37 = v42;
  if (v43)
  {
    v38 = 8 * v43;
    do
    {
      v39 = *v37++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v47, v39);
      v38 -= 8;
    }

    while (v38);
    v37 = v42;
  }

  if (v37 != v44)
  {
    free(v37);
  }

  (**a3)(a3, a2, v47 & 0xFFFFFFFFFFFFFFF9, v48);
  if (v47 != v49)
  {
    free(v47);
  }

  v13 = 1;
LABEL_19:
  if (v50[0] != v51)
  {
    free(v50[0]);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void *mlir::Operation::getAttrOfType<mlir::arith::CmpIPredicateAttr>(uint64_t a1)
{
  result = mlir::Operation::getAttr(a1, "predicate", 9uLL);
  if (result)
  {
    v2 = result;
    if (mlir::arith::CmpIPredicateAttr::classof(result))
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t anonymous namespace::static_dag_matcher_12(uint64_t a1, void *a2)
{
  v15[0] = 0;
  v16[0] = v15;
  if ((*(a2 - 1) & 7) == 7)
  {
    goto LABEL_9;
  }

  v4 = *(a2 - 1) & 7;
  if (v4 == 6)
  {
    v5 = &a2[3 * *a2 - 2];
    v6 = v5 + 120;
    if (v5 == -120)
    {
LABEL_9:
      v10 = *(a1 + 16);
      if (!v10 || v10[2] != 1)
      {
        return 0;
      }

      v11 = a2[3];
      v12 = *(*v10 + 88);
      goto LABEL_12;
    }
  }

  else
  {
    v6 = &a2[2 * v4];
  }

  if (!mlir::detail::constant_op_binder<mlir::Attribute>::match(v16, v6))
  {
    goto LABEL_9;
  }

  v7 = v15[0];
  v16[0] = "operand 0 of native code call '::mlir::success(::mlir::matchPattern($_self->getResult(0), ::mlir::m_Constant(&$0)))' failed to satisfy constraint: 'constant attribute 1'";
  v16[1] = 169;
  v8 = mlir::IntegerType::get(*(a1 + 8), 1, 0);
  if (mlir::Builder::getIntegerAttr(a1 + 8, v8, 1uLL) == v7)
  {
    return 1;
  }

  v15[1] = v16;
  v13 = *(a1 + 16);
  if (v13 && v13[2] == 1)
  {
    v14 = a2[3];
    v12 = *(*v13 + 88);
LABEL_12:
    v12();
  }

  return 0;
}

void llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::CmpIPredicateAttr &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(a1, a2, a3);
  }

  else
  {
    v4 = (*a1 + 16 * v3);
    *v4 = a2;
    v4[1] = a3;
    *(a1 + 8) = v3 + 1;
  }
}

char *mlir::OpBuilder::create<mlir::arith::CmpIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v38[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::CmpIOp>(a1, *(**a2 + 32));
  v26 = a2;
  v27 = v10;
  v28[0] = &v29;
  v28[1] = 0x400000000;
  v30[0] = &v31;
  v30[1] = 0x400000000;
  v32[0] = &v33;
  v32[1] = 0x400000000;
  v34 = 4;
  v35 = v37;
  v36 = 0x100000000;
  v37[1] = v38;
  v37[2] = 0x100000000;
  v38[1] = 0;
  v38[2] = 0;
  v38[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v38[4] = 0;
  v38[6] = 0;
  v11 = *a3;
  v12 = *(a3 + 2);
  v13 = v11 & 0xFFFFFFFFFFFFFFF9;
  v14 = *a4;
  v15 = *(a4 + 2);
  v16 = *a5;
  v17 = *(a5 + 8);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v28, v14 & 0xFFFFFFFFFFFFFFF9, 0, v14 & 0xFFFFFFFFFFFFFFF9, v15);
  v34 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v32, v16, &v16[16 * v17]);
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(v30, v13 | 2, 0, v13 | 2, v12);
  if (v17)
  {
    v18 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties>(&v26);
    v19 = v27;
    v20 = *(v27 + 16) == &mlir::detail::TypeIDResolver<void,void>::id ? 0 : v27;
    Dictionary = mlir::NamedAttrList::getDictionary(v32, *(**v26 + 32));
    if (((*(*v20 + 144))(v20, v19, v18, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  v22 = mlir::Operation::create(&v26);
  mlir::OpBuilder::insert(a1, v22);
  if (*(*(v22 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  mlir::OperationState::~OperationState(&v26);
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::__mlir_ods_local_attr_constraint_ArithCanonicalization4(mlir::PatternRewriter &,mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v8 = 261;
  v4 = *v2;
  v3 = v2[1];
  v7[0] = v4;
  v7[1] = v3;
  v5 = mlir::Diagnostic::operator<<(a2, v7);
  return mlir::Diagnostic::operator<<<23ul>(v5, ": constant attribute 1");
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::XOrINotCmpI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::XOrINotCmpI]";
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

void anonymous namespace::XOrIOfExtUI::~XOrIOfExtUI(_anonymous_namespace_::XOrIOfExtUI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::XOrIOfExtUI::matchAndRewrite(_anonymous_namespace_::XOrIOfExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v49[4] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
    v6 = *(a2 + 17);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v36[0] = v5;
  v36[1] = v6;
  v35[0] = v5;
  v35[1] = v6;
  v48[0] = v49;
  v48[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v48, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(v7 + 9) + 24);
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    v11 = v10 + 120;
    if (v10 == -120)
    {
LABEL_11:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_59;
      }

      v13 = *(v7 + 3);
      goto LABEL_58;
    }
  }

  else
  {
    v11 = v8 + 16 * v9 + 16;
  }

  {
    goto LABEL_59;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v48, v11);
  v15 = *(*(v7 + 9) + 56);
  if ((~*(v15 + 8) & 7) == 0)
  {
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = *(v15 + 8) & 7;
  if (v16 == 6)
  {
    v17 = v15 + 24 * *(v15 + 16);
    v18 = v17 + 120;
    if (v17 == -120)
    {
LABEL_21:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_59;
      }

      v13 = *(v7 + 3);
      goto LABEL_58;
    }
  }

  else
  {
    v18 = v15 + 16 * v16 + 16;
  }

  {
LABEL_59:
    v32 = 0;
    goto LABEL_60;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v48, v18);
  v19 = v35[0];
  v20 = v36[0];
  if ((*(*(v36[0] + 24) + 8) ^ *(*(v35[0] + 24) + 8)) >= 8)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_59;
    }

    v13 = *(a2 + 3);
LABEL_58:
    (*(*v12 + 88))(v12, v13, v14, &v39);
    goto LABEL_59;
  }

  v21 = *(a3 + 1);
  v22 = *(*(v48[0] + 1) + 24);
  v39 = *(*v48[0] + 24);
  v40 = v22;
  v41[0] = *(*(v48[0] + 2) + 24);
  v23 = mlir::FusedLoc::get(&v39, 3, 0, v21);
  v45 = v47;
  v46 = 0x400000000;
  v42 = v44;
  v43 = 0x400000000;
  v39 = v41;
  v40 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v42, *(v19 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v42, *(v20 + 24));
  v24 = mlir::OpBuilder::create<mlir::arith::XOrIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v23, &v42, &v39);
  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  v42 = v44;
  v43 = 0x400000000;
  v39 = v41;
  v40 = 0x400000000;
  if (*(v24 + 9))
  {
    v25 = (v24 - 16);
  }

  else
  {
    v25 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v42, v25);
  v37[0] = v38;
  v37[1] = 0x400000000;
  if (*(v7 + 9))
  {
    v26 = v7 - 16;
  }

  else
  {
    v26 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v37, *(v26 + 1) & 0xFFFFFFFFFFFFFFF8);
  v27 = mlir::OpBuilder::create<mlir::arith::ExtUIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v23, v37, &v42, &v39);
  if (v37[0] != v38)
  {
    free(v37[0]);
  }

  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  if (*(v27 + 9))
  {
    v28 = (v27 - 16);
  }

  else
  {
    v28 = 0;
  }

  v39 = v41;
  v40 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v39, v28, 0, v28, 1);
  v29 = v39;
  if (v40)
  {
    v30 = 8 * v40;
    do
    {
      v31 = *v29++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v45, v31);
      v30 -= 8;
    }

    while (v30);
    v29 = v39;
  }

  if (v29 != v41)
  {
    free(v29);
  }

  (**a3)(a3, a2, v45 & 0xFFFFFFFFFFFFFFF9, v46);
  if (v45 != v47)
  {
    free(v45);
  }

  v32 = 1;
LABEL_60:
  if (v48[0] != v49)
  {
    free(v48[0]);
  }

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t anonymous namespace::static_dag_matcher_8(_DWORD *a1, uint64_t a2, void *a3)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v6 = *(a2 + 72);
    }

    else
    {
      v6 = 0;
    }

    result = 1;
    *a3 = v6;
    a3[1] = 1;
  }

  else
  {
    if (a1)
    {
      if (a1[2] == 1)
      {
        *&v7[1] = v3;
        v8 = v4;
      }
    }

    return 0;
  }

  return result;
}

uint64_t anonymous namespace::static_dag_matcher_9(_DWORD *a1, uint64_t a2, void *a3)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v6 = *(a2 + 72);
    }

    else
    {
      v6 = 0;
    }

    result = 1;
    *a3 = v6;
    a3[1] = 1;
  }

  else
  {
    if (a1)
    {
      if (a1[2] == 1)
      {
        *&v7[1] = v3;
        v8 = v4;
      }
    }

    return 0;
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::arith::XOrIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::XOrIOp>(a1, *(**a2 + 32));
  v25[0] = a2;
  v25[1] = v8;
  v26[0] = &v27;
  v26[1] = 0x400000000;
  v28[0] = &v29;
  v28[1] = 0x400000000;
  v30[0] = &v31;
  v30[1] = 0x400000000;
  v32 = 4;
  v33 = v35;
  v34 = 0x100000000;
  v35[1] = v36;
  v35[2] = 0x100000000;
  v36[1] = 0;
  v36[2] = 0;
  v36[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v36[4] = 0;
  v36[6] = 0;
  v9 = *a3;
  v10 = *(a3 + 2);
  v11 = *a4;
  v12 = *(a4 + 8);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v26, v9 & 0xFFFFFFFFFFFFFFF9, 0, v9 & 0xFFFFFFFFFFFFFFF9, v10);
  v32 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v30, v11, &v11[16 * v12]);
  v37 = v39;
  v38 = 0x200000000;
  Dictionary = mlir::NamedAttrList::getDictionary(v30, *(**v25[0] + 32));
  if (!mlir::arith::XOrIOp::inferReturnTypes(Dictionary, v14, v15, v9 & 0xFFFFFFFFFFFFFFF9, v10, v16, v17, v18, v23, v24, &v37))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v28, v37, &v37[v38]);
  if (v37 != v39)
  {
    free(v37);
  }

  v19 = mlir::Operation::create(v25);
  mlir::OpBuilder::insert(a1, v19);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v25);
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

char *mlir::OpBuilder::create<mlir::arith::ExtUIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v33[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ExtUIOp>(a1, *(**a2 + 32));
  v22[0] = a2;
  v22[1] = v10;
  v23[0] = &v24;
  v23[1] = 0x400000000;
  v25[0] = &v26;
  v25[1] = 0x400000000;
  v27[0] = &v28;
  v27[1] = 0x400000000;
  v29 = 4;
  v30 = v32;
  v31 = 0x100000000;
  v32[1] = v33;
  v32[2] = 0x100000000;
  v33[1] = 0;
  v33[2] = 0;
  v33[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v33[4] = 0;
  v33[6] = 0;
  v11 = *a3;
  v12 = *(a3 + 2);
  v13 = v11 & 0xFFFFFFFFFFFFFFF9;
  v14 = *a4;
  v15 = *(a4 + 2);
  v16 = *a5;
  v17 = *(a5 + 8);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v23, v14 & 0xFFFFFFFFFFFFFFF9, 0, v14 & 0xFFFFFFFFFFFFFFF9, v15);
  v29 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v27, v16, &v16[16 * v17]);
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(v25, v13 | 2, 0, v13 | 2, v12);
  v18 = mlir::Operation::create(v22);
  mlir::OpBuilder::insert(a1, v18);
  if (*(*(v18 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::XOrIOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.xori";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ExtUIOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.extui";
    v6[3] = 11;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::XOrIOfExtUI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::XOrIOfExtUI]";
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

void anonymous namespace::XOrIOfExtSI::~XOrIOfExtSI(_anonymous_namespace_::XOrIOfExtSI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::XOrIOfExtSI::matchAndRewrite(_anonymous_namespace_::XOrIOfExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v49[4] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
    v6 = *(a2 + 17);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v36[0] = v5;
  v36[1] = v6;
  v35[0] = v5;
  v35[1] = v6;
  v48[0] = v49;
  v48[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v48, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(v7 + 9) + 24);
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    v11 = v10 + 120;
    if (v10 == -120)
    {
LABEL_11:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_59;
      }

      v13 = *(v7 + 3);
      goto LABEL_58;
    }
  }

  else
  {
    v11 = v8 + 16 * v9 + 16;
  }

  {
    goto LABEL_59;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v48, v11);
  v15 = *(*(v7 + 9) + 56);
  if ((~*(v15 + 8) & 7) == 0)
  {
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = *(v15 + 8) & 7;
  if (v16 == 6)
  {
    v17 = v15 + 24 * *(v15 + 16);
    v18 = v17 + 120;
    if (v17 == -120)
    {
LABEL_21:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_59;
      }

      v13 = *(v7 + 3);
      goto LABEL_58;
    }
  }

  else
  {
    v18 = v15 + 16 * v16 + 16;
  }

  {
LABEL_59:
    v32 = 0;
    goto LABEL_60;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v48, v18);
  v19 = v35[0];
  v20 = v36[0];
  if ((*(*(v36[0] + 24) + 8) ^ *(*(v35[0] + 24) + 8)) >= 8)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_59;
    }

    v13 = *(a2 + 3);
LABEL_58:
    (*(*v12 + 88))(v12, v13, v14, &v39);
    goto LABEL_59;
  }

  v21 = *(a3 + 1);
  v22 = *(*(v48[0] + 1) + 24);
  v39 = *(*v48[0] + 24);
  v40 = v22;
  v41[0] = *(*(v48[0] + 2) + 24);
  v23 = mlir::FusedLoc::get(&v39, 3, 0, v21);
  v45 = v47;
  v46 = 0x400000000;
  v42 = v44;
  v43 = 0x400000000;
  v39 = v41;
  v40 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v42, *(v19 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v42, *(v20 + 24));
  v24 = mlir::OpBuilder::create<mlir::arith::XOrIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v23, &v42, &v39);
  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  v42 = v44;
  v43 = 0x400000000;
  v39 = v41;
  v40 = 0x400000000;
  if (*(v24 + 9))
  {
    v25 = (v24 - 16);
  }

  else
  {
    v25 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v42, v25);
  v37[0] = v38;
  v37[1] = 0x400000000;
  if (*(v7 + 9))
  {
    v26 = v7 - 16;
  }

  else
  {
    v26 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v37, *(v26 + 1) & 0xFFFFFFFFFFFFFFF8);
  v27 = mlir::OpBuilder::create<mlir::arith::ExtSIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v23, v37, &v42, &v39);
  if (v37[0] != v38)
  {
    free(v37[0]);
  }

  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  if (*(v27 + 9))
  {
    v28 = (v27 - 16);
  }

  else
  {
    v28 = 0;
  }

  v39 = v41;
  v40 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v39, v28, 0, v28, 1);
  v29 = v39;
  if (v40)
  {
    v30 = 8 * v40;
    do
    {
      v31 = *v29++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v45, v31);
      v30 -= 8;
    }

    while (v30);
    v29 = v39;
  }

  if (v29 != v41)
  {
    free(v29);
  }

  (**a3)(a3, a2, v45 & 0xFFFFFFFFFFFFFFF9, v46);
  if (v45 != v47)
  {
    free(v45);
  }

  v32 = 1;
LABEL_60:
  if (v48[0] != v49)
  {
    free(v48[0]);
  }

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t anonymous namespace::static_dag_matcher_6(_DWORD *a1, uint64_t a2, void *a3)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v6 = *(a2 + 72);
    }

    else
    {
      v6 = 0;
    }

    result = 1;
    *a3 = v6;
    a3[1] = 1;
  }

  else
  {
    if (a1)
    {
      if (a1[2] == 1)
      {
        *&v7[1] = v3;
        v8 = v4;
      }
    }

    return 0;
  }

  return result;
}

uint64_t anonymous namespace::static_dag_matcher_7(_DWORD *a1, uint64_t a2, void *a3)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v6 = *(a2 + 72);
    }

    else
    {
      v6 = 0;
    }

    result = 1;
    *a3 = v6;
    a3[1] = 1;
  }

  else
  {
    if (a1)
    {
      if (a1[2] == 1)
      {
        *&v7[1] = v3;
        v8 = v4;
      }
    }

    return 0;
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::XOrIOfExtSI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::XOrIOfExtSI]";
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

void *mlir::ElementsAttr::try_value_begin<llvm::APFloat>(uint64_t a1, uint64_t *a2)
{
  mlir::detail::TypeIDResolver<llvm::APFloat,void>::resolveTypeID();
  v4 = *a2;
  result = (*a2[1])(v9);
  if (v10 == 1)
  {
    v6 = v9[0];
    v7 = BYTE1(v9[0]);
    v8 = v9[1];
    if (LOBYTE(v9[0]) == 1)
    {
      *a1 = v9[0];
      *(a1 + 1) = v7;
      *(a1 + 8) = v8;
      *(a1 + 16) = 0;
    }

    else
    {
      *a1 = v9[0];
      *(a1 + 1) = v7;
      *(a1 + 8) = v8;
      *(a1 + 16) = 0;
      v6 = 1;
    }

    *(a1 + 24) = v6;
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

void llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(unsigned int *a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 4;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 4, a2, 24, &v6);
  llvm::SmallVectorTemplateBase<llvm::APFloat,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  a1[3] = v5;
}

unsigned int *llvm::SmallVectorTemplateBase<llvm::APFloat,false>::moveElementsForGrow(unsigned int *result, void *a2)
{
  v2 = result[2];
  if (v2)
  {
    v4 = result;
    v5 = *result;
    v6 = 24 * v2;
    do
    {
      if (*v5 == &llvm::semPPCDoubleDouble)
      {
        v7 = v5[1];
        v5[1] = 0;
        *a2 = &llvm::semPPCDoubleDouble;
        a2[1] = v7;
        *v5 = &llvm::semBogus;
      }

      else
      {
        *a2 = &llvm::semBogus;
        result = llvm::detail::IEEEFloat::operator=(a2, v5);
      }

      a2 += 3;
      v5 += 3;
      v6 -= 24;
    }

    while (v6);
    v8 = v4[2];
    if (v8)
    {
      v9 = *v4;
      v10 = -24 * v8;
      result = (v9 + 24 * v8 - 24);
      do
      {
        llvm::APFloat::Storage::~Storage(result);
        result = (v11 - 24);
        v10 += 24;
      }

      while (v10);
    }
  }

  return result;
}

llvm::detail::IEEEFloat *mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(llvm::APFloat::Storage *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 1))
  {
    v4 = 0;
  }

  else
  {
    v4 = a3;
  }

  v5 = *(a2 + 8);
  if (*a2 == 1)
  {
    return llvm::APFloat::Storage::Storage(a1, (v5 + 24 * v4));
  }

  else
  {
    return (*(*v5 + 24))(v5, v4);
  }
}

unint64_t llvm::SmallVectorTemplateCommon<llvm::APFloat,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::APFloat,false>>(unsigned int *a1, unint64_t a2, uint64_t a3)
{
  v4 = a1[2];
  v5 = v4 + a3;
  if (v4 + a3 > a1[3])
  {
    v7 = *a1 + 24 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(a1, v5);
    }
  }

  return a2;
}

char **llvm::SmallVector<llvm::APFloat,2u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[24 * v3 - 24];
    do
    {
      llvm::APFloat::Storage::~Storage(v5);
      v5 = (v6 - 24);
      v4 += 24;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

uint64_t mlir::detail::constant_float_predicate_matcher::match(uint64_t (**a1)(_BYTE *), uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  llvm::detail::IEEEFloat::IEEEFloat(v8, &llvm::semBogus);
  v7 = v8;
  if (mlir::detail::constant_float_value_binder::match(&v7, a2))
  {
    v4 = (*a1)(v8);
  }

  else
  {
    v4 = 0;
  }

  llvm::APFloat::Storage::~Storage(v8);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::detail::constant_float_value_binder::match(void ***a1, uint64_t a2)
{
  v8 = *a1;
  if (mlir::detail::attr_value_binder<mlir::FloatAttr,llvm::APFloat,void>::match(&v8, a2))
  {
    return 1;
  }

  v4 = *(*a2 + 136);
  v5 = v4 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (!v5 || *(a2 + 24) != 1)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  (*(*(a2 + 16) + 24))();
  v9[0] = a2;
  v9[1] = 0;
  v7 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(v9);
  return mlir::detail::attr_value_binder<mlir::FloatAttr,llvm::APFloat,void>::match(&v8, v7);
}

BOOL mlir::detail::attr_value_binder<mlir::FloatAttr,llvm::APFloat,void>::match(void ***a1, uint64_t a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    llvm::APFloat::Storage::Storage(v6, (a2 + 16));
    llvm::APFloat::Storage::operator=(*a1, v6);
    llvm::APFloat::Storage::~Storage(v6);
  }

  result = v2 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, const llvm::APFloat::Storage *a2, llvm::detail::DoubleAPFloat *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  llvm::APFloat::Storage::Storage(&v7, a2);
  llvm::APFloat::add(&v7, a3, 1);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v5 = v8;
    *a1 = &llvm::semPPCDoubleDouble;
    *(a1 + 8) = v5;
    v7 = &llvm::semBogus;
    v8 = 0;
  }

  else
  {
    *a1 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(a1, &v7);
  }

  *(a1 + 24) = 1;
  llvm::APFloat::Storage::~Storage(&v7);
  v6 = *MEMORY[0x277D85DE8];
}

char **llvm::SmallVector<llvm::APFloat,4u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[24 * v3 - 24];
    do
    {
      llvm::APFloat::Storage::~Storage(v5);
      v5 = (v6 - 24);
      v4 += 24;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, const llvm::APFloat::Storage *a2, llvm::detail::DoubleAPFloat *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  llvm::APFloat::Storage::Storage(&v7, a2);
  llvm::APFloat::subtract(&v7, a3, 1);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v5 = v8;
    *a1 = &llvm::semPPCDoubleDouble;
    *(a1 + 8) = v5;
    v7 = &llvm::semBogus;
    v8 = 0;
  }

  else
  {
    *a1 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(a1, &v7);
  }

  *(a1 + 24) = 1;
  llvm::APFloat::Storage::~Storage(&v7);
  v6 = *MEMORY[0x277D85DE8];
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, llvm::APFloat **this, llvm::APFloat *a3)
{
  v3 = this;
  v15 = *MEMORY[0x277D85DE8];
  if (*this == &llvm::semPPCDoubleDouble)
  {
    v5 = this[1];
  }

  else
  {
    v5 = this;
  }

  v6 = *(v5 + 20);
  if ((v6 & 7) == 1)
  {
    goto LABEL_10;
  }

  if (*a3 == &llvm::semPPCDoubleDouble)
  {
    v8 = *(a3 + 1);
  }

  else
  {
    v8 = a3;
  }

  v9 = *(v8 + 20);
  if ((v9 & 7) == 1)
  {
    this = a3;
LABEL_10:
    llvm::APFloat::makeQuiet(&v13, this);
    goto LABEL_23;
  }

  v10 = (v6 & 7) == 3 && (v9 & 7) == 3;
  if (!v10 || ((v6 >> 3) & 1) == (v9 & 8) >> 3)
  {
    if (llvm::APFloat::compare(this, a3))
    {
      this = v3;
    }

    else
    {
      this = a3;
    }
  }

  else if ((v6 & 8) != 0)
  {
    this = a3;
  }

  llvm::APFloat::Storage::Storage(&v13, this);
LABEL_23:
  if (v13 == &llvm::semPPCDoubleDouble)
  {
    v11 = v14;
    *a1 = &llvm::semPPCDoubleDouble;
    *(a1 + 8) = v11;
    v13 = &llvm::semBogus;
    v14 = 0;
  }

  else
  {
    *a1 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(a1, &v13);
  }

  *(a1 + 24) = 1;
  llvm::APFloat::Storage::~Storage(&v13);
  v12 = *MEMORY[0x277D85DE8];
}

llvm::detail::IEEEFloat *llvm::APFloat::makeQuiet(llvm::APFloat *this, const llvm::APFloat::Storage *a2)
{
  result = llvm::APFloat::Storage::Storage(this, a2);
  if (*result == &llvm::semPPCDoubleDouble)
  {
    v3 = *(result + 1);
  }

  else
  {
    v3 = result;
  }

  if (*(*v3 + 16) != 1)
  {
    v4 = *(*v3 + 8);
    v5 = (v3 + 8);
    if ((v4 - 64) <= 0xFFFFFF7F)
    {
      v5 = *v5;
    }

    v5[(v4 - 2) >> 6] |= 1 << (v4 - 2);
  }

  return result;
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,llvm::APFloat (&)(llvm::APFloat const&,llvm::APFloat const&)>(llvm::ArrayRef<mlir::Attribute>,llvm::APFloat (&)(llvm::APFloat const&,llvm::APFloat const&) &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, void (*a2)(void **__return_ptr, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  a2(&v7, a3, a4);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v5 = v8;
    *a1 = &llvm::semPPCDoubleDouble;
    *(a1 + 8) = v5;
    v7 = &llvm::semBogus;
    v8 = 0;
  }

  else
  {
    *a1 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(a1, &v7);
  }

  *(a1 + 24) = 1;
  llvm::APFloat::Storage::~Storage(&v7);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, llvm::APInt *this, llvm::APInt *a3)
{
  result = llvm::APInt::compareSigned(this, a3);
  if (result <= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = this;
  }

  v8 = *(v7 + 2);
  if (v8 > 0x40)
  {
    operator new[]();
  }

  v9 = *v7;
  *(a1 + 8) = v8;
  *a1 = v9;
  *(a1 + 16) = 1;
  return result;
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, llvm::APInt *this, llvm::APInt *a3)
{
  result = llvm::APInt::compare(this, a3);
  if (result <= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = this;
  }

  v8 = *(v7 + 2);
  if (v8 > 0x40)
  {
    operator new[]();
  }

  v9 = *v7;
  *(a1 + 8) = v8;
  *a1 = v9;
  *(a1 + 16) = 1;
  return result;
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, llvm::APFloat **a2, llvm::APFloat *this)
{
  v3 = a2;
  v17 = *MEMORY[0x277D85DE8];
  if (*a2 == &llvm::semPPCDoubleDouble)
  {
    v5 = a2[1];
  }

  else
  {
    v5 = a2;
  }

  v6 = *(v5 + 20);
  if ((v6 & 7) == 1)
  {
    goto LABEL_10;
  }

  if (*this == &llvm::semPPCDoubleDouble)
  {
    v8 = *(this + 1);
  }

  else
  {
    v8 = this;
  }

  v9 = *(v8 + 20);
  if ((v9 & 7) == 1)
  {
    a2 = this;
LABEL_10:
    llvm::APFloat::makeQuiet(&v15, a2);
    goto LABEL_23;
  }

  v10 = (v6 & 7) == 3 && (v9 & 7) == 3;
  if (!v10 || ((v6 >> 3) & 1) == (v9 & 8) >> 3)
  {
    v11 = llvm::APFloat::compare(this, a2) == 0;
  }

  else
  {
    v11 = (v6 & 8) == 0;
  }

  if (v11)
  {
    v12 = this;
  }

  else
  {
    v12 = v3;
  }

  llvm::APFloat::Storage::Storage(&v15, v12);
LABEL_23:
  if (v15 == &llvm::semPPCDoubleDouble)
  {
    v13 = v16;
    *a1 = &llvm::semPPCDoubleDouble;
    *(a1 + 8) = v13;
    v15 = &llvm::semBogus;
    v16 = 0;
  }

  else
  {
    *a1 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(a1, &v15);
  }

  *(a1 + 24) = 1;
  llvm::APFloat::Storage::~Storage(&v15);
  v14 = *MEMORY[0x277D85DE8];
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, llvm::APFloat *a2, llvm::APFloat **this)
{
  v3 = this;
  v16 = *MEMORY[0x277D85DE8];
  if (*a2 == &llvm::semPPCDoubleDouble)
  {
    v5 = *(a2 + 1);
  }

  else
  {
    v5 = a2;
  }

  v6 = *(v5 + 20);
  if ((v6 & 7) != 1)
  {
    if (*this == &llvm::semPPCDoubleDouble)
    {
      v8 = this[1];
    }

    else
    {
      v8 = this;
    }

    v9 = *(v8 + 20);
    if ((v9 & 7) == 1)
    {
      v3 = a2;
    }

    else
    {
      v10 = (v6 & 7) == 3 && (v9 & 7) == 3;
      if (!v10 || ((v6 >> 3) & 1) == (v9 & 8) >> 3)
      {
        v11 = llvm::APFloat::compare(this, a2) == 0;
      }

      else
      {
        v11 = (v6 & 8) == 0;
      }

      if (!v11)
      {
        v3 = a2;
      }
    }
  }

  llvm::APFloat::Storage::Storage(&v14, v3);
  if (v14 == &llvm::semPPCDoubleDouble)
  {
    v12 = v15;
    *a1 = &llvm::semPPCDoubleDouble;
    *(a1 + 8) = v12;
    v14 = &llvm::semBogus;
    v15 = 0;
  }

  else
  {
    *a1 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(a1, &v14);
  }

  *(a1 + 24) = 1;
  llvm::APFloat::Storage::~Storage(&v14);
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, llvm::APInt *this, llvm::APInt *a3)
{
  result = llvm::APInt::compareSigned(this, a3);
  if (result >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = this;
  }

  v8 = *(v7 + 2);
  if (v8 > 0x40)
  {
    operator new[]();
  }

  v9 = *v7;
  *(a1 + 8) = v8;
  *a1 = v9;
  *(a1 + 16) = 1;
  return result;
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, llvm::APInt *this, llvm::APInt *a3)
{
  result = llvm::APInt::compare(this, a3);
  if (result >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = this;
  }

  v8 = *(v7 + 2);
  if (v8 > 0x40)
  {
    operator new[]();
  }

  v9 = *v7;
  *(a1 + 8) = v8;
  *a1 = v9;
  *(a1 + 16) = 1;
  return result;
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, const llvm::APFloat::Storage *a2, const llvm::detail::IEEEFloat *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  llvm::APFloat::Storage::Storage(&v7, a2);
  llvm::APFloat::multiply(&v7, a3, 1);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v5 = v8;
    *a1 = &llvm::semPPCDoubleDouble;
    *(a1 + 8) = v5;
    v7 = &llvm::semBogus;
    v8 = 0;
  }

  else
  {
    *a1 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(a1, &v7);
  }

  *(a1 + 24) = 1;
  llvm::APFloat::Storage::~Storage(&v7);
  v6 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::MulFOfNegF::~MulFOfNegF(_anonymous_namespace_::MulFOfNegF *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::MulFOfNegF::matchAndRewrite(_anonymous_namespace_::MulFOfNegF *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v84[2] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
    v6 = *(a2 + 17);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v57[0] = v5;
  v57[1] = v6;
  v56[0] = v5;
  v56[1] = v6;
  v67[0] = v68;
  v67[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v67, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulFOp,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(v7 + 9) + 24);
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    v11 = v10 + 120;
    if (v10 == -120)
    {
LABEL_11:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_63;
      }

      v13 = *(v7 + 3);
      goto LABEL_62;
    }
  }

  else
  {
    v11 = v8 + 16 * v9 + 16;
  }

  {
    goto LABEL_63;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v67, v11);
  v15 = *(*(v7 + 9) + 56);
  if ((~*(v15 + 8) & 7) == 0)
  {
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = *(v15 + 8) & 7;
  if (v16 == 6)
  {
    v17 = v15 + 24 * *(v15 + 16);
    v18 = v17 + 120;
    if (v17 == -120)
    {
LABEL_21:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_63;
      }

      v13 = *(v7 + 3);
      goto LABEL_62;
    }
  }

  else
  {
    v18 = v15 + 16 * v16 + 16;
  }

  {
LABEL_63:
    v50 = 0;
    goto LABEL_64;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v67, v18);
  Attr = mlir::Operation::getAttr(a2, "fastmath", 8uLL);
  if (!Attr || (v20 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id))
  {
    v20 = mlir::arith::FastMathFlagsAttr::get(*(a3 + 1), 0);
  }

  v21 = v56[0];
  v22 = v57[0];
  if ((*(*(v57[0] + 24) + 8) ^ *(*(v56[0] + 24) + 8)) >= 8)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_63;
    }

    v13 = *(a2 + 3);
LABEL_62:
    (*(*v12 + 88))(v12, v13, v14, &v69);
    goto LABEL_63;
  }

  v23 = *(a3 + 1);
  v24 = *(*(v67[0] + 1) + 24);
  v69 = *(*v67[0] + 24);
  v70 = v24;
  v71[0] = *(*(v67[0] + 2) + 24);
  v25 = mlir::FusedLoc::get(&v69, 3, 0, v23);
  v64 = v66;
  v65 = 0x400000000;
  v61 = v63;
  v62 = 0x400000000;
  v58 = v60;
  v59 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v61, *(v21 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v61, *(v22 + 24));
  if (v20)
  {
    v69 = "fastmath";
    v72 = 259;
    v27 = mlir::StringAttr::get(*(a3 + 1), &v69, v26);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::FastMathFlagsAttr &>(&v58, v27, v20);
  }

  v28 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::MulFOp>(a3 + 8, *(**v25 + 32));
  v69 = v25;
  v70 = v28;
  v71[0] = &v72;
  v71[1] = 0x400000000;
  v73[0] = &v74;
  v73[1] = 0x400000000;
  v75[0] = &v76;
  v75[1] = 0x400000000;
  v77 = 4;
  v78 = v80;
  v79 = 0x100000000;
  v80[1] = v81;
  v80[2] = 0x100000000;
  v81[2] = 0;
  v81[1] = 0;
  v81[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v81[4] = 0;
  v81[6] = 0;
  v29 = v61;
  v30 = v62;
  v31 = v58;
  v32 = v59;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v71, v61 & 0xFFFFFFFFFFFFFFF9, 0, v61 & 0xFFFFFFFFFFFFFFF9, v62);
  v77 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v75, v31, &v31[16 * v32]);
  if (v32)
  {
    v33 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties>(&v69);
    v34 = v70;
    v35 = *(v70 + 16) == &mlir::detail::TypeIDResolver<void,void>::id ? 0 : v70;
    Dictionary = mlir::NamedAttrList::getDictionary(v75, *(**v69 + 32));
    if (((*(*v35 + 144))(v35, v34, v33, Dictionary, 0) & 1) == 0)
    {
      v53 = "Property conversion failed.";
LABEL_70:
      llvm::report_fatal_error(v53, 1);
    }
  }

  v82 = v84;
  v83 = 0x200000000;
  v37 = mlir::NamedAttrList::getDictionary(v75, *(**v69 + 32));
  if (!mlir::arith::MulFOp::inferReturnTypes(v37, v38, v39, v29 & 0xFFFFFFFFFFFFFFF9, v30, v40, v41, v42, v54, v55, &v82))
  {
    v53 = "Failed to infer result type(s).";
    goto LABEL_70;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v73, v82, &v82[v83]);
  if (v82 != v84)
  {
    free(v82);
  }

  v43 = mlir::Operation::create(&v69);
  mlir::OpBuilder::insert((a3 + 8), v43);
  v44 = *(*(v43 + 6) + 16);
  mlir::OperationState::~OperationState(&v69);
  if (v44 == &mlir::detail::TypeIDResolver<mlir::arith::MulFOp,void>::id)
  {
    v45 = v43;
  }

  else
  {
    v45 = 0;
  }

  if (v58 != v60)
  {
    free(v58);
  }

  if (v61 != v63)
  {
    free(v61);
  }

  if (*(v45 + 9))
  {
    v46 = (v45 - 16);
  }

  else
  {
    v46 = 0;
  }

  v69 = v71;
  v70 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v69, v46, 0, v46, 1);
  v47 = v69;
  if (v70)
  {
    v48 = 8 * v70;
    do
    {
      v49 = *v47++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v64, v49);
      v48 -= 8;
    }

    while (v48);
    v47 = v69;
  }

  if (v47 != v71)
  {
    free(v47);
  }

  (**a3)(a3, a2, v64 & 0xFFFFFFFFFFFFFFF9, v65);
  if (v64 != v66)
  {
    free(v64);
  }

  v50 = 1;
LABEL_64:
  if (v67[0] != v68)
  {
    free(v67[0]);
  }

  v51 = *MEMORY[0x277D85DE8];
  return v50;
}

uint64_t anonymous namespace::static_dag_matcher_10(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::NegFOp,void>::id)
  {
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v6 = *(a2 + 72);
    }

    else
    {
      v6 = 0;
    }

    *a3 = v6;
    a3[1] = 1;
    Attr = mlir::Operation::getAttr(a2, "fastmath", 8uLL);
    if (!Attr || *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
    {
      mlir::arith::FastMathFlagsAttr::get(*(a1 + 8), 0);
    }

    return 1;
  }

  else
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      if (v4[2] == 1)
      {
      }
    }

    return 0;
  }
}

uint64_t anonymous namespace::static_dag_matcher_11(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::NegFOp,void>::id)
  {
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v6 = *(a2 + 72);
    }

    else
    {
      v6 = 0;
    }

    *a3 = v6;
    a3[1] = 1;
    Attr = mlir::Operation::getAttr(a2, "fastmath", 8uLL);
    if (!Attr || *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
    {
      mlir::arith::FastMathFlagsAttr::get(*(a1 + 8), 0);
    }

    return 1;
  }

  else
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      if (v4[2] == 1)
      {
      }
    }

    return 0;
  }
}

void llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::FastMathFlagsAttr &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(a1, a2, a3);
  }

  else
  {
    v4 = (*a1 + 16 * v3);
    *v4 = a2;
    v4[1] = a3;
    *(a1 + 8) = v3 + 1;
  }
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::MulFOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MulFOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.mulf";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::MulFOfNegF>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::MulFOfNegF]";
  v6 = 95;
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

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, const llvm::APFloat::Storage *a2, const llvm::detail::IEEEFloat *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  llvm::APFloat::Storage::Storage(&v7, a2);
  llvm::APFloat::divide(&v7, a3, 1);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v5 = v8;
    *a1 = &llvm::semPPCDoubleDouble;
    *(a1 + 8) = v5;
    v7 = &llvm::semBogus;
    v8 = 0;
  }

  else
  {
    *a1 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(a1, &v7);
  }

  *(a1 + 24) = 1;
  llvm::APFloat::Storage::~Storage(&v7);
  v6 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::DivFOfNegF::~DivFOfNegF(_anonymous_namespace_::DivFOfNegF *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::DivFOfNegF::matchAndRewrite(_anonymous_namespace_::DivFOfNegF *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v89 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
    v6 = *(a2 + 17);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v58[0] = v5;
  v58[1] = v6;
  v57[0] = v5;
  v57[1] = v6;
  v70[0] = v71;
  v70[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v70, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::DivFOp,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(v7 + 9) + 24);
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    v11 = v10 + 120;
    if (v10 == -120)
    {
LABEL_11:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_64;
      }

      v13 = *(v7 + 3);
      goto LABEL_63;
    }
  }

  else
  {
    v11 = v8 + 16 * v9 + 16;
  }

  {
    goto LABEL_64;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v70, v11);
  v15 = *(*(v7 + 9) + 56);
  if ((~*(v15 + 8) & 7) == 0)
  {
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = *(v15 + 8) & 7;
  if (v16 == 6)
  {
    v17 = v15 + 24 * *(v15 + 16);
    v18 = v17 + 120;
    if (v17 == -120)
    {
LABEL_21:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_64;
      }

      v13 = *(v7 + 3);
      goto LABEL_63;
    }
  }

  else
  {
    v18 = v15 + 16 * v16 + 16;
  }

  {
LABEL_64:
    v51 = 0;
    goto LABEL_65;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v70, v18);
  Attr = mlir::Operation::getAttr(a2, "fastmath", 8uLL);
  if (!Attr || (v20 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id))
  {
    v20 = mlir::arith::FastMathFlagsAttr::get(*(a3 + 1), 0);
  }

  v21 = v57[0];
  v22 = v58[0];
  if ((*(*(v58[0] + 24) + 8) ^ *(*(v57[0] + 24) + 8)) >= 8)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_64;
    }

    v13 = *(a2 + 3);
LABEL_63:
    (*(*v12 + 88))(v12, v13, v14, &v72);
    goto LABEL_64;
  }

  v23 = *(a3 + 1);
  v24 = *(*(v70[0] + 1) + 24);
  v72 = *(*v70[0] + 24);
  v73 = v24;
  v74[0] = *(*(v70[0] + 2) + 24);
  v25 = mlir::FusedLoc::get(&v72, 3, 0, v23);
  v67 = v69;
  v68 = 0x400000000;
  v64 = v66;
  v65 = 0x400000000;
  v61 = v63;
  v62 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v64, *(v21 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v64, *(v22 + 24));
  if (v20)
  {
    v72 = "fastmath";
    v75 = 259;
    v27 = mlir::StringAttr::get(*(a3 + 1), &v72, v26);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::FastMathFlagsAttr &>(&v61, v27, v20);
  }

  v28 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::DivFOp,void>::id, *(**v25 + 32));
  if ((v29 & 1) == 0)
  {
    v88 = 1283;
    v87[0] = "arith.divf";
    v87[1] = 10;
    v60 = 259;
    llvm::operator+(&v85, &v59, &v72);
    llvm::report_fatal_error(&v72, 1);
  }

  v72 = v25;
  v73 = v28;
  v74[0] = &v75;
  v74[1] = 0x400000000;
  v76[0] = &v77;
  v76[1] = 0x400000000;
  v78[0] = &v79;
  v78[1] = 0x400000000;
  v80 = 4;
  v81 = v83;
  v82 = 0x100000000;
  v83[1] = v84;
  v83[2] = 0x100000000;
  v84[2] = 0;
  v84[1] = 0;
  v84[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v84[4] = 0;
  v84[6] = 0;
  v30 = v64;
  v31 = v65;
  v32 = v61;
  v33 = v62;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v74, v64 & 0xFFFFFFFFFFFFFFF9, 0, v64 & 0xFFFFFFFFFFFFFFF9, v65);
  v80 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v78, v32, &v32[16 * v33]);
  if (v33)
  {
    v34 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties>(&v72);
    v35 = v73;
    v36 = *(v73 + 16) == &mlir::detail::TypeIDResolver<void,void>::id ? 0 : v73;
    Dictionary = mlir::NamedAttrList::getDictionary(v78, *(**v72 + 32));
    if (((*(*v36 + 144))(v36, v35, v34, Dictionary, 0) & 1) == 0)
    {
      v54 = "Property conversion failed.";
LABEL_72:
      llvm::report_fatal_error(v54, 1);
    }
  }

  v85 = v87;
  v86 = 0x200000000;
  v38 = mlir::NamedAttrList::getDictionary(v78, *(**v72 + 32));
  if (!mlir::arith::DivFOp::inferReturnTypes(v38, v39, v40, v30 & 0xFFFFFFFFFFFFFFF9, v31, v41, v42, v43, v55, v56, &v85))
  {
    v54 = "Failed to infer result type(s).";
    goto LABEL_72;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v76, v85, &v85[8 * v86]);
  if (v85 != v87)
  {
    free(v85);
  }

  v44 = mlir::Operation::create(&v72);
  mlir::OpBuilder::insert((a3 + 8), v44);
  v45 = *(*(v44 + 6) + 16);
  mlir::OperationState::~OperationState(&v72);
  if (v45 == &mlir::detail::TypeIDResolver<mlir::arith::DivFOp,void>::id)
  {
    v46 = v44;
  }

  else
  {
    v46 = 0;
  }

  if (v61 != v63)
  {
    free(v61);
  }

  if (v64 != v66)
  {
    free(v64);
  }

  if (*(v46 + 9))
  {
    v47 = (v46 - 16);
  }

  else
  {
    v47 = 0;
  }

  v72 = v74;
  v73 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v72, v47, 0, v47, 1);
  v48 = v72;
  if (v73)
  {
    v49 = 8 * v73;
    do
    {
      v50 = *v48++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v67, v50);
      v49 -= 8;
    }

    while (v49);
    v48 = v72;
  }

  if (v48 != v74)
  {
    free(v48);
  }

  (**a3)(a3, a2, v67 & 0xFFFFFFFFFFFFFFF9, v68);
  if (v67 != v69)
  {
    free(v67);
  }

  v51 = 1;
LABEL_65:
  if (v70[0] != v71)
  {
    free(v70[0]);
  }

  v52 = *MEMORY[0x277D85DE8];
  return v51;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::DivFOfNegF>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::DivFOfNegF]";
  v6 = 95;
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

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, const llvm::APFloat::Storage *a2, llvm::detail::IEEEFloat **a3)
{
  v9 = *MEMORY[0x277D85DE8];
  llvm::APFloat::Storage::Storage(&v7, a2);
  llvm::APFloat::mod(&v7, a3);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v5 = v8;
    *a1 = &llvm::semPPCDoubleDouble;
    *(a1 + 8) = v5;
    v7 = &llvm::semBogus;
    v8 = 0;
  }

  else
  {
    *a1 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(a1, &v7);
  }

  *(a1 + 24) = 1;
  llvm::APFloat::Storage::~Storage(&v7);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t *getTypeIfLike<mlir::IntegerType>(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    v4 = *(*v1 + 136);
    v5 = v4 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
    if (!v5 && v4 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return 0;
    }
  }

  v7 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v1);
  if (v7)
  {
    v1 = (*(v8 + 8))(v8, v7);
  }

  if (*(*v1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void anonymous namespace::ExtSIOfExtUI::~ExtSIOfExtUI(_anonymous_namespace_::ExtSIOfExtUI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ExtSIOfExtUI::matchAndRewrite(_anonymous_namespace_::ExtSIOfExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v35[4] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v23 = v5;
  v34[0] = v35;
  v34[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v34, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(v6 + 9) + 24);
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = v9 + 120;
    if (v9 == -120)
    {
LABEL_11:
      v11 = *(a3 + 2);
      if (v11 && v11[2] == 1)
      {
      }

      goto LABEL_37;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  {
LABEL_37:
    v20 = 0;
    goto LABEL_38;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v34, v10);
  v12 = *(*(v34[0] + 1) + 24);
  v26 = *(*v34[0] + 24);
  v27 = v12;
  v13 = mlir::FusedLoc::get(&v26, 2, 0, *(a3 + 1));
  v31 = v33;
  v32 = 0x400000000;
  v29[0] = v30;
  v29[1] = 0x400000000;
  v26 = v28;
  v27 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v29, *(v23 + 24));
  v24[0] = v25;
  v24[1] = 0x400000000;
  if (*(v6 + 9))
  {
    v14 = v6 - 16;
  }

  else
  {
    v14 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v24, *(v14 + 1) & 0xFFFFFFFFFFFFFFF8);
  v15 = mlir::OpBuilder::create<mlir::arith::ExtUIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v13, v24, v29, &v26);
  if (v24[0] != v25)
  {
    free(v24[0]);
  }

  if (v26 != v28)
  {
    free(v26);
  }

  if (v29[0] != v30)
  {
    free(v29[0]);
  }

  if (*(v15 + 9))
  {
    v16 = (v15 - 16);
  }

  else
  {
    v16 = 0;
  }

  v26 = v28;
  v27 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v26, v16, 0, v16, 1);
  v17 = v26;
  if (v27)
  {
    v18 = 8 * v27;
    do
    {
      v19 = *v17++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v31, v19);
      v18 -= 8;
    }

    while (v18);
    v17 = v26;
  }

  if (v17 != v28)
  {
    free(v17);
  }

  (**a3)(a3, a2, v31 & 0xFFFFFFFFFFFFFFF9, v32);
  if (v31 != v33)
  {
    free(v31);
  }

  v20 = 1;
LABEL_38:
  if (v34[0] != v35)
  {
    free(v34[0]);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ExtSIOfExtUI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ExtSIOfExtUI]";
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

uint64_t convertFloatValue(uint64_t a1, void **a2, void *a3, int a4)
{
  v9 = 0;
  result = llvm::APFloat::convert(a2, a3, a4, &v9);
  if ((v9 & 1) != 0 || result)
  {
    v7 = 0;
    *a1 = 0;
  }

  else
  {
    if (*a2 == &llvm::semPPCDoubleDouble)
    {
      v8 = a2[1];
      *a1 = &llvm::semPPCDoubleDouble;
      *(a1 + 8) = v8;
      *a2 = &llvm::semBogus;
      a2[1] = 0;
    }

    else
    {
      *a1 = &llvm::semBogus;
      result = llvm::detail::IEEEFloat::operator=(a1, a2);
    }

    v7 = 1;
  }

  *(a1 + 24) = v7;
  return result;
}

uint64_t *getTypeIfLike<mlir::FloatType>(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    v4 = *(*v1 + 136);
    v5 = v4 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
    if (!v5 && v4 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return 0;
    }
  }

  v7 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v1);
  if (v7)
  {
    v1 = (*(v8 + 8))(v8, v7);
  }

  v9 = *v1;
  v10 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v9 + 8, v10))
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void anonymous namespace::TruncIExtSIToExtSI::~TruncIExtSIToExtSI(_anonymous_namespace_::TruncIExtSIToExtSI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::TruncIExtSIToExtSI::matchAndRewrite(_anonymous_namespace_::TruncIExtSIToExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v42[4] = *MEMORY[0x277D85DE8];
  v41[0] = v42;
  v41[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v41, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v6 + 24 * *(v6 + 16);
    v9 = v8 + 120;
    if (v8 == -120)
    {
LABEL_9:
      v10 = *(a3 + 2);
      if (!v10 || v10[2] != 1)
      {
        goto LABEL_63;
      }

      v11 = *(v5 + 3);
LABEL_62:
      (*(*v10 + 88))(v10, v11, v12, &v33);
LABEL_63:
      v28 = 0;
      goto LABEL_64;
    }
  }

  else
  {
    v9 = v6 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_63;
    }

    v11 = *(v9 + 24);
    goto LABEL_62;
  }

  if ((*(v9 + 46) & 0x80) != 0)
  {
    v13 = *(v9 + 72);
  }

  else
  {
    v13 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v41, v9);
  if (*(v9 + 36))
  {
    v14 = v9 - 16;
  }

  else
  {
    v14 = 0;
  }

  ScalarOrElementWidth = getScalarOrElementWidth(v14);
  if (*(v5 + 9))
  {
    v16 = v5 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (ScalarOrElementWidth <= getScalarOrElementWidth(v16) || (*(v5 + 9) ? (v17 = v5 - 16) : (v17 = 0), getScalarOrElementWidth(v17) <= 0))
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_63;
    }

    v11 = *(a2 + 3);
    goto LABEL_62;
  }

  if (*(v5 + 9))
  {
    v18 = v5 - 16;
  }

  else
  {
    v18 = 0;
  }

  v19 = getScalarOrElementWidth(v18);
  if (v19 <= getScalarOrElementWidth(*(v13 + 24)) || getScalarOrElementWidth(*(v13 + 24)) <= 0)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_63;
    }

    v11 = *(a2 + 3);
    goto LABEL_62;
  }

  v20 = *(*(v41[0] + 1) + 24);
  v33 = *(*v41[0] + 24);
  v34 = v20;
  v21 = mlir::FusedLoc::get(&v33, 2, 0, *(a3 + 1));
  v38 = v40;
  v39 = 0x400000000;
  v36[0] = v37;
  v36[1] = 0x400000000;
  v33 = v35;
  v34 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v36, *(v13 + 24));
  v31[0] = v32;
  v31[1] = 0x400000000;
  if (*(v5 + 9))
  {
    v22 = v5 - 16;
  }

  else
  {
    v22 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v31, *(v22 + 1) & 0xFFFFFFFFFFFFFFF8);
  v23 = mlir::OpBuilder::create<mlir::arith::ExtSIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v21, v31, v36, &v33);
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  if (v36[0] != v37)
  {
    free(v36[0]);
  }

  if (*(v23 + 9))
  {
    v24 = (v23 - 16);
  }

  else
  {
    v24 = 0;
  }

  v33 = v35;
  v34 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v33, v24, 0, v24, 1);
  v25 = v33;
  if (v34)
  {
    v26 = 8 * v34;
    do
    {
      v27 = *v25++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v38, v27);
      v26 -= 8;
    }

    while (v26);
    v25 = v33;
  }

  if (v25 != v35)
  {
    free(v25);
  }

  (**a3)(a3, a2, v38 & 0xFFFFFFFFFFFFFFF9, v39);
  if (v38 != v40)
  {
    free(v38);
  }

  v28 = 1;
LABEL_64:
  if (v41[0] != v42)
  {
    free(v41[0]);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

uint64_t getScalarOrElementWidth(uint64_t a1)
{
  v1 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  v2 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v1);
  v4 = v2;
  if (v2)
  {
    v2 = (*(v3 + 8))(v3, v2);
  }

  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = v1;
  }

  v7 = v5;
  if (mlir::Type::isIntOrFloat(&v7))
  {
    return mlir::Type::getIntOrFloatBitWidth(&v7);
  }

  else
  {
    return -1;
  }
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::TruncIExtSIToExtSI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::TruncIExtSIToExtSI]";
  v6 = 103;
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

void anonymous namespace::TruncIExtUIToExtUI::~TruncIExtUIToExtUI(_anonymous_namespace_::TruncIExtUIToExtUI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::TruncIExtUIToExtUI::matchAndRewrite(_anonymous_namespace_::TruncIExtUIToExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v42[4] = *MEMORY[0x277D85DE8];
  v41[0] = v42;
  v41[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v41, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v6 + 24 * *(v6 + 16);
    v9 = v8 + 120;
    if (v8 == -120)
    {
LABEL_9:
      v10 = *(a3 + 2);
      if (!v10 || v10[2] != 1)
      {
        goto LABEL_63;
      }

      v11 = *(v5 + 3);
LABEL_62:
      (*(*v10 + 88))(v10, v11, v12, &v33);
LABEL_63:
      v28 = 0;
      goto LABEL_64;
    }
  }

  else
  {
    v9 = v6 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_63;
    }

    v11 = *(v9 + 24);
    goto LABEL_62;
  }

  if ((*(v9 + 46) & 0x80) != 0)
  {
    v13 = *(v9 + 72);
  }

  else
  {
    v13 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v41, v9);
  if (*(v9 + 36))
  {
    v14 = v9 - 16;
  }

  else
  {
    v14 = 0;
  }

  ScalarOrElementWidth = getScalarOrElementWidth(v14);
  if (*(v5 + 9))
  {
    v16 = v5 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (ScalarOrElementWidth <= getScalarOrElementWidth(v16) || (*(v5 + 9) ? (v17 = v5 - 16) : (v17 = 0), getScalarOrElementWidth(v17) <= 0))
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_63;
    }

    v11 = *(a2 + 3);
    goto LABEL_62;
  }

  if (*(v5 + 9))
  {
    v18 = v5 - 16;
  }

  else
  {
    v18 = 0;
  }

  v19 = getScalarOrElementWidth(v18);
  if (v19 <= getScalarOrElementWidth(*(v13 + 24)) || getScalarOrElementWidth(*(v13 + 24)) <= 0)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_63;
    }

    v11 = *(a2 + 3);
    goto LABEL_62;
  }

  v20 = *(*(v41[0] + 1) + 24);
  v33 = *(*v41[0] + 24);
  v34 = v20;
  v21 = mlir::FusedLoc::get(&v33, 2, 0, *(a3 + 1));
  v38 = v40;
  v39 = 0x400000000;
  v36[0] = v37;
  v36[1] = 0x400000000;
  v33 = v35;
  v34 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v36, *(v13 + 24));
  v31[0] = v32;
  v31[1] = 0x400000000;
  if (*(v5 + 9))
  {
    v22 = v5 - 16;
  }

  else
  {
    v22 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v31, *(v22 + 1) & 0xFFFFFFFFFFFFFFF8);
  v23 = mlir::OpBuilder::create<mlir::arith::ExtUIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v21, v31, v36, &v33);
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  if (v36[0] != v37)
  {
    free(v36[0]);
  }

  if (*(v23 + 9))
  {
    v24 = (v23 - 16);
  }

  else
  {
    v24 = 0;
  }

  v33 = v35;
  v34 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v33, v24, 0, v24, 1);
  v25 = v33;
  if (v34)
  {
    v26 = 8 * v34;
    do
    {
      v27 = *v25++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v38, v27);
      v26 -= 8;
    }

    while (v26);
    v25 = v33;
  }

  if (v25 != v35)
  {
    free(v25);
  }

  (**a3)(a3, a2, v38 & 0xFFFFFFFFFFFFFFF9, v39);
  if (v38 != v40)
  {
    free(v38);
  }

  v28 = 1;
LABEL_64:
  if (v41[0] != v42)
  {
    free(v41[0]);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::TruncIExtUIToExtUI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::TruncIExtUIToExtUI]";
  v6 = 103;
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

void anonymous namespace::TruncIShrSIToTrunciShrUI::~TruncIShrSIToTrunciShrUI(_anonymous_namespace_::TruncIShrSIToTrunciShrUI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::TruncIShrSIToTrunciShrUI::matchAndRewrite(_anonymous_namespace_::TruncIShrSIToTrunciShrUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v67[4] = *MEMORY[0x277D85DE8];
  v66[0] = v67;
  v66[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v66, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v6 + 24 * *(v6 + 16);
    v9 = (v8 + 120);
    if (v8 == -120)
    {
LABEL_9:
      v10 = *(a3 + 2);
      if (!v10 || v10[2] != 1)
      {
        goto LABEL_46;
      }

      v11 = *(v5 + 3);
      goto LABEL_44;
    }
  }

  else
  {
    v9 = (v6 + 16 * v7 + 16);
  }

  if (*(v9[6] + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ShRSIOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_46;
    }

    v12 = v9[3];
    goto LABEL_44;
  }

  v13 = v9[9];
  v14 = *(v13 + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = (v16 + 120);
    if (v16 == -120)
    {
LABEL_22:
      v10 = *(a3 + 2);
      if (!v10 || v10[2] != 1)
      {
        goto LABEL_46;
      }

      v18 = v9[3];
      goto LABEL_44;
    }
  }

  else
  {
    v17 = (v14 + 16 * v15 + 16);
  }

  v60 = 0;
  v57 = &v60;
  if ((*(v17 - 1) & 7) == 7)
  {
    goto LABEL_41;
  }

  v19 = *(v17 - 1) & 7;
  if (v19 == 6)
  {
    v20 = &v17[3 * *v17 - 2];
    v21 = v20 + 120;
    if (v20 == -120)
    {
LABEL_41:
      v10 = *(a3 + 2);
      if (!v10 || v10[2] != 1)
      {
        goto LABEL_46;
      }

      v31 = v17[3];
      goto LABEL_44;
    }
  }

  else
  {
    v21 = &v17[2 * v19];
  }

  if (!mlir::detail::constant_op_binder<mlir::Attribute>::match(&v57, v21))
  {
    goto LABEL_41;
  }

  v22 = v60;
  v57 = "operand 0 of native code call '::mlir::success(::mlir::matchPattern($_self->getResult(0), ::mlir::m_Constant(&$0)))' failed to satisfy constraint: 'TypedAttr instance'";
  v58 = 167;
  v23 = *v60;
  v24 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v23 + 8, v24))
  {
    v63 = &v57;
    v36 = *(a3 + 2);
    if (!v36 || v36[2] != 1)
    {
      goto LABEL_46;
    }

    v37 = v17[3];
    v32 = *(*v36 + 88);
    goto LABEL_45;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v66, v17);
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v66, v9);
  getIntOrSplatIntValue(&v57, v22);
  if ((v59[0] & 1) == 0)
  {
    goto LABEL_92;
  }

  ScalarOrElementWidth = getScalarOrElementWidth(*(v13 + 24));
  if (*(v5 + 9))
  {
    v26 = v5 - 16;
  }

  else
  {
    v26 = 0;
  }

  v27 = getScalarOrElementWidth(v26);
  v28 = &v63;
  getIntOrSplatIntValue(&v63, v22);
  v29 = v64;
  if (v64 >= 0x41)
  {
    if (v29 - llvm::APInt::countLeadingZerosSlowCase(&v63) > 0x40)
    {
      v30 = 1;
      goto LABEL_54;
    }

    v28 = v63;
  }

  v30 = *v28 != ScalarOrElementWidth - v27;
LABEL_54:
  if (v29 >= 0x41 && (v65[0] & 1) != 0 && v63)
  {
    MEMORY[0x25F891010](v63, 0x1000C8000313F17);
  }

  if (v58 < 0x41 || !v57)
  {
    if (!v30)
    {
      goto LABEL_61;
    }

LABEL_92:
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_46;
    }

    v53 = *(a2 + 3);
LABEL_44:
    v32 = *(*v10 + 88);
LABEL_45:
    v32();
LABEL_46:
    v33 = 0;
    goto LABEL_47;
  }

  MEMORY[0x25F891010](v57, 0x1000C8000313F17);
  if (v30)
  {
    goto LABEL_92;
  }

LABEL_61:
  v38 = *(a3 + 1);
  v39 = *(*(v66[0] + 1) + 24);
  v57 = *(*v66[0] + 24);
  v58 = v39;
  v40 = mlir::FusedLoc::get(&v57, 2, 0, v38);
  v63 = v65;
  v64 = 0x400000000;
  v41 = *v22;
  v42 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  v54[0] = v22;
  v54[1] = mlir::detail::InterfaceMap::lookup(v41 + 8, v42);
  v43 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr &>((a3 + 8), v40, v54);
  v60 = v62;
  v61 = 0x400000000;
  v57 = v59;
  v58 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v60, *(v13 + 24));
  if (*(v43 + 9))
  {
    v44 = (v43 - 16);
  }

  else
  {
    v44 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v60, v44);
  v45 = mlir::OpBuilder::create<mlir::arith::ShRUIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v40, &v60, &v57);
  if (v57 != v59)
  {
    free(v57);
  }

  if (v60 != v62)
  {
    free(v60);
  }

  v60 = v62;
  v61 = 0x400000000;
  v57 = v59;
  v58 = 0x400000000;
  if (*(v45 + 9))
  {
    v46 = (v45 - 16);
  }

  else
  {
    v46 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v60, v46);
  v55[0] = v56;
  v55[1] = 0x400000000;
  v47 = v5 - 16;
  if (!*(v5 + 9))
  {
    v47 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v55, *(v47 + 1) & 0xFFFFFFFFFFFFFFF8);
  v48 = mlir::OpBuilder::create<mlir::arith::TruncIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v40, v55, &v60, &v57);
  if (v55[0] != v56)
  {
    free(v55[0]);
  }

  if (v57 != v59)
  {
    free(v57);
  }

  if (v60 != v62)
  {
    free(v60);
  }

  if (*(v48 + 9))
  {
    v49 = (v48 - 16);
  }

  else
  {
    v49 = 0;
  }

  v57 = v59;
  v58 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v57, v49, 0, v49, 1);
  v50 = v57;
  if (v58)
  {
    v51 = 8 * v58;
    do
    {
      v52 = *v50++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v63, v52);
      v51 -= 8;
    }

    while (v51);
    v50 = v57;
  }

  if (v50 != v59)
  {
    free(v50);
  }

  (**a3)(a3, a2, v63 & 0xFFFFFFFFFFFFFFF9, v64);
  if (v63 != v65)
  {
    free(v63);
  }

  v33 = 1;
LABEL_47:
  if (v66[0] != v67)
  {
    free(v66[0]);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

char *mlir::OpBuilder::create<mlir::arith::ShRUIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ShRUIOp,void>::id, *(**a2 + 32));
  if ((v9 & 1) == 0)
  {
    v43 = 1283;
    v42[0] = "arith.shrui";
    v42[1] = 11;
    v27 = 259;
    llvm::operator+(&v40, &v26, v28);
    llvm::report_fatal_error(v28, 1);
  }

  v28[0] = a2;
  v28[1] = v8;
  v29[0] = &v30;
  v29[1] = 0x400000000;
  v31[0] = &v32;
  v31[1] = 0x400000000;
  v33[0] = &v34;
  v33[1] = 0x400000000;
  v35 = 4;
  v36 = v38;
  v37 = 0x100000000;
  v38[1] = v39;
  v38[2] = 0x100000000;
  v39[1] = 0;
  v39[2] = 0;
  v39[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v39[4] = 0;
  v39[6] = 0;
  v10 = *a3;
  v11 = *(a3 + 2);
  v12 = *a4;
  v13 = *(a4 + 8);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v29, v10 & 0xFFFFFFFFFFFFFFF9, 0, v10 & 0xFFFFFFFFFFFFFFF9, v11);
  v35 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v33, v12, &v12[16 * v13]);
  v40 = v42;
  v41 = 0x200000000;
  Dictionary = mlir::NamedAttrList::getDictionary(v33, *(**v28[0] + 32));
  if (!mlir::arith::ShRUIOp::inferReturnTypes(Dictionary, v15, v16, v10 & 0xFFFFFFFFFFFFFFF9, v11, v17, v18, v19, v24, v25, &v40))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v31, v40, &v40[8 * v41]);
  if (v40 != v42)
  {
    free(v40);
  }

  v20 = mlir::Operation::create(v28);
  mlir::OpBuilder::insert(a1, v20);
  if (*(*(v20 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ShRUIOp,void>::id)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

char *mlir::OpBuilder::create<mlir::arith::TruncIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v33[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::TruncIOp>(a1, *(**a2 + 32));
  v22[0] = a2;
  v22[1] = v10;
  v23[0] = &v24;
  v23[1] = 0x400000000;
  v25[0] = &v26;
  v25[1] = 0x400000000;
  v27[0] = &v28;
  v27[1] = 0x400000000;
  v29 = 4;
  v30 = v32;
  v31 = 0x100000000;
  v32[1] = v33;
  v32[2] = 0x100000000;
  v33[1] = 0;
  v33[2] = 0;
  v33[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v33[4] = 0;
  v33[6] = 0;
  v11 = *a3;
  v12 = *(a3 + 2);
  v13 = v11 & 0xFFFFFFFFFFFFFFF9;
  v14 = *a4;
  v15 = *(a4 + 2);
  v16 = *a5;
  v17 = *(a5 + 8);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v23, v14 & 0xFFFFFFFFFFFFFFF9, 0, v14 & 0xFFFFFFFFFFFFFFF9, v15);
  v29 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v27, v16, &v16[16 * v17]);
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(v25, v13 | 2, 0, v13 | 2, v12);
  v18 = mlir::Operation::create(v22);
  mlir::OpBuilder::insert(a1, v18);
  if (*(*(v18 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
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

uint64_t llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::__mlir_ods_local_attr_constraint_ArithCanonicalization5(mlir::PatternRewriter &,mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v8 = 261;
  v4 = *v2;
  v3 = v2[1];
  v7[0] = v4;
  v7[1] = v3;
  v5 = mlir::Diagnostic::operator<<(a2, v7);
  return mlir::Diagnostic::operator<<<21ul>(v5, ": TypedAttr instance");
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::TruncIOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.trunci";
    v6[3] = 12;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::TruncIShrSIToTrunciShrUI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::TruncIShrSIToTrunciShrUI]";
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

void anonymous namespace::TruncIShrUIMulIToMulSIExtended::~TruncIShrUIMulIToMulSIExtended(_anonymous_namespace_::TruncIShrUIMulIToMulSIExtended *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(_anonymous_namespace_::TruncIShrUIMulIToMulSIExtended *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v72[4] = *MEMORY[0x277D85DE8];
  v64 = 0;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
    v6 = *(a2 + 17);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v63[0] = v5;
  v63[1] = v6;
  v62[0] = v5;
  v62[1] = v6;
  v71[0] = v72;
  v71[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v71, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(v7 + 9) + 24);
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    v11 = (v10 + 120);
    if (v10 == -120)
    {
LABEL_11:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_111;
      }

      v13 = *(v7 + 3);
      goto LABEL_110;
    }
  }

  else
  {
    v11 = (v8 + 16 * v9 + 16);
  }

  if (*(v11[6] + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ShRUIOp,void>::id)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_111;
    }

    v13 = v11[3];
    goto LABEL_110;
  }

  v15 = *(v11[9] + 24);
  if ((~*(v15 + 8) & 7) == 0)
  {
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_24;
  }

  v16 = *(v15 + 8) & 7;
  if (v16 == 6)
  {
    v17 = v15 + 24 * *(v15 + 16);
    v18 = (v17 + 120);
    if (v17 == -120)
    {
LABEL_24:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_111;
      }

      v13 = v11[3];
      goto LABEL_110;
    }
  }

  else
  {
    v18 = (v15 + 16 * v16 + 16);
  }

  v19 = *(v18[6] + 16);
  if (v19 == &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  if (v19 != &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_111;
    }

    v13 = v18[3];
    goto LABEL_110;
  }

  v21 = *(v18[9] + 24);
  if ((~*(v21 + 8) & 7) == 0)
  {
    v21 = 0;
  }

  if (!v21)
  {
    goto LABEL_40;
  }

  v22 = *(v21 + 8) & 7;
  if (v22 == 6)
  {
    v23 = v21 + 24 * *(v21 + 16);
    v24 = v23 + 120;
    if (v23 == -120)
    {
LABEL_40:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_111;
      }

      v13 = v18[3];
      goto LABEL_110;
    }
  }

  else
  {
    v24 = v21 + 16 * v22 + 16;
  }

  {
    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v71, v24);
    v25 = *(v18[9] + 56);
    if ((~*(v25 + 8) & 7) == 0)
    {
      v25 = 0;
    }

    if (!v25)
    {
      goto LABEL_50;
    }

    v26 = *(v25 + 8) & 7;
    if (v26 == 6)
    {
      v27 = v25 + 24 * *(v25 + 16);
      v28 = v27 + 120;
      if (v27 == -120)
      {
LABEL_50:
        v12 = *(a3 + 2);
        if (!v12 || v12[2] != 1)
        {
          goto LABEL_111;
        }

        v13 = v18[3];
        goto LABEL_110;
      }
    }

    else
    {
      v28 = v25 + 16 * v26 + 16;
    }

    {
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v71, v28);
      Attr = mlir::Operation::getAttr(v18, "overflowFlags", 0xDuLL);
      if (!Attr || *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
      {
        mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
      }

      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v71, v18);
      v30 = *(v11[9] + 56);
      if ((~*(v30 + 8) & 7) == 0)
      {
        v30 = 0;
      }

      if (!v30)
      {
        goto LABEL_63;
      }

      v31 = *(v30 + 8) & 7;
      if (v31 == 6)
      {
        v32 = v30 + 24 * *(v30 + 16);
        v33 = (v32 + 120);
        if (v32 == -120)
        {
LABEL_63:
          v12 = *(a3 + 2);
          if (!v12 || v12[2] != 1)
          {
            goto LABEL_111;
          }

          v13 = v11[3];
LABEL_110:
          (*(*v12 + 88))(v12, v13, v14, &v68);
          goto LABEL_111;
        }
      }

      else
      {
        v33 = (v30 + 16 * v31 + 16);
      }

      {
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v71, v33);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v71, v11);
        v34 = 0;
        if (*(v7 + 9))
        {
          v35 = v7 - 16;
        }

        else
        {
          v35 = 0;
        }

        v36 = v63[0];
        v37 = *(*(v63[0] + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
        v68 = (*(v35 + 1) & 0xFFFFFFFFFFFFFFF8);
        v69 = v37;
        v38 = v62[0];
        v70[0] = *(*(v62[0] + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
        do
        {
          if (*(&v68 + v34 + 8) != *(&v68 + v34))
          {
            v12 = *(a3 + 2);
            if (v12 && v12[2] == 1)
            {
              v13 = *(a2 + 3);
              goto LABEL_110;
            }

            goto LABEL_111;
          }

          v34 += 8;
        }

        while (v34 != 16);
        if (*(v20 + 9))
        {
          v39 = (v20 - 2);
        }

        else
        {
          v39 = 0;
        }

        ScalarOrElementWidth = getScalarOrElementWidth(v39);
        if (ScalarOrElementWidth <= getScalarOrElementWidth(*(v36 + 24)) || getScalarOrElementWidth(*(v36 + 24)) <= 0)
        {
          v12 = *(a3 + 2);
          if (v12 && v12[2] == 1)
          {
            v13 = *(a2 + 3);
            goto LABEL_110;
          }
        }

        else
        {
          v60 = v38;
          v41 = v64;
          getIntOrSplatIntValue(&v68, v64);
          if (v70[0])
          {
            if (*(v20 + 9))
            {
              v42 = (v20 - 2);
            }

            else
            {
              v42 = 0;
            }

            v43 = getScalarOrElementWidth(v42);
            v44 = getScalarOrElementWidth(*(v36 + 24));
            v45 = &v65;
            getIntOrSplatIntValue(&v65, v41);
            v46 = v66;
            if (v66 < 0x41)
            {
LABEL_86:
              v47 = *v45 != v43 - v44;
            }

            else
            {
              if (v46 - llvm::APInt::countLeadingZerosSlowCase(&v65) <= 0x40)
              {
                v45 = v65;
                goto LABEL_86;
              }

              v47 = 1;
            }

            if (v46 >= 0x41 && (v67[0] & 1) != 0 && v65)
            {
              MEMORY[0x25F891010](v65, 0x1000C8000313F17);
            }

            if (v69 >= 0x41 && v68)
            {
              MEMORY[0x25F891010](v68, 0x1000C8000313F17);
              if (!v47)
              {
                goto LABEL_102;
              }
            }

            else if (!v47)
            {
LABEL_102:
              v48 = *(*(v71[0] + 1) + 24);
              v68 = *(*v71[0] + 24);
              v69 = v48;
              v49 = *(*(v71[0] + 3) + 24);
              v70[0] = *(*(v71[0] + 2) + 24);
              v70[1] = v49;
              v70[2] = *(*(v71[0] + 4) + 24);
              v50 = mlir::FusedLoc::get(&v68, 5, 0, *(a3 + 1));
              v68 = v70;
              v69 = 0x400000000;
              v65 = *(v36 + 24);
              v61 = *(v60 + 24);
              v51 = mlir::OpBuilder::create<mlir::arith::MulSIExtendedOp,mlir::Value &,mlir::Value &>((a3 + 8), v50, &v65, &v61);
              if (!*(v51 + 9) || (v52 = *(v51 - 1) & 7, v52 == 6) || v52 == 5)
              {
                v53 = -40;
              }

              else
              {
                v53 = -32;
              }

              v65 = v67;
              v66 = 0x400000000;
              llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v65, &v51[v53], 0, &v51[v53], 1);
              v57 = v65;
              if (v66)
              {
                v58 = 8 * v66;
                do
                {
                  v59 = *v57++;
                  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v68, v59);
                  v58 -= 8;
                }

                while (v58);
                v57 = v65;
              }

              if (v57 != v67)
              {
                free(v57);
              }

              (**a3)(a3, a2, v68 & 0xFFFFFFFFFFFFFFF9, v69);
              if (v68 != v70)
              {
                free(v68);
              }

              v54 = 1;
              goto LABEL_112;
            }
          }

          v12 = *(a3 + 2);
          if (v12 && v12[2] == 1)
          {
            v13 = *(a2 + 3);
            goto LABEL_110;
          }
        }
      }
    }
  }

LABEL_111:
  v54 = 0;
LABEL_112:
  if (v71[0] != v72)
  {
    free(v71[0]);
  }

  v55 = *MEMORY[0x277D85DE8];
  return v54;
}

char *mlir::OpBuilder::create<mlir::arith::MulSIExtendedOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MulSIExtendedOp,void>::id, *(**a2 + 32));
  if ((v9 & 1) == 0)
  {
    v42 = 1283;
    v41[0] = "arith.mulsi_extended";
    v41[1] = 20;
    v27 = 259;
    llvm::operator+(&v39, v26, v29);
    llvm::report_fatal_error(v29, 1);
  }

  v29[0] = a2;
  v29[1] = v8;
  v30 = &v32;
  v31 = 0x400000000;
  v33[0] = &v34;
  v33[1] = 0x400000000;
  v35[0] = v36;
  v35[1] = 0x400000000;
  v36[8] = 4;
  v36[9] = v37;
  v36[10] = 0x100000000;
  v37[1] = v38;
  v37[2] = 0x100000000;
  v38[1] = 0;
  v38[2] = 0;
  v38[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v38[4] = 0;
  v38[6] = 0;
  v10 = *a4;
  v26[0] = *a3;
  v28 = v10;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v30, v26, 0, v26, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v30, &v28, 0, &v28, 1);
  v39 = v41;
  v40 = 0x200000000;
  v11 = v31;
  v12 = v30;
  Dictionary = mlir::NamedAttrList::getDictionary(v35, *(**v29[0] + 32));
  if (!mlir::arith::MulSIExtendedOp::inferReturnTypes(Dictionary, v14, v15, v12 & 0xFFFFFFFFFFFFFFF9, v11, v16, v17, v18, v24, v25, &v39))
  {
    mlir::detail::reportFatalInferReturnTypesError(v29, v19);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v33, v39, &v39[8 * v40]);
  if (v39 != v41)
  {
    free(v39);
  }

  v20 = mlir::Operation::create(v29);
  mlir::OpBuilder::insert(a1, v20);
  if (*(*(v20 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulSIExtendedOp,void>::id)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  mlir::OperationState::~OperationState(v29);
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::TruncIShrUIMulIToMulSIExtended>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::TruncIShrUIMulIToMulSIExtended]";
  v6 = 115;
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

void anonymous namespace::TruncIShrUIMulIToMulUIExtended::~TruncIShrUIMulIToMulUIExtended(_anonymous_namespace_::TruncIShrUIMulIToMulUIExtended *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(_anonymous_namespace_::TruncIShrUIMulIToMulUIExtended *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v72[4] = *MEMORY[0x277D85DE8];
  v64 = 0;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
    v6 = *(a2 + 17);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v63[0] = v5;
  v63[1] = v6;
  v62[0] = v5;
  v62[1] = v6;
  v71[0] = v72;
  v71[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v71, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(v7 + 9) + 24);
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    v11 = (v10 + 120);
    if (v10 == -120)
    {
LABEL_11:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_111;
      }

      v13 = *(v7 + 3);
      goto LABEL_110;
    }
  }

  else
  {
    v11 = (v8 + 16 * v9 + 16);
  }

  if (*(v11[6] + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ShRUIOp,void>::id)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_111;
    }

    v13 = v11[3];
    goto LABEL_110;
  }

  v15 = *(v11[9] + 24);
  if ((~*(v15 + 8) & 7) == 0)
  {
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_24;
  }

  v16 = *(v15 + 8) & 7;
  if (v16 == 6)
  {
    v17 = v15 + 24 * *(v15 + 16);
    v18 = (v17 + 120);
    if (v17 == -120)
    {
LABEL_24:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_111;
      }

      v13 = v11[3];
      goto LABEL_110;
    }
  }

  else
  {
    v18 = (v15 + 16 * v16 + 16);
  }

  v19 = *(v18[6] + 16);
  if (v19 == &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  if (v19 != &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_111;
    }

    v13 = v18[3];
    goto LABEL_110;
  }

  v21 = *(v18[9] + 24);
  if ((~*(v21 + 8) & 7) == 0)
  {
    v21 = 0;
  }

  if (!v21)
  {
    goto LABEL_40;
  }

  v22 = *(v21 + 8) & 7;
  if (v22 == 6)
  {
    v23 = v21 + 24 * *(v21 + 16);
    v24 = v23 + 120;
    if (v23 == -120)
    {
LABEL_40:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_111;
      }

      v13 = v18[3];
      goto LABEL_110;
    }
  }

  else
  {
    v24 = v21 + 16 * v22 + 16;
  }

  {
    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v71, v24);
    v25 = *(v18[9] + 56);
    if ((~*(v25 + 8) & 7) == 0)
    {
      v25 = 0;
    }

    if (!v25)
    {
      goto LABEL_50;
    }

    v26 = *(v25 + 8) & 7;
    if (v26 == 6)
    {
      v27 = v25 + 24 * *(v25 + 16);
      v28 = v27 + 120;
      if (v27 == -120)
      {
LABEL_50:
        v12 = *(a3 + 2);
        if (!v12 || v12[2] != 1)
        {
          goto LABEL_111;
        }

        v13 = v18[3];
        goto LABEL_110;
      }
    }

    else
    {
      v28 = v25 + 16 * v26 + 16;
    }

    {
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v71, v28);
      Attr = mlir::Operation::getAttr(v18, "overflowFlags", 0xDuLL);
      if (!Attr || *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
      {
        mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
      }

      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v71, v18);
      v30 = *(v11[9] + 56);
      if ((~*(v30 + 8) & 7) == 0)
      {
        v30 = 0;
      }

      if (!v30)
      {
        goto LABEL_63;
      }

      v31 = *(v30 + 8) & 7;
      if (v31 == 6)
      {
        v32 = v30 + 24 * *(v30 + 16);
        v33 = (v32 + 120);
        if (v32 == -120)
        {
LABEL_63:
          v12 = *(a3 + 2);
          if (!v12 || v12[2] != 1)
          {
            goto LABEL_111;
          }

          v13 = v11[3];
LABEL_110:
          (*(*v12 + 88))(v12, v13, v14, &v68);
          goto LABEL_111;
        }
      }

      else
      {
        v33 = (v30 + 16 * v31 + 16);
      }

      {
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v71, v33);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v71, v11);
        v34 = 0;
        if (*(v7 + 9))
        {
          v35 = v7 - 16;
        }

        else
        {
          v35 = 0;
        }

        v36 = v63[0];
        v37 = *(*(v63[0] + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
        v68 = (*(v35 + 1) & 0xFFFFFFFFFFFFFFF8);
        v69 = v37;
        v38 = v62[0];
        v70[0] = *(*(v62[0] + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
        do
        {
          if (*(&v68 + v34 + 8) != *(&v68 + v34))
          {
            v12 = *(a3 + 2);
            if (v12 && v12[2] == 1)
            {
              v13 = *(a2 + 3);
              goto LABEL_110;
            }

            goto LABEL_111;
          }

          v34 += 8;
        }

        while (v34 != 16);
        if (*(v20 + 9))
        {
          v39 = (v20 - 2);
        }

        else
        {
          v39 = 0;
        }

        ScalarOrElementWidth = getScalarOrElementWidth(v39);
        if (ScalarOrElementWidth <= getScalarOrElementWidth(*(v36 + 24)) || getScalarOrElementWidth(*(v36 + 24)) <= 0)
        {
          v12 = *(a3 + 2);
          if (v12 && v12[2] == 1)
          {
            v13 = *(a2 + 3);
            goto LABEL_110;
          }
        }

        else
        {
          v60 = v38;
          v41 = v64;
          getIntOrSplatIntValue(&v68, v64);
          if (v70[0])
          {
            if (*(v20 + 9))
            {
              v42 = (v20 - 2);
            }

            else
            {
              v42 = 0;
            }

            v43 = getScalarOrElementWidth(v42);
            v44 = getScalarOrElementWidth(*(v36 + 24));
            v45 = &v65;
            getIntOrSplatIntValue(&v65, v41);
            v46 = v66;
            if (v66 < 0x41)
            {
LABEL_86:
              v47 = *v45 != v43 - v44;
            }

            else
            {
              if (v46 - llvm::APInt::countLeadingZerosSlowCase(&v65) <= 0x40)
              {
                v45 = v65;
                goto LABEL_86;
              }

              v47 = 1;
            }

            if (v46 >= 0x41 && (v67[0] & 1) != 0 && v65)
            {
              MEMORY[0x25F891010](v65, 0x1000C8000313F17);
            }

            if (v69 >= 0x41 && v68)
            {
              MEMORY[0x25F891010](v68, 0x1000C8000313F17);
              if (!v47)
              {
                goto LABEL_102;
              }
            }

            else if (!v47)
            {
LABEL_102:
              v48 = *(*(v71[0] + 1) + 24);
              v68 = *(*v71[0] + 24);
              v69 = v48;
              v49 = *(*(v71[0] + 3) + 24);
              v70[0] = *(*(v71[0] + 2) + 24);
              v70[1] = v49;
              v70[2] = *(*(v71[0] + 4) + 24);
              v50 = mlir::FusedLoc::get(&v68, 5, 0, *(a3 + 1));
              v68 = v70;
              v69 = 0x400000000;
              v65 = *(v36 + 24);
              v61 = *(v60 + 24);
              v51 = mlir::OpBuilder::create<mlir::arith::MulUIExtendedOp,mlir::Value &,mlir::Value &>((a3 + 8), v50, &v65, &v61);
              if (!*(v51 + 9) || (v52 = *(v51 - 1) & 7, v52 == 6) || v52 == 5)
              {
                v53 = -40;
              }

              else
              {
                v53 = -32;
              }

              v65 = v67;
              v66 = 0x400000000;
              llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v65, &v51[v53], 0, &v51[v53], 1);
              v57 = v65;
              if (v66)
              {
                v58 = 8 * v66;
                do
                {
                  v59 = *v57++;
                  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v68, v59);
                  v58 -= 8;
                }

                while (v58);
                v57 = v65;
              }

              if (v57 != v67)
              {
                free(v57);
              }

              (**a3)(a3, a2, v68 & 0xFFFFFFFFFFFFFFF9, v69);
              if (v68 != v70)
              {
                free(v68);
              }

              v54 = 1;
              goto LABEL_112;
            }
          }

          v12 = *(a3 + 2);
          if (v12 && v12[2] == 1)
          {
            v13 = *(a2 + 3);
            goto LABEL_110;
          }
        }
      }
    }
  }

LABEL_111:
  v54 = 0;
LABEL_112:
  if (v71[0] != v72)
  {
    free(v71[0]);
  }

  v55 = *MEMORY[0x277D85DE8];
  return v54;
}

char *mlir::OpBuilder::create<mlir::arith::MulUIExtendedOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MulUIExtendedOp,void>::id, *(**a2 + 32));
  if ((v9 & 1) == 0)
  {
    v42 = 1283;
    v41[0] = "arith.mului_extended";
    v41[1] = 20;
    v27 = 259;
    llvm::operator+(&v39, v26, v29);
    llvm::report_fatal_error(v29, 1);
  }

  v29[0] = a2;
  v29[1] = v8;
  v30 = &v32;
  v31 = 0x400000000;
  v33[0] = &v34;
  v33[1] = 0x400000000;
  v35[0] = v36;
  v35[1] = 0x400000000;
  v36[8] = 4;
  v36[9] = v37;
  v36[10] = 0x100000000;
  v37[1] = v38;
  v37[2] = 0x100000000;
  v38[1] = 0;
  v38[2] = 0;
  v38[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v38[4] = 0;
  v38[6] = 0;
  v10 = *a4;
  v26[0] = *a3;
  v28 = v10;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v30, v26, 0, v26, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v30, &v28, 0, &v28, 1);
  v39 = v41;
  v40 = 0x200000000;
  v11 = v31;
  v12 = v30;
  Dictionary = mlir::NamedAttrList::getDictionary(v35, *(**v29[0] + 32));
  if (!mlir::arith::MulUIExtendedOp::inferReturnTypes(Dictionary, v14, v15, v12 & 0xFFFFFFFFFFFFFFF9, v11, v16, v17, v18, v24, v25, &v39))
  {
    mlir::detail::reportFatalInferReturnTypesError(v29, v19);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v33, v39, &v39[8 * v40]);
  if (v39 != v41)
  {
    free(v39);
  }

  v20 = mlir::Operation::create(v29);
  mlir::OpBuilder::insert(a1, v20);
  if (*(*(v20 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulUIExtendedOp,void>::id)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  mlir::OperationState::~OperationState(v29);
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::TruncIShrUIMulIToMulUIExtended>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::TruncIShrUIMulIToMulUIExtended]";
  v6 = 115;
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

void anonymous namespace::AndOfExtUI::~AndOfExtUI(_anonymous_namespace_::AndOfExtUI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::AndOfExtUI::matchAndRewrite(_anonymous_namespace_::AndOfExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v49[4] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
    v6 = *(a2 + 17);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v36[0] = v5;
  v36[1] = v6;
  v35[0] = v5;
  v35[1] = v6;
  v48[0] = v49;
  v48[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v48, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(v7 + 9) + 24);
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    v11 = v10 + 120;
    if (v10 == -120)
    {
LABEL_11:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_59;
      }

      v13 = *(v7 + 3);
      goto LABEL_58;
    }
  }

  else
  {
    v11 = v8 + 16 * v9 + 16;
  }

  {
    goto LABEL_59;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v48, v11);
  v15 = *(*(v7 + 9) + 56);
  if ((~*(v15 + 8) & 7) == 0)
  {
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = *(v15 + 8) & 7;
  if (v16 == 6)
  {
    v17 = v15 + 24 * *(v15 + 16);
    v18 = v17 + 120;
    if (v17 == -120)
    {
LABEL_21:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_59;
      }

      v13 = *(v7 + 3);
      goto LABEL_58;
    }
  }

  else
  {
    v18 = v15 + 16 * v16 + 16;
  }

  {
LABEL_59:
    v32 = 0;
    goto LABEL_60;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v48, v18);
  v19 = v35[0];
  v20 = v36[0];
  if ((*(*(v36[0] + 24) + 8) ^ *(*(v35[0] + 24) + 8)) >= 8)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_59;
    }

    v13 = *(a2 + 3);
LABEL_58:
    (*(*v12 + 88))(v12, v13, v14, &v39);
    goto LABEL_59;
  }

  v21 = *(a3 + 1);
  v22 = *(*(v48[0] + 1) + 24);
  v39 = *(*v48[0] + 24);
  v40 = v22;
  v41[0] = *(*(v48[0] + 2) + 24);
  v23 = mlir::FusedLoc::get(&v39, 3, 0, v21);
  v45 = v47;
  v46 = 0x400000000;
  v42 = v44;
  v43 = 0x400000000;
  v39 = v41;
  v40 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v42, *(v19 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v42, *(v20 + 24));
  v24 = mlir::OpBuilder::create<mlir::arith::AndIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v23, &v42, &v39);
  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  v42 = v44;
  v43 = 0x400000000;
  v39 = v41;
  v40 = 0x400000000;
  if (*(v24 + 9))
  {
    v25 = (v24 - 16);
  }

  else
  {
    v25 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v42, v25);
  v37[0] = v38;
  v37[1] = 0x400000000;
  if (*(v7 + 9))
  {
    v26 = v7 - 16;
  }

  else
  {
    v26 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v37, *(v26 + 1) & 0xFFFFFFFFFFFFFFF8);
  v27 = mlir::OpBuilder::create<mlir::arith::ExtUIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v23, v37, &v42, &v39);
  if (v37[0] != v38)
  {
    free(v37[0]);
  }

  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  if (*(v27 + 9))
  {
    v28 = (v27 - 16);
  }

  else
  {
    v28 = 0;
  }

  v39 = v41;
  v40 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v39, v28, 0, v28, 1);
  v29 = v39;
  if (v40)
  {
    v30 = 8 * v40;
    do
    {
      v31 = *v29++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v45, v31);
      v30 -= 8;
    }

    while (v30);
    v29 = v39;
  }

  if (v29 != v41)
  {
    free(v29);
  }

  (**a3)(a3, a2, v45 & 0xFFFFFFFFFFFFFFF9, v46);
  if (v45 != v47)
  {
    free(v45);
  }

  v32 = 1;
LABEL_60:
  if (v48[0] != v49)
  {
    free(v48[0]);
  }

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

char *mlir::OpBuilder::create<mlir::arith::AndIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::AndIOp>(a1, *(**a2 + 32));
  v25[0] = a2;
  v25[1] = v8;
  v26[0] = &v27;
  v26[1] = 0x400000000;
  v28[0] = &v29;
  v28[1] = 0x400000000;
  v30[0] = &v31;
  v30[1] = 0x400000000;
  v32 = 4;
  v33 = v35;
  v34 = 0x100000000;
  v35[1] = v36;
  v35[2] = 0x100000000;
  v36[1] = 0;
  v36[2] = 0;
  v36[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v36[4] = 0;
  v36[6] = 0;
  v9 = *a3;
  v10 = *(a3 + 2);
  v11 = *a4;
  v12 = *(a4 + 8);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v26, v9 & 0xFFFFFFFFFFFFFFF9, 0, v9 & 0xFFFFFFFFFFFFFFF9, v10);
  v32 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v30, v11, &v11[16 * v12]);
  v37 = v39;
  v38 = 0x200000000;
  Dictionary = mlir::NamedAttrList::getDictionary(v30, *(**v25[0] + 32));
  if (!mlir::arith::AndIOp::inferReturnTypes(Dictionary, v14, v15, v9 & 0xFFFFFFFFFFFFFFF9, v10, v16, v17, v18, v23, v24, &v37))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v28, v37, &v37[v38]);
  if (v37 != v39)
  {
    free(v37);
  }

  v19 = mlir::Operation::create(v25);
  mlir::OpBuilder::insert(a1, v19);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v25);
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::AndIOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.andi";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::AndOfExtUI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::AndOfExtUI]";
  v6 = 95;
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

void anonymous namespace::AndOfExtSI::~AndOfExtSI(_anonymous_namespace_::AndOfExtSI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::AndOfExtSI::matchAndRewrite(_anonymous_namespace_::AndOfExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v49[4] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
    v6 = *(a2 + 17);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v36[0] = v5;
  v36[1] = v6;
  v35[0] = v5;
  v35[1] = v6;
  v48[0] = v49;
  v48[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v48, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(v7 + 9) + 24);
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    v11 = v10 + 120;
    if (v10 == -120)
    {
LABEL_11:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_59;
      }

      v13 = *(v7 + 3);
      goto LABEL_58;
    }
  }

  else
  {
    v11 = v8 + 16 * v9 + 16;
  }

  {
    goto LABEL_59;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v48, v11);
  v15 = *(*(v7 + 9) + 56);
  if ((~*(v15 + 8) & 7) == 0)
  {
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = *(v15 + 8) & 7;
  if (v16 == 6)
  {
    v17 = v15 + 24 * *(v15 + 16);
    v18 = v17 + 120;
    if (v17 == -120)
    {
LABEL_21:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_59;
      }

      v13 = *(v7 + 3);
      goto LABEL_58;
    }
  }

  else
  {
    v18 = v15 + 16 * v16 + 16;
  }

  {
LABEL_59:
    v32 = 0;
    goto LABEL_60;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v48, v18);
  v19 = v35[0];
  v20 = v36[0];
  if ((*(*(v36[0] + 24) + 8) ^ *(*(v35[0] + 24) + 8)) >= 8)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_59;
    }

    v13 = *(a2 + 3);
LABEL_58:
    (*(*v12 + 88))(v12, v13, v14, &v39);
    goto LABEL_59;
  }

  v21 = *(a3 + 1);
  v22 = *(*(v48[0] + 1) + 24);
  v39 = *(*v48[0] + 24);
  v40 = v22;
  v41[0] = *(*(v48[0] + 2) + 24);
  v23 = mlir::FusedLoc::get(&v39, 3, 0, v21);
  v45 = v47;
  v46 = 0x400000000;
  v42 = v44;
  v43 = 0x400000000;
  v39 = v41;
  v40 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v42, *(v19 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v42, *(v20 + 24));
  v24 = mlir::OpBuilder::create<mlir::arith::AndIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v23, &v42, &v39);
  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  v42 = v44;
  v43 = 0x400000000;
  v39 = v41;
  v40 = 0x400000000;
  if (*(v24 + 9))
  {
    v25 = (v24 - 16);
  }

  else
  {
    v25 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v42, v25);
  v37[0] = v38;
  v37[1] = 0x400000000;
  if (*(v7 + 9))
  {
    v26 = v7 - 16;
  }

  else
  {
    v26 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v37, *(v26 + 1) & 0xFFFFFFFFFFFFFFF8);
  v27 = mlir::OpBuilder::create<mlir::arith::ExtSIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v23, v37, &v42, &v39);
  if (v37[0] != v38)
  {
    free(v37[0]);
  }

  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  if (*(v27 + 9))
  {
    v28 = (v27 - 16);
  }

  else
  {
    v28 = 0;
  }

  v39 = v41;
  v40 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v39, v28, 0, v28, 1);
  v29 = v39;
  if (v40)
  {
    v30 = 8 * v40;
    do
    {
      v31 = *v29++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v45, v31);
      v30 -= 8;
    }

    while (v30);
    v29 = v39;
  }

  if (v29 != v41)
  {
    free(v29);
  }

  (**a3)(a3, a2, v45 & 0xFFFFFFFFFFFFFFF9, v46);
  if (v45 != v47)
  {
    free(v45);
  }

  v32 = 1;
LABEL_60:
  if (v48[0] != v49)
  {
    free(v48[0]);
  }

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::AndOfExtSI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::AndOfExtSI]";
  v6 = 95;
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

void anonymous namespace::OrOfExtUI::~OrOfExtUI(_anonymous_namespace_::OrOfExtUI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::OrOfExtUI::matchAndRewrite(_anonymous_namespace_::OrOfExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v49[4] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
    v6 = *(a2 + 17);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v36[0] = v5;
  v36[1] = v6;
  v35[0] = v5;
  v35[1] = v6;
  v48[0] = v49;
  v48[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v48, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::OrIOp,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(v7 + 9) + 24);
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    v11 = v10 + 120;
    if (v10 == -120)
    {
LABEL_11:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_59;
      }

      v13 = *(v7 + 3);
      goto LABEL_58;
    }
  }

  else
  {
    v11 = v8 + 16 * v9 + 16;
  }

  {
    goto LABEL_59;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v48, v11);
  v15 = *(*(v7 + 9) + 56);
  if ((~*(v15 + 8) & 7) == 0)
  {
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = *(v15 + 8) & 7;
  if (v16 == 6)
  {
    v17 = v15 + 24 * *(v15 + 16);
    v18 = v17 + 120;
    if (v17 == -120)
    {
LABEL_21:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_59;
      }

      v13 = *(v7 + 3);
      goto LABEL_58;
    }
  }

  else
  {
    v18 = v15 + 16 * v16 + 16;
  }

  {
LABEL_59:
    v32 = 0;
    goto LABEL_60;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v48, v18);
  v19 = v35[0];
  v20 = v36[0];
  if ((*(*(v36[0] + 24) + 8) ^ *(*(v35[0] + 24) + 8)) >= 8)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_59;
    }

    v13 = *(a2 + 3);
LABEL_58:
    (*(*v12 + 88))(v12, v13, v14, &v39);
    goto LABEL_59;
  }

  v21 = *(a3 + 1);
  v22 = *(*(v48[0] + 1) + 24);
  v39 = *(*v48[0] + 24);
  v40 = v22;
  v41[0] = *(*(v48[0] + 2) + 24);
  v23 = mlir::FusedLoc::get(&v39, 3, 0, v21);
  v45 = v47;
  v46 = 0x400000000;
  v42 = v44;
  v43 = 0x400000000;
  v39 = v41;
  v40 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v42, *(v19 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v42, *(v20 + 24));
  v24 = mlir::OpBuilder::create<mlir::arith::OrIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v23, &v42, &v39);
  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  v42 = v44;
  v43 = 0x400000000;
  v39 = v41;
  v40 = 0x400000000;
  if (*(v24 + 9))
  {
    v25 = (v24 - 16);
  }

  else
  {
    v25 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v42, v25);
  v37[0] = v38;
  v37[1] = 0x400000000;
  if (*(v7 + 9))
  {
    v26 = v7 - 16;
  }

  else
  {
    v26 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v37, *(v26 + 1) & 0xFFFFFFFFFFFFFFF8);
  v27 = mlir::OpBuilder::create<mlir::arith::ExtUIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v23, v37, &v42, &v39);
  if (v37[0] != v38)
  {
    free(v37[0]);
  }

  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  if (*(v27 + 9))
  {
    v28 = (v27 - 16);
  }

  else
  {
    v28 = 0;
  }

  v39 = v41;
  v40 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v39, v28, 0, v28, 1);
  v29 = v39;
  if (v40)
  {
    v30 = 8 * v40;
    do
    {
      v31 = *v29++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v45, v31);
      v30 -= 8;
    }

    while (v30);
    v29 = v39;
  }

  if (v29 != v41)
  {
    free(v29);
  }

  (**a3)(a3, a2, v45 & 0xFFFFFFFFFFFFFFF9, v46);
  if (v45 != v47)
  {
    free(v45);
  }

  v32 = 1;
LABEL_60:
  if (v48[0] != v49)
  {
    free(v48[0]);
  }

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

char *mlir::OpBuilder::create<mlir::arith::OrIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::OrIOp,void>::id, *(**a2 + 32));
  if ((v9 & 1) == 0)
  {
    v43 = 1283;
    v42[0] = "arith.ori";
    v42[1] = 9;
    v27 = 259;
    llvm::operator+(&v40, &v26, v28);
    llvm::report_fatal_error(v28, 1);
  }

  v28[0] = a2;
  v28[1] = v8;
  v29[0] = &v30;
  v29[1] = 0x400000000;
  v31[0] = &v32;
  v31[1] = 0x400000000;
  v33[0] = &v34;
  v33[1] = 0x400000000;
  v35 = 4;
  v36 = v38;
  v37 = 0x100000000;
  v38[1] = v39;
  v38[2] = 0x100000000;
  v39[1] = 0;
  v39[2] = 0;
  v39[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v39[4] = 0;
  v39[6] = 0;
  v10 = *a3;
  v11 = *(a3 + 2);
  v12 = *a4;
  v13 = *(a4 + 8);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v29, v10 & 0xFFFFFFFFFFFFFFF9, 0, v10 & 0xFFFFFFFFFFFFFFF9, v11);
  v35 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v33, v12, &v12[16 * v13]);
  v40 = v42;
  v41 = 0x200000000;
  Dictionary = mlir::NamedAttrList::getDictionary(v33, *(**v28[0] + 32));
  if (!mlir::arith::OrIOp::inferReturnTypes(Dictionary, v15, v16, v10 & 0xFFFFFFFFFFFFFFF9, v11, v17, v18, v19, v24, v25, &v40))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v31, v40, &v40[8 * v41]);
  if (v40 != v42)
  {
    free(v40);
  }

  v20 = mlir::Operation::create(v28);
  mlir::OpBuilder::insert(a1, v20);
  if (*(*(v20 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::OrIOp,void>::id)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::OrOfExtUI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::OrOfExtUI]";
  v6 = 94;
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

void anonymous namespace::OrOfExtSI::~OrOfExtSI(_anonymous_namespace_::OrOfExtSI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::OrOfExtSI::matchAndRewrite(_anonymous_namespace_::OrOfExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v49[4] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
    v6 = *(a2 + 17);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v36[0] = v5;
  v36[1] = v6;
  v35[0] = v5;
  v35[1] = v6;
  v48[0] = v49;
  v48[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v48, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::OrIOp,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(v7 + 9) + 24);
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    v11 = v10 + 120;
    if (v10 == -120)
    {
LABEL_11:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_59;
      }

      v13 = *(v7 + 3);
      goto LABEL_58;
    }
  }

  else
  {
    v11 = v8 + 16 * v9 + 16;
  }

  {
    goto LABEL_59;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v48, v11);
  v15 = *(*(v7 + 9) + 56);
  if ((~*(v15 + 8) & 7) == 0)
  {
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = *(v15 + 8) & 7;
  if (v16 == 6)
  {
    v17 = v15 + 24 * *(v15 + 16);
    v18 = v17 + 120;
    if (v17 == -120)
    {
LABEL_21:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_59;
      }

      v13 = *(v7 + 3);
      goto LABEL_58;
    }
  }

  else
  {
    v18 = v15 + 16 * v16 + 16;
  }

  {
LABEL_59:
    v32 = 0;
    goto LABEL_60;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v48, v18);
  v19 = v35[0];
  v20 = v36[0];
  if ((*(*(v36[0] + 24) + 8) ^ *(*(v35[0] + 24) + 8)) >= 8)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_59;
    }

    v13 = *(a2 + 3);
LABEL_58:
    (*(*v12 + 88))(v12, v13, v14, &v39);
    goto LABEL_59;
  }

  v21 = *(a3 + 1);
  v22 = *(*(v48[0] + 1) + 24);
  v39 = *(*v48[0] + 24);
  v40 = v22;
  v41[0] = *(*(v48[0] + 2) + 24);
  v23 = mlir::FusedLoc::get(&v39, 3, 0, v21);
  v45 = v47;
  v46 = 0x400000000;
  v42 = v44;
  v43 = 0x400000000;
  v39 = v41;
  v40 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v42, *(v19 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v42, *(v20 + 24));
  v24 = mlir::OpBuilder::create<mlir::arith::OrIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v23, &v42, &v39);
  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  v42 = v44;
  v43 = 0x400000000;
  v39 = v41;
  v40 = 0x400000000;
  if (*(v24 + 9))
  {
    v25 = (v24 - 16);
  }

  else
  {
    v25 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v42, v25);
  v37[0] = v38;
  v37[1] = 0x400000000;
  if (*(v7 + 9))
  {
    v26 = v7 - 16;
  }

  else
  {
    v26 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v37, *(v26 + 1) & 0xFFFFFFFFFFFFFFF8);
  v27 = mlir::OpBuilder::create<mlir::arith::ExtSIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v23, v37, &v42, &v39);
  if (v37[0] != v38)
  {
    free(v37[0]);
  }

  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  if (*(v27 + 9))
  {
    v28 = (v27 - 16);
  }

  else
  {
    v28 = 0;
  }

  v39 = v41;
  v40 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v39, v28, 0, v28, 1);
  v29 = v39;
  if (v40)
  {
    v30 = 8 * v40;
    do
    {
      v31 = *v29++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v45, v31);
      v30 -= 8;
    }

    while (v30);
    v29 = v39;
  }

  if (v29 != v41)
  {
    free(v29);
  }

  (**a3)(a3, a2, v45 & 0xFFFFFFFFFFFFFFF9, v46);
  if (v45 != v47)
  {
    free(v45);
  }

  v32 = 1;
LABEL_60:
  if (v48[0] != v49)
  {
    free(v48[0]);
  }

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::OrOfExtSI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::OrOfExtSI]";
  v6 = 94;
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

void anonymous namespace::IndexCastOfIndexCast::~IndexCastOfIndexCast(_anonymous_namespace_::IndexCastOfIndexCast *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::IndexCastOfIndexCast::matchAndRewrite(_anonymous_namespace_::IndexCastOfIndexCast *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v29[4] = *MEMORY[0x277D85DE8];
  v28[0] = v29;
  v28[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v28, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v6 + 24 * *(v6 + 16);
    v9 = v8 + 120;
    if (v8 == -120)
    {
LABEL_9:
      v10 = *(a3 + 2);
      if (!v10 || v10[2] != 1)
      {
        goto LABEL_36;
      }

      v11 = *(v5 + 3);
LABEL_35:
      (*(*v10 + 88))(v10, v11, v12, &v25);
LABEL_36:
      v19 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v9 = v6 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_36;
    }

    v11 = *(v9 + 24);
    goto LABEL_35;
  }

  if ((*(v9 + 46) & 0x80) != 0)
  {
    v13 = *(v9 + 72);
  }

  else
  {
    v13 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v28, v9);
  if (*(v5 + 9))
  {
    v14 = v5 - 16;
  }

  else
  {
    v14 = 0;
  }

  if ((*(*(v13 + 24) + 8) ^ *(v14 + 1)) >= 8)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_36;
    }

    v11 = *(a2 + 3);
    goto LABEL_35;
  }

  v15 = *(*(v28[0] + 1) + 24);
  v25 = *(*v28[0] + 24);
  v26 = v15;
  mlir::FusedLoc::get(&v25, 2, 0, *(a3 + 1));
  v25 = v27;
  v26 = 0x400000000;
  v22 = v24;
  v23 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v22, v13, 0, v13, 1);
  v16 = v22;
  if (v23)
  {
    v17 = 8 * v23;
    do
    {
      v18 = *v16++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v25, v18);
      v17 -= 8;
    }

    while (v17);
    v16 = v22;
  }

  if (v16 != v24)
  {
    free(v16);
  }

  (**a3)(a3, a2, v25 & 0xFFFFFFFFFFFFFFF9, v26);
  if (v25 != v27)
  {
    free(v25);
  }

  v19 = 1;
LABEL_37:
  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::IndexCastOfIndexCast>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::IndexCastOfIndexCast]";
  v6 = 105;
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

void anonymous namespace::IndexCastOfExtSI::~IndexCastOfExtSI(_anonymous_namespace_::IndexCastOfExtSI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::IndexCastOfExtSI::matchAndRewrite(_anonymous_namespace_::IndexCastOfExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v57[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v30 = v5;
  v43[0] = v44;
  v43[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v43, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(v6 + 9) + 24);
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = v9 + 120;
    if (v9 == -120)
    {
LABEL_11:
      v11 = *(a3 + 2);
      if (v11 && v11[2] == 1)
      {
      }

      goto LABEL_40;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  {
LABEL_40:
    v27 = 0;
    goto LABEL_41;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v43, v10);
  v12 = *(*(v43[0] + 1) + 24);
  v45 = *(*v43[0] + 24);
  v46 = v12;
  v13 = mlir::FusedLoc::get(&v45, 2, 0, *(a3 + 1));
  v40 = v42;
  v41 = 0x400000000;
  v37 = v39;
  v38 = 0x400000000;
  v34 = v36;
  v35 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v37, *(v30 + 24));
  v31 = v33;
  v32 = 0x400000000;
  if (*(v6 + 9))
  {
    v14 = v6 - 16;
  }

  else
  {
    v14 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v31, *(v14 + 1) & 0xFFFFFFFFFFFFFFF8);
  v15 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::IndexCastOp>(a3 + 8, *(**v13 + 32));
  v45 = v13;
  v46 = v15;
  v47[0] = &v48;
  v47[1] = 0x400000000;
  v49[0] = &v50;
  v49[1] = 0x400000000;
  v51[0] = &v52;
  v51[1] = 0x400000000;
  v53 = 4;
  v54 = v56;
  v55 = 0x100000000;
  v56[1] = v57;
  v56[2] = 0x100000000;
  v57[2] = 0;
  v57[1] = 0;
  v57[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v57[4] = 0;
  v57[6] = 0;
  v16 = v32;
  v17 = v31 & 0xFFFFFFFFFFFFFFF9;
  v18 = v34;
  v19 = v35;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v47, v37 & 0xFFFFFFFFFFFFFFF9, 0, v37 & 0xFFFFFFFFFFFFFFF9, v38);
  v53 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v51, v18, &v18[16 * v19]);
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(v49, v17 | 2, 0, v17 | 2, v16);
  v20 = mlir::Operation::create(&v45);
  mlir::OpBuilder::insert((a3 + 8), v20);
  v21 = *(*(v20 + 6) + 16);
  mlir::OperationState::~OperationState(&v45);
  if (v21 == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  if (v31 != v33)
  {
    free(v31);
  }

  if (v34 != v36)
  {
    free(v34);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (*(v22 + 9))
  {
    v23 = (v22 - 16);
  }

  else
  {
    v23 = 0;
  }

  v45 = v47;
  v46 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v45, v23, 0, v23, 1);
  v24 = v45;
  if (v46)
  {
    v25 = 8 * v46;
    do
    {
      v26 = *v24++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v40, v26);
      v25 -= 8;
    }

    while (v25);
    v24 = v45;
  }

  if (v24 != v47)
  {
    free(v24);
  }

  (**a3)(a3, a2, v40 & 0xFFFFFFFFFFFFFFF9, v41);
  if (v40 != v42)
  {
    free(v40);
  }

  v27 = 1;
LABEL_41:
  if (v43[0] != v44)
  {
    free(v43[0]);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::IndexCastOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.index_cast";
    v6[3] = 16;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::IndexCastOfExtSI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::IndexCastOfExtSI]";
  v6 = 101;
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

void anonymous namespace::IndexCastUIOfIndexCastUI::~IndexCastUIOfIndexCastUI(_anonymous_namespace_::IndexCastUIOfIndexCastUI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::IndexCastUIOfIndexCastUI::matchAndRewrite(_anonymous_namespace_::IndexCastUIOfIndexCastUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v29[4] = *MEMORY[0x277D85DE8];
  v28[0] = v29;
  v28[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v28, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v6 + 24 * *(v6 + 16);
    v9 = v8 + 120;
    if (v8 == -120)
    {
LABEL_9:
      v10 = *(a3 + 2);
      if (!v10 || v10[2] != 1)
      {
        goto LABEL_36;
      }

      v11 = *(v5 + 3);
LABEL_35:
      (*(*v10 + 88))(v10, v11, v12, &v25);
LABEL_36:
      v19 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v9 = v6 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_36;
    }

    v11 = *(v9 + 24);
    goto LABEL_35;
  }

  if ((*(v9 + 46) & 0x80) != 0)
  {
    v13 = *(v9 + 72);
  }

  else
  {
    v13 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v28, v9);
  if (*(v5 + 9))
  {
    v14 = v5 - 16;
  }

  else
  {
    v14 = 0;
  }

  if ((*(*(v13 + 24) + 8) ^ *(v14 + 1)) >= 8)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_36;
    }

    v11 = *(a2 + 3);
    goto LABEL_35;
  }

  v15 = *(*(v28[0] + 1) + 24);
  v25 = *(*v28[0] + 24);
  v26 = v15;
  mlir::FusedLoc::get(&v25, 2, 0, *(a3 + 1));
  v25 = v27;
  v26 = 0x400000000;
  v22 = v24;
  v23 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v22, v13, 0, v13, 1);
  v16 = v22;
  if (v23)
  {
    v17 = 8 * v23;
    do
    {
      v18 = *v16++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v25, v18);
      v17 -= 8;
    }

    while (v17);
    v16 = v22;
  }

  if (v16 != v24)
  {
    free(v16);
  }

  (**a3)(a3, a2, v25 & 0xFFFFFFFFFFFFFFF9, v26);
  if (v25 != v27)
  {
    free(v25);
  }

  v19 = 1;
LABEL_37:
  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::IndexCastUIOfIndexCastUI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::IndexCastUIOfIndexCastUI]";
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

void anonymous namespace::IndexCastUIOfExtUI::~IndexCastUIOfExtUI(_anonymous_namespace_::IndexCastUIOfExtUI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::IndexCastUIOfExtUI::matchAndRewrite(_anonymous_namespace_::IndexCastUIOfExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v64[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
    v6 = *(a2 + 17);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v33[0] = v5;
  v33[1] = v6;
  v50[0] = v51;
  v50[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v50, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(v7 + 9) + 24);
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    v11 = v10 + 120;
    if (v10 == -120)
    {
LABEL_11:
      v12 = *(a3 + 2);
      if (v12 && v12[2] == 1)
      {
      }

      goto LABEL_41;
    }
  }

  else
  {
    v11 = v8 + 16 * v9 + 16;
  }

  {
LABEL_41:
    v30 = 0;
    goto LABEL_42;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v50, v11);
  v13 = *(a3 + 1);
  v14 = *(*(v50[0] + 1) + 24);
  v52 = *(*v50[0] + 24);
  v53 = v14;
  v15 = mlir::FusedLoc::get(&v52, 2, 0, v13);
  v47 = v49;
  v48 = 0x400000000;
  v44 = v46;
  v45 = 0x400000000;
  v41 = v43;
  v42 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v44, *(v33[0] + 24));
  v38 = v40;
  v39 = 0x400000000;
  if (*(v7 + 9))
  {
    v16 = v7 - 16;
  }

  else
  {
    v16 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v38, *(v16 + 1) & 0xFFFFFFFFFFFFFFF8);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id, *(**v15 + 32));
  if ((v18 & 1) == 0)
  {
    v37 = 1283;
    v36[2] = "arith.index_castui";
    v36[3] = 18;
    v35 = 259;
    llvm::operator+(v36, &v34, &v52);
    llvm::report_fatal_error(&v52, 1);
  }

  v52 = v15;
  v53 = v17;
  v54[0] = &v55;
  v54[1] = 0x400000000;
  v56[0] = &v57;
  v56[1] = 0x400000000;
  v58[0] = &v59;
  v58[1] = 0x400000000;
  v60 = 4;
  v61 = v63;
  v62 = 0x100000000;
  v63[1] = v64;
  v63[2] = 0x100000000;
  v64[2] = 0;
  v64[1] = 0;
  v64[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v64[4] = 0;
  v64[6] = 0;
  v19 = v39;
  v20 = v38 & 0xFFFFFFFFFFFFFFF9;
  v21 = v41;
  v22 = v42;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v54, v44 & 0xFFFFFFFFFFFFFFF9, 0, v44 & 0xFFFFFFFFFFFFFFF9, v45);
  v60 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v58, v21, &v21[16 * v22]);
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(v56, v20 | 2, 0, v20 | 2, v19);
  v23 = mlir::Operation::create(&v52);
  mlir::OpBuilder::insert((a3 + 8), v23);
  v24 = *(*(v23 + 6) + 16);
  mlir::OperationState::~OperationState(&v52);
  if (v24 == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  if (v38 != v40)
  {
    free(v38);
  }

  if (v41 != v43)
  {
    free(v41);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  if (*(v25 + 9))
  {
    v26 = (v25 - 16);
  }

  else
  {
    v26 = 0;
  }

  v52 = v54;
  v53 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v52, v26, 0, v26, 1);
  v27 = v52;
  if (v53)
  {
    v28 = 8 * v53;
    do
    {
      v29 = *v27++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v47, v29);
      v28 -= 8;
    }

    while (v28);
    v27 = v52;
  }

  if (v27 != v54)
  {
    free(v27);
  }

  (**a3)(a3, a2, v47 & 0xFFFFFFFFFFFFFFF9, v48);
  if (v47 != v49)
  {
    free(v47);
  }

  v30 = 1;
LABEL_42:
  if (v50[0] != v51)
  {
    free(v50[0]);
  }

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::IndexCastUIOfExtUI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::IndexCastUIOfExtUI]";
  v6 = 103;
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

void anonymous namespace::BitcastOfBitcast::~BitcastOfBitcast(_anonymous_namespace_::BitcastOfBitcast *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::BitcastOfBitcast::matchAndRewrite(_anonymous_namespace_::BitcastOfBitcast *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v28[4] = *MEMORY[0x277D85DE8];
  v27[0] = v28;
  v27[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v27, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::BitcastOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v6 + 24 * *(v6 + 16);
    v9 = v8 + 120;
    if (v8 == -120)
    {
LABEL_9:
      v10 = *(a3 + 2);
      if (!v10 || v10[2] != 1)
      {
        goto LABEL_18;
      }

      v11 = *(v5 + 3);
LABEL_17:
      (*(*v10 + 88))(v10, v11, v12, &v24);
LABEL_18:
      v13 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v9 = v6 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::BitcastOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_18;
    }

    v11 = *(v9 + 24);
    goto LABEL_17;
  }

  if ((*(v9 + 46) & 0x80) != 0)
  {
    v16 = *(v9 + 72);
  }

  else
  {
    v16 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v27, v9);
  v17 = *(*(v27[0] + 1) + 24);
  v24 = *(*v27[0] + 24);
  v25 = v17;
  mlir::FusedLoc::get(&v24, 2, 0, *(a3 + 1));
  v24 = v26;
  v25 = 0x400000000;
  v21 = v23;
  v22 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v21, v16, 0, v16, 1);
  v18 = v21;
  if (v22)
  {
    v19 = 8 * v22;
    do
    {
      v20 = *v18++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v24, v20);
      v19 -= 8;
    }

    while (v19);
    v18 = v21;
  }

  if (v18 != v23)
  {
    free(v18);
  }

  (**a3)(a3, a2, v24 & 0xFFFFFFFFFFFFFFF9, v25);
  if (v24 != v26)
  {
    free(v24);
  }

  v13 = 1;
LABEL_19:
  if (v27[0] != v28)
  {
    free(v27[0]);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::BitcastOfBitcast>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::BitcastOfBitcast]";
  v6 = 101;
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

void anonymous namespace::CmpIExtSI::~CmpIExtSI(_anonymous_namespace_::CmpIExtSI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::CmpIExtSI::matchAndRewrite(_anonymous_namespace_::CmpIExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v46[4] = *MEMORY[0x277D85DE8];
  v45[0] = v46;
  v45[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v45, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = mlir::Operation::getAttrOfType<mlir::arith::CmpIPredicateAttr>(a2);
  if (!v6)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(a2 + 3);
    goto LABEL_68;
  }

  v7 = v6;
  v34 = v6;
  v8 = *(*(v5 + 9) + 24);
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
LABEL_10:
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(v5 + 3);
LABEL_68:
    (*(*v12 + 88))(v12, v13, v14, &v37);
LABEL_69:
    v30 = 0;
    goto LABEL_70;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    v11 = v10 + 120;
    if (v10 == -120)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = v8 + 16 * v9 + 16;
  }

  if (*(*(v11 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(v11 + 24);
    goto LABEL_68;
  }

  if ((*(v11 + 46) & 0x80) != 0)
  {
    v15 = *(v11 + 72);
  }

  else
  {
    v15 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v45, v11);
  v16 = *(*(v5 + 9) + 56);
  if ((~*(v16 + 8) & 7) == 0)
  {
    v16 = 0;
  }

  if (!v16)
  {
LABEL_28:
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(v5 + 3);
    goto LABEL_68;
  }

  v17 = *(v16 + 8) & 7;
  if (v17 == 6)
  {
    v18 = v16 + 24 * *(v16 + 16);
    v19 = v18 + 120;
    if (v18 == -120)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v19 = v16 + 16 * v17 + 16;
  }

  if (*(*(v19 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(v19 + 24);
    goto LABEL_68;
  }

  if ((*(v19 + 46) & 0x80) != 0)
  {
    v20 = *(v19 + 72);
  }

  else
  {
    v20 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v45, v19);
  if ((*(*(v20 + 24) + 8) ^ *(*(v15 + 24) + 8)) >= 8)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(a2 + 3);
    goto LABEL_68;
  }

  if (mlir::IntegerAttr::getInt(&v34) && mlir::IntegerAttr::getInt(&v34) != 1)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(a2 + 3);
    goto LABEL_68;
  }

  v21 = *(*(v45[0] + 1) + 24);
  v37 = *(*v45[0] + 24);
  v38 = v21;
  v39[0] = *(*(v45[0] + 2) + 24);
  v33 = mlir::FusedLoc::get(&v37, 3, 0, *(a3 + 1));
  v42 = v44;
  v43 = 0x400000000;
  v40[0] = v41;
  v40[1] = 0x400000000;
  v37 = v39;
  v38 = 0x400000000;
  v35[0] = "predicate";
  v36[8] = 259;
  v23 = mlir::StringAttr::get(*(a3 + 1), v35, v22);
  llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::CmpIPredicateAttr &>(&v37, v23, v7);
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v40, *(v15 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v40, *(v20 + 24));
  v35[0] = v36;
  v35[1] = 0x400000000;
  if (*(v5 + 9))
  {
    v24 = v5 - 16;
  }

  else
  {
    v24 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v35, *(v24 + 1) & 0xFFFFFFFFFFFFFFF8);
  v25 = mlir::OpBuilder::create<mlir::arith::CmpIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v33, v35, v40, &v37);
  if (v35[0] != v36)
  {
    free(v35[0]);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (v40[0] != v41)
  {
    free(v40[0]);
  }

  if (*(v25 + 9))
  {
    v26 = (v25 - 16);
  }

  else
  {
    v26 = 0;
  }

  v37 = v39;
  v38 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v37, v26, 0, v26, 1);
  v27 = v37;
  if (v38)
  {
    v28 = 8 * v38;
    do
    {
      v29 = *v27++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v42, v29);
      v28 -= 8;
    }

    while (v28);
    v27 = v37;
  }

  if (v27 != v39)
  {
    free(v27);
  }

  (**a3)(a3, a2, v42 & 0xFFFFFFFFFFFFFFF9, v43);
  if (v42 != v44)
  {
    free(v42);
  }

  v30 = 1;
LABEL_70:
  if (v45[0] != v46)
  {
    free(v45[0]);
  }

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::CmpIExtSI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::CmpIExtSI]";
  v6 = 94;
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

void anonymous namespace::CmpIExtUI::~CmpIExtUI(_anonymous_namespace_::CmpIExtUI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::CmpIExtUI::matchAndRewrite(_anonymous_namespace_::CmpIExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v46[4] = *MEMORY[0x277D85DE8];
  v45[0] = v46;
  v45[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v45, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = mlir::Operation::getAttrOfType<mlir::arith::CmpIPredicateAttr>(a2);
  if (!v6)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(a2 + 3);
    goto LABEL_68;
  }

  v7 = v6;
  v34 = v6;
  v8 = *(*(v5 + 9) + 24);
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
LABEL_10:
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(v5 + 3);
LABEL_68:
    (*(*v12 + 88))(v12, v13, v14, &v37);
LABEL_69:
    v30 = 0;
    goto LABEL_70;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    v11 = v10 + 120;
    if (v10 == -120)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = v8 + 16 * v9 + 16;
  }

  if (*(*(v11 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(v11 + 24);
    goto LABEL_68;
  }

  if ((*(v11 + 46) & 0x80) != 0)
  {
    v15 = *(v11 + 72);
  }

  else
  {
    v15 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v45, v11);
  v16 = *(*(v5 + 9) + 56);
  if ((~*(v16 + 8) & 7) == 0)
  {
    v16 = 0;
  }

  if (!v16)
  {
LABEL_28:
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(v5 + 3);
    goto LABEL_68;
  }

  v17 = *(v16 + 8) & 7;
  if (v17 == 6)
  {
    v18 = v16 + 24 * *(v16 + 16);
    v19 = v18 + 120;
    if (v18 == -120)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v19 = v16 + 16 * v17 + 16;
  }

  if (*(*(v19 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(v19 + 24);
    goto LABEL_68;
  }

  if ((*(v19 + 46) & 0x80) != 0)
  {
    v20 = *(v19 + 72);
  }

  else
  {
    v20 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v45, v19);
  if ((*(*(v20 + 24) + 8) ^ *(*(v15 + 24) + 8)) >= 8)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(a2 + 3);
    goto LABEL_68;
  }

  if (mlir::IntegerAttr::getInt(&v34) && mlir::IntegerAttr::getInt(&v34) != 1)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(a2 + 3);
    goto LABEL_68;
  }

  v21 = *(*(v45[0] + 1) + 24);
  v37 = *(*v45[0] + 24);
  v38 = v21;
  v39[0] = *(*(v45[0] + 2) + 24);
  v33 = mlir::FusedLoc::get(&v37, 3, 0, *(a3 + 1));
  v42 = v44;
  v43 = 0x400000000;
  v40[0] = v41;
  v40[1] = 0x400000000;
  v37 = v39;
  v38 = 0x400000000;
  v35[0] = "predicate";
  v36[8] = 259;
  v23 = mlir::StringAttr::get(*(a3 + 1), v35, v22);
  llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::CmpIPredicateAttr &>(&v37, v23, v7);
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v40, *(v15 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v40, *(v20 + 24));
  v35[0] = v36;
  v35[1] = 0x400000000;
  if (*(v5 + 9))
  {
    v24 = v5 - 16;
  }

  else
  {
    v24 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v35, *(v24 + 1) & 0xFFFFFFFFFFFFFFF8);
  v25 = mlir::OpBuilder::create<mlir::arith::CmpIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v33, v35, v40, &v37);
  if (v35[0] != v36)
  {
    free(v35[0]);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (v40[0] != v41)
  {
    free(v40[0]);
  }

  if (*(v25 + 9))
  {
    v26 = (v25 - 16);
  }

  else
  {
    v26 = 0;
  }

  v37 = v39;
  v38 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v37, v26, 0, v26, 1);
  v27 = v37;
  if (v38)
  {
    v28 = 8 * v38;
    do
    {
      v29 = *v27++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v42, v29);
      v28 -= 8;
    }

    while (v28);
    v27 = v37;
  }

  if (v27 != v39)
  {
    free(v27);
  }

  (**a3)(a3, a2, v42 & 0xFFFFFFFFFFFFFFF9, v43);
  if (v42 != v44)
  {
    free(v42);
  }

  v30 = 1;
LABEL_70:
  if (v45[0] != v46)
  {
    free(v45[0]);
  }

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::CmpIExtUI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::CmpIExtUI]";
  v6 = 94;
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

void CmpFIntToFPConst::~CmpFIntToFPConst(CmpFIntToFPConst *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t CmpFIntToFPConst::matchAndRewrite(uint64_t a1, uint64_t a2, void **a3)
{
  v68[1] = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 72) + 56);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    goto LABEL_18;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 != 6)
  {
    v8 = v3 + 16 * v6 + 16;
    goto LABEL_8;
  }

  v7 = v3 + 24 * *(v3 + 16);
  v8 = v7 + 120;
  if (v7 != -120)
  {
LABEL_8:
    v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
    if (!(*(**(v8 + 48) + 32))(*(v8 + 48), v9))
    {
      goto LABEL_18;
    }

    v66 = v68;
    v67 = 0x100000000;
    mlir::Operation::fold(v8, 0, 0, &v66);
    v10 = *(*(*v66 & 0xFFFFFFFFFFFFFFF8) + 136);
    v11 = v10 != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id || (*v66 & 0xFFFFFFFFFFFFFFF8) == 0;
    if (v10 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v12 = *v66 & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v12 = 0;
    }

    if (v66 != v68)
    {
      free(v66);
    }

    if (v11)
    {
      goto LABEL_18;
    }

    llvm::APFloat::Storage::Storage(&v66, (v12 + 16));
    if (v66 == &llvm::semPPCDoubleDouble)
    {
      v16 = v67;
    }

    else
    {
      v16 = &v66;
    }

    if ((*(v16 + 20) & 7) == 1)
    {
      goto LABEL_39;
    }

    v17 = (*(*(*(a2 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v17)
    {
      v18 = *v17;
      v19 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
      v20 = mlir::detail::InterfaceMap::lookup(v18 + 8, v19);
    }

    else
    {
      v20 = 0;
    }

    v22 = *((*v20)(v20, v17) + 8);
    if (v22 < 1)
    {
      goto LABEL_39;
    }

    v23 = (~*(*(*(a2 + 72) + 24) + 8) & 7) != 0 ? *(*(a2 + 72) + 24) : 0;
    if (!v23)
    {
      goto LABEL_39;
    }

    v24 = *(v23 + 8) & 7;
    if (v24 == 6)
    {
      v25 = v23 + 24 * *(v23 + 16);
      v26 = v25 + 120;
      if (v25 == -120 || *(*(v25 + 168) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::SIToFPOp,void>::id)
      {
        v26 = v23 + 24 * *(v23 + 16) + 120;
        if (v23 + 24 * *(v23 + 16) == -120)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v27 = v23 + 16 * v24;
      v26 = v27 + 16;
      if (*(*(v27 + 64) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::SIToFPOp,void>::id)
      {
LABEL_38:
        if (*(*(v26 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::UIToFPOp,void>::id)
        {
LABEL_39:
          v13 = 0;
LABEL_40:
          llvm::APFloat::Storage::~Storage(&v66);
          goto LABEL_19;
        }

        v28 = 1;
LABEL_43:
        v29 = *(*(v26 + 72) + 24);
        v64 = v29;
        v30 = *((*(v29 + 8) & 0xFFFFFFFFFFFFFFF8) + 8) & 0x3FFFFFFF;
        v55 = v28 ^ 1;
        if (v30 > v22)
        {
          v31 = v30 - v55;
          if (v66 == &llvm::semPPCDoubleDouble)
          {
            v32 = v67;
          }

          else
          {
            v32 = &v66;
          }

          v33 = llvm::detail::ilogb(v32, v21);
          if (v33 == 0x7FFFFFFF)
          {
            llvm::APFloat::getLargest(v65, v66);
            if (v65[0] == &llvm::semPPCDoubleDouble)
            {
              v35 = v65[1];
            }

            else
            {
              v35 = v65;
            }

            v36 = llvm::detail::ilogb(v35, v34);
            llvm::APFloat::Storage::~Storage(v65);
            if (v36 < v31)
            {
              goto LABEL_39;
            }
          }

          else if (v22 <= v33 && v33 <= v31)
          {
            goto LABEL_39;
          }
        }

        v65[0] = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
        Int = mlir::IntegerAttr::getInt(v65);
        if (Int == 14)
        {
          LOBYTE(v60) = 0;
          v13 = 1;
          goto LABEL_59;
        }

        if (Int == 7)
        {
          v13 = 1;
          LOBYTE(v60) = 1;
LABEL_59:
          LODWORD(v65[0]) = 1;
          mlir::RewriterBase::replaceOpWithNewOp<mlir::arith::ConstantIntOp,BOOL,int>(a3, a2, &v60, v65);
          goto LABEL_40;
        }

        v65[0] = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
        v38 = mlir::IntegerAttr::getInt(v65);
        v39 = CmpFIntToFPConst::convertToIntegerPredicate(v38, v28);
        v63 = v39;
        if (v28)
        {
          llvm::APFloat::Storage::Storage<>(v65, v66);
          llvm::APInt::getAllOnes(v30, &v60);
          llvm::APFloat::convertFromAPInt(v65, &v60, 0, 1);
          if (v61 >= 0x41 && v60)
          {
            MEMORY[0x25F891010](v60, 0x1000C8000313F17);
          }

          if (!llvm::APFloat::compare(v65, &v66))
          {
            if (v39 <= 7)
            {
              v40 = 1 << v39;
              v41 = 194;
              goto LABEL_88;
            }

LABEL_92:
            LOBYTE(v57) = 0;
            goto LABEL_93;
          }

          llvm::APFloat::Storage::~Storage(v65);
          llvm::APFloat::Storage::Storage<>(v65, v66);
          v61 = v30;
          if (v30 >= 0x41)
          {
            operator new[]();
          }

          v60 = 0;
          llvm::APFloat::convertFromAPInt(v65, &v60, 0, 1);
          if (v61 >= 0x41 && v60)
          {
            MEMORY[0x25F891010](v60, 0x1000C8000313F17);
          }

          if (llvm::APFloat::compare(v65, &v66) == 2)
          {
            if (v39 <= 9)
            {
              v40 = 1 << v39;
              v41 = 770;
LABEL_88:
              if ((v40 & v41) != 0)
              {
                LOBYTE(v57) = 1;
                LODWORD(v60) = 1;
LABEL_94:
                mlir::RewriterBase::replaceOpWithNewOp<mlir::arith::ConstantIntOp,BOOL,int>(a3, a2, &v57, &v60);
                llvm::APFloat::Storage::~Storage(v65);
                v13 = 1;
                goto LABEL_40;
              }

              goto LABEL_92;
            }

            goto LABEL_92;
          }
        }

        else
        {
          llvm::APFloat::Storage::Storage<>(v65, v66);
          llvm::APInt::getSignedMaxValue(v30, &v60);
          llvm::APFloat::convertFromAPInt(v65, &v60, 1, 1);
          if (v61 >= 0x41 && v60)
          {
            MEMORY[0x25F891010](v60, 0x1000C8000313F17);
          }

          if (!llvm::APFloat::compare(v65, &v66))
          {
            if ((v39 - 1) <= 2)
            {
              LOBYTE(v57) = 1;
LABEL_93:
              LODWORD(v60) = 1;
              goto LABEL_94;
            }

            goto LABEL_92;
          }

          llvm::APFloat::Storage::~Storage(v65);
          llvm::APFloat::Storage::Storage<>(v65, v66);
          llvm::APInt::getSignedMinValue(v30, &v60);
          llvm::APFloat::convertFromAPInt(v65, &v60, 1, 1);
          if (v61 >= 0x41 && v60)
          {
            MEMORY[0x25F891010](v60, 0x1000C8000313F17);
          }

          if (llvm::APFloat::compare(v65, &v66) == 2)
          {
            if (v39 <= 5)
            {
              v40 = 1 << v39;
              v41 = 50;
              goto LABEL_88;
            }

            goto LABEL_92;
          }
        }

        llvm::APFloat::Storage::~Storage(v65);
        v59 = 0;
        v61 = v30;
        if (v30 >= 0x41)
        {
          operator new[]();
        }

        v60 = 0;
        v62 = v28;
        v42 = llvm::APFloat::convertToInteger(&v66, &v60, 0, &v59);
        v13 = 0;
        if (v42 == 1)
        {
LABEL_155:
          if (v61 >= 0x41 && v60)
          {
            MEMORY[0x25F891010](v60, 0x1000C8000313F17);
          }

          goto LABEL_40;
        }

        if (v66 == &llvm::semPPCDoubleDouble)
        {
          v43 = v67;
        }

        else
        {
          v43 = &v66;
        }

        if ((*(v43 + 20) & 7) == 3)
        {
          goto LABEL_153;
        }

        v44 = (*v20)(v20, v17);
        v58 = *((*v20)(v20, v17) + 12);
        if (v58 >= 0x41)
        {
          operator new[]();
        }

        v57 = 0;
        llvm::APFloat::Storage::Storage<llvm::APInt const&>(v65, v44, &v57);
        if (v58 >= 0x41 && v57)
        {
          MEMORY[0x25F891010](v57, 0x1000C8000313F17);
        }

        llvm::APFloat::convertFromAPInt(v65, &v60, v55, 1);
        if (llvm::APFloat::compare(v65, &v66) == 1)
        {
LABEL_152:
          llvm::APFloat::Storage::~Storage(v65);
LABEL_153:
          v54 = *(a2 + 24);
          v57 = (*(v29 + 8) & 0xFFFFFFFFFFFFFFF8);
          v56 = mlir::IntegerAttr::get(v57, &v60);
          v65[0] = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type,mlir::IntegerAttr>((a3 + 1), v54, &v57, &v56);
          mlir::RewriterBase::replaceOpWithNewOp<mlir::arith::CmpIOp,mlir::arith::CmpIPredicate &,mlir::Value &,mlir::arith::ConstantOp>(a3, a2, &v63, &v64, v65);
LABEL_154:
          v13 = 1;
          goto LABEL_155;
        }

        if (v39 <= 4)
        {
          if (v39 > 1)
          {
            if (v39 == 2)
            {
              v49 = &v66;
              if (v66 == &llvm::semPPCDoubleDouble)
              {
                v49 = v67;
              }

              if ((*(v49 + 20) & 8) != 0)
              {
                goto LABEL_152;
              }

              v46 = 3;
            }

            else if (v39 == 3)
            {
              v45 = &v66;
              if (v66 == &llvm::semPPCDoubleDouble)
              {
                v45 = v67;
              }

              if ((*(v45 + 20) & 8) == 0)
              {
                goto LABEL_152;
              }

              v46 = 2;
            }

            else
            {
              v51 = &v66;
              if (v66 == &llvm::semPPCDoubleDouble)
              {
                v51 = v67;
              }

              if ((*(v51 + 20) & 8) == 0)
              {
                goto LABEL_152;
              }

              v46 = 5;
            }

            goto LABEL_151;
          }

          if (!v39)
          {
            goto LABEL_158;
          }

          goto LABEL_146;
        }

        if (v39 <= 6)
        {
          if (v39 == 5)
          {
            v48 = &v66;
            if (v66 == &llvm::semPPCDoubleDouble)
            {
              v48 = v67;
            }

            if ((*(v48 + 20) & 8) != 0)
            {
              goto LABEL_152;
            }

            v46 = 4;
            goto LABEL_151;
          }

          v53 = &v66;
          if (v66 == &llvm::semPPCDoubleDouble)
          {
            v53 = v67;
          }

          if ((*(v53 + 20) & 8) == 0)
          {
            v46 = 7;
            goto LABEL_151;
          }
        }

        else
        {
          if (v39 != 7)
          {
            if (v39 == 8)
            {
              v47 = &v66;
              if (v66 == &llvm::semPPCDoubleDouble)
              {
                v47 = v67;
              }

              if ((*(v47 + 20) & 8) == 0)
              {
                goto LABEL_152;
              }

              goto LABEL_146;
            }

            v52 = &v66;
            if (v66 == &llvm::semPPCDoubleDouble)
            {
              v52 = v67;
            }

            if ((*(v52 + 20) & 8) != 0)
            {
LABEL_146:
              LOBYTE(v56) = 1;
LABEL_159:
              LODWORD(v57) = 1;
              mlir::RewriterBase::replaceOpWithNewOp<mlir::arith::ConstantIntOp,BOOL,int>(a3, a2, &v56, &v57);
              llvm::APFloat::Storage::~Storage(v65);
              goto LABEL_154;
            }

            v46 = 8;
LABEL_151:
            v63 = v46;
            goto LABEL_152;
          }

          v50 = &v66;
          if (v66 == &llvm::semPPCDoubleDouble)
          {
            v50 = v67;
          }

          if ((*(v50 + 20) & 8) == 0)
          {
            goto LABEL_152;
          }
        }

LABEL_158:
        LOBYTE(v56) = 0;
        goto LABEL_159;
      }
    }

    v28 = 0;
    goto LABEL_43;
  }

LABEL_18:
  v13 = 0;
LABEL_19:
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::arith::ConstantIntOp,BOOL,int>(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int *a4)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 24);
  v9 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantIntOp>(a1 + 8, *(**v8 + 32));
  v15[0] = v8;
  v15[1] = v9;
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
  mlir::arith::ConstantIntOp::build((a1 + 8), v15, *a3, *a4);
  v10 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert((a1 + 8), v10);
  if (v10)
  {
    if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id && (v11 = (*(v10 - 1) & 0xFFFFFFFFFFFFFFF8), *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
    {
      if (v11[2] >> 30)
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  mlir::OperationState::~OperationState(v15);
  v12 = *(*a1 + 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12(a1, a2, v10);
}

uint64_t CmpFIntToFPConst::convertToIntegerPredicate(uint64_t a1, int a2)
{
  result = 0;
  if (a1 > 7)
  {
    if (a1 <= 10)
    {
      if (a1 == 8)
      {
        return result;
      }

      if (a1 != 9)
      {
        goto LABEL_5;
      }

LABEL_9:
      v4 = a2 == 0;
      v5 = 4;
      v6 = 8;
      goto LABEL_17;
    }

    if (a1 != 11)
    {
      if (a1 != 12)
      {
        return 1;
      }

LABEL_15:
      v4 = a2 == 0;
      v5 = 3;
      v6 = 7;
      goto LABEL_17;
    }
  }

  else
  {
    if (a1 <= 3)
    {
      if (a1 == 1)
      {
        return result;
      }

      if (a1 != 2)
      {
LABEL_5:
        v4 = a2 == 0;
        v5 = 5;
        v6 = 9;
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    if (a1 != 4)
    {
      if (a1 != 5)
      {
        return 1;
      }

      goto LABEL_15;
    }
  }

  v4 = a2 == 0;
  v5 = 2;
  v6 = 6;
LABEL_17:
  if (v4)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::arith::CmpIOp,mlir::arith::CmpIPredicate &,mlir::Value &,mlir::arith::ConstantOp>(void **a1, uint64_t a2, unint64_t *a3, uint64_t *a4, void *a5)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 24);
  v11 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::CmpIOp>((a1 + 1), *(**v10 + 32));
  v18[0] = v10;
  v18[1] = v11;
  v18[2] = v19;
  v18[3] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[4] = v21;
  v20[5] = 0x400000000;
  v21[8] = 4;
  v21[9] = v22;
  v21[10] = 0x100000000;
  v22[1] = v23;
  v22[2] = 0x100000000;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v23[4] = 0;
  v23[6] = 0;
  mlir::arith::CmpIOp::build(a1 + 1, v18, *a3, *a4, *a5 - 16);
  v12 = mlir::Operation::create(v18);
  mlir::OpBuilder::insert((a1 + 1), v12);
  v13 = *(*(v12 + 6) + 16);
  mlir::OperationState::~OperationState(v18);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = (*a1)[1];
  v16 = *MEMORY[0x277D85DE8];

  return v15(a1, a2, v14);
}

char *mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type,mlir::IntegerAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t **a4)
{
  v26[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantOp>(a1, *(**a2 + 32));
  v20[0] = a2;
  v20[1] = v8;
  v20[2] = &v21;
  v20[3] = 0x400000000;
  v22[0] = v23;
  v22[1] = 0x400000000;
  v23[4] = v24;
  v23[5] = 0x400000000;
  v24[8] = 4;
  v24[9] = v25;
  v24[10] = 0x100000000;
  v25[1] = v26;
  v25[2] = 0x100000000;
  v26[1] = 0;
  v26[2] = 0;
  v26[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v26[4] = 0;
  v26[6] = 0;
  v9 = *a3;
  v10 = *a4;
  if (*a4)
  {
    v11 = *v10;
    v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
  }

  else
  {
    v13 = 0;
  }

  v19 = v9;
  v14 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(v20);
  *v14 = v10;
  v14[1] = v13;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v22, &v19, v20);
  v15 = mlir::Operation::create(v20);
  mlir::OpBuilder::insert(a1, v15);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantIntOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.constant";
    v6[3] = 14;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<CmpFIntToFPConst>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = CmpFIntToFPConst]";
  v6 = 78;
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

void anonymous namespace::RedundantSelectFalse::~RedundantSelectFalse(_anonymous_namespace_::RedundantSelectFalse *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::RedundantSelectFalse::matchAndRewrite(_anonymous_namespace_::RedundantSelectFalse *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v37[4] = *MEMORY[0x277D85DE8];
  v36[0] = v37;
  v36[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v36, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 9);
  v7 = v6[11];
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = v9 + 120;
    if (v9 == -120)
    {
LABEL_9:
      v11 = *(a3 + 2);
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_24;
      }

      v12 = *(v5 + 3);
LABEL_23:
      (*(*v11 + 88))(v11, v12, v13, &v28);
LABEL_24:
      v15 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  if (*(*(v10 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
  {
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_24;
    }

    v12 = *(v10 + 24);
    goto LABEL_23;
  }

  if ((*(v10 + 46) & 0x80) != 0)
  {
    v14 = *(v10 + 72);
  }

  else
  {
    v14 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v36, v10);
  if (v6[3] != *(v14 + 24))
  {
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_24;
    }

    v12 = *(a2 + 3);
    goto LABEL_23;
  }

  v18 = *(*(v36[0] + 1) + 24);
  v28 = *(*v36[0] + 24);
  v29 = v18;
  v19 = mlir::FusedLoc::get(&v28, 2, 0, *(a3 + 1));
  v33 = v35;
  v34 = 0x400000000;
  v31[0] = v32;
  v31[1] = 0x400000000;
  v28 = v30;
  v29 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v31, v6[3]);
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v31, v6[7]);
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v31, *(v14 + 88));
  v26[0] = v27;
  v26[1] = 0x400000000;
  if (*(v5 + 9))
  {
    v20 = v5 - 16;
  }

  else
  {
    v20 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v26, *(v20 + 1) & 0xFFFFFFFFFFFFFFF8);
  v21 = mlir::OpBuilder::create<mlir::arith::SelectOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v19, v26, v31, &v28);
  if (v26[0] != v27)
  {
    free(v26[0]);
  }

  if (v28 != v30)
  {
    free(v28);
  }

  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  if (*(v21 + 9))
  {
    v22 = (v21 - 16);
  }

  else
  {
    v22 = 0;
  }

  v28 = v30;
  v29 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v28, v22, 0, v22, 1);
  v23 = v28;
  if (v29)
  {
    v24 = 8 * v29;
    do
    {
      v25 = *v23++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v33, v25);
      v24 -= 8;
    }

    while (v24);
    v23 = v28;
  }

  if (v23 != v30)
  {
    free(v23);
  }

  (**a3)(a3, a2, v33 & 0xFFFFFFFFFFFFFFF9, v34);
  if (v33 != v35)
  {
    free(v33);
  }

  v15 = 1;
LABEL_25:
  if (v36[0] != v37)
  {
    free(v36[0]);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

char *mlir::OpBuilder::create<mlir::arith::SelectOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v33[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::SelectOp>(a1, *(**a2 + 32));
  v22[0] = a2;
  v22[1] = v10;
  v23[0] = &v24;
  v23[1] = 0x400000000;
  v25[0] = &v26;
  v25[1] = 0x400000000;
  v27[0] = &v28;
  v27[1] = 0x400000000;
  v29 = 4;
  v30 = v32;
  v31 = 0x100000000;
  v32[1] = v33;
  v32[2] = 0x100000000;
  v33[1] = 0;
  v33[2] = 0;
  v33[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v33[4] = 0;
  v33[6] = 0;
  v11 = *a3;
  v12 = *(a3 + 2);
  v13 = v11 & 0xFFFFFFFFFFFFFFF9;
  v14 = *a4;
  v15 = *(a4 + 2);
  v16 = *a5;
  v17 = *(a5 + 8);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v23, v14 & 0xFFFFFFFFFFFFFFF9, 0, v14 & 0xFFFFFFFFFFFFFFF9, v15);
  v29 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v27, v16, &v16[16 * v17]);
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(v25, v13 | 2, 0, v13 | 2, v12);
  v18 = mlir::Operation::create(v22);
  mlir::OpBuilder::insert(a1, v18);
  if (*(*(v18 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
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

const char *llvm::detail::getTypeNameImpl<anonymous namespace::RedundantSelectFalse>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::RedundantSelectFalse]";
  v6 = 105;
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

void anonymous namespace::RedundantSelectTrue::~RedundantSelectTrue(_anonymous_namespace_::RedundantSelectTrue *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::RedundantSelectTrue::matchAndRewrite(_anonymous_namespace_::RedundantSelectTrue *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v39[4] = *MEMORY[0x277D85DE8];
  v38[0] = v39;
  v38[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v38, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 9);
  v7 = *(v6 + 56);
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = v9 + 120;
    if (v9 == -120)
    {
LABEL_9:
      v11 = *(a3 + 2);
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_26;
      }

      v12 = *(v5 + 3);
LABEL_25:
      (*(*v11 + 88))(v11, v12, v13, &v30);
LABEL_26:
      v17 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  if (*(*(v10 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
  {
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_26;
    }

    v12 = *(v10 + 24);
    goto LABEL_25;
  }

  if ((*(v10 + 46) & 0x80) != 0)
  {
    v14 = *(v10 + 72);
    v15 = v14 + 32;
  }

  else
  {
    v14 = 0;
    v15 = 32;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v38, v10);
  if ((*(v5 + 46) & 0x80) != 0)
  {
    v16 = *(v5 + 9);
  }

  else
  {
    v16 = 0;
  }

  if (*(v6 + 24) != *(v14 + 24))
  {
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_26;
    }

    v12 = *(a2 + 3);
    goto LABEL_25;
  }

  v20 = *(*(v38[0] + 1) + 24);
  v30 = *(*v38[0] + 24);
  v31 = v20;
  v27 = mlir::FusedLoc::get(&v30, 2, 0, *(a3 + 1));
  v35 = v37;
  v36 = 0x400000000;
  v33[0] = v34;
  v33[1] = 0x400000000;
  v30 = v32;
  v31 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v33, *(v6 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v33, *(v15 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v33, *(v16 + 88));
  v28[0] = v29;
  v28[1] = 0x400000000;
  if (*(v5 + 9))
  {
    v21 = v5 - 16;
  }

  else
  {
    v21 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v28, *(v21 + 1) & 0xFFFFFFFFFFFFFFF8);
  v22 = mlir::OpBuilder::create<mlir::arith::SelectOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v27, v28, v33, &v30);
  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  if (v33[0] != v34)
  {
    free(v33[0]);
  }

  if (*(v22 + 9))
  {
    v23 = (v22 - 16);
  }

  else
  {
    v23 = 0;
  }

  v30 = v32;
  v31 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v30, v23, 0, v23, 1);
  v24 = v30;
  if (v31)
  {
    v25 = 8 * v31;
    do
    {
      v26 = *v24++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v35, v26);
      v25 -= 8;
    }

    while (v25);
    v24 = v30;
  }

  if (v24 != v32)
  {
    free(v24);
  }

  (**a3)(a3, a2, v35 & 0xFFFFFFFFFFFFFFF9, v36);
  if (v35 != v37)
  {
    free(v35);
  }

  v17 = 1;
LABEL_27:
  if (v38[0] != v39)
  {
    free(v38[0]);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::RedundantSelectTrue>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::RedundantSelectTrue]";
  v6 = 104;
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

void anonymous namespace::SelectNotCond::~SelectNotCond(_anonymous_namespace_::SelectNotCond *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SelectNotCond::matchAndRewrite(_anonymous_namespace_::SelectNotCond *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v52[4] = *MEMORY[0x277D85DE8];
  v51[0] = v52;
  v51[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v6 + 24 * *(v6 + 16);
    v9 = (v8 + 120);
    if (v8 == -120)
    {
LABEL_9:
      v10 = *(a3 + 2);
      if (!v10 || v10[2] != 1)
      {
        goto LABEL_27;
      }

      v11 = *(v5 + 3);
      goto LABEL_25;
    }
  }

  else
  {
    v9 = (v6 + 16 * v7 + 16);
  }

  if (*(v9[6] + 16) != &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_27;
    }

    v12 = v9[3];
    goto LABEL_25;
  }

  v13 = v9[9];
  v14 = *(v13 + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = (v16 + 120);
    if (v16 == -120)
    {
LABEL_22:
      v10 = *(a3 + 2);
      if (!v10 || v10[2] != 1)
      {
        goto LABEL_27;
      }

      v18 = v9[3];
      goto LABEL_25;
    }
  }

  else
  {
    v17 = (v14 + 16 * v15 + 16);
  }

  v43 = 0;
  v48 = &v43;
  if ((*(v17 - 1) & 7) == 7)
  {
LABEL_71:
    v37 = *(a3 + 2);
    if (!v37 || v37[2] != 1)
    {
      goto LABEL_27;
    }

    v38 = v17[3];
    v19 = *(*v37 + 88);
    goto LABEL_26;
  }

  v23 = *(v17 - 1) & 7;
  if (v23 == 6)
  {
    v24 = &v17[3 * *v17 - 2];
    v25 = v24 + 120;
    if (v24 == -120)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v25 = &v17[2 * v23];
  }

  if (!mlir::detail::constant_op_binder<mlir::Attribute>::match(&v48, v25))
  {
    goto LABEL_71;
  }

  v26 = v43;
  {
    goto LABEL_27;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, v17);
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, v9);
  if ((*(v5 + 46) & 0x80) != 0)
  {
    v27 = *(v5 + 9);
    v28 = v27 + 32;
  }

  else
  {
    v27 = 0;
    v28 = 32;
  }

  getIntOrSplatIntValue(&v43, v26);
  if ((v45[0] & 1) == 0)
  {
    goto LABEL_74;
  }

  getIntOrSplatIntValue(&v48, v26);
  isAllOnes = llvm::APInt::isAllOnes(&v48);
  if (v50[0] == 1 && v49 >= 0x41 && v48)
  {
    MEMORY[0x25F891010](v48, 0x1000C8000313F17);
  }

  if (v44 >= 0x41 && v43)
  {
    MEMORY[0x25F891010](v43, 0x1000C8000313F17);
  }

  if (!isAllOnes)
  {
LABEL_74:
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_27;
    }

    v39 = *(a2 + 3);
LABEL_25:
    v19 = *(*v10 + 88);
LABEL_26:
    v19();
LABEL_27:
    v20 = 0;
    goto LABEL_28;
  }

  v30 = *(*(v51[0] + 1) + 24);
  v43 = *(*v51[0] + 24);
  v44 = v30;
  v40 = mlir::FusedLoc::get(&v43, 2, 0, *(a3 + 1));
  v48 = v50;
  v49 = 0x400000000;
  v46[0] = v47;
  v46[1] = 0x400000000;
  v43 = v45;
  v44 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v46, *(v13 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v46, *(v27 + 88));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v46, *(v28 + 24));
  v41[0] = v42;
  v41[1] = 0x400000000;
  if (*(v5 + 9))
  {
    v31 = v5 - 16;
  }

  else
  {
    v31 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v41, *(v31 + 1) & 0xFFFFFFFFFFFFFFF8);
  v32 = mlir::OpBuilder::create<mlir::arith::SelectOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v40, v41, v46, &v43);
  if (v41[0] != v42)
  {
    free(v41[0]);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  if (v46[0] != v47)
  {
    free(v46[0]);
  }

  if (*(v32 + 9))
  {
    v33 = (v32 - 16);
  }

  else
  {
    v33 = 0;
  }

  v43 = v45;
  v44 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v43, v33, 0, v33, 1);
  v34 = v43;
  if (v44)
  {
    v35 = 8 * v44;
    do
    {
      v36 = *v34++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v48, v36);
      v35 -= 8;
    }

    while (v35);
    v34 = v43;
  }

  if (v34 != v45)
  {
    free(v34);
  }

  (**a3)(a3, a2, v48 & 0xFFFFFFFFFFFFFFF9, v49);
  if (v48 != v50)
  {
    free(v48);
  }

  v20 = 1;
LABEL_28:
  if (v51[0] != v52)
  {
    free(v51[0]);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}