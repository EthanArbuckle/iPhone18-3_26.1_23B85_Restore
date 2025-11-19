void mlir::ODIE::Compiler::CoreML::GetShapeOp::build(void **a1, uint64_t a2, uint64_t a3)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v14 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v14, 0, &v14, 1);
  __src = v17;
  v16 = 0x200000000;
  v5 = *a1;
  v6 = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  if (!mlir::ODIE::Compiler::CoreML::GetShapeOp::inferReturnTypes(v5, v6, 1, v7 & 0xFFFFFFFFFFFFFFF9, v8, Dictionary, v10, v11, *(a2 + 224) & 0xFFFFFFFFFFFFFFF9 | 2, *(a2 + 232), &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v12);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v16);
  if (__src != v17)
  {
    free(__src);
  }

  v13 = *MEMORY[0x277D85DE8];
}

BOOL mlir::ODIE::Compiler::CoreML::GetShapeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 9))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::GetShapeOp::parse(uint64_t a1, uint64_t a2)
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
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v6))
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

void mlir::ODIE::Compiler::CoreML::GetShapeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::GraphOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  v2 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  *(result + 72) = v2[3];
  *(result + 56) = v5;
  *(result + 40) = v4;
  *(result + 24) = v3;
  v6 = *(a2 + 44);
  v7 = v6 & 0x7FFFFF;
  if ((v6 & 0x7FFFFF) != 0)
  {
    v8 = ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *(result + 88) = v8;
  *(result + 96) = v7;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::setPropertiesFromAttr(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v40 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v36, a4);
    if (v36)
    {
      mlir::Diagnostic::operator<<<42ul>(v37, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "arg_attrs", 9uLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a3(&v36, a4);
        if (v36)
        {
LABEL_29:
          mlir::Diagnostic::operator<<<55ul>(v37, v13);
LABEL_30:
          if (v36)
          {
            LODWORD(v35[0]) = 0;
            v35[1] = v12;
            v20 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v38, v35, 1);
            v21 = v38 + 24 * v39;
            v22 = *v20;
            *(v21 + 16) = *(v20 + 16);
            *v21 = v22;
            ++v39;
          }

          goto LABEL_4;
        }

        goto LABEL_4;
      }

      *a1 = v12;
    }
  }

  v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "externalize", 0xBuLL);
  if (v15)
  {
    v12 = *(v14 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        a3(&v36, a4);
        if (v36)
        {
          goto LABEL_30;
        }

        goto LABEL_4;
      }

      a1[1] = v12;
    }
  }

  v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "function_type", 0xDuLL);
  if (v17)
  {
    v12 = *(v16 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        a3(&v36, a4);
        if (v36)
        {
          goto LABEL_30;
        }

        goto LABEL_4;
      }

      a1[2] = v12;
    }
  }

  v18 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "no_inline", 9uLL);
  if ((v19 & 1) == 0 || (v12 = *(v18 + 8)) == 0)
  {
LABEL_33:
    v23 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "param_decls", 0xBuLL);
    if (v24)
    {
      v25 = *(v23 + 8);
      v35[0] = v25;
      if (v25)
      {
        if (*(*v25 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
        {
          a3(&v36, a4);
          if (!v36)
          {
            goto LABEL_4;
          }

LABEL_56:
          if (v36)
          {
            mlir::Diagnostic::operator<<<mlir::Attribute &>(v37, v35);
          }

          goto LABEL_4;
        }

        a1[4] = v25;
      }
    }

    v26 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "priv", 4uLL);
    if (v27)
    {
      v28 = *(v26 + 8);
      v35[0] = v28;
      if (v28)
      {
        if (*(*v28 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a3(&v36, a4);
          if (!v36)
          {
            goto LABEL_4;
          }

          goto LABEL_56;
        }

        a1[5] = v28;
      }
    }

    v29 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "res_attrs", 9uLL);
    if (v30)
    {
      v31 = *(v29 + 8);
      v35[0] = v31;
      if (v31)
      {
        if (*(*v31 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          a3(&v36, a4);
          if (!v36)
          {
            goto LABEL_4;
          }

          goto LABEL_56;
        }

        a1[6] = v31;
      }
    }

    v32 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "sym_name", 8uLL);
    if (v33)
    {
      v34 = *(v32 + 8);
      v35[0] = v34;
      if (v34)
      {
        if (*(*v34 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a3(&v36, a4);
          if (!v36)
          {
            goto LABEL_4;
          }

          goto LABEL_56;
        }

        a1[7] = v34;
      }
    }

    result = 1;
    goto LABEL_5;
  }

  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[3] = v12;
    goto LABEL_33;
  }

  a3(&v36, a4);
  if (v36)
  {
    goto LABEL_29;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v36);
  result = 0;
LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v38[6] = *MEMORY[0x277D85DE8];
  v36 = v38;
  v37 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v35 = 261;
    v33 = "arg_attrs";
    v34 = 9;
    v7 = mlir::StringAttr::get(v6, &v33, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v36, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v35 = 261;
    v33 = "externalize";
    v34 = 11;
    v10 = mlir::StringAttr::get(v9, &v33, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v36, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v35 = 261;
    v33 = "function_type";
    v34 = 13;
    v13 = mlir::StringAttr::get(v12, &v33, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v36, v13, v11);
  }

  v14 = a2[3];
  if (v14)
  {
    v15 = *(**v14 + 32);
    v35 = 261;
    v33 = "no_inline";
    v34 = 9;
    v16 = mlir::StringAttr::get(v15, &v33, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v36, v16, v14);
  }

  v17 = a2[4];
  if (v17)
  {
    v18 = *(**v17 + 32);
    v35 = 261;
    v33 = "param_decls";
    v34 = 11;
    v19 = mlir::StringAttr::get(v18, &v33, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v36, v19, v17);
  }

  v20 = a2[5];
  if (v20)
  {
    v21 = *(**v20 + 32);
    v35 = 261;
    v33 = "priv";
    v34 = 4;
    v22 = mlir::StringAttr::get(v21, &v33, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v36, v22, v20);
  }

  v23 = a2[6];
  if (v23)
  {
    v24 = *(**v23 + 32);
    v35 = 261;
    v33 = "res_attrs";
    v34 = 9;
    v25 = mlir::StringAttr::get(v24, &v33, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v36, v25, v23);
  }

  v26 = a2[7];
  if (v26)
  {
    v27 = *(**v26 + 32);
    v35 = 261;
    v33 = "sym_name";
    v34 = 8;
    v28 = mlir::StringAttr::get(v27, &v33, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v36, v28, v26);
  }

  v29 = v36;
  if (v37)
  {
    v30 = mlir::DictionaryAttr::get(a1, v36, v37);
    v29 = v36;
  }

  else
  {
    v30 = 0;
  }

  if (v29 != v38)
  {
    free(v29);
  }

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

unint64_t mlir::ODIE::Compiler::CoreML::GraphOp::computePropertiesHash(void *a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v2 >> 47) ^ v2);
  v31 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v30 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a1[2];
  v7 = a1[3];
  v8 = (8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6);
  v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ ((0x9DDFEA08EB382D69 * v8) >> 47) ^ (0x9DDFEA08EB382D69 * v8));
  v29 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v10 = HIDWORD(v7);
  v11 = 0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7));
  v28 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v12 = a1[4];
  v13 = a1[5];
  v14 = (8 * v12 - 0xAE502812AA7333) ^ HIDWORD(v12);
  v15 = 0x9DDFEA08EB382D69 * (HIDWORD(v12) ^ ((0x9DDFEA08EB382D69 * v14) >> 47) ^ (0x9DDFEA08EB382D69 * v14));
  v27 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
  v16 = HIDWORD(v13);
  v17 = 0x9DDFEA08EB382D69 * ((8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13));
  v26 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) ^ ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 47));
  v18 = a1[7];
  v19 = 8 * a1[6] - 0xAE502812AA7333;
  v20 = 0x9DDFEA08EB382D69 * (HIDWORD(a1[6]) ^ ((0x9DDFEA08EB382D69 * (v19 ^ HIDWORD(a1[6]))) >> 47) ^ (0x9DDFEA08EB382D69 * (v19 ^ HIDWORD(a1[6]))));
  v25 = 0x9DDFEA08EB382D69 * (v20 ^ (v20 >> 47));
  v21 = 0x9DDFEA08EB382D69 * (HIDWORD(v18) ^ ((0x9DDFEA08EB382D69 * ((8 * v18 - 0xAE502812AA7333) ^ HIDWORD(v18))) >> 47) ^ (0x9DDFEA08EB382D69 * ((8 * v18 - 0xAE502812AA7333) ^ HIDWORD(v18))));
  v24 = 0x9DDFEA08EB382D69 * (v21 ^ (v21 >> 47));
  memset(v33, 0, sizeof(v33));
  memset(v32, 0, sizeof(v32));
  v34 = 0;
  v35 = 0xFF51AFD7ED558CCDLL;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v32, 0, v32, v33, &v31, &v30, &v29, &v28, &v27, &v26, &v25, &v24);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::GraphOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v4) = 0;
  if (a4 <= 8)
  {
    if (a4 == 4)
    {
      if (*a3 == 1986622064)
      {
        v4 = a2[5];
        goto LABEL_45;
      }
    }

    else
    {
      v5 = 0;
      if (a4 != 8)
      {
        return v5 | v4;
      }

      if (*a3 == 0x656D616E5F6D7973)
      {
        v4 = a2[7];
        goto LABEL_45;
      }
    }

LABEL_40:
    LOBYTE(v4) = 0;
    v5 = 0;
    return v5 | v4;
  }

  if (a4 == 13)
  {
    if (*a3 != 0x6E6F6974636E7566 || *(a3 + 5) != 0x657079745F6E6F69)
    {
      goto LABEL_40;
    }

    v4 = a2[2];
    goto LABEL_45;
  }

  if (a4 == 11)
  {
    if (*a3 == 0x6C616E7265747865 && *(a3 + 3) == 0x657A696C616E7265)
    {
      v4 = a2[1];
    }

    else
    {
      if (*a3 != 0x65645F6D61726170 || *(a3 + 3) != 0x736C6365645F6D61)
      {
        goto LABEL_40;
      }

      v4 = a2[4];
    }

    goto LABEL_45;
  }

  v5 = 0;
  if (a4 == 9)
  {
    if (*a3 == 0x727474615F677261 && *(a3 + 8) == 115)
    {
      v4 = *a2;
    }

    else if (*a3 == 0x6E696C6E695F6F6ELL && *(a3 + 8) == 101)
    {
      v4 = a2[3];
    }

    else
    {
      if (*a3 != 0x727474615F736572 || *(a3 + 8) != 115)
      {
        goto LABEL_40;
      }

      v4 = a2[6];
    }

LABEL_45:
    v5 = v4 & 0xFFFFFFFFFFFFFF00;
  }

  return v5 | v4;
}

void *mlir::ODIE::Compiler::CoreML::GraphOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 <= 8)
  {
    if (a3 == 4)
    {
      if (*a2 == 1986622064)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v13 = a4;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }

        result[5] = v13;
      }
    }

    else if (a3 == 8 && *a2 == 0x656D616E5F6D7973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v16 = a4;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      result[7] = v16;
    }
  }

  else
  {
    switch(a3)
    {
      case 13:
        if (*a2 == 0x6E6F6974636E7566 && *(a2 + 5) == 0x657079745F6E6F69)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
            {
              v9 = a4;
            }

            else
            {
              v9 = 0;
            }
          }

          else
          {
            v9 = 0;
          }

          result[2] = v9;
        }

        break;
      case 11:
        if (*a2 == 0x6C616E7265747865 && *(a2 + 3) == 0x657A696C616E7265)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v14 = a4;
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }

          result[1] = v14;
        }

        else if (*a2 == 0x65645F6D61726170 && *(a2 + 3) == 0x736C6365645F6D61)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
            {
              v12 = a4;
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

          result[4] = v12;
        }

        break;
      case 9:
        if (*a2 == 0x727474615F677261 && *(a2 + 8) == 115)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v15 = a4;
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 0;
          }

          *result = v15;
        }

        else if (*a2 == 0x6E696C6E695F6F6ELL && *(a2 + 8) == 101)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v17 = a4;
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
          }

          result[3] = v17;
        }

        else if (*a2 == 0x727474615F736572 && *(a2 + 8) == 115)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v7 = a4;
            }

            else
            {
              v7 = 0;
            }
          }

          else
          {
            v7 = 0;
          }

          result[6] = v7;
        }

        break;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::GraphOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v31 = 261;
    v29 = "arg_attrs";
    v30 = 9;
    v7 = mlir::StringAttr::get(v6, &v29, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v31 = 261;
    v29 = "externalize";
    v30 = 11;
    v10 = mlir::StringAttr::get(v9, &v29, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v31 = 261;
    v29 = "function_type";
    v30 = 13;
    v13 = mlir::StringAttr::get(v12, &v29, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }

  v14 = a2[3];
  if (v14)
  {
    v15 = *(**v14 + 32);
    v31 = 261;
    v29 = "no_inline";
    v30 = 9;
    v16 = mlir::StringAttr::get(v15, &v29, a3);
    mlir::NamedAttrList::push_back(a3, v16, v14);
  }

  v17 = a2[4];
  if (v17)
  {
    v18 = *(**v17 + 32);
    v31 = 261;
    v29 = "param_decls";
    v30 = 11;
    v19 = mlir::StringAttr::get(v18, &v29, a3);
    mlir::NamedAttrList::push_back(a3, v19, v17);
  }

  v20 = a2[5];
  if (v20)
  {
    v21 = *(**v20 + 32);
    v31 = 261;
    v29 = "priv";
    v30 = 4;
    v22 = mlir::StringAttr::get(v21, &v29, a3);
    mlir::NamedAttrList::push_back(a3, v22, v20);
  }

  v23 = a2[6];
  if (v23)
  {
    v24 = *(**v23 + 32);
    v31 = 261;
    v29 = "res_attrs";
    v30 = 9;
    v25 = mlir::StringAttr::get(v24, &v29, a3);
    mlir::NamedAttrList::push_back(a3, v25, v23);
  }

  v26 = a2[7];
  if (v26)
  {
    v27 = *(**v26 + 32);
    v31 = 261;
    v29 = "sym_name";
    v30 = 8;
    v28 = mlir::StringAttr::get(v27, &v29, a3);
    mlir::NamedAttrList::push_back(a3, v28, v26);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::GraphOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  if (v9)
  {
    v10 = v8[1];
    if (v10)
    {
      if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v10, "arg_attrs", 9, a3, a4))
      {
        return 0;
      }
    }
  }

  v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
  if (v12)
  {
    v13 = v11[1];
    if (v13)
    {
      if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v13, "externalize", 11, a3, a4))
      {
        return 0;
      }
    }
  }

  v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
  if (v15)
  {
    v16 = v14[1];
    if (v16)
    {
      if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps8(v16, "function_type", 13, a3, a4))
      {
        return 0;
      }
    }
  }

  v17 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 24));
  if (v18)
  {
    v19 = v17[1];
    if (v19)
    {
      if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v19, "no_inline", 9, a3, a4))
      {
        return 0;
      }
    }
  }

  v20 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 32));
  if (v21)
  {
    v22 = v20[1];
    if (v22)
    {
      if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(v22, "param_decls", 11, a3, a4))
      {
        return 0;
      }
    }
  }

  v23 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 40));
  if (v24)
  {
    v25 = v23[1];
    if (v25)
    {
      if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v25, "priv", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  v26 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 48));
  if (v27)
  {
    v28 = v26[1];
    if (v28)
    {
      if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v28, "res_attrs", 9, a3, a4))
      {
        return 0;
      }
    }
  }

  v29 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 56));
  return (v30 & 1) == 0 || (v31 = v29[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v31, "sym_name", 8, a3, a4);
}

BOOL mlir::ODIE::Compiler::CoreML::GraphOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2 + 16 * ((*(v2 + 11) >> 23) & 1);
  v6 = *(v3 + 8);
  v4 = v3 + 64;
  v5 = v6;
  v7 = v4[2];
  if (!v7)
  {
    v15 = "requires attribute 'function_type'";
LABEL_17:
    v18 = v15;
    v19 = 259;
    mlir::Operation::emitOpError(v2, &v18, v20);
    v14 = (v21 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
    goto LABEL_18;
  }

  v8 = v4[4];
  if (!v8)
  {
    v15 = "requires attribute 'param_decls'";
    goto LABEL_17;
  }

  v9 = v4[7];
  if (!v9)
  {
    v15 = "requires attribute 'sym_name'";
    goto LABEL_17;
  }

  v10 = v4[1];
  v11 = v4[3];
  v13 = v4[5];
  v12 = v4[6];
  v20[0] = v2;
  v14 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v9, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20) && (v20[0] = *this, mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps8(v7, "function_type", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20)) && (v20[0] = *this, mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(v8, "param_decls", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20)) && (v20[0] = *this, mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v13, "priv", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20)) && (v20[0] = *this, mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v10, "externalize", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20)) && (v20[0] = *this, mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v11, "no_inline", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20)) && (v20[0] = *this, mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v5, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20)) && (v20[0] = *this, mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v12, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20)) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps3(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "bodyRegion", 10, 0);
LABEL_18:
  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps3(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = a5;
  v5 = *(a2 + 8);
  if (v5 == a2 || *(v5 + 8) == a2)
  {
    v13 = 1;
  }

  else
  {
    v21 = "region #";
    v22 = 259;
    mlir::Operation::emitOpError(a1, &v21, v24);
    v8 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v24, &v23);
    v9 = v8;
    if (a4)
    {
      v17 = 1283;
      v16[0] = " ('";
      v16[2] = a3;
      v16[3] = a4;
      v10 = v16;
      v18[2] = "') ";
      v11 = 2;
      v12 = 3;
    }

    else
    {
      v11 = 3;
      v10 = " ";
      v12 = 1;
    }

    v20 = v12;
    v18[0] = v10;
    v19 = v11;
    if (*v8)
    {
      mlir::Diagnostic::operator<<((v8 + 1), v18);
      if (*v9)
      {
        mlir::Diagnostic::operator<<<58ul>((v9 + 1), "failed to verify constraint: region with at most 1 blocks");
      }
    }

    v13 = (v9[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v24);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void mlir::ODIE::Compiler::CoreML::GreaterOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v9);
}

void mlir::ODIE::Compiler::CoreML::GreaterOp::build(void **a1, mlir::detail *a2, uint64_t a3, uint64_t a4)
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
  if (!mlir::ODIE::Compiler::CoreML::GreaterOp::inferReturnTypes(v6, v7, 1, v8 & 0xFFFFFFFFFFFFFFF9, v9, v10, v11, v12, v15, v16, &__src))
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

BOOL mlir::ODIE::Compiler::CoreML::GreaterOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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

BOOL mlir::ODIE::Compiler::CoreML::GreaterOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::ODIE::Compiler::CoreML::GreaterOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

void mlir::ODIE::Compiler::CoreML::IfOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v6, 0, &v6, 1);
  mlir::OperationState::addRegion(a2);
}

void mlir::ODIE::Compiler::CoreML::IfOp::parse()
{
  v4 = *MEMORY[0x277D85DE8];
  memset(v2, 0, sizeof(v2));
  v3 = 0;
  v0 = v2;
  v1 = 1;
  operator new();
}

void mlir::ODIE::Compiler::CoreML::IfOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v51[4] = *MEMORY[0x277D85DE8];
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

  v8 = (((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
  v12 = *v8 == v8 || ((v9 = v8[1]) != 0 ? (v10 = v9 - 8) : (v10 = 0), (v11 = *(v10 + 32), *(mlir::Operation::getAttrDictionary(v11) + 16)) || (*(v11 + 46) & 0x80) != 0 && *(v11 + 68)) || *(v11 + 36) != 0;
  (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), 1, v12, 0);
  v13 = ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
  if (*(v13 + 24) != v13 + 24)
  {
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
    if (*(v16 + 3) - v17 > 3uLL)
    {
      *v17 = 1702063205;
      *(v16 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v16, "else", 4uLL);
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

    v20 = ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
    v24 = *(v20 + 24) == v20 + 24 || ((v21 = *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 32)) != 0 ? (v22 = v21 - 8) : (v22 = 0), (v23 = *(v22 + 32), *(mlir::Operation::getAttrDictionary(v23) + 16)) || (*(v23 + 46) & 0x80) != 0 && *(v23 + 68)) || *(v23 + 36) != 0;
    (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 24, 1, v24, 0);
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

  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (*(v27 + 3) == v28)
  {
    llvm::raw_ostream::write(v27, ":", 1uLL);
  }

  else
  {
    *v28 = 58;
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v31 = (*(*a2 + 16))(a2);
  v32 = *(v31 + 4);
  if (v32 >= *(v31 + 3))
  {
    llvm::raw_ostream::write(v31, 32);
  }

  else
  {
    *(v31 + 4) = v32 + 1;
    *v32 = 32;
  }

  v33 = (*(*a2 + 16))(a2);
  v34 = *(v33 + 4);
  if (*(v33 + 3) - v34 > 1uLL)
  {
    *v34 = 15917;
    *(v33 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v33, "->", 2uLL);
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

  v37 = *this;
  v38 = *(*this + 9);
  if (v38)
  {
    v39 = *this - 16;
  }

  else
  {
    v39 = 0;
  }

  if (v38)
  {
    (*(*a2 + 32))(a2, *(v37 - 1) & 0xFFFFFFFFFFFFFFF8);
    if (v38 != 1)
    {
      v40 = v39 - 16;
      v41 = 1;
      while (1)
      {
        v42 = (*(*a2 + 16))(a2);
        v43 = *(v42 + 4);
        if (*(v42 + 3) - v43 > 1uLL)
        {
          *v43 = 8236;
          *(v42 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v42, ", ", 2uLL);
        }

        v44 = *(v37 - 1) & 7;
        v45 = v39;
        v46 = v41;
        if (v44 == 6)
        {
          goto LABEL_64;
        }

        v47 = (5 - v44);
        v48 = v40;
        v46 = v41 - v47;
        if (v41 > v47)
        {
          break;
        }

LABEL_65:
        (*(*a2 + 32))(a2, *(v48 + 8) & 0xFFFFFFFFFFFFFFF8);
        ++v41;
        v40 -= 16;
        if (v38 == v41)
        {
          goto LABEL_66;
        }
      }

      v45 = v39 - 16 * v47;
LABEL_64:
      v48 = v45 - 24 * v46;
      goto LABEL_65;
    }
  }

LABEL_66:
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v51, 0);
  v50 = *MEMORY[0x277D85DE8];
}

BOOL mlir::ODIE::Compiler::CoreML::ImaginaryPartOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps23(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 9))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(*this, (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::ImaginaryPartOp::parse(uint64_t a1, uint64_t a2)
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

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v9 = __src;
  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    return 0;
  }

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

void mlir::ODIE::Compiler::CoreML::ImaginaryPartOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v25[4] = *MEMORY[0x277D85DE8];
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

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, "(", 1uLL);
  }

  else
  {
    *v13 = 40;
    ++*(v12 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, ")", 1uLL);
  }

  else
  {
    *v15 = 41;
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
  if (*(v18 + 3) - v19 > 1uLL)
  {
    *v19 = 15917;
    *(v18 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v18, "->", 2uLL);
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

  v22 = *this - 16;
  if (!*(*this + 9))
  {
    v22 = 0;
  }

  (*(*a2 + 32))(a2, *(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v25, 0);
  v24 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v23, a4);
    if (v23)
    {
      mlir::Diagnostic::operator<<<42ul>(v24, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "path", 4uLL);
  if ((v11 & 1) == 0 || (v12 = *(v10 + 8)) == 0)
  {
LABEL_12:
    v13 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "sym_name", 8uLL);
    if (v14)
    {
      v12 = *(v13 + 8);
      if (v12)
      {
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a3(&v23, a4);
          if (!v23)
          {
            goto LABEL_4;
          }

          goto LABEL_17;
        }

        a1[1] = v12;
      }
    }

    v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "toImport", 8uLL);
    if (v16)
    {
      v17 = *(v15 + 8);
      if (v17)
      {
        if (*(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          a3(&v23, a4);
          if (!v23)
          {
            goto LABEL_4;
          }

          if (!v23)
          {
            goto LABEL_4;
          }

          v21 = 0;
          v22 = v17;
          goto LABEL_26;
        }

        a1[2] = v17;
      }
    }

    result = 1;
    goto LABEL_5;
  }

  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    *a1 = v12;
    goto LABEL_12;
  }

  a3(&v23, a4);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_17:
  if (v23)
  {
    v21 = 0;
    v22 = v12;
LABEL_26:
    v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v25, &v21, 1);
    v19 = v25 + 24 * v26;
    v20 = *v18;
    *(v19 + 16) = *(v18 + 16);
    *v19 = v20;
    ++v26;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
  result = 0;
LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v23[6] = *MEMORY[0x277D85DE8];
  v21 = v23;
  v22 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v20 = 261;
    v18 = "path";
    v19 = 4;
    v7 = mlir::StringAttr::get(v6, &v18, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v21, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v20 = 261;
    v18 = "sym_name";
    v19 = 8;
    v10 = mlir::StringAttr::get(v9, &v18, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v21, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v20 = 261;
    v18 = "toImport";
    v19 = 8;
    v13 = mlir::StringAttr::get(v12, &v18, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v21, v13, v11);
  }

  v14 = v21;
  if (v22)
  {
    v15 = mlir::DictionaryAttr::get(a1, v21, v22);
    v14 = v21;
  }

  else
  {
    v15 = 0;
  }

  if (v14 != v23)
  {
    free(v14);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

unint64_t mlir::ODIE::Compiler::CoreML::ImportOp::computePropertiesHash(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = HIDWORD(a1[1]);
  v4 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v3);
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v5 = HIDWORD(a1[2]);
  v6 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v5);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  memset(v12, 0, sizeof(v12));
  v13 = 0xFF51AFD7ED558CCDLL;
  v11 = 0x9DDFEA08EB382D69 * (v2 ^ (v2 >> 47));
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(&v11, 0, v12, &v12[3] + 8, &v10, &v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::ImportOp::getInherentAttr(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  if (a4 == 8)
  {
    if (*a3 == 0x656D616E5F6D7973)
    {
      v4 = a2[1];
      goto LABEL_10;
    }

    if (*a3 == 0x74726F706D496F74)
    {
      v4 = a2[2];
      goto LABEL_10;
    }
  }

  else if (a4 == 4 && *a3 == 1752457584)
  {
    v4 = *a2;
LABEL_10:
    v5 = v4 & 0xFFFFFFFFFFFFFF00;
    return v5 | v4;
  }

  LOBYTE(v4) = 0;
  v5 = 0;
  return v5 | v4;
}

void *mlir::ODIE::Compiler::CoreML::ImportOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8)
  {
    if (*a2 == 0x656D616E5F6D7973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v6 = a4;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }

      result[1] = v6;
    }

    else if (*a2 == 0x74726F706D496F74)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          v4 = a4;
        }

        else
        {
          v4 = 0;
        }
      }

      else
      {
        v4 = 0;
      }

      result[2] = v4;
    }
  }

  else if (a3 == 4 && *a2 == 1752457584)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

void mlir::ODIE::Compiler::CoreML::ImportOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v16 = 261;
    v14 = "path";
    v15 = 4;
    v7 = mlir::StringAttr::get(v6, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v16 = 261;
    v14 = "sym_name";
    v15 = 8;
    v10 = mlir::StringAttr::get(v9, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v16 = 261;
    v14 = "toImport";
    v15 = 8;
    v13 = mlir::StringAttr::get(v12, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::ImportOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v10, "path", 4, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v13, "sym_name", 8, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps13(v16, "toImport", 8, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps13(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
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
          mlir::Diagnostic::operator<<<59ul>(v13, "' failed to satisfy constraint: symbol reference attribute");
        }
      }
    }

    v7 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  v4 = v3[10];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::build(mlir::StringAttr **a1, uint64_t a2, const llvm::Twine *a3, uint64_t a4)
{
  v17 = 261;
  v16[0] = a3;
  v16[1] = a4;
  v8 = mlir::StringAttr::get(*a1, v16, a3);
  v10 = mlir::SymbolRefAttr::get(v8, 0, 0, v9);
  v15 = 261;
  v14[0] = a3;
  v14[1] = a4;
  v12 = mlir::StringAttr::get(*a1, v14, v11);
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>(a2) + 16) = v10;
  result = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>(a2);
  *(result + 8) = v12;
  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::ImportOp::verifyInvariantsImpl(unsigned int **this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = &v2[4 * ((v2[11] >> 23) & 1)];
  v5 = *(v3 + 8);
  v6 = *(v3 + 9);
  v4 = v3 + 16;
  if (!v6)
  {
    v9 = "requires attribute 'sym_name'";
LABEL_9:
    v12 = v9;
    v13 = 259;
    mlir::Operation::emitOpError(v2, &v12, v14);
    v8 = (v15 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    goto LABEL_10;
  }

  v7 = *(v4 + 2);
  if (!v7)
  {
    v9 = "requires attribute 'toImport'";
    goto LABEL_9;
  }

  v14[0] = v2;
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps13(v7, "toImport", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps13(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14) && (v14[0] = *this, mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v6, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14)))
  {
    v14[0] = *this;
    v8 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v5, "path", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14);
  }

  else
  {
    v8 = 0;
  }

LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::InvokeOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  v2 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *v2;
  *(result + 40) = v2[1];
  *(result + 24) = v3;
  v4 = *(a2 + 44);
  v5 = v4 & 0x7FFFFF;
  if ((v4 & 0x7FFFFF) != 0)
  {
    v6 = ((a2 + 64 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *(result + 56) = v6;
  *(result + 64) = v5;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v25, a4);
    if (v25)
    {
      mlir::Diagnostic::operator<<<42ul>(v26, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "arg_attrs", 9uLL);
  if ((v10 & 1) == 0 || (v11 = *(v9 + 8)) == 0)
  {
LABEL_11:
    v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "callee", 6uLL);
    if (v13)
    {
      v11 = *(v12 + 8);
      if (v11)
      {
        v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*(v12 + 8));
        if (!v14)
        {
          a3(&v25, a4);
          if (!v25)
          {
            goto LABEL_4;
          }

          goto LABEL_23;
        }

        a1[1] = v14;
        a1[2] = v15;
      }
    }

    v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "res_attrs", 9uLL);
    if (v17)
    {
      v18 = *(v16 + 8);
      if (v18)
      {
        if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          a3(&v25, a4);
          if (!v25)
          {
            goto LABEL_4;
          }

          if (!v25)
          {
            goto LABEL_4;
          }

          v23 = 0;
          v24 = v18;
          goto LABEL_25;
        }

        a1[3] = v18;
      }
    }

    result = 1;
    goto LABEL_28;
  }

  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    *a1 = v11;
    goto LABEL_11;
  }

  a3(&v25, a4);
  if (!v25)
  {
    goto LABEL_4;
  }

LABEL_23:
  if (v25)
  {
    v23 = 0;
    v24 = v11;
LABEL_25:
    v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v27, &v23, 1);
    v20 = v27 + 24 * v28;
    v21 = *v19;
    *(v20 + 16) = *(v19 + 16);
    *v20 = v21;
    ++v28;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
  result = 0;
LABEL_28:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v23[6] = *MEMORY[0x277D85DE8];
  v21 = v23;
  v22 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v20 = 261;
    v18 = "arg_attrs";
    v19 = 9;
    v7 = mlir::StringAttr::get(v6, &v18, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v21, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v20 = 261;
    v18 = "callee";
    v19 = 6;
    v10 = mlir::StringAttr::get(v9, &v18, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v21, v10, v8);
  }

  v11 = a2[3];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v20 = 261;
    v18 = "res_attrs";
    v19 = 9;
    v13 = mlir::StringAttr::get(v12, &v18, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v21, v13, v11);
  }

  v14 = v21;
  if (v22)
  {
    v15 = mlir::DictionaryAttr::get(a1, v21, v22);
    v14 = v21;
  }

  else
  {
    v15 = 0;
  }

  if (v14 != v23)
  {
    free(v14);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

unint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::computePropertiesHash(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = HIDWORD(a1[1]);
  v4 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v3);
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v5 = HIDWORD(a1[3]);
  v6 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v5);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  memset(v12, 0, sizeof(v12));
  v13 = 0xFF51AFD7ED558CCDLL;
  v11 = 0x9DDFEA08EB382D69 * (v2 ^ (v2 >> 47));
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(&v11, 0, v12, &v12[3] + 8, &v10, &v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 6)
  {
    if (*a3 != 1819042147 || *(a3 + 4) != 25957)
    {
      goto LABEL_17;
    }

    v6 = a2[1];
    goto LABEL_20;
  }

  if (a4 == 9)
  {
    if (*a3 == 0x727474615F677261 && *(a3 + 8) == 115)
    {
      v6 = *a2;
    }

    else
    {
      if (*a3 != 0x727474615F736572 || *(a3 + 8) != 115)
      {
        goto LABEL_17;
      }

      v6 = a2[3];
    }

LABEL_20:
    v8 = v6 & 0xFFFFFFFFFFFFFF00;
    return v8 | v6;
  }

LABEL_17:
  LOBYTE(v6) = 0;
  v8 = 0;
  return v8 | v6;
}

uint64_t *mlir::ODIE::Compiler::CoreML::InvokeOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = result;
  if (a3 == 6)
  {
    if (*a2 == 1819042147 && *(a2 + 4) == 25957)
    {
      if (a4)
      {
        result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a4);
      }

      else
      {
        result = 0;
        v9 = 0;
      }

      v4[1] = result;
      v4[2] = v9;
    }
  }

  else if (a3 == 9)
  {
    if (*a2 == 0x727474615F677261 && *(a2 + 8) == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v10 = a4;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      *result = v10;
    }

    else if (*a2 == 0x727474615F736572 && *(a2 + 8) == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      result[3] = v7;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::InvokeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v16 = 261;
    v14 = "arg_attrs";
    v15 = 9;
    v7 = mlir::StringAttr::get(v6, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v16 = 261;
    v14 = "callee";
    v15 = 6;
    v10 = mlir::StringAttr::get(v9, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }

  v11 = a2[3];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v16 = 261;
    v14 = "res_attrs";
    v15 = 9;
    v13 = mlir::StringAttr::get(v12, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::InvokeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v10, "arg_attrs", 9, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(v13, "callee", 6, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v16, "res_attrs", 9, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::InvokeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a6, 0, a6, a7);
  v11 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(a3);
  mlir::OperationState::addAttribute(a2, "callee", 6, v11);

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a4, 0, a4, a5);
}

void mlir::ODIE::Compiler::CoreML::InvokeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a7, 0, a7, a8);
  mlir::OperationState::addAttribute(a2, "callee", 6, a3);

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a5, 0, a5, a6);
}

BOOL mlir::ODIE::Compiler::CoreML::InvokeOp::verifyInvariantsImpl(unsigned int **this)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = &v2[4 * ((v2[11] >> 23) & 1)];
  v6 = *(v3 + 8);
  v4 = *(v3 + 9);
  v5 = v3 + 16;
  if (v4)
  {
    v7 = *(v5 + 3);
    v13[0] = v2;
    if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(v4, "callee", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v13) && (v13[0] = *this, mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v6, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v13)))
    {
      v13[0] = *this;
      v8 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v7, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v13);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v11 = "requires attribute 'callee'";
    v12 = 259;
    mlir::Operation::emitOpError(v2, &v11, v13);
    v8 = (v14 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::IsolatedGroupOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  v2 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v3 = *v2;
  *(result + 40) = *(v2 + 16);
  *(result + 24) = v3;
  v4 = *(a2 + 44);
  v5 = v4 & 0x7FFFFF;
  if ((v4 & 0x7FFFFF) != 0)
  {
    v6 = ((a2 + 64 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *(result + 48) = v6;
  *(result + 56) = v5;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v23, a4);
    if (v23)
    {
      mlir::Diagnostic::operator<<<42ul>(v24, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "arg_attrs", 9uLL);
  if ((v11 & 1) == 0 || (v12 = *(v10 + 8)) == 0)
  {
LABEL_12:
    v13 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "delegate_id", 0xBuLL);
    if (v14)
    {
      v12 = *(v13 + 8);
      if (v12)
      {
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a3(&v23, a4);
          if (!v23)
          {
            goto LABEL_4;
          }

          goto LABEL_17;
        }

        a1[1] = v12;
      }
    }

    v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "res_attrs", 9uLL);
    if (v16)
    {
      v17 = *(v15 + 8);
      if (v17)
      {
        if (*(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          a3(&v23, a4);
          if (!v23)
          {
            goto LABEL_4;
          }

          if (!v23)
          {
            goto LABEL_4;
          }

          v21 = 0;
          v22 = v17;
          goto LABEL_26;
        }

        a1[2] = v17;
      }
    }

    result = 1;
    goto LABEL_5;
  }

  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    *a1 = v12;
    goto LABEL_12;
  }

  a3(&v23, a4);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_17:
  if (v23)
  {
    v21 = 0;
    v22 = v12;
LABEL_26:
    v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v25, &v21, 1);
    v19 = v25 + 24 * v26;
    v20 = *v18;
    *(v19 + 16) = *(v18 + 16);
    *v19 = v20;
    ++v26;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
  result = 0;
LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v23[6] = *MEMORY[0x277D85DE8];
  v21 = v23;
  v22 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v20 = 261;
    v18 = "arg_attrs";
    v19 = 9;
    v7 = mlir::StringAttr::get(v6, &v18, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v21, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v20 = 261;
    v18 = "delegate_id";
    v19 = 11;
    v10 = mlir::StringAttr::get(v9, &v18, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v21, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v20 = 261;
    v18 = "res_attrs";
    v19 = 9;
    v13 = mlir::StringAttr::get(v12, &v18, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v21, v13, v11);
  }

  v14 = v21;
  if (v22)
  {
    v15 = mlir::DictionaryAttr::get(a1, v21, v22);
    v14 = v21;
  }

  else
  {
    v15 = 0;
  }

  if (v14 != v23)
  {
    free(v14);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

unint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::computePropertiesHash(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = HIDWORD(a1[1]);
  v4 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v3);
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v5 = HIDWORD(a1[2]);
  v6 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v5);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  memset(v12, 0, sizeof(v12));
  v13 = 0xFF51AFD7ED558CCDLL;
  v11 = 0x9DDFEA08EB382D69 * (v2 ^ (v2 >> 47));
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(&v11, 0, v12, &v12[3] + 8, &v10, &v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 11)
  {
    if (*a3 != 0x65746167656C6564 || *(a3 + 3) != 0x64695F6574616765)
    {
      goto LABEL_17;
    }

    v6 = a2[1];
    goto LABEL_20;
  }

  if (a4 == 9)
  {
    if (*a3 == 0x727474615F677261 && *(a3 + 8) == 115)
    {
      v6 = *a2;
    }

    else
    {
      if (*a3 != 0x727474615F736572 || *(a3 + 8) != 115)
      {
        goto LABEL_17;
      }

      v6 = a2[2];
    }

LABEL_20:
    v8 = v6 & 0xFFFFFFFFFFFFFF00;
    return v8 | v6;
  }

LABEL_17:
  LOBYTE(v6) = 0;
  v8 = 0;
  return v8 | v6;
}

void *mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 11)
  {
    if (*a2 == 0x65746167656C6564 && *(a2 + 3) == 0x64695F6574616765)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      result[1] = v7;
    }
  }

  else if (a3 == 9)
  {
    if (*a2 == 0x727474615F677261 && *(a2 + 8) == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      *result = v8;
    }

    else if (*a2 == 0x727474615F736572 && *(a2 + 8) == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v9 = a4;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      result[2] = v9;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v16 = 261;
    v14 = "arg_attrs";
    v15 = 9;
    v7 = mlir::StringAttr::get(v6, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v16 = 261;
    v14 = "delegate_id";
    v15 = 11;
    v10 = mlir::StringAttr::get(v9, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v16 = 261;
    v14 = "res_attrs";
    v15 = 9;
    v13 = mlir::StringAttr::get(v12, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v10, "arg_attrs", 9, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v13, "delegate_id", 11, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v16, "res_attrs", 9, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a5, 0, a5, a6);
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(a2) + 8) = a7;
  if (a8)
  {
    *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(a2) = a8;
  }

  if (a9)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(a2) + 16) = a9;
  }

  mlir::OperationState::addRegion(a2);
}

BOOL mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2 + 16 * ((*(v2 + 11) >> 23) & 1);
  v6 = *(v3 + 8);
  v4 = *(v3 + 9);
  v5 = v3 + 64;
  if (!v4)
  {
    v16[0] = "requires attribute 'delegate_id'";
    v17 = 259;
LABEL_12:
    mlir::Operation::emitOpError(v2, v16, v18);
    v12 = (v19 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    goto LABEL_13;
  }

  v7 = *(v5 + 2);
  v18[0] = v2;
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v4, "delegate_id", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18))
  {
    v18[0] = *this;
    if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v6, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18))
    {
      v18[0] = *this;
      if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v7, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18))
      {
        v8 = *this;
        v9 = *(*this + 9);
        if ((*(*this + 46) & 0x80) != 0 && (v10 = *(v8 + 17), v10))
        {
          if ((*(v8 + 9) & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v11 = *(v8 + 9) & 0xFFFFFFFFFFFFFFF8 | 4;
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v10 = 0;
          v11 = 0;
        }

        v15 = v8 - 16;
        if (!v9)
        {
          v15 = 0;
        }

        v18[0] = v15;
        v18[1] = 0;
        v18[2] = v15;
        v18[3] = v9;
        mlir::TypeRange::TypeRange<mlir::ResultRange>(v16, v18);
        if (mlir::ODIE::Compiler::CoreML::verifyHandlesToTokens(v11, v10, v16[0], v16[1]))
        {
          v12 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps1(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "group", 5, 0);
          goto LABEL_13;
        }

        v16[0] = "failed to verify that number of handle inputs must match number of token outputs";
        v17 = 259;
        v2 = *this;
        goto LABEL_12;
      }
    }
  }

  v12 = 0;
LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

BOOL mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::parse(mlir::Region *a1, uint64_t *a2)
{
  v36[16] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = 0;
  v35[0] = v36;
  v35[1] = 0x400000000;
  v25 = 0;
  v32 = &v34;
  v33 = 0x200000000;
  if ((*(*a1 + 152))(a1))
  {
    v4 = **(*(*a1 + 32))(a1);
    v5 = *(v4 + 528);
    if (!v5)
    {
      v6 = *(v4 + 384);
      v28 = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
      v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), &v28);
    }

    if (mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v27, v5))
    {
      if (v27)
      {
        v7 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(a2);
        *(v7 + 8) = v27;
      }

      if ((*(*a1 + 168))(a1) & 1) != 0 && ((*(*a1 + 280))(a1))
      {
        (*(*a1 + 40))(a1);
        if ((*(*a1 + 720))(a1, v35, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 296))(a1))
        {
          v24 = (*(*a1 + 40))(a1);
          if ((*(*a1 + 488))(a1, a2 + 14))
          {
            v8 = a2[1];
            v28 = a1;
            v29 = &v24;
            v30 = a2;
            if (mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::verifyInherentAttrs(v8, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v28) && ((*(*a1 + 104))(a1) & 1) != 0)
            {
              v24 = 0;
              if (mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v24))
              {
                v9 = *(v24 + 16);
                v10 = *(v24 + 8);
                v25 = v9;
                v26 = v10;
                v11 = *(v24 + 12);
                v28 = 0;
                v12 = (*(*a1 + 792))(a1, &v28, 0, 0, 0);
                if ((v12 & 0x100) == 0)
                {
LABEL_16:
                  v13 = (v9 + 8 * v10);
                  std::unique_ptr<mlir::Region>::reset[abi:nn200100](&v28, 0);
                  v14 = v32;
                  if (v33)
                  {
                    v15 = 8 * v33;
                    do
                    {
                      v16 = *v14;
                      v14 += 8;
                      v17 = (*(*a1 + 32))(a1);
                      v18 = *a2;
                      v28 = *v17;
                      v30 = 0;
                      v31 = 0;
                      v29 = 0;
                      mlir::impl::ensureRegionTerminator(v16, &v28, v18, llvm::function_ref<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>, mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>::buildTerminator);
                      v15 -= 8;
                    }

                    while (v15);
                    v14 = v32;
                    v19 = v33;
                  }

                  else
                  {
                    v19 = 0;
                  }

                  mlir::OperationState::addRegions(a2, v14, v19);
                  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 8), v13, &v13[8 * v11]);
                  v23 = (*(*a1 + 16))(a1);
                  v20 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v35, &v25, v23, (a2 + 2));
                  goto LABEL_25;
                }

                if (v12)
                {
                  llvm::SmallVectorImpl<std::unique_ptr<mlir::Region>>::emplace_back<std::unique_ptr<mlir::Region>>(&v32, &v28);
                  if ((*(*a1 + 128))(a1))
                  {
                    operator new();
                  }

                  goto LABEL_16;
                }

                std::unique_ptr<mlir::Region>::reset[abi:nn200100](&v28, 0);
              }
            }
          }
        }
      }
    }
  }

  v20 = 0;
LABEL_25:
  llvm::SmallVector<std::unique_ptr<mlir::Region>,2u>::~SmallVector(&v32);
  if (v35[0] != v36)
  {
    free(v35[0]);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t llvm::SmallVectorImpl<std::unique_ptr<mlir::Region>>::emplace_back<std::unique_ptr<mlir::Region>>(unsigned int *a1, uint64_t *a2)
{
  v2 = a1[2];
  if (v2 >= a1[3])
  {
    return llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::growAndEmplaceBack<std::unique_ptr<mlir::Region>>(a1, a2);
  }

  v3 = *a1;
  v4 = *a2;
  *a2 = 0;
  *(v3 + 8 * v2) = v4;
  v5 = v2 + 1;
  a1[2] = v5;
  return v3 + 8 * v5 - 8;
}

void mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v51[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ">", 1uLL);
  }

  else
  {
    *v7 = 62;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, "(", 1uLL);
  }

  else
  {
    *v9 = 40;
    ++*(v8 + 4);
  }

  v10 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v11 = *(v10 + 17);
    v12 = *(v10 + 9);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v49 = v12;
  v50 = v11;
  mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a2, &v49);
  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if (*(v13 + 3) == v14)
  {
    llvm::raw_ostream::write(v13, ")", 1uLL);
  }

  else
  {
    *v14 = 41;
    ++*(v13 + 4);
  }

  v49 = v51;
  v50 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v49, "delegate_id", 11);
  v15 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v15 && v15 == mlir::ArrayAttr::get(*(***(*this + 3) + 32), 0, 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v49, "arg_attrs", 9);
  }

  v16 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10);
  if (v16 && v16 == mlir::ArrayAttr::get(*(***(*this + 3) + 32), 0, 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v49, "res_attrs", 9);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v49, v50);
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

  v24 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v25 = *(v24 + 9);
    v26 = *(v24 + 17);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v48[0] = v25;
  v48[1] = 0;
  v48[2] = v25;
  v48[3] = v26;
  v27 = *(v24 + 9);
  v28 = v24 - 16;
  if (!v27)
  {
    v28 = 0;
  }

  v47[0] = v28;
  v47[1] = 0;
  v47[2] = v28;
  v47[3] = v27;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v48, v47);
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

  v31 = *(*this + 11);
  v32 = v31 & 0x7FFFFF;
  if ((v31 & 0x7FFFFF) != 0)
  {
    v33 = (((*this + 16 * ((v31 >> 23) & 1) + ((v31 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
    v37 = *v33 == v33 || ((v34 = v33[1]) != 0 ? (v35 = v34 - 8) : (v35 = 0), (v36 = *(v35 + 32), *(mlir::Operation::getAttrDictionary(v36) + 16)) || (*(v36 + 46) & 0x80) != 0 && *(v36 + 68)) || *(v36 + 36) != 0;
    (*(*a2 + 224))(a2, v33, 1, v37, 0);
    if (v32 != 1)
    {
      v39 = v33 + 3;
      v40 = 24 * v32 - 24;
      do
      {
        v41 = (*(*a2 + 16))(a2);
        v42 = *(v41 + 4);
        if (*(v41 + 3) - v42 > 1uLL)
        {
          *v42 = 8236;
          *(v41 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v41, ", ", 2uLL);
        }

        v46 = v39 == *v39 || ((v43 = v39[1]) != 0 ? (v44 = v43 - 8) : (v44 = 0), (v45 = *(v44 + 32), *(mlir::Operation::getAttrDictionary(v45) + 16)) || (*(v45 + 46) & 0x80) != 0 && *(v45 + 68)) || *(v45 + 36) != 0;
        (*(*a2 + 224))(a2, v39, 1, v46, 0);
        v39 += 3;
        v40 -= 24;
      }

      while (v40);
    }
  }

  if (v49 != v51)
  {
    free(v49);
  }

  v38 = *MEMORY[0x277D85DE8];
}

BOOL mlir::ODIE::Compiler::CoreML::JoinTokenOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::JoinTokenOp **this)
{
  v29[25] = *MEMORY[0x277D85DE8];
  v2 = *this;
  ODSOperands = mlir::ODIE::Compiler::CoreML::JoinTokenOp::getODSOperands(*this, 0);
  v5 = v4;
  if (v4)
  {
    v6 = 0;
    v7 = ODSOperands + 24;
    while (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps24(*this, *(*v7 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v6))
    {
      ++v6;
      v7 += 32;
      if (v5 == v6)
      {
        v2 = *this;
        goto LABEL_6;
      }
    }

    goto LABEL_21;
  }

LABEL_6:
  v8 = mlir::ODIE::Compiler::CoreML::JoinTokenOp::getODSOperands(v2, 1u);
  if (v9)
  {
    v10 = v9;
    v11 = v8 + 24;
    while (1)
    {
      v12 = *this;
      v13 = *(*v11 + 8) & 0xFFFFFFFFFFFFFFF8;
      v25 = v5;
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
        v24 = 261;
        v23[0] = "operand";
        v23[1] = 7;
        mlir::Operation::emitOpError(v12, v23, &v28);
        if (v28)
        {
          mlir::Diagnostic::operator<<<3ul>(v29, " #");
        }

        v14 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v28, &v25);
        v15 = v14;
        if (*v14)
        {
          mlir::Diagnostic::operator<<<32ul>((v14 + 1), " must be variadic of , but got ");
          if (*v15)
          {
            v26 = 4;
            v27 = v13;
            v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v15 + 3), &v26, 1);
            v17 = v15[3] + 24 * *(v15 + 8);
            v18 = *v16;
            *(v17 + 16) = *(v16 + 16);
            *v17 = v18;
            ++*(v15 + 8);
          }
        }

        v19 = *(v15 + 200);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
        if (v19)
        {
          break;
        }
      }

      v11 += 32;
      LODWORD(v5) = v5 + 1;
      if (!--v10)
      {
        v2 = *this;
        goto LABEL_17;
      }
    }

LABEL_21:
    result = 0;
    goto LABEL_22;
  }

LABEL_17:
  if (*(v2 + 9))
  {
    v20 = v2 - 16;
  }

  else
  {
    v20 = 0;
  }

  result = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps24(v2, *(v20 + 1) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
LABEL_22:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::JoinTokenOp::getODSOperands(mlir::ODIE::Compiler::CoreML::JoinTokenOp *this, unsigned int a2)
{
  if ((*(this + 46) & 0x80) != 0)
  {
    *(this + 17);
    __const__ZN4mlir4ODIE8Compiler6CoreML7StackOp27getODSOperandIndexAndLengthEj_isVariadic[a2];
    v2 = a2;
    v3 = *(this + 9);
  }

  else
  {
    v3 = 0;
    __const__ZN4mlir4ODIE8Compiler6CoreML7StackOp27getODSOperandIndexAndLengthEj_isVariadic[a2];
    v2 = a2;
  }

  return v3 + 32 * v2;
}

BOOL mlir::ODIE::Compiler::CoreML::JoinTokenOp::parse(uint64_t a1, uint64_t a2)
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
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    goto LABEL_17;
  }

  if ((*(*a1 + 128))(a1))
  {
    v5 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, v18, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1))
  {
    __src = 0;
    if (mlir::AsmParser::parseType<mlir::ODIE::Compiler::CoreML::TokenType>(a1, &__src))
    {
      v12 = __src;
      if (((*(*a1 + 128))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v16)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 56))(a1))
      {
        v9 = 0;
        if (mlir::AsmParser::parseType<mlir::ODIE::Compiler::CoreML::TokenType>(a1, &v9))
        {
          __src = v9;
          (*(*a1 + 40))(a1);
          if ((*(*a1 + 488))(a1, a2 + 112))
          {
            llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v11);
            if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v11, v4, a2 + 16))
            {
              v6 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v18, v16, v5, a2 + 16);
              goto LABEL_18;
            }
          }
        }
      }
    }
  }

LABEL_17:
  v6 = 0;
LABEL_18:
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

void mlir::ODIE::Compiler::CoreML::JoinTokenOp::print(mlir::ODIE::Compiler::CoreML::JoinTokenOp **this, mlir::OpAsmPrinter *a2)
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

  ODSOperands = mlir::ODIE::Compiler::CoreML::JoinTokenOp::getODSOperands(*this, 0);
  (*(*a2 + 160))(a2, *(ODSOperands + 24));
  mlir::ODIE::Compiler::CoreML::JoinTokenOp::getODSOperands(*this, 1u);
  if (v7)
  {
    v8 = (*(*a2 + 16))(a2);
    v9 = *(v8 + 4);
    if (*(v8 + 3) == v9)
    {
      llvm::raw_ostream::write(v8, ",", 1uLL);
    }

    else
    {
      *v9 = 44;
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

    v47 = mlir::ODIE::Compiler::CoreML::JoinTokenOp::getODSOperands(*this, 1u);
    v48 = v12;
    mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a2, &v47);
  }

  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if (v14 >= *(v13 + 3))
  {
    llvm::raw_ostream::write(v13, 32);
  }

  else
  {
    *(v13 + 4) = v14 + 1;
    *v14 = 32;
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) == v16)
  {
    llvm::raw_ostream::write(v15, ":", 1uLL);
  }

  else
  {
    *v16 = 58;
    ++*(v15 + 4);
  }

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
    llvm::raw_ostream::write(v19, "(", 1uLL);
  }

  else
  {
    *v20 = 40;
    ++*(v19 + 4);
  }

  v21 = mlir::ODIE::Compiler::CoreML::JoinTokenOp::getODSOperands(*this, 0);
  (*(*a2 + 32))(a2, *(*(v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::ODIE::Compiler::CoreML::JoinTokenOp::getODSOperands(*this, 1u);
  if (v22)
  {
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

    v27 = mlir::ODIE::Compiler::CoreML::JoinTokenOp::getODSOperands(*this, 1u);
    if (v28)
    {
      v29 = v27;
      v30 = v28;
      (*(*a2 + 32))(a2, *(*(v27 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v31 = v30 - 1;
      if (v31)
      {
        v32 = (v29 + 56);
        do
        {
          v33 = (*(*a2 + 16))(a2);
          v34 = *(v33 + 4);
          if (*(v33 + 3) - v34 > 1uLL)
          {
            *v34 = 8236;
            *(v33 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v33, ", ", 2uLL);
          }

          v35 = *v32;
          v32 += 4;
          (*(*a2 + 32))(a2, *(v35 + 8) & 0xFFFFFFFFFFFFFFF8);
          --v31;
        }

        while (v31);
      }
    }
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (*(v36 + 3) == v37)
  {
    llvm::raw_ostream::write(v36, ")", 1uLL);
  }

  else
  {
    *v37 = 41;
    ++*(v36 + 4);
  }

  v38 = (*(*a2 + 16))(a2);
  v39 = *(v38 + 4);
  if (v39 >= *(v38 + 3))
  {
    llvm::raw_ostream::write(v38, 32);
  }

  else
  {
    *(v38 + 4) = v39 + 1;
    *v39 = 32;
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = *(v40 + 4);
  if (*(v40 + 3) - v41 > 1uLL)
  {
    *v41 = 15917;
    *(v40 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v40, "->", 2uLL);
  }

  v42 = (*(*a2 + 16))(a2);
  v43 = *(v42 + 4);
  if (v43 >= *(v42 + 3))
  {
    llvm::raw_ostream::write(v42, 32);
  }

  else
  {
    *(v42 + 4) = v43 + 1;
    *v43 = 32;
  }

  v44 = *this - 16;
  if (!*(*this + 9))
  {
    v44 = 0;
  }

  (*(*a2 + 32))(a2, *(v44 + 8) & 0xFFFFFFFFFFFFFFF8);
  v47 = v49;
  v48 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v47, v48);
  if (v47 != v49)
  {
    free(v47);
  }

  v46 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::LogOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreML::LogOp::verifyInvariantsImpl(mlir::Operation **this)
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

BOOL mlir::ODIE::Compiler::CoreML::LogOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::ODIE::Compiler::CoreML::LogOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

void mlir::ODIE::Compiler::CoreML::MaxPool2dOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = a4;
  __src = a3;
  v13 = a6;
  v14 = a5;
  v11 = a8;
  v12 = a7;
  v10 = a9;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v15, 0, &v15, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v14, 0, &v14, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v13, 0, &v13, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v12, 0, &v12, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v11, 0, &v11, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v10, 0, &v10, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v17);
}

BOOL mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v10 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 5u) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6)))
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
    v4 = 1;
    if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
    {
      v7 = "failed to verify that Result 0 element type must match element type of operand 0.";
      v8 = 259;
      mlir::Operation::emitOpError(*this, &v7, v9);
      v4 = (v9[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::ODIE::Compiler::CoreML::MaxPool2dOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v40[0] = v41;
  v40[1] = 1;
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  v37[0] = v38;
  v37[1] = 1;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  v34[0] = v35;
  v34[1] = 1;
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  v31[0] = v32;
  v31[1] = 1;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v28[0] = v29;
  v28[1] = 1;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v25[0] = v26;
  v25[1] = 1;
  v23[1] = 1;
  v24 = 0;
  v22 = 0;
  v23[0] = &v24;
  v21[0] = &v22;
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
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v41, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v38, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v35, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v7 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v32, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v29, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v9 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v26, 1) & 1) == 0)
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
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src))
  {
    return 0;
  }

  v24 = __src;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src))
  {
    return 0;
  }

  v22 = __src;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src))
  {
    return 0;
  }

  v20 = __src;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src))
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
  if ((*(*a1 + 120))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v14 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v11 = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v11)) && (__src = v11, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v13), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v40, v23, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v37, v21, v5, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v34, v19, v6, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v31, v17, v7, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v28, v15, v8, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v25, v13, v9, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::MaxPool2dOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 152));
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 184));
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

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (*(v28 + 3) == v29)
  {
    llvm::raw_ostream::write(v28, ":", 1uLL);
  }

  else
  {
    *v29 = 58;
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
    llvm::raw_ostream::write(v32, "(", 1uLL);
  }

  else
  {
    *v33 = 40;
    ++*(v32 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8);
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
    *v59 = 15917;
    *(v58 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v58, "->", 2uLL);
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

BOOL mlir::ODIE::Compiler::CoreML::MaxPool3dOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v10 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps10(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 5u) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps10(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6)))
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
    v4 = 1;
    if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
    {
      v7 = "failed to verify that Result 0 element type must match element type of operand 0.";
      v8 = 259;
      mlir::Operation::emitOpError(*this, &v7, v9);
      v4 = (v9[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::ODIE::Compiler::CoreML::MaxPool3dOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v40[0] = v41;
  v40[1] = 1;
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  v37[0] = v38;
  v37[1] = 1;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  v34[0] = v35;
  v34[1] = 1;
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  v31[0] = v32;
  v31[1] = 1;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v28[0] = v29;
  v28[1] = 1;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v25[0] = v26;
  v25[1] = 1;
  v23[1] = 1;
  v24 = 0;
  v22 = 0;
  v23[0] = &v24;
  v21[0] = &v22;
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
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v41, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v38, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v35, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v7 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v32, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v29, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v9 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v26, 1) & 1) == 0)
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
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src))
  {
    return 0;
  }

  v24 = __src;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src))
  {
    return 0;
  }

  v22 = __src;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src))
  {
    return 0;
  }

  v20 = __src;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src))
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
  if ((*(*a1 + 120))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v14 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v11 = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v11)) && (__src = v11, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v13), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v40, v23, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v37, v21, v5, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v34, v19, v6, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v31, v17, v7, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v28, v15, v8, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v25, v13, v9, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::MaxPool3dOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 152));
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 184));
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

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (*(v28 + 3) == v29)
  {
    llvm::raw_ostream::write(v28, ":", 1uLL);
  }

  else
  {
    *v29 = 58;
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
    llvm::raw_ostream::write(v32, "(", 1uLL);
  }

  else
  {
    *v33 = 40;
    ++*(v32 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8);
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
    *v59 = 15917;
    *(v58 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v58, "->", 2uLL);
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

void mlir::ODIE::Compiler::CoreML::MaximumOp::build(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8[1] = *MEMORY[0x277D85DE8];
  __src = a3;
  v8[0] = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &__src, 0, &__src, 2);
  __src = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::MaximumOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v9);
}

uint64_t mlir::ODIE::Compiler::CoreML::MaximumOp::verifyInvariantsImpl(mlir::Operation **this)
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

BOOL mlir::ODIE::Compiler::CoreML::MaximumOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::ODIE::Compiler::CoreML::MaximumOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::setPropertiesFromAttr(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v26, a4);
    if (v26)
    {
      mlir::Diagnostic::operator<<<42ul>(v27, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "alignInBits", 0xBuLL);
  if ((v11 & 1) == 0 || (v12 = *(v10 + 8)) == 0)
  {
LABEL_12:
    v13 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "sym_name", 8uLL);
    if (v14)
    {
      v12 = *(v13 + 8);
      if (v12)
      {
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a3(&v26, a4);
          if (!v26)
          {
            goto LABEL_4;
          }

LABEL_23:
          if (v26)
          {
            LODWORD(v25[0]) = 0;
            v25[1] = v12;
            v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v28, v25, 1);
            v18 = v28 + 24 * v29;
            v19 = *v17;
            *(v18 + 16) = *(v17 + 16);
            *v18 = v19;
            ++v29;
          }

          goto LABEL_4;
        }

        a1[1] = v12;
      }
    }

    v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "type", 4uLL);
    if (v16)
    {
      v12 = *(v15 + 8);
      if (v12)
      {
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
        {
          a3(&v26, a4);
          if (!v26)
          {
            goto LABEL_4;
          }

          goto LABEL_23;
        }

        a1[2] = v12;
      }
    }

    v20 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "value", 5uLL);
    if (v21)
    {
      v22 = *(v20 + 8);
      v25[0] = v22;
      if (v22)
      {
        v23 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v22);
        if (!v23)
        {
          a3(&v26, a4);
          if (v26)
          {
            if (v26)
            {
              mlir::Diagnostic::operator<<<mlir::Attribute &>(v27, v25);
            }
          }

          goto LABEL_4;
        }

        a1[3] = v23;
        a1[4] = v24;
      }
    }

    result = 1;
    goto LABEL_5;
  }

  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    *a1 = v12;
    goto LABEL_12;
  }

  a3(&v26, a4);
  if (v26)
  {
    goto LABEL_23;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v26);
  result = 0;
LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v26[6] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v23 = 261;
    v21 = "alignInBits";
    v22 = 11;
    v7 = mlir::StringAttr::get(v6, &v21, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v23 = 261;
    v21 = "sym_name";
    v22 = 8;
    v10 = mlir::StringAttr::get(v9, &v21, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v23 = 261;
    v21 = "type";
    v22 = 4;
    v13 = mlir::StringAttr::get(v12, &v21, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v13, v11);
  }

  v14 = a2[3];
  if (v14)
  {
    v15 = *(**v14 + 32);
    v23 = 261;
    v21 = "value";
    v22 = 5;
    v16 = mlir::StringAttr::get(v15, &v21, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v16, v14);
  }

  v17 = v24;
  if (v25)
  {
    v18 = mlir::DictionaryAttr::get(a1, v24, v25);
    v17 = v24;
  }

  else
  {
    v18 = 0;
  }

  if (v17 != v26)
  {
    free(v17);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

unint64_t mlir::ODIE::Compiler::CoreML::MemberOp::computePropertiesHash(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v2 >> 47) ^ v2);
  v16 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a1[3];
  v7 = 8 * a1[2] - 0xAE502812AA7333;
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(a1[2]) ^ ((0x9DDFEA08EB382D69 * (v7 ^ HIDWORD(a1[2]))) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ HIDWORD(a1[2]))));
  v14 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v9 = HIDWORD(v6);
  v10 = 0x9DDFEA08EB382D69 * ((8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6));
  v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 47));
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  v19 = 0;
  v20 = 0xFF51AFD7ED558CCDLL;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v17, 0, v17, v18, &v16, &v15, &v14, &v13);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::MemberOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v4) = 0;
  if (a4 <= 7)
  {
    if (a4 != 4)
    {
      v5 = 0;
      if (a4 == 5)
      {
        if (*a3 != 1970037110 || *(a3 + 4) != 101)
        {
          goto LABEL_21;
        }

        v4 = a2[3];
LABEL_23:
        v5 = v4 & 0xFFFFFFFFFFFFFF00;
        return v5 | v4;
      }

      return v5 | v4;
    }

    if (*a3 == 1701869940)
    {
      v4 = a2[2];
      goto LABEL_23;
    }

LABEL_21:
    LOBYTE(v4) = 0;
    v5 = 0;
    return v5 | v4;
  }

  if (a4 == 8)
  {
    if (*a3 == 0x656D616E5F6D7973)
    {
      v4 = a2[1];
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v5 = 0;
  if (a4 == 11)
  {
    if (*a3 != 0x426E496E67696C61 || *(a3 + 3) != 0x737469426E496E67)
    {
      goto LABEL_21;
    }

    v4 = *a2;
    goto LABEL_23;
  }

  return v5 | v4;
}

uint64_t *mlir::ODIE::Compiler::CoreML::MemberOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = result;
  if (a3 > 7)
  {
    if (a3 == 8)
    {
      if (*a2 == 0x656D616E5F6D7973)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v10 = a4;
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }

        result[1] = v10;
      }
    }

    else if (a3 == 11 && *a2 == 0x426E496E67696C61 && *(a2 + 3) == 0x737469426E496E67)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      *result = v8;
    }
  }

  else if (a3 == 4)
  {
    if (*a2 == 1701869940)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
        {
          v9 = a4;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      result[2] = v9;
    }
  }

  else if (a3 == 5 && *a2 == 1970037110 && *(a2 + 4) == 101)
  {
    if (a4)
    {
      result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a4);
    }

    else
    {
      result = 0;
      v6 = 0;
    }

    v4[3] = result;
    v4[4] = v6;
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::MemberOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v19 = 261;
    v17 = "alignInBits";
    v18 = 11;
    v7 = mlir::StringAttr::get(v6, &v17, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v19 = 261;
    v17 = "sym_name";
    v18 = 8;
    v10 = mlir::StringAttr::get(v9, &v17, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v19 = 261;
    v17 = "type";
    v18 = 4;
    v13 = mlir::StringAttr::get(v12, &v17, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }

  v14 = a2[3];
  if (v14)
  {
    v15 = *(**v14 + 32);
    v19 = 261;
    v17 = "value";
    v18 = 5;
    v16 = mlir::StringAttr::get(v15, &v17, a3);
    mlir::NamedAttrList::push_back(a3, v16, v14);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::MemberOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps15(v10, "alignInBits", 11, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v13, "sym_name", 8, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0 || (v16 = v14[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps14(v16, "type", 4, a3, a4))
      {
        v17 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 24));
        if ((v18 & 1) == 0)
        {
          return 1;
        }

        v19 = v17[1];
        if (!v19 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(v19, "value", 5, a3, a4))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps15(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v7 = a1[1], *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v7[2] == -2147483584)
  {
    v8 = 1;
  }

  else
  {
    a4(&v13, a5);
    if (v13)
    {
      mlir::Diagnostic::operator<<<12ul>(v14, "attribute '");
      if (v13)
      {
        v12 = 261;
        v11[0] = a2;
        v11[1] = a3;
        mlir::Diagnostic::operator<<(v14, v11);
        if (v13)
        {
          mlir::Diagnostic::operator<<<66ul>(v14, "' failed to satisfy constraint: 64-bit unsigned integer attribute");
        }
      }
    }

    v8 = (v14[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps14(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
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
          mlir::Diagnostic::operator<<<51ul>(v13, "' failed to satisfy constraint: any type attribute");
        }
      }
    }

    v7 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 56))(a1, &v14))
  {
    v4 = v14;
    if (!v14)
    {
      goto LABEL_15;
    }

    v5 = *(*v14 + 136);
    if (v5 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
LABEL_15:
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

      {
        llvm::getTypeName<mlir::IntegerAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::IntegerAttr>();
        unk_27FC18860 = v12;
      }

      if (v18)
      {
        v17 = 261;
        v15 = llvm::getTypeName<mlir::IntegerAttr>(void)::Name;
        v16 = unk_27FC18860;
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

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::TypedAttr>(uint64_t a1, uint64_t **a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 56))(a1, &v14))
  {
    if (v14 && (v4 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v14), *a2 = v4, a2[1] = v5, !v4))
    {
      v13[16] = 257;
      (*(*a1 + 16))(&v18, a1, v13);
      if (v18)
      {
        mlir::Diagnostic::operator<<<10ul>(v19, "expected ");
      }

      {
        llvm::getTypeName<mlir::TypedAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::TypedAttr>();
        *algn_27FC173F8 = v12;
      }

      if (v18)
      {
        v17 = 261;
        v15 = llvm::getTypeName<mlir::TypedAttr>(void)::Name;
        v16 = *algn_27FC173F8;
        mlir::Diagnostic::operator<<(v19, &v15);
        if (v18)
        {
          mlir::Diagnostic::operator<<<12ul>(v19, ", but got: ");
          if (v18)
          {
            LODWORD(v15) = 0;
            v16 = v14;
            v9 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v15, 1);
            v10 = v20 + 24 * v21;
            v11 = *v9;
            *(v10 + 16) = *(v9 + 16);
            *v10 = v11;
            ++v21;
          }
        }
      }

      v6 = (v22 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  (*(*a2 + 16))(a2, v3[10]);
  v4 = v3[11];
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

BOOL mlir::ODIE::Compiler::CoreML::MemberOp::verifyInvariantsImpl(unsigned int **this)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = &v2[4 * ((v2[11] >> 23) & 1)];
  v6 = *(v3 + 8);
  v4 = *(v3 + 9);
  v5 = v3 + 16;
  if (!v4)
  {
    v10 = "requires attribute 'sym_name'";
LABEL_10:
    v13 = v10;
    v14 = 259;
    mlir::Operation::emitOpError(v2, &v13, v15);
    v9 = (v16 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
    goto LABEL_11;
  }

  v7 = *(v5 + 2);
  if (!v7)
  {
    v10 = "requires attribute 'type'";
    goto LABEL_10;
  }

  v8 = *(v5 + 3);
  v15[0] = v2;
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v4, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15) && (v15[0] = *this, mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps14(v7, "type", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps14(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15)) && (v15[0] = *this, mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(v8, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15)))
  {
    v15[0] = *this;
    v9 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps15(v6, "alignInBits", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps15(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15);
  }

  else
  {
    v9 = 0;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

void mlir::ODIE::Compiler::CoreML::MinimumOp::build(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8[1] = *MEMORY[0x277D85DE8];
  __src = a3;
  v8[0] = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &__src, 0, &__src, 2);
  __src = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::MinimumOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v9);
}

uint64_t mlir::ODIE::Compiler::CoreML::MinimumOp::verifyInvariantsImpl(mlir::Operation **this)
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

BOOL mlir::ODIE::Compiler::CoreML::MinimumOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::ODIE::Compiler::CoreML::MinimumOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::ModuleOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  *(result + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v2 = *(a2 + 44);
  v3 = v2 & 0x7FFFFF;
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = ((a2 + 64 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *(result + 40) = v4;
  *(result + 48) = v3;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ModuleOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v21, a4);
    if (v21)
    {
      mlir::Diagnostic::operator<<<42ul>(v22, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "param_decls", 0xBuLL);
  if ((v10 & 1) == 0 || (v11 = *(v9 + 8)) == 0)
  {
LABEL_12:
    v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "sym_name", 8uLL);
    if (v13)
    {
      v14 = *(v12 + 8);
      if (v14)
      {
        if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a3(&v21, a4);
          if (!v21)
          {
            goto LABEL_4;
          }

          if (!v21)
          {
            goto LABEL_4;
          }

          v19 = 0;
          v20 = v14;
          goto LABEL_18;
        }

        a1[1] = v14;
      }
    }

    result = 1;
    goto LABEL_21;
  }

  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
  {
    *a1 = v11;
    goto LABEL_12;
  }

  a3(&v21, a4);
  if (!v21)
  {
    goto LABEL_4;
  }

  if (!v21)
  {
    goto LABEL_4;
  }

  v19 = 0;
  v20 = v11;
LABEL_18:
  v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v23, &v19, 1);
  v16 = v23 + 24 * v24;
  v17 = *v15;
  *(v16 + 16) = *(v15 + 16);
  *v16 = v17;
  ++v24;
LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
  result = 0;
LABEL_21:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ModuleOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v17 = 261;
    v15 = "param_decls";
    v16 = 11;
    v7 = mlir::StringAttr::get(v6, &v15, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v18, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v17 = 261;
    v15 = "sym_name";
    v16 = 8;
    v10 = mlir::StringAttr::get(v9, &v15, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v18, v10, v8);
  }

  v11 = v18;
  if (v19)
  {
    v12 = mlir::DictionaryAttr::get(a1, v18, v19);
    v11 = v18;
  }

  else
  {
    v12 = 0;
  }

  if (v11 != v20)
  {
    free(v11);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

unint64_t mlir::ODIE::Compiler::CoreML::ModuleOp::computePropertiesHash(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v2 >> 47) ^ v2);
  v9 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v12 = 0;
  v13 = 0xFF51AFD7ED558CCDLL;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v10, 0, v10, v11, &v9, &v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::ModuleOp::getInherentAttr(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  if (a4 != 8)
  {
    if (a4 != 11)
    {
      goto LABEL_10;
    }

    if (*a3 != 0x65645F6D61726170 || *(a3 + 3) != 0x736C6365645F6D61)
    {
      goto LABEL_10;
    }

    v5 = *a2;
LABEL_12:
    v6 = v5 & 0xFFFFFFFFFFFFFF00;
    return v6 | v5;
  }

  if (*a3 == 0x656D616E5F6D7973)
  {
    v5 = a2[1];
    goto LABEL_12;
  }

LABEL_10:
  LOBYTE(v5) = 0;
  v6 = 0;
  return v6 | v5;
}

void *mlir::ODIE::Compiler::CoreML::ModuleOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8)
  {
    if (*a2 == 0x656D616E5F6D7973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

      result[1] = v5;
    }
  }

  else if (a3 == 11 && *a2 == 0x65645F6D61726170 && *(a2 + 3) == 0x736C6365645F6D61)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
      {
        v6 = a4;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    *result = v6;
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::ModuleOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v13 = 261;
    v11 = "param_decls";
    v12 = 11;
    v7 = mlir::StringAttr::get(v6, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v13 = 261;
    v11 = "sym_name";
    v12 = 8;
    v10 = mlir::StringAttr::get(v9, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::ModuleOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(v10, "param_decls", 11, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v13, "sym_name", 8, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::ModuleOp::build(mlir::StringAttr **a1, mlir::OperationState *a2, const llvm::Twine *a3, uint64_t a4, unsigned int *a5, uint64_t a6)
{
  v14 = 261;
  v13[0] = a3;
  v13[1] = a4;
  v10 = mlir::StringAttr::get(*a1, v13, a3);
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>(a2) + 8) = v10;
  v12 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*a1, a5, a6, v11);
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>(a2) = v12;
  mlir::OperationState::addRegion(a2);
}

BOOL mlir::ODIE::Compiler::CoreML::ModuleOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2 + 16 * ((*(v2 + 11) >> 23) & 1);
  v6 = *(v3 + 8);
  v4 = v3 + 64;
  v5 = v6;
  if (!v6)
  {
    v9 = "requires attribute 'param_decls'";
LABEL_9:
    v12 = v9;
    v13 = 259;
    mlir::Operation::emitOpError(v2, &v12, v14);
    v8 = (v15 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    goto LABEL_10;
  }

  v7 = *(v4 + 1);
  if (!v7)
  {
    v9 = "requires attribute 'sym_name'";
    goto LABEL_9;
  }

  v14[0] = v2;
  v8 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v7, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14) && (v14[0] = *this, mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(v5, "param_decls", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14)) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps1(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "bodyRegion", 10, 0);
LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

void mlir::ODIE::Compiler::CoreML::ModuloOp::build(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8[1] = *MEMORY[0x277D85DE8];
  __src = a3;
  v8[0] = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &__src, 0, &__src, 2);
  __src = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::CoreML::ModuloOp::verifyInvariantsImpl(mlir::Operation **this)
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

BOOL mlir::ODIE::Compiler::CoreML::ModuloOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::ODIE::Compiler::CoreML::ModuloOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

void mlir::ODIE::Compiler::CoreML::MulOp::build(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8[1] = *MEMORY[0x277D85DE8];
  __src = a3;
  v8[0] = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &__src, 0, &__src, 2);
  __src = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::MulOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v9);
}

uint64_t mlir::ODIE::Compiler::CoreML::MulOp::verifyInvariantsImpl(mlir::Operation **this)
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

BOOL mlir::ODIE::Compiler::CoreML::MulOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::ODIE::Compiler::CoreML::MulOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

void mlir::ODIE::Compiler::CoreML::NonZeroOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreML::NonZeroOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 9))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps16(*this, (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::NonZeroOp::parse(uint64_t a1, uint64_t a2)
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
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v6))
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

void mlir::ODIE::Compiler::CoreML::NonZeroOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

void mlir::ODIE::Compiler::CoreML::NotEqualOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v9);
}

void mlir::ODIE::Compiler::CoreML::NotEqualOp::build(void **a1, mlir::detail *a2, uint64_t a3, uint64_t a4)
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
  if (!mlir::ODIE::Compiler::CoreML::NotEqualOp::inferReturnTypes(v6, v7, 1, v8 & 0xFFFFFFFFFFFFFFF9, v9, v10, v11, v12, v15, v16, &__src))
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

BOOL mlir::ODIE::Compiler::CoreML::NotEqualOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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

BOOL mlir::ODIE::Compiler::CoreML::NotEqualOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::ODIE::Compiler::CoreML::NotEqualOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

void mlir::ODIE::Compiler::CoreML::NotOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

uint64_t mlir::ODIE::Compiler::CoreML::NotOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (!a5)
  {
    return 0;
  }

  v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
  if ((a4 & 6) != 0 || !v13)
  {
    if ((a4 & 6) == 2)
    {
      if (v13)
      {
        v13 = v13[3];
      }
    }
  }

  else
  {
    v13 = *v13;
  }

  **a11 = v13[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::ODIE::Compiler::CoreML::NotOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 9))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::NotOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::ODIE::Compiler::CoreML::NotOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

void mlir::ODIE::Compiler::CoreML::OrOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v9);
}

void mlir::ODIE::Compiler::CoreML::OrOp::build(void **a1, mlir::detail *a2, uint64_t a3, uint64_t a4)
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
  if (!mlir::ODIE::Compiler::CoreML::OrOp::inferReturnTypes(v6, v7, 1, v8 & 0xFFFFFFFFFFFFFFF9, v9, v10, v11, v12, v15, v16, &__src))
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

BOOL mlir::ODIE::Compiler::CoreML::OrOp::verifyInvariantsImpl(mlir::Operation **this)
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

BOOL mlir::ODIE::Compiler::CoreML::OrOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::ODIE::Compiler::CoreML::OrOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

void mlir::ODIE::Compiler::CoreML::OutputOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a5, 0, a5, a6);
  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a2 + 112, a7, &a7[16 * a8]);

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

BOOL mlir::ODIE::Compiler::CoreML::OutputOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::ODIE::Compiler::CoreML::OutputOp::print(mlir::ODIE::Compiler::CoreML::OutputOp *this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::ODIE::Compiler::CoreML::PadOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "padding_mode", 0xCuLL);
    if (v9)
    {
      v10 = *(v8 + 8);
      if (v10)
      {
        if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id)
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

uint64_t mlir::ODIE::Compiler::CoreML::PadOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x300000000;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v12 = 261;
    v11[0] = "padding_mode";
    v11[1] = 12;
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

unint64_t mlir::ODIE::Compiler::CoreML::PadOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::CoreML::PadOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 12 && (*a3 == 0x5F676E6964646170 ? (v4 = *(a3 + 8) == 1701080941) : (v4 = 0), v4))
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

void *mlir::ODIE::Compiler::CoreML::PadOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 12 && *a2 == 0x5F676E6964646170 && *(a2 + 8) == 1701080941)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id)
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

void mlir::ODIE::Compiler::CoreML::PadOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "padding_mode";
    v7[1] = 12;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::PadOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps16(v8, "padding_mode", 12, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps16(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id)
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
          mlir::Diagnostic::operator<<<133ul>(v13, "' failed to satisfy constraint: CoreML Pad Op's padding mode to use: 'circular' | 'constant' | 'reflect' | 'replicate' | 'symmetric'");
        }
      }
    }

    v7 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::PadOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::PaddingModeAttr>(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 48))(a1, &v14))
  {
    v4 = v14;
    v5 = *(*v14 + 136);
    if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id)
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

      if ((atomic_load_explicit(&qword_27FC1E608, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E608))
      {
        qword_27FC1E5F8 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::PaddingModeAttr>();
        unk_27FC1E600 = v12;
        __cxa_guard_release(&qword_27FC1E608);
      }

      if (v18)
      {
        v17 = 261;
        v15 = qword_27FC1E5F8;
        v16 = unk_27FC1E600;
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

void mlir::ODIE::Compiler::CoreML::PadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a4;
  __src = a3;
  v9 = a6;
  v10 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v11, 0, &v11, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v10, 0, &v10, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v9, 0, &v9, 1);
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::PadOpGenericAdaptorBase::Properties>(a2) = a7;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v13);
}

uint64_t mlir::ODIE::Compiler::CoreML::PadOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 2 * ((*(v2 + 11) >> 23) & 1) + 8);
  if (!v3)
  {
    v50[0] = "requires attribute 'padding_mode'";
    v51 = 259;
LABEL_24:
    mlir::Operation::emitOpError(v2, v50, &v56);
    v32 = v57[192] ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v56);
    goto LABEL_25;
  }

  v56 = v2;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps16(v3, "padding_mode", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps16(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v56) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
LABEL_22:
    v32 = 0;
    goto LABEL_25;
  }

  v4 = *this;
  v5 = *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8;
  v52 = 2;
  v6 = *v5;
  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v8 = mlir::detail::InterfaceMap::lookup(v6 + 8, v7);
    if ((*(v8 + 16))(v8, v5))
    {
      v9 = *v5;
      v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v11 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
      (*(v11 + 24))(v11, v5);
      if (!v12)
      {
        v36 = *v5;
        v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v38 = mlir::detail::InterfaceMap::lookup(v36 + 8, v37);
        v39 = (*(v38 + 8))(v38, v5);
        v40 = *(*v39 + 136);
        if (v40 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v40 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v40 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v40 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
        {
          goto LABEL_14;
        }

        if (v40 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
          v46 = v39[2];
          if ((v46 + 2147483644) <= 0x3C && ((1 << (v46 - 4)) & 0x1000000010001011) != 0)
          {
            goto LABEL_14;
          }

          v48 = (v46 - 1073741828) > 0x3C || ((1 << (v46 - 4)) & 0x1000000010001011) == 0;
          if (!v48 || v46 == 1)
          {
            goto LABEL_14;
          }
        }

        else if (v40 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v44 = *(**(v39 + 1) + 136);
          if (v44 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v44 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  v51 = 261;
  v50[0] = "operand";
  v50[1] = 7;
  mlir::Operation::emitOpError(v4, v50, &v56);
  if (v56)
  {
    mlir::Diagnostic::operator<<<3ul>(v57, " #");
  }

  v13 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v56, &v52);
  v14 = v13;
  if (*v13)
  {
    v53 = 3;
    v54 = " must be 0D tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements or Boolean type. values, but got ";
    v55 = 274;
    v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v13 + 3), &v53, 1);
    v16 = v14[3] + 24 * *(v14 + 8);
    v17 = *v15;
    *(v16 + 16) = *(v15 + 16);
    *v16 = v17;
    ++*(v14 + 8);
    if (*v14)
    {
      v53 = 4;
      v54 = v5;
      v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v14 + 3), &v53, 1);
      v19 = v14[3] + 24 * *(v14 + 8);
      v20 = *v18;
      *(v19 + 16) = *(v18 + 16);
      *v19 = v20;
      ++*(v14 + 8);
    }
  }

  v21 = *(v14 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v56);
  if (v21)
  {
    goto LABEL_22;
  }

LABEL_14:
  if (*(*this + 9))
  {
    v22 = *this - 16;
  }

  else
  {
    v22 = 0;
  }

  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(v22 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    goto LABEL_22;
  }

  v23 = mlir::Type::cast<mlir::ShapedType>((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  (*(v24 + 24))(v24, v23);
  v26 = v25;
  v27 = mlir::Type::cast<mlir::ShapedType>((*(*this - 1) & 0xFFFFFFFFFFFFFFF8));
  (*(v28 + 24))(v28, v27);
  if (v26 != v29)
  {
    v35 = "failed to verify that Result 0 and operand 0 must have the same rank.";
LABEL_47:
    v50[0] = v35;
    v51 = 259;
    v2 = *this;
    goto LABEL_24;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v35 = "failed to verify that Result 0 element type must match element type of operand 0.";
    goto LABEL_47;
  }

  v31 = mlir::getElementTypeOrSelf(*this - 16);
  if (v31 != mlir::getElementTypeOrSelf(*(*(*this + 9) + 88)))
  {
    v35 = "failed to verify that Result 0 element type must match element type of operand 2.";
    goto LABEL_47;
  }

  v32 = 1;
LABEL_25:
  v33 = *MEMORY[0x277D85DE8];
  return v32 & 1;
}