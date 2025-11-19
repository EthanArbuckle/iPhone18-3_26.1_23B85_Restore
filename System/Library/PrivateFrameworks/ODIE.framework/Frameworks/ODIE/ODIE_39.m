uint64_t materializeConversion(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    result = (*(*result + 64))(result, a3, a4, a5, a6);
    if (result)
    {
      v7 = result;
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a2, result);
      return v7 - 16;
    }
  }

  return result;
}

uint64_t isLegalToInline(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 8);
  if (v5 != a2)
  {
    while (2)
    {
      v11 = v5 - 8;
      if (!v5)
      {
        v11 = 0;
      }

      v12 = v11 + 32;
      for (i = *(v11 + 40); i != v12; i = *(i + 8))
      {
        result = (*(*a1 + 40))(a1, i, a3, a4, a5);
        if (!result)
        {
          return result;
        }

        if ((*(*a1 + 48))(a1, i))
        {
          v15 = *(i + 44);
          if ((v15 & 0x7FFFFF) != 0)
          {
            v16 = i + 16 * ((v15 >> 23) & 1) + ((v15 >> 21) & 0x7F8) + 32 * *(i + 40) + 64;
            v17 = 24 * (v15 & 0x7FFFFF);
            while ((isLegalToInline(a1, v16, a3, a4, a5) & 1) != 0)
            {
              v16 += 24;
              v17 -= 24;
              if (!v17)
              {
                goto LABEL_12;
              }
            }

            return 0;
          }
        }

LABEL_12:
        ;
      }

      v5 = *(v5 + 8);
      if (v5 != a2)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

void handleResultImpl(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v43[6] = *MEMORY[0x277D85DE8];
  v14 = mlir::DictionaryAttr::get(*a2, 0, 0);
  v41 = v43;
  v42 = 0x600000000;
  llvm::SmallVectorImpl<mlir::DictionaryAttr>::assign(&v41, a8, v14);
  v15 = (*(a6 + 32))(a6, a5);
  if (v15)
  {
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = 0;
      v18 = *(v15 + 8);
      v19 = &v18[v16];
      do
      {
        v20 = *v18++;
        v41[v17++] = v20;
      }

      while (v18 != v19);
    }
  }

  v39 = 0x600000000;
  v21 = v41;
  v35 = a7;
  v36 = 0;
  v37 = v41;
  v38 = v40;
  if (a8 && v42)
  {
    v22 = 0;
    v23 = &v41[v42];
    do
    {
      v24 = mlir::ValueRange::dereference_iterator(&v35, v22);
      v33[0] = v24;
      v33[1] = v21;
      v31[0] = 0;
      v31[1] = 0;
      v32 = 0;
      for (i = *v24; i; i = *i)
      {
        v30 = i[2];
        llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v31, &v30, v34);
      }

      v26 = *v21++;
      v27 = (*(*a1 + 80))(a1, a2, a3, a5, v24, v26);
      v34[0] = v31;
      mlir::Value::replaceUsesWithIf(v33, v27, llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<handleResultImpl(mlir::InlinerInterface &,mlir::OpBuilder &,mlir::CallOpInterface,mlir::CallableOpInterface,mlir::ValueRange)::$_0>, v34);
      MEMORY[0x25F891030](v31[0], 8);
      v36 = ++v22;
      v37 = v21;
    }

    while (v22 != a8 && v21 != v23);
    if (v38 != v40)
    {
      free(v38);
    }
  }

  if (v41 != v43)
  {
    free(v41);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void llvm::SmallVectorImpl<mlir::DictionaryAttr>::assign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 12) >= a2)
  {
    v10 = *(a1 + 8);
    if (v10 >= a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = *(a1 + 8);
    }

    if (v11)
    {
      v12 = 0;
      v13 = vdupq_n_s64(v11 - 1);
      v14 = (*a1 + 8);
      do
      {
        v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
        if (v15.i8[0])
        {
          *(v14 - 1) = a3;
        }

        if (v15.i8[4])
        {
          *v14 = a3;
        }

        v12 += 2;
        v14 += 2;
      }

      while (((v11 + 1) & 0x1FFFFFFFELL) != v12);
      v10 = *(a1 + 8);
    }

    v16 = a2 - v10;
    if (a2 > v10)
    {
      v17 = 0;
      v18 = vdupq_n_s64(v16 - 1);
      v19 = (*a1 + 8 * v10 + 8);
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(vdupq_n_s64(v17), xmmword_25D0A0500)));
        if (v20.i8[0])
        {
          *(v19 - 1) = a3;
        }

        if (v20.i8[4])
        {
          *v19 = a3;
        }

        v17 += 2;
        v19 += 2;
      }

      while (((v16 + 1) & 0xFFFFFFFFFFFFFFFELL) != v17);
    }
  }

  else
  {
    *(a1 + 8) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 8);
    v6 = 0;
    v7 = vdupq_n_s64(a2 - 1);
    v8 = (*a1 + 8);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
      if (v9.i8[0])
      {
        *(v8 - 1) = a3;
      }

      if (v9.i8[4])
      {
        *v8 = a3;
      }

      v6 += 2;
      v8 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v6);
  }

  *(a1 + 8) = a2;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL21remapInlinedLocationsN4llvm14iterator_rangeINS8_14ilist_iteratorINS8_12ilist_detail12node_optionsINS2_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEENS2_8LocationEE3__0NS2_12LocationAttrENS2_9AttributeENS_4pairISJ_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSL_ISQ_SM_EEEEEEvE4typeEOT_EUlSK_E_NS_9allocatorISZ_EEFNSS_INSL_ISK_SM_EEEESK_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E815E8;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL21remapInlinedLocationsN4llvm14iterator_rangeINS8_14ilist_iteratorINS8_12ilist_detail12node_optionsINS2_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEENS2_8LocationEE3__0NS2_12LocationAttrENS2_9AttributeENS_4pairISJ_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSL_ISQ_SM_EEEEEEvE4typeEOT_EUlSK_E_NS_9allocatorISZ_EEFNSS_INSL_ISK_SM_EEEESK_EEclEOSK_@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v9[0] = *a2;
  result = mlir::Attribute::hasTrait<mlir::AttributeTrait::IsLocation>(v9);
  if (result && v5)
  {
    v7 = *(a1 + 8);
    v11 = v5;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>,mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>::try_emplace<>(v9, *v7, &v11);
    if (v10)
    {
      result = mlir::CallSiteLoc::get(v5, **(v7 + 8));
      v9[0][1] = result;
    }

    else
    {
      result = v9[0][1];
    }

    *a3 = result;
    *(a3 + 8) = 2;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>,mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>::try_emplace<>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>,mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>::LookupBucketFor<mlir::Location>(*a2, *(a2 + 16), *a3, &v12);
  v7 = v12;
  if (result)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v13 = v12;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  if (4 * v9 + 4 >= 3 * v10)
  {
    v10 *= 2;
    goto LABEL_10;
  }

  if (v10 + ~v9 - *(a2 + 12) <= v10 >> 3)
  {
LABEL_10:
    llvm::DenseMap<mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>::grow(a2, v10);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>,mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>::LookupBucketFor<mlir::Location>(*a2, *(a2 + 16), *a3, &v13);
    v9 = *(a2 + 8);
    v7 = v13;
  }

  *(a2 + 8) = v9 + 1;
  if (*v7 != -4096)
  {
    --*(a2 + 12);
  }

  *v7 = *a3;
  v7[1] = 0;
  v8 = 1;
LABEL_8:
  v11 = *a2 + 16 * *(a2 + 16);
  *a1 = v7;
  *(a1 + 8) = v11;
  *(a1 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>,mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>::LookupBucketFor<mlir::Location>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

char *llvm::DenseMap<mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>,mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>::LookupBucketFor<mlir::Location>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          v21[1] = v19[1];
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 16;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<remapInlinedOperands(llvm::iterator_range<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>>,mlir::IRMapping &)::$_0>(uint64_t result, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 68);
    if (v2)
    {
      v3 = result;
      v4 = *(a2 + 72);
      v5 = 32 * v2;
      do
      {
        v6 = *v3;
        v12 = v4[3];
        result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(v6, &v12);
        if (result)
        {
          v7 = result == *v6 + 16 * *(v6 + 16);
        }

        else
        {
          v7 = 1;
        }

        if (!v7)
        {
          v8 = *(result + 8);
          if (v8)
          {
            v9 = v4[1];
            if (v9)
            {
              v10 = *v4;
              *v9 = *v4;
              if (v10)
              {
                *(v10 + 8) = v4[1];
              }
            }

            v4[3] = v8;
            v11 = *v8;
            *v4 = *v8;
            v4[1] = v8;
            if (v11)
            {
              *(v11 + 8) = v4;
            }

            *v8 = v4;
          }
        }

        v4 += 4;
        v5 -= 32;
      }

      while (v5);
    }
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<handleResultImpl(mlir::InlinerInterface &,mlir::OpBuilder &,mlir::CallOpInterface,mlir::CallableOpInterface,mlir::ValueRange)::$_0>(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a2 + 16);
  return llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation const*>(v2, &v4) != 0;
}

uint64_t mlir::moveLoopInvariantCode(uint64_t a1, uint64_t a2)
{
  v35[6] = *MEMORY[0x277D85DE8];
  v19 = a1;
  v20 = a2;
  (*(a2 + 8))(&v33, a2, a1);
  v2 = v33;
  v18 = &v19;
  v32[0] = llvm::function_ref<BOOL ()(mlir::Value,mlir::Region *)>::callback_fn<mlir::moveLoopInvariantCode(mlir::LoopLikeOpInterface)::$_0>;
  v32[1] = &v18;
  v3 = 0;
  if (v34)
  {
    v4 = &v33[v34];
    do
    {
      v31 = *v2;
      v30 = 0u;
      memset(v29, 0, sizeof(v29));
      if (*v31 != v31)
      {
        for (i = v31[1]; i != v31; i = i[1])
        {
          v6 = i - 1;
          if (!i)
          {
            v6 = 0;
          }

          if (v6[4] != v6 + 4)
          {
            break;
          }
        }

        if (i != v31)
        {
          v7 = i - 1;
          if (!i)
          {
            v7 = 0;
          }

          v8 = v7[5];
          *&v24 = v31;
          *(&v24 + 1) = i;
          *&v25 = v8;
          if (v8)
          {
            do
            {
              *&v22[0] = v8;
              std::deque<mlir::Operation *>::push_back(v29, v22);
              mlir::Region::OpIterator::operator++(&v24);
              v8 = v25;
            }

            while (v25);
            v10 = *(&v30 + 1);
            v28[0] = v32;
            for (v28[1] = &v31; *(&v30 + 1); v10 = *(&v30 + 1))
            {
              v11 = *(*(*(&v29[0] + 1) + ((v30 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v30 & 0x1FF));
              *&v30 = v30 + 1;
              *(&v30 + 1) = v10 - 1;
              if (v30 >= 0x400)
              {
                operator delete(**(&v29[0] + 1));
                *(&v29[0] + 1) += 8;
                *&v30 = v30 - 512;
              }

              v12 = *(v11 + 2);
              if (v12)
              {
                v12 = *(v12 + 24) & 0xFFFFFFFFFFFFFFF8;
              }

              if (v12 == v31 && mlir::isMemoryEffectFree(v11, v9))
              {
                if (mlir::isSpeculatable(v11, v9))
                {
                  *&v24 = llvm::function_ref<BOOL ()(mlir::Value)>::callback_fn<mlir::moveLoopInvariantCode(llvm::ArrayRef<mlir::Region *>,llvm::function_ref<BOOL ()(mlir::Value,mlir::Region *)>,llvm::function_ref<BOOL ()(mlir::Operation *,mlir::Region *)>,llvm::function_ref<void ()(mlir::Operation *,mlir::Region *)>)::$_0>;
                  *(&v24 + 1) = v28;
                  *&v22[0] = &v24;
                  if (canBeHoisted(v11, llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<canBeHoisted(mlir::Operation *,llvm::function_ref<BOOL ()(mlir::Value)>)::$_0>, v22))
                  {
                    (*(v20 + 16))(v20, v19, v11);
                    mlir::Operation::getUsers(v11, &v24);
                    v13 = v26;
                    v14 = v27;
                    v23 = v26;
                    v22[0] = v24;
                    v22[1] = v25;
                    while (v13 != v14)
                    {
                      v21 = *(v13 + 16);
                      v15 = *(v21 + 16);
                      if (v15)
                      {
                        v15 = *(v15 + 24) & 0xFFFFFFFFFFFFFFF8;
                      }

                      if (v15 == v31)
                      {
                        std::deque<mlir::Operation *>::push_back(v29, &v21);
                      }

                      mlir::ResultRange::UseIterator::operator++(v22);
                      v13 = v23;
                    }

                    ++v3;
                  }
                }
              }
            }
          }
        }
      }

      std::deque<mlir::Operation *>::~deque[abi:nn200100](v29);
      ++v2;
    }

    while (v2 != v4);
    v2 = v33;
  }

  if (v2 != v35)
  {
    free(v2);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL canBeHoisted(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = a2;
  v8[1] = a3;
  v7 = a1;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(a1 + 48) + 32))(*(a1 + 48), v4))
  {
    return 0;
  }

  v6[0] = &v7;
  v6[1] = v8;
  return mlir::detail::walk<mlir::ForwardIterator>(a1, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<canBeHoisted(mlir::Operation *,llvm::function_ref<BOOL ()(mlir::OpOperand &)>)::$_0>, v6, 1) != 0;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<canBeHoisted(mlir::Operation *,llvm::function_ref<BOOL ()(mlir::OpOperand &)>)::$_0>(uint64_t **a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) == 0)
  {
    return 1;
  }

  v2 = *(a2 + 68);
  if (!v2)
  {
    return 1;
  }

  v4 = *(a2 + 72);
  v5 = v4 + 32 * v2;
  while (1)
  {
    v6 = **a1;
    v12 = *(v4 + 24);
    v7 = *(mlir::Value::getParentRegion(&v12) + 16);
    if (v6 != v7)
    {
      while (1)
      {
        v8 = *(v7 + 16);
        if (!v8)
        {
          break;
        }

        v9 = *(v8 + 24) & 0xFFFFFFFFFFFFFFF8;
        if (!v9)
        {
          break;
        }

        v7 = *(v9 + 16);
        if (v7 == v6 || v7 == 0)
        {
          if (v7)
          {
            goto LABEL_14;
          }

          break;
        }
      }

      result = (*a1[1])(a1[1][1], v4);
      if (!result)
      {
        return result;
      }
    }

LABEL_14:
    v4 += 32;
    if (v4 == v5)
    {
      return 1;
    }
  }
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::LoopLikeOpInterface,mlir::Operation *,llvm::CastInfo<mlir::LoopLikeOpInterface,mlir::Operation *,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (v1)
  {
    mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  }

  return v1;
}

uint64_t mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::LoopLikeOpInterface>();
      mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[280];
}

uint64_t llvm::getTypeName<mlir::LoopLikeOpInterface>()
{
  {
    llvm::getTypeName<mlir::LoopLikeOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::LoopLikeOpInterface>();
    *algn_27FC188D8 = v1;
  }

  return llvm::getTypeName<mlir::LoopLikeOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::LoopLikeOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LoopLikeOpInterface]";
  v6 = 87;
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

uint64_t mlir::detail::TypeIDResolver<mlir::SubsetOpInterface,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::SubsetOpInterface>();
      mlir::detail::TypeIDResolver<mlir::SubsetOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[295];
}

uint64_t llvm::getTypeName<mlir::SubsetOpInterface>()
{
  {
    llvm::getTypeName<mlir::SubsetOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::SubsetOpInterface>();
    unk_27FC18950 = v1;
  }

  return llvm::getTypeName<mlir::SubsetOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::SubsetOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::SubsetOpInterface]";
  v6 = 85;
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

uint64_t mlir::detail::TypeIDResolver<mlir::SubsetExtractionOpInterface,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::SubsetExtractionOpInterface>();
      mlir::detail::TypeIDResolver<mlir::SubsetExtractionOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[300];
}

uint64_t llvm::getTypeName<mlir::SubsetExtractionOpInterface>()
{
  {
    llvm::getTypeName<mlir::SubsetExtractionOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::SubsetExtractionOpInterface>();
    *algn_27FC18978 = v1;
  }

  return llvm::getTypeName<mlir::SubsetExtractionOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::SubsetExtractionOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::SubsetExtractionOpInterface]";
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

uint64_t mlir::detail::TypeIDResolver<mlir::SubsetInsertionOpInterface,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::SubsetInsertionOpInterface>();
      mlir::detail::TypeIDResolver<mlir::SubsetInsertionOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[290];
}

uint64_t llvm::getTypeName<mlir::SubsetInsertionOpInterface>()
{
  {
    llvm::getTypeName<mlir::SubsetInsertionOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::SubsetInsertionOpInterface>();
    *algn_27FC18928 = v1;
  }

  return llvm::getTypeName<mlir::SubsetInsertionOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::SubsetInsertionOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::SubsetInsertionOpInterface]";
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

uint64_t mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::DestinationStyleOpInterface>();
      mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[285];
}

uint64_t llvm::getTypeName<mlir::DestinationStyleOpInterface>()
{
  {
    llvm::getTypeName<mlir::DestinationStyleOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::DestinationStyleOpInterface>();
    unk_27FC18900 = v1;
  }

  return llvm::getTypeName<mlir::DestinationStyleOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::DestinationStyleOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DestinationStyleOpInterface]";
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

uint64_t llvm::SetVector<mlir::Value,llvm::SmallVector<mlir::Value,0u>,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>>,0u>::insert(uint64_t a1, uint64_t *a2)
{
  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, a2, &v6);
  v4 = v7;
  if (v7 == 1)
  {
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a1 + 24, *a2);
  }

  return v4;
}

void propagateLiveness(void *a1, uint64_t a2)
{
  v69[3] = *MEMORY[0x277D85DE8];
  if (*a1 != a1)
  {
    v3 = a1[1];
    if (v3)
    {
      v4 = (v3 - 8);
    }

    else
    {
      v4 = 0;
    }

    llvm::post_order<mlir::Block *>(v58, v4);
    llvm::iterator_range<llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>::begin(v53, v58);
    llvm::iterator_range<llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>::end(&v49, v58);
    if ((llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator==(&v55, v51) & 1) == 0)
    {
      while (1)
      {
        v45 = *(v55 + 5 * v56 - 5);
        v5 = v45 + 4;
        v6 = v45[4];
        while (v6 != v5)
        {
          v7 = *(v6 + 44);
          if ((v7 & 0x7FFFFF) != 0)
          {
            v8 = v6 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 32 * *(v6 + 40) + 64;
            v9 = 24 * (v7 & 0x7FFFFF);
            do
            {
              propagateLiveness(v8, a2);
              v8 += 24;
              v9 -= 24;
            }

            while (v9);
          }

          v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
          if ((*(**(v6 + 48) + 32))(*(v6 + 48), v10))
          {
            v47[0] = v6;
            llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2 + 32, v47, v66);
            *a2 |= v67;
            v11 = llvm::DefaultDoCastIfPossible<mlir::BranchOpInterface,mlir::Operation *,llvm::CastInfo<mlir::BranchOpInterface,mlir::Operation *,void>>::doCastIfPossible(v6);
            v13 = *(v6 + 40);
            if (v11)
            {
              if (v13)
              {
                v14 = v11;
                v15 = v12;
                for (i = 0; i != v13; ++i)
                {
                  (*v15)(v66, v15, v14, i);
                  if (v66[0])
                  {
                    v17 = 0;
                    v18 = 8 * v66[0];
                    do
                    {
                      v46 = *(*(*(v6 + 64 + 16 * ((*(v6 + 44) >> 23) & 1) + ((*(v6 + 44) >> 21) & 0x7F8) + 32 * i + 24) + 48) + v17);
                      llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2 + 8, &v46, v47);
                      *a2 |= v48;
                      v17 += 8;
                    }

                    while (v18 != v17);
                  }

                  if (v68 != v69)
                  {
                    free(v68);
                  }
                }
              }
            }

            else if (v13)
            {
              v29 = 0;
              v30 = (v6 + 16 * ((*(v6 + 44) >> 23) & 1) + ((*(v6 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8;
              do
              {
                v31 = *(v30 + 32 * v29 + 24);
                v32 = *(v31 + 48);
                v33 = *(v31 + 56);
                while (v32 != v33)
                {
                  v34 = *v32++;
                  v47[0] = v34;
                  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2 + 8, v47, v66);
                  *a2 |= v67;
                }

                ++v29;
              }

              while (v29 != v13);
            }

            goto LABEL_44;
          }

          *v66 = v6;
          if (llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation const*>((a2 + 32), v66))
          {
            goto LABEL_44;
          }

          if ((mlir::wouldOpBeTriviallyDead(v6, v19) & 1) == 0)
          {
            v47[0] = v6;
            llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2 + 32, v47, v66);
            *a2 |= v67;
            goto LABEL_44;
          }

          v20 = *(v6 + 36);
          if (v20)
          {
            v21 = (v6 - 16);
          }

          else
          {
            v21 = 0;
          }

          if (v20)
          {
            v22 = 0;
            v23 = (v6 - 16);
            while (1)
            {
              v24 = v21;
              if (v22)
              {
                v25 = *(v6 - 8) & 7;
                v26 = v6 - 16;
                v27 = v22;
                if (v25 == 6)
                {
                  goto LABEL_33;
                }

                v28 = (5 - v25);
                v24 = v23;
                v27 = v22 - v28;
                if (v22 > v28)
                {
                  break;
                }
              }

LABEL_34:
              processValue(v24, a2);
              ++v22;
              v23 -= 2;
              if (v20 == v22)
              {
                goto LABEL_44;
              }
            }

            v26 = v6 - 16 - 16 * v28;
LABEL_33:
            v24 = (v26 - 24 * v27);
            goto LABEL_34;
          }

LABEL_44:
          v6 = *v6;
          v5 = v45 + 4;
        }

        v35 = *((v45[3] & 0xFFFFFFFFFFFFFFF8) + 8);
        v36 = v35 ? v35 - 8 : 0;
        if (v36 != v45)
        {
          break;
        }

LABEL_64:
        if (--v56)
        {
          llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::traverseChild(v53);
        }

        if (llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator==(&v55, v51))
        {
          goto LABEL_67;
        }
      }

      v37 = v45[6];
      v38 = v45[7];
      while (1)
      {
        if (v37 == v38)
        {
          goto LABEL_64;
        }

        v39 = *v37;
        v40 = *(*v37 + 8) & 7;
        if (*v37)
        {
          v41 = (*(*v37 + 8) & 7) == 7;
          v42 = v40 == 7;
        }

        else
        {
          v42 = 1;
        }

        if (v42)
        {
          break;
        }

        if (v40 == 6)
        {
          v43 = &v39[3 * v39[2] + 15];
        }

        else
        {
          v43 = &v39[2 * v40 + 2];
        }

        *v66 = v43;
        if (!llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation const*>((a2 + 32), v66))
        {
          goto LABEL_62;
        }

LABEL_63:
        v37 += 8;
      }

      *v66 = *v37;
      if (llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>((a2 + 8), v66))
      {
        goto LABEL_63;
      }

LABEL_62:
      processValue(v39, a2);
      goto LABEL_63;
    }

LABEL_67:
    if (v51[0] != &v52)
    {
      free(v51[0]);
    }

    if ((v50 & 1) == 0)
    {
      free(v49);
    }

    if (v55 != &v57)
    {
      free(v55);
    }

    if ((v54 & 1) == 0)
    {
      free(v53[0]);
    }

    if (v64 != &v65)
    {
      free(v64);
    }

    if ((v63 & 1) == 0)
    {
      free(v62);
    }

    if (v60 != &v61)
    {
      free(v60);
    }

    if ((v59 & 1) == 0)
    {
      free(v58[0]);
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

uint64_t deleteDeadness(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v57[3] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = a2;
    v7 = 0;
    v30 = &a2[3 * a3];
    do
    {
      if (*v5 != v5)
      {
        v8 = v5[1];
        v31 = v8 != v5 && v8[1] == v5;
        if (v8)
        {
          v9 = (v8 - 1);
        }

        else
        {
          v9 = 0;
        }

        llvm::post_order<mlir::Block *>(v45, v9);
        llvm::iterator_range<llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>::begin(v40, v45);
        llvm::iterator_range<llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>::end(&v36, v45);
        v32 = v5;
        while ((llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator==(&v42, v38) & 1) == 0)
        {
          v10 = *(v42 + 5 * v43 - 5);
          if (!v31)
          {
            v33 = *(v10 + 32);
            v34 = llvm::DefaultDoCastIfPossible<mlir::BranchOpInterface,mlir::Operation *,llvm::CastInfo<mlir::BranchOpInterface,mlir::Operation *,void>>::doCastIfPossible(v33);
            if (v34)
            {
              v12 = *(v33 + 40);
              if (v12)
              {
                v13 = v11;
                for (i = 0; i != v12; ++i)
                {
                  (*v13)(&v53, v13, v34, (v12 + ~i));
                  if (v55 + v53)
                  {
                    v15 = *(((v33 + 64 + 16 * ((*(v33 + 44) >> 23) & 1) + ((*(v33 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * (v12 + ~i) + 24);
                    v16 = -(v55 + v53);
                    v17 = v55 + v53 - 1;
                    do
                    {
                      v35 = *(*(v15 + 48) + 8 * v17);
                      if (!llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(a4 + 1, &v35))
                      {
                        mlir::MutableOperandRange::erase(&v54, v17 - v53, 1u);
                      }

                      --v17;
                    }

                    while (!__CFADD__(v16++, 1));
                  }

                  if (v56 != v57)
                  {
                    free(v56);
                  }
                }
              }
            }
          }

          v21 = *(v10 + 32);
          v19 = (v10 + 32);
          v20 = v21;
          if (v21 != v19)
          {
            do
            {
              v22 = *v20;
              v53 = v20;
              if (llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation const*>(a4 + 4, &v53))
              {
                v23 = *(v20 + 11);
                if ((v23 & 0x7FFFFF) != 0)
                {
                  v24 = &v20[4 * *(v20 + 10) + 8 + 2 * ((v23 >> 23) & 1)] + ((v23 >> 21) & 0x7F8);
                }

                else
                {
                  v24 = 0;
                }

                v7 |= deleteDeadness(a1, v24);
              }

              else
              {
                mlir::Operation::dropAllUses(v20);
                (*(*a1 + 16))(a1, v20);
                v7 = 1;
              }

              v20 = v22;
            }

            while (v22 != v19);
          }

          v25 = v43-- == 1;
          v5 = v32;
          if (!v25)
          {
            llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::traverseChild(v40);
          }
        }

        if (v38[0] != &v39)
        {
          free(v38[0]);
        }

        if ((v37 & 1) == 0)
        {
          free(v36);
        }

        if (v42 != &v44)
        {
          free(v42);
        }

        if ((v41 & 1) == 0)
        {
          free(v40[0]);
        }

        if (v51 != &v52)
        {
          free(v51);
        }

        if ((v50 & 1) == 0)
        {
          free(v49);
        }

        if (v47 != &v48)
        {
          free(v47);
        }

        if ((v46 & 1) == 0)
        {
          free(v45[0]);
        }

        for (j = *(v5[1] + 8); j != v5; j = j[1])
        {
          if (j)
          {
            v27 = (j - 1);
          }

          else
          {
            v27 = 0;
          }

          v45[0] = a4;
        }
      }

      v5 += 3;
    }

    while (v5 != v30);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

uint64_t mlir::simplifyRegions(uint64_t a1, void *a2, unint64_t a3, int a4)
{
  v4 = a2;
  v378 = *MEMORY[0x277D85DE8];
  *&v371 = &v372 + 8;
  *(&v371 + 1) = 16;
  LODWORD(v372) = 0;
  BYTE4(v372) = 1;
  v366 = v368;
  v367 = 0x100000000;
  v5 = 3 * a3;
  v333 = 3 * a3;
  if (a3 < 2)
  {
    if (!a3)
    {
      goto LABEL_68;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v366, v368, a3, 8);
  }

  v6 = 8 * v5;
  do
  {
    llvm::SmallVectorTemplateBase<mlir::Region *,true>::push_back(&v366, v4);
    v4 += 24;
    v6 -= 24;
  }

  while (v6);
  v7 = v367;
  if (v367)
  {
    v328 = 0;
    do
    {
      v8 = *(v366 + --v7);
      LODWORD(v367) = v7;
      if (*v8 != v8)
      {
        v9 = v8[1];
        if (*(v9 + 8) != v8)
        {
          v10 = &v371;
          llvm::SmallPtrSetImplBase::clear(&v371);
          v11 = v8[1];
          if (v11)
          {
            v12 = (v11 - 8);
          }

          else
          {
            v12 = 0;
          }

          v354 = &v371;
          v356[0] = 0;
          v356[1] = 0;
          __p = 0;
          llvm::SmallPtrSetImpl<mlir::Block *>::insert(&v371, v12, &v357);
          if (v358 == 1)
          {
            *&v357 = v12;
            BYTE8(v357) = 0;
            LOBYTE(v359) = 0;
            std::vector<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>::push_back[abi:nn200100](&__p, &v357);
            v10 = v354;
          }

          *&v369 = v10;
          std::vector<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>::vector[abi:nn200100](&v369 + 1, &__p);
          if (__p)
          {
            v356[0] = __p;
            operator delete(__p);
          }

          *&v357 = &v371;
          v358 = 0;
          v359 = 0;
          *(&v357 + 1) = 0;
          *&v350 = &v371;
          std::vector<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>::vector[abi:nn200100](&v350 + 1, &v357 + 1);
          if (*(&v357 + 1))
          {
            v358 = *(&v357 + 1);
            operator delete(*(&v357 + 1));
          }

          v362 = v369;
          v363 = v370[0];
          v364 = v350;
          v365 = *v351;
          v354 = v369;
          std::vector<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>::vector[abi:nn200100](&__p, &v362 + 1);
          *&v369 = v364;
          std::vector<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>::vector[abi:nn200100](&v369 + 1, &v364 + 1);
          while (1)
          {
LABEL_20:
            v13 = __p;
            v14 = v356[0];
            if (v356[0] - __p == *&v370[0] - *(&v369 + 1))
            {
              if (__p == v356[0])
              {
LABEL_41:
                if (*(&v369 + 1))
                {
                  *&v370[0] = *(&v369 + 1);
                  operator delete(*(&v369 + 1));
                  v13 = __p;
                }

                if (v13)
                {
                  v356[0] = v13;
                  operator delete(v13);
                }

                if (*(&v364 + 1))
                {
                  *&v365 = *(&v364 + 1);
                  operator delete(*(&v364 + 1));
                }

                if (*(&v362 + 1))
                {
                  *&v363 = *(&v362 + 1);
                  operator delete(*(&v362 + 1));
                }

                v25 = v8[1];
                if (v25 != v8)
                {
                  do
                  {
                    v26 = v25[1];
                    if (llvm::SmallPtrSetImplBase::contains_imp(&v371, v25 - 1))
                    {
                      v27 = v25 + 3;
                      for (i = v25[4]; i != v27; i = *(i + 8))
                      {
                        v29 = *(i + 44);
                        if ((v29 & 0x7FFFFF) != 0)
                        {
                          v30 = i + 16 * ((v29 >> 23) & 1) + ((v29 >> 21) & 0x7F8) + 32 * *(i + 40) + 64;
                          v31 = 24 * (v29 & 0x7FFFFF);
                          do
                          {
                            llvm::SmallVectorTemplateBase<mlir::Region *,true>::push_back(&v366, v30);
                            v30 += 24;
                            v31 -= 24;
                          }

                          while (v31);
                        }
                      }
                    }

                    else
                    {
                      mlir::Block::dropAllDefinedValueUses((v25 - 1));
                      (*(*a1 + 24))(a1, v25 - 1);
                      v328 = 1;
                    }

                    v25 = v26;
                  }

                  while (v26 != v8);
                }

                goto LABEL_59;
              }

              v15 = *(&v369 + 1) + 16;
              v16 = __p + 16;
              while (1)
              {
                v17 = v16 - 16;
                if (*(v16 - 2) != *(v15 - 16))
                {
                  break;
                }

                v18 = v16[8];
                v19 = *(v15 + 8);
                v20 = v18 != v19 || v18 == 0;
                if (v20)
                {
                  if (v18 != v19)
                  {
                    goto LABEL_34;
                  }
                }

                else if (*v16 != *v15)
                {
                  goto LABEL_34;
                }

                v15 += 32;
                v16 += 32;
                if (v17 + 32 == v356[0])
                {
                  goto LABEL_41;
                }
              }
            }

            do
            {
LABEL_34:
              v21 = *(v14 - 4);
              if ((*(v14 - 1) & 1) == 0)
              {
                mlir::SuccessorRange::SuccessorRange(&v357, *(v14 - 4));
                *(v14 - 3) = v357;
                *(v14 - 2) = 0;
                *(v14 - 8) = 1;
              }

              while (1)
              {
                mlir::SuccessorRange::SuccessorRange(&v357, v21);
                v22 = *(v14 - 2);
                if (v22 == *(&v357 + 1))
                {
                  break;
                }

                v23 = *(v14 - 3);
                *(v14 - 2) = v22 + 1;
                v24 = *(v23 + 32 * v22 + 24);
                llvm::SmallPtrSetImpl<mlir::Block *>::insert(v354, v24, &v357);
                if (v358 == 1)
                {
                  *&v357 = v24;
                  BYTE8(v357) = 0;
                  LOBYTE(v359) = 0;
                  std::vector<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>::push_back[abi:nn200100](&__p, &v357);
                  goto LABEL_20;
                }
              }

              v14 = (v356[0] - 32);
              v356[0] = v14;
            }

            while (__p != v14);
          }
        }

        v32 = v9 + 24;
        for (j = *(v9 + 32); j != v32; j = *(j + 8))
        {
          v34 = *(j + 44);
          if ((v34 & 0x7FFFFF) != 0)
          {
            v35 = j + 16 * ((v34 >> 23) & 1) + ((v34 >> 21) & 0x7F8) + 32 * *(j + 40) + 64;
            v36 = 24 * (v34 & 0x7FFFFF);
            do
            {
              llvm::SmallVectorTemplateBase<mlir::Region *,true>::push_back(&v366, v35);
              v35 += 24;
              v36 -= 24;
            }

            while (v36);
          }
        }

LABEL_59:
        v7 = v367;
      }
    }

    while (v7);
    goto LABEL_69;
  }

LABEL_68:
  v328 = 0;
LABEL_69:
  if (v366 != v368)
  {
    free(v366);
  }

  v37 = a2;
  v38 = a3;
  if ((BYTE4(v372) & 1) == 0)
  {
    free(v371);
  }

  *&v372 = 0;
  *(&v371 + 1) = 0;
  DWORD2(v372) = 0;
  v373 = 0uLL;
  v39 = 8 * v333;
  LODWORD(v374) = 0;
  do
  {
    LOBYTE(v371) = 0;
    if (!a3)
    {
      break;
    }

    v40 = 8 * v333;
    v41 = a2;
    do
    {
      propagateLiveness(v41, &v371);
      v41 += 3;
      v40 -= 24;
    }

    while (v40);
  }

  while ((v371 & 1) != 0);
  v316 = deleteDeadness(a1, a2, a3, &v371);
  MEMORY[0x25F891030](v373, 8);
  MEMORY[0x25F891030](*(&v371 + 1), 8);
  v42 = a4;
  if (!a4)
  {
    goto LABEL_525;
  }

  LODWORD(v351[0]) = 0;
  v350 = 0u;
  v351[1] = &v353;
  v352 = 0x100000000;
  if (!a3)
  {
    goto LABEL_467;
  }

  v43 = 8 * v333;
  v44 = a2;
  do
  {
    *&v371 = v44;
    llvm::SetVector<mlir::Region *,llvm::SmallVector<mlir::Region *,1u>,llvm::DenseSet<mlir::Region *,llvm::DenseMapInfo<mlir::Region *,void>>,1u>::insert(&v350, &v371);
    v44 += 3;
    v43 -= 24;
  }

  while (v43);
  v45 = v352;
  if (!v352)
  {
LABEL_467:
    v315 = 0;
    goto LABEL_468;
  }

  v315 = 0;
  v334 = 8 * v333;
  do
  {
    v46 = *(v351[1] + v45 - 1);
    llvm::SetVector<mlir::Region *,llvm::SmallVector<mlir::Region *,1u>,llvm::DenseSet<mlir::Region *,llvm::DenseMapInfo<mlir::Region *,void>>,1u>::pop_back(&v350);
    v343 = v46;
    if (*v46 == v46)
    {
      goto LABEL_454;
    }

    v47 = v46[1];
    v48 = v47[1];
    if (v47 != v46 && v48 == v46)
    {
      goto LABEL_454;
    }

    if (v48 == v46)
    {
      v50 = 0;
      LODWORD(v53) = 0;
LABEL_453:
      llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::destroyAll(v50, v53);
      MEMORY[0x25F891030](v50, 8);
      goto LABEL_454;
    }

    v50 = 0;
    v51 = 0;
    v52 = 0;
    LODWORD(v53) = 0;
    do
    {
      if (v48)
      {
        v54 = (v48 - 1);
      }

      else
      {
        v54 = 0;
      }

      mlir::SuccessorRange::SuccessorRange(&v371, v54);
      v354 = 0;
      v55 = llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::LookupBucketFor<mlir::SuccessorRange>(v50, v53, &v371, &v354);
      v56 = v354;
      if ((v55 & 1) == 0)
      {
        *&v357 = v354;
        if (4 * v51 + 4 >= (3 * v53))
        {
          v57 = 2 * v53;
        }

        else
        {
          v57 = v53;
          if (~v51 - v52 + v53 > v53 >> 3)
          {
LABEL_97:
            ++v51;
            v52 -= *v56 != -4096;
            *v56 = v371;
            v56[2] = v56 + 4;
            v56[3] = 0x100000000;
            goto LABEL_98;
          }
        }

        v60 = v53;
        v61 = (v57 - 1) | ((v57 - 1) >> 1);
        v62 = v61 | (v61 >> 2) | ((v61 | (v61 >> 2)) >> 4);
        v63 = ((v62 | (v62 >> 8)) >> 16) | v62 | (v62 >> 8);
        if ((v63 + 1) > 0x40)
        {
          v53 = (v63 + 1);
        }

        else
        {
          v53 = 64;
        }

        buffer = llvm::allocate_buffer((8 * (v53 + 4 * v53)), 8uLL);
        v65 = v50;
        v50 = buffer;
        v312 = v65;
        if (v65)
        {
          v66 = 0;
          do
          {
            *(buffer + v66) = xmmword_25D0A0570;
            v66 += 40;
          }

          while (40 * v53 != v66);
          v51 = 0;
          if (v60)
          {
            v67 = 40 * v60;
            v68 = v312;
            do
            {
              if ((*v68 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                *&v362 = 0;
                llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::LookupBucketFor<mlir::SuccessorRange>(v50, v53, v68, &v362);
                v69 = v362;
                *v362 = *v68;
                *(v69 + 24) = 0x100000000;
                *(v69 + 16) = v69 + 32;
                v70 = v69 + 16;
                if (*(v68 + 24))
                {
                  llvm::SmallVectorImpl<mlir::Block *>::operator=(v70, v68 + 16);
                }

                v71 = *(v68 + 16);
                if ((v68 + 32) != v71)
                {
                  free(v71);
                }

                ++v51;
              }

              v68 += 40;
              v67 -= 40;
            }

            while (v67);
          }

          MEMORY[0x25F891030](v312, 8);
          v37 = a2;
        }

        else
        {
          v72 = 40 * v53;
          v73 = buffer;
          do
          {
            *v73 = xmmword_25D0A0570;
            v73 = (v73 + 40);
            v72 -= 40;
          }

          while (v72);
          v51 = 0;
        }

        llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::LookupBucketFor<mlir::SuccessorRange>(v50, v53, &v371, &v357);
        v52 = 0;
        v56 = v357;
        goto LABEL_97;
      }

LABEL_98:
      llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((v56 + 2), v54);
      v48 = v48[1];
    }

    while (v48 != v46);
    if (!v51)
    {
      v38 = a3;
      goto LABEL_453;
    }

    v74 = v50;
    v38 = a3;
    if (v53)
    {
      v75 = 40 * v53;
      v74 = v50;
      while ((*v74 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v74 += 40;
        v75 -= 40;
        if (!v75)
        {
          goto LABEL_453;
        }
      }
    }

    v76 = v50 + 40 * v53;
    if (v74 == v76)
    {
      goto LABEL_453;
    }

    v77 = 0;
    while (2)
    {
      v78 = *(v74 + 24);
      if (v78 == 1)
      {
        goto LABEL_448;
      }

      v310 = v76;
      v311 = v74;
      v79 = *(v74 + 16);
      v354 = v356;
      __p = 0x100000000;
      if (!v78)
      {
        v270 = 0;
        v189 = v356;
        goto LABEL_445;
      }

      v318 = v77;
      v314 = v53;
      v313 = v50;
      v329 = (v79 + 8 * v78);
      while (2)
      {
        v340 = v79;
        v362 = *v79;
        v80 = v362;
        v363 = 0uLL;
        LODWORD(v364) = 0;
        v81 = *(v362 + 40);
        LODWORD(v369) = (*(v362 + 56) - *(v362 + 48)) >> 3;
        v82 = v362 + 32;
        if (v81 != v362 + 32)
        {
          do
          {
            v83 = *(v81 + 36);
            if (v83)
            {
              *&v357 = v81;
              llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int &>(&v363, &v357, &v369, &v371);
              LODWORD(v369) = v369 + v83;
            }

            *&v357 = 0;
            *&v357 = mlir::OperationEquivalence::computeHash(v81, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
            v374 = 0u;
            memset(v375, 0, sizeof(v375));
            v372 = 0u;
            v373 = 0u;
            v371 = 0u;
            v376 = 0;
            v377 = 0xFF51AFD7ED558CCDLL;
            *(&v362 + 1) = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(&v371, 0, &v371, v375, &v362 + 1, &v357);
            v81 = *(v81 + 8);
          }

          while (v81 != v82);
          v81 = v80[5];
        }

        while (v81 != v82)
        {
          v84 = *(v81 + 44);
          v85 = v84 & 0x7FFFFF;
          if ((v84 & 0x7FFFFF) != 0)
          {
            v86 = (v81 + 16 * ((v84 >> 23) & 1) + ((v84 >> 21) & 0x7F8) + 32 * *(v81 + 40) + 64);
            v87 = 24 * v85;
            while (v86 == *v86)
            {
              v86 += 3;
              v87 -= 24;
              if (!v87)
              {
                goto LABEL_144;
              }
            }

            goto LABEL_292;
          }

LABEL_144:
          v81 = *(v81 + 8);
        }

        v88 = v80[6];
        for (k = v80[7]; v88 != k; ++v88)
        {
          v90 = *v88;
          while (1)
          {
            v90 = *v90;
            if (!v90)
            {
              break;
            }

            if (*(v90[2] + 16) != v80)
            {
              goto LABEL_292;
            }
          }
        }

        if (__p)
        {
          v91 = v354;
          v92 = v354 + 112 * __p;
          v320 = v92;
          while (1)
          {
            if (*(v91 + 1) != *(&v362 + 1))
            {
              goto LABEL_244;
            }

            v93 = *v91;
            v94 = v362;
            v95 = *(*v91 + 48);
            v96 = *(*v91 + 56);
            v97 = *(v362 + 48);
            if (v96 - v95 != *(v362 + 56) - v97)
            {
              goto LABEL_244;
            }

            while (v95 != v96)
            {
              if ((*(*v97 + 8) ^ *(*v95 + 8)) > 7)
              {
                goto LABEL_244;
              }

              v95 += 8;
              v97 += 8;
            }

            *&v371 = &v372;
            *(&v371 + 1) = 0x800000000;
            v98 = v93[5];
            v99 = *(v362 + 40);
            v100 = v362 + 32;
            v321 = v93 + 4;
            if (v98 == v93 + 4)
            {
LABEL_238:
              if (v99 != v100)
              {
LABEL_239:
                v143 = 0;
                goto LABEL_241;
              }

              if (!DWORD2(v371))
              {
LABEL_272:
                if (*(v91 + 12))
                {
                  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v91 + 40), &v362, &v357);
                  if (v358 == 1)
                  {
                    llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((v91 + 64), v362);
                  }
                }

                else
                {
                  v157 = *(v91 + 18);
                  if (v157)
                  {
                    v158 = v362;
                    v159 = 8 * v157;
                    v160 = *(v91 + 8);
                    while (*v160 != v362)
                    {
                      ++v160;
                      v159 -= 8;
                      if (!v159)
                      {
                        goto LABEL_283;
                      }
                    }
                  }

                  else
                  {
                    v160 = *(v91 + 8);
                  }

                  if (v160 == (*(v91 + 8) + 8 * v157))
                  {
                    v158 = v362;
LABEL_283:
                    llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back((v91 + 64), v158);
                    v161 = *(v91 + 18);
                    if (v161 >= 2)
                    {
                      v162 = *(v91 + 8);
                      v163 = 8 * v161;
                      do
                      {
                        llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v91 + 40), v162++, &v357);
                        v143 = 1;
                        v163 -= 8;
                      }

                      while (v163);
                      goto LABEL_241;
                    }
                  }
                }

                v143 = 1;
                goto LABEL_241;
              }

              v144 = v371;
              while (1)
              {
                v145 = *(v91 + 12);
                v146 = v91 + 96;
                if (*(v91 + 11) != v91 + 96)
                {
                  v147 = *(v91 + 12);
                  v148 = v91 + 96;
                  if (v145)
                  {
                    do
                    {
                      v146 = v147;
                      v147 = *(v147 + 1);
                    }

                    while (v147);
                  }

                  else
                  {
                    do
                    {
                      v146 = *(v148 + 2);
                      v20 = *v146 == v148;
                      v148 = v146;
                    }

                    while (v20);
                  }

                  v149 = *v144;
                  v150 = *(v146 + 7);
                  v151 = v150 <= *v144;
                  if (v150 >= *v144)
                  {
                    v153 = v144[1];
                    if (!v151 || *(v146 + 8) >= v153)
                    {
                      break;
                    }
                  }
                }

                if (v145)
                {
                  v152 = v146 + 8;
                }

                else
                {
                  v152 = v91 + 96;
                }

                if (!*v152)
                {
                  goto LABEL_270;
                }

LABEL_271:
                v144 += 2;
                if (v144 == (v371 + 8 * DWORD2(v371)))
                {
                  goto LABEL_272;
                }
              }

              if (!v145)
              {
LABEL_270:
                operator new();
              }

              while (2)
              {
                while (1)
                {
                  v154 = v145;
                  v155 = *(v145 + 7);
                  if (v155 > v149)
                  {
                    break;
                  }

                  if (v155 >= v149)
                  {
                    v156 = *(v154 + 8);
                    if (v156 > v153)
                    {
                      break;
                    }

                    if (v156 >= v153)
                    {
                      goto LABEL_271;
                    }
                  }

                  v145 = v154[1];
                  if (!v145)
                  {
                    goto LABEL_270;
                  }
                }

                v145 = *v154;
                if (!*v154)
                {
                  goto LABEL_270;
                }

                continue;
              }
            }

            v101 = 0;
            v317 = v362 + 32;
            while (1)
            {
              if (v99 == v100 || !mlir::OperationEquivalence::isEquivalentTo(v98, v99, llvm::function_ref<llvm::LogicalResult ()(mlir::Value,mlir::Value)>::callback_fn<llvm::LogicalResult ()(mlir::Value,mlir::Value)>, mlir::OperationEquivalence::ignoreValueEquivalence, 0, v58, 1, v59, 0, v309))
              {
                goto LABEL_239;
              }

              v102 = *(v98 + 44);
              v103 = (v102 & 0x800000) != 0 ? *(v98 + 72) : 0;
              v322 = v99;
              if ((*(v99 + 46) & 0x80) != 0)
              {
                break;
              }

              v104 = 0;
              if ((v102 & 0x800000) != 0)
              {
                goto LABEL_166;
              }

LABEL_229:
              v139 = *(v322 + 36);
              if (v139)
              {
                v140 = (v322 - 16);
              }

              else
              {
                v140 = 0;
              }

              if (std::__any_of[abi:nn200100]<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,std::__identity,mlir::Operation::isUsedOutsideOfBlock(mlir::Block *)::{lambda(mlir::OpResult)#1}>(v140, 0, v140, v139, v94))
              {
                goto LABEL_240;
              }

              v141 = *(v98 + 36);
              if (v141)
              {
                v142 = (v98 - 16);
              }

              else
              {
                v142 = 0;
              }

              v37 = a2;
              if (std::__any_of[abi:nn200100]<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,std::__identity,mlir::Operation::isUsedOutsideOfBlock(mlir::Block *)::{lambda(mlir::OpResult)#1}>(v142, 0, v142, v141, v93))
              {
                goto LABEL_239;
              }

              v98 = *(v98 + 8);
              v99 = *(v322 + 8);
              ++v101;
              v100 = v317;
              if (v98 == v321)
              {
                goto LABEL_238;
              }
            }

            v104 = *(v99 + 72);
            if ((v102 & 0x800000) == 0)
            {
              goto LABEL_229;
            }

LABEL_166:
            v105 = *(v98 + 68);
            if (!v105)
            {
              goto LABEL_229;
            }

            v106 = 0;
            v324 = *(v98 + 68);
            v326 = v104;
            while (2)
            {
              v107 = *(v103 + 32 * v106 + 24);
              v108 = *(v104 + 32 * v106 + 24);
              if (v107 == v108)
              {
                goto LABEL_210;
              }

              v109 = *(v107 + 8);
              v110 = *(v108 + 8);
              if ((v110 ^ v109) > 7)
              {
                goto LABEL_240;
              }

              if ((~v109 & 7) != 0)
              {
                v111 = *(v103 + 32 * v106 + 24);
              }

              else
              {
                v111 = 0;
              }

              if (v111)
              {
                v112 = *(v111 + 8) & 7;
                if (v112 == 6)
                {
                  v113 = v111 + 24 * *(v111 + 16) + 120;
                  if (v111 + 24 * *(v111 + 16) == -120)
                  {
                    goto LABEL_176;
                  }
                }

                else
                {
                  v113 = v111 + 16 * v112 + 16;
                }
              }

              else
              {
LABEL_176:
                v113 = *(v103 + 32 * v106 + 24);
              }

              if ((~v110 & 7) != 0)
              {
                v114 = *(v104 + 32 * v106 + 24);
              }

              else
              {
                v114 = 0;
              }

              if (v114)
              {
                v115 = *(v114 + 8) & 7;
                if (v115 == 6)
                {
                  v116 = v114 + 24 * *(v114 + 16) + 120;
                  if (v114 + 24 * *(v114 + 16) == -120)
                  {
                    goto LABEL_184;
                  }
                }

                else
                {
                  v116 = v114 + 16 * v115 + 16;
                }
              }

              else
              {
LABEL_184:
                v116 = *(v104 + 32 * v106 + 24);
              }

              v117 = *(v113 + 16);
              if ((v117 == v93) == (*(v116 + 16) != v94))
              {
                goto LABEL_240;
              }

              if (v117 == v93)
              {
                v121 = v93;
                v122 = v94;
                v123 = v98;
                v124 = v103;
                v125 = v101;
                v105 = v324;
                v104 = v326;
                v20 = OrderOf == v127;
                v101 = v125;
                v103 = v124;
                v98 = v123;
                v94 = v122;
                v93 = v121;
                if (!v20)
                {
                  goto LABEL_240;
                }

                goto LABEL_210;
              }

              if (v111)
              {
                v118 = *(v111 + 8) & 7;
                if (v118 == 6)
                {
                  v119 = v111 + 24 * *(v111 + 16) + 120;
                  if (v111 + 24 * *(v111 + 16) == -120)
                  {
                    goto LABEL_191;
                  }
                }

                else
                {
                  v119 = v111 + 16 * v118 + 16;
                }

                v120 = v119;
              }

              else
              {
LABEL_191:
                v119 = 0;
                v120 = *(v103 + 32 * v106 + 24);
              }

              if (v119 != *(*(v120 + 16) + 32))
              {
                goto LABEL_197;
              }

              if (v111)
              {
                v131 = *(v111 + 8) & 7;
                if (v131 == 6)
                {
                  v132 = v111 + 24 * *(v111 + 16) + 120;
                  if (v132)
                  {
                    v107 = v132;
                  }
                }

                else
                {
                  v107 = v111 + 16 * v131 + 16;
                }
              }

              v137 = *v93;
              if (!*v93)
              {
LABEL_197:
                if (!v114)
                {
                  goto LABEL_200;
                }

                v128 = *(v114 + 8) & 7;
                if (v128 == 6)
                {
                  v129 = v114 + 24 * *(v114 + 16) + 120;
                  if (v114 + 24 * *(v114 + 16) == -120)
                  {
LABEL_200:
                    v129 = 0;
                    v130 = *(v104 + 32 * v106 + 24);
LABEL_207:
                    if (v129 == *(*(v130 + 16) + 32))
                    {
                      if (v114)
                      {
                        v135 = *(v114 + 8) & 7;
                        if (v135 == 6)
                        {
                          v136 = v114 + 24 * *(v114 + 16) + 120;
                          if (v136)
                          {
                            v108 = v136;
                          }
                        }

                        else
                        {
                          v108 = v114 + 16 * v135 + 16;
                        }
                      }

                      v138 = *v94;
                      if (*v94)
                      {
                        while (*(v138[2] + 16) != *(v108 + 16))
                        {
                          v138 = *v138;
                          if (!v138)
                          {
                            goto LABEL_208;
                          }
                        }

                        goto LABEL_240;
                      }
                    }

LABEL_208:
                    v133 = DWORD2(v371);
                    if (DWORD2(v371) >= HIDWORD(v371))
                    {
                      llvm::SmallVectorTemplateBase<std::pair<int,int>,true>::push_back(&v371, (v106 << 32) | v101);
                      v105 = v324;
                      v104 = v326;
                    }

                    else
                    {
                      v134 = (v371 + 8 * DWORD2(v371));
                      *v134 = v101;
                      v134[1] = v106;
                      DWORD2(v371) = v133 + 1;
                    }

LABEL_210:
                    if (++v106 == v105)
                    {
                      goto LABEL_229;
                    }

                    continue;
                  }
                }

                else
                {
                  v129 = v114 + 16 * v128 + 16;
                }

                v130 = v129;
                goto LABEL_207;
              }

              break;
            }

            while (*(v137[2] + 16) != *(v107 + 16))
            {
              v137 = *v137;
              if (!v137)
              {
                goto LABEL_197;
              }
            }

LABEL_240:
            v143 = 0;
            v37 = a2;
LABEL_241:
            if (v371 != &v372)
            {
              free(v371);
            }

            v92 = v320;
            if (v143)
            {
              goto LABEL_292;
            }

LABEL_244:
            v91 += 112;
            if (v91 == v92)
            {
              v164 = __p;
              goto LABEL_289;
            }
          }
        }

        v164 = 0;
LABEL_289:
        if (v164 >= HIDWORD(__p))
        {
          *&v371 = 0;
          v169 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v354, v356, 0, 112, &v371);
          v170 = &v169[112 * __p];
          *v170 = v362;
          *(v170 + 8) = 0;
          *(v170 + 2) = 0;
          *(v170 + 3) = 0;
          *(v170 + 2) = v363;
          *&v363 = 0;
          *(v170 + 6) = DWORD2(v363);
          DWORD2(v363) = 0;
          v171 = *(v170 + 7);
          *(v170 + 7) = HIDWORD(v363);
          HIDWORD(v363) = v171;
          v172 = *(v170 + 8);
          *(v170 + 8) = v364;
          LODWORD(v364) = v172;
          *(v170 + 12) = 0;
          v170 += 96;
          *(v170 - 7) = 0;
          *(v170 - 6) = 0;
          *(v170 - 10) = 0;
          *(v170 - 4) = v170 - 16;
          *(v170 - 3) = 0x100000000;
          *(v170 + 1) = 0;
          *(v170 - 1) = v170;
          v173 = v354;
          if (__p)
          {
            v174 = 0;
            v175 = 112 * __p;
            do
            {
              v176 = &v173[v174];
              v177 = &v169[v174];
              *v177 = *&v173[v174];
              *(v177 + 8) = 0;
              *(v177 + 2) = 0;
              *(v177 + 3) = 0;
              *(v177 + 2) = *&v173[v174 + 16];
              *(v176 + 2) = 0;
              *(v177 + 6) = *&v173[v174 + 24];
              *(v176 + 6) = 0;
              v178 = *&v169[v174 + 28];
              *(v177 + 7) = *&v173[v174 + 28];
              *(v176 + 7) = v178;
              v179 = *&v169[v174 + 32];
              *(v177 + 8) = *&v173[v174 + 32];
              *(v176 + 8) = v179;
              *(v177 + 5) = 0;
              *(v177 + 6) = 0;
              *(v177 + 14) = 0;
              *(v177 + 5) = *&v173[v174 + 40];
              *(v176 + 5) = 0;
              *(v177 + 12) = *&v173[v174 + 48];
              *(v176 + 12) = 0;
              *&v169[v174 + 64] = &v169[v174 + 80];
              v180 = &v169[v174 + 64];
              v181 = *&v169[v174 + 52];
              *(v180 - 12) = *&v173[v174 + 52];
              *(v176 + 13) = v181;
              v182 = *&v169[v174 + 56];
              *(v177 + 14) = *&v173[v174 + 56];
              *(v176 + 14) = v182;
              *(v180 + 8) = 0x100000000;
              if (*&v173[v174 + 72])
              {
                llvm::SmallVectorImpl<mlir::Block *>::operator=(v180, (v176 + 64));
              }

              *(v177 + 11) = *(v176 + 11);
              v183 = v176 + 96;
              v184 = *(v176 + 12);
              *(v177 + 12) = v184;
              v185 = v177 + 96;
              v186 = *(v176 + 13);
              *(v177 + 13) = v186;
              if (v186)
              {
                *(v184 + 16) = v185;
                *(v176 + 11) = v183;
                *v183 = 0;
                *(v176 + 13) = 0;
              }

              else
              {
                *(v177 + 11) = v185;
              }

              v174 += 112;
            }

            while (v175 != v174);
            v173 = v354;
            v187 = __p;
          }

          else
          {
            v187 = 0;
          }

          v188 = v371;
          if (v354 != v356)
          {
            free(v354);
          }

          v354 = v169;
          v168 = __p + 1;
          HIDWORD(__p) = v188;
        }

        else
        {
          v165 = v354 + 112 * v164;
          *v165 = v362;
          *(v165 + 8) = 0;
          *(v165 + 2) = 0;
          *(v165 + 3) = 0;
          *(v165 + 2) = v363;
          *&v363 = 0;
          *(v165 + 6) = DWORD2(v363);
          DWORD2(v363) = 0;
          v166 = *(v165 + 7);
          *(v165 + 7) = HIDWORD(v363);
          HIDWORD(v363) = v166;
          v167 = *(v165 + 8);
          *(v165 + 8) = v364;
          LODWORD(v364) = v167;
          *(v165 + 12) = 0;
          v165 += 96;
          *(v165 - 7) = 0;
          *(v165 - 6) = 0;
          *(v165 - 10) = 0;
          *(v165 - 4) = v165 - 16;
          *(v165 - 3) = 0x100000000;
          *(v165 + 1) = 0;
          *(v165 - 1) = v165;
          v168 = __p + 1;
        }

        LODWORD(__p) = v168;
LABEL_292:
        MEMORY[0x25F891030](v363, 8);
        v38 = a3;
        v79 = (v340 + 8);
        if ((v340 + 8) != v329)
        {
          continue;
        }

        break;
      }

      v189 = v354;
      if (!__p)
      {
        v270 = 0;
        v50 = v313;
        LODWORD(v53) = v314;
        v77 = v318;
        goto LABEL_445;
      }

      v327 = (v354 + 112 * __p);
      v50 = v313;
      LODWORD(v53) = v314;
      v77 = v318;
      do
      {
        v190 = *(v189 + 18);
        if (!v190)
        {
          goto LABEL_336;
        }

        v191 = *v189;
        v192 = *v189;
        if (!v189[13])
        {
          v319 = v77;
          goto LABEL_315;
        }

        while (1)
        {
          v192 = *v192;
          if (!v192)
          {
            break;
          }

          if (!mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(*(*(v192[2] + 16) + 32)))
          {
            LODWORD(v190) = 0;
            goto LABEL_336;
          }
        }

        v200 = *(v189 + 18);
        v319 = v77;
        if (!v200)
        {
          v366 = v368;
          v367 = 0x200000000;
          goto LABEL_339;
        }

        v201 = v189[8];
        v202 = &v201[v200];
LABEL_328:
        v203 = *v201;
        do
        {
          v203 = *v203;
          if (!v203)
          {
            if (++v201 == v202)
            {
              v204 = *(v189 + 18);
              v366 = v368;
              v367 = 0x200000000;
              if (v204 >= 2)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v366, v368, v204 + 1, 8);
              }

LABEL_339:
              llvm::SmallVectorTemplateBase<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,true>::push_back(&v366, v191[5]);
              v205 = *(v189 + 18);
              if (v205)
              {
                v206 = v189[8];
                v207 = 8 * v205;
                do
                {
                  v208 = *v206++;
                  llvm::SmallVectorTemplateBase<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,true>::push_back(&v366, *(v208 + 40));
                  v207 -= 8;
                }

                while (v207);
                v209 = *(v189 + 18) + 1;
              }

              else
              {
                v209 = 1;
              }

              v210 = v189[13];
              *&v371 = &v372;
              *(&v371 + 1) = 0x800000000;
              llvm::SmallVectorImpl<mlir::Value>::resizeImpl<false>(&v371, v210);
              *&v362 = &v363;
              *(&v362 + 1) = 0x200000000;
              llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,8u>>::assign(&v362, v209, &v371);
              if (v371 != &v372)
              {
                free(v371);
              }

              v323 = v191[6];
              v325 = v191[7];
              v211 = v189[11];
              v341 = v189;
              if (v211 != v189 + 12)
              {
                v212 = 0;
                v213 = 0;
                while (1)
                {
                  v214 = *(v211 + 7);
                  if (v367)
                  {
                    break;
                  }

                  v224 = v211[1];
                  if (v224)
                  {
                    do
                    {
                      v225 = v224;
                      v224 = *v224;
                    }

                    while (v224);
                  }

                  else
                  {
                    do
                    {
                      v225 = v211[2];
                      v20 = *v225 == v211;
                      v211 = v225;
                    }

                    while (!v20);
                  }

                  ++v213;
                  v212 = v214;
                  v211 = v225;
                  if (v225 == v189 + 12)
                  {
                    goto LABEL_370;
                  }
                }

                if (v214 == v212)
                {
                  v215 = *v366;
                }

                else
                {
                  v215 = *v366;
                  v216 = (v214 - v212) + 1;
                  do
                  {
                    v215 = *(v215 + 8);
                    --v216;
                  }

                  while (v216 > 1);
                  *v366 = v215;
                }

                v217 = *(*(v215 + 72) + 32 * *(v211 + 8) + 24);
                *(*v362 + 8 * v213) = v217;
                v218 = *(v217 + 8);
                if ((~*(v217 + 8) & 7) != 0)
                {
                  v219 = v217;
                }

                else
                {
                  v219 = 0;
                }

                if (v219)
                {
                  v220 = *(v219 + 8) & 7;
                  if (v220 == 6)
                  {
                    v221 = v219 + 24 * *(v219 + 16) + 120;
                    if (!v221)
                    {
                      goto LABEL_360;
                    }
                  }

                  else
                  {
                    v221 = v219 + 16 * v220 + 16;
                  }

                  v222 = (v221 + 24);
                }

                else
                {
LABEL_360:
                  v222 = (v217 + 32);
                }

                v223 = *v222;
                mlir::Block::addArgument(v191);
              }

LABEL_370:
              *&v369 = v370;
              *(&v369 + 1) = 0x800000000;
              *&v371 = &v372;
              *(&v371 + 1) = 0x200000000;
              llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,8u>>::assign(&v371, DWORD2(v362), &v369);
              if (v369 != v370)
              {
                free(v369);
              }

              v226 = DWORD2(v362);
              v37 = a2;
              if (!DWORD2(v362))
              {
                *&v357 = &v358;
                *(&v357 + 1) = 0x200000000;
                v38 = a3;
                goto LABEL_428;
              }

              v227 = *(v362 + 8);
              v348[0] = 0;
              v348[1] = 0;
              v349 = 0;
              v346[0] = 0;
              v346[1] = 0;
              v347 = 0;
              v345 = 0;
              if (v227)
              {
                v228 = 0;
                v230 = v323;
                v229 = v325;
                do
                {
                  v344 = *(*v362 + 8 * v228);
                  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::try_emplace<unsigned int &>(v346, &v344, &v345, &v369);
                  v228 = v345 + 1;
                  v345 = v228;
                }

                while (v228 < v227);
                v231 = 0;
                LODWORD(v344) = 0;
                if (v226 <= 2)
                {
                  v232 = 2;
                }

                else
                {
                  v232 = v226;
                }

                do
                {
                  v233 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::operator[](v346, (*v362 + 8 * v231));
                  v234 = *v233;
                  v235 = v344;
                  if (*v233 == v344)
                  {
                    v235 = *v233;
                  }

                  else
                  {
                    if (v226 == 1)
                    {
                      goto LABEL_382;
                    }

                    v238 = 1;
                    v239 = 1;
                    do
                    {
                      while (!v239)
                      {
                        v239 = 0;
                        if (++v238 == v232)
                        {
                          goto LABEL_393;
                        }
                      }

                      v240 = *(v362 + 80 * v238);
                      v241 = *(v240 + 8 * v234);
                      v242 = *(v240 + 8 * v344);
                      v239 = v241 == v242;
                      ++v238;
                    }

                    while (v238 != v232);
                    if (v241 == v242)
                    {
LABEL_382:
                      *&v369 = 0;
                      v236 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(v348, &v344, &v369);
                      inserted = v369;
                      if (v236)
                      {
                        v235 = v344;
                      }

                      else
                      {
                        inserted = llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::InsertIntoBucketImpl<unsigned int>(v348, &v344, v369);
                        v235 = v344;
                        *inserted = v344;
                      }

                      inserted[1] = v234;
                    }
                  }

LABEL_393:
                  v231 = v235 + 1;
                  LODWORD(v344) = v231;
                }

                while (v231 < v227);
              }

              else
              {
                v230 = v323;
                v229 = v325;
              }

              v243 = 0;
              v244 = (v229 - v230) >> 3;
              while (!v227)
              {
LABEL_408:
                if (++v243 == v226)
                {
                  *&v369 = v370;
                  *(&v369 + 1) = 0xC00000000;
                  v250 = v191[6];
                  v251 = v191[7];
                  v38 = a3;
                  if (v250 != v251)
                  {
                    v252 = 0;
                    do
                    {
                      if (v349)
                      {
                        v253 = (v349 - 1) & (37 * v252);
                        v254 = *(v348[0] + 8 * v253);
                        if (v254 == v252)
                        {
LABEL_413:
                          v255 = *(v191[6] + 8 * (v252 + v244));
                          LODWORD(v344) = v252;
                          v256 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::operator[](v348, &v344);
                          mlir::RewriterBase::replaceAllUsesWith(a1, v255, *(v191[6] + 8 * (*v256 + v244)));
                          llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v369, v252 + v244);
                        }

                        else
                        {
                          v257 = 1;
                          while (v254 != -1)
                          {
                            v258 = v253 + v257++;
                            v253 = v258 & (v349 - 1);
                            v254 = *(v348[0] + 8 * v253);
                            if (v254 == v252)
                            {
                              goto LABEL_413;
                            }
                          }
                        }
                      }

                      ++v252;
                      v250 += 8;
                    }

                    while (v250 != v251);
                    if (DWORD2(v369))
                    {
                      v259 = 4 * DWORD2(v369);
                      v260 = v369 - 4;
                      do
                      {
                        mlir::Block::eraseArgument(v191, *(v260 + v259));
                        v259 -= 4;
                      }

                      while (v259);
                    }
                  }

                  *&v357 = &v358;
                  *(&v357 + 1) = 0x200000000;
                  if (DWORD2(v371))
                  {
                    llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,8u>>::operator=(&v357, &v371);
                  }

                  v37 = a2;
                  if (v369 != v370)
                  {
                    free(v369);
                  }

                  MEMORY[0x25F891030](v346[0], 8);
                  MEMORY[0x25F891030](v348[0], 4);
LABEL_428:
                  llvm::SmallVector<llvm::SmallVector<mlir::Value,8u>,2u>::~SmallVector(&v371);
                  llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,8u>>::operator=(&v362, &v357);
                  llvm::SmallVector<llvm::SmallVector<mlir::Value,8u>,2u>::~SmallVector(&v357);
                  v261 = *v191;
                  if (*v191)
                  {
                    do
                    {
                      InterfaceFor = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(*(*(v261[2] + 16) + 32));
                      v263 = (v261 - ((v261[2] + 16 * ((*(v261[2] + 44) >> 23) & 1) + ((*(v261[2] + 44) >> 21) & 0x7F8) + 71) & 0x1FFFFFFFF8)) >> 5;
                      (*InterfaceFor)(&v371);
                      mlir::MutableOperandRange::append(&v371 + 8, *v362 & 0xFFFFFFFFFFFFFFF9, *(v362 + 8));
                      if (*(&v372 + 1) != (&v373 + 8))
                      {
                        free(*(&v372 + 1));
                      }

                      v261 = *v261;
                    }

                    while (v261);
                  }

                  v264 = *(v341 + 18);
                  if (v264)
                  {
                    v265 = 0;
                    do
                    {
                      v266 = *(*(v341 + 8) + 8 * v265++);
                      v267 = *v266;
                      if (*v266)
                      {
                        do
                        {
                          v268 = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(*(*(v267[2] + 16) + 32));
                          v269 = (v267 - ((v267[2] + 16 * ((*(v267[2] + 44) >> 23) & 1) + ((*(v267[2] + 44) >> 21) & 0x7F8) + 71) & 0x1FFFFFFFF8)) >> 5;
                          (*v268)(&v371);
                          mlir::MutableOperandRange::append(&v371 + 8, *(v362 + 80 * v265) & 0xFFFFFFFFFFFFFFF9, *(v362 + 80 * v265 + 8));
                          if (*(&v372 + 1) != (&v373 + 8))
                          {
                            free(*(&v372 + 1));
                          }

                          v267 = *v267;
                        }

                        while (v267);
                      }
                    }

                    while (v265 != v264);
                  }

                  llvm::SmallVector<llvm::SmallVector<mlir::Value,8u>,2u>::~SmallVector(&v362);
                  if (v366 != v368)
                  {
                    free(v366);
                  }

                  v189 = v341;
                  v190 = *(v341 + 18);
                  v50 = v313;
                  LODWORD(v53) = v314;
                  if (!v190)
                  {
LABEL_325:
                    LODWORD(v190) = 1;
                    goto LABEL_335;
                  }

LABEL_315:
                  v193 = v189[8];
                  v194 = &v193[v190];
                  do
                  {
                    v195 = *v193;
                    while (1)
                    {
                      v196 = *v195;
                      if (!*v195)
                      {
                        break;
                      }

                      v197 = v196[1];
                      if (v197)
                      {
                        v198 = *v196;
                        *v197 = *v196;
                        if (v198)
                        {
                          *(v198 + 8) = v196[1];
                        }
                      }

                      v196[3] = v191;
                      v196[1] = v191;
                      v199 = *v191;
                      *v196 = *v191;
                      if (v199)
                      {
                        *(v199 + 8) = v196;
                      }

                      *v191 = v196;
                    }

                    (*(*a1 + 24))(a1);
                    ++v193;
                  }

                  while (v193 != v194);
                  goto LABEL_325;
                }
              }

              v245 = 0;
              while (2)
              {
                if (v349)
                {
                  v246 = (v349 - 1) & (37 * v245);
                  v247 = *(v348[0] + 8 * v246);
                  if (v245 != v247)
                  {
                    v248 = 1;
                    while (v247 != -1)
                    {
                      v249 = v246 + v248++;
                      v246 = v249 & (v349 - 1);
                      v247 = *(v348[0] + 8 * v246);
                      if (v245 == v247)
                      {
                        goto LABEL_407;
                      }
                    }

                    goto LABEL_406;
                  }
                }

                else
                {
LABEL_406:
                  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v371 + 80 * v243, *(*(v362 + 80 * v243) + 8 * v245));
                }

LABEL_407:
                if (++v245 == v227)
                {
                  goto LABEL_408;
                }

                continue;
              }
            }

            goto LABEL_328;
          }
        }

        while (mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(*(*(v203[2] + 16) + 32)));
        LODWORD(v190) = 0;
        LODWORD(v53) = v314;
LABEL_335:
        v77 = v319;
LABEL_336:
        v77 |= v190;
        v189 += 14;
      }

      while (v189 != v327);
      v189 = v354;
      v270 = __p;
LABEL_445:
      if (v354 != v356)
      {
        free(v354);
      }

      v76 = v310;
      v74 = v311;
      do
      {
LABEL_448:
        v74 += 40;
        if (v74 == v76)
        {
          goto LABEL_451;
        }
      }

      while ((*v74 | 0x1000) == 0xFFFFFFFFFFFFF000);
      if (v74 != v76)
      {
        continue;
      }

      break;
    }

LABEL_451:
    llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::destroyAll(v50, v53);
    MEMORY[0x25F891030](v50, 8);
    if (v77)
    {
      llvm::SetVector<mlir::Region *,llvm::SmallVector<mlir::Region *,1u>,llvm::DenseSet<mlir::Region *,llvm::DenseMapInfo<mlir::Region *,void>>,1u>::insert(&v350, &v343);
      v315 = 1;
    }

LABEL_454:
    v271 = v343;
    for (m = v343[1]; m != v271; m = *(m + 8))
    {
      v273 = m - 8;
      if (!m)
      {
        v273 = 0;
      }

      v274 = v273 + 32;
      for (n = *(v273 + 40); n != v274; n = *(n + 8))
      {
        v276 = *(n + 44);
        if ((v276 & 0x7FFFFF) != 0)
        {
          v277 = n + 16 * ((v276 >> 23) & 1) + ((v276 >> 21) & 0x7F8) + 32 * *(n + 40) + 64;
          v278 = 24 * (v276 & 0x7FFFFF);
          do
          {
            *&v371 = v277;
            llvm::SetVector<mlir::Region *,llvm::SmallVector<mlir::Region *,1u>,llvm::DenseSet<mlir::Region *,llvm::DenseMapInfo<mlir::Region *,void>>,1u>::insert(&v350, &v371);
            v277 += 24;
            v278 -= 24;
          }

          while (v278);
        }
      }
    }

    v45 = v352;
    v39 = v334;
  }

  while (v352);
LABEL_468:
  if (v351[1] != &v353)
  {
    free(v351[1]);
  }

  MEMORY[0x25F891030](v350, 8);
  LODWORD(v358) = 0;
  v357 = 0u;
  v359 = v361;
  v360 = 0x100000000;
  if (!v38)
  {
    goto LABEL_521;
  }

  do
  {
    *&v371 = v37;
    llvm::SetVector<mlir::Region *,llvm::SmallVector<mlir::Region *,1u>,llvm::DenseSet<mlir::Region *,llvm::DenseMapInfo<mlir::Region *,void>>,1u>::insert(&v357, &v371);
    v37 += 3;
    v39 -= 24;
  }

  while (v39);
  v279 = v360;
  if (v360)
  {
    v280 = 0;
    do
    {
      v281 = *(v359 + v279 - 1);
      llvm::SetVector<mlir::Region *,llvm::SmallVector<mlir::Region *,1u>,llvm::DenseSet<mlir::Region *,llvm::DenseMapInfo<mlir::Region *,void>>,1u>::pop_back(&v357);
      v282 = *(v281 + 8);
      for (ii = v281; v282 != ii; v282 = *(v335 + 8))
      {
        v335 = v282;
        if (v282)
        {
          v283 = (v282 - 8);
        }

        else
        {
          v283 = 0;
        }

        *&v371 = &v372;
        *(&v371 + 1) = 0x600000000;
        v284 = v283[6];
        v338 = v283[7];
        v342 = v283;
        if (v284 == v338)
        {
          v302 = 0;
        }

        else
        {
          v332 = v280;
          v285 = 0;
          do
          {
            v286 = *v342;
            if (*v342)
            {
              v287 = 0;
              v288 = 1;
              while (1)
              {
                v289 = llvm::DefaultDoCastIfPossible<mlir::BranchOpInterface,mlir::Operation *,llvm::CastInfo<mlir::BranchOpInterface,mlir::Operation *,void>>::doCastIfPossible(*(*(v286[2] + 16) + 32));
                if (!v289)
                {
                  break;
                }

                (*v290)(&v362, v290, v289, (v286 - ((v286[2] + 16 * ((*(v286[2] + 44) >> 23) & 1) + ((*(v286[2] + 44) >> 21) & 0x7F8) + 71) & 0x1FFFFFFFF8)) >> 5);
                v291 = *(*(*(&v362 + 1) + 72) + 32 * v363 + 32 * v285 + 24);
                v292 = v291 == v287 || v287 == 0;
                if (v287)
                {
                  v293 = 4 * (v291 != v287);
                }

                else
                {
                  v287 = *(*(*(&v362 + 1) + 72) + 32 * v363 + 32 * v285 + 24);
                  v293 = 6;
                }

                if (*(&v363 + 1) != (&v364 + 8))
                {
                  free(*(&v363 + 1));
                }

                v288 &= v292;
                if (v293 == 6 || v293 == 0)
                {
                  v286 = *v286;
                  if (v286)
                  {
                    continue;
                  }
                }

                if (((v287 != 0) & v288) == 1)
                {
                  llvm::SmallVectorTemplateBase<unsigned long,true>::push_back(&v371, v285);
                  mlir::RewriterBase::replaceAllUsesWith(a1, *v284, v287);
                }

                break;
              }
            }

            ++v285;
            ++v284;
          }

          while (v284 != v338);
          v295 = v371;
          if (DWORD2(v371))
          {
            v296 = v371 + 8 * DWORD2(v371);
            do
            {
              v298 = *(v296 - 8);
              v296 -= 8;
              v297 = v298;
              mlir::Block::eraseArgument(v342, v298);
              v299 = *v342;
              if (*v342)
              {
                do
                {
                  v300 = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(*(*(v299[2] + 16) + 32));
                  v301 = (v299 - ((v299[2] + 16 * ((*(v299[2] + 44) >> 23) & 1) + ((*(v299[2] + 44) >> 21) & 0x7F8) + 71) & 0x1FFFFFFFF8)) >> 5;
                  (*v300)(&v362);
                  mlir::MutableOperandRange::erase((&v362 + 8), v297 - v362, 1u);
                  if (*(&v363 + 1) != (&v364 + 8))
                  {
                    free(*(&v363 + 1));
                  }

                  v299 = *v299;
                }

                while (v299);
              }
            }

            while (v296 != v295);
            v295 = v371;
            v302 = DWORD2(v371) != 0;
          }

          else
          {
            v302 = 0;
          }

          v280 = v332;
          if (v295 != &v372)
          {
            free(v295);
          }
        }

        for (jj = *(v342 + 5); jj != (v342 + 32); jj = *(jj + 8))
        {
          v304 = *(jj + 44);
          if ((v304 & 0x7FFFFF) != 0)
          {
            v305 = jj + 16 * ((v304 >> 23) & 1) + ((v304 >> 21) & 0x7F8) + 32 * *(jj + 40) + 64;
            v306 = 24 * (v304 & 0x7FFFFF);
            do
            {
              *&v371 = v305;
              llvm::SetVector<mlir::Region *,llvm::SmallVector<mlir::Region *,1u>,llvm::DenseSet<mlir::Region *,llvm::DenseMapInfo<mlir::Region *,void>>,1u>::insert(&v357, &v371);
              v305 += 24;
              v306 -= 24;
            }

            while (v306);
          }
        }

        v280 |= v302;
      }

      v279 = v360;
    }

    while (v360);
  }

  else
  {
LABEL_521:
    v280 = 0;
  }

  if (v359 != v361)
  {
    free(v359);
  }

  MEMORY[0x25F891030](v357, 8);
  v42 = v315 | v280;
LABEL_525:
  v307 = *MEMORY[0x277D85DE8];
  return (v328 | v316 | v42) & 1;
}

void llvm::post_order<mlir::Block *>(uint64_t a1, char *a2)
{
  v41[40] = *MEMORY[0x277D85DE8];
  llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::po_iterator(&__src, a2);
  memset(&v17[1], 0, 328);
  v16 = 0;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v17[0] = &v17[2];
  HIDWORD(v17[1]) = 8;
  v3 = v21;
  if (v21 == 1)
  {
    v34 = v38;
    v4 = HIDWORD(v19);
    if (HIDWORD(v19))
    {
      memmove(v38, __src, 8 * HIDWORD(v19));
    }
  }

  else
  {
    v34 = __src;
    __src = &v22;
    v4 = HIDWORD(v19);
  }

  v35 = __PAIR64__(v4, v19);
  v36 = v20;
  v37 = v3;
  v19 = 8;
  v20 = 0;
  v21 = 1;
  v39 = v41;
  v40 = 0x800000000;
  if (v24)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v39, &v23);
  }

  v26 = v30;
  v27 = 8;
  v28 = v12;
  v29 = 1;
  v31 = v33;
  v32 = 0x800000000;
  if (LODWORD(v17[1]))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v31, v17);
  }

  v5 = v37;
  if (v37 == 1)
  {
    *a1 = a1 + 24;
    v6 = HIDWORD(v35);
    if (HIDWORD(v35))
    {
      memmove((a1 + 24), v34, 8 * HIDWORD(v35));
    }
  }

  else
  {
    *a1 = v34;
    v34 = v38;
    v6 = HIDWORD(v35);
  }

  *(a1 + 88) = a1 + 104;
  v7 = v36;
  *(a1 + 8) = v35;
  *(a1 + 12) = v6;
  *(a1 + 16) = v7;
  *(a1 + 20) = v5;
  v35 = 8;
  v36 = 0;
  v37 = 1;
  *(a1 + 96) = 0x800000000;
  if (v40)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(a1 + 88, &v39);
  }

  v8 = v29;
  if (v29 == 1)
  {
    *(a1 + 424) = a1 + 448;
    v9 = HIDWORD(v27);
    if (HIDWORD(v27))
    {
      memmove((a1 + 448), v26, 8 * HIDWORD(v27));
    }
  }

  else
  {
    *(a1 + 424) = v26;
    v26 = v30;
    v9 = HIDWORD(v27);
  }

  v10 = v28;
  *(a1 + 432) = v27;
  *(a1 + 436) = v9;
  *(a1 + 440) = v10;
  *(a1 + 444) = v8;
  v27 = 8;
  v28 = 0;
  v29 = 1;
  *(a1 + 512) = a1 + 528;
  *(a1 + 520) = 0x800000000;
  if (v32)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(a1 + 512, &v31);
  }

  if (v31 != v33)
  {
    free(v31);
  }

  if ((v29 & 1) == 0)
  {
    free(v26);
  }

  if (v39 != v41)
  {
    free(v39);
  }

  if ((v37 & 1) == 0)
  {
    free(v34);
  }

  if (v17[0] != &v17[2])
  {
    free(v17[0]);
  }

  if (v23 != &v25)
  {
    free(v23);
  }

  if ((v21 & 1) == 0)
  {
    free(__src);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::iterator_range<llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>::begin(const void **a1, llvm::SmallPtrSetImplBase *a2)
{
  v3 = llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(a1, a1 + 3, a2);
  *(v3 + 11) = v3 + 104;
  result = v3 + 88;
  *(result + 8) = 0x800000000;
  if (*(a2 + 24))
  {

    return llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(result, a2 + 11);
  }

  return result;
}

uint64_t llvm::iterator_range<llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>::end(const void **a1, uint64_t a2)
{
  v3 = llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(a1, a1 + 3, (a2 + 424));
  *(v3 + 11) = v3 + 104;
  result = v3 + 88;
  *(result + 8) = 0x800000000;
  if (*(a2 + 520))
  {

    return llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(result, (a2 + 512));
  }

  return result;
}

void *processValue(void *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    v4 = result;
    while (1)
    {
      v5 = v2[2];
      v6 = (*(v5 + 46) & 0x80) != 0 ? *(v5 + 72) : 0;
      v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
      if (!(*(**(v5 + 48) + 32))(*(v5 + 48), v7) || (v8 = llvm::DefaultDoCastIfPossible<mlir::BranchOpInterface,mlir::Operation *,llvm::CastInfo<mlir::BranchOpInterface,mlir::Operation *,void>>::doCastIfPossible(v5)) == 0 || (v10 = (*(v9 + 8))(v9, v8, (v2 - v6) >> 5), (v11 & 1) == 0) || (v15[0] = v10, (result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>((a2 + 8), v15)) != 0))
      {
        v15[0] = v2[2];
        result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation const*>((a2 + 32), v15);
        if (result)
        {
          break;
        }
      }

      v2 = *v2;
      if (!v2)
      {
        return result;
      }
    }

    if (!v4 || (v12 = v4[1] & 7, v12 == 7))
    {
      v14 = v4;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2 + 8, &v14, v15);
    }

    else
    {
      if (v12 == 6)
      {
        v13 = &v4[3 * v4[2] + 15];
      }

      else
      {
        v13 = &v4[2 * v12 + 2];
      }

      v14 = v13;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2 + 32, &v14, v15);
    }

    *a2 |= v16;
  }

  return result;
}

uint64_t llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::po_iterator(uint64_t a1, char *a2)
{
  v7 = a2;
  *a1 = a1 + 24;
  *(a1 + 8) = 8;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 88) = a1 + 104;
  v4 = a1 + 88;
  *(a1 + 96) = 0x800000000;
  llvm::SmallPtrSetImpl<mlir::Block *>::insert(a1, a2, v8);
  mlir::SuccessorRange::SuccessorRange(v8, a2);
  v6 = *&v8[0];
  mlir::SuccessorRange::SuccessorRange(v8, a2);
  llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::emplace_back<mlir::Block *&,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(v4, &v7, &v6, v8);
  llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::traverseChild(a1);
  return a1;
}

uint64_t llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::traverseChild(uint64_t result)
{
  v1 = result + 88;
  v2 = *(result + 88) + 40 * *(result + 96);
  v3 = *(v2 - 24);
  if (v3 != *(v2 - 8))
  {
    v4 = result;
    do
    {
      v5 = *(v2 - 32);
      *(v2 - 24) = v3 + 1;
      v7 = *(v5 + 32 * v3 + 24);
      result = llvm::SmallPtrSetImpl<mlir::Block *>::insert(v4, v7, &v8);
      if (v9 == 1)
      {
        mlir::SuccessorRange::SuccessorRange(&v8, v7);
        v6 = v8;
        mlir::SuccessorRange::SuccessorRange(&v8, v7);
        result = llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::emplace_back<mlir::Block *&,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(v1, &v7, &v6, &v8);
      }

      v2 = *(v4 + 88) + 40 * *(v4 + 96);
      v3 = *(v2 - 24);
    }

    while (v3 != *(v2 - 8));
  }

  return result;
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::BranchOpInterface,mlir::Operation *,llvm::CastInfo<mlir::BranchOpInterface,mlir::Operation *,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (v1)
  {
    mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  }

  return v1;
}

BOOL llvm::function_ref<BOOL ()(mlir::BlockArgument)>::callback_fn<deleteDeadness(mlir::RewriterBase &,llvm::MutableArrayRef<mlir::Region>,anonymous namespace::LiveMap &)::$_0>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = a2;
  return llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>((v2 + 8), &v4) == 0;
}

void llvm::SetVector<mlir::Region *,llvm::SmallVector<mlir::Region *,1u>,llvm::DenseSet<mlir::Region *,llvm::DenseMapInfo<mlir::Region *,void>>,1u>::insert(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8))
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>,mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, a2, v12);
    if (v12[16] == 1)
    {
      llvm::SmallVectorTemplateBase<mlir::Region *,true>::push_back(a1 + 24, *a2);
    }
  }

  else
  {
    v4 = (a1 + 24);
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *a2;
      v7 = 8 * v5;
      v8 = *(a1 + 24);
      while (*v8 != v6)
      {
        ++v8;
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v8 = *(a1 + 24);
    }

    if (v8 == (*(a1 + 24) + 8 * v5))
    {
      v6 = *a2;
LABEL_12:
      llvm::SmallVectorTemplateBase<mlir::Region *,true>::push_back(a1 + 24, v6);
      v9 = *(a1 + 32);
      if (v9 >= 2)
      {
        v10 = *v4;
        v11 = 8 * v9;
        do
        {
          llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>,mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, v10++, v12);
          v11 -= 8;
        }

        while (v11);
      }
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>,mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>,mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::LookupBucketFor<mlir::Region *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>,mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::InsertIntoBucketImpl<mlir::Region *>(a1, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>,mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::LookupBucketFor<mlir::Region *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>,mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::InsertIntoBucketImpl<mlir::Region *>(uint64_t a1, void *a2, void *a3)
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

  llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>,mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::LookupBucketFor<mlir::Region *>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((8 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>,mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
    v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 8;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
      if (v17.i8[0])
      {
        *(v16 - 1) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 2;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>,mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0x1FFFFFFFFFFFFFFFLL;
    v9 = v8 & 0x1FFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x1FFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 8);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 1) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 2;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>,mlir::Region *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseSetPair<mlir::Region *>>::LookupBucketFor<mlir::Region *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

int32x2_t *llvm::SetVector<mlir::Region *,llvm::SmallVector<mlir::Region *,1u>,llvm::DenseSet<mlir::Region *,llvm::DenseMapInfo<mlir::Region *,void>>,1u>::pop_back(int32x2_t *result)
{
  v1 = result[4].u32[0];
  v2 = result[2].i32[0];
  if (v2)
  {
    v3 = *result;
    v4 = *(*&result[3] + 8 * v1 - 8);
    v5 = v2 - 1;
    v6 = ((v4 >> 4) ^ (v4 >> 9)) & (v2 - 1);
    v7 = *(*result + 8 * v6);
    if (v7 == v4)
    {
LABEL_3:
      *(*&v3 + 8 * v6) = -8192;
      result[1] = vadd_s32(result[1], 0x1FFFFFFFFLL);
    }

    else
    {
      v8 = 1;
      while (v7 != -4096)
      {
        v9 = v6 + v8++;
        v6 = v9 & v5;
        v7 = *(*&v3 + 8 * v6);
        if (v7 == v4)
        {
          goto LABEL_3;
        }
      }
    }
  }

  result[4].i32[0] = v1 - 1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::LookupBucketFor<mlir::SuccessorRange>(uint64_t a1, int a2, void *a3, unint64_t *a4)
{
  v4 = a4;
  v47 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v16 = 0;
    result = 0;
    goto LABEL_37;
  }

  v7 = a1;
  v8 = *a3;
  v9 = a3[1];
  v10 = 0;
  if (v9)
  {
    v11 = v9 - 1;
    if ((v9 - 1) >= 7)
    {
      v11 = 7;
    }

    v12 = v11 + 1;
    v13 = 8 * v11 + 8;
    v14 = (v8 + 24);
    do
    {
      v15 = *v14;
      v14 += 4;
      *&__src[v10] = v15;
      v10 += 8;
    }

    while (v13 != v10);
  }

  else
  {
    v12 = 0;
  }

  if (v12 == v9)
  {
    v18 = llvm::hashing::detail::hash_short(__src, v10, 0xFF51AFD7ED558CCDLL);
  }

  else
  {
    v44[0] = xmmword_25D0A0610;
    v44[1] = xmmword_25D0A0620;
    v44[2] = xmmword_25D0A0630;
    v45 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v44, __src, a3, a4);
    v19 = v9 - 1;
    v20 = v8 + 24;
    v21 = 64;
    do
    {
      v22 = 0;
      v23 = (v20 + 32 * v12);
      do
      {
        v24 = v12;
        v25 = v22 + 8;
        v26 = *v23;
        v23 += 4;
        *&__src[v22] = v26;
        ++v12;
        if (v19 == v24)
        {
          break;
        }

        v27 = v22 >= 0x31;
        v22 += 8;
      }

      while (!v27);
      std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, &__src[v25], &v47);
      llvm::hashing::detail::hash_state::mix(v44, __src, v28, v29);
      v21 += v25;
    }

    while (v19 != v24);
    v18 = llvm::hashing::detail::hash_state::finalize(v44, v21);
    v7 = a1;
    v4 = a4;
  }

  v30 = 0;
  v31 = (a2 - 1) & v18;
  v32 = *a3;
  v33 = a3[1];
  for (i = 1; ; ++i)
  {
    v16 = (v7 + 40 * v31);
    v35 = *v16;
    if (*v16 != -8192)
    {
      break;
    }

    if (v32 == -8192)
    {
      goto LABEL_36;
    }

LABEL_29:
    if (v30)
    {
      v39 = 0;
    }

    else
    {
      v39 = v35 == -8192;
    }

    if (v39)
    {
      v30 = (v7 + 40 * v31);
    }

    v40 = v31 + i;
    v31 = v40 & (a2 - 1);
  }

  if (v35 != -4096)
  {
    if (v33 == v16[1])
    {
      if (!v33)
      {
        goto LABEL_36;
      }

      v36 = (v35 + 24);
      v37 = (*a3 + 24);
      v38 = a3[1];
      while (*v37 == *v36)
      {
        v36 += 4;
        v37 += 4;
        if (!--v38)
        {
          goto LABEL_36;
        }
      }
    }

    goto LABEL_29;
  }

  if (v32 == -4096)
  {
LABEL_36:
    result = 1;
    goto LABEL_37;
  }

  result = 0;
  if (v30)
  {
    v16 = v30;
  }

LABEL_37:
  *v4 = v16;
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t anonymous namespace::BlockEquivalenceData::getOrderOf(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8) & 7;
  if (a2)
  {
    v5 = (*(a2 + 8) & 7) == 7;
    if (v4 == 7)
    {
      return *(a2 + 24);
    }
  }

  v5 = (*(a2 + 8) & 7) == 7;
  if (v4 == 7)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    v8 = *(v7 + 8) & 7;
    if (v8 == 6)
    {
      v7 += 24 * *(v7 + 16) + 120;
    }

    else
    {
      v7 += 16 * v8 + 16;
    }
  }

  v14 = v7;
  v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::doFind<mlir::Operation const*>((a1 + 16), &v14);
  v10 = *(a1 + 16) + 16 * *(a1 + 32);
  if (v9)
  {
    v10 = v9;
  }

  v11 = *(v10 + 8);
  v12 = *(a2 + 8);
  if ((v12 & 7) == 6)
  {
    v13 = *(a2 + 16) + 6;
  }

  else
  {
    v13 = v12 & 7;
  }

  return (v13 + v11);
}

void llvm::SmallVectorTemplateBase<std::pair<int,int>,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

uint64_t std::__any_of[abi:nn200100]<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,std::__identity,mlir::Operation::isUsedOutsideOfBlock(mlir::Block *)::{lambda(mlir::OpResult)#1}>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a4)
  {
    return 0;
  }

LABEL_3:
  if (!a2)
  {
    v10 = a1;
    goto LABEL_12;
  }

  if (!a1)
  {
    v7 = 0;
    v8 = a2;
    goto LABEL_10;
  }

  v6 = a1[1] & 7;
  v7 = a1;
  v8 = a2;
  if (v6 == 6)
  {
    goto LABEL_10;
  }

  v9 = (5 - v6);
  v8 = a2 - v9;
  if (a2 > v9)
  {
    v7 = &a1[-2 * v9];
LABEL_10:
    v10 = &v7[-3 * v8];
    goto LABEL_12;
  }

  v10 = &a1[-2 * a2];
  do
  {
LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      if (++a2 == a4)
      {
        return 0;
      }

      goto LABEL_3;
    }
  }

  while (*(v10[2] + 16) == a5);
  return 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::LookupBucketFor<mlir::Block *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::InsertIntoBucketImpl<mlir::Block *>(a1, a2, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::LookupBucketFor<mlir::Block *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::InsertIntoBucketImpl<mlir::Block *>(uint64_t a1, void *a2, void *a3)
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

  llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::LookupBucketFor<mlir::Block *>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((8 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::moveFromOldBuckets(a1, v4, &v4[v3]);

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
    v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 8;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
      if (v17.i8[0])
      {
        *(v16 - 1) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 2;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0x1FFFFFFFFFFFFFFFLL;
    v9 = v8 & 0x1FFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x1FFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 8);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 1) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 2;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::LookupBucketFor<mlir::Block *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<anonymous namespace::BlockMergeCluster,false>::destroy_range(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      std::__tree<std::pair<int,int>>::destroy(*(v2 - 16));
      v4 = *(v2 - 48);
      if ((v2 - 32) != v4)
      {
        free(v4);
      }

      MEMORY[0x25F891030](*(v2 - 72), 8);
      result = MEMORY[0x25F891030](*(v2 - 96), 8);
      v2 -= 112;
    }

    while (v2 != v3);
  }

  return result;
}

void std::__tree<std::pair<int,int>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::pair<int,int>>::destroy(*a1);
    std::__tree<std::pair<int,int>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void llvm::SmallVectorTemplateBase<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

void llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,8u>>::assign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 12) >= a2)
  {
    v15 = *(a1 + 8);
    if (v15 >= a2)
    {
      v16 = a2;
    }

    else
    {
      v16 = *(a1 + 8);
    }

    if (v16)
    {
      v17 = *a1;
      do
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=(v17, a3);
        v17 += 80;
        --v16;
      }

      while (v16);
      v15 = *(a1 + 8);
    }

    v18 = v15 - a2;
    if (v15 >= a2)
    {
      if (v15 > a2)
      {
        v21 = 5 * v15;
        v22 = (*a1 + 16 * v21 - 80);
        v23 = 80 * a2 - 16 * v21;
        do
        {
          if (v22 + 2 != *v22)
          {
            free(*v22);
          }

          v22 -= 10;
          v23 += 80;
        }

        while (v23);
      }
    }

    else
    {
      v19 = (*a1 + 80 * v15);
      do
      {
        *v19 = v19 + 2;
        v19[1] = 0x800000000;
        if (*(a3 + 8))
        {
          llvm::SmallVectorImpl<mlir::Value>::operator=(v19, a3);
        }

        v19 += 10;
      }

      while (!__CFADD__(v18++, 1));
    }
  }

  else
  {
    v24 = 0;
    v6 = (a1 + 16);
    v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 80, &v24);
    v8 = v7;
    v9 = a2;
    do
    {
      *v8 = v8 + 2;
      v8[1] = 0x800000000;
      if (*(a3 + 8))
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=(v8, a3);
      }

      v8 += 10;
      --v9;
    }

    while (v9);
    v10 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = &v10[80 * v11 - 80];
      v13 = -80 * v11;
      do
      {
        if (v12 + 2 != *v12)
        {
          free(*v12);
        }

        v12 -= 10;
        v13 += 80;
      }

      while (v13);
      v10 = *a1;
    }

    v14 = v24;
    if (v10 != v6)
    {
      free(v10);
    }

    *a1 = v7;
    *(a1 + 12) = v14;
  }

  *(a1 + 8) = a2;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::operator[](uint64_t *a1, _DWORD *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(a1, a2, &v7);
  inserted = v7;
  if ((v4 & 1) == 0)
  {
    inserted = llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::InsertIntoBucketImpl<unsigned int>(a1, a2, v7);
    *inserted = *a2;
  }

  return inserted + 1;
}

void llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,8u>>::clear(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (*a1 + 80 * v2 - 80);
    v4 = -80 * v2;
    do
    {
      if (v3 + 2 != *v3)
      {
        free(*v3);
      }

      v3 -= 10;
      v4 += 80;
    }

    while (v4);
  }

  *(a1 + 8) = 0;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(uint64_t *a1, _DWORD *a2, void *a3)
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
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
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

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::InsertIntoBucketImpl<unsigned int>(uint64_t a1, _DWORD *a2, _DWORD *a3)
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

  llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -1)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((8 * v8), 4uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
    v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 3) + 4;
    v15 = vdupq_n_s64(v13);
    v16 = result + 16;
    do
    {
      v17 = vdupq_n_s64(v11);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_25D0A0500)));
      if (vuzp1_s16(v18, *v15.i8).u8[0])
      {
        *(v16 - 4) = -1;
      }

      if (vuzp1_s16(v18, *&v15).i8[2])
      {
        *(v16 - 2) = -1;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_25D0A04F0)))).i32[1])
      {
        *v16 = -1;
        v16[2] = -1;
      }

      v11 += 4;
      v16 += 8;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::moveFromOldBuckets(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0x1FFFFFFFFFFFFFFFLL;
    v9 = v8 & 0x1FFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x1FFFFFFFFFFFFFFFLL) - (v8 & 3) + 4;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vdupq_n_s64(v7);
      v14 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_25D0A0500)));
      if (vuzp1_s16(v14, *v11.i8).u8[0])
      {
        *(v12 - 4) = -1;
      }

      if (vuzp1_s16(v14, *&v11).i8[2])
      {
        *(v12 - 2) = -1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_25D0A04F0)))).i32[1])
      {
        *v12 = -1;
        v12[2] = -1;
      }

      v7 += 4;
      v12 += 8;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if (*a2 <= 0xFFFFFFFD)
    {
      v16 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(v5, a2, &v16);
      v15 = v16;
      *v16 = *a2;
      v15[1] = a2[1];
      ++*(v5 + 8);
    }

    a2 += 2;
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,8u>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = a2 + 16;
    v5 = *a2;
    if (*a2 == a2 + 16)
    {
      v10 = *(a2 + 8);
      v11 = *(a1 + 8);
      if (v11 >= v10)
      {
        v22 = *a1;
        if (v10)
        {
          v23 = 80 * v10;
          do
          {
            llvm::SmallVectorImpl<mlir::Value>::operator=(v22, v5);
            v5 += 80;
            v22 += 80;
            v23 -= 80;
          }

          while (v23);
          v24 = *a1;
          LODWORD(v11) = *(a1 + 8);
        }

        else
        {
          v24 = *a1;
        }

        v27 = v24 + 80 * v11;
        while (v27 != v22)
        {
          v29 = *(v27 - 80);
          v27 -= 80;
          v28 = v29;
          if ((v27 + 16) != v29)
          {
            free(v28);
          }
        }
      }

      else
      {
        if (*(a1 + 12) >= v10)
        {
          if (v11)
          {
            v25 = *a1;
            v26 = 80 * v11;
            do
            {
              llvm::SmallVectorImpl<mlir::Value>::operator=(v25, v5);
              v5 += 80;
              v25 += 80;
              v26 -= 80;
            }

            while (v26);
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,8u>>::clear(a1);
          v37 = 0;
          v12 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), v10, 80, &v37);
          v13 = v12;
          v14 = *a1;
          v15 = *(a1 + 8);
          if (v15)
          {
            v16 = 80 * v15;
            v17 = v12;
            do
            {
              *v17 = v17 + 2;
              v17[1] = 0x800000000;
              if (v14[2])
              {
                llvm::SmallVectorImpl<mlir::Value>::operator=(v17, v14);
              }

              v17 += 10;
              v14 += 20;
              v16 -= 80;
            }

            while (v16);
            v14 = *a1;
            v18 = *(a1 + 8);
            if (v18)
            {
              v19 = &v14[20 * v18 - 20];
              v20 = -80 * v18;
              do
              {
                if (v19 + 2 != *v19)
                {
                  free(*v19);
                }

                v19 -= 10;
                v20 += 80;
              }

              while (v20);
              v14 = *a1;
            }
          }

          v21 = v37;
          if (v14 != (a1 + 16))
          {
            free(v14);
          }

          v11 = 0;
          *a1 = v13;
          *(a1 + 12) = v21;
        }

        v30 = *(a2 + 8);
        if (v11 != v30)
        {
          v31 = *a2;
          v32 = *a1;
          v33 = 80 * v11;
          v34 = 80 * v30;
          do
          {
            v35 = (v32 + v33);
            *v35 = v32 + v33 + 16;
            v35[1] = 0x800000000;
            if (*(v31 + v33 + 8))
            {
              llvm::SmallVectorImpl<mlir::Value>::operator=(v35, v31 + v33);
            }

            v32 += 80;
            v34 -= 80;
            v31 += 80;
          }

          while (v33 != v34);
        }
      }

      *(a1 + 8) = v10;
      llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,8u>>::clear(a2);
    }

    else
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = &v6[80 * v7 - 80];
        v9 = -80 * v7;
        do
        {
          if (v8 + 2 != *v8)
          {
            free(*v8);
          }

          v8 -= 10;
          v9 += 80;
        }

        while (v9);
        v6 = *a1;
      }

      if (v6 != (a1 + 16))
      {
        free(v6);
      }

      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *a2 = v4;
      *(a2 + 8) = 0;
    }
  }

  return a1;
}

char **llvm::SmallVector<llvm::SmallVector<mlir::Value,8u>,2u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[80 * v3 - 80];
    v5 = -80 * v3;
    do
    {
      if (v4 + 2 != *v4)
      {
        free(*v4);
      }

      v4 -= 10;
      v5 += 80;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::destroyAll(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v2 = 40 * a2;
    v3 = (a1 + 32);
    do
    {
      if ((*(v3 - 4) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = *(v3 - 2);
        if (v3 != v4)
        {
          free(v4);
        }
      }

      v3 += 5;
      v2 -= 40;
    }

    while (v2);
  }
}

void llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<mlir::BlockArgument *>,void>(uint64_t a1, char *a2, char *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - a2) >> 3);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    LODWORD(v7) = *(a1 + 8);
  }

  if (a3 != v4)
  {
    v9 = (*a1 + 8 * v7);
    do
    {
      v10 = *v4;
      v4 += 8;
      *v9++ = *(v10 + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v4 != a3);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 3);
}

void llvm::SetVector<mlir::CallGraphNode::Edge,llvm::SmallVector<mlir::CallGraphNode::Edge,4u>,llvm::SmallDenseSet<mlir::CallGraphNode::Edge,4u,mlir::CallGraphNode::EdgeKeyInfo>,0u>::insert(uint64_t a1, unint64_t *a2)
{
  v10 = 0;
  if (llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::LookupBucketFor<mlir::CallGraphNode::Edge>(a1, *a2, &v10))
  {
    return;
  }

  v4 = v10;
  v11 = v10;
  v5 = *a1;
  v6 = *a1 >> 1;
  if (*a1)
  {
    v7 = 4;
  }

  else
  {
    v7 = *(a1 + 16);
  }

  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_14;
  }

  if (v7 + ~v6 - *(a1 + 4) <= v7 >> 3)
  {
LABEL_14:
    llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::LookupBucketFor<mlir::CallGraphNode::Edge>(a1, *a2, &v11);
    v5 = *a1;
    v4 = v11;
  }

  *a1 = v5 + 2;
  if (*v4 != -2)
  {
    --*(a1 + 4);
  }

  v8 = *a2;
  *v4 = v8;
  v9 = *(a1 + 48);
  if (v9 >= *(a1 + 52))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 40, (a1 + 56), v9 + 1, 8);
    LODWORD(v9) = *(a1 + 48);
  }

  *(*(a1 + 40) + 8 * v9) = v8;
  ++*(a1 + 48);
}

mlir::CallGraph *mlir::CallGraph::CallGraph(mlir::CallGraph *this, mlir::Operation *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = this + 40;
  *(this + 4) = 0;
  v5 = *(this + 12);
  v4 = (this + 48);
  *v4 = v5 | 1;
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::initEmpty(v4);
  *(this + 11) = this + 104;
  *(this + 12) = 0x400000000;
  *(this + 17) = 0;
  *(this + 36) |= 1u;
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::initEmpty(this + 36);
  *(this + 23) = this + 200;
  *(this + 24) = 0x400000000;
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  computeCallGraph(a2, this, v7, 0, 0);
  computeCallGraph(a2, this, v7, 0, 1);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(v7);
  MEMORY[0x25F891030](v7[0], 8);
  return this;
}

void computeCallGraph(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = *MEMORY[0x277D85DE8];
  v10 = llvm::DefaultDoCastIfPossible<mlir::CallOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallOpInterface,mlir::Operation *,void>>::doCastIfPossible(a1);
  if (a4 && a5 && v10)
  {
    v40 = (mlir::CallGraph::resolveCallable(a2, v10, v11, a3) & 0xFFFFFFFFFFFFFFF9 | 2);
    llvm::SetVector<mlir::CallGraphNode::Edge,llvm::SmallVector<mlir::CallGraphNode::Edge,4u>,llvm::SmallDenseSet<mlir::CallGraphNode::Edge,4u,mlir::CallGraphNode::EdgeKeyInfo>,0u>::insert(a4 + 8, &v40);
    goto LABEL_35;
  }

  if (v10)
  {
    goto LABEL_35;
  }

  v12 = llvm::DefaultDoCastIfPossible<mlir::CallableOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallableOpInterface,mlir::Operation *,void>>::doCastIfPossible(a1);
  if (v12)
  {
    v14 = (*v13)(v13, v12);
    if (!v14)
    {
      goto LABEL_35;
    }

    v15 = v14;
    v39 = 0;
    v16 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::LookupBucketFor<mlir::Region *>(*a2, *(a2 + 16), v14, &v39);
    v17 = v39;
    if (v16)
    {
      v18 = *(v39 + 8);
LABEL_17:
      v27 = *(a2 + 24) + 16 * v18;
      v29 = *(v27 + 8);
      v28 = (v27 + 8);
      if (!v29)
      {
        operator new();
      }

      a4 = *v28;
      goto LABEL_20;
    }

    v40 = v39;
    v19 = *(a2 + 8);
    v20 = *(a2 + 16);
    if (4 * v19 + 4 >= 3 * v20)
    {
      v20 *= 2;
    }

    else if (v20 + ~v19 - *(a2 + 12) > v20 >> 3)
    {
LABEL_12:
      *(a2 + 8) = v19 + 1;
      if (*v17 != -4096)
      {
        --*(a2 + 12);
      }

      *v17 = v15;
      *(v17 + 8) = 0;
      v22 = (a2 + 24);
      v21 = *(a2 + 24);
      v39 = 0;
      v40 = v15;
      v41 = 0;
      v23 = *(a2 + 32);
      if (v23 >= *(a2 + 36))
      {
        if (v21 <= &v40 && v21 + 16 * v23 > &v40)
        {
          v38 = &v40 - v21;
          llvm::SmallVectorTemplateBase<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>,false>::grow(a2 + 24, v23 + 1);
          v21 = *v22;
          v24 = &v38[*v22];
        }

        else
        {
          llvm::SmallVectorTemplateBase<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>,false>::grow(a2 + 24, v23 + 1);
          v21 = *v22;
          v24 = &v40;
        }
      }

      else
      {
        v24 = &v40;
      }

      v25 = *(a2 + 32);
      v26 = *v24;
      v24[1] = 0;
      *(v21 + 16 * v25) = v26;
      *(a2 + 32) = v25 + 1;
      std::unique_ptr<mlir::CallGraphNode>::reset[abi:nn200100](&v41, 0);
      std::unique_ptr<mlir::CallGraphNode>::reset[abi:nn200100](&v39, 0);
      v18 = *(a2 + 32) - 1;
      *(v17 + 8) = v18;
      goto LABEL_17;
    }

    llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::grow(a2, v20);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::LookupBucketFor<mlir::Region *>(*a2, *(a2 + 16), v15, &v40);
    v19 = *(a2 + 8);
    v17 = v40;
    goto LABEL_12;
  }

LABEL_20:
  v30 = *(a1 + 44);
  if ((v30 & 0x7FFFFF) != 0)
  {
    v31 = (((a1 + 16 * ((v30 >> 23) & 1) + ((v30 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
    v32 = &v31[3 * (v30 & 0x7FFFFF)];
    do
    {
      if (*v31 != v31)
      {
        for (i = v31[1]; i != v31; i = *(i + 8))
        {
          v34 = i - 8;
          if (!i)
          {
            v34 = 0;
          }

          if (*(v34 + 32) != v34 + 32)
          {
            break;
          }
        }

        if (i != v31)
        {
          v35 = i - 8;
          if (!i)
          {
            v35 = 0;
          }

          v36 = *(v35 + 40);
          v40 = v31;
          v41 = i;
          for (j = v36; j; v36 = j)
          {
            computeCallGraph(v36, a2, a3, a4, a5);
            mlir::Region::OpIterator::operator++(&v40);
          }
        }
      }

      v31 += 3;
    }

    while (v31 != v32);
  }

LABEL_35:
  v37 = *MEMORY[0x277D85DE8];
}

uint64_t *std::unique_ptr<mlir::CallGraphNode>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 48);
    if (v3 != (v2 + 64))
    {
      free(v3);
    }

    if ((*(v2 + 8) & 1) == 0)
    {
      MEMORY[0x25F891030](*(v2 + 16), 8);
    }

    JUMPOUT(0x25F891040);
  }

  return result;
}

uint64_t mlir::CallGraph::lookupNode(mlir::CallGraph *this, mlir::Region *a2)
{
  v8 = a2;
  v3 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::doFind<mlir::Region const*>(this, &v8);
  v4 = v3 == *this + 16 * *(this + 4) || v3 == 0;
  v5 = (v3 + 8);
  if (v4)
  {
    v5 = (this + 32);
  }

  v6 = *v5;
  if (v6 == *(this + 8))
  {
    return 0;
  }

  else
  {
    return *(*(this + 3) + 16 * v6 + 8);
  }
}

uint64_t mlir::CallGraph::resolveCallable(mlir::CallGraph *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a3 + 32))(a3, a2, a4);
  if (!v5)
  {
    return a1 + 136;
  }

  v7 = llvm::DefaultDoCastIfPossible<mlir::CallableOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallableOpInterface,mlir::Operation *,void>>::doCastIfPossible(v5);
  if (!v7)
  {
    return a1 + 136;
  }

  v8 = (*v6)(v6, v7);
  result = mlir::CallGraph::lookupNode(a1, v8);
  if (!result)
  {
    return a1 + 136;
  }

  return result;
}

BOOL llvm::iterator_facade_base<llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>,std::forward_iterator_tag,std::vector<mlir::CallGraphNode *> const,long,std::vector<mlir::CallGraphNode *> const*,std::vector<mlir::CallGraphNode *> const&>::operator!=(void *a1, void *a2)
{
  v3 = a1[10];
  v2 = a1[11];
  v4 = a2[10];
  if (v2 - v3 != a2[11] - v4)
  {
    return 1;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4 || *(v3 + 8) != *(v4 + 8) || *(v3 + 24) != *(v4 + 24))
    {
      return 1;
    }

    v3 += 32;
    v4 += 32;
  }

  v7 = a1 + 7;
  v6 = a1[7];
  v8 = v7[1] - v6;
  v10 = a2 + 7;
  v9 = a2[7];
  if (v8 == v10[1] - v9)
  {
    return memcmp(v6, v9, v8) != 0;
  }

  return 1;
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::initEmpty(_DWORD *a1)
{
  v1 = *a1;
  *a1 = *a1 & 1;
  if (v1)
  {
    v3 = a1 + 2;
    v2 = 4;
  }

  else
  {
    v2 = a1[4];
    if (!v2)
    {
      return;
    }

    v3 = *(a1 + 1);
  }

  memset_pattern16(v3, &memset_pattern, 8 * v2);
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::CallOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallOpInterface,mlir::Operation *,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (v1)
  {
    mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  }

  return v1;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::LookupBucketFor<mlir::CallGraphNode::Edge>(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v7 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = v4 - 1;
  v6 = (v4 - 1) & ((a2 >> 9) ^ a2);
  v7 = (v3 + 8 * v6);
  v8 = *v7;
  if (*v7 == a2)
  {
    result = 1;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    result = 1;
    while (v8 != -2)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -16;
      }

      if (v12)
      {
        v10 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v5;
      v7 = (v3 + 8 * (v13 & v5));
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v10)
    {
      v7 = v10;
    }
  }

LABEL_7:
  *a3 = v7;
  return result;
}

void llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::grow(uint64_t a1, unsigned int a2)
{
  v16[4] = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a2 > 4)
    {
      v14 = a2;
      *(a1 + 8) = llvm::allocate_buffer((8 * a2), 8uLL);
      *(a1 + 16) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::moveFromOldBuckets(a1, v6, &v6[v7]);
    v15 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F891030);
  }

  v8 = v16;
  for (i = 8; i != 40; i += 8)
  {
    v10 = *(a1 + i);
    if (v10 != -16 && v10 != -2)
    {
      *v8++ = v10;
    }
  }

  if (a2 > 4)
  {
    *a1 &= ~1u;
    v12 = a2;
    *(a1 + 8) = llvm::allocate_buffer((8 * a2), 8uLL);
    *(a1 + 16) = v12;
  }

  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::moveFromOldBuckets(a1, v16, v8);
  v13 = *MEMORY[0x277D85DE8];
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::moveFromOldBuckets(_DWORD *a1, unint64_t *a2, unint64_t *a3)
{
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::initEmpty(a1);
  while (a2 != a3)
  {
    v6 = *a2;
    if (*a2 != -16 && v6 != -2)
    {
      v8 = 0;
      llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::LookupBucketFor<mlir::CallGraphNode::Edge>(a1, v6, &v8);
      *v8 = *a2;
      *a1 += 2;
    }

    ++a2;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::LookupBucketFor<mlir::Region *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

char *llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::LookupBucketFor<mlir::Region *>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          *(v21 + 2) = *(v19 + 8);
          ++*(a1 + 8);
        }

        v19 += 16;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 16;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

void llvm::SmallVectorTemplateBase<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>,false>::grow(uint64_t a1, unint64_t a2)
{
  v13 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 16, &v13);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[16 * v6];
    v8 = v4;
    do
    {
      v9 = *v5;
      *(v5 + 1) = 0;
      *v8++ = v9;
      v5 += 16;
    }

    while (v5 != v7);
    v10 = (v7 - 8);
    v11 = -16 * v6;
    do
    {
      std::unique_ptr<mlir::CallGraphNode>::reset[abi:nn200100](v10, 0);
      v10 -= 2;
      v11 += 16;
    }

    while (v11);
    v5 = *a1;
  }

  v12 = v13;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v12;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::doFind<mlir::Region const*>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 16 * (((*a2 >> 4) ^ (*a2 >> 9)) & v4));
    if (*a2 == v6)
    {
      return v3 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (*a2 == v6)
      {
        return v3 + 16 * v5;
      }
    }
  }

  return 0;
}

uint64_t std::__find[abi:nn200100]<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,mlir::Value,std::__identity>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a2;
  v13 = *MEMORY[0x277D85DE8];
  v11 = a1;
  for (i = a2; a4 != v5; i = ++v5)
  {
    if (*a5 == mlir::ValueRange::dereference_iterator(&v11, v5))
    {
      break;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::Liveness::build(mlir::Liveness *this)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v2 = *this;
  v38 = 0;
  v37 = 0u;
  v39 = &v41;
  v40 = 0;
  v41 = &v33;
  v42 = &v37;
  v3 = v40;
  if (v40)
  {
    while (1)
    {
      v4 = *(v39 + v3 - 1);
      if (v38)
      {
        v5 = ((v4 >> 4) ^ (v4 >> 9)) & (v38 - 1);
        v6 = *(v37 + 8 * v5);
        if (v6 == v4)
        {
LABEL_4:
          *(v37 + 8 * v5) = -8192;
          *(&v37 + 1) = vadd_s32(*(&v37 + 8), 0x1FFFFFFFFLL);
        }

        else
        {
          v20 = 1;
          while (v6 != -4096)
          {
            v21 = v5 + v20++;
            v5 = v21 & (v38 - 1);
            v6 = *(v37 + 8 * v5);
            if (v6 == v4)
            {
              goto LABEL_4;
            }
          }
        }
      }

      LODWORD(v40) = v3 - 1;
      v36 = v4;
      v41 = 0;
      v8 = v41;
      if (v7)
      {
        v9 = v41[1];
      }

      else
      {
        *v8 = v4;
        bzero(v8 + 1, 0x268uLL);
        v9 = 0;
        v8[2] = (v8 + 5);
        v8[21] = (v8 + 24);
        v8[40] = (v8 + 43);
        v8[59] = (v8 + 62);
        *(v8 + 6) = 16;
        *(v8 + 36) = 1;
        *(v8 + 44) = 16;
        *(v8 + 188) = 1;
        *(v8 + 82) = 16;
        *(v8 + 340) = 1;
        *(v8 + 120) = 16;
        *(v8 + 492) = 1;
      }

      mlir::SuccessorRange::SuccessorRange(&v41, v9);
      v10 = v42;
      if (v42)
      {
        break;
      }

LABEL_18:
      {
        v19 = *v36;
        if (*v36)
        {
          do
          {
            v41 = *(v19[2] + 16);
            llvm::SetVector<mlir::Block *,llvm::SmallVector<mlir::Block *,0u>,llvm::DenseSet<mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>>,0u>::insert(&v37, &v41);
            v19 = *v19;
          }

          while (v19);
        }
      }

      v3 = v40;
      if (!v40)
      {
        goto LABEL_27;
      }
    }

    v11 = 0;
    v12 = v41;
    while (1)
    {
      if (!v35)
      {
        goto LABEL_16;
      }

      v13 = v12[4 * v11 + 3];
      v14 = ((v13 >> 4) ^ (v13 >> 9)) & (v35 - 1);
      v15 = &v33[78 * v14];
      v16 = *v15;
      if (*v15 != v13)
      {
        break;
      }

LABEL_17:
      llvm::set_union<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>(v8 + 21, (v15 + 2));
      if (++v11 == v10)
      {
        goto LABEL_18;
      }
    }

    v17 = 1;
    while (v16 != -4096)
    {
      v18 = v14 + v17++;
      v14 = v18 & (v35 - 1);
      v15 = &v33[78 * v14];
      v16 = *v15;
      if (*v15 == v13)
      {
        goto LABEL_17;
      }
    }

LABEL_16:
    v15 = &v33[78 * v35];
    goto LABEL_17;
  }

LABEL_27:
  if (v39 != &v41)
  {
    free(v39);
  }

  MEMORY[0x25F891030](v37, 8);
  v22 = v33;
  v23 = v35;
  if (v34)
  {
    v24 = v33;
    if (v35)
    {
      v25 = 624 * v35;
      v24 = v33;
      while ((*v24 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v24 += 78;
        v25 -= 624;
        if (!v25)
        {
          goto LABEL_51;
        }
      }
    }

    v26 = &v33[78 * v35];
    if (v24 != v26)
    {
LABEL_36:
      v41 = 0;
      v27 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::LookupBucketFor<mlir::Block *>(*(this + 1), *(this + 6), *v24, &v41);
      v28 = v41;
      if (v27)
      {
        goto LABEL_42;
      }

      *&v37 = v41;
      v29 = *(this + 4);
      v30 = *(this + 6);
      if (4 * v29 + 4 >= 3 * v30)
      {
        v30 *= 2;
      }

      else if (v30 + ~v29 - *(this + 5) > v30 >> 3)
      {
LABEL_39:
        *(this + 4) = v29 + 1;
        if (*v28 != -4096)
        {
          --*(this + 5);
        }

        *v28 = *v24;
        *(v28 + 3) = 0u;
        *(v28 + 7) = 0u;
        *(v28 + 9) = 0u;
        *(v28 + 11) = 0u;
        *(v28 + 13) = 0u;
        *(v28 + 15) = 0u;
        *(v28 + 17) = 0u;
        *(v28 + 19) = 0u;
        *(v28 + 21) = 0u;
        *(v28 + 23) = 0u;
        *(v28 + 25) = 0u;
        *(v28 + 27) = 0u;
        *(v28 + 29) = 0u;
        *(v28 + 31) = 0u;
        v28[39] = 0;
        *(v28 + 1) = 0u;
        *(v28 + 33) = 0u;
        *(v28 + 35) = 0u;
        *(v28 + 37) = 0u;
        *(v28 + 5) = 0u;
        v28[2] = (v28 + 5);
        *(v28 + 6) = 16;
        *(v28 + 36) = 1;
        v28[21] = (v28 + 24);
        *(v28 + 44) = 16;
        *(v28 + 188) = 1;
LABEL_42:
        v28[1] = v24[1];
        if (v24 != v28)
        {
          llvm::SmallPtrSetImplBase::moveFrom((v28 + 2), v28 + 5, 16, (v24 + 5), (v24 + 2));
          llvm::SmallPtrSetImplBase::moveFrom((v28 + 21), v28 + 24, 16, (v24 + 24), (v24 + 21));
        }

        while (1)
        {
          v24 += 78;
          if (v24 == v26)
          {
            break;
          }

          if ((*v24 | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            if (v24 != v26)
            {
              goto LABEL_36;
            }

            break;
          }
        }

        v23 = v35;
        v22 = v33;
        goto LABEL_51;
      }

      llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::grow(this + 8, v30);
      llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::LookupBucketFor<mlir::Block *>(*(this + 1), *(this + 6), *v24, &v37);
      v29 = *(this + 4);
      v28 = v37;
      goto LABEL_39;
    }
  }

LABEL_51:
  if (v23)
  {
    v31 = 624 * v23;
    do
    {
      if ((*v22 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if ((*(v22 + 492) & 1) == 0)
        {
          free(*(v22 + 472));
        }

        if ((*(v22 + 340) & 1) == 0)
        {
          free(*(v22 + 320));
        }

        if ((*(v22 + 188) & 1) == 0)
        {
          free(*(v22 + 168));
        }

        if ((*(v22 + 36) & 1) == 0)
        {
          free(*(v22 + 16));
        }
      }

      v22 += 624;
      v31 -= 624;
    }

    while (v31);
    v22 = v33;
  }

  return MEMORY[0x25F891030](v22, 8);
}

mlir::Operation *mlir::LivenessBlockInfo::getEndOperation(uint64_t a1, void *a2, mlir::Operation *a3)
{
  if (llvm::SmallPtrSetImplBase::contains_imp((a1 + 160), a2))
  {
    return *(*a1 + 32);
  }

  v6 = *a2;
  if (*a2)
  {
    do
    {
      v7 = v6[2];
      while (1)
      {
        v8 = *(v7 + 2);
        if (v8 == *a1)
        {
          break;
        }

        if (v8)
        {
          v9 = *(v8 + 24) & 0xFFFFFFFFFFFFFFF8;
          if (v9)
          {
            v7 = *(v9 + 16);
            if (v7)
            {
              continue;
            }
          }
        }

        goto LABEL_12;
      }

      if (mlir::Operation::isBeforeInBlock(a3, v7))
      {
        a3 = v7;
      }

LABEL_12:
      v6 = *v6;
    }

    while (v6);
  }

  return a3;
}

void std::vector<mlir::Operation *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Operation *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

BOOL mlir::Liveness::isDeadAfter(uint64_t a1, void *a2, mlir::Operation *a3)
{
  v13 = *(a3 + 2);
  v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::doFind<mlir::Block const*>((a1 + 8), &v13);
  v7 = *(a1 + 24);
  v8 = *(a1 + 8) + 320 * v7;
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(a1 + 8) + 320 * v7;
  }

  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 + 8;
  }

  if (llvm::SmallPtrSetImplBase::contains_imp((v10 + 160), a2))
  {
    return 0;
  }

  EndOperation = mlir::LivenessBlockInfo::getEndOperation(v10, a2, a3);
  return EndOperation == a3 || mlir::Operation::isBeforeInBlock(EndOperation, a3);
}

BOOL anonymous namespace::BlockInfoBuilder::updateLiveIn(_anonymous_namespace_::BlockInfoBuilder *this)
{
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v5, v9, (this + 464));
  llvm::set_union<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>(&v5, this + 160);
  llvm::set_subtract<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>(&v5, (this + 312));
  v2 = v6 - v7;
  v3 = *(this + 5) - *(this + 6);
  if (&v5 != (this + 8) && v2 != v3)
  {
    llvm::SmallPtrSetImplBase::moveFrom(this + 8, this + 32, 16, v9, &v5);
  }

  if ((v8 & 1) == 0)
  {
    free(v5);
  }

  return v2 != v3;
}

uint64_t mlir::detail::walk<mlir::ForwardIterator>(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v4 = *(result + 44);
  if ((v4 & 0x7FFFFF) != 0)
  {
    v8 = result + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 32 * *(result + 40) + 64;
    v9 = v8 + 24 * (v4 & 0x7FFFFF);
    do
    {
      v10 = *(v8 + 8);
      if (v10 != v8)
      {
        do
        {
          v11 = *(v10 + 8);
          v12 = v10 - 8;
          if (!a4)
          {
            result = a2(a3, v10 - 8);
          }

          v13 = v10 + 24;
          for (i = *(v10 + 32); i != v13; i = *(i + 8))
          {
            result = mlir::detail::walk<mlir::ForwardIterator>(i, a2, a3, a4);
          }

          if (a4 == 1)
          {
            result = a2(a3, v12);
          }

          v10 = v11;
        }

        while (v11 != v8);
      }

      v8 += 24;
    }

    while (v8 != v9);
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Block *)>::callback_fn<buildBlockMapping(mlir::Operation *,llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>> &)::$_0>(uint64_t **a1, void *a2)
{
  v3 = a1;
  v33 = a2;
  v34 = 0;
  v4 = *a1;
  v6 = v34;
  if ((v5 & 1) == 0)
  {
    *v6 = a2;
    v6[1] = a2;
    v6[2] = v6 + 5;
    *(v6 + 6) = 16;
    *(v6 + 28) = 0;
    *(v6 + 36) = 1;
    v6[21] = v6 + 24;
    v7 = (v6 + 21);
    *(v6 + 44) = 16;
    *(v6 + 180) = 0;
    *(v6 + 188) = 1;
    v6[40] = v6 + 43;
    v6[41] = 16;
    *(v6 + 84) = 0;
    *(v6 + 340) = 1;
    v6[59] = v6 + 62;
    v6[60] = 16;
    *(v6 + 122) = 0;
    *(v6 + 492) = 1;
    v8 = a2[6];
    v9 = a2[7];
    while (v8 != v9)
    {
      v10 = *v8;
      llvm::SmallPtrSetImpl<mlir::Value>::insert((v6 + 40), *v8, v35);
      v11 = v10;
      while (1)
      {
        v11 = *v11;
        if (!v11)
        {
          break;
        }

        v12 = *(*(v11 + 2) + 16);
        while (1)
        {
          v13 = v12[3] & 0xFFFFFFFFFFFFFFF8;
          if (v13 == (a2[3] & 0xFFFFFFFFFFFFFFF8))
          {
            break;
          }

          if (!v13)
          {
            v12 = 0;
            break;
          }

          v12 = *(v13 + 16);
          if (v12)
          {
            v12 = v12[2];
            if (v12)
            {
              continue;
            }
          }

          break;
        }

        if (v12 != a2)
        {
          llvm::SmallPtrSetImpl<mlir::Value>::insert(v7, v10, v35);
          break;
        }
      }

      ++v8;
    }

    v14 = a2 + 4;
    v15 = a2[5];
    if (v15 != a2 + 4)
    {
      v32 = v3;
      while (1)
      {
        v16 = *(v15 + 36);
        v17 = v15 - 16;
        v18 = v16 ? v15 - 16 : 0;
        if (v16)
        {
          break;
        }

LABEL_41:
        v15 = *(v15 + 8);
        if (v15 == v14)
        {
          v15 = a2[5];
          v3 = v32;
          goto LABEL_43;
        }
      }

      v19 = 0;
      while (1)
      {
        v20 = v18;
        if (!v19)
        {
          goto LABEL_29;
        }

        v21 = *(v15 - 8) & 7;
        v22 = v15 - 16;
        v23 = v19;
        if (v21 == 6)
        {
          goto LABEL_27;
        }

        v24 = (5 - v21);
        v23 = v19 - v24;
        if (v19 > v24)
        {
          break;
        }

        v20 = (v17 - 16 * v19);
LABEL_29:
        v25 = v20;
        while (1)
        {
          v25 = *v25;
          if (!v25)
          {
            break;
          }

          v26 = *(*(v25 + 2) + 16);
          while (1)
          {
            v27 = v26[3] & 0xFFFFFFFFFFFFFFF8;
            if (v27 == (a2[3] & 0xFFFFFFFFFFFFFFF8))
            {
              break;
            }

            if (!v27)
            {
              v26 = 0;
              break;
            }

            v26 = *(v27 + 16);
            if (v26)
            {
              v26 = v26[2];
              if (v26)
              {
                continue;
              }
            }

            break;
          }

          if (v26 != a2)
          {
            llvm::SmallPtrSetImpl<mlir::Value>::insert(v7, v20, v35);
            break;
          }
        }

        if (++v19 == v16)
        {
          goto LABEL_41;
        }
      }

      v22 = v17 - 16 * v24;
LABEL_27:
      v20 = (v22 - 24 * v23);
      goto LABEL_29;
    }

LABEL_43:
    v35[0] = (v6 + 1);
    if (v15 != v14)
    {
      do
      {
        v28 = *(v15 + 8);
        v15 = v28;
      }

      while (v28 != v14);
    }

    llvm::set_subtract<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>((v6 + 59), (v6 + 40));
  }

  if (result)
  {
    v30 = *v33;
    if (*v33)
    {
      v31 = v3[1];
      do
      {
        v35[0] = *(v30[2] + 16);
        result = llvm::SetVector<mlir::Block *,llvm::SmallVector<mlir::Block *,0u>,llvm::DenseSet<mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>>,0u>::insert(v31, v35);
        v30 = *v30;
      }

      while (v30);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>>,mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>>::LookupBucketFor<mlir::Block *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 624 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 624 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>>,mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>>::InsertIntoBucketImpl<mlir::Block *>(uint64_t a1, uint64_t *a2, void *a3)
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

  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>>,mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((624 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 624 * v10 - 624;
      v13 = vdupq_n_s64(v12 / 0x270);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[78] = -4096;
        }

        v11 += 2;
        result += 156;
      }

      while (((v12 / 0x270 + 2) & 0xFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 0;
      v16 = 624 * v3;
      do
      {
        v17 = *(v4 + v15);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = 0;
          v18 = v25;
          *v25 = v17;
          v19 = v4 + v15;
          v18[1] = *(v4 + v15 + 8);
          llvm::SmallPtrSetImplBase::moveHelper((v18 + 2), v18 + 5, 16, v4 + v15 + 40, v4 + v15 + 16);
          llvm::SmallPtrSetImplBase::moveHelper((v18 + 21), v18 + 24, 16, v19 + 192, v19 + 168);
          llvm::SmallPtrSetImplBase::moveHelper((v18 + 40), v18 + 43, 16, v19 + 344, v19 + 320);
          llvm::SmallPtrSetImplBase::moveHelper((v18 + 59), v18 + 62, 16, v19 + 496, v19 + 472);
          ++*(a1 + 8);
          if ((*(v4 + v15 + 492) & 1) == 0)
          {
            free(*(v19 + 472));
          }

          if ((*(v19 + 340) & 1) == 0)
          {
            free(*(v19 + 320));
          }

          if ((*(v4 + v15 + 188) & 1) == 0)
          {
            free(*(v19 + 168));
          }

          if ((*(v4 + v15 + 36) & 1) == 0)
          {
            free(*(v19 + 16));
          }
        }

        v15 += 624;
      }

      while (v16 != v15);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = 624 * v20 - 624;
    v23 = vdupq_n_s64(v22 / 0x270);
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(vdupq_n_s64(v21), xmmword_25D0A0500)));
      if (v24.i8[0])
      {
        *result = -4096;
      }

      if (v24.i8[4])
      {
        result[78] = -4096;
      }

      v21 += 2;
      result += 156;
    }

    while (((v22 / 0x270 + 2) & 0xFFFFFFFFFFFFFELL) != v21);
  }

  return result;
}

const void **llvm::SmallPtrSetImpl<mlir::Value>::insert@<X0>(llvm::SmallPtrSetImplBase *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  result = llvm::SmallPtrSetImplBase::insert_imp(a1, a2);
  v7 = 8;
  if (*(a1 + 20))
  {
    v7 = 12;
  }

  v8 = *a1 + 8 * *(a1 + v7);
  if (v8 != result)
  {
    while (*result >= 0xFFFFFFFFFFFFFFFELL)
    {
      if (++result == v8)
      {
        result = v8;
        break;
      }
    }
  }

  *a3 = result;
  *(a3 + 8) = v8;
  *(a3 + 16) = v6;
  return result;
}

uint64_t llvm::set_subtract<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>(uint64_t this, llvm::SmallPtrSetImplBase *a2)
{
  v3 = this;
  v4 = *(this + 12);
  if (v4 - *(this + 16) >= (*(a2 + 3) - *(a2 + 4)))
  {
    v8 = 8;
    if (*(a2 + 20))
    {
      v8 = 12;
    }

    v9 = *(a2 + v8);
    if (v9)
    {
      v10 = 8 * v9;
      for (i = *a2; *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
      {
        v10 -= 8;
        if (!v10)
        {
          return this;
        }
      }
    }

    else
    {
      i = *a2;
    }

    v15 = *a2 + 8 * v9;
LABEL_26:
    if (i != v15)
    {
      v16 = *i++;
      this = llvm::SmallPtrSetImplBase::erase_imp(v3, v16);
      while (i != v15)
      {
        if (*i < 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_26;
        }

        ++i;
      }
    }
  }

  else if (*(this + 20) == 1)
  {
    if (v4)
    {
      v5 = *this;
      v6 = *this + 8 * v4;
      do
      {
        this = llvm::SmallPtrSetImplBase::contains_imp(a2, *v5);
        if (this)
        {
          v7 = *(v6 - 8);
          v6 -= 8;
          *v5 = v7;
          --*(v3 + 12);
        }

        else
        {
          ++v5;
        }
      }

      while (v5 != v6);
    }
  }

  else
  {
    v12 = *(this + 8);
    if (v12)
    {
      v13 = *this;
      v14 = 8 * v12;
      do
      {
        if (*v13 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          this = llvm::SmallPtrSetImplBase::contains_imp(a2, *v13);
          if (this)
          {
            *v13 = -2;
            ++*(v3 + 16);
          }
        }

        ++v13;
        v14 -= 8;
      }

      while (v14);
    }
  }

  return this;
}

const void **llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<anonymous namespace::BlockInfoBuilder::BlockInfoBuilder(mlir::Block *)::{lambda(mlir::Operation *)#1}>(const void **result, uint64_t a2)
{
  v3 = *result;
  v4 = *(a2 + 36);
  v5 = (a2 - 16);
  if (v4)
  {
    v6 = (a2 - 16);
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = 0;
    v8 = v6;
    while (1)
    {
      v9 = v6;
      if (v7)
      {
        v10 = *(a2 - 8) & 7;
        v11 = v5;
        v12 = v7;
        if (v10 == 6)
        {
          goto LABEL_10;
        }

        v13 = (5 - v10);
        v9 = v8;
        v12 = v7 - v13;
        if (v7 > v13)
        {
          break;
        }
      }

LABEL_11:
      result = llvm::SmallPtrSetImpl<mlir::Value>::insert((v3 + 312), v9, v25);
      ++v7;
      v8 -= 16;
      if (v4 == v7)
      {
        goto LABEL_12;
      }
    }

    v11 = &v6[-16 * v13];
LABEL_10:
    v9 = &v11[-24 * v12];
    goto LABEL_11;
  }

LABEL_12:
  v14 = *(a2 + 44);
  if ((v14 & 0x800000) != 0)
  {
    v15 = *(a2 + 68);
    if (v15)
    {
      v16 = (*(a2 + 72) + 24);
      do
      {
        v17 = *v16;
        v16 += 4;
        result = llvm::SmallPtrSetImpl<mlir::Value>::insert((v3 + 464), v17, v25);
        --v15;
      }

      while (v15);
      v14 = *(a2 + 44);
    }
  }

  if ((v14 & 0x7FFFFF) != 0)
  {
    v18 = ((a2 + 16 * ((v14 >> 23) & 1) + ((v14 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v19 = v18 + 24 * (v14 & 0x7FFFFF);
    do
    {
      for (i = *(v18 + 8); i != v18; i = *(i + 8))
      {
        v21 = i - 8;
        if (!i)
        {
          v21 = 0;
        }

        v22 = *(v21 + 48);
        v23 = *(v21 + 56);
        while (v22 != v23)
        {
          v24 = *v22++;
          result = llvm::SmallPtrSetImpl<mlir::Value>::insert((v3 + 312), v24, v25);
        }
      }

      v18 += 24;
    }

    while (v18 != v19);
  }

  return result;
}

const void **llvm::set_union<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>(const void **result, uint64_t a2)
{
  v2 = result;
  v3 = 8;
  if (*(a2 + 20))
  {
    v3 = 12;
  }

  v4 = *(a2 + v3);
  if (v4)
  {
    v5 = 8 * v4;
    for (i = *a2; *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
    {
      v5 -= 8;
      if (!v5)
      {
        return result;
      }
    }
  }

  else
  {
    i = *a2;
  }

  v7 = *a2 + 8 * v4;
LABEL_10:
  if (i != v7)
  {
    v8 = *i++;
    result = llvm::SmallPtrSetImpl<mlir::Value>::insert(v2, v8, v9);
    while (i != v7)
    {
      if (*i < 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_10;
      }

      ++i;
    }
  }

  return result;
}

uint64_t llvm::SetVector<mlir::Block *,llvm::SmallVector<mlir::Block *,0u>,llvm::DenseSet<mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>>,0u>::insert(uint64_t a1, uint64_t *a2)
{
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, a2, &v6);
  v4 = v7;
  if (v7 == 1)
  {
    llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a1 + 24, *a2);
  }

  return v4;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::LookupBucketFor<mlir::Block *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 320 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 320 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

void *llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((320 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 320 * v10 - 320;
      v13 = vdupq_n_s64(v12 / 0x140);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[40] = -4096;
        }

        v11 += 2;
        result += 80;
      }

      while (((v12 / 0x140 + 2) & 0x1FFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 0;
      v16 = 320 * v3;
      do
      {
        v17 = *(v4 + v15);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::LookupBucketFor<mlir::Block *>(*a1, *(a1 + 16), v17, &v25);
          v18 = v4 + v15;
          v19 = v25;
          *v25 = *(v4 + v15);
          v19[1] = *(v4 + v15 + 8);
          llvm::SmallPtrSetImplBase::moveHelper((v19 + 2), v19 + 5, 16, v4 + v15 + 40, v4 + v15 + 16);
          llvm::SmallPtrSetImplBase::moveHelper((v19 + 21), v19 + 24, 16, v18 + 192, v18 + 168);
          ++*(a1 + 8);
          if ((*(v4 + v15 + 188) & 1) == 0)
          {
            free(*(v18 + 168));
          }

          if ((*(v18 + 36) & 1) == 0)
          {
            free(*(v18 + 16));
          }
        }

        v15 += 320;
      }

      while (v16 != v15);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = 320 * v20 - 320;
    v23 = vdupq_n_s64(v22 / 0x140);
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(vdupq_n_s64(v21), xmmword_25D0A0500)));
      if (v24.i8[0])
      {
        *result = -4096;
      }

      if (v24.i8[4])
      {
        result[40] = -4096;
      }

      v21 += 2;
      result += 80;
    }

    while (((v22 / 0x140 + 2) & 0x1FFFFFFFFFFFFFELL) != v21);
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::doFind<mlir::Block const*>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = v2 - 1;
  v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & v4;
  result = (*a1 + 320 * v5);
  v7 = *result;
  if (*a2 != *result)
  {
    v8 = 1;
    while (v7 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      result = (v3 + 320 * v5);
      v7 = *result;
      if (*a2 == *result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::LookupBucketFor<mlir::Value>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
    v6 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v5 >> 47) ^ v5);
    LODWORD(v5) = -348639895 * ((v6 >> 47) ^ v6);
    v7 = v3 - 1;
    v8 = v5 & (v3 - 1);
    v9 = (*a1 + 16 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
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
        v9 = (v4 + 16 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }
    }
  }

  else
  {
    v9 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v9;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::InsertIntoBucketImpl<mlir::Value>(uint64_t a1, void *a2, void *a3)
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

  llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::LookupBucketFor<mlir::Value>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
    v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 16;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
      if (v17.i8[0])
      {
        *(v16 - 2) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 4;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v15 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::LookupBucketFor<mlir::Value>(v5, a2, &v15);
      v14 = a2[1];
      *v15 = *a2;
      v15[1] = v14;
      ++*(v5 + 8);
    }

    a2 += 2;
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Value>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::LookupBucketFor<mlir::Value>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::InsertIntoBucketImpl<mlir::Value>(a1, a2, v7);
    *v5 = *a2;
    v5[1] = 0;
  }

  return v5 + 1;
}

void mlir::walkSlice(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, unint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v23 = v25;
  v24 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v23, a1, 0, a1, a2);
  v21[0] = 1;
  v8 = 1;
  v9 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  do
  {
    *&v21[v8] = v9;
    v8 += 2;
  }

  while (v8 != 17);
  v10 = v24;
  if (v24)
  {
    while (1)
    {
      v11 = *(v23 + v10 - 1);
      LODWORD(v24) = v10 - 1;
      v19 = 0;
      if (!llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(v21, v11, &v19))
      {
        break;
      }

LABEL_17:
      v10 = v24;
      if (!v24)
      {
        goto LABEL_21;
      }
    }

    v12 = v19;
    v20 = v19;
    v13 = v21[0];
    v14 = LODWORD(v21[0]) >> 1;
    v15 = v21[0] & 1;
    if (v21[0])
    {
      v16 = 16;
    }

    else
    {
      v16 = v22;
    }

    if (4 * v14 + 4 >= 3 * v16)
    {
      v16 *= 2;
    }

    else if (v16 + ~v14 - HIDWORD(v21[0]) > v16 >> 3)
    {
LABEL_10:
      LODWORD(v21[0]) = (v13 & 0xFFFFFFFE) + v15 + 2;
      if (*v12 != -4096)
      {
        --HIDWORD(v21[0]);
      }

      *v12 = v11;
      a3(a4, v11);
      if (*a5 != 2)
      {
        if (!*a5)
        {
          goto LABEL_22;
        }

        llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&v23, *(a5 + 8), (*(a5 + 8) + 8 * *(a5 + 16)));
      }

      v17 = *(a5 + 8);
      if (v17 != (a5 + 24))
      {
        free(v17);
      }

      goto LABEL_17;
    }

    llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(v21, v16);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(v21, v11, &v20);
    v13 = v21[0];
    v12 = v20;
    v15 = v21[0] & 1;
    goto LABEL_10;
  }

LABEL_21:
  *a5 = 2;
  *(a5 + 8) = a5 + 24;
  *(a5 + 16) = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a5 + 8, 0, 0, 0, 0);
LABEL_22:
  if ((v21[0] & 1) == 0)
  {
    MEMORY[0x25F891030](v21[1], 8);
  }

  if (v23 != v25)
  {
    free(v23);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void mlir::getControlFlowPredecessors(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56[6] = *MEMORY[0x277D85DE8];
  if ((~*(a1 + 8) & 7) != 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = *(v3 + 8) & 7;
    v5 = v4 == 7;
    if (v4 == 7)
    {
      v6 = 0;
    }

    else
    {
      v6 = v3;
    }

    if (!v5)
    {
      v7 = *(v6 + 8) & 7;
      if (v7 == 6)
      {
        v8 = v6 + 24 * *(v6 + 16);
        v9 = v8 + 120;
        if (v8 == -120)
        {
LABEL_37:
          InterfaceFor = 0;
          if (v9)
          {
LABEL_38:
            __src = InterfaceFor[1](InterfaceFor, v9);
            v50 = (*InterfaceFor)(InterfaceFor, v9);
            v54 = v56;
            v55 = 0x600000000;
            llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&v54, &__src, &v51);
            *a2 = a2 + 16;
            *(a2 + 8) = 0x600000000;
            if (v55)
            {
              llvm::SmallVectorImpl<mlir::Value>::operator=(a2, &v54);
            }

            *(a2 + 64) = 1;
            v28 = v54;
            if (v54 == v56)
            {
              goto LABEL_68;
            }

LABEL_66:
            free(v28);
            goto LABEL_68;
          }

          goto LABEL_30;
        }
      }

      else
      {
        v9 = v6 + 16 * v7 + 16;
      }

      if (mlir::OpInterface<mlir::SelectLikeOpInterface,mlir::detail::SelectLikeOpInterfaceInterfaceTraits>::getInterfaceFor(v9))
      {
        InterfaceFor = mlir::OpInterface<mlir::SelectLikeOpInterface,mlir::detail::SelectLikeOpInterfaceInterfaceTraits>::getInterfaceFor(v9);
        if (v9)
        {
          goto LABEL_38;
        }

LABEL_30:
        v25 = *(v3 + 8) & 7;
        v26 = v25 == 7;
        if (v25 == 7)
        {
          v27 = 0;
        }

        else
        {
          v27 = v3;
        }

        if (v26)
        {
          goto LABEL_67;
        }

        v30 = *(v27 + 8) & 7;
        if (v30 == 6)
        {
          v31 = v27 + 24 * *(v27 + 16);
          v32 = v31 + 120;
          if (v31 == -120)
          {
            goto LABEL_67;
          }
        }

        else
        {
          v32 = v27 + 16 * v30 + 16;
        }

        v34 = llvm::DefaultDoCastIfPossible<mlir::RegionBranchOpInterface,mlir::Operation *,llvm::CastInfo<mlir::RegionBranchOpInterface,mlir::Operation *,void>>::doCastIfPossible(v32);
        v36 = v35;
        if (!v34)
        {
LABEL_67:
          *a2 = 0;
          *(a2 + 64) = 0;
          goto LABEL_68;
        }

        v37 = *(v34 + 36);
        v38 = (v34 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
        if (!v37)
        {
          v38 = 4;
        }

        __src = 0;
        v50 = v38;
        v51 = v37;
        v39 = *(v3 + 8);
        if ((v39 & 7) == 6)
        {
          v40 = *(v3 + 16) + 6;
        }

        else
        {
          v40 = v39 & 7;
        }

        v41 = v34;
        goto LABEL_63;
      }
    }

    v9 = 0;
    goto LABEL_37;
  }

  v48 = a1;
  v11 = *(a1 + 16);
  v12 = *(v11 + 24) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 8);
  if (v13)
  {
    v14 = v13 - 8;
  }

  else
  {
    v14 = 0;
  }

  if (v14 != v11)
  {
    v54 = v56;
    v55 = 0x600000000;
    v15 = *v11;
    if (*v11)
    {
      do
      {
        v16 = mlir::PredecessorIterator::unwrap(v15);
        v17 = llvm::DefaultDoCastIfPossible<mlir::BranchOpInterface,mlir::Operation *,llvm::CastInfo<mlir::BranchOpInterface,mlir::Operation *,void>>::doCastIfPossible(*(v16 + 32));
        if (!v17)
        {
          v33 = 0;
          *a2 = 0;
          goto LABEL_50;
        }

        (*v18)(&__src, v18, v17, (v15 - ((v15[2] + 16 * ((*(v15[2] + 44) >> 23) & 1) + ((*(v15[2] + 44) >> 21) & 0x7F8) + 71) & 0x1FFFFFFFF8)) >> 5);
        v19 = *(a1 + 24);
        v20 = v19 >= __src;
        v21 = v19 - __src;
        if (v20)
        {
          v22 = *(*(v50 + 72) + 32 * (v21 + v51) + 24);
          if (v22)
          {
            llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v54, v22);
          }
        }

        if (v52 != &v53)
        {
          free(v52);
        }

        v15 = *v15;
      }

      while (v15);
      v23 = v55;
      *a2 = a2 + 16;
      *(a2 + 8) = 0x600000000;
      if (v23)
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=(a2, &v54);
      }
    }

    else
    {
      *a2 = a2 + 16;
      *(a2 + 8) = 0x600000000;
    }

    v33 = 1;
LABEL_50:
    *(a2 + 64) = v33;
    v28 = v54;
    if (v54 != v56)
    {
      goto LABEL_66;
    }

    goto LABEL_68;
  }

  if (v12)
  {
    v29 = *(v12 + 16);
  }

  else
  {
    v29 = 0;
  }

  v42 = llvm::DefaultDoCastIfPossible<mlir::RegionBranchOpInterface,mlir::Operation *,llvm::CastInfo<mlir::RegionBranchOpInterface,mlir::Operation *,void>>::doCastIfPossible(v29);
  if (!v42)
  {
    goto LABEL_67;
  }

  v44 = v42;
  v45 = v43;
  ParentRegion = mlir::Value::getParentRegion(&v48);
  v50 = 0;
  v51 = 0;
  __src = ParentRegion;
  v40 = *(a1 + 24);
  v41 = v44;
  v36 = v45;
LABEL_63:
  getRegionPredecessorOperands(&v54, v41, v36, &__src, v40);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v55)
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(a2, &v54);
  }

  *(a2 + 64) = 1;
  v28 = v54;
  if (v54 != v56)
  {
    goto LABEL_66;
  }

LABEL_68:
  v47 = *MEMORY[0x277D85DE8];
}

void getRegionPredecessorOperands(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5)
{
  v43[6] = *MEMORY[0x277D85DE8];
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v10 = *(a2 + 68);
  }

  else
  {
    v10 = 0;
  }

  v41 = v43;
  v42 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Attribute>::resizeImpl<false>(&v41, v10);
  v38 = v40;
  v39 = 0x200000000;
  (*(a3 + 8))(a3, a2, v41, v42, &v38);
  v11 = *a4;
  if (v39)
  {
    v12 = 24 * v39;
    v13 = v38;
    while (*v13 != v11)
    {
      v13 += 3;
      v12 -= 24;
      if (!v12)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v13 = v38;
  }

  if (v13 != (v38 + 24 * v39))
  {
    v14 = (*a3)(a3, a2, v11);
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a1, *(v14 + 32 * a5 + 24));
  }

LABEL_11:
  v15 = *(a2 + 44);
  if ((v15 & 0x7FFFFF) != 0)
  {
    v16 = ((a2 + 16 * ((v15 >> 23) & 1) + ((v15 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v17 = v16 + 24 * (v15 & 0x7FFFFF);
    v18 = a5;
    do
    {
      for (i = *(v16 + 8); i != v16; i = *(i + 8))
      {
        v20 = i - 8;
        if (!i)
        {
          v20 = 0;
        }

        v21 = *(v20 + 32);
        InterfaceFor = mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(v21);
        if (InterfaceFor)
        {
          if (v21)
          {
            InterfaceFor = mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(v21);
          }

          else
          {
            InterfaceFor = 0;
          }
        }

        else
        {
          v21 = 0;
        }

        v30 = v21;
        v31 = InterfaceFor;
        if (v21)
        {
          if ((*(v21 + 46) & 0x80) != 0)
          {
            v23 = *(v21 + 68);
          }

          else
          {
            v23 = 0;
          }

          v35 = v37;
          v36 = 0x600000000;
          llvm::SmallVectorImpl<mlir::Attribute>::resizeImpl<false>(&v35, v23);
          v32 = v34;
          v33 = 0x200000000;
          (*(v31 + 8))(v31, v30, v35, v36, &v32);
          v24 = v32;
          v25 = *a4;
          v26 = v32;
          if (v33)
          {
            v27 = 24 * v33;
            v26 = v32;
            while (*v26 != v25)
            {
              v26 += 3;
              v27 -= 24;
              if (!v27)
              {
                goto LABEL_32;
              }
            }
          }

          if (v26 != (v32 + 24 * v33))
          {
            SuccessorOperands = mlir::RegionBranchTerminatorOpInterface::getSuccessorOperands(&v30, v25);
            llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a1, *(SuccessorOperands + 32 * v18 + 24));
            v24 = v32;
          }

LABEL_32:
          if (v24 != v34)
          {
            free(v24);
          }

          if (v35 != v37)
          {
            free(v35);
          }
        }
      }

      v16 += 24;
    }

    while (v16 != v17);
  }

  if (v38 != v40)
  {
    free(v38);
  }

  if (v41 != v43)
  {
    free(v41);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void llvm::SmallVectorImpl<mlir::Attribute>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 8);
        v2 = *(a1 + 8);
      }

      if (v2 != a2)
      {
        bzero((*a1 + 8 * v2), 8 * a2 - 8 * v2);
      }
    }

    *(a1 + 8) = a2;
  }
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 16;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v9 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v5 >> 47) ^ v5);
  LODWORD(v5) = -348639895 * ((v6 >> 47) ^ v6);
  v7 = v4 - 1;
  v8 = (v4 - 1) & v5;
  v9 = (v3 + 8 * v8);
  v10 = *v9;
  if (*v9 == a2)
  {
    result = 1;
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
      v9 = (v3 + 8 * (v15 & v7));
      v10 = *v9;
      if (*v9 == a2)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v12)
    {
      v9 = v12;
    }
  }

LABEL_7:
  *a3 = v9;
  return result;
}

uint64_t llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(uint64_t a1, unsigned int a2)
{
  v16[16] = *MEMORY[0x277D85DE8];
  if (a2 >= 0x11)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a2 > 0x10)
    {
      v14 = a2;
      *(a1 + 8) = llvm::allocate_buffer((8 * a2), 8uLL);
      *(a1 + 16) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(a1, v6, &v6[v7]);
    v15 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F891030);
  }

  v8 = v16;
  for (i = 8; i != 136; i += 8)
  {
    v10 = *(a1 + i);
    if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *v8++ = v10;
    }
  }

  if (a2 > 0x10)
  {
    *a1 &= ~1u;
    v11 = a2;
    *(a1 + 8) = llvm::allocate_buffer((8 * a2), 8uLL);
    *(a1 + 16) = v11;
  }

  result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(a1, v16, v8);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = result + 8;
    v9 = result + 136;
  }

  else
  {
    v7 = *(result + 16);
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = *(result + 8);
    v9 = v8 + 8 * v7;
  }

  v10 = 0;
  v11 = (v9 - v8 - 8) >> 3;
  v12 = vdupq_n_s64(v11);
  v13 = (v8 + 8);
  do
  {
    v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_25D0A0500)));
    if (v14.i8[0])
    {
      *(v13 - 1) = -4096;
    }

    if (v14.i8[4])
    {
      *v13 = -4096;
    }

    v10 += 2;
    v13 += 2;
  }

  while (((v11 + 2) & 0x3FFFFFFFFFFFFFFELL) != v10);
LABEL_15:
  while (a2 != a3)
  {
    v15 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v16 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(v5, v15, &v16);
      *v16 = *a2;
      *v5 += 2;
    }

    ++a2;
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::SelectLikeOpInterface,mlir::detail::SelectLikeOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::SelectLikeOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::SelectLikeOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::SelectLikeOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::detail::TypeIDResolver<mlir::SelectLikeOpInterface,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::SelectLikeOpInterface>();
      mlir::detail::TypeIDResolver<mlir::SelectLikeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[305];
}

uint64_t llvm::getTypeName<mlir::SelectLikeOpInterface>()
{
  {
    llvm::getTypeName<mlir::SelectLikeOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::SelectLikeOpInterface>();
    unk_27FC189A0 = v1;
  }

  return llvm::getTypeName<mlir::SelectLikeOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::SelectLikeOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::SelectLikeOpInterface]";
  v6 = 89;
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

uint64_t mlir::sortTopologically(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    v5 = 1;
    return v5 & 1;
  }

  v9 = a2;
  v20 = 0;
  v21 = 0;
  v10 = a2;
  v22 = 0;
  do
  {
    v26[0] = v10;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v20, v26, v24);
    v10 = v10[1];
  }

  while (v10 != a3);
  if (v21.i32[0])
  {
    v18 = 1;
    while (1)
    {
      if (v9 == a3)
      {
        v12 = v9;
      }

      else
      {
        v11 = 0;
        v12 = v9;
        do
        {
          v13 = v9[1];
          v26[0] = a4;
          v26[1] = a5;
          v24[0] = v26;
          v24[1] = &v25;
          v24[2] = &v20;
          v25 = v9;
          v23 = v24;
          if (mlir::detail::walk<mlir::ForwardIterator>(v9, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<isOpReady(mlir::Operation *,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>> &,llvm::function_ref<BOOL ()(mlir::Value,mlir::Operation *)>)::$_0>, &v23, 1))
          {
            v24[0] = v9;
            v14 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation *>(&v20, v24);
            if (v14)
            {
              *v14 = -8192;
              v21 = vadd_s32(v21, 0x1FFFFFFFFLL);
            }

            if (v9 != v12)
            {
              v15 = v9[1];
              if (v15 != v12)
              {
                llvm::iplist_impl<llvm::simple_ilist<mlir::Operation>,llvm::ilist_traits<mlir::Operation>>::transfer(a1 + 32, v12, v9[2] + 32, v9, v15);
              }
            }

            if (v9 == v12)
            {
              v12 = v12[1];
            }

            v11 = 1;
          }

          v9 = v13;
        }

        while (v13 != a3);
        if (v11)
        {
          goto LABEL_25;
        }
      }

      v24[0] = v12;
      v16 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation *>(&v20, v24);
      if (v16)
      {
        *v16 = -8192;
        v21 = vadd_s32(v21, 0x1FFFFFFFFLL);
      }

      v18 = 0;
      v12 = v12[1];
LABEL_25:
      v9 = v12;
      if (!v21.i32[0])
      {
        goto LABEL_28;
      }
    }
  }

  v18 = 1;
LABEL_28:
  MEMORY[0x25F891030](v20, 8);
  v5 = v18;
  return v5 & 1;
}

uint64_t mlir::sortTopologically(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + 32);
  v4 = *(a1 + 32);
  if (v4 == a1 + 32)
  {
    return 1;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  v9 = (*(**(v4 + 48) + 32))(*(v4 + 48), v8);
  v10 = *(a1 + 40);
  if (v9)
  {
    v11 = v10 == v3;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v3 = *v3;
  }

  return mlir::sortTopologically(a1, v10, v3, a2, a3);
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<isOpReady(mlir::Operation *,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>> &,llvm::function_ref<BOOL ()(mlir::Value,mlir::Operation *)>)::$_0>(uint64_t *a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) == 0)
  {
    return 1;
  }

  v2 = *(a2 + 68);
  if (v2)
  {
    v3 = 0;
    v4 = *(a2 + 72);
    v5 = *a1;
    do
    {
      v6 = *(v4 + 32 * v3 + 24);
      v7 = **v5;
      if (!v7 || (v7(*(*v5 + 8), *(v4 + 32 * v3 + 24), **(v5 + 8)) & 1) == 0)
      {
        v8 = (~*(v6 + 8) & 7) != 0 ? v6 : 0;
        if (v8)
        {
          v9 = *(v8 + 8) & 7;
          if (v9 == 6)
          {
            v10 = v8 + 24 * *(v8 + 16);
            v11 = v10 + 120;
            if (v10 != -120)
            {
              goto LABEL_14;
            }
          }

          else
          {
            v11 = v8 + 16 * v9 + 16;
LABEL_14:
            while (v11 != **(v5 + 8))
            {
              v12 = *(v5 + 16);
              v18 = v11;
              v13 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation const*>(v12, &v18);
              if (v13)
              {
                v14 = v13 == *v12 + 8 * *(v12 + 16);
              }

              else
              {
                v14 = 1;
              }

              if (!v14)
              {
                return 0;
              }

              v15 = *(v11 + 16);
              if (v15)
              {
                v16 = *(v15 + 24) & 0xFFFFFFFFFFFFFFF8;
                if (v16)
                {
                  v11 = *(v16 + 16);
                  if (v11)
                  {
                    continue;
                  }
                }
              }

              break;
            }
          }
        }
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return 1;
}

uint64_t mlir::detail::getDefaultTypeSizeInBits(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v34 = a1;
  v4 = *a1;
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return mlir::Type::getIntOrFloatBitWidth(&v34);
  }

  v9 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v4 + 8, v9))
  {
    return mlir::Type::getIntOrFloatBitWidth(&v34);
  }

  v12 = *(*a1 + 136);
  if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v17 = a1[1];
    DefaultPreferredAlignment = mlir::detail::getDefaultPreferredAlignment(v17, a2, a3, a4);
    DefaultTypeSizeInBits = mlir::detail::getDefaultTypeSizeInBits(v17, a2, a3, a4);
    return DefaultTypeSizeInBits + 8 * DefaultPreferredAlignment + -8 * DefaultPreferredAlignment + (DefaultTypeSizeInBits + 8 * DefaultPreferredAlignment - 1) / (8 * DefaultPreferredAlignment) * 8 * DefaultPreferredAlignment;
  }

  if (v12 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v20 = *(**a1 + 32);
    IndexBitwidth = getIndexBitwidth(a3, a4);
    v22 = mlir::IntegerType::get(v20, IndexBitwidth, 0);
    v35 = a2;
    return cachedLookup<llvm::TypeSize>(v22, a2 + 64, llvm::function_ref<llvm::TypeSize ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeSizeInBits(mlir::Type)::$_0>, &v35);
  }

  if (v12 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v13 = a1;
  }

  else
  {
    v13 = 0;
  }

  if (v12 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v14 = llvm::DefaultDoCastIfPossible<mlir::DataLayoutTypeInterface,mlir::Type,llvm::CastInfo<mlir::DataLayoutTypeInterface,mlir::Type,void>>::doCastIfPossible(a1);
    if (!v14)
    {
      reportMissingDataLayout(a1);
    }

    return (*(v15 + 8))(v15, v14, a2, a3, a4);
  }

  v24 = a1[1];
  v23 = a1[2];
  v25 = &v24[v23];
  if (v23)
  {
    v26 = 8 * v23;
    v27 = 1;
    do
    {
      v28 = *v24++;
      v27 *= v28;
      v26 -= 8;
    }

    while (v26);
  }

  else
  {
    v27 = 1;
  }

  v29 = *(v25 - 1);
  v30 = 1 << -__clz(v29 - 1);
  if (v29 <= 0)
  {
    v31 = 0;
  }

  else
  {
    v31 = v30;
  }

  v32 = v13[3];
  v35 = a2;
  v10 = 8 * v27 / v29 * v31 * cachedLookup<llvm::TypeSize>(v32, a2 + 40, llvm::function_ref<llvm::TypeSize ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeSize(mlir::Type)::$_0>, &v35);
  if (v33)
  {
  }

  memchr(v13[4], 1, v13[5]);
  return v10;
}

uint64_t mlir::detail::getDefaultPreferredAlignment(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a1;
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
LABEL_7:
    v22 = a2;
    v10 = llvm::function_ref<unsigned long long ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeABIAlignment(mlir::Type)::$_0>;
    v11 = a2 + 88;
    v8 = v5;
    return cachedLookup<unsigned long long>(v8, v11, v10, &v22);
  }

  else
  {
    while (1)
    {
      v8 = llvm::DefaultDoCastIfPossible<mlir::FloatType,mlir::Type,llvm::CastInfo<mlir::FloatType,mlir::Type,void>>::doCastIfPossible(v5);
      if (v8)
      {
        if (!a4)
        {
          v22 = a2;
          v10 = llvm::function_ref<unsigned long long ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeABIAlignment(mlir::Type)::$_0>;
          v11 = a2 + 88;
          return cachedLookup<unsigned long long>(v8, v11, v10, &v22);
        }

        EntryForIntegerType = *a3;
        v13 = a3[1];
        goto LABEL_12;
      }

      v9 = *(*v5 + 136);
      if (v9 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        break;
      }

      if (v9 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        v15 = *(**v5 + 32);
        IndexBitwidth = getIndexBitwidth(a3, a4);
        v8 = mlir::IntegerType::get(v15, IndexBitwidth, 0);
        v22 = a2;
        v10 = llvm::function_ref<unsigned long long ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypePreferredAlignment(mlir::Type)::$_0>;
        v11 = a2 + 112;
        return cachedLookup<unsigned long long>(v8, v11, v10, &v22);
      }

      if (v9 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v17 = llvm::DefaultDoCastIfPossible<mlir::DataLayoutTypeInterface,mlir::Type,llvm::CastInfo<mlir::DataLayoutTypeInterface,mlir::Type,void>>::doCastIfPossible(v5);
        if (!v17)
        {
          reportMissingDataLayout(v5);
        }

        v19 = *(v18 + 24);

        return v19(v18, v17, a2, a3, a4);
      }

      v5 = v5[1];
      if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
      {
        goto LABEL_7;
      }
    }

    if (!a4)
    {
      v22 = a2;
      v20 = cachedLookup<llvm::TypeSize>(v5, a2 + 40, llvm::function_ref<llvm::TypeSize ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeSize(mlir::Type)::$_0>, &v22);
      v21 = 1 << -__clz(v20 - 1);
      if (v20 <= 0)
      {
        return 0;
      }

      else
      {
        return v21;
      }
    }

    EntryForIntegerType = findEntryForIntegerType(v5, a3, a4);
LABEL_12:

    return extractPreferredAlignment(EntryForIntegerType, v13);
  }
}

uint64_t getIndexBitwidth(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 64;
  }

  v2 = (*(a1[1] + 8))(a1[1], *a1);
  if (*(v2 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v2 + 16);
}

void reportMissingDataLayout(uint64_t a1)
{
  memset(v6, 0, sizeof(v6));
  llvm::raw_string_ostream::raw_string_ostream(v5, v6);
  v2 = llvm::raw_ostream::operator<<(v5, "neither the scoping op nor the type class provide data layout information for ");
  mlir::operator<<(v2, a1);
  v4 = 260;
  v3 = v6;
  llvm::report_fatal_error(&v3, 1);
}

uint64_t mlir::detail::getDefaultStackAlignment(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = (*(a2 + 8))(a2, a1);
  if (*(v2 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v2 + 16);
}