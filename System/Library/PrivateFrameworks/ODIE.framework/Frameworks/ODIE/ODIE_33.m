BOOL mlir::ODIE::Compiler::CoreML::SelectOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v13 = 0;
  v14[0] = &v15;
  v12[0] = &v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v23, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v15 = __src;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src))
  {
    return 0;
  }

  v13 = __src;
  if ((*(*a1 + 120))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v11 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v8 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v8)) && (__src = v8, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v10), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v14, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v12, v5, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v10, v6, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::SelectOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v41[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, ",", 1uLL);
  }

  else
  {
    *v11 = 44;
    ++*(v10 + 4);
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, ":", 1uLL);
  }

  else
  {
    *v17 = 58;
    ++*(v16 + 4);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, "(", 1uLL);
  }

  else
  {
    *v21 = 40;
    ++*(v20 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ",", 1uLL);
  }

  else
  {
    *v23 = 44;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ",", 1uLL);
  }

  else
  {
    *v27 = 44;
    ++*(v26 + 4);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (*(v30 + 3) == v31)
  {
    llvm::raw_ostream::write(v30, ")", 1uLL);
  }

  else
  {
    *v31 = 41;
    ++*(v30 + 4);
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (v33 >= *(v32 + 3))
  {
    llvm::raw_ostream::write(v32, 32);
  }

  else
  {
    *(v32 + 4) = v33 + 1;
    *v33 = 32;
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) - v35 > 1uLL)
  {
    *v35 = 15917;
    *(v34 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v34, "->", 2uLL);
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (v37 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 32);
  }

  else
  {
    *(v36 + 4) = v37 + 1;
    *v37 = 32;
  }

  v38 = *this - 16;
  if (!*(*this + 9))
  {
    v38 = 0;
  }

  (*(*a2 + 32))(a2, *(v38 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v41, 0);
  v40 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::CoreML::SetMemberOp::setPropertiesFromAttr(uint64_t **a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "member", 6uLL);
    if (v9)
    {
      v10 = *(v8 + 8);
      if (v10)
      {
        v11 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*(v8 + 8));
        if (!v11)
        {
          a3(&v19, a4);
          if (v19)
          {
            if (v19)
            {
              v17 = 0;
              v18 = v10;
              v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v17, 1);
              v15 = v21 + 24 * v22;
              v16 = *v14;
              *(v15 + 16) = *(v14 + 16);
              *v15 = v16;
              ++v22;
            }
          }

          goto LABEL_4;
        }

        *a1 = v11;
        a1[1] = v12;
      }
    }

    result = 1;
    goto LABEL_10;
  }

  a3(&v19, a4);
  if (v19)
  {
    mlir::Diagnostic::operator<<<42ul>(v20, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  result = 0;
LABEL_10:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::SetMemberOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x300000000;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v12 = 261;
    v11[0] = "member";
    v11[1] = 6;
    v6 = mlir::StringAttr::get(v5, v11, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v6, v3);
    v7 = v13;
    if (v14)
    {
      v8 = mlir::DictionaryAttr::get(a1, v13, v14);
      v7 = v13;
    }

    else
    {
      v8 = 0;
    }

    if (v7 != v15)
    {
      free(v7);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t mlir::ODIE::Compiler::CoreML::SetMemberOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::CoreML::SetMemberOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 6 && (*a3 == 1651336557 ? (v4 = *(a3 + 4) == 29285) : (v4 = 0), v4))
  {
    v6 = *a2 & 0xFFFFFFFFFFFFFF00;
    v5 = *a2;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

uint64_t *mlir::ODIE::Compiler::CoreML::SetMemberOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == 6 && *a2 == 1651336557 && *(a2 + 4) == 29285)
  {
    v5 = result;
    if (a4)
    {
      result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a4);
    }

    else
    {
      result = 0;
      v6 = 0;
    }

    *v5 = result;
    v5[1] = v6;
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::SetMemberOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "member";
    v7[1] = 6;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::SetMemberOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(v8, "member", 6, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::SetMemberOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::SetMemberOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 2 * ((*(v2 + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v9[0] = v2;
    v4 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(v3, "member", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v9) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps26(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  }

  else
  {
    v7 = "requires attribute 'member'";
    v8 = 259;
    mlir::Operation::emitOpError(v2, &v7, v9);
    v4 = (v10 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void mlir::ODIE::Compiler::CoreML::ShrinkDimsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v9);
}

BOOL mlir::ODIE::Compiler::CoreML::ShrinkDimsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    v11 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v11);
    v14 = v12;
    if (v12)
    {
      v12 = (*(v13 + 8))(v13, v12);
    }

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    v7 = 1;
    if (v10 != v15)
    {
      v16 = "failed to verify that Result 0 element type must match element type of operand 0.";
      v17 = 259;
      mlir::Operation::emitOpError(*this, &v16, v18);
      v7 = (v18[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::ShrinkDimsOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v15[0] = v16;
  v15[1] = 1;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12[0] = v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v9 = 0;
  v10[0] = &v11;
  v8[0] = &v9;
  v8[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v16, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v11 = __src;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src) && (v9 = __src, ((*(*a1 + 296))(a1) & 1) != 0) && (v20 = 257, ((*(*a1 + 400))(a1, "to", 2, &__src) & 1) != 0) && (v7 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v7)) && (__src = v7, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v19), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v15, v10, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v8, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::ShrinkDimsOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v33[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++*(v16 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++*(v18 + 4);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ")", 1uLL);
  }

  else
  {
    *v23 = 41;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) - v27 > 1uLL)
  {
    *v27 = 28532;
    *(v26 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "to", 2uLL);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = *this - 16;
  if (!*(*this + 9))
  {
    v30 = 0;
  }

  (*(*a2 + 32))(a2, *(v30 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v33, 0);
  v32 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::SigmoidOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreML::SigmoidOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    v11 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v11);
    v14 = v12;
    if (v12)
    {
      v12 = (*(v13 + 8))(v13, v12);
    }

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    v7 = 1;
    if (v10 != v15)
    {
      v16 = "failed to verify that Result 0 element type must match element type of operand 0.";
      v17 = 259;
      mlir::Operation::emitOpError(*this, &v16, v18);
      v7 = (v18[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::SigmoidOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v9 = __src;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

void mlir::ODIE::Compiler::CoreML::SigmoidOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 15917;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "->", 2uLL);
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = *this - 16;
  if (!*(*this + 9))
  {
    v18 = 0;
  }

  (*(*a2 + 32))(a2, *(v18 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v21, 0);
  v20 = *MEMORY[0x277D85DE8];
}

BOOL mlir::ODIE::Compiler::CoreML::SiluOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    v11 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v11);
    v14 = v12;
    if (v12)
    {
      v12 = (*(v13 + 8))(v13, v12);
    }

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    v7 = 1;
    if (v10 != v15)
    {
      v16 = "failed to verify that Result 0 element type must match element type of operand 0.";
      v17 = 259;
      mlir::Operation::emitOpError(*this, &v16, v18);
      v7 = (v18[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::SiluOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v9 = __src;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

void mlir::ODIE::Compiler::CoreML::SiluOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 15917;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "->", 2uLL);
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = *this - 16;
  if (!*(*this + 9))
  {
    v18 = 0;
  }

  (*(*a2 + 32))(a2, *(v18 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v21, 0);
  v20 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::SinOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreML::SinOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    v11 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v11);
    v14 = v12;
    if (v12)
    {
      v12 = (*(v13 + 8))(v13, v12);
    }

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    v7 = 1;
    if (v10 != v15)
    {
      v16 = "failed to verify that Result 0 element type must match element type of operand 0.";
      v17 = 259;
      mlir::Operation::emitOpError(*this, &v16, v18);
      v7 = (v18[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::SinOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v9 = __src;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

void mlir::ODIE::Compiler::CoreML::SinOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 15917;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "->", 2uLL);
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = *this - 16;
  if (!*(*this + 9))
  {
    v18 = 0;
  }

  (*(*a2 + 32))(a2, *(v18 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v21, 0);
  v20 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::SinhOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreML::SinhOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    v11 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v11);
    v14 = v12;
    if (v12)
    {
      v12 = (*(v13 + 8))(v13, v12);
    }

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    v7 = 1;
    if (v10 != v15)
    {
      v16 = "failed to verify that Result 0 element type must match element type of operand 0.";
      v17 = 259;
      mlir::Operation::emitOpError(*this, &v16, v18);
      v7 = (v18[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::SinhOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v9 = __src;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

void mlir::ODIE::Compiler::CoreML::SinhOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 15917;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "->", 2uLL);
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = *this - 16;
  if (!*(*this + 9))
  {
    v18 = 0;
  }

  (*(*a2 + 32))(a2, *(v18 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v21, 0);
  v20 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::SliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __src = a3;
  v10 = a5;
  v11 = a4;
  v8 = a7;
  v9 = a6;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v11, 0, &v11, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v10, 0, &v10, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v9, 0, &v9, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v8, 0, &v8, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v13);
}

BOOL mlir::ODIE::Compiler::CoreML::SliceOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v16 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = mlir::Type::cast<mlir::ShapedType>((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
    (*(v4 + 24))(v4, v3);
    v6 = v5;
    v7 = mlir::Type::cast<mlir::ShapedType>((*(*this - 1) & 0xFFFFFFFFFFFFFFF8));
    (*(v8 + 24))(v8, v7);
    v9 = 1;
    if (v6 != v10)
    {
      v13 = "failed to verify that Result 0 and operand 0 must have the same rank.";
      v14 = 259;
      mlir::Operation::emitOpError(*this, &v13, v15);
      v9 = (v15[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL mlir::ODIE::Compiler::CoreML::SliceOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v28[0] = v29;
  v28[1] = 1;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v25[0] = v26;
  v25[1] = 1;
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  v17[1] = 1;
  v18 = 0;
  v16 = 0;
  v17[0] = &v18;
  v15[0] = &v16;
  v15[1] = 1;
  v13[1] = 1;
  v14 = 0;
  v12 = 0;
  v13[0] = &v14;
  v11[0] = &v12;
  v11[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v29, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v26, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v23, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v7 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v18 = __src;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src))
  {
    return 0;
  }

  v16 = __src;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src))
  {
    return 0;
  }

  v14 = __src;
  if ((*(*a1 + 120))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v12 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v9 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v9)) && (__src = v9, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v11), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v28, v17, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v25, v15, v5, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v13, v6, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v11, v7, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::SliceOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v49[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, ",", 1uLL);
  }

  else
  {
    *v11 = 44;
    ++*(v10 + 4);
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, ",", 1uLL);
  }

  else
  {
    *v15 = 44;
    ++*(v14 + 4);
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 120));
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, ":", 1uLL);
  }

  else
  {
    *v21 = 58;
    ++*(v20 + 4);
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (*(v24 + 3) == v25)
  {
    llvm::raw_ostream::write(v24, "(", 1uLL);
  }

  else
  {
    *v25 = 40;
    ++*(v24 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ",", 1uLL);
  }

  else
  {
    *v27 = 44;
    ++*(v26 + 4);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (*(v30 + 3) == v31)
  {
    llvm::raw_ostream::write(v30, ",", 1uLL);
  }

  else
  {
    *v31 = 44;
    ++*(v30 + 4);
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (v33 >= *(v32 + 3))
  {
    llvm::raw_ostream::write(v32, 32);
  }

  else
  {
    *(v32 + 4) = v33 + 1;
    *v33 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) == v35)
  {
    llvm::raw_ostream::write(v34, ",", 1uLL);
  }

  else
  {
    *v35 = 44;
    ++*(v34 + 4);
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (v37 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 32);
  }

  else
  {
    *(v36 + 4) = v37 + 1;
    *v37 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8);
  v38 = (*(*a2 + 16))(a2);
  v39 = *(v38 + 4);
  if (*(v38 + 3) == v39)
  {
    llvm::raw_ostream::write(v38, ")", 1uLL);
  }

  else
  {
    *v39 = 41;
    ++*(v38 + 4);
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = *(v40 + 4);
  if (v41 >= *(v40 + 3))
  {
    llvm::raw_ostream::write(v40, 32);
  }

  else
  {
    *(v40 + 4) = v41 + 1;
    *v41 = 32;
  }

  v42 = (*(*a2 + 16))(a2);
  v43 = *(v42 + 4);
  if (*(v42 + 3) - v43 > 1uLL)
  {
    *v43 = 15917;
    *(v42 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v42, "->", 2uLL);
  }

  v44 = (*(*a2 + 16))(a2);
  v45 = *(v44 + 4);
  if (v45 >= *(v44 + 3))
  {
    llvm::raw_ostream::write(v44, 32);
  }

  else
  {
    *(v44 + 4) = v45 + 1;
    *v45 = 32;
  }

  v46 = *this - 16;
  if (!*(*this + 9))
  {
    v46 = 0;
  }

  (*(*a2 + 32))(a2, *(v46 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v49, 0);
  v48 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::SliceUpdateOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __src = a3;
  v12 = a5;
  v13 = a4;
  v10 = a7;
  v11 = a6;
  v9 = a8;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v13, 0, &v13, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v12, 0, &v12, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v11, 0, &v11, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v10, 0, &v10, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v9, 0, &v9, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v15);
}

void mlir::ODIE::Compiler::CoreML::SliceUpdateOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = a6;
  v16 = a5;
  v13 = a8;
  v14 = a7;
  v12 = a9;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v16, 0, &v16, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v15, 0, &v15, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v14, 0, &v14, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v13, 0, &v13, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v12, 0, &v12, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

uint64_t mlir::ODIE::Compiler::CoreML::SliceUpdateOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) || (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v13 = 0;
    goto LABEL_17;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v16 = "failed to verify that Result 0 element type must match element type of operand 0.";
LABEL_23:
    v17 = v16;
    v18 = 259;
    mlir::Operation::emitOpError(*this, &v17, &v19);
    v13 = v21 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
    goto LABEL_17;
  }

  v4 = mlir::getElementTypeOrSelf(*this - 16);
  if (v4 != mlir::getElementTypeOrSelf(*(*(*this + 9) + 152)))
  {
    v16 = "failed to verify that Result 0 element type must match element type of operand 4.";
    goto LABEL_23;
  }

  if ((mlir::ODIE::Compiler::CoreML::verifyResultAndOperandHaveSameShapeOrUnknown(*this, 0, 0) & 1) == 0)
  {
    v16 = "failed to verify that Result 0 and operand 0 must have the same shape.";
    goto LABEL_23;
  }

  v5 = *this;
  v19 = 0x200000001;
  v20 = 3;
  if ((mlir::ODIE::Compiler::CoreML::verifyOperandsHaveSameShapeOrUnknown(v5, &v19, 3) & 1) == 0)
  {
    v16 = "failed to verify that Operands should have same shape.";
    goto LABEL_23;
  }

  v6 = mlir::Type::cast<mlir::ShapedType>((*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8));
  (*(v7 + 24))(v7, v6);
  v9 = v8;
  v10 = mlir::Type::cast<mlir::ShapedType>((*(*this - 1) & 0xFFFFFFFFFFFFFFF8));
  (*(v11 + 24))(v11, v10);
  if (v9 != v12)
  {
    v16 = "failed to verify that Result 0 and operand 4 must have the same rank.";
    goto LABEL_23;
  }

  v13 = 1;
LABEL_17:
  v14 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::SliceUpdateOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  v33[0] = v34;
  v33[1] = 1;
  memset(v31, 0, sizeof(v31));
  v32 = 0;
  v30[0] = v31;
  v30[1] = 1;
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  v27[0] = v28;
  v27[1] = 1;
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v24[0] = v25;
  v24[1] = 1;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v21[0] = v22;
  v21[1] = 1;
  v19[1] = 1;
  v20 = 0;
  v18 = 0;
  v19[0] = &v20;
  v17[0] = &v18;
  v17[1] = 1;
  v15[1] = 1;
  v16 = 0;
  v14 = 0;
  v15[0] = &v16;
  v13[0] = &v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v11[0] = &v12;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v34, 1) & 1) == 0)
  {
    return 0;
  }

  v38 = 257;
  if (((*(*a1 + 400))(a1, "with", 4, &__src) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v31, 1) & 1) == 0)
  {
    return 0;
  }

  v38 = 257;
  if (((*(*a1 + 400))(a1, "at", 2, &__src) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v28, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v7 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v25, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v22, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v20 = __src;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v18 = __src;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src))
  {
    return 0;
  }

  v16 = __src;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src))
  {
    return 0;
  }

  v14 = __src;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src) && (v12 = __src, ((*(*a1 + 296))(a1) & 1) != 0) && (v38 = 257, ((*(*a1 + 400))(a1, "to", 2, &__src) & 1) != 0) && (v10 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v10)) && (__src = v10, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v37), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v33, v19, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v27, v15, v6, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v24, v13, v7, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v21, v11, v8, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v30, v17, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::SliceUpdateOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v65[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 3uLL)
  {
    *v9 = 1752459639;
    *(v8 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v8, "with", 4uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 152));
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 29793;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "at", 2uLL);
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, "(", 1uLL);
  }

  else
  {
    *v19 = 40;
    ++*(v18 + 4);
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, ",", 1uLL);
  }

  else
  {
    *v21 = 44;
    ++*(v20 + 4);
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (*(v24 + 3) == v25)
  {
    llvm::raw_ostream::write(v24, ",", 1uLL);
  }

  else
  {
    *v25 = 44;
    ++*(v24 + 4);
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (v27 >= *(v26 + 3))
  {
    llvm::raw_ostream::write(v26, 32);
  }

  else
  {
    *(v26 + 4) = v27 + 1;
    *v27 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 120));
  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (*(v28 + 3) == v29)
  {
    llvm::raw_ostream::write(v28, ")", 1uLL);
  }

  else
  {
    *v29 = 41;
    ++*(v28 + 4);
  }

  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (v31 >= *(v30 + 3))
  {
    llvm::raw_ostream::write(v30, 32);
  }

  else
  {
    *(v30 + 4) = v31 + 1;
    *v31 = 32;
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (*(v32 + 3) == v33)
  {
    llvm::raw_ostream::write(v32, ":", 1uLL);
  }

  else
  {
    *v33 = 58;
    ++*(v32 + 4);
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (v35 >= *(v34 + 3))
  {
    llvm::raw_ostream::write(v34, 32);
  }

  else
  {
    *(v34 + 4) = v35 + 1;
    *v35 = 32;
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (*(v36 + 3) == v37)
  {
    llvm::raw_ostream::write(v36, "(", 1uLL);
  }

  else
  {
    *v37 = 40;
    ++*(v36 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v38 = (*(*a2 + 16))(a2);
  v39 = *(v38 + 4);
  if (*(v38 + 3) == v39)
  {
    llvm::raw_ostream::write(v38, ",", 1uLL);
  }

  else
  {
    *v39 = 44;
    ++*(v38 + 4);
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = *(v40 + 4);
  if (v41 >= *(v40 + 3))
  {
    llvm::raw_ostream::write(v40, 32);
  }

  else
  {
    *(v40 + 4) = v41 + 1;
    *v41 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8);
  v42 = (*(*a2 + 16))(a2);
  v43 = *(v42 + 4);
  if (*(v42 + 3) == v43)
  {
    llvm::raw_ostream::write(v42, ",", 1uLL);
  }

  else
  {
    *v43 = 44;
    ++*(v42 + 4);
  }

  v44 = (*(*a2 + 16))(a2);
  v45 = *(v44 + 4);
  if (v45 >= *(v44 + 3))
  {
    llvm::raw_ostream::write(v44, 32);
  }

  else
  {
    *(v44 + 4) = v45 + 1;
    *v45 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v46 = (*(*a2 + 16))(a2);
  v47 = *(v46 + 4);
  if (*(v46 + 3) == v47)
  {
    llvm::raw_ostream::write(v46, ",", 1uLL);
  }

  else
  {
    *v47 = 44;
    ++*(v46 + 4);
  }

  v48 = (*(*a2 + 16))(a2);
  v49 = *(v48 + 4);
  if (v49 >= *(v48 + 3))
  {
    llvm::raw_ostream::write(v48, 32);
  }

  else
  {
    *(v48 + 4) = v49 + 1;
    *v49 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v50 = (*(*a2 + 16))(a2);
  v51 = *(v50 + 4);
  if (*(v50 + 3) == v51)
  {
    llvm::raw_ostream::write(v50, ",", 1uLL);
  }

  else
  {
    *v51 = 44;
    ++*(v50 + 4);
  }

  v52 = (*(*a2 + 16))(a2);
  v53 = *(v52 + 4);
  if (v53 >= *(v52 + 3))
  {
    llvm::raw_ostream::write(v52, 32);
  }

  else
  {
    *(v52 + 4) = v53 + 1;
    *v53 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8);
  v54 = (*(*a2 + 16))(a2);
  v55 = *(v54 + 4);
  if (*(v54 + 3) == v55)
  {
    llvm::raw_ostream::write(v54, ")", 1uLL);
  }

  else
  {
    *v55 = 41;
    ++*(v54 + 4);
  }

  v56 = (*(*a2 + 16))(a2);
  v57 = *(v56 + 4);
  if (v57 >= *(v56 + 3))
  {
    llvm::raw_ostream::write(v56, 32);
  }

  else
  {
    *(v56 + 4) = v57 + 1;
    *v57 = 32;
  }

  v58 = (*(*a2 + 16))(a2);
  v59 = *(v58 + 4);
  if (*(v58 + 3) - v59 > 1uLL)
  {
    *v59 = 28532;
    *(v58 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v58, "to", 2uLL);
  }

  v60 = (*(*a2 + 16))(a2);
  v61 = *(v60 + 4);
  if (v61 >= *(v60 + 3))
  {
    llvm::raw_ostream::write(v60, 32);
  }

  else
  {
    *(v60 + 4) = v61 + 1;
    *v61 = 32;
  }

  v62 = *this - 16;
  if (!*(*this + 9))
  {
    v62 = 0;
  }

  (*(*a2 + 32))(a2, *(v62 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v65, 0);
  v64 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::SoftmaxOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v9);
}

BOOL mlir::ODIE::Compiler::CoreML::SoftmaxOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps7(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    v11 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v11);
    v14 = v12;
    if (v12)
    {
      v12 = (*(v13 + 8))(v13, v12);
    }

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    v7 = 1;
    if (v10 != v15)
    {
      v16 = "failed to verify that Result 0 element type must match element type of operand 0.";
      v17 = 259;
      mlir::Operation::emitOpError(*this, &v16, v18);
      v7 = (v18[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::SoftmaxOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v10 = 0;
  v11[0] = &v12;
  v9[0] = &v10;
  v9[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v12 = __src;
  if ((*(*a1 + 120))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v10 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v7 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v7)) && (__src = v7, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v9), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v11, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v9, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::SoftmaxOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v33[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++*(v16 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++*(v18 + 4);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ")", 1uLL);
  }

  else
  {
    *v23 = 41;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) - v27 > 1uLL)
  {
    *v27 = 15917;
    *(v26 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "->", 2uLL);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = *this - 16;
  if (!*(*this + 9))
  {
    v30 = 0;
  }

  (*(*a2 + 32))(a2, *(v30 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v33, 0);
  v32 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::SortOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __src = a3;
  v10 = a5;
  v11 = a4;
  v8 = a7;
  v9 = a6;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v11, 0, &v11, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v10, 0, &v10, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v9, 0, &v9, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v8, 0, &v8, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v13);
}

uint64_t mlir::ODIE::Compiler::CoreML::SortOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v20 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps36(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps7(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps36(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    v11 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v11);
    v14 = v12;
    if (v12)
    {
      v12 = (*(v13 + 8))(v13, v12);
    }

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    if (v10 != v15)
    {
      v16 = "failed to verify that Result 0 element type must match element type of operand 0.";
LABEL_26:
      v17 = v16;
      v18 = 259;
      mlir::Operation::emitOpError(*this, &v17, v19);
      v7 = v19[200] ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
      goto LABEL_12;
    }

    if ((mlir::ODIE::Compiler::CoreML::verifyResultAndOperandHaveSameShapeOrUnknown(*this, 0, 0) & 1) == 0)
    {
      v16 = "failed to verify that Result 0 and operand 0 must have the same shape.";
      goto LABEL_26;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

LABEL_12:
  v8 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps36(mlir::Operation *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v39[25] = *MEMORY[0x277D85DE8];
  v34 = 0;
  v8 = *(*a2 + 136);
  v9 = v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v9 || !mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
  {
    goto LABEL_18;
  }

  v10 = *a2;
  v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v12 = mlir::detail::InterfaceMap::lookup(v10 + 8, v11);
  v13 = (*(v12 + 8))(v12, a2);
  v14 = *(*v13 + 136);
  v15 = v14 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
  if (v15 || (v14 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id ? (v16 = v14 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id) : (v16 = 1), v16))
  {
    v17 = 1;
    goto LABEL_24;
  }

  if (v14 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || ((v28 = v13[2], v17 = 1, (v28 + 2147483644) <= 0x3C) ? (v29 = ((1 << (v28 - 4)) & 0x1000000010001011) == 0) : (v29 = 1), v29 && ((v28 - 1073741828) <= 0x3C ? (v30 = ((1 << (v28 - 4)) & 0x1000000010001011) == 0) : (v30 = 1), v30 ? (v31 = v28 == 1) : (v31 = 1), !v31)))
  {
LABEL_18:
    v33 = 261;
    v32[0] = a3;
    v32[1] = a4;
    mlir::Operation::emitOpError(a1, v32, &v38);
    if (v38)
    {
      mlir::Diagnostic::operator<<<3ul>(v39, " #");
    }

    v18 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v38, &v34);
    v19 = v18;
    if (*v18)
    {
      v35 = 3;
      v36 = " must be CoreML Tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or Boolean type. values, but got ";
      v37 = 192;
      v20 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v18 + 3), &v35, 1);
      v21 = v19[3] + 24 * *(v19 + 8);
      v22 = *v20;
      *(v21 + 16) = *(v20 + 16);
      *v21 = v22;
      ++*(v19 + 8);
      if (*v19)
      {
        v35 = 4;
        v36 = a2;
        v23 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v19 + 3), &v35, 1);
        v24 = v19[3] + 24 * *(v19 + 8);
        v25 = *v23;
        *(v24 + 16) = *(v23 + 16);
        *v24 = v25;
        ++*(v19 + 8);
      }
    }

    v17 = (v19[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
  }

LABEL_24:
  v26 = *MEMORY[0x277D85DE8];
  return v17;
}

BOOL mlir::ODIE::Compiler::CoreML::SortOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v28[0] = v29;
  v28[1] = 1;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v25[0] = v26;
  v25[1] = 1;
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  v17[1] = 1;
  v18 = 0;
  v16 = 0;
  v17[0] = &v18;
  v15[0] = &v16;
  v15[1] = 1;
  v13[1] = 1;
  v14 = 0;
  v12 = 0;
  v13[0] = &v14;
  v11[0] = &v12;
  v11[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v29, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v26, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v23, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v7 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v18 = __src;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src))
  {
    return 0;
  }

  v16 = __src;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src))
  {
    return 0;
  }

  v14 = __src;
  if ((*(*a1 + 120))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v12 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v9 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v9)) && (__src = v9, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v11), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v28, v17, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v25, v15, v5, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v13, v6, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v11, v7, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::SortOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v49[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, ",", 1uLL);
  }

  else
  {
    *v11 = 44;
    ++*(v10 + 4);
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, ",", 1uLL);
  }

  else
  {
    *v15 = 44;
    ++*(v14 + 4);
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 120));
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, ":", 1uLL);
  }

  else
  {
    *v21 = 58;
    ++*(v20 + 4);
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (*(v24 + 3) == v25)
  {
    llvm::raw_ostream::write(v24, "(", 1uLL);
  }

  else
  {
    *v25 = 40;
    ++*(v24 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ",", 1uLL);
  }

  else
  {
    *v27 = 44;
    ++*(v26 + 4);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (*(v30 + 3) == v31)
  {
    llvm::raw_ostream::write(v30, ",", 1uLL);
  }

  else
  {
    *v31 = 44;
    ++*(v30 + 4);
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (v33 >= *(v32 + 3))
  {
    llvm::raw_ostream::write(v32, 32);
  }

  else
  {
    *(v32 + 4) = v33 + 1;
    *v33 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) == v35)
  {
    llvm::raw_ostream::write(v34, ",", 1uLL);
  }

  else
  {
    *v35 = 44;
    ++*(v34 + 4);
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (v37 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 32);
  }

  else
  {
    *(v36 + 4) = v37 + 1;
    *v37 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8);
  v38 = (*(*a2 + 16))(a2);
  v39 = *(v38 + 4);
  if (*(v38 + 3) == v39)
  {
    llvm::raw_ostream::write(v38, ")", 1uLL);
  }

  else
  {
    *v39 = 41;
    ++*(v38 + 4);
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = *(v40 + 4);
  if (v41 >= *(v40 + 3))
  {
    llvm::raw_ostream::write(v40, 32);
  }

  else
  {
    *(v40 + 4) = v41 + 1;
    *v41 = 32;
  }

  v42 = (*(*a2 + 16))(a2);
  v43 = *(v42 + 4);
  if (*(v42 + 3) - v43 > 1uLL)
  {
    *v43 = 15917;
    *(v42 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v42, "->", 2uLL);
  }

  v44 = (*(*a2 + 16))(a2);
  v45 = *(v44 + 4);
  if (v45 >= *(v44 + 3))
  {
    llvm::raw_ostream::write(v44, 32);
  }

  else
  {
    *(v44 + 4) = v45 + 1;
    *v45 = 32;
  }

  v46 = *this - 16;
  if (!*(*this + 9))
  {
    v46 = 0;
  }

  (*(*a2 + 32))(a2, *(v46 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v49, 0);
  v48 = *MEMORY[0x277D85DE8];
}

BOOL mlir::ODIE::Compiler::CoreML::SpaceToBatch::verifyInvariantsImpl(mlir::Operation **this)
{
  v27 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps13(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps16(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps13(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    v11 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v11);
    v14 = v12;
    if (v12)
    {
      v12 = (*(v13 + 8))(v13, v12);
    }

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    if (v10 != v15)
    {
      v16 = "failed to verify that Result 0 element type must match element type of operand 0.";
LABEL_25:
      v24 = v16;
      v25 = 259;
      mlir::Operation::emitOpError(*this, &v24, v26);
      v7 = (v26[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v26);
      goto LABEL_11;
    }

    v17 = mlir::Type::cast<mlir::ShapedType>((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
    (*(v18 + 24))(v18, v17);
    v20 = v19;
    v21 = mlir::Type::cast<mlir::ShapedType>((*(*this - 1) & 0xFFFFFFFFFFFFFFF8));
    (*(v22 + 24))(v22, v21);
    if (v20 != v23)
    {
      v16 = "failed to verify that Result 0 and operand 0 must have the same rank.";
      goto LABEL_25;
    }

    v7 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps1(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "decomposition", 13, 0);
  }

  else
  {
    v7 = 0;
  }

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void mlir::ODIE::Compiler::CoreML::SpaceToBatch::parse()
{
  v2[16] = *MEMORY[0x277D85DE8];
  v0 = v2;
  v1 = 0x400000000;
  operator new();
}

void mlir::ODIE::Compiler::CoreML::SpaceToBatch::print(mlir::ODIE::Compiler::CoreML::SpaceToBatch *this, mlir::OpAsmPrinter *a2)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v3 = *this;
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++*(v4 + 4);
  }

  if ((*(v3 + 46) & 0x80) != 0)
  {
    v6 = *(v3 + 72);
    v7 = *(v3 + 68);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v29 = v6;
  v30 = v7;
  mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a2, &v29);
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ")", 1uLL);
  }

  else
  {
    *v9 = 41;
    ++*(v8 + 4);
  }

  v29 = v31;
  v30 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  (*(*a2 + 200))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v29, v30);
  v11 = (*(*a2 + 16))(a2);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 32);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 32;
  }

  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if (*(v13 + 3) == v14)
  {
    llvm::raw_ostream::write(v13, ":", 1uLL);
  }

  else
  {
    *v14 = 58;
    ++*(v13 + 4);
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 32);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 32;
  }

  if ((*(v3 + 46) & 0x80) != 0)
  {
    v17 = *(v3 + 72);
    v18 = *(v3 + 68);
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v28[0] = v17;
  v28[1] = 0;
  v28[2] = v17;
  v28[3] = v18;
  v19 = *(v3 + 36);
  v20 = v3 - 16;
  if (!v19)
  {
    v20 = 0;
  }

  v27[0] = v20;
  v27[1] = 0;
  v27[2] = v20;
  v27[3] = v19;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v28, v27);
  v21 = (*(*a2 + 16))(a2);
  v22 = *(v21 + 4);
  if (v22 >= *(v21 + 3))
  {
    llvm::raw_ostream::write(v21, 32);
  }

  else
  {
    *(v21 + 4) = v22 + 1;
    *v22 = 32;
  }

  v23 = *(v3 + 44);
  if ((v23 & 0x800000) != 0)
  {
    v24 = *(v3 + 68);
    v25 = *(v3 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v24 = 0;
    v25 = 2;
  }

  (*(*a2 + 232))(a2, ((v3 + 64 + 16 * ((v23 >> 23) & 1) + ((v23 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v3 + 40), v25, v24);
  (*(*a2 + 224))(a2, ((v3 + 64 + 16 * ((*(v3 + 44) >> 23) & 1) + ((*(v3 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v3 + 40), 0, 1, 0);
  if (v29 != v31)
  {
    free(v29);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::SplitOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a6;
  v12 = a5;
  v10 = a7;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v12, 0, &v12, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v11, 0, &v11, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v10, 0, &v10, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

BOOL mlir::ODIE::Compiler::CoreML::SplitOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v65 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    goto LABEL_33;
  }

  v2 = *this;
  v3 = *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v60 = 1;
  v4 = *v3;
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v6 = mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
    v7 = (*(v6 + 16))(v6, v3);
    v4 = *v3;
    if (v7)
    {
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v4 + 8, v8);
      (*(v9 + 24))(v9, v3);
      v4 = *v3;
      if (!v10)
      {
        v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v12 = mlir::detail::InterfaceMap::lookup(v4 + 8, v11);
        v13 = (*(v12 + 8))(v12, v3);
        if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
          v56 = v13[2];
          if (v56 == 1073741840 || v56 == 1073741856)
          {
            goto LABEL_17;
          }
        }

        v4 = *v3;
      }
    }
  }

  if (*(v4 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_57;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v15 = mlir::detail::InterfaceMap::lookup(v4 + 8, v14);
  if (!(*(v15 + 16))(v15, v3))
  {
    goto LABEL_57;
  }

  v16 = *v3;
  v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v18 = mlir::detail::InterfaceMap::lookup(v16 + 8, v17);
  (*(v18 + 24))(v18, v3);
  if (v19 != 1)
  {
    goto LABEL_57;
  }

  v20 = *v3;
  v21 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v22 = mlir::detail::InterfaceMap::lookup(v20 + 8, v21);
  v23 = (*(v22 + 8))(v22, v3);
  if (*(*v23 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    goto LABEL_57;
  }

  v54 = v23[2];
  if (v54 != 1073741840 && v54 != 1073741856)
  {
LABEL_57:
    v59 = 261;
    v58[0] = "operand";
    v58[1] = 7;
    mlir::Operation::emitOpError(v2, v58, &v63);
    if (v63)
    {
      mlir::Diagnostic::operator<<<3ul>(v64, " #");
    }

    v24 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v63, &v60);
    v25 = v24;
    if (*v24)
    {
      mlir::Diagnostic::operator<<<86ul>((v24 + 1), " must be 0D tensor of Index type. values or 1D tensor of Index type. values, but got ");
      if (*v25)
      {
        v61 = 4;
        v62 = v3;
        v26 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v25 + 3), &v61, 1);
        v27 = v25[3] + 24 * *(v25 + 8);
        v28 = *v26;
        *(v27 + 16) = *(v26 + 16);
        *v27 = v28;
        ++*(v25 + 8);
      }
    }

    v29 = *(v25 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v63);
    if (v29)
    {
      goto LABEL_33;
    }
  }

LABEL_17:
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps7(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
  {
LABEL_33:
    v45 = 0;
    goto LABEL_34;
  }

  v30 = *this;
  v31 = *(*this + 9);
  v32 = *this - 16;
  if (*(*this + 9))
  {
    v33 = *this - 16;
  }

  else
  {
    v33 = 0;
  }

  if (v31)
  {
    v34 = 0;
    v35 = *this - 16;
    while (1)
    {
      v36 = v33;
      if (v34)
      {
        v37 = *(v30 - 1) & 7;
        v38 = v32;
        v39 = v34;
        if (v37 == 6)
        {
          goto LABEL_27;
        }

        v40 = (5 - v37);
        v36 = v35;
        v39 = v34 - v40;
        if (v34 > v40)
        {
          break;
        }
      }

LABEL_28:
      if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps38(*this, (*(v36 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, v34))
      {
        goto LABEL_33;
      }

      ++v34;
      v35 -= 16;
      if (v31 == v34)
      {
        v30 = *this;
        goto LABEL_31;
      }
    }

    v38 = v32 - 16 * v40;
LABEL_27:
    v36 = v38 - 24 * v39;
    goto LABEL_28;
  }

LABEL_31:
  v41 = (*(v30 - 1) & 0xFFFFFFFFFFFFFFF8);
  v42 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v41);
  v44 = v42;
  if (v42)
  {
    v42 = (*(v43 + 8))(v43, v42);
  }

  if (v44)
  {
    v48 = v42;
  }

  else
  {
    v48 = v41;
  }

  v49 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v50 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v49);
  v52 = v50;
  if (v50)
  {
    v50 = (*(v51 + 8))(v51, v50);
  }

  if (v52)
  {
    v53 = v50;
  }

  else
  {
    v53 = v49;
  }

  v45 = 1;
  if (v48 != v53)
  {
    v58[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v59 = 259;
    mlir::Operation::emitOpError(*this, v58, &v63);
    v45 = (v64[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v63);
  }

LABEL_34:
  v46 = *MEMORY[0x277D85DE8];
  return v45;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps38(mlir::Operation *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v42[25] = *MEMORY[0x277D85DE8];
  v37 = a5;
  v9 = *(*a2 + 136);
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (v10 && mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
  {
    v11 = *a2;
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
    v14 = (*(v13 + 8))(v13, a2);
    v15 = *(*v14 + 136);
    if (v15 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
    {
      goto LABEL_16;
    }

    if (v15 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
    {
      goto LABEL_16;
    }

    if (v15 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v21 = v14[2];
      v18 = 1;
      if ((v21 + 2147483644) <= 0x3C && ((1 << (v21 - 4)) & 0x1000000010001011) != 0)
      {
        goto LABEL_42;
      }

      v23 = (v21 - 1073741828) > 0x3C || ((1 << (v21 - 4)) & 0x1000000010001011) == 0;
      if (!v23 || v21 == 1)
      {
        goto LABEL_42;
      }

      goto LABEL_36;
    }

    if (v15 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v19 = *(**(v14 + 1) + 136);
      if (v19 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
      {
LABEL_16:
        v18 = 1;
        goto LABEL_42;
      }
    }
  }

LABEL_36:
  v36 = 261;
  v35[0] = a3;
  v35[1] = a4;
  mlir::Operation::emitOpError(a1, v35, &v41);
  if (v41)
  {
    mlir::Diagnostic::operator<<<3ul>(v42, " #");
  }

  v25 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v41, &v37);
  v26 = v25;
  if (*v25)
  {
    v38 = 3;
    v39 = " must be variadic of CoreML Tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements or Boolean type. values, but got ";
    v40 = 290;
    v27 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v25 + 3), &v38, 1);
    v28 = v26[3] + 24 * *(v26 + 8);
    v29 = *v27;
    *(v28 + 16) = *(v27 + 16);
    *v28 = v29;
    ++*(v26 + 8);
    if (*v26)
    {
      v38 = 4;
      v39 = a2;
      v30 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v26 + 3), &v38, 1);
      v31 = v26[3] + 24 * *(v26 + 8);
      v32 = *v30;
      *(v31 + 16) = *(v30 + 16);
      *v31 = v32;
      ++*(v26 + 8);
    }
  }

  v18 = (v26[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
LABEL_42:
  v33 = *MEMORY[0x277D85DE8];
  return v18;
}

BOOL mlir::ODIE::Compiler::CoreML::SplitOp::parse(uint64_t a1, uint64_t a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  v23[0] = v24;
  v23[1] = 1;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v20[0] = v21;
  v20[1] = 1;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17[0] = v18;
  v17[1] = 1;
  v15[1] = 1;
  v16 = 0;
  v14 = 0;
  v15[0] = &v16;
  v13[0] = &v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v11[0] = &v12;
  v26 = v28;
  v27 = 0x100000000;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v24, 1) & 1) == 0)
  {
    goto LABEL_22;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    goto LABEL_22;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v21, 1) & 1) == 0)
  {
    goto LABEL_22;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    goto LABEL_22;
  }

  v6 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v18, 1) & 1) == 0)
  {
    goto LABEL_22;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_22;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_22;
  }

  v10 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v10))
  {
    goto LABEL_22;
  }

  v16 = v10;
  if ((*(*a1 + 120))(a1) & 1) != 0 && (v10 = 0, ((*(*a1 + 536))(a1, &v10)) && (v14 = v10, ((*(*a1 + 120))(a1)) && (v10 = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v10)) && (v12 = v10, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, &v26) & 1) != 0 && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, v26, &v26[8 * v27]), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v23, v15, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v20, v13, v5, a2 + 16))
  {
    v7 = mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v17, v11, v6, a2 + 16);
  }

  else
  {
LABEL_22:
    v7 = 0;
  }

  if (v26 != v28)
  {
    free(v26);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void mlir::ODIE::Compiler::CoreML::SplitOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v56[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, ",", 1uLL);
  }

  else
  {
    *v11 = 44;
    ++*(v10 + 4);
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, ":", 1uLL);
  }

  else
  {
    *v17 = 58;
    ++*(v16 + 4);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, "(", 1uLL);
  }

  else
  {
    *v21 = 40;
    ++*(v20 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ",", 1uLL);
  }

  else
  {
    *v23 = 44;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ",", 1uLL);
  }

  else
  {
    *v27 = 44;
    ++*(v26 + 4);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (*(v30 + 3) == v31)
  {
    llvm::raw_ostream::write(v30, ")", 1uLL);
  }

  else
  {
    *v31 = 41;
    ++*(v30 + 4);
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (v33 >= *(v32 + 3))
  {
    llvm::raw_ostream::write(v32, 32);
  }

  else
  {
    *(v32 + 4) = v33 + 1;
    *v33 = 32;
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) - v35 > 1uLL)
  {
    *v35 = 15917;
    *(v34 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v34, "->", 2uLL);
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (v37 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 32);
  }

  else
  {
    *(v36 + 4) = v37 + 1;
    *v37 = 32;
  }

  v38 = (*(*a2 + 16))(a2);
  v39 = *(v38 + 4);
  if (*(v38 + 3) == v39)
  {
    llvm::raw_ostream::write(v38, "(", 1uLL);
  }

  else
  {
    *v39 = 40;
    ++*(v38 + 4);
  }

  v40 = *this;
  v41 = *(*this + 9);
  if (v41)
  {
    v42 = *this - 16;
  }

  else
  {
    v42 = 0;
  }

  if (v41)
  {
    (*(*a2 + 32))(a2, *(v40 - 1) & 0xFFFFFFFFFFFFFFF8);
    if (v41 != 1)
    {
      v43 = v42 - 16;
      v44 = 1;
      while (1)
      {
        v45 = (*(*a2 + 16))(a2);
        v46 = *(v45 + 4);
        if (*(v45 + 3) - v46 > 1uLL)
        {
          *v46 = 8236;
          *(v45 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v45, ", ", 2uLL);
        }

        v47 = *(v40 - 1) & 7;
        v48 = v42;
        v49 = v44;
        if (v47 == 6)
        {
          goto LABEL_67;
        }

        v50 = (5 - v47);
        v51 = v43;
        v49 = v44 - v50;
        if (v44 > v50)
        {
          break;
        }

LABEL_68:
        (*(*a2 + 32))(a2, *(v51 + 8) & 0xFFFFFFFFFFFFFFF8);
        ++v44;
        v43 -= 16;
        if (v41 == v44)
        {
          goto LABEL_69;
        }
      }

      v48 = v42 - 16 * v50;
LABEL_67:
      v51 = v48 - 24 * v49;
      goto LABEL_68;
    }
  }

LABEL_69:
  v52 = (*(*a2 + 16))(a2);
  v53 = *(v52 + 4);
  if (*(v52 + 3) == v53)
  {
    llvm::raw_ostream::write(v52, ")", 1uLL);
  }

  else
  {
    *v53 = 41;
    ++*(v52 + 4);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v56, 0);
  v55 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::SqrtOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreML::SqrtOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    v11 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v11);
    v14 = v12;
    if (v12)
    {
      v12 = (*(v13 + 8))(v13, v12);
    }

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    v7 = 1;
    if (v10 != v15)
    {
      v16 = "failed to verify that Result 0 element type must match element type of operand 0.";
      v17 = 259;
      mlir::Operation::emitOpError(*this, &v16, v18);
      v7 = (v18[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::SqrtOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v9 = __src;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

void mlir::ODIE::Compiler::CoreML::SqrtOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 15917;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "->", 2uLL);
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = *this - 16;
  if (!*(*this + 9))
  {
    v18 = 0;
  }

  (*(*a2 + 32))(a2, *(v18 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v21, 0);
  v20 = *MEMORY[0x277D85DE8];
}

unint64_t mlir::ODIE::Compiler::CoreML::StackOp::getODSOperandIndexAndLength(mlir::ODIE::Compiler::CoreML::StackOp *this, unsigned int a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    v4 = __const__ZN4mlir4ODIE8Compiler6CoreML7StackOp27getODSOperandIndexAndLengthEj_isVariadic;
    do
    {
      v5 = *v4++;
      v2 += v5;
      --v3;
    }

    while (v3);
  }

  if ((*(*this + 46) & 0x80) != 0)
  {
    v6 = *(*this + 68);
  }

  else
  {
    v6 = 0;
  }

  v7 = a2 + (v6 - 2) * v2;
  v8 = 0x100000000;
  if (__const__ZN4mlir4ODIE8Compiler6CoreML7StackOp27getODSOperandIndexAndLengthEj_isVariadic[a2])
  {
    v8 = (v6 - 1) << 32;
  }

  return v8 | v7;
}

void mlir::ODIE::Compiler::CoreML::StackOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v9, 0, &v9, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a5, 0, a5, a6);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v11);
}

BOOL mlir::ODIE::Compiler::CoreML::StackOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::StackOp *this)
{
  ODSOperands = mlir::ODIE::Compiler::CoreML::StackOp::getODSOperands(this, 0);
  v4 = v3;
  if (v3)
  {
    v5 = 0;
    v6 = ODSOperands + 24;
    while (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps7(*this, (*(*v6 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v5))
    {
      ++v5;
      v6 += 32;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

LABEL_5:
  v7 = mlir::ODIE::Compiler::CoreML::StackOp::getODSOperands(this, 1u);
  if (v8)
  {
    v9 = v8;
    v10 = v7 + 24;
    while (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps38(*this, (*(*v10 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v4))
    {
      LODWORD(v4) = v4 + 1;
      v10 += 32;
      if (!--v9)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

LABEL_9:
  if (*(*this + 36))
  {
    v11 = *this - 16;
  }

  else
  {
    v11 = 0;
  }

  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(v11 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::StackOp::parse(uint64_t a1, uint64_t a2)
{
  v19[16] = *MEMORY[0x277D85DE8];
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v18[0] = v19;
  v18[1] = 0x400000000;
  v11[1] = 1;
  v12 = 0;
  v11[0] = &v12;
  v16[0] = &v17;
  v16[1] = 0x100000000;
  v4 = (*(*a1 + 40))(a1);
  v6 = ((*(*a1 + 704))(a1, v14, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v18, 0, 1, 0xFFFFFFFFLL) & 1) != 0) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v12 = __src, ((*(*a1 + 120))(a1) & 1) != 0) && (mlir::AsmParser::parseTypeList(a1, v16) & 1) != 0 && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 56))(a1) & 1) != 0 && (v9 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v9)) && (__src = v9, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v11), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v11, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v18, v16, v5, a2 + 16);
  if (v16[0] != &v17)
  {
    free(v16[0]);
  }

  if (v18[0] != v19)
  {
    free(v18[0]);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void mlir::ODIE::Compiler::CoreML::StackOp::print(mlir::ODIE::Compiler::CoreML::StackOp *this, mlir::OpAsmPrinter *a2)
{
  v47[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  ODSOperands = mlir::ODIE::Compiler::CoreML::StackOp::getODSOperands(this, 0);
  (*(*a2 + 160))(a2, *(ODSOperands + 24));
  v7 = (*(*a2 + 16))(a2);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, ",", 1uLL);
  }

  else
  {
    *v8 = 44;
    ++*(v7 + 4);
  }

  v9 = (*(*a2 + 16))(a2);
  v10 = *(v9 + 4);
  if (v10 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 32);
  }

  else
  {
    *(v9 + 4) = v10 + 1;
    *v10 = 32;
  }

  v45 = mlir::ODIE::Compiler::CoreML::StackOp::getODSOperands(this, 1u);
  v46 = v11;
  mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a2, &v45);
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, ":", 1uLL);
  }

  else
  {
    *v15 = 58;
    ++*(v14 + 4);
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, "(", 1uLL);
  }

  else
  {
    *v19 = 40;
    ++*(v18 + 4);
  }

  v20 = mlir::ODIE::Compiler::CoreML::StackOp::getODSOperands(this, 0);
  (*(*a2 + 32))(a2, *(*(v20 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v21 = (*(*a2 + 16))(a2);
  v22 = *(v21 + 4);
  if (*(v21 + 3) == v22)
  {
    llvm::raw_ostream::write(v21, ",", 1uLL);
  }

  else
  {
    *v22 = 44;
    ++*(v21 + 4);
  }

  v23 = (*(*a2 + 16))(a2);
  v24 = *(v23 + 4);
  if (v24 >= *(v23 + 3))
  {
    llvm::raw_ostream::write(v23, 32);
  }

  else
  {
    *(v23 + 4) = v24 + 1;
    *v24 = 32;
  }

  v25 = mlir::ODIE::Compiler::CoreML::StackOp::getODSOperands(this, 1u);
  if (v26)
  {
    v27 = v25;
    v28 = v26;
    (*(*a2 + 32))(a2, *(*(v25 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v29 = v28 - 1;
    if (v29)
    {
      v30 = (v27 + 56);
      do
      {
        v31 = (*(*a2 + 16))(a2);
        v32 = *(v31 + 4);
        if (*(v31 + 3) - v32 > 1uLL)
        {
          *v32 = 8236;
          *(v31 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v31, ", ", 2uLL);
        }

        v33 = *v30;
        v30 += 4;
        (*(*a2 + 32))(a2, *(v33 + 8) & 0xFFFFFFFFFFFFFFF8);
        --v29;
      }

      while (v29);
    }
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) == v35)
  {
    llvm::raw_ostream::write(v34, ")", 1uLL);
  }

  else
  {
    *v35 = 41;
    ++*(v34 + 4);
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (v37 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 32);
  }

  else
  {
    *(v36 + 4) = v37 + 1;
    *v37 = 32;
  }

  v38 = (*(*a2 + 16))(a2);
  v39 = *(v38 + 4);
  if (*(v38 + 3) - v39 > 1uLL)
  {
    *v39 = 15917;
    *(v38 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v38, "->", 2uLL);
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = *(v40 + 4);
  if (v41 >= *(v40 + 3))
  {
    llvm::raw_ostream::write(v40, 32);
  }

  else
  {
    *(v40 + 4) = v41 + 1;
    *v41 = 32;
  }

  v42 = *this - 16;
  if (!*(*this + 36))
  {
    v42 = 0;
  }

  (*(*a2 + 32))(a2, *(v42 + 8) & 0xFFFFFFFFFFFFFFF8);
  v45 = v47;
  v46 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v45, v46);
  if (v45 != v47)
  {
    free(v45);
  }

  v44 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::SubOp::build(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8[1] = *MEMORY[0x277D85DE8];
  __src = a3;
  v8[0] = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &__src, 0, &__src, 2);
  __src = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::SubOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v9);
}

uint64_t mlir::ODIE::Compiler::CoreML::SubOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v30 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    v11 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v11);
    v14 = v12;
    if (v12)
    {
      v12 = (*(v13 + 8))(v13, v12);
    }

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    if (v10 == v15)
    {
      v17 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
      v18 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v17);
      v20 = v18;
      if (v18)
      {
        v18 = (*(v19 + 8))(v19, v18);
      }

      if (v20)
      {
        v21 = v18;
      }

      else
      {
        v21 = v17;
      }

      v22 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
      v23 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v22);
      v25 = v23;
      if (v23)
      {
        v23 = (*(v24 + 8))(v24, v23);
      }

      if (v25)
      {
        v26 = v23;
      }

      else
      {
        v26 = v22;
      }

      if (v21 == v26)
      {
        v7 = 1;
        goto LABEL_10;
      }

      v16 = "failed to verify that Result 0 element type must match element type of operand 1.";
    }

    else
    {
      v16 = "failed to verify that Result 0 element type must match element type of operand 0.";
    }

    v27 = v16;
    v28 = 259;
    mlir::Operation::emitOpError(*this, &v27, v29);
    v7 = v29[200] ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v29);
  }

  else
  {
    v7 = 0;
  }

LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::SubOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v10 = 0;
  v11[0] = &v12;
  v9[0] = &v10;
  v9[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v12 = __src;
  if ((*(*a1 + 120))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v10 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v7 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v7)) && (__src = v7, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v9), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v11, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v9, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::SubOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v33[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++*(v16 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++*(v18 + 4);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ")", 1uLL);
  }

  else
  {
    *v23 = 41;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) - v27 > 1uLL)
  {
    *v27 = 15917;
    *(v26 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "->", 2uLL);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = *this - 16;
  if (!*(*this + 9))
  {
    v30 = 0;
  }

  (*(*a2 + 32))(a2, *(v30 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v33, 0);
  v32 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::TanOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreML::TanOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    v11 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v11);
    v14 = v12;
    if (v12)
    {
      v12 = (*(v13 + 8))(v13, v12);
    }

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    v7 = 1;
    if (v10 != v15)
    {
      v16 = "failed to verify that Result 0 element type must match element type of operand 0.";
      v17 = 259;
      mlir::Operation::emitOpError(*this, &v16, v18);
      v7 = (v18[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::TanOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v9 = __src;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

void mlir::ODIE::Compiler::CoreML::TanOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 15917;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "->", 2uLL);
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = *this - 16;
  if (!*(*this + 9))
  {
    v18 = 0;
  }

  (*(*a2 + 32))(a2, *(v18 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v21, 0);
  v20 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::TanhOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreML::TanhOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    v11 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v11);
    v14 = v12;
    if (v12)
    {
      v12 = (*(v13 + 8))(v13, v12);
    }

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    v7 = 1;
    if (v10 != v15)
    {
      v16 = "failed to verify that Result 0 element type must match element type of operand 0.";
      v17 = 259;
      mlir::Operation::emitOpError(*this, &v16, v18);
      v7 = (v18[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::TanhOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v9 = __src;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

void mlir::ODIE::Compiler::CoreML::TanhOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 15917;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "->", 2uLL);
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = *this - 16;
  if (!*(*this + 9))
  {
    v18 = 0;
  }

  (*(*a2 + 32))(a2, *(v18 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v21, 0);
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::CoreML::TargetSpecOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "target_spec", 0xBuLL);
    if (v9)
    {
      v10 = *(v8 + 8);
      if (v10)
      {
        if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id)
        {
          a3(&v17, a4);
          if (v17)
          {
            if (v17)
            {
              v15 = 0;
              v16 = v10;
              v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v15, 1);
              v12 = v19 + 24 * v20;
              v13 = *v11;
              *(v12 + 16) = *(v11 + 16);
              *v12 = v13;
              ++v20;
            }
          }

          goto LABEL_4;
        }

        *a1 = v10;
      }
    }

    result = 1;
    goto LABEL_13;
  }

  a3(&v17, a4);
  if (v17)
  {
    mlir::Diagnostic::operator<<<42ul>(v18, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  result = 0;
LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::TargetSpecOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x300000000;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v12 = 261;
    v11[0] = "target_spec";
    v11[1] = 11;
    v6 = mlir::StringAttr::get(v5, v11, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v6, v3);
    v7 = v13;
    if (v14)
    {
      v8 = mlir::DictionaryAttr::get(a1, v13, v14);
      v7 = v13;
    }

    else
    {
      v8 = 0;
    }

    if (v7 != v15)
    {
      free(v7);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t mlir::ODIE::Compiler::CoreML::TargetSpecOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::CoreML::TargetSpecOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 11 && (*a3 == 0x735F746567726174 ? (v4 = *(a3 + 3) == 0x636570735F746567) : (v4 = 0), v4))
  {
    v6 = *a2 & 0xFFFFFFFFFFFFFF00;
    v5 = *a2;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void *mlir::ODIE::Compiler::CoreML::TargetSpecOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 11 && *a2 == 0x735F746567726174 && *(a2 + 3) == 0x636570735F746567)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id)
      {
        v5 = a4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    *result = v5;
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::TargetSpecOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "target_spec";
    v7[1] = 11;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::TargetSpecOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps20(v8, "target_spec", 11, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps20(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id)
  {
    v7 = 1;
  }

  else
  {
    a4(&v12, a5);
    if (v12)
    {
      mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
      if (v12)
      {
        v11 = 261;
        v10[0] = a2;
        v10[1] = a3;
        mlir::Diagnostic::operator<<(v13, v10);
        if (v12)
        {
          mlir::Diagnostic::operator<<<33ul>(v13, "' failed to satisfy constraint: ");
        }
      }
    }

    v7 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::TargetSpecOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::TargetSpecAttr>(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 48))(a1, &v14))
  {
    v4 = v14;
    v5 = *(*v14 + 136);
    if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id)
    {
      v9 = 1;
    }

    else
    {
      v13[16] = 257;
      (*(*a1 + 16))(&v18, a1, v13);
      if (v18)
      {
        mlir::Diagnostic::operator<<<10ul>(v19, "expected ");
      }

      if ((atomic_load_explicit(&qword_27FC1E730, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E730))
      {
        qword_27FC1E720 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::TargetSpecAttr>();
        *algn_27FC1E728 = v12;
        __cxa_guard_release(&qword_27FC1E730);
      }

      if (v18)
      {
        v17 = 261;
        v15 = qword_27FC1E720;
        v16 = *algn_27FC1E728;
        mlir::Diagnostic::operator<<(v19, &v15);
        if (v18)
        {
          mlir::Diagnostic::operator<<<12ul>(v19, ", but got: ");
          if (v18)
          {
            LODWORD(v15) = 0;
            v16 = v14;
            v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v15, 1);
            v7 = v20 + 24 * v21;
            v8 = *v6;
            *(v7 + 16) = *(v6 + 16);
            *v7 = v8;
            ++v21;
          }
        }
      }

      v9 = (v22 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL mlir::ODIE::Compiler::CoreML::TargetSpecOp::verifyInvariantsImpl(unsigned int **this)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *&v1[4 * ((v1[11] >> 23) & 1) + 16];
  if (v2)
  {
    v8[0] = v1;
    v3 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps20(v2, "target_spec", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v8);
  }

  else
  {
    v6 = "requires attribute 'target_spec'";
    v7 = 259;
    mlir::Operation::emitOpError(v1, &v6, v8);
    v3 = (v9 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t mlir::ODIE::Compiler::CoreML::TargetSpecOp::parse(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v12 = 0;
  v13[0] = a1;
  if (((*(*a1 + 448))(a1, &v12, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML14TargetSpecAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_, v13) & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = v12;
  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id)
  {
    *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::TargetSpecOpGenericAdaptorBase::Properties>(a2) = v5;
  }

  else
  {
    v10[0] = "invalid kind of attribute specified";
    v11 = 259;
    (*(*a1 + 24))(v13, a1, v4, v10);
    v6 = v14;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
    if (v6)
    {
LABEL_9:
      result = 0;
      goto LABEL_10;
    }
  }

  v10[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = *(a2 + 8);
  v13[0] = a1;
  v13[1] = v10;
  v13[2] = a2;
  if (!mlir::ODIE::Compiler::CoreML::TargetSpecOp::verifyInherentAttrs(v7, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::TargetSpecOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13))
  {
    goto LABEL_9;
  }

  result = 1;
LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::ODIE::Compiler::CoreML::TargetSpecOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  mlir::AsmPrinter::printStrippedAttrOrType<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,(void *)0>(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v8 = v10;
  v9 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v8, "target_spec", 11);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v8, v9);
  if (v8 != v10)
  {
    free(v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,(void *)0>(mlir::AsmPrinter *a1, uint64_t a2)
{
  v6 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v4 = (*(*a1 + 16))(a1);
    v5 = (*(*v4 + 80))(v4) + v4[4] - v4[2];
    mlir::ODIE::Compiler::CoreML::TargetSpecAttr::print(&v6, a1);
    result = (*(*v4 + 80))(v4);
    if (v5 == result + v4[4] - v4[2])
    {
      return (*(*a1 + 40))(a1, v6);
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::TileOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v9);
}

BOOL mlir::ODIE::Compiler::CoreML::TileOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    v11 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v11);
    v14 = v12;
    if (v12)
    {
      v12 = (*(v13 + 8))(v13, v12);
    }

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    v7 = 1;
    if (v10 != v15)
    {
      v16 = "failed to verify that Result 0 element type must match element type of operand 0.";
      v17 = 259;
      mlir::Operation::emitOpError(*this, &v16, v18);
      v7 = (v18[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::TileOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v10 = 0;
  v11[0] = &v12;
  v9[0] = &v10;
  v9[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v12 = __src;
  if ((*(*a1 + 120))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v10 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v7 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v7)) && (__src = v7, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v9), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v11, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v9, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::TileOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v33[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++*(v16 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++*(v18 + 4);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ")", 1uLL);
  }

  else
  {
    *v23 = 41;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) - v27 > 1uLL)
  {
    *v27 = 15917;
    *(v26 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "->", 2uLL);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = *this - 16;
  if (!*(*this + 9))
  {
    v30 = 0;
  }

  (*(*a2 + 32))(a2, *(v30 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v33, 0);
  v32 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::TransposeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v7 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v7);
  v10 = v9;
  if (!v8)
  {
    goto LABEL_18;
  }

  *&v36 = &v34;
  v11 = (~*(a4 + 8) & 7) != 0 ? a4 : 0;
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = *(v11 + 8) & 7;
  if (v12 == 6)
  {
    v13 = v11 + 24 * *(v11 + 16);
    v14 = v13 + 120;
    if (v13 == -120)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v14 = v11 + 16 * v12 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v36, v14))
  {
LABEL_18:
    v22 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
    v23 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v22);
    v25 = v23;
    if (v23)
    {
      v23 = (*(v24 + 8))(v24, v23);
    }

    if (v25)
    {
      v26 = v23;
    }

    else
    {
      v26 = v22;
    }

    *&v36 = v26;
    __p = mlir::detail::TypeUniquer::get<mlir::UnrankedTensorType,mlir::Type &>(*(**v26 + 32), &v36);
    *&v36 = a3;
    *(&v36 + 1) = a4;
    mlir::ODIE::Compiler::CoreML::TransposeOp::build(__p, a2, &__p + 2, 1, &v36, 2, 0, 0);
    goto LABEL_24;
  }

  (*(v10 + 24))(v10, v8);
  (*(v10 + 24))(v10, v8);
  __p = 0;
  v32 = 0;
  v33 = 0;
  if (v15)
  {
    std::vector<long long>::__vallocate[abi:nn200100](&__p, v15);
  }

  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v34, &v36);
  v30 = v36;
  v16 = __p;
  v17 = (v32 - __p) >> 3;
  v18 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  v19 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v18);
  v21 = v19;
  if (v19)
  {
    v19 = (*(v20 + 8))(v20, v19);
  }

  if (v21)
  {
    v28 = v19;
  }

  else
  {
    v28 = v18;
  }

  *&v36 = v16;
  *(&v36 + 1) = v17;
  v29 = v28;
  v35 = 0;
  v29 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v28 + 32), &v36, &v29, &v35);
  *&v36 = a3;
  *(&v36 + 1) = a4;
  mlir::ODIE::Compiler::CoreML::TransposeOp::build(v29, a2, &v29 + 2, 1, &v36, 2, 0, 0);
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

LABEL_24:
  v27 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::TransposeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v9);
}

void mlir::ODIE::Compiler::CoreML::TransposeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a5, 0, a5, a6);
  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a2 + 112, a7, &a7[16 * a8]);

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

uint64_t mlir::ODIE::Compiler::CoreML::TransposeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v27 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    v11 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v11);
    v14 = v12;
    if (v12)
    {
      v12 = (*(v13 + 8))(v13, v12);
    }

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    if (v10 != v15)
    {
      v16 = "failed to verify that Result 0 element type must match element type of operand 0.";
LABEL_24:
      v24 = v16;
      v25 = 259;
      mlir::Operation::emitOpError(*this, &v24, v26);
      v7 = v26[200] ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v26);
      goto LABEL_10;
    }

    v17 = mlir::Type::cast<mlir::ShapedType>((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
    (*(v18 + 24))(v18, v17);
    v20 = v19;
    v21 = mlir::Type::cast<mlir::ShapedType>((*(*this - 1) & 0xFFFFFFFFFFFFFFF8));
    (*(v22 + 24))(v22, v21);
    if (v20 != v23)
    {
      v16 = "failed to verify that Result 0 and operand 0 must have the same rank.";
      goto LABEL_24;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::TransposeOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v10 = 0;
  v11[0] = &v12;
  v9[0] = &v10;
  v9[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v12 = __src;
  if ((*(*a1 + 120))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v10 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v7 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v7)) && (__src = v7, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v9), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v11, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v9, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::TransposeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v33[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++*(v16 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++*(v18 + 4);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ")", 1uLL);
  }

  else
  {
    *v23 = 41;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) - v27 > 1uLL)
  {
    *v27 = 15917;
    *(v26 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "->", 2uLL);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = *this - 16;
  if (!*(*this + 9))
  {
    v30 = 0;
  }

  (*(*a2 + 32))(a2, *(v30 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v33, 0);
  v32 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::WhereOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a4;
  __src = a3;
  v7 = a6;
  v8 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v9, 0, &v9, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v8, 0, &v8, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v11);
}

uint64_t mlir::ODIE::Compiler::CoreML::WhereOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v33 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    v11 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v11);
    v14 = v12;
    if (v12)
    {
      v12 = (*(v13 + 8))(v13, v12);
    }

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    if (v10 != v15)
    {
      v16 = "failed to verify that Operands should have same element type.";
LABEL_37:
      v28 = v16;
      v29 = 259;
      mlir::Operation::emitOpError(*this, &v28, &v30);
      v7 = v32 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
      goto LABEL_11;
    }

    v17 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v18 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v17);
    v20 = v18;
    if (v18)
    {
      v18 = (*(v19 + 8))(v19, v18);
    }

    if (v20)
    {
      v21 = v18;
    }

    else
    {
      v21 = v17;
    }

    v22 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
    v23 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v22);
    v25 = v23;
    if (v23)
    {
      v23 = (*(v24 + 8))(v24, v23);
    }

    if (v25)
    {
      v26 = v23;
    }

    else
    {
      v26 = v22;
    }

    if (v21 != v26)
    {
      v16 = "failed to verify that Result 0 element type must match element type of operand 1.";
      goto LABEL_37;
    }

    v27 = *this;
    v30 = 0x100000000;
    v31 = 2;
    if ((mlir::ODIE::Compiler::CoreML::verifyOperandsHaveSameShapeOrUnknown(v27, &v30, 3) & 1) == 0)
    {
      v16 = "failed to verify that Operands should have same shape.";
      goto LABEL_37;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::WhereOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v13 = 0;
  v14[0] = &v15;
  v12[0] = &v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v23, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v15 = __src;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v13 = __src;
  if ((*(*a1 + 120))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v11 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v8 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v8)) && (__src = v8, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v10), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v14, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v12, v5, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v10, v6, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::WhereOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v41[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, ",", 1uLL);
  }

  else
  {
    *v11 = 44;
    ++*(v10 + 4);
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, ":", 1uLL);
  }

  else
  {
    *v17 = 58;
    ++*(v16 + 4);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, "(", 1uLL);
  }

  else
  {
    *v21 = 40;
    ++*(v20 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ",", 1uLL);
  }

  else
  {
    *v23 = 44;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ",", 1uLL);
  }

  else
  {
    *v27 = 44;
    ++*(v26 + 4);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (*(v30 + 3) == v31)
  {
    llvm::raw_ostream::write(v30, ")", 1uLL);
  }

  else
  {
    *v31 = 41;
    ++*(v30 + 4);
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (v33 >= *(v32 + 3))
  {
    llvm::raw_ostream::write(v32, 32);
  }

  else
  {
    *(v32 + 4) = v33 + 1;
    *v33 = 32;
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) - v35 > 1uLL)
  {
    *v35 = 15917;
    *(v34 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v34, "->", 2uLL);
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (v37 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 32);
  }

  else
  {
    *(v36 + 4) = v37 + 1;
    *v37 = 32;
  }

  v38 = *this - 16;
  if (!*(*this + 9))
  {
    v38 = 0;
  }

  (*(*a2 + 32))(a2, *(v38 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v41, 0);
  v40 = *MEMORY[0x277D85DE8];
}

BOOL mlir::ODIE::Compiler::CoreML::WhileOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps1(v2, ((&v2[4 * ((v2[11] >> 23) & 1) + 17] + ((v2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v2[10], "before", 6, 0);
  result = 0;
  if (v3)
  {
    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps1(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 24, "after", 5, 1u);
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::WhileOp::parse()
{
  v2[16] = *MEMORY[0x277D85DE8];
  v0 = v2;
  v1 = 0x400000000;
  operator new();
}

void mlir::ODIE::Compiler::CoreML::WhileOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v62[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  v6 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v7 = *(v6 + 17);
    v8 = *(v6 + 9);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v60 = v8;
  v61 = v7;
  mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a2, &v60);
  v9 = (*(*a2 + 16))(a2);
  v10 = *(v9 + 4);
  if (v10 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 32);
  }

  else
  {
    *(v9 + 4) = v10 + 1;
    *v10 = 32;
  }

  (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), 1, 1, 0);
  v11 = (*(*a2 + 16))(a2);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 32);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 32;
  }

  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if (*(v13 + 3) - v14 > 1uLL)
  {
    *v14 = 28516;
    *(v13 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v13, "do", 2uLL);
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 32);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 32;
  }

  (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 24, 1, 1, 0);
  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 32);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 32;
  }

  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (*(v19 + 3) == v20)
  {
    llvm::raw_ostream::write(v19, ":", 1uLL);
  }

  else
  {
    *v20 = 58;
    ++*(v19 + 4);
  }

  v21 = (*(*a2 + 16))(a2);
  v22 = *(v21 + 4);
  if (v22 >= *(v21 + 3))
  {
    llvm::raw_ostream::write(v21, 32);
  }

  else
  {
    *(v21 + 4) = v22 + 1;
    *v22 = 32;
  }

  v23 = (*(*a2 + 16))(a2);
  v24 = *(v23 + 4);
  if (*(v23 + 3) == v24)
  {
    llvm::raw_ostream::write(v23, "(", 1uLL);
  }

  else
  {
    *v24 = 40;
    ++*(v23 + 4);
  }

  v25 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v26 = *(v25 + 17);
    if (v26)
    {
      v27 = *(v25 + 9);
      (*(*a2 + 32))(a2, *(*(v27 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v26 != 1)
      {
        v28 = v26 - 1;
        v29 = (v27 + 56);
        do
        {
          v30 = (*(*a2 + 16))(a2);
          v31 = *(v30 + 4);
          if (*(v30 + 3) - v31 > 1uLL)
          {
            *v31 = 8236;
            *(v30 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v30, ", ", 2uLL);
          }

          v32 = *v29;
          v29 += 4;
          (*(*a2 + 32))(a2, *(v32 + 8) & 0xFFFFFFFFFFFFFFF8);
          --v28;
        }

        while (v28);
      }
    }
  }

  v33 = (*(*a2 + 16))(a2);
  v34 = *(v33 + 4);
  if (*(v33 + 3) == v34)
  {
    llvm::raw_ostream::write(v33, ")", 1uLL);
  }

  else
  {
    *v34 = 41;
    ++*(v33 + 4);
  }

  v35 = (*(*a2 + 16))(a2);
  v36 = *(v35 + 4);
  if (v36 >= *(v35 + 3))
  {
    llvm::raw_ostream::write(v35, 32);
  }

  else
  {
    *(v35 + 4) = v36 + 1;
    *v36 = 32;
  }

  v37 = (*(*a2 + 16))(a2);
  v38 = *(v37 + 4);
  if (*(v37 + 3) - v38 > 1uLL)
  {
    *v38 = 15917;
    *(v37 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v37, "->", 2uLL);
  }

  v39 = (*(*a2 + 16))(a2);
  v40 = *(v39 + 4);
  if (v40 >= *(v39 + 3))
  {
    llvm::raw_ostream::write(v39, 32);
  }

  else
  {
    *(v39 + 4) = v40 + 1;
    *v40 = 32;
  }

  v41 = (*(*a2 + 16))(a2);
  v42 = *(v41 + 4);
  if (*(v41 + 3) == v42)
  {
    llvm::raw_ostream::write(v41, "(", 1uLL);
  }

  else
  {
    *v42 = 40;
    ++*(v41 + 4);
  }

  v59 = this;
  v43 = *this;
  v44 = *(*this + 9);
  if (v44)
  {
    v45 = *this - 16;
  }

  else
  {
    v45 = 0;
  }

  if (v44)
  {
    (*(*a2 + 32))(a2, *(v43 - 1) & 0xFFFFFFFFFFFFFFF8);
    if (v44 != 1)
    {
      v46 = v45 - 16;
      v47 = 1;
      while (1)
      {
        v48 = (*(*a2 + 16))(a2);
        v49 = *(v48 + 4);
        if (*(v48 + 3) - v49 > 1uLL)
        {
          *v49 = 8236;
          *(v48 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v48, ", ", 2uLL);
        }

        v50 = *(v43 - 1) & 7;
        v51 = v45;
        v52 = v47;
        if (v50 == 6)
        {
          goto LABEL_65;
        }

        v53 = (5 - v50);
        v54 = v46;
        v52 = v47 - v53;
        if (v47 > v53)
        {
          break;
        }

LABEL_66:
        (*(*a2 + 32))(a2, *(v54 + 8) & 0xFFFFFFFFFFFFFFF8);
        ++v47;
        v46 -= 16;
        if (v44 == v47)
        {
          goto LABEL_67;
        }
      }

      v51 = v45 - 16 * v53;
LABEL_65:
      v54 = v51 - 24 * v52;
      goto LABEL_66;
    }
  }

LABEL_67:
  v55 = (*(*a2 + 16))(a2);
  v56 = *(v55 + 4);
  if (*(v55 + 3) == v56)
  {
    llvm::raw_ostream::write(v55, ")", 1uLL);
  }

  else
  {
    *v56 = 41;
    ++*(v55 + 4);
  }

  v60 = v62;
  v61 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*v59);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v60, v61);
  if (v60 != v62)
  {
    free(v60);
  }

  v58 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::WriteHandleOp::build(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a3;
  v11 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v13, 0, &v13, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v12, 0, &v12, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v11, 0, &v11, 1);
  __src = v17;
  v16 = 0x200000000;
  v7 = *a1;
  mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&__src, 1uLL);
  v8 = *(*v7 + 384);
  v14 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id;
  v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v8 + 232), &v14);
  *__src = *v9;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v16);
  if (__src != v17)
  {
    free(__src);
  }

  v10 = *MEMORY[0x277D85DE8];
}

BOOL mlir::ODIE::Compiler::CoreML::WriteHandleOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v13 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps33(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps24(*this, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps24(*this, *(v2 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0)))
  {
    v3 = *(*this + 9);
    v4 = *(v3 + 24);
    HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*(v3 + 88));
    v6 = 1;
    if (HandleForToken)
    {
      v7 = HandleForToken == v4;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v10 = "failed to verify that input token must come from an operation on the same handle";
      v11 = 259;
      mlir::Operation::emitOpError(*this, &v10, v12);
      v6 = (v12[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL mlir::ODIE::Compiler::CoreML::WriteHandleOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v13 = 0;
  v14[0] = &v15;
  v12[0] = &v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v23, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseCustomTypeWithFallback<mlir::ODIE::Compiler::CoreML::HandleType>(a1, &__src))
  {
    return 0;
  }

  v15 = __src;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  v13 = __src;
  if ((*(*a1 + 120))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::ODIE::Compiler::CoreML::TokenType>(a1, &__src)) && (v11 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v8 = 0, mlir::AsmParser::parseType<mlir::ODIE::Compiler::CoreML::TokenType>(a1, &v8)) && (__src = v8, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v10), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v14, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v12, v5, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v10, v6, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::WriteHandleOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v42[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, ",", 1uLL);
  }

  else
  {
    *v11 = 44;
    ++*(v10 + 4);
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, ":", 1uLL);
  }

  else
  {
    *v17 = 58;
    ++*(v16 + 4);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, "(", 1uLL);
  }

  else
  {
    *v21 = 40;
    ++*(v20 + 4);
  }

  v22 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v22)
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::ODIE::Compiler::CoreML::HandleType,(void *)0>(a2, v22);
  }

  else
  {
    (*(*a2 + 32))(a2);
  }

  v23 = (*(*a2 + 16))(a2);
  v24 = *(v23 + 4);
  if (*(v23 + 3) == v24)
  {
    llvm::raw_ostream::write(v23, ",", 1uLL);
  }

  else
  {
    *v24 = 44;
    ++*(v23 + 4);
  }

  v25 = (*(*a2 + 16))(a2);
  v26 = *(v25 + 4);
  if (v26 >= *(v25 + 3))
  {
    llvm::raw_ostream::write(v25, 32);
  }

  else
  {
    *(v25 + 4) = v26 + 1;
    *v26 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (*(v27 + 3) == v28)
  {
    llvm::raw_ostream::write(v27, ",", 1uLL);
  }

  else
  {
    *v28 = 44;
    ++*(v27 + 4);
  }

  v29 = (*(*a2 + 16))(a2);
  v30 = *(v29 + 4);
  if (v30 >= *(v29 + 3))
  {
    llvm::raw_ostream::write(v29, 32);
  }

  else
  {
    *(v29 + 4) = v30 + 1;
    *v30 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v31 = (*(*a2 + 16))(a2);
  v32 = *(v31 + 4);
  if (*(v31 + 3) == v32)
  {
    llvm::raw_ostream::write(v31, ")", 1uLL);
  }

  else
  {
    *v32 = 41;
    ++*(v31 + 4);
  }

  v33 = (*(*a2 + 16))(a2);
  v34 = *(v33 + 4);
  if (v34 >= *(v33 + 3))
  {
    llvm::raw_ostream::write(v33, 32);
  }

  else
  {
    *(v33 + 4) = v34 + 1;
    *v34 = 32;
  }

  v35 = (*(*a2 + 16))(a2);
  v36 = *(v35 + 4);
  if (*(v35 + 3) - v36 > 1uLL)
  {
    *v36 = 15917;
    *(v35 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v35, "->", 2uLL);
  }

  v37 = (*(*a2 + 16))(a2);
  v38 = *(v37 + 4);
  if (v38 >= *(v37 + 3))
  {
    llvm::raw_ostream::write(v37, 32);
  }

  else
  {
    *(v37 + 4) = v38 + 1;
    *v38 = 32;
  }

  v39 = *this - 16;
  if (!*(*this + 9))
  {
    v39 = 0;
  }

  (*(*a2 + 32))(a2, *(v39 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v42, 0);
  v41 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::XorOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v9);
}

void mlir::ODIE::Compiler::CoreML::XorOp::build(void **a1, mlir::detail *a2, uint64_t a3, uint64_t a4)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v17 = a4;
  v18 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v18, 0, &v18, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v17, 0, &v17, 1);
  __src = v21;
  v20 = 0x200000000;
  v6 = *a1;
  v7 = *a2;
  v8 = *(a2 + 2);
  v9 = *(a2 + 6);
  mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  if (!mlir::ODIE::Compiler::CoreML::XorOp::inferReturnTypes(v6, v7, 1, v8 & 0xFFFFFFFFFFFFFFF9, v9, v10, v11, v12, v15, v16, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v13);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v20);
  if (__src != v21)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
}

BOOL mlir::ODIE::Compiler::CoreML::XorOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::XorOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v10 = 0;
  v11[0] = &v12;
  v9[0] = &v10;
  v9[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v12 = __src;
  if ((*(*a1 + 120))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v10 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v7 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v7)) && (__src = v7, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v9), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v11, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v9, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::XorOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v33[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++*(v16 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++*(v18 + 4);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ")", 1uLL);
  }

  else
  {
    *v23 = 41;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) - v27 > 1uLL)
  {
    *v27 = 15917;
    *(v26 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "->", 2uLL);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = *this - 16;
  if (!*(*this + 9))
  {
    v30 = 0;
  }

  (*(*a2 + 32))(a2, *(v30 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v33, 0);
  v32 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::YieldOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a5, 0, a5, a6);
  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a2 + 112, a7, &a7[16 * a8]);

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

BOOL mlir::ODIE::Compiler::CoreML::YieldOp::parse(uint64_t a1, uint64_t a2)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v10 = v12;
  v11 = 0x400000000;
  v8[0] = &v9;
  v8[1] = 0x100000000;
  v4 = (*(*a1 + 40))(a1);
  v5 = ((*(*a1 + 720))(a1, &v10, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && (!v11 || ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v8) & 1) != 0) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0) && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v10, v8, v4, a2 + 16);
  if (v8[0] != &v9)
  {
    free(v8[0]);
  }

  if (v10 != v12)
  {
    free(v10);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void mlir::ODIE::Compiler::CoreML::YieldOp::print(mlir::ODIE::Compiler::CoreML::YieldOp *this, mlir::OpAsmPrinter *a2)
{
  v28[4] = *MEMORY[0x277D85DE8];
  v4 = *this;
  if ((*(v4 + 46) & 0x80) != 0 && *(v4 + 68))
  {
    v5 = (*(*a2 + 16))(a2);
    v6 = *(v5 + 4);
    if (v6 >= *(v5 + 3))
    {
      llvm::raw_ostream::write(v5, 32);
    }

    else
    {
      *(v5 + 4) = v6 + 1;
      *v6 = 32;
    }

    v7 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v8 = *(v7 + 68);
      v9 = *(v7 + 72);
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v26 = v9;
    v27 = v8;
    mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a2, &v26);
    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (v11 >= *(v10 + 3))
    {
      llvm::raw_ostream::write(v10, 32);
    }

    else
    {
      *(v10 + 4) = v11 + 1;
      *v11 = 32;
    }

    v12 = (*(*a2 + 16))(a2);
    v13 = *(v12 + 4);
    if (*(v12 + 3) == v13)
    {
      llvm::raw_ostream::write(v12, ":", 1uLL);
    }

    else
    {
      *v13 = 58;
      ++*(v12 + 4);
    }

    v14 = (*(*a2 + 16))(a2);
    v15 = *(v14 + 4);
    if (v15 >= *(v14 + 3))
    {
      llvm::raw_ostream::write(v14, 32);
    }

    else
    {
      *(v14 + 4) = v15 + 1;
      *v15 = 32;
    }

    v16 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v17 = *(v16 + 68);
      if (v17)
      {
        v18 = *(v16 + 72);
        (*(*a2 + 32))(a2, *(*(v18 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v17 != 1)
        {
          v19 = v17 - 1;
          v20 = (v18 + 56);
          do
          {
            v21 = (*(*a2 + 16))(a2);
            v22 = *(v21 + 4);
            if (*(v21 + 3) - v22 > 1uLL)
            {
              *v22 = 8236;
              *(v21 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v21, ", ", 2uLL);
            }

            v23 = *v20;
            v20 += 4;
            (*(*a2 + 32))(a2, *(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
            --v19;
          }

          while (v19);
        }
      }
    }

    v4 = *this;
  }

  v26 = v28;
  v27 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v26, v27);
  if (v26 != v28)
  {
    free(v26);
  }

  v25 = *MEMORY[0x277D85DE8];
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::RealPartOp,mlir::ShapedType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::RealPartOp>(a1, *(**a2 + 32));
  v16[0] = a2;
  v16[1] = v8;
  v17[0] = &v18;
  v17[1] = 0x400000000;
  v19[0] = v20;
  v19[1] = 0x400000000;
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
  v9 = *a3;
  v14 = *a4;
  __src = v9;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v17, &v14, 0, &v14, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v19, &__src, v16);
  v10 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RealPartOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,mlir::ShapedType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp>(a1, *(**a2 + 32));
  v16[0] = a2;
  v16[1] = v8;
  v17[0] = &v18;
  v17[1] = 0x400000000;
  v19[0] = v20;
  v19[1] = 0x400000000;
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
  v9 = *a3;
  v14 = *a4;
  __src = v9;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v17, &v14, 0, &v14, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v19, &__src, v16);
  v10 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::RealPartOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RealPartOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.real_part";
    v6[3] = 16;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.imaginary_part";
    v6[3] = 21;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::GetShapeOpGenericAdaptorBase::GetShapeOpGenericAdaptorBase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  v6 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  if (a2)
  {
    v8 = *(**a2 + 32);
    std::optional<mlir::OperationName>::emplace[abi:nn200100]<char const(&)[17],mlir::MLIRContext *,void>(v6, "coreml.get_shape", &v8);
  }

  return a1;
}

void *std::optional<mlir::OperationName>::emplace[abi:nn200100]<char const(&)[17],mlir::MLIRContext *,void>(uint64_t a1, char *__s, mlir::StringAttr **a3)
{
  if (*(a1 + 8) == 1)
  {
    *(a1 + 8) = 0;
  }

  v6 = strlen(__s);
  result = mlir::OperationName::OperationName(a1, __s, v6, *a3);
  *(a1 + 8) = 1;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENSA_21ParamScopeOpInterfaceERKN4llvm9StringMapINS2_9AttributeENSC_15MallocAllocatorEEERNSC_15SmallVectorImplINSA_21PendingSpecializationEEEE3__0NSA_12ParamRefAttrESE_SE_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISR_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSE_E_NS_9allocatorIS12_EEFNST_INSU_ISE_SV_EEEESE_EE7__cloneEPNS0_6__baseIS17_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E80538;
  a2[1] = v2;
  return result;
}

void *_ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENSA_21ParamScopeOpInterfaceERKN4llvm9StringMapINS2_9AttributeENSC_15MallocAllocatorEEERNSC_15SmallVectorImplINSA_21PendingSpecializationEEEE3__0NSA_12ParamRefAttrESE_SE_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISR_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSE_E_NS_9allocatorIS12_EEFNST_INSU_ISE_SV_EEEESE_EEclEOSE_@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
  {
    v6 = result[1];
    result = llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::find(v6, *(*(v4 + 8) + 16), *(*(v4 + 8) + 24));
    if ((*v6 + 8 * *(v6 + 8)) == result || (v7 = *(*result + 8)) == 0)
    {
      v7 = v4;
    }

    *a3 = v7;
    v5 = 1;
    *(a3 + 8) = 1;
  }

  else
  {
    v5 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v5;
  return result;
}

uint64_t llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::find(uint64_t a1, unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v6 = llvm::xxh3_64bits(a2, a3, a3);
  Key = llvm::StringMapImpl::FindKey(a1, a2, a3, v6);
  if (Key == -1)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v8 = Key;
  }

  return *a1 + 8 * v8;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::StringMap<mlir::Attribute,llvm::MallocAllocator> const&,llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::PendingSpecialization> &)::$_1>(uint64_t a1, void *a2)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v23 = a2;
  if (!mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(a2) || **a1 == a2)
  {
    mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceElementsIn(*(a1 + 8), a2, 1, 1, 1);
    v7 = *(a1 + 16);
    AttrDictionary = mlir::Operation::getAttrDictionary(a2);
    v26 = 0;
    v25 = 0u;
    memset(v24, 0, sizeof(v24));
    v27[0] = &unk_286E80580;
    v27[1] = v7;
    v27[2] = &v23;
    v27[3] = v27;
    mlir::AttrTypeWalker::addWalk(v24, v27);
    std::__function::__value_func<mlir::WalkResult ()(mlir::Attribute)>::~__value_func[abi:nn200100](v27);
    mlir::AttrTypeWalker::walkImpl<mlir::Attribute,std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>>(v24, AttrDictionary, v24, 1);
    MEMORY[0x25F891030](v25, 8);
    v27[0] = &v24[1] + 1;
    std::vector<std::function<mlir::WalkResult ()(mlir::Type)>>::__destroy_vector::operator()[abi:nn200100](v27);
    v27[0] = v24;
    std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>::__destroy_vector::operator()[abi:nn200100](v27);
    v9 = v23;
    if ((*(v23 + 46) & 0x80) != 0)
    {
      v10 = *(v23 + 17);
      if (v10)
      {
        v11 = (v23[9] + 24);
        do
        {
          v12 = *v11;
          v11 += 4;
          *&v24[0] = *(v12 + 8) & 0xFFFFFFFFFFFFFFF8;
          mlir::Type::walk<(mlir::WalkOrder)1,mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::StringMap<mlir::Attribute,llvm::MallocAllocator> const&,llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::PendingSpecialization> &)::$_1::operator() const(mlir::Operation *)::{lambda(mlir::ODIE::Compiler::CoreML::ParamBindAttr)#1} &>(v24, v7, &v23);
          --v10;
        }

        while (v10);
        v9 = v23;
      }
    }

    v13 = *(v9 + 9);
    if (v13)
    {
      v14 = v9 - 2;
    }

    else
    {
      v14 = 0;
    }

    if (!v13)
    {
LABEL_22:
      result = 1;
      goto LABEL_23;
    }

    v15 = 0;
    v16 = v14;
    while (1)
    {
      v17 = v14;
      if (v15)
      {
        v18 = *(v9 - 1) & 7;
        v19 = v14;
        v20 = v15;
        if (v18 == 6)
        {
          goto LABEL_20;
        }

        v21 = (5 - v18);
        v17 = v16;
        v20 = v15 - v21;
        if (v15 > v21)
        {
          break;
        }
      }

LABEL_21:
      *&v24[0] = v17[1] & 0xFFFFFFFFFFFFFFF8;
      mlir::Type::walk<(mlir::WalkOrder)1,mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::StringMap<mlir::Attribute,llvm::MallocAllocator> const&,llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::PendingSpecialization> &)::$_1::operator() const(mlir::Operation *)::{lambda(mlir::ODIE::Compiler::CoreML::ParamBindAttr)#1} &>(v24, v7, &v23);
      ++v15;
      v16 -= 2;
      if (v13 == v15)
      {
        goto LABEL_22;
      }
    }

    v19 = &v14[-2 * v21];
LABEL_20:
    v17 = &v19[-3 * v20];
    goto LABEL_21;
  }

  if (a2[2])
  {
    a2[2] = 0;
    v5 = *a2;
    v4 = a2[1];
    *v4 = *a2;
    *(v5 + 8) = v4;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  result = 2;
LABEL_23:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::Type::walk<(mlir::WalkOrder)1,mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::StringMap<mlir::Attribute,llvm::MallocAllocator> const&,llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::PendingSpecialization> &)::$_1::operator() const(mlir::Operation *)::{lambda(mlir::ODIE::Compiler::CoreML::ParamBindAttr)#1} &>(uint64_t *a1, void **a2, void **a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v7 = 0;
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v8[0] = &unk_286E80580;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = v8;
  mlir::AttrTypeWalker::addWalk(v5, v8);
  std::__function::__value_func<mlir::WalkResult ()(mlir::Attribute)>::~__value_func[abi:nn200100](v8);
  mlir::AttrTypeWalker::walkImpl<mlir::Type,std::vector<std::function<mlir::WalkResult ()(mlir::Type)>>>(v5, *a1, &v5[1] + 1, 1);
  MEMORY[0x25F891030](v6, 8);
  v8[0] = &v5[1] + 1;
  std::vector<std::function<mlir::WalkResult ()(mlir::Type)>>::__destroy_vector::operator()[abi:nn200100](v8);
  v8[0] = v5;
  std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>::__destroy_vector::operator()[abi:nn200100](v8);
  v4 = *MEMORY[0x277D85DE8];
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIRZZNS2_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENS7_21ParamScopeOpInterfaceERKN4llvm9StringMapINS2_9AttributeENS9_15MallocAllocatorEEERNS9_15SmallVectorImplINS7_21PendingSpecializationEEEENK3__1clEPNS2_9OperationEEUlNS7_13ParamBindAttrEE_SN_SB_vEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSB_E_NS_9allocatorISY_EEFNS2_10WalkResultESB_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E80580;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIRZZNS2_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENS7_21ParamScopeOpInterfaceERKN4llvm9StringMapINS2_9AttributeENS9_15MallocAllocatorEEERNS9_15SmallVectorImplINS7_21PendingSpecializationEEEENK3__1clEPNS2_9OperationEEUlNS7_13ParamBindAttrEE_SN_SB_vEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSB_E_NS_9allocatorISY_EEFNS2_10WalkResultESB_EEclEOSB_(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v3 = *(a1 + 8);
    v4 = *(**(a1 + 16) + 24);
    v5 = *(v3 + 8);
    if (v5 >= *(v3 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(*(a1 + 8), (v3 + 16), v5 + 1, 16);
      LODWORD(v5) = *(v3 + 8);
    }

    v6 = (*v3 + 16 * v5);
    *v6 = v4;
    v6[1] = v2;
    ++*(v3 + 8);
  }

  return 1;
}

uint64_t llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(uint64_t a1)
{
  for (result = *(a1 + 16); result != *(a1 + 40); result = *(a1 + 16))
  {
    result = (*(a1 + 48))();
    if (result)
    {
      break;
    }

    mlir::Region::OpIterator::operator++(a1);
  }

  return result;
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL26verifyTypeMatchWithBindingENS2_8LocationESB_N4llvm8ArrayRefINSA_13ParamDeclAttrEEENSD_INS2_9TypedAttrEEENS2_4TypeENSC_12function_refIFNSC_13LogicalResultESI_EEEE3__0NSA_12ParamRefAttrENS2_9AttributeESP_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISS_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSP_E_NS_9allocatorIS13_EEFNSU_INSV_ISP_SW_EEEESP_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E805C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL26verifyTypeMatchWithBindingENS2_8LocationESB_N4llvm8ArrayRefINSA_13ParamDeclAttrEEENSD_INS2_9TypedAttrEEENS2_4TypeENSC_12function_refIFNSC_13LogicalResultESI_EEEE3__0NSA_12ParamRefAttrENS2_9AttributeESP_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISS_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSP_E_NS_9allocatorIS13_EEFNSU_INSV_ISP_SW_EEEESP_EEclEOSP_@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
  {
    v17 = *a2;
    v5 = *(result + 8);
    v6 = *(result + 16);
    v7 = v5[1];
    v8 = v6[1];
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = *v5;
      v11 = *v6;
      v12 = *(v3 + 8);
      v13 = 16 * v8 - 16;
      v14 = 8 * v7 - 8;
      while (v12 != *(*v10 + 8))
      {
        v15 = &v17;
        if (v14)
        {
          v10 += 8;
          v11 += 2;
          v16 = v13;
          v13 -= 16;
          v14 -= 8;
          if (v16)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      v15 = v11;
LABEL_13:
      v3 = *v15;
    }

    *a3 = v3;
    v4 = 1;
    *(a3 + 8) = 1;
  }

  else
  {
    v4 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v4;
  return result;
}

uint64_t mlir::FunctionOpInterface::getArgAttr(uint64_t *a1, unsigned int a2, const void *a3, size_t a4)
{
  v7 = *a1;
  result = (*(*(a1[1] + 48) + 24))();
  if (result)
  {
    v9 = *(*(result + 8) + 8 * a2);
    if (v9 && (v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(v9 + 8), *(v9 + 8) + 16 * *(v9 + 16), a3, a4), (v11 & 1) != 0))
    {
      return *(v10 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t llvm::filter_iterator_base<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(mlir::ValueRange,mlir::ValueRange)::$_0,std::bidirectional_iterator_tag>::findNextValid(unint64_t result)
{
  v1 = *(result + 8);
  if (v1 != *(result + 24))
  {
    v2 = result;
    do
    {
      result = mlir::ValueRange::dereference_iterator(v2, v1);
      if (*(*(*(result + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
      {
        break;
      }

      v1 = v2[1] + 1;
      v2[1] = v1;
    }

    while (v1 != v2[3]);
  }

  return result;
}

unint64_t llvm::filter_iterator_base<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(mlir::ValueRange,mlir::ValueRange)::$_1,std::bidirectional_iterator_tag>::findNextValid(unint64_t result)
{
  v1 = *(result + 8);
  if (v1 != *(result + 24))
  {
    v2 = result;
    do
    {
      result = mlir::ValueRange::dereference_iterator(v2, v1);
      if (*(*(*(result + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
        break;
      }

      v1 = v2[1] + 1;
      v2[1] = v1;
    }

    while (v1 != v2[3]);
  }

  return result;
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,mlir::Operation *,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (v1)
  {
    mlir::OpInterface<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  }

  return v1;
}

uint64_t mlir::OpInterface<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::ConstantOpGenericAdaptorBase(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = 0;
  v6 = a1 + 8;
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = *a3;
  *(a1 + 40) = a4;
  *(a1 + 48) = a5;
  if (a2)
  {
    v8 = *(**a2 + 32);
    std::optional<mlir::OperationName>::emplace[abi:nn200100]<char const(&)[16],mlir::MLIRContext *,void>(v6, "coreml.constant", &v8);
  }

  return a1;
}

void *std::optional<mlir::OperationName>::emplace[abi:nn200100]<char const(&)[16],mlir::MLIRContext *,void>(uint64_t a1, char *__s, mlir::StringAttr **a3)
{
  if (*(a1 + 8) == 1)
  {
    *(a1 + 8) = 0;
  }

  v6 = strlen(__s);
  result = mlir::OperationName::OperationName(a1, __s, v6, *a3);
  *(a1 + 8) = 1;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::ConcatOpGenericAdaptorBase::ConcatOpGenericAdaptorBase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  v5 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  if (a2)
  {
    mlir::OperationName::OperationName(v5, "coreml.concat", 0xD, *(**a2 + 32));
    *(a1 + 16) = 1;
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::LookupBucketFor<long long>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::InsertIntoBucketImpl<long long>(a1, a2, v10);
    v7 = result;
    *result = *a2;
    v8 = 1;
  }

  v9 = *a1 + 8 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::LookupBucketFor<long long>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 8 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == 0x8000000000000000;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 8 * (v13 & v5));
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
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::InsertIntoBucketImpl<long long>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::LookupBucketFor<long long>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    --*(a1 + 12);
  }

  return a3;
}

void llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::grow(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((8 * v8), 8uLL);
  *a1 = buffer;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::moveFromOldBuckets(a1, v4, &v4[v3]);

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {

    memset_pattern16(buffer, &unk_25D0A07B0, 8 * v10);
  }
}

void llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::moveFromOldBuckets(uint64_t a1, void *a2, void *a3)
{
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    memset_pattern16(*a1, &unk_25D0A07B0, 8 * v6);
  }

  for (; a2 != a3; ++a2)
  {
    if ((*a2 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
    {
      v7 = 0;
      llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::LookupBucketFor<long long>(a1, a2, &v7);
      *v7 = *a2;
      ++*(a1 + 8);
    }
  }
}

void std::__optional_storage_base<llvm::SmallVector<long long,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<long long,6u>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == *(a2 + 64))
  {
    if (*(a1 + 64))
    {

      llvm::SmallVectorImpl<long long>::operator=(a1, a2);
    }
  }

  else if (*(a1 + 64))
  {
    v3 = *a1;
    if (*a1 != a1 + 16)
    {
      free(v3);
    }

    *(a1 + 64) = 0;
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    if (*(a2 + 8))
    {
      llvm::SmallVectorImpl<long long>::operator=(a1, a2);
    }

    *(a1 + 64) = 1;
  }
}