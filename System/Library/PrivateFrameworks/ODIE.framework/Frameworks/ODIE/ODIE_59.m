uint64_t mlir::arith::SubIOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x300000000;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v12 = 261;
    v11[0] = "overflowFlags";
    v11[1] = 13;
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

unint64_t mlir::arith::SubIOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::arith::SubIOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 13 && (*a3 == 0x776F6C667265766FLL ? (v4 = *(a3 + 5) == 0x7367616C46776F6CLL) : (v4 = 0), v4))
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

void *mlir::arith::SubIOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 13 && *a2 == 0x776F6C667265766FLL && *(a2 + 5) == 0x7367616C46776F6CLL)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
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

void mlir::arith::SubIOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "overflowFlags";
    v7[1] = 13;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::arith::SubIOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(v8, "overflowFlags", 13, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::arith::SubIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::arith::SubIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(v3, "overflowFlags", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::arith::SubIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "overflow", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::IntegerOverflowFlagsAttr>(a1, &v10))
    {
      return 0;
    }

    v4 = v10;
    if (v10)
    {
      *mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties>(a2) = v4;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v5 = *(a2 + 8);
    __src = a1;
    v8[0] = &v9;
    v8[1] = a2;
    if (mlir::arith::SubIOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::SubIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v9 = 0;
      if ((*(*a1 + 536))(a1, &v9))
      {
        __src = v9;
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
        if ((*(*a1 + 728))(a1, v13, __src, a2 + 16))
        {
          return (*(*a1 + 728))(a1, v11, __src, a2 + 16) & 1;
        }
      }
    }
  }

  return 0;
}

void mlir::arith::SubIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v27[4] = *MEMORY[0x277D85DE8];
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
  v10 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v10 != mlir::arith::IntegerOverflowFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
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
    if (*(v13 + 3) - v14 > 7uLL)
    {
      *v14 = 0x776F6C667265766FLL;
      *(v13 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v13, "overflow", 8uLL);
    }

    mlir::AsmPrinter::printStrippedAttrOrType<mlir::arith::IntegerOverflowFlagsAttr,(void *)0>(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  }

  v25 = v27;
  v26 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v25, "overflowFlags", 13);
  v15 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v15 && v15 == mlir::arith::IntegerOverflowFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v25, "overflowFlags", 13);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v25, v26);
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

  v23 = *this - 16;
  if (!*(*this + 9))
  {
    v23 = 0;
  }

  (*(*a2 + 32))(a2, *(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v25 != v27)
  {
    free(v25);
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::arith::detail::TruncFOpGenericAdaptorBase::TruncFOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::arith::TruncFOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "fastmath", 8uLL);
  if ((v10 & 1) == 0 || (v11 = *(v9 + 8)) == 0)
  {
LABEL_12:
    v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "roundingmode", 0xCuLL);
    if (v13)
    {
      v14 = *(v12 + 8);
      if (v14)
      {
        if (!mlir::arith::RoundingModeAttr::classof(*(v12 + 8)))
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
          goto LABEL_21;
        }

        a1[1] = v14;
      }
    }

    result = 1;
    goto LABEL_17;
  }

  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
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
LABEL_21:
  v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v23, &v19, 1);
  v17 = v23 + 24 * v24;
  v18 = *v16;
  *(v17 + 16) = *(v16 + 16);
  *v17 = v18;
  ++v24;
LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
  result = 0;
LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::arith::TruncFOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v17 = 261;
    v15 = "fastmath";
    v16 = 8;
    v7 = mlir::StringAttr::get(v6, &v15, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v18, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v17 = 261;
    v15 = "roundingmode";
    v16 = 12;
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

unint64_t mlir::arith::TruncFOp::computePropertiesHash(void *a1)
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

unint64_t mlir::arith::TruncFOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 12)
  {
    if (*a3 == 0x676E69646E756F72 && *(a3 + 8) == 1701080941)
    {
      v4 = a2[1];
      goto LABEL_11;
    }
  }

  else if (a4 == 8 && *a3 == 0x6874616D74736166)
  {
    v4 = *a2;
LABEL_11:
    v6 = v4 & 0xFFFFFFFFFFFFFF00;
    return v6 | v4;
  }

  LOBYTE(v4) = 0;
  v6 = 0;
  return v6 | v4;
}

void *mlir::arith::TruncFOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 == 12)
  {
    if (*a2 == 0x676E69646E756F72 && *(a2 + 8) == 1701080941)
    {
      if (a4)
      {
        result = mlir::arith::RoundingModeAttr::classof(a4);
        if (result)
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

      v5[1] = v8;
    }
  }

  else if (a3 == 8 && *a2 == 0x6874616D74736166)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
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

void mlir::arith::TruncFOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v13 = 261;
    v11 = "fastmath";
    v12 = 8;
    v7 = mlir::StringAttr::get(v6, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v13 = 261;
    v11 = "roundingmode";
    v12 = 12;
    v10 = mlir::StringAttr::get(v9, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }
}

BOOL mlir::arith::TruncFOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v10, "fastmath", 8, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::arith::__mlir_ods_local_attr_constraint_ArithOps6(v13, "roundingmode", 12, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::arith::__mlir_ods_local_attr_constraint_ArithOps6(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1 && (mlir::arith::RoundingModeAttr::classof(a1) & 1) == 0)
  {
    a4(&v14, a5);
    if (v14)
    {
      mlir::Diagnostic::operator<<<12ul>(v15, "attribute '");
      if (v14)
      {
        v13 = 261;
        v12[0] = a2;
        v12[1] = a3;
        mlir::Diagnostic::operator<<(v15, v12);
        if (v14)
        {
          mlir::Diagnostic::operator<<<61ul>(v15, "' failed to satisfy constraint: Floating point rounding mode");
        }
      }
    }

    v9 = (v15[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
  }

  else
  {
    v9 = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::RoundingModeAttr>(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = 0;
  if ((*(*a1 + 56))(a1, &v15))
  {
    v4 = v15;
    if (v15 && ((v5 = mlir::arith::RoundingModeAttr::classof(v15)) == 0 ? (v6 = 0) : (v6 = v4), *a2 = v6, (v5 & 1) == 0))
    {
      v14[16] = 257;
      (*(*a1 + 16))(&v19, a1, v14);
      if (v19)
      {
        mlir::Diagnostic::operator<<<10ul>(v20, "expected ");
      }

      if ((atomic_load_explicit(&qword_27FC1FCD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FCD0))
      {
        qword_27FC1FCC0 = llvm::detail::getTypeNameImpl<mlir::arith::RoundingModeAttr>();
        *algn_27FC1FCC8 = v13;
        __cxa_guard_release(&qword_27FC1FCD0);
      }

      if (v19)
      {
        v18 = 261;
        v16 = qword_27FC1FCC0;
        v17 = *algn_27FC1FCC8;
        mlir::Diagnostic::operator<<(v20, &v16);
        if (v19)
        {
          mlir::Diagnostic::operator<<<12ul>(v20, ", but got: ");
          if (v19)
          {
            LODWORD(v16) = 0;
            v17 = v15;
            v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v16, 1);
            v9 = v21 + 24 * v22;
            v10 = *v8;
            *(v9 + 16) = *(v8 + 16);
            *v9 = v10;
            ++v22;
          }
        }
      }

      v7 = (v23 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::arith::TruncFOp::getRoundingmode(mlir::arith::TruncFOp *this)
{
  v2 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 9);
  if (v2)
  {
    return mlir::IntegerAttr::getInt(&v2) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::arith::TruncFOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v5 = *(v3 + 64);
  v4 = *(v3 + 72);
  v30[0] = v2;
  if (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps6(v4, "roundingmode", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30) && (v30[0] = *this, mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v5, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30)) && mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && (*(*this + 9) ? (v6 = *this - 16) : (v6 = 0), mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v7 = *this;
    v8 = (*(*(*(v7 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v9 = *(*v8 + 136);
    v10 = v9 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
    v11 = v10;
    if (v10)
    {
      v16 = v8[1];
      v15 = v8[2];
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    if (*(v7 + 9))
    {
      v17 = v7 - 16;
    }

    else
    {
      v17 = 0;
    }

    v18 = (*(v17 + 1) & 0xFFFFFFFFFFFFFFF8);
    v19 = *(*v18 + 136);
    v20 = v19 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
    v21 = v20;
    if (v20)
    {
      v23 = v18[1];
      v22 = v18[2];
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    if (v15 == v22 && !memcmp(v16, v23, 8 * v15) && (!v21 ? (v25 = 0, v24 = 0) : (v24 = v18[1], v25 = v18[2]), !v11 ? (v27 = 0, v26 = 0) : (v26 = v8[1], v27 = v8[2]), v25 == v27 && !memcmp(v24, v26, 8 * v25)))
    {
      v12 = 1;
    }

    else
    {
      v28 = "failed to verify that input and output have the same tensor dimensions";
      v29 = 259;
      mlir::Operation::emitOpError(v7, &v28, v30);
      v12 = (v31 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v30);
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

BOOL mlir::arith::TruncFOp::parse(uint64_t a1, uint64_t a2)
{
  v41[9] = *MEMORY[0x277D85DE8];
  memset(v30, 0, sizeof(v30));
  v31 = 0;
  v29[0] = v30;
  v29[1] = 1;
  v27 = 0;
  v28 = 0;
  v26[0] = &v27;
  v26[1] = 1;
  __src = 0;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v30, 1) & 1) == 0)
  {
    goto LABEL_58;
  }

  v24 = 0uLL;
  v40[0] = v41;
  v40[1] = 0x400000000;
  v41[8] = 4;
  v5 = (*(*a1 + 40))(a1);
  v36 = xmmword_2799BDFE8;
  v37 = *&off_2799BDFF8;
  v38 = xmmword_2799BE008;
  v34 = xmmword_2799BDFC8;
  v35 = *&off_2799BDFD8;
  if (((*(*a1 + 424))(a1, &v24, &v34, 5) & 1) == 0)
  {
    *&v34 = 0;
    v6 = (*(*a1 + 32))(a1);
    NoneType = mlir::Builder::getNoneType(v6);
    v8 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, &v34, NoneType, "roundingmode", 12, v40);
    if ((v8 & 0x100) != 0)
    {
      if ((v8 & 1) == 0)
      {
        v12 = 0;
        goto LABEL_40;
      }

      v24 = *(v34 + 16);
    }
  }

  if (!*(&v24 + 1))
  {
    goto LABEL_45;
  }

  if (*(&v24 + 1) > 10)
  {
    if (*(&v24 + 1) == 11)
    {
      if (*v24 == 0x7A5F647261776F74 && *(v24 + 3) == 0x6F72657A5F647261)
      {
        v9 = 3;
        goto LABEL_44;
      }
    }

    else if (*(&v24 + 1) == 15)
    {
      if (*v24 == 0x657261656E5F6F74 && *(v24 + 7) == 0x6E6576655F747365)
      {
        v9 = 0;
        goto LABEL_44;
      }

      if (*v24 == 0x657261656E5F6F74 && *(v24 + 7) == 0x796177615F747365)
      {
        v9 = 4;
        goto LABEL_44;
      }
    }
  }

  else if (*(&v24 + 1) == 6)
  {
    if (*v24 == 1635217525 && *(v24 + 4) == 25714)
    {
      v9 = 2;
      goto LABEL_44;
    }
  }

  else if (*(&v24 + 1) == 8 && *v24 == 0x647261776E776F64)
  {
    v9 = 1;
LABEL_44:
    v15 = (*(*a1 + 32))(a1);
    v16 = mlir::IntegerType::get(*v15, 32, 0);
    v17 = mlir::IntegerAttr::get(v16, v9);
    *(mlir::OperationState::getOrAddProperties<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties>(a2) + 8) = v17;
LABEL_45:
    if (v40[0] != v41)
    {
      free(v40[0]);
    }

    if ((*(*a1 + 408))(a1, "fastmath", 8))
    {
      if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v28, 0))
      {
        goto LABEL_58;
      }

      if (v28)
      {
        v18 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties>(a2);
        *v18 = v28;
      }
    }

    v40[0] = (*(*a1 + 40))(a1);
    if ((*(*a1 + 488))(a1, a2 + 112))
    {
      v19 = *(a2 + 8);
      *&v34 = a1;
      *(&v34 + 1) = v40;
      *&v35 = a2;
      if (mlir::arith::TruncFOp::verifyInherentAttrs(v19, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::TruncFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v34) && ((*(*a1 + 104))(a1) & 1) != 0)
      {
        *&v34 = 0;
        if ((*(*a1 + 536))(a1, &v34))
        {
          v27 = v34;
          LOWORD(v36) = 257;
          if ((*(*a1 + 400))(a1, "to", 2, &v34))
          {
            *&v34 = 0;
            if ((*(*a1 + 536))(a1, &v34))
            {
              __src = v34;
              llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v26);
              v12 = mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v29, v26, v4, a2 + 16);
              goto LABEL_59;
            }
          }
        }
      }
    }

LABEL_58:
    v12 = 0;
    goto LABEL_59;
  }

  v22 = "invalid ";
  v23 = 259;
  (*(*a1 + 24))(&v34, a1, v5, &v22);
  if (v34)
  {
    mlir::Diagnostic::operator<<<40ul>(&v34 + 8, "roundingmode attribute specification: ");
    if (v34)
    {
      v33 = 261;
      v32[0] = v24;
      mlir::Diagnostic::operator<<(&v34 + 8, v32);
      if (v34)
      {
        v33 = 264;
        LOBYTE(v32[0]) = 34;
        mlir::Diagnostic::operator<<(&v34 + 8, v32);
      }
    }
  }

  v12 = (v39 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v34);
LABEL_40:
  if (v40[0] != v41)
  {
    free(v40[0]);
  }

LABEL_59:
  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

void mlir::arith::TruncFOp::print(mlir::arith::TruncFOp **this, mlir::OpAsmPrinter *a2)
{
  v36[4] = *MEMORY[0x277D85DE8];
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
  v6 = *this;
  v7 = (*(*this + 11) >> 23) & 1;
  if (*(*this + 2 * v7 + 9))
  {
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

    Roundingmode = mlir::arith::TruncFOp::getRoundingmode(*this);
    if (Roundingmode > 4)
    {
      v12 = 0;
      v13 = &str_105;
    }

    else
    {
      v11 = Roundingmode & 7;
      v12 = *(&unk_25D09FAC8 + v11 * 8);
      v13 = off_2799BE288[v11];
    }

    v14 = (*(*a2 + 16))(a2);
    llvm::raw_ostream::operator<<(v14, v13, v12);
    v6 = *this;
    v7 = (*(*this + 11) >> 23) & 1;
  }

  if (*(v6 + 2 * v7 + 8))
  {
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

    v17 = (*(*a2 + 16))(a2);
    v18 = *(v17 + 4);
    if (*(v17 + 3) - v18 > 7uLL)
    {
      *v18 = 0x6874616D74736166;
      *(v17 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v17, "fastmath", 8uLL);
    }

    mlir::AsmPrinter::printStrippedAttrOrType<mlir::arith::FastMathFlagsAttr,(void *)0>(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  }

  v34 = v36;
  v35 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v34, "roundingmode", 12);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v34, "fastmath", 8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v34, v35);
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

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ":", 1uLL);
  }

  else
  {
    *v23 = 58;
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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
  if (*(v28 + 3) - v29 > 1uLL)
  {
    *v29 = 28532;
    *(v28 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v28, "to", 2uLL);
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

  v32 = *this - 16;
  if (!*(*this + 9))
  {
    v32 = 0;
  }

  (*(*a2 + 32))(a2, *(v32 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v34 != v36)
  {
    free(v34);
  }

  v33 = *MEMORY[0x277D85DE8];
}

BOOL mlir::arith::TruncIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v27 = *MEMORY[0x277D85DE8];
  if (mlir::arith::__mlir_ods_local_type_constraint_ArithOps6(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7))
  {
    v2 = *(*this + 9) ? *this - 16 : 0;
    if (mlir::arith::__mlir_ods_local_type_constraint_ArithOps6(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6))
    {
      v3 = *this;
      v4 = (*(*(*(v3 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v5 = *(*v4 + 136);
      v6 = v5 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
      v7 = v6;
      if (v6)
      {
        v10 = v4[1];
        v9 = v4[2];
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      if (*(v3 + 9))
      {
        v11 = v3 - 16;
      }

      else
      {
        v11 = 0;
      }

      v12 = (*(v11 + 1) & 0xFFFFFFFFFFFFFFF8);
      v13 = *(*v12 + 136);
      v14 = v13 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
      v15 = v14;
      if (v14)
      {
        v17 = v12[1];
        v16 = v12[2];
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      if (v9 != v16 || memcmp(v10, v17, 8 * v9))
      {
LABEL_37:
        v24 = "failed to verify that input and output have the same tensor dimensions";
        v25 = 259;
        mlir::Operation::emitOpError(v3, &v24, v26);
        v8 = (v26[200] & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v26);
        goto LABEL_38;
      }

      if (v15)
      {
        v18 = v12[1];
        v19 = v12[2];
        if (!v7)
        {
LABEL_32:
          v20 = 0;
          v21 = 0;
LABEL_35:
          if (v19 == v20 && !memcmp(v18, v21, 8 * v19))
          {
            v8 = 1;
            goto LABEL_38;
          }

          goto LABEL_37;
        }
      }

      else
      {
        v19 = 0;
        v18 = 0;
        if (!v7)
        {
          goto LABEL_32;
        }
      }

      v21 = v4[1];
      v20 = v4[2];
      goto LABEL_35;
    }
  }

  v8 = 0;
LABEL_38:
  v22 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL mlir::arith::TruncIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  v8 = __src;
  v14 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v13);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

void mlir::arith::TruncIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v21, 0);
  v7 = (*(*a2 + 16))(a2);
  v8 = *(v7 + 4);
  if (v8 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 32);
  }

  else
  {
    *(v7 + 4) = v8 + 1;
    *v8 = 32;
  }

  v9 = (*(*a2 + 16))(a2);
  v10 = *(v9 + 4);
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, ":", 1uLL);
  }

  else
  {
    *v10 = 58;
    ++*(v9 + 4);
  }

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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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
  if (*(v15 + 3) - v16 > 1uLL)
  {
    *v16 = 28532;
    *(v15 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v15, "to", 2uLL);
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

  v19 = *this - 16;
  if (!*(*this + 9))
  {
    v19 = 0;
  }

  (*(*a2 + 32))(a2, *(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
  v20 = *MEMORY[0x277D85DE8];
}

BOOL mlir::arith::UIToFPOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v27 = *MEMORY[0x277D85DE8];
  if (mlir::arith::__mlir_ods_local_type_constraint_ArithOps6(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7))
  {
    v2 = *(*this + 9) ? *this - 16 : 0;
    if (mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
    {
      v3 = *this;
      v4 = (*(*(*(v3 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v5 = *(*v4 + 136);
      v6 = v5 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
      v7 = v6;
      if (v6)
      {
        v10 = v4[1];
        v9 = v4[2];
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      if (*(v3 + 9))
      {
        v11 = v3 - 16;
      }

      else
      {
        v11 = 0;
      }

      v12 = (*(v11 + 1) & 0xFFFFFFFFFFFFFFF8);
      v13 = *(*v12 + 136);
      v14 = v13 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
      v15 = v14;
      if (v14)
      {
        v17 = v12[1];
        v16 = v12[2];
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      if (v9 != v16 || memcmp(v10, v17, 8 * v9))
      {
LABEL_37:
        v24 = "failed to verify that input and output have the same tensor dimensions";
        v25 = 259;
        mlir::Operation::emitOpError(v3, &v24, v26);
        v8 = (v26[200] & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v26);
        goto LABEL_38;
      }

      if (v15)
      {
        v18 = v12[1];
        v19 = v12[2];
        if (!v7)
        {
LABEL_32:
          v20 = 0;
          v21 = 0;
LABEL_35:
          if (v19 == v20 && !memcmp(v18, v21, 8 * v19))
          {
            v8 = 1;
            goto LABEL_38;
          }

          goto LABEL_37;
        }
      }

      else
      {
        v19 = 0;
        v18 = 0;
        if (!v7)
        {
          goto LABEL_32;
        }
      }

      v21 = v4[1];
      v20 = v4[2];
      goto LABEL_35;
    }
  }

  v8 = 0;
LABEL_38:
  v22 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL mlir::arith::UIToFPOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  v8 = __src;
  v14 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v13);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

void mlir::arith::UIToFPOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v21, 0);
  v7 = (*(*a2 + 16))(a2);
  v8 = *(v7 + 4);
  if (v8 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 32);
  }

  else
  {
    *(v7 + 4) = v8 + 1;
    *v8 = 32;
  }

  v9 = (*(*a2 + 16))(a2);
  v10 = *(v9 + 4);
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, ":", 1uLL);
  }

  else
  {
    *v10 = 58;
    ++*(v9 + 4);
  }

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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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
  if (*(v15 + 3) - v16 > 1uLL)
  {
    *v16 = 28532;
    *(v15 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v15, "to", 2uLL);
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

  v19 = *this - 16;
  if (!*(*this + 9))
  {
    v19 = 0;
  }

  (*(*a2 + 32))(a2, *(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
  v20 = *MEMORY[0x277D85DE8];
}

void mlir::arith::XOrIOp::build(uint64_t a1, mlir::detail *a2, uint64_t a3, uint64_t a4)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v17 = a4;
  v18 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v18, 0, &v18, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v17, 0, &v17, 1);
  __src = v21;
  v20 = 0x200000000;
  v5 = *(a2 + 2);
  v6 = *(a2 + 6);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  if (!mlir::arith::XOrIOp::inferReturnTypes(Dictionary, v8, v9, v5 & 0xFFFFFFFFFFFFFFF9, v6, v10, v11, v12, v15, v16, &__src))
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

uint64_t mlir::arith::XOrIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::arith::XOrIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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

  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::arith::XOrIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v7, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v5 = 0, ((*(*a1 + 536))(a1, &v5)) && (__src = v5, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v7), ((*(*a1 + 728))(a1, v9, __src, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v7, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::arith::XOrIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v19[4] = *MEMORY[0x277D85DE8];
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
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v19, 0);
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

  v17 = *this - 16;
  if (!*(*this + 9))
  {
    v17 = 0;
  }

  (*(*a2 + 32))(a2, *(v17 + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = *MEMORY[0x277D85DE8];
}

void mlir::arith::SelectOp::build(uint64_t a1, mlir::detail *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v19 = a4;
  v20 = a3;
  v18 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v20, 0, &v20, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v19, 0, &v19, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v18, 0, &v18, 1);
  __src = v23;
  v22 = 0x200000000;
  v6 = *(a2 + 2);
  v7 = *(a2 + 6);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  if (!mlir::arith::SelectOp::inferReturnTypes(Dictionary, v9, v10, v6 & 0xFFFFFFFFFFFFFFF9, v7, v11, v12, v13, v16, v17, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v14);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v22);
  if (__src != v23)
  {
    free(__src);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::arith::SelectOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v14[1] = a5;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (a5 >= 3)
  {
    **a11 = *(mlir::ValueRange::dereference_iterator(v14, 2) + 8) & 0xFFFFFFFFFFFFFFF8;
    result = 1;
  }

  else
  {
    result = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::arith::SelectOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = 0;
  if (mlir::arith::__mlir_ods_local_type_constraint_ArithOps3(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    v3 = *this;
    v4 = *(*this + 9);
    v5 = *(v4[7] + 8);
    v6 = *(v4[11] + 8);
    if ((v6 ^ v5) > 7 || (*(v3 + 9) ? (v7 = (v3 - 16)) : (v7 = 0), (*(v7 + 1) ^ v6 | *(v7 + 1) ^ v5) >= 8))
    {
      v38 = "failed to verify that all of {true_value, false_value, result} have same type";
      v39 = 259;
LABEL_20:
      mlir::Operation::emitOpError(v3, &v38, v40);
      v2 = v40[200] ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v40);
      goto LABEL_21;
    }

    v8 = (*(v4[3] + 8) & 0xFFFFFFFFFFFFFFF8);
    v9 = *v8;
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v8[2] != 1)
    {
      v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v11 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
      v12 = (*(v11 + 24))(v11, v8);
      v14 = v13;
      v15 = *this - 16;
      if (!*(*this + 9))
      {
        v15 = 0;
      }

      v16 = (*(v15 + 8) & 0xFFFFFFFFFFFFFFF8);
      v17 = *v16;
      v18 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v19 = mlir::detail::InterfaceMap::lookup(v17 + 8, v18);
      v20 = (*(v19 + 24))(v19, v16);
      if (v14 != v21 || memcmp(v12, v20, 8 * v14))
      {
        goto LABEL_19;
      }

      v22 = *this - 16;
      if (!*(*this + 9))
      {
        v22 = 0;
      }

      v23 = (*(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
      v24 = *v23;
      v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v26 = mlir::detail::InterfaceMap::lookup(v24 + 8, v25);
      v27 = (*(v26 + 24))(v26, v23);
      v29 = v28;
      v30 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v31 = *v30;
      v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v33 = mlir::detail::InterfaceMap::lookup(v31 + 8, v32);
      v34 = (*(v33 + 24))(v33, v30);
      if (v29 != v35 || memcmp(v27, v34, 8 * v29))
      {
LABEL_19:
        v38 = "failed to verify that condition is signless i1 or has matching shape";
        v39 = 259;
        v3 = *this;
        goto LABEL_20;
      }
    }

    v2 = 1;
  }

LABEL_21:
  v36 = *MEMORY[0x277D85DE8];
  return v2 & 1;
}

uint64_t mlir::arith::CmpFPredicateAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v19 = a1;
  if (!mlir::IntegerAttr::getInt(&v19))
  {
    return 1;
  }

  v18 = a1;
  result = mlir::IntegerAttr::getInt(&v18);
  if (result != 1)
  {
    v17 = a1;
    if (mlir::IntegerAttr::getInt(&v17) == 2)
    {
      return 1;
    }

    v16 = a1;
    if (mlir::IntegerAttr::getInt(&v16) == 3)
    {
      return 1;
    }

    v15 = a1;
    if (mlir::IntegerAttr::getInt(&v15) == 4)
    {
      return 1;
    }

    v14 = a1;
    if (mlir::IntegerAttr::getInt(&v14) == 5)
    {
      return 1;
    }

    v13 = a1;
    if (mlir::IntegerAttr::getInt(&v13) == 6)
    {
      return 1;
    }

    v12 = a1;
    if (mlir::IntegerAttr::getInt(&v12) == 7)
    {
      return 1;
    }

    v11 = a1;
    if (mlir::IntegerAttr::getInt(&v11) == 8)
    {
      return 1;
    }

    v10 = a1;
    if (mlir::IntegerAttr::getInt(&v10) == 9)
    {
      return 1;
    }

    v9 = a1;
    if (mlir::IntegerAttr::getInt(&v9) == 10)
    {
      return 1;
    }

    v8 = a1;
    if (mlir::IntegerAttr::getInt(&v8) == 11)
    {
      return 1;
    }

    v7 = a1;
    if (mlir::IntegerAttr::getInt(&v7) == 12)
    {
      return 1;
    }

    v6 = a1;
    if (mlir::IntegerAttr::getInt(&v6) == 13)
    {
      return 1;
    }

    v5 = a1;
    if (mlir::IntegerAttr::getInt(&v5) == 14)
    {
      return 1;
    }

    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == 15;
  }

  return result;
}

uint64_t mlir::arith::CmpIPredicateAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v13 = a1;
  if (!mlir::IntegerAttr::getInt(&v13))
  {
    return 1;
  }

  v12 = a1;
  result = mlir::IntegerAttr::getInt(&v12);
  if (result != 1)
  {
    v11 = a1;
    if (mlir::IntegerAttr::getInt(&v11) == 2)
    {
      return 1;
    }

    v10 = a1;
    if (mlir::IntegerAttr::getInt(&v10) == 3)
    {
      return 1;
    }

    v9 = a1;
    if (mlir::IntegerAttr::getInt(&v9) == 4)
    {
      return 1;
    }

    v8 = a1;
    if (mlir::IntegerAttr::getInt(&v8) == 5)
    {
      return 1;
    }

    v7 = a1;
    if (mlir::IntegerAttr::getInt(&v7) == 6)
    {
      return 1;
    }

    v6 = a1;
    if (mlir::IntegerAttr::getInt(&v6) == 7)
    {
      return 1;
    }

    v5 = a1;
    if (mlir::IntegerAttr::getInt(&v5) == 8)
    {
      return 1;
    }

    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == 9;
  }

  return result;
}

void mlir::arith::stringifyIntegerOverflowFlags(int a1@<W0>, std::string *a2@<X8>)
{
  v17[4] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = a1;
    v15 = v17;
    v16 = 0x200000000;
    if (a1)
    {
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v15, "nsw", 3);
    }

    if ((v3 & 2) != 0)
    {
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v15, "nuw", 3);
    }

    v4 = v15;
    v5 = v16;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    a2->__r_.__value_.__r.__words[0] = 0;
    if (v5)
    {
      v6 = 16 * v5;
      v7 = &v4[16 * v5];
      v8 = 2 * v5 - 2;
      v9 = 8;
      do
      {
        v8 += *&v4[v9];
        v9 += 16;
        v6 -= 16;
      }

      while (v6);
      std::string::reserve(a2, v8);
      std::string::append(a2, *v4, *(v4 + 1));
      if (v5 != 1)
      {
        v10 = v4 + 16;
        do
        {
          std::string::append(a2, ", ", 2uLL);
          v11 = *v10;
          v12 = *(v10 + 1);
          v10 += 16;
          std::string::append(a2, v11, v12);
        }

        while (v10 != v7);
      }
    }

    if (v15 != v17)
    {
      free(v15);
    }

    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v14 = *MEMORY[0x277D85DE8];

    std::string::basic_string[abi:nn200100]<0>(a2, "none");
  }
}

uint64_t mlir::arith::symbolizeIntegerOverflowFlags(_DWORD *a1, uint64_t a2)
{
  v18[4] = *MEMORY[0x277D85DE8];
  *&v15 = a1;
  *(&v15 + 1) = a2;
  if (a2 == 4 && *a1 == 1701736302)
  {
    result = 0x100000000;
  }

  else
  {
    v16 = v18;
    v17 = 0x200000000;
    llvm::StringRef::split(&v15, &v16, ",", 1uLL, -1, 1);
    if (v17)
    {
      v2 = 0;
      v3 = v16;
      v4 = 16 * v17;
      while (1)
      {
        v14 = *v3;
        v5 = llvm::StringRef::trim(&v14, " \t\n\v\f\r", 6);
        if (v6 != 3)
        {
          break;
        }

        if (*v5 == 29550 && *(v5 + 2) == 119)
        {
          v9 = 1;
        }

        else
        {
          if (*v5 != 30062 || *(v5 + 2) != 119)
          {
            break;
          }

          v9 = 2;
        }

        v2 |= v9;
        ++v3;
        v4 -= 16;
        if (!v4)
        {
          v10 = v2;
          goto LABEL_21;
        }
      }

      v11 = 0;
      v10 = 0;
    }

    else
    {
      v10 = 0;
LABEL_21:
      v11 = 0x100000000;
    }

    if (v16 != v18)
    {
      free(v16);
    }

    result = v10 | v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::arith::RoundingModeAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 32)
  {
    return 0;
  }

  v8 = a1;
  if (!mlir::IntegerAttr::getInt(&v8))
  {
    return 1;
  }

  v7 = a1;
  result = mlir::IntegerAttr::getInt(&v7);
  if (result != 1)
  {
    v6 = a1;
    if (mlir::IntegerAttr::getInt(&v6) == 2)
    {
      return 1;
    }

    v5 = a1;
    if (mlir::IntegerAttr::getInt(&v5) == 3)
    {
      return 1;
    }

    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == 4;
  }

  return result;
}

char *mlir::arith::stringifyAtomicRMWKind(unint64_t a1)
{
  if (a1 > 0xE)
  {
    return &str_105;
  }

  v1 = qword_25D09FAF0[a1];
  return off_2799BE2B0[a1];
}

uint64_t mlir::arith::symbolizeAtomicRMWKind(unsigned __int16 *a1, uint64_t a2)
{
  result = 0;
  if (a2 <= 5)
  {
    if (a2 == 3)
    {
      v11 = *a1;
      v12 = *(a1 + 2);
      if (v11 != 29295 || v12 != 105)
      {
        return 0;
      }

      return 11;
    }

    else
    {
      if (a2 != 4)
      {
        return result;
      }

      switch(*a1)
      {
        case 0x66646461:
          return 0;
        case 0x69646461:
          return 1;
        case 0x7378616D:
          return 4;
        case 0x7578616D:
          return 5;
        case 0x736E696D:
          return 7;
        case 0x756E696D:
          return 8;
        case 0x666C756D:
          return 9;
        case 0x696C756D:
          return 10;
        case 0x69646E61:
          return 12;
        default:
          return 0;
      }
    }
  }

  else
  {
    switch(a2)
    {
      case 6:
        v4 = *a1;
        v5 = a1[2];
        if (v4 == 1769173857 && v5 == 28263)
        {
          return 2;
        }

        return 0;
      case 7:
        if (*a1 != 1853383021 || *(a1 + 3) != 1718449518)
        {
          v8 = *a1;
          v9 = *(a1 + 3);
          if (v8 == 1852729709 && v9 == 1718449518)
          {
            return 14;
          }

          return 0;
        }

        return 13;
      case 8:
        if (*a1 != 0x666D756D6978616DLL)
        {
          if (*a1 == 0x666D756D696E696DLL)
          {
            return 6;
          }

          return 0;
        }

        return 3;
      default:
        return result;
    }
  }
}

unint64_t mlir::arith::symbolizeAtomicRMWKind(unint64_t this)
{
  if (this >= 0xF)
  {
    return 0;
  }

  return this;
}

uint64_t mlir::arith::AtomicRMWKindAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v18 = a1;
  if (!mlir::IntegerAttr::getInt(&v18))
  {
    return 1;
  }

  v17 = a1;
  result = mlir::IntegerAttr::getInt(&v17);
  if (result != 1)
  {
    v16 = a1;
    if (mlir::IntegerAttr::getInt(&v16) == 2)
    {
      return 1;
    }

    v15 = a1;
    if (mlir::IntegerAttr::getInt(&v15) == 3)
    {
      return 1;
    }

    v14 = a1;
    if (mlir::IntegerAttr::getInt(&v14) == 4)
    {
      return 1;
    }

    v13 = a1;
    if (mlir::IntegerAttr::getInt(&v13) == 5)
    {
      return 1;
    }

    v12 = a1;
    if (mlir::IntegerAttr::getInt(&v12) == 6)
    {
      return 1;
    }

    v11 = a1;
    if (mlir::IntegerAttr::getInt(&v11) == 7)
    {
      return 1;
    }

    v10 = a1;
    if (mlir::IntegerAttr::getInt(&v10) == 8)
    {
      return 1;
    }

    v9 = a1;
    if (mlir::IntegerAttr::getInt(&v9) == 9)
    {
      return 1;
    }

    v8 = a1;
    if (mlir::IntegerAttr::getInt(&v8) == 10)
    {
      return 1;
    }

    v7 = a1;
    if (mlir::IntegerAttr::getInt(&v7) == 11)
    {
      return 1;
    }

    v6 = a1;
    if (mlir::IntegerAttr::getInt(&v6) == 12)
    {
      return 1;
    }

    v5 = a1;
    if (mlir::IntegerAttr::getInt(&v5) == 13)
    {
      return 1;
    }

    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == 14;
  }

  return result;
}

void mlir::arith::stringifyFastMathFlags(int a1@<W0>, std::string *a2@<X8>)
{
  v19[4] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = a1;
    v17 = v19;
    v18 = 0x200000000;
    if ((~a1 & 0x7F) == 0)
    {
      v4 = "fast";
      v5 = 4;
LABEL_22:
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v17, v4, v5);
      goto LABEL_23;
    }

    if (a1)
    {
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v17, "reassoc", 7);
      if ((v3 & 2) == 0)
      {
LABEL_9:
        if ((v3 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_17;
      }
    }

    else if ((a1 & 2) == 0)
    {
      goto LABEL_9;
    }

    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v17, "nnan", 4);
    if ((v3 & 4) == 0)
    {
LABEL_10:
      if ((v3 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

LABEL_17:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v17, "ninf", 4);
    if ((v3 & 8) == 0)
    {
LABEL_11:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }

LABEL_18:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v17, "nsz", 3);
    if ((v3 & 0x10) == 0)
    {
LABEL_12:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }

LABEL_19:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v17, "arcp", 4);
    if ((v3 & 0x20) == 0)
    {
LABEL_13:
      if ((v3 & 0x40) == 0)
      {
LABEL_23:
        v7 = v17;
        v8 = v18;
        a2->__r_.__value_.__l.__size_ = 0;
        a2->__r_.__value_.__r.__words[2] = 0;
        a2->__r_.__value_.__r.__words[0] = 0;
        if (v8)
        {
          v9 = 16 * v8;
          v10 = v8 - 1;
          v11 = 8;
          v12 = &v7[16 * v8];
          do
          {
            v10 += *&v7[v11];
            v11 += 16;
            v9 -= 16;
          }

          while (v9);
          std::string::reserve(a2, v10);
          std::string::append(a2, *v7, *(v7 + 1));
          if (v8 != 1)
          {
            v13 = v7 + 16;
            do
            {
              std::string::append(a2, ",", 1uLL);
              v14 = *v13;
              v15 = *(v13 + 1);
              v13 += 16;
              std::string::append(a2, v14, v15);
            }

            while (v13 != v12);
          }
        }

        if (v17 != v19)
        {
          free(v17);
        }

        v16 = *MEMORY[0x277D85DE8];
        return;
      }

      goto LABEL_21;
    }

LABEL_20:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v17, "contract", 8);
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

LABEL_21:
    v4 = "afn";
    v5 = 3;
    goto LABEL_22;
  }

  v6 = *MEMORY[0x277D85DE8];

  std::string::basic_string[abi:nn200100]<0>(a2, "none");
}

uint64_t mlir::arith::symbolizeFastMathFlags(_DWORD *a1, uint64_t a2)
{
  v19[4] = *MEMORY[0x277D85DE8];
  *&v16 = a1;
  *(&v16 + 1) = a2;
  if (a2 == 4 && *a1 == 1701736302)
  {
    result = 0x100000000;
  }

  else
  {
    v17 = v19;
    v18 = 0x200000000;
    llvm::StringRef::split(&v16, &v17, ",", 1uLL, -1, 1);
    if (v18)
    {
      v2 = 0;
      v3 = 16 * v18;
      v4 = v17;
      while (1)
      {
        v15 = *v4;
        v5 = llvm::StringRef::trim(&v15, " \t\n\v\f\r", 6);
        if (v6 > 6)
        {
          if (v6 == 8)
          {
            if (*v5 != 0x74636172746E6F63)
            {
              goto LABEL_41;
            }

            v7 = 32;
          }

          else
          {
            if (v6 != 7 || (*v5 == 1935762802 ? (v8 = *(v5 + 3) == 1668248435) : (v8 = 0), !v8))
            {
LABEL_41:
              v12 = 0;
              v11 = 0;
              goto LABEL_42;
            }

            v7 = 1;
          }
        }

        else if (v6 == 3)
        {
          if (*v5 == 29550 && *(v5 + 2) == 122)
          {
            v7 = 8;
          }

          else
          {
            if (*v5 != 26209 || *(v5 + 2) != 110)
            {
              goto LABEL_41;
            }

            v7 = 64;
          }
        }

        else
        {
          if (v6 != 4)
          {
            goto LABEL_41;
          }

          switch(*v5)
          {
            case 0x6E616E6E:
              v7 = 2;
              break;
            case 0x666E696E:
              v7 = 4;
              break;
            case 0x70637261:
              v7 = 16;
              break;
            case 0x74736166:
              v7 = 127;
              break;
            default:
              goto LABEL_41;
          }
        }

        v2 |= v7;
        ++v4;
        v3 -= 16;
        if (!v3)
        {
          v11 = v2;
          goto LABEL_40;
        }
      }
    }

    v11 = 0;
LABEL_40:
    v12 = 0x100000000;
LABEL_42:
    if (v17 != v19)
    {
      free(v17);
    }

    result = v11 | v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(unint64_t **a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(a2 + 48) + 32))(*(a2 + 48), v4))
  {
    v10[0] = v11;
    v10[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v10);
    v5 = v10[0];
    v6 = *v10[0] & 0xFFFFFFFFFFFFFFF8;
    if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v6 = 0;
    }

    v7 = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
      v5 = v10[0];
    }

    if (v5 != v11)
    {
      free(v5);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::detail::constant_int_range_predicate_matcher::match(uint64_t (**this)(uint64_t **), mlir::Operation *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v32 = 1;
  v31 = 0;
  v38 = &v31;
  if (mlir::detail::constant_int_value_binder::match(&v38, a2))
  {
    v4 = *this;
    mlir::ConstantIntRanges::ConstantIntRanges(&v38, &v31, &v31, &v31, &v31);
    v5 = v4(&v38);
    if (v45 >= 0x41 && v44)
    {
      MEMORY[0x25F891010](v44, 0x1000C8000313F17);
    }

    if (v43 >= 0x41 && v42)
    {
      MEMORY[0x25F891010](v42, 0x1000C8000313F17);
    }

    if (v41 >= 0x41 && v40)
    {
      MEMORY[0x25F891010](v40, 0x1000C8000313F17);
    }

    if (v39 < 0x41)
    {
      goto LABEL_40;
    }

    v6 = v38;
    if (!v38)
    {
      goto LABEL_40;
    }

LABEL_39:
    MEMORY[0x25F891010](v6, 0x1000C8000313F17);
    goto LABEL_40;
  }

  LOBYTE(v22) = 0;
  v30 = 0;
  v21 = &v22;
  v37 = a2;
  if (!mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(a2) || (InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(a2), (v8 = a2) == 0))
  {
    v5 = 0;
    goto LABEL_27;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v9 = *(a2 + 9);
    v10 = *(a2 + 17);
    v11 = v10;
    v12 = &v40;
    v38 = &v40;
    v39 = 0x100000000;
    if (v10 < 2)
    {
      if (!v10)
      {
        v17 = 0;
        goto LABEL_25;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorTemplateBase<mlir::IntegerValueRange,false>::grow(&v38, v10);
      v13 = v39;
      v12 = v38;
    }

    v14 = &v12[9 * v13];
    v15 = (v9 + 24);
    do
    {
      v16 = *v15;
      v15 += 4;
      mlir::IntegerValueRange::getMaxRange(v16, v14);
      v14 += 72;
      --v10;
    }

    while (v10);
    v17 = v39;
    v12 = v38;
  }

  else
  {
    v11 = 0;
    v17 = 0;
    v12 = &v40;
    v38 = &v40;
    HIDWORD(v39) = 1;
  }

LABEL_25:
  LODWORD(v39) = v17 + v11;
  v36 = 0;
  v33 = &v37;
  v34 = &v21;
  v35 = &v36;
  (*(InterfaceFor + 8))(InterfaceFor, v8, v12);
  v18 = v36;
  llvm::SmallVector<mlir::IntegerValueRange,1u>::~SmallVector(&v38);
  v5 = 0;
  if (v18 == 1)
  {
    v5 = (*this)(&v22);
  }

LABEL_27:
  if (v30 == 1)
  {
    if (v29 >= 0x41 && v28)
    {
      MEMORY[0x25F891010](v28, 0x1000C8000313F17);
    }

    if (v27 >= 0x41 && v26)
    {
      MEMORY[0x25F891010](v26, 0x1000C8000313F17);
    }

    if (v25 >= 0x41 && v24)
    {
      MEMORY[0x25F891010](v24, 0x1000C8000313F17);
    }

    if (v23 >= 0x41)
    {
      v6 = v22;
      if (v22)
      {
        goto LABEL_39;
      }
    }
  }

LABEL_40:
  if (v32 >= 0x41 && v31)
  {
    MEMORY[0x25F891010](v31, 0x1000C8000313F17);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::InferIntRangeInterface>();
      mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[328];
}

uint64_t llvm::getTypeName<mlir::InferIntRangeInterface>()
{
  {
    llvm::getTypeName<mlir::InferIntRangeInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::InferIntRangeInterface>();
    *algn_27FC19A58 = v1;
  }

  return llvm::getTypeName<mlir::InferIntRangeInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::InferIntRangeInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::InferIntRangeInterface]";
  v6 = 90;
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

llvm::APInt *llvm::function_ref<void ()(mlir::Value,mlir::IntegerValueRange const&)>::callback_fn<mlir::detail::infer_int_range_op_binder::match(mlir::Operation *)::{lambda(mlir::Value,mlir::IntegerValueRange const&)#1}>(llvm::APInt *result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 64) == 1)
  {
    v3 = result;
    if (**result - 16 == a2)
    {
      v5 = **(result + 1);
      if (*(v5 + 64) == 1)
      {
        llvm::APInt::operator=(**(result + 1), a3);
        llvm::APInt::operator=((v5 + 16), (a3 + 16));
        llvm::APInt::operator=((v5 + 32), (a3 + 32));
        result = llvm::APInt::operator=((v5 + 48), (a3 + 48));
      }

      else if (*(v5 + 64))
      {
        if (*(v5 + 56) >= 0x41u)
        {
          result = *(v5 + 48);
          if (result)
          {
            result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
          }
        }

        if (*(v5 + 40) >= 0x41u)
        {
          result = *(v5 + 32);
          if (result)
          {
            result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
          }
        }

        if (*(v5 + 24) >= 0x41u)
        {
          result = *(v5 + 16);
          if (result)
          {
            result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
          }
        }

        if (*(v5 + 8) >= 0x41u)
        {
          result = *v5;
          if (*v5)
          {
            result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
          }
        }

        *(v5 + 64) = 0;
      }

      else
      {
        v6 = *(a3 + 8);
        *(v5 + 8) = v6;
        if (v6 > 0x40)
        {
          operator new[]();
        }

        *v5 = *a3;
        v7 = *(a3 + 24);
        *(v5 + 24) = v7;
        if (v7 > 0x40)
        {
          operator new[]();
        }

        *(v5 + 16) = *(a3 + 16);
        v8 = *(a3 + 40);
        *(v5 + 40) = v8;
        if (v8 > 0x40)
        {
          operator new[]();
        }

        *(v5 + 32) = *(a3 + 32);
        v9 = *(a3 + 56);
        *(v5 + 56) = v9;
        if (v9 > 0x40)
        {
          operator new[]();
        }

        *(v5 + 48) = *(a3 + 48);
        *(v5 + 64) = 1;
      }

      **(v3 + 2) = 1;
    }
  }

  return result;
}

BOOL mlir::m_IntRangeWithoutZeroU(void)::{lambda(mlir::ConstantIntRanges const&)#1}::__invoke(llvm::APInt *this)
{
  v1 = this;
  v2 = *(this + 2);
  if (v2 >= 0x41)
  {
    if (v2 - llvm::APInt::countLeadingZerosSlowCase(this) > 0x40)
    {
      return 1;
    }

    v1 = *v1;
  }

  return *v1 != 0;
}

BOOL mlir::m_IntRangeWithoutZeroS(void)::{lambda(mlir::ConstantIntRanges const&)#1}::__invoke(uint64_t a1)
{
  if (llvm::APInt::sgt((a1 + 32), 0))
  {
    return 1;
  }

  return llvm::APInt::slt((a1 + 48), 0);
}

BOOL llvm::APInt::sgt(llvm::APInt *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 < 0x41)
  {
    goto LABEL_2;
  }

  v7 = v4 - llvm::APInt::getNumSignBits(this) + 1;
  v4 = *(v3 + 2);
  if (v7 < 0x41)
  {
    if (v4 > 0x40)
    {
      v5 = **v3;
      return v5 > a2;
    }

LABEL_2:
    v5 = (*v3 << -v4) >> -v4;
    if (!v4)
    {
      v5 = 0;
    }

    return v5 > a2;
  }

  v8 = v4 - 1;
  if (v4 >= 0x41)
  {
    v3 = (*v3 + 8 * (v8 >> 6));
  }

  return ((*v3 >> v8) & 1) == 0;
}

BOOL llvm::APInt::slt(llvm::APInt *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 < 0x41)
  {
    goto LABEL_2;
  }

  v7 = v4 - llvm::APInt::getNumSignBits(this) + 1;
  v4 = *(v3 + 2);
  if (v7 < 0x41)
  {
    if (v4 > 0x40)
    {
      v5 = **v3;
      return v5 < a2;
    }

LABEL_2:
    v5 = (*v3 << -v4) >> -v4;
    if (!v4)
    {
      v5 = 0;
    }

    return v5 < a2;
  }

  v8 = v4 - 1;
  if (v4 >= 0x41)
  {
    v3 = (*v3 + 8 * (v8 >> 6));
  }

  return (*v3 >> v8) & 1;
}

BOOL mlir::m_IntRangeWithoutNegOneS(void)::{lambda(mlir::ConstantIntRanges const&)#1}::__invoke(uint64_t a1)
{
  if (llvm::APInt::sgt((a1 + 32), -1))
  {
    return 1;
  }

  return llvm::APInt::slt((a1 + 48), -1);
}

uint64_t mlir::m_NegZeroFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke(uint64_t a1)
{
  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    v1 = *(*(a1 + 8) + 20);
  }

  else
  {
    v1 = *(a1 + 20);
  }

  if ((v1 & 7) == 3)
  {
    return (v1 >> 3) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::m_PosZeroFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke(uint64_t a1)
{
  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    v1 = *(*(a1 + 8) + 20);
  }

  else
  {
    v1 = *(a1 + 20);
  }

  return (v1 & 7) == 3 && (v1 & 8) == 0;
}

BOOL mlir::m_NegInfFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke(uint64_t a1)
{
  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    v1 = *(*(a1 + 8) + 20);
    if ((v1 & 8) == 0)
    {
      return 0;
    }
  }

  else
  {
    v1 = *(a1 + 20);
    if ((v1 & 8) == 0)
    {
      return 0;
    }
  }

  return (v1 & 7) == 0;
}

BOOL mlir::m_NaNFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke(uint64_t a1)
{
  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    v1 = *(a1 + 8);
  }

  else
  {
    v1 = a1;
  }

  return (*(v1 + 20) & 7) == 1;
}

BOOL mlir::m_PosInfFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke(uint64_t a1)
{
  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    v1 = *(*(a1 + 8) + 20);
    if ((v1 & 8) == 0)
    {
      return (v1 & 7) == 0;
    }
  }

  else
  {
    v1 = *(a1 + 20);
    if ((v1 & 8) == 0)
    {
      return (v1 & 7) == 0;
    }
  }

  return 0;
}

BOOL mlir::m_OneFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke(const llvm::APFloat **a1)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v6 = 1;
  llvm::APFloat::Storage::Storage<unsigned long long &>(v7, v2, &v6);
  v3 = llvm::APFloat::compare(v7, a1) == 1;
  llvm::APFloat::Storage::~Storage(v7);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t llvm::APFloat::Storage::Storage<unsigned long long &>(void *a1, void *a2, uint64_t *a3)
{
  v3 = *a3;
  if (a2 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(a1, &llvm::semPPCDoubleDouble);
  }

  return llvm::detail::IEEEFloat::IEEEFloat(a1, a2, v3);
}

uint64_t *getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType>(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    v4 = *(*v1 + 136);
    v5 = v4 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
    v6 = v5 || v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
    if (!v6 && v4 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return 0;
    }
  }

  v8 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v1);
  if (v8)
  {
    v1 = (*(v9 + 8))(v9, v8);
  }

  v10 = *(*v1 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t *mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 8);
  v6 = *(*a2 + 16);
  (*(v6 + 24))(v6, v5);
  v7 = *a2;
  v8 = *(v7 + 8);
  result = (*(*(v7 + 16) + 24))();
  if (v10)
  {
    v11 = 8 * v10;
    v12 = 1;
    do
    {
      v13 = *result++;
      v12 *= v13;
      v11 -= 8;
    }

    while (v11);
  }

  else
  {
    v12 = 1;
  }

  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 24) = v12;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = 1;
  return result;
}

llvm::detail::IEEEFloat *llvm::APFloat::Storage::Storage<llvm::APFloatBase::uninitializedTag>(llvm::detail::IEEEFloat *a1, void *a2)
{
  if (a2 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(a1, &llvm::semPPCDoubleDouble);
  }

  return llvm::detail::IEEEFloat::IEEEFloat(a1, a2);
}

uint64_t mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::arith::ArithFastMathInterface>();
      mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[323];
}

uint64_t llvm::getTypeName<mlir::arith::ArithFastMathInterface>()
{
  {
    llvm::getTypeName<mlir::arith::ArithFastMathInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::arith::ArithFastMathInterface>();
    unk_27FC19A30 = v1;
  }

  return llvm::getTypeName<mlir::arith::ArithFastMathInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::ArithFastMathInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::ArithFastMathInterface]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t mlir::Diagnostic::operator<<<89ul>(uint64_t a1, char *__s)
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

uint64_t mlir::Diagnostic::operator<<<124ul>(uint64_t a1, char *__s)
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t mlir::detail::constant_int_predicate_matcher::match(uint64_t (**a1)(uint64_t *), uint64_t a2)
{
  v7 = 1;
  v5 = &v6;
  v6 = 0;
  if (mlir::detail::constant_int_value_binder::match(&v5, a2))
  {
    v3 = (*a1)(&v6);
  }

  else
  {
    v3 = 0;
  }

  if (v7 >= 0x41 && v6)
  {
    MEMORY[0x25F891010](v6, 0x1000C8000313F17);
  }

  return v3;
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, uint64_t *a2, void **a3)
{
  if (*(a2 + 2) > 0x40u)
  {
    operator new[]();
  }

  v4 = *a2;
  v8 = *(a2 + 2);
  v7 = v4;
  result = llvm::APInt::operator+=(&v7, a3);
  v6 = v7;
  *(a1 + 8) = v8;
  *a1 = v6;
  *(a1 + 16) = 1;
  return result;
}

uint64_t *llvm::cast<mlir::ElementsAttr,mlir::Attribute>(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return a1;
}

void *mlir::ElementsAttr::try_value_begin<llvm::APInt>(uint64_t a1, uint64_t *a2)
{
  mlir::detail::TypeIDResolver<llvm::APInt,void>::resolveTypeID();
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

uint64_t mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 1))
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  result = *(a2 + 8);
  if (*a2 == 1)
  {
    v7 = result + 16 * v5;
    v8 = *(v7 + 8);
    *(a1 + 8) = v8;
    if (v8 > 0x40)
    {
      operator new[]();
    }

    *a1 = *v7;
  }

  else
  {
    v9 = *(*result + 24);

    return v9();
  }

  return result;
}

uint64_t llvm::SmallVector<llvm::APInt,4u>::~SmallVector(uint64_t a1)
{
  llvm::SmallVectorTemplateBase<llvm::APInt,false>::destroy_range(*a1, (*a1 + 16 * *(a1 + 8)));
  if (*a1 != a1 + 16)
  {
    free(*a1);
  }

  return a1;
}

void anonymous namespace::AddIAddConstant::~AddIAddConstant(_anonymous_namespace_::AddIAddConstant *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::AddIAddConstant::matchAndRewrite(_anonymous_namespace_::AddIAddConstant *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v53[4] = *MEMORY[0x277D85DE8];
  v42 = 0;
  v43 = 0;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v40 = 0;
  v41 = v5;
  v52[0] = v53;
  v52[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
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
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_54;
      }

      v12 = *(v6 + 3);
      goto LABEL_24;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  {
LABEL_54:
    v34 = 0;
    goto LABEL_55;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, v10);
  v14 = *(*(v6 + 9) + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_21:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_54;
    }

    v12 = *(v6 + 3);
LABEL_24:
    (*(*v11 + 88))(v11, v12, v13, &v44);
    goto LABEL_54;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = (v16 + 120);
    if (v16 == -120)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = (v14 + 16 * v15 + 16);
  }

  {
    goto LABEL_54;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, v17);
  Attr = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!Attr || (v19 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id))
  {
    v19 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  v20 = *(a3 + 1);
  v21 = *(*(v52[0] + 1) + 24);
  v44 = *(*v52[0] + 24);
  v45 = v21;
  v22 = mlir::FusedLoc::get(&v44, 2, 0, v20);
  v49 = v51;
  v50 = 0x400000000;
  if (*(v6 + 9))
  {
    v23 = v6 - 16;
  }

  else
  {
    v23 = 0;
  }

  v39 = applyToIntegerAttrs(v23, v40, v43, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::plus<llvm::APInt>>, &v44);
  v24 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>((a3 + 8), v22, &v39);
  v25 = mlir::arith::IntegerOverflowFlagsAttr::get(*(**v42 + 32), *(v19 + 8) & v42[2]);
  v47[0] = v48;
  v47[1] = 0x400000000;
  v44 = v46;
  v45 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v47, *(v41 + 24));
  if (*(v24 + 9))
  {
    v26 = (v24 - 16);
  }

  else
  {
    v26 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v47, v26);
  if (v25)
  {
    v37 = "overflowFlags";
    v38 = 259;
    v28 = mlir::StringAttr::get(*(a3 + 1), &v37, v27);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v44, v28, v25);
  }

  v29 = mlir::OpBuilder::create<mlir::arith::AddIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v22, v47, &v44);
  if (v44 != v46)
  {
    free(v44);
  }

  if (v47[0] != v48)
  {
    free(v47[0]);
  }

  if (*(v29 + 9))
  {
    v30 = (v29 - 16);
  }

  else
  {
    v30 = 0;
  }

  v44 = v46;
  v45 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v44, v30, 0, v30, 1);
  v31 = v44;
  if (v45)
  {
    v32 = 8 * v45;
    do
    {
      v33 = *v31++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v49, v33);
      v32 -= 8;
    }

    while (v32);
    v31 = v44;
  }

  if (v31 != v46)
  {
    free(v31);
  }

  (**a3)(a3, a2, v49 & 0xFFFFFFFFFFFFFFF9, v50);
  if (v49 != v51)
  {
    free(v49);
  }

  v34 = 1;
LABEL_55:
  if (v52[0] != v53)
  {
    free(v52[0]);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

uint64_t anonymous namespace::static_dag_matcher_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t *a6)
{
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
  {
    v8 = *(a1 + 16);
    if (!v8 || v8[2] != 1)
    {
      return 0;
    }

    v9 = *(a2 + 24);
    v10 = *(*v8 + 88);
    goto LABEL_15;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v13 = *(a2 + 72);
  }

  else
  {
    v13 = 0;
  }

  *a5 = v13;
  a5[1] = 1;
  v14 = *(*(a2 + 72) + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_12:
    v18 = *(a1 + 16);
    if (!v18 || v18[2] != 1)
    {
      return 0;
    }

    v19 = *(a2 + 24);
    v10 = *(*v18 + 88);
LABEL_15:
    v10();
    return 0;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = (v16 + 120);
    if (v16 == -120)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v17 = (v14 + 16 * v15 + 16);
  }

  {
    return 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a3, v17);
  Attr = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!Attr || *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    Attr = mlir::arith::IntegerOverflowFlagsAttr::get(*(a1 + 8), 0);
  }

  *a4 = Attr;
  return 1;
}

uint64_t anonymous namespace::static_dag_matcher_2(uint64_t a1, void *a2, uint64_t *a3)
{
  v12 = &v13;
  v13 = 0;
  if ((*(a2 - 1) & 7) == 7)
  {
    goto LABEL_8;
  }

  v6 = *(a2 - 1) & 7;
  if (v6 == 6)
  {
    v7 = &a2[3 * *a2 - 2];
    v8 = v7 + 120;
    if (v7 == -120)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = &a2[2 * v6];
  }

  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v12, v8))
  {
    v9 = v13;
    *a3 = v13;
  }

LABEL_8:
  v11 = *(a1 + 16);
  if (v11)
  {
    if (v11[2] == 1)
    {
    }
  }

  return 0;
}

char *mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>(mlir::OpBuilder *a1, uint64_t **a2, uint64_t **a3)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantOp>(a1, *(**a2 + 32));
  v15[0] = a2;
  v15[1] = v6;
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
  v7 = *a3;
  if (v7)
  {
    v8 = *v7;
    v9 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    v6 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  mlir::arith::ConstantOp::build(v6, v15, v7, v10);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
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

void llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(uint64_t a1, uint64_t a2, uint64_t a3)
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

char *mlir::OpBuilder::create<mlir::arith::AddIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v45[2] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::AddIOp>(a1, *(**a2 + 32));
  v30 = a2;
  v31 = v8;
  v32[0] = &v33;
  v32[1] = 0x400000000;
  v34[0] = &v35;
  v34[1] = 0x400000000;
  v36[0] = &v37;
  v36[1] = 0x400000000;
  v38 = 4;
  v39 = v41;
  v40 = 0x100000000;
  v41[1] = v42;
  v41[2] = 0x100000000;
  v42[1] = 0;
  v42[2] = 0;
  v42[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v42[4] = 0;
  v42[6] = 0;
  v9 = *a3;
  v10 = *(a3 + 2);
  v11 = *a4;
  v12 = *(a4 + 8);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v32, v9 & 0xFFFFFFFFFFFFFFF9, 0, v9 & 0xFFFFFFFFFFFFFFF9, v10);
  v38 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v36, v11, &v11[16 * v12]);
  if (v12)
  {
    v13 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties>(&v30);
    v14 = v31;
    v15 = *(v31 + 16) == &mlir::detail::TypeIDResolver<void,void>::id ? 0 : v31;
    Dictionary = mlir::NamedAttrList::getDictionary(v36, *(**v30 + 32));
    if (((*(*v15 + 144))(v15, v14, v13, Dictionary, 0) & 1) == 0)
    {
      v27 = "Property conversion failed.";
LABEL_15:
      llvm::report_fatal_error(v27, 1);
    }
  }

  v43 = v45;
  v44 = 0x200000000;
  v17 = mlir::NamedAttrList::getDictionary(v36, *(**v30 + 32));
  if (!mlir::arith::AddIOp::inferReturnTypes(v17, v18, v19, v9 & 0xFFFFFFFFFFFFFFF9, v10, v20, v21, v22, v28, v29, &v43))
  {
    v27 = "Failed to infer result type(s).";
    goto LABEL_15;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v34, v43, &v43[v44]);
  if (v43 != v45)
  {
    free(v43);
  }

  v23 = mlir::Operation::create(&v30);
  mlir::OpBuilder::insert(a1, v23);
  if (*(*(v23 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  mlir::OperationState::~OperationState(&v30);
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t anonymous namespace::static_dag_matcher_0(uint64_t a1, void *a2, uint64_t *a3)
{
  v12 = &v13;
  v13 = 0;
  if ((*(a2 - 1) & 7) == 7)
  {
    goto LABEL_8;
  }

  v6 = *(a2 - 1) & 7;
  if (v6 == 6)
  {
    v7 = &a2[3 * *a2 - 2];
    v8 = v7 + 120;
    if (v7 == -120)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = &a2[2 * v6];
  }

  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v12, v8))
  {
    v9 = v13;
    *a3 = v13;
  }

LABEL_8:
  v11 = *(a1 + 16);
  if (v11)
  {
    if (v11[2] == 1)
    {
    }
  }

  return 0;
}

uint64_t anonymous namespace::__mlir_ods_local_attr_constraint_ArithCanonicalization1(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = "operand 0 of native code call '::mlir::success(::mlir::matchPattern($_self->getResult(0), ::mlir::m_Constant(&$0)))' failed to satisfy constraint: 'arbitrary integer attribute'";
  v5[1] = 176;
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 1;
  }

  v4 = v5;
  if (a1)
  {
    if (a1[2] == 1)
    {
    }
  }

  return 0;
}

uint64_t llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::__mlir_ods_local_attr_constraint_ArithCanonicalization1(mlir::PatternRewriter &,mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v8 = 261;
  v4 = *v2;
  v3 = v2[1];
  v7[0] = v4;
  v7[1] = v3;
  v5 = mlir::Diagnostic::operator<<(a2, v7);
  return mlir::Diagnostic::operator<<<30ul>(v5, ": arbitrary integer attribute");
}

uint64_t applyToIntegerAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t *, uint64_t *), uint64_t a5)
{
  v13 = *(a2 + 24);
  if (v13 > 0x40)
  {
    operator new[]();
  }

  v12 = *(a2 + 16);
  v11 = *(a3 + 24);
  if (v11 > 0x40)
  {
    operator new[]();
  }

  v10 = *(a3 + 16);
  a4(&v8, a5, &v12, &v10);
  v6 = mlir::IntegerAttr::get((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8), &v8);
  if (v9 >= 0x41 && v8)
  {
    MEMORY[0x25F891010](v8, 0x1000C8000313F17);
  }

  if (v11 >= 0x41 && v10)
  {
    MEMORY[0x25F891010](v10, 0x1000C8000313F17);
  }

  if (v13 >= 0x41 && v12)
  {
    MEMORY[0x25F891010](v12, 0x1000C8000313F17);
  }

  return v6;
}

uint64_t llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::plus<llvm::APInt>>@<X0>(uint64_t *a1@<X1>, void **a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 2);
  if (v6 > 0x40)
  {
    operator new[]();
  }

  v5 = *a1;
  result = llvm::APInt::operator+=(&v5, a2);
  *(a3 + 8) = v6;
  *a3 = v5;
  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::AddIOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.addi";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::AddIAddConstant>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::AddIAddConstant]";
  v6 = 100;
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

void anonymous namespace::AddISubConstantRHS::~AddISubConstantRHS(_anonymous_namespace_::AddISubConstantRHS *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::AddISubConstantRHS::matchAndRewrite(_anonymous_namespace_::AddISubConstantRHS *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v53[4] = *MEMORY[0x277D85DE8];
  v42 = 0;
  v43 = 0;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v40 = 0;
  v41 = v5;
  v52[0] = v53;
  v52[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
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
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_54;
      }

      v12 = *(v6 + 3);
      goto LABEL_24;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  {
LABEL_54:
    v34 = 0;
    goto LABEL_55;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, v10);
  v14 = *(*(v6 + 9) + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_21:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_54;
    }

    v12 = *(v6 + 3);
LABEL_24:
    (*(*v11 + 88))(v11, v12, v13, &v44);
    goto LABEL_54;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = (v16 + 120);
    if (v16 == -120)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = (v14 + 16 * v15 + 16);
  }

  {
    goto LABEL_54;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, v17);
  Attr = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!Attr || (v19 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id))
  {
    v19 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  v20 = *(a3 + 1);
  v21 = *(*(v52[0] + 1) + 24);
  v44 = *(*v52[0] + 24);
  v45 = v21;
  v22 = mlir::FusedLoc::get(&v44, 2, 0, v20);
  v49 = v51;
  v50 = 0x400000000;
  if (*(v6 + 9))
  {
    v23 = v6 - 16;
  }

  else
  {
    v23 = 0;
  }

  v39 = applyToIntegerAttrs(v23, v43, v40, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::minus<llvm::APInt>>, &v44);
  v24 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>((a3 + 8), v22, &v39);
  v25 = mlir::arith::IntegerOverflowFlagsAttr::get(*(**v42 + 32), *(v19 + 8) & v42[2]);
  v47[0] = v48;
  v47[1] = 0x400000000;
  v44 = v46;
  v45 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v47, *(v41 + 24));
  if (*(v24 + 9))
  {
    v26 = (v24 - 16);
  }

  else
  {
    v26 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v47, v26);
  if (v25)
  {
    v37 = "overflowFlags";
    v38 = 259;
    v28 = mlir::StringAttr::get(*(a3 + 1), &v37, v27);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v44, v28, v25);
  }

  v29 = mlir::OpBuilder::create<mlir::arith::AddIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v22, v47, &v44);
  if (v44 != v46)
  {
    free(v44);
  }

  if (v47[0] != v48)
  {
    free(v47[0]);
  }

  if (*(v29 + 9))
  {
    v30 = (v29 - 16);
  }

  else
  {
    v30 = 0;
  }

  v44 = v46;
  v45 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v44, v30, 0, v30, 1);
  v31 = v44;
  if (v45)
  {
    v32 = 8 * v45;
    do
    {
      v33 = *v31++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v49, v33);
      v32 -= 8;
    }

    while (v32);
    v31 = v44;
  }

  if (v31 != v46)
  {
    free(v31);
  }

  (**a3)(a3, a2, v49 & 0xFFFFFFFFFFFFFFF9, v50);
  if (v49 != v51)
  {
    free(v49);
  }

  v34 = 1;
LABEL_55:
  if (v52[0] != v53)
  {
    free(v52[0]);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

uint64_t anonymous namespace::static_dag_matcher_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t *a6)
{
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
  {
    v8 = *(a1 + 16);
    if (!v8 || v8[2] != 1)
    {
      return 0;
    }

    v9 = *(a2 + 24);
    v10 = *(*v8 + 88);
    goto LABEL_15;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v13 = *(a2 + 72);
  }

  else
  {
    v13 = 0;
  }

  *a5 = v13;
  a5[1] = 1;
  v14 = *(*(a2 + 72) + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_12:
    v18 = *(a1 + 16);
    if (!v18 || v18[2] != 1)
    {
      return 0;
    }

    v19 = *(a2 + 24);
    v10 = *(*v18 + 88);
LABEL_15:
    v10();
    return 0;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = (v16 + 120);
    if (v16 == -120)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v17 = (v14 + 16 * v15 + 16);
  }

  {
    return 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a3, v17);
  Attr = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!Attr || *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    Attr = mlir::arith::IntegerOverflowFlagsAttr::get(*(a1 + 8), 0);
  }

  *a4 = Attr;
  return 1;
}

uint64_t llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::minus<llvm::APInt>>@<X0>(uint64_t *a1@<X1>, void **a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 2);
  if (v6 > 0x40)
  {
    operator new[]();
  }

  v5 = *a1;
  result = llvm::APInt::operator-=(&v5, a2);
  *(a3 + 8) = v6;
  *a3 = v5;
  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::AddISubConstantRHS>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::AddISubConstantRHS]";
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

void anonymous namespace::AddISubConstantLHS::~AddISubConstantLHS(_anonymous_namespace_::AddISubConstantLHS *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::AddISubConstantLHS::matchAndRewrite(_anonymous_namespace_::AddISubConstantLHS *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v53[4] = *MEMORY[0x277D85DE8];
  v42 = 0;
  v43 = 0;
  v41 = 0;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v40 = v5;
  v52[0] = v53;
  v52[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
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
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_54;
      }

      v12 = *(v6 + 3);
      goto LABEL_24;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  {
LABEL_54:
    v34 = 0;
    goto LABEL_55;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, v10);
  v14 = *(*(v6 + 9) + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_21:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_54;
    }

    v12 = *(v6 + 3);
LABEL_24:
    (*(*v11 + 88))(v11, v12, v13, &v44);
    goto LABEL_54;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = (v16 + 120);
    if (v16 == -120)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = (v14 + 16 * v15 + 16);
  }

  {
    goto LABEL_54;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, v17);
  Attr = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!Attr || (v19 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id))
  {
    v19 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  v20 = *(a3 + 1);
  v21 = *(*(v52[0] + 1) + 24);
  v44 = *(*v52[0] + 24);
  v45 = v21;
  v22 = mlir::FusedLoc::get(&v44, 2, 0, v20);
  v49 = v51;
  v50 = 0x400000000;
  if (*(v6 + 9))
  {
    v23 = v6 - 16;
  }

  else
  {
    v23 = 0;
  }

  v39 = applyToIntegerAttrs(v23, v41, v43, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::plus<llvm::APInt>>, &v44);
  v24 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>((a3 + 8), v22, &v39);
  v25 = mlir::arith::IntegerOverflowFlagsAttr::get(*(**v42 + 32), *(v19 + 8) & v42[2]);
  v47[0] = v48;
  v47[1] = 0x400000000;
  v44 = v46;
  v45 = 0x400000000;
  if (*(v24 + 9))
  {
    v26 = (v24 - 16);
  }

  else
  {
    v26 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v47, v26);
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v47, *(v40 + 24));
  if (v25)
  {
    v37 = "overflowFlags";
    v38 = 259;
    v28 = mlir::StringAttr::get(*(a3 + 1), &v37, v27);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v44, v28, v25);
  }

  v29 = mlir::OpBuilder::create<mlir::arith::SubIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v22, v47, &v44);
  if (v44 != v46)
  {
    free(v44);
  }

  if (v47[0] != v48)
  {
    free(v47[0]);
  }

  if (*(v29 + 9))
  {
    v30 = (v29 - 16);
  }

  else
  {
    v30 = 0;
  }

  v44 = v46;
  v45 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v44, v30, 0, v30, 1);
  v31 = v44;
  if (v45)
  {
    v32 = 8 * v45;
    do
    {
      v33 = *v31++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v49, v33);
      v32 -= 8;
    }

    while (v32);
    v31 = v44;
  }

  if (v31 != v46)
  {
    free(v31);
  }

  (**a3)(a3, a2, v49 & 0xFFFFFFFFFFFFFFF9, v50);
  if (v49 != v51)
  {
    free(v49);
  }

  v34 = 1;
LABEL_55:
  if (v52[0] != v53)
  {
    free(v52[0]);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

uint64_t anonymous namespace::static_dag_matcher_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
  {
    v8 = *(a1 + 16);
    if (!v8 || v8[2] != 1)
    {
      return 0;
    }

    v9 = *(a2 + 24);
    v10 = *(*v8 + 88);
    goto LABEL_13;
  }

  v11 = *(*(a2 + 72) + 24);
  if ((~*(v11 + 8) & 7) == 0)
  {
    v11 = 0;
  }

  if (!v11)
  {
LABEL_10:
    v18 = *(a1 + 16);
    if (!v18 || v18[2] != 1)
    {
      return 0;
    }

    v19 = *(a2 + 24);
    v10 = *(*v18 + 88);
LABEL_13:
    v10();
    return 0;
  }

  v15 = *(v11 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v11 + 24 * *(v11 + 16);
    v17 = (v16 + 120);
    if (v16 == -120)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v17 = (v11 + 16 * v15 + 16);
  }

  {
    return 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a3, v17);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v20 = *(a2 + 72);
  }

  else
  {
    v20 = 0;
  }

  *a6 = v20 + 32;
  a6[1] = 1;
  Attr = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!Attr || *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    Attr = mlir::arith::IntegerOverflowFlagsAttr::get(*(a1 + 8), 0);
  }

  *a4 = Attr;
  return 1;
}

char *mlir::OpBuilder::create<mlir::arith::SubIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v45[2] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::SubIOp>(a1, *(**a2 + 32));
  v30 = a2;
  v31 = v8;
  v32[0] = &v33;
  v32[1] = 0x400000000;
  v34[0] = &v35;
  v34[1] = 0x400000000;
  v36[0] = &v37;
  v36[1] = 0x400000000;
  v38 = 4;
  v39 = v41;
  v40 = 0x100000000;
  v41[1] = v42;
  v41[2] = 0x100000000;
  v42[1] = 0;
  v42[2] = 0;
  v42[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v42[4] = 0;
  v42[6] = 0;
  v9 = *a3;
  v10 = *(a3 + 2);
  v11 = *a4;
  v12 = *(a4 + 8);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v32, v9 & 0xFFFFFFFFFFFFFFF9, 0, v9 & 0xFFFFFFFFFFFFFFF9, v10);
  v38 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v36, v11, &v11[16 * v12]);
  if (v12)
  {
    v13 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties>(&v30);
    v14 = v31;
    v15 = *(v31 + 16) == &mlir::detail::TypeIDResolver<void,void>::id ? 0 : v31;
    Dictionary = mlir::NamedAttrList::getDictionary(v36, *(**v30 + 32));
    if (((*(*v15 + 144))(v15, v14, v13, Dictionary, 0) & 1) == 0)
    {
      v27 = "Property conversion failed.";
LABEL_15:
      llvm::report_fatal_error(v27, 1);
    }
  }

  v43 = v45;
  v44 = 0x200000000;
  v17 = mlir::NamedAttrList::getDictionary(v36, *(**v30 + 32));
  if (!mlir::arith::SubIOp::inferReturnTypes(v17, v18, v19, v9 & 0xFFFFFFFFFFFFFFF9, v10, v20, v21, v22, v28, v29, &v43))
  {
    v27 = "Failed to infer result type(s).";
    goto LABEL_15;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v34, v43, &v43[v44]);
  if (v43 != v45)
  {
    free(v43);
  }

  v23 = mlir::Operation::create(&v30);
  mlir::OpBuilder::insert(a1, v23);
  if (*(*(v23 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  mlir::OperationState::~OperationState(&v30);
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::SubIOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.subi";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::AddISubConstantLHS>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::AddISubConstantLHS]";
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

void anonymous namespace::AddIMulNegativeOneRhs::~AddIMulNegativeOneRhs(_anonymous_namespace_::AddIMulNegativeOneRhs *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::AddIMulNegativeOneRhs::matchAndRewrite(_anonymous_namespace_::AddIMulNegativeOneRhs *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v50[4] = *MEMORY[0x277D85DE8];
  v40 = 0;
  v49[0] = v50;
  v49[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v49, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
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
    v10 = (v9 + 120);
    if (v9 == -120)
    {
LABEL_9:
      v11 = *(a3 + 2);
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_64;
      }

      v12 = *(v5 + 3);
      goto LABEL_63;
    }
  }

  else
  {
    v10 = (v7 + 16 * v8 + 16);
  }

  if (*(v10[6] + 16) != &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
  {
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_64;
    }

    v12 = v10[3];
    goto LABEL_63;
  }

  v14 = v10[9];
  v15 = *(v14 + 56);
  if ((~*(v15 + 8) & 7) == 0)
  {
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_22;
  }

  v16 = *(v15 + 8) & 7;
  if (v16 == 6)
  {
    v17 = v15 + 24 * *(v15 + 16);
    v18 = (v17 + 120);
    if (v17 == -120)
    {
LABEL_22:
      v11 = *(a3 + 2);
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_64;
      }

      v12 = v10[3];
      goto LABEL_63;
    }
  }

  else
  {
    v18 = (v15 + 16 * v16 + 16);
  }

  {
LABEL_64:
    v35 = 0;
    goto LABEL_65;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v49, v18);
  Attr = mlir::Operation::getAttr(v10, "overflowFlags", 0xDuLL);
  if (!Attr || *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v49, v10);
  v20 = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!v20 || *(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  v21 = v40;
  getIntOrSplatIntValue(&v41, v40);
  if ((v43[0] & 1) == 0)
  {
    goto LABEL_60;
  }

  getIntOrSplatIntValue(&v46, v21);
  isAllOnes = llvm::APInt::isAllOnes(&v46);
  if (v48[0] == 1 && v47 >= 0x41 && v46)
  {
    MEMORY[0x25F891010](v46, 0x1000C8000313F17);
  }

  if (v42 >= 0x41 && v41)
  {
    MEMORY[0x25F891010](v41, 0x1000C8000313F17);
  }

  if (!isAllOnes)
  {
LABEL_60:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_64;
    }

    v12 = *(a2 + 3);
LABEL_63:
    (*(*v11 + 88))(v11, v12, v13, &v41);
    goto LABEL_64;
  }

  v23 = *(a3 + 1);
  v24 = *(*(v49[0] + 1) + 24);
  v41 = *(*v49[0] + 24);
  v42 = v24;
  v25 = mlir::FusedLoc::get(&v41, 2, 0, v23);
  v46 = v48;
  v47 = 0x400000000;
  v44[0] = v45;
  v44[1] = 0x400000000;
  v41 = v43;
  v42 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v44, *(v6 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v44, *(v14 + 24));
  v26 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  if (v26)
  {
    v28 = v26;
    v38 = "overflowFlags";
    v39 = 259;
    v29 = mlir::StringAttr::get(*(a3 + 1), &v38, v27);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v41, v29, v28);
  }

  v30 = mlir::OpBuilder::create<mlir::arith::SubIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v25, v44, &v41);
  if (v41 != v43)
  {
    free(v41);
  }

  if (v44[0] != v45)
  {
    free(v44[0]);
  }

  if (*(v30 + 9))
  {
    v31 = (v30 - 16);
  }

  else
  {
    v31 = 0;
  }

  v41 = v43;
  v42 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v41, v31, 0, v31, 1);
  v32 = v41;
  if (v42)
  {
    v33 = 8 * v42;
    do
    {
      v34 = *v32++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v46, v34);
      v33 -= 8;
    }

    while (v33);
    v32 = v41;
  }

  if (v32 != v43)
  {
    free(v32);
  }

  (**a3)(a3, a2, v46 & 0xFFFFFFFFFFFFFFF9, v47);
  if (v46 != v48)
  {
    free(v46);
  }

  v35 = 1;
LABEL_65:
  if (v49[0] != v50)
  {
    free(v49[0]);
  }

  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

uint64_t anonymous namespace::static_dag_matcher_3(uint64_t a1, void *a2, void *a3)
{
  v11 = &v12;
  v12 = 0;
  if ((*(a2 - 1) & 7) == 7)
  {
    goto LABEL_8;
  }

  v6 = *(a2 - 1) & 7;
  if (v6 == 6)
  {
    v7 = &a2[3 * *a2 - 2];
    v8 = v7 + 120;
    if (v7 == -120)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = &a2[2 * v6];
  }

  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v11, v8))
  {
    *a3 = v12;
    return 1;
  }

LABEL_8:
  v10 = *(a1 + 16);
  if (v10)
  {
    if (v10[2] == 1)
    {
    }
  }

  return 0;
}

uint64_t getIntOrSplatIntValue(uint64_t result, uint64_t a2)
{
  v2 = result;
  v6 = 1;
  v4 = &v5;
  v5 = 0;
  if (a2)
  {
    result = mlir::detail::constant_int_value_binder::match(&v4, a2);
    v3 = v6;
    if (result)
    {
      *(v2 + 8) = v6;
      *v2 = v5;
      *(v2 + 16) = 1;
    }

    else
    {
      *v2 = 0;
      *(v2 + 16) = 0;
      if (v3 >= 0x41)
      {
        result = v5;
        if (v5)
        {
          return MEMORY[0x25F891010](v5, 0x1000C8000313F17);
        }
      }
    }
  }

  else
  {
    *result = 0;
    *(result + 16) = 0;
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::AddIMulNegativeOneRhs>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::AddIMulNegativeOneRhs]";
  v6 = 106;
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

void anonymous namespace::AddIMulNegativeOneLhs::~AddIMulNegativeOneLhs(_anonymous_namespace_::AddIMulNegativeOneLhs *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::AddIMulNegativeOneLhs::matchAndRewrite(_anonymous_namespace_::AddIMulNegativeOneLhs *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v50[4] = *MEMORY[0x277D85DE8];
  v40 = 0;
  v49[0] = v50;
  v49[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v49, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
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
        goto LABEL_66;
      }

      v11 = *(v5 + 3);
      goto LABEL_65;
    }
  }

  else
  {
    v9 = (v6 + 16 * v7 + 16);
  }

  if (*(v9[6] + 16) != &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_66;
    }

    v11 = v9[3];
    goto LABEL_65;
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
        goto LABEL_66;
      }

      v11 = v9[3];
      goto LABEL_65;
    }
  }

  else
  {
    v17 = (v14 + 16 * v15 + 16);
  }

  {
LABEL_66:
    v35 = 0;
    goto LABEL_67;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v49, v17);
  Attr = mlir::Operation::getAttr(v9, "overflowFlags", 0xDuLL);
  if (!Attr || *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v49, v9);
  if ((*(v5 + 46) & 0x80) != 0)
  {
    v19 = *(v5 + 9);
  }

  else
  {
    v19 = 0;
  }

  v20 = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!v20 || *(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  v21 = v40;
  getIntOrSplatIntValue(&v41, v40);
  if ((v43[0] & 1) == 0)
  {
    goto LABEL_62;
  }

  getIntOrSplatIntValue(&v46, v21);
  isAllOnes = llvm::APInt::isAllOnes(&v46);
  if (v48[0] == 1 && v47 >= 0x41 && v46)
  {
    MEMORY[0x25F891010](v46, 0x1000C8000313F17);
  }

  if (v42 >= 0x41 && v41)
  {
    MEMORY[0x25F891010](v41, 0x1000C8000313F17);
  }

  if (!isAllOnes)
  {
LABEL_62:
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_66;
    }

    v11 = *(a2 + 3);
LABEL_65:
    (*(*v10 + 88))(v10, v11, v12, &v41);
    goto LABEL_66;
  }

  v23 = *(a3 + 1);
  v24 = *(*(v49[0] + 1) + 24);
  v41 = *(*v49[0] + 24);
  v42 = v24;
  v25 = mlir::FusedLoc::get(&v41, 2, 0, v23);
  v46 = v48;
  v47 = 0x400000000;
  v44[0] = v45;
  v44[1] = 0x400000000;
  v41 = v43;
  v42 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v44, *(v19 + 56));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v44, *(v13 + 24));
  v26 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  if (v26)
  {
    v28 = v26;
    v38 = "overflowFlags";
    v39 = 259;
    v29 = mlir::StringAttr::get(*(a3 + 1), &v38, v27);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v41, v29, v28);
  }

  v30 = mlir::OpBuilder::create<mlir::arith::SubIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v25, v44, &v41);
  if (v41 != v43)
  {
    free(v41);
  }

  if (v44[0] != v45)
  {
    free(v44[0]);
  }

  if (*(v30 + 9))
  {
    v31 = (v30 - 16);
  }

  else
  {
    v31 = 0;
  }

  v41 = v43;
  v42 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v41, v31, 0, v31, 1);
  v32 = v41;
  if (v42)
  {
    v33 = 8 * v42;
    do
    {
      v34 = *v32++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v46, v34);
      v33 -= 8;
    }

    while (v33);
    v32 = v41;
  }

  if (v32 != v43)
  {
    free(v32);
  }

  (**a3)(a3, a2, v46 & 0xFFFFFFFFFFFFFFF9, v47);
  if (v46 != v48)
  {
    free(v46);
  }

  v35 = 1;
LABEL_67:
  if (v49[0] != v50)
  {
    free(v49[0]);
  }

  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::AddIMulNegativeOneLhs>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::AddIMulNegativeOneLhs]";
  v6 = 106;
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

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddUIExtendedOp::fold(mlir::arith::AddUIExtendedOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddUIExtendedOp::fold(mlir::arith::AddUIExtendedOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, uint64_t *a2, void **a3)
{
  if (*(a2 + 2) > 0x40u)
  {
    operator new[]();
  }

  v4 = *a2;
  v8 = *(a2 + 2);
  v7 = v4;
  result = llvm::APInt::operator+=(&v7, a3);
  v6 = v7;
  *(a1 + 8) = v8;
  *a1 = v6;
  *(a1 + 16) = 1;
  return result;
}

void anonymous namespace::AddUIExtendedToAddI::~AddUIExtendedToAddI(_anonymous_namespace_::AddUIExtendedToAddI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::AddUIExtendedToAddI::matchAndRewrite(_anonymous_namespace_::AddUIExtendedToAddI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v44[4] = *MEMORY[0x277D85DE8];
  v43[0] = v44;
  v43[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v43, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddUIExtendedOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  if ((*(v5 + 46) & 0x80) != 0)
  {
    v6 = *(v5 + 9);
    v7 = v6;
    v8 = v6;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  v9 = *(v5 + 9);
  v10 = v5 - 16;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = *(v10 + 1) & 7;
  if (v9)
  {
    v12 = v11 == 6;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || v11 == 5)
  {
    v14 = -40;
  }

  else
  {
    v14 = -32;
  }

  if (*(v5 + v14))
  {
    v15 = *(a3 + 2);
    if (v15 && v15[2] == 1)
    {
    }

    v16 = 0;
  }

  else
  {
    v17 = *(a3 + 1);
    v35 = *(*v43[0] + 24);
    v18 = mlir::FusedLoc::get(&v35, 1, 0, v17);
    v40 = v42;
    v41 = 0x400000000;
    v38[0] = v39;
    v38[1] = 0x400000000;
    v35 = v37;
    v36 = 0x400000000;
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v38, *(v8 + 24));
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v38, *(v8 + 56));
    v19 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
    if (v19)
    {
      v21 = v19;
      v33 = "overflowFlags";
      v34 = 259;
      v22 = mlir::StringAttr::get(*(a3 + 1), &v33, v20);
      llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v35, v22, v21);
    }

    v23 = mlir::OpBuilder::create<mlir::arith::AddIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v18, v38, &v35);
    if (v35 != v37)
    {
      free(v35);
    }

    if (v38[0] != v39)
    {
      free(v38[0]);
    }

    if (*(v23 + 9))
    {
      v24 = (v23 - 16);
    }

    else
    {
      v24 = 0;
    }

    v35 = v37;
    v36 = 0x400000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v35, v24, 0, v24, 1);
    v25 = v35;
    if (v36)
    {
      v26 = 8 * v36;
      do
      {
        v27 = *v25++;
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v40, v27);
        v26 -= 8;
      }

      while (v26);
      v25 = v35;
    }

    if (v25 != v37)
    {
      free(v25);
    }

    v35 = v37;
    v36 = 0x400000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v35, v7, 0, v6, 1);
    v28 = v35;
    if (v36)
    {
      v29 = 8 * v36;
      do
      {
        v30 = *v28++;
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v40, v30);
        v29 -= 8;
      }

      while (v29);
      v28 = v35;
    }

    if (v28 != v37)
    {
      free(v28);
    }

    (**a3)(a3, a2, v40 & 0xFFFFFFFFFFFFFFF9, v41);
    if (v40 != v42)
    {
      free(v40);
    }

    v16 = 1;
  }

  if (v43[0] != v44)
  {
    free(v43[0]);
  }

  v31 = *MEMORY[0x277D85DE8];
  return v16;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::AddUIExtendedToAddI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::AddUIExtendedToAddI]";
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

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, uint64_t *a2, void **a3)
{
  if (*(a2 + 2) > 0x40u)
  {
    operator new[]();
  }

  v4 = *a2;
  v8 = *(a2 + 2);
  v7 = v4;
  result = llvm::APInt::operator-=(&v7, a3);
  v6 = v7;
  *(a1 + 8) = v8;
  *a1 = v6;
  *(a1 + 16) = 1;
  return result;
}

void anonymous namespace::SubIRHSAddConstant::~SubIRHSAddConstant(_anonymous_namespace_::SubIRHSAddConstant *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SubIRHSAddConstant::matchAndRewrite(_anonymous_namespace_::SubIRHSAddConstant *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v54[4] = *MEMORY[0x277D85DE8];
  v44 = 0;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v41 = 0;
  v42 = v5;
  v53[0] = v54;
  v53[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v53, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
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
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_54;
      }

      v12 = *(v6 + 3);
      goto LABEL_24;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  {
LABEL_54:
    v35 = 0;
    goto LABEL_55;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v53, v10);
  v14 = *(*(v6 + 9) + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_21:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_54;
    }

    v12 = *(v6 + 3);
LABEL_24:
    (*(*v11 + 88))(v11, v12, v13, &v45);
    goto LABEL_54;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = (v16 + 120);
    if (v16 == -120)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = (v14 + 16 * v15 + 16);
  }

  {
    goto LABEL_54;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v53, v17);
  Attr = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!Attr || *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  v20 = (a3 + 8);
  v19 = *(a3 + 1);
  v21 = *(*(v53[0] + 1) + 24);
  v45 = *(*v53[0] + 24);
  v46 = v21;
  v22 = mlir::FusedLoc::get(&v45, 2, 0, v19);
  v50 = v52;
  v51 = 0x400000000;
  if (*(v6 + 9))
  {
    v23 = v6 - 16;
  }

  else
  {
    v23 = 0;
  }

  v40 = applyToIntegerAttrs(v23, v41, v44, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::minus<llvm::APInt>>, &v45);
  v24 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>((a3 + 8), v22, &v40);
  v48[0] = v49;
  v48[1] = 0x400000000;
  v45 = v47;
  v46 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v48, *(v42 + 24));
  if (*(v24 + 9))
  {
    v25 = (v24 - 16);
  }

  else
  {
    v25 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v48, v25);
  v26 = mlir::arith::IntegerOverflowFlagsAttr::get(*v20, 0);
  if (v26)
  {
    v28 = v26;
    v38 = "overflowFlags";
    v39 = 259;
    v29 = mlir::StringAttr::get(*v20, &v38, v27);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v45, v29, v28);
  }

  v30 = mlir::OpBuilder::create<mlir::arith::AddIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v22, v48, &v45);
  if (v45 != v47)
  {
    free(v45);
  }

  if (v48[0] != v49)
  {
    free(v48[0]);
  }

  if (*(v30 + 9))
  {
    v31 = (v30 - 16);
  }

  else
  {
    v31 = 0;
  }

  v45 = v47;
  v46 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v45, v31, 0, v31, 1);
  v32 = v45;
  if (v46)
  {
    v33 = 8 * v46;
    do
    {
      v34 = *v32++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v50, v34);
      v33 -= 8;
    }

    while (v33);
    v32 = v45;
  }

  if (v32 != v47)
  {
    free(v32);
  }

  (**a3)(a3, a2, v50 & 0xFFFFFFFFFFFFFFF9, v51);
  if (v50 != v52)
  {
    free(v50);
  }

  v35 = 1;
LABEL_55:
  if (v53[0] != v54)
  {
    free(v53[0]);
  }

  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SubIRHSAddConstant>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SubIRHSAddConstant]";
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

void anonymous namespace::SubILHSAddConstant::~SubILHSAddConstant(_anonymous_namespace_::SubILHSAddConstant *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SubILHSAddConstant::matchAndRewrite(_anonymous_namespace_::SubILHSAddConstant *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v53[4] = *MEMORY[0x277D85DE8];
  v43 = 0;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v41 = 0;
  v42 = v5;
  v40 = 0;
  v52[0] = v53;
  v52[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
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
    v10 = (v9 + 120);
    if (v9 == -120)
    {
LABEL_11:
      v11 = *(a3 + 2);
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_54;
      }

      v12 = *(v6 + 3);
      goto LABEL_24;
    }
  }

  else
  {
    v10 = (v7 + 16 * v8 + 16);
  }

  {
LABEL_54:
    v34 = 0;
    goto LABEL_55;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, v10);
  v14 = *(*(v6 + 9) + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_21:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_54;
    }

    v12 = *(v6 + 3);
LABEL_24:
    (*(*v11 + 88))(v11, v12, v13, &v44);
    goto LABEL_54;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = v16 + 120;
    if (v16 == -120)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = v14 + 16 * v15 + 16;
  }

  {
    goto LABEL_54;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, v17);
  Attr = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!Attr || (v19 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id))
  {
    v19 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  v20 = *(a3 + 1);
  v21 = *(*(v52[0] + 1) + 24);
  v44 = *(*v52[0] + 24);
  v45 = v21;
  v22 = mlir::FusedLoc::get(&v44, 2, 0, v20);
  v49 = v51;
  v50 = 0x400000000;
  if (*(v6 + 9))
  {
    v23 = v6 - 16;
  }

  else
  {
    v23 = 0;
  }

  v39 = applyToIntegerAttrs(v23, v40, v41, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::minus<llvm::APInt>>, &v44);
  v24 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>((a3 + 8), v22, &v39);
  v25 = mlir::arith::IntegerOverflowFlagsAttr::get(*(**v43 + 32), *(v19 + 8) & v43[2]);
  v47[0] = v48;
  v47[1] = 0x400000000;
  v44 = v46;
  v45 = 0x400000000;
  if (*(v24 + 9))
  {
    v26 = (v24 - 16);
  }

  else
  {
    v26 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v47, v26);
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v47, *(v42 + 24));
  if (v25)
  {
    v37 = "overflowFlags";
    v38 = 259;
    v28 = mlir::StringAttr::get(*(a3 + 1), &v37, v27);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v44, v28, v25);
  }

  v29 = mlir::OpBuilder::create<mlir::arith::SubIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v22, v47, &v44);
  if (v44 != v46)
  {
    free(v44);
  }

  if (v47[0] != v48)
  {
    free(v47[0]);
  }

  if (*(v29 + 9))
  {
    v30 = (v29 - 16);
  }

  else
  {
    v30 = 0;
  }

  v44 = v46;
  v45 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v44, v30, 0, v30, 1);
  v31 = v44;
  if (v45)
  {
    v32 = 8 * v45;
    do
    {
      v33 = *v31++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v49, v33);
      v32 -= 8;
    }

    while (v32);
    v31 = v44;
  }

  if (v31 != v46)
  {
    free(v31);
  }

  (**a3)(a3, a2, v49 & 0xFFFFFFFFFFFFFFF9, v50);
  if (v49 != v51)
  {
    free(v49);
  }

  v34 = 1;
LABEL_55:
  if (v52[0] != v53)
  {
    free(v52[0]);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SubILHSAddConstant>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SubILHSAddConstant]";
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

void anonymous namespace::SubIRHSSubConstantRHS::~SubIRHSSubConstantRHS(_anonymous_namespace_::SubIRHSSubConstantRHS *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SubIRHSSubConstantRHS::matchAndRewrite(_anonymous_namespace_::SubIRHSSubConstantRHS *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v53[4] = *MEMORY[0x277D85DE8];
  v42 = 0;
  v43 = 0;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v40 = 0;
  v41 = v5;
  v52[0] = v53;
  v52[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
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
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_54;
      }

      v12 = *(v6 + 3);
      goto LABEL_24;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  {
LABEL_54:
    v34 = 0;
    goto LABEL_55;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, v10);
  v14 = *(*(v6 + 9) + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_21:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_54;
    }

    v12 = *(v6 + 3);
LABEL_24:
    (*(*v11 + 88))(v11, v12, v13, &v44);
    goto LABEL_54;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = (v16 + 120);
    if (v16 == -120)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = (v14 + 16 * v15 + 16);
  }

  {
    goto LABEL_54;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, v17);
  Attr = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!Attr || (v19 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id))
  {
    v19 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  v20 = *(a3 + 1);
  v21 = *(*(v52[0] + 1) + 24);
  v44 = *(*v52[0] + 24);
  v45 = v21;
  v22 = mlir::FusedLoc::get(&v44, 2, 0, v20);
  v49 = v51;
  v50 = 0x400000000;
  if (*(v6 + 9))
  {
    v23 = v6 - 16;
  }

  else
  {
    v23 = 0;
  }

  v39 = applyToIntegerAttrs(v23, v40, v43, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::plus<llvm::APInt>>, &v44);
  v24 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>((a3 + 8), v22, &v39);
  v25 = mlir::arith::IntegerOverflowFlagsAttr::get(*(**v42 + 32), *(v19 + 8) & v42[2]);
  v47[0] = v48;
  v47[1] = 0x400000000;
  v44 = v46;
  v45 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v47, *(v41 + 24));
  if (*(v24 + 9))
  {
    v26 = (v24 - 16);
  }

  else
  {
    v26 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v47, v26);
  if (v25)
  {
    v37 = "overflowFlags";
    v38 = 259;
    v28 = mlir::StringAttr::get(*(a3 + 1), &v37, v27);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v44, v28, v25);
  }

  v29 = mlir::OpBuilder::create<mlir::arith::SubIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v22, v47, &v44);
  if (v44 != v46)
  {
    free(v44);
  }

  if (v47[0] != v48)
  {
    free(v47[0]);
  }

  if (*(v29 + 9))
  {
    v30 = (v29 - 16);
  }

  else
  {
    v30 = 0;
  }

  v44 = v46;
  v45 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v44, v30, 0, v30, 1);
  v31 = v44;
  if (v45)
  {
    v32 = 8 * v45;
    do
    {
      v33 = *v31++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v49, v33);
      v32 -= 8;
    }

    while (v32);
    v31 = v44;
  }

  if (v31 != v46)
  {
    free(v31);
  }

  (**a3)(a3, a2, v49 & 0xFFFFFFFFFFFFFFF9, v50);
  if (v49 != v51)
  {
    free(v49);
  }

  v34 = 1;
LABEL_55:
  if (v52[0] != v53)
  {
    free(v52[0]);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SubIRHSSubConstantRHS>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SubIRHSSubConstantRHS]";
  v6 = 106;
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

void anonymous namespace::SubIRHSSubConstantLHS::~SubIRHSSubConstantLHS(_anonymous_namespace_::SubIRHSSubConstantLHS *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SubIRHSSubConstantLHS::matchAndRewrite(_anonymous_namespace_::SubIRHSSubConstantLHS *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v53[4] = *MEMORY[0x277D85DE8];
  v42 = 0;
  v43 = 0;
  v41 = 0;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v40 = v5;
  v52[0] = v53;
  v52[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
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
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_54;
      }

      v12 = *(v6 + 3);
      goto LABEL_24;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  {
LABEL_54:
    v34 = 0;
    goto LABEL_55;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, v10);
  v14 = *(*(v6 + 9) + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_21:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_54;
    }

    v12 = *(v6 + 3);
LABEL_24:
    (*(*v11 + 88))(v11, v12, v13, &v44);
    goto LABEL_54;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = (v16 + 120);
    if (v16 == -120)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = (v14 + 16 * v15 + 16);
  }

  {
    goto LABEL_54;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, v17);
  Attr = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!Attr || (v19 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id))
  {
    v19 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  v20 = *(a3 + 1);
  v21 = *(*(v52[0] + 1) + 24);
  v44 = *(*v52[0] + 24);
  v45 = v21;
  v22 = mlir::FusedLoc::get(&v44, 2, 0, v20);
  v49 = v51;
  v50 = 0x400000000;
  if (*(v6 + 9))
  {
    v23 = v6 - 16;
  }

  else
  {
    v23 = 0;
  }

  v39 = applyToIntegerAttrs(v23, v41, v43, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::minus<llvm::APInt>>, &v44);
  v24 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>((a3 + 8), v22, &v39);
  v25 = mlir::arith::IntegerOverflowFlagsAttr::get(*(**v42 + 32), *(v19 + 8) & v42[2]);
  v47[0] = v48;
  v47[1] = 0x400000000;
  v44 = v46;
  v45 = 0x400000000;
  if (*(v24 + 9))
  {
    v26 = (v24 - 16);
  }

  else
  {
    v26 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v47, v26);
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v47, *(v40 + 24));
  if (v25)
  {
    v37 = "overflowFlags";
    v38 = 259;
    v28 = mlir::StringAttr::get(*(a3 + 1), &v37, v27);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v44, v28, v25);
  }

  v29 = mlir::OpBuilder::create<mlir::arith::SubIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v22, v47, &v44);
  if (v44 != v46)
  {
    free(v44);
  }

  if (v47[0] != v48)
  {
    free(v47[0]);
  }

  if (*(v29 + 9))
  {
    v30 = (v29 - 16);
  }

  else
  {
    v30 = 0;
  }

  v44 = v46;
  v45 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v44, v30, 0, v30, 1);
  v31 = v44;
  if (v45)
  {
    v32 = 8 * v45;
    do
    {
      v33 = *v31++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v49, v33);
      v32 -= 8;
    }

    while (v32);
    v31 = v44;
  }

  if (v31 != v46)
  {
    free(v31);
  }

  (**a3)(a3, a2, v49 & 0xFFFFFFFFFFFFFFF9, v50);
  if (v49 != v51)
  {
    free(v49);
  }

  v34 = 1;
LABEL_55:
  if (v52[0] != v53)
  {
    free(v52[0]);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SubIRHSSubConstantLHS>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SubIRHSSubConstantLHS]";
  v6 = 106;
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

void anonymous namespace::SubILHSSubConstantRHS::~SubILHSSubConstantRHS(_anonymous_namespace_::SubILHSSubConstantRHS *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SubILHSSubConstantRHS::matchAndRewrite(_anonymous_namespace_::SubILHSSubConstantRHS *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v53[4] = *MEMORY[0x277D85DE8];
  v43 = 0;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v41 = 0;
  v42 = v5;
  v40 = 0;
  v52[0] = v53;
  v52[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
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
    v10 = (v9 + 120);
    if (v9 == -120)
    {
LABEL_11:
      v11 = *(a3 + 2);
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_54;
      }

      v12 = *(v6 + 3);
      goto LABEL_24;
    }
  }

  else
  {
    v10 = (v7 + 16 * v8 + 16);
  }

  {
LABEL_54:
    v34 = 0;
    goto LABEL_55;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, v10);
  v14 = *(*(v6 + 9) + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_21:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_54;
    }

    v12 = *(v6 + 3);
LABEL_24:
    (*(*v11 + 88))(v11, v12, v13, &v44);
    goto LABEL_54;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = v16 + 120;
    if (v16 == -120)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = v14 + 16 * v15 + 16;
  }

  {
    goto LABEL_54;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, v17);
  Attr = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!Attr || (v19 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id))
  {
    v19 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  v20 = *(a3 + 1);
  v21 = *(*(v52[0] + 1) + 24);
  v44 = *(*v52[0] + 24);
  v45 = v21;
  v22 = mlir::FusedLoc::get(&v44, 2, 0, v20);
  v49 = v51;
  v50 = 0x400000000;
  if (*(v6 + 9))
  {
    v23 = v6 - 16;
  }

  else
  {
    v23 = 0;
  }

  v39 = applyToIntegerAttrs(v23, v41, v40, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::plus<llvm::APInt>>, &v44);
  v24 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>((a3 + 8), v22, &v39);
  v25 = mlir::arith::IntegerOverflowFlagsAttr::get(*(**v43 + 32), *(v19 + 8) & v43[2]);
  v47[0] = v48;
  v47[1] = 0x400000000;
  v44 = v46;
  v45 = 0x400000000;
  if (*(v24 + 9))
  {
    v26 = (v24 - 16);
  }

  else
  {
    v26 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v47, v26);
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v47, *(v42 + 24));
  if (v25)
  {
    v37 = "overflowFlags";
    v38 = 259;
    v28 = mlir::StringAttr::get(*(a3 + 1), &v37, v27);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v44, v28, v25);
  }

  v29 = mlir::OpBuilder::create<mlir::arith::SubIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v22, v47, &v44);
  if (v44 != v46)
  {
    free(v44);
  }

  if (v47[0] != v48)
  {
    free(v47[0]);
  }

  if (*(v29 + 9))
  {
    v30 = (v29 - 16);
  }

  else
  {
    v30 = 0;
  }

  v44 = v46;
  v45 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v44, v30, 0, v30, 1);
  v31 = v44;
  if (v45)
  {
    v32 = 8 * v45;
    do
    {
      v33 = *v31++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v49, v33);
      v32 -= 8;
    }

    while (v32);
    v31 = v44;
  }

  if (v31 != v46)
  {
    free(v31);
  }

  (**a3)(a3, a2, v49 & 0xFFFFFFFFFFFFFFF9, v50);
  if (v49 != v51)
  {
    free(v49);
  }

  v34 = 1;
LABEL_55:
  if (v52[0] != v53)
  {
    free(v52[0]);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SubILHSSubConstantRHS>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SubILHSSubConstantRHS]";
  v6 = 106;
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

void anonymous namespace::SubILHSSubConstantLHS::~SubILHSSubConstantLHS(_anonymous_namespace_::SubILHSSubConstantLHS *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SubILHSSubConstantLHS::matchAndRewrite(_anonymous_namespace_::SubILHSSubConstantLHS *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v53[4] = *MEMORY[0x277D85DE8];
  v42 = 0;
  v43 = 0;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v40 = 0;
  v41 = v5;
  v52[0] = v53;
  v52[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
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
    v10 = (v9 + 120);
    if (v9 == -120)
    {
LABEL_11:
      v11 = *(a3 + 2);
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_54;
      }

      v12 = *(v6 + 3);
      goto LABEL_24;
    }
  }

  else
  {
    v10 = (v7 + 16 * v8 + 16);
  }

  {
LABEL_54:
    v34 = 0;
    goto LABEL_55;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, v10);
  v14 = *(*(v6 + 9) + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_21:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_54;
    }

    v12 = *(v6 + 3);
LABEL_24:
    (*(*v11 + 88))(v11, v12, v13, &v44);
    goto LABEL_54;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = v16 + 120;
    if (v16 == -120)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = v14 + 16 * v15 + 16;
  }

  {
    goto LABEL_54;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, v17);
  Attr = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!Attr || (v19 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id))
  {
    v19 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  v20 = *(a3 + 1);
  v21 = *(*(v52[0] + 1) + 24);
  v44 = *(*v52[0] + 24);
  v45 = v21;
  v22 = mlir::FusedLoc::get(&v44, 2, 0, v20);
  v49 = v51;
  v50 = 0x400000000;
  if (*(v6 + 9))
  {
    v23 = v6 - 16;
  }

  else
  {
    v23 = 0;
  }

  v39 = applyToIntegerAttrs(v23, v40, v42, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::minus<llvm::APInt>>, &v44);
  v24 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>((a3 + 8), v22, &v39);
  v25 = mlir::arith::IntegerOverflowFlagsAttr::get(*(**v43 + 32), *(v19 + 8) & v43[2]);
  v47[0] = v48;
  v47[1] = 0x400000000;
  v44 = v46;
  v45 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v47, *(v41 + 24));
  if (*(v24 + 9))
  {
    v26 = (v24 - 16);
  }

  else
  {
    v26 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v47, v26);
  if (v25)
  {
    v37 = "overflowFlags";
    v38 = 259;
    v28 = mlir::StringAttr::get(*(a3 + 1), &v37, v27);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v44, v28, v25);
  }

  v29 = mlir::OpBuilder::create<mlir::arith::AddIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v22, v47, &v44);
  if (v44 != v46)
  {
    free(v44);
  }

  if (v47[0] != v48)
  {
    free(v47[0]);
  }

  if (*(v29 + 9))
  {
    v30 = (v29 - 16);
  }

  else
  {
    v30 = 0;
  }

  v44 = v46;
  v45 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v44, v30, 0, v30, 1);
  v31 = v44;
  if (v45)
  {
    v32 = 8 * v45;
    do
    {
      v33 = *v31++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v49, v33);
      v32 -= 8;
    }

    while (v32);
    v31 = v44;
  }

  if (v31 != v46)
  {
    free(v31);
  }

  (**a3)(a3, a2, v49 & 0xFFFFFFFFFFFFFFF9, v50);
  if (v49 != v51)
  {
    free(v49);
  }

  v34 = 1;
LABEL_55:
  if (v52[0] != v53)
  {
    free(v52[0]);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SubILHSSubConstantLHS>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SubILHSSubConstantLHS]";
  v6 = 106;
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

void anonymous namespace::SubISubILHSRHSLHS::~SubISubILHSRHSLHS(_anonymous_namespace_::SubISubILHSRHSLHS *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SubISubILHSRHSLHS::matchAndRewrite(_anonymous_namespace_::SubISubILHSRHSLHS *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v48[4] = *MEMORY[0x277D85DE8];
  v47[0] = v48;
  v47[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v47, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
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
        goto LABEL_32;
      }

      v11 = *(v5 + 3);
LABEL_31:
      (*(*v10 + 88))(v10, v11, v12, &v39);
LABEL_32:
      v19 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    v9 = v6 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_32;
    }

    v11 = *(v9 + 24);
    goto LABEL_31;
  }

  if ((*(v9 + 46) & 0x80) != 0)
  {
    v13 = *(v9 + 72);
  }

  else
  {
    v13 = 0;
  }

  Attr = mlir::Operation::getAttr(v9, "overflowFlags", 0xDuLL);
  if (!Attr || (v15 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id))
  {
    v15 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v47, v9);
  if ((*(v5 + 46) & 0x80) != 0)
  {
    v16 = *(v5 + 9);
  }

  else
  {
    v16 = 0;
  }

  v17 = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!v17 || (v18 = v17, *(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id))
  {
    v18 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  if (*(v13 + 24) != *(v16 + 56))
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_32;
    }

    v11 = *(a2 + 3);
    goto LABEL_31;
  }

  v22 = *(a3 + 1);
  v23 = *(*(v47[0] + 1) + 24);
  v39 = *(*v47[0] + 24);
  v40 = v23;
  v24 = mlir::FusedLoc::get(&v39, 2, 0, v22);
  v44 = v46;
  v45 = 0x400000000;
  v38[0] = mlir::Builder::getZeroAttr((a3 + 8), *(*(v13 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v38[1] = v25;
  v26 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr &>((a3 + 8), v24, v38);
  v27 = mlir::arith::IntegerOverflowFlagsAttr::get(*(**v15 + 32), *(v18 + 8) & v15[2]);
  v42[0] = v43;
  v42[1] = 0x400000000;
  v39 = v41;
  v40 = 0x400000000;
  if (*(v26 + 9))
  {
    v28 = (v26 - 16);
  }

  else
  {
    v28 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v42, v28);
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v42, *(v13 + 56));
  if (v27)
  {
    v36 = "overflowFlags";
    v37 = 259;
    v30 = mlir::StringAttr::get(*(a3 + 1), &v36, v29);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v39, v30, v27);
  }

  v31 = mlir::OpBuilder::create<mlir::arith::SubIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v24, v42, &v39);
  if (v39 != v41)
  {
    free(v39);
  }

  if (v42[0] != v43)
  {
    free(v42[0]);
  }

  if (*(v31 + 9))
  {
    v32 = (v31 - 16);
  }

  else
  {
    v32 = 0;
  }

  v39 = v41;
  v40 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v39, v32, 0, v32, 1);
  v33 = v39;
  if (v40)
  {
    v34 = 8 * v40;
    do
    {
      v35 = *v33++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v44, v35);
      v34 -= 8;
    }

    while (v34);
    v33 = v39;
  }

  if (v33 != v41)
  {
    free(v33);
  }

  (**a3)(a3, a2, v44 & 0xFFFFFFFFFFFFFFF9, v45);
  if (v44 != v46)
  {
    free(v44);
  }

  v19 = 1;
LABEL_33:
  if (v47[0] != v48)
  {
    free(v47[0]);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SubISubILHSRHSLHS>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SubISubILHSRHSLHS]";
  v6 = 102;
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

void anonymous namespace::MulIMulIConstant::~MulIMulIConstant(_anonymous_namespace_::MulIMulIConstant *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::MulIMulIConstant::matchAndRewrite(_anonymous_namespace_::MulIMulIConstant *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v57[4] = *MEMORY[0x277D85DE8];
  v46 = 0;
  v47 = 0;
  v56[0] = v57;
  v56[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v56, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
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
        goto LABEL_39;
      }

      v11 = *(v5 + 3);
      goto LABEL_38;
    }
  }

  else
  {
    v9 = (v6 + 16 * v7 + 16);
  }

  if (*(v9[6] + 16) != &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_39;
    }

    v11 = v9[3];
    goto LABEL_38;
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
        goto LABEL_39;
      }

      v11 = v9[3];
      goto LABEL_38;
    }
  }

  else
  {
    v17 = (v14 + 16 * v15 + 16);
  }

  {
LABEL_39:
    v24 = 0;
    goto LABEL_40;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v56, v17);
  Attr = mlir::Operation::getAttr(v9, "overflowFlags", 0xDuLL);
  if (!Attr || (v19 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id))
  {
    v19 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v56, v9);
  v20 = *(*(v5 + 9) + 56);
  if ((~*(v20 + 8) & 7) == 0)
  {
    v20 = 0;
  }

  if (!v20)
  {
LABEL_35:
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_39;
    }

    v11 = *(v5 + 3);
LABEL_38:
    (*(*v10 + 88))(v10, v11, v12, &v48);
    goto LABEL_39;
  }

  v21 = *(v20 + 8) & 7;
  if (v21 == 6)
  {
    v22 = v20 + 24 * *(v20 + 16);
    v23 = (v22 + 120);
    if (v22 == -120)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v23 = (v20 + 16 * v21 + 16);
  }

  {
    goto LABEL_39;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v56, v23);
  v27 = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!v27 || (v28 = v27, *(*v27 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id))
  {
    v28 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  v29 = *(a3 + 1);
  v30 = *(*(v56[0] + 1) + 24);
  v48 = *(*v56[0] + 24);
  v49 = v30;
  v31 = mlir::FusedLoc::get(&v48, 2, 0, v29);
  v53 = v55;
  v54 = 0x400000000;
  if (*(v5 + 9))
  {
    v32 = v5 - 16;
  }

  else
  {
    v32 = 0;
  }

  v45 = applyToIntegerAttrs(v32, v46, v47, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::multiplies<llvm::APInt>>, &v48);
  v33 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>((a3 + 8), v31, &v45);
  v34 = mlir::arith::IntegerOverflowFlagsAttr::get(*(**v19 + 32), *(v28 + 8) & v19[2]);
  v51[0] = v52;
  v51[1] = 0x400000000;
  v48 = v50;
  v49 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v51, *(v13 + 24));
  if (*(v33 + 9))
  {
    v35 = (v33 - 16);
  }

  else
  {
    v35 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v51, v35);
  if (v34)
  {
    v43 = "overflowFlags";
    v44 = 259;
    v37 = mlir::StringAttr::get(*(a3 + 1), &v43, v36);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v48, v37, v34);
  }

  v38 = mlir::OpBuilder::create<mlir::arith::MulIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v31, v51, &v48);
  if (v48 != v50)
  {
    free(v48);
  }

  if (v51[0] != v52)
  {
    free(v51[0]);
  }

  if (*(v38 + 9))
  {
    v39 = (v38 - 16);
  }

  else
  {
    v39 = 0;
  }

  v48 = v50;
  v49 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v48, v39, 0, v39, 1);
  v40 = v48;
  if (v49)
  {
    v41 = 8 * v49;
    do
    {
      v42 = *v40++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v53, v42);
      v41 -= 8;
    }

    while (v41);
    v40 = v48;
  }

  if (v40 != v50)
  {
    free(v40);
  }

  (**a3)(a3, a2, v53 & 0xFFFFFFFFFFFFFFF9, v54);
  if (v53 != v55)
  {
    free(v53);
  }

  v24 = 1;
LABEL_40:
  if (v56[0] != v57)
  {
    free(v56[0]);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

char *mlir::OpBuilder::create<mlir::arith::MulIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v45[2] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::MulIOp>(a1, *(**a2 + 32));
  v30 = a2;
  v31 = v8;
  v32[0] = &v33;
  v32[1] = 0x400000000;
  v34[0] = &v35;
  v34[1] = 0x400000000;
  v36[0] = &v37;
  v36[1] = 0x400000000;
  v38 = 4;
  v39 = v41;
  v40 = 0x100000000;
  v41[1] = v42;
  v41[2] = 0x100000000;
  v42[1] = 0;
  v42[2] = 0;
  v42[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v42[4] = 0;
  v42[6] = 0;
  v9 = *a3;
  v10 = *(a3 + 2);
  v11 = *a4;
  v12 = *(a4 + 8);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v32, v9 & 0xFFFFFFFFFFFFFFF9, 0, v9 & 0xFFFFFFFFFFFFFFF9, v10);
  v38 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v36, v11, &v11[16 * v12]);
  if (v12)
  {
    v13 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties>(&v30);
    v14 = v31;
    v15 = *(v31 + 16) == &mlir::detail::TypeIDResolver<void,void>::id ? 0 : v31;
    Dictionary = mlir::NamedAttrList::getDictionary(v36, *(**v30 + 32));
    if (((*(*v15 + 144))(v15, v14, v13, Dictionary, 0) & 1) == 0)
    {
      v27 = "Property conversion failed.";
LABEL_15:
      llvm::report_fatal_error(v27, 1);
    }
  }

  v43 = v45;
  v44 = 0x200000000;
  v17 = mlir::NamedAttrList::getDictionary(v36, *(**v30 + 32));
  if (!mlir::arith::MulIOp::inferReturnTypes(v17, v18, v19, v9 & 0xFFFFFFFFFFFFFFF9, v10, v20, v21, v22, v28, v29, &v43))
  {
    v27 = "Failed to infer result type(s).";
    goto LABEL_15;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v34, v43, &v43[v44]);
  if (v43 != v45)
  {
    free(v43);
  }

  v23 = mlir::Operation::create(&v30);
  mlir::OpBuilder::insert(a1, v23);
  if (*(*(v23 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  mlir::OperationState::~OperationState(&v30);
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::MulIOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.muli";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::MulIMulIConstant>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::MulIMulIConstant]";
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

void anonymous namespace::MulSIExtendedToMulI::~MulSIExtendedToMulI(_anonymous_namespace_::MulSIExtendedToMulI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::MulSIExtendedToMulI::matchAndRewrite(_anonymous_namespace_::MulSIExtendedToMulI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v44[4] = *MEMORY[0x277D85DE8];
  v43[0] = v44;
  v43[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v43, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulSIExtendedOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  if ((*(v5 + 46) & 0x80) != 0)
  {
    v6 = *(v5 + 9);
    v7 = v6;
    v8 = v6;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  v9 = *(v5 + 9);
  v10 = v5 - 16;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = *(v10 + 1) & 7;
  if (v9)
  {
    v12 = v11 == 6;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || v11 == 5)
  {
    v14 = -40;
  }

  else
  {
    v14 = -32;
  }

  if (*(v5 + v14))
  {
    v15 = *(a3 + 2);
    if (v15 && v15[2] == 1)
    {
    }

    v16 = 0;
  }

  else
  {
    v17 = *(a3 + 1);
    v35 = *(*v43[0] + 24);
    v18 = mlir::FusedLoc::get(&v35, 1, 0, v17);
    v40 = v42;
    v41 = 0x400000000;
    v38[0] = v39;
    v38[1] = 0x400000000;
    v35 = v37;
    v36 = 0x400000000;
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v38, *(v8 + 24));
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v38, *(v8 + 56));
    v19 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
    if (v19)
    {
      v21 = v19;
      v33 = "overflowFlags";
      v34 = 259;
      v22 = mlir::StringAttr::get(*(a3 + 1), &v33, v20);
      llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v35, v22, v21);
    }

    v23 = mlir::OpBuilder::create<mlir::arith::MulIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v18, v38, &v35);
    if (v35 != v37)
    {
      free(v35);
    }

    if (v38[0] != v39)
    {
      free(v38[0]);
    }

    if (*(v23 + 9))
    {
      v24 = (v23 - 16);
    }

    else
    {
      v24 = 0;
    }

    v35 = v37;
    v36 = 0x400000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v35, v24, 0, v24, 1);
    v25 = v35;
    if (v36)
    {
      v26 = 8 * v36;
      do
      {
        v27 = *v25++;
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v40, v27);
        v26 -= 8;
      }

      while (v26);
      v25 = v35;
    }

    if (v25 != v37)
    {
      free(v25);
    }

    v35 = v37;
    v36 = 0x400000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v35, v7, 0, v6, 1);
    v28 = v35;
    if (v36)
    {
      v29 = 8 * v36;
      do
      {
        v30 = *v28++;
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v40, v30);
        v29 -= 8;
      }

      while (v29);
      v28 = v35;
    }

    if (v28 != v37)
    {
      free(v28);
    }

    (**a3)(a3, a2, v40 & 0xFFFFFFFFFFFFFFF9, v41);
    if (v40 != v42)
    {
      free(v40);
    }

    v16 = 1;
  }

  if (v43[0] != v44)
  {
    free(v43[0]);
  }

  v31 = *MEMORY[0x277D85DE8];
  return v16;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::MulSIExtendedToMulI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::MulSIExtendedToMulI]";
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

void anonymous namespace::MulSIExtendedRHSOne::~MulSIExtendedRHSOne(_anonymous_namespace_::MulSIExtendedRHSOne *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::MulSIExtendedRHSOne::matchAndRewrite(_anonymous_namespace_::MulSIExtendedRHSOne *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v86[8] = *MEMORY[0x277D85DE8];
  v74[0] = v75;
  v74[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v74, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulSIExtendedOp,void>::id)
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
    v10 = (v9 + 120);
    if (v9 == -120)
    {
LABEL_9:
      v11 = *(a3 + 2);
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_30;
      }

      v12 = *(v5 + 3);
      goto LABEL_12;
    }
  }

  else
  {
    v10 = (v7 + 16 * v8 + 16);
  }

  v76 = 0;
  v71 = &v76;
  if ((*(v10 - 1) & 7) == 7)
  {
LABEL_26:
    v21 = *(a3 + 2);
    if (!v21 || v21[2] != 1)
    {
      goto LABEL_30;
    }

    v22 = v10[3];
    v13 = *(*v21 + 88);
    goto LABEL_29;
  }

  v14 = *(v10 - 1) & 7;
  if (v14 == 6)
  {
    v15 = &v10[3 * *v10 - 2];
    v16 = v15 + 120;
    if (v15 == -120)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v16 = &v10[2 * v14];
  }

  if (!mlir::detail::constant_op_binder<mlir::Attribute>::match(&v71, v16))
  {
    goto LABEL_26;
  }

  v17 = v76;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v74, v10);
  getIntOrSplatIntValue(&v76, v17);
  if ((v78 & 1) == 0)
  {
    goto LABEL_70;
  }

  getIntOrSplatIntValue(&v71, v17);
  if (!llvm::APInt::isStrictlyPositive(&v71))
  {
    v20 = 1;
    goto LABEL_40;
  }

  p_src = &__src;
  getIntOrSplatIntValue(&__src, v17);
  v19 = v69;
  if (v69 >= 0x41)
  {
    if (v19 - llvm::APInt::countLeadingZerosSlowCase(&__src) > 0x40)
    {
      v20 = 1;
      goto LABEL_36;
    }

    p_src = __src;
  }

  v20 = *p_src != 1;
LABEL_36:
  if (v19 >= 0x41 && (v70[0] & 1) != 0 && __src)
  {
    MEMORY[0x25F891010](__src, 0x1000C8000313F17);
  }

LABEL_40:
  if (v73[0] == 1 && v72 >= 0x41 && v71)
  {
    MEMORY[0x25F891010](v71, 0x1000C8000313F17);
  }

  if (v77 < 0x41 || !v76)
  {
    if (!v20)
    {
      goto LABEL_47;
    }

LABEL_70:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_30;
    }

    v55 = *(a2 + 3);
LABEL_12:
    v13 = *(*v11 + 88);
LABEL_29:
    v13();
LABEL_30:
    v23 = 0;
    goto LABEL_31;
  }

  MEMORY[0x25F891010](v76, 0x1000C8000313F17);
  if (v20)
  {
    goto LABEL_70;
  }

LABEL_47:
  v26 = *(a3 + 1);
  v76 = *(*v74[0] + 24);
  v27 = mlir::FusedLoc::get(&v76, 1, 0, v26);
  v71 = v73;
  v72 = 0x400000000;
  v76 = &v78;
  v77 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v76, v6, 0, v6, 1);
  v28 = v76;
  if (v77)
  {
    v29 = 8 * v77;
    do
    {
      v30 = *v28++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v71, v30);
      v29 -= 8;
    }

    while (v29);
    v28 = v76;
  }

  if (v28 != &v78)
  {
    free(v28);
  }

  v64[0] = mlir::Builder::getZeroAttr((a3 + 8), *(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v64[1] = v31;
  v32 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr &>((a3 + 8), v27, v64);
  v33 = *(v6 + 24);
  if (*(v32 + 9))
  {
    v34 = v32 - 16;
  }

  else
  {
    v34 = 0;
  }

  v35 = mlir::IntegerType::get(*(a3 + 1), 64, 0);
  v36 = mlir::IntegerAttr::get(v35, 2uLL);
  v37 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::CmpIOp>(a3 + 8, *(**v27 + 32));
  v63 = v27;
  v76 = v27;
  v77 = v37;
  v78 = &v80;
  v79 = 0x400000000;
  v81[0] = &v82;
  v81[1] = 0x400000000;
  v83[0] = v84;
  v83[1] = 0x400000000;
  v84[8] = 4;
  v84[9] = v85;
  v84[10] = 0x100000000;
  v85[1] = v86;
  v85[2] = 0x100000000;
  v86[1] = 0;
  v86[2] = 0;
  v86[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v86[4] = 0;
  v86[6] = 0;
  v65 = v34;
  v66[0] = v33;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v78, v66, 0, v66, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v78, &v65, 0, &v65, 1);
  *mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties>(&v76) = v36;
  __src = v70;
  v69 = 0x200000000;
  v38 = v79;
  v39 = v78;
  Dictionary = mlir::NamedAttrList::getDictionary(v83, *(**v76 + 32));
  if (!mlir::arith::CmpIOp::inferReturnTypes(Dictionary, v41, v42, v39 & 0xFFFFFFFFFFFFFFF9, v38, v43, v44, v45, v61, v62, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(&v76, v46);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v81, __src, __src + 8 * v69);
  if (__src != v70)
  {
    free(__src);
  }

  v47 = mlir::Operation::create(&v76);
  mlir::OpBuilder::insert((a3 + 8), v47);
  v48 = *(*(v47 + 6) + 16);
  mlir::OperationState::~OperationState(&v76);
  if (v48 == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
  {
    v49 = v47;
  }

  else
  {
    v49 = 0;
  }

  __src = v70;
  v69 = 0x400000000;
  v76 = &v78;
  v77 = 0x400000000;
  v50 = *(v49 + 9);
  v51 = (v49 - 16);
  if (v50)
  {
    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&__src, v52);
  v66[0] = v67;
  v66[1] = 0x400000000;
  if (!*(v5 + 9) || (v53 = *(v5 - 1) & 7, v53 == 6) || v53 == 5)
  {
    v54 = -40;
  }

  else
  {
    v54 = -32;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v66, *(v5 + v54 + 8) & 0xFFFFFFFFFFFFFFF8);
  v56 = mlir::OpBuilder::create<mlir::arith::ExtSIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v63, v66, &__src, &v76);
  if (v66[0] != v67)
  {
    free(v66[0]);
  }

  if (v76 != &v78)
  {
    free(v76);
  }

  if (__src != v70)
  {
    free(__src);
  }

  if (*(v56 + 9))
  {
    v57 = (v56 - 16);
  }

  else
  {
    v57 = 0;
  }

  v76 = &v78;
  v77 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v76, v57, 0, v57, 1);
  v58 = v76;
  if (v77)
  {
    v59 = 8 * v77;
    do
    {
      v60 = *v58++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v71, v60);
      v59 -= 8;
    }

    while (v59);
    v58 = v76;
  }

  if (v58 != &v78)
  {
    free(v58);
  }

  (**a3)(a3, a2, v71 & 0xFFFFFFFFFFFFFFF9, v72);
  if (v71 != v73)
  {
    free(v71);
  }

  v23 = 1;
LABEL_31:
  if (v74[0] != v75)
  {
    free(v74[0]);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

char *mlir::OpBuilder::create<mlir::arith::ExtSIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v33[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ExtSIOp>(a1, *(**a2 + 32));
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
  if (*(*(v18 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::CmpIOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.cmpi";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ExtSIOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.extsi";
    v6[3] = 11;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::MulSIExtendedRHSOne>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::MulSIExtendedRHSOne]";
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

void anonymous namespace::MulUIExtendedToMulI::~MulUIExtendedToMulI(_anonymous_namespace_::MulUIExtendedToMulI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::MulUIExtendedToMulI::matchAndRewrite(_anonymous_namespace_::MulUIExtendedToMulI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v44[4] = *MEMORY[0x277D85DE8];
  v43[0] = v44;
  v43[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v43, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulUIExtendedOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  if ((*(v5 + 46) & 0x80) != 0)
  {
    v6 = *(v5 + 9);
    v7 = v6;
    v8 = v6;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  v9 = *(v5 + 9);
  v10 = v5 - 16;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = *(v10 + 1) & 7;
  if (v9)
  {
    v12 = v11 == 6;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || v11 == 5)
  {
    v14 = -40;
  }

  else
  {
    v14 = -32;
  }

  if (*(v5 + v14))
  {
    v15 = *(a3 + 2);
    if (v15 && v15[2] == 1)
    {
    }

    v16 = 0;
  }

  else
  {
    v17 = *(a3 + 1);
    v35 = *(*v43[0] + 24);
    v18 = mlir::FusedLoc::get(&v35, 1, 0, v17);
    v40 = v42;
    v41 = 0x400000000;
    v38[0] = v39;
    v38[1] = 0x400000000;
    v35 = v37;
    v36 = 0x400000000;
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v38, *(v8 + 24));
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v38, *(v8 + 56));
    v19 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
    if (v19)
    {
      v21 = v19;
      v33 = "overflowFlags";
      v34 = 259;
      v22 = mlir::StringAttr::get(*(a3 + 1), &v33, v20);
      llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v35, v22, v21);
    }

    v23 = mlir::OpBuilder::create<mlir::arith::MulIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v18, v38, &v35);
    if (v35 != v37)
    {
      free(v35);
    }

    if (v38[0] != v39)
    {
      free(v38[0]);
    }

    if (*(v23 + 9))
    {
      v24 = (v23 - 16);
    }

    else
    {
      v24 = 0;
    }

    v35 = v37;
    v36 = 0x400000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v35, v24, 0, v24, 1);
    v25 = v35;
    if (v36)
    {
      v26 = 8 * v36;
      do
      {
        v27 = *v25++;
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v40, v27);
        v26 -= 8;
      }

      while (v26);
      v25 = v35;
    }

    if (v25 != v37)
    {
      free(v25);
    }

    v35 = v37;
    v36 = 0x400000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v35, v7, 0, v6, 1);
    v28 = v35;
    if (v36)
    {
      v29 = 8 * v36;
      do
      {
        v30 = *v28++;
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v40, v30);
        v29 -= 8;
      }

      while (v29);
      v28 = v35;
    }

    if (v28 != v37)
    {
      free(v28);
    }

    (**a3)(a3, a2, v40 & 0xFFFFFFFFFFFFFFF9, v41);
    if (v40 != v42)
    {
      free(v40);
    }

    v16 = 1;
  }

  if (v43[0] != v44)
  {
    free(v43[0]);
  }

  v31 = *MEMORY[0x277D85DE8];
  return v16;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::MulUIExtendedToMulI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::MulUIExtendedToMulI]";
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

llvm::APInt *mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(llvm::APInt *result, _BYTE **a2, uint64_t a3, llvm::APInt *a4)
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

  result = llvm::APInt::udiv(&v12, a4, &v14);
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

llvm::APInt *mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(llvm::APInt *result, BOOL **a2, uint64_t a3, llvm::APInt *a4)
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

  result = llvm::APInt::sdiv_ov(&v12, a4, v8, &v14);
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

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t result, BOOL **a2, uint64_t a3, llvm::APInt *a4)
{
  v6 = result;
  v7 = *(a3 + 8);
  v16 = v7;
  if (v7 > 0x40)
  {
    operator new[]();
  }

  v8 = *a3;
  v15 = *a3;
  v9 = *a2;
  if (**a2)
  {
    goto LABEL_5;
  }

  v10 = *(a4 + 2);
  if (v10 > 0x40)
  {
    result = llvm::APInt::countLeadingZerosSlowCase(a4);
    if (result == v10)
    {
LABEL_5:
      *v9 = 1;
      *(v6 + 8) = v7;
      *v6 = v8;
      *(v6 + 16) = 1;
      return result;
    }
  }

  else if (!*a4)
  {
    goto LABEL_5;
  }

  llvm::APInt::udiv(&v15, a4, &v21);
  result = llvm::APInt::urem(&v15, a4, &v19);
  v11 = v20;
  if (v20 > 0x40)
  {
    v12 = llvm::APInt::countLeadingZerosSlowCase(&v19);
    result = v19;
    if (v19)
    {
      result = MEMORY[0x25F891010](v19, 0x1000C8000313F17);
    }

    if (v12 != v11)
    {
      goto LABEL_13;
    }
  }

  else if (v19)
  {
LABEL_13:
    v20 = v16;
    if (v16 > 0x40)
    {
      operator new[]();
    }

    v19 = v16 != 0;
    result = llvm::APInt::uadd_ov(&v21, &v19, *a2, &v17);
    if (v22 >= 0x41)
    {
      result = v21;
      if (v21)
      {
        result = MEMORY[0x25F891010](v21, 0x1000C8000313F17);
      }
    }

    goto LABEL_23;
  }

  v18 = v22;
  v17 = v21;
LABEL_23:
  v13 = v17;
  v14 = v16;
  *(v6 + 8) = v18;
  *v6 = v13;
  *(v6 + 16) = 1;
  if (v14 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      return MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t result, BOOL **a2, uint64_t a3, llvm::APInt *this)
{
  v6 = result;
  v7 = *(a3 + 8);
  v17 = v7;
  if (v7 > 0x40)
  {
    operator new[]();
  }

  v8 = *a3;
  v16 = *a3;
  v9 = *a2;
  if (**a2)
  {
    goto LABEL_5;
  }

  v10 = *(this + 2);
  if (v10 > 0x40)
  {
    result = llvm::APInt::countLeadingZerosSlowCase(this);
    if (result == v10)
    {
LABEL_5:
      *v9 = 1;
      v8 = v16;
LABEL_6:
      *(v6 + 8) = v7;
      *v6 = v8;
      *(v6 + 16) = 1;
      return result;
    }
  }

  else if (!*this)
  {
    goto LABEL_5;
  }

  if (!v8)
  {
    goto LABEL_6;
  }

  v26 = v7;
  v25 = 0;
  v11 = llvm::APInt::compareSigned(&v16, &v25);
  v12 = llvm::APInt::compareSigned(this, &v25);
  if (v11 < 1 || v12 < 1)
  {
    *v24 = 0;
    if (v11 <= 0 && v12 <= 0)
    {
      llvm::APInt::ssub_ov(&v25, &v16, &v24[3], &v22);
      llvm::APInt::ssub_ov(&v25, this, &v24[2], v20);
      result = signedCeilNonnegInputs(&v18, &v22, v20, &v24[1]);
      if (!v24[3] && !v24[2])
      {
        v13 = v24[1];
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v11 > 0 || v12 < 1)
    {
      llvm::APInt::ssub_ov(&v25, this, &v24[2], &v22);
      llvm::APInt::sdiv_ov(&v16, &v22, &v24[1], v20);
      result = llvm::APInt::ssub_ov(&v25, v20, v24, &v18);
      if (v24[2])
      {
        goto LABEL_26;
      }
    }

    else
    {
      llvm::APInt::ssub_ov(&v25, &v16, &v24[3], &v22);
      llvm::APInt::sdiv_ov(&v22, this, &v24[1], v20);
      result = llvm::APInt::ssub_ov(&v25, v20, v24, &v18);
      if (v24[3])
      {
        goto LABEL_26;
      }
    }

    if (!v24[1])
    {
      v13 = v24[0];
LABEL_27:
      **a2 = v13;
      if (v21 >= 0x41)
      {
        result = *v20;
        if (*v20)
        {
          result = MEMORY[0x25F891010](*v20, 0x1000C8000313F17);
        }
      }

      if (v23 >= 0x41)
      {
        result = v22;
        if (v22)
        {
          result = MEMORY[0x25F891010](v22, 0x1000C8000313F17);
        }
      }

      goto LABEL_33;
    }

LABEL_26:
    v13 = 1;
    goto LABEL_27;
  }

  result = signedCeilNonnegInputs(&v18, &v16, this, *a2);
LABEL_33:
  if (v26 >= 0x41)
  {
    result = v25;
    if (v25)
    {
      result = MEMORY[0x25F891010](v25, 0x1000C8000313F17);
    }
  }

  v14 = v18;
  v15 = v17;
  *(v6 + 8) = v19;
  *v6 = v14;
  *(v6 + 16) = 1;
  if (v15 >= 0x41)
  {
    result = v16;
    if (v16)
    {
      return MEMORY[0x25F891010](v16, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t signedCeilNonnegInputs(const llvm::APInt *a1, const llvm::APInt *this, const llvm::APInt *a3, BOOL *a4)
{
  v7 = *(this + 2);
  v14 = v7;
  if (v7 > 0x40)
  {
    operator new[]();
  }

  v13 = v7 != 0;
  llvm::APInt::ssub_ov(this, &v13, a4, &v9);
  llvm::APInt::sdiv_ov(&v9, a3, a4, &v11);
  if (v10 >= 0x41 && v9)
  {
    MEMORY[0x25F891010](v9, 0x1000C8000313F17);
  }

  result = llvm::APInt::sadd_ov(&v11, &v13, a4, a1);
  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t result, BOOL **a2, uint64_t a3, llvm::APInt *a4)
{
  v6 = result;
  v7 = *(a3 + 8);
  v13 = v7;
  if (v7 > 0x40)
  {
    operator new[]();
  }

  v8 = *a3;
  v12 = *a3;
  v9 = *(a4 + 2);
  if (v9 <= 0x40)
  {
    if (*a4)
    {
      goto LABEL_6;
    }

LABEL_10:
    **a2 = 1;
    *(v6 + 8) = v7;
    *v6 = v8;
    *(v6 + 16) = 1;
    return result;
  }

  result = llvm::APInt::countLeadingZerosSlowCase(a4);
  if (result == v9)
  {
    goto LABEL_10;
  }

LABEL_6:
  result = llvm::APInt::sfloordiv_ov(&v12, a4, *a2, &v14);
  v10 = v14;
  v11 = v13;
  *(v6 + 8) = v15;
  *v6 = v10;
  v15 = 0;
  *(v6 + 16) = 1;
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

llvm::APInt *mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(llvm::APInt *result, _BYTE **a2, uint64_t a3, llvm::APInt *a4)
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

  result = llvm::APInt::urem(&v12, a4, &v14);
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