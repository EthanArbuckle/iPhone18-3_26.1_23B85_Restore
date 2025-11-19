uint64_t mlir::isPure(mlir *this, mlir::Operation *a2)
{
  result = mlir::isSpeculatable(this, a2);
  if (result)
  {

    return mlir::isMemoryEffectFree(this, v4);
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::ConditionallySpeculatable,mlir::detail::ConditionallySpeculatableInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::ConditionallySpeculatable,mlir::detail::ConditionallySpeculatableInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v1);
  }

  {
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id;
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
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::RangeOp>,mlir::OpTrait::OneResult<mlir::pdl::RangeOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::pdl::RangeOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::RangeOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::RangeOp>,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::pdl::RangeOp>,mlir::OpTrait::OpInvariants<mlir::pdl::RangeOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl::RangeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl::RangeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl::RangeOp>>();
    v3 = v21;
    a1 = v22;
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id;
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
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::RangeOp>,mlir::OpTrait::OneResult<mlir::pdl::RangeOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::pdl::RangeOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::RangeOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::RangeOp>,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::pdl::RangeOp>,mlir::OpTrait::OpInvariants<mlir::pdl::RangeOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl::RangeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl::RangeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl::RangeOp>>();
    p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
    v18 = v23;
  }

  v19 = p_opt_class_meths[111];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

BOOL _ZN4llvm3isaIN4mlir13MemoryEffects4ReadENS2_5WriteEJEPKNS1_11SideEffects6EffectEEEbRKT2_(uint64_t **a1)
{
  v1 = **a1;
  {
    v4 = v1;
    v5 = a1;
    _ZN4llvm3isaIN4mlir13MemoryEffects4ReadENS2_5WriteEJEPKNS1_11SideEffects6EffectEEEbRKT2__cold_1();
    a1 = v5;
    if (v4 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id)
    {
      goto LABEL_3;
    }

    return 1;
  }

  if (v1 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id)
  {
    return 1;
  }

LABEL_3:
  v2 = **a1;
  {
    v6 = v2;
    _ZN4llvm3isaIN4mlir13MemoryEffects4ReadENS2_5WriteEJEPKNS1_11SideEffects6EffectEEEbRKT2__cold_2();
    v2 = v6;
  }

  return v2 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id;
}

BOOL _ZN4llvm3isaIN4mlir13MemoryEffects5WriteENS2_4FreeEJEPNS2_6EffectEEEbRKT2_(uint64_t **a1)
{
  v1 = **a1;
  {
    v4 = v1;
    v5 = a1;
    _ZN4llvm3isaIN4mlir13MemoryEffects4ReadENS2_5WriteEJEPKNS1_11SideEffects6EffectEEEbRKT2__cold_2();
    a1 = v5;
    if (v4 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id)
    {
      goto LABEL_3;
    }

    return 1;
  }

  if (v1 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id)
  {
    return 1;
  }

LABEL_3:
  v2 = **a1;
  {
    v6 = v2;
    llvm::isa<mlir::MemoryEffects::Allocate,mlir::MemoryEffects::Free,mlir::MemoryEffects::Read,mlir::MemoryEffects::Write,mlir::SideEffects::Effect const*>();
    v2 = v6;
  }

  return v2 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id;
}

uint64_t std::__any_of[abi:nn200100]<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,std::__identity,BOOL mlir::hasEffect<mlir::MemoryEffects::Allocate>(mlir::Operation *,mlir::Value)::{lambda(mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>&)#1}>(uint64_t **a1, uint64_t **a2, void **a3)
{
  if (a1 != a2)
  {
    while (1)
    {
      v3 = a1[2];
      if (v3 >= 8 && (v4 = a1[2] & 6, (v3 & 6) != 0))
      {
        v5 = v3 & 0xFFFFFFFFFFFFFFF8;
        if (v4 != 2 || v5 == 0)
        {
          if (v4 == 4)
          {
            v7 = v5;
          }

          else
          {
            v7 = 0;
          }

          if (v7)
          {
            v5 = v7;
          }

          if (v5 == **a3)
          {
LABEL_20:
            v8 = **a1;
            {
              if (v8 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
              {
                return 1;
              }
            }

            else
            {
              v13 = a3;
              v11 = a2;
              v12 = a1;
              v10 = v8;
              llvm::isa<mlir::MemoryEffects::Allocate,mlir::MemoryEffects::Free,mlir::MemoryEffects::Read,mlir::MemoryEffects::Write,mlir::SideEffects::Effect const*>();
              a2 = v11;
              a1 = v12;
              a3 = v13;
              if (v10 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
              {
                return 1;
              }
            }
          }
        }

        else if (*(v5 + 24) == **a3)
        {
          goto LABEL_20;
        }
      }

      else if (!**a3)
      {
        goto LABEL_20;
      }

      a1 += 5;
      if (a1 == a2)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t std::__any_of[abi:nn200100]<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,std::__identity,BOOL mlir::hasEffect<mlir::MemoryEffects::Free>(mlir::Operation *,mlir::Value)::{lambda(mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>&)#1}>(uint64_t **a1, uint64_t **a2, void **a3)
{
  if (a1 != a2)
  {
    while (1)
    {
      v3 = a1[2];
      if (v3 >= 8 && (v4 = a1[2] & 6, (v3 & 6) != 0))
      {
        v5 = v3 & 0xFFFFFFFFFFFFFFF8;
        if (v4 != 2 || v5 == 0)
        {
          if (v4 == 4)
          {
            v7 = v5;
          }

          else
          {
            v7 = 0;
          }

          if (v7)
          {
            v5 = v7;
          }

          if (v5 == **a3)
          {
LABEL_20:
            v8 = **a1;
            {
              if (v8 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id)
              {
                return 1;
              }
            }

            else
            {
              v13 = a3;
              v11 = a2;
              v12 = a1;
              v10 = v8;
              llvm::isa<mlir::MemoryEffects::Allocate,mlir::MemoryEffects::Free,mlir::MemoryEffects::Read,mlir::MemoryEffects::Write,mlir::SideEffects::Effect const*>();
              a2 = v11;
              a1 = v12;
              a3 = v13;
              if (v10 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id)
              {
                return 1;
              }
            }
          }
        }

        else if (*(v5 + 24) == **a3)
        {
          goto LABEL_20;
        }
      }

      else if (!**a3)
      {
        goto LABEL_20;
      }

      a1 += 5;
      if (a1 == a2)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t std::__any_of[abi:nn200100]<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,std::__identity,BOOL mlir::hasEffect<mlir::MemoryEffects::Read>(mlir::Operation *,mlir::Value)::{lambda(mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>&)#1}>(uint64_t **a1, uint64_t **a2, void **a3)
{
  if (a1 != a2)
  {
    while (1)
    {
      v3 = a1[2];
      if (v3 >= 8 && (v4 = a1[2] & 6, (v3 & 6) != 0))
      {
        v5 = v3 & 0xFFFFFFFFFFFFFFF8;
        if (v4 != 2 || v5 == 0)
        {
          if (v4 == 4)
          {
            v7 = v5;
          }

          else
          {
            v7 = 0;
          }

          if (v7)
          {
            v5 = v7;
          }

          if (v5 == **a3)
          {
LABEL_20:
            v8 = **a1;
            {
              if (v8 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id)
              {
                return 1;
              }
            }

            else
            {
              v13 = a3;
              v11 = a2;
              v12 = a1;
              v10 = v8;
              _ZN4llvm3isaIN4mlir13MemoryEffects4ReadENS2_5WriteEJEPKNS1_11SideEffects6EffectEEEbRKT2__cold_1();
              a2 = v11;
              a1 = v12;
              a3 = v13;
              if (v10 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id)
              {
                return 1;
              }
            }
          }
        }

        else if (*(v5 + 24) == **a3)
        {
          goto LABEL_20;
        }
      }

      else if (!**a3)
      {
        goto LABEL_20;
      }

      a1 += 5;
      if (a1 == a2)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t std::__any_of[abi:nn200100]<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,std::__identity,BOOL mlir::hasEffect<mlir::MemoryEffects::Write>(mlir::Operation *,mlir::Value)::{lambda(mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>&)#1}>(uint64_t **a1, uint64_t **a2, void **a3)
{
  if (a1 != a2)
  {
    while (1)
    {
      v3 = a1[2];
      if (v3 >= 8 && (v4 = a1[2] & 6, (v3 & 6) != 0))
      {
        v5 = v3 & 0xFFFFFFFFFFFFFFF8;
        if (v4 != 2 || v5 == 0)
        {
          if (v4 == 4)
          {
            v7 = v5;
          }

          else
          {
            v7 = 0;
          }

          if (v7)
          {
            v5 = v7;
          }

          if (v5 == **a3)
          {
LABEL_20:
            v8 = **a1;
            {
              if (v8 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id)
              {
                return 1;
              }
            }

            else
            {
              v13 = a3;
              v11 = a2;
              v12 = a1;
              v10 = v8;
              _ZN4llvm3isaIN4mlir13MemoryEffects4ReadENS2_5WriteEJEPKNS1_11SideEffects6EffectEEEbRKT2__cold_2();
              a2 = v11;
              a1 = v12;
              a3 = v13;
              if (v10 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id)
              {
                return 1;
              }
            }
          }
        }

        else if (*(v5 + 24) == **a3)
        {
          goto LABEL_20;
        }
      }

      else if (!**a3)
      {
        goto LABEL_20;
      }

      a1 += 5;
      if (a1 == a2)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t mlir::InferShapedTypeOpInterface::inferReturnTypeComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = **(a1 + 8);
  v12 = a5[1];
  v14[0] = *a5;
  v14[1] = v12;
  v14[2] = a5[2];
  return v11(a2, a3, a4, v14, a6, a7, a9, a10, a11);
}

uint64_t mlir::reifyResultShapes(uint64_t a1, uint64_t a2)
{
  if (!mlir::OpInterface<mlir::ReifyRankedShapedTypeOpInterface,mlir::detail::ReifyRankedShapedTypeOpInterfaceInterfaceTraits>::getInterfaceFor(a2) || !a2)
  {
    return 0;
  }

  v3 = *mlir::OpInterface<mlir::ReifyRankedShapedTypeOpInterface,mlir::detail::ReifyRankedShapedTypeOpInterfaceInterfaceTraits>::getInterfaceFor(a2);

  return v3();
}

uint64_t mlir::ShapeAdaptor::hasRank(mlir::ShapeAdaptor *this)
{
  if (*this < 8uLL)
  {
    return 0;
  }

  v4 = *this & 6;
  v5 = *this & 0xFFFFFFFFFFFFFFF8;
  if (v4 == 2 && v5 != 0)
  {
    v20[2] = v1;
    v20[3] = v2;
    v7 = *v5;
    {
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      if (!v10)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = v7;
      v19 = v5;
      mlir::tensor::ExpandShapeOp::fold();
      v5 = v19;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v18 + 8);
      v10 = *(v18 + 16);
      if (!v10)
      {
        goto LABEL_23;
      }
    }

    v11 = v9;
    v12 = v10;
    do
    {
      v13 = v12 >> 1;
      v14 = &v11[2 * (v12 >> 1)];
      v16 = *v14;
      v15 = v14 + 2;
      v12 += ~(v12 >> 1);
      if (v16 < v8)
      {
        v11 = v15;
      }

      else
      {
        v12 = v13;
      }
    }

    while (v12);
    if (v11 != &v9[2 * v10] && *v11 == v8)
    {
      v17 = v11[1];
      goto LABEL_25;
    }

LABEL_23:
    v17 = 0;
LABEL_25:
    v20[0] = v5;
    v20[1] = v17;
    return mlir::ShapedType::hasRank(v20) & 1;
  }

  if (v4 == 4)
  {
    return 1;
  }

  else
  {
    return *(v5 + 56) & 1;
  }
}

uint64_t mlir::ShapeAdaptor::getElementType(mlir::ShapeAdaptor *this)
{
  if (*this < 8uLL)
  {
    return 0;
  }

  v4 = *this & 6;
  v5 = (*this & 0xFFFFFFFFFFFFFFF8);
  if (v4 == 2 && v5 != 0)
  {
    v20[2] = v1;
    v20[3] = v2;
    v7 = *v5;
    {
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      if (!v10)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v18 = v7;
      v19 = v5;
      mlir::tensor::ExpandShapeOp::fold();
      v5 = v19;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v18 + 8);
      v10 = *(v18 + 16);
      if (!v10)
      {
        goto LABEL_22;
      }
    }

    v11 = v9;
    v12 = v10;
    do
    {
      v13 = v12 >> 1;
      v14 = &v11[2 * (v12 >> 1)];
      v16 = *v14;
      v15 = v14 + 2;
      v12 += ~(v12 >> 1);
      if (v16 < v8)
      {
        v11 = v15;
      }

      else
      {
        v12 = v13;
      }
    }

    while (v12);
    if (v11 != &v9[2 * v10] && *v11 == v8)
    {
      v17 = v11[1];
      goto LABEL_24;
    }

LABEL_22:
    v17 = 0;
LABEL_24:
    v20[0] = v5;
    v20[1] = v17;
    return mlir::ShapedType::getElementType(v20);
  }

  if (v4 == 4)
  {
    return 0;
  }

  return v5[5];
}

void mlir::ShapeAdaptor::getDims(void *a1, uint64_t a2)
{
  v3 = *a1 & 6;
  v4 = *a1 & 0xFFFFFFFFFFFFFFF8;
  if (v3 == 2 && v4 != 0)
  {
    v9 = *v4;
    {
      v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v11 = v9[1];
      v12 = *(v9 + 4);
      if (!v12)
      {
        goto LABEL_44;
      }
    }

    else
    {
      mlir::tensor::ExpandShapeOp::fold();
      v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v11 = v9[1];
      v12 = *(v9 + 4);
      if (!v12)
      {
        goto LABEL_44;
      }
    }

    v13 = v11;
    v14 = v12;
    do
    {
      v15 = v14 >> 1;
      v16 = &v13[2 * (v14 >> 1)];
      v18 = *v16;
      v17 = v16 + 2;
      v14 += ~(v14 >> 1);
      if (v18 < v10)
      {
        v13 = v17;
      }

      else
      {
        v14 = v15;
      }
    }

    while (v14);
    if (v13 != &v11[2 * v12] && *v13 == v10)
    {
      v24 = v13[1];
      goto LABEL_46;
    }

LABEL_44:
    v24 = 0;
LABEL_46:
    *&v33 = v4;
    *(&v33 + 1) = v24;
    Shape = mlir::ShapedType::getShape(&v33);
    v27 = v25;
    v28 = 0;
    *(a2 + 8) = 0;
    if ((8 * v25) >> 3 > *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v25)
    {
      memcpy(*a2, Shape, 8 * v25);
      v28 = *(a2 + 8);
    }

    v23 = v28 + v27;
LABEL_51:
    *(a2 + 8) = v23;
    return;
  }

  if (v3 != 4 || v4 == 0)
  {
    v7 = *v4;
    v8 = *(v4 + 8);
    *(a2 + 8) = 0;
    if (v8 > *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v8)
    {
      memcpy(*a2, v7, 8 * v8);
      v22 = *(a2 + 8);
    }

    else
    {
      v22 = 0;
    }

    v23 = v22 + v8;
    goto LABEL_51;
  }

  v36 = *a1 & 0xFFFFFFFFFFFFFFF8;
  *(a2 + 8) = 0;
  if (mlir::DenseElementsAttr::getNumElements(&v36) > *(a2 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  mlir::DenseElementsAttr::getValues<llvm::APInt>(&v36, &v33);
  v31 = v33;
  v32 = v34;
  for (i = v35; v32 != i; *&v32 = v32 + 1)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v31, &v29);
    if (v30 > 0x40)
    {
      v20 = *v29;
    }

    else if (v30)
    {
      v20 = (v29 << -v30) >> -v30;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(a2 + 8);
    if (v21 >= *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a2 + 8 * v21) = v20;
    ++*(a2 + 8);
    if (v30 >= 0x41 && v29)
    {
      MEMORY[0x259C63150](v29, 0x1000C8000313F17);
    }
  }
}

{
  *(a2 + 56) = 1;
  mlir::ShapeAdaptor::getDims(a1, a2);
}

uint64_t mlir::ShapeAdaptor::getDimSize(mlir::ShapeAdaptor *this, unsigned int a2)
{
  v3 = *this & 6;
  v4 = (*this & 0xFFFFFFFFFFFFFFF8);
  if (v3 == 2 && v4 != 0)
  {
    v8 = *v4;
    {
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      if (!v11)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = v8;
      v21 = v4;
      mlir::tensor::ExpandShapeOp::fold();
      v4 = v21;
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = *(v20 + 8);
      v11 = *(v20 + 16);
      if (!v11)
      {
        goto LABEL_30;
      }
    }

    v12 = v10;
    v13 = v11;
    do
    {
      v14 = v13 >> 1;
      v15 = &v12[2 * (v13 >> 1)];
      v17 = *v15;
      v16 = v15 + 2;
      v13 += ~(v13 >> 1);
      if (v17 < v9)
      {
        v12 = v16;
      }

      else
      {
        v13 = v14;
      }
    }

    while (v13);
    if (v12 != &v10[2 * v11] && *v12 == v9)
    {
      v19 = v12[1];
      goto LABEL_32;
    }

LABEL_30:
    v19 = 0;
LABEL_32:
    *&v23 = v4;
    *(&v23 + 1) = v19;
    return *(mlir::ShapedType::getShape(&v23) + 8 * a2);
  }

  if (v3 != 4 || v4 == 0)
  {
    return *(*v4 + 8 * a2);
  }

  v22 = *this & 0xFFFFFFFFFFFFFFF8;
  mlir::DenseElementsAttr::getValues<llvm::APInt>(&v22, &v23);
  v28 = v23;
  v29 = v24 + a2;
  v30 = v25;
  mlir::DenseElementsAttr::IntElementIterator::operator*(&v28, &v26);
  if (v27 > 0x40)
  {
    v18 = *v26;
    MEMORY[0x259C63150]();
    return v18;
  }

  else if (v27)
  {
    return (v26 << -v27) >> -v27;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::ShapeAdaptor::getRank(mlir::ShapeAdaptor *this)
{
  v1 = *this & 6;
  v2 = *this & 0xFFFFFFFFFFFFFFF8;
  if (v1 == 2 && v2 != 0)
  {
    v5 = *v2;
    {
      v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v7 = *(v5 + 8);
      v8 = *(v5 + 16);
      if (!v8)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v18 = v5;
      v19 = v2;
      mlir::tensor::ExpandShapeOp::fold();
      v2 = v19;
      v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v7 = *(v18 + 8);
      v8 = *(v18 + 16);
      if (!v8)
      {
        goto LABEL_24;
      }
    }

    v9 = v7;
    v10 = v8;
    do
    {
      v11 = v10 >> 1;
      v12 = &v9[2 * (v10 >> 1)];
      v14 = *v12;
      v13 = v12 + 2;
      v10 += ~(v10 >> 1);
      if (v14 < v6)
      {
        v9 = v13;
      }

      else
      {
        v10 = v11;
      }
    }

    while (v10);
    if (v9 != &v7[2 * v8] && *v9 == v6)
    {
      v16 = v9[1];
      goto LABEL_26;
    }

LABEL_24:
    v16 = 0;
LABEL_26:
    v20[0] = v2;
    v20[1] = v16;
    mlir::ShapedType::getShape(v20);
    return v17;
  }

  if (v1 != 4 || v2 == 0)
  {
    return *(v2 + 8);
  }

  v20[0] = *this & 0xFFFFFFFFFFFFFFF8;
  return mlir::DenseElementsAttr::getNumElements(v20);
}

uint64_t mlir::ShapeAdaptor::hasStaticShape(mlir::ShapeAdaptor *this)
{
  result = mlir::ShapeAdaptor::hasRank(this);
  if (!result)
  {
    return result;
  }

  v3 = *this & 6;
  v4 = *this & 0xFFFFFFFFFFFFFFF8;
  if (v3 == 2 && v4 != 0)
  {
    v13 = *v4;
    {
      v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v15 = v13[1];
      v16 = *(v13 + 4);
      if (!v16)
      {
        goto LABEL_43;
      }
    }

    else
    {
      mlir::tensor::ExpandShapeOp::fold();
      v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v15 = v13[1];
      v16 = *(v13 + 4);
      if (!v16)
      {
        goto LABEL_43;
      }
    }

    v17 = v15;
    v18 = v16;
    do
    {
      v19 = v18 >> 1;
      v20 = &v17[2 * (v18 >> 1)];
      v22 = *v20;
      v21 = v20 + 2;
      v18 += ~(v18 >> 1);
      if (v22 < v14)
      {
        v17 = v21;
      }

      else
      {
        v18 = v19;
      }
    }

    while (v18);
    if (v17 != &v15[2 * v16] && *v17 == v14)
    {
      v26 = v17[1];
      *&v37 = v4;
      *(&v37 + 1) = v26;
      result = mlir::ShapedType::hasRank(&v37);
      if (!result)
      {
        return result;
      }

LABEL_46:
      Shape = mlir::ShapedType::getShape(&v37);
      if (v28)
      {
        v29 = Shape;
        v30 = 8 * v28 - 8;
        do
        {
          v31 = *v29++;
          result = v31 != 0x8000000000000000;
          v32 = v31 == 0x8000000000000000 || v30 == 0;
          v30 -= 8;
        }

        while (!v32);
        return result;
      }

      return 1;
    }

LABEL_43:
    v37 = v4;
    result = mlir::ShapedType::hasRank(&v37);
    if (!result)
    {
      return result;
    }

    goto LABEL_46;
  }

  if (v3 == 4 && v4 != 0)
  {
    v40 = v4;
    mlir::DenseElementsAttr::getValues<llvm::APInt>(&v40, &v37);
    v35 = v37;
    v36 = v38;
    v23 = v39;
    if (v38 != v39)
    {
      while (1)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v35, &v33);
        if (v34 > 0x40)
        {
          v24 = *v33;
          MEMORY[0x259C63150]();
          if (v24 == 0x8000000000000000)
          {
            return 0;
          }
        }

        else
        {
          if (v34)
          {
            v25 = (v33 << -v34) >> -v34 == 0x8000000000000000;
          }

          else
          {
            v25 = 0;
          }

          if (v25)
          {
            return 0;
          }
        }

        *&v36 = v36 + 1;
        if (v36 == v23)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  v7 = *(v4 + 8);
  if (!v7)
  {
    return 1;
  }

  v8 = *v4;
  v9 = 8 * v7 - 8;
  do
  {
    v11 = *v8++;
    v10 = v11;
    v12 = v11 == 0x8000000000000000 || v9 == 0;
    v9 -= 8;
  }

  while (!v12);
  return v10 != 0x8000000000000000;
}

uint64_t mlir::ShapeAdaptor::getNumElements(mlir::ShapeAdaptor *this)
{
  v1 = *this & 6;
  v2 = *this & 0xFFFFFFFFFFFFFFF8;
  if (v1 != 2 || v2 == 0)
  {
    if (v1 == 4 && v2 != 0)
    {
      v41 = *this & 0xFFFFFFFFFFFFFFF8;
      mlir::DenseElementsAttr::getValues<llvm::APInt>(&v41, &v38);
      v36 = v38;
      v37 = v39;
      v26 = v40;
      for (i = 1; v37 != v26; *&v37 = v37 + 1)
      {
        while (1)
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v36, &v34);
          if (v35 <= 0x40)
          {
            break;
          }

          v27 = *v34;
          MEMORY[0x259C63150]();
          i *= v27;
          *&v37 = v37 + 1;
          if (v37 == v26)
          {
            return i;
          }
        }

        i *= v34;
      }

      return i;
    }

    v5 = *(v2 + 8);
    if (!v5)
    {
      return 1;
    }

    v6 = *v2;
    v7 = (v5 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v7)
    {
      v8 = v7 + 1;
      v9 = (v7 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v10 = &v6[v9];
      v11 = v6 + 1;
      v12 = 1;
      v13 = v9;
      v14 = 1;
      do
      {
        v12 *= *(v11 - 1);
        v14 *= *v11;
        v11 += 2;
        v13 -= 2;
      }

      while (v13);
      i = v14 * v12;
      if (v8 == v9)
      {
        return i;
      }
    }

    else
    {
      i = 1;
      v10 = v6;
    }

    v29 = &v6[v5];
    do
    {
      v30 = *v10++;
      i *= v30;
    }

    while (v10 != v29);
    return i;
  }

  v16 = *v2;
  {
    v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v18 = v16[1];
    v19 = *(v16 + 4);
    if (!v19)
    {
      goto LABEL_40;
    }
  }

  else
  {
    mlir::tensor::ExpandShapeOp::fold();
    v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v18 = v16[1];
    v19 = *(v16 + 4);
    if (!v19)
    {
      goto LABEL_40;
    }
  }

  v20 = v18;
  v21 = v19;
  do
  {
    v22 = v21 >> 1;
    v23 = &v20[2 * (v21 >> 1)];
    v25 = *v23;
    v24 = v23 + 2;
    v21 += ~(v21 >> 1);
    if (v25 < v17)
    {
      v20 = v24;
    }

    else
    {
      v21 = v22;
    }
  }

  while (v21);
  if (v20 != &v18[2 * v19] && *v20 == v17)
  {
    v31 = v20[1];
    goto LABEL_42;
  }

LABEL_40:
  v31 = 0;
LABEL_42:
  *&v38 = v2;
  *(&v38 + 1) = v31;
  Shape = mlir::ShapedType::getShape(&v38);
  return mlir::ShapedType::getNumElements(Shape, v33);
}

void mlir::ShapeAdaptor::dump(mlir::ShapeAdaptor *this)
{
  v32[6] = *MEMORY[0x277D85DE8];
  hasRank = mlir::ShapeAdaptor::hasRank(this);
  if ((hasRank & 1) == 0)
  {
    v9 = llvm::errs(hasRank);
    v10 = v9[4];
    if (v9[3] - v10 > 0xCuLL)
    {
      qmemcpy(v10, "<<unranked>>\n", 13);
      v9[4] += 13;
    }

    else
    {

      llvm::raw_ostream::write(v9, "<<unranked>>\n", 0xDuLL);
    }

    return;
  }

  v30 = v32;
  v31 = 0x600000000;
  mlir::ShapeAdaptor::getDims(this, &v30);
  v3 = v30;
  v4 = v31;
  v6 = llvm::errs(v5);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 6uLL)
  {
    *(v7 + 3) = 540876907;
    *v7 = 1802396018;
    v8 = v6;
    *(v6 + 4) += 7;
  }

  else
  {
    v8 = llvm::raw_ostream::write(v6, "rank = ", 7uLL);
  }

  Rank = mlir::ShapeAdaptor::getRank(this);
  v12 = llvm::raw_ostream::operator<<(v8, Rank);
  v13 = *(v12 + 4);
  if ((*(v12 + 3) - v13) <= 8)
  {
    v14 = llvm::raw_ostream::write(v12, " dims = [", 9uLL);
    v15 = llvm::errs(v14);
    if (!v4)
    {
      goto LABEL_23;
    }

LABEL_14:
    v16 = v15;
    llvm::mapped_iterator<long long *,mlir::ShapeAdaptor::dump(void)::$_0,std::string>::operator*(&__p, *v3);
    if ((v29 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v29 & 0x80u) == 0)
    {
      v18 = v29;
    }

    else
    {
      v18 = v28;
    }

    v15 = llvm::raw_ostream::write(v16, p_p, v18);
    if (v29 < 0)
    {
      operator delete(__p);
    }

    if (v4 != 1)
    {
      v22 = v3 + 1;
      v23 = 8 * v4 - 8;
      do
      {
        v24 = *(v16 + 4);
        if (*(v16 + 3) == v24)
        {
          llvm::raw_ostream::write(v16, "x", 1uLL);
        }

        else
        {
          *v24 = 120;
          ++*(v16 + 4);
        }

        llvm::mapped_iterator<long long *,mlir::ShapeAdaptor::dump(void)::$_0,std::string>::operator*(&__p, *v22);
        if ((v29 & 0x80u) == 0)
        {
          v25 = &__p;
        }

        else
        {
          v25 = __p;
        }

        if ((v29 & 0x80u) == 0)
        {
          v26 = v29;
        }

        else
        {
          v26 = v28;
        }

        v15 = llvm::raw_ostream::write(v16, v25, v26);
        if (v29 < 0)
        {
          operator delete(__p);
        }

        ++v22;
        v23 -= 8;
      }

      while (v23);
    }

    goto LABEL_23;
  }

  *(v13 + 8) = 91;
  *v13 = *" dims = [";
  *(v12 + 4) += 9;
  v15 = llvm::errs(v12);
  if (v4)
  {
    goto LABEL_14;
  }

LABEL_23:
  v19 = llvm::errs(v15);
  v20 = v19[4];
  if (v19[3] - v20 > 1uLL)
  {
    *v20 = 2653;
    v19[4] += 2;
    v21 = v30;
    if (v30 == v32)
    {
      return;
    }
  }

  else
  {
    llvm::raw_ostream::write(v19, "]\n", 2uLL);
    v21 = v30;
    if (v30 == v32)
    {
      return;
    }
  }

  free(v21);
}

unint64_t mlir::ValueShapeRange::getValueAsShape(mlir::ValueShapeRange *this, int a2)
{
  v3 = mlir::ValueRange::dereference_iterator(this, a2);
  v4 = *(this + 4);
  if (!v4 || (result = v4(*(this + 5), v3), result <= 7))
  {
    v12 = &v13;
    v13 = 0;
    v11[0] = v3;
    result = mlir::Value::getDefiningOp(v11);
    if (result)
    {
      if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v12, result) && (v11[0] = mlir::DenseElementsAttr::getType(&v13), v11[1] = v6, mlir::ShapedType::getShape(v11), v7 == 1))
      {
        v8 = v13;
        v9 = mlir::DenseIntElementsAttr::classof(v13);
        v10 = v8 & 0xFFFFFFFFFFFFFFF9 | 4;
        if (!v8)
        {
          v10 = 0;
        }

        if (v9)
        {
          return v10;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t mlir::ValueShapeRange::getShape(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3 || (result = v3(*(a1 + 24), a2), result <= 7))
  {
    v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(a2 + 8) & 0xFFFFFFFFFFFFFFF8));
    if (v5)
    {
      return v5 & 0xFFFFFFFFFFFFFFF9 | 2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t mlir::ValueShapeRange::getShape(mlir::ValueShapeRange *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || *(this + 1) <= a2)
  {
    return 0;
  }

  v3 = mlir::ValueRange::dereference_iterator(this, a2);
  v4 = *(this + 2);
  if (!v4 || (result = v4(*(this + 3), v3), result <= 7))
  {
    result = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v3 + 8) & 0xFFFFFFFFFFFFFFF8));
    if (result)
    {
      return result & 0xFFFFFFFFFFFFFFF9 | 2;
    }
  }

  return result;
}

uint64_t mlir::detail::inferReturnTensorTypes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2 << 6;
    v5 = (a1 + 56);
    do
    {
      if (*v5 == 1)
      {
        v6 = mlir::RankedTensorType::get(*(v5 - 7), *(v5 - 12), *(v5 - 2), *(v5 - 1));
      }

      else
      {
        v6 = mlir::UnrankedTensorType::get(*(v5 - 2));
      }

      v7 = *(a3 + 8);
      if (v7 >= *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a3 + 8 * v7) = v6;
      ++*(a3 + 8);
      v5 += 64;
      v4 -= 64;
    }

    while (v4);
  }

  return 1;
}

uint64_t mlir::OpInterface<mlir::ReifyRankedShapedTypeOpInterface,mlir::detail::ReifyRankedShapedTypeOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::ReifyRankedShapedTypeOpInterface,mlir::detail::ReifyRankedShapedTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::mps::detail::GRUGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::ExpandShapeOp>,mlir::OpTrait::OneResult<mlir::memref::ExpandShapeOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::ExpandShapeOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::ExpandShapeOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::memref::ExpandShapeOp>,mlir::OpTrait::OpInvariants<mlir::memref::ExpandShapeOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::ExpandShapeOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::ExpandShapeOp>,mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::memref::ExpandShapeOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::ExpandShapeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::ExpandShapeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::ExpandShapeOp>,mlir::ViewLikeOpInterface::Trait<mlir::memref::ExpandShapeOp>>();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::mps::detail::GRUGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::ExpandShapeOp>,mlir::OpTrait::OneResult<mlir::memref::ExpandShapeOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::ExpandShapeOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::ExpandShapeOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::memref::ExpandShapeOp>,mlir::OpTrait::OpInvariants<mlir::memref::ExpandShapeOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::ExpandShapeOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::ExpandShapeOp>,mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::memref::ExpandShapeOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::ExpandShapeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::ExpandShapeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::ExpandShapeOp>,mlir::ViewLikeOpInterface::Trait<mlir::memref::ExpandShapeOp>>();
    v4 = &mlir::detail::TypeIDResolver<mlir::mps::detail::GRUGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[206];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

void llvm::mapped_iterator<long long *,mlir::ShapeAdaptor::dump(void)::$_0,std::string>::operator*(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  if (a2 == 0x8000000000000000)
  {
    *(a1 + 23) = 1;
    *a1 = 63;
  }

  else
  {
    v2[0] = "{0}";
    v2[1] = 3;
    v2[2] = &v5;
    v2[3] = 1;
    v3 = 1;
    v4[0] = &unk_28685E520;
    v4[1] = &v6;
    v5 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    v8 = 0;
    v12 = 0;
    v13 = 1;
    v10 = 0;
    v11 = 0;
    v9 = 0;
    v7 = &unk_2868A3EF8;
    v14 = a1;
    llvm::raw_ostream::SetBufferAndMode(&v7, 0, 0, 0);
    llvm::raw_ostream::operator<<(&v7, v2);
    if (v11 != v9)
    {
      llvm::raw_ostream::flush_nonempty(&v7);
    }

    llvm::raw_ostream::~raw_ostream(&v7);
  }
}

void OUTLINED_FUNCTION_1_13()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

uint64_t mlir::SuccessorOperands::SuccessorOperands(uint64_t result, void **a2)
{
  *result = 0;
  v2 = *a2;
  *(result + 24) = result + 40;
  *(result + 8) = v2;
  *(result + 32) = 0x100000000;
  if (*(a2 + 6))
  {
    v3 = result;
    llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=((result + 24), a2 + 2);
    return v3;
  }

  return result;
}

{
  *result = 0;
  v2 = *a2;
  *(result + 24) = result + 40;
  *(result + 8) = v2;
  *(result + 32) = 0x100000000;
  if (*(a2 + 6))
  {
    v3 = result;
    llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=((result + 24), a2 + 2);
    return v3;
  }

  return result;
}

uint64_t mlir::SuccessorOperands::SuccessorOperands(uint64_t result, int a2, void **a3)
{
  *result = a2;
  v3 = *a3;
  *(result + 24) = result + 40;
  *(result + 8) = v3;
  *(result + 32) = 0x100000000;
  if (*(a3 + 6))
  {
    v4 = result;
    llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=((result + 24), a3 + 2);
    return v4;
  }

  return result;
}

{
  *result = a2;
  v3 = *a3;
  *(result + 24) = result + 40;
  *(result + 8) = v3;
  *(result + 32) = 0x100000000;
  if (*(a3 + 6))
  {
    v4 = result;
    llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=((result + 24), a3 + 2);
    return v4;
  }

  return result;
}

uint64_t mlir::detail::getBranchSuccessorArgument(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v9 = mlir::MutableOperandRange::operator mlir::OperandRange((a1 + 2));
  v10 = v6;
  if (v6 && (BeginOperandIndex = mlir::OperandRange::getBeginOperandIndex(&v9), a2 >= BeginOperandIndex) && v10 + BeginOperandIndex > a2)
  {
    return *(*(a3 + 48) + 8 * (a2 - BeginOperandIndex + *a1));
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::verifyBranchSuccessorOperands(unsigned int *a1, unsigned int a2, unsigned int *a3)
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v5 = a3[5];
  v6 = a2;
  v7 = *(((&a1[4 * ((a1[11] >> 23) & 1) + 17] + ((a1[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2 + 24);
  if (v5 + *a3 == ((*(v7 + 56) - *(v7 + 48)) >> 3))
  {
    if (!v5)
    {
      return 1;
    }

    while (1)
    {
      InterfaceFor = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
      v10 = mlir::MutableOperandRange::operator[](a3 + 2, v4 - *a3);
      if (((*(InterfaceFor + 24))(InterfaceFor, a1, *(*(v10 + 24) + 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(v7 + 48) + 8 * v4) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) == 0)
      {
        break;
      }

      ++v4;
      if (!--v5)
      {
        return 1;
      }
    }

    v56 = 257;
    mlir::Operation::emitError(v59, a1, v55);
    if (v59[0])
    {
      LODWORD(v57) = 3;
      *(&v57 + 1) = "type mismatch for bb argument #";
      v58 = 31;
      if (v61 >= v62)
      {
        if (v60 > &v57 || v60 + 24 * v61 <= &v57)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v37 = v60 + 24 * v61;
      v38 = v57;
      *(v37 + 2) = v58;
      *v37 = v38;
      v39 = ++v61;
      if (v59[0])
      {
        LODWORD(v57) = 5;
        *(&v57 + 1) = v4;
        if (v39 >= v62)
        {
          if (v60 > &v57 || v60 + 24 * v39 <= &v57)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v40 = v60 + 24 * v61;
        v41 = v57;
        *(v40 + 2) = v58;
        *v40 = v41;
        v42 = ++v61;
        if (v59[0])
        {
          LODWORD(v57) = 3;
          *(&v57 + 1) = " of successor #";
          v58 = 15;
          if (v42 >= v62)
          {
            if (v60 > &v57 || v60 + 24 * v42 <= &v57)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v43 = v60 + 24 * v61;
          v44 = v57;
          *(v43 + 2) = v58;
          *v43 = v44;
          v45 = ++v61;
          if (v59[0])
          {
            LODWORD(v57) = 5;
            *(&v57 + 1) = v6;
            if (v45 >= v62)
            {
              if (v60 > &v57 || v60 + 24 * v45 <= &v57)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v46 = v60 + 24 * v61;
            v47 = v57;
            *(v46 + 2) = v58;
            *v46 = v47;
            ++v61;
          }
        }
      }
    }

    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
    if (v59[0])
    {
      mlir::InFlightDiagnostic::report(v59);
    }

    if (v69)
    {
      if (v68 != &v69)
      {
        free(v68);
      }

      v48 = __p;
      if (__p)
      {
        v49 = v67;
        v50 = __p;
        if (v67 != __p)
        {
          do
          {
            v49 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v49 - 1);
          }

          while (v49 != v48);
          v50 = __p;
        }

        v67 = v48;
        operator delete(v50);
      }

      v32 = v64;
      if (!v64)
      {
        goto LABEL_62;
      }

      v51 = v65;
      v34 = v64;
      if (v65 == v64)
      {
LABEL_61:
        v65 = v32;
        operator delete(v34);
LABEL_62:
        if (v60 != &v63)
        {
          free(v60);
        }

        return v11;
      }

      do
      {
        v53 = *--v51;
        v52 = v53;
        *v51 = 0;
        if (v53)
        {
          MEMORY[0x259C63150](v52, 0x1000C8077774924);
        }
      }

      while (v51 != v32);
LABEL_60:
      v34 = v64;
      goto LABEL_61;
    }
  }

  else
  {
    v56 = 257;
    mlir::Operation::emitError(v59, a1, v55);
    if (v59[0])
    {
      LODWORD(v57) = 3;
      *(&v57 + 1) = "branch has ";
      v58 = 11;
      if (v61 >= v62)
      {
        if (v60 > &v57 || v60 + 24 * v61 <= &v57)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v60 + 24 * v61;
      v13 = v57;
      *(v12 + 2) = v58;
      *v12 = v13;
      v14 = ++v61;
      if (v59[0])
      {
        LODWORD(v57) = 5;
        *(&v57 + 1) = v5 + v4;
        if (v14 >= v62)
        {
          if (v60 > &v57 || v60 + 24 * v14 <= &v57)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v15 = v60 + 24 * v61;
        v16 = v57;
        *(v15 + 2) = v58;
        *v15 = v16;
        v17 = ++v61;
        if (v59[0])
        {
          LODWORD(v57) = 3;
          *(&v57 + 1) = " operands for successor #";
          v58 = 25;
          if (v17 >= v62)
          {
            if (v60 > &v57 || v60 + 24 * v17 <= &v57)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v18 = v60 + 24 * v61;
          v19 = v57;
          *(v18 + 2) = v58;
          *v18 = v19;
          v20 = ++v61;
          if (v59[0])
          {
            LODWORD(v57) = 5;
            *(&v57 + 1) = v6;
            if (v20 >= v62)
            {
              if (v60 > &v57 || v60 + 24 * v20 <= &v57)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v21 = v60 + 24 * v61;
            v22 = v57;
            *(v21 + 2) = v58;
            *v21 = v22;
            v23 = ++v61;
            if (v59[0])
            {
              LODWORD(v57) = 3;
              *(&v57 + 1) = ", but target block has ";
              v58 = 23;
              if (v23 >= v62)
              {
                if (v60 > &v57 || v60 + 24 * v23 <= &v57)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v24 = v60 + 24 * v61;
              v25 = v57;
              *(v24 + 2) = v58;
              *v24 = v25;
              ++v61;
              if (v59[0])
              {
                v26 = *(v7 + 56) - *(v7 + 48);
                LODWORD(v57) = 5;
                *(&v57 + 1) = (v26 >> 3);
                if (v61 >= v62)
                {
                  if (v60 > &v57 || v60 + 24 * v61 <= &v57)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v27 = v60 + 24 * v61;
                v28 = v57;
                *(v27 + 2) = v58;
                *v27 = v28;
                ++v61;
              }
            }
          }
        }
      }
    }

    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
    if (v59[0])
    {
      mlir::InFlightDiagnostic::report(v59);
    }

    if (v69 == 1)
    {
      if (v68 != &v69)
      {
        free(v68);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v67;
        v31 = __p;
        if (v67 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v67 = v29;
        operator delete(v31);
      }

      v32 = v64;
      if (!v64)
      {
        goto LABEL_62;
      }

      v33 = v65;
      v34 = v64;
      if (v65 == v64)
      {
        goto LABEL_61;
      }

      do
      {
        v36 = *--v33;
        v35 = v36;
        *v33 = 0;
        if (v36)
        {
          MEMORY[0x259C63150](v35, 0x1000C8077774924);
        }
      }

      while (v33 != v32);
      goto LABEL_60;
    }
  }

  return v11;
}

uint64_t mlir::detail::verifyTypesAlongControlFlowEdges(mlir::detail *this, mlir::Operation *a2)
{
  v2 = this;
  v23[6] = *MEMORY[0x277D85DE8];
  v20 = this;
  if (this)
  {
    this = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(this);
  }

  v19[0] = v2;
  v19[1] = this;
  v18 = v19;
  if (!verifyTypesAlongAllEdges(v2, 0, llvm::function_ref<llvm::FailureOr<mlir::TypeRange> ()(mlir::RegionBranchPoint)>::callback_fn<mlir::detail::verifyTypesAlongControlFlowEdges(mlir::Operation *)::$_0>, &v18))
  {
    return 0;
  }

  v17 = v19;
  v3 = v2[11];
  v4 = 1;
  if ((v3 & 0x7FFFFF) != 0)
  {
    v5 = (((&v2[4 * ((v3 >> 23) & 1) + 17] + ((v3 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v2[10]);
    v6 = (v5 + 24 * (v3 & 0x7FFFFF));
    while (1)
    {
      v21 = v23;
      v22 = 0x300000000;
      v7 = *(v5 + 1);
      if (v7 == v5)
      {
        break;
      }

      do
      {
        v9 = (v7 - 8);
        if (!v7)
        {
          v9 = 0;
        }

        v10 = v9[4];
        if (v10 != v9 + 4)
        {
          ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v10);
          if (mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(ValuePtr))
          {
            InterfaceFor = mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(ValuePtr);
            if (ValuePtr)
            {
              if (v22 >= HIDWORD(v22))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v8 = (v21 + 16 * v22);
              *v8 = ValuePtr;
              v8[1] = InterfaceFor;
              LODWORD(v22) = v22 + 1;
            }
          }
        }

        v7 = *(v7 + 1);
      }

      while (v7 != v5);
      if (!v22)
      {
        break;
      }

      v16[0] = &v21;
      v16[1] = &v17;
      v16[2] = &v20;
      v16[3] = v5;
      v13 = !verifyTypesAlongAllEdges(v20, v5, llvm::function_ref<llvm::FailureOr<mlir::TypeRange> ()(mlir::RegionBranchPoint)>::callback_fn<mlir::detail::verifyTypesAlongControlFlowEdges(mlir::Operation *)::$_2>, v16);
      v14 = v21;
      if (v21 != v23)
      {
        goto LABEL_24;
      }

LABEL_25:
      if (v13 != 3 && v13)
      {
        return 0;
      }

      v5 = (v5 + 24);
      if (v5 == v6)
      {
        return 1;
      }
    }

    v13 = 3;
    v14 = v21;
    if (v21 == v23)
    {
      goto LABEL_25;
    }

LABEL_24:
    free(v14);
    goto LABEL_25;
  }

  return v4;
}

BOOL verifyTypesAlongAllEdges(mlir::Operation *a1, mlir::Region *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, unint64_t), uint64_t a4)
{
  v93[6] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  v91 = v93;
  v92 = 0x200000000;
  (*(InterfaceFor + 16))(InterfaceFor, a1, a2, &v91);
  if (v92)
  {
    v7 = v91;
    v68 = &v91[3 * v92];
    while (1)
    {
      a3(&v88, a4, *v7);
      if ((v90 & 1) == 0)
      {
        v38 = 0;
        goto LABEL_82;
      }

      v85 = *(v7 + 1);
      mlir::ValueRange::getTypes(&v85, &v74);
      v9 = v74.n128_u64[1];
      v8 = v74.n128_u64[0];
      v10 = v75;
      v71 = v74;
      if (v74.n128_u64[1])
      {
        v8 = mlir::ValueRange::offset_base(&v71, v74.n128_i64[1]);
        v9 = v71.n128_u64[1];
      }

      mlir::TypeRange::TypeRange(&v86, v8, v10 - v9);
      v11 = v89;
      if (v89 != v87)
      {
        break;
      }

      if (v89)
      {
        v12 = 0;
        v13 = v88;
        v14 = v86;
        while (v11 != v12)
        {
          v15 = mlir::TypeRange::dereference_iterator(v13, v12);
          v16 = mlir::TypeRange::dereference_iterator(v14, v12);
          if (((*(InterfaceFor + 32))(InterfaceFor, a1, v15, v16) & 1) == 0)
          {
            v71.n128_u64[0] = " along control flow edge ";
            v73 = 259;
            mlir::Operation::emitOpError(&v74, a1, &v71);
            printRegionEdgeName(&v74, a2, *v7);
            if (v74.n128_u64[0])
            {
              v71.n128_u32[0] = 3;
              v71.n128_u64[1] = ": source type #";
              v72 = 15;
              if (v76 >= v77)
              {
                if (v75 > &v71 || v75 + 24 * v76 <= &v71)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v17 = v75 + 24 * v76;
              v18 = v71;
              *(v17 + 2) = v72;
              *v17 = v18;
              v19 = ++v76;
              if (v74.n128_u64[0])
              {
                v71.n128_u32[0] = 5;
                v71.n128_u64[1] = v12;
                if (v19 >= v77)
                {
                  if (v75 > &v71 || v75 + 24 * v19 <= &v71)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v20 = v75 + 24 * v76;
                v21 = v71;
                *(v20 + 2) = v72;
                *v20 = v21;
                v22 = ++v76;
                if (v74.n128_u64[0])
                {
                  v71.n128_u32[0] = 3;
                  v71.n128_u64[1] = " ";
                  v72 = 1;
                  if (v22 >= v77)
                  {
                    if (v75 > &v71 || v75 + 24 * v22 <= &v71)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v23 = v75 + 24 * v76;
                  v24 = v71;
                  *(v23 + 2) = v72;
                  *v23 = v24;
                  ++v76;
                  if (v74.n128_u64[0])
                  {
                    mlir::DiagnosticArgument::DiagnosticArgument(&v71, v15);
                    if (v76 >= v77)
                    {
                      if (v75 > &v71 || v75 + 24 * v76 <= &v71)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v25 = v75 + 24 * v76;
                    v26 = v71;
                    *(v25 + 2) = v72;
                    *v25 = v26;
                    v27 = ++v76;
                    if (v74.n128_u64[0])
                    {
                      v71.n128_u32[0] = 3;
                      v71.n128_u64[1] = " should match input type #";
                      v72 = 26;
                      if (v27 >= v77)
                      {
                        if (v75 > &v71 || v75 + 24 * v27 <= &v71)
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      v28 = v75 + 24 * v76;
                      v29 = v71;
                      *(v28 + 2) = v72;
                      *v28 = v29;
                      v30 = ++v76;
                      if (v74.n128_u64[0])
                      {
                        v71.n128_u32[0] = 5;
                        v71.n128_u64[1] = v12;
                        if (v30 >= v77)
                        {
                          if (v75 > &v71 || v75 + 24 * v30 <= &v71)
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod();
                          }

                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        v31 = v75 + 24 * v76;
                        v32 = v71;
                        *(v31 + 2) = v72;
                        *v31 = v32;
                        v33 = ++v76;
                        if (v74.n128_u64[0])
                        {
                          v71.n128_u32[0] = 3;
                          v71.n128_u64[1] = " ";
                          v72 = 1;
                          if (v33 >= v77)
                          {
                            if (v75 > &v71 || v75 + 24 * v33 <= &v71)
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod();
                            }

                            llvm::SmallVectorBase<unsigned int>::grow_pod();
                          }

                          v34 = v75 + 24 * v76;
                          v35 = v71;
                          *(v34 + 2) = v72;
                          *v34 = v35;
                          ++v76;
                          if (v74.n128_u64[0])
                          {
                            mlir::DiagnosticArgument::DiagnosticArgument(&v71, v16);
                            if (v76 >= v77)
                            {
                              if (v75 > &v71 || v75 + 24 * v76 <= &v71)
                              {
                                llvm::SmallVectorBase<unsigned int>::grow_pod();
                              }

                              llvm::SmallVectorBase<unsigned int>::grow_pod();
                            }

                            v36 = v75 + 24 * v76;
                            v37 = v71;
                            *(v36 + 2) = v72;
                            *v36 = v37;
                            ++v76;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
            if (v74.n128_u64[0])
            {
              mlir::InFlightDiagnostic::report(&v74);
            }

            if ((v84 & 1) == 0)
            {
              goto LABEL_82;
            }

            if (v83 != &v84)
            {
              free(v83);
            }

            v39 = __p;
            if (__p)
            {
              v40 = v82;
              v41 = __p;
              if (v82 != __p)
              {
                do
                {
                  v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
                }

                while (v40 != v39);
                v41 = __p;
              }

              v82 = v39;
              operator delete(v41);
            }

            v42 = v79;
            if (v79)
            {
              v43 = v80;
              v44 = v79;
              if (v80 != v79)
              {
                do
                {
                  v46 = *--v43;
                  v45 = v46;
                  *v43 = 0;
                  if (v46)
                  {
                    MEMORY[0x259C63150](v45, 0x1000C8077774924);
                  }
                }

                while (v43 != v42);
                v44 = v79;
              }

              v80 = v42;
              operator delete(v44);
            }

            v47 = v75;
            if (v75 == v78)
            {
              goto LABEL_82;
            }

            goto LABEL_54;
          }

          if (v11 == ++v12)
          {
            break;
          }
        }
      }

      v7 += 3;
      if (v7 == v68)
      {
        v38 = 1;
        goto LABEL_82;
      }
    }

    v71.n128_u64[0] = " region control flow edge ";
    v73 = 259;
    mlir::Operation::emitOpError(&v74, a1, &v71);
    printRegionEdgeName(&v74, a2, *v7);
    if (v74.n128_u64[0])
    {
      v71.n128_u32[0] = 3;
      v71.n128_u64[1] = ": source has ";
      v72 = 13;
      if (v76 >= v77)
      {
        if (v75 > &v71 || v75 + 24 * v76 <= &v71)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v48 = v75 + 24 * v76;
      v49 = v71;
      *(v48 + 2) = v72;
      *v48 = v49;
      v50 = ++v76;
      if (v74.n128_u64[0])
      {
        v71.n128_u32[0] = 5;
        v71.n128_u64[1] = v89;
        if (v50 >= v77)
        {
          if (v75 > &v71 || v75 + 24 * v50 <= &v71)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v51 = v75 + 24 * v76;
        v52 = v71;
        *(v51 + 2) = v72;
        *v51 = v52;
        v53 = ++v76;
        if (v74.n128_u64[0])
        {
          v71.n128_u32[0] = 3;
          v71.n128_u64[1] = " operands, but target successor needs ";
          v72 = 38;
          if (v53 >= v77)
          {
            if (v75 > &v71 || v75 + 24 * v53 <= &v71)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v54 = v75 + 24 * v76;
          v55 = v71;
          *(v54 + 2) = v72;
          *v54 = v55;
          v56 = ++v76;
          if (v74.n128_u64[0])
          {
            v71.n128_u32[0] = 5;
            v71.n128_u64[1] = v87;
            if (v56 >= v77)
            {
              if (v75 > &v71 || v75 + 24 * v56 <= &v71)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v57 = v75 + 24 * v76;
            v58 = v71;
            *(v57 + 2) = v72;
            *v57 = v58;
            ++v76;
          }
        }
      }
    }

    v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
    if (v74.n128_u64[0])
    {
      mlir::InFlightDiagnostic::report(&v74);
    }

    if (v84 == 1)
    {
      if (v83 != &v84)
      {
        free(v83);
      }

      v59 = __p;
      if (__p)
      {
        v60 = v82;
        v61 = __p;
        if (v82 != __p)
        {
          do
          {
            v60 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v60 - 1);
          }

          while (v60 != v59);
          v61 = __p;
        }

        v82 = v59;
        operator delete(v61);
      }

      v62 = v79;
      if (v79)
      {
        v63 = v80;
        v64 = v79;
        if (v80 != v79)
        {
          do
          {
            v66 = *--v63;
            v65 = v66;
            *v63 = 0;
            if (v66)
            {
              MEMORY[0x259C63150](v65, 0x1000C8077774924);
            }
          }

          while (v63 != v62);
          v64 = v79;
        }

        v80 = v62;
        operator delete(v64);
      }

      v47 = v75;
      if (v75 != v78)
      {
LABEL_54:
        free(v47);
      }
    }
  }

  else
  {
    v38 = 1;
  }

LABEL_82:
  if (v91 != v93)
  {
    free(v91);
  }

  return v38;
}

mlir::Block *mlir::insideMutuallyExclusiveRegions(mlir *this, mlir::Operation *a2, mlir::Operation *a3)
{
  v5 = this;
  while (1)
  {
    result = *(v5 + 2);
    if (!result)
    {
      return result;
    }

    result = mlir::Block::getParentOp(result);
    if (!result)
    {
      return result;
    }

    v5 = result;
    if (mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(result))
    {
      mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(v5);
      v7 = v5;
      if (mlir::Operation::isProperAncestor(v5, a2))
      {
LABEL_6:
        v8 = *(v7 + 11);
        if ((v8 & 0x7FFFFF) == 0)
        {
          return 0;
        }

        v9 = 0;
        v10 = 0;
        v11 = (((v7 + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v7 + 10));
        v12 = 24 * (v8 & 0x7FFFFF);
        do
        {
          if (mlir::Region::findAncestorOpInRegion(v11, this))
          {
            v9 = v11;
          }

          if (mlir::Region::findAncestorOpInRegion(v11, a2))
          {
            v10 = v11;
          }

          v11 = (v11 + 24);
          v12 -= 24;
        }

        while (v12);
        if (v9 == v10)
        {
          return 0;
        }

        else
        {
          v13 = &v14;
          v14 = v10;
          if (traverseRegionGraph(v9, llvm::function_ref<BOOL ()(mlir::Region *,llvm::ArrayRef<BOOL>)>::callback_fn<isRegionReachable(mlir::Region *,mlir::Region *)::$_0>, &v13))
          {
            return 0;
          }

          else
          {
            v13 = &v14;
            v14 = v9;
            return (traverseRegionGraph(v10, llvm::function_ref<BOOL ()(mlir::Region *,llvm::ArrayRef<BOOL>)>::callback_fn<isRegionReachable(mlir::Region *,mlir::Region *)::$_0>, &v13) ^ 1);
          }
        }
      }

      else
      {
        while (1)
        {
          result = *(v5 + 2);
          if (!result)
          {
            break;
          }

          result = mlir::Block::getParentOp(result);
          if (!result)
          {
            break;
          }

          v5 = result;
          if (mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(result))
          {
            mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(v5);
            v7 = v5;
            if (mlir::Operation::isProperAncestor(v5, a2))
            {
              goto LABEL_6;
            }
          }
        }
      }

      return result;
    }
  }
}

uint64_t mlir::RegionBranchOpInterface::isRepetitiveRegion(mlir::RegionBranchOpInterface *this, unsigned int a2)
{
  v2 = ((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 24 * a2;
  v4 = &v5;
  v5 = v2;
  return traverseRegionGraph(v2, llvm::function_ref<BOOL ()(mlir::Region *,llvm::ArrayRef<BOOL>)>::callback_fn<isRegionReachable(mlir::Region *,mlir::Region *)::$_0>, &v4);
}

uint64_t mlir::RegionBranchOpInterface::hasLoop(mlir::RegionBranchOpInterface *this)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v6 = v8;
  v7 = 0x200000000;
  (*(*(this + 1) + 16))(*(this + 1), *this, 0, &v6);
  v1 = v6;
  if (v7)
  {
    v2 = 24 * v7;
    do
    {
      if (*v1 && (traverseRegionGraph(*v1, llvm::function_ref<BOOL ()(mlir::Region *,llvm::ArrayRef<BOOL>)>::callback_fn<mlir::RegionBranchOpInterface::hasLoop(void)::$_0>, &v5) & 1) != 0)
      {
        v3 = 1;
        v1 = v6;
        if (v6 != v8)
        {
          goto LABEL_9;
        }

        return v3;
      }

      v1 += 3;
      v2 -= 24;
    }

    while (v2);
    v3 = 0;
    v1 = v6;
    if (v6 == v8)
    {
      return v3;
    }
  }

  else
  {
    v3 = 0;
    if (v6 == v8)
    {
      return v3;
    }
  }

LABEL_9:
  free(v1);
  return v3;
}

uint64_t traverseRegionGraph(unint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, void *, size_t), uint64_t a3)
{
  v28[6] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 16);
  if (v6)
  {
    InterfaceFor = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(*(a1 + 16));
  }

  else
  {
    InterfaceFor = 0;
  }

  v8 = *(v6 + 44) & 0x7FFFFF;
  v22 = v25;
  v24 = 40;
  if (v8 >= 0x29)
  {
    v23 = 0;
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (v8)
  {
    bzero(v25, v8);
  }

  v23 = v8;
  *(v22 + mlir::Region::getRegionNumber(a1)) = 1;
  v20 = 0x600000000;
  v26 = v28;
  v27 = 0x200000000;
  (*(InterfaceFor + 16))(InterfaceFor, v6, a1, &v26);
  v9 = v26;
  if (v27)
  {
    v10 = 24 * v27;
    do
    {
      if (*v9)
      {
        if (v20 >= HIDWORD(v20))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v21[v20] = *v9;
        LODWORD(v20) = v20 + 1;
      }

      v9 += 3;
      v10 -= 24;
    }

    while (v10);
    v9 = v26;
  }

  if (v9 != v28)
  {
    free(v9);
  }

  v11 = v20;
  if (v20)
  {
    while (1)
    {
      v12 = v21[v11 - 1];
      LODWORD(v20) = v11 - 1;
      v13 = a2(a3, v12, v22, v23);
      if (v13)
      {
        break;
      }

      v14 = v13;
      RegionNumber = mlir::Region::getRegionNumber(v12);
      if ((*(v22 + RegionNumber) & 1) == 0)
      {
        v16 = mlir::Region::getRegionNumber(v12);
        *(v22 + v16) = 1;
        v26 = v28;
        v27 = 0x200000000;
        (*(InterfaceFor + 16))(InterfaceFor, v6, v12, &v26);
        v17 = v26;
        if (v27)
        {
          v18 = 24 * v27;
          do
          {
            if (*v17)
            {
              if (v20 >= HIDWORD(v20))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v21[v20] = *v17;
              LODWORD(v20) = v20 + 1;
            }

            v17 += 3;
            v18 -= 24;
          }

          while (v18);
          v17 = v26;
        }

        if (v17 != v28)
        {
          free(v17);
        }
      }

      v11 = v20;
      if (!v20)
      {
        goto LABEL_35;
      }
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

LABEL_35:
  if (v22 != v25)
  {
    free(v22);
  }

  return v14;
}

unint64_t mlir::getEnclosingRepetitiveRegion(mlir *this, mlir::Operation *a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    Parent = mlir::Block::getParent(v2);
    v4 = Parent;
    if (!Parent)
    {
      break;
    }

    v5 = *(Parent + 16);
    if (mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(v5) && v5 != 0)
    {
      mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(v5);
      v7 = ((v5 + 16 * ((*(v5 + 44) >> 23) & 1) + ((*(v5 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v5 + 40) + 24 * mlir::Region::getRegionNumber(v4);
      v9 = &v10;
      v10 = v7;
      if (traverseRegionGraph(v7, llvm::function_ref<BOOL ()(mlir::Region *,llvm::ArrayRef<BOOL>)>::callback_fn<isRegionReachable(mlir::Region *,mlir::Region *)::$_0>, &v9))
      {
        break;
      }
    }

    v2 = *(v5 + 16);
    if (!v2)
    {
      return 0;
    }
  }

  return v4;
}

unint64_t mlir::getEnclosingRepetitiveRegion(uint64_t a1)
{
  v7 = a1;
  for (i = mlir::Value::getParentRegion(&v7); i; i = mlir::Block::getParent(v5))
  {
    v2 = *(i + 16);
    if (mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(v2) && v2 != 0)
    {
      mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(v2);
      v4 = ((v2 + 16 * ((*(v2 + 44) >> 23) & 1) + ((*(v2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v2 + 40) + 24 * mlir::Region::getRegionNumber(i);
      v8 = &v9;
      v9 = v4;
      if (traverseRegionGraph(v4, llvm::function_ref<BOOL ()(mlir::Region *,llvm::ArrayRef<BOOL>)>::callback_fn<isRegionReachable(mlir::Region *,mlir::Region *)::$_0>, &v8))
      {
        break;
      }
    }

    v5 = *(v2 + 16);
    if (!v5)
    {
      return 0;
    }
  }

  return i;
}

uint64_t *printRegionEdgeName(uint64_t *a1, mlir::Region *this, unint64_t a3)
{
  if (*a1)
  {
    v5 = a1[3];
    LODWORD(v42) = 3;
    *(&v42 + 1) = "from ";
    v43 = 5;
    v6 = *(a1 + 8);
    if (v6 >= *(a1 + 9))
    {
      if (v5 > &v42 || v5 + 24 * v6 <= &v42)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v5 + 24 * *(a1 + 8);
    v8 = v42;
    *(v7 + 16) = v43;
    *v7 = v8;
    ++*(a1 + 8);
  }

  v9 = *a1;
  if (this)
  {
    if (v9)
    {
      v10 = a1[3];
      LODWORD(v42) = 3;
      *(&v42 + 1) = "Region #";
      v43 = 8;
      v11 = *(a1 + 8);
      if (v11 >= *(a1 + 9))
      {
        if (v10 > &v42 || v10 + 24 * v11 <= &v42)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v10 + 24 * *(a1 + 8);
      v13 = v42;
      *(v12 + 16) = v43;
      *v12 = v13;
      ++*(a1 + 8);
    }

    RegionNumber = mlir::Region::getRegionNumber(this);
    if (!*a1)
    {
      goto LABEL_17;
    }

    v15 = a1[3];
    LODWORD(v42) = 5;
    *(&v42 + 1) = RegionNumber;
    v16 = *(a1 + 8);
    if (v16 >= *(a1 + 9))
    {
      if (v15 > &v42 || v15 + 24 * v16 <= &v42)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v17 = v15 + 24 * *(a1 + 8);
    v18 = v42;
    *(v17 + 16) = v43;
    *v17 = v18;
    v19 = *(a1 + 8) + 1;
    *(a1 + 8) = v19;
    if (!*a1)
    {
      goto LABEL_17;
    }

LABEL_15:
    v24 = a1[3];
    LODWORD(v42) = 3;
    *(&v42 + 1) = " to ";
    v43 = 4;
    if (v19 >= *(a1 + 9))
    {
      if (v24 > &v42 || v24 + 24 * v19 <= &v42)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v25 = v24 + 24 * *(a1 + 8);
    v26 = v42;
    *(v25 + 16) = v43;
    *v25 = v26;
    ++*(a1 + 8);
    goto LABEL_17;
  }

  if (v9)
  {
    v20 = a1[3];
    LODWORD(v42) = 3;
    *(&v42 + 1) = "parent operands";
    v43 = 15;
    v21 = *(a1 + 8);
    if (v21 >= *(a1 + 9))
    {
      if (v20 > &v42 || v20 + 24 * v21 <= &v42)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22 = v20 + 24 * *(a1 + 8);
    v23 = v42;
    *(v22 + 16) = v43;
    *v22 = v23;
    v19 = *(a1 + 8) + 1;
    *(a1 + 8) = v19;
    if (*a1)
    {
      goto LABEL_15;
    }
  }

LABEL_17:
  v27 = *a1;
  if (a3)
  {
    if (v27)
    {
      v28 = a1[3];
      LODWORD(v42) = 3;
      *(&v42 + 1) = "Region #";
      v43 = 8;
      v29 = *(a1 + 8);
      if (v29 >= *(a1 + 9))
      {
        if (v28 > &v42 || v28 + 24 * v29 <= &v42)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v30 = v28 + 24 * *(a1 + 8);
      v31 = v42;
      *(v30 + 16) = v43;
      *v30 = v31;
      ++*(a1 + 8);
    }

    v32 = mlir::Region::getRegionNumber(a3);
    if (*a1)
    {
      v33 = a1[3];
      LODWORD(v42) = 5;
      *(&v42 + 1) = v32;
      v34 = *(a1 + 8);
      if (v34 >= *(a1 + 9))
      {
        if (v33 > &v42 || v33 + 24 * v34 <= &v42)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v35 = v33 + 24 * *(a1 + 8);
      v36 = v42;
      *(v35 + 16) = v43;
      *v35 = v36;
LABEL_27:
      ++*(a1 + 8);
    }
  }

  else if (v27)
  {
    v37 = a1[3];
    LODWORD(v42) = 3;
    *(&v42 + 1) = "parent results";
    v43 = 14;
    v38 = *(a1 + 8);
    if (v38 >= *(a1 + 9))
    {
      if (v37 > &v42 || v37 + 24 * v38 <= &v42)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v39 = v37 + 24 * *(a1 + 8);
    v40 = v42;
    *(v39 + 16) = v43;
    *v39 = v40;
    goto LABEL_27;
  }

  return a1;
}

double llvm::function_ref<llvm::FailureOr<mlir::TypeRange> ()(mlir::RegionBranchPoint)>::callback_fn<mlir::detail::verifyTypesAlongControlFlowEdges(mlir::Operation *)::$_0>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v5[0] = (**(*a1 + 8))();
  v5[1] = v3;
  mlir::OperandRange::getTypes(v5, &v6);
  mlir::ValueRange::ValueRange(v10, v6 + 32 * v7, v8 - v7);
  mlir::TypeRange::TypeRange(v9, v10[0], v10[1]);
  result = *v9;
  *a2 = *v9;
  *(a2 + 16) = 1;
  return result;
}

void llvm::function_ref<llvm::FailureOr<mlir::TypeRange> ()(mlir::RegionBranchPoint)>::callback_fn<mlir::detail::verifyTypesAlongControlFlowEdges(mlir::Operation *)::$_2>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  LOBYTE(v31) = 0;
  v32 = 0;
  v3 = *a1;
  v4 = *(*a1 + 8);
  if (!v4)
  {
LABEL_20:
    mlir::OperandRange::getTypes(&v31, &v36);
    mlir::ValueRange::ValueRange(&v33, v36 + 32 * v37, v39 - v37);
    *(mlir::TypeRange::TypeRange(a3, v33, *(&v33 + 1)) + 16) = 1;
    return;
  }

  v6 = *v3;
  v7 = *v3 + 16 * v4;
  while (1)
  {
    (**(v6 + 8))(&v36);
    v8 = mlir::MutableOperandRange::operator mlir::OperandRange(&v36);
    v10 = v9;
    if (v38 != v40)
    {
      free(v38);
    }

    *&v30 = v8;
    *(&v30 + 1) = v10;
    if ((v32 & 1) == 0)
    {
      v31 = v30;
      v32 = 1;
      goto LABEL_4;
    }

    v11 = *(a1 + 8);
    mlir::OperandRange::getTypes(&v31, &v36);
    mlir::ValueRange::ValueRange(&v33, v36 + 32 * v37, v39 - v37);
    mlir::TypeRange::TypeRange(&v49, v33, *(&v33 + 1));
    mlir::OperandRange::getTypes(&v30, &v36);
    mlir::ValueRange::ValueRange(&v33, v36 + 32 * v37, v39 - v37);
    mlir::TypeRange::TypeRange(v48, v33, *(&v33 + 1));
    v12 = v50;
    if (v50 != v48[1])
    {
      goto LABEL_14;
    }

    if (v50)
    {
      break;
    }

LABEL_4:
    v6 += 16;
    if (v6 == v7)
    {
      goto LABEL_20;
    }
  }

  v13 = 0;
  v14 = v49;
  v15 = v48[0];
  while (1)
  {
    mlir::TypeRange::dereference_iterator(v14, v13);
    mlir::TypeRange::dereference_iterator(v15, v13);
    if (!(*(*(*v11 + 8) + 32))())
    {
      break;
    }

    if (v12 == ++v13)
    {
      goto LABEL_4;
    }
  }

LABEL_14:
  v16 = **(a1 + 16);
  *&v33 = " along control flow edge";
  v35 = 259;
  mlir::Operation::emitOpError(&v36, v16, &v33);
  printRegionEdgeName(&v36, *(a1 + 24), a2);
  if (!v36)
  {
    *a3 = 0;
    *(a3 + 16) = 0;
    if (v47 != 1)
    {
      return;
    }

    goto LABEL_22;
  }

  LODWORD(v33) = 3;
  *(&v33 + 1) = " operands mismatch between return-like terminators";
  v34 = 50;
  if (v40[0] >= v40[1])
  {
    if (v39 > &v33 || v39 + 24 * v40[0] <= &v33)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v17 = v39 + 24 * v40[0];
  v18 = v33;
  *(v17 + 2) = v34;
  *v17 = v18;
  ++v40[0];
  v19 = v36;
  *a3 = 0;
  *(a3 + 16) = 0;
  if (v19)
  {
    mlir::InFlightDiagnostic::report(&v36);
  }

  if (v47 == 1)
  {
LABEL_22:
    if (v46 != &v47)
    {
      free(v46);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v45;
      v22 = __p;
      if (v45 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v45 = v20;
      operator delete(v22);
    }

    v23 = v42;
    if (v42)
    {
      v24 = v43;
      v25 = v42;
      if (v43 != v42)
      {
        do
        {
          v27 = *--v24;
          v26 = v27;
          *v24 = 0;
          if (v27)
          {
            MEMORY[0x259C63150](v26, 0x1000C8077774924);
          }
        }

        while (v24 != v23);
        v25 = v42;
      }

      v43 = v23;
      operator delete(v25);
    }

    if (v39 != &v41)
    {
      free(v39);
    }
  }
}

uint64_t mlir::call_interface_impl::resolveCallable(mlir::SymbolTable *a1, uint64_t (**a2)(void, mlir::SymbolTable *), uint64_t a3)
{
  v5 = (*a2)(a2, a1);
  v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
  v8 = v5 & 0xFFFFFFFFFFFFFFF8 & (v5 << 61 >> 63);
  if (v8)
  {
    return mlir::Value::getDefiningOp(&v8);
  }

  if (a3)
  {

    return mlir::SymbolTableCollection::lookupNearestSymbolFrom(a3, a1, v6);
  }

  else
  {

    return mlir::SymbolTable::lookupNearestSymbolFrom(a1, v6);
  }
}

uint64_t mlir::AffineExpr::walk<void>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return mlir::AffineExprVisitor<void mlir::AffineExpr::walk<void>(mlir::AffineExpr,llvm::function_ref<void ()(mlir::AffineExpr)>)::AffineExprWalker,void>::walkPostOrder(v4, a1);
}

uint64_t mlir::AffineExprVisitor<void mlir::AffineExpr::walk<void>(mlir::AffineExpr,llvm::function_ref<void ()(mlir::AffineExpr)>)::AffineExprWalker,void>::walkPostOrder(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) <= 4u)
  {
    mlir::AffineExprVisitor<void mlir::AffineExpr::walk<void>(mlir::AffineExpr,llvm::function_ref<void ()(mlir::AffineExpr)>)::AffineExprWalker,void>::walkPostOrder(a1, *(a2 + 16));
    mlir::AffineExprVisitor<void mlir::AffineExpr::walk<void>(mlir::AffineExpr,llvm::function_ref<void ()(mlir::AffineExpr)>)::AffineExprWalker,void>::walkPostOrder(a1, *(a2 + 24));
  }

  v5 = *a1;
  v4 = *(a1 + 8);

  return v5(v4, a2);
}

uint64_t mlir::AffineExpr::walk<mlir::WalkResult>(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v4[0] = a2;
  v4[1] = a3;
  return mlir::AffineExprVisitor<mlir::WalkResult mlir::AffineExpr::walk<mlir::WalkResult>(mlir::AffineExpr,llvm::function_ref<mlir::WalkResult ()(mlir::AffineExpr)>)::AffineExprWalker,mlir::WalkResult>::walkPostOrder(v4, a1);
}

uint64_t mlir::AffineExprVisitor<mlir::WalkResult mlir::AffineExpr::walk<mlir::WalkResult>(mlir::AffineExpr,llvm::function_ref<mlir::WalkResult ()(mlir::AffineExpr)>)::AffineExprWalker,mlir::WalkResult>::walkPostOrder(uint64_t (**a1)(uint64_t, uint64_t), uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 > 2)
  {
    if ((v4 - 5) >= 3 && !mlir::AffineExprVisitor<mlir::WalkResult mlir::AffineExpr::walk<mlir::WalkResult>(mlir::AffineExpr,llvm::function_ref<mlir::WalkResult ()(mlir::AffineExpr)>)::AffineExprWalker,mlir::WalkResult>::walkOperandsPostOrder(a1, a2))
    {
      return 0;
    }
  }

  else if (!mlir::AffineExprVisitor<mlir::WalkResult mlir::AffineExpr::walk<mlir::WalkResult>(mlir::AffineExpr,llvm::function_ref<mlir::WalkResult ()(mlir::AffineExpr)>)::AffineExprWalker,mlir::WalkResult>::walkOperandsPostOrder(a1, a2))
  {
    return 0;
  }

  v6 = *a1;
  v5 = a1[1];

  return v6(v5, a2);
}

uint64_t mlir::getAffineBinaryOpExpr(int a1, mlir::MLIRContext **a2, uint64_t a3)
{
  v4 = a2;
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return mlir::AffineExpr::ceilDiv(&v4, a3);
      }

      return mlir::AffineExpr::operator%(&v4, a3);
    }

    return mlir::AffineExpr::floorDiv(&v4, a3);
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return mlir::AffineExpr::operator*(&v4, a3);
      }

      return mlir::AffineExpr::operator%(&v4, a3);
    }

    return mlir::AffineExpr::operator+(&v4, a3);
  }
}

uint64_t mlir::AffineExpr::operator+(uint64_t *a1, uint64_t a2)
{
  v44 = a2;
  v45 = a2;
  result = *a1;
  v46 = result;
  v4 = *(result + 8);
  if (v4 == 5)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 8);
  if (v6 == 5)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v11 = *(v5 + 16);
    v12 = *(v7 + 16);
    v13 = __OFADD__(v11, v12);
    v14 = (v11 + v12);
    if (v13)
    {
      goto LABEL_20;
    }

    v47 = *result;
    v48 = v14;
    AffineUniquer = mlir::MLIRContext::getAffineUniquer(v47);
    result = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v47, &v48);
LABEL_17:
    if (result)
    {
      return result;
    }

    result = *a1;
LABEL_20:
    v16 = mlir::MLIRContext::getAffineUniquer(*result);
    LODWORD(v48) = 0;
    return mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(v16, 0, 0, &v48, a1, &v44);
  }

  v9 = result;
  if (v4 == 5 || mlir::AffineExpr::isSymbolicOrConstant(&v46) && (mlir::AffineExpr::isSymbolicOrConstant(&v45) & 1) == 0)
  {
    v10 = &v45;
LABEL_14:
    result = mlir::AffineExpr::operator+(v10, v9);
    goto LABEL_17;
  }

  if (!v7)
  {
    result = v9;
    v25 = v4 > 4 || v9 == 0;
    v23 = a2;
    if (v25)
    {
      v20 = 0;
      v21 = 0;
      goto LABEL_54;
    }

    v27 = *(v9 + 8);
LABEL_45:
    if (v27 == 1)
    {
      v28 = *(result + 24);
      v22 = 1;
      v21 = 1;
      if (v28)
      {
        v20 = result;
        v9 = result;
        if (*(v28 + 8) == 5)
        {
          v22 = *(v28 + 16);
          v9 = *(result + 16);
          v21 = 1;
          v20 = result;
          if (v6 >= 5)
          {
            v24 = 0;
          }

          else
          {
            v24 = v23;
          }

          if (!v24)
          {
            goto LABEL_64;
          }

          goto LABEL_59;
        }

        goto LABEL_55;
      }

      goto LABEL_97;
    }

    v21 = 1;
    v20 = result;
LABEL_54:
    v22 = 1;
    v9 = result;
    goto LABEL_55;
  }

  v18 = *(v7 + 16);
  result = v9;
  if (v18)
  {
    if (v4 > 4 || v9 == 0)
    {
      v20 = 0;
      v21 = 0;
      v22 = 1;
      v23 = a2;
      if (v6 >= 5)
      {
        v24 = 0;
      }

      else
      {
        v24 = a2;
      }

      if (!v24)
      {
        goto LABEL_64;
      }

      goto LABEL_59;
    }

    v27 = *(v9 + 8);
    v23 = a2;
    if (!v27)
    {
      v26 = *(v9 + 24);
      v22 = 1;
      v21 = 1;
      if (v26)
      {
        v20 = v9;
        if (*(v26 + 8) == 5)
        {
          v48 = *(v9 + 16);
          result = mlir::AffineExpr::operator+(&v48, v18 + *(v26 + 16));
          goto LABEL_17;
        }

LABEL_55:
        if (v6 >= 5)
        {
          v24 = 0;
        }

        else
        {
          v24 = v23;
        }

        if (!v24)
        {
          goto LABEL_64;
        }

LABEL_59:
        if (*(v24 + 8) == 1)
        {
          v29 = *(v24 + 24);
          if (v29 && *(v29 + 8) == 5)
          {
            v31 = *(v29 + 16);
            if (v9 != *(v24 + 16))
            {
              goto LABEL_65;
            }

            goto LABEL_93;
          }
        }

LABEL_64:
        v31 = 1;
        if (v9 != v23)
        {
LABEL_65:
          if (v21)
          {
            if (!*(v20 + 8))
            {
              v9 = *(v20 + 24);
              if (v9)
              {
                if (*(v9 + 8) == 5)
                {
                  v47 = *(v20 + 16);
                  v48 = mlir::AffineExpr::operator+(&v47, v23);
                  v10 = &v48;
                  goto LABEL_14;
                }
              }
            }
          }

          if (!v24)
          {
            goto LABEL_20;
          }

          v32 = *(v24 + 16);
          v33 = *(v24 + 24);
          v48 = v33;
          if (*(v32 + 8) >= 5)
          {
            v32 = 0;
          }

          if (v33 && *(v33 + 8) == 5 && *(v33 + 16) == -1)
          {
            if (!v32)
            {
              goto LABEL_112;
            }

            v35 = *(v32 + 8);
            if (v35 == 1)
            {
              v42 = *(v32 + 16);
              if (v42)
              {
                v43 = *(v42 + 8) == 3;
              }

              else
              {
                v43 = 0;
              }

              if (!v43)
              {
                goto LABEL_112;
              }

              v36 = *(v32 + 24);
              if (*(v42 + 24) == v36 && result == *(v42 + 16))
              {
LABEL_91:
                result = mlir::AffineExpr::operator%(&v46, v36);
                goto LABEL_17;
              }
            }

            if (v6 != 1)
            {
LABEL_112:
              result = 0;
              goto LABEL_17;
            }
          }

          else
          {
            if (v32)
            {
              v34 = v6 == 1;
            }

            else
            {
              v34 = 0;
            }

            if (!v34)
            {
              goto LABEL_112;
            }

            v35 = *(v32 + 8);
          }

          if (v35 == 3)
          {
            v36 = *(v32 + 24);
            if (v36 && *(v36 + 8) == 5)
            {
              v38 = *(v32 + 16);
              v39 = *(v36 + 16) >= 1 && result == v38;
              if (v39 && v36 == mlir::AffineExpr::operator-(&v48))
              {
                goto LABEL_91;
              }
            }
          }

          goto LABEL_112;
        }

LABEL_93:
        v47 = *result;
        v48 = (v31 + v22);
        v40 = mlir::MLIRContext::getAffineUniquer(v47);
        v41 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v40, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v47, &v48);
        v48 = v9;
        result = mlir::AffineExpr::operator*(&v48, v41);
        goto LABEL_17;
      }

LABEL_97:
      v20 = result;
      v9 = result;
      if (v6 >= 5)
      {
        v24 = 0;
      }

      else
      {
        v24 = v23;
      }

      if (!v24)
      {
        goto LABEL_64;
      }

      goto LABEL_59;
    }

    goto LABEL_45;
  }

  return result;
}

uint64_t mlir::AffineExpr::operator*(uint64_t *a1, uint64_t a2)
{
  v19 = a2;
  v20 = a2;
  v3 = *a1;
  v21 = v3;
  v4 = *(v3 + 8);
  if (v4 == 5)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (*(a2 + 8) == 5)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if ((mlir::AffineExpr::isSymbolicOrConstant(&v21) & 1) == 0 && !mlir::AffineExpr::isSymbolicOrConstant(&v20))
    {
      goto LABEL_31;
    }

    isSymbolicOrConstant = mlir::AffineExpr::isSymbolicOrConstant(&v20);
    if (v4 != 5 && (isSymbolicOrConstant & 1) != 0)
    {
      if (v6)
      {
        v10 = *(v6 + 16);
        if (!v10)
        {
          return a2;
        }

        if (v10 == 1)
        {
          return v3;
        }

        if (v4 > 4 || !v3 || *(v3 + 8) != 1)
        {
          goto LABEL_31;
        }

        v11 = *(v3 + 24);
        if (v11 && *(v11 + 8) == 5)
        {
          v23 = *(v3 + 16);
          v3 = mlir::AffineExpr::operator*(&v23, v10 * *(v11 + 16));
          if (!v3)
          {
            goto LABEL_30;
          }

          return v3;
        }
      }

      else
      {
        v17 = v4 > 4 || v3 == 0;
        if (v17 || *(v3 + 8) != 1)
        {
          goto LABEL_31;
        }
      }

      v18 = *(v3 + 24);
      if (!v18 || *(v18 + 8) != 5)
      {
        goto LABEL_31;
      }

      v22 = *(v3 + 16);
      v23 = mlir::AffineExpr::operator*(&v22, a2);
      v3 = mlir::AffineExpr::operator*(&v23, v18);
      if (v3)
      {
        return v3;
      }

      goto LABEL_30;
    }

    v3 = mlir::AffineExpr::operator*(&v20, v3);
    if (!v3)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v12 = *(v5 + 16);
    v13 = *(v6 + 16);
    if ((v12 * v13) >> 64 != (v12 * v13) >> 63)
    {
LABEL_31:
      AffineUniquer = mlir::MLIRContext::getAffineUniquer(*v3);
      LODWORD(v23) = 1;
      return mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(AffineUniquer, 0, 0, &v23, a1, &v19);
    }

    v22 = *v3;
    v23 = v12 * v13;
    v14 = mlir::MLIRContext::getAffineUniquer(v22);
    v3 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v14, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v22, &v23);
    if (!v3)
    {
LABEL_30:
      v3 = *a1;
      goto LABEL_31;
    }
  }

  return v3;
}

uint64_t mlir::AffineExpr::floorDiv(mlir::MLIRContext ***a1, uint64_t a2)
{
  v22 = a2;
  if (*(*a1 + 2) == 5)
  {
    v3 = *a1;
  }

  else
  {
    v3 = 0;
  }

  if (!a2)
  {
    goto LABEL_27;
  }

  if (*(a2 + 8) != 5)
  {
    goto LABEL_27;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_27;
  }

  if (!v3)
  {
    v7 = *a1;
    v24 = *a2;
    v25 = 1;
    AffineUniquer = mlir::MLIRContext::getAffineUniquer(v24);
    if (mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v24, &v25) == a2)
    {
      return v7;
    }

    v10 = *(v7 + 2);
    if (v10 <= 4)
    {
      if (!v10)
      {
        v17 = v7[2];
        v25 = v17;
        LargestKnownDivisor = mlir::AffineExpr::getLargestKnownDivisor(&v25);
        v25 = v7[3];
        v19 = mlir::AffineExpr::getLargestKnownDivisor(&v25);
        v20 = *(a2 + 16);
        if (LargestKnownDivisor % v20 && v19 % v20)
        {
          goto LABEL_27;
        }

        v24 = v17;
        v25 = mlir::AffineExpr::floorDiv(&v24, v20);
        v23 = v7[3];
        v21 = mlir::AffineExpr::floorDiv(&v23, *(a2 + 16));
        result = mlir::AffineExpr::operator+(&v25, v21);
        if (!result)
        {
          goto LABEL_27;
        }

        return result;
      }

      if (v10 == 1)
      {
        v11 = v7[3];
        if (v11)
        {
          if (*(v11 + 2) == 5)
          {
            v12 = *(v11 + 2);
            v13 = *(a2 + 16);
            if (!(v12 % v13))
            {
              v25 = v7[2];
              result = mlir::AffineExpr::operator*(&v25, v12 / v13);
              if (result)
              {
                return result;
              }
            }
          }
        }
      }
    }

LABEL_27:
    v16 = mlir::MLIRContext::getAffineUniquer(**a1);
    LODWORD(v25) = 3;
    return mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(v16, 0, 0, &v25, a1, &v22);
  }

  v5 = v3[2];
  if (v4 == -1 && v5 == 0x8000000000000000)
  {
    goto LABEL_27;
  }

  if (v5)
  {
    v6 = (((v5 ^ v4) & 0x8000000000000000) != 0 ? (v5 + ((v4 >> 63) | 1)) / v4 - 1 : v5 / v4);
  }

  else
  {
    v6 = 0;
  }

  v24 = **a1;
  v25 = v6;
  v15 = mlir::MLIRContext::getAffineUniquer(v24);
  result = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v15, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v24, &v25);
  if (!result)
  {
    goto LABEL_27;
  }

  return result;
}

uint64_t mlir::AffineExpr::ceilDiv(uint64_t *a1, uint64_t a2)
{
  v15 = a2;
  result = *a1;
  v4 = *(result + 8);
  if (v4 == 5)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  if (!a2)
  {
    goto LABEL_31;
  }

  if (*(a2 + 8) != 5)
  {
    goto LABEL_31;
  }

  v6 = *(a2 + 16);
  if (!v6)
  {
    goto LABEL_31;
  }

  if (v5)
  {
    v7 = *(v5 + 16);
    if (v6 == -1 && v7 == 0x8000000000000000)
    {
      goto LABEL_31;
    }

    if (v7)
    {
      if ((v7 ^ v6) < 0)
      {
        v9 = v7 / v6;
      }

      else
      {
        if (v6 < 0)
        {
          v8 = v7 + 1;
        }

        else
        {
          v8 = v7 - 1;
        }

        v9 = v8 / v6 + 1;
      }
    }

    else
    {
      v9 = 0;
    }

    v16 = *result;
    v17 = v9;
    AffineUniquer = mlir::MLIRContext::getAffineUniquer(v16);
    result = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v16, &v17);
  }

  else
  {
    if (v6 == 1)
    {
      return result;
    }

    if (v4 != 1 || ((v10 = *(result + 24)) != 0 ? (v11 = *(v10 + 8) == 5) : (v11 = 0), !v11 || (v12 = *(v10 + 16), v12 % v6)))
    {
LABEL_31:
      v14 = mlir::MLIRContext::getAffineUniquer(*result);
      LODWORD(v17) = 4;
      return mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(v14, 0, 0, &v17, a1, &v15);
    }

    v17 = *(result + 16);
    result = mlir::AffineExpr::operator*(&v17, v12 / v6);
  }

  if (!result)
  {
    result = *a1;
    goto LABEL_31;
  }

  return result;
}

uint64_t mlir::AffineExpr::operator%(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v17 = a2;
  v18 = v3;
  v4 = *(v3 + 8);
  if (v4 == 5)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (!a2)
  {
    goto LABEL_27;
  }

  if (*(a2 + 8) != 5)
  {
    goto LABEL_27;
  }

  v6 = *(a2 + 16);
  if (v6 < 1)
  {
    goto LABEL_27;
  }

  if (v5)
  {
    v7 = *v3;
    v20 = ((v6 & ((*(v5 + 16) % v6) >> 63)) + *(v5 + 16) % v6);
    goto LABEL_9;
  }

  if (!(mlir::AffineExpr::getLargestKnownDivisor(&v18) % v6))
  {
    v7 = *v3;
    v20 = 0;
LABEL_9:
    v19 = v7;
    AffineUniquer = mlir::MLIRContext::getAffineUniquer(v7);
    result = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v19, &v20);
    if (result)
    {
      return result;
    }

    goto LABEL_26;
  }

  if (v4 > 4)
  {
    goto LABEL_27;
  }

  if (v4 == 2)
  {
    v14 = *(v3 + 24);
    if (!v14)
    {
      goto LABEL_27;
    }

    if (*(v14 + 8) != 5)
    {
      goto LABEL_27;
    }

    v15 = *(v14 + 16);
    if (v15 < 1 || v15 % v6)
    {
      goto LABEL_27;
    }

    v20 = *(v3 + 16);
  }

  else
  {
    if (v4)
    {
      goto LABEL_27;
    }

    v10 = *(v3 + 16);
    v20 = v10;
    LargestKnownDivisor = mlir::AffineExpr::getLargestKnownDivisor(&v20);
    v12 = *(v3 + 24);
    v20 = v12;
    v13 = mlir::AffineExpr::getLargestKnownDivisor(&v20);
    if (LargestKnownDivisor % v6)
    {
      if (!(v13 % v6))
      {
        v20 = v10;
        goto LABEL_25;
      }

LABEL_27:
      v16 = mlir::MLIRContext::getAffineUniquer(*v3);
      LODWORD(v20) = 2;
      return mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(v16, 0, 0, &v20, a1, &v17);
    }

    v20 = v12;
  }

LABEL_25:
  result = mlir::AffineExpr::operator%(&v20, v6);
  if (!result)
  {
LABEL_26:
    v3 = *a1;
    goto LABEL_27;
  }

  return result;
}

uint64_t mlir::AffineExpr::replaceDimsAndSymbols(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  result = *a1;
  v7 = *(result + 8);
  if (v7 > 4)
  {
    if (v7 != 5)
    {
      if (v7 == 7)
      {
        v14 = *(result + 16);
        v15 = (a4 + 8 * v14);
        v16 = a5 > v14;
      }

      else
      {
        v17 = *(result + 16);
        v15 = (a2 + 8 * v17);
        v16 = a3 > v17;
      }

      if (v16)
      {
        v18 = v15;
      }

      else
      {
        v18 = a1;
      }

      return *v18;
    }
  }

  else
  {
    v8 = *(result + 16);
    v9 = *(result + 24);
    v19 = v9;
    v20 = v8;
    v10 = mlir::AffineExpr::replaceDimsAndSymbols(&v20);
    v11 = mlir::AffineExpr::replaceDimsAndSymbols(&v19);
    result = *a1;
    if (v8 != v10 || v9 != v11)
    {
      v13 = *(result + 8);
      v21 = v10;
      if (v13 > 2)
      {
        if (v13 != 3)
        {
          if (v13 == 4)
          {
            return mlir::AffineExpr::ceilDiv(&v21, v11);
          }

          return mlir::AffineExpr::operator%(&v21, v11);
        }

        return mlir::AffineExpr::floorDiv(&v21, v11);
      }

      else
      {
        if (v13)
        {
          if (v13 == 1)
          {
            return mlir::AffineExpr::operator*(&v21, v11);
          }

          return mlir::AffineExpr::operator%(&v21, v11);
        }

        return mlir::AffineExpr::operator+(&v21, v11);
      }
    }
  }

  return result;
}

uint64_t mlir::AffineExpr::shiftDims(mlir::MLIRContext ***this, unsigned int a2, int a3, unsigned int a4)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v23 = v25;
  v24 = 0x400000000;
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      v9 = **this;
      v22 = i;
      v21 = v9;
      AffineUniquer = mlir::MLIRContext::getAffineUniquer(v9);
      v20 = 6;
      v11 = mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>, &v21, &v20, &v22);
      if (v24 >= HIDWORD(v24))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v23 + v24) = v11;
      v12 = v24 + 1;
      LODWORD(v24) = v24 + 1;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = a2 - a4;
  if (a2 > a4)
  {
    v14 = a4 + a3;
    do
    {
      v15 = **this;
      v22 = v14;
      v21 = v15;
      v16 = mlir::MLIRContext::getAffineUniquer(v15);
      v20 = 6;
      v17 = mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(v16, llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>, &v21, &v20, &v22);
      if (v24 >= HIDWORD(v24))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v23 + v24) = v17;
      v12 = v24 + 1;
      LODWORD(v24) = v24 + 1;
      ++v14;
      --v13;
    }

    while (v13);
  }

  result = mlir::AffineExpr::replaceDimsAndSymbols(this, v23, v12, 0, 0);
  if (v23 != v25)
  {
    v19 = result;
    free(v23);
    return v19;
  }

  return result;
}

uint64_t mlir::getAffineDimExpr(mlir *this, mlir::MLIRContext *a2, mlir::MLIRContext *a3)
{
  v7 = this;
  v6 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(a2);
  v5 = 6;
  return mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>, &v6, &v5, &v7);
}

uint64_t mlir::AffineExpr::shiftSymbols(mlir::MLIRContext ***this, unsigned int a2, int a3, unsigned int a4)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v23 = v25;
  v24 = 0x400000000;
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      v9 = **this;
      v22 = i;
      v21 = v9;
      AffineUniquer = mlir::MLIRContext::getAffineUniquer(v9);
      v20 = 7;
      v11 = mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>, &v21, &v20, &v22);
      if (v24 >= HIDWORD(v24))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v23 + v24) = v11;
      v12 = v24 + 1;
      LODWORD(v24) = v24 + 1;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = a2 - a4;
  if (a2 > a4)
  {
    v14 = a4 + a3;
    do
    {
      v15 = **this;
      v22 = v14;
      v21 = v15;
      v16 = mlir::MLIRContext::getAffineUniquer(v15);
      v20 = 7;
      v17 = mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(v16, llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>, &v21, &v20, &v22);
      if (v24 >= HIDWORD(v24))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v23 + v24) = v17;
      v12 = v24 + 1;
      LODWORD(v24) = v24 + 1;
      ++v14;
      --v13;
    }

    while (v13);
  }

  result = mlir::AffineExpr::replaceDimsAndSymbols(this, 0, 0, v23, v12);
  if (v23 != v25)
  {
    v19 = result;
    free(v23);
    return v19;
  }

  return result;
}

uint64_t mlir::getAffineSymbolExpr(mlir *this, mlir::MLIRContext *a2, mlir::MLIRContext *a3)
{
  v7 = this;
  v6 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(a2);
  v5 = 7;
  return mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>, &v6, &v5, &v7);
}

uint64_t mlir::AffineExpr::replace(unint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 4);
  if (v2)
  {
    v3 = *a2;
    v4 = HIDWORD(*a1);
    v5 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v4);
    v6 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5)))) & (v2 - 1);
    v7 = *(*a2 + 16 * v6);
    if (*a1 == v7)
    {
LABEL_3:
      if (v6 != v2)
      {
        return *(v3 + 16 * v6 + 8);
      }
    }

    else
    {
      v18 = 1;
      while (v7 != -4096)
      {
        v19 = v6 + v18++;
        v6 = v19 & (v2 - 1);
        v7 = *(v3 + 16 * v6);
        if (*a1 == v7)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v8 = *a1;
  if (*(*a1 + 8) <= 4u)
  {
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
    v20 = v10;
    v21 = v9;
    v12 = mlir::AffineExpr::replace(&v21);
    v13 = mlir::AffineExpr::replace(&v20);
    v8 = *a1;
    if (v9 != v12 || v10 != v13)
    {
      v15 = *(v8 + 8);
      v22 = v12;
      if (v15 > 2)
      {
        if (v15 == 3)
        {
          return mlir::AffineExpr::floorDiv(&v22, v13);
        }

        if (v15 == 4)
        {
          return mlir::AffineExpr::ceilDiv(&v22, v13);
        }
      }

      else
      {
        if (!v15)
        {
          return mlir::AffineExpr::operator+(&v22, v13);
        }

        if (v15 == 1)
        {
          return mlir::AffineExpr::operator*(&v22, v13);
        }
      }

      return mlir::AffineExpr::operator%(&v22, v13);
    }
  }

  return v8;
}

void mlir::AffineExpr::replace(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  v5 = a2;
  v6 = a3;
  llvm::DenseMapBase<llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>,mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(v7, &v5, &v6, &v4);
  mlir::AffineExpr::replace(a1, v7);
  llvm::deallocate_buffer(v7[0], (16 * v8));
}

uint64_t mlir::AffineExpr::isSymbolicOrConstant(mlir::AffineExpr *this)
{
  v1 = *this;
  v2 = *(*this + 8);
  if (v2 > 4)
  {
    return v2 == 5 || v2 == 7;
  }

  v6 = *(v1 + 16);
  result = mlir::AffineExpr::isSymbolicOrConstant(&v6);
  if (result)
  {
    v5 = *(v1 + 24);
    return mlir::AffineExpr::isSymbolicOrConstant(&v5);
  }

  return result;
}

uint64_t mlir::AffineExpr::isPureAffine(mlir::AffineExpr *this)
{
  v1 = *this;
  v2 = *(*this + 8);
  if (v2 > 4)
  {
    return 1;
  }

  if ((v2 - 2) < 3)
  {
    v8 = *(v1 + 16);
    result = mlir::AffineExpr::isPureAffine(&v8);
    if (result)
    {
      v4 = *(*(v1 + 24) + 8);
      return v4 == 5;
    }

    return result;
  }

  if (!v2)
  {
    v8 = *(v1 + 16);
    result = mlir::AffineExpr::isPureAffine(&v8);
    if (result)
    {
      v7 = *(v1 + 24);
      return mlir::AffineExpr::isPureAffine(&v7);
    }

    return result;
  }

  v5 = *(v1 + 16);
  v8 = v5;
  result = mlir::AffineExpr::isPureAffine(&v8);
  if (result)
  {
    v6 = *(v1 + 24);
    v7 = v6;
    result = mlir::AffineExpr::isPureAffine(&v7);
    if (result)
    {
      if (*(v5 + 8) != 5)
      {
        v4 = *(v6 + 8);
        return v4 == 5;
      }

      return 1;
    }
  }

  return result;
}

unint64_t mlir::AffineExpr::getLargestKnownDivisor(mlir::AffineExpr *this)
{
  v1 = *this;
  v2 = *(*this + 8);
  if (v2 > 2)
  {
    if ((v2 - 3) < 2)
    {
      v13 = *(v1 + 24);
      if (v13)
      {
        v14 = *(v13 + 8) == 5;
      }

      else
      {
        v14 = 0;
      }

      if (!v14)
      {
        return 1;
      }

      v16 = *(v13 + 16);
      if (!v16)
      {
        return 1;
      }

      v19 = *(v1 + 16);
      LargestKnownDivisor = mlir::AffineExpr::getLargestKnownDivisor(&v19);
      v15 = LargestKnownDivisor / v16;
      if (LargestKnownDivisor % v16)
      {
        return 1;
      }
    }

    else
    {
      if ((v2 - 6) < 2)
      {
        return 1;
      }

      v15 = *(v1 + 16);
    }

    if (v15 >= 0)
    {
      return v15;
    }

    else
    {
      return -v15;
    }
  }

  else
  {
    if (v2)
    {
      v3 = v2 == 1;
    }

    else
    {
      v3 = 0;
    }

    if (v3)
    {
      v19 = *(v1 + 16);
      v12 = mlir::AffineExpr::getLargestKnownDivisor(&v19);
      v18 = *(v1 + 24);
      return mlir::AffineExpr::getLargestKnownDivisor(&v18) * v12;
    }

    else
    {
      v19 = *(v1 + 16);
      v4 = mlir::AffineExpr::getLargestKnownDivisor(&v19);
      v18 = *(v1 + 24);
      result = mlir::AffineExpr::getLargestKnownDivisor(&v18);
      v6 = result;
      v7 = v4 > result;
      if (v4 < result)
      {
        result = v4;
      }

      if (v7)
      {
        v6 = v4;
      }

      if (result)
      {
        v8 = v6 % result;
        if (v8)
        {
          v9 = v8 >> __clz(__rbit64(v8));
          v10 = result;
          do
          {
            v11 = v10 >> __clz(__rbit64(v10));
            v10 = v11 - v9;
            if (v9 > v11)
            {
              v10 = v9 - v11;
            }

            if (v9 >= v11)
            {
              v9 = v11;
            }
          }

          while (v10);
          return v9 << __clz(__rbit64(v8 | result));
        }
      }

      else
      {
        return v6;
      }
    }
  }

  return result;
}

void *mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(void *result, uint64_t a2)
{
  *result = a2;
  return result;
}

{
  *result = a2;
  return result;
}

BOOL mlir::AffineExpr::isMultipleOf(mlir::AffineExpr *this, unint64_t a2)
{
  v3 = *this;
  v4 = *(*this + 8);
  if (v4 > 4)
  {
    if ((v4 - 6) < 2)
    {
      return a2 * a2 == 1;
    }

    v8 = *(v3 + 16);
    v18 = v8 / a2;
    return v8 == v18 * a2;
  }

  if ((v4 - 2) < 3 || v4 == 0)
  {
    v20 = *(v3 + 16);
    LargestKnownDivisor = mlir::AffineExpr::getLargestKnownDivisor(&v20);
    v19 = *(v3 + 24);
    v7 = mlir::AffineExpr::getLargestKnownDivisor(&v19);
    if (LargestKnownDivisor >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = LargestKnownDivisor;
    }

    if (LargestKnownDivisor <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = LargestKnownDivisor;
    }

    if (v8)
    {
      v10 = v9 % v8;
      if (v10)
      {
        v11 = v10 >> __clz(__rbit64(v10));
        v12 = v8;
        do
        {
          v13 = v12 >> __clz(__rbit64(v12));
          v12 = v13 - v11;
          if (v11 > v13)
          {
            v12 = v11 - v13;
          }

          if (v11 >= v13)
          {
            v11 = v13;
          }
        }

        while (v12);
        v8 = v11 << __clz(__rbit64(v10 | v8));
      }
    }

    else
    {
      v8 = v9;
    }

    goto LABEL_28;
  }

  v20 = *(v3 + 16);
  v15 = mlir::AffineExpr::getLargestKnownDivisor(&v20);
  if (v15 % a2)
  {
    v16 = v15;
    v19 = *(v3 + 24);
    v17 = mlir::AffineExpr::getLargestKnownDivisor(&v19);
    if (v17 % a2)
    {
      v8 = v17 * v16;
LABEL_28:
      v18 = v8 / a2;
      return v8 == v18 * a2;
    }
  }

  return 1;
}

uint64_t mlir::AffineExpr::isFunctionOfDim(mlir::AffineExpr *this, unsigned int a2)
{
  v2 = *this;
  v3 = *(*this + 8);
  if (v3 == 6)
  {
    v5 = *v2;
    v9[0] = a2;
    v11 = v5;
    AffineUniquer = mlir::MLIRContext::getAffineUniquer(v5);
    v10 = 6;
    return *this == mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>, &v11, &v10, v9);
  }

  else if (v3 > 4)
  {
    return 0;
  }

  else
  {
    v11 = *(v2 + 16);
    if (mlir::AffineExpr::isFunctionOfDim(&v11, a2))
    {
      return 1;
    }

    else
    {
      *v9 = *(v2 + 24);
      return mlir::AffineExpr::isFunctionOfDim(v9, a2);
    }
  }
}

uint64_t mlir::AffineExpr::isFunctionOfSymbol(mlir::AffineExpr *this, unsigned int a2)
{
  v2 = *this;
  v3 = *(*this + 8);
  if (v3 == 7)
  {
    v5 = *v2;
    v9[0] = a2;
    v11 = v5;
    AffineUniquer = mlir::MLIRContext::getAffineUniquer(v5);
    v10 = 7;
    return *this == mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>, &v11, &v10, v9);
  }

  else if (v3 > 4)
  {
    return 0;
  }

  else
  {
    v11 = *(v2 + 16);
    if (mlir::AffineExpr::isFunctionOfSymbol(&v11, a2))
    {
      return 1;
    }

    else
    {
      *v9 = *(v2 + 24);
      return mlir::AffineExpr::isFunctionOfSymbol(v9, a2);
    }
  }
}

void *mlir::AffineDimExpr::AffineDimExpr(void *result, uint64_t a2)
{
  *result = a2;
  return result;
}

{
  *result = a2;
  return result;
}

void *mlir::AffineSymbolExpr::AffineSymbolExpr(void *result, uint64_t a2)
{
  *result = a2;
  return result;
}

{
  *result = a2;
  return result;
}

void *mlir::AffineConstantExpr::AffineConstantExpr(void *result, uint64_t a2)
{
  *result = a2;
  return result;
}

{
  *result = a2;
  return result;
}

BOOL mlir::AffineExpr::operator==(mlir::MLIRContext ***a1, uint64_t a2)
{
  v5 = **a1;
  v6 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v5);
  return *a1 == mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v5, &v6);
}

uint64_t mlir::getAffineConstantExpr(mlir *this, mlir::MLIRContext *a2, mlir::MLIRContext *a3)
{
  v5 = a2;
  v6 = this;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(a2);
  return mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v5, &v6);
}

uint64_t mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::detail::AffineConstantExprStorage,void>::resolveTypeID(void)::id, 37 * v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::AffineConstantExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>,mlir::TypeID,long long &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineConstantExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>,mlir::TypeID,long long &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::getAffineConstantExprs@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, mlir::MLIRContext *a3@<X2>, uint64_t **a4@<X8>)
{
  v5 = result;
  *a4 = (a4 + 2);
  a4[1] = 0x600000000;
  if (((8 * a2) >> 3) >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = 0;
  v8 = 8 * a2;
  if (a2)
  {
    v9 = *a4;
    v10 = 8 * a2;
    do
    {
      v11 = *v5++;
      v13 = a3;
      v14 = v11;
      AffineUniquer = mlir::MLIRContext::getAffineUniquer(a3);
      result = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v13, &v14);
      *v9++ = result;
      v10 -= 8;
    }

    while (v10);
    v7 = *(a4 + 2);
  }

  *(a4 + 2) = v7 + (v8 >> 3);
  return result;
}

uint64_t mlir::AffineExpr::operator+(mlir::MLIRContext ***a1, uint64_t a2)
{
  v6 = **a1;
  v7 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v6);
  v4 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v6, &v7);
  return mlir::AffineExpr::operator+(a1, v4);
}

uint64_t mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, _DWORD *a4, void *a5, void *a6)
{
  v6 = a2;
  {
    v18 = a5;
    v19 = a1;
    v15 = a4;
    v16 = a6;
    v17 = a3;
    mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>();
    v6 = a2;
    a4 = v15;
    a3 = v17;
    a5 = v18;
    a6 = v16;
    a1 = v19;
  }

  v25[0] = v6;
  v25[1] = a3;
  v22 = *a4;
  v7 = *a6;
  v23 = *a5;
  v24 = v7;
  v8 = 0x9DDFEA08EB382D69 * ((8 * v23 - 0xAE502812AA7333) ^ HIDWORD(v23));
  v9 = HIDWORD(v7);
  v10 = 0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7));
  v11 = (1400339394 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10)))) | (0xEB382D6900000000 * ((((0x9DDFEA08EB382D69 * (HIDWORD(v23) ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (HIDWORD(v23) ^ (v8 >> 47) ^ v8))));
  v12 = 0xBF58476D1CE4E5B9 * (((0xBF58476D1CE4E5B9 * v11) >> 31) ^ (484763065 * v11) | ((37 * v22) << 32));
  v21 = &v22;
  v20[0] = &v22;
  v20[1] = v25;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::detail::AffineBinaryOpExprStorage,void>::resolveTypeID(void)::id, (v12 >> 31) ^ v12, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::AffineBinaryOpExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(llvm::function_ref<void ()(mlir::detail::AffineBinaryOpExprStorage *)>,mlir::TypeID,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v21, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineBinaryOpExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(llvm::function_ref<void ()(mlir::detail::AffineBinaryOpExprStorage *)>,mlir::TypeID,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v20);
}

uint64_t mlir::AffineExpr::operator*(mlir::MLIRContext ***a1, uint64_t a2)
{
  v6 = **a1;
  v7 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v6);
  v4 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v6, &v7);
  return mlir::AffineExpr::operator*(a1, v4);
}

uint64_t mlir::AffineExpr::operator-(uint64_t *a1)
{
  v5 = **a1;
  v6 = -1;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v5);
  v3 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v5, &v6);
  return mlir::AffineExpr::operator*(a1, v3);
}

uint64_t mlir::AffineExpr::operator-(uint64_t *a1, uint64_t a2)
{
  v6 = **a1;
  v7 = -a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v6);
  v4 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v6, &v7);
  return mlir::AffineExpr::operator+(a1, v4);
}

uint64_t mlir::AffineExpr::operator-(uint64_t *a1, mlir::MLIRContext **a2)
{
  v7 = a2;
  v8 = *a2;
  v9 = -1;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v8);
  v4 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v8, &v9);
  v5 = mlir::AffineExpr::operator*(&v7, v4);
  return mlir::AffineExpr::operator+(a1, v5);
}

uint64_t mlir::AffineExpr::floorDiv(mlir::MLIRContext ***this, uint64_t a2)
{
  v6 = **this;
  v7 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v6);
  v4 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v6, &v7);
  return mlir::AffineExpr::floorDiv(this, v4);
}

uint64_t mlir::AffineExpr::ceilDiv(mlir::AffineExpr *this, uint64_t a2)
{
  v6 = **this;
  v7 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v6);
  v4 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v6, &v7);
  return mlir::AffineExpr::ceilDiv(this, v4);
}

uint64_t mlir::AffineExpr::operator%(mlir::MLIRContext ***a1, uint64_t a2)
{
  v6 = **a1;
  v7 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v6);
  v4 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v6, &v7);
  return mlir::AffineExpr::operator%(a1, v4);
}

uint64_t mlir::AffineExpr::compose(uint64_t *a1, uint64_t a2)
{
  v13[8] = *MEMORY[0x277D85DE8];
  v10 = a2;
  Results = mlir::AffineMap::getResults(&v10);
  v5 = v4;
  v11 = v13;
  v12 = 0x800000000;
  if (((8 * v4) >> 3) >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = 0;
  v7 = v13;
  if (v5)
  {
    memcpy(v13, Results, 8 * v5);
    v6 = v12;
    v7 = v11;
  }

  LODWORD(v12) = v6 + v5;
  result = mlir::AffineExpr::replaceDimsAndSymbols(a1, v7, (v6 + v5), 0, 0);
  if (v11 != v13)
  {
    v9 = result;
    free(v11);
    return v9;
  }

  return result;
}

mlir::MLIRContext **mlir::getAffineExprFromFlatForm(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t *a5, int a6, mlir::MLIRContext *this)
{
  v34 = this;
  v35 = 0;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(this);
  result = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v34, &v35);
  v33 = result;
  v14 = a4 + a3;
  if (a4 + a3)
  {
    v15 = 0;
    v16 = a3;
    v17 = -a3;
    do
    {
      if (*(a1 + 8 * v15))
      {
        if (v15 >= v16)
        {
          LODWORD(v34) = v17 + v15;
          v35 = this;
          v18 = mlir::MLIRContext::getAffineUniquer(this);
          LODWORD(v32) = 7;
        }

        else
        {
          LODWORD(v34) = v15;
          v35 = this;
          v18 = mlir::MLIRContext::getAffineUniquer(this);
          LODWORD(v32) = 6;
        }

        v32 = mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(v18, llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>, &v35, &v32, &v34);
        v19 = *(a1 + 8 * v15);
        v34 = *v32;
        v35 = v19;
        v20 = mlir::MLIRContext::getAffineUniquer(v34);
        v21 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v20, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v34, &v35);
        v22 = mlir::AffineExpr::operator*(&v32, v21);
        result = mlir::AffineExpr::operator+(&v33, v22);
        v33 = result;
      }

      ++v15;
    }

    while (v14 != v15);
  }

  v23 = (a2 - 1);
  if (v14 < v23)
  {
    do
    {
      v24 = *(a1 + 8 * v14);
      if (v24)
      {
        v34 = **a5;
        v35 = v24;
        v25 = mlir::MLIRContext::getAffineUniquer(v34);
        v26 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v25, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v34, &v35);
        v27 = mlir::AffineExpr::operator*(a5, v26);
        result = mlir::AffineExpr::operator+(&v33, v27);
        v33 = result;
      }

      ++v14;
      ++a5;
    }

    while (v14 < v23);
  }

  v28 = *(a1 + 8 * a2 - 8);
  if (v28)
  {
    v34 = *result;
    v35 = v28;
    v29 = mlir::MLIRContext::getAffineUniquer(v34);
    v30 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v29, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v34, &v35);
    return mlir::AffineExpr::operator+(&v33, v30);
  }

  return result;
}

mlir::SimpleAffineExprFlattener *mlir::SimpleAffineExprFlattener::SimpleAffineExprFlattener(mlir::SimpleAffineExprFlattener *this, int a2, int a3)
{
  *this = &unk_2868995E0;
  *(this + 1) = 0u;
  *(this + 1) = 0;
  *(this + 8) = a2;
  *(this + 9) = a3;
  *(this + 10) = 0;
  *(this + 6) = this + 64;
  *(this + 7) = 0x400000000;
  std::vector<llvm::SmallVector<long long,8u>>::reserve(this + 1, 8uLL);
  return this;
}

{
  *this = &unk_2868995E0;
  *(this + 1) = 0u;
  *(this + 1) = 0;
  *(this + 8) = a2;
  *(this + 9) = a3;
  *(this + 10) = 0;
  *(this + 6) = this + 64;
  *(this + 7) = 0x400000000;
  std::vector<llvm::SmallVector<long long,8u>>::reserve(this + 1, 8uLL);
  return this;
}

void *std::vector<llvm::SmallVector<long long,8u>>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

uint64_t mlir::SimpleAffineExprFlattener::visitMulExpr(uint64_t a1, uint64_t a2)
{
  v49[8] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  v47 = v49;
  *v48 = 0x800000000;
  v5 = *(v4 - 72);
  if (&v47 != (v4 - 80) && v5 != 0)
  {
    if (v5 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v49, *(v4 - 80), 8 * *(v4 - 72));
    v48[0] = v5;
    v4 = *(a1 + 16);
  }

  v7 = *(v4 - 80);
  if (v7 != (v4 - 64))
  {
    free(v7);
  }

  *(a1 + 16) = v4 - 80;
  if (*(*(a2 + 24) + 8) != 5)
  {
    v44 = v46;
    v45 = 0x800000000;
    v19 = *(v4 - 152);
    if (&v44 != (v4 - 160) && v19)
    {
      if (v19 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v46, *(v4 - 160), 8 * *(v4 - 152));
      v20 = *(v4 - 152);
      LODWORD(v45) = v19;
      v19 = v20;
    }

    v21 = *a2;
    AffineExprFromFlatForm = mlir::getAffineExprFromFlatForm(*(v4 - 160), v19, *(a1 + 32), *(a1 + 36), *(a1 + 48), *(a1 + 56), v21);
    v22 = mlir::getAffineExprFromFlatForm(v47, v48[0], *(a1 + 32), *(a1 + 36), *(a1 + 48), *(a1 + 56), v21);
    v23 = v44;
    v24 = v45;
    v25 = v47;
    v26 = v48[0];
    v27 = mlir::AffineExpr::operator*(&AffineExprFromFlatForm, v22);
    v28 = *(v4 - 152);
    v29 = *(a1 + 48);
    v30 = *(a1 + 56);
    if (v30)
    {
      v31 = 8 * v30;
      v32 = *(a1 + 48);
      while (*v32 != v27)
      {
        ++v32;
        v31 -= 8;
        if (!v31)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      v32 = *(a1 + 48);
    }

    if (v32 == (v29 + 8 * v30) || (v33 = (v32 - v29) >> 3, v33 == -1))
    {
LABEL_34:
      if ((*(*a1 + 24))(a1, v23, v24, v25, v26, v27))
      {
        v38 = *(v4 - 160);
        v39 = *(v4 - 152);
        if (v39)
        {
          bzero(*(v4 - 160), 8 * v39);
        }

        v40 = *(a1 + 32) + *(a1 + 36) + *(a1 + 40) - 1;
        v36 = 1;
        *(v38 + 8 * v40) = 1;
        v37 = v44;
        if (v44 == v46)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v36 = 0;
        v37 = v44;
        if (v44 == v46)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v34 = *(v4 - 160);
      if (v28)
      {
        bzero(*(v4 - 160), 8 * v28);
      }

      v35 = *(a1 + 32) + v33 + *(a1 + 36);
      v36 = 1;
      *(v34 + 8 * v35) = 1;
      v37 = v44;
      if (v44 == v46)
      {
LABEL_41:
        v8 = v47;
        if (v47 == v49)
        {
          return v36;
        }

        goto LABEL_47;
      }
    }

    free(v37);
    goto LABEL_41;
  }

  v8 = v47;
  v9 = *(v4 - 152);
  if (!v9)
  {
    goto LABEL_46;
  }

  v10 = *(v47 + (*(a1 + 36) + *(a1 + 32) + *(a1 + 40)));
  v11 = *(v4 - 160);
  v12 = (v9 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (!v12)
  {
    v15 = *(v4 - 160);
LABEL_44:
    v41 = (v11 + 8 * v9);
    do
    {
      *v15++ *= v10;
    }

    while (v15 != v41);
    goto LABEL_46;
  }

  v13 = v12 + 1;
  v14 = (v12 + 1) & 0x3FFFFFFFFFFFFFFELL;
  v15 = (v11 + 8 * v14);
  v16 = (v11 + 8);
  v17 = v14;
  do
  {
    v18 = *v16 * v10;
    *(v16 - 1) *= v10;
    *v16 = v18;
    v16 += 2;
    v17 -= 2;
  }

  while (v17);
  if (v13 != v14)
  {
    goto LABEL_44;
  }

LABEL_46:
  v36 = 1;
  if (v8 != v49)
  {
LABEL_47:
    free(v8);
  }

  return v36;
}

uint64_t mlir::SimpleAffineExprFlattener::addLocalVariableSemiAffine(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = 8 * v10;
    v12 = *(a1 + 48);
    while (*v12 != a6)
    {
      ++v12;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v12 = *(a1 + 48);
  }

  v13 = (v12 - v9) >> 3;
  if (v12 == (v9 + 8 * v10) || v13 == -1)
  {
LABEL_12:
    if ((*(*a1 + 24))(a1))
    {
      v15 = *a7;
      v16 = *(a7 + 8);
      if (v16)
      {
        bzero(*a7, 8 * v16);
      }

      result = 1;
      v15[*(a1 + 32) + *(a1 + 36) + *(a1 + 40) - 1] = 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v18 = *a7;
    v19 = *(a7 + 8);
    if (v19)
    {
      bzero(*a7, 8 * v19);
    }

    result = 1;
    v18[(*(a1 + 32) + *(a1 + 36) + v13)] = 1;
  }

  return result;
}

uint64_t mlir::SimpleAffineExprFlattener::visitAddExpr(uint64_t a1)
{
  v2 = *(a1 + 16);
  v4 = v2 - 80;
  v3 = *(v2 - 80);
  v5 = *(v2 - 72);
  if (v5)
  {
    v6 = *(v2 - 160);
    if (v5 <= 5 || (v6 < v3 + 8 * v5 ? (v7 = v3 >= v6 + 8 * v5) : (v7 = 1), !v7))
    {
      v8 = 0;
LABEL_13:
      v13 = &v3->i64[v8];
      v14 = (v6 + 8 * v8);
      v15 = v5 - v8;
      do
      {
        v16 = *v13++;
        *v14++ += v16;
        --v15;
      }

      while (v15);
      goto LABEL_15;
    }

    v8 = v5 & 0xFFFFFFFC;
    v9 = v3 + 1;
    v10 = (v6 + 16);
    v11 = v8;
    do
    {
      v12 = vaddq_s64(*v10, *v9);
      v10[-1] = vaddq_s64(v10[-1], v9[-1]);
      *v10 = v12;
      v9 += 2;
      v10 += 2;
      v11 -= 4;
    }

    while (v11);
    if (v8 != v5)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  if (v3 != (v2 - 64))
  {
    free(v3);
  }

  *(a1 + 16) = v4;
  return 1;
}

uint64_t mlir::SimpleAffineExprFlattener::visitModExpr(_DWORD *a1, uint64_t a2)
{
  v70[8] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v68 = v70;
  *v69 = 0x800000000;
  v5 = *(v4 - 72);
  if (&v68 != (v4 - 80) && v5 != 0)
  {
    if (v5 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v70, *(v4 - 80), 8 * *(v4 - 72));
    v69[0] = v5;
    v4 = *(a1 + 2);
  }

  v7 = *(v4 - 80);
  if (v7 != (v4 - 64))
  {
    free(v7);
  }

  *(a1 + 2) = v4 - 80;
  v8 = (v4 - 160);
  v9 = *a2;
  if (*(*(a2 + 24) + 8) != 5)
  {
    v65 = v67;
    v66 = 0x800000000;
    v15 = *(v4 - 152);
    if (&v65 != v8 && v15)
    {
      if (v15 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v67, *(v4 - 160), 8 * *(v4 - 152));
      v18 = *(v4 - 152);
      LODWORD(v66) = v15;
      v15 = v18;
    }

    AffineExprFromFlatForm = mlir::getAffineExprFromFlatForm(*(v4 - 160), v15, a1[8], a1[9], *(a1 + 6), a1[14], v9);
    v19 = mlir::getAffineExprFromFlatForm(v68, v69[0], a1[8], a1[9], *(a1 + 6), a1[14], v9);
    v20 = mlir::AffineExpr::operator%(&AffineExprFromFlatForm, v19);
    v21 = *(v4 - 152);
    v22 = *(a1 + 6);
    v23 = a1[14];
    if (v23)
    {
      v24 = 8 * v23;
      v25 = *(a1 + 6);
      while (*v25 != v20)
      {
        ++v25;
        v24 -= 8;
        if (!v24)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      v25 = *(a1 + 6);
    }

    if (v25 == (v22 + 8 * v23) || (v26 = (v25 - v22) >> 3, v26 == -1))
    {
LABEL_36:
      if ((*(*a1 + 24))(a1, v65, v66, v68, v69[0], v20))
      {
        v30 = *(v4 - 160);
        v31 = *(v4 - 152);
        if (v31)
        {
          bzero(*(v4 - 160), 8 * v31);
        }

        v32 = a1[8] + a1[9] + a1[10] - 1;
        v16 = 1;
        *(v30 + 8 * v32) = 1;
        v29 = v65;
        if (v65 == v67)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v16 = 0;
        v29 = v65;
        if (v65 == v67)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      v27 = *v8;
      if (v21)
      {
        bzero(*v8, 8 * v21);
      }

      v28 = a1[8] + v26 + a1[9];
      v16 = 1;
      v27[v28] = 1;
      v29 = v65;
      if (v65 == v67)
      {
LABEL_43:
        v17 = v68;
        if (v68 == v70)
        {
          return v16;
        }

        goto LABEL_44;
      }
    }

    free(v29);
    goto LABEL_43;
  }

  v10 = *(v68 + (a1[9] + a1[8] + a1[10]));
  if (v10 < 1)
  {
    v16 = 0;
    v17 = v68;
    if (v68 == v70)
    {
      return v16;
    }

    goto LABEL_44;
  }

  v11 = *(v4 - 152);
  if (v11)
  {
    v12 = *v8;
    v13 = *(v4 - 152);
    while (1)
    {
      v14 = *v12++;
      if (v14 % v10)
      {
        break;
      }

      if (!--v13)
      {
        goto LABEL_51;
      }
    }

    if (!v13)
    {
LABEL_51:
      bzero(*v8, 8 * v11);
      goto LABEL_96;
    }

    v34 = 0;
    v65 = v67;
    v66 = 0x800000000;
    v35 = *(v4 - 152);
    if (&v65 != v8 && v35)
    {
      if (v35 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v67, *v8, 8 * *(v4 - 152));
      LODWORD(v66) = v35;
      v34 = v35;
      v35 = *(v4 - 152);
    }

    if (v35)
    {
      v36 = *v8;
      v37 = v10;
      do
      {
        if ((*v36 & 0x8000000000000000) == 0)
        {
          v38 = *v36;
        }

        else
        {
          v38 = -*v36;
        }

        if (v37 <= v38)
        {
          v39 = v38;
        }

        else
        {
          v39 = v37;
        }

        if (v37 >= v38)
        {
          v37 = v38;
        }

        if (v37)
        {
          v40 = v39 % v37;
          if (v40)
          {
            v41 = v40 >> __clz(__rbit64(v40));
            v42 = v37;
            do
            {
              v43 = v42 >> __clz(__rbit64(v42));
              v42 = v43 - v41;
              if (v41 > v43)
              {
                v42 = v41 - v43;
              }

              if (v41 >= v43)
              {
                v41 = v43;
              }
            }

            while (v42);
            v37 = v41 << __clz(__rbit64(v40 | v37));
          }
        }

        else
        {
          v37 = v39;
        }

        ++v36;
      }

      while (v36 != (*v8 + 8 * v35));
    }

    else
    {
      v37 = v10;
    }

    v44 = v65;
    v45 = v34;
    if (v37 != 1 && v34 != 0)
    {
      v47 = v65;
      if (((v45 - 1) & 0x1FFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_100;
      }

      v48 = ((v45 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
      v47 = (v65 + 8 * (v48 & 0x3FFFFFFFFFFFFFFELL));
      v49 = (v65 + 8);
      v50 = v48 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        v51 = *v49 / v37;
        *(v49 - 1) /= v37;
        *v49 = v51;
        v49 += 2;
        v50 -= 2;
      }

      while (v50);
      if (v48 != (v48 & 0x3FFFFFFFFFFFFFFELL))
      {
LABEL_100:
        do
        {
          *v47++ /= v37;
        }

        while (v47 != &v44[8 * v45]);
      }
    }

    v52 = v10 / v37;
    v62 = mlir::getAffineExprFromFlatForm(v44, v45, a1[8], a1[9], *(a1 + 6), a1[14], v9);
    v63 = v9;
    AffineExprFromFlatForm = v52;
    AffineUniquer = mlir::MLIRContext::getAffineUniquer(v9);
    v54 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v63, &AffineExprFromFlatForm);
    v55 = mlir::AffineExpr::floorDiv(&v62, v54);
    v56 = *(a1 + 6);
    v57 = a1[14];
    if (v57)
    {
      v58 = 8 * v57;
      v59 = *(a1 + 6);
      while (*v59 != v55)
      {
        ++v59;
        v58 -= 8;
        if (!v58)
        {
          goto LABEL_93;
        }
      }
    }

    else
    {
      v59 = *(a1 + 6);
    }

    if (v59 == (v56 + 8 * v57) || (v60 = (v59 - v56) >> 3, v60 == -1))
    {
LABEL_93:
      (*(*a1 + 16))(a1, v65, v66, v52, v55);
      v61 = a1[8] + a1[9] + a1[10] - 1;
    }

    else
    {
      v61 = a1[8] + v60 + a1[9];
    }

    *(*v8 + v61) = -v10;
    if (v65 != v67)
    {
      free(v65);
    }
  }

LABEL_96:
  v16 = 1;
  v17 = v68;
  if (v68 != v70)
  {
LABEL_44:
    free(v17);
  }

  return v16;
}

uint64_t mlir::SimpleAffineExprFlattener::findLocalId(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = (v2 + 8 * v3);
  if (v3)
  {
    v5 = 8 * v3;
    v6 = *(a1 + 48);
    while (*v6 != a2)
    {
      ++v6;
      v5 -= 8;
      if (!v5)
      {
        v6 = v4;
        break;
      }
    }

    v7 = (v6 - v2) >> 3;
    if (v6 == v4)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v7;
    }
  }

  else if (*(a1 + 48) == v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::SimpleAffineExprFlattener::visitDivExpr(_DWORD *a1, uint64_t a2, int a3)
{
  v76[8] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = *(a1 + 2);
  v74 = v76;
  *v75 = 0x800000000;
  v8 = *(v7 - 72);
  if (&v74 != (v7 - 80) && v8 != 0)
  {
    if (v8 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v76, *(v7 - 80), 8 * *(v7 - 72));
    v75[0] = v8;
    v7 = *(a1 + 2);
  }

  v10 = *(v7 - 80);
  if (v10 != (v7 - 64))
  {
    free(v10);
  }

  *(a1 + 2) = v7 - 80;
  v11 = (v7 - 160);
  if (*(*(a2 + 24) + 8) != 5)
  {
    v71 = v73;
    v72 = 0x800000000;
    v26 = *(v7 - 152);
    if (&v71 != v11 && v26)
    {
      if (v26 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v73, *(v7 - 160), 8 * *(v7 - 152));
      v35 = *(v7 - 152);
      LODWORD(v72) = v26;
      v26 = v35;
    }

    AffineExprFromFlatForm = mlir::getAffineExprFromFlatForm(*v11, v26, a1[8], a1[9], *(a1 + 6), a1[14], v6);
    v36 = mlir::getAffineExprFromFlatForm(v74, v75[0], a1[8], a1[9], *(a1 + 6), a1[14], v6);
    if (a3)
    {
      v37 = mlir::AffineExpr::ceilDiv(&AffineExprFromFlatForm, v36);
    }

    else
    {
      v37 = mlir::AffineExpr::floorDiv(&AffineExprFromFlatForm, v36);
    }

    v38 = *(v7 - 152);
    v39 = *(a1 + 6);
    v40 = a1[14];
    if (v40)
    {
      v41 = 8 * v40;
      v42 = *(a1 + 6);
      while (*v42 != v37)
      {
        ++v42;
        v41 -= 8;
        if (!v41)
        {
          goto LABEL_67;
        }
      }
    }

    else
    {
      v42 = *(a1 + 6);
    }

    if (v42 != (v39 + 8 * v40))
    {
      v43 = (v42 - v39) >> 3;
      if (v43 != -1)
      {
        v44 = *v11;
        if (v38)
        {
          bzero(*v11, 8 * v38);
        }

        v45 = a1[8] + v43 + a1[9];
        v33 = 1;
        v44[v45] = 1;
        v46 = v71;
        if (v71 != v73)
        {
          goto LABEL_63;
        }

LABEL_64:
        v34 = v74;
        if (v74 == v76)
        {
          return v33;
        }

        goto LABEL_65;
      }
    }

LABEL_67:
    if ((*(*a1 + 24))(a1, v71, v72, v74, v75[0], v37))
    {
      v48 = *(v7 - 160);
      v49 = *(v7 - 152);
      if (v49)
      {
        bzero(*(v7 - 160), 8 * v49);
      }

      v50 = a1[8] + a1[9] + a1[10] - 1;
      v33 = 1;
      *(v48 + 8 * v50) = 1;
      v46 = v71;
      if (v71 == v73)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v33 = 0;
      v46 = v71;
      if (v71 == v73)
      {
        goto LABEL_64;
      }
    }

LABEL_63:
    free(v46);
    goto LABEL_64;
  }

  v12 = a1[8];
  v13 = a1[9];
  v14 = *(v74 + v13 + v12 + a1[10]);
  if (v14 < 1)
  {
    v33 = 0;
    v34 = v74;
    if (v74 == v76)
    {
      return v33;
    }

    goto LABEL_65;
  }

  v15 = *(v7 - 160);
  v16 = *(v7 - 152);
  if (v16)
  {
    v17 = (v15 + 8 * v16);
    v18 = *(v74 + v13 + v12 + a1[10]);
    v19 = *(v7 - 160);
    do
    {
      if ((*v19 & 0x8000000000000000) == 0)
      {
        v20 = *v19;
      }

      else
      {
        v20 = -*v19;
      }

      if (v18 <= v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = v18;
      }

      if (v18 >= v20)
      {
        v18 = v20;
      }

      if (v18)
      {
        v22 = v21 % v18;
        if (v22)
        {
          v23 = v22 >> __clz(__rbit64(v22));
          v24 = v18;
          do
          {
            v25 = v24 >> __clz(__rbit64(v24));
            v24 = v25 - v23;
            if (v23 > v25)
            {
              v24 = v23 - v25;
            }

            if (v23 >= v25)
            {
              v23 = v25;
            }
          }

          while (v24);
          v18 = v23 << __clz(__rbit64(v22 | v18));
        }
      }

      else
      {
        v18 = v21;
      }

      ++v19;
    }

    while (v19 != v17);
    if (v18 != 1)
    {
      v27 = *(v7 - 160);
      if (((v16 - 1) & 0x1FFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_111;
      }

      v28 = ((v16 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
      v27 = (v15 + 8 * (v28 & 0x3FFFFFFFFFFFFFFELL));
      v29 = (v15 + 8);
      v30 = v28 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        v31 = *v29 / v18;
        *(v29 - 1) /= v18;
        *v29 = v31;
        v29 += 2;
        v30 -= 2;
      }

      while (v30);
      if (v28 != (v28 & 0x3FFFFFFFFFFFFFFELL))
      {
LABEL_111:
        do
        {
          *v27++ /= v18;
        }

        while (v27 != v17);
      }
    }

    v32 = v14 / v18;
    if (v14 / v18 == 1)
    {
LABEL_44:
      v33 = 1;
      v34 = v74;
      if (v74 == v76)
      {
        return v33;
      }

      goto LABEL_65;
    }
  }

  else
  {
    v32 = v14 / v14;
    if (v14 / v14 == 1)
    {
      goto LABEL_44;
    }
  }

  v69 = mlir::getAffineExprFromFlatForm(v15, v16, v12, v13, *(a1 + 6), a1[14], v6);
  AffineExprFromFlatForm = v6;
  v71 = v32;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v6);
  v52 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &AffineExprFromFlatForm, &v71);
  if (a3)
  {
    v53 = mlir::AffineExpr::ceilDiv(&v69, v52);
    v54 = *(a1 + 6);
    v55 = a1[14];
    if (v55)
    {
      goto LABEL_77;
    }

LABEL_82:
    v57 = v54;
    goto LABEL_83;
  }

  v53 = mlir::AffineExpr::floorDiv(&v69, v52);
  v54 = *(a1 + 6);
  v55 = a1[14];
  if (!v55)
  {
    goto LABEL_82;
  }

LABEL_77:
  v56 = 8 * v55;
  v57 = v54;
  while (*v57 != v53)
  {
    v57 += 8;
    v56 -= 8;
    if (!v56)
    {
      goto LABEL_89;
    }
  }

LABEL_83:
  if (v57 == &v54[8 * v55] || (v58 = (v57 - v54) >> 3, v58 == -1))
  {
LABEL_89:
    v62 = 0;
    if (a3)
    {
      v71 = v73;
      v72 = 0x800000000;
      if (&v71 == v11 || (v63 = *(v7 - 152), !v63))
      {
        v65 = v73;
      }

      else
      {
        if (v63 >= 9)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(v73, *v11, 8 * *(v7 - 152));
        LODWORD(v72) = v63;
        v65 = v71;
        v62 = v63;
      }

      *&v65[8 * v62 - 8] = v32 + *&v65[8 * v62 - 8] - 1;
    }

    else
    {
      v71 = v73;
      v72 = 0x800000000;
      if (&v71 == v11 || (v64 = *(v7 - 152), !v64))
      {
        v65 = v73;
      }

      else
      {
        if (v64 >= 9)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(v73, *v11, 8 * *(v7 - 152));
        LODWORD(v72) = v64;
        v65 = v71;
        v62 = v64;
      }
    }

    (*(*a1 + 16))(a1, v65, v62, v32, v53);
    if (v71 != v73)
    {
      free(v71);
    }

    v66 = *(v7 - 160);
    v67 = *(v7 - 152);
    if (v67)
    {
      bzero(*(v7 - 160), 8 * v67);
    }

    v68 = a1[8] + a1[9] + a1[10] - 1;
    v33 = 1;
    *(v66 + 8 * v68) = 1;
    v34 = v74;
    if (v74 == v76)
    {
      return v33;
    }

LABEL_65:
    free(v34);
    return v33;
  }

  v59 = *(v7 - 160);
  v60 = *(v7 - 152);
  if (v60)
  {
    bzero(*(v7 - 160), 8 * v60);
  }

  v61 = a1[8] + v58 + a1[9];
  v33 = 1;
  *(v59 + 8 * v61) = 1;
  v34 = v74;
  if (v74 != v76)
  {
    goto LABEL_65;
  }

  return v33;
}

uint64_t mlir::SimpleAffineExprFlattener::visitDimExpr(uint64_t a1, uint64_t a2)
{
  v14[32] = *MEMORY[0x277D85DE8];
  v4 = (*(a1 + 32) + *(a1 + 36) + *(a1 + 40) + 1);
  __src = v14;
  v13 = 32;
  if (v4 >= 0x21)
  {
    v12 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v4)
  {
    bzero(v14, 8 * v4);
  }

  v12 = v4;
  v5 = *(a1 + 16);
  if (v5 >= *(a1 + 24))
  {
    v8 = std::vector<llvm::SmallVector<long long,8u>>::__emplace_back_slow_path<llvm::SmallVector<long long,32u>>((a1 + 8), &__src);
    *(a1 + 16) = v8;
    v9 = __src;
    if (__src == v14)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  *v5 = v5 + 16;
  *(v5 + 8) = 0x800000000;
  if (v5 != &__src)
  {
    v6 = v12;
    if (v12)
    {
      if (__src == v14)
      {
        if (v12 >= 9)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(*v5, __src, 8 * v12);
        *(v5 + 8) = v6;
      }

      else
      {
        *v5 = __src;
        v7 = v13;
        *(v5 + 8) = v6;
        *(v5 + 12) = v7;
        __src = v14;
        v13 = 0;
      }

      v12 = 0;
    }
  }

  v8 = (v5 + 80);
  *(a1 + 16) = v5 + 80;
  v9 = __src;
  if (__src != v14)
  {
LABEL_17:
    free(v9);
    v8 = *(a1 + 16);
  }

LABEL_18:
  *(*(v8 - 10) + *(a2 + 16)) = 1;
  return 1;
}

uint64_t mlir::SimpleAffineExprFlattener::visitSymbolExpr(uint64_t a1, uint64_t a2)
{
  v14[32] = *MEMORY[0x277D85DE8];
  v4 = (*(a1 + 32) + *(a1 + 36) + *(a1 + 40) + 1);
  __src = v14;
  v13 = 32;
  if (v4 >= 0x21)
  {
    v12 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v4)
  {
    bzero(v14, 8 * v4);
  }

  v12 = v4;
  v5 = *(a1 + 16);
  if (v5 >= *(a1 + 24))
  {
    v8 = std::vector<llvm::SmallVector<long long,8u>>::__emplace_back_slow_path<llvm::SmallVector<long long,32u>>((a1 + 8), &__src);
    *(a1 + 16) = v8;
    v9 = __src;
    if (__src == v14)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  *v5 = v5 + 16;
  *(v5 + 8) = 0x800000000;
  if (v5 != &__src)
  {
    v6 = v12;
    if (v12)
    {
      if (__src == v14)
      {
        if (v12 >= 9)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(*v5, __src, 8 * v12);
        *(v5 + 8) = v6;
      }

      else
      {
        *v5 = __src;
        v7 = v13;
        *(v5 + 8) = v6;
        *(v5 + 12) = v7;
        __src = v14;
        v13 = 0;
      }

      v12 = 0;
    }
  }

  v8 = (v5 + 80);
  *(a1 + 16) = v5 + 80;
  v9 = __src;
  if (__src != v14)
  {
LABEL_17:
    free(v9);
    v8 = *(a1 + 16);
  }

LABEL_18:
  *(*(v8 - 10) + (*(a2 + 16) + *(a1 + 32))) = 1;
  return 1;
}

uint64_t mlir::SimpleAffineExprFlattener::visitConstantExpr(uint64_t a1, uint64_t a2)
{
  v14[32] = *MEMORY[0x277D85DE8];
  v4 = (*(a1 + 32) + *(a1 + 36) + *(a1 + 40) + 1);
  __src = v14;
  v13 = 32;
  if (v4 >= 0x21)
  {
    v12 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v4)
  {
    bzero(v14, 8 * v4);
  }

  v12 = v4;
  v5 = *(a1 + 16);
  if (v5 >= *(a1 + 24))
  {
    v8 = std::vector<llvm::SmallVector<long long,8u>>::__emplace_back_slow_path<llvm::SmallVector<long long,32u>>((a1 + 8), &__src);
    *(a1 + 16) = v8;
    v9 = __src;
    if (__src == v14)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  *v5 = v5 + 16;
  *(v5 + 8) = 0x800000000;
  if (v5 != &__src)
  {
    v6 = v12;
    if (v12)
    {
      if (__src == v14)
      {
        if (v12 >= 9)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(*v5, __src, 8 * v12);
        *(v5 + 8) = v6;
      }

      else
      {
        *v5 = __src;
        v7 = v13;
        *(v5 + 8) = v6;
        *(v5 + 12) = v7;
        __src = v14;
        v13 = 0;
      }

      v12 = 0;
    }
  }

  v8 = (v5 + 80);
  *(a1 + 16) = v5 + 80;
  v9 = __src;
  if (__src != v14)
  {
LABEL_17:
    free(v9);
    v8 = *(a1 + 16);
  }

LABEL_18:
  *(*(v8 - 10) + (*(a1 + 36) + *(a1 + 32) + *(a1 + 40))) = *(a2 + 16);
  return 1;
}

void *mlir::SimpleAffineExprFlattener::addLocalFloorDivId(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = result;
  v7 = result[1];
  for (i = result[2]; v7 != i; v7 += 80)
  {
    while (1)
    {
      v10 = *(v7 + 8);
      if (*v7 + 8 * v10 == *v7 + 8 * (*(v6 + 9) + *(v6 + 8)) + 8 * *(v6 + 10))
      {
        break;
      }

      if (v10 >= *(v7 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v11 = (*v7 + 8 * (*(v6 + 9) + *(v6 + 8)) + 8 * *(v6 + 10));
      v12 = (*v7 + 8 * v10);
      *v12 = *(v12 - 1);
      if (v12 - 1 != v11)
      {
        result = memmove(v11 + 1, v11, (v12 - 1) - v11);
        LODWORD(v10) = *(v7 + 8);
      }

      *(v7 + 8) = v10 + 1;
      *v11 = 0;
      v7 += 80;
      if (v7 == i)
      {
        goto LABEL_2;
      }
    }

    if (v10 >= *(v7 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*v7 + 8 * v10) = 0;
    ++*(v7 + 8);
  }

LABEL_2:
  v9 = *(v6 + 14);
  if (v9 >= *(v6 + 15))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v6[6] + 8 * v9) = a5;
  ++*(v6 + 14);
  ++*(v6 + 10);
  return result;
}

uint64_t mlir::SimpleAffineExprFlattener::addLocalIdSemiAffine(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + 8);
  for (i = *(a1 + 16); v8 != i; v8 += 80)
  {
    while (1)
    {
      v12 = *(v8 + 8);
      if (*v8 + 8 * v12 == *v8 + 8 * (*(a1 + 36) + *(a1 + 32)) + 8 * *(a1 + 40))
      {
        break;
      }

      if (v12 >= *(v8 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = (*v8 + 8 * (*(a1 + 36) + *(a1 + 32)) + 8 * *(a1 + 40));
      v14 = (*v8 + 8 * v12);
      *v14 = *(v14 - 1);
      if (v14 - 1 != v13)
      {
        memmove(v13 + 1, v13, (v14 - 1) - v13);
        LODWORD(v12) = *(v8 + 8);
      }

      *(v8 + 8) = v12 + 1;
      *v13 = 0;
      v8 += 80;
      if (v8 == i)
      {
        goto LABEL_2;
      }
    }

    if (v12 >= *(v8 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*v8 + 8 * v12) = 0;
    ++*(v8 + 8);
  }

LABEL_2:
  v10 = *(a1 + 56);
  if (v10 >= *(a1 + 60))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 48) + 8 * v10) = a6;
  ++*(a1 + 56);
  ++*(a1 + 40);
  return 1;
}

void mlir::simplifyAffineExpr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[14] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  if ((mlir::AffineExpr::isPureAffine(v6) & 1) == 0)
  {
    v6[0] = simplifySemiAffine(a1, a2, a3);
  }

  v6[18] = &unk_2868995E0;
  v6[19] = 0;
  v7 = 0u;
  v8 = a2;
  v9 = a3;
  v10 = 0;
  v11 = v13;
  *v12 = 0x400000000;
  operator new();
}

uint64_t simplifySemiAffine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42[6] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v6 = a1;
  if (((1 << v3) & 0x1C) != 0)
  {
    v10 = simplifySemiAffine(*(a1 + 16), a2, a3);
    v11 = simplifySemiAffine(*(v6 + 24), a2, a3);
    v40 = v42;
    v41 = 0x600000000;
    v35 = v10;
    getSummandExprs(v10, &v40);
    v12 = v41;
    if (v41)
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = *(v40 + v13);
        if (v15)
        {
          v16 = *(v15 + 8) == 1;
        }

        else
        {
          v16 = 0;
        }

        if (!v16)
        {
          goto LABEL_7;
        }

        v17 = *(v15 + 16);
        v18 = *(v17 + 8);
        if (v17)
        {
          v19 = v18 == 5;
        }

        else
        {
          v19 = 0;
        }

        if (v19 && *(v17 + 16) == -1)
        {
          v17 = *(v15 + 24);
          if (*(v17 + 8) != 2)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v20 = *(v15 + 24);
          if (v20)
          {
            v21 = *(v20 + 8) == 5;
          }

          else
          {
            v21 = 0;
          }

          if (!v21 || *(v20 + 16) != -1 || v18 != 2)
          {
            goto LABEL_7;
          }
        }

        if (*(v17 + 24) == v11)
        {
          v38 = *v35;
          v39 = 0;
          AffineUniquer = mlir::MLIRContext::getAffineUniquer(v38);
          v23 = 0;
          v36 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v38, &v39);
          do
          {
            if (v13 != v23)
            {
              v36 = mlir::AffineExpr::operator+(&v36, *(v40 + v23));
            }

            ++v23;
          }

          while (v12 != v23);
          v37 = *(v17 + 16);
          v38 = *v37;
          v39 = -1;
          v24 = mlir::MLIRContext::getAffineUniquer(v38);
          v25 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v24, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v38, &v39);
          v26 = mlir::AffineExpr::operator*(&v37, v25);
          v36 = mlir::AffineExpr::operator+(&v36, v26);
          v27 = mlir::simplifyAffineExpr(v36, a2, a3);
          v28 = v27 && *(v27 + 8) == 5;
          if (v28 && !*(v27 + 16))
          {
            goto LABEL_41;
          }
        }

LABEL_7:
        v14 = ++v13 < v12;
      }

      while (v13 != v12);
    }

    v14 = 0;
LABEL_41:
    if (v40 != v42)
    {
      free(v40);
    }

    if (v14)
    {
LABEL_44:
      v39 = *v6;
      v40 = 0;
      v29 = mlir::MLIRContext::getAffineUniquer(v39);
      return mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v29, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v39, &v40);
    }

    v30 = simplifySemiAffine(*(v6 + 24), a2, a3);
    if (v30 && *(v30 + 8) == 7)
    {
      v31 = *(v30 + 16);
      v32 = *(v6 + 8);
      if (isDivisibleBySymbol(*(v6 + 16), v31, v32))
      {
        if (v32 != 2)
        {
          return symbolicDivide(v35, v31, v32);
        }

        goto LABEL_44;
      }

      v40 = v35;
      if (v32 <= 2)
      {
        if (v32)
        {
          if (v32 == 1)
          {
            goto LABEL_61;
          }

          return mlir::AffineExpr::operator%(&v40, v11);
        }

        return mlir::AffineExpr::operator+(&v40, v11);
      }

      if (v32 != 3)
      {
        if (v32 != 4)
        {
          return mlir::AffineExpr::operator%(&v40, v11);
        }

        return mlir::AffineExpr::ceilDiv(&v40, v11);
      }
    }

    else
    {
      v33 = *(v6 + 8);
      v40 = v35;
      if (v33 <= 2)
      {
        if (v33)
        {
          if (v33 == 1)
          {
LABEL_61:
            v8 = v11;
            return mlir::AffineExpr::operator*(&v40, v8);
          }

          return mlir::AffineExpr::operator%(&v40, v11);
        }

        return mlir::AffineExpr::operator+(&v40, v11);
      }

      if (v33 != 3)
      {
        if (v33 != 4)
        {
          return mlir::AffineExpr::operator%(&v40, v11);
        }

        return mlir::AffineExpr::ceilDiv(&v40, v11);
      }
    }

    return mlir::AffineExpr::floorDiv(&v40, v11);
  }

  if (((1 << v3) & 0xE0) == 0)
  {
    v7 = simplifySemiAffine(*(a1 + 16), a2, a3);
    v8 = simplifySemiAffine(*(v6 + 24), a2, a3);
    v40 = v7;
    if (!v3)
    {
      return mlir::AffineExpr::operator+(&v40, v8);
    }

    return mlir::AffineExpr::operator*(&v40, v8);
  }

  return v6;
}

void mlir::SimpleAffineExprFlattener::~SimpleAffineExprFlattener(mlir::SimpleAffineExprFlattener *this)
{
  *this = &unk_2868995E0;
  v2 = *(this + 6);
  if (v2 != this + 64)
  {
    free(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(this + 2);
    v5 = *(this + 1);
    if (v4 != v3)
    {
      do
      {
        v7 = *(v4 - 80);
        v4 -= 80;
        v6 = v7;
        if ((v4 + 16) != v7)
        {
          free(v6);
        }
      }

      while (v4 != v3);
      v5 = *(this + 1);
    }

    *(this + 2) = v3;
    operator delete(v5);
  }
}

{
  *this = &unk_2868995E0;
  v2 = *(this + 6);
  if (v2 != this + 64)
  {
    free(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(this + 2);
    v5 = *(this + 1);
    if (v4 != v3)
    {
      do
      {
        v7 = *(v4 - 80);
        v4 -= 80;
        v6 = v7;
        if ((v4 + 16) != v7)
        {
          free(v6);
        }
      }

      while (v4 != v3);
      v5 = *(this + 1);
    }

    *(this + 2) = v3;
    operator delete(v5);
  }

  JUMPOUT(0x259C63180);
}

unint64_t mlir::getBoundForAffineExpr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    goto LABEL_30;
  }

  v9 = *(a1 + 8);
  if (v9 > 4)
  {
    goto LABEL_30;
  }

  if (v9 == 2)
  {
    v19 = *(a1 + 24);
    if (v19)
    {
      if (*(v19 + 8) == 5)
      {
        v20 = *(v19 + 16);
        if (v20 >= 1)
        {
          BoundForAffineExpr = mlir::getBoundForAffineExpr(*(a1 + 16), a2, a3, a4, a5, a6, a7, 0);
          v29 = v28;
          v30 = mlir::getBoundForAffineExpr(*(a1 + 16), a2, a3, a4, a5, a6, a7, a8);
          if ((v31 & 1) != 0 && (v29 & 1) != 0 && (!BoundForAffineExpr ? (v32 = 0) : (BoundForAffineExpr ^ v20) < 0 ? (v32 = (BoundForAffineExpr + 1) / v20 - 1) : (v32 = BoundForAffineExpr / v20), !v30 ? (v34 = 0) : (v30 ^ v20) < 0 ? (v34 = (v30 + 1) / v20 - 1) : (v34 = v30 / v20), v32 == v34))
          {
            v35 = BoundForAffineExpr;
            if (a8)
            {
              v35 = v30;
            }

            v10 = (v20 & ((v35 % v20) >> 63)) + v35 % v20;
          }

          else if (a8)
          {
            v10 = v20 - 1;
          }

          else
          {
            v10 = 0;
          }

          goto LABEL_50;
        }
      }
    }

    goto LABEL_30;
  }

  if (v9 != 4)
  {
    if (v9 == 3)
    {
      LOBYTE(v10) = 0;
      v11 = *(a1 + 24);
      if (v11)
      {
        v12 = 0;
        if (*(v11 + 8) == 5)
        {
          if (*(v11 + 16) >= 1)
          {
            v13 = mlir::getBoundForAffineExpr(*(a1 + 16), a2, a3, a4, a5, a6, a7, a8);
            if (v14)
            {
              if (v13)
              {
                v15 = *(v11 + 16);
                if ((v15 ^ v13) < 0)
                {
                  v10 = (((v15 >> 63) | 1) + v13) / v15 - 1;
LABEL_50:
                  v12 = v10 & 0xFFFFFFFFFFFFFF00;
                  return v12 | v10;
                }

LABEL_35:
                v10 = v13 / v15;
                goto LABEL_50;
              }

              goto LABEL_34;
            }
          }

LABEL_32:
          LOBYTE(v10) = 0;
          v12 = 0;
          return v12 | v10;
        }

        return v12 | v10;
      }

LABEL_33:
      v12 = 0;
      return v12 | v10;
    }

LABEL_30:
    operator new();
  }

  LOBYTE(v10) = 0;
  v16 = *(a1 + 24);
  if (!v16)
  {
    goto LABEL_33;
  }

  v12 = 0;
  if (*(v16 + 8) == 5)
  {
    if (*(v16 + 16) >= 1)
    {
      v13 = mlir::getBoundForAffineExpr(*(a1 + 16), a2, a3, a4, a5, a6, a7, a8);
      if (v17)
      {
        if (v13)
        {
          v15 = *(v16 + 16);
          if (((v15 ^ v13) & 0x8000000000000000) == 0)
          {
            v18 = v13 - 1;
            if (v15 < 0)
            {
              v18 = v13 + 1;
            }

            v10 = v18 / v15 + 1;
            goto LABEL_50;
          }

          goto LABEL_35;
        }

LABEL_34:
        v10 = 0;
        goto LABEL_50;
      }
    }

    goto LABEL_32;
  }

  return v12 | v10;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  {
    v12 = a4;
    v13 = a1;
    v9 = a3;
    v10 = a5;
    v11 = a2;
    mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>();
    a2 = v11;
    a4 = v12;
    a3 = v9;
    a5 = v10;
    a1 = v13;
  }

  v17[0] = a2;
  v17[1] = a3;
  v5 = *a4;
  v6 = *a5;
  v16 = v5 | (v6 << 32);
  v7 = 0xBF58476D1CE4E5B9 * ((37 * v6) | ((37 * v5) << 32));
  v15 = &v16;
  v14[0] = &v16;
  v14[1] = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::detail::AffineDimExprStorage,void>::resolveTypeID(void)::id, (v7 >> 31) ^ v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::AffineDimExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>,mlir::TypeID,unsigned int,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineDimExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>,mlir::TypeID,unsigned int,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineDimExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>,mlir::TypeID,unsigned int,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 24;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 24;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    v11 = v2[1];
    *(Slow + 8) = *v2;
    *(Slow + 16) = v11;
    v7 = *(a1 + 8);
    v8 = *v7;
    if (!*v7)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  v6 = v2[1];
  *(Slow + 8) = *v2;
  *(Slow + 16) = v6;
  v7 = *(a1 + 8);
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(*(v7 + 8), Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::detail::AffineDimExprStorage>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::AffineDimExprStorage]";
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

uint64_t isDivisibleBySymbol(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    while (1)
    {
      v7 = *(a1 + 8);
      if (v7 <= 0)
      {
        result = isDivisibleBySymbol(*(a1 + 16), a2, a3);
        if (!result)
        {
          return result;
        }

        goto LABEL_3;
      }

      if (v7 > 2)
      {
        break;
      }

      if (v7 == 1)
      {
        if (isDivisibleBySymbol(*(a1 + 16), a2, a3))
        {
          return 1;
        }

LABEL_3:
        a1 = *(a1 + 24);
      }

      else
      {
        a3 = 2;
        result = isDivisibleBySymbol(*(a1 + 16), a2, 2);
        if (!result)
        {
          return result;
        }

        a1 = *(a1 + 24);
      }
    }

    if (v7 > 5)
    {
      break;
    }

    if ((v7 - 3) >= 2)
    {
      return *(a1 + 16) == 0;
    }

    if (v7 != a3)
    {
      return 0;
    }

    a1 = *(a1 + 16);
  }

  return v7 != 6 && *(a1 + 16) == a2;
}

uint64_t symbolicDivide(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 > 2)
  {
    if (v3 > 5)
    {
      if (v3 == 6)
      {
        return 0;
      }

      v17 = *a1;
      v20 = 1;
    }

    else
    {
      if ((v3 - 3) < 2)
      {
        v5 = symbolicDivide(*(a1 + 16));
        v6 = *(a1 + 24);
        v20 = v5;
        if (v3 == 4)
        {
          return mlir::AffineExpr::ceilDiv(&v20, v6);
        }

        else
        {
          return mlir::AffineExpr::floorDiv(&v20, v6);
        }
      }

      if (*(a1 + 16))
      {
        return 0;
      }

      v17 = *a1;
      v20 = 0;
    }

    v19 = v17;
    AffineUniquer = mlir::MLIRContext::getAffineUniquer(v17);
    return mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v19, &v20);
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v9 = *(a1 + 16);
      if (isDivisibleBySymbol(v9, a2, a3))
      {
        v20 = symbolicDivide(v9);
        v10 = *(a1 + 24);
      }

      else
      {
        v20 = v9;
        v10 = symbolicDivide(*(a1 + 24));
      }

      return mlir::AffineExpr::operator*(&v20, v10);
    }

    else
    {
      v15 = symbolicDivide(*(a1 + 16));
      v16 = symbolicDivide(*(a1 + 24));
      v20 = v15;
      return mlir::AffineExpr::operator%(&v20, v16);
    }
  }

  else
  {
    v12 = symbolicDivide(*(a1 + 16));
    v13 = symbolicDivide(*(a1 + 24));
    v20 = v12;
    return mlir::AffineExpr::operator+(&v20, v13);
  }
}

uint64_t getSummandExprs(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (result && !*(result + 8))
  {
    do
    {
      result = getSummandExprs(*(v3 + 16), a2);
      v3 = *(v3 + 24);
      if (v3)
      {
        v4 = *(v3 + 8) == 0;
      }

      else
      {
        v4 = 0;
      }
    }

    while (v4);
  }

  v5 = *(a2 + 8);
  if (v5 >= *(a2 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a2 + 8 * v5) = v3;
  ++*(a2 + 8);
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::try_emplace<long long>@<X0>(uint64_t result@<X0>, int *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v5 = *result;
  v6 = a2[1];
  v7 = 0xBF58476D1CE4E5B9 * ((37 * v6) | ((37 * *a2) << 32));
  v8 = v4 - 1;
  v9 = (v4 - 1) & ((v7 >> 31) ^ v7);
  v10 = *result + 16 * v9;
  v12 = *v10;
  v11 = *(v10 + 4);
  if (*a2 != *v10 || v6 != v11)
  {
    v16 = 0;
    v17 = 1;
    while (v12 != -1 || v11 != 0x7FFFFFFF)
    {
      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v11 == 0x80000000;
      }

      if (v18 && v12 == -2)
      {
        v16 = v10;
      }

      v20 = v9 + v17++;
      v9 = v20 & v8;
      v10 = v5 + 16 * (v20 & v8);
      v12 = *v10;
      v11 = *(v10 + 4);
      if (*a2 == *v10 && v6 == v11)
      {
        goto LABEL_7;
      }
    }

    if (v16)
    {
      v10 = v16;
    }

LABEL_9:
    v26 = v10;
    v15 = *(result + 8);
    if (4 * v15 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v15 - *(result + 12) > v4 >> 3)
    {
      *(result + 8) = v15 + 1;
      if (*v10 != -1)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v22 = result;
    v23 = a2;
    v24 = a4;
    v25 = a3;
    llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::LookupBucketFor<std::pair<unsigned int,int>>(v22, v23, &v26);
    a2 = v23;
    a3 = v25;
    result = v22;
    a4 = v24;
    v10 = v26;
    ++*(v22 + 8);
    if (*v10 != -1)
    {
      goto LABEL_13;
    }

LABEL_12:
    if (*(v10 + 4) == 0x7FFFFFFF)
    {
LABEL_14:
      *v10 = *a2;
      *(v10 + 4) = a2[1];
      *(v10 + 8) = *a3;
      v5 = *result;
      v4 = *(result + 16);
      v14 = 1;
      goto LABEL_15;
    }

LABEL_13:
    --*(result + 12);
    goto LABEL_14;
  }

LABEL_7:
  v14 = 0;
LABEL_15:
  *a4 = v10;
  *(a4 + 8) = v5 + 16 * v4;
  *(a4 + 16) = v14;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::LookupBucketFor<std::pair<unsigned int,int>>(uint64_t *a1, int *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = *a2;
    v6 = a2[1];
    v7 = 0xBF58476D1CE4E5B9 * ((37 * v6) | ((37 * *a2) << 32));
    v8 = (v7 >> 31) ^ v7;
    v9 = v3 - 1;
    v10 = (v3 - 1) & v8;
    v11 = (*a1 + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    if (v5 == *v11 && v6 == v12)
    {
      result = 1;
      *a3 = v11;
    }

    else
    {
      v15 = 0;
      v16 = 1;
      result = 1;
      while (v13 != -1 || v12 != 0x7FFFFFFF)
      {
        if (v15)
        {
          v18 = 0;
        }

        else
        {
          v18 = v12 == 0x80000000;
        }

        if (v18 && v13 == -2)
        {
          v15 = v11;
        }

        v20 = v10 + v16++;
        v10 = v20 & v9;
        v11 = (v4 + 16 * (v20 & v9));
        v13 = *v11;
        v12 = v11[1];
        if (v5 == *v11 && v6 == v12)
        {
          goto LABEL_9;
        }
      }

      result = 0;
      if (v15)
      {
        v11 = v15;
      }

      *a3 = v11;
    }
  }

  else
  {
    v11 = 0;
    result = 0;
LABEL_9:
    *a3 = v11;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::grow(uint64_t a1, int a2)
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
  *a1 = result;
  if (v4)
  {
    v10 = (16 * v3);
    llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v15 = &result[2 * v14];
      v16 = result + 2;
      v17 = v14;
      do
      {
        *(v16 - 2) = 0x7FFFFFFFFFFFFFFFLL;
        *v16 = 0x7FFFFFFFFFFFFFFFLL;
        v16 += 4;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v18 = &result[2 * v11];
    do
    {
      *v15 = 0x7FFFFFFFFFFFFFFFLL;
      v15 += 2;
    }

    while (v15 != v18);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::moveFromOldBuckets(uint64_t result, int *a2, int *a3)
{
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *result;
    v5 = (v3 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v5)
    {
      v6 = v5 + 1;
      v7 = (v5 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v8 = &v4[2 * v7];
      v9 = v4 + 2;
      v10 = v7;
      do
      {
        *(v9 - 2) = 0x7FFFFFFFFFFFFFFFLL;
        *v9 = 0x7FFFFFFFFFFFFFFFLL;
        v9 += 4;
        v10 -= 2;
      }

      while (v10);
      if (v6 == v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v8 = *result;
    }

    v11 = &v4[2 * v3];
    do
    {
      *v8 = 0x7FFFFFFFFFFFFFFFLL;
      v8 += 2;
    }

    while (v8 != v11);
  }

LABEL_10:
  while (a2 != a3)
  {
    v22 = *a2;
    v23 = a2[1];
    if ((*a2 != -1 || v23 != 0x7FFFFFFF) && (v22 != -2 || v23 != 0x80000000))
    {
      v26 = 0xBF58476D1CE4E5B9 * ((37 * v23) | ((37 * v22) << 32));
      v27 = (v26 >> 31) ^ v26;
      v28 = *(result + 16) - 1;
      v17 = v28 & v27;
      v18 = *result + 16 * v17;
      v19 = *v18;
      v20 = *(v18 + 4);
      if (v22 != *v18 || v23 != v20)
      {
        v14 = 0;
        v16 = 1;
        while (v19 != -1 || v20 != 0x7FFFFFFF)
        {
          if (v14)
          {
            v12 = 0;
          }

          else
          {
            v12 = v20 == 0x80000000;
          }

          if (v12 && v19 == -2)
          {
            v14 = v18;
          }

          v15 = v17 + v16++;
          v17 = v15 & v28;
          v18 = *result + 16 * (v15 & v28);
          v19 = *v18;
          v20 = *(v18 + 4);
          if (v22 == *v18 && v23 == v20)
          {
            goto LABEL_29;
          }
        }

        if (v14)
        {
          v18 = v14;
        }
      }

LABEL_29:
      *v18 = v22;
      *(v18 + 4) = a2[1];
      *(v18 + 8) = *(a2 + 1);
      ++*(result + 8);
    }

    a2 += 4;
  }

  return result;
}

unsigned int *std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,false>(unsigned int *result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 1;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 3;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v88 = *(a2 - 2);
        v89 = *v10;
        if (v88 < *v10 || v89 >= v88 && *(a2 - 1) < v10[1])
        {
          *v10 = v88;
          *(a2 - 2) = v89;
          v90 = v10[1];
          v10[1] = *(a2 - 1);
          *(a2 - 1) = v90;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v91 = v10[2];
      v92 = *v10;
      if (v91 >= *v10 && (v92 < v91 || v10[3] >= v10[1]))
      {
        v126 = *(a2 - 2);
        if (v126 >= v91 && (v91 < v126 || *(a2 - 1) >= v10[3]))
        {
          return result;
        }

        v10[2] = v126;
        *(a2 - 2) = v91;
        v9 = v10 + 3;
        v127 = v10[3];
        v10[3] = *(a2 - 1);
        *(a2 - 1) = v127;
        v128 = v10[2];
        v129 = *v10;
        if (v128 >= *v10 && (v129 < v128 || v10[3] >= v10[1]))
        {
          return result;
        }

        *v10 = v128;
        v10[2] = v129;
        v94 = v10 + 1;
LABEL_234:
        v141 = *v94;
        *v94 = *v9;
        *v9 = v141;
        return result;
      }

      v93 = *(a2 - 2);
      if (v93 < v91)
      {
LABEL_156:
        *v10 = v93;
        v94 = v10 + 1;
        *(a2 - 2) = v92;
        goto LABEL_234;
      }

      if (v91 >= v93)
      {
        v138 = v10[3];
        if (*(a2 - 1) < v138)
        {
          goto LABEL_156;
        }
      }

      else
      {
        v138 = v10[3];
      }

      v139 = v10[1];
      v10[3] = v139;
      *v10 = v91;
      v10[1] = v138;
      v10[2] = v92;
      v140 = *(a2 - 2);
      if (v140 >= v92 && (v92 < v140 || *(a2 - 1) >= v139))
      {
        return result;
      }

      v10[2] = v140;
      *(a2 - 2) = v92;
      v94 = v10 + 3;
      goto LABEL_234;
    }

    if (v13 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,0>(v10, v10 + 2, v10 + 4, a2 - 2);
    }

    if (v13 == 5)
    {
      break;
    }

LABEL_11:
    if (v13 <= 23)
    {
      v106 = v10 + 2;
      v108 = v10 == a2 || v106 == a2;
      if ((a5 & 1) == 0)
      {
        if (!v108)
        {
          v130 = v10 + 1;
          do
          {
            v131 = v8;
            v8 = v106;
            v132 = v131[2];
            v133 = *v131;
            if (v132 < *v131 || v133 >= v132 && v131[3] < v131[1])
            {
              v134 = *v8;
              v135 = v8[1];
              for (i = v130; ; i -= 2)
              {
                v137 = *i;
                i[1] = v133;
                i[2] = v137;
                v133 = *(i - 3);
                if (v133 <= v134 && (v133 < v134 || *(i - 2) <= v135))
                {
                  break;
                }
              }

              *(i - 1) = v134;
              *i = v135;
            }

            v106 = v8 + 2;
            v130 += 2;
          }

          while (v8 + 2 != a2);
        }

        return result;
      }

      if (v108)
      {
        return result;
      }

      v109 = 0;
      v110 = v10;
LABEL_177:
      v112 = v110;
      v110 = v106;
      v113 = v112[2];
      v114 = *v112;
      if (v113 >= *v112 && (v114 < v113 || v112[3] >= v112[1]))
      {
        goto LABEL_176;
      }

      v116 = v112[2];
      v115 = v112[3];
      v117 = v112[1];
      v112[2] = v114;
      v110[1] = v117;
      v111 = v10;
      if (v112 == v10)
      {
        goto LABEL_175;
      }

      v118 = v109;
      while (1)
      {
        v121 = *(v10 + v118 - 8);
        if (v121 > v116)
        {
          v119 = *(v10 + v118 - 4);
        }

        else
        {
          if (v121 < v116)
          {
            v111 = (v10 + v118);
            goto LABEL_175;
          }

          v119 = *(v10 + v118 - 4);
          if (v119 <= v115)
          {
            v111 = v112;
LABEL_175:
            *v111 = v116;
            v111[1] = v115;
LABEL_176:
            v106 = v110 + 2;
            v109 += 8;
            if (v110 + 2 != a2)
            {
              goto LABEL_177;
            }

            return result;
          }
        }

        v112 -= 2;
        v120 = (v10 + v118);
        *v120 = v121;
        v120[1] = v119;
        v118 -= 8;
        if (!v118)
        {
          v111 = v10;
          goto LABEL_175;
        }
      }
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {
        v122 = (v13 - 2) >> 1;
        v123 = v122 + 1;
        v124 = &v8[2 * v122];
        do
        {
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *>(v8, a3, v13, v124);
          v124 -= 2;
          --v123;
        }

        while (v123);
        do
        {
          result = std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<unsigned int,int> *>(v8, a2, a3, v13);
          a2 -= 2;
        }

        while (v13-- > 2);
      }

      return result;
    }

    v14 = &v10[2 * (v13 >> 1)];
    v15 = v14;
    if (v13 >= 0x81)
    {
      v16 = *v14;
      v17 = *v10;
      if (*v14 >= *v10 && (v17 < v16 || v14[1] >= v10[1]))
      {
        v24 = *(a2 - 2);
        if (v24 >= v16 && (v16 < v24 || *(a2 - 1) >= v14[1]) || (*v14 = v24, *(a2 - 2) = v16, v25 = v14 + 1, v26 = v14[1], v14[1] = *(a2 - 1), *(a2 - 1) = v26, v27 = *v14, v28 = *v10, *v14 >= *v10) && (v28 < v27 || *v25 >= v10[1]))
        {
LABEL_45:
          v39 = v14 - 2;
          v40 = *(v14 - 2);
          v41 = v10[2];
          if (v40 >= v41 && (v41 < v40 || *(v14 - 1) >= v10[3]))
          {
            v44 = *(a2 - 4);
            if (v44 >= v40 && (v40 < v44 || *(a2 - 3) >= *(v14 - 1)) || (*v39 = v44, *(a2 - 4) = v40, v45 = v14 - 1, v46 = *(v14 - 1), *(v14 - 1) = *(a2 - 3), *(a2 - 3) = v46, v47 = *v39, v48 = v10[2], *v39 >= v48) && (v48 < v47 || *v45 >= v10[3]))
            {
LABEL_67:
              v57 = v14[2];
              v55 = v14 + 2;
              v56 = v57;
              v58 = v10[4];
              if (v57 >= v58 && (v58 < v56 || v55[1] >= v10[5]))
              {
                v61 = *(a2 - 6);
                if (v61 >= v56 && (v56 < v61 || *(a2 - 5) >= v55[1]) || (*v55 = v61, *(a2 - 6) = v56, v62 = v55 + 1, v63 = v55[1], v55[1] = *(a2 - 5), *(a2 - 5) = v63, v64 = *v55, v65 = v10[4], *v55 >= v65) && (v65 < v64 || *v62 >= v10[5]))
                {
LABEL_85:
                  v70 = *v15;
                  v71 = *v39;
                  if (*v15 >= *v39 && (v71 < v70 || v15[1] >= v39[1]))
                  {
                    v75 = *v55;
                    if (*v55 < v70)
                    {
                      v76 = v15[1];
                      v77 = v55[1];
                      goto LABEL_92;
                    }

                    if (v70 < v75 || (v77 = v55[1], v76 = v15[1], v77 >= v76))
                    {
LABEL_104:
                      v82 = *v10;
                      *v10 = v70;
                      v23 = v10 + 1;
                      *v15 = v82;
                      v30 = v15 + 1;
                      goto LABEL_105;
                    }

LABEL_92:
                    *v15 = v75;
                    v15[1] = v77;
                    v78 = (v15 + 1);
                    *v55 = v70;
                    v55[1] = v76;
                    if (v75 >= v71 && (v71 < v75 || v77 >= v39[1]))
                    {
                      v70 = v75;
                      goto LABEL_104;
                    }

                    *v39 = v75;
                    v73 = (v39 + 1);
                    *v15 = v71;
LABEL_103:
                    v81 = *v73;
                    *v73 = *v78;
                    *v78 = v81;
                    v70 = *v15;
                    goto LABEL_104;
                  }

                  v72 = *v55;
                  if (*v55 >= v70)
                  {
                    if (v70 >= v72)
                    {
                      v79 = v15[1];
                      if (v55[1] < v79)
                      {
                        goto LABEL_87;
                      }
                    }

                    else
                    {
                      v79 = v15[1];
                    }

                    *v15 = v71;
                    v80 = v39[1];
                    v15[1] = v80;
                    *v39 = v70;
                    v39[1] = v79;
                    if (v72 >= v71 && (v71 < v72 || v55[1] >= v80))
                    {
                      v70 = v71;
                      goto LABEL_104;
                    }

                    *v15 = v72;
                    *v55 = v71;
                    v74 = (v55 + 1);
                    v73 = (v15 + 1);
                  }

                  else
                  {
LABEL_87:
                    *v39 = v72;
                    v73 = (v39 + 1);
                    *v55 = v71;
                    v74 = (v55 + 1);
                  }

                  v78 = v74;
                  goto LABEL_103;
                }

                v10[4] = v64;
                *v55 = v65;
                v60 = v10 + 5;
LABEL_84:
                v69 = *v60;
                *v60 = *v62;
                *v62 = v69;
                goto LABEL_85;
              }

              v59 = *(a2 - 6);
              if (v59 >= v56)
              {
                if (v56 >= v59)
                {
                  v66 = v55[1];
                  if (*(a2 - 5) < v66)
                  {
                    goto LABEL_69;
                  }
                }

                else
                {
                  v66 = v55[1];
                }

                v67 = v10[5];
                v10[4] = v56;
                v10[5] = v66;
                *v55 = v58;
                v55[1] = v67;
                v60 = v55 + 1;
                v68 = *(a2 - 6);
                if (v68 >= v58 && (v58 < v68 || *(a2 - 5) >= v67))
                {
                  goto LABEL_85;
                }

                *v55 = v68;
                *(a2 - 6) = v58;
              }

              else
              {
LABEL_69:
                v10[4] = v59;
                *(a2 - 6) = v58;
                v60 = v10 + 5;
              }

              v62 = a2 - 5;
              goto LABEL_84;
            }

            v10[2] = v47;
            *v39 = v48;
            v43 = v10 + 3;
LABEL_66:
            v54 = *v43;
            *v43 = *v45;
            *v45 = v54;
            goto LABEL_67;
          }

          v42 = *(a2 - 4);
          if (v42 >= v40)
          {
            if (v40 >= v42)
            {
              v49 = *(v14 - 1);
              if (*(a2 - 3) < v49)
              {
                goto LABEL_47;
              }
            }

            else
            {
              v49 = *(v14 - 1);
            }

            v52 = v10[3];
            v10[2] = v40;
            v10[3] = v49;
            *v39 = v41;
            *(v14 - 1) = v52;
            v43 = v14 - 1;
            v53 = *(a2 - 4);
            if (v53 >= v41 && (v41 < v53 || *(a2 - 3) >= v52))
            {
              goto LABEL_67;
            }

            *v39 = v53;
            *(a2 - 4) = v41;
          }

          else
          {
LABEL_47:
            v10[2] = v42;
            *(a2 - 4) = v41;
            v43 = v10 + 3;
          }

          v45 = a2 - 3;
          goto LABEL_66;
        }

        *v10 = v27;
        v19 = v10 + 1;
        *v14 = v28;
LABEL_44:
        v38 = *v19;
        *v19 = *v25;
        *v25 = v38;
        goto LABEL_45;
      }

      v18 = *(a2 - 2);
      if (v18 >= v16)
      {
        if (v16 >= v18)
        {
          v34 = v14[1];
          if (*(a2 - 1) < v34)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v34 = v14[1];
        }

        v36 = v10[1];
        *v10 = v16;
        v10[1] = v34;
        *v14 = v17;
        v14[1] = v36;
        v19 = v14 + 1;
        v37 = *(a2 - 2);
        if (v37 >= v17 && (v17 < v37 || *(a2 - 1) >= v36))
        {
          goto LABEL_45;
        }

        *v14 = v37;
      }

      else
      {
LABEL_16:
        *v10 = v18;
        v19 = v10 + 1;
      }

      *(a2 - 2) = v17;
      v25 = a2 - 1;
      goto LABEL_44;
    }

    v20 = *v10;
    v21 = *v14;
    if (*v10 < *v15 || v21 >= v20 && v10[1] < v15[1])
    {
      v22 = *(a2 - 2);
      if (v22 < v20)
      {
        goto LABEL_19;
      }

      if (v20 >= v22)
      {
        v35 = v10[1];
        if (*(a2 - 1) >= v35)
        {
          goto LABEL_59;
        }

LABEL_19:
        *v15 = v22;
        *(a2 - 2) = v21;
        v23 = v15 + 1;
      }

      else
      {
        v35 = v10[1];
LABEL_59:
        v50 = v15[1];
        *v15 = v20;
        v15[1] = v35;
        *v10 = v21;
        v10[1] = v50;
        v23 = v10 + 1;
        v51 = *(a2 - 2);
        if (v51 >= v21 && (v21 < v51 || *(a2 - 1) >= v50))
        {
          goto LABEL_106;
        }

        *v10 = v51;
        *(a2 - 2) = v21;
      }

      v30 = a2 - 1;
LABEL_105:
      v83 = *v23;
      *v23 = *v30;
      *v30 = v83;
      goto LABEL_106;
    }

    v29 = *(a2 - 2);
    if (v29 < v20 || v20 >= v29 && *(a2 - 1) < v10[1])
    {
      *v10 = v29;
      *(a2 - 2) = v20;
      v30 = v10 + 1;
      v31 = v10[1];
      v10[1] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = *v10;
      v33 = *v15;
      if (*v10 < *v15 || v33 >= v32 && *v30 < v15[1])
      {
        *v15 = v32;
        *v10 = v33;
        v23 = v15 + 1;
        goto LABEL_105;
      }
    }

LABEL_106:
    if ((a5 & 1) == 0)
    {
      v84 = *(v10 - 2);
      if (v84 >= *v10 && (*v10 < v84 || *(v10 - 1) >= v10[1]))
      {
        result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,int> *,std::__less<void,void> &>(v10, a2);
        v10 = result;
LABEL_146:
        a5 = 0;
        a4 = -v12;
        goto LABEL_3;
      }
    }

    v85 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,int> *,std::__less<void,void> &>(v10, a2);
    if ((v86 & 1) == 0)
    {
      goto LABEL_144;
    }

    v87 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *>(v10, v85);
    v10 = v85 + 2;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *>(v85 + 2, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v85;
      if (v87)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v87)
    {
LABEL_144:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,false>(v8, v85, a3, -v12, a5 & 1);
      v10 = v85 + 2;
      goto LABEL_146;
    }
  }

  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,0>(v10, v10 + 2, v10 + 4, v10 + 6);
  v95 = *(a2 - 2);
  v96 = v10[6];
  if (v95 < v96 || v96 >= v95 && *(a2 - 1) < v10[7])
  {
    v10[6] = v95;
    *(a2 - 2) = v96;
    v97 = v10[7];
    v10[7] = *(a2 - 1);
    *(a2 - 1) = v97;
    v98 = v10[6];
    v99 = v10[4];
    if (v98 >= v99)
    {
      if (v99 < v98)
      {
        return result;
      }

      v101 = v10[7];
      v100 = v10[5];
      if (v101 >= v100)
      {
        return result;
      }
    }

    else
    {
      v100 = v10[5];
      v101 = v10[7];
    }

    v10[4] = v98;
    v10[5] = v101;
    v10[6] = v99;
    v10[7] = v100;
    v102 = v10[2];
    if (v98 >= v102)
    {
      if (v102 < v98)
      {
        return result;
      }

      v103 = v10[3];
      if (v101 >= v103)
      {
        return result;
      }
    }

    else
    {
      v103 = v10[3];
    }

    v10[2] = v98;
    v10[3] = v101;
    v10[4] = v102;
    v10[5] = v103;
    v104 = *v10;
    if (v98 >= *v10)
    {
      if (v104 < v98)
      {
        return result;
      }

      v105 = v10[1];
      if (v101 >= v105)
      {
        return result;
      }
    }

    else
    {
      v105 = v10[1];
    }

    *v10 = v98;
    v10[1] = v101;
    v10[2] = v104;
    v10[3] = v105;
  }

  return result;
}

unsigned int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *a2;
  v5 = *result;
  if (*a2 < *result || v5 >= v4 && a2[1] < result[1])
  {
    v6 = *a3;
    if (*a3 < v4 || v4 >= v6 && a3[1] < a2[1])
    {
      *result = v6;
      v7 = (result + 1);
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v7 = (a2 + 1);
      v13 = result[1];
      result[1] = a2[1];
      a2[1] = v13;
      v14 = *a3;
      v5 = *a2;
      if (*a3 >= *a2 && (v5 < v14 || a3[1] >= v13))
      {
        goto LABEL_15;
      }

      *a2 = v14;
    }

    *a3 = v5;
    v10 = (a3 + 1);
    goto LABEL_14;
  }

  v8 = *a3;
  if (*a3 < v4 || v4 >= v8 && a3[1] < a2[1])
  {
    *a2 = v8;
    *a3 = v4;
    v10 = (a2 + 1);
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    v11 = *a2;
    v12 = *result;
    if (*a2 < *result || v12 >= v11 && *v10 < result[1])
    {
      *result = v11;
      v7 = (result + 1);
      *a2 = v12;
LABEL_14:
      v15 = *v7;
      *v7 = *v10;
      *v10 = v15;
    }
  }

LABEL_15:
  v16 = *a4;
  v17 = *a3;
  if (*a4 < *a3 || v17 >= v16 && a4[1] < a3[1])
  {
    *a3 = v16;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    if (*a3 < *a2 || v20 >= v19 && a3[1] < a2[1])
    {
      *a2 = v19;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a2;
      v23 = *result;
      if (*a2 < *result || v23 >= v22 && a2[1] < result[1])
      {
        *result = v22;
        *a2 = v23;
        v24 = result[1];
        result[1] = a2[1];
        a2[1] = v24;
      }
    }
  }

  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,int> *,std::__less<void,void> &>(unsigned int *a1, unsigned int *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 - 2);
  if (v4 > *a1 || v4 >= v3 && *(a2 - 1) > v2)
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v7 <= v3 && (v6 < v3 || i[1] <= v2));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 2; v4 > v3 || v4 >= v3 && a2[1] > v2; a2 -= 2)
    {
      v8 = *(a2 - 2);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = i[1];
      i[1] = a2[1];
      a2[1] = v11;
      do
      {
        v12 = i[2];
        i += 2;
        v9 = v12;
      }

      while (v12 <= v3 && (v9 < v3 || i[1] <= v2));
      do
      {
        do
        {
          v13 = *(a2 - 2);
          a2 -= 2;
          v10 = v13;
          v14 = v13 >= v3;
        }

        while (v13 > v3);
      }

      while (v14 && a2[1] > v2);
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    a1[1] = *(i - 1);
  }

  *(i - 2) = v3;
  *(i - 1) = v2;
  return i;
}

unsigned int *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,int> *,std::__less<void,void> &>(unsigned int *a1, unsigned int *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v5 > v3 || a1[v2 + 3] >= v4))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 4)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
      v7 = v8;
    }

    while (v8 >= v3 && (v7 > v3 || a2[1] >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 2);
        a2 -= 2;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v9 > v3)
        {
          goto LABEL_19;
        }
      }

      while (a2[1] >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = v6;
  }

  else
  {
    v12 = *a2;
    v13 = v6;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = v13[1];
      v13[1] = v14[1];
      v14[1] = v15;
      do
      {
        do
        {
          v16 = v13[2];
          v13 += 2;
          v5 = v16;
          v17 = v16 > v3;
        }

        while (v16 < v3);
      }

      while (!v17 && v13[1] < v4);
      do
      {
        v18 = *(v14 - 2);
        v14 -= 2;
        v12 = v18;
      }

      while (v18 >= v3 && (v12 > v3 || v14[1] >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 2 != a1)
  {
    *a1 = *(v13 - 2);
    a1[1] = *(v13 - 1);
  }

  *(v13 - 2) = v3;
  *(v13 - 1) = v4;
  return v13 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *>(unsigned int *a1, unsigned int *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 <= 2)
  {
    if (v2 >= 2)
    {
      if (v2 == 2)
      {
        v3 = *(a2 - 2);
        v4 = *a1;
        if (v3 < *a1 || v4 >= v3 && *(a2 - 1) < a1[1])
        {
          *a1 = v3;
          *(a2 - 2) = v4;
          v5 = a1[1];
          a1[1] = *(a2 - 1);
          *(a2 - 1) = v5;
          return 1;
        }

        return 1;
      }

      goto LABEL_20;
    }

    return 1;
  }

  switch(v2)
  {
    case 3:
      v20 = a1[2];
      v21 = *a1;
      if (v20 >= *a1 && (v21 < v20 || a1[3] >= a1[1]))
      {
        v30 = *(a2 - 2);
        if (v30 >= v20 && (v20 < v30 || *(a2 - 1) >= a1[3]))
        {
          return 1;
        }

        a1[2] = v30;
        *(a2 - 2) = v20;
        v24 = a1 + 3;
        v31 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v31;
        v32 = a1[2];
        v33 = *a1;
        if (v32 >= *a1 && (v33 < v32 || a1[3] >= a1[1]))
        {
          return 1;
        }

        *a1 = v32;
        a1[2] = v33;
        v23 = a1 + 1;
        goto LABEL_61;
      }

      v22 = *(a2 - 2);
      if (v22 < v20)
      {
LABEL_19:
        *a1 = v22;
        v23 = a1 + 1;
        *(a2 - 2) = v21;
        v24 = a2 - 1;
        goto LABEL_61;
      }

      if (v20 >= v22)
      {
        v38 = a1[3];
        if (*(a2 - 1) < v38)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v38 = a1[3];
      }

      v40 = a1[1];
      a1[3] = v40;
      *a1 = v20;
      a1[1] = v38;
      a1[2] = v21;
      v41 = *(a2 - 2);
      if (v41 >= v21 && (v21 < v41 || *(a2 - 1) >= v40))
      {
        return 1;
      }

      a1[2] = v41;
      *(a2 - 2) = v21;
      v24 = a2 - 1;
      v23 = a1 + 3;
LABEL_61:
      v42 = *v23;
      *v23 = *v24;
      *v24 = v42;
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
      return 1;
    case 5:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
      v9 = *(a2 - 2);
      v10 = a1[6];
      if (v9 >= v10 && (v10 < v9 || *(a2 - 1) >= a1[7]))
      {
        return 1;
      }

      a1[6] = v9;
      *(a2 - 2) = v10;
      v11 = a1[7];
      a1[7] = *(a2 - 1);
      *(a2 - 1) = v11;
      v12 = a1[6];
      v13 = a1[4];
      if (v12 >= v13)
      {
        if (v13 < v12)
        {
          return 1;
        }

        v15 = a1[7];
        v14 = a1[5];
        if (v15 >= v14)
        {
          return 1;
        }
      }

      else
      {
        v14 = a1[5];
        v15 = a1[7];
      }

      a1[4] = v12;
      a1[5] = v15;
      a1[6] = v13;
      a1[7] = v14;
      v16 = a1[2];
      if (v12 >= v16)
      {
        if (v16 < v12)
        {
          return 1;
        }

        v17 = a1[3];
        if (v15 >= v17)
        {
          return 1;
        }
      }

      else
      {
        v17 = a1[3];
      }

      a1[2] = v12;
      a1[3] = v15;
      a1[4] = v16;
      a1[5] = v17;
      v18 = *a1;
      if (v12 >= *a1)
      {
        if (v18 < v12)
        {
          return 1;
        }

        v19 = a1[1];
        if (v15 >= v19)
        {
          return 1;
        }
      }

      else
      {
        v19 = a1[1];
      }

      *a1 = v12;
      a1[1] = v15;
      result = 1;
      a1[2] = v18;
      a1[3] = v19;
      return result;
  }

LABEL_20:
  v25 = a1 + 4;
  v26 = a1[2];
  v27 = *a1;
  if (v26 < *a1 || v27 >= v26 && a1[3] < a1[1])
  {
    v28 = *v25;
    if (*v25 < v26)
    {
LABEL_22:
      *a1 = v28;
      a1[4] = v27;
      v29 = (a1 + 1);
LABEL_65:
      v37 = (a1 + 5);
      goto LABEL_66;
    }

    if (v26 >= v28)
    {
      v39 = a1[3];
      if (a1[5] < v39)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v39 = a1[3];
    }

    v43 = a1[1];
    a1[3] = v43;
    v29 = (a1 + 3);
    *a1 = v26;
    a1[1] = v39;
    a1[2] = v27;
    if (v28 >= v27 && (v27 < v28 || a1[5] >= v43))
    {
      goto LABEL_67;
    }

    a1[2] = v28;
    a1[4] = v27;
    goto LABEL_65;
  }

  v34 = *v25;
  if (*v25 < v26)
  {
    v35 = a1[3];
    v36 = a1[5];
LABEL_34:
    a1[3] = v36;
    v37 = (a1 + 3);
    a1[2] = v34;
    a1[4] = v26;
    a1[5] = v35;
    if (v34 >= v27 && (v27 < v34 || v36 >= a1[1]))
    {
      goto LABEL_67;
    }

    *a1 = v34;
    a1[2] = v27;
    v29 = (a1 + 1);
LABEL_66:
    v44 = *v29;
    *v29 = *v37;
    *v37 = v44;
    goto LABEL_67;
  }

  if (v26 >= v34)
  {
    v36 = a1[5];
    v35 = a1[3];
    if (v36 < v35)
    {
      goto LABEL_34;
    }
  }

LABEL_67:
  v45 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (1)
  {
    v48 = *v25;
    if (*v45 < *v25 || v48 >= *v45 && v45[1] < v25[1])
    {
      break;
    }

LABEL_82:
    v25 = v45;
    v46 += 8;
    v45 += 2;
    if (v45 == a2)
    {
      return 1;
    }
  }

  v49 = *v45;
  v50 = v45[1];
  *v45 = v48;
  v45[1] = v25[1];
  v51 = v46;
  while (1)
  {
    v53 = a1 + v51;
    v54 = *(a1 + v51 + 8);
    if (v54 <= v49)
    {
      break;
    }

    v52 = *(v53 + 3);
LABEL_74:
    *(v53 + 4) = v54;
    *(a1 + v51 + 20) = v52;
    v51 -= 8;
    if (v51 == -16)
    {
      *a1 = v49;
      a1[1] = v50;
      if (++v47 != 8)
      {
        goto LABEL_82;
      }

      return v45 + 2 == a2;
    }
  }

  if (v54 >= v49)
  {
    v52 = *(a1 + v51 + 12);
    if (v52 > v50)
    {
      goto LABEL_74;
    }
  }

  v55 = a1 + v51;
  *(v55 + 4) = v49;
  *(v55 + 5) = v50;
  if (++v47 != 8)
  {
    goto LABEL_82;
  }

  return v45 + 2 == a2;
}