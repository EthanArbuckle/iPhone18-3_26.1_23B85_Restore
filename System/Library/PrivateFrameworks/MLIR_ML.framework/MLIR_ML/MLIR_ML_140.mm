BOOL anonymous namespace::AffineInlinerInterface::isLegalToInline(_anonymous_namespace_::AffineInlinerInterface *this, mlir::Operation *a2, mlir::Region *a3, BOOL a4, mlir::IRMapping *a5)
{
  v5 = *(a3 + 2);
  {
    mlir::affine::isTopLevelValue();
  }

  if ((*(**(v5 + 48) + 32))(*(v5 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 1;
  }

  v6 = *(*(v5 + 48) + 16);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id)
  {
    return 1;
  }

  return v6 == &mlir::detail::TypeIDResolver<mlir::affine::AffineParallelOp,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::affine::AffineIfOp,void>::id;
}

uint64_t remainsLegalAfterInline(uint64_t a1, uint64_t a2, mlir::Block *a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t, void, uint64_t), uint64_t a7)
{
  v35 = *MEMORY[0x277D85DE8];
  v33 = a1;
  v34 = 0;
  if (!a2)
  {
    return 1;
  }

  v13 = 0;
  while (1)
  {
    v14 = mlir::ValueRange::dereference_iterator(&v33, v13);
    v15 = v14;
    v32 = v14;
    if ((~*(v14 + 8) & 7) != 0)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    v30 = v14;
    v31 = v16;
    if (v16)
    {
      ParentRegion = mlir::Value::getParentRegion(&v31);
    }

    else
    {
      ParentRegion = *(mlir::Value::getDefiningOp(&v32) + 16);
      if (ParentRegion)
      {
        ParentRegion = mlir::Block::getParent(ParentRegion);
      }
    }

    if (ParentRegion != a3)
    {
      goto LABEL_13;
    }

    if ((~*(v15 + 8) & 7) != 0)
    {
      break;
    }

    v18 = *(a5 + 4);
    if (!v18)
    {
      goto LABEL_3;
    }

    v19 = *a5;
    v20 = 0x9DDFEA08EB382D69 * ((8 * v15 - 0xAE502812AA7333) ^ HIDWORD(v15));
    v21 = 0x9DDFEA08EB382D69 * (HIDWORD(v15) ^ (v20 >> 47) ^ v20);
    v22 = (v18 - 1) & (-348639895 * ((v21 >> 47) ^ v21));
    v23 = *(*a5 + 16 * v22);
    if (v23 != v15)
    {
      v27 = 1;
      while (v23 != -4096)
      {
        v28 = v22 + v27++;
        v22 = v28 & (v18 - 1);
        v23 = *(v19 + 16 * v22);
        if (v23 == v15)
        {
          goto LABEL_18;
        }
      }

LABEL_3:
      if ((a6(a7, 0, a4) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

LABEL_18:
    if (v22 == v18)
    {
      goto LABEL_3;
    }

    if ((a6(a7, *(v19 + 16 * v22 + 8), a4) & 1) == 0)
    {
      return 0;
    }

LABEL_13:
    v13 = v34 + 1;
    v34 = v13;
    if (v13 == a2)
    {
      return 1;
    }
  }

  v32 = 0;
  DefiningOp = mlir::Value::getDefiningOp(&v30);
  InterfaceFor = mlir::OpInterface<mlir::ShapedDimOpInterface,mlir::detail::ShapedDimOpInterfaceInterfaceTraits>::getInterfaceFor(DefiningOp);
  v26 = mlir::Value::getDefiningOp(&v30);
  v31 = &v32;
  if ((mlir::detail::constant_op_binder<mlir::Attribute>::match(&v31, v26) & 1) != 0 || InterfaceFor)
  {
    goto LABEL_13;
  }

  return 0;
}

uint64_t mlir::OpInterface<mlir::affine::AffineReadOpInterface,mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v25);
    if (!ReferencedDialect)
    {
      return 0;
    }

    {
      v24 = ReferencedDialect;
      mlir::OpInterface<mlir::affine::AffineReadOpInterface,mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::mps::detail::GRUGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>>();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::mps::detail::GRUGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>>();
    v4 = &mlir::detail::TypeIDResolver<mlir::mps::detail::GRUGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[328];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

uint64_t mlir::OpInterface<mlir::affine::AffineWriteOpInterface,mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v25);
    if (!ReferencedDialect)
    {
      return 0;
    }

    {
      v24 = ReferencedDialect;
      mlir::OpInterface<mlir::affine::AffineWriteOpInterface,mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::affine::AffineWriteOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::mps::detail::GRUGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::affine::AffineWriteOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>>();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::mps::detail::GRUGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::affine::AffineWriteOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>>();
    v4 = &mlir::detail::TypeIDResolver<mlir::mps::detail::GRUGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[358];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::ub::PoisonAttrInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ub::PoisonAttrInterface]";
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

BOOL mlir::AsmParser::parseAttribute<mlir::AffineMapAttr>(uint64_t a1, uint64_t *a2, uint64_t a3, size_t a4, size_t a5, uint64_t a6)
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = (*(*a1 + 40))(a1);
  v26 = 0;
  if (((*(*a1 + 440))(a1, &v26, a3) & 1) == 0)
  {
    return 0;
  }

  if (*(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v13 = v26;
  }

  else
  {
    v13 = 0;
  }

  *a2 = v13;
  if (v13)
  {
    mlir::NamedAttrList::append(a6, a4, a5, v13);
    return 1;
  }

  else
  {
    v24 = "invalid kind of attribute specified";
    v25 = 259;
    (*(*a1 + 24))(v27, a1, v12, &v24);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    v15 = result;
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
      result = v15;
    }

    if (v35 == 1)
    {
      if (v34 != &v35)
      {
        free(v34);
        result = v15;
      }

      v16 = __p;
      if (__p)
      {
        v17 = v33;
        v18 = __p;
        if (v33 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v33 = v16;
        operator delete(v18);
        result = v15;
      }

      v19 = v30;
      if (v30)
      {
        v20 = v31;
        v21 = v30;
        if (v31 != v30)
        {
          do
          {
            v23 = *--v20;
            v22 = v23;
            *v20 = 0;
            if (v23)
            {
              MEMORY[0x259C63150](v22, 0x1000C8077774924);
            }
          }

          while (v20 != v19);
          v21 = v30;
        }

        v31 = v19;
        operator delete(v21);
        result = v15;
      }

      if (v28 != &v29)
      {
        free(v28);
        return v15;
      }
    }
  }

  return result;
}

void composeMultiResultAffineMap(mlir::AffineMap *a1, uint64_t a2)
{
  v39[6] = *MEMORY[0x277D85DE8];
  v37 = v39;
  v38 = 0x600000000;
  v34 = v36;
  *v35 = 0x600000000;
  v31 = v33;
  v32 = 0x600000000;
  NumResults = mlir::AffineMap::getNumResults(a1);
  if (NumResults)
  {
    v5 = 0;
    v6 = NumResults;
    do
    {
      v7 = *a2;
      v8 = *(a2 + 8);
      __src = v30;
      v29 = 0x600000000;
      if (v8 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v8)
      {
        memcpy(__src, v7, 8 * v8);
        v9 = v29;
      }

      else
      {
        v9 = 0;
      }

      LODWORD(v29) = v9 + v8;
      v26.i32[0] = v5;
      v25[0].i64[0] = mlir::AffineMap::getSubMap(a1, &v26, 1uLL);
      if (v29)
      {
        v10 = __src;
        v11 = (__src + 8 * v29);
        do
        {
          while (1)
          {
            v26.i64[0] = *v10;
            DefiningOp = mlir::Value::getDefiningOp(&v26);
            if (DefiningOp)
            {
              if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
              {
                break;
              }
            }

            if (++v10 == v11)
            {
              goto LABEL_14;
            }
          }

          composeAffineMapAndOperands(v25, &__src);
          v10 = __src;
          v11 = (__src + 8 * v29);
        }

        while (v29);
      }

LABEL_14:
      mlir::affine::canonicalizeMapAndOperands(v25, &__src);
      NumDims = mlir::AffineMap::getNumDims(v25);
      v26.i64[0] = mlir::AffineMap::shiftDims(v25, v38, 0);
      v25[0].i64[0] = mlir::AffineMap::shiftSymbols(&v26, v35[0], 0);
      v14 = v29;
      if (v29 >= NumDims)
      {
        v14 = NumDims;
      }

      llvm::SmallVectorImpl<long long>::insert<long long const*,void>(&v37, &v37[8 * v38], __src, __src + 8 * v14);
      llvm::SmallVectorImpl<long long>::insert<long long const*,void>(&v34, v34 + 8 * v35[0], __src + 8 * NumDims, __src + 8 * v29);
      Result = mlir::AffineMap::getResult(v25, 0);
      if (v32 >= HIDWORD(v32))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v31 + v32) = Result;
      LODWORD(v32) = v32 + 1;
      if (__src != v30)
      {
        free(__src);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  v27.i64[1] = v34 + 8 * v35[0];
  __src = v30;
  v29 = 0x600000000;
  v26.i64[0] = v37;
  v26.i64[1] = v34;
  v27.i64[0] = &v37[8 * v38];
  v25[0] = v27;
  v25[1] = v27;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::concat_iterator<mlir::Value,mlir::Value*,mlir::Value*>,void>(&__src, &v26, v25);
  v16 = __src;
  if (&__src != a2)
  {
    if (__src != v30)
    {
      if (*a2 != a2 + 16)
      {
        free(*a2);
        v16 = __src;
      }

      *a2 = v16;
      *(a2 + 8) = v29;
      __src = v30;
      HIDWORD(v29) = 0;
      goto LABEL_35;
    }

    v17 = v29;
    v18 = *(a2 + 8);
    if (v18 >= v29)
    {
      if (v29)
      {
        memmove(*a2, __src, 8 * v29);
      }

      goto LABEL_34;
    }

    if (*(a2 + 12) < v29)
    {
      *(a2 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v18)
    {
      memmove(*a2, __src, 8 * v18);
      v19 = v29 - v18;
      if (v29 == v18)
      {
LABEL_34:
        *(a2 + 8) = v17;
LABEL_35:
        LODWORD(v29) = 0;
        v16 = __src;
        goto LABEL_36;
      }
    }

    else
    {
      v18 = 0;
      v19 = v29;
      if (!v29)
      {
        goto LABEL_34;
      }
    }

    memcpy((*a2 + 8 * v18), __src + 8 * v18, 8 * v19);
    goto LABEL_34;
  }

LABEL_36:
  if (v16 != v30)
  {
    free(v16);
  }

  v20 = v38;
  v21 = v35[0];
  v22 = v31;
  v23 = v32;
  Context = mlir::AffineMap::getContext(a1);
  *a1 = mlir::AffineMap::get(v20, v21, v22, v23, Context);
  mlir::affine::canonicalizeMapAndOperands(a1, a2);
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
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::IndexType,mlir::AffineMap &,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v22[5] = *MEMORY[0x277D85DE8];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::IndexType,mlir::AffineMap &,llvm::SmallVector<mlir::Value,6u> &>(v21, v22, v20);
  }

  mlir::OperationState::OperationState(v21, a2, v11);
  v13 = *a3;
  v14 = *a4;
  v15 = mlir::ValueRange::ValueRange(v22, *a5, *(a5 + 8));
  mlir::affine::AffineMinOp::build(v15, v21, v13, v14, v22[0], v22[1]);
  v16 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v17;
}

uint64_t llvm::SmallVectorImpl<mlir::Value>::append<llvm::concat_iterator<mlir::Value,mlir::Value*,mlir::Value*>,void>(uint64_t result, int64x2_t *a2, int64x2_t *a3)
{
  v3 = result;
  v4 = a2->i64[0];
  v5 = a2->i64[1];
  v6 = a3->i64[0];
  v7 = a3->i64[1];
  v8 = 0;
  if (a2->i64[0] != a3->i64[0] || v5 != v7)
  {
    do
    {
      if (v4 == a2[1].i64[0])
      {
        v5 += 8;
      }

      else
      {
        v4 += 8;
      }

      ++v8;
    }

    while (v4 != v6 || v5 != v7);
  }

  v10 = *(result + 8);
  if (v8 + v10 > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v18 = a3[1];
  v11 = a2[1];
  v19 = *a2;
  v20 = v11;
  v12 = (*result + 8 * v10);
  if (v19.i64[0] == v6)
  {
    goto LABEL_15;
  }

  while (1)
  {
    do
    {
      while (1)
      {
        v14 = &unk_28688D328;
        do
        {
          while (1)
          {
            v15 = *(v14 - 1);
            v16 = (v19.i64 + (*v14 >> 1));
            if (*v14)
            {
              break;
            }

            v14 += 2;
            result = v15(v16);
            if (result)
            {
              goto LABEL_21;
            }
          }

          v14 += 2;
          result = (*(*v16 + v15))();
        }

        while (!result);
LABEL_21:
        *v12 = *result;
        v17 = v19.i64[0];
        if (v19.i64[0] == v20.i64[0])
        {
          break;
        }

        v19.i64[0] += 8;
        ++v12;
        if (v17 + 8 == v6)
        {
          goto LABEL_15;
        }
      }

      if (v19.i64[1] != v20.i64[1])
      {
        v19.i64[1] += 8;
      }

      ++v12;
    }

    while (v19.i64[0] != v6);
LABEL_15:
    if (v19.i64[1] == v7)
    {
      v13 = vmovn_s64(vmvnq_s8(vceqq_s64(v20, v18)));
      if (((v13.i32[0] | v13.i32[1]) & 1) == 0)
      {
        break;
      }
    }
  }

  *(v3 + 8) += v8;
  return result;
}

uint64_t llvm::concat_iterator<mlir::Value,mlir::Value*,mlir::Value*>::getHelper<0ul>(void *a1)
{
  if (*a1 == a1[2])
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t llvm::concat_iterator<mlir::Value,mlir::Value*,mlir::Value*>::getHelper<1ul>(uint64_t a1)
{
  if (*(a1 + 8) == *(a1 + 24))
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::IndexType,mlir::AffineMap &,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v22[5] = *MEMORY[0x277D85DE8];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::IndexType,mlir::AffineMap &,llvm::SmallVector<mlir::Value,6u> &>(v21, v22, v20);
  }

  mlir::OperationState::OperationState(v21, a2, v11);
  v13 = *a3;
  v14 = *a4;
  v15 = mlir::ValueRange::ValueRange(v22, *a5, *(a5 + 8));
  mlir::affine::AffineMaxOp::build(v15, v21, v13, v14, v22[0], v22[1]);
  v16 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v17;
}

uint64_t llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<void canonicalizeMapOrSetAndOperands<mlir::AffineMap>(mlir::AffineMap *,llvm::SmallVectorImpl<mlir::Value> *)::{lambda(mlir::AffineExpr)#1}>(unint64_t **a1, uint64_t a2)
{
  v8 = a2;
  if (mlir::AffineExpr::getKind(&v8) == 6)
  {
    mlir::AffineDimExpr::AffineDimExpr(&v8, a2);
    v7 = v8;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    mlir::AffineDimExpr::AffineDimExpr(&v8, 0);
    v7 = v8;
    if (v8)
    {
LABEL_3:
      v4 = *a1;
      result = mlir::AffineDimExpr::getPosition(&v7);
      v6 = *v4;
      if ((*v4 & 1) == 0)
      {
LABEL_4:
        *(*v6 + 8 * (result >> 6)) |= 1 << result;
        return result;
      }

LABEL_12:
      *v4 = v6 & 0xFC00000000000001 | (2 * (((1 << result) | (v6 >> 1)) & ~(-1 << (v6 >> 58))));
      return result;
    }
  }

  v8 = a2;
  if (mlir::AffineExpr::getKind(&v8) != 7)
  {
    result = mlir::AffineSymbolExpr::AffineSymbolExpr(&v8, 0);
    if (!v8)
    {
      return result;
    }

LABEL_11:
    v4 = a1[1];
    result = mlir::AffineSymbolExpr::getPosition(&v8);
    v6 = *v4;
    if ((*v4 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  result = mlir::AffineSymbolExpr::AffineSymbolExpr(&v8, a2);
  if (v8)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result + 8;
  v4 = *result;
  v6 = *result & 1;
  if (v6)
  {
    v7 = 8;
    v8 = result + 8;
  }

  else
  {
    v7 = *(result + 16);
    if (!v7)
    {
      v13 = 0;
      v16 = 0;
      v27 = 0;
      goto LABEL_11;
    }

    v8 = *(result + 8);
  }

  v9 = HIDWORD(*a2);
  v10 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v9);
  LODWORD(v10) = -348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10)));
  v11 = v7 - 1;
  v12 = v10 & (v7 - 1);
  v13 = (v8 + 16 * v12);
  v14 = *v13;
  if (*a2 == *v13)
  {
LABEL_6:
    if (v6)
    {
      v15 = 8;
    }

    else
    {
      v5 = *(result + 8);
      v15 = *(result + 16);
    }

    *a4 = v13;
    *(a4 + 8) = v5 + 16 * v15;
    *(a4 + 16) = 0;
    return result;
  }

  v19 = 0;
  v20 = 1;
  while (v14 != -4096)
  {
    if (v19)
    {
      v21 = 0;
    }

    else
    {
      v21 = v14 == -8192;
    }

    if (v21)
    {
      v19 = v13;
    }

    v22 = v12 + v20++;
    v12 = v22 & v11;
    v13 = (v8 + 16 * (v22 & v11));
    v14 = *v13;
    if (*a2 == *v13)
    {
      goto LABEL_6;
    }
  }

  if (v19)
  {
    v13 = v19;
  }

  v27 = v13;
  if (v6)
  {
    v16 = 8;
  }

  else
  {
    v16 = *(result + 16);
  }

LABEL_11:
  if (4 * (v4 >> 1) + 4 >= 3 * v16)
  {
    v16 *= 2;
    goto LABEL_34;
  }

  if (v16 + ~(v4 >> 1) - *(result + 4) <= v16 >> 3)
  {
LABEL_34:
    v25 = a2;
    v26 = result;
    v23 = a3;
    v24 = a4;
    llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::grow(result, v16);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::LookupBucketFor<mlir::Value>(v26, v25, &v27);
    a2 = v25;
    result = v26;
    a3 = v23;
    a4 = v24;
    v4 = *v26;
    v13 = v27;
    v6 = *v26 & 1;
  }

  *result = (v4 & 0xFFFFFFFE | v6) + 2;
  if (*v13 != -4096)
  {
    --*(result + 4);
  }

  v17 = *a3;
  *v13 = *a2;
  v13[1] = v17;
  if (*result)
  {
    v18 = 8;
  }

  else
  {
    v5 = *(result + 8);
    v18 = *(result + 16);
  }

  *a4 = v13;
  *(a4 + 8) = v5 + 16 * v18;
  *(a4 + 16) = 1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::LookupBucketFor<mlir::Value>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 8;
LABEL_5:
    v5 = HIDWORD(*a2);
    v6 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v5);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v4 - 1;
    v8 = v6 & (v4 - 1);
    v9 = (v3 + 16 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
      *a3 = v9;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      result = 1;
      while (v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10 == -8192;
        }

        if (v14)
        {
          v12 = v9;
        }

        v15 = v8 + v13++;
        v8 = v15 & v7;
        v9 = (v3 + 16 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }

      *a3 = v9;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v9 = 0;
  result = 0;
LABEL_8:
  *a3 = v9;
  return result;
}

int *llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::grow(uint64_t a1, unsigned int a2)
{
  v32[14] = *MEMORY[0x277D85DE8];
  if (a2 >= 9)
  {
    v2 = (a2 - 1) | ((a2 - 1) >> 1);
    v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
    v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
    if ((v4 + 1) > 0x40)
    {
      a2 = v4 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (a2 > 8)
    {
      v19 = a2;
      v20 = a1;
      buffer = llvm::allocate_buffer(16 * a2, 8uLL);
      a1 = v20;
      *(v20 + 8) = buffer;
      *(v20 + 16) = v19;
    }

    else
    {
      *a1 |= 1u;
    }

    v22 = (16 * v6);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::moveFromOldBuckets(a1, v5, &v22[v5]);

    llvm::deallocate_buffer(v5, v22);
  }

  v7 = v31;
  if ((*(a1 + 8) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v8 = *(a1 + 24);
    if ((v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v23 = *(a1 + 16);
    v31[0] = *(a1 + 8);
    v31[1] = v23;
    v7 = v32;
    v8 = *(a1 + 24);
    if ((v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_10:
      v9 = *(a1 + 40);
      if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }
  }

  v24 = *(a1 + 32);
  *v7 = v8;
  v7[1] = v24;
  v7 += 2;
  v9 = *(a1 + 40);
  if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_11:
    v10 = *(a1 + 56);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v25 = *(a1 + 48);
  *v7 = v9;
  v7[1] = v25;
  v7 += 2;
  v10 = *(a1 + 56);
  if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_12:
    v11 = *(a1 + 72);
    if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v26 = *(a1 + 64);
  *v7 = v10;
  v7[1] = v26;
  v7 += 2;
  v11 = *(a1 + 72);
  if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_13:
    v12 = *(a1 + 88);
    if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  v27 = *(a1 + 80);
  *v7 = v11;
  v7[1] = v27;
  v7 += 2;
  v12 = *(a1 + 88);
  if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_14:
    v13 = *(a1 + 104);
    if ((v13 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  v28 = *(a1 + 96);
  *v7 = v12;
  v7[1] = v28;
  v7 += 2;
  v13 = *(a1 + 104);
  if ((v13 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_15:
    v14 = *(a1 + 120);
    if ((v14 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_16;
    }

LABEL_30:
    v30 = *(a1 + 128);
    *v7 = v14;
    v7[1] = v30;
    v7 += 2;
    if (a2 < 9)
    {
      return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::moveFromOldBuckets(a1, v31, v7);
    }

    goto LABEL_17;
  }

LABEL_29:
  v29 = *(a1 + 112);
  *v7 = v13;
  v7[1] = v29;
  v7 += 2;
  v14 = *(a1 + 120);
  if ((v14 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    goto LABEL_30;
  }

LABEL_16:
  if (a2 >= 9)
  {
LABEL_17:
    *a1 &= ~1u;
    v15 = a2;
    v16 = a1;
    v17 = llvm::allocate_buffer(16 * a2, 8uLL);
    a1 = v16;
    *(v16 + 8) = v17;
    *(v16 + 16) = v15;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::moveFromOldBuckets(a1, v31, v7);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::moveFromOldBuckets(int *result, unint64_t *a2, unint64_t *a3)
{
  v3 = *result;
  *result &= 1u;
  result[1] = 0;
  if (v3)
  {
    v6 = result + 34;
    v5 = result + 2;
    v7 = 112;
  }

  else
  {
    v4 = result[4];
    if (!v4)
    {
      goto LABEL_11;
    }

    v5 = *(result + 1);
    v6 = &v5[4 * v4];
    v7 = v6 - v5 - 16;
    if (v7 < 0x10)
    {
      v9 = *(result + 1);
      do
      {
LABEL_10:
        *v9 = -4096;
        v9 += 4;
      }

      while (v9 != v6);
      goto LABEL_11;
    }
  }

  v8 = (v7 >> 4) + 1;
  v9 = &v5[4 * (v8 & 0x1FFFFFFFFFFFFFFELL)];
  v10 = v5 + 4;
  v11 = v8 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    *(v10 - 2) = -4096;
    *v10 = -4096;
    v10 += 4;
    v11 -= 2;
  }

  while (v11);
  if (v8 != (v8 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_10;
  }

LABEL_11:
  while (a2 != a3)
  {
    v20 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      if (*result)
      {
        v13 = 7;
        v12 = result + 2;
      }

      else
      {
        v12 = *(result + 1);
        v13 = result[4] - 1;
      }

      v14 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
      v15 = 0x9DDFEA08EB382D69 * (HIDWORD(v20) ^ (v14 >> 47) ^ v14);
      v16 = v13 & (-348639895 * ((v15 >> 47) ^ v15));
      v17 = &v12[4 * v16];
      v18 = *v17;
      if (v20 != *v17)
      {
        v21 = 0;
        v22 = 1;
        while (v18 != -4096)
        {
          if (v21)
          {
            v23 = 0;
          }

          else
          {
            v23 = v18 == -8192;
          }

          if (v23)
          {
            v21 = v17;
          }

          v24 = v16 + v22++;
          v16 = v24 & v13;
          v17 = &v12[4 * (v24 & v13)];
          v18 = *v17;
          if (v20 == *v17)
          {
            goto LABEL_15;
          }
        }

        if (v21)
        {
          v17 = v21;
        }
      }

LABEL_15:
      v19 = a2[1];
      *v17 = v20;
      v17[1] = v19;
      *result += 2;
    }

    a2 += 2;
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<void canonicalizeMapOrSetAndOperands<mlir::IntegerSet>(mlir::IntegerSet *,llvm::SmallVectorImpl<mlir::Value> *)::{lambda(mlir::AffineExpr)#1}>(unint64_t **a1, uint64_t a2)
{
  v8 = a2;
  if (mlir::AffineExpr::getKind(&v8) == 6)
  {
    mlir::AffineDimExpr::AffineDimExpr(&v8, a2);
    v7 = v8;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    mlir::AffineDimExpr::AffineDimExpr(&v8, 0);
    v7 = v8;
    if (v8)
    {
LABEL_3:
      v4 = *a1;
      result = mlir::AffineDimExpr::getPosition(&v7);
      v6 = *v4;
      if ((*v4 & 1) == 0)
      {
LABEL_4:
        *(*v6 + 8 * (result >> 6)) |= 1 << result;
        return result;
      }

LABEL_12:
      *v4 = v6 & 0xFC00000000000001 | (2 * (((1 << result) | (v6 >> 1)) & ~(-1 << (v6 >> 58))));
      return result;
    }
  }

  v8 = a2;
  if (mlir::AffineExpr::getKind(&v8) != 7)
  {
    result = mlir::AffineSymbolExpr::AffineSymbolExpr(&v8, 0);
    if (!v8)
    {
      return result;
    }

LABEL_11:
    v4 = a1[1];
    result = mlir::AffineSymbolExpr::getPosition(&v8);
    v6 = *v4;
    if ((*v4 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  result = mlir::AffineSymbolExpr::AffineSymbolExpr(&v8, a2);
  if (v8)
  {
    goto LABEL_11;
  }

  return result;
}

void *anonymous namespace::SimplifyAffineOp<mlir::affine::AffineApplyOp>::~SimplifyAffineOp(void *a1)
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

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineApplyOp>::~SimplifyAffineOp(void *a1)
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

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineApplyOp>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v24[8] = *MEMORY[0x277D85DE8];
  v22 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(&v22);
  v19 = Value;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v6 = *(a2 + 68);
    v7 = *(a2 + 72);
    v22 = v24;
    v23 = 0x800000000;
    if (v6 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v8 = 0;
    if (v6)
    {
      v9 = v24;
      v10 = v6;
      v11 = 24;
      do
      {
        *v9++ = *(v7 + v11);
        v11 += 32;
        --v10;
      }

      while (v10);
      v12 = v23;
      v8 = v6;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v12 = 0;
    v22 = v24;
    HIDWORD(v23) = 8;
  }

  LODWORD(v23) = v12 + v8;
  composeAffineMapAndOperands(&v19, &v22);
  mlir::affine::canonicalizeMapAndOperands(&v19, &v22);
  simplifyMapWithOperands(&v19, v22, v23);
  v13 = v22;
  if (v19 == Value)
  {
    if (!v8)
    {
LABEL_16:
      v15 = 0;
      if (v22 == v24)
      {
        return v15;
      }

      goto LABEL_10;
    }

    v17 = 0;
    v18 = (v7 + 24);
    while (*v18 == *(v22 + v17))
    {
      v17 += 8;
      v18 += 4;
      if (8 * v8 == v17)
      {
        goto LABEL_16;
      }
    }
  }

  v20[1] = v23;
  v21 = v19;
  v20[0] = v22;
  v14 = mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(a3 + 1, *(a2 + 24), &v21, v20);
  (*(*a3 + 1))(a3, a2, v14);
  v15 = 1;
  v13 = v22;
  if (v22 != v24)
  {
LABEL_10:
    free(v13);
  }

  return v15;
}

void simplifyMapWithOperands(mlir::AffineMap *a1, uint64_t *a2, unint64_t a3)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x600000000;
  if (mlir::AffineMap::getNumResults(a1) > 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  Results = mlir::AffineMap::getResults(a1);
  if (v7)
  {
    v8 = Results;
    v9 = 8 * v7;
    do
    {
      v17 = *v8;
      NumDims = mlir::AffineMap::getNumDims(a1);
      NumSymbols = mlir::AffineMap::getNumSymbols(a1);
      simplifyExprAndOperands(&v17, NumDims, NumSymbols, a2, a3);
      if (v19 >= HIDWORD(v19))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v18 + v19) = v17;
      LODWORD(v19) = v19 + 1;
      ++v8;
      v9 -= 8;
    }

    while (v9);
  }

  v12 = mlir::AffineMap::getNumDims(a1);
  v13 = mlir::AffineMap::getNumSymbols(a1);
  v14 = v18;
  v15 = v19;
  Context = mlir::AffineMap::getContext(a1);
  *a1 = mlir::AffineMap::get(v12, v13, v14, v15, Context);
  if (v18 != v20)
  {
    free(v18);
  }
}

uint64_t simplifyExprAndOperands(void **a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5)
{
  v71[6] = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v69 = *a1;
  if (mlir::AffineExpr::getKind(&v69) >= 5)
  {
    result = mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v69, 0);
    v63 = v69;
    if (!v69)
    {
      return result;
    }
  }

  else
  {
    result = mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v69, v10);
    v63 = v69;
    if (!v69)
    {
      return result;
    }
  }

  LHS = mlir::AffineBinaryOpExpr::getLHS(&v63);
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v63);
  simplifyExprAndOperands(&LHS, a2, a3, a4, a5);
  simplifyExprAndOperands(&RHS, a2, a3, a4, a5);
  Kind = mlir::AffineExpr::getKind(&v63);
  AffineBinaryOpExpr = mlir::getAffineBinaryOpExpr(Kind, LHS, RHS);
  *a1 = AffineBinaryOpExpr;
  v69 = AffineBinaryOpExpr;
  if (mlir::AffineExpr::getKind(&v69) >= 5)
  {
    result = mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v69, 0);
    v63 = v69;
    if (!v69)
    {
      return result;
    }
  }

  else
  {
    result = mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v69, AffineBinaryOpExpr);
    v63 = v69;
    if (!v69)
    {
      return result;
    }
  }

  if (mlir::AffineExpr::getKind(a1) != 3 && mlir::AffineExpr::getKind(a1) != 4)
  {
    result = mlir::AffineExpr::getKind(a1);
    if (result != 2)
    {
      return result;
    }
  }

  LHS = mlir::AffineBinaryOpExpr::getLHS(&v63);
  v14 = mlir::AffineBinaryOpExpr::getRHS(&v63);
  RHS = v14;
  v69 = v14;
  if (mlir::AffineExpr::getKind(&v69) == 5)
  {
    result = mlir::AffineConstantExpr::AffineConstantExpr(&v69, v14);
    v60 = v69;
    if (!v69)
    {
      return result;
    }
  }

  else
  {
    result = mlir::AffineConstantExpr::AffineConstantExpr(&v69, 0);
    v60 = v69;
    if (!v69)
    {
      return result;
    }
  }

  result = mlir::AffineConstantExpr::getValue(&v60);
  if (result < 1)
  {
    return result;
  }

  v58 = result;
  v59 = a4;
  Context = mlir::AffineExpr::getContext(a1);
  v56 = LHS;
  v69 = v71;
  v70 = 0x300000000;
  v66 = v68;
  v67 = 0x300000000;
  v16 = 8 * a5;
  v54 = Context;
  if (a5 >= 4)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a5)
  {
    v17 = 8 * a5;
    do
    {
      v18 = *a4;
      LowerBound = getLowerBound(*a4);
      if (v70 >= HIDWORD(v70))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v21 = (v69 + 16 * v70);
      *v21 = LowerBound;
      v21[1] = v19;
      LODWORD(v70) = v70 + 1;
      UpperBound = getUpperBound(v18);
      if (v67 >= HIDWORD(v67))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v24 = (v66 + 16 * v67);
      *v24 = UpperBound;
      v24[1] = v23;
      LODWORD(v67) = v67 + 1;
      ++a4;
      v17 -= 8;
    }

    while (v17);
  }

  v65 = v56;
  if (mlir::AffineExpr::getKind(&v65) == 5)
  {
    mlir::AffineConstantExpr::AffineConstantExpr(&v65, v56);
    if (v65)
    {
      goto LABEL_29;
    }
  }

  else
  {
    mlir::AffineConstantExpr::AffineConstantExpr(&v65, 0);
    if (v65)
    {
LABEL_29:
      Value = mlir::AffineConstantExpr::getValue(&v65);
      v55 = 0;
      v25 = v66;
      if (v66 == v68)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  Value = mlir::getBoundForAffineExpr(v56, a2, a3, v69, v70, v66, v67, 0);
  v55 = v27 ^ 1;
  v25 = v66;
  if (v66 != v68)
  {
LABEL_30:
    free(v25);
  }

LABEL_31:
  if (v69 != v71)
  {
    free(v69);
  }

  v26 = LHS;
  v69 = v71;
  v70 = 0x300000000;
  v66 = v68;
  v67 = 0x300000000;
  if (a5)
  {
    v28 = v59;
    do
    {
      v29 = *v28;
      v30 = getLowerBound(*v28);
      if (v70 >= HIDWORD(v70))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v32 = (v69 + 16 * v70);
      *v32 = v30;
      v32[1] = v31;
      LODWORD(v70) = v70 + 1;
      v33 = getUpperBound(v29);
      if (v67 >= HIDWORD(v67))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v35 = (v66 + 16 * v67);
      *v35 = v33;
      v35[1] = v34;
      LODWORD(v67) = v67 + 1;
      ++v28;
      v16 -= 8;
    }

    while (v16);
  }

  v65 = v26;
  if (mlir::AffineExpr::getKind(&v65) == 5)
  {
    mlir::AffineConstantExpr::AffineConstantExpr(&v65, v26);
    v36 = v58;
    v64 = v65;
    if (v65)
    {
      goto LABEL_47;
    }
  }

  else
  {
    mlir::AffineConstantExpr::AffineConstantExpr(&v65, 0);
    v36 = v58;
    v64 = v65;
    if (v65)
    {
LABEL_47:
      BoundForAffineExpr = mlir::AffineConstantExpr::getValue(&v64);
      v38 = 0;
      v39 = Value;
      v40 = v55;
      v41 = v66;
      if (v66 == v68)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }
  }

  BoundForAffineExpr = mlir::getBoundForAffineExpr(v26, a2, a3, v69, v70, v66, v67, 1);
  v38 = v43 ^ 1;
  v39 = Value;
  v40 = v55;
  v41 = v66;
  if (v66 != v68)
  {
LABEL_48:
    free(v41);
  }

LABEL_49:
  if (v69 != v71)
  {
    free(v69);
  }

  if ((v40 | v38))
  {
    goto LABEL_52;
  }

  if (mlir::AffineExpr::getKind(&v63) == 3)
  {
    if (v39)
    {
      v45 = (v39 ^ v36) < 0 ? (v39 + 1) / v36 - 1 : v39 / v36;
    }

    else
    {
      v45 = 0;
    }

    if (BoundForAffineExpr)
    {
      v51 = (BoundForAffineExpr ^ v36) < 0 ? (BoundForAffineExpr + 1) / v36 - 1 : BoundForAffineExpr / v36;
    }

    else
    {
      v51 = 0;
    }

    if (v45 == v51)
    {
      if (v39)
      {
        v46 = v54;
        if ((v39 ^ v36) < 0)
        {
          v47 = (v39 + 1) / v36 - 1;
          goto LABEL_110;
        }

LABEL_109:
        v47 = v39 / v36;
        goto LABEL_110;
      }

      goto LABEL_108;
    }
  }

  if (mlir::AffineExpr::getKind(&v63) == 4)
  {
    if (v39)
    {
      v52 = (v39 ^ v36) < 0 ? v39 / v36 : (v39 - 1) / v36 + 1;
    }

    else
    {
      v52 = 0;
    }

    if (BoundForAffineExpr)
    {
      v53 = (BoundForAffineExpr ^ v36) < 0 ? BoundForAffineExpr / v36 : (BoundForAffineExpr - 1) / v36 + 1;
    }

    else
    {
      v53 = 0;
    }

    if (v52 == v53)
    {
      if (v39)
      {
        v46 = v54;
        if (((v39 ^ v36) & 0x8000000000000000) == 0)
        {
          v47 = (v39 - 1) / v36 + 1;
          goto LABEL_110;
        }

        goto LABEL_109;
      }

LABEL_108:
      v47 = 0;
      v46 = v54;
      goto LABEL_110;
    }
  }

  result = mlir::AffineExpr::getKind(&v63);
  if (result == 2 && v39 < v36 && BoundForAffineExpr < v36)
  {
    *a1 = LHS;
    return result;
  }

LABEL_52:
  v64 = 0;
  v65 = 0;
  v42 = LHS;
  v69 = LHS;
  if (mlir::AffineExpr::getKind(&v69) >= 5)
  {
    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v69, 0);
    v66 = v69;
    if (!v69)
    {
      goto LABEL_64;
    }

LABEL_63:
    if (mlir::AffineExpr::getKind(&v66))
    {
      goto LABEL_64;
    }

    v48 = mlir::AffineBinaryOpExpr::getLHS(&v66);
    v49 = mlir::AffineBinaryOpExpr::getRHS(&v66);
    LargestKnownDivisor = getLargestKnownDivisor(v48, v59);
    result = isNonNegativeBoundedBy(v49, v59, a5, LargestKnownDivisor);
    if ((result & 1) == 0)
    {
      LargestKnownDivisor = getLargestKnownDivisor(v49, v59);
      if (!isNonNegativeBoundedBy(v48, v59, a5, LargestKnownDivisor))
      {
        goto LABEL_64;
      }

      result = v48;
      v48 = v49;
      v49 = result;
    }

    v64 = v49;
    v65 = v48;
    if (v36 % LargestKnownDivisor || (result = mlir::AffineExpr::getKind(&v63), result != 3))
    {
      if (LargestKnownDivisor % v36)
      {
        return result;
      }

      result = mlir::AffineExpr::getKind(&v63);
      if (result != 2)
      {
        return result;
      }

      result = mlir::AffineExpr::operator%(&v64, v60);
    }

    else
    {
      result = mlir::AffineExpr::floorDiv(&v65, v60);
    }

LABEL_111:
    *a1 = result;
    return result;
  }

  mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v69, v42);
  v66 = v69;
  if (v69)
  {
    goto LABEL_63;
  }

LABEL_64:
  if (isNonNegativeBoundedBy(LHS, v59, a5, v36) && mlir::AffineExpr::getKind(&v63) == 3 || (result = getLargestKnownDivisor(LHS, v59), !(result % v36)) && (result = mlir::AffineExpr::getKind(&v63), result == 2))
  {
    v46 = mlir::AffineExpr::getContext(a1);
    v47 = 0;
LABEL_110:
    result = mlir::getAffineConstantExpr(v47, v46, v44);
    goto LABEL_111;
  }

  return result;
}

BOOL isNonNegativeBoundedBy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Value = a1;
  if (mlir::AffineExpr::getKind(&Value) != 5)
  {
    mlir::AffineConstantExpr::AffineConstantExpr(&Value, 0);
    v15 = Value;
    if (Value)
    {
      goto LABEL_3;
    }

LABEL_10:
    Value = a1;
    if (mlir::AffineExpr::getKind(&Value) == 6)
    {
      mlir::AffineDimExpr::AffineDimExpr(&Value, a1);
      v15 = Value;
      if (!Value)
      {
        return 0;
      }
    }

    else
    {
      mlir::AffineDimExpr::AffineDimExpr(&Value, 0);
      v15 = Value;
      if (!Value)
      {
        return 0;
      }
    }

    Position = mlir::AffineDimExpr::getPosition(&v15);
    v11 = mlir::affine::getForInductionVarOwner(*(a2 + 8 * Position));
    v14 = v11;
    if (v11)
    {
      v12 = v11;
      v13 = v11 + 64;
      Value = *(v11 + 2 * ((*(v11 + 11) >> 23) & 1) + 8);
      Value = mlir::AffineMapAttr::getValue(&Value);
      if (mlir::AffineMap::isSingleConstant(&Value))
      {
        Value = *&v13[16 * ((*(v12 + 11) >> 23) & 1)];
        Value = mlir::AffineMapAttr::getValue(&Value);
        if ((mlir::AffineMap::getSingleConstantResult(&Value) & 0x8000000000000000) == 0)
        {
          Value = *&v13[16 * ((*(v12 + 11) >> 23) & 1) + 16];
          Value = mlir::AffineMapAttr::getValue(&Value);
          if (mlir::AffineMap::isSingleConstant(&Value) && mlir::affine::AffineForOp::getConstantUpperBound(&v14) <= a4)
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  mlir::AffineConstantExpr::AffineConstantExpr(&Value, a1);
  v15 = Value;
  if (!Value)
  {
    goto LABEL_10;
  }

LABEL_3:
  v7 = mlir::AffineConstantExpr::getValue(&v15);
  return v7 >= 0 && v7 < a4;
}

uint64_t getLargestKnownDivisor(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  LargestKnownDivisor = mlir::AffineExpr::getLargestKnownDivisor(&v21);
  v4 = v21;
  Value = v21;
  if (mlir::AffineExpr::getKind(&Value) == 6)
  {
    mlir::AffineDimExpr::AffineDimExpr(&Value, v4);
    v20 = Value;
    if (!Value)
    {
      return LargestKnownDivisor;
    }
  }

  else
  {
    mlir::AffineDimExpr::AffineDimExpr(&Value, 0);
    v20 = Value;
    if (!Value)
    {
      return LargestKnownDivisor;
    }
  }

  Position = mlir::AffineDimExpr::getPosition(&v20);
  v7 = mlir::affine::getForInductionVarOwner(*(a2 + 8 * Position));
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v9 = v7 + 64;
  Value = *(v7 + 2 * ((*(v7 + 11) >> 23) & 1) + 8);
  Value = mlir::AffineMapAttr::getValue(&Value);
  if (mlir::AffineMap::isSingleConstant(&Value))
  {
    Value = *&v9[16 * ((*(v8 + 11) >> 23) & 1)];
    Value = mlir::AffineMapAttr::getValue(&Value);
    if (!mlir::AffineMap::getSingleConstantResult(&Value))
    {
      v24 = *&v9[16 * ((*(v8 + 11) >> 23) & 1) + 8];
      mlir::IntegerAttr::getValue(&v24, &Value);
      if (v23 > 0x40)
      {
        v19 = *Value;
        MEMORY[0x259C63150]();
        return v19;
      }

      else if (v23)
      {
        return Value << -v23 >> -v23;
      }

      else
      {
        return 0;
      }
    }
  }

  Value = *&v9[16 * ((*(v8 + 11) >> 23) & 1)];
  Value = mlir::AffineMapAttr::getValue(&Value);
  LargestKnownDivisorOfMapExprs = mlir::AffineMap::getLargestKnownDivisorOfMapExprs(&Value);
  v24 = *&v9[16 * ((*(v8 + 11) >> 23) & 1) + 8];
  mlir::IntegerAttr::getValue(&v24, &Value);
  if (v23 > 0x40)
  {
    v17 = *Value;
    MEMORY[0x259C63150]();
    if (v17 >= 0)
    {
      v12 = v17;
    }

    else
    {
      v12 = -v17;
    }

    if (LargestKnownDivisorOfMapExprs >= v12)
    {
      LargestKnownDivisor = v12;
    }

    else
    {
      LargestKnownDivisor = LargestKnownDivisorOfMapExprs;
    }

    if (LargestKnownDivisorOfMapExprs > v12)
    {
      v12 = LargestKnownDivisorOfMapExprs;
    }

    if (LargestKnownDivisor)
    {
      goto LABEL_21;
    }

    return v12;
  }

  if (v23)
  {
    v11 = Value << -v23 >> -v23;
  }

  else
  {
    v11 = 0;
  }

  if (v11 >= 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = -v11;
  }

  if (LargestKnownDivisorOfMapExprs >= v12)
  {
    LargestKnownDivisor = v12;
  }

  else
  {
    LargestKnownDivisor = LargestKnownDivisorOfMapExprs;
  }

  if (LargestKnownDivisorOfMapExprs > v12)
  {
    v12 = LargestKnownDivisorOfMapExprs;
  }

  if (!LargestKnownDivisor)
  {
    return v12;
  }

LABEL_21:
  v13 = v12 % LargestKnownDivisor;
  if (!v13)
  {
    return LargestKnownDivisor;
  }

  v14 = v13 >> __clz(__rbit64(v13));
  v15 = LargestKnownDivisor;
  do
  {
    v16 = v15 >> __clz(__rbit64(v15));
    v15 = v16 - v14;
    if (v14 > v16)
    {
      v15 = v14 - v16;
    }

    if (v14 >= v16)
    {
      v14 = v16;
    }
  }

  while (v15);
  return v14 << __clz(__rbit64(v13 | LargestKnownDivisor));
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr,mlir::Value &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::affine::AffineApplyOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

uint64_t mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineForOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v5, a2, "affine.yield", 12);
  mlir::ValueRange::ValueRange(v6, 0, 0);
  mlir::OperationState::addOperands(v5, v6[0], v6[1]);
  v3 = mlir::Operation::create(v5, v2);
  mlir::OperationState::~OperationState(v5);
  return v3;
}

void anonymous namespace::AffineForEmptyLoopFolder::~AffineForEmptyLoopFolder(_anonymous_namespace_::AffineForEmptyLoopFolder *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::AffineForEmptyLoopFolder::matchAndRewrite(uint64_t a1, uint64_t a2, void (***a3)(void))
{
  v42[4] = *MEMORY[0x277D85DE8];
  v3 = a2 + 64;
  v4 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  v5 = v4 - 8;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = *(v5 + 40);
  v7 = v5 + 32;
  if (v6 == v7 || *(v6 + 8) != v7)
  {
    return 0;
  }

  if (!*(a2 + 36))
  {
    return 1;
  }

  v10 = TrivialConstantTripCount;
  v12 = v11;
  if ((v11 & 1) != 0 && !TrivialConstantTripCount)
  {
    v13 = *(a2 + 44);
    v14 = (v3 + 16 * ((v13 >> 23) & 1));
    v15 = v14[6];
    v16 = v14[7];
    v17 = v14[8];
    if ((v13 & 0x800000) != 0)
    {
      v18 = *(a2 + 72);
    }

    else
    {
      v18 = 0;
    }

    mlir::ValueRange::ValueRange(&v40, v18 + 32 * (v16 + v15), (v17 + v16 + v15) - (v16 + v15));
    (**a3)();
    return 1;
  }

  v19 = *(a2 + 40);
  v20 = v3 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8);
  v40 = v42;
  v41 = 0x400000000;
  v21 = *(((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v19 + 8);
  if (v21)
  {
    v22 = (v21 - 8);
  }

  else
  {
    v22 = 0;
  }

  Terminator = mlir::Block::getTerminator(v22);
  v24 = *(((v3 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v24)
  {
    v25 = v24 - 8;
  }

  else
  {
    v25 = 0;
  }

  if ((*(Terminator + 46) & 0x80) == 0)
  {
    goto LABEL_38;
  }

  v26 = *(Terminator + 68);
  if (!v26)
  {
    goto LABEL_38;
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = *(v25 + 48);
  v31 = *(v25 + 56);
  do
  {
    v33 = *(*(Terminator + 72) + 32 * v27 + 24);
    v34 = (v30 + 8);
    if ((v31 - v30) != 8)
    {
      v34 = (v30 + 8);
      while (*v34 != v33)
      {
        if (++v34 == v31)
        {
          v34 = v31;
          break;
        }
      }
    }

    if (v34 == v31)
    {
      v32 = v41;
      v28 = 1;
      if (v41 >= HIDWORD(v41))
      {
        goto LABEL_32;
      }
    }

    else
    {
      v35 = ((v34 - v30 - 8) >> 3);
      v29 |= v27 != v35;
      v33 = *(*(a2 + 72) + 32 * (*(a2 + 108) + *(a2 + 104)) + 32 * v35 + 24);
      v32 = v41;
      if (v41 >= HIDWORD(v41))
      {
LABEL_32:
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }
    }

    *(v40 + v32) = v33;
    LODWORD(v41) = v41 + 1;
    ++v27;
  }

  while (v27 != v26);
  if (v12 & 1) == 0 && ((v28 | v29))
  {
    result = 0;
    goto LABEL_39;
  }

  if ((v12 & (v10 > 1) & v29) != 0)
  {
    result = 0;
  }

  else
  {
LABEL_38:
    mlir::ValueRange::ValueRange(&v39, v40, v41);
    (**a3)();
    result = 1;
  }

LABEL_39:
  if (v40 != v42)
  {
    v36 = result;
    free(v40);
    return v36;
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::ValueRange)>::callback_fn<void buildAffineLoopNestImpl<llvm::ArrayRef<long long>,mlir::affine::AffineForOp (&)(mlir::OpBuilder &,mlir::Location,long long,long long,long long,llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::ValueRange)>)>(mlir::OpBuilder &,mlir::Location,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::ValueRange)>,mlir::affine::AffineForOp (&)(mlir::OpBuilder &,mlir::Location,long long,long long,long long,llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::ValueRange)>) &&)::{lambda(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::ValueRange)#1}>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = *(*a1 + 2);
  if (v7 >= *(*a1 + 3))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v6 + 8 * v7) = a4;
  ++*(v6 + 2);
  if (*a1[1] == *a1[2] - 1)
  {
    v8 = a1[3];
    if (*v8)
    {
      v9 = (a2 + 16);
      v11 = *(a2 + 16);
      mlir::ValueRange::ValueRange(v12, **a1, *(*a1 + 2));
      (*v8)(v8[1], a2, a3, v12[0], v12[1]);
      if (v11)
      {
        *v9 = v11;
      }

      else
      {
        *v9 = 0;
        *(a2 + 24) = 0;
      }
    }
  }

  return mlir::OpBuilder::create<mlir::affine::AffineYieldOp>(a2, a3);
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffineYieldOp>(mlir::OpBuilder *a1, uint64_t a2)
{
  v13[5] = *MEMORY[0x277D85DE8];
  v10 = a2;
  Context = mlir::Attribute::getContext(&v10);
  v5 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineYieldOp,void>::id, Context);
  if ((v6 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineYieldOp>(v12, v13, v11);
  }

  mlir::OperationState::OperationState(v12, a2, v5);
  mlir::ValueRange::ValueRange(v13, 0, 0);
  mlir::OperationState::addOperands(v12, v13[0], v13[1]);
  v7 = mlir::OpBuilder::create(a1, v12);
  if (*(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineYieldOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v12);
  return v8;
}

uint64_t llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::ValueRange)>::callback_fn<void buildAffineLoopNestImpl<mlir::ValueRange,mlir::affine::AffineForOp (&)(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::Value,long long,llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::ValueRange)>)>(mlir::OpBuilder &,mlir::Location,mlir::ValueRange,mlir::ValueRange,llvm::ArrayRef<long long>,llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::ValueRange)>,mlir::affine::AffineForOp (&)(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::Value,long long,llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::ValueRange)>) &&)::{lambda(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::ValueRange)#1}>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = *(*a1 + 2);
  if (v7 >= *(*a1 + 3))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v6 + 8 * v7) = a4;
  ++*(v6 + 2);
  if (*a1[1] == *a1[2] - 1)
  {
    v8 = a1[3];
    if (*v8)
    {
      v9 = (a2 + 16);
      v11 = *(a2 + 16);
      mlir::ValueRange::ValueRange(v12, **a1, *(*a1 + 2));
      (*v8)(v8[1], a2, a3, v12[0], v12[1]);
      if (v11)
      {
        *v9 = v11;
      }

      else
      {
        *v9 = 0;
        *(a2 + 24) = 0;
      }
    }
  }

  return mlir::OpBuilder::create<mlir::affine::AffineYieldOp>(a2, a3);
}

BOOL mlir::AsmParser::parseAttribute<mlir::IntegerSetAttr>(uint64_t a1, uint64_t *a2, uint64_t a3, size_t a4, size_t a5, uint64_t a6)
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = (*(*a1 + 40))(a1);
  v26 = 0;
  if (((*(*a1 + 440))(a1, &v26, a3) & 1) == 0)
  {
    return 0;
  }

  if (*(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
  {
    v13 = v26;
  }

  else
  {
    v13 = 0;
  }

  *a2 = v13;
  if (v13)
  {
    mlir::NamedAttrList::append(a6, a4, a5, v13);
    return 1;
  }

  else
  {
    v24 = "invalid kind of attribute specified";
    v25 = 259;
    (*(*a1 + 24))(v27, a1, v12, &v24);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    v15 = result;
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
      result = v15;
    }

    if (v35 == 1)
    {
      if (v34 != &v35)
      {
        free(v34);
        result = v15;
      }

      v16 = __p;
      if (__p)
      {
        v17 = v33;
        v18 = __p;
        if (v33 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v33 = v16;
        operator delete(v18);
        result = v15;
      }

      v19 = v30;
      if (v30)
      {
        v20 = v31;
        v21 = v30;
        if (v31 != v30)
        {
          do
          {
            v23 = *--v20;
            v22 = v23;
            *v20 = 0;
            if (v23)
            {
              MEMORY[0x259C63150](v22, 0x1000C8077774924);
            }
          }

          while (v20 != v19);
          v21 = v30;
        }

        v31 = v19;
        operator delete(v21);
        result = v15;
      }

      if (v28 != &v29)
      {
        free(v28);
        return v15;
      }
    }
  }

  return result;
}

uint64_t mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineIfOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v5, a2, "affine.yield", 12);
  mlir::ValueRange::ValueRange(v6, 0, 0);
  mlir::OperationState::addOperands(v5, v6[0], v6[1]);
  v3 = mlir::Operation::create(v5, v2);
  mlir::OperationState::~OperationState(v5);
  return v3;
}

void anonymous namespace::SimplifyDeadElse::~SimplifyDeadElse(_anonymous_namespace_::SimplifyDeadElse *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::SimplifyDeadElse::matchAndRewrite(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v3 = a2 + 16;
  v4 = ((&a2[4 * ((a2[11] >> 23) & 1) + 17] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10];
  if (*(v4 + 24) == v4 + 24)
  {
    return 0;
  }

  v5 = *(((&a2[4 * ((a2[11] >> 23) & 1) + 17] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10] + 32);
  v6 = v5 - 8;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(v6 + 40);
  v8 = v6 + 32;
  if (v7 == v8 || *(v7 + 8) != v8 || a2[9])
  {
    return 0;
  }

  (*(*a3 + 40))(a3);
  v12 = *(((&v3[4 * ((a2[11] >> 23) & 1) + 1] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10] + 32);
  if (v12)
  {
    v13 = v12 - 8;
  }

  else
  {
    v13 = 0;
  }

  (*(*a3 + 24))(a3, v13);
  (*(*a3 + 48))(a3, a2);
  return 1;
}

void anonymous namespace::AlwaysTrueOrFalseIf::~AlwaysTrueOrFalseIf(_anonymous_namespace_::AlwaysTrueOrFalseIf *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::AlwaysTrueOrFalseIf::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(a2, "condition", 9), (v6 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(a2 + 56, "condition", 9uLL);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
    {
      v7 = InherentAttr;
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

  v28 = v7;
  Value = mlir::IntegerSetAttr::getValue(&v28);
  v28 = Value;
  if (mlir::IntegerSet::isEmptyIntegerSet(&v28))
  {
    v11 = *(a2 + 44);
    if (*(a2 + 36))
    {
      v12 = (v11 >> 23) & 1;
      v13 = (v11 >> 21) & 0x7F8;
      v14 = 32 * *(a2 + 40);
    }

    else
    {
      v12 = (v11 >> 23) & 1;
      v13 = (v11 >> 21) & 0x7F8;
      v14 = 32 * *(a2 + 40);
      v18 = ((a2 + 16 * v12 + v13 + 71) & 0xFFFFFFFFFFFFFFF8) + v14;
      if (*(v18 + 24) == v18 + 24)
      {
        (*(*a3 + 16))(a3, a2);
        return 1;
      }
    }

    v19 = (((a2 + 16 * v12 + v13 + 71) & 0xFFFFFFFFFFFFFFF8) + v14);
    v20 = 8;
LABEL_17:
    v21 = *&v19[v20];
    if (v21)
    {
      v22 = (v21 - 8);
    }

    else
    {
      v22 = 0;
    }

    Terminator = mlir::Block::getTerminator(v22);
    mlir::ValueRange::ValueRange(&v28, 0, 0);
    mlir::RewriterBase::inlineBlockBefore(a3, v22, a2, v28, v29);
    if ((*(Terminator + 46) & 0x80) != 0)
    {
      v24 = *(Terminator + 72);
      v25 = *(Terminator + 68);
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    mlir::ValueRange::ValueRange(&v28, v24, v25);
    (**a3)(a3, a2, v28, v29);
    (*(*a3 + 16))(a3, Terminator);
    return 1;
  }

  v28 = Value;
  if (mlir::IntegerSet::getNumEqualities(&v28, v9, v10) != 1 || mlir::IntegerSet::getNumInequalities(&v28, v15, v16))
  {
    return 0;
  }

  Constraint = mlir::IntegerSet::getConstraint(&v28, 0);
  v26 = mlir::AffineExpr::operator==(&Constraint, 0);
  result = 0;
  if (v26)
  {
    v19 = v28;
    v20 = 2;
    goto LABEL_17;
  }

  return result;
}

void *anonymous namespace::SimplifyAffineOp<mlir::affine::AffineLoadOp>::~SimplifyAffineOp(void *a1)
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

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineLoadOp>::~SimplifyAffineOp(void *a1)
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

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineLoadOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35[6] = *MEMORY[0x277D85DE8];
  v32 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(&v32);
  v28 = Value;
  if ((*(a2 + 46) & 0x80) == 0)
  {
    v32 = v34;
    v33 = 0x800000000;
LABEL_3:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = *(a2 + 68);
  v7 = v6 - 1;
  v8 = *(a2 + 72) + 32;
  v32 = v34;
  v33 = 0x800000000;
  if ((v6 - 1) >= 9)
  {
    goto LABEL_3;
  }

  v9 = 0;
  if (v6 == 1)
  {
    v21 = 0;
  }

  else
  {
    v10 = v34;
    if (v7 >= 0xD && (v34 >= v8 + 32 * v7 || v8 + 24 >= &v34[v7]))
    {
      v12 = v7 & 3;
      if ((v7 & 3) == 0)
      {
        v12 = 4;
      }

      v11 = v7 - v12;
      v13 = (v8 + 88);
      v14 = v35;
      v15 = v11;
      do
      {
        v16 = v13 - 8;
        v17 = vld4q_f64(v16);
        v18 = vld4q_f64(v13);
        *(v14 - 1) = v17;
        *v14 = v18;
        v13 += 16;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      v10 = &v34[v11];
    }

    else
    {
      v11 = 0;
    }

    v19 = v7 - v11;
    v20 = (32 * v11) | 0x18;
    do
    {
      *v10++ = *(v8 + v20);
      v20 += 32;
      --v19;
    }

    while (v19);
    v21 = v33;
    v9 = v7;
  }

  LODWORD(v33) = v21 + v9;
  composeAffineMapAndOperands(&v28, &v32);
  mlir::affine::canonicalizeMapAndOperands(&v28, &v32);
  simplifyMapWithOperands(&v28, v32, v33);
  v22 = v32;
  if (v28 == Value)
  {
    if (!v9)
    {
LABEL_25:
      v24 = 0;
      if (v32 == v34)
      {
        return v24;
      }

      goto LABEL_19;
    }

    v26 = 0;
    v27 = (v8 + 24);
    while (*v27 == *(v32 + v26))
    {
      ++v26;
      v27 += 4;
      if (v9 == v26)
      {
        goto LABEL_25;
      }
    }
  }

  v30[1] = v33;
  v31 = v28;
  v29 = *(*(a2 + 72) + 24);
  v30[0] = v32;
  v23 = mlir::OpBuilder::create<mlir::affine::AffineLoadOp,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>((a3 + 8), *(a2 + 24), &v29, &v31, v30);
  (*(*a3 + 8))(a3, a2, v23);
  v24 = 1;
  v22 = v32;
  if (v32 != v34)
  {
LABEL_19:
    free(v22);
  }

  return v24;
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffineLoadOp,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v22[5] = *MEMORY[0x277D85DE8];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineLoadOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineLoadOp,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(v21, v22, v20);
  }

  mlir::OperationState::OperationState(v21, a2, v11);
  v13 = *a3;
  v14 = *a4;
  v15 = mlir::ValueRange::ValueRange(v22, *a5, *(a5 + 8));
  mlir::affine::AffineLoadOp::build(v15, v21, v13, v14, v22[0], v22[1]);
  v16 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineLoadOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v17;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties]";
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

void *anonymous namespace::SimplifyAffineOp<mlir::affine::AffineStoreOp>::~SimplifyAffineOp(void *a1)
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

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineStoreOp>::~SimplifyAffineOp(void *a1)
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

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineStoreOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37[6] = *MEMORY[0x277D85DE8];
  v34 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(&v34);
  v29 = Value;
  if ((*(a2 + 46) & 0x80) == 0)
  {
    v34 = v36;
    v35 = 0x800000000;
LABEL_3:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = *(a2 + 68);
  v7 = v6 - 2;
  v8 = *(a2 + 72) + 64;
  v34 = v36;
  v35 = 0x800000000;
  if ((v6 - 2) >= 9)
  {
    goto LABEL_3;
  }

  v9 = 0;
  if (v6 == 2)
  {
    v21 = 0;
  }

  else
  {
    v10 = v36;
    if (v7 >= 0xD && (v36 >= v8 + 32 * v7 || v8 + 24 >= &v36[v7]))
    {
      v12 = v7 & 3;
      if ((v7 & 3) == 0)
      {
        v12 = 4;
      }

      v11 = v7 - v12;
      v13 = (v8 + 88);
      v14 = v37;
      v15 = v11;
      do
      {
        v16 = v13 - 8;
        v17 = vld4q_f64(v16);
        v18 = vld4q_f64(v13);
        *(v14 - 1) = v17;
        *v14 = v18;
        v13 += 16;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      v10 = &v36[v11];
    }

    else
    {
      v11 = 0;
    }

    v19 = v7 - v11;
    v20 = (32 * v11) | 0x18;
    do
    {
      *v10++ = *(v8 + v20);
      v20 += 32;
      --v19;
    }

    while (v19);
    v21 = v35;
    v9 = v7;
  }

  LODWORD(v35) = v21 + v9;
  composeAffineMapAndOperands(&v29, &v34);
  mlir::affine::canonicalizeMapAndOperands(&v29, &v34);
  simplifyMapWithOperands(&v29, v34, v35);
  v22 = v34;
  if (v29 == Value)
  {
    if (!v9)
    {
LABEL_25:
      v25 = 0;
      if (v34 == v36)
      {
        return v25;
      }

      goto LABEL_19;
    }

    v27 = 0;
    v28 = (v8 + 24);
    while (*v28 == *(v34 + v27))
    {
      ++v27;
      v28 += 4;
      if (v9 == v27)
      {
        goto LABEL_25;
      }
    }
  }

  v32[1] = v35;
  v33 = v29;
  v23 = *(a2 + 72);
  v31 = *(v23 + 24);
  v32[0] = v34;
  v30 = *(v23 + 56);
  v24 = mlir::OpBuilder::create<mlir::affine::AffineStoreOp,mlir::Value,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>((a3 + 8), *(a2 + 24), &v31, &v30, &v33, v32);
  (*(*a3 + 8))(a3, a2, v24);
  v25 = 1;
  v22 = v34;
  if (v34 != v36)
  {
LABEL_19:
    free(v22);
  }

  return v25;
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffineStoreOp,mlir::Value,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t a6)
{
  v25[5] = *MEMORY[0x277D85DE8];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineStoreOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineStoreOp,mlir::Value,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(v24, v25, v23);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = *a5;
  v18 = mlir::ValueRange::ValueRange(v25, *a6, *(a6 + 8));
  mlir::affine::AffineStoreOp::build(v18, v24, v15, v16, v17, v25[0], v25[1]);
  v19 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineStoreOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v20;
}

void *CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMinOp>::~CanonicalizeSingleResultAffineMinMaxOp(void *a1)
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

void CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMinOp>::~CanonicalizeSingleResultAffineMinMaxOp(void *a1)
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

uint64_t CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v5 = a2 + 64;
  v10[0] = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v10[0] = mlir::AffineMapAttr::getValue(v10);
  if (mlir::AffineMap::getNumResults(v10) != 1)
  {
    return 0;
  }

  v10[0] = *(v5 + 16 * ((*(a2 + 44) >> 23) & 1));
  Value = mlir::AffineMapAttr::getValue(v10);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v6 = *(a2 + 68);
    v7 = *(a2 + 72);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v10[0] = v7;
  v10[1] = v6;
  v8 = mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap,mlir::OperandRange>(a3 + 1, *(a2 + 24), &Value, v10);
  (*(*a3 + 1))(a3, a2, v8);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap,mlir::OperandRange>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr,mlir::Value &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::affine::AffineApplyOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

void *DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMinOp>::~DeduplicateAffineMinMaxExpressions(void *a1)
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

void DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMinOp>::~DeduplicateAffineMinMaxExpressions(void *a1)
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

uint64_t DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v22 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(&v22);
  v22 = v24;
  v23 = 0x400000000;
  Results = mlir::AffineMap::getResults(&Value);
  v7 = v23;
  if (v6)
  {
    v8 = &Results[v6];
    do
    {
      while (1)
      {
        v9 = *Results;
        v10 = v22;
        if (v7)
        {
          v11 = 8 * v7;
          v10 = v22;
          while (*v10 != v9)
          {
            ++v10;
            v11 -= 8;
            if (!v11)
            {
              goto LABEL_9;
            }
          }
        }

        if (v10 == (v22 + 8 * v7))
        {
          break;
        }

        if (++Results == v8)
        {
          goto LABEL_13;
        }
      }

LABEL_9:
      if (v7 >= HIDWORD(v23))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v22 + v7) = v9;
      v7 = v23 + 1;
      LODWORD(v23) = v23 + 1;
      ++Results;
    }

    while (Results != v8);
  }

LABEL_13:
  if (v7 == mlir::AffineMap::getNumResults(&Value))
  {
    v12 = 0;
    v13 = v22;
    if (v22 == v24)
    {
      return v12;
    }

    goto LABEL_19;
  }

  NumDims = mlir::AffineMap::getNumDims(&Value);
  NumSymbols = mlir::AffineMap::getNumSymbols(&Value);
  v20 = mlir::AffineMap::get(NumDims, NumSymbols, v22, v23, a3[1]);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v16 = *(a2 + 68);
    v17 = *(a2 + 72);
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  mlir::ValueRange::ValueRange(v25, v17, v16);
  v18 = mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,mlir::ValueRange>(a3 + 1, *(a2 + 24), &v20, v25);
  (*(*a3 + 1))(a3, a2, v18);
  v12 = 1;
  v13 = v22;
  if (v22 != v24)
  {
LABEL_19:
    free(v13);
  }

  return v12;
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,mlir::ValueRange>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::IndexType,mlir::AffineMap &,llvm::SmallVector<mlir::Value,6u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::affine::AffineMinOp::build(a1, v17, *a3, *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id)
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

void *MergeAffineMinMaxOp<mlir::affine::AffineMinOp>::~MergeAffineMinMaxOp(void *a1)
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

void MergeAffineMinMaxOp<mlir::affine::AffineMinOp>::~MergeAffineMinMaxOp(void *a1)
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

uint64_t mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,llvm::SmallVector<mlir::Value,8u> &>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::IndexType,mlir::AffineMap &,llvm::SmallVector<mlir::Value,6u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::affine::AffineMinOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

void *anonymous namespace::SimplifyAffineOp<mlir::affine::AffineMinOp>::~SimplifyAffineOp(void *a1)
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

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineMinOp>::~SimplifyAffineOp(void *a1)
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

uint64_t mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::IndexType,mlir::AffineMap &,llvm::SmallVector<mlir::Value,6u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::affine::AffineMinOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

void *CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMinOp>::~CanonicalizeAffineMinMaxOpExprAndTermOrder(void *a1)
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

void CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMinOp>::~CanonicalizeAffineMinMaxOpExprAndTermOrder(void *a1)
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

uint64_t CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v10[0] = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(v10);
  if ((canonicalizeMapExprAndTermOrder(&Value) & 1) == 0)
  {
    return 0;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 68);
    v6 = *(a2 + 72);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  mlir::ValueRange::ValueRange(v10, v6, v5);
  v7 = mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,mlir::ValueRange>(a3 + 1, *(a2 + 24), &Value, v10);
  (*(*a3 + 1))(a3, a2, v7);
  return 1;
}

uint64_t canonicalizeMapExprAndTermOrder(mlir::AffineMap *a1)
{
  v70[8] = *MEMORY[0x277D85DE8];
  v68 = v70;
  v69 = 0x100000000;
  Results = mlir::AffineMap::getResults(a1);
  if (v3)
  {
    v4 = Results;
    v5 = (Results + 8 * v3);
    while (1)
    {
      if (!mlir::AffineExpr::isPureAffine(v4))
      {
        goto LABEL_48;
      }

      NumDims = mlir::AffineMap::getNumDims(a1);
      NumSymbols = mlir::AffineMap::getNumSymbols(a1);
      mlir::SimpleAffineExprFlattener::SimpleAffineExprFlattener(&v62, NumDims, NumSymbols);
      if ((mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkPostOrder(&v62, *v4) & 1) == 0)
      {
        break;
      }

      v8 = *(v64[0] - 72);
      v9 = mlir::AffineMap::getNumDims(a1);
      if (v8 != v9 + mlir::AffineMap::getNumSymbols(a1) + 1)
      {
        break;
      }

      v10 = *(v64[0] - 80);
      v59 = v10;
      v11 = *(v64[0] - 72);
      if (v69 >= HIDWORD(v69))
      {
        llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,6u>,false>::growAndEmplaceBack<long long *,long long *>();
      }

      v12 = v68 + 64 * v69;
      *v12 = v12 + 16;
      *(v12 + 1) = 0x600000000;
      if (v11 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v11)
      {
        memcpy(*v12, v10, 8 * v11);
        v19 = *(v12 + 2);
      }

      else
      {
        v19 = 0;
      }

      *(v12 + 2) = v19 + v11;
      LODWORD(v69) = v69 + 1;
      v13 = 1;
      v62 = &unk_2868995E0;
      v14 = v66;
      if (v66 != v67)
      {
        goto LABEL_12;
      }

LABEL_13:
      v15 = __p;
      if (__p)
      {
        v16 = v64[0];
        if (v64[0] == __p)
        {
          operator delete(__p);
          if ((v13 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          do
          {
            v18 = *(v16 - 10);
            v16 -= 80;
            v17 = v18;
            if (v16 + 16 != v18)
            {
              free(v17);
            }
          }

          while (v16 != v15);
          v64[0] = v15;
          operator delete(__p);
          if ((v13 & 1) == 0)
          {
            goto LABEL_48;
          }
        }
      }

      else if (!v13)
      {
        goto LABEL_48;
      }

      v4 = (v4 + 8);
      if (v4 == v5)
      {
        goto LABEL_28;
      }
    }

    v13 = 0;
    v62 = &unk_2868995E0;
    v14 = v66;
    if (v66 == v67)
    {
      goto LABEL_13;
    }

LABEL_12:
    free(v14);
    goto LABEL_13;
  }

LABEL_28:
  v20 = v68;
  v21 = v69;
  v22 = (v68 + 64 * v69);
  if (v69)
  {
    if (v69 == 1)
    {
      v23 = 0;
      goto LABEL_73;
    }

    v25 = v68 + 64;
    v24 = *v68;
    while (1)
    {
      v26 = *(v20 + 8);
      v27 = v20[18];
      v28 = v20[2];
      v20 = v25;
      if (v28 >= v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = v28;
      }

      v30 = v24;
      v31 = v26;
      if (v29)
      {
        v32 = 8 * v29;
        v30 = v24;
        v31 = v26;
        v33 = &v26[v29];
        while (*v31 == *v30)
        {
          ++v31;
          ++v30;
          v32 -= 8;
          if (!v32)
          {
            v31 = v33;
            break;
          }
        }
      }

      if (v30 != &v24[v28] && (v31 == &v26[v27] || *v31 < *v30))
      {
        break;
      }

      v25 = (v20 + 16);
      v24 = v26;
      if (v20 + 16 == v22)
      {
        goto LABEL_48;
      }
    }
  }

  if (v20 == v22)
  {
LABEL_48:
    v23 = 0;
    v21 = v69;
    v20 = v68;
    if (v69)
    {
      goto LABEL_73;
    }

LABEL_49:
    if (v20 == v70)
    {
      return v23;
    }

LABEL_50:
    free(v20);
    return v23;
  }

  NumResults = mlir::AffineMap::getNumResults(a1);
  v62 = v64;
  __p = 0xC00000000;
  if (NumResults >= 0xD)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (NumResults)
  {
    if (NumResults < 8)
    {
      v35 = 0;
      v36 = v64;
    }

    else
    {
      v35 = NumResults & 0xFFFFFFF8;
      v36 = v64 + v35;
      v38 = &v65;
      v39 = xmmword_257369620;
      v40.i64[0] = 0x400000004;
      v40.i64[1] = 0x400000004;
      v41.i64[0] = 0x800000008;
      v41.i64[1] = 0x800000008;
      v42 = v35;
      do
      {
        v38[-1] = v39;
        *v38 = vaddq_s32(v39, v40);
        v39 = vaddq_s32(v39, v41);
        v38 += 2;
        v42 -= 8;
      }

      while (v42);
      if (v35 == NumResults)
      {
        goto LABEL_58;
      }
    }

    do
    {
      *v36++ = v35++;
    }

    while (NumResults != v35);
LABEL_58:
    v43 = __p;
    goto LABEL_59;
  }

  v43 = 0;
LABEL_59:
  v45 = v43 + NumResults;
  v44 = v45 == 0;
  LODWORD(__p) = v45;
  v46 = v64 + v45;
  v59 = &v68;
  v47 = 126 - 2 * __clz(v45);
  if (v44)
  {
    v48 = 0;
  }

  else
  {
    v48 = v47;
  }

  std::__introsort<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,false>(v64, v46, &v59, v48, 1);
  v59 = v61;
  v60 = 0x600000000;
  if (__p)
  {
    v49 = v62;
    v50 = 4 * __p;
    do
    {
      v51 = mlir::AffineMap::getResult(a1, *v49);
      if (v60 >= HIDWORD(v60))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v59 + v60) = v51;
      LODWORD(v60) = v60 + 1;
      ++v49;
      v50 -= 4;
    }

    while (v50);
  }

  v52 = mlir::AffineMap::getNumDims(a1);
  v53 = mlir::AffineMap::getNumSymbols(a1);
  v54 = v59;
  v55 = v60;
  Context = mlir::AffineMap::getContext(a1);
  *a1 = mlir::AffineMap::get(v52, v53, v54, v55, Context);
  if (v59 != v61)
  {
    free(v59);
  }

  if (v62 != v64)
  {
    free(v62);
  }

  v23 = 1;
  v21 = v69;
  v20 = v68;
  if (!v69)
  {
    goto LABEL_49;
  }

LABEL_73:
  v57 = &v20[16 * v21 - 16];
  v58 = -64 * v21;
  do
  {
    if (v57 + 2 != *v57)
    {
      free(*v57);
    }

    v57 -= 8;
    v58 += 64;
  }

  while (v58);
  v20 = v68;
  if (v68 != v70)
  {
    goto LABEL_50;
  }

  return v23;
}

uint64_t mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkPostOrder(_DWORD *a1, uint64_t a2)
{
  v9 = a2;
  Kind = mlir::AffineExpr::getKind(&v9);
  if (Kind <= 3)
  {
    if (Kind > 1)
    {
      if (Kind == 2)
      {
        mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v10, v9);
        v6 = v10;
        if (mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkOperandsPostOrder(a1, v10))
        {
          return mlir::SimpleAffineExprFlattener::visitModExpr(a1, v6);
        }
      }

      else
      {
        mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v10, v9);
        v8 = v10;
        if (mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkOperandsPostOrder(a1, v10))
        {
          return mlir::SimpleAffineExprFlattener::visitFloorDivExpr(a1, v8);
        }
      }
    }

    else if (Kind)
    {
      mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v10, v9);
      v7 = v10;
      if (mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkOperandsPostOrder(a1, v10))
      {
        return mlir::SimpleAffineExprFlattener::visitMulExpr(a1, v7);
      }
    }

    else
    {
      mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v10, v9);
      if (mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkOperandsPostOrder(a1, v10))
      {
        return mlir::SimpleAffineExprFlattener::visitAddExpr(a1);
      }
    }

    return 0;
  }

  if (Kind <= 5)
  {
    if (Kind != 4)
    {
      mlir::AffineConstantExpr::AffineConstantExpr(&v10, v9);
      return mlir::SimpleAffineExprFlattener::visitConstantExpr(a1, v10);
    }

    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v10, v9);
    v5 = v10;
    if (mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkOperandsPostOrder(a1, v10))
    {
      return mlir::SimpleAffineExprFlattener::visitCeilDivExpr(a1, v5);
    }

    return 0;
  }

  if (Kind == 6)
  {
    mlir::AffineDimExpr::AffineDimExpr(&v10, v9);
    return mlir::SimpleAffineExprFlattener::visitDimExpr(a1, v10);
  }

  else
  {
    mlir::AffineSymbolExpr::AffineSymbolExpr(&v10, v9);
    return mlir::SimpleAffineExprFlattener::visitSymbolExpr(a1, v10);
  }
}

uint64_t mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkOperandsPostOrder(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  LHS = mlir::AffineBinaryOpExpr::getLHS(&v6);
  if ((mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkPostOrder(a1, LHS) & 1) == 0)
  {
    return 0;
  }

  RHS = mlir::AffineBinaryOpExpr::getRHS(&v6);
  return mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkPostOrder(a1, RHS) & 1;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,false>(unint64_t result, unsigned int *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  v312 = a2 - 3;
  v313 = a2 - 2;
  i = v9;
  v311 = a2;
  while (1)
  {
    v9 = i;
    v12 = a2 - i;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v141 = **a3;

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(i, i + 1, v10, v141);
        case 4:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(i, i + 1, i + 2, v10, a3);
        case 5:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(i, i + 1, i + 2, i + 3, v10, a3);
      }

      goto LABEL_10;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      break;
    }

LABEL_10:
    if (v12 <= 23)
    {
      v156 = *a3;
      if (a5)
      {
        if (i == a2)
        {
          return result;
        }

        v157 = i + 1;
        if (i + 1 == a2)
        {
          return result;
        }

        v158 = *v156;
        v159 = i;
        while (1)
        {
          v161 = v159;
          v159 = v157;
          v163 = *v161;
          v162 = v161[1];
          v164 = v158 + (v162 << 6);
          v165 = v158 + (v163 << 6);
          v166 = *v164;
          v167 = *(v164 + 8);
          v168 = *v165;
          v169 = *(v165 + 8);
          v170 = v169 >= v167 ? *(v164 + 8) : v169;
          if (v170)
          {
            break;
          }

          result = v168;
          v172 = *v164;
          if (v168 != v168 + 8 * v169)
          {
            goto LABEL_235;
          }

LABEL_223:
          v157 = v159 + 1;
          if (v159 + 1 == a2)
          {
            return result;
          }
        }

        v171 = 8 * v170;
        result = v168;
        v172 = *v164;
        v173 = &v166[v170];
        while (*v172 == *result)
        {
          ++v172;
          result += 8;
          v171 -= 8;
          if (!v171)
          {
            v172 = v173;
            break;
          }
        }

        if (result == v168 + 8 * v169)
        {
          goto LABEL_223;
        }

LABEL_235:
        if (v172 == &v166[v167] || *v172 < *result)
        {
          v161[1] = v163;
          v160 = i;
          if (v161 != i)
          {
            v174 = v161;
            do
            {
              v176 = *--v174;
              v175 = v176;
              v177 = v158 + (v176 << 6);
              v178 = *(v164 + 8);
              v179 = *v177;
              result = *(v177 + 8);
              if (result >= v178)
              {
                v180 = *(v164 + 8);
              }

              else
              {
                v180 = result;
              }

              if (v180)
              {
                v181 = 8 * v180;
                v182 = v179;
                v183 = v166;
                v184 = &v166[v180];
                while (*v183 == *v182)
                {
                  ++v183;
                  ++v182;
                  v181 -= 8;
                  if (!v181)
                  {
                    v183 = v184;
                    break;
                  }
                }
              }

              else
              {
                v182 = v179;
                v183 = v166;
              }

              if (v182 == &v179[result] || v183 != &v166[v178] && *v183 >= *v182)
              {
                v160 = v161;
                goto LABEL_222;
              }

              *v161 = v175;
              v161 = v174;
            }

            while (v174 != i);
            v160 = i;
          }

LABEL_222:
          *v160 = v162;
        }

        goto LABEL_223;
      }

      if (i == a2)
      {
        return result;
      }

      v286 = i + 1;
      if (i + 1 == a2)
      {
        return result;
      }

      v287 = *v156;
      while (1)
      {
        v288 = v9;
        v9 = v286;
        v290 = *v288;
        v289 = v288[1];
        v291 = v287 + (v289 << 6);
        v292 = v287 + (v290 << 6);
        v293 = *v291;
        v294 = *(v291 + 8);
        v295 = *v292;
        v296 = *(v292 + 8);
        v297 = v296 >= v294 ? *(v291 + 8) : v296;
        if (v297)
        {
          break;
        }

        v299 = v295;
        result = *v291;
        if (v295 != &v295[v296])
        {
          goto LABEL_388;
        }

LABEL_376:
        v286 = v9 + 1;
        if (v9 + 1 == a2)
        {
          return result;
        }
      }

      v298 = 8 * v297;
      v299 = v295;
      result = *v291;
      v300 = &v293[v297];
      while (*result == *v299)
      {
        result += 8;
        ++v299;
        v298 -= 8;
        if (!v298)
        {
          result = v300;
          break;
        }
      }

      if (v299 == &v295[v296])
      {
        goto LABEL_376;
      }

LABEL_388:
      if (result == &v293[v294] || *result < *v299)
      {
        v301 = v9;
        do
        {
          *v301 = v290;
          v301 = v288;
          v302 = *--v288;
          LODWORD(v290) = v302;
          v303 = v287 + (v302 << 6);
          v304 = *(v291 + 8);
          v305 = *v303;
          result = *(v303 + 8);
          if (result >= v304)
          {
            v306 = *(v291 + 8);
          }

          else
          {
            v306 = *(v303 + 8);
          }

          if (v306)
          {
            v307 = 8 * v306;
            v308 = *v303;
            v309 = v293;
            v310 = &v293[v306];
            while (*v309 == *v308)
            {
              ++v309;
              ++v308;
              v307 -= 8;
              if (!v307)
              {
                v309 = v310;
                break;
              }
            }
          }

          else
          {
            v308 = *v303;
            v309 = v293;
          }
        }

        while (v308 != &v305[result] && (v309 == &v293[v304] || *v309 < *v308));
        *v301 = v289;
      }

      goto LABEL_376;
    }

    if (!a4)
    {
      if (i == a2)
      {
        return result;
      }

      v185 = (v12 - 2) >> 1;
      v186 = v185;
      while (1)
      {
        v188 = v186;
        if (v185 < v186)
        {
          goto LABEL_258;
        }

        v189 = (2 * v186) | 1;
        v190 = &i[v189];
        v191 = **a3;
        if (2 * v188 + 2 < v12)
        {
          v192 = v191 + (*v190 << 6);
          v193 = v191 + (v190[1] << 6);
          v194 = *v192;
          v195 = *(v192 + 8);
          v196 = *v193;
          v197 = *(v193 + 8);
          if (v197 >= v195)
          {
            v198 = v195;
          }

          else
          {
            v198 = v197;
          }

          if (v198)
          {
            v199 = 8 * v198;
            v200 = v196;
            v201 = v194;
            v202 = &v194[v198];
            do
            {
              if (*v201 != *v200)
              {
                goto LABEL_269;
              }

              ++v201;
              ++v200;
              v199 -= 8;
            }

            while (v199);
            v201 = v202;
LABEL_269:
            if (v200 == &v196[v197])
            {
              goto LABEL_275;
            }

LABEL_272:
            if (v201 == &v194[v195] || *v201 < *v200)
            {
              ++v190;
              v189 = 2 * v188 + 2;
            }

            goto LABEL_275;
          }

          v200 = v196;
          v201 = v194;
          if (v196 != &v196[v197])
          {
            goto LABEL_272;
          }
        }

LABEL_275:
        v203 = *v190;
        v204 = i[v188];
        v205 = v191 + (v203 << 6);
        v206 = v191 + (v204 << 6);
        result = *v205;
        v207 = *(v205 + 8);
        v208 = *v206;
        v209 = *(v206 + 8);
        if (v209 >= v207)
        {
          v210 = v207;
        }

        else
        {
          v210 = *(v206 + 8);
        }

        if (v210)
        {
          v211 = 8 * v210;
          v212 = *v206;
          v213 = result;
          v214 = (result + 8 * v210);
          do
          {
            if (*v213 != *v212)
            {
              goto LABEL_283;
            }

            ++v213;
            ++v212;
            v211 -= 8;
          }

          while (v211);
          v213 = v214;
LABEL_283:
          if (v212 == &v208[v209])
          {
LABEL_288:
            i[v188] = v203;
            if (v185 < v189)
            {
LABEL_256:
              v187 = v190;
LABEL_257:
              *v187 = v204;
              goto LABEL_258;
            }

            while (2)
            {
              v215 = 2 * v189;
              v189 = (2 * v189) | 1;
              v187 = &i[v189];
              v216 = v215 + 2;
              if (v216 < v12)
              {
                v217 = v191 + (*v187 << 6);
                v218 = v191 + (v187[1] << 6);
                v219 = *v217;
                v220 = *(v217 + 8);
                v221 = *v218;
                v222 = *(v218 + 8);
                if (v222 >= v220)
                {
                  v223 = v220;
                }

                else
                {
                  v223 = v222;
                }

                if (v223)
                {
                  v224 = 8 * v223;
                  v225 = v221;
                  v226 = v219;
                  v227 = &v219[v223];
                  do
                  {
                    if (*v226 != *v225)
                    {
                      goto LABEL_300;
                    }

                    ++v226;
                    ++v225;
                    v224 -= 8;
                  }

                  while (v224);
                  v226 = v227;
LABEL_300:
                  if (v225 == &v221[v222])
                  {
                    goto LABEL_306;
                  }
                }

                else
                {
                  v225 = v221;
                  v226 = v219;
                  if (v221 == &v221[v222])
                  {
                    goto LABEL_306;
                  }
                }

                if (v226 == &v219[v220] || *v226 < *v225)
                {
                  ++v187;
                  v189 = v216;
                }
              }

LABEL_306:
              result = *v187;
              v228 = v191 + (result << 6);
              v229 = *v228;
              v230 = *(v228 + 8);
              v231 = *(v206 + 8);
              if (v231 >= v230)
              {
                v232 = v230;
              }

              else
              {
                v232 = *(v206 + 8);
              }

              if (v232)
              {
                v233 = 8 * v232;
                v234 = v208;
                v235 = v229;
                v236 = &v229[v232];
                do
                {
                  if (*v235 != *v234)
                  {
                    goto LABEL_314;
                  }

                  ++v235;
                  ++v234;
                  v233 -= 8;
                }

                while (v233);
                v235 = v236;
LABEL_314:
                if (v234 == &v208[v231])
                {
LABEL_290:
                  *v190 = result;
                  v190 = v187;
                  if (v185 < v189)
                  {
                    goto LABEL_257;
                  }

                  continue;
                }
              }

              else
              {
                v234 = v208;
                v235 = v229;
                if (v208 == &v208[v231])
                {
                  goto LABEL_290;
                }
              }

              break;
            }

            if (v235 == &v229[v230] || *v235 < *v234)
            {
              goto LABEL_256;
            }

            goto LABEL_290;
          }
        }

        else
        {
          v212 = *v206;
          v213 = result;
          if (v208 == &v208[v209])
          {
            goto LABEL_288;
          }
        }

        result += 8 * v207;
        if (v213 != result)
        {
          result = *v213;
          if (*v213 >= *v212)
          {
            goto LABEL_288;
          }
        }

LABEL_258:
        v186 = v188 - 1;
        if (!v188)
        {
          while (1)
          {
            v238 = 0;
            v239 = *i;
            v240 = *a3;
            v241 = i;
            do
            {
              v242 = v241;
              v243 = &v241[v238];
              v241 = v243 + 1;
              v244 = 2 * v238;
              v238 = (2 * v238) | 1;
              v245 = v244 + 2;
              if (v245 >= v12)
              {
                goto LABEL_324;
              }

              v247 = v243[2];
              v246 = v243 + 2;
              v248 = *v240 + (*(v246 - 1) << 6);
              v249 = *v240 + (v247 << 6);
              v250 = *v248;
              result = *(v248 + 8);
              v251 = *v249;
              v252 = *(v249 + 8);
              if (v252 >= result)
              {
                v253 = result;
              }

              else
              {
                v253 = v252;
              }

              if (!v253)
              {
                v255 = v251;
                v256 = v250;
                if (v251 == &v251[v252])
                {
                  goto LABEL_324;
                }

LABEL_337:
                if (v256 == &v250[result] || (result = *v255, *v256 < *v255))
                {
                  v241 = v246;
                  v238 = v245;
                }

                goto LABEL_324;
              }

              v254 = 8 * v253;
              v255 = v251;
              v256 = v250;
              v257 = &v250[v253];
              while (*v256 == *v255)
              {
                ++v256;
                ++v255;
                v254 -= 8;
                if (!v254)
                {
                  v256 = v257;
                  break;
                }
              }

              if (v255 != &v251[v252])
              {
                goto LABEL_337;
              }

LABEL_324:
              *v242 = *v241;
            }

            while (v238 <= ((v12 - 2) >> 1));
            if (v241 == --a2)
            {
              *v241 = v239;
              goto LABEL_321;
            }

            *v241 = *a2;
            *a2 = v239;
            v258 = (v241 - i + 4) >> 2;
            v259 = v258 - 2;
            if (v258 >= 2)
            {
              v260 = v259 >> 1;
              v261 = &i[v259 >> 1];
              v262 = *v261;
              v263 = *v241;
              v264 = **a3;
              v265 = v264 + (v262 << 6);
              v266 = v264 + (v263 << 6);
              result = *v265;
              v267 = *(v265 + 8);
              v268 = *v266;
              v269 = *(v266 + 8);
              if (v269 >= v267)
              {
                v270 = v267;
              }

              else
              {
                v270 = *(v266 + 8);
              }

              if (v270)
              {
                v271 = 8 * v270;
                v272 = *v266;
                v273 = result;
                v274 = (result + 8 * v270);
                while (*v273 == *v272)
                {
                  ++v273;
                  ++v272;
                  v271 -= 8;
                  if (!v271)
                  {
                    v273 = v274;
                    break;
                  }
                }

                if (v272 == &v268[v269])
                {
                  goto LABEL_321;
                }
              }

              else
              {
                v272 = *v266;
                v273 = result;
                if (v268 == &v268[v269])
                {
                  goto LABEL_321;
                }
              }

              result += 8 * v267;
              if (v273 == result || (result = *v273, *v273 < *v272))
              {
                *v241 = v262;
                if (v259 >= 2)
                {
                  while (1)
                  {
                    v276 = v260 - 1;
                    v260 = (v260 - 1) >> 1;
                    v275 = &i[v260];
                    v277 = *v275;
                    v278 = v264 + (v277 << 6);
                    result = *v278;
                    v279 = *(v278 + 8);
                    v280 = *(v266 + 8);
                    v281 = v280 >= v279 ? v279 : *(v266 + 8);
                    if (v281)
                    {
                      v282 = 8 * v281;
                      v283 = v268;
                      v284 = result;
                      v285 = (result + 8 * v281);
                      while (*v284 == *v283)
                      {
                        ++v284;
                        ++v283;
                        v282 -= 8;
                        if (!v282)
                        {
                          v284 = v285;
                          break;
                        }
                      }
                    }

                    else
                    {
                      v283 = v268;
                      v284 = result;
                    }

                    if (v283 == &v268[v280])
                    {
                      break;
                    }

                    result += 8 * v279;
                    if (v284 != result)
                    {
                      result = *v284;
                      if (*v284 >= *v283)
                      {
                        break;
                      }
                    }

                    *v261 = v277;
                    v261 = &i[v260];
                    if (v276 <= 1)
                    {
                      goto LABEL_357;
                    }
                  }
                }

                v275 = v261;
LABEL_357:
                *v275 = v263;
              }
            }

LABEL_321:
            if (v12-- <= 2)
            {
              return result;
            }
          }
        }
      }
    }

    v13 = v12 >> 1;
    v14 = &i[v12 >> 1];
    v15 = **a3;
    if (v12 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(&v9[v12 >> 1], v9, v10, v15);
      --a4;
      v18 = *v9;
      v19 = **a3;
      v20 = v19 + (v18 << 6);
      if ((a5 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_23:
      v24 = *v20;
      v25 = *(v20 + 8);
LABEL_28:
      v32 = &v24[v25];
      v33 = v9;
      do
      {
        v34 = v33;
        v36 = v33[1];
        ++v33;
        v35 = v36;
        v37 = v19 + (v36 << 6);
        v38 = *v37;
        v39 = *(v37 + 8);
        if (v25 >= v39)
        {
          v40 = v39;
        }

        else
        {
          v40 = v25;
        }

        if (v40)
        {
          v41 = 8 * v40;
          v42 = v24;
          v43 = v38;
          v44 = &v38[v40];
          while (*v43 == *v42)
          {
            ++v43;
            ++v42;
            v41 -= 8;
            if (!v41)
            {
              v43 = v44;
              break;
            }
          }
        }

        else
        {
          v42 = v24;
          v43 = v38;
        }
      }

      while (v42 != v32 && (v43 == &v38[v39] || *v43 < *v42));
      v45 = a2;
      if (v34 != v9)
      {
        while (1)
        {
          while (1)
          {
            v46 = *--v45;
            v47 = v19 + (v46 << 6);
            v48 = *v47;
            v49 = *(v47 + 8);
            v50 = v25 >= v49 ? v49 : v25;
            if (!v50)
            {
              break;
            }

            v51 = 8 * v50;
            v52 = v24;
            v53 = v48;
            v54 = &v48[v50];
            while (*v53 == *v52)
            {
              ++v53;
              ++v52;
              v51 -= 8;
              if (!v51)
              {
                v53 = v54;
                break;
              }
            }

            if (v52 != v32)
            {
              goto LABEL_53;
            }
          }

          v52 = v24;
          v53 = v48;
          if (v24 != v32)
          {
LABEL_53:
            if (v53 == &v48[v49] || *v53 < *v52)
            {
              goto LABEL_73;
            }
          }
        }
      }

      v45 = a2;
      if (v33 < a2)
      {
        v45 = a2;
        while (1)
        {
          v55 = *--v45;
          v56 = v19 + (v55 << 6);
          v57 = *v56;
          v58 = *(v56 + 8);
          if (v25 >= v58)
          {
            v59 = v58;
          }

          else
          {
            v59 = v25;
          }

          if (v59)
          {
            v60 = 8 * v59;
            v61 = v24;
            v62 = v57;
            v63 = &v57[v59];
            while (*v62 == *v61)
            {
              ++v62;
              ++v61;
              v60 -= 8;
              if (!v60)
              {
                v62 = v63;
                break;
              }
            }

            if (v61 == v32)
            {
              goto LABEL_58;
            }

LABEL_70:
            if (v62 == &v57[v58] || v33 >= v45 || *v62 < *v61)
            {
              break;
            }
          }

          else
          {
            v61 = v24;
            v62 = v57;
            if (v24 != v32)
            {
              goto LABEL_70;
            }

LABEL_58:
            if (v33 >= v45)
            {
              break;
            }
          }
        }
      }

LABEL_73:
      if (v33 >= v45)
      {
        goto LABEL_103;
      }

      v64 = *v45;
      v65 = v35;
      v66 = v33;
      v67 = v45;
      while (2)
      {
        *v66 = v64;
        *v67 = v65;
        v68 = *(v20 + 8);
        v69 = &v24[v68];
        do
        {
          v34 = v66;
          v70 = v66[1];
          ++v66;
          v65 = v70;
          v71 = v19 + (v70 << 6);
          v72 = *v71;
          v73 = *(v71 + 8);
          if (v68 >= v73)
          {
            v74 = v73;
          }

          else
          {
            v74 = *(v20 + 8);
          }

          if (v74)
          {
            v75 = 8 * v74;
            v76 = v24;
            v77 = v72;
            v78 = &v72[v74];
            while (*v77 == *v76)
            {
              ++v77;
              ++v76;
              v75 -= 8;
              if (!v75)
              {
                v77 = v78;
                break;
              }
            }
          }

          else
          {
            v76 = v24;
            v77 = v72;
          }
        }

        while (v76 != v69 && (v77 == &v72[v73] || *v77 < *v76));
        do
        {
          do
          {
            while (1)
            {
              v79 = *--v67;
              v64 = v79;
              v80 = v19 + (v79 << 6);
              v81 = *v80;
              v82 = *(v80 + 8);
              v83 = v68 >= v82 ? v82 : *(v20 + 8);
              if (v83)
              {
                break;
              }

              v85 = v24;
              v86 = v81;
              if (v24 != v69)
              {
                goto LABEL_100;
              }
            }

            v84 = 8 * v83;
            v85 = v24;
            v86 = v81;
            v87 = &v81[v83];
            while (*v86 == *v85)
            {
              ++v86;
              ++v85;
              v84 -= 8;
              if (!v84)
              {
                v86 = v87;
                break;
              }
            }
          }

          while (v85 == v69);
LABEL_100:
          ;
        }

        while (v86 != &v81[v82] && *v86 >= *v85);
        if (v66 < v67)
        {
          continue;
        }

        break;
      }

LABEL_103:
      if (v34 != v9)
      {
        *v9 = *v34;
      }

      *v34 = v18;
      if (v33 < v45)
      {
LABEL_108:
        result = std::__introsort<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,false>(v9, v34, a3, a4, a5 & 1);
        a5 = 0;
        i = v34 + 1;
      }

      else
      {
        v88 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *>(v9, v34, a3);
        i = v34 + 1;
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *>(v34 + 1, a2, a3);
        if (result)
        {
          a2 = v34;
          if (v88)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v88)
        {
          goto LABEL_108;
        }
      }
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(v9, &v9[v12 >> 1], v10, v15);
      v16 = &v9[v13];
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(v9 + 1, v16 - 1, v313, **a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(v9 + 2, &v9[v13 + 1], v312, **a3);
      a2 = v311;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(v16 - 1, v14, &v9[v13 + 1], **a3);
      v17 = *v9;
      *v9 = *v16;
      *v16 = v17;
      --a4;
      v18 = *v9;
      v19 = **a3;
      v20 = v19 + (v18 << 6);
      if (a5)
      {
        goto LABEL_23;
      }

LABEL_14:
      v21 = v19 + (*(v9 - 1) << 6);
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *v20;
      v25 = *(v20 + 8);
      if (v25 >= v23)
      {
        v26 = v23;
      }

      else
      {
        v26 = *(v20 + 8);
      }

      if (v26)
      {
        v27 = 8 * v26;
        v28 = *v20;
        v29 = v22;
        v30 = &v22[v26];
        while (*v29 == *v28)
        {
          ++v29;
          ++v28;
          v27 -= 8;
          if (!v27)
          {
            v29 = v30;
            break;
          }
        }
      }

      else
      {
        v28 = *v20;
        v29 = v22;
      }

      v31 = &v24[v25];
      if (v28 != v31 && (v29 == &v22[v23] || *v29 < *v28))
      {
        goto LABEL_28;
      }

      v89 = v19 + (*v10 << 6);
      v90 = *v89;
      v91 = *(v89 + 8);
      if (v91 >= v25)
      {
        v92 = *(v20 + 8);
      }

      else
      {
        v92 = v91;
      }

      v93 = v90;
      v94 = *v20;
      if (v92)
      {
        v95 = 8 * v92;
        v93 = v90;
        v94 = *v20;
        v96 = &v24[v92];
        while (*v94 == *v93)
        {
          ++v94;
          ++v93;
          v95 -= 8;
          if (!v95)
          {
            v94 = v96;
            break;
          }
        }
      }

      result = &v90[v91];
      if (v93 != result && (v94 == v31 || *v94 < *v93))
      {
        i = v9;
        while (1)
        {
          while (1)
          {
            v97 = i[1];
            ++i;
            v98 = v19 + (v97 << 6);
            v99 = *v98;
            v100 = *(v98 + 8);
            v101 = v100 >= v25 ? *(v20 + 8) : v100;
            if (!v101)
            {
              break;
            }

            v102 = 8 * v101;
            result = v99;
            v103 = *v20;
            v104 = &v24[v101];
            while (*v103 == *result)
            {
              ++v103;
              result += 8;
              v102 -= 8;
              if (!v102)
              {
                v103 = v104;
                break;
              }
            }

            if (result != v99 + 8 * v100)
            {
              goto LABEL_132;
            }
          }

          result = v99;
          v103 = *v20;
          if (v99 != v99 + 8 * v100)
          {
LABEL_132:
            if (v103 == v31 || *v103 < *result)
            {
              goto LABEL_151;
            }
          }
        }
      }

      for (i = v9 + 1; i < a2; ++i)
      {
        v105 = v19 + (*i << 6);
        v106 = *v105;
        v107 = *(v105 + 8);
        if (v107 >= v25)
        {
          v108 = *(v20 + 8);
        }

        else
        {
          v108 = v107;
        }

        if (v108)
        {
          v109 = 8 * v108;
          result = v106;
          v110 = *v20;
          v111 = &v24[v108];
          while (*v110 == *result)
          {
            ++v110;
            result += 8;
            v109 -= 8;
            if (!v109)
            {
              v110 = v111;
              break;
            }
          }

          if (result == v106 + 8 * v107)
          {
            continue;
          }
        }

        else
        {
          result = v106;
          v110 = *v20;
          if (v106 == v106 + 8 * v107)
          {
            continue;
          }
        }

        if (v110 == v31 || *v110 < *result)
        {
          break;
        }
      }

LABEL_151:
      v112 = a2;
      if (i < a2)
      {
        for (j = a2; ; --j)
        {
          if (v91 >= v25)
          {
            v115 = *(v20 + 8);
          }

          else
          {
            v115 = v91;
          }

          result = v90;
          v116 = *v20;
          if (v115)
          {
            v117 = 8 * v115;
            result = v90;
            v116 = *v20;
            v118 = &v24[v115];
            while (*v116 == *result)
            {
              ++v116;
              result += 8;
              v117 -= 8;
              if (!v117)
              {
                v116 = v118;
                break;
              }
            }
          }

          v112 = j - 1;
          if (result == &v90[v91] || v116 != v31 && *v116 >= *result)
          {
            break;
          }

          v114 = v19 + (*(j - 2) << 6);
          v90 = *v114;
          v91 = *(v114 + 8);
        }
      }

      if (i < v112)
      {
        v119 = *i;
        v120 = *v112;
        do
        {
          *i = v120;
          *v112 = v119;
          v121 = *(v20 + 8);
          v122 = &v24[v121];
          do
          {
            do
            {
              while (1)
              {
                v123 = i[1];
                ++i;
                v119 = v123;
                v124 = v19 + (v123 << 6);
                v125 = *v124;
                v126 = *(v124 + 8);
                v127 = v126 >= v121 ? *(v20 + 8) : v126;
                if (v127)
                {
                  break;
                }

                v129 = v125;
                v130 = v24;
                if (v125 != &v125[v126])
                {
                  goto LABEL_180;
                }
              }

              v128 = 8 * v127;
              v129 = v125;
              v130 = v24;
              v131 = &v24[v127];
              while (*v130 == *v129)
              {
                ++v130;
                ++v129;
                v128 -= 8;
                if (!v128)
                {
                  v130 = v131;
                  break;
                }
              }
            }

            while (v129 == &v125[v126]);
LABEL_180:
            ;
          }

          while (v130 != v122 && *v130 >= *v129);
          while (1)
          {
            v132 = *--v112;
            v120 = v132;
            v133 = v19 + (v132 << 6);
            v134 = *v133;
            result = *(v133 + 8);
            if (result >= v121)
            {
              v135 = *(v20 + 8);
            }

            else
            {
              v135 = result;
            }

            if (v135)
            {
              v136 = 8 * v135;
              v137 = v134;
              v138 = v24;
              v139 = &v24[v135];
              while (*v138 == *v137)
              {
                ++v138;
                ++v137;
                v136 -= 8;
                if (!v136)
                {
                  v138 = v139;
                  break;
                }
              }
            }

            else
            {
              v137 = v134;
              v138 = v24;
            }

            if (v137 == &v134[result])
            {
              break;
            }

            if (v138 != v122)
            {
              result = *v137;
              if (*v138 >= *v137)
              {
                break;
              }
            }
          }
        }

        while (i < v112);
      }

      v140 = i - 1;
      if (i - 1 != v9)
      {
        *v9 = *v140;
      }

      a5 = 0;
      *v140 = v18;
    }
  }

  v142 = *(a2 - 1);
  v143 = *i;
  v144 = **a3;
  v145 = v144 + (v142 << 6);
  v146 = v144 + (v143 << 6);
  v147 = *v145;
  v148 = *(v145 + 8);
  v149 = *v146;
  v150 = *(v146 + 8);
  v151 = *v146 + 8 * v150;
  if (v150 >= v148)
  {
    v152 = v148;
  }

  else
  {
    v152 = v150;
  }

  if (v152)
  {
    v153 = 8 * v152;
    v154 = v147;
    v155 = &v147[v152];
    while (1)
    {
      result = *v149;
      if (*v154 != *v149)
      {
        break;
      }

      ++v154;
      ++v149;
      v153 -= 8;
      if (!v153)
      {
        v154 = v155;
        break;
      }
    }
  }

  else
  {
    v154 = v147;
  }

  if (v149 != v151 && (v154 == &v147[v148] || *v154 < *v149))
  {
    *i = v142;
    *(a2 - 1) = v143;
  }

  return result;
}

_DWORD *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(_DWORD *result, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = a4 + (v4 << 6);
  v7 = a4 + (v5 << 6);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = *v7;
  v11 = *(v7 + 8);
  v12 = *v7 + 8 * v11;
  if (v11 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v7 + 8);
  }

  v14 = *v7;
  v15 = v8;
  if (v13)
  {
    v16 = 8 * v13;
    v14 = *v7;
    v15 = v8;
    v17 = &v8[v13];
    while (*v15 == *v14)
    {
      ++v15;
      ++v14;
      v16 -= 8;
      if (!v16)
      {
        v15 = v17;
        break;
      }
    }
  }

  v18 = &v8[v9];
  if (v14 != v12 && (v15 == v18 || *v15 < *v14))
  {
    v19 = *a3;
    v20 = a4 + (v19 << 6);
    v21 = *v20;
    v22 = *(v20 + 8);
    if (v9 >= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v9;
    }

    if (v23)
    {
      v24 = 8 * v23;
      v25 = v21;
      v26 = &v21[v23];
      while (*v25 == *v8)
      {
        ++v25;
        ++v8;
        v24 -= 8;
        if (!v24)
        {
          v25 = v26;
          break;
        }
      }

      if (v8 == v18)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v25 = v21;
      if (v8 == v18)
      {
LABEL_47:
        *result = v4;
        *a2 = v5;
        v48 = *a3;
        v49 = a4 + (v48 << 6);
        v50 = *v49;
        v51 = *(v49 + 8);
        v52 = *(v7 + 8);
        v53 = &v10[v52];
        if (v52 >= v51)
        {
          v54 = v51;
        }

        else
        {
          v54 = v52;
        }

        if (v54)
        {
          v55 = 8 * v54;
          v56 = v50;
          v57 = &v50[v54];
          while (1)
          {
            result = *v10;
            if (*v56 != *v10)
            {
              break;
            }

            ++v56;
            ++v10;
            v55 -= 8;
            if (!v55)
            {
              v56 = v57;
              break;
            }
          }
        }

        else
        {
          v56 = v50;
        }

        if (v10 != v53 && (v56 == &v50[v51] || *v56 < *v10))
        {
          *a2 = v48;
          *a3 = v5;
        }

        return result;
      }
    }

    if (v25 == &v21[v22] || *v25 < *v8)
    {
      *result = v19;
      *a3 = v5;
      return result;
    }

    goto LABEL_47;
  }

  v27 = *a3;
  v28 = a4 + (v27 << 6);
  v29 = *v28;
  v30 = *(v28 + 8);
  if (v9 >= v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = v9;
  }

  if (!v31)
  {
    v33 = v29;
    if (v8 == v18)
    {
      return result;
    }

    goto LABEL_33;
  }

  v32 = 8 * v31;
  v33 = v29;
  v34 = &v29[v31];
  while (*v33 == *v8)
  {
    ++v33;
    ++v8;
    v32 -= 8;
    if (!v32)
    {
      v33 = v34;
      break;
    }
  }

  if (v8 != v18)
  {
LABEL_33:
    if (v33 == &v29[v30] || *v33 < *v8)
    {
      *a2 = v27;
      *a3 = v4;
      v35 = *a2;
      v36 = *result;
      v37 = a4 + (v35 << 6);
      v38 = a4 + (v36 << 6);
      v39 = *v37;
      v40 = *(v37 + 8);
      v41 = *v38;
      v42 = *(v38 + 8);
      v43 = *v38 + 8 * v42;
      if (v42 >= v40)
      {
        v44 = v40;
      }

      else
      {
        v44 = v42;
      }

      if (v44)
      {
        v45 = 8 * v44;
        v46 = v39;
        v47 = &v39[v44];
        while (*v46 == *v41)
        {
          ++v46;
          ++v41;
          v45 -= 8;
          if (!v45)
          {
            v46 = v47;
            break;
          }
        }
      }

      else
      {
        v46 = v39;
      }

      if (v41 != v43 && (v46 == &v39[v40] || *v46 < *v41))
      {
        *result = v35;
        *a2 = v36;
      }
    }
  }

  return result;
}

_DWORD *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, uint64_t **a5)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(a1, a2, a3, **a5);
  v11 = *a4;
  v12 = *a3;
  v13 = **a5;
  v14 = v13 + (v11 << 6);
  v15 = v13 + (v12 << 6);
  v16 = *v14;
  v17 = *(v14 + 8);
  v18 = *v15;
  v19 = *(v15 + 8);
  v20 = *v15 + 8 * v19;
  if (v19 >= v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = v19;
  }

  if (!v21)
  {
    v23 = v16;
    if (v18 == v20)
    {
      return result;
    }

LABEL_12:
    if (v23 != &v16[v17] && *v23 >= *v18)
    {
      return result;
    }

    *a3 = v11;
    *a4 = v12;
    v25 = *a3;
    v26 = *a2;
    v27 = v13 + (v25 << 6);
    v28 = v13 + (v26 << 6);
    v29 = *v27;
    v30 = *(v27 + 8);
    v31 = *v28;
    v32 = *(v28 + 8);
    v33 = *v28 + 8 * v32;
    if (v32 >= v30)
    {
      v34 = v30;
    }

    else
    {
      v34 = v32;
    }

    if (v34)
    {
      v35 = 8 * v34;
      v36 = v29;
      v37 = &v29[v34];
      while (1)
      {
        result = *v36;
        if (*v36 != *v31)
        {
          break;
        }

        ++v36;
        ++v31;
        v35 -= 8;
        if (!v35)
        {
          v36 = v37;
          break;
        }
      }

      if (v31 == v33)
      {
        return result;
      }
    }

    else
    {
      v36 = v29;
      if (v31 == v33)
      {
        return result;
      }
    }

    if (v36 == &v29[v30] || *v36 < *v31)
    {
      *a2 = v25;
      *a3 = v26;
      v38 = *a2;
      v39 = *a1;
      v40 = v13 + (v38 << 6);
      v41 = v13 + (v39 << 6);
      v42 = *v40;
      v43 = *(v40 + 8);
      v44 = *v41;
      v45 = *(v41 + 8);
      v46 = *v41 + 8 * v45;
      if (v45 >= v43)
      {
        v47 = v43;
      }

      else
      {
        v47 = v45;
      }

      if (v47)
      {
        v48 = 8 * v47;
        v49 = v42;
        v50 = &v42[v47];
        while (1)
        {
          result = *v44;
          if (*v49 != *v44)
          {
            break;
          }

          ++v49;
          ++v44;
          v48 -= 8;
          if (!v48)
          {
            v49 = v50;
            break;
          }
        }
      }

      else
      {
        v49 = v42;
      }

      if (v44 != v46 && (v49 == &v42[v43] || *v49 < *v44))
      {
        *a1 = v38;
        *a2 = v39;
      }
    }

    return result;
  }

  v22 = 8 * v21;
  v23 = v16;
  v24 = &v16[v21];
  while (1)
  {
    result = *v23;
    if (*v23 != *v18)
    {
      break;
    }

    ++v23;
    ++v18;
    v22 -= 8;
    if (!v22)
    {
      v23 = v24;
      break;
    }
  }

  if (v18 != v20)
  {
    goto LABEL_12;
  }

  return result;
}

_DWORD *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, uint64_t **a6)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(a1, a2, a3, a4, a6);
  v13 = *a5;
  v14 = *a4;
  v15 = **a6;
  v16 = v15 + (v13 << 6);
  v17 = v15 + (v14 << 6);
  v18 = *v16;
  v19 = *(v16 + 8);
  v20 = *v17;
  v21 = *(v17 + 8);
  v22 = *v17 + 8 * v21;
  if (v21 >= v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = v21;
  }

  if (!v23)
  {
    v25 = v18;
    if (v20 == v22)
    {
      return result;
    }

LABEL_12:
    if (v25 != &v18[v19] && *v25 >= *v20)
    {
      return result;
    }

    *a4 = v13;
    *a5 = v14;
    v27 = *a4;
    v28 = *a3;
    v29 = v15 + (v27 << 6);
    v30 = v15 + (v28 << 6);
    v31 = *v29;
    v32 = *(v29 + 8);
    v33 = *v30;
    v34 = *(v30 + 8);
    v35 = *v30 + 8 * v34;
    if (v34 >= v32)
    {
      v36 = v32;
    }

    else
    {
      v36 = v34;
    }

    if (v36)
    {
      v37 = 8 * v36;
      v38 = v31;
      v39 = &v31[v36];
      while (1)
      {
        result = *v38;
        if (*v38 != *v33)
        {
          break;
        }

        ++v38;
        ++v33;
        v37 -= 8;
        if (!v37)
        {
          v38 = v39;
          break;
        }
      }

      if (v33 == v35)
      {
        return result;
      }
    }

    else
    {
      v38 = v31;
      if (v33 == v35)
      {
        return result;
      }
    }

    if (v38 == &v31[v32] || *v38 < *v33)
    {
      *a3 = v27;
      *a4 = v28;
      v40 = *a3;
      v41 = *a2;
      v42 = v15 + (v40 << 6);
      v43 = v15 + (v41 << 6);
      v44 = *v42;
      v45 = *(v42 + 8);
      v46 = *v43;
      v47 = *(v43 + 8);
      v48 = *v43 + 8 * v47;
      if (v47 >= v45)
      {
        v49 = v45;
      }

      else
      {
        v49 = v47;
      }

      if (v49)
      {
        v50 = 8 * v49;
        v51 = v44;
        v52 = &v44[v49];
        while (1)
        {
          result = *v51;
          if (*v51 != *v46)
          {
            break;
          }

          ++v51;
          ++v46;
          v50 -= 8;
          if (!v50)
          {
            v51 = v52;
            break;
          }
        }
      }

      else
      {
        v51 = v44;
      }

      if (v46 != v48 && (v51 == &v44[v45] || *v51 < *v46))
      {
        *a2 = v40;
        *a3 = v41;
        v53 = *a2;
        v54 = *a1;
        v55 = v15 + (v53 << 6);
        v56 = v15 + (v54 << 6);
        v57 = *v55;
        v58 = *(v55 + 8);
        v59 = *v56;
        v60 = *(v56 + 8);
        v61 = *v56 + 8 * v60;
        if (v60 >= v58)
        {
          v62 = v58;
        }

        else
        {
          v62 = v60;
        }

        if (v62)
        {
          v63 = 8 * v62;
          v64 = v57;
          v65 = &v57[v62];
          while (1)
          {
            result = *v59;
            if (*v64 != *v59)
            {
              break;
            }

            ++v64;
            ++v59;
            v63 -= 8;
            if (!v63)
            {
              v64 = v65;
              break;
            }
          }
        }

        else
        {
          v64 = v57;
        }

        if (v59 != v61 && (v64 == &v57[v58] || *v64 < *v59))
        {
          *a1 = v53;
          *a2 = v54;
        }
      }
    }

    return result;
  }

  v24 = 8 * v23;
  v25 = v18;
  v26 = &v18[v23];
  while (1)
  {
    result = *v25;
    if (*v25 != *v20)
    {
      break;
    }

    ++v25;
    ++v20;
    v24 -= 8;
    if (!v24)
    {
      v25 = v26;
      break;
    }
  }

  if (v20 != v22)
  {
    goto LABEL_12;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t **a3)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(a1, a1 + 1, a2 - 1, **a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      v7 = **a3;
      v8 = v7 + (v5 << 6);
      v9 = v7 + (v6 << 6);
      v10 = *v8;
      v11 = *(v8 + 8);
      v12 = *v9;
      v13 = *(v9 + 8);
      v14 = *v9 + 8 * v13;
      if (v13 >= v11)
      {
        v15 = v11;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        v16 = 8 * v15;
        v17 = v10;
        v18 = &v10[v15];
        while (*v17 == *v12)
        {
          ++v17;
          ++v12;
          v16 -= 8;
          if (!v16)
          {
            v17 = v18;
            break;
          }
        }
      }

      else
      {
        v17 = v10;
      }

      if (v12 != v14 && (v17 == &v10[v11] || *v17 < *v12))
      {
        *a1 = v5;
        *(a2 - 1) = v6;
      }

      return 1;
    }
  }

  v20 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, **a3);
  v23 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v24 = 0;
  v25 = **a3;
  while (1)
  {
    v26 = *v23;
    v27 = *v20;
    v28 = v25 + (v26 << 6);
    v29 = v25 + (v27 << 6);
    v30 = *v28;
    v31 = *(v28 + 8);
    v32 = *v29;
    v33 = *(v29 + 8);
    v34 = v33 >= v31 ? *(v28 + 8) : v33;
    if (v34)
    {
      break;
    }

    v36 = v32;
    v37 = *v28;
    if (v32 != &v32[v33])
    {
      goto LABEL_33;
    }

LABEL_21:
    v20 = v23++;
    if (v23 == a2)
    {
      return 1;
    }
  }

  v35 = 8 * v34;
  v36 = v32;
  v37 = *v28;
  v38 = &v30[v34];
  while (*v37 == *v36)
  {
    ++v37;
    ++v36;
    v35 -= 8;
    if (!v35)
    {
      v37 = v38;
      break;
    }
  }

  if (v36 == &v32[v33])
  {
    goto LABEL_21;
  }

LABEL_33:
  if (v37 != &v30[v31] && *v37 >= *v36)
  {
    goto LABEL_21;
  }

  *v23 = v27;
  v39 = v20;
  while (1)
  {
    v41 = *--v39;
    v40 = v41;
    v42 = v25 + (v41 << 6);
    v43 = *(v28 + 8);
    v44 = *v42;
    v45 = *(v42 + 8);
    v46 = v45 >= v43 ? *(v28 + 8) : v45;
    if (v46)
    {
      v47 = 8 * v46;
      v48 = v44;
      v49 = v30;
      v50 = &v30[v46];
      while (*v49 == *v48)
      {
        ++v49;
        ++v48;
        v47 -= 8;
        if (!v47)
        {
          v49 = v50;
          break;
        }
      }
    }

    else
    {
      v48 = v44;
      v49 = v30;
    }

    if (v48 == &v44[v45] || v49 != &v30[v43] && *v49 >= *v48)
    {
      break;
    }

    *v20 = v40;
    v20 = v39;
    if (v39 == a1)
    {
      v20 = a1;
      break;
    }
  }

  *v20 = v26;
  if (++v24 != 8)
  {
    goto LABEL_21;
  }

  return v23 + 1 == a2;
}

void *CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMaxOp>::~CanonicalizeSingleResultAffineMinMaxOp(void *a1)
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

void CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMaxOp>::~CanonicalizeSingleResultAffineMinMaxOp(void *a1)
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

uint64_t CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v5 = a2 + 64;
  v10[0] = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v10[0] = mlir::AffineMapAttr::getValue(v10);
  if (mlir::AffineMap::getNumResults(v10) != 1)
  {
    return 0;
  }

  v10[0] = *(v5 + 16 * ((*(a2 + 44) >> 23) & 1));
  Value = mlir::AffineMapAttr::getValue(v10);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v6 = *(a2 + 68);
    v7 = *(a2 + 72);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v10[0] = v7;
  v10[1] = v6;
  v8 = mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap,mlir::OperandRange>(a3 + 1, *(a2 + 24), &Value, v10);
  (*(*a3 + 1))(a3, a2, v8);
  return 1;
}

void *DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMaxOp>::~DeduplicateAffineMinMaxExpressions(void *a1)
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

void DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMaxOp>::~DeduplicateAffineMinMaxExpressions(void *a1)
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

uint64_t DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v22 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(&v22);
  v22 = v24;
  v23 = 0x400000000;
  Results = mlir::AffineMap::getResults(&Value);
  v7 = v23;
  if (v6)
  {
    v8 = &Results[v6];
    do
    {
      while (1)
      {
        v9 = *Results;
        v10 = v22;
        if (v7)
        {
          v11 = 8 * v7;
          v10 = v22;
          while (*v10 != v9)
          {
            ++v10;
            v11 -= 8;
            if (!v11)
            {
              goto LABEL_9;
            }
          }
        }

        if (v10 == (v22 + 8 * v7))
        {
          break;
        }

        if (++Results == v8)
        {
          goto LABEL_13;
        }
      }

LABEL_9:
      if (v7 >= HIDWORD(v23))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v22 + v7) = v9;
      v7 = v23 + 1;
      LODWORD(v23) = v23 + 1;
      ++Results;
    }

    while (Results != v8);
  }

LABEL_13:
  if (v7 == mlir::AffineMap::getNumResults(&Value))
  {
    v12 = 0;
    v13 = v22;
    if (v22 == v24)
    {
      return v12;
    }

    goto LABEL_19;
  }

  NumDims = mlir::AffineMap::getNumDims(&Value);
  NumSymbols = mlir::AffineMap::getNumSymbols(&Value);
  v20 = mlir::AffineMap::get(NumDims, NumSymbols, v22, v23, a3[1]);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v16 = *(a2 + 68);
    v17 = *(a2 + 72);
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  mlir::ValueRange::ValueRange(v25, v17, v16);
  v18 = mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,mlir::ValueRange>(a3 + 1, *(a2 + 24), &v20, v25);
  (*(*a3 + 1))(a3, a2, v18);
  v12 = 1;
  v13 = v22;
  if (v22 != v24)
  {
LABEL_19:
    free(v13);
  }

  return v12;
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,mlir::ValueRange>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::IndexType,mlir::AffineMap &,llvm::SmallVector<mlir::Value,6u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::affine::AffineMaxOp::build(a1, v17, *a3, *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id)
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

void *MergeAffineMinMaxOp<mlir::affine::AffineMaxOp>::~MergeAffineMinMaxOp(void *a1)
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

void MergeAffineMinMaxOp<mlir::affine::AffineMaxOp>::~MergeAffineMinMaxOp(void *a1)
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

uint64_t mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,llvm::SmallVector<mlir::Value,8u> &>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::IndexType,mlir::AffineMap &,llvm::SmallVector<mlir::Value,6u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::affine::AffineMaxOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

void *anonymous namespace::SimplifyAffineOp<mlir::affine::AffineMaxOp>::~SimplifyAffineOp(void *a1)
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

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineMaxOp>::~SimplifyAffineOp(void *a1)
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

uint64_t mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::IndexType,mlir::AffineMap &,llvm::SmallVector<mlir::Value,6u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::affine::AffineMaxOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

void *CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMaxOp>::~CanonicalizeAffineMinMaxOpExprAndTermOrder(void *a1)
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

void CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMaxOp>::~CanonicalizeAffineMinMaxOpExprAndTermOrder(void *a1)
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

uint64_t CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v10[0] = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(v10);
  if ((canonicalizeMapExprAndTermOrder(&Value) & 1) == 0)
  {
    return 0;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 68);
    v6 = *(a2 + 72);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  mlir::ValueRange::ValueRange(v10, v6, v5);
  v7 = mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,mlir::ValueRange>(a3 + 1, *(a2 + 24), &Value, v10);
  (*(*a3 + 1))(a3, a2, v7);
  return 1;
}

void *anonymous namespace::SimplifyAffineOp<mlir::affine::AffinePrefetchOp>::~SimplifyAffineOp(void *a1)
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

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffinePrefetchOp>::~SimplifyAffineOp(void *a1)
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

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffinePrefetchOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v41[6] = *MEMORY[0x277D85DE8];
  v5 = a2 + 64;
  v38 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 24);
  Value = mlir::AffineMapAttr::getValue(&v38);
  v30 = Value;
  if ((*(a2 + 46) & 0x80) == 0)
  {
    v38 = v40;
    v39 = 0x800000000;
LABEL_3:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = *(a2 + 68);
  v8 = v7 - 1;
  v9 = *(a2 + 72) + 32;
  v38 = v40;
  v39 = 0x800000000;
  if ((v7 - 1) >= 9)
  {
    goto LABEL_3;
  }

  v10 = 0;
  if (v7 == 1)
  {
    v22 = 0;
  }

  else
  {
    v11 = v40;
    if (v8 >= 0xD && (v40 >= v9 + 32 * v8 || v9 + 24 >= &v40[v8]))
    {
      v13 = v8 & 3;
      if ((v8 & 3) == 0)
      {
        v13 = 4;
      }

      v12 = v8 - v13;
      v14 = (v9 + 88);
      v15 = v41;
      v16 = v12;
      do
      {
        v17 = v14 - 8;
        v18 = vld4q_f64(v17);
        v19 = vld4q_f64(v14);
        *(v15 - 1) = v18;
        *v15 = v19;
        v14 += 16;
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      v11 = &v40[v12];
    }

    else
    {
      v12 = 0;
    }

    v20 = v8 - v12;
    v21 = (32 * v12) | 0x18;
    do
    {
      *v11++ = *(v9 + v21);
      v21 += 32;
      --v20;
    }

    while (v20);
    v22 = v39;
    v10 = v8;
  }

  LODWORD(v39) = v22 + v10;
  composeAffineMapAndOperands(&v30, &v38);
  mlir::affine::canonicalizeMapAndOperands(&v30, &v38);
  simplifyMapWithOperands(&v30, v38, v39);
  v23 = v38;
  if (v30 == Value)
  {
    if (!v10)
    {
LABEL_24:
      v27 = 0;
      if (v38 == v40)
      {
        return v27;
      }

      goto LABEL_28;
    }

    v25 = 0;
    v26 = (v9 + 24);
    while (*v26 == *(v38 + v25))
    {
      ++v25;
      v26 += 4;
      if (v10 == v25)
      {
        goto LABEL_24;
      }
    }
  }

  v33[1] = v39;
  v34 = v30;
  v32 = *(*(a2 + 72) + 24);
  v33[0] = v38;
  v35 = *(a2 + 88);
  v31 = mlir::BoolAttr::getValue(&v35);
  v37 = *(v5 + 16 * ((*(a2 + 44) >> 23) & 1) + 16);
  mlir::IntegerAttr::getValue(&v37, &v35);
  if (v36 > 0x40)
  {
    v24 = *v35;
    MEMORY[0x259C63150]();
  }

  else
  {
    LODWORD(v24) = v35;
  }

  LODWORD(v37) = v24;
  v35 = *(v5 + 16 * ((*(a2 + 44) >> 23) & 1));
  LOBYTE(v35) = mlir::BoolAttr::getValue(&v35);
  v28 = mlir::OpBuilder::create<mlir::affine::AffinePrefetchOp,mlir::detail::TypedValue<mlir::MemRefType>,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &,BOOL,unsigned int,BOOL>(a3 + 1, *(a2 + 24), &v32, &v34, v33, &v31, &v37, &v35);
  ((*a3)[1])(a3, a2, v28);
  v27 = 1;
  v23 = v38;
  if (v38 != v40)
  {
LABEL_28:
    free(v23);
  }

  return v27;
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffinePrefetchOp,mlir::detail::TypedValue<mlir::MemRefType>,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &,BOOL,unsigned int,BOOL>(uint64_t **a1, uint64_t a2, uint64_t *a3, unint64_t *a4, uint64_t a5, unsigned __int8 *a6, unsigned int *a7, unsigned __int8 *a8)
{
  v25[38] = *MEMORY[0x277D85DE8];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffinePrefetchOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffinePrefetchOp,mlir::detail::TypedValue<mlir::MemRefType>,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &,BOOL,unsigned int,BOOL>(v25, v24, v23);
  }

  mlir::OperationState::OperationState(v25, a2, v17);
  mlir::affine::AffinePrefetchOp::build(a1, v25, *a3, *a4, *a5, *(a5 + 8), *a6, *a7, *a8);
  v19 = mlir::OpBuilder::create(a1, v25);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffinePrefetchOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v25);
  return v20;
}

uint64_t mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineParallelOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v5, a2, "affine.yield", 12);
  mlir::ValueRange::ValueRange(v6, 0, 0);
  mlir::OperationState::addOperands(v5, v6[0], v6[1]);
  v3 = mlir::Operation::create(v5, v2);
  mlir::OperationState::~OperationState(v5);
  return v3;
}

void *mlir::affine::AffineParallelOp::print(mlir::OpAsmPrinter &)::$_1::operator()<mlir::Attribute const>(uint64_t *a1, uint64_t a2)
{
  v15 = a2;
  Int = mlir::IntegerAttr::getInt(&v15);
  v4 = mlir::arith::symbolizeAtomicRMWKind(Int);
  v5 = *a1;
  v6 = (*(*v5 + 16))(v5);
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, "", 1uLL);
  }

  else
  {
    *v7 = 34;
    ++v6[4];
  }

  v8 = mlir::arith::stringifyAtomicRMWKind(v4);
  v10 = v9;
  v11 = (*(*v5 + 16))(v5);
  if (v10 <= *(v11 + 24) - *(v11 + 32))
  {
    if (v10)
    {
      v12 = v11;
      memcpy(*(v11 + 32), v8, v10);
      *(v12 + 32) += v10;
    }
  }

  else
  {
    llvm::raw_ostream::write(v11, v8, v10);
  }

  result = (*(*v5 + 16))(v5);
  v14 = result[4];
  if (result[3] == v14)
  {
    return llvm::raw_ostream::write(result, "", 1uLL);
  }

  *v14 = 34;
  ++result[4];
  return result;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::affine::AffineParallelOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t *a1)
{
  v34[9] = *MEMORY[0x277D85DE8];
  v22 = 0;
  v33[0] = v34;
  v33[1] = 0x400000000;
  v34[8] = 4;
  (*(**a1 + 40))(*a1);
  v2 = *a1;
  NoneType = mlir::Builder::getNoneType(a1[1], v3);
  if (mlir::AsmParser::parseAttribute<mlir::StringAttr>(v2, &v22, NoneType, "reduce", 6uLL, v33))
  {
    Value = mlir::StringAttr::getValue(&v22);
    v7 = mlir::arith::symbolizeAtomicRMWKind(Value, v6);
    if (v8)
    {
      v9 = a1[2];
      I64IntegerAttr = mlir::Builder::getI64IntegerAttr(a1[1], v7);
      v11 = *(v9 + 8);
      if (v11 >= *(v9 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*v9 + 8 * v11) = I64IntegerAttr;
      ++*(v9 + 8);
      v12 = 1;
    }

    else
    {
      (*(**a1 + 24))(&v23);
      if (v23)
      {
        mlir::Diagnostic::operator<<(&v24, v22);
      }

      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v23);
      if (v23)
      {
        mlir::InFlightDiagnostic::report(&v23);
      }

      if (v32 == 1)
      {
        if (v31 != &v32)
        {
          free(v31);
        }

        v14 = __p;
        if (__p)
        {
          v15 = v30;
          v16 = __p;
          if (v30 != __p)
          {
            do
            {
              v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
            }

            while (v15 != v14);
            v16 = __p;
          }

          v30 = v14;
          operator delete(v16);
        }

        v17 = v27;
        if (v27)
        {
          v18 = v28;
          v19 = v27;
          if (v28 != v27)
          {
            do
            {
              v21 = *--v18;
              v20 = v21;
              *v18 = 0;
              if (v21)
              {
                MEMORY[0x259C63150](v20, 0x1000C8077774924);
              }
            }

            while (v18 != v17);
            v19 = v27;
          }

          v28 = v17;
          operator delete(v19);
        }

        if (v25 != &v26)
        {
          free(v25);
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  if (v33[0] != v34)
  {
    free(v33[0]);
  }

  return v12;
}

BOOL mlir::AsmParser::parseAttribute<mlir::StringAttr>(uint64_t a1, uint64_t *a2, uint64_t a3, size_t a4, size_t a5, uint64_t a6)
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = (*(*a1 + 40))(a1);
  v26 = 0;
  if (((*(*a1 + 440))(a1, &v26, a3) & 1) == 0)
  {
    return 0;
  }

  if (*(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v13 = v26;
  }

  else
  {
    v13 = 0;
  }

  *a2 = v13;
  if (v13)
  {
    mlir::NamedAttrList::append(a6, a4, a5, v13);
    return 1;
  }

  else
  {
    v24 = "invalid kind of attribute specified";
    v25 = 259;
    (*(*a1 + 24))(v27, a1, v12, &v24);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    v15 = result;
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
      result = v15;
    }

    if (v35 == 1)
    {
      if (v34 != &v35)
      {
        free(v34);
        result = v15;
      }

      v16 = __p;
      if (__p)
      {
        v17 = v33;
        v18 = __p;
        if (v33 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v33 = v16;
        operator delete(v18);
        result = v15;
      }

      v19 = v30;
      if (v30)
      {
        v20 = v31;
        v21 = v30;
        if (v31 != v30)
        {
          do
          {
            v23 = *--v20;
            v22 = v23;
            *v20 = 0;
            if (v23)
            {
              MEMORY[0x259C63150](v22, 0x1000C8077774924);
            }
          }

          while (v20 != v19);
          v21 = v30;
        }

        v31 = v19;
        operator delete(v21);
        result = v15;
      }

      if (v28 != &v29)
      {
        free(v28);
        return v15;
      }
    }
  }

  return result;
}

void *anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorLoadOp>::~SimplifyAffineOp(void *a1)
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

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorLoadOp>::~SimplifyAffineOp(void *a1)
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

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorLoadOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38[6] = *MEMORY[0x277D85DE8];
  v35 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(&v35);
  v30 = Value;
  if ((*(a2 + 46) & 0x80) == 0)
  {
    v35 = v37;
    v36 = 0x800000000;
LABEL_3:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = *(a2 + 68);
  v7 = v6 - 1;
  v8 = *(a2 + 72) + 32;
  v35 = v37;
  v36 = 0x800000000;
  if ((v6 - 1) >= 9)
  {
    goto LABEL_3;
  }

  v9 = 0;
  if (v6 == 1)
  {
    v21 = 0;
  }

  else
  {
    v10 = v37;
    if (v7 >= 0xD && (v37 >= v8 + 32 * v7 || v8 + 24 >= &v37[v7]))
    {
      v12 = v7 & 3;
      if ((v7 & 3) == 0)
      {
        v12 = 4;
      }

      v11 = v7 - v12;
      v13 = (v8 + 88);
      v14 = v38;
      v15 = v11;
      do
      {
        v16 = v13 - 8;
        v17 = vld4q_f64(v16);
        v18 = vld4q_f64(v13);
        *(v14 - 1) = v17;
        *v14 = v18;
        v13 += 16;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      v10 = &v37[v11];
    }

    else
    {
      v11 = 0;
    }

    v19 = v7 - v11;
    v20 = (32 * v11) | 0x18;
    do
    {
      *v10++ = *(v8 + v20);
      v20 += 32;
      --v19;
    }

    while (v19);
    v21 = v36;
    v9 = v7;
  }

  LODWORD(v36) = v21 + v9;
  composeAffineMapAndOperands(&v30, &v35);
  mlir::affine::canonicalizeMapAndOperands(&v30, &v35);
  simplifyMapWithOperands(&v30, v35, v36);
  v22 = v35;
  if (v30 == Value)
  {
    if (!v9)
    {
LABEL_28:
      v26 = 0;
      if (v35 == v37)
      {
        return v26;
      }

      goto LABEL_22;
    }

    v28 = 0;
    v29 = (v8 + 24);
    while (*v29 == *(v35 + v28))
    {
      ++v28;
      v29 += 4;
      if (v9 == v28)
      {
        goto LABEL_28;
      }
    }
  }

  v33[1] = v36;
  v34 = v30;
  v33[0] = v35;
  if (*(a2 + 36))
  {
    v23 = a2 - 16;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v31 = *(*(a2 + 72) + 24);
  v32 = v24;
  v25 = mlir::OpBuilder::create<mlir::affine::AffineVectorLoadOp,mlir::VectorType,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>((a3 + 8), *(a2 + 24), &v32, &v31, &v34, v33);
  (*(*a3 + 8))(a3, a2, v25);
  v26 = 1;
  v22 = v35;
  if (v35 != v37)
  {
LABEL_22:
    free(v22);
  }

  return v26;
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffineVectorLoadOp,mlir::VectorType,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t a6)
{
  v25[5] = *MEMORY[0x277D85DE8];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineVectorLoadOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineVectorLoadOp,mlir::VectorType,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(v24, v25, v23);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = *a5;
  v18 = mlir::ValueRange::ValueRange(v25, *a6, *(a6 + 8));
  mlir::affine::AffineVectorLoadOp::build(v18, v24, v15, v16, v17, v25[0], v25[1]);
  v19 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineVectorLoadOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v20;
}

void *anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorStoreOp>::~SimplifyAffineOp(void *a1)
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

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorStoreOp>::~SimplifyAffineOp(void *a1)
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

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorStoreOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37[6] = *MEMORY[0x277D85DE8];
  v34 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(&v34);
  v29 = Value;
  if ((*(a2 + 46) & 0x80) == 0)
  {
    v34 = v36;
    v35 = 0x800000000;
LABEL_3:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = *(a2 + 68);
  v7 = v6 - 2;
  v8 = *(a2 + 72) + 64;
  v34 = v36;
  v35 = 0x800000000;
  if ((v6 - 2) >= 9)
  {
    goto LABEL_3;
  }

  v9 = 0;
  if (v6 == 2)
  {
    v21 = 0;
  }

  else
  {
    v10 = v36;
    if (v7 >= 0xD && (v36 >= v8 + 32 * v7 || v8 + 24 >= &v36[v7]))
    {
      v12 = v7 & 3;
      if ((v7 & 3) == 0)
      {
        v12 = 4;
      }

      v11 = v7 - v12;
      v13 = (v8 + 88);
      v14 = v37;
      v15 = v11;
      do
      {
        v16 = v13 - 8;
        v17 = vld4q_f64(v16);
        v18 = vld4q_f64(v13);
        *(v14 - 1) = v17;
        *v14 = v18;
        v13 += 16;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      v10 = &v36[v11];
    }

    else
    {
      v11 = 0;
    }

    v19 = v7 - v11;
    v20 = (32 * v11) | 0x18;
    do
    {
      *v10++ = *(v8 + v20);
      v20 += 32;
      --v19;
    }

    while (v19);
    v21 = v35;
    v9 = v7;
  }

  LODWORD(v35) = v21 + v9;
  composeAffineMapAndOperands(&v29, &v34);
  mlir::affine::canonicalizeMapAndOperands(&v29, &v34);
  simplifyMapWithOperands(&v29, v34, v35);
  v22 = v34;
  if (v29 == Value)
  {
    if (!v9)
    {
LABEL_25:
      v25 = 0;
      if (v34 == v36)
      {
        return v25;
      }

      goto LABEL_19;
    }

    v27 = 0;
    v28 = (v8 + 24);
    while (*v28 == *(v34 + v27))
    {
      ++v27;
      v28 += 4;
      if (v9 == v27)
      {
        goto LABEL_25;
      }
    }
  }

  v32[1] = v35;
  v33 = v29;
  v23 = *(a2 + 72);
  v31 = *(v23 + 24);
  v32[0] = v34;
  v30 = *(v23 + 56);
  v24 = mlir::OpBuilder::create<mlir::affine::AffineVectorStoreOp,mlir::Value,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>((a3 + 8), *(a2 + 24), &v31, &v30, &v33, v32);
  (*(*a3 + 8))(a3, a2, v24);
  v25 = 1;
  v22 = v34;
  if (v34 != v36)
  {
LABEL_19:
    free(v22);
  }

  return v25;
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffineVectorStoreOp,mlir::Value,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t a6)
{
  v35[24] = *MEMORY[0x277D85DE8];
  v27 = a2;
  Context = mlir::Attribute::getContext(&v27);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineVectorStoreOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineVectorStoreOp,mlir::Value,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(v34, v31, v28);
  }

  mlir::OperationState::OperationState(v34, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = *a5;
  mlir::ValueRange::ValueRange(v33, *a6, *(a6 + 8));
  v18 = v33[0];
  v19 = v33[1];
  v29 = v16;
  v30 = v15;
  mlir::OperationState::addOperands(v34, &v30, 1uLL);
  mlir::OperationState::addOperands(v34, &v29, 1uLL);
  mlir::OperationState::addOperands(v34, v18, v19);
  v20 = mlir::AffineMapAttr::get(v17);
  v21 = mlir::Attribute::getContext(v34);
  v32 = 261;
  v31[0] = "map";
  v31[1] = 3;
  v23 = mlir::StringAttr::get(v21, v31, v22);
  mlir::NamedAttribute::NamedAttribute(v28, v23, v20);
  mlir::NamedAttrList::push_back(v35, v28[0], v28[1]);
  v24 = mlir::OpBuilder::create(a1, v34);
  if (*(*(v24 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineVectorStoreOp,void>::id)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  mlir::OperationState::~OperationState(v34);
  return v25;
}

void anonymous namespace::DropDelinearizeOfSingleLoop::~DropDelinearizeOfSingleLoop(_anonymous_namespace_::DropDelinearizeOfSingleLoop *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineDelinearizeIndexOp &>(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v3 = 1;
  v9 = 1;
  if (*a3)
  {
    v7 = a3;
    v3 = 3;
  }

  v8 = v3;
  v4 = *a2;
  v10 = &v7;
  v5 = *(a1 + 16);
  if (v5 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
    (*(*v5 + 88))(v5, *(v4 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineDelinearizeIndexOp &>(mlir::affine::AffineDelinearizeIndexOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v10);
  }

  return 0;
}

void anonymous namespace::DropUnitExtentBasis::~DropUnitExtentBasis(_anonymous_namespace_::DropUnitExtentBasis *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::DropUnitExtentBasis::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 36);
  v45 = v48;
  v47 = 6;
  if (v4 >= 7)
  {
    v46 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v4)
  {
    bzero(v48, 8 * v4);
  }

  v46 = v4;
  v36 = *(a2 + 24);
  v42 = v44;
  v43 = 0x600000000;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 68);
    v6 = v5 - 1;
    if (v5 == 1)
    {
      goto LABEL_55;
    }

    v35 = a2;
    v7 = *(a2 + 72) + 32;
  }

  else
  {
    v35 = a2;
    v6 = -1;
    v7 = 32;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = (v7 + 24);
  do
  {
    while (1)
    {
      v12 = *v11;
      v38 = *v11;
      DefiningOp = mlir::Value::getDefiningOp(&v38);
      if (!DefiningOp)
      {
        goto LABEL_41;
      }

      v14 = DefiningOp;
      LODWORD(v50) = 1;
      v49 = 0;
      v39 = &v49;
      v40 = &v41;
      v41 = 0;
      if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v40, DefiningOp))
      {
        v15 = *(*(*(v14 - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
        v16 = v15 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
        v17 = v16 || v15 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
        if (v17 || v15 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          break;
        }
      }

      v22 = 0;
      if (v50 < 0x41)
      {
        goto LABEL_36;
      }

LABEL_33:
      if (!v49)
      {
        goto LABEL_36;
      }

      MEMORY[0x259C63150](v49, 0x1000C8000313F17);
      if (!v22)
      {
        goto LABEL_41;
      }

LABEL_37:
      if ((v9 & 1) == 0)
      {
        LODWORD(v49) = 0;
        v10 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,int>((a3 + 8), v36, &v49) - 16;
      }

      *(v45 + v8) = v10;
      v9 = 1;
      ++v8;
      v11 += 4;
      if (v6 == v8)
      {
        goto LABEL_45;
      }
    }

    v19 = mlir::detail::constant_int_value_binder::match(&v39, v41);
    v20 = v50;
    if (v19)
    {
      if (v50 >= 0x41)
      {
        if (v20 - llvm::APInt::countLeadingZerosSlowCase(&v49) > 0x40)
        {
          if (v49)
          {
            MEMORY[0x259C63150](v49, 0x1000C8000313F17);
          }

          goto LABEL_41;
        }

        v21 = v49;
      }

      else
      {
        v21 = &v49;
      }

      v22 = *v21 == 1;
      if (v20 >= 0x41)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v22 = 0;
      if (v50 >= 0x41)
      {
        goto LABEL_33;
      }
    }

LABEL_36:
    if (v22)
    {
      goto LABEL_37;
    }

LABEL_41:
    if (v43 >= HIDWORD(v43))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v42 + v43) = v12;
    LODWORD(v43) = v43 + 1;
    ++v8;
    v11 += 4;
  }

  while (v6 != v8);
LABEL_45:
  if ((*(v35 + 46) & 0x80) == 0)
  {
    if (v43)
    {
      goto LABEL_48;
    }

    goto LABEL_59;
  }

  if (*(v35 + 68) - 1 == v43)
  {
LABEL_55:
    v32 = 0;
    v33 = v42;
    if (v42 != v44)
    {
      goto LABEL_61;
    }

    goto LABEL_62;
  }

  if (!v43)
  {
LABEL_59:
    v24 = v45;
    v25 = v46;
    goto LABEL_60;
  }

LABEL_48:
  v49 = *(*(v35 + 72) + 24);
  v23 = mlir::OpBuilder::create<mlir::affine::AffineDelinearizeIndexOp,mlir::detail::TypedValue<mlir::IndexType>,llvm::SmallVector<mlir::Value,6u> &>((a3 + 8), v36, &v49, &v42);
  v24 = v45;
  v25 = v46;
  if (v46)
  {
    v26 = 0;
    v27 = 0;
    v28 = 8 * v46;
    do
    {
      if (!*&v24[v26])
      {
        v29 = v27 - 5;
        v30 = v27++ >= 6;
        v31 = v23 - 96 - 24 * v29;
        if (!v30)
        {
          v31 = v23 - 16 * v27;
        }

        *&v24[v26] = v31;
      }

      v26 += 8;
    }

    while (v28 != v26);
  }

LABEL_60:
  mlir::ValueRange::ValueRange(&v49, v24, v25);
  (**a3)(a3, v35, v49, v50);
  v32 = 1;
  v33 = v42;
  if (v42 != v44)
  {
LABEL_61:
    free(v33);
  }

LABEL_62:
  if (v45 != v48)
  {
    free(v45);
  }

  return v32;
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffineDelinearizeIndexOp,mlir::detail::TypedValue<mlir::IndexType>,llvm::SmallVector<mlir::Value,6u> &>(mlir::IndexType **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineDelinearizeIndexOp,mlir::detail::TypedValue<mlir::IndexType>,llvm::SmallVector<mlir::Value,6u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::affine::AffineDelinearizeIndexOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

uint64_t mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,int>(mlir::IndexType **a1, uint64_t a2, int *a3)
{
  v15[38] = *MEMORY[0x277D85DE8];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::arith::ConstantIndexOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (!mlir::arith::ConstantIndexOp::classof(v9, v10))
  {
    v9 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v9;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties]";
  v6 = 113;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties]";
  v6 = 114;
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

uint64_t llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(uint64_t a1, void *a2, uint64_t *a3, int *a4, char *a5, uint64_t *a6)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v7 = *a4;
  v8 = *a5;
  v9 = *a6;
  *&v16 = *a2;
  *(&v16 + 1) = v9;
  *&v17 = v6 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(&v17 + 1) = 0;
  LODWORD(v18) = v7;
  BYTE4(v18) = v8;
  v10 = *(a1 + 8);
  v11 = *a1;
  if (v10 >= *(a1 + 12))
  {
    if (v11 > &v16 || v11 + 40 * v10 <= &v16)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v12 = v11 + 40 * *(a1 + 8);
  v13 = v16;
  v14 = v17;
  *(v12 + 32) = v18;
  *v12 = v13;
  *(v12 + 16) = v14;
  LODWORD(v12) = *(a1 + 8) + 1;
  *(a1 + 8) = v12;
  return *a1 + 40 * v12 - 40;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties]";
  v6 = 113;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties]";
  v6 = 113;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

const char *llvm::getTypeName<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

const char *llvm::getTypeName<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase::Properties]";
  v6 = 120;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase::Properties]";
  v6 = 121;
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

uint64_t OUTLINED_FUNCTION_19_4@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  *a2 = 8236;
  *(result + 32) += 2;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_7@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *(result + 32) = a2 + 1;
  *a2 = 91;
  return result;
}

__n128 OUTLINED_FUNCTION_25_4@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15)
{
  v16 = (a1 + 24 * a15);
  result = *v15;
  v16[1].n128_u64[0] = v15[1].n128_u64[0];
  *v16 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_54_6(uint64_t a1)
{
  if (*(a1 + 36))
  {
    v2 = a1 - 16;
  }

  else
  {
    v2 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
}

void OUTLINED_FUNCTION_71_6()
{

  JUMPOUT(0x259C63150);
}

__n128 OUTLINED_FUNCTION_78_5()
{
  result = *(v0 + 16);
  *(v1 + 24) = *v0;
  *(v1 + 40) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_85_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13)
{
  *(v14 - 88) = a12;
  *(v14 - 80) = a13;
  return v13 + 8;
}

uint64_t OUTLINED_FUNCTION_102_5@<X0>(void **a1@<X2>, mlir::Operation *a2@<X8>)
{

  return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps5(a2, v2 & 0xFFFFFFFFFFFFFFF8, a1, 6, 0);
}

llvm::raw_ostream *OUTLINED_FUNCTION_119_2(unsigned int a1)
{

  return printDimAndSymbolList(v3, v2, v5, v4, a1, v1);
}

void OUTLINED_FUNCTION_120_1(mlir::Operation **a1@<X0>, void **a2@<X8>, void **a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8)
{
  a3 = a2;
  a7 = 259;

  mlir::OpState::emitOpError(a1, &a3, &a8);
}

uint64_t OUTLINED_FUNCTION_136_1@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a9 = a1;

  return mlir::AffineMapAttr::getValue(&a9);
}

void OUTLINED_FUNCTION_155_2()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

uint64_t OUTLINED_FUNCTION_156_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return mlir::affine::AffineValueMap::AffineValueMap(v13, v14, a12, a13, a10, a11);
}

uint64_t *OUTLINED_FUNCTION_157_2@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v6 = *(a1 + 72);

  return mlir::IntegerAttr::getValue(va, va1);
}

void OUTLINED_FUNCTION_158_1(uint64_t *a1@<X8>, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void **);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);

  mlir::OpState::emitOpError(va1, va, a1);
}

uint64_t OUTLINED_FUNCTION_159_2(uint64_t a1, const void *a2)
{

  return mlir::DictionaryAttr::get(v2 + 56, a2, 3uLL);
}

uint64_t OUTLINED_FUNCTION_160_2(uint64_t a1, uint64_t a2)
{

  return mlir::Operation::getInherentAttr(v2, a2, 3);
}

uint64_t mlir::affine::AffineValueMap::AffineValueMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v21 = *MEMORY[0x277D85DE8];
  v11 = mlir::MutableAffineMap::MutableAffineMap(a1, a2);
  v11[12] = v11 + 14;
  v11[13] = 0x400000000;
  if (a4 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v19 = a3;
  v20 = 0;
  if (a4)
  {
    v12 = v11 + 14;
    v13 = 0;
    do
    {
      *v12++ = mlir::ValueRange::dereference_iterator(&v19, v13);
      v13 = v20 + 1;
      v20 = v13;
    }

    while (v13 != a4);
    v14 = *(a1 + 104);
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 144) = a1 + 160;
  *(a1 + 104) = v14 + a4;
  *(a1 + 152) = 0x400000000;
  if (a6 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v19 = a5;
  v20 = 0;
  if (a6)
  {
    v15 = (a1 + 160);
    v16 = 0;
    do
    {
      *v15++ = mlir::ValueRange::dereference_iterator(&v19, v16);
      v16 = v20 + 1;
      v20 = v16;
    }

    while (v16 != a6);
    v17 = *(a1 + 152);
  }

  else
  {
    v17 = 0;
  }

  *(a1 + 152) = v17 + a6;
  return a1;
}

uint64_t mlir::affine::AffineValueMap::reset(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v21 = *MEMORY[0x277D85DE8];
  result = mlir::MutableAffineMap::reset(a1, a2);
  *(a1 + 104) = 0;
  if (a4 > *(a1 + 108))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v12 = *(a1 + 96);
  v19 = a3;
  v20 = 0;
  if (a4)
  {
    v13 = 0;
    v14 = v12;
    do
    {
      result = mlir::ValueRange::dereference_iterator(&v19, v13);
      *v14++ = result;
      v13 = v20 + 1;
      v20 = v13;
    }

    while (v13 != a4);
    *(a1 + 104) += a4;
    *(a1 + 152) = 0;
    if (a6 > *(a1 + 156))
    {
LABEL_7:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else
  {
    *(a1 + 104) = 0;
    *(a1 + 152) = 0;
    if (a6 > *(a1 + 156))
    {
      goto LABEL_7;
    }
  }

  v15 = *(a1 + 144);
  v19 = a5;
  v20 = 0;
  if (a6)
  {
    v16 = 0;
    v17 = v15;
    do
    {
      result = mlir::ValueRange::dereference_iterator(&v19, v16);
      *v17++ = result;
      v16 = v20 + 1;
      v20 = v16;
    }

    while (v16 != a6);
    v18 = *(a1 + 152);
  }

  else
  {
    v18 = 0;
  }

  *(a1 + 152) = v18 + a6;
  return result;
}

void *mlir::affine::AffineValueMap::composeSimplifyAndCanonicalize(mlir::affine::AffineValueMap *this)
{
  AffineMap = mlir::MutableAffineMap::getAffineMap(this);
  mlir::affine::fullyComposeAffineMapAndOperands(&AffineMap, this + 96);
  mlir::affine::canonicalizeMapAndOperands(&AffineMap, this + 96);
  return mlir::MutableAffineMap::reset(this, AffineMap);
}

void mlir::affine::AffineValueMap::difference(mlir::affine::AffineValueMap *this, const mlir::affine::AffineValueMap *a2, const mlir::affine::AffineValueMap *a3, mlir::affine::AffineValueMap *a4)
{
  v47[4] = *MEMORY[0x277D85DE8];
  v45 = v47;
  v46 = 0x400000000;
  v6 = *(this + 26);
  v7 = *(a2 + 26);
  if (v7 + v6 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v8 = 0;
  v9 = *(this + 12);
  v10 = *(this + 20);
  v11 = *(this + 21);
  if (v6 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  v13 = *(a2 + 12);
  v14 = *(a2 + 20);
  v15 = *(a2 + 21);
  if (v7 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v7;
  }

  if (v6 >= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v6;
  }

  if (v6 <= v11)
  {
    v18 = 0;
  }

  else
  {
    v18 = v6 - v11;
  }

  v19 = v7 - v15;
  if (v7 <= v15)
  {
    v19 = 0;
  }

  v35 = v19;
  if (v7 >= v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = v7;
  }

  if (v12 > 4)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v12)
  {
    memcpy(v45, v9, 8 * v12);
    v8 = v46;
  }

  v21 = (v8 + v12);
  LODWORD(v46) = v21;
  if (v21 + v16 > HIDWORD(v46))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v16)
  {
    memcpy(v45 + 8 * v21, v13, 8 * v16);
    LODWORD(v21) = v46;
  }

  v22 = (v21 + v16);
  LODWORD(v46) = v22;
  if (v22 + v17 > HIDWORD(v46))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v17)
  {
    memcpy(v45 + 8 * v22, &v9[8 * v18], 8 * v17);
    LODWORD(v22) = v46;
  }

  v23 = (v22 + v17);
  LODWORD(v46) = v23;
  if (v23 + v20 > HIDWORD(v46))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v20)
  {
    memcpy(v45 + 8 * v23, &v13[8 * v35], 8 * v20);
    LODWORD(v23) = v46;
  }

  LODWORD(v46) = v23 + v20;
  v41[0] = mlir::MutableAffineMap::getAffineMap(a2);
  v42 = mlir::AffineMap::shiftDims(v41, *(this + 20), 0);
  v39 = mlir::AffineMap::shiftSymbols(&v42, *(this + 21), 0);
  AffineMap = mlir::MutableAffineMap::getAffineMap(this);
  v42 = v44;
  v43 = 0x400000000;
  if (*(this + 2) >= 5u)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  NumResults = mlir::AffineMap::getNumResults(&v39);
  if (NumResults)
  {
    v25 = NumResults;
    for (i = 0; i != v25; ++i)
    {
      v41[0] = mlir::AffineMap::getResult(&AffineMap, i);
      Result = mlir::AffineMap::getResult(&v39, i);
      v28 = mlir::AffineExpr::operator-(v41, Result);
      if (v43 >= HIDWORD(v43))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v42 + v43) = v28;
      LODWORD(v43) = v43 + 1;
    }
  }

  NumDims = mlir::AffineMap::getNumDims(&v39);
  NumSymbols = mlir::AffineMap::getNumSymbols(&v39);
  v31 = v42;
  v32 = v43;
  Context = mlir::AffineMap::getContext(&v39);
  v37 = mlir::AffineMap::get(NumDims, NumSymbols, v31, v32, Context);
  mlir::affine::fullyComposeAffineMapAndOperands(&v37, &v45);
  mlir::affine::canonicalizeMapAndOperands(&v37, &v45);
  v34 = mlir::simplifyAffineMap(v37);
  v37 = v34;
  mlir::ValueRange::ValueRange(v41, v45, v46);
  mlir::ValueRange::ValueRange(v40, 0, 0);
  mlir::affine::AffineValueMap::reset(a3, v34, v41[0], v41[1], v40[0], v40[1]);
  if (v42 != v44)
  {
    free(v42);
  }

  if (v45 != v47)
  {
    free(v45);
  }
}

uint64_t mlir::affine::AffineValueMap::isFunctionOf(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 104);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 96);
  if (*v4 == a3)
  {
    v8 = a2;
    LODWORD(v5) = 0;
LABEL_11:
    AffineMap = mlir::MutableAffineMap::getAffineMap(a1);
    v11 = mlir::AffineMap::getResult(&AffineMap, v8);
    return mlir::AffineExpr::isFunctionOfDim(&v11, v5);
  }

  else
  {
    v5 = 0;
    v6 = v4 + 1;
    while (v3 - 1 != v5)
    {
      v7 = v6[v5++];
      if (v7 == a3)
      {
        if (v5 < v3)
        {
          v8 = a2;
          goto LABEL_11;
        }

        return 0;
      }
    }

    return 0;
  }
}

void mlir::affine::AffineValueMap::~AffineValueMap(mlir::affine::AffineValueMap *this)
{
  v2 = *(this + 18);
  if (v2 != this + 160)
  {
    free(v2);
  }

  v3 = *(this + 12);
  if (v3 != this + 112)
  {
    free(v3);
  }

  if (*this != (this + 16))
  {
    free(*this);
  }
}

{
  v2 = *(this + 18);
  if (v2 != this + 160)
  {
    free(v2);
  }

  v3 = *(this + 12);
  if (v3 != this + 112)
  {
    free(v3);
  }

  if (*this != (this + 16))
  {
    free(*this);
  }
}

void mlir::affine::fullyComposeAndComputeConstantDelta(uint64_t a1, uint64_t a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  AffineDimExpr = *(a1 + 8) & 0xFFFFFFFFFFFFFFF8;
  Context = mlir::Type::getContext(&AffineDimExpr);
  AffineDimExpr = mlir::Builder::getAffineDimExpr(&Context, 0, v4);
  v6 = mlir::Builder::getAffineDimExpr(&Context, 1, v5);
  v7 = mlir::AffineExpr::operator-(&AffineDimExpr, v6);
  v8 = mlir::AffineMap::get(2, 0, v7);
  v11 = v13;
  v13[0] = a1;
  v13[1] = a2;
  v12 = 0x600000002;
  mlir::affine::fullyComposeAffineMapAndOperands(&v8, &v11);
  mlir::ValueBoundsConstraintSet::Variable::Variable(&AffineDimExpr, v8, v11, v12);
}

void mlir::affine::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke(uint64_t a1)
{
  v2 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id, a1);
  if ((v3 & 1) == 0)
  {
    v37 = 1283;
    v34 = "Attempting to attach an interface to an unregistered operation ";
    v35 = "affine.apply";
    v26 = 12;
    goto LABEL_27;
  }

  v4 = v2;
  v5 = *(v2 + 16);
  if (v5 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v38[0] = *(v2 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(v38);
    v5 = *(v4 + 16);
    {
      goto LABEL_4;
    }
  }

  else
  {
    ReferencedDialect = *(v2 + 24);
    {
      goto LABEL_4;
    }
  }

  v22 = v5;
  v23 = ReferencedDialect;
  mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  ReferencedDialect = v23;
  v5 = v22;
LABEL_4:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(ReferencedDialect, v5, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id);
  v7 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v8 = v7;
  {
    v30 = v7;
    mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v8 = v30;
  }

  mlir::detail::InterfaceMap::insert(v4 + 32, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id, v8);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id, a1);
  if ((v10 & 1) == 0)
  {
    v37 = 1283;
    v27 = "affine.max";
LABEL_26:
    v34 = "Attempting to attach an interface to an unregistered operation ";
    v35 = v27;
    v26 = 10;
LABEL_27:
    v36 = v26;
    v32 = ".";
    v33 = 259;
    llvm::operator+(&v34, &v32, v38);
    llvm::report_fatal_error(v38, 1);
  }

  v11 = v9;
  v12 = *(v9 + 16);
  if (v12 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v38[0] = *(v9 + 8);
    v13 = mlir::StringAttr::getReferencedDialect(v38);
    v12 = *(v11 + 16);
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = *(v9 + 24);
    {
      goto LABEL_9;
    }
  }

  v28 = v13;
  v29 = v12;
  mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v13 = v28;
  v12 = v29;
LABEL_9:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v13, v12, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id);
  v14 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v15 = v14;
  {
    v31 = v14;
    mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v15 = v31;
  }

  mlir::detail::InterfaceMap::insert(v11 + 32, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id, v15);
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id, a1);
  if ((v17 & 1) == 0)
  {
    v37 = 1283;
    v27 = "affine.min";
    goto LABEL_26;
  }

  v18 = v16;
  v19 = *(v16 + 16);
  if (v19 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v38[0] = *(v16 + 8);
    v20 = mlir::StringAttr::getReferencedDialect(v38);
    v19 = *(v18 + 16);
    {
      goto LABEL_14;
    }
  }

  else
  {
    v20 = *(v16 + 24);
    {
      goto LABEL_14;
    }
  }

  v24 = v19;
  v25 = v20;
  mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v20 = v25;
  v19 = v24;
LABEL_14:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v20, v19, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id);
  v21 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  {
    mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  }

  mlir::detail::InterfaceMap::insert(v18 + 32, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id, v21);
}