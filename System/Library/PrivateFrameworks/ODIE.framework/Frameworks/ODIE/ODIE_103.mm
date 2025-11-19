void mlir::ODIE::Compiler::ODIX::HeaderOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v15[4] = *MEMORY[0x277D85DE8];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 200))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v15, 0);
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

  v7 = *(*this + 11);
  v8 = v7 & 0x7FFFFF;
  if ((v7 & 0x7FFFFF) != 0)
  {
    v9 = ((*this + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
    (*(*a2 + 224))(a2, v9, 1, 1, 0);
    if (v8 != 1)
    {
      v10 = v9 + 24;
      v11 = 24 * v8 - 24;
      do
      {
        v12 = (*(*a2 + 16))(a2);
        v13 = *(v12 + 4);
        if (*(v12 + 3) - v13 > 1uLL)
        {
          *v13 = 8236;
          *(v12 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v12, ", ", 2uLL);
        }

        (*(*a2 + 224))(a2, v10, 1, 1, 0);
        v10 += 24;
        v11 -= 24;
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::ODIX::InvokeRegionOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "region_name", 0xBuLL);
    if (v9)
    {
      v10 = *(v8 + 8);
      if (v10)
      {
        if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

uint64_t mlir::ODIE::Compiler::ODIX::InvokeRegionOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x300000000;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v12 = 261;
    v11[0] = "region_name";
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

unint64_t mlir::ODIE::Compiler::ODIX::InvokeRegionOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::ODIX::InvokeRegionOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 11 && (*a3 == 0x6E5F6E6F69676572 ? (v4 = *(a3 + 3) == 0x656D616E5F6E6F69) : (v4 = 0), v4))
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

void *mlir::ODIE::Compiler::ODIX::InvokeRegionOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 11 && *a2 == 0x6E5F6E6F69676572 && *(a2 + 3) == 0x656D616E5F6E6F69)
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

void mlir::ODIE::Compiler::ODIX::InvokeRegionOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "region_name";
    v7[1] = 11;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::ODIX::InvokeRegionOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(v8, "region_name", 11, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::InvokeRegionOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::ODIE::Compiler::ODIX::InvokeRegionOp::verifyInvariantsImpl(unsigned int **this)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *&v1[4 * ((v1[11] >> 23) & 1) + 16];
  if (v2)
  {
    v8[0] = v1;
    v3 = mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(v2, "region_name", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v8);
  }

  else
  {
    v6 = "requires attribute 'region_name'";
    v7 = 259;
    mlir::Operation::emitOpError(v1, &v6, v8);
    v3 = (v9 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t mlir::ODIE::Compiler::ODIX::InvokeRegionOp::parse(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v10[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v10);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v12, v5))
  {
    return 0;
  }

  if (v12)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::InvokeRegionOpGenericAdaptorBase::Properties>(a2);
    *v7 = v12;
  }

  if ((*(*a1 + 168))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v8 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::ODIE::Compiler::ODIX::InvokeRegionOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::InvokeRegionOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::ODIX::InvokeRegionOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v12[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
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

  v10 = v12;
  v11 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v10, "region_name", 11);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v10, v11);
  if (v10 != v12)
  {
    free(v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::ODIX::JumpOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v11[25] = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "dest", 4uLL);
    if (v7)
    {
      v8 = *(v6 + 8);
      if (v8)
      {
        *a1 = v8;
      }
    }

    result = 1;
  }

  else
  {
    a3(&v10, a4);
    if (v10)
    {
      mlir::Diagnostic::operator<<<42ul>(v11, "expected DictionaryAttr to set properties");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::ODIX::JumpOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x300000000;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v12 = 261;
    v11[0] = "dest";
    v11[1] = 4;
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

unint64_t mlir::ODIE::Compiler::ODIX::JumpOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::ODIX::JumpOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 4 && *a3 == 1953719652)
  {
    v5 = *a2 & 0xFFFFFFFFFFFFFF00;
    v4 = *a2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

void mlir::ODIE::Compiler::ODIX::JumpOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "dest";
    v7[1] = 4;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::ODIX::JumpOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps2(v8, "dest", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::JumpOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::ODIE::Compiler::ODIX::JumpOp::verifyInvariantsImpl(unsigned int **this)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *&v1[4 * ((v1[11] >> 23) & 1) + 16];
  if (v2)
  {
    v8[0] = v1;
    v3 = mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps2(v2, "dest", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v8);
  }

  else
  {
    v6 = "requires attribute 'dest'";
    v7 = 259;
    mlir::Operation::emitOpError(v1, &v6, v8);
    v3 = (v9 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL mlir::ODIE::Compiler::ODIX::JumpOp::verify(mlir::ODIE::Compiler::ODIX::JumpOp *this)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v3 = *(*v2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    if (v3 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      goto LABEL_24;
    }

    v14[0] = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
    UInt = mlir::IntegerAttr::getUInt(v14);
    v5 = *(v1 + 16);
    if (v5)
    {
      v5 = (v5[3] & 0xFFFFFFFFFFFFFFF8);
    }

    if (*v5 == v5)
    {
      goto LABEL_22;
    }

    for (i = v5[1]; i != v5; i = i[1])
    {
      v7 = i - 1;
      if (!i)
      {
        v7 = 0;
      }

      if (v7[4] != v7 + 4)
      {
        break;
      }
    }

    if (i == v5)
    {
      goto LABEL_22;
    }

    v9 = i - 1;
    if (!i)
    {
      v9 = 0;
    }

    v10 = v9[5];
    v16 = v5;
    v17 = i;
    v18 = v10;
    if (!v10)
    {
LABEL_22:
      v11 = 0;
    }

    else
    {
      v11 = 0;
      do
      {
        ++v11;
        mlir::Region::OpIterator::operator++(&v16);
      }

      while (v18);
    }

    if (UInt > v11)
    {
      goto LABEL_24;
    }

LABEL_14:
    v8 = 1;
    goto LABEL_27;
  }

  if (mlir::ODIE::Compiler::ODIX::labelOpByName((*(*(v1 + 16) + 24) & 0xFFFFFFFFFFFFFFF8), v2) || mlir::ODIE::Compiler::ODIX::destOpByLabelAttr((*(*(v1 + 16) + 24) & 0xFFFFFFFFFFFFFFF8), v2))
  {
    goto LABEL_14;
  }

LABEL_24:
  v15 = 257;
  mlir::Operation::emitError(&v16, v1, v14);
  if (v16)
  {
    mlir::Diagnostic::operator<<<42ul>(&v17, "jump/branch has invalid destination label");
  }

  v8 = (v19 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
LABEL_27:
  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mlir::ODIE::Compiler::ODIX::JumpOp::canonicalize(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 64;
  v4 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
  if (!v4 || *(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v8 != v7 + 32 && *(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::LabelOp,void>::id && *(v8 + 16 * ((*(v8 + 44) >> 23) & 1) + 64) == v4)
  {
    (*(*a2 + 16))(a2, a1);
    return 1;
  }

  result = mlir::ODIE::Compiler::ODIX::labelOpByName((*(v7 + 24) & 0xFFFFFFFFFFFFFFF8), v4);
  if (result)
  {
    v9 = *(result + 8);
    if (v9 == *(result + 16) + 32 || *(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::LabelOp,void>::id)
    {
      return 0;
    }

    (*(*a2 + 40))(a2, a1);
    *(v3 + 16 * ((*(a1 + 44) >> 23) & 1)) = *(v9 + 16 * ((*(v9 + 44) >> 23) & 1) + 64);
    (*(*a2 + 48))(a2, a1);
    return 1;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::ODIX::JumpOp::parse(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  if (((*(*a1 + 56))(a1) & 1) == 0 || ((*(*a1 + 440))(a1, &v9, 0) & 1) == 0)
  {
    return 0;
  }

  if (v9)
  {
    v4 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::JumpOpGenericAdaptorBase::Properties>(a2);
    *v4 = v9;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && (v5 = *(a2 + 8), v7[0] = a1, v7[1] = &v8, v7[2] = a2, mlir::ODIE::Compiler::ODIX::JumpOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::JumpOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v7)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::ODIX::JumpOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
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

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 1uLL)
  {
    *v7 = 15917;
    *(v6 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, "->", 2uLL);
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

  (*(*a2 + 40))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v12 = v14;
  v13 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v12, "dest", 4);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v12, v13);
  if (v12 != v14)
  {
    free(v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::ODIX::LabelOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "sym_name", 8uLL);
    if (v9)
    {
      v10 = *(v8 + 8);
      if (v10)
      {
        if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

uint64_t mlir::ODIE::Compiler::ODIX::LabelOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x300000000;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v12 = 261;
    v11[0] = "sym_name";
    v11[1] = 8;
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

unint64_t mlir::ODIE::Compiler::ODIX::LabelOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::ODIX::LabelOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x656D616E5F6D7973)
  {
    v5 = *a2 & 0xFFFFFFFFFFFFFF00;
    v4 = *a2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

void *mlir::ODIE::Compiler::ODIX::LabelOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8 && *a2 == 0x656D616E5F6D7973)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

    *result = v4;
  }

  return result;
}

void mlir::ODIE::Compiler::ODIX::LabelOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "sym_name";
    v7[1] = 8;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::ODIX::LabelOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(v8, "sym_name", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::LabelOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::ODIE::Compiler::ODIX::LabelOp::verifyInvariantsImpl(unsigned int **this)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *&v1[4 * ((v1[11] >> 23) & 1) + 16];
  if (v2)
  {
    v8[0] = v1;
    v3 = mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(v2, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v8);
  }

  else
  {
    v6 = "requires attribute 'sym_name'";
    v7 = 259;
    mlir::Operation::emitOpError(v1, &v6, v8);
    v3 = (v9 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t mlir::ODIE::Compiler::ODIX::LabelOp::parse(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v10[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v10);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v12, v5))
  {
    return 0;
  }

  if (v12)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::LabelOpGenericAdaptorBase::Properties>(a2);
    *v7 = v12;
  }

  if ((*(*a1 + 104))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v8 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::ODIE::Compiler::ODIX::LabelOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::LabelOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::ODIX::LabelOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
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

  v12 = v14;
  v13 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v12, "sym_name", 8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v12, v13);
  if (v12 != v14)
  {
    free(v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::ODIX::LoadDsOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "data_segment", 0xCuLL);
    if (v9)
    {
      v10 = *(v8 + 8);
      if (v10)
      {
        if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataRefAttr,void>::id)
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

uint64_t mlir::ODIE::Compiler::ODIX::LoadDsOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x300000000;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v12 = 261;
    v11[0] = "data_segment";
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

unint64_t mlir::ODIE::Compiler::ODIX::LoadDsOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::ODIX::LoadDsOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 12 && (*a3 == 0x6765735F61746164 ? (v4 = *(a3 + 8) == 1953391981) : (v4 = 0), v4))
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

void *mlir::ODIE::Compiler::ODIX::LoadDsOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 12 && *a2 == 0x6765735F61746164 && *(a2 + 8) == 1953391981)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataRefAttr,void>::id)
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

void mlir::ODIE::Compiler::ODIX::LoadDsOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "data_segment";
    v7[1] = 12;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::ODIX::LoadDsOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps11(v8, "data_segment", 12, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps11(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataRefAttr,void>::id)
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::LoadDsOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::ODIX::DataRefAttr>(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 48))(a1, &v14))
  {
    v4 = v14;
    v5 = *(*v14 + 136);
    if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataRefAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataRefAttr,void>::id)
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

      if ((atomic_load_explicit(&qword_27FC24D10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24D10))
      {
        qword_27FC24D00 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::DataRefAttr>();
        *algn_27FC24D08 = v12;
        __cxa_guard_release(&qword_27FC24D10);
      }

      if (v18)
      {
        v17 = 261;
        v15 = qword_27FC24D00;
        v16 = *algn_27FC24D08;
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

BOOL mlir::ODIE::Compiler::ODIX::LoadDsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 2 * ((*(v2 + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v9[0] = v2;
    v4 = mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps11(v3, "data_segment", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v9) && mlir::ODIE::Compiler::ODIX::__mlir_ods_local_type_constraint_ODIXOps2(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  }

  else
  {
    v7 = "requires attribute 'data_segment'";
    v8 = 259;
    mlir::Operation::emitOpError(v2, &v7, v9);
    v4 = (v10 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t mlir::ODIE::Compiler::ODIX::LoadDsOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  (*(*a1 + 40))(a1);
  v4 = (*(*a1 + 704))(a1, v11, 1);
  result = 0;
  if (v4)
  {
    v10 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && (v6 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::ODIE::Compiler::ODIX::LoadDsOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::LoadDsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)))
    {
      v7 = *(**(*(*a1 + 32))(a1) + 384);
      v9[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id;
      v8 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v7 + 232), v9);
      return (*(*a1 + 728))(a1, v11, v8, a2 + 16) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::ODIX::LoadDsOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
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
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v8, 0);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::ODIX::LoadImmOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v11[25] = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "imm", 3uLL);
    if (v7)
    {
      v8 = *(v6 + 8);
      if (v8)
      {
        *a1 = v8;
      }
    }

    result = 1;
  }

  else
  {
    a3(&v10, a4);
    if (v10)
    {
      mlir::Diagnostic::operator<<<42ul>(v11, "expected DictionaryAttr to set properties");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::ODIX::LoadImmOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x300000000;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v12 = 261;
    v11[0] = "imm";
    v11[1] = 3;
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

unint64_t mlir::ODIE::Compiler::ODIX::LoadImmOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::ODIX::LoadImmOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 28009 ? (v4 = *(a3 + 2) == 109) : (v4 = 0), v4))
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

void mlir::ODIE::Compiler::ODIX::LoadImmOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "imm";
    v7[1] = 3;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::ODIX::LoadImmOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps12(v8, "imm", 3, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps12(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a1 || ((v5 = *(*a1 + 136), v5 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id) ? (v6 = v5 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id) : (v6 = 1), v6))
  {
    v7 = 1;
  }

  else
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
          mlir::Diagnostic::operator<<<141ul>(v15, "' failed to satisfy constraint: An Attribute containing a integer value or An Attribute containing a floating-point value or index attribute");
        }
      }
    }

    v7 = (v15[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::LoadImmOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::ODIE::Compiler::ODIX::LoadImmOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 2 * ((*(v2 + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v9[0] = v2;
    v4 = mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps12(v3, "imm", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v9) && mlir::ODIE::Compiler::ODIX::__mlir_ods_local_type_constraint_ODIXOps2(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  }

  else
  {
    v7 = "requires attribute 'imm'";
    v8 = 259;
    mlir::Operation::emitOpError(v2, &v7, v9);
    v4 = (v10 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t mlir::ODIE::Compiler::ODIX::LoadImmOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  (*(*a1 + 40))(a1);
  v4 = (*(*a1 + 704))(a1, v11, 1);
  result = 0;
  if (v4)
  {
    v10 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && (v6 = *(a2 + 8), v9[0] = a1, v9[1] = &v10, v9[2] = a2, mlir::ODIE::Compiler::ODIX::LoadImmOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::LoadImmOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)))
    {
      v7 = *(**(*(*a1 + 32))(a1) + 384);
      v9[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id;
      v8 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v7 + 232), v9);
      return (*(*a1 + 728))(a1, v11, v8, a2 + 16) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::ODIX::LoadImmOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
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
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v8, 0);
  v7 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::ODIX::MoveOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v5, 0, &v5, 1);
}

BOOL mlir::ODIE::Compiler::ODIX::MoveOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::ODIX::__mlir_ods_local_type_constraint_ODIXOps2(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  result = 0;
  if (v2)
  {
    return mlir::ODIE::Compiler::ODIX::__mlir_ods_local_type_constraint_ODIXOps2(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::ODIX::MoveOp::canonicalize(uint64_t a1, _DWORD **a2)
{
  v2 = *(a1 + 72);
  v3 = *(v2 + 56);
  v4 = *(v2 + 24);
  if (v3 == v4)
  {
    (*(*a2 + 2))(a2, a1);
    return 1;
  }

  v5 = *v4;
  if (*v4)
  {
    v6 = -1;
    v7 = *v4;
    do
    {
      v7 = *v7;
      ++v6;
    }

    while (v7);
    if (v6 >= 2)
    {
      v8 = *v3;
      if (*v3)
      {
        v9 = -1;
        do
        {
          v8 = *v8;
          ++v9;
        }

        while (v8);
        if (v9 > 1)
        {
          return 0;
        }
      }
    }

    v10 = -1;
    v11 = *v4;
    do
    {
      v11 = *v11;
      ++v10;
    }

    while (v11);
    if (v10 > 1)
    {
      v12 = *v3;
      if (!*v3)
      {
        goto LABEL_32;
      }

      v13 = -1;
      do
      {
        v12 = *v12;
        ++v13;
      }

      while (v12);
      if (v13 <= 1)
      {
LABEL_32:
        v21 = v4[1];
        if ((v21 & 7) == 7)
        {
          v22 = 0;
        }

        else
        {
          v22 = v4;
        }

        if ((v21 & 7) != 7 && ((v22[1] & 7) != 6 || &v22[3 * v22[2]] != -120))
        {
          if ((v3[1] ^ v21) <= 7)
          {
            v23 = a2;
            v24 = v4;
LABEL_52:
            mlir::RewriterBase::replaceAllUsesWith(v23, v24, v3);
            return 1;
          }

          return 0;
        }

LABEL_46:
        mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::ODIX::MoveOp &>(a2[2], a1);
        return 0;
      }
    }

    v14 = -1;
    v15 = *v4;
    do
    {
      v15 = *v15;
      ++v14;
    }

    while (v15);
    if (v14 > 1)
    {
      goto LABEL_31;
    }
  }

  v16 = *v3;
  if (!*v3)
  {
    goto LABEL_31;
  }

  v17 = -1;
  do
  {
    v16 = *v16;
    ++v17;
  }

  while (v16);
  if (v17 < 2)
  {
LABEL_31:
    if (v5)
    {
      v18 = -1;
      do
      {
        v5 = *v5;
        ++v18;
      }

      while (v5);
      if (v18 > 1)
      {
        return 0;
      }
    }

    v19 = *v3;
    if (*v3)
    {
      v20 = -1;
      do
      {
        v19 = *v19;
        ++v20;
      }

      while (v19);
      if (v20 > 1)
      {
        return 0;
      }
    }

    goto LABEL_32;
  }

  v26 = v3[1];
  if ((v26 & 7) == 7)
  {
    v27 = 0;
  }

  else
  {
    v27 = v3;
  }

  if ((v26 & 7) == 7 || (v27[1] & 7) == 6 && &v27[3 * v27[2]] == -120)
  {
    goto LABEL_46;
  }

  if ((v4[1] ^ v26) <= 7)
  {
    v23 = a2;
    v24 = v3;
    v3 = v4;
    goto LABEL_52;
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::ODIX::MoveOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && (v12 = 257, ((*(*a1 + 400))(a1, "to", 2, v11)) && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v7, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v4 = *(**(*(*a1 + 32))(a1) + 384), v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id, v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v4 + 232), v11), ((*(*a1 + 728))(a1, v9, v5, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v7, v5, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::ODIX::MoveOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
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
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 28532;
    *(v8 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "to", 2uLL);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v14, 0);
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::ODIX::ProgramOp::parse(uint64_t a1, void *a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = 0x200000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 496))(a1, a2 + 14) & 1) == 0)
  {
    goto LABEL_16;
  }

  v15 = 0;
  v4 = (*(*a1 + 792))(a1, &v15, 0, 0, 0);
  if ((v4 & 0x100) != 0)
  {
    if (v4)
    {
      llvm::SmallVectorImpl<std::unique_ptr<mlir::Region>>::emplace_back<std::unique_ptr<mlir::Region>>(&v16, &v15);
      if ((*(*a1 + 128))(a1))
      {
        operator new();
      }

      goto LABEL_3;
    }

    v10 = v15;
    v15 = 0;
    if (v10)
    {
      mlir::Region::~Region(v10);
      MEMORY[0x25F891040](v11);
    }

LABEL_16:
    v12 = 0;
    goto LABEL_19;
  }

LABEL_3:
  v5 = v15;
  v15 = 0;
  if (v5)
  {
    mlir::Region::~Region(v5);
    MEMORY[0x25F891040](v6);
  }

  v7 = v16;
  if (v17)
  {
    v8 = 8 * v17;
    do
    {
      if (**v7 == *v7)
      {
        operator new();
      }

      v7 += 8;
      v8 -= 8;
    }

    while (v8);
    v7 = v16;
    v9 = v17;
  }

  else
  {
    v9 = 0;
  }

  mlir::OperationState::addRegions(a2, v7, v9);
  v12 = 1;
LABEL_19:
  llvm::SmallVector<std::unique_ptr<mlir::Region>,2u>::~SmallVector(&v16);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void mlir::ODIE::Compiler::ODIX::ProgramOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v15[4] = *MEMORY[0x277D85DE8];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 200))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v15, 0);
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

  v7 = *(*this + 11);
  v8 = v7 & 0x7FFFFF;
  if ((v7 & 0x7FFFFF) != 0)
  {
    v9 = ((*this + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
    (*(*a2 + 224))(a2, v9, 1, 1, 0);
    if (v8 != 1)
    {
      v10 = v9 + 24;
      v11 = 24 * v8 - 24;
      do
      {
        v12 = (*(*a2 + 16))(a2);
        v13 = *(v12 + 4);
        if (*(v12 + 3) - v13 > 1uLL)
        {
          *v13 = 8236;
          *(v12 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v12, ", ", 2uLL);
        }

        (*(*a2 + 224))(a2, v10, 1, 1, 0);
        v10 += 24;
        v11 -= 24;
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::RegionOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

  *(result + 32) = v4;
  *(result + 40) = v3;
  return result;
}

uint64_t mlir::ODIE::Compiler::ODIX::RegionOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "name", 4uLL);
    if (v9)
    {
      v10 = *(v8 + 8);
      if (v10)
      {
        if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

uint64_t mlir::ODIE::Compiler::ODIX::RegionOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x300000000;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v12 = 261;
    v11[0] = "name";
    v11[1] = 4;
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

unint64_t mlir::ODIE::Compiler::ODIX::RegionOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::ODIX::RegionOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 4 && *a3 == 1701667182)
  {
    v5 = *a2 & 0xFFFFFFFFFFFFFF00;
    v4 = *a2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

void *mlir::ODIE::Compiler::ODIX::RegionOp::setInherentAttr(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 4 && *a2 == 1701667182)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

    *result = v4;
  }

  return result;
}

void mlir::ODIE::Compiler::ODIX::RegionOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "name";
    v7[1] = 4;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::ODIX::RegionOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(v8, "name", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::ODIE::Compiler::ODIX::RegionOp::build(mlir::StringAttr **a1, mlir::OperationState *a2, const llvm::Twine *a3, uint64_t a4)
{
  v7 = 261;
  v6[0] = a3;
  v6[1] = a4;
  v5 = mlir::StringAttr::get(*a1, v6, a3);
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::Properties>(a2) = v5;
  mlir::OperationState::addRegion(a2);
}

BOOL mlir::ODIE::Compiler::ODIX::RegionOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 2 * ((*(v2 + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v9[0] = v2;
    v4 = mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(v3, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v9) && mlir::ODIE::Compiler::ODIX::__mlir_ods_local_region_constraint_ODIXOps1(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "region", 6, 0);
  }

  else
  {
    v7 = "requires attribute 'name'";
    v8 = 259;
    mlir::Operation::emitOpError(v2, &v7, v9);
    v4 = (v10 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t mlir::ODIE::Compiler::ODIX::RegionOp::parse(mlir::Region *a1, mlir::Region *a2)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v22 = 0;
  v23 = v25;
  v24 = 0x200000000;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v20[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v20);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v22, v5))
  {
    goto LABEL_22;
  }

  if (v22)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::Properties>(a2);
    *v7 = v22;
  }

  v21 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 496))(a1, a2 + 14) & 1) == 0)
  {
    goto LABEL_22;
  }

  v8 = *(a2 + 1);
  v20[0] = a1;
  v20[1] = &v21;
  v20[2] = a2;
  if (!mlir::ODIE::Compiler::ODIX::RegionOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::RegionOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v20))
  {
    goto LABEL_22;
  }

  v20[0] = 0;
  v9 = (*(*a1 + 792))(a1, v20, 0, 0, 0);
  if ((v9 & 0x100) != 0)
  {
    if (v9)
    {
      llvm::SmallVectorImpl<std::unique_ptr<mlir::Region>>::emplace_back<std::unique_ptr<mlir::Region>>(&v23, v20);
      if ((*(*a1 + 128))(a1))
      {
        operator new();
      }

      goto LABEL_9;
    }

    v15 = v20[0];
    v20[0] = 0;
    if (v15)
    {
      mlir::Region::~Region(v15);
      MEMORY[0x25F891040](v16);
    }

LABEL_22:
    v17 = 0;
    goto LABEL_23;
  }

LABEL_9:
  v10 = v20[0];
  v20[0] = 0;
  if (v10)
  {
    mlir::Region::~Region(v10);
    MEMORY[0x25F891040](v11);
  }

  v12 = v23;
  if (v24)
  {
    v13 = 8 * v24;
    do
    {
      if (**v12 == *v12)
      {
        operator new();
      }

      v12 += 8;
      v13 -= 8;
    }

    while (v13);
    v12 = v23;
    v14 = v24;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::addRegions(a2, v12, v14);
  v17 = 1;
LABEL_23:
  llvm::SmallVector<std::unique_ptr<mlir::Region>,2u>::~SmallVector(&v23);
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

void mlir::ODIE::Compiler::ODIX::RegionOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v17 = v19;
  v18 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v17, "name", 4);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 200))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v17, v18);
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

  v9 = *(*this + 11);
  v10 = v9 & 0x7FFFFF;
  if ((v9 & 0x7FFFFF) != 0)
  {
    v11 = ((*this + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
    (*(*a2 + 224))(a2, v11, 1, 1, 0);
    if (v10 != 1)
    {
      v12 = v11 + 24;
      v13 = 24 * v10 - 24;
      do
      {
        v14 = (*(*a2 + 16))(a2);
        v15 = *(v14 + 4);
        if (*(v14 + 3) - v15 > 1uLL)
        {
          *v15 = 8236;
          *(v14 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v14, ", ", 2uLL);
        }

        (*(*a2 + 224))(a2, v12, 1, 1, 0);
        v12 += 24;
        v13 -= 24;
      }

      while (v13);
    }
  }

  if (v17 != v19)
  {
    free(v17);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::ODIX::SetContextOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "slot", 4uLL);
    if (v9)
    {
      v10 = *(v8 + 8);
      if (v10)
      {
        if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

uint64_t mlir::ODIE::Compiler::ODIX::SetContextOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x300000000;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v12 = 261;
    v11[0] = "slot";
    v11[1] = 4;
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

unint64_t mlir::ODIE::Compiler::ODIX::SetContextOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::ODIX::SetContextOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 4 && *a3 == 1953459315)
  {
    v5 = *a2 & 0xFFFFFFFFFFFFFF00;
    v4 = *a2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

void *mlir::ODIE::Compiler::ODIX::SetContextOp::setInherentAttr(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 4 && *a2 == 1953459315)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

    *result = v4;
  }

  return result;
}

void mlir::ODIE::Compiler::ODIX::SetContextOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "slot";
    v7[1] = 4;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::ODIX::SetContextOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps10(v8, "slot", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::SetContextOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void *mlir::ODIE::Compiler::ODIX::SetContextOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a5;
  v9 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v9, 0, &v9, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v8, 0, &v8, 1);
  result = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::SetContextOpGenericAdaptorBase::Properties>(a2);
  *result = a4;
  return result;
}

BOOL mlir::ODIE::Compiler::ODIX::SetContextOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 2 * ((*(v2 + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v9[0] = v2;
    v4 = mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps10(v3, "slot", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v9) && mlir::ODIE::Compiler::ODIX::__mlir_ods_local_type_constraint_ODIXOps2(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) && mlir::ODIE::Compiler::ODIX::__mlir_ods_local_type_constraint_ODIXOps2(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u);
  }

  else
  {
    v7 = "requires attribute 'slot'";
    v8 = 259;
    mlir::Operation::emitOpError(v2, &v7, v9);
    v4 = (v10 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t mlir::ODIE::Compiler::ODIX::SetContextOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14 = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*a1 + 32))(a1);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v14, *(**v4 + 472)))
  {
    return 0;
  }

  if (v14)
  {
    v5 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::SetContextOpGenericAdaptorBase::Properties>(a2);
    *v5 = v14;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v12, 1) & 1) == 0)
  {
    return 0;
  }

  v11 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  v10[0] = a1;
  v10[1] = &v11;
  v10[2] = a2;
  if (mlir::ODIE::Compiler::ODIX::SetContextOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::SetContextOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10) && (v7 = *(**(*(*a1 + 32))(a1) + 384), v10[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id, v8 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v7 + 232), v10), ((*(*a1 + 728))(a1, v15, v8, a2 + 16) & 1) != 0))
  {
    return (*(*a1 + 728))(a1, v12, v8, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::ODIX::SetContextOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v20[4] = *MEMORY[0x277D85DE8];
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
    llvm::raw_ostream::write(v6, "[", 1uLL);
  }

  else
  {
    *v7 = 91;
    ++*(v6 + 4);
  }

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, "]", 1uLL);
  }

  else
  {
    *v9 = 93;
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
    llvm::raw_ostream::write(v12, "=", 1uLL);
  }

  else
  {
    *v13 = 61;
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v18 = v20;
  v19 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v18, "slot", 4);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v18, v19);
  if (v18 != v20)
  {
    free(v18);
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::ODIX::SymbolOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "sym_name", 8uLL);
  if ((v10 & 1) == 0 || (v11 = *(v9 + 8)) == 0)
  {
LABEL_12:
    v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "symbol", 6uLL);
    if (v13)
    {
      v14 = *(v12 + 8);
      if (v14)
      {
        if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id)
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

  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

uint64_t mlir::ODIE::Compiler::ODIX::SymbolOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v17 = 261;
    v15 = "sym_name";
    v16 = 8;
    v7 = mlir::StringAttr::get(v6, &v15, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v18, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v17 = 261;
    v15 = "symbol";
    v16 = 6;
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

unint64_t mlir::ODIE::Compiler::ODIX::SymbolOp::computePropertiesHash(void *a1)
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

unint64_t mlir::ODIE::Compiler::ODIX::SymbolOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 6)
  {
    if (*a3 == 1651341683 && *(a3 + 4) == 27759)
    {
      v4 = a2[1];
      goto LABEL_11;
    }
  }

  else if (a4 == 8 && *a3 == 0x656D616E5F6D7973)
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

void *mlir::ODIE::Compiler::ODIX::SymbolOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 6)
  {
    if (*a2 == 1651341683 && *(a2 + 4) == 27759)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id)
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

  else if (a3 == 8 && *a2 == 0x656D616E5F6D7973)
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

    *result = v6;
  }

  return result;
}

void mlir::ODIE::Compiler::ODIX::SymbolOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v13 = 261;
    v11 = "sym_name";
    v12 = 8;
    v7 = mlir::StringAttr::get(v6, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v13 = 261;
    v11 = "symbol";
    v12 = 6;
    v10 = mlir::StringAttr::get(v9, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }
}

BOOL mlir::ODIE::Compiler::ODIX::SymbolOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(v10, "sym_name", 8, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps13(v13, "symbol", 6, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps13(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id)
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::ODIX::SymbolAttr>(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 48))(a1, &v14))
  {
    v4 = v14;
    v5 = *(*v14 + 136);
    if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id)
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

      if ((atomic_load_explicit(&qword_27FC24DC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24DC8))
      {
        qword_27FC24DB8 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::SymbolAttr>();
        unk_27FC24DC0 = v12;
        __cxa_guard_release(&qword_27FC24DC8);
      }

      if (v18)
      {
        v17 = 261;
        v15 = qword_27FC24DB8;
        v16 = unk_27FC24DC0;
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

BOOL mlir::ODIE::Compiler::ODIX::SymbolOp::verifyInvariantsImpl(unsigned int **this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = &v2[4 * ((v2[11] >> 23) & 1)];
  v6 = *(v3 + 8);
  v5 = v3 + 16;
  v4 = v6;
  if (!v6)
  {
    v9 = "requires attribute 'sym_name'";
LABEL_7:
    v12 = v9;
    v13 = 259;
    mlir::Operation::emitOpError(v2, &v12, v14);
    v8 = (v15 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    goto LABEL_9;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    v9 = "requires attribute 'symbol'";
    goto LABEL_7;
  }

  v14[0] = v2;
  if (mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(v4, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14))
  {
    v14[0] = *this;
    v8 = mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps13(v7, "symbol", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps13(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14);
  }

  else
  {
    v8 = 0;
  }

LABEL_9:
  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL mlir::ODIE::Compiler::ODIX::SymbolOp::verify(unsigned int **this)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = 1;
  if (*(*(*&v1[4 * ((v1[11] >> 23) & 1) + 18] + 32) + 16) != *(*(*&v1[4 * ((v1[11] >> 23) & 1) + 18] + 24) + 12))
  {
    v5 = "Inconsistent output intents, each output should havean explicit intent";
    v6 = 259;
    mlir::Operation::emitOpError(v1, &v5, v7);
    v2 = (v7[200] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v7);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::ODIE::Compiler::ODIX::SymbolOp::parse(mlir::AsmParser *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = 0;
  if (!mlir::AsmParser::parseSymbolName(a1, &v11))
  {
    goto LABEL_12;
  }

  if (v11)
  {
    v4 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties>(a2);
    *v4 = v11;
  }

  v5 = (*(*a1 + 40))(a1);
  v14 = 0;
  v15[0] = a1;
  if (((*(*a1 + 448))(a1, &v14, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler4ODIX10SymbolAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_, v15) & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = v14;
  if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties>(a2) + 8) = v6;
  }

  else
  {
    v12[0] = "invalid kind of attribute specified";
    v13 = 259;
    (*(*a1 + 24))(v15, a1, v5, v12);
    v7 = v16;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
    if (v7)
    {
LABEL_12:
      result = 0;
      goto LABEL_13;
    }
  }

  v12[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_12;
  }

  v8 = *(a2 + 8);
  v15[0] = a1;
  v15[1] = v12;
  v15[2] = a2;
  if (!mlir::ODIE::Compiler::ODIX::SymbolOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::SymbolOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v15))
  {
    goto LABEL_12;
  }

  result = 1;
LABEL_13:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::ODIE::Compiler::ODIX::SymbolOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v15[4] = *MEMORY[0x277D85DE8];
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

  v6 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  (*(*a2 + 88))(a2, *(v6 + 16), *(v6 + 24));
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

  v13 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  if (((*(*a2 + 56))(a2) & 1) == 0)
  {
    v9 = (*(*a2 + 16))(a2);
    v10 = (*(*v9 + 80))(v9) + v9[4] - v9[2];
    mlir::ODIE::Compiler::ODIX::SymbolAttr::print(&v13, a2);
    if (v10 == (*(*v9 + 80))(v9) + v9[4] - v9[2])
    {
      (*(*a2 + 40))(a2, v13);
    }
  }

  v13 = v15;
  v14 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v13, "sym_name", 8);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v13, "symbol", 6);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v13, v14);
  if (v13 != v15)
  {
    free(v13);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::ODIX::ValueOp::build(mlir::ODIE::Compiler::ODIX::ValueOp *this, mlir::OpBuilder *a2, mlir::OperationState *a3)
{
  v11[2] = *MEMORY[0x277D85DE8];
  __src = v11;
  v10 = 0x200000000;
  v3 = *this;
  v4 = a2 + 64;
  mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&__src, 1uLL);
  v5 = *(*v3 + 384);
  v8 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id;
  v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), &v8);
  *__src = *v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v4, __src, __src + 8 * v10);
  if (__src != v11)
  {
    free(__src);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::ODIX::ValueOp::parse(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = *(**(*(*a1 + 32))(a1) + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v4 + 232), &__src);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
  return 1;
}

void mlir::ODIE::Compiler::ODIX::ValueOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v5, 0);
  v4 = *MEMORY[0x277D85DE8];
}

void *mlir::ODIE::Compiler::ODIX::RegionTable::RegionTable(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0x1000000000;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0x4800000000;
  v4 = a1;
  mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::ODIX::RegionTable::RegionTable(mlir::ODIE::Compiler::ODIX::FunctionOp)::$_0>, &v4, 1);
  return a1;
}

void mlir::ODIE::Compiler::ODIX::RegionTable::insertRegion(uint64_t a1, uint64_t a2, const unsigned __int8 *a3)
{
  v14[7] = *MEMORY[0x277D85DE8];
  v5 = a2 + 64;
  *v9 = *(*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1)) + 16);
  v10[0] = a2;
  llvm::StringMap<mlir::ODIE::Compiler::ODIX::RegionOp,llvm::MallocAllocator>::insert(a1, v9, a3);
  v6 = *(*(v5 + 16 * ((*(a2 + 44) >> 23) & 1)) + 16);
  v9[0] = v10;
  v9[1] = 0x600000000;
  v11 = v6;
  v12 = v14;
  v13 = 0x600000000;
  llvm::StringMap<llvm::SmallVector<mlir::Operation *,6u>,llvm::MallocAllocator>::insert((a1 + 24), &v11, v7);
  if (v12 != v14)
  {
    free(v12);
  }

  if (v9[0] != v10)
  {
    free(v9[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

size_t **llvm::StringMap<mlir::ODIE::Compiler::ODIX::RegionOp,llvm::MallocAllocator>::insert(llvm::StringMapImpl *a1, uint64_t a2, const unsigned __int8 *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = llvm::xxh3_64bits(*a2, v6, a3);
  return llvm::StringMap<mlir::ODIE::Compiler::ODIX::RegionOp,llvm::MallocAllocator>::try_emplace_with_hash<mlir::ODIE::Compiler::ODIX::RegionOp>(a1, v5, v6, v7, (a2 + 16));
}

size_t **llvm::StringMap<llvm::SmallVector<mlir::Operation *,6u>,llvm::MallocAllocator>::insert(llvm::StringMapImpl *a1, uint64_t a2, const unsigned __int8 *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = llvm::xxh3_64bits(*a2, v6, a3);
  return llvm::StringMap<llvm::SmallVector<mlir::Operation *,6u>,llvm::MallocAllocator>::try_emplace_with_hash<llvm::SmallVector<mlir::Operation *,6u>>(a1, v5, v6, v7, a2 + 16);
}

mlir::Operation **mlir::ODIE::Compiler::ODIX::RegionTable::removeUse(mlir::Operation **this, mlir::Operation *a2)
{
  v3 = *(this + 8);
  if (v3)
  {
      ;
    }
  }

  else
  {
    i = this[3];
  }

  v6 = this[3] + 8 * v3;
  if (i != v6)
  {
    v7 = *i;
    do
    {
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = 8 * v8;
        this = *(v7 + 8);
        while (*this != a2)
        {
          ++this;
          v9 -= 8;
          if (!v9)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        this = *(v7 + 8);
      }

      v10 = *(v7 + 8) + 8 * v8;
      if (this != v10)
      {
        if (v10 != this + 1)
        {
          this = memmove(this, this + 1, v10 - (this + 1));
          LODWORD(v8) = *(v7 + 16);
        }

        *(v7 + 16) = v8 - 1;
      }

      do
      {
LABEL_22:
        v11 = *(i + 1);
        i = (i + 8);
        v7 = v11;
        if (v11)
        {
          v12 = v7 == -8;
        }

        else
        {
          v12 = 1;
        }
      }

      while (v12);
    }

    while (i != v6);
  }

  return this;
}

void mlir::ODIE::Compiler::ODIX::RegionTable::replaceUses(mlir::Operation **a1, mlir::Operation *a2, unsigned __int8 *a3, unint64_t a4)
{
  mlir::ODIE::Compiler::ODIX::RegionTable::removeUse(a1, a2);
  v9 = llvm::xxh3_64bits(a3, a4, v8);
  v10 = *llvm::StringMap<llvm::SmallVector<mlir::Operation *,6u>,llvm::MallocAllocator>::try_emplace_with_hash<>((a1 + 3), a3, a4, v9) + 1;

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v10, a2);
}

BOOL llvm::StringMap<mlir::ODIE::Compiler::ODIX::RegionOp,llvm::MallocAllocator>::erase(uint64_t a1, unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v4 = llvm::StringMap<mlir::ODIE::Compiler::ODIX::RegionOp,llvm::MallocAllocator>::find(a1, a2, a3);
  v5 = v4;
  v6 = *a1 + 8 * *(a1 + 8);
  if (v6 != v4)
  {
    v7 = *v4;
    llvm::StringMapImpl::RemoveKey(a1, *v4 + *(a1 + 20), **v4);
    MEMORY[0x25F891030](v7, 8);
  }

  return v6 != v5;
}

BOOL llvm::StringMap<llvm::SmallVector<mlir::Operation *,6u>,llvm::MallocAllocator>::erase(uint64_t a1, unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v4 = llvm::StringMap<llvm::SmallVector<mlir::Operation *,6u>,llvm::MallocAllocator>::find(a1, a2, a3);
  v5 = v4;
  v6 = *a1 + 8 * *(a1 + 8);
  if (v6 != v4)
  {
    v7 = *v4;
    llvm::StringMapImpl::RemoveKey(a1, *v4 + *(a1 + 20), **v4);
    llvm::StringMapEntry<llvm::SmallVector<mlir::Operation *,6u>>::Destroy<llvm::MallocAllocator>(v7);
  }

  return v6 != v5;
}

BOOL mlir::ODIE::Compiler::ODIX::FunctionOp::parse(mlir::AsmParser *a1, mlir::OperationState *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = *(***a2 + 32);
  v27 = 0;
  v28 = v4;
  v5 = (*(*a1 + 40))(a1);
  if (mlir::AsmParser::parseSymbolName(a1, &v27))
  {
    v7 = *(*(*(a2 + 1) + 96) + 16);
    v8 = mlir::SymbolRefAttr::get(v27, 0, 0, v6);
    mlir::NamedAttrList::push_back(a2 + 112, v7, v8);
    v36 = v38;
    v37 = 0x100000000;
    v33 = v35;
    v34 = 0x600000000;
    *&v39 = a1;
    *(&v39 + 1) = &v33;
    v40 = &v36;
    if (((*(*a1 + 392))(a1, 1, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::parseArguments(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::Type> &,llvm::SmallVectorImpl<mlir::OpAsmParser::Argument> &)::$_0>, &v39, " in argument list", 17) & 1) == 0)
    {
      goto LABEL_18;
    }

    v9 = v34;
    if (v34 <= v37)
    {
      v9 = v37;
    }

    v10 = *(*(*(a2 + 1) + 96) + 8);
    I16IntegerAttr = mlir::Builder::getI16IntegerAttr(&v28, v9);
    mlir::NamedAttrList::push_back(a2 + 112, v10, I16IntegerAttr);
    if ((*(*a1 + 408))(a1, "outs", 4) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) != 0 && (*&v39 = a1, *(&v39 + 1) = &v33, v40 = &v36, ((*(*a1 + 392))(a1, 1, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::parseArguments(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::Type> &,llvm::SmallVectorImpl<mlir::OpAsmParser::Argument> &)::$_0>, &v39, " in argument list", 17)))
    {
      if (!v34 && v37)
      {
        v12 = v37 << 6;
        v13 = (v36 + 32);
        do
        {
          v14 = *v13;
          v13 += 8;
          llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v33, v14);
          v12 -= 64;
        }

        while (v12);
      }

      v15 = *(*(*a1 + 32))(a1);
      *&v39 = v33 & 0xFFFFFFFFFFFFFFF9 | 2;
      *(&v39 + 1) = v34;
      *__src = xmmword_25D0A0640;
      v16 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v15, &v39, __src);
      if (v16)
      {
        v17 = **(*(a2 + 1) + 96);
        v18 = mlir::TypeAttr::get(v16);
        mlir::NamedAttrList::push_back(a2 + 112, v17, v18);
        __src[0] = v30;
        __src[1] = 0x400000000;
        v32 = 4;
        v19 = (*(*a1 + 40))(a1);
        if ((*(*a1 + 496))(a1, __src))
        {
          v20 = __src[0];
          v21 = __src[0] + 16 * LODWORD(__src[1]);
          *(a2 + 24) = 0;
          llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a2 + 112, v20, v21);
          mlir::OperationState::addRegion(a2);
        }

        v26 = 257;
        (*(*a1 + 24))(&v39, a1, v19, v25);
        if (v39)
        {
          mlir::Diagnostic::operator<<<41ul>(&v39 + 8, "failed to parse the attribute dictionary");
        }

        v22 = (v41 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
        if (__src[0] != v30)
        {
          free(__src[0]);
        }
      }

      else
      {
        v31 = 257;
        (*(*a1 + 24))(&v39, a1, v5, __src);
        if (v39)
        {
          mlir::Diagnostic::operator<<<34ul>(&v39 + 8, "failed to construct function type");
        }

        v22 = (v41 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
      }
    }

    else
    {
LABEL_18:
      v22 = 0;
    }

    if (v33 != v35)
    {
      free(v33);
    }

    if (v36 != v38)
    {
      free(v36);
    }
  }

  else
  {
    v31 = 257;
    (*(*a1 + 24))(&v39, a1, v5, __src);
    if (v39)
    {
      mlir::Diagnostic::operator<<<28ul>(&v39 + 8, "expected valid symbol name.");
    }

    v22 = (v41 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t mlir::ODIE::Compiler::ODIX::FunctionOp::print(mlir::ODIE::Compiler::ODIX::FunctionOp *this, mlir::OpAsmPrinter *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++*(v4 + 4);
  }

  v6 = *(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80) + 8);
  (*(*a2 + 88))(a2, *(v6 + 16), *(v6 + 24));
  v7 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v7)
  {
    v8 = v7 - 8;
  }

  else
  {
    v8 = 0;
  }

  v25 = *(v8 + 32) == v8 + 32;
  v24[0] = a2;
  v24[1] = &v25;
  v24[2] = this;
  NumInputs = mlir::ODIE::Compiler::ODIX::FunctionOp::getNumInputs(this);
  mlir::ODIE::Compiler::ODIX::FunctionOp::print(mlir::OpAsmPrinter &)::$_0::operator()(v24, 0, NumInputs);
  v10 = *this;
  if (mlir::ODIE::Compiler::ODIX::FunctionOp::getNumArguments(*this) != NumInputs)
  {
    v11 = (*(*a2 + 16))(a2);
    v12 = *(v11 + 4);
    if (*(v11 + 3) == v12)
    {
      llvm::raw_ostream::write(v11, " ", 1uLL);
    }

    else
    {
      *v12 = 32;
      ++*(v11 + 4);
    }

    (*(*a2 + 72))(a2, "outs", 4);
    v13 = (*(*a2 + 16))(a2);
    v14 = *(v13 + 4);
    if ((*(v13 + 3) - v14) > 2)
    {
      *(v14 + 2) = 32;
      *v14 = 15648;
      *(v13 + 4) += 3;
    }

    else
    {
      llvm::raw_ostream::write(v13, " = ", 3uLL);
    }

    NumArguments = mlir::ODIE::Compiler::ODIX::FunctionOp::getNumArguments(*this);
    mlir::ODIE::Compiler::ODIX::FunctionOp::print(mlir::OpAsmPrinter &)::$_0::operator()(v24, NumInputs, NumArguments);
    v10 = *this;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(v10);
  v17 = *(AttrDictionary + 8);
  v18 = *(AttrDictionary + 16);
  v19 = *(*(*this + 48) + 96);
  v26[0] = *(v19[2] + 16);
  v26[1] = *(*v19 + 16);
  v26[2] = *(v19[1] + 16);
  (*(*a2 + 200))(a2, v17, v18, v26, 3);
  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, " ", 1uLL);
  }

  else
  {
    *v21 = 32;
    ++*(v20 + 4);
  }

  result = (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40), 0, 1, 0);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::ODIE::Compiler::ODIX::FunctionOp::print(mlir::OpAsmPrinter &)::$_0::operator()(void *a1, unsigned int a2, unsigned int a3)
{
  v6 = a1[2];
  v7 = (*(**a1 + 16))(*a1);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, "(", 1uLL);
  }

  else
  {
    *v8 = 40;
    ++*(v7 + 4);
  }

  v9 = a3 - a2;
  if (a3 > a2)
  {
    v10 = a2;
    do
    {
      v11 = *a1;
      v12 = *(((*v6 + 16 * ((*(*v6 + 44) >> 23) & 1) + ((*(*v6 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*v6 + 40) + 8);
      if (v12)
      {
        v13 = v12 - 8;
      }

      else
      {
        v13 = 0;
      }

      v14 = *(*(v13 + 48) + 8 * v10);
      if (*a1[1] == 1)
      {
        (*(*v11 + 32))(v11, *(v14 + 8) & 0xFFFFFFFFFFFFFFF8);
      }

      else
      {
        (*(*v11 + 152))(v11, v14, 0, 0, 0);
      }

      if (++v10 < a3)
      {
        v15 = (*(**a1 + 16))();
        v16 = *(v15 + 4);
        if (*(v15 + 3) - v16 > 1uLL)
        {
          *v16 = 8236;
          *(v15 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v15, ", ", 2uLL);
        }
      }

      --v9;
    }

    while (v9);
  }

  result = (*(**a1 + 16))();
  v18 = *(result + 4);
  if (*(result + 3) == v18)
  {

    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  else
  {
    *v18 = 41;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::ODIX::FunctionOp::getNumArguments(mlir::ODIE::Compiler::ODIX::FunctionOp *this)
{
  v1 = (((this + 16 * ((*(this + 11) >> 23) & 1) + ((*(this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
  if (*v1 == v1)
  {
    return 0;
  }

  v2 = v1[1];
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  return (*(v3 + 56) - *(v3 + 48)) >> 3;
}

BOOL mlir::ODIE::Compiler::ODIX::CallOp::verifySymbolUses(mlir::Operation **this, mlir::SymbolTableCollection *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *this;
  while (1)
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
      break;
    }

    v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v6)
    {
      break;
    }

    v4 = *(v6 + 16);
    if (!v4 || *(*(v4 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      goto LABEL_8;
    }
  }

  v4 = 0;
LABEL_8:
  v7 = mlir::SymbolTableCollection::lookupSymbolIn(a2, v4, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9));
  if (v7 && *(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolOp,void>::id)
  {
    v8 = 1;
  }

  else
  {
    v12 = 257;
    mlir::Operation::emitOpError(*this, v11, &v15);
    if (v15)
    {
      mlir::Diagnostic::operator<<<19ul>(v16, "expected a valid '");
      if (v15)
      {
        v14 = 262;
        v13[0] = "odix.symbol";
        v13[1] = 11;
        mlir::Diagnostic::operator<<(v16, v13);
        if (v15)
        {
          mlir::Diagnostic::operator<<<16ul>(v16, "' as the callee");
        }
      }
    }

    v8 = (v16[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mlir::ODIE::Compiler::ODIX::ValueOp::getEffects(void *a1, uint64_t a2)
{
  v4 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Allocate>();
  v7 = *a1 - 16;
  v8 = v4;
  v6 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
  return llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Allocate *,mlir::OpResult,mlir::SideEffects::DefaultResource *>(a2, &v8, &v7, &v6);
}

uint64_t llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Allocate *,mlir::OpResult,mlir::SideEffects::DefaultResource *>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Allocate *,mlir::OpResult,mlir::SideEffects::DefaultResource *>(a1, a2, a3, a4);
  }

  v5 = *a1 + 40 * v4;
  v6 = *a3;
  v7 = *a4;
  *v5 = *a2;
  *(v5 + 8) = v7;
  *(v5 + 16) = v6 & 0xFFFFFFFFFFFFFFF9 | 4;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 36) = 0;
  LODWORD(v5) = *(a1 + 8) + 1;
  *(a1 + 8) = v5;
  return *a1 + 40 * v5 - 40;
}

uint64_t mlir::ODIE::Compiler::ODIX::DataSegmentOp::getRecordOffsets@<X0>(mlir::ODIE::Compiler::ODIX::DataSegmentOp *this@<X0>, void *a2@<X8>)
{
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  mlir::Region::getOps<mlir::ODIE::Compiler::ODIX::DataRecordOp>((((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40)), &v14);
  v10 = v14;
  v11 = v15;
  v12 = v16;
  v13 = v17;
  v3 = v18;
  result = v15;
  if (v15 != v18)
  {
    v5 = 0;
    do
    {
      v9 = (*(&v13 + 1))();
      Alignment = mlir::ODIE::Compiler::ODIX::DataRecordOp::getAlignment(&v9);
      v7 = (v5 - (v5 != 0)) / Alignment;
      if (v5)
      {
        ++v7;
      }

      v8 = v7 * Alignment;
      llvm::SmallVectorTemplateBase<unsigned long long,true>::push_back(a2, v7 * Alignment);
      v5 = v8 + mlir::ODIE::Compiler::ODIX::DataRecordOp::getSize(&v9);
      mlir::Region::OpIterator::operator++(&v10);
      llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v10);
      result = v11;
    }

    while (v11 != v3);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::ODIX::DataRecordOp::getSize(mlir::ODIE::Compiler::ODIX::DataRecordOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  v2 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(v1);
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = (*(v3 + 16))(v3, v2);
    v8 = (*(v7 + 24))(v7, v6);
    if (v9)
    {
      v10 = 8 * v9;
      v11 = 1;
      do
      {
        v12 = *v8++;
        v11 *= v12;
        v10 -= 8;
      }

      while (v10);
    }

    else
    {
      v11 = 1;
    }

    v14 = (*(v5 + 16))(v5, v4);
    if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v21 = v14[4];
      if (v21)
      {
        if ((*v21)[17] == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr,void>::id)
        {
          v11 = *v21[7];
        }
      }
    }

    v15 = (*(v5 + 16))(v5, v4);
    v25 = (*(v16 + 8))(v16, v15);
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v25);
    if (IntOrFloatBitWidth == 1)
    {
      v18 = 8;
    }

    else
    {
      v18 = IntOrFloatBitWidth;
    }

    v19 = v11 * v18 + 7;
    return (v19 >> 3);
  }

  if (*(*v1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v22 = v1[2];
    v25 = v1[1];
    v23 = mlir::Type::getIntOrFloatBitWidth(&v25);
    if (v23 == 1)
    {
      v24 = 8;
    }

    else
    {
      v24 = v23;
    }

    v19 = v22 * v24 + 7;
    return (v19 >> 3);
  }

  LODWORD(v13) = -1;
  return v13;
}

uint64_t mlir::ODIE::Compiler::ODIX::DataSegmentOp::getSize(mlir::ODIE::Compiler::ODIX::DataSegmentOp *this)
{
  v11[6] = *MEMORY[0x277D85DE8];
  if (*(*(*this + 16) + 32) == *(*this + 16) + 32)
  {
    v5 = 0;
  }

  else
  {
    mlir::ODIE::Compiler::ODIX::DataSegmentOp::getRecordOffsets(this, &v9);
    v2 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
    if (v2)
    {
      v3 = v2 - 8;
    }

    else
    {
      v3 = 0;
    }

    v8 = *(v3 + 32);
    v4 = *(v9 + v10 - 1);
    v5 = mlir::ODIE::Compiler::ODIX::DataRecordOp::getSize(&v8) + v4;
    if (v9 != v11)
    {
      free(v9);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::ODIE::Compiler::ODIX::labelOpByName(void *a1, uint64_t a2)
{
  mlir::Region::getOps<mlir::ODIE::Compiler::ODIX::LabelOp>(a1, v10);
  v6 = v10[0];
  v7 = v10[1];
  v8 = v10[2];
  v9 = v10[3];
  v4 = v11;
  while (v7 != v4)
  {
    result = (*(&v9 + 1))(v7, v3);
    if (*(result + 16 * ((*(result + 44) >> 23) & 1) + 64) == a2)
    {
      return result;
    }

    mlir::Region::OpIterator::operator++(&v6);
    llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v6);
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::ODIX::FunctionOp::verifySymbolUses(mlir::ODIE::Compiler::ODIX::FunctionOp *this, mlir::SymbolTableCollection *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = *this;
  while (1)
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
      break;
    }

    v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v6)
    {
      break;
    }

    v4 = *(v6 + 16);
    if (!v4 || *(*(v4 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      goto LABEL_8;
    }
  }

  v4 = 0;
LABEL_8:
  v7 = mlir::SymbolTableCollection::lookupSymbolIn(a2, v4, *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80));
  if (v7 && *(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolOp,void>::id)
  {
    v12 = *(*(v7 + 16 * ((*(v7 + 44) >> 23) & 1) + 72) + 24);
    v13 = *(v12 + 8);
    if (v13 == mlir::ODIE::Compiler::ODIX::FunctionOp::getNumInputs(this))
    {
      v14 = *(v12 + 12);
      v15 = *(*(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) + 8) + 8);
      if (v14 == v15 - mlir::ODIE::Compiler::ODIX::FunctionOp::getNumInputs(this))
      {
        v9 = 1;
        goto LABEL_16;
      }

      v32 = 257;
      mlir::Operation::emitOpError(*this, v31, &v33);
      if (v33)
      {
        mlir::Diagnostic::operator<<<28ul>(v34, "expected function results '");
      }

      v28 = *(v12 + 8);
      v22 = mlir::InFlightDiagnostic::operator<<<unsigned int>(&v33, &v28);
      v23 = v22;
      if (*v22)
      {
        mlir::Diagnostic::operator<<<28ul>((v22 + 1), "' to match symbol results '");
      }

      v24 = *(*(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) + 8) + 8);
      v27 = v24 - mlir::ODIE::Compiler::ODIX::FunctionOp::getNumInputs(this);
      v25 = mlir::InFlightDiagnostic::operator<<<unsigned int>(v23, &v27);
      v26 = v25;
      if (*v25)
      {
        mlir::Diagnostic::operator<<<2ul>((v25 + 1), "'");
      }

      v8 = *(v26 + 200);
    }

    else
    {
      v32 = 257;
      mlir::Operation::emitOpError(*this, v31, &v33);
      if (v33)
      {
        mlir::Diagnostic::operator<<<27ul>(v34, "expected function inputs '");
      }

      v27 = *(v12 + 8);
      v16 = mlir::InFlightDiagnostic::operator<<<unsigned int>(&v33, &v27);
      v17 = v16;
      if (*v16)
      {
        mlir::Diagnostic::operator<<<27ul>((v16 + 1), "' to match symbol inputs '");
      }

      NumInputs = mlir::ODIE::Compiler::ODIX::FunctionOp::getNumInputs(this);
      if (*v17)
      {
        v28 = 5;
        v29 = NumInputs;
        v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v17 + 3), &v28, 1);
        v20 = v17[3] + 24 * *(v17 + 8);
        v21 = *v19;
        *(v20 + 16) = *(v19 + 16);
        *v20 = v21;
        ++*(v17 + 8);
        if (*v17)
        {
          mlir::Diagnostic::operator<<<2ul>((v17 + 1), "'");
        }
      }

      v8 = *(v17 + 200);
    }
  }

  else
  {
    v30 = 257;
    mlir::Operation::emitOpError(*this, &v28, &v33);
    if (v33)
    {
      mlir::Diagnostic::operator<<<19ul>(v34, "expected a valid '");
      if (v33)
      {
        v32 = 262;
        v31[0] = "odix.symbol";
        v31[1] = 11;
        mlir::Diagnostic::operator<<(v34, v31);
        if (v33)
        {
          mlir::Diagnostic::operator<<<20ul>(v34, "' as the symbol ref");
        }
      }
    }

    v8 = v34[192];
  }

  v9 = v8 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
LABEL_16:
  v10 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t mlir::Diagnostic::operator<<<85ul>(uint64_t a1, char *__s)
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t mlir::Diagnostic::operator<<<141ul>(uint64_t a1, char *__s)
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps13(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::parseArguments(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::Type> &,llvm::SmallVectorImpl<mlir::OpAsmParser::Argument> &)::$_0>(uint64_t *a1)
{
  v13 = 0uLL;
  BYTE8(v16) = 0;
  v15 = 0uLL;
  *&v14 = 0;
  LOBYTE(v16) = 0;
  v2 = (*(**a1 + 760))();
  if ((v2 & 0x100) != 0)
  {
    v5 = v2;
    v6 = a1[2];
    v7 = *(v6 + 8);
    if (v7 >= *(v6 + 12))
    {
      llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>::growAndEmplaceBack<mlir::OpAsmParser::Argument&>(v6, &v13);
    }

    else
    {
      v8 = (*v6 + (v7 << 6));
      v9 = v13;
      v10 = v14;
      v11 = v16;
      v8[2] = v15;
      v8[3] = v11;
      *v8 = v9;
      v8[1] = v10;
      ++*(v6 + 8);
    }
  }

  else
  {
    v3 = *a1;
    v4 = llvm::SmallVectorImpl<mlir::Type>::emplace_back<>(a1[1]);
    return (*(*v3 + 536))(v3, v4);
  }

  return v5;
}

__n128 llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>::growAndEmplaceBack<mlir::OpAsmParser::Argument&>(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v10[0] = *a2;
  v10[1] = v3;
  v4 = a2[3];
  v10[2] = a2[2];
  v10[3] = v4;
  v5 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::Argument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>>(a1, v10, 1);
  v6 = *a1 + (*(a1 + 8) << 6);
  result = *v5;
  v8 = *(v5 + 16);
  v9 = *(v5 + 48);
  *(v6 + 32) = *(v5 + 32);
  *(v6 + 48) = v9;
  *v6 = result;
  *(v6 + 16) = v8;
  ++*(a1 + 8);
  return result;
}

double mlir::Region::getOps<mlir::ODIE::Compiler::ODIX::DataRecordOp>@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  if (*a1 == a1)
  {
    goto LABEL_11;
  }

  while (v4 != a1)
  {
    v5 = v4 - 1;
    if (!v4)
    {
      v5 = 0;
    }

    if (v5[4] != v5 + 4)
    {
      break;
    }

    v4 = v4[1];
  }

  if (v4 == a1)
  {
LABEL_11:
    v7 = 0;
  }

  else
  {
    v6 = v4 - 1;
    if (!v4)
    {
      v6 = 0;
    }

    v7 = v6[5];
  }

  v14 = a1;
  *&v12 = a1;
  *(&v12 + 1) = v4;
  *&v13 = v7;
  *(&v13 + 1) = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::ODIX::DataRecordOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v8 = v13;
  *a2 = v12;
  *(a2 + 16) = v8;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  *&v12 = a1;
  *(&v12 + 1) = a1;
  *&v13 = 0;
  *(&v13 + 1) = a1;
  v14 = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::ODIX::DataRecordOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v9 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v9;
  result = *&v14;
  *(a2 + 96) = v14;
  v11 = v15;
  *(a2 + 56) = mlir::detail::op_iterator<mlir::ODIE::Compiler::ODIX::DataRecordOp,mlir::Region::OpIterator>::unwrap;
  *(a2 + 112) = v11;
  *(a2 + 120) = mlir::detail::op_iterator<mlir::ODIE::Compiler::ODIX::DataRecordOp,mlir::Region::OpIterator>::unwrap;
  return result;
}

_DWORD *mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::ODIX::MoveOp &>(_DWORD *result, uint64_t a2)
{
  v2 = "Can't fold between I/O registers";
  v3 = 259;
  v4 = &v2;
  if (result)
  {
    if (result[2] == 1)
    {
      return (*(*result + 88))(result, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::ODIX::MoveOp &>(mlir::ODIE::Compiler::ODIX::MoveOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v4);
    }
  }

  return result;
}

double mlir::Region::getOps<mlir::ODIE::Compiler::ODIX::LabelOp>@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  if (*a1 == a1)
  {
    goto LABEL_11;
  }

  while (v4 != a1)
  {
    v5 = v4 - 1;
    if (!v4)
    {
      v5 = 0;
    }

    if (v5[4] != v5 + 4)
    {
      break;
    }

    v4 = v4[1];
  }

  if (v4 == a1)
  {
LABEL_11:
    v7 = 0;
  }

  else
  {
    v6 = v4 - 1;
    if (!v4)
    {
      v6 = 0;
    }

    v7 = v6[5];
  }

  v14 = a1;
  *&v12 = a1;
  *(&v12 + 1) = v4;
  *&v13 = v7;
  *(&v13 + 1) = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::ODIX::LabelOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v8 = v13;
  *a2 = v12;
  *(a2 + 16) = v8;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  *&v12 = a1;
  *(&v12 + 1) = a1;
  *&v13 = 0;
  *(&v13 + 1) = a1;
  v14 = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::ODIX::LabelOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v9 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v9;
  result = *&v14;
  *(a2 + 96) = v14;
  v11 = v15;
  *(a2 + 56) = mlir::detail::op_iterator<mlir::ODIE::Compiler::ODIX::LabelOp,mlir::Region::OpIterator>::unwrap;
  *(a2 + 112) = v11;
  *(a2 + 120) = mlir::detail::op_iterator<mlir::ODIE::Compiler::ODIX::LabelOp,mlir::Region::OpIterator>::unwrap;
  return result;
}

double mlir::Region::getOps<mlir::ODIE::Compiler::ODIX::RegionOp>@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  if (*a1 == a1)
  {
    goto LABEL_11;
  }

  while (v4 != a1)
  {
    v5 = v4 - 1;
    if (!v4)
    {
      v5 = 0;
    }

    if (v5[4] != v5 + 4)
    {
      break;
    }

    v4 = v4[1];
  }

  if (v4 == a1)
  {
LABEL_11:
    v7 = 0;
  }

  else
  {
    v6 = v4 - 1;
    if (!v4)
    {
      v6 = 0;
    }

    v7 = v6[5];
  }

  v14 = a1;
  *&v12 = a1;
  *(&v12 + 1) = v4;
  *&v13 = v7;
  *(&v13 + 1) = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::ODIX::RegionOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v8 = v13;
  *a2 = v12;
  *(a2 + 16) = v8;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  *&v12 = a1;
  *(&v12 + 1) = a1;
  *&v13 = 0;
  *(&v13 + 1) = a1;
  v14 = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::ODIX::RegionOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v9 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v9;
  result = *&v14;
  *(a2 + 96) = v14;
  v11 = v15;
  *(a2 + 56) = mlir::detail::op_iterator<mlir::ODIE::Compiler::ODIX::RegionOp,mlir::Region::OpIterator>::unwrap;
  *(a2 + 112) = v11;
  *(a2 + 120) = mlir::detail::op_iterator<mlir::ODIE::Compiler::ODIX::RegionOp,mlir::Region::OpIterator>::unwrap;
  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::AsyncInvokeRegionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::AsyncInvokeRegionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::AsyncInvokeRegionOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24B90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24B90))
  {
    qword_27FC24B80 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::AsyncInvokeRegionOpGenericAdaptorBase::Properties>();
    *algn_27FC24B88 = v1;
    __cxa_guard_release(&qword_27FC24B90);
  }

  return qword_27FC24B80;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::AsyncInvokeRegionOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::AsyncInvokeRegionOpGenericAdaptorBase::Properties]";
  v6 = 147;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::BranchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::BranchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::BranchOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24BB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24BB8))
  {
    qword_27FC24BA8 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::BranchOpGenericAdaptorBase::Properties>();
    unk_27FC24BB0 = v1;
    __cxa_guard_release(&qword_27FC24BB8);
  }

  return qword_27FC24BA8;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::BranchOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::BranchOpGenericAdaptorBase::Properties]";
  v6 = 136;
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

void mlir::RewritePatternSet::add<mlir::ODIE::Compiler::ODIX::BranchOp>(llvm::LogicalResult (*)(mlir::ODIE::Compiler::ODIX::BranchOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::BranchOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24BE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24BE0))
  {
    qword_27FC24BD0 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties>();
    *algn_27FC24BD8 = v1;
    __cxa_guard_release(&qword_27FC24BE0);
  }

  return qword_27FC24BD0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::CallOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::CallOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::DataRecordOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::DataRecordOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::DataRecordOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::DataRecordOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::DataRecordOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24C08))
  {
    qword_27FC24BF8 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::DataRecordOpGenericAdaptorBase::Properties>();
    unk_27FC24C00 = v1;
    __cxa_guard_release(&qword_27FC24C08);
  }

  return qword_27FC24BF8;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::DataRecordOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::DataRecordOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::DataRecordOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::FunctionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::FunctionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::FunctionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::FunctionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::FunctionOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24C30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24C30))
  {
    qword_27FC24C20 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::FunctionOpGenericAdaptorBase::Properties>();
    *algn_27FC24C28 = v1;
    __cxa_guard_release(&qword_27FC24C30);
  }

  return qword_27FC24C20;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::FunctionOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::FunctionOpGenericAdaptorBase::Properties]";
  v6 = 138;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::GetContextOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::GetContextOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::GetContextOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24C58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24C58))
  {
    qword_27FC24C48 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::GetContextOpGenericAdaptorBase::Properties>();
    unk_27FC24C50 = v1;
    __cxa_guard_release(&qword_27FC24C58);
  }

  return qword_27FC24C48;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::GetContextOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::GetContextOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::GetContextOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::InvokeRegionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::InvokeRegionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::InvokeRegionOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24C80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24C80))
  {
    qword_27FC24C70 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::InvokeRegionOpGenericAdaptorBase::Properties>();
    *algn_27FC24C78 = v1;
    __cxa_guard_release(&qword_27FC24C80);
  }

  return qword_27FC24C70;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::InvokeRegionOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::InvokeRegionOpGenericAdaptorBase::Properties]";
  v6 = 142;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::InvokeRegionOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::JumpOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::JumpOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::JumpOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24CA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24CA8))
  {
    qword_27FC24C98 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::JumpOpGenericAdaptorBase::Properties>();
    unk_27FC24CA0 = v1;
    __cxa_guard_release(&qword_27FC24CA8);
  }

  return qword_27FC24C98;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::JumpOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::JumpOpGenericAdaptorBase::Properties]";
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

void mlir::RewritePatternSet::add<mlir::ODIE::Compiler::ODIX::JumpOp>(llvm::LogicalResult (*)(mlir::ODIE::Compiler::ODIX::JumpOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::JumpOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::LabelOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::LabelOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::LabelOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24CD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24CD0))
  {
    qword_27FC24CC0 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::LabelOpGenericAdaptorBase::Properties>();
    *algn_27FC24CC8 = v1;
    __cxa_guard_release(&qword_27FC24CD0);
  }

  return qword_27FC24CC0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::LabelOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::LabelOpGenericAdaptorBase::Properties]";
  v6 = 135;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::LabelOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::LoadDsOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::LoadDsOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::LoadDsOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24CF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24CF8))
  {
    qword_27FC24CE8 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::LoadDsOpGenericAdaptorBase::Properties>();
    unk_27FC24CF0 = v1;
    __cxa_guard_release(&qword_27FC24CF8);
  }

  return qword_27FC24CE8;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::LoadDsOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::LoadDsOpGenericAdaptorBase::Properties]";
  v6 = 136;
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::DataRefAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::DataRefAttr]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::LoadDsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::LoadImmOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::LoadImmOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::LoadImmOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24D38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24D38))
  {
    qword_27FC24D28 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::LoadImmOpGenericAdaptorBase::Properties>();
    unk_27FC24D30 = v1;
    __cxa_guard_release(&qword_27FC24D38);
  }

  return qword_27FC24D28;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::LoadImmOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::LoadImmOpGenericAdaptorBase::Properties]";
  v6 = 137;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::LoadImmOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void mlir::RewritePatternSet::add<mlir::ODIE::Compiler::ODIX::MoveOp>(llvm::LogicalResult (*)(mlir::ODIE::Compiler::ODIX::MoveOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24D60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24D60))
  {
    qword_27FC24D50 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::Properties>();
    *algn_27FC24D58 = v1;
    __cxa_guard_release(&qword_27FC24D60);
  }

  return qword_27FC24D50;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::Properties]";
  v6 = 136;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::RegionOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::SetContextOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::SetContextOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::SetContextOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24D88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24D88))
  {
    qword_27FC24D78 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::SetContextOpGenericAdaptorBase::Properties>();
    unk_27FC24D80 = v1;
    __cxa_guard_release(&qword_27FC24D88);
  }

  return qword_27FC24D78;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::SetContextOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::SetContextOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::SetContextOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24DB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24DB0))
  {
    qword_27FC24DA0 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties>();
    *algn_27FC24DA8 = v1;
    __cxa_guard_release(&qword_27FC24DB0);
  }

  return qword_27FC24DA0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::detail::SymbolOpGenericAdaptorBase::Properties]";
  v6 = 136;
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::SymbolAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::SymbolAttr]";
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

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler4ODIX10SymbolAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::ODIX::SymbolAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::SymbolOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

size_t **llvm::StringMap<mlir::ODIE::Compiler::ODIX::RegionOp,llvm::MallocAllocator>::try_emplace_with_hash<mlir::ODIE::Compiler::ODIX::RegionOp>(llvm::StringMapImpl *a1, const void *a2, size_t a3, int a4, size_t *a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  i = (*a1 + 8 * v9);
  v11 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v11)
  {
    while (!v11 || v11 == -8)
    {
      v12 = i[1];
      ++i;
      v11 = v12;
    }

    return i;
  }

  buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
  v14 = buffer;
  v15 = (buffer + 2);
  if (a3)
  {
    memcpy(buffer + 2, a2, a3);
  }

  v15[a3] = 0;
  v16 = *a5;
  *v14 = a3;
  v14[1] = v16;
  *i = v14;
  ++*(a1 + 3);
    ;
  }

  return i;
}

size_t **llvm::StringMap<llvm::SmallVector<mlir::Operation *,6u>,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, const void *a2, size_t a3, int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  i = (*a1 + 8 * v7);
  v9 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v9)
  {
    while (!v9 || v9 == -8)
    {
      v10 = i[1];
      ++i;
      v9 = v10;
    }

    return i;
  }

  buffer = llvm::allocate_buffer((a3 + 73), 8uLL);
  v12 = buffer;
  v13 = (buffer + 9);
  if (a3)
  {
    memcpy(buffer + 9, a2, a3);
  }

  v13[a3] = 0;
  *v12 = a3;
  v12[1] = (v12 + 3);
  v12[2] = 0x600000000;
  *i = v12;
  ++*(a1 + 3);
    ;
  }

  return i;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::ODIX::RegionTable::RegionTable(mlir::ODIE::Compiler::ODIX::FunctionOp)::$_0>(uint64_t *a1, uint64_t a2, const unsigned __int8 *a3)
{
  v4 = *a1;
  v5 = *(*(a2 + 48) + 16);
  if (a2 && v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegionOp,void>::id)
  {
    v11 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 16);
    v12 = a2;
    llvm::StringMap<mlir::ODIE::Compiler::ODIX::RegionOp,llvm::MallocAllocator>::insert(v4, &v11, a3);
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::InvokeRegionOp,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp,void>::id)
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = llvm::xxh3_64bits(v7, v8, a3);
    v10 = *llvm::StringMap<llvm::SmallVector<mlir::Operation *,6u>,llvm::MallocAllocator>::try_emplace_with_hash<>((v4 + 24), v7, v8, v9) + 1;

    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v10, a2);
  }
}

size_t **llvm::StringMap<llvm::SmallVector<mlir::Operation *,6u>,llvm::MallocAllocator>::try_emplace_with_hash<llvm::SmallVector<mlir::Operation *,6u>>(llvm::StringMapImpl *a1, const void *a2, size_t a3, int a4, uint64_t a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  i = (*a1 + 8 * v9);
  v11 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v11)
  {
    while (!v11 || v11 == -8)
    {
      v12 = i[1];
      ++i;
      v11 = v12;
    }

    return i;
  }

  *i = llvm::StringMapEntry<llvm::SmallVector<mlir::Operation *,6u>>::create<llvm::MallocAllocator,llvm::SmallVector<mlir::Operation *,6u>>(a2, a3, a1, a5);
  ++*(a1 + 3);
    ;
  }

  return i;
}

size_t *llvm::StringMapEntry<llvm::SmallVector<mlir::Operation *,6u>>::create<llvm::MallocAllocator,llvm::SmallVector<mlir::Operation *,6u>>(const void *a1, size_t a2, uint64_t a3, uint64_t a4)
{
  buffer = llvm::allocate_buffer((a2 + 73), 8uLL);
  v8 = buffer;
  v9 = (buffer + 9);
  if (a2)
  {
    memcpy(buffer + 9, a1, a2);
  }

  v9[a2] = 0;
  *v8 = a2;
  v8[1] = (v8 + 3);
  v8[2] = 0x600000000;
  if (*(a4 + 8))
  {
    llvm::SmallVectorImpl<mlir::Operation *>::operator=((v8 + 1), a4);
  }

  return v8;
}

uint64_t llvm::StringMap<llvm::SmallVector<mlir::Operation *,6u>,llvm::MallocAllocator>::find(uint64_t a1, unsigned __int8 *a2, const unsigned __int8 *a3)
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

uint64_t llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Allocate *,mlir::OpResult,mlir::SideEffects::DefaultResource *>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = *a4;
  v13[0] = *a2;
  v13[1] = v6;
  v13[2] = v5 & 0xFFFFFFFFFFFFFFF9 | 4;
  v13[3] = 0;
  v14 = 0;
  v15 = 0;
  v7 = llvm::SmallVectorTemplateCommon<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>>(a1, v13, 1);
  v8 = *a1 + 40 * *(a1 + 8);
  v9 = *(v7 + 32);
  v10 = *(v7 + 16);
  *v8 = *v7;
  *(v8 + 16) = v10;
  *(v8 + 32) = v9;
  LODWORD(v8) = *(a1 + 8) + 1;
  *(a1 + 8) = v8;
  v11 = *MEMORY[0x277D85DE8];
  return *a1 + 40 * v8 - 40;
}

uint64_t mlir::ODIE::Compiler::ODIX::destOpByLabelAttr(void *a1, uint64_t a2)
{
  if (*a1 == a1)
  {
    return 0;
  }

  for (i = a1[1]; i != a1; i = i[1])
  {
    v4 = i - 1;
    if (!i)
    {
      v4 = 0;
    }

    if (v4[4] != v4 + 4)
    {
      break;
    }
  }

  if (i == a1)
  {
    return 0;
  }

  v5 = i - 1;
  if (!i)
  {
    v5 = 0;
  }

  v6 = v5[5];
  v12[0] = a1;
  v12[1] = i;
  for (j = v6; j; v6 = j)
  {
    v7 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(v6 + 56) + 8), *(*(v6 + 56) + 8) + 16 * *(*(v6 + 56) + 16), "odix.label", 0xAuLL);
    if (v8)
    {
      v9 = *(v7 + 8);
      if (v9)
      {
        if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id && v9 == a2)
        {
          break;
        }
      }
    }

    mlir::Region::OpIterator::operator++(v12);
  }

  return v6;
}

uint64_t mlir::DialectRegistry::insert<mlir::ODIE::Compiler::TorchImport::TorchImportDialect>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_286EA32F8;
  v3[3] = v3;
  mlir::DialectRegistry::insert(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TorchImportDialect,void>::id, "TorchImport", 0xBuLL, v3);
  result = std::__function::__value_func<mlir::Dialect * ()(mlir::MLIRContext *)>::~__value_func[abi:nn200100](v3);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::TorchImportFrontendExtension::canHandle(uint64_t a1, uint64_t *a2)
{
  v4 = 0;
  v3 = &v4;
  mlir::detail::walk<mlir::ForwardIterator>(*a2, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::TorchImportFrontendExtension::canHandle(mlir::ModuleOp *)::$_0>, &v3, 1);
  return v4;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::TorchImportFrontendExtension::canHandle(mlir::ModuleOp *)::$_0>(_BYTE **a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (*(v2 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = *(v2 + 8) + 32;
  }

  else
  {
    v3 = v2 + 24;
  }

  v4 = *(*v3 + 24);
  v5 = 1;
  if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TorchImportDialect,void>::id)
  {
    **a1 = 1;
    return 0;
  }

  return v5;
}

void mlir::ODIE::Compiler::TorchImport::TorchImportDialect::~TorchImportDialect(mlir::ODIE::Compiler::TorchImport::TorchImportDialect *this)
{
  *this = &unk_286E78B58;
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Reset(this + 192);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 192);
  llvm::StringMap<mlir::DynamicAttrDefinition *,llvm::MallocAllocator>::~StringMap(this + 168);
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DynamicAttrDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicAttrDefinition>>>,mlir::TypeID,std::unique_ptr<mlir::DynamicAttrDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicAttrDefinition>>>::destroyAll(this + 144);
  MEMORY[0x25F891030](*(this + 18), 8);
  llvm::StringMap<mlir::DynamicTypeDefinition *,llvm::MallocAllocator>::~StringMap(this + 120);
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>>>,mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>>>::destroyAll(this + 96);
  MEMORY[0x25F891030](*(this + 12), 8);

  mlir::Dialect::~Dialect(this);
}

{
  mlir::ODIE::Compiler::TorchImport::TorchImportDialect::~TorchImportDialect(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::TorchImport::TorchImportDialect::parseType(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  v17 = 0;
  mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::KeywordSwitch(v18, a2, 0);
  v22[0] = "tuple";
  v22[1] = 5;
  if (v21[2])
  {
    goto LABEL_2;
  }

  v6 = v20;
  if (v20 != 5)
  {
    if (!v20)
    {
      (*(*v18[0] + 648))(v18[0], v22, 1);
      if (v21[2])
      {
LABEL_2:
        v5 = 0;
        v6 = 0;
        v7 = 0;
        goto LABEL_12;
      }

      v6 = v20;
    }

    goto LABEL_11;
  }

  if (*v19 != 1819309428 || v19[4] != 101)
  {
LABEL_11:
    v5 = 0;
    v7 = v19;
    *v21 = 0;
    v21[2] = 1;
    goto LABEL_12;
  }

  (*(*a2 + 32))(a2);
  (*(*a2 + 40))(a2);
  LOBYTE(v28) = 0;
  v32 = 0;
  if ((*(*a2 + 152))(a2))
  {
    mlir::FieldParser<llvm::SmallVector<mlir::Type,6u>,llvm::SmallVector<mlir::Type,6u>>::parse(a2, &v25);
    std::__optional_storage_base<llvm::SmallVector<mlir::Type,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::Type,6u>,false>>(&v28, &v25);
    if (v27[48] == 1 && v25 != v27)
    {
      free(v25);
    }

    v14 = *a2;
    if (v32)
    {
      if ((*(v14 + 168))(a2))
      {
        v15 = (*(*a2 + 32))(a2);
        v5 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::TorchImport::TupleType,llvm::ArrayRef<mlir::Type>>(*v15, v28, v29);
        goto LABEL_34;
      }
    }

    else
    {
      v16 = (*(v14 + 40))(a2);
      v24 = 259;
      (*(*a2 + 24))(&v25, a2, v16, v23);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
    }
  }

  v5 = 0;
LABEL_34:
  if (v32 == 1 && v28 != &v30)
  {
    free(v28);
  }

  v6 = 0;
  v7 = 0;
  v17 = v5;
  v21[0] = v5 != 0;
  *&v21[1] = 257;
LABEL_12:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v18) & 0x100) == 0)
  {
    v9 = mlir::ExtensibleDialect::parseOptionalDynamicType(a1, v7, v6, a2, &v17);
    if ((v9 & 0x100) != 0)
    {
      if (v9)
      {
        v5 = v17;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v24 = 257;
      (*(*a2 + 24))(&v25, a2, v4, v23);
      if (v25)
      {
        if (v25)
        {
          v31 = 261;
          v28 = v7;
          v29 = v6;
          mlir::Diagnostic::operator<<(&v26, &v28);
          if (v25)
          {
            if (v25)
            {
              v10 = *(a1 + 8);
              v11 = *(a1 + 16);
              v31 = 261;
              v28 = v10;
              v29 = v11;
              mlir::Diagnostic::operator<<(&v26, &v28);
              if (v25)
              {
              }
            }
          }
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
      v5 = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

llvm::raw_ostream *mlir::ODIE::Compiler::TorchImport::TorchImportDialect::printType(uint64_t a1, uint64_t *a2, mlir::AsmPrinter *a3)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id)
  {
    v6 = (*(*a3 + 16))(a3);
    v7 = *(v6 + 4);
    if ((*(v6 + 3) - v7) > 4)
    {
      *(v7 + 4) = 101;
      *v7 = 1819309428;
      *(v6 + 4) += 5;
    }

    else
    {
      llvm::raw_ostream::write(v6, "tuple", 5uLL);
    }

    v8 = (*(*a3 + 16))(a3);
    v9 = *(v8 + 4);
    if (*(v8 + 3) == v9)
    {
      llvm::raw_ostream::write(v8, "<", 1uLL);
    }

    else
    {
      *v9 = 60;
      ++*(v8 + 4);
    }

    v10 = a2[2];
    if (v10)
    {
      v11 = a2[1];
      (*(*a3 + 32))(a3, *v11);
      if (v10 != 1)
      {
        v12 = 8 * v10;
        v13 = v11 + 1;
        v14 = v12 - 8;
        do
        {
          v15 = (*(*a3 + 16))(a3);
          v16 = *(v15 + 4);
          if (*(v15 + 3) - v16 > 1uLL)
          {
            *v16 = 8236;
            *(v15 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v15, ", ", 2uLL);
          }

          v17 = *v13++;
          (*(*a3 + 32))(a3, v17);
          v14 -= 8;
        }

        while (v14);
      }
    }

    result = (*(*a3 + 16))(a3);
    v18 = *(result + 4);
    if (*(result + 3) == v18)
    {

      return llvm::raw_ostream::write(result, ">", 1uLL);
    }

    else
    {
      *v18 = 62;
      ++*(result + 4);
    }
  }

  else
  {

    return mlir::ExtensibleDialect::printIfDynamicType(a2, a3);
  }

  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::TorchImport::TupleType,llvm::ArrayRef<mlir::Type>>(void *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id;
  v7[1] = &v8;
  v8 = a1;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler11TorchImport6detail16TupleTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_9TupleTypeEJNS_8ArrayRefINS1_4TypeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v11[1] = v7;
  v10[0] = a2;
  v10[1] = a3;
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  v14 = 0;
  v15 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::Type>>(v12, 0, v12, v13, v10);
  v9 = v10;
  *&v12[0] = v10;
  *(&v12[0] + 1) = v11;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage,llvm::ArrayRef<mlir::Type>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Type> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage,llvm::ArrayRef<mlir::Type>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Type> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage,llvm::ArrayRef<mlir::Type>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Type> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  v4 = **a1;
  v5 = 8 * v2 - 8;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = *v3++;
    result = v8 == v6;
    v10 = v8 != v6 || v5 == 0;
    v5 -= 8;
  }

  while (!v10);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage,llvm::ArrayRef<mlir::Type>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Type> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = mlir::StorageUniquer::StorageAllocator::copyInto<mlir::Type>(a2, **a1, *(*a1 + 8));
  v6 = v5;
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v7 = 0;
  v7[1] = v4;
  v7[2] = v6;
  v8 = *(a1 + 8);
  if (*v8)
  {
    (*v8)(*(v8 + 8), v7);
  }

  return v7;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler11TorchImport6detail16TupleTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_9TupleTypeEJNS_8ArrayRefINS1_4TypeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

void mlir::Dialect::addType<mlir::ODIE::Compiler::TorchImport::TupleType>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::ODIE::Compiler::TorchImport::TupleType>(a1, &v2);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id);
}

void mlir::AbstractType::get<mlir::ODIE::Compiler::TorchImport::TupleType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::TorchImport::TupleType,mlir::Type,mlir::ODIE::Compiler::TorchImport::detail::TupleTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractType::AbstractType(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler11TorchImport9TupleTypeES2_NSF_6detail16TupleTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v4, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler11TorchImport9TupleTypeES2_NSE_6detail16TupleTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id, "Torchimport.tuple", 17);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler11TorchImport9TupleTypeES2_NSF_6detail16TupleTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v9 = *(a2 + 8);
    v10 = 8 * v6;
    do
    {
      if (*v9)
      {
        result = a5(a6);
      }

      ++v9;
      v10 -= 8;
    }

    while (v10);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler11TorchImport9TupleTypeES2_NSE_6detail16TupleTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >= a2[4])
  {
    v6 = a2[4];
  }

  else
  {
    v6 = a6;
  }

  return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::TorchImport::TupleType,llvm::ArrayRef<mlir::Type>>(*(**a2 + 32), a5, v6);
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::TorchImport::YieldOp>::Model(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  v5[0] = v6;
  v5[1] = 0x300000000;
  mlir::OperationName::Impl::Impl(a1, "TorchImport._yield", 0x12, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::YieldOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286EA33C0;
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::TorchImport::YieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::TorchImport::YieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::TorchImport::YieldOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::TorchImport::YieldOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::TorchImport::YieldOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::TorchImport::YieldOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::TorchImport::YieldOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::TorchImport::YieldOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::TorchImport::YieldOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[5] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 5);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::TorchImport::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::TorchImport::YieldOp::print(&v7, a3);
}

uint64_t mlir::ODIE::Compiler::TorchImport::TorchImportInlinerInterface::isLegalToInline()
{
  return 1;
}

{
  return 1;
}

void mlir::ODIE::Compiler::TorchImport::TorchImportInlinerInterface::handleTerminator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
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

  v14 = a3;
  v15 = 0;
  v16 = v5;
  v17 = 0;
  if (a4 && v6)
  {
    v7 = (v5 + 24);
    v8 = 1;
    do
    {
      v9 = mlir::ValueRange::dereference_iterator(&v14, v8 - 1);
      v10 = *v7;
      v7 += 4;
      v13 = v10;
      mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v9, &v13);
      v15 = v8;
      v17 = v8;
      if (a4 == v8)
      {
        break;
      }
    }

    while (v6 != v8++);
  }

  v12 = *MEMORY[0x277D85DE8];
}

BOOL mlir::ODIE::Compiler::TorchImport::YieldOp::parse(uint64_t a1, uint64_t a2)
{
  v11[16] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x400000000;
  v8[0] = &v9;
  v8[1] = 0x100000000;
  v4 = (*(*a1 + 40))(a1);
  v5 = ((*(*a1 + 720))(a1, v10, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v8) & 1) != 0 && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 56))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && ((*(*a1 + 296))(a1) & 1) != 0 && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v10, v8, v4, a2 + 16);
  if (v8[0] != &v9)
  {
    free(v8[0]);
  }

  if (v10[0] != v11)
  {
    free(v10[0]);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void mlir::ODIE::Compiler::TorchImport::YieldOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v45[4] = *MEMORY[0x277D85DE8];
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

  v9 = (*(*a2 + 16))(a2);
  if (v7)
  {
    v10 = v9;
    (*(*a2 + 160))(a2, *(v8 + 24));
    v11 = v7 - 1;
    if (v11)
    {
      v12 = (v8 + 56);
      do
      {
        v13 = *(v10 + 4);
        if (*(v10 + 3) - v13 > 1uLL)
        {
          *v13 = 8236;
          *(v10 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v10, ", ", 2uLL);
        }

        v14 = *v12;
        v12 += 4;
        (*(*a2 + 160))(a2, v14);
        --v11;
      }

      while (v11);
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v45, 0);
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
    llvm::raw_ostream::write(v18, ":", 1uLL);
  }

  else
  {
    *v19 = 58;
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

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, "(", 1uLL);
  }

  else
  {
    *v23 = 40;
    ++*(v22 + 4);
  }

  v24 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v25 = *(v24 + 17);
    if (v25)
    {
      v26 = *(v24 + 9);
      (*(*a2 + 32))(a2, *(*(v26 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v25 != 1)
      {
        v27 = v25 - 1;
        v28 = (v26 + 56);
        do
        {
          v29 = (*(*a2 + 16))(a2);
          v30 = *(v29 + 4);
          if (*(v29 + 3) - v30 > 1uLL)
          {
            *v30 = 8236;
            *(v29 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v29, ", ", 2uLL);
          }

          v31 = *v28;
          v28 += 4;
          (*(*a2 + 32))(a2, *(v31 + 8) & 0xFFFFFFFFFFFFFFF8);
          --v27;
        }

        while (v27);
      }
    }
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (*(v32 + 3) == v33)
  {
    llvm::raw_ostream::write(v32, ")", 1uLL);
  }

  else
  {
    *v33 = 41;
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
  if (*(v36 + 3) - v37 > 1uLL)
  {
    *v37 = 15917;
    *(v36 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v36, "->", 2uLL);
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
  if (*(v40 + 3) == v41)
  {
    llvm::raw_ostream::write(v40, "(", 1uLL);
  }

  else
  {
    *v41 = 40;
    ++*(v40 + 4);
  }

  v42 = (*(*a2 + 16))(a2);
  v43 = *(v42 + 4);
  if (*(v42 + 3) == v43)
  {
    llvm::raw_ostream::write(v42, ")", 1uLL);
  }

  else
  {
    *v43 = 41;
    ++*(v42 + 4);
  }

  v44 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::TorchImportToCorePass::~TorchImportToCorePass(_anonymous_namespace_::TorchImportToCorePass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::impl::TorchImportToCoreBase<anonymous namespace::TorchImportToCorePass>::getDependentDialects(uint64_t a1, uint64_t a2)
{
  mlir::DialectRegistry::insert<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(a2);
  mlir::DialectRegistry::insert<mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect>(a2);

  return mlir::DialectRegistry::insert<mlir::ODIE::Compiler::TorchImport::TorchImportDialect>(a2);
}

uint64_t anonymous namespace::TorchImportToCorePass::runOnOperation(_anonymous_namespace_::TorchImportToCorePass *this)
{
  v1 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v4[0] = *(***(v1 + 24) + 32);
  memset(&v4[1], 0, 24);
  v3[0] = this;
  v3[1] = v4;
  v5 = v3;
  return mlir::detail::walk<mlir::ForwardIterator>(v1, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_121TorchImportToCorePass14runOnOperationEvE3__0NS1_19FunctionOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v5, 1);
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_121TorchImportToCorePass14runOnOperationEvE3__0NS1_19FunctionOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t **a1, uint64_t a2)
{
  v12[25] = *MEMORY[0x277D85DE8];
  v3 = llvm::DefaultDoCastIfPossible<mlir::FunctionOpInterface,mlir::Operation *,llvm::CastInfo<mlir::FunctionOpInterface,mlir::Operation *,void>>::doCastIfPossible(a2);
  if (v3)
  {
    v5 = v3;
    v6 = **a1;
    if (*(*(v3 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FuncOp,void>::id)
    {
      mlir::ODIE::Compiler::createGraphOpFromFunc((*a1)[1], v3, v4);
    }

    v7 = (**(v4 + 48))();
    if (*v7 != v7)
    {
      v8 = *(v5 + 24);
      v10[16] = 257;
      emitDiag(v8, 2, v10, &v11);
      if (v11)
      {
        mlir::Diagnostic::operator<<<98ul>(v12, " encountered a function with definition. Lowering for functions with bodies is not supported yet.");
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
      *(v6 + 40) |= 4uLL;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t anonymous namespace::TorchImportToCorePass::convertBlock(_anonymous_namespace_::TorchImportToCorePass *this, mlir::Block *a2, mlir::OpBuilder *a3)
{
  v3 = a2;
  v356[1] = *MEMORY[0x277D85DE8];
  v4 = *(this + 5);
  v5 = this + 32;
  if (v4 != this + 32)
  {
    v6 = &mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id;
    v7 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceArgmaxOp,void>::id;
    v306 = this + 32;
    while (1)
    {
      v8 = *(v4 + 1);
      *(v3 + 2) = *(v4 + 2);
      *(v3 + 3) = v4;
      v9 = *(v4 + 6);
      v10 = v9[2];
      if (v10 == v6)
      {
        break;
      }

      if (v10 == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
      {
        if (v4[46] < 0)
        {
          v37 = *(v4 + 17);
          v38 = *(v4 + 9);
        }

        else
        {
          v38 = 0;
          v37 = 0;
        }

        v39 = *(v4 + 3);
        *&v329 = v38;
        *(&v329 + 1) = v37;
        v40 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::OutputOp,mlir::OperandRange>(v3, v39, &v329);
        v41 = *(v4 + 9);
        v42 = v4 - 16;
        if (!v41)
        {
          v42 = 0;
        }

        __s1 = v42;
        v325 = v41;
        v43 = *(v40 + 9);
        v44 = v40 - 16;
        if (!v43)
        {
          v44 = 0;
        }

        *&v329 = v44;
        *(&v329 + 1) = v43;
        mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&__s1, &v329);
        if (*(v4 + 2))
        {
          *(v4 + 2) = 0;
          v46 = *v4;
          v45 = *(v4 + 1);
          *v45 = *v4;
          *(v46 + 8) = v45;
          *v4 = 0;
          *(v4 + 1) = 0;
        }

        mlir::Operation::destroy(v4);
        goto LABEL_51;
      }

      if (v10 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,void>::id)
      {
        v11 = *&v4[32 * *(v4 + 10) + 72 + 16 * ((*(v4 + 11) >> 23) & 1) + ((*(v4 + 11) >> 21) & 0x7F8)];
        if (v11)
        {
          v12 = (v11 - 8);
        }

        else
        {
          v12 = 0;
        }

        {
          goto LABEL_527;
        }

        v9 = *(v4 + 6);
        v10 = v9[2];
      }

      if (v10 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IfOp,void>::id)
      {
        v47 = *(v4 + 11);
        if ((v47 & 0x7FFFFF) != 0)
        {
          v48 = &v4[32 * *(v4 + 10) + 72 + 16 * ((v47 >> 23) & 1) + ((v47 >> 21) & 0x7F8)];
          v49 = 24 * (v47 & 0x7FFFFF);
          do
          {
            if (*v48)
            {
              v50 = (*v48 - 8);
            }

            else
            {
              v50 = 0;
            }

            {
              goto LABEL_527;
            }

            v48 += 24;
            v49 -= 24;
          }

          while (v49);
          v9 = *(v4 + 6);
        }
      }

      v13 = *(v4 + 3);
      v314 = *v3;
      v317 = v13;
      v315 = *(v4 + 2);
      v316 = v4;
      if (v9[2] == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        v14 = (v9[1] + 32);
      }

      else
      {
        v14 = v9 + 3;
      }

      v51 = *v14;
      if (!v51 || *(v51 + 24) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TorchImportDialect,void>::id)
      {
        goto LABEL_51;
      }

      v312 = v4;
      v313 = &v314;
      *&v329 = v9;
      v52 = mlir::OperationName::stripDialect(&v329);
      if (v53 == 3 && *v52 == 25185 && *(v52 + 2) == 115)
      {
        v308 = v8;
        v103 = v7;
        v105 = v312;
        v104 = v313;
        v106 = *(*(v312 + 6) + 8);
        v108 = *(v106 + 16);
        v107 = *(v106 + 24);
        if ((v312[46] & 0x80) == 0 || *(v312 + 17) != 1 || *(v312 + 9) != 1)
        {
          v116 = v313[4];
          v328 = 1283;
          __s1 = "expects 1 input and 1 output for ";
          v326 = v108;
          v327 = v107;
          emitDiag(v116, 2, &__s1, &v329);
          v117 = v340;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v329);
          v7 = v103;
          v8 = v308;
          if (v117)
          {
            goto LABEL_527;
          }

          goto LABEL_51;
        }

        __src = *(*(v312 + 9) + 24);
        v109 = *(v312 - 1);
        v110 = v313[4];
        v332[0] = 1283;
        *&v329 = "expected ranked output from ";
        v330 = v108;
        v331 = v107;
        mlir::ODIE::Compiler::getShapedRankedType((v109 & 0xFFFFFFFFFFFFFFF8), v110, &v329, &__s1);
        if (v326 != 1)
        {
          goto LABEL_527;
        }

        *&v329 = getAbsOps(v104, v108, v107, &__src, &__s1);
        BYTE8(v329) = v111;
        v112 = *(v105 + 9);
        if (v112)
        {
          v113 = (v105 - 2);
        }

        else
        {
          v113 = 0;
        }

        mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v113, v112, &v329, 1);
        if (v105[2])
        {
          v105[2] = 0;
          v115 = *v105;
          v114 = v105[1];
          *v114 = *v105;
          *(v115 + 8) = v114;
          *v105 = 0;
          v105[1] = 0;
        }

        mlir::Operation::destroy(v105);
        v7 = v103;
        goto LABEL_30;
      }

      *&v329 = *(v312 + 6);
      v55 = mlir::OperationName::stripDialect(&v329);
      if (v56 == 3 && *v55 == 25697 && *(v55 + 2) == 100)
      {
        if ((replaceBinaryOp<mlir::ODIE::Compiler::CoreML::AddOp,true>(v313, v312) & 1) == 0)
        {
          goto LABEL_527;
        }

        goto LABEL_51;
      }

      *&v329 = *(v312 + 6);
      v58 = mlir::OperationName::stripDialect(&v329);
      if (v59 == 5 && *v58 == 1835295841 && *(v58 + 4) == 109)
      {
        v309 = v8;
        v118 = v312;
        v119 = v313;
        v120 = *(*(v312 + 9) + 24);
        v320[0] = v120;
        *&v329 = "expected ranked tensor bias input to addmm";
        v332[0] = 259;
        mlir::ODIE::Compiler::getShapedRankedType(v120, &v329, &__s1);
        if (v326 != 1)
        {
          goto LABEL_527;
        }

        v121 = *(v118[9] + 56);
        *&v329 = "expected ranked tensor mat1 input to addmm";
        v332[0] = 259;
        mlir::ODIE::Compiler::getShapedRankedType(v121, &v329, &__s1);
        if (v326 != 1)
        {
          goto LABEL_527;
        }

        v122 = *(v118[9] + 88);
        *&v329 = "expected ranked tensor mat2 input to addmm";
        v332[0] = 259;
        mlir::ODIE::Compiler::getShapedRankedType(v122, &v329, &__s1);
        if (v326 != 1)
        {
          goto LABEL_527;
        }

        inserted = insertMatmul(v119, v121, v122);
        if ((v124 & 1) == 0)
        {
          goto LABEL_527;
        }

        v125 = inserted;
        v302 = v119;
        v318[0] = inserted;
        if ((*(inserted + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v126 = (*(inserted + 8) & 0xFFFFFFFFFFFFFFF8);
          v127 = *v126;
          v128 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
          v129 = mlir::detail::InterfaceMap::lookup(v127 + 8, v128);
        }

        else
        {
          v126 = 0;
          v129 = 0;
        }

        v149 = (*(v120 + 8) & 0xFFFFFFFFFFFFFFF8);
        v300 = v118;
        if (v149)
        {
          v150 = *v149;
          v151 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
          v152 = mlir::detail::InterfaceMap::lookup(v150 + 8, v151);
        }

        else
        {
          v152 = 0;
        }

        __s1 = &v326;
        v325 = 0x600000000;
        v153 = (*(v152 + 24))(v152, v149);
        v155 = v154;
        v156 = (*(v129 + 24))(v129, v126);
        if (mlir::OpTrait::util::getBroadcastedShape(v153, v155, v156, v157, &__s1))
        {
          (*(v152 + 24))(v152, v149);
          v159 = v158;
          (*(v129 + 24))(v129, v126);
          if (v159 == v160)
          {
LABEL_300:
            v166 = (*(v152 + 24))(v152, v149);
            v6 = &mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id;
            v3 = a2;
            v8 = v309;
            v7 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceArgmaxOp,void>::id;
            if (v167 != v325 || memcmp(__s1, v166, 8 * v325))
            {
              __src = v320[0];
              v352 = v125;
              mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, v302, &v329);
              if (v333 != 1)
              {
                v173 = 0;
                goto LABEL_368;
              }

              v320[0] = *v329;
              __src = (*(v320[0] + 8) & 0xFFFFFFFFFFFFFFF8);
              llvm::cast<mlir::ShapedType,mlir::Type>(&__src);
              if ((v333 & 1) != 0 && v329 != &v330)
              {
                free(v329);
              }
            }

            v168 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::Value &,mlir::Value &>(v302, v302[4], v318, v320);
            v169 = v300[9];
            v170 = (v300 - 4);
            if (!v169)
            {
              v170 = 0;
            }

            __src = v170;
            v352 = v169;
            v171 = *(v168 + 9);
            v172 = v168 - 16;
            if (!v171)
            {
              v172 = 0;
            }

            *&v329 = v172;
            *(&v329 + 1) = v171;
            mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&__src, &v329);
            mlir::Operation::erase(v300);
            v173 = 1;
          }

          else
          {
            v161 = (*(v129 + 24))(v129, v126);
            v163 = mlir::ODIE::Compiler::reshapeWithOnesForBroadcast(v302, v120, v161, v162);
            if (v164)
            {
              v320[0] = v163;
              *&v329 = *(v163 + 1) & 0xFFFFFFFFFFFFFFF8;
              v149 = llvm::cast<mlir::ShapedType,mlir::Type>(&v329);
              v152 = v165;
              goto LABEL_300;
            }

            v173 = 0;
            v6 = &mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id;
            v3 = a2;
            v8 = v309;
            v7 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceArgmaxOp,void>::id;
          }

LABEL_368:
          if (__s1 != &v326)
          {
            free(__s1);
          }

          if ((v173 & 1) == 0)
          {
            goto LABEL_527;
          }

          goto LABEL_51;
        }

        if ((~*(v120 + 8) & 7) != 0)
        {
          v174 = v120;
        }

        else
        {
          v174 = 0;
        }

        v6 = &mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id;
        v3 = a2;
        v8 = v309;
        v7 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceArgmaxOp,void>::id;
        if (v174)
        {
          v175 = *(v174 + 8) & 7;
          if (v175 == 6)
          {
            v176 = v174 + 24 * *(v174 + 16) + 120;
            if (!v176)
            {
              goto LABEL_317;
            }
          }

          else
          {
            v176 = v174 + 16 * v175 + 16;
          }

          v177 = (v176 + 24);
        }

        else
        {
LABEL_317:
          v177 = (v120 + 32);
        }

        v209 = *v177;
        __src = "Can't broadcast incompatible shapes";
        v355 = 259;
        emitDiag(v209, 2, &__src, &v329);
        v173 = v340 ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v329);
        goto LABEL_368;
      }

      *&v329 = *(v312 + 6);
      v61 = mlir::OperationName::stripDialect(&v329);
      if (v62 == 5 && *v61 == 1634298977 && *(v61 + 4) == 115)
      {
        if ((replaceWithInput(v61, v312) & 1) == 0)
        {
          goto LABEL_527;
        }

        goto LABEL_51;
      }

      *&v329 = *(v312 + 6);
      v64 = mlir::OperationName::stripDialect(&v329);
      if (v65 == 3 && *v64 == 28257 && *(v64 + 2) == 121)
      {
        v130 = v312;
        if (v312[46] < 0 && *(v312 + 17) == 1)
        {
          v310 = v8;
          v131 = v7;
          v132 = v313;
          v133 = *(*(v312 + 9) + 24);
          AxesForTotalReduction = getAxesForTotalReduction(v313, v133);
          if (v135)
          {
            v136 = AxesForTotalReduction;
            LOBYTE(v329) = 0;
            v137 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(v132, &v329, 1);
            v138 = replaceAnyImpl(v132, v130, v133, v136, v137);
            v7 = v131;
            v8 = v310;
            if (!v138)
            {
              goto LABEL_527;
            }
          }

          else
          {
            v207 = v130[3];
            v328 = 257;
            emitDiag(v207, 2, &__s1, &v329);
            if (v329)
            {
              mlir::Diagnostic::operator<<<68ul>(&v329 + 8, "Unable to get axes to reduce across all dimensions for torch.any op");
            }

            v208 = v340;
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v329);
            v8 = v310;
            if (v208)
            {
              goto LABEL_527;
            }
          }

          goto LABEL_51;
        }

        v178 = *(v312 + 3);
        v328 = 257;
        emitDiag(v178, 2, &__s1, &v329);
        if (v329)
        {
          mlir::Diagnostic::operator<<<30ul>(&v329 + 8, "Expect 1 operand only for any");
        }

        goto LABEL_341;
      }

      *&v329 = *(v312 + 6);
      v67 = mlir::OperationName::stripDialect(&v329);
      if (v68 == 7 && *v67 == 779710049 && *(v67 + 3) == 1835623470)
      {
        v139 = v312;
        if (v312[46] < 0)
        {
          v140 = *(v312 + 17);
          if ((v140 - 4) > 0xFFFFFFFD)
          {
            v192 = v8;
            v193 = v313;
            v194 = *(v312 + 9);
            if (v140 == 3)
            {
              v195 = v194[3];
              v196 = v194[7];
              v197 = v194[11];
            }

            else
            {
              LOBYTE(v329) = 0;
              v197 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(v313, &v329, 1);
              v195 = v194[3];
              v196 = v194[7];
            }

            v210 = replaceAnyImpl(v193, v139, v195, v196, v197);
            v8 = v192;
            if (!v210)
            {
              goto LABEL_527;
            }

            goto LABEL_51;
          }
        }

        v141 = *(v312 + 3);
        v328 = 257;
        emitDiag(v141, 2, &__s1, &v329);
        if (v329)
        {
          mlir::Diagnostic::operator<<<35ul>(&v329 + 8, "Expect 2 or 3 operands for any.dim");
        }

        goto LABEL_341;
      }

      *&v329 = *(v312 + 6);
      v70 = mlir::OperationName::stripDialect(&v329);
      if (v71 == 8 && *v70 == 0x736D69642E796E61)
      {
        v142 = v312;
        if (v312[46] < 0 && (v143 = *(v312 + 17), (v143 - 4) > 0xFFFFFFFD))
        {
          v198 = v313;
          v199 = *(v312 + 9);
          if (v143 == 2)
          {
            LOBYTE(v329) = 0;
            v200 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(v313, &v329, 1);
          }

          else
          {
            v200 = v199[11];
          }

          v211 = v199[7];
          v212 = *(v211 + 8);
          v213 = *(*(v212 & 0xFFFFFFFFFFFFFFF8) + 136);
          if ((v212 & 0xFFFFFFFFFFFFFFF8) != 0 && v213 == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
          {
            TupleAs1DIntTensor = getAxesForTotalReduction(v198, v199[3]);
            if (v215)
            {
              goto LABEL_412;
            }

            v216 = v142[3];
            v328 = 257;
            emitDiag(v216, 2, &__s1, &v329);
            if (v329)
            {
              mlir::Diagnostic::operator<<<73ul>(&v329 + 8, "Unable to get axes to reduce across all dimensions for torch.any.dims op");
            }
          }

          else
          {
            v217 = 0;
            if ((v212 & 0xFFFFFFFFFFFFFFF8) == 0 || v213 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id)
            {
              goto LABEL_413;
            }

            if ((~v212 & 7) == 0)
            {
              v211 = 0;
            }

            if (v211)
            {
              v218 = *(v211 + 8) & 7;
              if (v218 == 6)
              {
                v219 = v211 + 24 * *(v211 + 16) + 120;
              }

              else
              {
                v219 = v211 + 16 * v218 + 16;
              }
            }

            else
            {
              v219 = 0;
            }

            TupleAs1DIntTensor = getTupleAs1DIntTensor(v219, v198);
            if (v229)
            {
LABEL_412:
              v217 = TupleAs1DIntTensor;
LABEL_413:
              if (!replaceAnyImpl(v198, v142, v199[3], v217, v200))
              {
                goto LABEL_527;
              }

              goto LABEL_51;
            }

            v230 = v142[3];
            v328 = 257;
            emitDiag(v230, 2, &__s1, &v329);
            if (v329)
            {
              mlir::Diagnostic::operator<<<51ul>(&v329 + 8, "Unable to get axes to reduce for torch.any.dims op");
            }
          }
        }

        else
        {
          v144 = *(v312 + 3);
          v328 = 257;
          emitDiag(v144, 2, &__s1, &v329);
          if (v329)
          {
            mlir::Diagnostic::operator<<<44ul>(&v329 + 8, "Expect exactly 2 or 3 operands for any.dims");
          }
        }

        goto LABEL_341;
      }

      *&v329 = *(v312 + 6);
      v72 = mlir::OperationName::stripDialect(&v329);
      if (v73 == 6 && *v72 == 1835496033 && *(v72 + 4) == 30817)
      {
        v145 = v312;
        v146 = *(v312 + 3);
        if ((v312[46] & 0x80) == 0 || (v147 = *(v312 + 17), v147 > 3) || !v147 || *(v312 + 9) != 1)
        {
          v328 = 257;
          emitDiag(v146, 2, &__s1, &v329);
          if (v329)
          {
            mlir::Diagnostic::operator<<<37ul>(&v329 + 8, "expects 1-3 inputs and 1 output for ");
            if (v329)
            {
              v148 = v145[6];
              goto LABEL_340;
            }
          }

LABEL_341:
          v201 = v340;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v329);
          if (v201)
          {
            goto LABEL_527;
          }

          goto LABEL_51;
        }

        v308 = v8;
        v202 = v313;
        v203 = *(v312 + 9);
        v204 = *(v203 + 24);
        v323 = v204;
        if (v147 == 1)
        {
          LODWORD(v329) = 0;
          Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(v313, &v329, 1, 0);
          *&v329 = "expecting ranked tensors";
          v332[0] = 259;
          mlir::ODIE::Compiler::getShapedRankedType(v204, &v329, &__s1);
          if ((v326 & 1) == 0)
          {
            goto LABEL_527;
          }

          LODWORD(v329) = -1;
          v318[0] = mlir::ODIE::Compiler::create1DTensorConstant<int>(v202, &v329, 1);
          v356[0] = 0x8000000000000000;
          v206 = (*(v325 + 8))(v325, __s1);
          *&v329 = v356;
          *(&v329 + 1) = 1;
          __src = v206;
          v320[0] = 0;
          *&v329 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v206 + 32), &v329, &__src, v320);
          v323 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(v202, v202[4], &v329, &v323, v318) - 16;
          if ((*(v145 + 46) & 0x80) != 0)
          {
            v147 = *(v145 + 17);
            goto LABEL_394;
          }

          v304 = Tensor;
LABEL_421:
          LOBYTE(v329) = 0;
          v220 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(v202, &v329, 1);
        }

        else
        {
          Tensor = *(v203 + 56);
LABEL_394:
          v304 = Tensor;
          if (v147 < 3)
          {
            goto LABEL_421;
          }

          v220 = *(v145[9] + 88);
        }

        if (*(v145 + 9))
        {
          v231 = v145 - 2;
        }

        else
        {
          v231 = 0;
        }

        v232 = v231[1];
        v233 = *(v145[6] + 8);
        v235 = *(v233 + 16);
        v234 = *(v233 + 24);
        v328 = 1283;
        __s1 = "output of ";
        v326 = v235;
        v327 = v234;
        *&v329 = &__s1;
        v330 = " must be ranked.";
        v332[0] = 770;
        mlir::ODIE::Compiler::getShapedRankedType((v232 & 0xFFFFFFFFFFFFFFF8), v146, &v329, v318);
        if (v319 != 1)
        {
          goto LABEL_527;
        }

        v236 = v202[4];
        v237 = mlir::RegisteredOperationName::lookup(v7, *(**v236 + 32));
        if ((v238 & 1) == 0)
        {
          v355 = 1283;
          v353 = "coreml.reduce_argmax";
          v354 = 20;
          v321 = 259;
          llvm::operator+(&__src, v320, &__s1);
          llvm::report_fatal_error(&__s1, 1);
        }

        *&v329 = v236;
        *(&v329 + 1) = v237;
        v330 = v332;
        v331 = 0x400000000;
        v333 = v335;
        v334 = 0x400000000;
        v336 = v338;
        v337 = 0x400000000;
        v339 = 4;
        v340 = &v342;
        v341 = 0x100000000;
        v343 = &v345;
        v344 = 0x100000000;
        v346 = 0;
        v347 = 0;
        v348 = &mlir::detail::TypeIDResolver<void,void>::id;
        v349 = 0;
        v350 = 0;
        mlir::ODIE::Compiler::CoreML::ReduceArgmaxOp::build(v202, &v329, v318[0], v323, v304, v220);
        v239 = mlir::Operation::create(&v329);
        mlir::OpBuilder::insert(v202, v239);
        v240 = *(*(v239 + 6) + 16);
        mlir::OperationState::~OperationState(&v329);
        if (v240 == v7)
        {
          v241 = v239;
        }

        else
        {
          v241 = 0;
        }

        *&v329 = v241 - 16;
        v242 = *(v145 + 9);
        if (v242)
        {
          v243 = (v145 - 2);
        }

        else
        {
          v243 = 0;
        }

        mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v243, v242, &v329, 1);
        if (v145[2])
        {
          v145[2] = 0;
          v245 = *v145;
          v244 = v145[1];
          *v244 = *v145;
          *(v245 + 8) = v244;
          *v145 = 0;
          v145[1] = 0;
        }

        mlir::Operation::destroy(v145);
LABEL_30:
        v8 = v308;
        goto LABEL_51;
      }

      *&v329 = *(v312 + 6);
      v75 = mlir::OperationName::stripDialect(&v329);
      if (v76 == 17)
      {
        v77 = *v75 == 0x732E65676E617261 && *(v75 + 8) == 0x6574735F74726174;
        if (v77 && *(v75 + 16) == 112)
        {
          v179 = v312;
          v180 = v313;
          v181 = *(v312 + 3);
          v318[0] = v181;
          if (*(v312 + 9) != 1 || (v312[46] & 0x80) == 0 || (*(v312 + 17) & 0xFFFFFFFE) != 2)
          {
            v328 = 257;
            emitDiag(v181, 2, &__s1, &v329);
            if (!v329)
            {
              goto LABEL_341;
            }

            mlir::Diagnostic::operator<<<37ul>(&v329 + 8, "expects 2-3 inputs and 1 output for ");
LABEL_338:
            if (v329)
            {
              v148 = v179[6];
LABEL_340:
              mlir::Diagnostic::operator<<(&v329 + 8, v148);
            }

            goto LABEL_341;
          }

          __src = v313;
          v352 = v318;
          v182 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v312 - 1) & 0xFFFFFFFFFFFFFFF8));
          v320[0] = v182;
          v320[1] = v183;
          v303 = v183;
          if (!v182)
          {
            v221 = v179[3];
            v328 = 257;
            emitDiag(v221, 2, &__s1, &v329);
            if (!v329)
            {
              goto LABEL_341;
            }

            mlir::Diagnostic::operator<<<41ul>(&v329 + 8, "expected shaped type for the output for ");
            goto LABEL_338;
          }

          v184 = v182;
          v308 = v8;
          v185 = *(v179[9] + 24);
          *&v329 = "expected ranked tensor for start.";
          v332[0] = 259;
          mlir::ODIE::Compiler::getShapedRankedType(v185, &v329, &__s1);
          if ((v326 & 1) == 0)
          {
            goto LABEL_527;
          }

          v186 = *(v179[9] + 56);
          *&v329 = "expected ranked tensor for end.";
          v332[0] = 259;
          mlir::ODIE::Compiler::getShapedRankedType(v186, &v329, &__s1);
          if ((v326 & 1) == 0)
          {
            goto LABEL_527;
          }

          v301 = replaceRange(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_0::operator()(&__src, v185, v184, v303);
          v188 = v187;
          v299 = replaceRange(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_0::operator()(&__src, v186, v184, v303);
          v190 = v189;
          if ((*(v179 + 46) & 0x80) != 0 && *(v179 + 17) == 3)
          {
            v191 = *(v179[9] + 88);
            *&v329 = "expected ranked tensor for step.";
            v332[0] = 259;
            mlir::ODIE::Compiler::getShapedRankedType(v191, &v329, &__s1);
            if ((v326 & 1) == 0)
            {
              goto LABEL_527;
            }
          }

          else
          {
            LODWORD(v329) = 1;
            v191 = mlir::ODIE::Compiler::createTensorConstant<int>(v180, &v329, 1, 0);
          }

          v222 = replaceRange(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_0::operator()(&__src, v191, v184, v303);
          if ((v188 & 1) == 0 || (v190 & 1) == 0 || (v223 & 1) == 0)
          {
LABEL_527:
            result = 0;
            goto LABEL_528;
          }

          v322 = v222;
          v323 = v301;
          v356[0] = v299;
          v224 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::RangeOp,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &>(v180, v180[4], v320, &v323, v356, &v322);
          v225 = *(v179 + 9);
          if (v225)
          {
            v226 = v179 - 2;
          }

          else
          {
            v226 = 0;
          }

          __s1 = v226;
          v325 = v225;
          v227 = *(v224 + 9);
          v228 = v224 - 16;
          if (!v227)
          {
            v228 = 0;
          }

          *&v329 = v228;
          *(&v329 + 1) = v227;
          mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&__s1, &v329);
          mlir::Operation::erase(v179);
          v6 = &mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id;
          goto LABEL_30;
        }
      }

      *&v329 = *(v312 + 6);
      v79 = mlir::OperationName::stripDialect(&v329);
      if (v80 == 4 && *v79 == 1936679777)
      {
        if ((replaceUnaryOp<mlir::ODIE::Compiler::CoreML::AcosOp>(v313, v312) & 1) == 0)
        {
          goto LABEL_527;
        }
      }

      else
      {
        *&v329 = *(v312 + 6);
        v81 = mlir::OperationName::stripDialect(&v329);
        if (v82 == 5 && (*v81 == 1936679777 ? (v83 = *(v81 + 4) == 104) : (v83 = 0), v83))
        {
          if ((replaceUnaryOp<mlir::ODIE::Compiler::CoreML::AcoshOp>(v313, v312) & 1) == 0)
          {
            goto LABEL_527;
          }
        }

        else
        {
          *&v329 = *(v312 + 6);
          v84 = mlir::OperationName::stripDialect(&v329);
          if (v85 == 4 && *v84 == 1852404577)
          {
            if ((replaceUnaryOp<mlir::ODIE::Compiler::CoreML::AsinOp>(v313, v312) & 1) == 0)
            {
              goto LABEL_527;
            }
          }

          else
          {
            *&v329 = *(v312 + 6);
            v86 = mlir::OperationName::stripDialect(&v329);
            if (v87 == 5 && (*v86 == 1852404577 ? (v88 = *(v86 + 4) == 104) : (v88 = 0), v88))
            {
              LOBYTE(v100) = replaceUnaryOp<mlir::ODIE::Compiler::CoreML::AsinhOp>(v313, v312);
            }

            else
            {
              *&v329 = *(v312 + 6);
              v89 = mlir::OperationName::stripDialect(&v329);
              if (v90 == 4 && *v89 == 1851880545)
              {
                if ((replaceUnaryOp<mlir::ODIE::Compiler::CoreML::AtanOp>(v313, v312) & 1) == 0)
                {
                  goto LABEL_527;
                }

                goto LABEL_51;
              }

              *&v329 = *(v312 + 6);
              v91 = mlir::OperationName::stripDialect(&v329);
              if (v92 == 5 && *v91 == 1851880545 && *(v91 + 4) == 104)
              {
                if ((replaceUnaryOp<mlir::ODIE::Compiler::CoreML::AtanhOp>(v313, v312) & 1) == 0)
                {
                  goto LABEL_527;
                }

                goto LABEL_51;
              }

              *&v329 = *(v312 + 6);
              v94 = mlir::OperationName::stripDialect(&v329);
              if (v95 == 10 && *v94 == 0x6C6F6F705F677661 && *(v94 + 8) == 25650)
              {
                if ((replaceAvgPool2d(v313, v312) & 1) == 0)
                {
                  goto LABEL_527;
                }

                goto LABEL_51;
              }

              *&v329 = *(v312 + 6);
              v97 = mlir::OperationName::stripDialect(&v329);
              if (v98 == 11 && *v97 == 0x5F65736977746962 && *(v97 + 3) == 0x646E615F65736977)
              {
                if (!replaceBitwiseBinary<mlir::ODIE::Compiler::CoreML::BitwiseAndOp>(v313, v312))
                {
                  goto LABEL_527;
                }

                goto LABEL_51;
              }

              if (v100 < 0x100u)
              {
                if (v100 < 0x100u)
                {
                  if (v100 < 0x100u)
                  {
                    if (v100 < 0x100u)
                    {
                      if (v100 < 0x100u)
                      {
                        if (v100 < 0x100u)
                        {
                          if (v100 < 0x100u)
                          {
                            if (v100 < 0x100u)
                            {
                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              if (v101 >= 0x100u)
                              {
                                goto LABEL_418;
                              }

                              {
LABEL_418:
                                v3 = a2;
                                if ((v101 & 1) == 0)
                                {
                                  goto LABEL_527;
                                }
                              }

                              else
                              {
                                if (v102 >= 0x100u)
                                {
                                  goto LABEL_436;
                                }

                                if (v102 >= 0x100u)
                                {
                                  goto LABEL_436;
                                }

                                {
LABEL_436:
                                  v3 = a2;
                                  if ((v102 & 1) == 0)
                                  {
                                    goto LABEL_527;
                                  }
                                }

                                else
                                {
                                  v3 = a2;
                                }
                              }

                              goto LABEL_51;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            if ((v100 & 1) == 0)
            {
              goto LABEL_527;
            }
          }
        }
      }

LABEL_51:
      v4 = v8;
      if (v8 == v5)
      {
        goto LABEL_438;
      }
    }

    v308 = v8;
    v15 = v6;
    v16 = *(v4 + 11);
    v17 = *(v4 + 9);
    if (v17)
    {
      v18 = v4 - 16;
    }

    else
    {
      v18 = 0;
    }

    if ((v16 & 0x800000) != 0)
    {
      v19 = *(v4 + 17);
      v20 = *(v4 + 9) & 0xFFFFFFFFFFFFFFF9 | 2;
    }

    else
    {
      v19 = 0;
      v20 = 2;
    }

    v21 = *(v4 + 3);
    v22 = *(*&v4[16 * ((v16 >> 23) & 1) + 72] + 8);
    v3 = a2;
    v23 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::InvokeOp>(a2, *(**v21 + 32));
    *&v329 = v21;
    *(&v329 + 1) = v23;
    v330 = v332;
    v331 = 0x400000000;
    v333 = v335;
    v334 = 0x400000000;
    v336 = v338;
    v337 = 0x400000000;
    v339 = 4;
    v340 = &v342;
    v341 = 0x100000000;
    v343 = &v345;
    v344 = 0x100000000;
    v346 = 0;
    v347 = 0;
    v348 = &mlir::detail::TypeIDResolver<void,void>::id;
    v349 = 0;
    v350 = 0;
    __s1 = v18;
    v325 = 0;
    v326 = v18;
    v327 = v17;
    mlir::TypeRange::TypeRange<mlir::ResultRange>(&__src, &__s1);
    v24 = __src;
    v25 = v352;
    v27 = mlir::SymbolRefAttr::get(v22, 0, 0, v26);
    mlir::ODIE::Compiler::CoreML::InvokeOp::build(v27, &v329, v27, v24, v25, v20, v19);
    v28 = mlir::Operation::create(&v329);
    mlir::OpBuilder::insert(a2, v28);
    v29 = *(*(v28 + 6) + 16);
    mlir::OperationState::~OperationState(&v329);
    if (v29 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InvokeOp,void>::id)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0;
    }

    v31 = *(v4 + 9);
    if (v31)
    {
      v32 = v4 - 16;
    }

    else
    {
      v32 = 0;
    }

    __s1 = v32;
    v325 = v31;
    v33 = *(v30 + 9);
    v34 = v30 - 16;
    if (!v33)
    {
      v34 = 0;
    }

    *&v329 = v34;
    *(&v329 + 1) = v33;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&__s1, &v329);
    if (*(v4 + 2))
    {
      *(v4 + 2) = 0;
      v36 = *v4;
      v35 = *(v4 + 1);
      *v35 = *v4;
      *(v36 + 8) = v35;
      *v4 = 0;
      *(v4 + 1) = 0;
    }

    mlir::Operation::destroy(v4);
    v6 = v15;
    v5 = v306;
    v7 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceArgmaxOp,void>::id;
    goto LABEL_30;
  }

LABEL_438:
  v246 = *(this + 5);
  if (v246 != v5)
  {
    while (1)
    {
      v247 = *(v246 + 6);
      if (*(v247 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        v248 = (*(v247 + 8) + 32);
      }

      else
      {
        v248 = (v247 + 24);
      }

      v249 = *(v246 + 1);
      v250 = *v248;
      if (v250 && *(v250 + 24) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TorchImportDialect,void>::id)
      {
        if (!mlir::Operation::use_empty(v246))
        {
          *&v329 = *(v246 + 6);
          v253 = mlir::OperationName::stripDialect(&v329);
          if (v254 <= 4 || (*v253 == 1819309428 ? (v255 = *(v253 + 4) == 101) : (v255 = 0), !v255))
          {
            *&v329 = *(v246 + 6);
            v256 = mlir::OperationName::stripDialect(&v329);
            if (v257 == 11 && !memcmp("none_create", v256, 0xBuLL))
            {
              v268 = *(v246 + 9);
              v269 = v246 - 16;
              if (v268)
              {
                v270 = v246 - 16;
              }

              else
              {
                v270 = 0;
              }

              v311 = v270;
              if (v268)
              {
                v271 = 0;
                while (1)
                {
                  v272 = v311;
                  if (!v271)
                  {
                    goto LABEL_485;
                  }

                  v273 = *(v246 - 1) & 7;
                  v274 = v246 - 16;
                  v275 = v271;
                  if (v273 == 6)
                  {
                    goto LABEL_483;
                  }

                  v276 = (5 - v273);
                  v275 = v271 - v276;
                  if (v271 > v276)
                  {
                    break;
                  }

                  v272 = &v269[-16 * v271];
LABEL_485:
                  while (1)
                  {
                    v272 = *v272;
                    if (!v272)
                    {
                      break;
                    }

                    *&v329 = *(*(v272 + 2) + 48);
                    v277 = mlir::OperationName::stripDialect(&v329);
                    if (v278 > 4 && *v277 == 1819309428 && *(v277 + 4) == 101)
                    {
                      continue;
                    }

                    v296 = *(v246 + 3);
                    v328 = 257;
                    emitDiag(v296, 2, &__s1, &v329);
                    if (v329)
                    {
                      mlir::Diagnostic::operator<<<58ul>(&v329 + 8, "could not replace all users of a TorchImport operation - ");
                      if (v329)
                      {
                        mlir::Diagnostic::operator<<(&v329 + 8, *(v246 + 6));
                        if (v329)
                        {
                          mlir::Diagnostic::operator<<<57ul>(&v329 + 8, " this indicates there is a missing or buggy legalization");
                        }
                      }
                    }

                    goto LABEL_526;
                  }

                  ++v271;
                  v3 = a2;
                  if (v271 == v268)
                  {
                    goto LABEL_459;
                  }
                }

                v274 = &v269[-16 * v276];
LABEL_483:
                v272 = &v274[-24 * v275];
                goto LABEL_485;
              }
            }

            else
            {
              v258 = *(v246 + 3);
              v328 = 257;
              emitDiag(v258, 1, &__s1, &v329);
              if (v329)
              {
                mlir::Diagnostic::operator<<<85ul>(&v329 + 8, "op has no known lowering, please provide a function that implements this operation: ");
                if (v329)
                {
                  mlir::Diagnostic::operator<<(&v329 + 8, *(v246 + 6));
                }
              }

              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v329);
            }

            goto LABEL_459;
          }

          v259 = *(v246 + 9);
          v260 = v259 ? (v246 - 16) : 0;
          if (v259)
          {
            v261 = 0;
            v262 = (v246 - 16);
            do
            {
              v263 = v260;
              if (!v261)
              {
                goto LABEL_471;
              }

              v264 = *(v246 - 1) & 7;
              v265 = (v246 - 16);
              v266 = v261;
              if (v264 != 6)
              {
                v267 = (5 - v264);
                v263 = v262;
                v266 = v261 - v267;
                if (v261 <= v267)
                {
                  goto LABEL_471;
                }

                v265 = &v246[-16 * v267 - 16];
              }

              v263 = v265 - 24 * v266;
LABEL_471:
              if (*v263)
              {
                v297 = *(v246 + 3);
                v328 = 257;
                emitDiag(v297, 2, &__s1, &v329);
                if (v329)
                {
                  mlir::Diagnostic::operator<<<129ul>(&v329 + 8, "could not replace all users of a tuple operation - this indicates there is a missing or buggy legalization. Users of tuple op: \n");
                  if (v329)
                  {
                    if (*v263)
                    {
                      mlir::Diagnostic::operator<<((&v329 + 8), *(*v263 + 16));
                    }
                  }
                }

LABEL_526:
                mlir::InFlightDiagnostic::~InFlightDiagnostic(&v329);
                goto LABEL_527;
              }

              ++v261;
              v262 -= 16;
            }

            while (v259 != v261);
          }
        }

        if (*(v246 + 2))
        {
          *(v246 + 2) = 0;
          v252 = *v246;
          v251 = *(v246 + 1);
          *v251 = *v246;
          *(v252 + 8) = v251;
          *v246 = 0;
          *(v246 + 1) = 0;
        }

        mlir::Operation::destroy(v246);
      }

LABEL_459:
      v246 = v249;
      if (v249 == v5)
      {
        v246 = *(this + 5);
        break;
      }
    }
  }

  if (v246 != v5)
  {
    do
    {
      v280 = *(v246 + 6);
      v281 = v280[2];
      if (v281 == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        v282 = (v280[1] + 32);
      }

      else
      {
        v282 = v280 + 3;
      }

      v283 = *(v246 + 1);
      v284 = *v282;
      if (v284 && *(v284 + 24) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TorchImportDialect,void>::id)
      {
        if (mlir::Operation::use_empty(v246))
        {
          goto LABEL_513;
        }
      }

      else
      {
        v285 = v281 == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id;
        if (v281 == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
        {
          v286 = v246;
        }

        else
        {
          v286 = 0;
        }

        __s1 = v286;
        if (v285)
        {
          *(v3 + 2) = *(v246 + 2);
          *(v3 + 3) = v246;
          v287 = *(v246 + 3);
          *&v329 = mlir::arith::ConstantOp::getValueAttr(&__s1);
          *(&v329 + 1) = v288;
          v289 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::TypedAttr>(v3, v287, &v329);
          if (*(v289 + 9))
          {
            v290 = v289 - 16;
          }

          else
          {
            v290 = 0;
          }

          *&v329 = v290;
          v291 = *(v246 + 9);
          if (v291)
          {
            v292 = (v246 - 16);
          }

          else
          {
            v292 = 0;
          }

          mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v292, v291, &v329, 1);
LABEL_513:
          if (*(v246 + 2))
          {
            *(v246 + 2) = 0;
            v294 = *v246;
            v293 = *(v246 + 1);
            *v293 = *v246;
            *(v294 + 8) = v293;
            *v246 = 0;
            *(v246 + 1) = 0;
          }

          mlir::Operation::destroy(v246);
        }
      }

      v246 = v283;
    }

    while (v283 != v5);
  }

  result = 1;
LABEL_528:
  v298 = *MEMORY[0x277D85DE8];
  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::OutputOp,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, void *a3)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::OutputOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v6;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[8] = 4;
  v17[9] = v18;
  v17[10] = 0x100000000;
  v18[1] = v19;
  v18[2] = 0x100000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v19[4] = 0;
  v7 = a3[1];
  v8 = *a3 & 0xFFFFFFFFFFFFFFF9;
  v19[6] = 0;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v14, v8 | 2, 0, v8 | 2, v7);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OutputOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::TypedAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v16[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConstantOp>(a1, *(**a2 + 32));
  v11[0] = a2;
  v11[1] = v6;
  v11[2] = v12;
  v11[3] = 0x400000000;
  v12[4] = v13;
  v12[5] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0x400000000;
  v14[8] = 4;
  v14[9] = v15;
  v14[10] = 0x100000000;
  v15[1] = v16;
  v15[2] = 0x100000000;
  v16[1] = 0;
  v16[2] = 0;
  v16[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v16[4] = 0;
  v16[6] = 0;
  mlir::ODIE::Compiler::CoreML::ConstantOp::build(a1, v11, *a3, *(a3 + 8));
  v7 = mlir::Operation::create(v11);
  mlir::OpBuilder::insert(a1, v7);
  if (*(*(v7 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v11);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t anonymous namespace::TorchImportToCorePass::matchAndReplaceOperation(mlir::Operation &,mlir::OpBuilder &)const::$_0::operator()(void *a1, const void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void), uint64_t a5)
{
  v15 = *(*a1 + 48);
  v10 = mlir::OperationName::stripDialect(&v15);
  if (v11 == a3 && (!v11 || !memcmp(v10, a2, v11)))
  {
    v12 = a4(a5, a1[1], *a1);
    v13 = 1;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  return v12 | (v13 << 8);
}

uint64_t replaceBinaryOp<mlir::ODIE::Compiler::CoreML::AddOp,true>(uint64_t *a1, uint64_t *a2)
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = *(a2[6] + 8);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = a2[9];
  v8 = v7[3];
  v9 = v7[7];
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 17) == 3)
  {
    v10 = v7[11];
    v11 = 1;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v12 = a2[3];
  v62 = v7[7];
  v63 = v8;
  LOWORD(v79) = 1283;
  __src = "expected ranked tensor x input to ";
  v77 = v5;
  v78 = v6;
  mlir::ODIE::Compiler::getShapedRankedType(v8, &__src, &v59);
  LOWORD(v79) = 1283;
  __src = "expected ranked tensor y input to ";
  v77 = v5;
  v78 = v6;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &__src, &v56);
  if (v61 != 1 || (v58 & 1) == 0)
  {
    goto LABEL_51;
  }

  v52 = v11;
  v51 = v10;
  v54 = v12;
  v14 = v59;
  v13 = v60;
  v15 = (*(v60 + 8))(v60, v59);
  v16 = v57;
  v53 = v56;
  v17 = (*(v57 + 8))(v57);
  PromotedType = getPromotedType(v15, v17);
  if ((v19 & 1) == 0)
  {
    v73[8] = 257;
    emitDiag(v54, 2, &v71, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<37ul>(&v76, "Unable to get promoted type between ");
    }

    v33 = (*(v13 + 8))(v13, v14);
    if (__src)
    {
      LODWORD(v71) = 4;
      v72 = v33;
      v34 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v78, &v71, 1);
      v35 = v78 + 24 * v79;
      v36 = *v34;
      *(v35 + 16) = *(v34 + 16);
      *v35 = v36;
      ++v79;
      if (__src)
      {
        mlir::Diagnostic::operator<<<6ul>(&v76, " and ");
      }
    }

    v37 = (*(v16 + 8))(v16, v53);
    if (__src)
    {
      LODWORD(v71) = 4;
      v72 = v37;
      v38 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v78, &v71, 1);
      v39 = v78 + 24 * v79;
      v40 = *v38;
      *(v39 + 16) = *(v38 + 16);
      *v39 = v40;
      ++v79;
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    goto LABEL_51;
  }

  v20 = PromotedType;
  v21 = mlir::ODIE::Compiler::castValueToElementType(a1, v8, PromotedType);
  if (v22)
  {
    v23 = v21;
    v63 = v21;
    v24 = mlir::ODIE::Compiler::castValueToElementType(a1, v9, v20);
    if (v25)
    {
      v62 = v24;
      __src = v23;
      v76 = v24;
      mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v71);
      if (v74)
      {
        v26 = *v71;
        v27 = *(v71 + 1);
        v62 = v27;
        v63 = v26;
        if (!v52)
        {
LABEL_40:
          v43 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::Value &,mlir::Value &>(a1, a1[4], &v63, &v62);
          v42 = (v43 - 16) & 0xFFFFFFFFFFFFFF00;
          v41 = (v43 - 16);
          v31 = 1;
          goto LABEL_41;
        }

        v28 = (*(v16 + 8))(v16, v53);
        v29 = mlir::ODIE::Compiler::castValueToElementType(a1, v51, v28);
        if (v30)
        {
          __src = v27;
          v76 = v29;
          mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v66);
          v31 = v70;
          if (v70)
          {
            v32 = *(v66 + 1);
            __src = *v66;
            v64[0] = v32;
            v55 = *(__src + 1) & 0xFFFFFFFFFFFFFFF8;
            v62 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, v54, &v55, &__src, v64) - 16;
          }

          else
          {
            v65 = 257;
            emitDiag(v54, 2, v64, &__src);
            if (__src)
            {
              mlir::Diagnostic::operator<<<41ul>(&v76, "Unable to broadcast RHS and alpha of op ");
              if (__src)
              {
                v65 = 261;
                v64[0] = v5;
                v64[1] = v6;
                mlir::Diagnostic::operator<<(&v76, v64);
              }
            }

            mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
          }

          if (v70 == 1 && v66 != &v68)
          {
            free(v66);
          }

          if (v31)
          {
            goto LABEL_40;
          }

          v41 = 0;
LABEL_31:
          v42 = 0;
LABEL_41:
          if (v74 == 1 && v71 != v73)
          {
            free(v71);
          }

          __src = (v42 | v41);
          LOBYTE(v76) = v31;
          if (v31)
          {
            v44 = *(a2 + 9);
            if (v44)
            {
              v45 = (a2 - 2);
            }

            else
            {
              v45 = 0;
            }

            mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v45, v44, &__src, 1);
            if (a2[2])
            {
              a2[2] = 0;
              v47 = *a2;
              v46 = a2[1];
              *v46 = *a2;
              *(v47 + 8) = v46;
              *a2 = 0;
              a2[1] = 0;
            }

            mlir::Operation::destroy(a2);
            result = 1;
            goto LABEL_52;
          }

LABEL_51:
          result = 0;
LABEL_52:
          v49 = *MEMORY[0x277D85DE8];
          return result;
        }

        v69 = 257;
        emitDiag(v54, 2, &v66, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<49ul>(&v76, "Failed to cast alpha to rhs element type for op ");
          if (__src)
          {
            v69 = 261;
            v66 = v5;
            v67 = v6;
            mlir::Diagnostic::operator<<(&v76, &v66);
          }
        }
      }

      else
      {
        v69 = 257;
        emitDiag(v54, 2, &v66, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<37ul>(&v76, " Unable to broadcast LHS and RHS of ");
          if (__src)
          {
            v69 = 261;
            v66 = v5;
            v67 = v6;
            mlir::Diagnostic::operator<<(&v76, &v66);
            if (__src)
            {
              mlir::Diagnostic::operator<<<4ul>(&v76, " op");
            }
          }
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
      v41 = 0;
      v31 = 0;
      goto LABEL_31;
    }
  }

  v50 = std::__throw_bad_optional_access[abi:nn200100]();
  return replaceWithInput(v50);
}

uint64_t replaceWithInput(uint64_t a1, uint64_t *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v3 = a2 + 9;
    v4 = *(a2 + 17);
    if (v4 == *(a2 + 9))
    {
      v58 = a2[9];
      *&v59 = v58;
      *(&v59 + 1) = v4;
      v5 = a2 - 2;
      v6 = (a2 - 2);
      if (v4)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

LABEL_38:
    v46 = a2[3];
    v57 = 257;
    emitDiag(v46, 2, &v53, &v58);
    if (v58)
    {
      mlir::Diagnostic::operator<<(&v58 + 8, a2[6]);
      if (v58)
      {
        mlir::Diagnostic::operator<<<96ul>(&v58 + 8, " cannot replace an op with its operands if the number of operands and results don't match, got ");
      }
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v47 = *(a2 + 17);
    }

    else
    {
      v47 = 0;
    }

    LODWORD(v53) = v47;
    v48 = mlir::InFlightDiagnostic::operator<<<unsigned int>(&v58, &v53);
    v49 = v48;
    if (*v48)
    {
      mlir::Diagnostic::operator<<<6ul>((v48 + 1), " vs. ");
    }

    v52 = *v3;
    v45 = *(mlir::InFlightDiagnostic::operator<<<unsigned int>(v49, &v52) + 200);
    goto LABEL_46;
  }

  v3 = a2 + 9;
  if (*(a2 + 9))
  {
    goto LABEL_38;
  }

  v4 = 0;
  v58 = 0u;
  v59 = 0u;
  v5 = a2 - 2;
LABEL_4:
  v6 = 0;
LABEL_5:
  v53 = v6;
  v54 = 0;
  v55 = v6;
  v56 = v4;
  if (!mlir::ValueTypeRange<mlir::OperandRange>::operator==<mlir::ValueTypeRange<mlir::ResultRange>>(&v58, &v53))
  {
    v14 = a2[3];
    v57 = 257;
    emitDiag(v14, 2, &v53, &v58);
    if (v58)
    {
      mlir::Diagnostic::operator<<(&v58 + 8, a2[6]);
      if (v58)
      {
        mlir::Diagnostic::operator<<<54ul>(&v58 + 8, " expected operand and result to have the same types: ");
      }
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      if (v58)
      {
        v15 = *(a2 + 17);
        if (!v15)
        {
          goto LABEL_24;
        }

        v16 = a2[9];
        v17 = *(*(v16 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
        LODWORD(v53) = 4;
        v54 = v17;
        v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v59 + 8, &v53, 1);
        v19 = *(&v59 + 1) + 24 * v60;
        v20 = *v18;
        *(v19 + 16) = *(v18 + 16);
        *v19 = v20;
        ++v60;
        if (v15 != 1)
        {
          v21 = v15 - 1;
          v22 = (v16 + 56);
          do
          {
            v53 = ", ";
            v57 = 259;
            mlir::Diagnostic::operator<<(&v58 + 8, &v53);
            v23 = *v22;
            v22 += 4;
            v24 = *(v23 + 8) & 0xFFFFFFFFFFFFFFF8;
            LODWORD(v53) = 4;
            v54 = v24;
            v25 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v59 + 8, &v53, 1);
            v26 = *(&v59 + 1) + 24 * v60;
            v27 = *v25;
            *(v26 + 16) = *(v25 + 16);
            *v26 = v27;
            ++v60;
            --v21;
          }

          while (v21);
        }

        if (v58)
        {
LABEL_24:
          mlir::Diagnostic::operator<<<5ul>(&v58 + 8, " vs ");
          v28 = *v3;
          if (v28)
          {
            v29 = v5;
          }

          else
          {
            v29 = 0;
          }

          if (v58)
          {
            if (v28)
            {
              v30 = v5[1] & 0xFFFFFFFFFFFFFFF8;
              LODWORD(v53) = 4;
              v54 = v30;
              v31 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v59 + 8, &v53, 1);
              v32 = *(&v59 + 1) + 24 * v60;
              v33 = *v31;
              *(v32 + 16) = *(v31 + 16);
              *v32 = v33;
              ++v60;
              if (v28 != 1)
              {
                v34 = v29 - 2;
                v35 = 1;
                while (1)
                {
                  v53 = ", ";
                  v57 = 259;
                  mlir::Diagnostic::operator<<(&v58 + 8, &v53);
                  v36 = v5[1] & 7;
                  v37 = v29;
                  v38 = v35;
                  if (v36 == 6)
                  {
                    goto LABEL_34;
                  }

                  v39 = (5 - v36);
                  v40 = v34;
                  v38 = v35 - v39;
                  if (v35 > v39)
                  {
                    break;
                  }

LABEL_35:
                  v41 = v40[1] & 0xFFFFFFFFFFFFFFF8;
                  LODWORD(v53) = 4;
                  v54 = v41;
                  v42 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v59 + 8, &v53, 1);
                  v43 = *(&v59 + 1) + 24 * v60;
                  v44 = *v42;
                  *(v43 + 16) = *(v42 + 16);
                  *v43 = v44;
                  ++v60;
                  ++v35;
                  v34 -= 2;
                  if (v28 == v35)
                  {
                    goto LABEL_36;
                  }
                }

                v37 = &v29[-2 * v39];
LABEL_34:
                v40 = &v37[-3 * v38];
                goto LABEL_35;
              }
            }
          }
        }
      }
    }

    else if (v58)
    {
      goto LABEL_24;
    }

LABEL_36:
    v45 = v61;
LABEL_46:
    v13 = v45 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v58);
    goto LABEL_47;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v7 = a2[9];
    v8 = *(a2 + 17);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v53 = v7;
  v54 = v8;
  v9 = *(a2 + 9);
  if (v9)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  *&v58 = v10;
  *(&v58 + 1) = v9;
  mlir::ResultRange::replaceAllUsesWith<mlir::OperandRange>(&v58, &v53);
  if (a2[2])
  {
    a2[2] = 0;
    v12 = *a2;
    v11 = a2[1];
    *v11 = *a2;
    *(v12 + 8) = v11;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  v13 = 1;
LABEL_47:
  v50 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}