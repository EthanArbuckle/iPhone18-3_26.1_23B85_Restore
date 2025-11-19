double std::__stable_sort_move<std::_ClassicAlgPolicy,anonymous namespace::OperationLegalizer::applyCostModelToPatterns(llvm::SmallVector<mlir::Pattern const*,1u> &,llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>> &,llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>> &)::$_0 &,std::pair<mlir::Pattern const*,unsigned int> *>(_DWORD *a1, _DWORD *a2, unint64_t a3, __n128 *a4, __n128 a5)
{
  if (!a3)
  {
    return a5.n128_f64[0];
  }

  v5 = a4;
  v8 = a1;
  if (a3 == 2)
  {
    v9 = (a2 - 4);
    v10 = *(a2 - 2);
    v11 = a1[2];
    v12 = v10 >= v11;
    if (v10 == v11)
    {
      v12 = *(*a1 + 12) >= *(v9->n128_u64[0] + 12);
    }

    if (v12)
    {
      *a4 = *a1;
      a5 = *v9;
    }

    else
    {
      *a4 = *v9;
      a5 = *a1;
    }

    a4[1] = a5;
    return a5.n128_f64[0];
  }

  if (a3 == 1)
  {
    a5 = *a1;
    *a4 = *a1;
    return a5.n128_f64[0];
  }

  if (a3 <= 8)
  {
    if (a1 == a2)
    {
      return a5.n128_f64[0];
    }

    a5 = *a1;
    *a4 = *a1;
    v13 = a1 + 4;
    if (a1 + 4 == a2)
    {
      return a5.n128_f64[0];
    }

    v14 = 0;
    v15 = a4;
    while (1)
    {
      v16 = v13;
      v17 = v15 + 1;
      v18 = v8[6];
      v19 = v15->n128_u32[2];
      v20 = v18 >= v19;
      if (v18 == v19)
      {
        v20 = *(v15->n128_u64[0] + 12) >= *(*v16 + 12);
      }

      if (v20)
      {
        a5 = *v16;
        *v17 = *v16;
        goto LABEL_28;
      }

      a5 = *v15;
      *v17 = *v15;
      v21 = a4;
      if (v15 == a4)
      {
        goto LABEL_27;
      }

      v22 = v14;
      while (1)
      {
        v23 = a4 + v22;
        v24 = v8[6];
        v25 = *(&a4->n128_u32[-2] + v22);
        if (v24 == v25)
        {
          v26 = *(v23 - 2);
          if (*(v26 + 12) >= *(*v16 + 12))
          {
            v21 = (a4 + v22);
            goto LABEL_27;
          }

          goto LABEL_23;
        }

        if (v24 >= v25)
        {
          break;
        }

        v26 = *(v23 - 2);
LABEL_23:
        --v15;
        v27 = a4 + v22;
        *v27 = v26;
        *(v27 + 2) = v25;
        v22 -= 16;
        if (!v22)
        {
          v21 = a4;
          goto LABEL_27;
        }
      }

      v21 = v15;
LABEL_27:
      v21->n128_u64[0] = *v16;
      v21->n128_u32[2] = v8[6];
LABEL_28:
      v13 = v16 + 4;
      v14 += 16;
      v15 = v17;
      v8 = v16;
      if (v16 + 4 == a2)
      {
        return a5.n128_f64[0];
      }
    }
  }

  v28 = &a1[4 * (a3 >> 1)];
  v29 = &v8[4 * (a3 >> 1)];
  while (v29 != a2)
  {
    v30 = v29[2];
    v31 = v8[2];
    v32 = v30 >= v31;
    if (v30 == v31)
    {
      v32 = *(*v8 + 12) >= *(*v29 + 12);
    }

    if (v32)
    {
      v34 = *v8;
      v8 += 4;
      a5 = v34;
    }

    else
    {
      v33 = *v29;
      v29 += 4;
      a5 = v33;
    }

    *v5++ = a5;
    if (v8 == v28)
    {
      while (v29 != a2)
      {
        v36 = *v29;
        v29 += 4;
        a5.n128_u64[0] = v36.n128_u64[0];
        *v5++ = v36;
      }

      return a5.n128_f64[0];
    }
  }

  while (v8 != v28)
  {
    v35 = *v8;
    v8 += 4;
    a5.n128_u64[0] = v35.n128_u64[0];
    *v5++ = v35;
  }

  return a5.n128_f64[0];
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,anonymous namespace::OperationLegalizer::applyCostModelToPatterns(llvm::SmallVector<mlir::Pattern const*,1u> &,llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>> &,llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>> &)::$_0 &,std::pair<mlir::Pattern const*,unsigned int> *>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7)
{
  if (!a5)
  {
    return result;
  }

  do
  {
    if (a4 <= a7 || a5 <= a7)
    {
      if (a4 > a5)
      {
        if (a2 == a3)
        {
          return result;
        }

        v45 = 0;
        do
        {
          *&a6[v45] = *&a2[v45 * 4];
          v45 += 4;
        }

        while (&a2[v45 * 4] != a3);
        v46 = a3 - 8;
        v47 = &a6[v45];
        while (1)
        {
          if (a2 == result)
          {
            while (v47 != a6)
            {
              v54 = *(v47 - 2);
              v47 -= 4;
              *(v46 - 1) = v54;
              *v46 = v47[2];
              v46 -= 16;
            }

            return result;
          }

          v48 = a2 - 16;
          v49 = v47 - 4;
          v50 = *(v47 - 2);
          v51 = *(a2 - 2);
          if (v50 == v51)
          {
            v52 = *v49;
            v53 = *v48;
            if (*(*v48 + 12) >= *(*v49 + 12))
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (v50 >= v51)
            {
              v52 = *v49;
LABEL_69:
              v53 = v52;
              goto LABEL_70;
            }

            v53 = *v48;
            v50 = *(a2 - 2);
          }

          a2 -= 16;
          v49 = v47;
LABEL_70:
          *(v46 - 1) = v53;
          *v46 = v50;
          v46 -= 16;
          v47 = v49;
          if (v49 == a6)
          {
            return result;
          }
        }
      }

      if (result == a2)
      {
        return result;
      }

      v55 = a6;
      v56 = result;
      do
      {
        v57 = *v56;
        v56 += 16;
        *v55++ = v57;
      }

      while (v56 != a2);
      v58 = v55 - 1;
      while (1)
      {
        if (a2 == a3)
        {
          v65 = 0;
          do
          {
            v66 = &result[v65 * 4];
            v67 = &a6[v65];
            *v66 = *&a6[v65];
            *(v66 + 2) = a6[v65 + 2];
            v65 += 4;
          }

          while (v58 != v67);
          return result;
        }

        v59 = *(a2 + 2);
        v60 = a6[2];
        if (v59 == v60)
        {
          v61 = *a2;
          v62 = *a6;
          if (*(*a6 + 12) >= *(*a2 + 12))
          {
            goto LABEL_87;
          }
        }

        else
        {
          if (v59 >= v60)
          {
            v62 = *a6;
LABEL_87:
            *result = v62;
            *(result + 2) = v60;
            a6 += 4;
            goto LABEL_88;
          }

          v61 = *a2;
        }

        *result = v61;
        *(result + 2) = v59;
        a2 += 16;
LABEL_88:
        result += 16;
        if (v55 == a6)
        {
          return result;
        }
      }
    }

    if (!a4)
    {
      return result;
    }

    v11 = 0;
    v12 = *(a2 + 2);
    v13 = -a4;
    while (1)
    {
      v14 = *&result[v11 + 8];
      if (v12 == v14)
      {
        break;
      }

      if (v12 < v14)
      {
        goto LABEL_13;
      }

LABEL_10:
      v11 += 16;
      v25 = __CFADD__(v13++, 1);
      if (v25)
      {
        return result;
      }
    }

    if (*(*&result[v11] + 12) >= *(*a2 + 12))
    {
      goto LABEL_10;
    }

    v14 = *(a2 + 2);
LABEL_13:
    v15 = -v13;
    v16 = &result[v11];
    if (-v13 < a5)
    {
      v17 = a5 / 2;
      v18 = 16 * (a5 / 2);
      if (v16 == a2)
      {
        v21 = &result[v11];
      }

      else
      {
        v19 = (a2 - result - v11) >> 4;
        v20 = *&a2[v18 + 8];
        v21 = &result[v11];
        do
        {
          v22 = v19 >> 1;
          v23 = &v21[16 * (v19 >> 1)];
          v24 = *(v23 + 2);
          v25 = v20 >= v24;
          if (v20 == v24)
          {
            v25 = *(*v23 + 12) >= *(*&a2[v18] + 12);
          }

          if (v25)
          {
            v21 = v23 + 16;
            v22 = v19 + ~v22;
          }

          v19 = v22;
        }

        while (v22);
      }

      v26 = (v21 - result - v11) >> 4;
      goto LABEL_36;
    }

    if (v13 == -1)
    {
      v63 = &result[v11];
      v64 = *&result[v11];
      *v63 = *a2;
      *a2 = v64;
      *(v63 + 2) = v12;
      *(a2 + 2) = v14;
      return result;
    }

    v26 = v15 / 2;
    v21 = &result[16 * (v15 / 2) + v11];
    v18 = 0;
    if (a3 == a2)
    {
      v33 = a2;
    }

    else
    {
      v27 = (a3 - a2) >> 4;
      v28 = *(v21 + 2);
      do
      {
        v29 = v27 >> 1;
        v30 = v18 + 16 * (v27 >> 1);
        v31 = *&a2[v30 + 8];
        v32 = v31 >= v28;
        if (v31 == v28)
        {
          v32 = *(*v21 + 12) >= *(*&a2[v30] + 12);
        }

        if (!v32)
        {
          v18 = v30 + 16;
          v29 = v27 + ~v29;
        }

        v27 = v29;
      }

      while (v29);
      v33 = &a2[v18];
    }

    v17 = (v33 - a2) >> 4;
LABEL_36:
    v34 = &a2[v18];
    v35 = &a2[v18];
    if (v21 != a2)
    {
      v35 = v21;
      if (v18)
      {
        v36 = *v21;
        *v21 = *a2;
        *a2 = v36;
        LODWORD(v36) = *(v21 + 2);
        *(v21 + 2) = v12;
        *(a2 + 2) = v36;
        v35 = v21 + 16;
        if (v18 != 16)
        {
          v37 = a2 + 16;
          do
          {
            if (v35 == a2)
            {
              a2 = v37;
            }

            v38 = *v35;
            *v35 = *v37;
            *v37 = v38;
            LODWORD(v38) = *(v35 + 2);
            *(v35 + 2) = *(v37 + 2);
            *(v37 + 2) = v38;
            v35 += 16;
            v37 += 16;
          }

          while (v37 != v34);
        }

        if (v35 != a2)
        {
          v39 = v35;
          v40 = a2;
          do
          {
            while (1)
            {
              v41 = *v39;
              *v39 = *a2;
              *a2 = v41;
              LODWORD(v41) = *(v39 + 2);
              *(v39 + 2) = *(a2 + 2);
              *(a2 + 2) = v41;
              v39 += 16;
              a2 += 16;
              if (a2 == v34)
              {
                break;
              }

              if (v39 == v40)
              {
                v40 = a2;
              }
            }

            a2 = v40;
          }

          while (v39 != v40);
        }
      }
    }

    a4 = -v13 - v26;
    v42 = a5 - v17;
    if (v26 + v17 >= a5 - (v26 + v17) - v13)
    {
      v34 = v21;
      v42 = v17;
      a4 = v26;
      a3 = v35;
    }

    else
    {
      v43 = v16;
      v44 = a3;
      a3 = v44;
      v16 = v35;
    }

    a5 = v42;
    result = v16;
    a2 = v34;
  }

  while (v42);
  return result;
}

uint64_t llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>::callback_fn<anonymous namespace::OperationLegalizer::computeLegalizationGraphBenefit(llvm::SmallVector<mlir::Pattern const*,1u> &,llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>> &)::$_0>(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v3 = *a2;
    v14 = v3;
    v15 = 1;
    v4 = *a1;
    v16 = 0;
    v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::LookupBucketFor<mlir::OperationName>(*v4, *(v4 + 16), v3, &v16);
    v6 = v16;
    if ((v5 & 1) == 0)
    {
      v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::InsertIntoBucketImpl<mlir::OperationName>(v4, &v14, v16);
      *v6 = v3;
      v6[1] = v6 + 3;
      v6[2] = 0x100000000;
    }

    v7 = (v6 + 1);
  }

  else
  {
    v7 = a1[1];
  }

  v8 = *v7;
  v9 = *(v7 + 2);
  if (v9)
  {
    v10 = 8 * v9;
    for (i = v8; *i != a2; i += 8)
    {
      v10 -= 8;
      if (!v10)
      {
        return 0xFFFFLL;
      }
    }
  }

  else
  {
    i = v8;
  }

  v13 = &v8[8 * v9];
  if (i == v13)
  {
    return 0xFFFFLL;
  }

  else
  {
    return ((v13 - i) >> 3);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>,mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::doFind<mlir::Operation const*>(uint64_t *a1, void *a2)
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

uint64_t std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,1u>,false>::grow(uint64_t a1, unint64_t a2)
{
  v15 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v15);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 24 * v7;
    v9 = v4;
    do
    {
      *v9 = v9 + 2;
      v9[1] = 0x100000000;
      if (v6[2])
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=(v9, v6);
      }

      v9 += 3;
      v6 += 6;
      v8 -= 24;
    }

    while (v8);
    v6 = *a1;
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = &v6[6 * v10 - 2];
      v12 = -24 * v10;
      do
      {
        v13 = *(v11 - 16);
        if (v11 != v13)
        {
          free(v13);
        }

        v11 -= 24;
        v12 += 24;
      }

      while (v12);
      v6 = *a1;
    }
  }

  v14 = v15;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v14;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::detail::ConversionPatternRewriterImpl::remapValues(llvm::StringRef,std::optional<mlir::Location>,mlir::PatternRewriter &,mlir::ValueRange,llvm::SmallVector<llvm::SmallVector<mlir::Value,1u>,2u> &)::$_0>(void *a1, uint64_t a2)
{
  v3 = mlir::Diagnostic::operator<<<28ul>(a2, "unable to convert type for ");
  v17 = 261;
  v4 = a1[1];
  v16[0] = *a1;
  v16[1] = v4;
  v5 = mlir::Diagnostic::operator<<(v3, v16);
  v6 = mlir::Diagnostic::operator<<<3ul>(v5, " #");
  v7 = a1[2];
  v18 = 5;
  v19 = v7;
  v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(v6 + 16, &v18, 1);
  v9 = *(v6 + 16) + 24 * *(v6 + 24);
  v10 = *v8;
  *(v9 + 16) = *(v8 + 16);
  *v9 = v10;
  ++*(v6 + 24);
  v11 = mlir::Diagnostic::operator<<<12ul>(v6, ", type was ");
  v12 = a1[4];
  v18 = 4;
  v19 = v12;
  v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(v11 + 16, &v18, 1);
  v14 = (*(v11 + 16) + 24 * *(v11 + 24));
  result = *v13;
  v14[1].n128_u64[0] = v13[1].n128_u64[0];
  *v14 = result;
  ++*(v11 + 24);
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation const*>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 8 * v5);
    if (*a2 == v6)
    {
      return v3 + 8 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 8 * v5);
      if (*a2 == v6)
      {
        return v3 + 8 * v5;
      }
    }
  }

  return 0;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,mlir::TypeConverter const*,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,mlir::TypeConverter const*>>,mlir::Region *,mlir::TypeConverter const*,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,mlir::TypeConverter const*>>::LookupBucketFor<mlir::Region *>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

char *llvm::DenseMap<mlir::Region *,mlir::TypeConverter const*,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,mlir::TypeConverter const*>>::grow(uint64_t a1, int a2)
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
          llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,mlir::TypeConverter const*,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,mlir::TypeConverter const*>>,mlir::Region *,mlir::TypeConverter const*,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,mlir::TypeConverter const*>>::LookupBucketFor<mlir::Region *>(*a1, *(a1 + 16), v20, &v30);
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

void *anonymous namespace::InlineBlockRewrite::rollback(void *this)
{
  v1 = this[5];
  if (v1)
  {
    v2 = *(this[6] + 8);
    if (v1 != v2)
    {
      return llvm::iplist_impl<llvm::simple_ilist<mlir::Operation>,llvm::ilist_traits<mlir::Operation>>::transfer(this[4] + 32, *(this[4] + 40), this[3] + 32, v1, v2);
    }
  }

  return this;
}

void anonymous namespace::ReplaceBlockArgRewrite::rollback(_anonymous_namespace_::ReplaceBlockArgRewrite *this)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(this + 2);
  __src = *(this + 4);
  v4[0] = v5;
  v4[1] = 0x100000000;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(v4, &__src, v4);
  if (v4[0] != v5)
  {
    free(v4[0]);
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t *anonymous namespace::ReplaceBlockArgRewrite::commit(_anonymous_namespace_::ReplaceBlockArgRewrite *this, mlir::RewriterBase *a2)
{
  v4 = *(this + 5);
  result = mlir::detail::ConversionPatternRewriterImpl::findOrBuildReplacementValue(*(this + 2), *(this + 4));
  if (result)
  {
    v6 = result[1] & 7;
    if (v6 == 7)
    {
      v7 = *(this + 4);

      return mlir::RewriterBase::replaceAllUsesWith(a2, v7, result);
    }

    else
    {
      if (v6 == 6)
      {
        v8 = &result[3 * result[2] + 15];
      }

      else
      {
        v8 = &result[2 * v6 + 2];
      }

      v13 = v8;
      v9 = *(v8 + 16);
      v10 = *(this + 4);
      v11[0] = &v12;
      v11[1] = &v13;
      v12 = v9;
    }
  }

  return result;
}

uint64_t anonymous namespace::ConversionValueMapping::map<llvm::SmallVector<mlir::Value,1u>,llvm::SmallVector<mlir::Value,1u>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  if (v6)
  {
    v7 = *a3;
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      v13 = v9;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 24, &v13, v14);
      v8 -= 8;
    }

    while (v8);
  }

  v14[0] = 0;
  v11 = v14[0];
  if ((v10 & 1) == 0)
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(v11, a2);
    *(v11 + 24) = v11 + 40;
    *(v11 + 32) = 0x100000000;
  }

  return llvm::SmallVectorImpl<mlir::Value>::operator=(v11 + 24, a3);
}

void llvm::SmallVectorImpl<mlir::Value>::append<mlir::BlockArgument *,void>(uint64_t a1, char *a2, char *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - a2) >> 3);
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
      v10 = *v4;
      v4 += 8;
      *v9++ = v10;
    }

    while (v4 != a3);
  }

  *(a1 + 8) = v7 + (v6 >> 3);
}

uint64_t anonymous namespace::BlockTypeConversionRewrite::rollback(uint64_t this)
{
  v1 = *(this + 32);
  v2 = *v1;
  if (*v1)
  {
    v3 = *(this + 24);
    do
    {
      v4 = v2[1];
      if (v4)
      {
        v5 = *v2;
        *v4 = *v2;
        if (v5)
        {
          *(v5 + 8) = v2[1];
        }
      }

      v2[3] = v3;
      v6 = *v3;
      *v2 = *v3;
      v2[1] = v3;
      if (v6)
      {
        *(v6 + 8) = v2;
      }

      *v3 = v2;
      v2 = *v1;
    }

    while (*v1);
  }

  return this;
}

uint64_t anonymous namespace::BlockTypeConversionRewrite::commit(uint64_t this, mlir::RewriterBase *a2)
{
  v2 = *(a2 + 2);
  if (v2)
  {
    if (v2[2] == 1)
    {
      for (i = **(this + 32); i; i = *i)
      {
        this = (*(*v2 + 40))(v2, i[2]);
      }
    }
  }

  return this;
}

void anonymous namespace::CreateOperationRewrite::rollback(_anonymous_namespace_::CreateOperationRewrite *this)
{
  v2 = *(this + 3);
  v3 = *(v2 + 44);
  v4 = v3 & 0x7FFFFF;
  if ((v3 & 0x7FFFFF) != 0)
  {
    v5 = (((v2 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v2 + 40));
    v6 = &v5[3 * v4];
    do
    {
      while (*v5 != v5)
      {
        v7 = v5[1];
        if (v7)
        {
          v8 = (v7 - 8);
        }

        else
        {
          v8 = 0;
        }

        v9 = v8[2];
        v8[3] &= 7uLL;
        v10 = v8[1];
        *v9 = v10;
        *(v10 + 8) = v9;
        v8[1] = 0;
        v8[2] = 0;
      }

      v5 += 3;
    }

    while (v5 != v6);
    v2 = *(this + 3);
  }

  mlir::Operation::dropAllUses(v2);
  v11 = *(this + 3);
  if (*(v11 + 2))
  {
    *(v11 + 2) = 0;
    v13 = *v11;
    v12 = *(v11 + 1);
    *v12 = *v11;
    *(v13 + 8) = v12;
    *v11 = 0;
    *(v11 + 1) = 0;
  }

  mlir::Operation::destroy(v11);
}

uint64_t anonymous namespace::CreateOperationRewrite::commit(_anonymous_namespace_::CreateOperationRewrite *this, mlir::RewriterBase *a2)
{
  result = *(a2 + 2);
  if (result)
  {
    return (*(*result + 16))(result, *(this + 3), 0, 0);
  }

  return result;
}

uint64_t anonymous namespace::MoveOperationRewrite::rollback(_anonymous_namespace_::MoveOperationRewrite *this)
{
  v2 = *(this + 4);
  v1 = *(this + 5);
  v3 = *(this + 3);
  result = v2 + 32;
  if (v1)
  {
    v5 = v1;
  }

  else
  {
    v5 = (v2 + 32);
  }

  v6 = v3[1];
  if (v3 != v5 && v6 != v5)
  {
    return llvm::iplist_impl<llvm::simple_ilist<mlir::Operation>,llvm::ilist_traits<mlir::Operation>>::transfer(result, v5, v3[2] + 32, v3, v6);
  }

  return result;
}

uint64_t anonymous namespace::MoveOperationRewrite::commit(_anonymous_namespace_::MoveOperationRewrite *this, mlir::RewriterBase *a2)
{
  result = *(a2 + 2);
  if (result)
  {
    return (*(*result + 16))(result, *(this + 3), *(this + 4), 0);
  }

  return result;
}

void anonymous namespace::ReplaceOperationRewrite::rollback(_anonymous_namespace_::ReplaceOperationRewrite *this)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v1 = *(this + 3);
  v2 = *(v1 + 36);
  if (v2)
  {
    v3 = v1 - 16;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v5 = 0;
    v6 = v3;
    while (1)
    {
      v7 = v3;
      if (v5)
      {
        v8 = *(v1 - 8) & 7;
        v9 = v1 - 16;
        v10 = v5;
        if (v8 == 6)
        {
          goto LABEL_10;
        }

        v11 = (5 - v8);
        v7 = v6;
        v10 = v5 - v11;
        if (v5 > v11)
        {
          break;
        }
      }

LABEL_11:
      v12 = *(this + 2);
      __src = v7;
      v15[0] = v16;
      v15[1] = 0x100000000;
      llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(v15, &__src, v15);
      if (v15[0] != v16)
      {
        free(v15[0]);
      }

      ++v5;
      v6 -= 16;
      if (v2 == v5)
      {
        goto LABEL_14;
      }
    }

    v9 = v3 - 16 * v11;
LABEL_10:
    v7 = v9 - 24 * v10;
    goto LABEL_11;
  }

LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::ReplaceOperationRewrite::commit(_anonymous_namespace_::ReplaceOperationRewrite *this, mlir::RewriterBase *a2)
{
  v45[6] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 2);
  if (v3)
  {
    if (*(v3 + 8) == 1)
    {
      v4 = *(a2 + 2);
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

  v5 = (this + 24);
  v6 = *(this + 3);
  v7 = *(v6 + 9);
  if (v7)
  {
    v8 = (v6 - 2);
  }

  else
  {
    v8 = 0;
  }

  v42 = v4;
  v43 = v45;
  v44 = 0x600000000;
  v39 = (this + 24);
  if (v7 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v7, 8);
    v9 = v44;
    v10 = v43;
LABEL_13:
    v11 = 0;
    v12 = (v6 - 2);
    v13 = &v10[v9];
    while (1)
    {
      v14 = v8;
      if (v11)
      {
        v15 = *(v6 - 1) & 7;
        v16 = (v6 - 2);
        v17 = v11;
        if (v15 == 6)
        {
          goto LABEL_18;
        }

        v18 = (5 - v15);
        v14 = v12;
        v17 = v11 - v18;
        if (v11 > v18)
        {
          break;
        }
      }

LABEL_19:
      v19 = *(this + 4);
      v13[v11++] = mlir::detail::ConversionPatternRewriterImpl::findOrBuildReplacementValue(*(this + 2), v14);
      v12 -= 2;
      if (v7 == v11)
      {
        v20 = v44;
        v4 = v42;
        v21 = v43;
        v5 = (this + 24);
        v6 = *v39;
        goto LABEL_21;
      }
    }

    v16 = &v6[-2 * v18 - 2];
LABEL_18:
    v14 = (v16 - 24 * v17);
    goto LABEL_19;
  }

  if (v7)
  {
    v9 = 0;
    v10 = v45;
    goto LABEL_13;
  }

  v20 = 0;
  v21 = v45;
LABEL_21:
  LODWORD(v44) = v20 + v7;
  if (v4)
  {
    (*(*v4 + 56))(v4, v6, v21 & 0xFFFFFFFFFFFFFFF9);
    v6 = *v5;
    v21 = v43;
  }

  v22 = *(v6 + 9);
  if (v22)
  {
    v23 = (v6 - 2);
  }

  else
  {
    v23 = 0;
  }

  if (v22)
  {
    v24 = 0;
    v25 = (v6 - 2);
    while (1)
    {
      v26 = *(v21 + 8 * v24);
      if (v26)
      {
        break;
      }

LABEL_35:
      ++v24;
      v25 -= 2;
      if (v22 == v24)
      {
        goto LABEL_36;
      }
    }

    v27 = v23;
    if (v24)
    {
      v28 = *(v6 - 1) & 7;
      v29 = (v6 - 2);
      v30 = v24;
      if (v28 == 6)
      {
LABEL_33:
        v27 = (v29 - 24 * v30);
        goto LABEL_34;
      }

      v31 = (5 - v28);
      v27 = v25;
      v30 = v24 - v31;
      if (v24 > v31)
      {
        v29 = &v6[-2 * v31 - 2];
        goto LABEL_33;
      }
    }

LABEL_34:
    mlir::RewriterBase::replaceAllUsesWith(a2, v27, v26);
    goto LABEL_35;
  }

LABEL_36:
  v32 = *(*(this + 2) + 352);
  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation *>(*(v32 + 16), v39);
    if (v34)
    {
      *v34 = -8192;
      v33[1] = vadd_s32(v33[1], 0x1FFFFFFFFLL);
    }
  }

  v35 = *v39;
  if (v42)
  {
    v41 = &v42;
    v35 = *v39;
  }

  v35[2] = 0;
  v37 = *v35;
  v36 = v35[1];
  *v36 = *v35;
  *(v37 + 8) = v36;
  *v35 = 0;
  v35[1] = 0;
  if (v43 != v45)
  {
    free(v43);
  }

  v38 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::EraseBlockRewrite::~EraseBlockRewrite(_anonymous_namespace_::EraseBlockRewrite *this)
{
  *this = &unk_286E81268;
}

{
  *this = &unk_286E81268;
  JUMPOUT(0x25F891040);
}

void *anonymous namespace::EraseBlockRewrite::rollback(void *this)
{
  v1 = this[5];
  v2 = (v1 + 8);
  v3 = v1 == 0;
  v4 = this[3];
  if (v3)
  {
    v2 = this[4];
  }

  v4[3] = v4[3] & 7 | this[4];
  v5 = *v2;
  v4[1] = *v2;
  v4[2] = v2;
  v6 = v4 + 1;
  *(v5 + 8) = v6;
  *v2 = v6;
  this[3] = 0;
  return this;
}

_DWORD *anonymous namespace::EraseBlockRewrite::commit(_anonymous_namespace_::EraseBlockRewrite *this, mlir::RewriterBase *a2)
{
  result = *(a2 + 2);
  if (result)
  {
    if (result[2] == 1)
    {
      return (*(*result + 32))(result, *(this + 3));
    }
  }

  return result;
}

mlir::Block **anonymous namespace::EraseBlockRewrite::cleanup(mlir::Block **this, mlir::RewriterBase *a2)
{
  mlir::Block::dropAllDefinedValueUses(this[3]);
  result = this[3];
  if (result)
  {
    mlir::Block::~Block(result);
    result = MEMORY[0x25F891040]();
  }

  this[3] = 0;
  return result;
}

uint64_t anonymous namespace::CreateBlockRewrite::rollback(_anonymous_namespace_::CreateBlockRewrite *this)
{
  v2 = *(this + 3);
  if (*(v2 + 32) != v2 + 32)
  {
    do
    {
      v3 = *(v2 + 40);
      v3[2] = 0;
      v5 = *v3;
      v4 = v3[1];
      *v4 = *v3;
      *(v5 + 8) = v4;
      *v3 = 0;
      v3[1] = 0;
    }

    while (*(v2 + 32) != v2 + 32);
    v2 = *(this + 3);
  }

  mlir::IRObjectWithUseList<mlir::BlockOperand>::dropAllUses(v2);
  v6 = *(this + 3);
  if ((*(v6 + 24) & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    mlir::Block::~Block(v6);

    JUMPOUT(0x25F891040);
  }

  v7 = v6 + 8;
  v8 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8;

  return llvm::iplist_impl<llvm::simple_ilist<mlir::Block>,llvm::ilist_traits<mlir::Block>>::erase(v8, v7);
}

uint64_t anonymous namespace::CreateBlockRewrite::commit(_anonymous_namespace_::CreateBlockRewrite *this, mlir::RewriterBase *a2)
{
  result = *(a2 + 2);
  if (result)
  {
    return (*(*result + 24))(result, *(this + 3), 0, 0);
  }

  return result;
}

uint64_t anonymous namespace::MoveBlockRewrite::rollback(_anonymous_namespace_::MoveBlockRewrite *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = (v2 + 8);
    result = *(this + 4);
  }

  else
  {
    result = *(this + 4);
    v3 = *(this + 4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6[1];
  if (v6 != v3 && v7 != v3)
  {
    return llvm::iplist_impl<llvm::simple_ilist<mlir::Block>,llvm::ilist_traits<mlir::Block>>::transfer(result, v3, *(v5 + 24) & 0xFFFFFFFFFFFFFFF8, v6, v7);
  }

  return result;
}

uint64_t anonymous namespace::MoveBlockRewrite::commit(_anonymous_namespace_::MoveBlockRewrite *this, mlir::RewriterBase *a2)
{
  result = *(a2 + 2);
  if (result)
  {
    return (*(*result + 24))(result, *(this + 3), *(this + 4), 0);
  }

  return result;
}

void llvm::SmallVectorImpl<mlir::ValueRange>::assign(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 12) >= a2)
  {
    v4 = *(a1 + 8);
    if (v4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = *(a1 + 8);
    }

    if (v5)
    {
      v6 = *a1;
      do
      {
        *v6 = a3;
        v6[1] = a4;
        v6 += 2;
        --v5;
      }

      while (v5);
      v4 = *(a1 + 8);
    }

    v7 = v4 - a2;
    if (v4 < a2)
    {
      v8 = (*a1 + 16 * v4);
      do
      {
        *v8 = a3;
        v8[1] = a4;
        v8 += 2;
      }

      while (!__CFADD__(v7++, 1));
    }

    *(a1 + 8) = a2;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::ValueRange,true>::growAndAssign(a1, a2, a3, a4);
  }
}

void llvm::SmallVectorTemplateBase<mlir::ValueRange,true>::growAndAssign(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 16);
  if (a2)
  {
    v8 = *a1;
    v9 = a2;
    do
    {
      *v8 = a3;
      v8[1] = a4;
      v8 += 2;
      --v9;
    }

    while (v9);
  }

  *(a1 + 8) = a2;
}

uint64_t llvm::SmallVector<llvm::SmallVector<mlir::Value,1u>,2u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 24 * v3 - 8;
    v5 = -24 * v3;
    do
    {
      v6 = *(v4 - 16);
      if (v4 != v6)
      {
        free(v6);
      }

      v4 -= 24;
      v5 += 24;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void anonymous namespace::ModifyOperationRewrite::~ModifyOperationRewrite(_anonymous_namespace_::ModifyOperationRewrite *this)
{
  *this = &unk_286E81310;
  v2 = *(this + 17);
  if (v2 != this + 152)
  {
    free(v2);
  }

  v3 = *(this + 7);
  if (v3 != this + 72)
  {
    free(v3);
  }
}

{

  JUMPOUT(0x25F891040);
}

void anonymous namespace::ModifyOperationRewrite::rollback(_anonymous_namespace_::ModifyOperationRewrite *this)
{
  *(*(this + 3) + 24) = *(this + 5);
  mlir::Operation::setAttrs(*(this + 3), *(this + 6));
  v2 = *(this + 3);
  if ((v2[46] & 0x80) != 0)
  {
    mlir::detail::OperandStorage::setOperands((v2 + 64), v2, *(this + 7) & 0xFFFFFFFFFFFFFFF9, *(this + 16));
  }

  v3 = *(this + 36);
  if (v3)
  {
    v4 = 0;
    v5 = *(this + 17);
    v6 = 8 * v3;
    do
    {
      mlir::Operation::setSuccessor(*(this + 3), *(v5 + 8 * v4), v4);
      ++v4;
      v6 -= 8;
    }

    while (v6);
  }

  v7 = *(this + 21);
  if (v7)
  {
    v8 = *(this + 3);
    if (HIBYTE(*(v8 + 44)))
    {
      v9 = v8 + 16 * ((*(v8 + 44) >> 23) & 1) + 64;
    }

    else
    {
      v9 = 0;
    }

    (*(**(v8 + 48) + 160))(*(v8 + 48), v9, *(this + 21));
    (*(**(this + 4) + 128))(*(this + 4), v7);
    operator delete(*(this + 21));
    *(this + 21) = 0;
  }
}

void anonymous namespace::ModifyOperationRewrite::commit(_anonymous_namespace_::ModifyOperationRewrite *this, mlir::RewriterBase *a2)
{
  v3 = *(a2 + 2);
  if (v3 && v3[2] == 1)
  {
    (*(*v3 + 40))(v3, *(this + 3));
  }

  if (*(this + 21))
  {
    (*(**(this + 4) + 128))(*(this + 4));
    operator delete(*(this + 21));
    *(this + 21) = 0;
  }
}

uint64_t mlir::detail::walk<mlir::ForwardDominanceIterator<false>>(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v4 = a2(a3, a1);
  if (!v4)
  {
    return 0;
  }

  if (v4 != 2)
  {
    v6 = *(a1 + 44);
    v5 = 1;
    if ((v6 & 0x7FFFFF) == 0)
    {
      return v5;
    }

    v7 = (a1 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 32 * *(a1 + 40) + 64);
    v27 = &v7[3 * (v6 & 0x7FFFFF)];
    while (1)
    {
      mlir::ForwardDominanceIterator<false>::makeIterable(v38, v7);
      llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(v33, &v35, v38);
      std::vector<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>::vector[abi:nn200100](&v36, v40);
      llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v28, &v30, &v41);
      std::vector<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>::vector[abi:nn200100](&__p, v43);
LABEL_7:
      v8 = __p;
      if (v37 - v36 != v32 - __p)
      {
        goto LABEL_21;
      }

      if (v36 != v37)
      {
        break;
      }

LABEL_52:
      v25 = 1;
      if (__p)
      {
        goto LABEL_34;
      }

LABEL_35:
      if ((v29 & 1) == 0)
      {
        free(v28);
      }

      if (v36)
      {
        v37 = v36;
        operator delete(v36);
      }

      if ((v34 & 1) == 0)
      {
        free(v33[0]);
      }

      if (v43[0])
      {
        v43[1] = v43[0];
        operator delete(v43[0]);
      }

      if ((v42 & 1) == 0)
      {
        free(v41);
      }

      if (v40[0])
      {
        v40[1] = v40[0];
        operator delete(v40[0]);
      }

      if ((v39 & 1) == 0)
      {
        free(v38[0]);
      }

      if ((v25 & 1) == 0)
      {
        return 0;
      }

      v7 += 3;
      if (v7 == v27)
      {
        return 1;
      }
    }

    v9 = __p + 16;
    v10 = v36 + 16;
    while (1)
    {
      v11 = v10 - 16;
      if (*(v10 - 2) != *(v9 - 2))
      {
        break;
      }

      v12 = v10[8];
      v13 = v9[8];
      if (v12 != v13 || v12 == 0)
      {
        if (v12 != v13)
        {
          break;
        }
      }

      else if (*v10 != *v9)
      {
        break;
      }

      v9 += 32;
      v10 += 32;
      if (v11 + 32 == v37)
      {
        goto LABEL_52;
      }
    }

LABEL_21:
    v15 = *(v37 - 4);
    v16 = *(v15 + 40);
    v17 = v15 + 32;
    do
    {
      if (v16 == v17)
      {
        v20 = v37;
        do
        {
          v21 = *(v20 - 4);
          if ((*(v20 - 8) & 1) == 0)
          {
            mlir::SuccessorRange::SuccessorRange(&v44, *(v20 - 4));
            *(v20 - 3) = v44;
            *(v20 - 2) = 0;
            *(v20 - 8) = 1;
          }

          while (1)
          {
            mlir::SuccessorRange::SuccessorRange(&v44, v21);
            v22 = *(v20 - 2);
            if (v22 == *(&v44 + 1))
            {
              break;
            }

            v23 = *(v20 - 3);
            *(v20 - 2) = v22 + 1;
            v24 = *(v23 + 32 * v22 + 24);
            llvm::SmallPtrSetImpl<mlir::Block *>::insert(v33, v24, &v44);
            if (v45 == 1)
            {
              *&v44 = v24;
              BYTE8(v44) = 0;
              v46 = 0;
              std::vector<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>::push_back[abi:nn200100](&v36, &v44);
              goto LABEL_7;
            }
          }

          v20 = v37 - 32;
          v37 = v20;
        }

        while (v36 != v20);
        goto LABEL_7;
      }

      v18 = *(v16 + 8);
      v19 = mlir::detail::walk<mlir::ForwardDominanceIterator<false>>();
      v16 = v18;
    }

    while (v19);
    v25 = 0;
    v8 = __p;
    if (!__p)
    {
      goto LABEL_35;
    }

LABEL_34:
    v32 = v8;
    operator delete(v8);
    goto LABEL_35;
  }

  return 1;
}

void mlir::ForwardDominanceIterator<false>::makeIterable(uint64_t a1, void *a2)
{
  if (*a2 == a2)
  {
    v39 = 0;
    memset(&v38[2], 0, 72);
    v37 = 0;
    v38[0] = &v38[3];
    v38[1] = 8;
    BYTE4(v38[2]) = 1;
    v40 = 0;
    v41 = 0;
    memset(&v34[2], 0, 72);
    v34[0] = &v34[3];
    v34[1] = 8;
    BYTE4(v34[2]) = 1;
    v35 = 0;
    v36 = 0;
    llvm::make_range<llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>(v42, v38, v34);
    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    if ((BYTE4(v34[2]) & 1) == 0)
    {
      free(v34[0]);
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    if ((BYTE4(v38[2]) & 1) == 0)
    {
      v5 = v38[0];
      goto LABEL_21;
    }
  }

  else
  {
    v3 = a2[1];
    if (v3)
    {
      v4 = (v3 - 8);
    }

    else
    {
      v4 = 0;
    }

    v79 = v83;
    v80 = 8;
    v81 = 0;
    v82 = 1;
    v85 = 0;
    v86 = 0;
    v84 = 0;
    llvm::SmallPtrSetImpl<mlir::Block *>::insert(&v79, v4, v42);
    v42[0] = v4;
    LOBYTE(v42[1]) = 0;
    v44 = 0;
    std::vector<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>::push_back[abi:nn200100](&v84, v42);
    memset(v75, 0, sizeof(v75));
    v76 = 0u;
    v73 = &v75[2];
    v74 = 8;
    LOBYTE(v75[1]) = 1;
    v78 = 0;
    v77 = 0;
    llvm::make_range<llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>(v42, &v79, &v73);
    if (*(&v76 + 1))
    {
      v77 = *(&v76 + 1);
      operator delete(*(&v76 + 1));
    }

    if ((v75[1] & 1) == 0)
    {
      free(v73);
    }

    if (v84)
    {
      v85 = v84;
      operator delete(v84);
    }

    if ((v82 & 1) == 0)
    {
      v5 = v79;
LABEL_21:
      free(v5);
    }
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(v61, &v63, v42);
  std::vector<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>::vector[abi:nn200100](v64, v45);
  llvm::pointee_iterator<llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>,mlir::Block>::pointee_iterator<llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>(&__src, v61);
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(v49, &v51, &v46);
  std::vector<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>::vector[abi:nn200100](v52, v48);
  llvm::pointee_iterator<llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>,mlir::Block>::pointee_iterator<llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>(&v53, v49);
  v6 = v68;
  if (v68 == 1)
  {
    v79 = v83;
    v7 = HIDWORD(v66);
    if (HIDWORD(v66))
    {
      memmove(v83, __src, 8 * HIDWORD(v66));
    }

    v8 = v83;
  }

  else
  {
    v8 = __src;
    v79 = __src;
    __src = &v69;
    v7 = HIDWORD(v66);
  }

  v9 = v66;
  v10 = v67;
  v80 = __PAIR64__(v7, v66);
  v81 = v67;
  v82 = v6;
  v66 = 8;
  v67 = 0;
  v68 = 1;
  v11 = v70;
  v12 = v71;
  v84 = v70;
  v85 = v71;
  v13 = v72;
  v86 = v72;
  v72 = 0;
  v70 = 0;
  v71 = 0;
  v14 = v56;
  if (v56 == 1)
  {
    v15 = &v75[2];
    v73 = &v75[2];
    v16 = HIDWORD(v54);
    if (HIDWORD(v54))
    {
      v30 = v8;
      v17 = v9;
      v18 = v10;
      v19 = v11;
      v32 = v12;
      v20 = v13;
      memmove(&v75[2], v53, 8 * HIDWORD(v54));
      v13 = v20;
      v8 = v30;
      v12 = v32;
      v15 = &v75[2];
      v11 = v19;
      v10 = v18;
      v9 = v17;
    }
  }

  else
  {
    v15 = v53;
    v73 = v53;
    v53 = &v57;
    v16 = HIDWORD(v54);
  }

  v21 = v54;
  v22 = v55;
  v74 = __PAIR64__(v16, v54);
  v75[0] = v55;
  LOBYTE(v75[1]) = v14;
  v54 = 8;
  v55 = 0;
  v56 = 1;
  v23 = v58;
  v24 = v59;
  *(&v76 + 1) = v58;
  v77 = v59;
  v25 = v60;
  v78 = v60;
  v60 = 0;
  v58 = 0;
  v59 = 0;
  if (v6)
  {
    *a1 = a1 + 24;
    if (v7)
    {
      v31 = v9;
      v29 = v10;
      v27 = v15;
      v28 = v11;
      v33 = v12;
      v26 = v13;
      memmove((a1 + 24), v8, 8 * v7);
      v13 = v26;
      v15 = v27;
      v12 = v33;
      v11 = v28;
      v10 = v29;
      v9 = v31;
    }
  }

  else
  {
    *a1 = v8;
    v79 = v83;
  }

  *(a1 + 8) = v9;
  *(a1 + 12) = v7;
  *(a1 + 16) = v10;
  *(a1 + 20) = v6;
  v80 = 8;
  v81 = 0;
  v82 = 1;
  *(a1 + 88) = v11;
  *(a1 + 96) = v12;
  *(a1 + 104) = v13;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  if (v14)
  {
    *(a1 + 112) = a1 + 136;
    if (v16)
    {
      memmove((a1 + 136), v15, 8 * v16);
    }
  }

  else
  {
    *(a1 + 112) = v15;
  }

  *(a1 + 120) = v21;
  *(a1 + 124) = v16;
  *(a1 + 128) = v22;
  *(a1 + 132) = v14;
  *(a1 + 200) = v23;
  *(a1 + 208) = v24;
  *(a1 + 216) = v25;
  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }

  if ((v50 & 1) == 0)
  {
    free(v49[0]);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if ((v68 & 1) == 0)
  {
    free(__src);
  }

  if (v64[0])
  {
    v64[1] = v64[0];
    operator delete(v64[0]);
  }

  if ((v62 & 1) == 0)
  {
    free(v61[0]);
  }

  if (v48[0])
  {
    v48[1] = v48[0];
    operator delete(v48[0]);
  }

  if ((v47 & 1) == 0)
  {
    free(v46);
  }

  if (v45[0])
  {
    v45[1] = v45[0];
    operator delete(v45[0]);
  }

  if ((v43 & 1) == 0)
  {
    free(v42[0]);
  }
}

_DWORD *llvm::make_range<llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a2 + 20);
  if (v6 == 1)
  {
    v38 = v42;
    v7 = *(a2 + 12);
    if (v7)
    {
      v8 = v6;
      result = memmove(v42, *a2, 8 * v7);
      v6 = v8;
    }

    v9 = v42;
  }

  else
  {
    v9 = *a2;
    v38 = *a2;
    *a2 = a2 + 24;
    LODWORD(v7) = *(a2 + 12);
  }

  v10 = *(a2 + 8);
  v39 = __PAIR64__(v7, v10);
  v11 = *(a2 + 16);
  v40 = v11;
  v41 = v6;
  *(a2 + 8) = 8;
  *(a2 + 16) = 0;
  *(a2 + 20) = 1;
  v12 = *(a2 + 88);
  v13 = *(a2 + 96);
  v43 = v12;
  v44 = v13;
  v14 = *(a2 + 104);
  v45 = v14;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = 0;
  v15 = *(a3 + 20);
  if (v15 == 1)
  {
    v16 = v37;
    v17 = *(a3 + 12);
    if (v17)
    {
      v31 = v9;
      v35 = v6;
      v18 = v10;
      v19 = v11;
      v20 = v12;
      v21 = v13;
      v33 = v14;
      result = memmove(v37, *a3, 8 * v17);
      v9 = v31;
      v14 = v33;
      v13 = v21;
      v12 = v20;
      v16 = v37;
      v11 = v19;
      v10 = v18;
      v6 = v35;
    }
  }

  else
  {
    v16 = *a3;
    *a3 = a3 + 24;
    LODWORD(v17) = *(a3 + 12);
  }

  v22 = *(a3 + 8);
  v23 = *(a3 + 16);
  *(a3 + 8) = 8;
  *(a3 + 16) = 0;
  *(a3 + 20) = 1;
  v25 = *(a3 + 88);
  v24 = *(a3 + 96);
  v37[8] = v25;
  v37[9] = v24;
  v26 = *(a3 + 104);
  v37[10] = v26;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0;
  if (v6)
  {
    result = v5 + 6;
    *v5 = v5 + 6;
    if (v7)
    {
      v36 = v6;
      v27 = v10;
      v32 = v11;
      v29 = v12;
      v30 = v16;
      v28 = v13;
      v34 = v14;
      result = memmove(result, v9, 8 * v7);
      v14 = v34;
      v13 = v28;
      v12 = v29;
      v16 = v30;
      v11 = v32;
      v10 = v27;
      LOBYTE(v6) = v36;
    }
  }

  else
  {
    *v5 = v9;
    v38 = v42;
  }

  v5[2] = v10;
  v5[3] = v7;
  v5[4] = v11;
  *(v5 + 20) = v6;
  v39 = 8;
  v40 = 0;
  v41 = 1;
  *(v5 + 11) = v12;
  *(v5 + 12) = v13;
  *(v5 + 13) = v14;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  if (v15)
  {
    result = v5 + 34;
    *(v5 + 14) = v5 + 34;
    if (v17)
    {
      result = memmove(result, v16, 8 * v17);
    }
  }

  else
  {
    *(v5 + 14) = v16;
  }

  v5[30] = v22;
  v5[31] = v17;
  v5[32] = v23;
  *(v5 + 132) = v15;
  *(v5 + 25) = v25;
  *(v5 + 26) = v24;
  *(v5 + 27) = v26;
  return result;
}

void std::vector<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::vector<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>>(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *std::vector<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 5);
  }

  return result;
}

void std::vector<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>>(a1, a2);
  }

  std::vector<std::pair<mlir::Block *,std::optional<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>>::__throw_length_error[abi:nn200100]();
}

uint64_t llvm::pointee_iterator<llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>,mlir::Block>::pointee_iterator<llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  if (v4 == 1)
  {
    v5 = v13;
    v6 = *(a2 + 12);
    if (v6)
    {
      memmove(v13, *a2, 8 * v6);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = a2 + 24;
    LODWORD(v6) = *(a2 + 12);
  }

  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  *(a2 + 8) = 8;
  *(a2 + 16) = 0;
  *(a2 + 20) = 1;
  v9 = *(a2 + 88);
  v10 = *(a2 + 96);
  v13[8] = v9;
  v13[9] = v10;
  v11 = *(a2 + 104);
  v13[10] = v11;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = 0;
  if (v4)
  {
    *a1 = a1 + 24;
    if (v6)
    {
      memmove((a1 + 24), v5, 8 * v6);
    }
  }

  else
  {
    *a1 = v5;
  }

  *(a1 + 8) = v7;
  *(a1 + 12) = v6;
  *(a1 + 16) = v8;
  *(a1 + 20) = v4;
  *(a1 + 88) = v9;
  *(a1 + 96) = v10;
  *(a1 + 104) = v11;
  return a1;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::OperationConverter::convertOperations(llvm::ArrayRef<mlir::Operation *>)::$_0>(uint64_t a1, mlir::Operation *a2)
{
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(*a1, a2);
  isLegal = mlir::ConversionTarget::isLegal(*(a1 + 8), a2);
  if (isLegal >= 0x100u && (isLegal & 1) != 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t **mlir::ResultRange::replaceAllUsesWith<mlir::OperandRange>(uint64_t **result, void *a2)
{
  v4 = result[1];
  v5 = a2[1];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v19[9] = v2;
    v19[10] = v3;
    v7 = 0;
    v8 = *result;
    v9 = (v5 - 1);
    v10 = v4 - 1;
    v11 = (*a2 + 24);
    v12 = *result;
    while (1)
    {
      v13 = v8;
      if (!v7)
      {
        goto LABEL_12;
      }

      v14 = v8;
      v15 = v7;
      if (v8)
      {
        v16 = v8[1] & 7;
        v14 = v8;
        v15 = v7;
        if (v16 != 6)
        {
          v17 = (5 - v16);
          v13 = v12;
          v15 = &v7[-v17];
          if (v7 <= v17)
          {
            goto LABEL_12;
          }

          v14 = &v8[-2 * v17];
        }
      }

      v13 = &v14[-3 * v15];
LABEL_12:
      v18 = *v11;
      v11 += 4;
      v19[0] = v18;
      result = mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v13, v19);
      if (v10 != v7)
      {
        v12 -= 2;
        v6 = v9 == v7++;
        if (!v6)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::LookupBucketFor<mlir::Type>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
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
        v7 = (v4 + 16 * (v13 & v5));
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::InsertIntoBucketImpl<mlir::Type>(uint64_t a1, void *a2, void *a3)
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

  llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::LookupBucketFor<mlir::Type>(a1, a2, &v8);
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

char *llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
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
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::LookupBucketFor<mlir::Type>(v5, a2, &v14);
      *v14 = *a2;
      v14[1] = a2[1];
      ++*(v5 + 8);
    }

    a2 += 2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::LookupBucketFor<mlir::Type>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 40 * v5);
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
        v6 = (a1 + 40 * (v13 & v4));
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

void *llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((40 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 40 * v10 - 40;
      v13 = vdupq_n_s64(v12 / 0x28);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[5] = -4096;
        }

        v11 += 2;
        result += 10;
      }

      while (((v12 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = (v4 + 24);
      v16 = 40 * v3;
      do
      {
        v17 = *(v15 - 3);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::LookupBucketFor<mlir::Type>(*a1, *(a1 + 16), v17, &v26);
          v18 = v26;
          *v26 = *(v15 - 3);
          v18[2] = 0x200000000;
          v18[1] = v18 + 3;
          v19 = (v18 + 1);
          if (*(v15 - 2))
          {
            llvm::SmallVectorImpl<mlir::Type>::operator=(v19, (v15 - 2));
          }

          ++*(a1 + 8);
          v20 = *(v15 - 2);
          if (v15 != v20)
          {
            free(v20);
          }
        }

        v15 += 5;
        v16 -= 40;
      }

      while (v16);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = 40 * v21 - 40;
    v24 = vdupq_n_s64(v23 / 0x28);
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v22), xmmword_25D0A0500)));
      if (v25.i8[0])
      {
        *result = -4096;
      }

      if (v25.i8[4])
      {
        result[5] = -4096;
      }

      v22 += 2;
      result += 10;
    }

    while (((v23 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v22);
  }

  return result;
}

uint64_t _ZNSt3__18__all_ofB8nn200100IN4mlir17ValueTypeIteratorIN4llvm6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESA_SA_E8iteratorEEESD_NS_10__identityEZNKS1_13TypeConverter7isLegalINS1_14ValueTypeRangeIS6_EEEENS_9enable_ifIXaantsr3std14is_convertibleIT_NS1_4TypeEEE5valuentsr3std14is_convertibleISK_PNS1_9OperationEEE5valueEbE4typeEOSK_EUlSL_E_EEbSK_T0_RT2_RT1_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2 != a4)
  {
    v7 = a2;
    v9 = a4 - 1;
    v10 = a1 - 16 * a2;
    while (1)
    {
      if (v7)
      {
        if (!a1)
        {
          v12 = 0;
          v13 = v7;
          goto LABEL_11;
        }

        v11 = *(a1 + 8) & 7;
        v12 = a1;
        v13 = v7;
        if (v11 == 6)
        {
          goto LABEL_11;
        }

        v14 = (5 - v11);
        v15 = v10;
        v13 = v7 - v14;
        if (v7 > v14)
        {
          v12 = a1 - 16 * v14;
LABEL_11:
          v15 = v12 - 24 * v13;
        }
      }

      else
      {
        v15 = a1;
      }

      v16 = (*(v15 + 8) & 0xFFFFFFFFFFFFFFF8);
      v10 -= 16;
      v17 = mlir::TypeConverter::convertType(*a5, v16) == v16;
      result = v17;
      v17 = !v17 || v9 == v7++;
      if (v17)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t _ZN4llvm6all_ofIRNS_6detail12concat_rangeIKN4mlir4TypeEJNS_8ArrayRefIS4_EES7_EEEZNKS3_13TypeConverter7isLegalIS8_EENSt3__19enable_ifIXaantsr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISE_PNS3_9OperationEEE5valueEbE4typeEOSE_EUlS4_E_EEbSJ_T0_(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a1 + 8 * a1[1];
  v4 = a1[2];
  v5 = v4 + 8 * a1[3];
  v9 = a2;
  v8[0] = v2;
  v8[1] = v4;
  v8[2] = v3;
  v8[3] = v5;
  v7[0] = v3;
  v7[1] = v5;
  v7[2] = v3;
  v7[3] = v5;
  return _ZNSt3__18__all_ofB8nn200100IN4llvm15concat_iteratorIKN4mlir4TypeEJPS5_S6_EEES7_NS_10__identityEZNKS3_13TypeConverter7isLegalINS1_6detail12concat_rangeIS5_JNS1_8ArrayRefIS4_EESE_EEEEENS_9enable_ifIXaantsr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISH_PNS3_9OperationEEE5valueEbE4typeEOSH_EUlS4_E_EEbSH_T0_RT2_RT1_(v8, v7, &v9);
}

uint64_t _ZNSt3__18__all_ofB8nn200100IN4llvm15concat_iteratorIKN4mlir4TypeEJPS5_S6_EEES7_NS_10__identityEZNKS3_13TypeConverter7isLegalINS1_6detail12concat_rangeIS5_JNS1_8ArrayRefIS4_EESE_EEEEENS_9enable_ifIXaantsr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISH_PNS3_9OperationEEE5valueEbE4typeEOSH_EUlS4_E_EEbSH_T0_RT2_RT1_(void *a1, void *a2, uint64_t *a3)
{
  while (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    v8 = &unk_286E81340;
    do
    {
      v9 = *(v8 - 1);
      v10 = (a1 + (*v8 >> 1));
      if (*v8)
      {
        v9 = *(*v10 + v9);
      }

      v8 += 2;
      v11 = v9(v10);
    }

    while (!v11);
    v12 = *v11;
    if (mlir::TypeConverter::convertType(*a3, *v11) != v12)
    {
      return 0;
    }

    v13 = &unk_286E81360;
    v14 = 16;
    do
    {
      v15 = v14;
      v16 = *(v13 - 1);
      v17 = (a1 + (*v13 >> 1));
      if (*v13)
      {
        v16 = *(*v17 + v16);
      }

      v13 += 2;
      v18 = v16(v17);
      v14 = v15 - 16;
    }

    while ((v18 & 1) == 0 && v15);
  }

  return 1;
}

uint64_t llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*>::getHelper<0ul>(void *a1)
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

uint64_t llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*>::getHelper<1ul>(uint64_t a1)
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

BOOL llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*>::incrementHelper<0ul>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  if (*a1 != v2)
  {
    *a1 = v1 + 8;
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*>::incrementHelper<1ul>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  if (v1 != v2)
  {
    *(a1 + 8) = v1 + 8;
  }

  return v1 != v2;
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,false>::push_back(uint64_t a1, unint64_t a2)
{
  v3 = llvm::SmallVectorTemplateCommon<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,false>>(a1, a2, 1);
  v4 = *a1 + 48 * *(a1 + 8);
  *v4 = *v3;
  v5 = *(v3 + 12);
  *(v4 + 8) = *(v3 + 8);
  *(v4 + 12) = v5;
  result = std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::__value_func[abi:nn200100](v4 + 16, v3 + 16);
  ++*(a1 + 8);
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>,mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>::try_emplace<unsigned int const&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>,mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>::LookupBucketFor<mlir::OperationName>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>,mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>::InsertIntoBucketImpl<mlir::OperationName>(a1, a2, v12);
    v9 = result;
    *result = *a2;
    *(result + 8) = *a3;
    v10 = 1;
  }

  v11 = *a1 + 16 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

unint64_t llvm::SmallVectorTemplateCommon<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + 48 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,false>::grow(a1, v5);
    }
  }

  return a2;
}

void llvm::SmallVectorTemplateBase<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 48, &v6);
  llvm::SmallVectorTemplateBase<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,false>::moveElementsForGrow(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = result;
    v4 = *result;
    v5 = *result + 48 * v2;
    result = a2 + 16;
    v6 = v4 + 16;
    do
    {
      *(result - 16) = *(v6 - 16);
      v7 = *(v6 - 8);
      *(result - 4) = *(v6 - 4);
      *(result - 8) = v7;
      result = std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::__value_func[abi:nn200100](result, v6) + 48;
      v8 = v6 + 32;
      v6 += 48;
    }

    while (v8 != v5);
    v9 = *(v3 + 8);
    if (v9)
    {
      result = *v3 + 48 * v9 - 32;
      v10 = -48 * v9;
      do
      {
        result = std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](result) - 48;
        v10 += 48;
      }

      while (v10);
    }
  }

  return result;
}

uint64_t *llvm::StringMap<mlir::ConversionTarget::LegalizationAction,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, const void *a2, size_t a3, int a4)
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

  buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
  v12 = buffer;
  v13 = buffer + 16;
  if (a3)
  {
    memcpy(buffer + 16, a2, a3);
  }

  v13[a3] = 0;
  *v12 = a3;
  *(v12 + 2) = 0;
  *i = v12;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::operator=[abi:nn200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::operator=[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

size_t **llvm::StringMap<std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, const void *a2, size_t a3, int a4)
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

  buffer = llvm::allocate_buffer((a3 + 41), 8uLL);
  v12 = buffer;
  v13 = (buffer + 5);
  if (a3)
  {
    memcpy(buffer + 5, a2, a3);
  }

  v13[a3] = 0;
  *v12 = a3;
  v12[4] = 0;
  *i = v12;
  ++*(a1 + 3);
    ;
  }

  return i;
}

void llvm::SmallVectorTemplateBase<mlir::PDLValue,true>::push_back(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 16);
    LODWORD(v6) = *(a1 + 8);
  }

  v7 = (*a1 + 16 * v6);
  *v7 = a2;
  v7[1] = a3;
  ++*(a1 + 8);
}

void llvm::SmallVectorTemplateBase<mlir::TypeRange,true>::push_back(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 16);
    LODWORD(v6) = *(a1 + 8);
  }

  v7 = (*a1 + 16 * v6);
  *v7 = a2;
  v7[1] = a3;
  ++*(a1 + 8);
}

uint64_t mlir::OperationFolder::insertKnownConstant(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a3;
  v6 = *(a2 + 16);
  v7 = a1 + 32;
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  if (llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>,mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::doFind<mlir::Operation const*>(v8, v9, a2))
  {
    v10 = *(v6 + 40);
    if (v10 != a2 && !llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>,mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::doFind<mlir::Operation const*>(v8, v9, *a2))
    {
      mlir::Operation::moveBefore(a2, v10);
      *(a2 + 24) = *a1;
    }

    return 1;
  }

  if (!a3)
  {
    v64 = &v63;
    mlir::detail::constant_op_binder<mlir::Attribute>::match(&v64, a2);
  }

  InsertionRegion = getInsertionRegion((a1 + 56), v6);
  v62 = InsertionRegion;
  v12 = *(a1 + 8);
  v64 = 0;
  v13 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::LookupBucketFor<mlir::Region *>(v12, *(a1 + 24), InsertionRegion, &v64);
  v14 = v64;
  if ((v13 & 1) == 0)
  {
    v14 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::InsertIntoBucketImpl<mlir::Region *>(a1 + 8, &v62, v64);
    v14[1] = 0;
    v14[2] = 0;
    *v14 = InsertionRegion;
    *(v14 + 6) = 0;
  }

  v15 = *(a2 + 48);
  if (*(v15 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v16 = (*(v15 + 8) + 32);
  }

  else
  {
    v16 = (v15 + 24);
  }

  v17 = *v16;
  if (*(a2 + 36))
  {
    v18 = a2 - 16;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v18 + 8) & 0xFFFFFFFFFFFFFFF8;
  v64 = v17;
  *&v65 = v63;
  *(&v65 + 1) = v19;
  v66 = 0;
  v20 = llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::LookupBucketFor<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>>(v14[1], *(v14 + 6), &v64, &v66);
  v21 = v66;
  if ((v20 & 1) == 0)
  {
    v67 = v66;
    v47 = *(v14 + 4);
    v48 = *(v14 + 6);
    if (4 * v47 + 4 >= 3 * v48)
    {
      v48 *= 2;
    }

    else if (v48 + ~v47 - *(v14 + 5) > v48 >> 3)
    {
      goto LABEL_46;
    }

    llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::grow((v14 + 1), v48);
    llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::LookupBucketFor<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>>(v14[1], *(v14 + 6), &v64, &v67);
    v47 = *(v14 + 4);
    v21 = v67;
LABEL_46:
    *(v14 + 4) = v47 + 1;
    if (*v21 != -4096 || v21[1] != -4096 || v21[2] != -4096)
    {
      --*(v14 + 5);
    }

    *v21 = v64;
    *(v21 + 1) = v65;
    v21[3] = 0;
    v23 = (v21 + 3);
LABEL_49:
    v49 = *(v62 + 8);
    if (v49)
    {
      v50 = v49 - 8;
    }

    else
    {
      v50 = 0;
    }

    v51 = *(v50 + 40);
    if (v6 != v50 || v51 != a2 && (*(*(a2 + 16) + 40) == a2 ? (v58 = 0) : (v58 = *a2), !llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>,mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::doFind<mlir::Operation const*>(*(a1 + 32), *(a1 + 48), v58)))
    {
      mlir::Operation::moveBefore(a2, v51);
      *(a2 + 24) = *a1;
    }

    *v23 = a2;
    v67 = 0;
    v52 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>,mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::LookupBucketFor<mlir::Operation *>(*(a1 + 32), *(a1 + 48), a2, &v67);
    v53 = v67;
    if (v52)
    {
      goto LABEL_60;
    }

    v64 = v67;
    v54 = *(a1 + 40);
    v55 = *(a1 + 48);
    if (4 * v54 + 4 >= 3 * v55)
    {
      v55 *= 2;
    }

    else if (v55 + ~v54 - *(a1 + 44) > v55 >> 3)
    {
LABEL_57:
      *(a1 + 40) = v54 + 1;
      if (*v53 != -4096)
      {
        --*(a1 + 44);
      }

      *v53 = a2;
      v53[1] = (v53 + 3);
      v53[2] = 0x200000000;
LABEL_60:
      v56 = *(a2 + 48);
      if (*(v56 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        v57 = (*(v56 + 8) + 32);
      }

      else
      {
        v57 = (v56 + 24);
      }

      llvm::SmallVectorTemplateBase<mlir::Dialect *,true>::push_back((v53 + 1), *v57);
      return 1;
    }

    llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::grow(v7, v55);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>,mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::LookupBucketFor<mlir::Operation *>(*(a1 + 32), *(a1 + 48), a2, &v64);
    v54 = *(a1 + 40);
    v53 = v64;
    goto LABEL_57;
  }

  v23 = v66 + 3;
  v22 = v66[3];
  if (!v22)
  {
    goto LABEL_49;
  }

  v24 = *(a1 + 32);
  v25 = *(a1 + 48);
  v26 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>,mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::doFind<mlir::Operation const*>(v24, v25, a2);
  if (v26)
  {
    v27 = v26;
    if (v26 != (v24 + 40 * v25))
    {
      v67 = 0;
      v64 = &v67;
      mlir::detail::constant_op_binder<mlir::Attribute>::match(&v64, a2);
      v28 = getInsertionRegion((a1 + 56), *(a2 + 16));
      v66 = v28;
      v64 = 0;
      v29 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::LookupBucketFor<mlir::Region *>(*(a1 + 8), *(a1 + 24), v28, &v64);
      v30 = v64;
      if ((v29 & 1) == 0)
      {
        v30 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::InsertIntoBucketImpl<mlir::Region *>(a1 + 8, &v66, v64);
        v30[1] = 0;
        v30[2] = 0;
        *v30 = v28;
        v30[3].i32[0] = 0;
      }

      v31 = v27[1];
      v32 = *(v27 + 4);
      if (v32)
      {
        v59 = v27;
        v60 = v23;
        v33 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
        v34 = &v31[v32];
        v35 = v30[3].i32[0];
        v61 = vdupq_n_s64(0xFFFFFFFFFFFFE000);
        do
        {
          v36 = *v31;
          v37 = v67;
          v64 = *v31;
          *&v65 = v67;
          *(&v65 + 1) = v33;
          if (v35)
          {
            v38 = v30[1];
            HashValue = llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>::getHashValueImpl<0u>(&v64);
            for (i = 1; ; ++i)
            {
              v41 = HashValue & (v35 - 1);
              v42 = (*&v38 + 32 * v41);
              if (v36 == *v42 && v42[1] == v37 && v42[2] == v33)
              {
                break;
              }

              if (*v42 == -4096 && v42[1] == -4096 && v42[2] == -4096)
              {
                goto LABEL_35;
              }

              HashValue = v41 + i;
            }

            *v42 = -8192;
            *(v42 + 1) = v61;
            v30[2] = vadd_s32(v30[2], 0x1FFFFFFFFLL);
          }

LABEL_35:
          ++v31;
        }

        while (v31 != v34);
        v27 = v59;
        v23 = v60;
        v31 = v59[1];
      }

      if (v31 != (v27 + 3))
      {
        free(v31);
      }

      *v27 = -8192;
      *(a1 + 40) = vadd_s32(*(a1 + 40), 0x1FFFFFFFFLL);
      v22 = *v23;
    }
  }

  v44 = *(v22 + 36);
  if (v44)
  {
    v45 = (v22 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
  }

  else
  {
    v45 = 4;
  }

  mlir::RewriterBase::replaceAllOpUsesWith(a1 + 112, a2, v45, v44);
  (*(*(a1 + 112) + 16))(a1 + 112, a2);
  result = 0;
  *(*v23 + 24) = *a1;
  return result;
}

unint64_t getInsertionRegion(mlir::detail::DialectInterfaceCollectionBase *a1, uint64_t a2)
{
  for (i = *(a2 + 24) & 0xFFFFFFFFFFFFFFF8; i; i = *(*(v4 + 2) + 24) & 0xFFFFFFFFFFFFFFF8)
  {
    v4 = *(i + 16);
    if (mlir::OperationName::mightHaveTrait<mlir::OpTrait::IsIsolatedFromAbove>(v4 + 48))
    {
      break;
    }

    if (!*(v4 + 2))
    {
      break;
    }

    InterfaceFor = mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, v4);
    if (InterfaceFor)
    {
      if ((*(*InterfaceFor + 24))(InterfaceFor, i))
      {
        break;
      }
    }
  }

  return i;
}

uint64_t llvm::SmallVectorImpl<mlir::Value>::emplace_back<mlir::Value&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a1, *a2);
    v4 = *(a1 + 8);
  }

  else
  {
    *(*a1 + 8 * v3) = *a2;
    v4 = v3 + 1;
    *(a1 + 8) = v4;
  }

  return *a1 + 8 * v4 - 8;
}

uint64_t mlir::OperationName::mightHaveTrait<mlir::OpTrait::IsIsolatedFromAbove>(uint64_t a1)
{
  mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
  if (*(*a1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return 1;
  }

  v2 = *(**a1 + 32);

  return v2();
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::LookupBucketFor<mlir::Region *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v5 = (a1 + 32 * v4);
    v6 = *v5;
    if (*v5 == a3)
    {
      v7 = 1;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      while (v6 != -4096)
      {
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == -8192;
        }

        if (v11)
        {
          v9 = v5;
        }

        v12 = v4 + v10++;
        v4 = v12 & (a2 - 1);
        v5 = (a1 + 32 * v4);
        v6 = *v5;
        v7 = 1;
        if (*v5 == a3)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      if (v9)
      {
        v5 = v9;
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

LABEL_5:
  *a4 = v5;
  return v7;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::InsertIntoBucketImpl<mlir::Region *>(uint64_t a1, uint64_t *a2, void *a3)
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

  llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::LookupBucketFor<mlir::Region *>(*a1, *(a1 + 16), *a2, &v8);
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

char *llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((32 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x7FFFFFFFFFFFFFFLL;
      v13 = v12 & 0x7FFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x7FFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 32;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 4) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 8;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = (v4 + 24);
      v19 = 32 * v3;
      do
      {
        v20 = *(v18 - 3);
        if ((v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::LookupBucketFor<mlir::Region *>(*a1, *(a1 + 16), v20, &v31);
          v21 = *(v18 - 3);
          v22 = v31;
          *(v31 + 24) = 0;
          *(v22 + 8) = 0;
          *(v22 + 16) = 0;
          *v22 = v21;
          *(v22 + 8) = *(v18 - 2);
          *(v18 - 2) = 0;
          *(v22 + 16) = *(v18 - 2);
          *(v18 - 2) = 0;
          LODWORD(v21) = *(v22 + 20);
          *(v22 + 20) = *(v18 - 1);
          *(v18 - 1) = v21;
          LODWORD(v21) = *(v22 + 24);
          *(v22 + 24) = *v18;
          *v18 = v21;
          ++*(a1 + 8);
          MEMORY[0x25F891030](0, 8);
        }

        v18 += 8;
        v19 -= 32;
      }

      while (v19);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0x7FFFFFFFFFFFFFFLL;
    v26 = v25 & 0x7FFFFFFFFFFFFFFLL;
    v27 = (v25 & 0x7FFFFFFFFFFFFFFLL) - (v25 & 1) + 2;
    v28 = vdupq_n_s64(v26);
    v29 = result + 32;
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v24), xmmword_25D0A0500)));
      if (v30.i8[0])
      {
        *(v29 - 4) = -4096;
      }

      if (v30.i8[4])
      {
        *v29 = -4096;
      }

      v24 += 2;
      v29 += 8;
    }

    while (v27 != v24);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::LookupBucketFor<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>>(uint64_t a1, int a2, uint64_t a3, uint64_t **a4)
{
  if (!a2)
  {
    v12 = 0;
    result = 0;
    goto LABEL_25;
  }

  HashValue = llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>::getHashValueImpl<0u>(a3);
  v9 = 0;
  for (i = 1; ; ++i)
  {
    v11 = HashValue & (a2 - 1);
    v12 = (a1 + 32 * v11);
    v13 = *v12;
    if (*a3 == *v12 && *(a3 + 8) == v12[1] && *(a3 + 16) == v12[2])
    {
      result = 1;
      goto LABEL_25;
    }

    if (v13 == -4096)
    {
      break;
    }

    v15 = v13 == -8192 && v12[1] == -8192 && v12[2] == -8192;
LABEL_20:
    if (v15 && v9 == 0)
    {
      v9 = (a1 + 32 * v11);
    }

    HashValue = v11 + i;
  }

  v15 = 0;
  if (v12[1] != -4096 || v12[2] != -4096)
  {
    goto LABEL_20;
  }

  result = 0;
  if (v9)
  {
    v12 = v9;
  }

LABEL_25:
  *a4 = v12;
  return result;
}

uint64_t llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>::getHashValueImpl<0u>(_DWORD *a1)
{
  v1 = 0xBF58476D1CE4E5B9 * ((969526130 * ((a1[4] >> 4) ^ (a1[4] >> 9))) | (((a1[2] >> 4) ^ (a1[2] >> 9)) << 32));
  v2 = 0xBF58476D1CE4E5B9 * ((v1 >> 31) ^ v1 | (((*a1 >> 4) ^ (*a1 >> 9)) << 32));
  return (v2 >> 31) ^ v2;
}

char *llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((32 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = &result[32 * v10];
      v12 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      do
      {
        *result = -4096;
        *(result + 8) = v12;
        result += 32;
      }

      while (result != v11);
    }

    if (!v3)
    {
LABEL_19:

      JUMPOUT(0x25F891030);
    }

    v13 = 32 * v3;
    v14 = v4;
    while (1)
    {
      if (*v14 == -8192)
      {
        if (v14[1] == -8192 && v14[2] == -8192)
        {
          goto LABEL_18;
        }
      }

      else if (*v14 == -4096 && v14[1] == -4096 && v14[2] == -4096)
      {
        goto LABEL_18;
      }

      v19 = 0;
      llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::LookupBucketFor<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>>(*a1, *(a1 + 16), v14, &v19);
      v15 = v19;
      *v19 = *v14;
      v15[1] = v14[1];
      v15[2] = v14[2];
      v15[3] = v14[3];
      ++*(a1 + 8);
LABEL_18:
      v14 += 4;
      v13 -= 32;
      if (!v13)
      {
        goto LABEL_19;
      }
    }
  }

  *(a1 + 8) = 0;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = &result[32 * v16];
    v18 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    do
    {
      *result = -4096;
      *(result + 8) = v18;
      result += 32;
    }

    while (result != v17);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>,mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::LookupBucketFor<mlir::Operation *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 40 * v5);
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
        v6 = (a1 + 40 * (v13 & v4));
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

void *llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((40 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 40 * v10 - 40;
      v13 = vdupq_n_s64(v12 / 0x28);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[5] = -4096;
        }

        v11 += 2;
        result += 10;
      }

      while (((v12 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v11);
    }

    if (!v3)
    {
LABEL_29:

      JUMPOUT(0x25F891030);
    }

    v15 = 40 * v3;
    v16 = v4;
    while (1)
    {
      v17 = *v16;
      if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        break;
      }

LABEL_28:
      v16 += 40;
      v15 -= 40;
      if (!v15)
      {
        goto LABEL_29;
      }
    }

    v29 = 0;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>,mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 16), v17, &v29);
    v18 = v29;
    *v29 = *v16;
    v19 = v18 + 3;
    v18[1] = v18 + 3;
    v18[2] = 0x200000000;
    v20 = *(v16 + 8);
    if (v16 == v18 || (v21 = *(v16 + 16)) == 0)
    {
LABEL_26:
      ++*(a1 + 8);
      if ((v16 + 24) != v20)
      {
        free(v20);
      }

      goto LABEL_28;
    }

    if ((v16 + 24) != v20)
    {
      v18[1] = v20;
      v22 = *(v16 + 20);
      *(v18 + 4) = v21;
      *(v18 + 5) = v22;
      *(v16 + 8) = v16 + 24;
      *(v16 + 20) = 0;
      v20 = (v16 + 24);
LABEL_25:
      *(v16 + 16) = 0;
      goto LABEL_26;
    }

    if (v21 < 3)
    {
      v23 = *(v16 + 16);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v18 + 1), v18 + 3, *(v16 + 16), 8);
      v23 = *(v16 + 16);
      v20 = *(v16 + 8);
      if (!v23)
      {
LABEL_24:
        *(v18 + 4) = v21;
        goto LABEL_25;
      }

      v19 = v18[1];
    }

    memcpy(v19, v20, 8 * v23);
    v20 = *(v16 + 8);
    goto LABEL_24;
  }

  *(a1 + 8) = 0;
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = 0;
    v26 = 40 * v24 - 40;
    v27 = vdupq_n_s64(v26 / 0x28);
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v25), xmmword_25D0A0500)));
      if (v28.i8[0])
      {
        *result = -4096;
      }

      if (v28.i8[4])
      {
        result[5] = -4096;
      }

      v25 += 2;
      result += 10;
    }

    while (((v26 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v25);
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>,mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::doFind<mlir::Operation const*>(uint64_t a1, int a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2 - 1;
  v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
  v5 = (a1 + 40 * v4);
  v6 = *v5;
  if (*v5 != a3)
  {
    v7 = 1;
    while (v6 != -4096)
    {
      v8 = v4 + v7++;
      v4 = v8 & v3;
      v5 = (a1 + 40 * (v8 & v3));
      v6 = *v5;
      if (*v5 == a3)
      {
        return v5;
      }
    }

    return 0;
  }

  return v5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::destroyAll(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 32 * v1;
    v3 = (*result + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        result = MEMORY[0x25F891030](*v3, 8);
      }

      v3 += 4;
      v2 -= 32;
    }

    while (v2);
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>,mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::destroyAll(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 40 * v1;
    v3 = *a1 + 24;
    do
    {
      if ((*(v3 - 24) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = *(v3 - 16);
        if (v3 != v4)
        {
          free(v4);
        }
      }

      v3 += 40;
      v2 -= 40;
    }

    while (v2);
  }
}

void mlir::applyPatternsGreedily(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[26] = *MEMORY[0x277D85DE8];
  if (!*(a3 + 24))
  {
    *(a3 + 24) = a1;
  }

  v3 = *(***(*(a1 + 16) + 24) + 32);
  v5 = 1;
  v4 = &unk_286E813F8;
  v7 = v3;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = &unk_286E81468;
  __p = 0u;
  memset(v12, 0, 28);
  operator new();
}

void anonymous namespace::RegionPatternRewriteDriver::~RegionPatternRewriteDriver(mlir::detail::PDLByteCodeMutableState **this)
{
  *this = &unk_286E813F8;
  mlir::PatternApplicator::~PatternApplicator(this + 25);
  if ((this[20] & 1) == 0)
  {
    MEMORY[0x25F891030](this[21], 8);
  }

  MEMORY[0x25F891030](this[10], 8);
  v2 = this[7];
  if (v2)
  {
    this[8] = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_286E813F8;
  mlir::PatternApplicator::~PatternApplicator(this + 25);
  if ((this[20] & 1) == 0)
  {
    MEMORY[0x25F891030](this[21], 8);
  }

  MEMORY[0x25F891030](this[10], 8);
  v2 = this[7];
  if (v2)
  {
    this[8] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

void anonymous namespace::GreedyPatternRewriteDriver::notifyOperationInserted(uint64_t a1, mlir::Operation *a2)
{
  v5 = a2;
  v4 = *(a1 + 144);
  if (v4)
  {
    (*(*v4 + 16))(v4, a2);
  }

  if (*(a1 + 136) == 1)
  {
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v6, a1 + 160, &v5);
  }
}

uint64_t anonymous namespace::GreedyPatternRewriteDriver::notifyBlockInserted(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t anonymous namespace::GreedyPatternRewriteDriver::notifyBlockErased(_anonymous_namespace_::GreedyPatternRewriteDriver *this, mlir::Block *a2)
{
  result = *(this + 18);
  if (result)
  {
    return (*(*result + 32))(result, a2);
  }

  return result;
}

void anonymous namespace::GreedyPatternRewriteDriver::notifyOperationModified(_anonymous_namespace_::GreedyPatternRewriteDriver *this, mlir::Operation *a2)
{
  v4 = *(this + 18);
  if (v4)
  {
    (*(*v4 + 40))(v4, a2);
  }
}

uint64_t anonymous namespace::GreedyPatternRewriteDriver::notifyOperationReplaced(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t anonymous namespace::GreedyPatternRewriteDriver::notifyOperationErased(_anonymous_namespace_::GreedyPatternRewriteDriver *this, mlir::Operation *a2)
{
  v4 = *(this + 18);
  if (v4)
  {
    (*(*v4 + 64))(v4, a2);
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 17);
    if (v5)
    {
      v6 = 0;
      v7 = *(a2 + 9);
      do
      {
        v8 = *(v7 + 32 * v6 + 24);
        if (v8)
        {
          v9 = v8[1] & 7;
          v10 = v9 == 7;
          v11 = v9 == 7 ? 0 : *(v7 + 32 * v6 + 24);
          if (!v10)
          {
            v12 = *(v11 + 8) & 7;
            if (v12 != 6)
            {
              v14 = (v11 + 16 * v12 + 16);
LABEL_15:
              v15 = *v8;
              if (v15)
              {
                v16 = 0;
                do
                {
                  v17 = v15[2];
                  if (v17 == a2 || v17 == v16)
                  {
                    v17 = v16;
                  }

                  else if (v16)
                  {
                    goto LABEL_26;
                  }

                  v15 = *v15;
                  v16 = v17;
                }

                while (v15);
              }

              goto LABEL_26;
            }

            v13 = v11 + 24 * *(v11 + 16);
            v14 = (v13 + 120);
            if (v13 != -120)
            {
              goto LABEL_15;
            }
          }
        }

LABEL_26:
        ++v6;
      }

      while (v6 != v5);
    }
  }

  v20 = a2;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::doFind<mlir::Operation const*>(this + 10, &v20);
  if (result && result != *(this + 10) + 16 * *(this + 24))
  {
    *(*(this + 7) + 8 * *(result + 8)) = 0;
    *result = -8192;
    *(this + 11) = vadd_s32(*(this + 88), 0x1FFFFFFFFLL);
  }

  if (*(this + 34))
  {
    return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::erase(this + 160, a2);
  }

  return result;
}

uint64_t anonymous namespace::GreedyPatternRewriteDriver::notifyMatchFailure(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 88))();
  }

  return result;
}

void anonymous namespace::GreedyPatternRewriteDriver::~GreedyPatternRewriteDriver(mlir::detail::PDLByteCodeMutableState **this)
{
  *this = &unk_286E813F8;
  mlir::PatternApplicator::~PatternApplicator(this + 25);
  if ((this[20] & 1) == 0)
  {
    MEMORY[0x25F891030](this[21], 8);
  }

  MEMORY[0x25F891030](this[10], 8);
  v2 = this[7];
  if (v2)
  {
    this[8] = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_286E813F8;
  mlir::PatternApplicator::~PatternApplicator(this + 25);
  if ((this[20] & 1) == 0)
  {
    MEMORY[0x25F891030](this[21], 8);
  }

  MEMORY[0x25F891030](this[10], 8);
  v2 = this[7];
  if (v2)
  {
    this[8] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Operation *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14 = 0;
  result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::LookupBucketFor<mlir::Operation *>(a2, *a3, &v14);
  v7 = v14;
  if (result)
  {
    v8 = a2 + 8;
    if (*a2)
    {
      v9 = 4;
    }

    else
    {
      v8 = *(a2 + 8);
      v9 = *(a2 + 16);
    }

    v12 = 0;
    v13 = v8 + 8 * v9;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::InsertIntoBucketImpl<mlir::Operation *>(a2, a3, v14);
    v7 = result;
    *result = *a3;
    v10 = a2 + 8;
    if (*a2)
    {
      v11 = 4;
    }

    else
    {
      v10 = *(a2 + 8);
      v11 = *(a2 + 16);
    }

    v13 = v10 + 8 * v11;
    v12 = 1;
  }

  *a1 = v7;
  *(a1 + 8) = v13;
  *(a1 + 16) = v12;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::LookupBucketFor<mlir::Operation *>(uint64_t a1, uint64_t a2, void *a3)
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
  v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
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

void *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::InsertIntoBucketImpl<mlir::Operation *>(int *a1, uint64_t *a2, void *a3)
{
  v9 = a3;
  v5 = *a1;
  v6 = *a1 >> 1;
  if (*a1)
  {
    v7 = 4;
  }

  else
  {
    v7 = a1[4];
  }

  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - a1[1] > v7 >> 3)
  {
    goto LABEL_6;
  }

  llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow(a1, v7);
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::LookupBucketFor<mlir::Operation *>(a1, *a2, &v9);
  v5 = *a1;
  a3 = v9;
LABEL_6:
  *a1 = v5 + 2;
  if (*a3 != -4096)
  {
    --a1[1];
  }

  return a3;
}

uint64_t llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow(uint64_t a1, unsigned int a2)
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

    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::moveFromOldBuckets(a1, v6, &v6[v7]);
    v15 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F891030);
  }

  v8 = v16;
  for (i = 8; i != 40; i += 8)
  {
    v10 = *(a1 + i);
    if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *v8++ = v10;
    }
  }

  if (a2 > 4)
  {
    *a1 &= ~1u;
    v11 = a2;
    *(a1 + 8) = llvm::allocate_buffer((8 * a2), 8uLL);
    *(a1 + 16) = v11;
  }

  result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::moveFromOldBuckets(a1, v16, v8);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = result + 8;
    v9 = result + 40;
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
      result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::LookupBucketFor<mlir::Operation *>(v5, v15, &v16);
      *v16 = *a2;
      *v5 += 2;
    }

    ++a2;
  }

  return result;
}

void anonymous namespace::GreedyPatternRewriteDriver::addToWorklist(_anonymous_namespace_::GreedyPatternRewriteDriver *this, mlir::Operation *a2)
{
  v42[8] = *MEMORY[0x277D85DE8];
  v40 = v42;
  v41 = 0x800000000;
  while (1)
  {
    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v40, a2);
    v4 = *(a2 + 2);
    if (!v4)
    {
      break;
    }

    v5 = *(v4 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (*(this + 16) == v5)
    {
      goto LABEL_8;
    }

    if (v5)
    {
      a2 = *(v5 + 16);
      if (a2)
      {
        continue;
      }
    }

    goto LABEL_44;
  }

  if (!*(this + 16))
  {
LABEL_8:
    if (v41)
    {
      v6 = v40;
      v7 = v40 + 8 * v41;
      do
      {
        v8 = *v6;
        if (!*(this + 34))
        {
LABEL_22:
          v19 = (*(this + 8) - *(this + 7)) >> 3;
          v37 = *v6;
          v38 = v19;
          v39 = 0;
          if (!llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(this + 10, &v37, &v39))
          {
            v20 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::InsertIntoBucketImpl<mlir::Operation *>(this + 80, &v37, v39);
            *v20 = v37;
            *(v20 + 2) = v38;
            v22 = *(this + 8);
            v21 = *(this + 9);
            if (v22 >= v21)
            {
              v24 = *(this + 7);
              v25 = (v22 - v24) >> 3;
              if ((v25 + 1) >> 61)
              {
                std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
              }

              v26 = v21 - v24;
              v27 = v26 >> 2;
              if (v26 >> 2 <= (v25 + 1))
              {
                v27 = v25 + 1;
              }

              if (v26 >= 0x7FFFFFFFFFFFFFF8)
              {
                v28 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v28 = v27;
              }

              if (v28)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Operation *>>(this + 56, v28);
              }

              v29 = (8 * v25);
              *v29 = v8;
              v23 = 8 * v25 + 8;
              v30 = *(this + 7);
              v31 = *(this + 8) - v30;
              v32 = v29 - v31;
              memcpy(v29 - v31, v30, v31);
              v33 = *(this + 7);
              *(this + 7) = v32;
              *(this + 8) = v23;
              *(this + 9) = 0;
              if (v33)
              {
                operator delete(v33);
              }
            }

            else
            {
              *v22 = v8;
              v23 = (v22 + 1);
            }

            *(this + 8) = v23;
          }

          goto LABEL_36;
        }

        v9 = *(this + 40);
        if (v9)
        {
          v11 = 4;
          v10 = this + 168;
        }

        else
        {
          v10 = *(this + 21);
          v11 = *(this + 44);
          if (!v11)
          {
            v12 = 0;
            v13 = 0;
LABEL_14:
            v14 = &v10[8 * v13];
LABEL_19:
            v18 = &v10[8 * v12];
            goto LABEL_21;
          }
        }

        v15 = v11 - 1;
        v16 = (v11 - 1) & ((v8 >> 4) ^ (v8 >> 9));
        v17 = *&v10[8 * v16];
        if (v17 != v8)
        {
          v34 = 1;
          while (v17 != -4096)
          {
            v35 = v16 + v34++;
            v16 = v35 & v15;
            v17 = *&v10[8 * v16];
            if (v17 == v8)
            {
              goto LABEL_17;
            }
          }

          if (v9)
          {
            goto LABEL_36;
          }

          v10 = *(this + 21);
          v12 = *(this + 44);
          v13 = v12;
          goto LABEL_14;
        }

LABEL_17:
        v14 = &v10[8 * v16];
        if ((v9 & 1) == 0)
        {
          v10 = *(this + 21);
          v12 = *(this + 44);
          goto LABEL_19;
        }

        v18 = this + 200;
LABEL_21:
        if (v18 != v14)
        {
          goto LABEL_22;
        }

LABEL_36:
        v6 += 8;
      }

      while (v6 != v7);
    }
  }

LABEL_44:
  if (v40 != v42)
  {
    free(v40);
  }

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::erase(uint64_t result, uint64_t a2)
{
  v2 = result + 8;
  if (*result)
  {
    v3 = 4;
  }

  else
  {
    v3 = *(result + 16);
    if (!v3)
    {
      return result;
    }

    v2 = *(result + 8);
  }

  v4 = v3 - 1;
  v5 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v6 = *(v2 + 8 * v5);
  if (v6 == a2)
  {
LABEL_6:
    *(v2 + 8 * v5) = -8192;
    v7 = *(result + 4) + 1;
    *result -= 2;
    *(result + 4) = v7;
  }

  else
  {
    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v2 + 8 * v5);
      if (v6 == a2)
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

void mlir::DialectInterfaceCollection<mlir::DialectFoldInterface>::~DialectInterfaceCollection(mlir::detail::DialectInterfaceCollectionBase *a1)
{
  mlir::detail::DialectInterfaceCollectionBase::~DialectInterfaceCollectionBase(a1);

  JUMPOUT(0x25F891040);
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<anonymous namespace::RegionPatternRewriteDriver::simplify(BOOL *)::$_0>(_anonymous_namespace_::GreedyPatternRewriteDriver **a1, mlir::Operation *a2)
{
  v3 = *a1;
  if (*(*a1 + 153) != 1 || (v4 = a1[1], v5 = &v6, v6 = 0, !mlir::detail::constant_op_binder<mlir::Attribute>::match(&v5, a2)) || (mlir::OperationFolder::insertKnownConstant(*v4, a2, v6) & 1) != 0)
  {
  }
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<anonymous namespace::RegionPatternRewriteDriver::simplify(BOOL *)::$_1>(_anonymous_namespace_::GreedyPatternRewriteDriver **a1, mlir::Operation *a2)
{
  v3 = *a1;
  if (*(*a1 + 153) == 1)
  {
    v4 = a1[1];
    v6 = &v7;
    v7 = 0;
    if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v6, a2) && !mlir::OperationFolder::insertKnownConstant(*v4, a2, v7))
    {
      return 2;
    }
  }

  return 1;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::operator[](uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::InsertIntoBucketImpl<mlir::Operation *>(a1, a2, v7);
    *v5 = *a2;
    *(v5 + 2) = 0;
  }

  return v5 + 1;
}

void mlir::MLIRContext::executeActionInternal<anonymous namespace::GreedyPatternRewriteIteration,long long &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a5;
  v6[4] = a6;
  v6[0] = &unk_286E814F0;
  std::function<void ()(llvm::function_ref<void ()(void)>,mlir::tracing::Action const&)>::operator()(a1, a2, a3, v6);
}

llvm::raw_ostream *anonymous namespace::GreedyPatternRewriteIteration::print(_anonymous_namespace_::GreedyPatternRewriteIteration *this, llvm::raw_ostream *a2)
{
  v2 = a2;
  v4 = *(a2 + 4);
  if (*(a2 + 3) - v4 > 0x1DuLL)
  {
    qmemcpy(v4, "GreedyPatternRewriteIteration(", 30);
    *(a2 + 4) += 30;
  }

  else
  {
    v2 = llvm::raw_ostream::write(a2, "GreedyPatternRewriteIteration(", 0x1EuLL);
  }

  result = llvm::write_integer(v2, *(this + 4), 0, 0);
  v6 = *(v2 + 4);
  if (*(v2 + 3) == v6)
  {

    return llvm::raw_ostream::write(v2, ")", 1uLL);
  }

  else
  {
    *v6 = 41;
    ++*(v2 + 4);
  }

  return result;
}

void llvm::function_ref<void ()(void)>::callback_fn<anonymous namespace::RegionPatternRewriteDriver::simplify(BOOL *)::$_2>(uint64_t a1, mlir::Operation *a2)
{
  v91[6] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  if (v4 == v5)
  {
    v6 = 0;
    goto LABEL_105;
  }

  v6 = 0;
  v7 = 0;
  v8 = v91;
  v9 = (v3 + 16);
  v10 = &v88;
  v11 = &v86;
  do
  {
    v12 = v4;
    while (!*v12)
    {
      if (++v12 == v5)
      {
        goto LABEL_105;
      }
    }

    v13 = *(v3 + 120);
    v14 = v7 < v13 || v13 == -1;
    if (!v14)
    {
      break;
    }

    while (1)
    {
      v16 = *--v5;
      v15 = v16;
      if (v16)
      {
        break;
      }

      *(v3 + 64) = v5;
    }

    *(v3 + 64) = v5;
    v17 = *(v3 + 96);
    if (v17)
    {
      v18 = *(v3 + 80);
      v19 = v17 - 1;
      v20 = (v17 - 1) & ((v15 >> 4) ^ (v15 >> 9));
      v21 = *(v18 + 16 * v20);
      if (v21 == v15)
      {
LABEL_16:
        *(v18 + 16 * v20) = -8192;
        *(v3 + 88) = vadd_s32(*(v3 + 88), 0x1FFFFFFFFLL);
        v4 = *(v3 + 56);
        v5 = *(v3 + 64);
      }

      else
      {
        v68 = 1;
        while (v21 != -4096)
        {
          v69 = v20 + v68++;
          v20 = v69 & v19;
          v21 = *(v18 + 16 * v20);
          if (v21 == v15)
          {
            goto LABEL_16;
          }
        }
      }
    }

    if (v4 != v5)
    {
      v22 = v5 - 1;
      do
      {
        if (*v22)
        {
          break;
        }

        *(v3 + 64) = v22;
        v14 = v22-- == v4;
      }

      while (!v14);
    }

    v79 = v15;
    if (mlir::isOpTriviallyDead(v15, a2))
    {
      mlir::RewriterBase::eraseOp(v9, v79);
      v6 = 1;
      goto LABEL_98;
    }

    if (*(v3 + 152) != 1)
    {
      goto LABEL_88;
    }

    v24 = v79;
    v25 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
    if ((*(**(v24 + 6) + 32))(*(v24 + 6), v25))
    {
      goto LABEL_88;
    }

    v89 = v8;
    v90 = 0x600000000;
    v75 = v11;
    if ((mlir::Operation::fold(v79, &v89) & 1) == 0)
    {
      goto LABEL_84;
    }

    v26 = v90;
    if (!v90)
    {
      (*(*v3 + 40))(v3, v79);
      v6 = 1;
      v47 = 2;
      goto LABEL_85;
    }

    v73 = v9;
    v74 = v8;
    v27 = 0;
    v76 = *(v3 + 40);
    v28 = v79;
    *(v3 + 40) = *(v79 + 2);
    *(v3 + 48) = v28;
    v72 = v10;
    v86 = v10;
    v87 = 0x600000000;
    v29 = v28 - 16;
    v77 = *(v28 + 9);
    if (v77)
    {
      v30 = v28 - 16;
    }

    else
    {
      v30 = 0;
    }

    v31 = v89;
    v32 = 8 * v26;
    v33 = v28 - 16;
    while (1)
    {
      v34 = v30;
      if (v27)
      {
        v35 = v29;
        v36 = v27;
        if (!v77)
        {
          goto LABEL_37;
        }

        v37 = *(v30 + 1) & 7;
        v35 = v29;
        v36 = v27;
        if (v37 == 6)
        {
          goto LABEL_37;
        }

        v38 = (5 - v37);
        v34 = v33;
        v36 = v27 - v38;
        if (v27 > v38)
        {
          v35 = &v29[-16 * v38];
LABEL_37:
          v34 = &v35[-24 * v36];
        }
      }

      v39 = *(v34 + 1);
      v40 = v31[v27];
      v41 = v40 & 0xFFFFFFFFFFFFFFF8;
      if ((v40 & 4) != 0 && v41)
      {
        goto LABEL_45;
      }

      v42 = *(v79 + 6);
      v43 = (*(v42 + 16) == &mlir::detail::TypeIDResolver<void,void>::id ? *(v42 + 8) + 32 : v42 + 24);
      v44 = (*(**v43 + 24))(*v43, v3 + 24, v41, v39 & 0xFFFFFFFFFFFFFFF8, *(v79 + 3));
      if (!v44)
      {
        break;
      }

      v41 = v44 - 16;
LABEL_45:
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v86, v41);
      ++v27;
      v33 -= 16;
      v32 -= 8;
      if (!v32)
      {
        v45 = v79;
        v9 = v73;
        mlir::RewriterBase::replaceAllOpUsesWith(v73, v79, v86 & 0xFFFFFFFFFFFFFFF9, v87);
        (*(*v9 + 16))(v9, v45);
        v46 = v76;
        v47 = 2;
        v48 = 1;
        v6 = 1;
        v8 = v74;
        goto LABEL_78;
      }
    }

    v81 = 1;
    v49 = -4096;
    v82 = -4096;
    v83 = -4096;
    v84 = -4096;
    v85 = -4096;
    if (v87)
    {
      v50 = v86;
      v51 = 8 * v87;
      v8 = v74;
      do
      {
        v52 = *v50;
        if ((~*(*v50 + 8) & 7) == 0)
        {
          v52 = 0;
        }

        if (v52)
        {
          v53 = *(v52 + 8) & 7;
          if (v53 == 6)
          {
            v54 = v52 + 24 * *(v52 + 16) + 120;
          }

          else
          {
            v54 = v52 + 16 * v53 + 16;
          }
        }

        else
        {
          v54 = 0;
        }

        v78 = v54;
        v80 = 0;
        if ((llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::LookupBucketFor<mlir::Operation *>(&v81, v54, &v80) & 1) == 0)
        {
          *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::InsertIntoBucketImpl<mlir::Operation *>(&v81, &v78, v80) = v54;
        }

        v50 += 8;
        v51 -= 8;
      }

      while (v51);
      v55 = v81;
      v49 = v82;
      v56 = v83;
    }

    else
    {
      v55 = 1;
      v56 = 4294963200;
      v8 = v74;
    }

    v57 = llvm::detail::DenseSetImpl<mlir::Operation *,llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,llvm::DenseMapInfo<mlir::Operation *,void>>::begin(&v81);
    if (v55)
    {
      v58 = v75;
    }

    else
    {
      v58 = (v49 + 8 * v56);
    }

    v9 = v73;
    v46 = v76;
    if (v58 != v57)
    {
      v59 = v57;
      v60 = a2;
      do
      {
        v61 = *v59++;
        mlir::RewriterBase::eraseOp(v73, v61);
        if (v59 == v60)
        {
          v46 = v76;
        }

        else
        {
          v46 = v76;
          do
          {
            if ((*v59 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              break;
            }

            ++v59;
          }

          while (v59 != v60);
        }
      }

      while (v59 != v58);
      v55 = v81;
    }

    if ((v55 & 1) == 0)
    {
      MEMORY[0x25F891030](v82, 8, v46);
      v46 = v76;
    }

    v48 = 0;
    v47 = 0;
LABEL_78:
    v10 = v72;
    if (v86 != v72)
    {
      free(v86);
      v46 = v76;
    }

    if (v46.n128_u64[0])
    {
      *(v3 + 40) = v46;
    }

    else
    {
      *(v3 + 40) = 0;
      *(v3 + 48) = 0;
    }

    if ((v48 & 1) == 0)
    {
LABEL_84:
      v47 = 0;
    }

LABEL_85:
    if (v89 != v8)
    {
      free(v89);
    }

    v11 = v75;
    if (!v47)
    {
LABEL_88:
      v89 = v3;
      v90 = &v79;
      v86 = v3;
      v81 = v3;
      v62 = *(v3 + 144);
      v63 = v62 == 0;
      if (v62)
      {
      }

      else
      {
        v64 = 0;
      }

      if (v62)
      {
      }

      else
      {
        v65 = 0;
      }

      if (v63)
      {
        v66 = 0;
      }

      else
      {
      }

      v67 = mlir::PatternApplicator::matchAndRewrite(v3 + 200, v79, v9, v66, &v89, v64, &v86, v23, v65, &v81);
      v7 += v67 & 1;
      v6 |= v67;
    }

LABEL_98:
    v4 = *(v3 + 56);
    v5 = *(v3 + 64);
  }

  while (v4 != v5);
LABEL_105:
  **a1 = v6 & 1;
  v70 = *(v3 + 108);
  if (v70)
  {
    **a1 |= mlir::simplifyRegions(v3 + 16, *(v3 + 264), 1uLL, v70 == 2) & 1;
  }

  v71 = *MEMORY[0x277D85DE8];
}

int *llvm::detail::DenseSetImpl<mlir::Operation *,llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,llvm::DenseMapInfo<mlir::Operation *,void>>::begin(int *a1)
{
  v2 = *a1;
  if (*a1 > 1)
  {
    if (v2)
    {
      result = a1 + 2;
      v5 = a1 + 10;
LABEL_8:
      while ((*result | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        result += 2;
        if (result == v5)
        {
          return v5;
        }
      }
    }

    else
    {
      result = *(a1 + 1);
      v4 = a1[4];
      v5 = &result[2 * v4];
      if (v4)
      {
        goto LABEL_8;
      }
    }
  }

  else if (v2)
  {
    return a1 + 10;
  }

  else
  {
    return (*(a1 + 1) + 8 * a1[4]);
  }

  return result;
}

uint64_t llvm::function_ref<BOOL ()(mlir::Pattern const&)>::callback_fn<anonymous namespace::GreedyPatternRewriteDriver::processWorklist(void)::$_0>(void **a1, uint64_t a2)
{
  v3 = (*a1)[18];
  if (v3)
  {
    (*(*v3 + 72))(v3, a2, *a1[1]);
  }

  return 1;
}

uint64_t llvm::function_ref<void ()(mlir::Pattern const&)>::callback_fn<anonymous namespace::GreedyPatternRewriteDriver::processWorklist(void)::$_1>(uint64_t a1, uint64_t a2)
{
  result = *(*a1 + 144);
  if (result)
  {
    return (*(*result + 80))(result, a2, 0);
  }

  return result;
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(mlir::Pattern const&)>::callback_fn<anonymous namespace::GreedyPatternRewriteDriver::processWorklist(void)::$_2>(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 144);
  if (v2)
  {
    (*(*v2 + 80))(v2, a2, 1);
  }

  return 1;
}

uint64_t mlir::Inliner::Impl::optimizeCallable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a2 + 48) + 8);
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  v9 = llvm::xxh3_64bits(v8, v7, a3);
  Key = llvm::StringMapImpl::FindKey(a3, v8, v7, v9);
  v11 = Key;
  if (Key == -1)
  {
    v11 = *(a3 + 8);
  }

  if (v11 == *(a3 + 8))
  {
    if (*(*(*a1 + 64) + 24))
    {
      operator new();
    }

    return 1;
  }

  else
  {
    v12 = *(*a1 + 16);
    v13 = *(*a3 + 8 * v11);
    v14 = *(*a1 + 56);
    v17 = a2;
    if (v14)
    {
      return (*(*v14 + 48))(v14, v12, v13 + 8, &v17);
    }

    else
    {
      v16 = std::__throw_bad_function_call[abi:nn200100]();
      return mlir::Inliner::doInlining(v16);
    }
  }
}

uint64_t mlir::Inliner::doInlining(mlir::CallGraph **this)
{
  v170[1] = *MEMORY[0x277D85DE8];
  v159 = this;
  v160 = v162;
  v161 = 0x200000000;
  v2 = this[1];
  v3 = *(***(*this + 3) + 32);
  v127[0] = 0;
  v127[1] = 0;
  v128 = 0;
  v4 = mlir::detail::TypeIDResolver<mlir::DialectInlinerInterface,void>::resolveTypeID();
  {
    llvm::getTypeName<mlir::DialectInlinerInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::DialectInlinerInterface>();
    *algn_27FC18708 = v118;
  }

  v119 = v3;
  mlir::detail::DialectInterfaceCollectionBase::DialectInterfaceCollectionBase(v149, v3, v4);
  v149[0] = &unk_286E81528;
  v150[0] = &v153;
  v150[1] = 8;
  v151 = 0;
  v152 = 1;
  v154 = v156;
  v155 = 0x800000000;
  v157 = v2;
  v158 = v127;
  v5 = *this;
  v6 = this[1];
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  v126 = v127;
  v133 = 0;
  v134 = 0;
  LODWORD(v135) = 0;
  v165[0] = v127;
  v165[1] = &v133;
  v7 = *(v5 + 16) == 0;
  v163 = v6;
  v164 = &v120;
  if (v134)
  {
    if (v135)
    {
      v8 = 16 * v135;
      v9 = v133;
      while ((*v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v9 += 2;
        v8 -= 16;
        if (!v8)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v9 = v133;
    }

    v10 = &v133[2 * v135];
    if (v9 != v10)
    {
      v11 = v122;
      v12 = v121;
LABEL_11:
      v13 = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>,mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>::doFind<mlir::CallGraphNode *>(v120, v11, v9[1]);
      if (v13)
      {
        *v13 = -8192;
        v12 = vadd_s32(v12, 0x1FFFFFFFFLL);
        v121 = v12;
      }

      while (1)
      {
        v9 += 2;
        if (v9 == v10)
        {
          break;
        }

        if ((*v9 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          if (v9 != v10)
          {
            goto LABEL_11;
          }

          break;
        }
      }
    }
  }

LABEL_16:
  v14 = *(v6 + 8);
  if (v14)
  {
    v15 = 16 * v14;
    v16 = (*(v6 + 3) + 8);
    do
    {
      v17 = *v16;
      v16 += 2;
      v15 -= 16;
    }

    while (v15);
  }

  MEMORY[0x25F891030](v133, 8);
  v18 = this[1];
  LODWORD(v133) = 0;
  v134 = 0;
  v135 = 0;
  v136 = 0;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0;
  llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::DFSVisitOne(&v133, v18 + 40);
  llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::GetNextSCC(&v133);
  __p = 0;
  __dst = 0;
  v131 = 0;
  v132 = &v133;
  v19 = *(&v138 + 1);
  v20 = v139;
  v21 = 1;
  if (*(&v138 + 1) != v139)
  {
    while (1)
    {
      v22 = v20 - v19;
      v23 = v131;
      v24 = __p;
      if (v131 - __p < (v20 - v19))
      {
        if (__p)
        {
          __dst = __p;
          operator delete(__p);
          v23 = 0;
          __p = 0;
          __dst = 0;
          v131 = 0;
        }

        v25 = v22 >> 3;
        if (!((v22 >> 3) >> 61))
        {
          if (v23 >> 2 > v25)
          {
            v25 = v23 >> 2;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFF8)
          {
            v26 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v25;
          }

          std::vector<mlir::CallGraphNode *>::__vallocate[abi:nn200100](&__p, v26);
        }

        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v27 = __dst;
      v28 = __dst - __p;
      if (__dst - __p >= v22)
      {
        memmove(__p, v19, v20 - v19);
        v31 = &v24[v22];
      }

      else
      {
        if (__dst != __p)
        {
          memmove(__p, v19, __dst - __p);
          v27 = __dst;
        }

        v29 = &v19[v28];
        v30 = v20 - &v19[v28];
        if (v30)
        {
          memmove(v27, v29, v30);
        }

        v31 = &v27[v30];
      }

      __dst = v31;
      llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::GetNextSCC(&v133);
      v33 = v157;
      v163 = v165;
      v164 = 0x400000000;
      v34 = __p;
      v35 = __dst;
      if (__p != __dst)
      {
        break;
      }

LABEL_95:
      v167 = 0;
      v166 = 0u;
      v168 = v170;
      v169 = 0x100000000;
      while (v34 != v35)
      {
        v71 = *v34;
        v163 = v71;
        if (!*v71)
        {
          goto LABEL_120;
        }

        v72 = *(*v71 + 16);
        if (mlir::SymbolOpInterface::classof(v72, v32))
        {
          v74 = v120;
          v75 = v122;
          v76 = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>,mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>::doFind<mlir::CallGraphNode const*>(v120, v122, v71);
          if (v76)
          {
            v77 = v76 == v74 + 16 * v75;
          }

          else
          {
            v77 = 1;
          }

          if (!v77 && !*(v76 + 8))
          {
            goto LABEL_118;
          }
        }

        else if (mlir::isMemoryEffectFree(v72, v73))
        {
          v78 = v72[9];
          if (v78)
          {
            v79 = v72 - 4;
          }

          else
          {
            v79 = 0;
          }

          if (!v78)
          {
LABEL_118:
            llvm::SetVector<mlir::CallGraphNode *,llvm::SmallVector<mlir::CallGraphNode *,1u>,llvm::DenseSet<mlir::CallGraphNode *,llvm::DenseMapInfo<mlir::CallGraphNode *,void>>,1u>::insert(&v166, &v163);
            goto LABEL_120;
          }

          v80 = 0;
          v81 = v72 - 4;
          while (2)
          {
            v82 = v79;
            if (v80)
            {
              v83 = *(v72 - 1) & 7;
              v84 = (v72 - 4);
              v85 = v80;
              if (v83 == 6)
              {
                goto LABEL_115;
              }

              v86 = (5 - v83);
              v82 = v81;
              v85 = v80 - v86;
              if (v80 > v86)
              {
                v84 = &v72[-4 * v86 - 4];
LABEL_115:
                v82 = (v84 - 24 * v85);
              }
            }

            if (*v82)
            {
              break;
            }

            ++v80;
            v81 -= 4;
            if (v78 == v80)
            {
              goto LABEL_118;
            }

            continue;
          }
        }

        collectCallOps(*(*v71 + 8), *v71, v71, v33, v158, &v154, 0);
LABEL_120:
        ++v34;
      }

      v163 = v165;
      v164 = 0x800000000;
      if (v155)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::optional<unsigned long>>>(v155);
      }

      if (v169)
      {
        v87 = v168;
        v88 = &v168[v169];
        do
        {
          v89 = *v87;
          v90 = __p;
          if (__p != __dst)
          {
            while (*v90 != v89)
            {
              v90 = v90 + 8;
              if (v90 == __dst)
              {
                goto LABEL_135;
              }
            }
          }

          if (v90 != __dst)
          {
            v91 = (__dst - (v90 + 8));
            if (__dst != v90 + 8)
            {
              memmove(v90, v90 + 8, __dst - (v90 + 8));
            }

            __dst = &v91[v90];
            v92 = v132;
            v142 = v89;
            v145 = 0;
            v93 = *llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::operator[](v132 + 1, &v142);
            *llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::operator[](v92 + 1, &v145) = v93;
            v94 = *(v92 + 6);
            if (v94)
            {
              v95 = v92[1];
              v96 = v94 - 1;
              v97 = ((v142 >> 4) ^ (v142 >> 9)) & (v94 - 1);
              v98 = *(v95 + 16 * v97);
              if (v98 == v142)
              {
LABEL_134:
                *(v95 + 16 * v97) = -8192;
                v92[2] = vadd_s32(v92[2], 0x1FFFFFFFFLL);
              }

              else
              {
                v99 = 1;
                while (v98 != -4096)
                {
                  v100 = v97 + v99++;
                  v97 = v100 & v96;
                  v98 = *(v95 + 16 * v97);
                  if (v98 == v142)
                  {
                    goto LABEL_134;
                  }
                }
              }
            }
          }

LABEL_135:
          llvm::SmallPtrSetImplBase::insert_imp(v150, v89);
          ++v87;
        }

        while (v87 != v88);
      }

      LODWORD(v155) = 0;
      if (v163 != v165)
      {
        free(v163);
      }

      if (v168 != v170)
      {
        free(v168);
      }

      MEMORY[0x25F891030](v166, 8);
      v19 = *(&v138 + 1);
      v20 = v139;
      if (*(&v138 + 1) == v139)
      {
        v21 = 1;
        goto LABEL_153;
      }
    }

    do
    {
      v36 = *v34;
      v37 = **v34;
      if (v37)
      {
        v38 = *(v36 + 56);
        if (v38)
        {
          v39 = *(v36 + 48);
          v40 = 8 * v38;
          while ((*v39 & 6) != 4)
          {
            ++v39;
            v40 -= 8;
            if (!v40)
            {
              goto LABEL_43;
            }
          }
        }

        else
        {
LABEL_43:
          v41 = *(v37 + 16);
          v42 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
          if ((*(**(v41 + 48) + 32))(*(v41 + 48), v42))
          {
            llvm::SmallVectorTemplateBase<mlir::CallGraphNode *,true>::push_back(&v163, v36);
          }
        }
      }

      ++v34;
    }

    while (v34 != v35);
    v43 = v164;
    v44 = v163;
    if (v164)
    {
      if (*(*v119 + 41) == 1)
      {
        v45 = (*(**(*v119 + 48) + 40))(*(*v119 + 48));
      }

      else
      {
        v45 = 1;
      }

      v46 = v161;
      if (v161 < v45)
      {
        v47 = v45;
        v48 = *(v159 + 8);
        if (HIDWORD(v161) < v45)
        {
          llvm::SmallVectorTemplateBase<llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>,false>::grow(&v160, v45);
          v46 = v161;
        }

        if (v46 != v45)
        {
          v49 = v46;
          if (v46 <= v45)
          {
            v52 = (v48 + 32);
            if (HIDWORD(v161) < v45)
            {
              if (v160 <= v52 && v160 + 24 * v46 > v52)
              {
                v101 = v52 - v160;
                llvm::SmallVectorTemplateBase<llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>,false>::grow(&v160, v47);
                v52 = (v160 + v101);
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>,false>::grow(&v160, v45);
              }
            }

            v53 = v161;
            v54 = v47 - v49;
            if (v47 != v49)
            {
              v55 = (v160 + 24 * v161);
              v56 = v49 - v47;
              do
              {
                v55 = (llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::StringMap(v55, v52) + 24);
              }

              while (!__CFADD__(v56++, 1));
              v53 = v161;
            }

            v45 = v53 + v54;
          }

          else
          {
            v50 = 24 * v45 - 24 * v46;
            v51 = v160 + 24 * v46 - 24;
            do
            {
              v51 = (llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::~StringMap(v51) - 24);
              v50 += 24;
            }

            while (v50);
          }

          LODWORD(v161) = v45;
        }
      }

      v58 = 0;
      v59 = &v44[v43];
      do
      {
        mlir::AnalysisManager::nest((v159 + 24), *(*v44[v58++] + 16));
      }

      while (v43 != v58);
      v142 = 0;
      v143 = 0;
      v144 = 0;
      if (v161)
      {
        operator new();
      }

      v145 = &v142;
      v146 = &v159;
      v147 = v44;
      v148 = v43;
      if (v43 != 1 && (*(*v119 + 41) & 1) != 0)
      {
        operator new();
      }

      v60 = &v142;
      do
      {
        v61 = *v44;
        v62 = v146;
        v63 = *v60;
        v64 = v60[1];
        if (*v60 == v64)
        {
          v66 = *v60;
        }

        else
        {
          while (1)
          {
            v65 = 0;
            atomic_compare_exchange_strong(v63, &v65, 1u);
            if (!v65)
            {
              break;
            }

            if (++v63 == v64)
            {
              LODWORD(v63) = v64;
              break;
            }
          }

          LODWORD(v66) = v63;
          v60 = v145;
          v63 = *v145;
        }

        v67 = (v66 - v63);
        v68 = mlir::Inliner::Impl::optimizeCallable(v62, *(*v61 + 16), *(v62 + 8) + 24 * v67);
        atomic_store(0, *v60 + v67);
        if ((v68 & 1) == 0)
        {
          break;
        }

        v44 = v147 + 1;
        v147 = v44;
      }

      while (v44 != v59);
      if (v142)
      {
        v143 = v142;
        operator delete(v142);
      }

      v44 = v163;
      if ((v68 & 1) == 0)
      {
        LOBYTE(v69) = 1;
        goto LABEL_91;
      }

      if (v164)
      {
        v69 = 8 * v164;
        do
        {
          v70 = *v44++;
          v69 -= 8;
        }

        while (v69);
        v44 = v163;
        goto LABEL_91;
      }
    }

    LOBYTE(v69) = 0;
LABEL_91:
    if (v44 != v165)
    {
      free(v44);
    }

    if (v69)
    {
      v21 = 0;
      goto LABEL_153;
    }

    v33 = v157;
    v34 = __p;
    v35 = __dst;
    goto LABEL_95;
  }

LABEL_153:
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  if (v140)
  {
    *(&v140 + 1) = v140;
    operator delete(v140);
  }

  if (*(&v138 + 1))
  {
    *&v139 = *(&v138 + 1);
    operator delete(*(&v138 + 1));
  }

  if (v137)
  {
    *(&v137 + 1) = v137;
    operator delete(v137);
  }

  MEMORY[0x25F891030](v134, 8);
  if (v21)
  {
    v102 = 64;
    if (v152)
    {
      v102 = 68;
    }

    v103 = *(v149 + v102);
    if (v103)
    {
      v104 = 8 * v103;
      v105 = v150[0];
      while (*v105 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v105 += 8;
        v104 -= 8;
        if (!v104)
        {
          goto LABEL_179;
        }
      }
    }

    else
    {
      v105 = v150[0];
    }

    v106 = v150[0] + 8 * v103;
    if (v105 != v106)
    {
      v107 = *v105;
LABEL_172:
      v108 = *(*v107 + 16);
      if (*(v108 + 2))
      {
        *(v108 + 2) = 0;
        v110 = *v108;
        v109 = *(v108 + 1);
        *v109 = *v108;
        *(v110 + 8) = v109;
        *v108 = 0;
        *(v108 + 1) = 0;
      }

      mlir::Operation::destroy(v108);
      while (1)
      {
        v105 += 8;
        if (v105 == v106)
        {
          break;
        }

        v107 = *v105;
        if (*v105 < 0xFFFFFFFFFFFFFFFELL)
        {
          v21 = 1;
          if (v105 != v106)
          {
            goto LABEL_172;
          }

          goto LABEL_180;
        }
      }
    }

LABEL_179:
    v21 = 1;
  }

LABEL_180:
  v111 = v123;
  if (v125)
  {
    v112 = 56 * v125;
    do
    {
      if ((*v111 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        MEMORY[0x25F891030](v111[4], 8);
        MEMORY[0x25F891030](v111[1], 8);
      }

      v111 += 7;
      v112 -= 56;
    }

    while (v112);
    v111 = v123;
  }

  MEMORY[0x25F891030](v111, 8);
  MEMORY[0x25F891030](v120, 8);
  v149[0] = &unk_286E81528;
  if (v154 != v156)
  {
    free(v154);
  }

  if ((v152 & 1) == 0)
  {
    free(v150[0]);
  }

  mlir::detail::DialectInterfaceCollectionBase::~DialectInterfaceCollectionBase(v149);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(v127);
  MEMORY[0x25F891030](v127[0], 8);
  v113 = v160;
  if (v161)
  {
    v114 = -24 * v161;
    v115 = v160 + 24 * v161 - 24;
    do
    {
      v115 = (llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::~StringMap(v115) - 24);
      v114 += 24;
    }

    while (v114);
    v113 = v160;
  }

  if (v113 != v162)
  {
    free(v113);
  }

  v116 = *MEMORY[0x277D85DE8];
  return v21;
}

void anonymous namespace::InlinerInterfaceImpl::~InlinerInterfaceImpl(_anonymous_namespace_::InlinerInterfaceImpl *this)
{
  *this = &unk_286E81528;
  v2 = *(this + 18);
  if (v2 != this + 160)
  {
    free(v2);
  }

  if ((*(this + 76) & 1) == 0)
  {
    free(*(this + 7));
  }

  mlir::detail::DialectInterfaceCollectionBase::~DialectInterfaceCollectionBase(this);
}

{
  *this = &unk_286E81528;
  v2 = *(this + 18);
  if (v2 != this + 160)
  {
    free(v2);
  }

  if ((*(this + 76) & 1) == 0)
  {
    free(*(this + 7));
  }

  mlir::detail::DialectInterfaceCollectionBase::~DialectInterfaceCollectionBase(this);

  JUMPOUT(0x25F891040);
}

void anonymous namespace::InlinerInterfaceImpl::processInlinedBlocks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2 - 8;
  if (!a2)
  {
    v6 = 0;
  }

  v7 = (*(v6 + 24) & 0xFFFFFFFFFFFFFFF8);
  for (i = *(a1 + 416); ; i = *(a1 + 416))
  {
    v9 = mlir::CallGraph::lookupNode(i, v7);
    if (v9)
    {
      break;
    }

    v10 = *(*(v7 + 2) + 16);
    if (v10)
    {
      v7 = (*(v10 + 24) & 0xFFFFFFFFFFFFFFF8);
    }

    else
    {
      v7 = 0;
    }
  }

  v11 = *(a1 + 416);
  v12 = *(a1 + 424);

  collectCallOps(a2, a3, v9, v11, v12, a1 + 144, 1);
}

void collectCallOps(uint64_t a1, uint64_t a2, uint64_t a3, mlir::CallGraph *a4, uint64_t a5, uint64_t a6, char a7)
{
  v38[16] = *MEMORY[0x277D85DE8];
  v35 = a3;
  v36 = v38;
  v37 = 0x800000000;
  if (a1 != a2)
  {
    v12 = a1;
    do
    {
      if (v12)
      {
        v13 = v12 - 8;
      }

      else
      {
        v13 = 0;
      }

      llvm::SmallVectorImpl<std::pair<mlir::Block *,mlir::CallGraphNode *>>::emplace_back<mlir::Block *,mlir::CallGraphNode *&>(&v36, v13, &v35);
      v12 = *(v12 + 8);
    }

    while (v12 != a2);
    v14 = v37;
    while (v14)
    {
      v15 = v36 + 16 * v14;
      v16 = *(v15 - 2);
      v17 = *(v15 - 1);
      LODWORD(v37) = --v14;
      v18 = v16 + 32;
      v19 = *(v16 + 40);
      if (v19 != v16 + 32)
      {
        do
        {
          if (mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(v19) && (InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(v19), v21 = InterfaceFor, v19))
          {
            v22 = (*InterfaceFor)(InterfaceFor, v19);
            if ((v22 & 4) != 0 || (v23 = (v22 & 0xFFFFFFFFFFFFFFF8), (v22 & 0xFFFFFFFFFFFFFFF8) == 0) || *(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id && !v23[3])
            {
              v24 = mlir::CallGraph::resolveCallable(a4, v19, v21, a5);
              if (*v24)
              {
                v25 = *(a6 + 8);
                if (v25 >= *(a6 + 12))
                {
                  llvm::SmallVectorTemplateBase<mlir::Inliner::ResolvedCall,true>::growAndEmplaceBack<mlir::CallOpInterface &,mlir::CallGraphNode *&,mlir::CallGraphNode *&>(a6, v19, v21, v17, v24);
                }

                else
                {
                  v26 = (*a6 + 32 * v25);
                  *v26 = v19;
                  v26[1] = v21;
                  v26[2] = v17;
                  v26[3] = v24;
                  ++*(a6 + 8);
                }
              }
            }
          }

          else
          {
            v27 = *(v19 + 44);
            if ((v27 & 0x7FFFFF) != 0)
            {
              v28 = (v19 + 16 * ((v27 >> 23) & 1) + ((v27 >> 21) & 0x7F8) + 32 * *(v19 + 40) + 64);
              v29 = (v28 + 24 * (v27 & 0x7FFFFF));
              do
              {
                v30 = mlir::CallGraph::lookupNode(a4, v28);
                if ((a7 & 1) != 0 || !v30)
                {
                  if (v30)
                  {
                    v31 = v30;
                  }

                  else
                  {
                    v31 = v17;
                  }

                  v32 = *(v28 + 1);
                  v35 = v31;
                  while (v32 != v28)
                  {
                    if (v32)
                    {
                      v33 = v32 - 8;
                    }

                    else
                    {
                      v33 = 0;
                    }

                    llvm::SmallVectorImpl<std::pair<mlir::Block *,mlir::CallGraphNode *>>::emplace_back<mlir::Block *,mlir::CallGraphNode *&>(&v36, v33, &v35);
                    v32 = *(v32 + 1);
                  }
                }

                v28 = (v28 + 24);
              }

              while (v28 != v29);
            }
          }

          v19 = *(v19 + 8);
        }

        while (v19 != v18);
        v14 = v37;
      }
    }
  }

  if (v36 != v38)
  {
    free(v36);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void llvm::SmallVectorImpl<std::pair<mlir::Block *,mlir::CallGraphNode *>>::emplace_back<mlir::Block *,mlir::CallGraphNode *&>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<std::pair<mlir::Block *,mlir::CallGraphNode *>,true>::push_back(a1, a2, *a3);
  }

  else
  {
    v4 = (*a1 + 16 * v3);
    *v4 = a2;
    v4[1] = *a3;
    *(a1 + 8) = v3 + 1;
  }
}

void llvm::SmallVectorTemplateBase<std::pair<mlir::Block *,mlir::CallGraphNode *>,true>::push_back(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 16);
    LODWORD(v6) = *(a1 + 8);
  }

  v7 = (*a1 + 16 * v6);
  *v7 = a2;
  v7[1] = a3;
  ++*(a1 + 8);
}

__n128 llvm::SmallVectorTemplateBase<mlir::Inliner::ResolvedCall,true>::growAndEmplaceBack<mlir::CallOpInterface &,mlir::CallGraphNode *&,mlir::CallGraphNode *&>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v6 = *(a1 + 8);
  v7 = *a1;
  v8 = v13;
  if (v6 >= *(a1 + 12))
  {
    if (v7 <= v13 && v7 + 32 * v6 > v13)
    {
      v12 = v13 - v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 32);
      v7 = *a1;
      v8 = &v12[*a1];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 32);
      v7 = *a1;
      v8 = v13;
    }
  }

  v9 = (v7 + 32 * *(a1 + 8));
  result = *v8;
  v11 = *(v8 + 1);
  *v9 = *v8;
  v9[1] = v11;
  ++*(a1 + 8);
  return result;
}

uint64_t anonymous namespace::CGUseList::recomputeUses(void *a1, uint64_t a2, mlir::CallGraph *a3)
{
  v12 = a2;
  v11 = *(*a2 + 16);
  v5 = v11;
  MEMORY[0x25F891030](*v6, 8);
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  MEMORY[0x25F891030](*(v6 + 24), 8);
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  MEMORY[0x25F891030](0, 8);
  MEMORY[0x25F891030](0, 8);
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  v8[0] = a1;
  v8[1] = &v11;
  v8[2] = v6;
  return MEMORY[0x25F891030](v9[0], 8);
}

mlir::Region::OpIterator *llvm::function_ref<void ()(mlir::Operation *,BOOL)>::callback_fn<anonymous namespace::CGUseList::CGUseList(mlir::Operation *,mlir::CallGraph &,mlir::SymbolTableCollection &)::$_0>(mlir::Region::OpIterator *result, uint64_t a2, char a3)
{
  v3 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  if (*v3 != v3)
  {
    v5 = result;
    for (i = v3[1]; i != v3; i = i[1])
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

    if (i != v3)
    {
      v8 = *(result + 1);
      v9 = i - 1;
      if (!i)
      {
        v9 = 0;
      }

      v10 = v9[5];
      v23[0] = ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v23[1] = i;
      for (j = v10; j; v10 = j)
      {
        v11 = llvm::DefaultDoCastIfPossible<mlir::CallableOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallableOpInterface,mlir::Operation *,void>>::doCastIfPossible(v10);
        if (v11 && (v13 = *v5, v14 = (*v12)(v12, v11), (v22 = mlir::CallGraph::lookupNode(v13, v14)) != 0))
        {
          v16 = llvm::DefaultDoCastIfPossible<mlir::SymbolOpInterface,mlir::Operation *,llvm::CastInfo<mlir::SymbolOpInterface,mlir::Operation *,void>>::doCastIfPossible(v10, v15);
          if (v16)
          {
            v18 = v16;
            v19 = v17;
            if ((a3 & 1) != 0 || (*(v17 + 32))(v17, v16))
            {
              if ((*(v19 + 112))(v19, v18))
              {
                v25 = 0;
                v20 = v22;
                if ((llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>,mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>::LookupBucketFor<mlir::CallGraphNode *>(*v8, *(v8 + 16), v22, &v25) & 1) == 0)
                {
                  v21 = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>,mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>::InsertIntoBucketImpl<mlir::CallGraphNode *>(v8, &v22, v25);
                  *v21 = v20;
                  *(v21 + 2) = 0;
                }
              }
            }
          }
        }

        else
        {
        }

        result = mlir::Region::OpIterator::operator++(v23);
      }
    }
  }

  return result;
}

void walkReferencedSymbolNodes(mlir::SymbolTable *a1, mlir::CallGraph *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, void), uint64_t a6)
{
  mlir::SymbolTable::getSymbolUses(a1, &__p);
  v12 = *(a1 + 2);
  if (v12 && (v13 = *(v12 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v14 = *(v13 + 16);
  }

  else
  {
    v14 = 0;
  }

  v15 = __p;
  v16 = v30;
  while (v15 != v16)
  {
    v17 = v15[1];
    v32 = 0;
    v18 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::CallGraphNode *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::CallGraphNode *>>,mlir::Attribute,mlir::CallGraphNode *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::CallGraphNode *>>::LookupBucketFor<mlir::Attribute>(*a4, *(a4 + 16), v17, &v32);
    v19 = v32;
    if (v18)
    {
      v20 = v32[1];
      if (v20)
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v21 = *(a4 + 16);
    v33 = v32;
    v22 = *(a4 + 8);
    if (4 * v22 + 4 >= (3 * v21))
    {
      LODWORD(v21) = 2 * v21;
    }

    else if (v21 + ~v22 - *(a4 + 12) > v21 >> 3)
    {
      goto LABEL_12;
    }

    llvm::DenseMap<mlir::Attribute,mlir::CallGraphNode *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::CallGraphNode *>>::grow(a4, v21);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::CallGraphNode *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::CallGraphNode *>>,mlir::Attribute,mlir::CallGraphNode *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::CallGraphNode *>>::LookupBucketFor<mlir::Attribute>(*a4, *(a4 + 16), v17, &v33);
    v22 = *(a4 + 8);
    v19 = v33;
LABEL_12:
    *(a4 + 8) = v22 + 1;
    if (*v19 != -4096)
    {
      --*(a4 + 12);
    }

    *v19 = v17;
    v19[1] = 0;
    v23 = v15[1];
    NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(v14, v21);
    if (NearestSymbolTable)
    {
      v25 = mlir::SymbolTableCollection::lookupSymbolIn(a3, NearestSymbolTable, v23);
      if (v25)
      {
        v27 = llvm::DefaultDoCastIfPossible<mlir::CallableOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallableOpInterface,mlir::Operation *,void>>::doCastIfPossible(v25);
        if (v27)
        {
          v28 = (*v26)(v26, v27);
          v20 = mlir::CallGraph::lookupNode(a2, v28);
          v19[1] = v20;
          if (v20)
          {
LABEL_20:
            a5(a6, v20, *v15);
          }
        }
      }
    }

LABEL_21:
    v15 += 2;
  }

  if (v31 == 1 && __p)
  {
    v30 = __p;
    operator delete(__p);
  }
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::CallableOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallableOpInterface,mlir::Operation *,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (v1)
  {
    mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  }

  return v1;
}

uint64_t mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>,mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>::LookupBucketFor<mlir::CallGraphNode *>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>,mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>::InsertIntoBucketImpl<mlir::CallGraphNode *>(uint64_t a1, uint64_t *a2, void *a3)
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

  llvm::DenseMap<mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>,mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>::LookupBucketFor<mlir::CallGraphNode *>(*a1, *(a1 + 16), *a2, &v8);
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

char *llvm::DenseMap<mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>::grow(uint64_t a1, int a2)
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
          llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>,mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>::LookupBucketFor<mlir::CallGraphNode *>(*a1, *(a1 + 16), v20, &v30);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::CallGraphNode *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::CallGraphNode *>>,mlir::Attribute,mlir::CallGraphNode *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::CallGraphNode *>>::LookupBucketFor<mlir::Attribute>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

char *llvm::DenseMap<mlir::Attribute,mlir::CallGraphNode *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::CallGraphNode *>>::grow(uint64_t a1, int a2)
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
          llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::CallGraphNode *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::CallGraphNode *>>,mlir::Attribute,mlir::CallGraphNode *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::CallGraphNode *>>::LookupBucketFor<mlir::Attribute>(*a1, *(a1 + 16), v20, &v30);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>,mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>::doFind<mlir::CallGraphNode *>(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v3 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v4 = *(a1 + 16 * v3);
    if (v4 == a3)
    {
      return a1 + 16 * v3;
    }

    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (a2 - 1);
      v4 = *(a1 + 16 * v3);
      if (v4 == a3)
      {
        return a1 + 16 * v3;
      }
    }
  }

  return 0;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser>>,mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser>>::operator[](uint64_t a1, uint64_t *a2)
{
  v9 = 0;
  v5 = v9;
  if (v4)
  {
    return v5 + 8;
  }

  v10 = v9;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 12) <= v7 >> 3)
  {
LABEL_9:
    v6 = *(a1 + 8);
    v5 = v10;
  }

  *(a1 + 8) = v6 + 1;
  if (*v5 != -4096)
  {
    --*(a1 + 12);
  }

  *v5 = *a2;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  return v5 + 8;
}

void *anonymous namespace::CGUseList::decrementDiscardableUses(void *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = 8 * v4;
      v6 = *a2;
      while ((*v6 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        ++v6;
        v5 -= 8;
        if (!v5)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v6 = *a2;
    }

    v7 = *a2 + 8 * v4;
    if (v7 != v6)
    {
      do
      {
        v8 = *v6++;
        v15 = v8;
        result = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>,mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>::operator[](v3, &v15);
        --*result;
        while (v6 != v7 && (*v6 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          ++v6;
        }
      }

      while (v6 != v7);
    }
  }

LABEL_14:
  if (*(a2 + 32))
  {
    v9 = *(a2 + 24);
    v10 = *(a2 + 40);
    if (v10)
    {
      v11 = 16 * v10;
      for (i = *(a2 + 24); (*i | 0x1000) == 0xFFFFFFFFFFFFF000; i += 16)
      {
        v11 -= 16;
        if (!v11)
        {
          return result;
        }
      }
    }

    else
    {
      i = *(a2 + 24);
    }

    v13 = v9 + 16 * v10;
LABEL_22:
    if (i != v13)
    {
      v14 = *(i + 8);
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>,mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>::operator[](v3, i);
      *result -= v14;
      while (1)
      {
        i += 16;
        if (i == v13)
        {
          break;
        }

        if ((*i | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          goto LABEL_22;
        }
      }
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser>>,mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser>>::LookupBucketFor<mlir::CallGraphNode *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 56 * v5);
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
        v6 = (a1 + 56 * (v13 & v4));
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser>>,mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((56 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = (56 * v10 - 56) / 0x38;
      v13 = vdupq_n_s64(v12);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[7] = -4096;
        }

        v11 += 2;
        result += 14;
      }

      while (((v12 + 2) & 0xFFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 56 * v3;
      v16 = v4 + 24;
      do
      {
        v17 = *(v16 - 24);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v28 = 0;
          v18 = v28;
          *(v28 + 24) = 0;
          *(v18 + 8) = 0;
          *(v18 + 16) = 0;
          *v18 = v17;
          *(v18 + 8) = *(v16 - 16);
          *(v16 - 16) = 0;
          *(v18 + 16) = *(v16 - 8);
          *(v16 - 8) = 0;
          v19 = *(v18 + 20);
          *(v18 + 20) = *(v16 - 4);
          *(v16 - 4) = v19;
          v20 = *(v18 + 24);
          *(v18 + 24) = *v16;
          *v16 = v20;
          *(v18 + 32) = 0;
          *(v18 + 40) = 0;
          *(v18 + 48) = 0;
          *(v18 + 32) = *(v16 + 8);
          *(v16 + 8) = 0;
          *(v18 + 40) = *(v16 + 16);
          *(v16 + 16) = 0;
          v21 = *(v18 + 44);
          *(v18 + 44) = *(v16 + 20);
          *(v16 + 20) = v21;
          v22 = *(v18 + 48);
          *(v18 + 48) = *(v16 + 24);
          *(v16 + 24) = v22;
          ++*(a1 + 8);
          MEMORY[0x25F891030](0, 8);
          MEMORY[0x25F891030](*(v16 - 16), 8);
        }

        v16 += 56;
        v15 -= 56;
      }

      while (v15);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = (56 * v23 - 56) / 0x38;
    v26 = vdupq_n_s64(v25);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v24), xmmword_25D0A0500)));
      if (v27.i8[0])
      {
        *result = -4096;
      }

      if (v27.i8[4])
      {
        result[7] = -4096;
      }

      v24 += 2;
      result += 14;
    }

    while (((v25 + 2) & 0xFFFFFFFFFFFFFFELL) != v24);
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>,mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>::operator[](uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>,mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>::LookupBucketFor<mlir::CallGraphNode *>(*a1, *(a1 + 16), *a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>,mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>::InsertIntoBucketImpl<mlir::CallGraphNode *>(a1, a2, v7);
    *v5 = *a2;
    *(v5 + 2) = 0;
  }

  return v5 + 1;
}

_DWORD *llvm::function_ref<void ()(mlir::CallGraphNode *,mlir::Operation *)>::callback_fn<anonymous namespace::CGUseList::recomputeUses(mlir::CallGraphNode *,mlir::CallGraph &)::$_0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a2;
  v5 = **a1;
  v6 = *(*a1 + 16);
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>,mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>::doFind<mlir::CallGraphNode const*>(v5, v6, a2);
  if (result)
  {
    v8 = result == (v5 + 16 * v6);
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = result;
    v10 = *(a1 + 16);
    if (**(a1 + 8) == a3)
    {
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseSetPair<mlir::CallGraphNode *>>,mlir::CallGraphNode *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseSetPair<mlir::CallGraphNode *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v12, v10, &v11);
      if (v12[16] != 1)
      {
        return result;
      }
    }

    else
    {
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>,mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>::operator[](v10 + 24, &v11);
      ++*result;
    }

    ++v9[2];
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>,mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>::doFind<mlir::CallGraphNode const*>(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v3 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v4 = *(a1 + 16 * v3);
    if (v4 == a3)
    {
      return a1 + 16 * v3;
    }

    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (a2 - 1);
      v4 = *(a1 + 16 * v3);
      if (v4 == a3)
      {
        return a1 + 16 * v3;
      }
    }
  }

  return 0;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseSetPair<mlir::CallGraphNode *>>,mlir::CallGraphNode *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseSetPair<mlir::CallGraphNode *>>::try_emplace<llvm::detail::DenseSetEmpty&>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseSetPair<mlir::CallGraphNode *>>,mlir::CallGraphNode *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseSetPair<mlir::CallGraphNode *>>::LookupBucketFor<mlir::CallGraphNode *>(*a2, *(a2 + 16), *a3, &v12);
  v7 = v12;
  v8 = *(a2 + 16);
  if (result)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v13 = v12;
  v10 = *(a2 + 8);
  if (4 * v10 + 4 >= 3 * v8)
  {
    v8 *= 2;
    goto LABEL_10;
  }

  if (v8 + ~v10 - *(a2 + 12) <= v8 >> 3)
  {
LABEL_10:
    llvm::DenseMap<mlir::CallGraphNode *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseSetPair<mlir::CallGraphNode *>>::grow(a2, v8);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseSetPair<mlir::CallGraphNode *>>,mlir::CallGraphNode *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseSetPair<mlir::CallGraphNode *>>::LookupBucketFor<mlir::CallGraphNode *>(*a2, *(a2 + 16), *a3, &v13);
    v10 = *(a2 + 8);
    v7 = v13;
  }

  *(a2 + 8) = v10 + 1;
  if (*v7 != -4096)
  {
    --*(a2 + 12);
  }

  *v7 = *a3;
  v8 = *(a2 + 16);
  v9 = 1;
LABEL_8:
  v11 = *a2 + 8 * v8;
  *a1 = v7;
  *(a1 + 8) = v11;
  *(a1 + 16) = v9;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseSetPair<mlir::CallGraphNode *>>,mlir::CallGraphNode *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseSetPair<mlir::CallGraphNode *>>::LookupBucketFor<mlir::CallGraphNode *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 8 * v5);
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
        v6 = (a1 + 8 * (v13 & v4));
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

char *llvm::DenseMap<mlir::CallGraphNode *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseSetPair<mlir::CallGraphNode *>>::grow(uint64_t a1, int a2)
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

    if (v3)
    {
      v18 = 8 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseSetPair<mlir::CallGraphNode *>>,mlir::CallGraphNode *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseSetPair<mlir::CallGraphNode *>>::LookupBucketFor<mlir::CallGraphNode *>(*a1, *(a1 + 16), v20, &v29);
          *v29 = *v19;
          ++*(a1 + 8);
        }

        ++v19;
        v18 -= 8;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v21 + 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 & 0x1FFFFFFFFFFFFFFFLL;
    v25 = (v23 & 0x1FFFFFFFFFFFFFFFLL) - (v23 & 1) + 2;
    v26 = vdupq_n_s64(v24);
    v27 = result + 8;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v22), xmmword_25D0A0500)));
      if (v28.i8[0])
      {
        *(v27 - 1) = -4096;
      }

      if (v28.i8[4])
      {
        *v27 = -4096;
      }

      v22 += 2;
      v27 += 2;
    }

    while (v25 != v22);
  }

  return result;
}

void llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::DFSVisitOne(int *a1, uint64_t a2)
{
  v19 = a2;
  v3 = *a1 + 1;
  *a1 = v3;
  *llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::operator[](a1 + 1, &v19) = v3;
  std::vector<mlir::CallGraphNode *>::push_back[abi:nn200100]((a1 + 8), &v19);
  v4 = *(v19 + 48);
  v5 = *a1;
  v6 = *(a1 + 11);
  v7 = *(a1 + 12);
  if (v6 >= v7)
  {
    v9 = *(a1 + 10);
    v10 = (v6 - v9) >> 5;
    v11 = v10 + 1;
    if ((v10 + 1) >> 59)
    {
      std::vector<llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::StackElement,std::allocator<llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::StackElement>>::__throw_length_error[abi:nn200100]();
    }

    v12 = v7 - v9;
    if (v12 >> 4 > v11)
    {
      v11 = v12 >> 4;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFE0)
    {
      v13 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::StackElement>>((a1 + 20), v13);
    }

    v14 = 32 * v10;
    *v14 = v19;
    *(v14 + 8) = v4;
    *(v14 + 16) = llvm::GraphTraits<mlir::CallGraphNode const*>::unwrap;
    *(v14 + 24) = v5;
    v8 = 32 * v10 + 32;
    v15 = *(a1 + 10);
    v16 = *(a1 + 11) - v15;
    v17 = (32 * v10 - v16);
    memcpy(v17, v15, v16);
    v18 = *(a1 + 10);
    *(a1 + 10) = v17;
    *(a1 + 11) = v8;
    *(a1 + 12) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v6 = v19;
    *(v6 + 8) = v4;
    *(v6 + 16) = llvm::GraphTraits<mlir::CallGraphNode const*>::unwrap;
    *(v6 + 24) = v5;
    v8 = v6 + 32;
  }

  *(a1 + 11) = v8;
}

uint64_t *llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::GetNextSCC(uint64_t *result)
{
  v1 = (result + 7);
  result[8] = result[7];
  if (result[10] != result[11])
  {
    v2 = result;
    while (1)
    {
      llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::DFSVisitChildren(v2);
      v4 = v2[10];
      v3 = v2[11];
      v6 = *(v3 - 32);
      v5 = *(v3 - 8);
      v2[11] = v3 - 32;
      if (v4 != v3 - 32 && *(v3 - 40) > v5)
      {
        *(v3 - 40) = v5;
      }

      result = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::operator[](v2 + 1, &v6);
      if (v5 == *result)
      {
        break;
      }

      if (v2[10] == v2[11])
      {
        return result;
      }
    }

    do
    {
      std::vector<mlir::CallGraphNode *>::push_back[abi:nn200100](v1, (v2[5] - 8));
      v2[5] -= 8;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::operator[](v2 + 1, (v2[8] - 8));
      *result = -1;
    }

    while (*(v2[8] - 8) != v6);
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::operator[](uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::LookupBucketFor<mlir::CallGraphNode *>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::InsertIntoBucketImpl<mlir::CallGraphNode *>(a1, a2, v7);
    *v5 = *a2;
    *(v5 + 2) = 0;
  }

  return v5 + 1;
}

void std::vector<mlir::CallGraphNode *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::CallGraphNode *>>(a1, v10);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::LookupBucketFor<mlir::CallGraphNode *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
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
        v7 = (v4 + 16 * (v13 & v5));
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::InsertIntoBucketImpl<mlir::CallGraphNode *>(uint64_t a1, void *a2, void *a3)
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

  llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::LookupBucketFor<mlir::CallGraphNode *>(a1, a2, &v8);
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

char *llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::moveFromOldBuckets(a1, v4, v4 + 16 * v3);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
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
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::LookupBucketFor<mlir::CallGraphNode *>(v5, a2, &v14);
      *v14 = *a2;
      *(v14 + 8) = *(a2 + 8);
      ++*(v5 + 8);
    }

    a2 += 16;
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::CallGraphNode *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::StackElement>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::DFSVisitChildren(uint64_t a1)
{
  v2 = *(a1 + 88);
  while (1)
  {
    result = *(v2 - 24);
    if (result == *(*(v2 - 32) + 48) + 8 * *(*(v2 - 32) + 56))
    {
      break;
    }

    v4 = *(v2 - 16);
    *(v2 - 24) = result + 8;
    v5 = v4();
    v8 = v5;
    v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::doFind<mlir::CallGraphNode const*>((a1 + 8), &v8);
    if (!v6 || v6 == *(a1 + 8) + 16 * *(a1 + 24))
    {
      llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::DFSVisitOne(a1, v5);
      v2 = *(a1 + 88);
    }

    else
    {
      v7 = *(v6 + 8);
      v2 = *(a1 + 88);
      if (*(v2 - 8) > v7)
      {
        *(v2 - 8) = v7;
      }
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::doFind<mlir::CallGraphNode const*>(uint64_t *a1, void *a2)
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

void std::vector<mlir::CallGraphNode *>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::CallGraphNode *>>(a1, a2);
  }

  std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
}

uint64_t llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100]((v5 + 8), 0);
          MEMORY[0x25F891030](v5, 8);
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

void llvm::SmallVectorTemplateBase<llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>,false>::grow(uint64_t a1, unint64_t a2)
{
  v13 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v13);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[24 * v6];
    v8 = v4;
    do
    {
      *v8 = *v5;
      *(v8 + 8) = *(v5 + 8);
      *v5 = 0;
      *(v5 + 1) = 0;
      *(v5 + 4) = 0;
      v8 += 24;
      v5 += 24;
    }

    while (v5 != v7);
    v5 = *a1;
    v9 = *(a1 + 8);
    if (v9)
    {
      v10 = -24 * v9;
      v11 = &v5[24 * v9 - 24];
      do
      {
        v11 = llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::~StringMap(v11) - 24;
        v10 += 24;
      }

      while (v10);
      v5 = *a1;
    }
  }

  v12 = v13;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v12;
}

llvm::StringMapImpl *llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::StringMap(llvm::StringMapImpl *this, uint64_t *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0x1000000000;
  if (*(a2 + 3))
  {
    llvm::StringMapImpl::init(this, *(a2 + 2));
    v4 = *this;
    v5 = *(this + 2);
    v6 = *a2;
    *(this + 12) = *(a2 + 12);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v8 = *(*a2 + 8 * i);
        if (v8)
        {
          v9 = v8 == -8;
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          llvm::StringMapEntry<mlir::OpPassManager>::create<llvm::MallocAllocator,mlir::OpPassManager&>((v8 + 16), *v8, this, (v8 + 8));
        }

        *(*this + 8 * i) = v8;
      }
    }
  }

  return this;
}

void llvm::StringMapEntry<mlir::OpPassManager>::create<llvm::MallocAllocator,mlir::OpPassManager&>(const void *a1, size_t a2, uint64_t a3, uint64_t *a4)
{
  buffer = llvm::allocate_buffer((a2 + 17), 8uLL);
  v8 = buffer;
  v9 = (buffer + 2);
  if (a2)
  {
    memcpy(buffer + 2, a1, a2);
  }

  v9[a2] = 0;
  *v8 = a2;
  v8[1] = 0;
  mlir::OpPassManager::operator=((v8 + 1), a4);
}

__n128 std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0>(mlir::MLIRContext *,mlir::CallGraphNode **,mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&)::{lambda(void)#1},std::allocator<mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E815A0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0>(mlir::MLIRContext *,mlir::CallGraphNode **,mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&)::{lambda(void)#1},std::allocator<mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = atomic_load(*(a1 + 8));
  if ((v1 & 1) == 0)
  {
    do
    {
      add = atomic_fetch_add(*(a1 + 16), 1u);
      if (add >= **(a1 + 24))
      {
        break;
      }

      mlir::detail::ParallelDiagnosticHandlerImpl::setOrderIDForThread(**(a1 + 32), add);
      v4 = *(**(a1 + 48) + 8 * add);
      v5 = *(a1 + 40);
      v6 = v5[1];
      v7 = **v5;
      v8 = (*v5)[1];
      if (v7 == v8)
      {
        v10 = **v5;
      }

      else
      {
        while (1)
        {
          v9 = 0;
          atomic_compare_exchange_strong(v7, &v9, 1u);
          if (!v9)
          {
            break;
          }

          if (++v7 == v8)
          {
            LODWORD(v7) = v8;
            break;
          }
        }

        LODWORD(v10) = v7;
        v7 = **v5;
      }

      v11 = (v10 - v7);
      v12 = mlir::Inliner::Impl::optimizeCallable(v6, *(*v4 + 16), *(v6 + 8) + 24 * v11);
      atomic_store(0, &(**v5)[v11]);
      if ((v12 & 1) == 0)
      {
        atomic_store(1u, *(a1 + 8));
      }

      mlir::detail::ParallelDiagnosticHandlerImpl::eraseOrderIDForThread(**(a1 + 32));
      v13 = atomic_load(*(a1 + 8));
    }

    while ((v13 & 1) == 0);
  }
}

void llvm::SmallVectorTemplateBase<mlir::CallGraphNode *,true>::push_back(uint64_t a1, uint64_t a2)
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

void llvm::SetVector<mlir::CallGraphNode *,llvm::SmallVector<mlir::CallGraphNode *,1u>,llvm::DenseSet<mlir::CallGraphNode *,llvm::DenseMapInfo<mlir::CallGraphNode *,void>>,1u>::insert(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8))
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseSetPair<mlir::CallGraphNode *>>,mlir::CallGraphNode *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseSetPair<mlir::CallGraphNode *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v13, a1, a2);
    if (v13[16] == 1)
    {
      v4 = *a2;

      llvm::SmallVectorTemplateBase<mlir::CallGraphNode *,true>::push_back(a1 + 24, v4);
    }
  }

  else
  {
    v5 = (a1 + 24);
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *a2;
      v8 = 8 * v6;
      v9 = *(a1 + 24);
      while (*v9 != v7)
      {
        ++v9;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v9 = *(a1 + 24);
    }

    if (v9 == (*(a1 + 24) + 8 * v6))
    {
      v7 = *a2;
LABEL_14:
      llvm::SmallVectorTemplateBase<mlir::CallGraphNode *,true>::push_back(a1 + 24, v7);
      v10 = *(a1 + 32);
      if (v10 >= 2)
      {
        v11 = *v5;
        v12 = 8 * v10;
        do
        {
          llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseSetPair<mlir::CallGraphNode *>>,mlir::CallGraphNode *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseSetPair<mlir::CallGraphNode *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v13, a1, v11++);
          v12 -= 8;
        }

        while (v12);
      }
    }
  }
}

void *anonymous namespace::CGUseList::eraseNode(int32x2_t *a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 48);
    v6 = 8 * v4;
    do
    {
      if ((*v5 & 6) == 4)
      {
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  v7 = a1[3];
  v8 = a1[5].u32[0];
  if (v8)
  {
    v9 = (v8 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v10 = (*&v7 + 56 * v9);
    v11 = *v10;
    if (*v10 == a2)
    {
      goto LABEL_13;
    }

    v12 = 1;
    while (v11 != -4096)
    {
      v13 = v9 + v12++;
      v9 = v13 & (v8 - 1);
      v10 = (*&v7 + 56 * v9);
      v11 = *v10;
      if (*v10 == a2)
      {
        goto LABEL_13;
      }
    }
  }

  v10 = (*&v7 + 56 * v8);
LABEL_13:
  MEMORY[0x25F891030](v10[4], 8);
  MEMORY[0x25F891030](v10[1], 8);
  *v10 = -8192;
  a1[4] = vadd_s32(a1[4], 0x1FFFFFFFFLL);
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>,mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>::doFind<mlir::CallGraphNode *>(*a1, a1[2].i32[0], a2);
  if (result)
  {
    *result = -8192;
    a1[1] = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::optional<unsigned long>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

BOOL mlir::Operation::hasOneUse(mlir::Operation *this)
{
  v1 = *(this + 9);
  v2 = this - 16;
  if (!v1)
  {
    v2 = 0;
  }

  v4 = v2;
  v5 = v2;
  v6 = v1;
  v7 = 0;
  if (!v1)
  {
    return 0;
  }

  mlir::ResultRange::UseIterator::skipOverResultsWithNoUsers(&v4);
  if (!v7)
  {
    return 0;
  }

  mlir::ResultRange::UseIterator::operator++(&v4);
  return v7 == 0;
}

_DWORD *llvm::function_ref<void ()(mlir::CallGraphNode *,mlir::Operation *)>::callback_fn<anonymous namespace::CGUseList::dropCallUses(mlir::CallGraphNode *,mlir::Operation *,mlir::CallGraph &)::$_0>(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = **a1;
  v4 = *(*a1 + 16);
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>,mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>::doFind<mlir::CallGraphNode const*>(v3, v4, a2);
  if (result)
  {
    v6 = result == (v3 + 16 * v4);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = *(a1 + 8);
    --result[2];
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>,mlir::CallGraphNode *,int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,int>>::operator[](v7, &v8);
    --*result;
  }

  return result;
}

uint64_t mlir::InlinerInterface::isLegalToInline(mlir::InlinerInterface *this, mlir::Operation *a2, mlir::Operation *a3)
{
  result = mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(this, a2);
  if (result)
  {
    v4 = *(*result + 16);

    return v4();
  }

  return result;
}

uint64_t mlir::InlinerInterface::isLegalToInline(mlir::detail::DialectInterfaceCollectionBase *a1, uint64_t a2)
{
  result = mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, *(a2 + 16));
  if (result)
  {
    v3 = *(*result + 24);

    return v3();
  }

  return result;
}

uint64_t mlir::InlinerInterface::isLegalToInline(mlir::detail::DialectInterfaceCollectionBase *a1, mlir::Operation *a2)
{
  result = mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, a2);
  if (result)
  {
    v3 = *(*result + 32);

    return v3();
  }

  return result;
}

uint64_t mlir::InlinerInterface::shouldAnalyzeRecursively(mlir::InlinerInterface *this, mlir::Operation *a2)
{
  InterfaceFor = mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(this, a2);
  if (!InterfaceFor)
  {
    return 1;
  }

  v3 = *(*InterfaceFor + 40);

  return v3();
}

uint64_t mlir::InlinerInterface::handleTerminator(mlir::InlinerInterface *this, mlir::Operation *a2, mlir::Block *a3)
{
  v3 = *(*mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(this, a2) + 48);

  return v3();
}

uint64_t mlir::InlinerInterface::handleTerminator(mlir::detail::DialectInterfaceCollectionBase *a1, mlir::Operation *a2)
{
  v2 = *(*mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, a2) + 56);

  return v2();
}

uint64_t mlir::InlinerInterface::allowSingleBlockOptimization(mlir::detail::DialectInterfaceCollectionBase *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  v5 = a2 - 8;
  if (!a2)
  {
    v5 = 0;
  }

  v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8;
  if (v6)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, v7) + 96);

  return v8();
}

uint64_t mlir::InlinerInterface::handleArgument(mlir::detail::DialectInterfaceCollectionBase *a1, int a2, int a3, mlir::Operation *a4)
{
  v4 = *(*mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, a4) + 72);

  return v4();
}

uint64_t mlir::InlinerInterface::handleResult(mlir::detail::DialectInterfaceCollectionBase *a1, int a2, int a3, mlir::Operation *a4)
{
  v4 = *(*mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, a4) + 80);

  return v4();
}

uint64_t mlir::InlinerInterface::processInlinedCallBlocks(mlir::detail::DialectInterfaceCollectionBase *a1, mlir::Operation *a2)
{
  v2 = *(*mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, a2) + 88);

  return v2();
}

uint64_t mlir::inlineCall(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, unsigned int a7)
{
  v133[4] = *MEMORY[0x277D85DE8];
  if (*a6 != a6)
  {
    v13 = a6[1];
    if (v13)
    {
      v14 = v13 - 8;
    }

    else
    {
      v14 = 0;
    }

    v109 = (*(a5 + 16))(a5, a4);
    v16 = v15;
    v17 = (*(a3 + 16))(a3, a2);
    v127 = v129;
    v128 = 0x800000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v127, v17, 0, v17, v18);
    v19 = *(a2 + 36);
    if (v19)
    {
      v20 = a2 - 16;
    }

    else
    {
      v20 = 0;
    }

    v124 = v126;
    v125 = 0x800000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v124, v20, 0, v20, v19);
    if (v128 == ((*(v14 + 56) - *(v14 + 48)) >> 3) && v16 == v125)
    {
      v108 = a7;
      v121 = v123;
      v122 = 0x400000000;
      if (v16 + v128 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v121, v123, v16 + v128, 8);
      }

      v21 = *(a2 + 16);
      v22 = *(a2 + 24);
      v118[0] = *(**v22 + 32);
      v118[1] = 0;
      v119.i64[0] = v21;
      v119.i64[1] = a2;
      v23 = *(a2 + 48);
      if (*(v23 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        v24 = (*(v23 + 8) + 32);
      }

      else
      {
        v24 = (v23 + 24);
      }

      v130 = *v24;
      v27 = llvm::DenseMapBase<llvm::DenseMap<mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>,mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>::doFind<mlir::Dialect *>((a1 + 8), &v130);
      v28 = 0;
      v107 = a1;
      if (v27 && v27 != (*(a1 + 8) + 8 * *(a1 + 24)))
      {
        v28 = *v27;
      }

      v110[0] = 0;
      v110[1] = 0;
      v111 = 0;
      v112 = 0;
      v113 = 0;
      v114 = 0;
      v115 = 0;
      v116 = 0;
      v117 = 0;
      if (v128)
      {
        v29 = 0;
        v30 = 8 * v128;
        while (1)
        {
          v31 = *(*(v14 + 48) + v29);
          v32 = *(v127 + v29);
          v33 = v31[1] & 0xFFFFFFFFFFFFFFF8;
          if ((*(v32 + 8) & 0xFFFFFFFFFFFFFFF8) != v33)
          {
            v32 = materializeConversion(v28, &v121, v118, *(v127 + v29), v33, v22);
            if (!v32)
            {
              break;
            }
          }

          v130 = v31;
          *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v110, &v130) = v32;
          v29 += 8;
          if (v30 == v29)
          {
            goto LABEL_28;
          }
        }

        if (v122)
        {
          v72 = v121;
          v73 = 8 * v122;
          do
          {
            v74 = *v72;
            v75 = (*v72 - 16);
            v130 = *(*(*v72 + 72) + 24);
            mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v75, &v130);
            if (*(v74 + 2))
            {
              *(v74 + 2) = 0;
              v77 = *v74;
              v76 = *(v74 + 1);
              *v76 = *v74;
              *(v77 + 8) = v76;
              *v74 = 0;
              *(v74 + 1) = 0;
            }

            mlir::Operation::destroy(v74);
            v72 += 8;
            v73 -= 8;
          }

          while (v73);
        }
      }

      else
      {
LABEL_28:
        v119 = vextq_s8(*(a2 + 8), *(a2 + 8), 8uLL);
        if (v125)
        {
          v34 = 0;
          v35 = 8 * v125;
          do
          {
            v36 = *(v124 + v34);
            v37 = *(v36 + 8) & 0xFFFFFFFFFFFFFFF8;
            if (*(v109 + v34) != v37)
            {
              v38 = materializeConversion(v28, &v121, v118, *(v124 + v34), v37, v22);
              if (!v38)
              {
                if (v122)
                {
                  v78 = v121;
                  v79 = 8 * v122;
                  do
                  {
                    v80 = *v78;
                    v81 = (*v78 - 16);
                    v130 = *(*(*v78 + 72) + 24);
                    mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v81, &v130);
                    if (*(v80 + 2))
                    {
                      *(v80 + 2) = 0;
                      v83 = *v80;
                      v82 = *(v80 + 1);
                      *v82 = *v80;
                      *(v83 + 8) = v82;
                      *v80 = 0;
                      *(v80 + 1) = 0;
                    }

                    mlir::Operation::destroy(v80);
                    v78 += 8;
                    v79 -= 8;
                  }

                  while (v79);
                }

                goto LABEL_83;
              }

              v39 = v38;
              v130 = v38;
              mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v36, &v130);
              v40 = 0;
              v41 = v39[1] & 7;
              v42 = v41 == 7;
              if (v41 == 7)
              {
                v43 = 0;
              }

              else
              {
                v43 = v39;
              }

              if (!v42)
              {
                v44 = v43[1] & 7;
                if (v44 == 6)
                {
                  v40 = &v43[3 * v43[2] + 15];
                }

                else
                {
                  v40 = &v43[2 * v44 + 2];
                }
              }

              mlir::Operation::replaceUsesOfWith(v40, v39, v36);
            }

            v34 += 8;
          }

          while (v35 != v34);
        }

        if ((*(*v107 + 24))(v107, a2, a4, v108))
        {
          if (*a6 != a6)
          {
            v45 = *(a2 + 16);
            v105 = *(a2 + 8);
            v46 = *(a2 + 24);
            v47 = a6[1];
            if (v47)
            {
              v48 = v47 - 8;
            }

            else
            {
              v48 = 0;
            }

            v49 = *(v48 + 48);
            v50 = *(v48 + 56);
            if (v50 == v49)
            {
LABEL_49:
              v51 = v45[3];
              if ((*(*v107 + 32))(v107, v51 & 0xFFFFFFFFFFFFFFF8, a6, v108, v110) && isLegalToInline(v107, a6, v51 & 0xFFFFFFFFFFFFFFF8, v108, v110))
              {
                v120[0] = *(***(*((v45[3] & 0xFFFFFFFFFFFFFFF8) + 16) + 24) + 32);
                v120[1] = 0;
                v120[2] = v45;
                v120[3] = v105;
                v52 = llvm::DefaultDoCastIfPossible<mlir::CallableOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallableOpInterface,mlir::Operation *,void>>::doCastIfPossible(a6[2]);
                v106 = v52;
                if (a2)
                {
                  v54 = v52 == 0;
                }

                else
                {
                  v54 = 1;
                }

                if (!v54)
                {
                  v55 = v53;
                  v56 = (*v53)(v53, v52);
                  if (*v56 == v56)
                  {
                    v59 = 0;
                  }

                  else
                  {
                    v57 = v56[1];
                    if (v57)
                    {
                      v58 = v57 - 8;
                    }

                    else
                    {
                      v58 = 0;
                    }

                    v59 = ((*(v58 + 56) - *(v58 + 48)) >> 3);
                  }

                  v84 = mlir::DictionaryAttr::get(v120[0], 0, 0);
                  v130 = &v132;
                  v131 = 0x600000000;
                  llvm::SmallVectorImpl<mlir::DictionaryAttr>::assign(&v130, v59, v84);
                  v85 = v55[3](v55, v106);
                  if (v85)
                  {
                    v86 = *(v85 + 16);
                    if (v86)
                    {
                      v87 = 0;
                      v88 = *(v85 + 8);
                      v89 = &v88[v86];
                      do
                      {
                        v90 = *v88++;
                        v130[v87++] = v90;
                      }

                      while (v88 != v89);
                    }
                  }

                  v91 = (*v55)(v55, v106);
                  if (*v91 == v91)
                  {
                    v96 = v130;
                  }

                  else
                  {
                    v92 = v91[1];
                    v93 = v92 - 8;
                    if (!v92)
                    {
                      v93 = 0;
                    }

                    v94 = *(v93 + 48);
                    v95 = *(v93 + 56);
                    v96 = v130;
                    if (v95 != v94 && v131 != 0)
                    {
                      v98 = v94 + 8;
                      v99 = 8 * v131 - 8;
                      do
                      {
                        v133[0] = *(v98 - 8);
                        v100 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(v110, v133);
                        v101 = 0;
                        if (v100 && v100 != v110[0] + 16 * v111)
                        {
                          v101 = *(v100 + 8);
                        }

                        v102 = *v96++;
                        v103 = (*(*v107 + 72))(v107, v120, a2, v106, v101, v102);
                        v133[0] = *(v98 - 8);
                        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v110, v133) = v103;
                        if (v98 == v95)
                        {
                          break;
                        }

                        v98 += 8;
                        v104 = v99;
                        v99 -= 8;
                      }

                      while (v104);
                      v96 = v130;
                    }
                  }

                  if (v96 != &v132)
                  {
                    free(v96);
                  }
                }

                mlir::Block::splitBlock();
              }
            }

            else
            {
              while (1)
              {
                v130 = *v49;
                if (!llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(v110, &v130))
                {
                  break;
                }

                if (++v49 == v50)
                {
                  goto LABEL_49;
                }
              }
            }
          }

          if (v122)
          {
            v66 = v121;
            v67 = 8 * v122;
            do
            {
              v68 = *v66;
              v69 = (*v66 - 16);
              v130 = *(*(*v66 + 72) + 24);
              mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v69, &v130);
              if (*(v68 + 2))
              {
                *(v68 + 2) = 0;
                v71 = *v68;
                v70 = *(v68 + 1);
                *v70 = *v68;
                *(v71 + 8) = v70;
                *v68 = 0;
                *(v68 + 1) = 0;
              }

              mlir::Operation::destroy(v68);
              v66 += 8;
              v67 -= 8;
            }

            while (v67);
          }
        }

        else if (v122)
        {
          v60 = v121;
          v61 = 8 * v122;
          do
          {
            v62 = *v60;
            v63 = (*v60 - 16);
            v130 = *(*(*v60 + 72) + 24);
            mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v63, &v130);
            if (*(v62 + 2))
            {
              *(v62 + 2) = 0;
              v65 = *v62;
              v64 = *(v62 + 1);
              *v64 = *v62;
              *(v65 + 8) = v64;
              *v62 = 0;
              *(v62 + 1) = 0;
            }

            mlir::Operation::destroy(v62);
            v60 += 8;
            v61 -= 8;
          }

          while (v61);
        }
      }

LABEL_83:
      MEMORY[0x25F891030](v115, 8);
      MEMORY[0x25F891030](v112, 8);
      MEMORY[0x25F891030](v110[0], 8);
      if (v121 != v123)
      {
        free(v121);
      }
    }

    if (v124 != v126)
    {
      free(v124);
    }

    if (v127 != v129)
    {
      free(v127);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return 0;
}