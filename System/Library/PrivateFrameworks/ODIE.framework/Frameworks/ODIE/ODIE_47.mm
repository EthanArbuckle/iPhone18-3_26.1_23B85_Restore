char *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::clear(char *result)
{
  if (*(result + 1))
  {
    v1 = *(result + 4);
    if (v1 <= 4 * *(result + 2) || v1 < 0x41)
    {
      if (v1)
      {
        v2 = 0;
        v3 = v1 + 0xFFFFFFFFFFFFFFFLL;
        v4 = v3 & 0xFFFFFFFFFFFFFFFLL;
        v5 = (v3 & 0xFFFFFFFFFFFFFFFLL) - (v3 & 1) + 2;
        v6 = vdupq_n_s64(v4);
        v7 = (*result + 16);
        do
        {
          v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(vdupq_n_s64(v2), xmmword_25D0A0500)));
          if (v8.i8[0])
          {
            *(v7 - 2) = -4096;
          }

          if (v8.i8[4])
          {
            *v7 = -4096;
          }

          v2 += 2;
          v7 += 4;
        }

        while (v5 != v2);
      }

      *(result + 1) = 0;
    }

    else
    {
      return llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::shrink_and_clear(result);
    }
  }

  return result;
}

void mlir::pdl_to_pdl_interp::OptimalBranching::preOrderTraversal(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v27[0] = 0;
  v27[1] = 0;
  v28 = 0;
  if (a3)
  {
    v6 = (a1 + 24);
    v8 = 8 * a3;
    while (1)
    {
      v26 = *a2;
      if (*v6 != v26)
      {
        v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>((a1 + 32), &v26);
        if (v9)
        {
          v10 = *(v9 + 8);
        }

        else
        {
          v10 = 0;
        }

        v25 = v10;
        v11 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::operator[](v27, &v25);
        v12 = v11;
        v14 = v11[1];
        v13 = v11[2];
        if (v14 >= v13)
        {
          v16 = (v14 - *v11) >> 3;
          if ((v16 + 1) >> 61)
          {
            std::vector<mlir::Value>::__throw_length_error[abi:nn200100]();
          }

          v17 = v13 - *v11;
          v18 = v17 >> 2;
          if (v17 >> 2 <= (v16 + 1))
          {
            v18 = v16 + 1;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFF8)
          {
            v19 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v18;
          }

          if (v19)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Value>>(v11, v19);
          }

          v20 = (8 * v16);
          *v20 = v26;
          v15 = 8 * v16 + 8;
          v21 = v11[1] - *v11;
          v22 = v20 - v21;
          memcpy(v20 - v21, *v11, v21);
          v23 = *v12;
          *v12 = v22;
          v12[1] = v15;
          v12[2] = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v14 = v26;
          v15 = (v14 + 1);
        }

        v12[1] = v15;
      }

      ++a2;
      v8 -= 8;
      if (!v8)
      {
        *a4 = 0;
        a4[1] = 0;
        a4[2] = 0;
        if (!(a3 >> 60))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<mlir::Value,mlir::Value>>>(a3);
        }

        std::vector<std::pair<mlir::Value,mlir::Value>>::__throw_length_error[abi:nn200100]();
      }
    }
  }

  a4[1] = 0;
  a4[2] = 0;
  std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<mlir::Value,mlir::Value>>>(1uLL);
}

unint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::operator[](uint64_t a1, unint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::LookupBucketFor<mlir::Value>(*a1, *(a1 + 16), *a2, &v9);
  v5 = v9;
  if (v4)
  {
    return v5 + 1;
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
    llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::LookupBucketFor<mlir::Value>(*a1, *(a1 + 16), *a2, &v10);
    v6 = *(a1 + 8);
    v5 = v10;
  }

  *(a1 + 8) = v6 + 1;
  if (*v5 != -4096)
  {
    --*(a1 + 12);
  }

  *v5 = *a2;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = 0;
  return v5 + 1;
}

char *llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::init(char *result, int a2)
{
  v2 = result;
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    LODWORD(v4) = (((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8)) + 1;
    *(result + 4) = v4;
    result = llvm::allocate_buffer((8 * v4), 8uLL);
    *v2 = result;
    *(v2 + 1) = 0;
    v5 = *(v2 + 4);
    if (v5)
    {
      v6 = 0;
      v7 = v5 + 0x1FFFFFFFFFFFFFFFLL;
      v8 = v7 & 0x1FFFFFFFFFFFFFFFLL;
      v9 = (v7 & 0x1FFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = result + 8;
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
        if (v12.i8[0])
        {
          *(v11 - 1) = -4096;
        }

        if (v12.i8[4])
        {
          *v11 = -4096;
        }

        v6 += 2;
        v11 += 2;
      }

      while (v9 != v6);
    }
  }

  else
  {
    *result = 0;
    *(result + 1) = 0;
    *(result + 4) = 0;
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::doFind<mlir::Value>(uint64_t a1, int a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v3 >> 47) ^ v3);
  v5 = a2 - 1;
  v6 = (-348639895 * ((v4 >> 47) ^ v4)) & (a2 - 1);
  v7 = (a1 + 24 * v6);
  v8 = *v7;
  if (*v7 != a3)
  {
    v9 = 1;
    while (v8 != -4096)
    {
      v10 = v6 + v9++;
      v6 = v10 & v5;
      v7 = (a1 + 24 * (v10 & v5));
      v8 = *v7;
      if (*v7 == a3)
      {
        return v7;
      }
    }

    return 0;
  }

  return v7;
}

char *llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::init(char *result, int a2)
{
  v2 = result;
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    LODWORD(v4) = (((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8)) + 1;
    *(result + 4) = v4;
    result = llvm::allocate_buffer((16 * v4), 8uLL);
    *v2 = result;
    *(v2 + 1) = 0;
    v5 = *(v2 + 4);
    if (v5)
    {
      v6 = 0;
      v7 = v5 + 0xFFFFFFFFFFFFFFFLL;
      v8 = v7 & 0xFFFFFFFFFFFFFFFLL;
      v9 = (v7 & 0xFFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = result + 16;
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
        if (v12.i8[0])
        {
          *(v11 - 2) = -4096;
        }

        if (v12.i8[4])
        {
          *v11 = -4096;
        }

        v6 += 2;
        v11 += 4;
      }

      while (v9 != v6);
    }
  }

  else
  {
    *result = 0;
    *(result + 1) = 0;
    *(result + 4) = 0;
  }

  return result;
}

char *llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::shrink_and_clear(char *result)
{
  v1 = result;
  v2 = *(result + 4);
  v3 = *(result + 2);
  v4 = 1 << (33 - __clz(v3 - 1));
  if (v4 <= 64)
  {
    v4 = 64;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v2)
  {
    *(result + 1) = 0;
    if (v2)
    {
      v6 = 0;
      v7 = v2 + 0xFFFFFFFFFFFFFFFLL;
      v8 = v7 & 0xFFFFFFFFFFFFFFFLL;
      v9 = (v7 & 0xFFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = (*result + 16);
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
        if (v12.i8[0])
        {
          *(v11 - 2) = -4096;
        }

        if (v12.i8[4])
        {
          *v11 = -4096;
        }

        v6 += 2;
        v11 += 4;
      }

      while (v9 != v6);
    }
  }

  else
  {
    MEMORY[0x25F891030](*result, 8);

    return llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::init(v1, v5);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::LookupBucketFor<mlir::Value>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v7 = (a1 + 32 * v6);
    v8 = *v7;
    if (*v7 == a3)
    {
      v9 = 1;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      while (v8 != -4096)
      {
        if (v11)
        {
          v13 = 0;
        }

        else
        {
          v13 = v8 == -8192;
        }

        if (v13)
        {
          v11 = v7;
        }

        v14 = v6 + v12++;
        v6 = v14 & (a2 - 1);
        v7 = (a1 + 32 * v6);
        v8 = *v7;
        v9 = 1;
        if (*v7 == a3)
        {
          goto LABEL_5;
        }
      }

      v9 = 0;
      if (v11)
      {
        v7 = v11;
      }
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

LABEL_5:
  *a4 = v7;
  return v9;
}

char *llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::grow(uint64_t a1, int a2)
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
      v18 = 32 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::LookupBucketFor<mlir::Value>(*a1, *(a1 + 16), v20, &v31);
          v21 = v31;
          v22 = *v19;
          v31[2] = 0;
          v21[3] = 0;
          *v21 = v22;
          v21[1] = 0;
          *(v21 + 1) = *(v19 + 8);
          v21[3] = *(v19 + 24);
          *(v19 + 16) = 0;
          *(v19 + 24) = 0;
          *(v19 + 8) = 0;
          ++*(a1 + 8);
        }

        v19 += 32;
        v18 -= 32;
      }

      while (v18);
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<mlir::Value,mlir::Value>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void mlir::PassManager::enableIRPrinting(uint64_t a1, uint64_t a2)
{
  if (*(*a2 + 8) == 1 && *(**(a1 + 8) + 41) == 1)
  {
    llvm::report_fatal_error("IR printing can't be setup on a pass-manager without disabling multi-threading first.", 1);
  }

  operator new();
}

void anonymous namespace::IRPrinterInstrumentation::~IRPrinterInstrumentation(_anonymous_namespace_::IRPrinterInstrumentation *this)
{
  *this = &unk_286E84608;
  MEMORY[0x25F891030](*(this + 2), 8);
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_286E84608;
  MEMORY[0x25F891030](*(this + 2), 8);
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::IRPrinterInstrumentation::runBeforePass(_anonymous_namespace_::IRPrinterInstrumentation *this, mlir::Pass *a2, mlir::Operation *a3)
{
  v14 = a3;
  v15 = a2;
  v6 = *(a2 + 1);
  result = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
  if (v6 != result)
  {
    v8 = *(this + 1);
    if (v8[9] != 1)
    {
LABEL_10:
      v13[0] = &v15;
      v13[1] = &v14;
      v13[2] = this;
    }

    v9 = *(this + 2);
    v16 = 0;
    if (llvm::DenseMapBase<llvm::DenseMap<mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>,mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>::LookupBucketFor<mlir::Pass *>(v9, *(this + 8), a2, &v16))
    {
LABEL_9:
      v8 = *(this + 1);
      goto LABEL_10;
    }

    v10 = v16;
    v13[0] = v16;
    v11 = *(this + 6);
    v12 = *(this + 8);
    if (4 * v11 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v11 - *(this + 7) > v12 >> 3)
    {
LABEL_6:
      *(this + 6) = v11 + 1;
      if (*v10 != -4096)
      {
        --*(this + 7);
      }

      *v10 = a2;
      mlir::OperationFingerPrint::OperationFingerPrint((v10 + 1), a3, 1);
      goto LABEL_9;
    }

    llvm::DenseMap<mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>::grow(this + 16, v12);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>,mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>::LookupBucketFor<mlir::Pass *>(*(this + 2), *(this + 8), a2, v13);
    v11 = *(this + 6);
    v10 = v13[0];
    goto LABEL_6;
  }

  return result;
}

_BYTE *anonymous namespace::IRPrinterInstrumentation::runAfterPass(int32x2_t *this, mlir::Pass *a2, mlir::Operation *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v21 = a2;
  v6 = *(a2 + 1);
  result = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
  if (v6 == result)
  {
    goto LABEL_24;
  }

  result = this[1];
  if (result[10])
  {
    goto LABEL_24;
  }

  if (result[9] != 1)
  {
LABEL_23:
    v22 = &v21;
    v23 = &v20;
    v24 = this;
    goto LABEL_24;
  }

  v8 = this[2];
  v9 = this[4].u32[0];
  if (v9)
  {
    v10 = (v9 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v11 = *(*&v8 + 32 * v10);
    if (v11 == a2)
    {
LABEL_6:
      v12 = *&v8 + 32 * v10;
      goto LABEL_12;
    }

    v13 = 1;
    while (v11 != -4096)
    {
      v14 = v10 + v13++;
      v10 = v14 & (v9 - 1);
      v11 = *(*&v8 + 32 * v10);
      if (v11 == a2)
      {
        goto LABEL_6;
      }
    }
  }

  v12 = 0;
LABEL_12:
  v15 = *&v8 + 32 * v9;
  if (v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  result = mlir::OperationFingerPrint::OperationFingerPrint(&v22, a3, 1);
  v18 = *(v16 + 8) == v22 && *(v16 + 16) == v23 && *(v16 + 24) == v24;
  *v16 = -8192;
  this[3] = vadd_s32(this[3], 0x1FFFFFFFFLL);
  if (!v18)
  {
    result = this[1];
    goto LABEL_23;
  }

LABEL_24:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t anonymous namespace::IRPrinterInstrumentation::runAfterPassFailed(int32x2_t *this, mlir::Pass *a2, mlir::Operation *a3)
{
  v17 = a3;
  v18 = a2;
  v6 = *(a2 + 1);
  result = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
  if (v6 != result)
  {
    v8 = this[1];
    if (v8[9] == 1)
    {
      v9 = this[4].i32[0];
      if (v9)
      {
        v10 = this[2];
        v11 = v9 - 1;
        v12 = (v9 - 1) & ((a2 >> 4) ^ (a2 >> 9));
        v13 = *(*&v10 + 32 * v12);
        if (v13 == a2)
        {
LABEL_5:
          *(*&v10 + 32 * v12) = -8192;
          this[3] = vadd_s32(this[3], 0x1FFFFFFFFLL);
          v8 = this[1];
        }

        else
        {
          v14 = 1;
          while (v13 != -4096)
          {
            v15 = v12 + v14++;
            v12 = v15 & v11;
            v13 = *(*&v10 + 32 * v12);
            if (v13 == a2)
            {
              goto LABEL_5;
            }
          }
        }
      }
    }

    v16[0] = &v18;
    v16[1] = &v17;
    v16[2] = this;
  }

  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::detail::OpToOpPassAdaptor>();
      mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[144];
}

uint64_t llvm::getTypeName<mlir::detail::OpToOpPassAdaptor>()
{
  {
    llvm::getTypeName<mlir::detail::OpToOpPassAdaptor>(void)::Name = llvm::detail::getTypeNameImpl<mlir::detail::OpToOpPassAdaptor>();
    *algn_27FC19498 = v1;
  }

  return llvm::getTypeName<mlir::detail::OpToOpPassAdaptor>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::detail::OpToOpPassAdaptor>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::OpToOpPassAdaptor]";
  v6 = 93;
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>,mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>::LookupBucketFor<mlir::Pass *>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

char *llvm::DenseMap<mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>::grow(uint64_t a1, int a2)
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
      v18 = 32 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>,mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>::LookupBucketFor<mlir::Pass *>(*a1, *(a1 + 16), v20, &v31);
          v21 = v31;
          *v31 = *v19;
          v22 = *(v19 + 24);
          *(v21 + 1) = *(v19 + 8);
          *(v21 + 6) = v22;
          ++*(a1 + 8);
        }

        v19 += 32;
        v18 -= 32;
      }

      while (v18);
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

void llvm::function_ref<void ()(llvm::raw_ostream &)>::callback_fn<anonymous namespace::IRPrinterInstrumentation::runBeforePass(mlir::Pass *,mlir::Operation *)::$_0>(void **a1, llvm::raw_ostream *this)
{
  v4 = a1[2];
  v5 = *(this + 4);
  if (*(this + 3) - v5 > 0x19uLL)
  {
    qmemcpy(v5, "// -----// IR Dump Before ", 26);
    *(this + 4) += 26;
    v6 = this;
  }

  else
  {
    v6 = llvm::raw_ostream::write(this, "// -----// IR Dump Before ", 0x1AuLL);
  }

  v7 = (*(***a1 + 16))(**a1);
  v9 = llvm::raw_ostream::operator<<(v6, v7, v8);
  v10 = v9;
  v11 = *(v9 + 4);
  if (*(v9 + 3) - v11 > 1uLL)
  {
    *v11 = 10272;
    *(v9 + 4) += 2;
  }

  else
  {
    v10 = llvm::raw_ostream::write(v9, " (", 2uLL);
  }

  v12 = (*(***a1 + 32))(**a1);
  v14 = llvm::raw_ostream::operator<<(v10, v12, v13);
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

  v16 = *a1[1];
  v17 = v4[1];
  v18 = *(v17 + 8);
  v19 = *(v17 + 32);
  v20[0] = *(v17 + 16);
  v20[1] = v19;
  v20[2] = *(v17 + 48);
  printIR(v16, v18, this, v20);
}

void printIR(uint64_t a1, char a2, llvm::raw_ostream *a3, const mlir::OpPrintingFlags *a4)
{
  v5 = a3;
  v7 = *(a3 + 4);
  v8 = *(a3 + 3) - v7;
  if (a2)
  {
    if (v8 > 2)
    {
      *(v7 + 2) = 39;
      *v7 = 10272;
      *(a3 + 4) += 3;
      v9 = a3;
    }

    else
    {
      v9 = llvm::raw_ostream::write(a3, " ('", 3uLL);
    }

    llvm::raw_ostream::operator<<(v9, *(*(*(a1 + 48) + 8) + 16), *(*(*(a1 + 48) + 8) + 24));
    v10 = *(v9 + 4);
    if ((*(v9 + 3) - v10) > 0xA)
    {
      *(v10 + 7) = 1852795252;
      *v10 = *"' operation";
      *(v9 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v9, "' operation", 0xBuLL);
    }

    Attr = mlir::Operation::getAttr(a1, "sym_name", 8uLL);
    if (Attr)
    {
      v13 = Attr;
      if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v14 = *(v5 + 4);
        if ((*(v5 + 3) - v14) > 2)
        {
          *(v14 + 2) = 64;
          *v14 = 8250;
          *(v5 + 4) += 3;
          v15 = v5;
        }

        else
        {
          v15 = llvm::raw_ostream::write(v5, ": @", 3uLL);
        }

        llvm::raw_ostream::operator<<(v15, *(v13 + 16), *(v13 + 24));
      }
    }

    v16 = *(v5 + 4);
    if (*(v5 + 3) - v16 > 0xCuLL)
    {
      qmemcpy(v16, ") //----- //\n", 13);
      *(v5 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v5, ") //----- //\n", 0xDuLL);
    }

    do
    {
      v11 = a1;
      v17 = *(a1 + 16);
      if (!v17)
      {
        break;
      }

      v18 = *(v17 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (!v18)
      {
        break;
      }

      a1 = *(v18 + 16);
    }

    while (a1);
  }

  else
  {
    if (v8 > 0xB)
    {
      *(v7 + 8) = 170864416;
      *v7 = *" //----- //\n";
      *(a3 + 4) += 12;
    }

    else
    {
      v5 = llvm::raw_ostream::write(a3, " //----- //\n", 0xCuLL);
    }

    if (*(a1 + 16))
    {
      *(a4 + 20) |= 0x20u;
    }

    v11 = a1;
  }

  mlir::Operation::print(v11, v5, a4);
}

void llvm::function_ref<void ()(llvm::raw_ostream &)>::callback_fn<anonymous namespace::IRPrinterInstrumentation::runAfterPass(mlir::Pass *,mlir::Operation *)::$_0>(void **a1, llvm::raw_ostream *this)
{
  v4 = a1[2];
  v5 = *(this + 4);
  if (*(this + 3) - v5 > 0x18uLL)
  {
    qmemcpy(v5, "// -----// IR Dump After ", 25);
    *(this + 4) += 25;
    v6 = this;
  }

  else
  {
    v6 = llvm::raw_ostream::write(this, "// -----// IR Dump After ", 0x19uLL);
  }

  v7 = (*(***a1 + 16))(**a1);
  v9 = llvm::raw_ostream::operator<<(v6, v7, v8);
  v10 = v9;
  v11 = *(v9 + 4);
  if (*(v9 + 3) - v11 > 1uLL)
  {
    *v11 = 10272;
    *(v9 + 4) += 2;
  }

  else
  {
    v10 = llvm::raw_ostream::write(v9, " (", 2uLL);
  }

  v12 = (*(***a1 + 32))(**a1);
  v14 = llvm::raw_ostream::operator<<(v10, v12, v13);
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

  v16 = *a1[1];
  v17 = v4[1];
  v18 = *(v17 + 8);
  v19 = *(v17 + 32);
  v20[0] = *(v17 + 16);
  v20[1] = v19;
  v20[2] = *(v17 + 48);
  printIR(v16, v18, this, v20);
}

void llvm::function_ref<void ()(llvm::raw_ostream &)>::callback_fn<anonymous namespace::IRPrinterInstrumentation::runAfterPassFailed(mlir::Pass *,mlir::Operation *)::$_0>(void **a1, llvm::raw_ostream *a2)
{
  v4 = a1[2];
  v5 = (*(***a1 + 16))(**a1);
  v7 = v6;
  v8 = (*(***a1 + 32))(**a1);
  *&v14 = "// -----// IR Dump After {0} Failed ({1})";
  *(&v14 + 1) = 41;
  *&v15 = v20;
  *(&v15 + 1) = 2;
  LOBYTE(v16) = 1;
  *(&v16 + 1) = &unk_286E84750;
  v17 = v5;
  v18 = v7;
  v19[0] = &unk_286E84750;
  v19[1] = v8;
  v19[2] = v9;
  v20[0] = &v16 + 8;
  v20[1] = v19;
  llvm::formatv_object_base::format(&v14, a2);
  v10 = *a1[1];
  v11 = v4[1];
  v12 = *(v11 + 8);
  v13 = *(v11 + 32);
  v14 = *(v11 + 16);
  v15 = v13;
  v16 = *(v11 + 48);
  printIR(v10, v12, a2, &v14);
}

llvm::raw_ostream *llvm::format_provider<llvm::StringRef,void>::format(uint64_t a1, llvm::raw_ostream *a2, uint64_t a3, unint64_t *a4)
{
  if (a4)
  {
    v11 = 0;
    v12 = a3;
    v13 = a4;
    v6 = llvm::consumeUnsignedInteger(&v12, 0xA, &v11, a4);
    if (v13)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    if (v7)
    {
      v8 = -1;
    }

    else
    {
      v8 = v11;
    }
  }

  else
  {
    v8 = -1;
  }

  if (*(a1 + 8) >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(a1 + 8);
  }

  return llvm::raw_ostream::operator<<(a2, *a1, v9);
}

uint64_t std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void anonymous namespace::BasicIRPrinterConfig::~BasicIRPrinterConfig(_anonymous_namespace_::BasicIRPrinterConfig *this)
{
  *this = &unk_286E84660;
  v1 = this + 64;
  std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](this + 96);
  std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](v1);
}

{
  *this = &unk_286E84660;
  v1 = this + 64;
  std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](this + 96);
  std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](v1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::BasicIRPrinterConfig::printBeforeIfEnabled(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  result = *(a1 + 88);
  if (result)
  {
    result = std::function<BOOL ()(mlir::Pass *,mlir::Operation *)>::operator()(result, a2, a3);
    if (result)
    {
      v8 = *(a1 + 128);

      return a4(a5, v8);
    }
  }

  return result;
}

uint64_t anonymous namespace::BasicIRPrinterConfig::printAfterIfEnabled(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  result = *(a1 + 120);
  if (result)
  {
    result = std::function<BOOL ()(mlir::Pass *,mlir::Operation *)>::operator()(result, a2, a3);
    if (result)
    {
      v8 = *(a1 + 128);

      return a4(a5, v8);
    }
  }

  return result;
}

uint64_t std::function<BOOL ()(mlir::Pass *,mlir::Operation *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](v4);
}

uint64_t std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void anonymous namespace::FileTreeIRPrinterConfig::~FileTreeIRPrinterConfig(_anonymous_namespace_::FileTreeIRPrinterConfig *this)
{
  *this = &unk_286E84690;
  MEMORY[0x25F891030](*(this + 19), 8);
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](this + 96);
  std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](this + 64);
}

{
  *this = &unk_286E84690;
  MEMORY[0x25F891030](*(this + 19), 8);
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](this + 96);
  std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](this + 64);

  JUMPOUT(0x25F891040);
}

_BYTE **anonymous namespace::FileTreeIRPrinterConfig::printBeforeIfEnabled(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  result = *(a1 + 88);
  if (result)
  {
    result = std::function<BOOL ()(mlir::Pass *,mlir::Operation *)>::operator()(result, a2, a3);
    if (result)
    {
      v12 = (*(*a2 + 32))(a2);
      v15 = *(a1 + 128);
      v14 = a1 + 128;
      v13 = v15;
      v16 = *(v14 + 23);
      if (v16 >= 0)
      {
        v17 = v14;
      }

      else
      {
        v17 = v13;
      }

      v18 = *(v14 + 8);
      if (v16 >= 0)
      {
        v19 = *(v14 + 23);
      }

      else
      {
        v19 = *(v14 + 8);
      }

      createTreePrinterOutputPath(&v21, a3, v12, v11, v17, v19, (v14 + 24));
      v20 = v21;
      if (v21)
      {
        a4(a5, *(v21 + 17));
        v20[24] = 1;
      }

      return std::unique_ptr<llvm::ToolOutputFile>::~unique_ptr[abi:nn200100](&v21);
    }
  }

  return result;
}

_BYTE **anonymous namespace::FileTreeIRPrinterConfig::printAfterIfEnabled(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  result = *(a1 + 120);
  if (result)
  {
    result = std::function<BOOL ()(mlir::Pass *,mlir::Operation *)>::operator()(result, a2, a3);
    if (result)
    {
      v12 = (*(*a2 + 32))(a2);
      v15 = *(a1 + 128);
      v14 = a1 + 128;
      v13 = v15;
      v16 = *(v14 + 23);
      if (v16 >= 0)
      {
        v17 = v14;
      }

      else
      {
        v17 = v13;
      }

      v18 = *(v14 + 8);
      if (v16 >= 0)
      {
        v19 = *(v14 + 23);
      }

      else
      {
        v19 = *(v14 + 8);
      }

      createTreePrinterOutputPath(&v21, a3, v12, v11, v17, v19, (v14 + 24));
      v20 = v21;
      if (v21)
      {
        a4(a5, *(v21 + 17));
        v20[24] = 1;
      }

      return std::unique_ptr<llvm::ToolOutputFile>::~unique_ptr[abi:nn200100](&v21);
    }
  }

  return result;
}

uint64_t createTreePrinterOutputPath(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t *a7)
{
  v111[5] = *MEMORY[0x277D85DE8];
  v69[0] = a3;
  v69[1] = a4;
  v67 = a2;
  v68 = a2;
  v109 = v111;
  v110 = 0x100000000;
  v105 = v107;
  v106 = 0xC00000000;
  *v95 = 0;
  v10 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(a7, &v68, v95);
  v11 = *v95;
  if (v10)
  {
    v12 = *(*v95 + 8) + 1;
  }

  else
  {
    v11 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::InsertIntoBucketImpl<mlir::Operation *>(a7, &v68, *v95);
    v12 = 0;
    *v11 = v68;
    *(v11 + 2) = -1;
  }

  *(v11 + 2) = v12;
  if (a2)
  {
    do
    {
      while (1)
      {
        v13 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::operator[](a7, &v67);
        llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v105, *v13);
        Attr = mlir::Operation::getAttr(v67, "sym_name", 8uLL);
        if (Attr)
        {
          v15 = *(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id ? Attr : 0;
        }

        else
        {
          v15 = 0;
        }

        v16 = *(*(v67 + 48) + 8);
        v17 = *(v16 + 16);
        v62 = v15;
        if (v17)
        {
          v18 = *(v16 + 24);
          if (v18 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          if (v18 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v65) = *(v16 + 24);
          if (v18)
          {
            memmove(&__dst, v17, v18);
          }

          *(&__dst + v18) = 0;
          v21 = HIBYTE(v65);
          p_dst = __dst;
          v19 = v64;
        }

        else
        {
          v19 = 0;
          p_dst = 0;
          v21 = 0;
          __dst = 0;
          v64 = 0;
          v65 = 0;
        }

        v102[0] = 46;
        if ((v21 & 0x80u) != 0)
        {
          v21 = v19;
        }

        else
        {
          p_dst = &__dst;
        }

        *&v102[8] = 0;
        *&v102[16] = 0;
        *&v102[24] = p_dst;
        *&v102[32] = v21;
        *&v103 = v102;
        *(&v103 + 1) = 1;
        llvm::StringRef::split(&v102[24], v102, 1uLL, __sz);
        *&v102[8] = *__sz;
        *&v102[24] = *&__sz[16];
        __sz[0] = 46;
        memset(&__sz[8], 0, 32);
        *&v93 = __sz;
        *(&v93 + 1) = 1;
        llvm::StringRef::split(&__sz[24], __sz, 1uLL, v90);
        *&__sz[8] = *v90;
        *&__sz[24] = *&v90[16];
        v22 = v102[0];
        v95[0] = v102[0];
        *&v95[8] = *&v102[8];
        v96 = *&v102[24];
        v97 = v103;
        if (v103 == v102)
        {
          *&v97 = v95;
          *(&v97 + 1) = 1;
        }

        LOBYTE(v98) = __sz[0];
        v99 = *&__sz[8];
        v100 = *&__sz[24];
        v101 = v93;
        if (v93 == __sz)
        {
          *&v101 = &v98;
          *(&v101 + 1) = 1;
        }

        v74 = v102[0];
        v75 = *&v95[8];
        v76 = v96;
        v77 = v97;
        if (v97 == v95)
        {
          *&v77 = &v74;
          *(&v77 + 1) = 1;
        }

        v70 = __sz[0];
        v71 = v99;
        v72 = v100;
        v73 = v101;
        if (v101 == &v98)
        {
          *&v73 = &v70;
          *(&v73 + 1) = 1;
        }

        LOBYTE(__p) = v102[0];
        v83 = *&v95[8];
        v84 = v96;
        v85 = v77;
        if (v77 == &v74)
        {
          *&v85 = &__p;
          *(&v85 + 1) = 1;
        }

        v78 = __sz[0];
        v79 = v99;
        v80 = v100;
        v81 = v73;
        if (v73 == &v70)
        {
          *&v81 = &v78;
          *(&v81 + 1) = 1;
        }

        memset(&v66, 0, sizeof(v66));
        if (v83 != v79)
        {
          v90[0] = v102[0];
          *&v90[8] = *&v95[8];
          *&v90[24] = v96;
          v91 = v85;
          v23 = v85;
          if (v85 == &__p)
          {
            *&v91 = v90;
            *(&v91 + 1) = 1;
          }

          v86[0] = __sz[0];
          v87 = v99;
          v88 = v100;
          v89 = v81;
          if (v81 == &v78)
          {
            *&v89 = v86;
            *(&v89 + 1) = 1;
          }

          *&v102[8] = *&v95[8];
          *&v102[24] = v96;
          v103 = v91;
          if (v91 == v90)
          {
            *&v103 = v102;
            *(&v103 + 1) = 1;
          }

          *&__sz[8] = v99;
          *&__sz[24] = v100;
          v93 = v89;
          if (v89 == v86)
          {
            *&v93 = __sz;
            *(&v93 + 1) = 1;
          }

          v24 = -1;
          if (*&v102[8] != *&__sz[8])
          {
            do
            {
              llvm::StringRef::split(&v102[24], v103, *(&v103 + 1), v94);
              *&v102[8] = v94[0];
              *&v102[24] = v94[1];
              ++v24;
            }

            while (*&v94[0] != *&__sz[8]);
            v22 = __p;
            v23 = v85;
          }

          v102[0] = v22;
          *&v102[8] = v83;
          *&v102[24] = v84;
          v103 = v85;
          if (v23 == &__p)
          {
            *&v103 = v102;
            *(&v103 + 1) = 1;
          }

          while (*&v102[8] != v79)
          {
            v24 += *&v102[16];
            llvm::StringRef::split(&v102[24], v103, *(&v103 + 1), __sz);
            *&v102[8] = *__sz;
            *&v102[24] = *&__sz[16];
          }

          std::string::reserve(&v66, v24);
          while (1)
          {
            std::string::append(&v66, v83, *(&v83 + 1));
            llvm::StringRef::split(&v84, v85, *(&v85 + 1), v102);
            v83 = *v102;
            v84 = *&v102[16];
            if (*v102 == v79)
            {
              break;
            }

            std::string::append(&v66, "_", 1uLL);
          }
        }

        if (SHIBYTE(v65) < 0)
        {
          operator delete(__dst);
        }

        if (v62)
        {
          v25 = *(v62 + 16);
          v26 = *(v62 + 24);
        }

        else
        {
          v25 = "no-symbol-name";
          v26 = 14;
        }

        *v95 = v25;
        *&v95[8] = v26;
        if (v110 >= HIDWORD(v110))
        {
          llvm::SmallVectorTemplateBase<std::pair<std::string,llvm::StringRef>,false>::growAndEmplaceBack<std::string&,llvm::StringRef>(&v109, &v66, v95);
        }

        else
        {
          v27 = &v109[5 * v110];
          if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v27, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
          }

          else
          {
            v28 = *&v66.__r_.__value_.__l.__data_;
            v27[2] = *(&v66.__r_.__value_.__l + 2);
            *v27 = v28;
          }

          *(v27 + 3) = *v95;
          LODWORD(v110) = v110 + 1;
        }

        v29 = *(v67 + 16);
        if (v29)
        {
          v29 = *(v29 + 24) & 0xFFFFFFFFFFFFFFF8;
          if (v29)
          {
            v29 = *(v29 + 16);
          }
        }

        v67 = v29;
        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
        {
          break;
        }

        if (!v29)
        {
          goto LABEL_72;
        }
      }

      operator delete(v66.__r_.__value_.__l.__data_);
    }

    while (v67);
  }

LABEL_72:
  v30 = v105;
  if (v106)
  {
    v31 = (v105 + 4 * v106 - 4);
    if (v31 > v105)
    {
      v32 = &v105->__r_.__value_.__s.__data_[4];
      do
      {
        v33 = *(v32 - 1);
        *(v32 - 1) = v31->__r_.__value_.__l.__data_;
        LODWORD(v31->__r_.__value_.__l.__data_) = v33;
        v31 = (v31 - 4);
        v34 = v32 >= v31;
        v32 += 4;
      }

      while (!v34);
    }
  }

  v35 = v109;
  v36 = &v109[5 * v110 - 5];
  if (v110)
  {
    v37 = v36 > v109;
  }

  else
  {
    v37 = 0;
  }

  if (v37)
  {
    do
    {
      v38 = v35[2];
      v39 = *v35;
      v40 = *(v36 + 16);
      *v35 = *v36;
      v35[2] = v40;
      *v36 = v39;
      *(v36 + 16) = v38;
      v41 = *(v35 + 3);
      *(v35 + 3) = *(v36 + 24);
      *(v36 + 24) = v41;
      v35 += 5;
      v36 -= 40;
    }

    while (v35 < v36);
    v30 = v105;
  }

  *v95 = "{0:$[_]}_{1}.mlir";
  *&v95[8] = 17;
  *&v95[16] = &v100;
  *&v96 = 2;
  BYTE8(v96) = 1;
  *&v97 = &unk_286E846C0;
  *(&v97 + 1) = v30;
  v98 = v30 + 4 * v106;
  *&v99 = &unk_286E84720;
  *(&v99 + 1) = v69;
  *&v100 = &v97;
  *(&v100 + 1) = &v99;
  llvm::formatv_object_base::str(v95, __sz);
  v42 = &v102[16];
  *v102 = &v102[16];
  *&v102[8] = 0x100000000;
  v43 = v110;
  if (v110)
  {
    if (v110 == 1)
    {
      v44 = v109;
      v45 = v109 + 5;
    }

    else
    {
      *v95 = 0;
      v46 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(v102, &v102[16], v110, 40, v95);
      llvm::SmallVectorTemplateBase<std::pair<std::string,llvm::StringRef>,false>::moveElementsForGrow(v102, v46);
      v47 = *v95;
      if (*v102 != &v102[16])
      {
        free(*v102);
      }

      *v102 = v46;
      *&v102[12] = v47;
      if (!v110)
      {
        goto LABEL_95;
      }

      v44 = v109;
      v45 = &v109[5 * v110];
      v42 = v46;
    }

    do
    {
      if (*(v44 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v42, *v44, v44[1]);
      }

      else
      {
        v48 = *v44;
        *(v42 + 2) = v44[2];
        *v42 = v48;
      }

      *(v42 + 24) = *(v44 + 3);
      v44 += 5;
      v42 += 40;
    }

    while (v44 != v45);
LABEL_95:
    *&v102[8] = v43;
  }

  if ((__sz[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v104, *__sz, *&__sz[8]);
    v50 = a6;
    v49 = a5;
    if ((__sz[23] & 0x80000000) != 0)
    {
      operator delete(*__sz);
    }
  }

  else
  {
    v104 = *__sz;
    v50 = a6;
    v49 = a5;
  }

  if (v105 != v107)
  {
    free(v105);
  }

  llvm::SmallVector<std::pair<std::string,llvm::StringRef>,1u>::~SmallVector(&v109);
  *v95 = &v96;
  *&v95[8] = xmmword_25D0A05A0;
  llvm::SmallVectorImpl<char>::append<char const*,void>(v95, v49, &v49[v50]);
  if (createDirectoryOrPrintErr(*v95, *&v95[8]))
  {
    if (!*&v102[8])
    {
LABEL_120:
      v108 = 260;
      v105 = &v104;
      *&__sz[32] = 257;
      *&v90[32] = 257;
      WORD4(v88) = 257;
      llvm::sys::path::append(v95, 0, &v105, __sz, v90, v86);
      v105 = 0;
      v106 = 0;
      v107[0] = 0;
      mlir::openOutputFile(*v95, *&v95[8]);
    }

    v51 = 40 * *&v102[8];
    v52 = *v102;
    while (1)
    {
      if (*(v52 + 23) >= 0)
      {
        v53 = *(v52 + 23);
      }

      else
      {
        v53 = v52[1];
      }

      std::string::basic_string[abi:nn200100](&__p, v53 + 1);
      if (v83 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v53)
      {
        if (*(v52 + 23) >= 0)
        {
          v55 = v52;
        }

        else
        {
          v55 = *v52;
        }

        memmove(p_p, v55, v53);
      }

      *&p_p[v53] = 95;
      v56 = v52[3];
      v57 = v52[4];
      v105 = &__p;
      v107[0] = v56;
      v107[1] = v57;
      v108 = 1284;
      *&__sz[32] = 257;
      *&v90[32] = 257;
      WORD4(v88) = 257;
      llvm::sys::path::append(v95, 0, &v105, __sz, v90, v86);
      if (SHIBYTE(v83) < 0)
      {
        operator delete(__p);
      }

      if ((createDirectoryOrPrintErr(*v95, *&v95[8]) & 1) == 0)
      {
        break;
      }

      v52 += 5;
      v51 -= 40;
      if (!v51)
      {
        goto LABEL_120;
      }
    }
  }

  *a1 = 0;
  if (*v95 != &v96)
  {
    free(*v95);
  }

  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  result = llvm::SmallVector<std::pair<std::string,llvm::StringRef>,1u>::~SmallVector(v102);
  v59 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE **std::unique_ptr<llvm::ToolOutputFile>::~unique_ptr[abi:nn200100](_BYTE **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v2[128] == 1)
    {
      llvm::raw_fd_ostream::~raw_fd_ostream((v2 + 32));
    }

    llvm::CleanupInstaller::~CleanupInstaller(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

uint64_t createDirectoryOrPrintErr(const void *a1, std::string::size_type a2)
{
  v17 = 261;
  v16.__r_.__value_.__r.__words[0] = a1;
  v16.__r_.__value_.__l.__size_ = a2;
  directory = llvm::sys::fs::create_directory(&v16, 1, 0x1F8u);
  *&v18.__val_ = directory;
  v18.__cat_ = v5;
  if (!directory)
  {
    return 1;
  }

  v6 = llvm::errs(directory);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 0x1EuLL)
  {
    qmemcpy(v7, "Error while creating directory ", 31);
    *(v6 + 4) += 31;
  }

  else
  {
    v6 = llvm::raw_ostream::write(v6, "Error while creating directory ", 0x1FuLL);
  }

  v9 = llvm::raw_ostream::operator<<(v6, a1, a2);
  v10 = v9;
  v11 = *(v9 + 4);
  if (*(v9 + 3) - v11 > 1uLL)
  {
    *v11 = 8250;
    *(v9 + 4) += 2;
  }

  else
  {
    v10 = llvm::raw_ostream::write(v9, ": ", 2uLL);
  }

  std::error_code::message(&v16, &v18);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v16;
  }

  else
  {
    v12 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  v14 = llvm::raw_ostream::write(v10, v12, size);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, "\n", 1uLL);
  }

  else
  {
    *v15 = 10;
    ++*(v14 + 4);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return 0;
}

void llvm::SmallVectorTemplateBase<std::pair<std::string,llvm::StringRef>,false>::growAndEmplaceBack<std::string&,llvm::StringRef>(uint64_t a1, __int128 *a2, _OWORD *a3)
{
  v11 = 0;
  v6 = a1 + 16;
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 40, &v11);
  v8 = &v7[40 * *(a1 + 8)];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v8, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(v8 + 2) = *(a2 + 2);
    *v8 = v9;
  }

  *(v8 + 24) = *a3;
  llvm::SmallVectorTemplateBase<std::pair<std::string,llvm::StringRef>,false>::moveElementsForGrow(a1, v7);
  v10 = v11;
  if (*a1 != v6)
  {
    free(*a1);
  }

  *a1 = v7;
  ++*(a1 + 8);
  *(a1 + 12) = v10;
}

void llvm::SmallVectorTemplateBase<std::pair<std::string,llvm::StringRef>,false>::moveElementsForGrow(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *a1;
    v4 = *a1 + 40 * v2;
    do
    {
      v5 = *v3;
      *(a2 + 16) = *(v3 + 2);
      *a2 = v5;
      *(v3 + 1) = 0;
      *(v3 + 2) = 0;
      *v3 = 0;
      *(a2 + 24) = *(v3 + 24);
      a2 += 40;
      v3 = (v3 + 40);
    }

    while (v3 != v4);
    v6 = *(a1 + 2);
    if (v6)
    {
      v7 = *a1 + 40 * v6 - 17;
      v8 = -40 * v6;
      v9 = v7;
      do
      {
        v10 = *v9;
        v9 -= 40;
        if (v10 < 0)
        {
          operator delete(*(v7 - 23));
        }

        v7 = v9;
        v8 += 40;
      }

      while (v8);
    }
  }
}

unsigned __int8 *llvm::support::detail::provider_format_adapter<llvm::iterator_range<unsigned int *>>::format(uint64_t a1, llvm::StringRef *a2, unsigned __int8 *a3, unsigned int *a4)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v14 = a3;
  v15 = a4;
  v7 = llvm::format_provider<llvm::iterator_range<unsigned int *>,void>::consumeOneOption(&v14, 0x24u, ", ");
  v9 = v8;
  result = llvm::format_provider<llvm::iterator_range<unsigned int *>,void>::consumeOneOption(&v14, 0x40u, &byte_25D0A27DF);
  v12 = result;
  v13 = v11;
  if (v5 != v6)
  {
    v14 = &unk_286E846F0;
    v15 = v5;
    result = llvm::format_provider<unsigned int,void>::format(v5++, a2, result, v11);
  }

  for (; v5 != v6; ++v5)
  {
    llvm::raw_ostream::operator<<(a2, v7, v9);
    v14 = &unk_286E846F0;
    v15 = v5;
    result = llvm::format_provider<unsigned int,void>::format(v5, a2, v12, v13);
  }

  return result;
}

uint64_t llvm::format_provider<llvm::iterator_range<unsigned int *>,void>::consumeOneOption(unsigned __int8 **a1, unsigned __int8 a2, uint64_t a3)
{
  v4 = a1[1];
  if (v4)
  {
    v6 = *a1;
    if (**a1 == a2)
    {
      v7 = (v6 + 1);
      v8 = (v4 - 1);
      *a1 = (v6 + 1);
      a1[1] = v4 - 1;
      if (v4 != 1)
      {
        v9 = 0;
        while (1)
        {
          v10 = off_2799BDDC8[v9];
          if (*v7 == *v10)
          {
            break;
          }

          if (++v9 == 3)
          {
            return a3;
          }
        }

        v11 = memchr((v6 + 1), v10[1], v8);
        v12 = v11 - v7;
        if (v11)
        {
          v13 = v12 == -1;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          a3 = v6 + 2;
          if (v8 >= v12 + 1)
          {
            v14 = v12 + 1;
          }

          else
          {
            v14 = v8;
          }

          *a1 = &v7[v14];
          a1[1] = (v8 - v14);
        }
      }
    }
  }

  return a3;
}

uint64_t llvm::SmallVector<std::pair<std::string,llvm::StringRef>,1u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 40 * v3 - 17;
    v5 = -40 * v3;
    v6 = v4;
    do
    {
      v7 = *v6;
      v6 -= 40;
      if (v7 < 0)
      {
        operator delete(*(v4 - 23));
      }

      v4 = v6;
      v5 += 40;
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

void mlir::PassExecutionAction::print(mlir::PassExecutionAction *this, llvm::raw_ostream *a2)
{
  v4 = (*(**(this + 4) + 16))(*(this + 4));
  v6 = v5;
  v7 = (*(*this + 32))(this);
  if ((*v7 & 6) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v7 & 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(v8 + 48);
  v10[1] = 38;
  v10[2] = v15;
  v10[3] = 3;
  v11 = 1;
  v12[0] = &unk_286E84828;
  v12[1] = &mlir::PassExecutionAction::tag;
  v13[0] = &unk_286E84750;
  v13[1] = v4;
  v13[2] = v6;
  v14[0] = &unk_286E84858;
  v14[1] = v9;
  v15[0] = v12;
  v15[1] = v13;
  v15[2] = v14;
  llvm::formatv_object_base::format(v10, a2);
}

uint64_t mlir::Pass::initializeOptions(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, void ***), uint64_t a5)
{
  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  v15 = 0;
  v19 = 0;
  v10 = 1;
  v20 = 1;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v14 = &unk_286E79D28;
  v21 = v22;
  llvm::raw_ostream::SetUnbuffered(&v14);
  if ((mlir::detail::PassOptions::parseFromString(a1 + 144, a2, a3, &v14) & 1) == 0)
  {
    v13 = 260;
    v12 = v22;
    v10 = a4(a5, &v12);
  }

  llvm::raw_ostream::~raw_ostream(&v14);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  return v10;
}

void mlir::Pass::printAsTextualPipeline(mlir::Pass *this, llvm::raw_ostream *a2)
{
  v4 = *(this + 1);
  v5 = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
  if (this && v4 == v5)
  {
    v6 = *(this + 86);
    if (v6)
    {
      v7 = *(this + 42);
      mlir::OpPassManager::printAsTextualPipeline(v7, a2);
      if (v6 != 1)
      {
        v8 = v7 + 1;
        v9 = 8 * v6 - 8;
        do
        {
          v10 = *(a2 + 4);
          if (*(a2 + 3) == v10)
          {
            llvm::raw_ostream::write(a2, ",", 1uLL);
          }

          else
          {
            *v10 = 44;
            ++*(a2 + 4);
          }

          mlir::OpPassManager::printAsTextualPipeline(v8++, a2);
          v9 -= 8;
        }

        while (v9);
      }
    }
  }

  else
  {
    v11 = (*(*this + 32))(this);
    if (v12)
    {
      llvm::raw_ostream::operator<<(a2, v11, v12);
    }

    else
    {
      v13 = *(a2 + 4);
      if (*(a2 + 3) - v13 > 7uLL)
      {
        *v13 = 0x3C6E776F6E6B6E75;
        *(a2 + 4) += 8;
        v14 = a2;
      }

      else
      {
        v14 = llvm::raw_ostream::write(a2, "unknown<", 8uLL);
      }

      v15 = (*(*this + 16))(this);
      v17 = llvm::raw_ostream::operator<<(v14, v15, v16);
      v18 = *(v17 + 4);
      if (*(v17 + 3) == v18)
      {
        llvm::raw_ostream::write(v17, ">", 1uLL);
      }

      else
      {
        *v18 = 62;
        ++*(v17 + 4);
      }
    }

    mlir::detail::PassOptions::print((this + 144), a2);
  }
}

uint64_t std::vector<std::unique_ptr<mlir::Pass>>::push_back[abi:nn200100](uint64_t result, uint64_t *a2)
{
  v3 = result;
  v5 = *(result + 8);
  v4 = *(result + 16);
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<std::unique_ptr<mlir::Pass>>::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v17[4] = v3;
    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<mlir::Pass>>>(v12);
    }

    v13 = (8 * (v9 >> 3));
    v14 = *a2;
    *a2 = 0;
    *v13 = v14;
    v7 = v13 + 1;
    memcpy(0, v8, v9);
    v15 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v16 = v3[2];
    v3[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::unique_ptr<mlir::Pass>>::~__split_buffer(v17);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

void *std::vector<std::unique_ptr<mlir::Pass>>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t mlir::detail::OpPassManagerImpl::addPass(uint64_t result, uint64_t *a2)
{
  v3 = result;
  v4 = *(result + 23);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (*(result + 23))
    {
      goto LABEL_3;
    }

LABEL_16:
    v6 = *a2;
    goto LABEL_17;
  }

  if (!*(result + 8))
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v4 >= 0)
  {
    v5 = *(result + 23);
  }

  else
  {
    result = *result;
    v5 = *(v3 + 8);
  }

  v6 = *a2;
  if (*(*a2 + 32))
  {
    v8 = v6[2];
    v7 = v6[3];
    if (v5 != v7 || v5 && (result = memcmp(result, v6[2], v5), result))
    {
      if (*(v3 + 68))
      {
        v41 = "Can't add pass '";
        v42 = 259;
        v26 = (*(*v6 + 16))(v6);
        v40 = 261;
        v39[0] = v26;
        v39[1] = v27;
        llvm::operator+(&v41, v39, v43);
        v37 = "' restricted to '";
        v38 = 259;
        llvm::operator+(v43, &v37, v44);
        v36 = 261;
        v35[0] = v8;
        v35[1] = v7;
        llvm::operator+(v44, v35, v45);
        v33 = "' on a PassManager intended to run on '";
        v34 = 259;
        llvm::operator+(v45, &v33, v46);
        v32 = 261;
        v31[0] = mlir::detail::OpPassManagerImpl::getOpAnchorName(v3);
        v31[1] = v28;
        llvm::operator+(v46, v31, v47);
        v29 = "', did you intend to nest?";
        v30 = 259;
        llvm::operator+(v47, &v29, v49);
        llvm::report_fatal_error(v49, 1);
      }

      v9 = mlir::detail::OpPassManagerImpl::nest(v3, v8, v7);
      v10 = *a2;
      *a2 = 0;
      v48 = v10;
      mlir::OpPassManager::addPass(v9, &v48);
      result = v48;
      if (v48)
      {
        v11 = *(*v48 + 8);

        return v11();
      }

      return result;
    }
  }

LABEL_17:
  v13 = *(v3 + 48);
  v12 = *(v3 + 56);
  if (v13 >= v12)
  {
    v15 = *(v3 + 40);
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<std::unique_ptr<mlir::Pass>>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    v49[4] = v3 + 40;
    if (v20)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<mlir::Pass>>>(v20);
    }

    v21 = v17;
    v22 = (8 * v17);
    *a2 = 0;
    v23 = &v22[-v21];
    *v22 = v6;
    v14 = v22 + 1;
    memcpy(v23, v15, v16);
    v24 = *(v3 + 40);
    *(v3 + 40) = v23;
    *(v3 + 48) = v14;
    v25 = *(v3 + 56);
    *(v3 + 56) = 0;
    v49[2] = v24;
    v49[3] = v25;
    v49[0] = v24;
    v49[1] = v24;
    result = std::__split_buffer<std::unique_ptr<mlir::Pass>>::~__split_buffer(v49);
  }

  else
  {
    *a2 = 0;
    *v13 = v6;
    v14 = v13 + 8;
  }

  *(v3 + 48) = v14;
  return result;
}

uint64_t mlir::OpPassManager::addPass(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = 0;
  v6 = v3;
  mlir::detail::OpPassManagerImpl::addPass(v2, &v6);
  result = v6;
  if (v6)
  {
    v5 = *(*v6 + 8);

    return v5();
  }

  return result;
}

const char *mlir::detail::OpPassManagerImpl::getOpAnchorName(const char *this)
{
  v1 = this[23];
  if ((v1 & 0x8000000000000000) == 0)
  {
    if (this[23])
    {
      goto LABEL_3;
    }

    return "any";
  }

  if (!*(this + 1))
  {
    return "any";
  }

LABEL_3:
  v2 = *(this + 1);
  if (v1 < 0)
  {
    return *this;
  }

  return this;
}

BOOL mlir::detail::OpPassManagerImpl::finalizePassList(mlir::detail::OpPassManagerImpl *this, mlir::MLIRContext *a2)
{
  v2 = a2;
  v91 = *MEMORY[0x277D85DE8];
  v3 = *(this + 5);
  v84 = *(this + 6);
  if (v3 == v84)
  {
    goto LABEL_99;
  }

  v4 = 0;
  do
  {
    v5 = *v3;
    v6 = *(*v3 + 8);
    v7 = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
    v85 = v5;
    if (v5)
    {
      v8 = v6 == v7;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      if (!v4)
      {
        goto LABEL_93;
      }

      v9 = *(v4 + 344);
      if (!v9)
      {
LABEL_12:
        v4 = 0;
        goto LABEL_93;
      }

      v10 = *(v4 + 336);
      v11 = 8 * v9;
      while ((mlir::detail::OpPassManagerImpl::finalizePassList(*v10, v2) & 1) != 0)
      {
        ++v10;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_12;
        }
      }

LABEL_103:
      v61 = 0;
      goto LABEL_125;
    }

    if (!v4)
    {
      v4 = v5;
      goto LABEL_93;
    }

    v12 = *(v5 + 344);
    v83 = v3;
    if (v12)
    {
      v13 = 8 * v12;
      v14 = *(v5 + 336);
      while (1)
      {
        v15 = *(*v14 + 23);
        if (v15 < 0)
        {
          v15 = *(*v14 + 1);
        }

        if (!v15)
        {
          break;
        }

        ++v14;
        v13 -= 8;
        if (!v13)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v14 = *(v5 + 336);
    }

    if (v14 != (*(v5 + 336) + 8 * v12))
    {
      v16 = *(v4 + 344);
      if (v16)
      {
        v17 = *(v4 + 336);
        v18 = 8 * v16;
        while (1)
        {
          OpName = mlir::detail::OpPassManagerImpl::getOpName(*v17, v2);
          if (v20 & 1) == 0 || (mlir::detail::OpPassManagerImpl::canScheduleOn(*v14, v2, OpName))
          {
            break;
          }

          ++v17;
          v18 -= 8;
          if (!v18)
          {
            goto LABEL_29;
          }
        }

LABEL_92:
        v4 = v85;
        v3 = v83;
        goto LABEL_93;
      }
    }

LABEL_29:
    v21 = *(v4 + 344);
    if (v21)
    {
      v22 = 8 * v21;
      v23 = *(v4 + 336);
      while (1)
      {
        v24 = *(*v23 + 23);
        if (v24 < 0)
        {
          v24 = *(*v23 + 1);
        }

        if (!v24)
        {
          break;
        }

        ++v23;
        v22 -= 8;
        if (!v22)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      v23 = *(v4 + 336);
    }

    if (v23 != (*(v4 + 336) + 8 * v21))
    {
      v25 = *(v85 + 344);
      if (!v25)
      {
        goto LABEL_88;
      }

      v26 = *(v85 + 336);
      v27 = 8 * v25;
      do
      {
        v28 = mlir::detail::OpPassManagerImpl::getOpName(*v26, v2);
        if (v29 & 1) == 0 || (mlir::detail::OpPassManagerImpl::canScheduleOn(*v23, v2, v28))
        {
          goto LABEL_92;
        }

        ++v26;
        v27 -= 8;
      }

      while (v27);
    }

LABEL_43:
    v30 = *(v85 + 344);
    if (!v30)
    {
      goto LABEL_88;
    }

    v31 = *(v85 + 336);
    v32 = &v31[v30];
    do
    {
      v33 = *v31;
      v34 = *(*v31 + 23);
      if (v34 < 0)
      {
        if (!*(v33 + 8))
        {
LABEL_54:
          v35 = "any";
          v36 = 3;
          goto LABEL_55;
        }
      }

      else if (!*(*v31 + 23))
      {
        goto LABEL_54;
      }

      if (v34 >= 0)
      {
        v35 = *v31;
      }

      else
      {
        v35 = *v33;
      }

      if (v34 >= 0)
      {
        v36 = *(*v31 + 23);
      }

      else
      {
        v36 = *(v33 + 8);
      }

LABEL_55:
      v37 = *(v4 + 336);
      v38 = *(v4 + 344);
      if (v38)
      {
        v39 = 8 * v38;
        v40 = *(v4 + 336);
        while (1)
        {
          v41 = *v40;
          v42 = (*v40)[23];
          if (v42 < 0)
          {
            if (*(v41 + 1))
            {
LABEL_59:
              v43 = *(v41 + 1);
              if (v42 >= 0)
              {
                v43 = (*v40)[23];
              }

              if (v43 == v36)
              {
                if (v42 >= 0)
                {
                  v44 = *v40;
                }

                else
                {
                  v44 = *v41;
                }

                if (!v36)
                {
                  goto LABEL_74;
                }

                v45 = v36;
                goto LABEL_70;
              }

              goto LABEL_71;
            }
          }

          else if ((*v40)[23])
          {
            goto LABEL_59;
          }

          if (v36 == 3)
          {
            v44 = "any";
            v45 = 3;
LABEL_70:
            if (!memcmp(v44, v35, v45))
            {
              goto LABEL_74;
            }
          }

LABEL_71:
          ++v40;
          v39 -= 8;
          if (!v39)
          {
            goto LABEL_79;
          }
        }
      }

      v40 = *(v4 + 336);
LABEL_74:
      if (v40 == (v37 + 8 * v38) || v40 == 0)
      {
LABEL_79:
        llvm::SmallVectorImpl<mlir::OpPassManager>::emplace_back<mlir::OpPassManager>(v4 + 336, v31);
      }

      else
      {
        v49 = *(v33 + 40);
        v47 = *(v33 + 48);
        v48 = (v33 + 40);
        if (v49 != v47)
        {
          v50 = *v40;
          do
          {
            std::vector<std::unique_ptr<mlir::Pass>>::push_back[abi:nn200100]((v50 + 40), v49++);
          }

          while (v49 != v47);
        }

        std::vector<std::unique_ptr<mlir::Pass>>::clear[abi:nn200100](v48);
      }

      ++v31;
    }

    while (v31 != v32);
    v51 = *(v85 + 344);
    v2 = a2;
    if (v51)
    {
      v52 = -8 * v51;
      v53 = (*(v85 + 336) + 8 * v51 - 8);
      do
      {
        std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](v53--, 0);
        v52 += 8;
      }

      while (v52);
    }

LABEL_88:
    *(v85 + 344) = 0;
    v54 = *(v4 + 344);
    if (v54 >= 2)
    {
      qsort(*(v4 + 336), v54, 8uLL, mlir::detail::OpToOpPassAdaptor::tryMergeInto(mlir::MLIRContext *,mlir::detail::OpToOpPassAdaptor&)::$_2::__invoke);
    }

    v3 = v83;
    v55 = *v83;
    *v83 = 0;
    if (v55)
    {
      (*(*v55 + 8))(v55);
    }

LABEL_93:
    ++v3;
  }

  while (v3 != v84);
  if (v4)
  {
    v56 = *(v4 + 344);
    if (v56)
    {
      v57 = *(v4 + 336);
      v58 = 8 * v56;
      while ((mlir::detail::OpPassManagerImpl::finalizePassList(*v57, v2) & 1) != 0)
      {
        ++v57;
        v58 -= 8;
        if (!v58)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_103;
    }
  }

LABEL_99:
  v59 = *(this + 5);
  v60 = *(this + 6);
  if (v59 != v60)
  {
    while (*v59)
    {
      if (++v59 == v60)
      {
        goto LABEL_118;
      }
    }

    if (v59 != v60)
    {
      v62 = v59 + 1;
      if (v59 + 1 != v60)
      {
        do
        {
          v63 = *v62;
          if (*v62)
          {
            *v62 = 0;
            v64 = *v59;
            *v59 = v63;
            if (v64)
            {
              (*(*v64 + 8))(v64);
            }

            ++v59;
          }

          ++v62;
        }

        while (v62 != v60);
        v60 = *(this + 6);
      }
    }
  }

  if (v59 != v60)
  {
    while (v60 != v59)
    {
      v66 = *--v60;
      v65 = v66;
      *v60 = 0;
      if (v66)
      {
        (*(*v65 + 8))(v65);
      }
    }

    *(this + 6) = v59;
  }

LABEL_118:
  v67 = mlir::detail::OpPassManagerImpl::getOpName(this, v2);
  if ((v68 & 1) == 0 || (v69 = *(this + 5), v70 = *(this + 6), v69 == v70))
  {
LABEL_124:
    v61 = 1;
    goto LABEL_125;
  }

  v71 = v67;
  v72 = v2;
  v73 = *(v67 + 16);
  while (v73 == &mlir::detail::TypeIDResolver<void,void>::id || ((*(**v69 + 72))(*v69, v71) & 1) != 0)
  {
    if (++v69 == v70)
    {
      goto LABEL_124;
    }
  }

  v76 = *(*v72 + 616);
  v88 = 257;
  emitDiag(v76, 2, &v86, &v89);
  if (v89)
  {
    mlir::Diagnostic::operator<<<26ul>(v90, "unable to schedule pass '");
  }

  v77 = (*(**v69 + 16))();
  if (v89)
  {
    v88 = 261;
    v86 = v77;
    v87 = v78;
    mlir::Diagnostic::operator<<(v90, &v86);
    if (v89)
    {
      mlir::Diagnostic::operator<<<40ul>(v90, "' on a PassManager intended to run on '");
    }
  }

  v79 = *(this + 23);
  if (v79 < 0)
  {
    if (*(this + 1))
    {
      goto LABEL_133;
    }

    goto LABEL_137;
  }

  if (!*(this + 23))
  {
LABEL_137:
    v80 = "any";
    v79 = 3;
    goto LABEL_138;
  }

LABEL_133:
  v80 = *this;
  if (v79 < 0)
  {
    v79 = *(this + 1);
  }

  else
  {
    v80 = this;
  }

LABEL_138:
  if (v89)
  {
    v88 = 261;
    v86 = v80;
    v87 = v79;
    mlir::Diagnostic::operator<<(v90, &v86);
    if (v89)
    {
      mlir::Diagnostic::operator<<<3ul>(v90, "'!");
    }
  }

  v61 = (v90[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v89);
LABEL_125:
  v74 = *MEMORY[0x277D85DE8];
  return v61;
}

uint64_t mlir::detail::OpPassManagerImpl::getOpName(mlir::detail::OpPassManagerImpl *this, mlir::MLIRContext *a2)
{
  v4 = *(this + 23);
  if (v4 < 0)
  {
    if (!*(this + 1))
    {
      goto LABEL_15;
    }
  }

  else if (!*(this + 23))
  {
    goto LABEL_15;
  }

  if ((*(this + 32) & 1) == 0)
  {
    if (v4 >= 0)
    {
      v5 = this;
    }

    else
    {
      v5 = *this;
    }

    if (v4 >= 0)
    {
      v6 = *(this + 23);
    }

    else
    {
      v6 = *(this + 1);
    }

    mlir::OperationName::OperationName(&v10, v5, v6, a2);
    v7 = v10;
    if ((*(this + 32) & 1) == 0)
    {
      *(this + 32) = 1;
    }

    *(this + 3) = v7;
  }

LABEL_15:
  result = *(this + 3);
  v9 = *(this + 4);
  return result;
}

uint64_t mlir::detail::OpPassManagerImpl::canScheduleOn(mlir::detail::OpPassManagerImpl *a1, mlir::MLIRContext *a2, void *a3)
{
  OpName = mlir::detail::OpPassManagerImpl::getOpName(a1, a2);
  if (v6)
  {
    return OpName == a3;
  }

  v8 = a3[2];
  if (v8 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  if (v8 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return 0;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
  result = (*(*a3 + 32))(a3, v10);
  if (result)
  {
    v11 = *(a1 + 5);
    v12 = *(a1 + 6);
    if (v11 == v12)
    {
      return 1;
    }

    else
    {
      v13 = v11 + 8;
      do
      {
        result = (*(**(v13 - 8) + 72))(*(v13 - 8), v9);
        if (result)
        {
          v14 = v13 == v12;
        }

        else
        {
          v14 = 1;
        }

        v13 += 8;
      }

      while (!v14);
    }
  }

  return result;
}

llvm::raw_ostream *printAsTextualPipeline(llvm::raw_ostream *a1, const void *a2, size_t a3, mlir::Pass ***a4)
{
  result = llvm::raw_ostream::operator<<(a1, a2, a3);
  v7 = *(result + 4);
  if (*(result + 3) == v7)
  {
    result = llvm::raw_ostream::write(result, "(", 1uLL);
  }

  else
  {
    *v7 = 40;
    ++*(result + 4);
  }

  v8 = *a4;
  v9 = a4[1];
  if (*a4 != v9)
  {
    v11 = *v8;
    v10 = v8 + 1;
    for (result = mlir::Pass::printAsTextualPipeline(v11, a1); v10 != v9; result = mlir::Pass::printAsTextualPipeline(v13, a1))
    {
      v12 = *(a1 + 4);
      if (*(a1 + 3) == v12)
      {
        llvm::raw_ostream::write(a1, ",", 1uLL);
      }

      else
      {
        *v12 = 44;
        ++*(a1 + 4);
      }

      v13 = *v10++;
    }
  }

  v14 = *(a1 + 4);
  if (*(a1 + 3) == v14)
  {

    return llvm::raw_ostream::write(a1, ")", 1uLL);
  }

  else
  {
    *v14 = 41;
    ++*(a1 + 4);
  }

  return result;
}

llvm::raw_ostream *mlir::OpPassManager::printAsTextualPipeline(const char **this, llvm::raw_ostream *a2)
{
  v5 = *this;
  v6 = (*this)[23];
  if (v6 < 0)
  {
    if (*(v5 + 1))
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = "any";
    v8 = 3;
    goto LABEL_11;
  }

  if (!(*this)[23])
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 0)
  {
    v7 = *this;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = (*this)[23];
  }

  else
  {
    v8 = *(v5 + 1);
  }

LABEL_11:
  v12[2] = v2;
  v12[3] = v3;
  v10 = *(v5 + 5);
  v9 = *(v5 + 6);
  v12[0] = v10;
  v12[1] = v9;
  return printAsTextualPipeline(a2, v7, v8, v12);
}

uint64_t mlir::OpPassManager::initialize(mlir::OpPassManager *this, mlir::MLIRContext *a2, unsigned int a3)
{
  v3 = *this;
  if (*(*this + 64) == a3)
  {
    return 1;
  }

  *(v3 + 64) = a3;
  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  if (v5 == v6)
  {
    return 1;
  }

  while (1)
  {
    v8 = *v5;
    v9 = *(*v5 + 8);
    v10 = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
    if (v8 && v9 == v10)
    {
      break;
    }

    if (((*(*v8 + 64))(v8, a2) & 1) == 0)
    {
      return 0;
    }

LABEL_13:
    if (++v5 == v6)
    {
      return 1;
    }
  }

  v12 = *(v8 + 344);
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v8 + 336);
  v14 = 8 * v12;
  while ((mlir::OpPassManager::initialize(v13, a2, a3) & 1) != 0)
  {
    v13 = (v13 + 8);
    v14 -= 8;
    if (!v14)
    {
      goto LABEL_13;
    }
  }

  return 0;
}

unint64_t mlir::OpPassManager::hash(mlir::OpPassManager *this)
{
  v23 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v1 = *(*this + 40);
  v2 = *(*this + 48);
  if (v1 == v2)
  {
    result = 0;
  }

  else
  {
    do
    {
      v3 = *v1;
      v4 = *(*v1 + 8);
      v5 = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
      if (v3)
      {
        v6 = v4 == v5;
      }

      else
      {
        v6 = 0;
      }

      if (v6)
      {
        v7 = *(v3 + 344);
        if (v7)
        {
          v8 = *(v3 + 336);
          v9 = 8 * v7;
          do
          {
            v12 = mlir::OpPassManager::hash(v8);
            v19 = 0u;
            v20 = 0u;
            v17 = 0u;
            v18 = 0u;
            v15 = 0u;
            v16 = 0u;
            v14 = 0u;
            v21 = 0;
            v22 = 0xFF51AFD7ED558CCDLL;
            llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(&v14, 0, &v14, &v18, &v13, &v12);
            v8 = (v8 + 8);
            v9 -= 8;
          }

          while (v9);
        }
      }

      else
      {
        v21 = 0;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v22 = 0xFF51AFD7ED558CCDLL;
        *&v14 = v13;
        *(&v14 + 1) = v3;
        v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v14, 0, &v15, &v18);
      }

      ++v1;
    }

    while (v1 != v2);
    result = v13;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::detail::OpToOpPassAdaptor::run(uint64_t a1, void ***this, uint64_t a3, char a4, int a5)
{
  v5 = this;
  v53 = *MEMORY[0x277D85DE8];
  v47 = a1;
  v48 = a3;
  v46 = this;
  v45 = a4;
  v44 = a5;
  v6 = this[6];
  if (v6[2] == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v43 = 257;
    mlir::Operation::emitOpError(this, v42, &v50);
    if (v50)
    {
      mlir::Diagnostic::operator<<<55ul>(v51, "trying to schedule a pass on an unregistered operation");
    }

    goto LABEL_26;
  }

  v7 = a3;
  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
  if (((*(*v6 + 4))(v6, v9) & 1) == 0)
  {
    v43 = 257;
    mlir::Operation::emitOpError(v5, v42, &v50);
    if (v50)
    {
      mlir::Diagnostic::operator<<<76ul>(v51, "trying to schedule a pass on an operation not marked as 'IsolatedFromAbove'");
    }

    goto LABEL_26;
  }

  if (*(*(v5 + 6) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v5 + 6);
  }

  if (((*(*a1 + 72))(a1, v10) & 1) == 0)
  {
    v43 = 257;
    mlir::Operation::emitOpError(v5, v42, &v50);
    if (v50)
    {
      mlir::Diagnostic::operator<<<54ul>(v51, "trying to schedule a pass on an unsupported operation");
    }

LABEL_26:
    v20 = v52;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v50);
    goto LABEL_27;
  }

  v11 = *(v7 + 72);
  v12 = v11 & 0xFFFFFFFFFFFFFFF8;
  if ((v11 & 4) == 0 && v12)
  {
    do
    {
      v13 = *(v12 + 72);
      v12 = v13 & 0xFFFFFFFFFFFFFFF8;
    }

    while ((v13 & 4) == 0 && v12);
  }

  v41 = v12;
  {
    v15 = *llvm::get_threadid(void)::Self();
  }

  else
  {
    llvm::get_threadid(void)::$_0::operator()();
    v37 = llvm::get_threadid(void)::Self();
    *v37 = v38;
  }

  v40[0] = v15;
  v40[1] = a1;
  v50 = &v46;
  v51[0] = &v44;
  v51[1] = &v48;
  v51[2] = &v45;
  v51[3] = &v41;
  v51[4] = v40;
  if (*(a1 + 112) == 1 && (*(a1 + 76) & 1) == 0)
  {
    free(*(a1 + 56));
    v5 = v46;
    v7 = v48;
    v12 = v41;
  }

  *(a1 + 40) = v5 & 0xFFFFFFFFFFFFFFFBLL;
  *(a1 + 48) = v7;
  *(a1 + 56) = a1 + 80;
  *(a1 + 64) = 2;
  *(a1 + 72) = 0;
  *(a1 + 76) = 1;
  *(a1 + 96) = llvm::function_ref<llvm::LogicalResult ()(mlir::OpPassManager &,mlir::Operation *)>::callback_fn<mlir::detail::OpToOpPassAdaptor::run(mlir::Pass *,mlir::Operation *,mlir::AnalysisManager,BOOL,unsigned int)::$_0>;
  *(a1 + 104) = &v50;
  *(a1 + 112) = 1;
  if (v12)
  {
    v16 = *v12;
    std::recursive_mutex::lock(*v12);
    v17 = *(*v12 + 72);
    v18 = *(*v12 + 80);
    while (v17 != v18)
    {
      v19 = *v17++;
      (*(*v19 + 32))(v19, a1, v5);
    }

    std::recursive_mutex::unlock(v16);
    v5 = v46;
  }

  v39 = 0;
  v23 = *(***(v5 + 3) + 32);
  v42[0] = &v47;
  v42[1] = &v45;
  v42[2] = &v39;
  v49 = v5 & 0xFFFFFFFFFFFFFFF9;
  if (*(*v23 + 24))
  {
    mlir::MLIRContext::executeActionInternal<mlir::PassExecutionAction,mlir::Pass &>(*v23, llvm::function_ref<void ()(void)>::callback_fn<mlir::detail::OpToOpPassAdaptor::run(mlir::Pass *,mlir::Operation *,mlir::AnalysisManager,BOOL,unsigned int)::$_1>, v42, &v49, 1, a1);
  }

  else
  {
    llvm::function_ref<void ()(void)>::callback_fn<mlir::detail::OpToOpPassAdaptor::run(mlir::Pass *,mlir::Operation *,mlir::AnalysisManager,BOOL,unsigned int)::$_1>(v42);
  }

  mlir::detail::NestedAnalysisMap::invalidate(v48, (v47 + 56));
  if (!v39 && v45 == 1)
  {
    v24 = *(v47 + 8);
    v25 = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
    v26 = v47;
    v27 = mlir::detail::TypeIDResolver<mlir::detail::PreservedAnalyses::AllAnalysesType,void>::resolveTypeID();
    if (!llvm::SmallPtrSetImplBase::contains_imp((v26 + 56), v27))
    {
      LOBYTE(v42[0]) = v24 != v25;
    }
  }

  v28 = v41;
  if (v41)
  {
    v29 = v39;
    v31 = v46;
    v30 = v47;
    v32 = *v41;
    std::recursive_mutex::lock(*v41);
    v34 = *(*v28)[1].__m_.__opaque;
    v33 = *&(*v28)[1].__m_.__opaque[8];
    if (v29)
    {
      while (v33 != v34)
      {
        v35 = *(v33 - 8);
        v33 -= 8;
        (*(*v35 + 48))(v35, v30, v31);
      }
    }

    else
    {
      while (v33 != v34)
      {
        v36 = *(v33 - 8);
        v33 -= 8;
        (*(*v36 + 40))(v36, v30, v31);
      }
    }

    std::recursive_mutex::unlock(v32);
  }

  v20 = v39;
LABEL_27:
  v21 = *MEMORY[0x277D85DE8];
  return !v20;
}

uint64_t mlir::detail::OpToOpPassAdaptor::runPipeline(mlir::detail::OpPassManagerImpl **a1, mlir::Operation *this, unsigned int *a3, char a4, int a5, std::recursive_mutex **a6, uint64_t a7)
{
  if (a6)
  {
    OpName = mlir::detail::OpPassManagerImpl::getOpName(*a1, *(***(this + 3) + 32));
    mlir::PassInstrumentor::runBeforePipeline(a6, OpName, v15, a7);
  }

  v16 = *(*a1 + 5);
  v17 = *(*a1 + 6);
  while (v16 != v17)
  {
    if (!mlir::detail::OpToOpPassAdaptor::run(*v16, this, a3, a4, a5))
    {
      v20 = 0;
      goto LABEL_11;
    }

    ++v16;
  }

  if (a6)
  {
    v18 = mlir::detail::OpPassManagerImpl::getOpName(*a1, *(***(this + 3) + 32));
    mlir::PassInstrumentor::runAfterPipeline(a6, v18, v19, a7);
  }

  v20 = 1;
LABEL_11:
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::clear(a3 + 8);
  llvm::SmallVectorImpl<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>>::clear(a3 + 14);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::clear(a3);
  return v20;
}

void mlir::PassInstrumentor::runBeforePipeline(std::recursive_mutex **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  std::recursive_mutex::lock(*a1);
  v9 = *a1;
  v10 = *(*a1)[1].__m_.__opaque;
  v11 = *&v9[1].__m_.__opaque[8];
  while (v10 != v11)
  {
    v12 = *v10++;
    (*(*v12 + 16))(v12, a2, a3, a4);
  }

  std::recursive_mutex::unlock(v8);
}

void mlir::PassInstrumentor::runAfterPipeline(std::recursive_mutex **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  std::recursive_mutex::lock(*a1);
  v10 = *(*a1)[1].__m_.__opaque;
  for (i = *&(*a1)[1].__m_.__opaque[8]; i != v10; i -= 8)
  {
    v11 = *(i - 8);
    (*(*v11 + 24))(v11, a2, a3, a4);
  }

  std::recursive_mutex::unlock(v8);
}

uint64_t mlir::detail::OpToOpPassAdaptor::OpToOpPassAdaptor(uint64_t a1, uint64_t *a2)
{
  v4 = mlir::PassWrapper<mlir::detail::OpToOpPassAdaptor,mlir::OperationPass<void>>::PassWrapper(a1);
  *v4 = &unk_286E847B8;
  v4[42] = v4 + 44;
  v4[43] = 0x100000000;
  v4[45] = v4 + 47;
  v4[46] = 0x800000000;
  llvm::SmallVectorImpl<mlir::OpPassManager>::emplace_back<mlir::OpPassManager>((v4 + 42), a2);
  return a1;
}

uint64_t mlir::PassWrapper<mlir::detail::OpToOpPassAdaptor,mlir::OperationPass<void>>::PassWrapper(uint64_t a1)
{
  *(a1 + 8) = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
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
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0;
  *a1 = &unk_286E84888;
  return a1;
}

uint64_t llvm::SmallVectorImpl<mlir::OpPassManager>::emplace_back<mlir::OpPassManager>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::growAndEmplaceBack<mlir::OpPassManager>(a1, a2);
  }

  else
  {
    v4 = (*a1 + 8 * v3);
    *v4 = 0;
    v5 = *a2;
    *a2 = 0;
    std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](v4, v5);
    v6 = *(a1 + 8) + 1;
    *(a1 + 8) = v6;
    return *a1 + 8 * v6 - 8;
  }
}

uint64_t mlir::detail::OpToOpPassAdaptor::getDependentDialects(uint64_t result, uint64_t a2)
{
  v2 = *(result + 344);
  if (v2)
  {
    v4 = *(result + 336);
    v5 = v4 + 8 * v2;
    do
    {
      v6 = *(*v4 + 40);
      v7 = *(*v4 + 48);
      while (v6 != v7)
      {
        v8 = *v6++;
        result = (*(*v8 + 24))(v8, a2);
      }

      v4 += 8;
    }

    while (v4 != v5);
  }

  return result;
}

void mlir::detail::OpToOpPassAdaptor::getAdaptorName(mlir::detail::OpToOpPassAdaptor *this@<X0>, _BYTE *a2@<X8>)
{
  v24 = 0;
  v28 = 0;
  v29 = 1;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v23 = &unk_286E79D28;
  v30 = std::string::basic_string[abi:nn200100]<0>(a2, "Pipeline Collection : [");
  llvm::raw_ostream::SetUnbuffered(&v23);
  v3 = *(this + 86);
  if (!v3)
  {
    goto LABEL_40;
  }

  v4 = *(this + 42);
  v5 = v27;
  if (v27 >= v26)
  {
    llvm::raw_ostream::write(&v23, 39);
  }

  else
  {
    v27 = (v27 + 1);
    *v5 = 39;
  }

  v6 = *v4;
  v7 = (*v4)[23];
  if (v7 < 0)
  {
    if (*(v6 + 1))
    {
      goto LABEL_7;
    }

LABEL_14:
    v8 = "any";
    v9 = 3;
    goto LABEL_15;
  }

  if (!(*v4)[23])
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v7 >= 0)
  {
    v8 = *v4;
  }

  else
  {
    v8 = *v6;
  }

  if (v7 >= 0)
  {
    v9 = (*v4)[23];
  }

  else
  {
    v9 = *(v6 + 1);
  }

LABEL_15:
  v10 = llvm::raw_ostream::operator<<(&v23, v8, v9);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 39);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 39;
  }

  if (v3 != 1)
  {
    v12 = 8 * v3;
    v13 = v4 + 1;
    for (i = v12 - 8; i; i -= 8)
    {
      if (v26 - v27 > 1)
      {
        *v27 = 8236;
        v15 = ++v27;
      }

      else
      {
        llvm::raw_ostream::write(&v23, ", ", 2uLL);
        v15 = v27;
      }

      if (v15 >= v26)
      {
        llvm::raw_ostream::write(&v23, 39);
      }

      else
      {
        v27 = v15 + 1;
        *v15 = 39;
      }

      v16 = *v13;
      v17 = (*v13)[23];
      if (v17 < 0)
      {
        if (*(v16 + 1))
        {
LABEL_28:
          if (v17 >= 0)
          {
            v18 = *v13;
          }

          else
          {
            v18 = *v16;
          }

          if (v17 >= 0)
          {
            v19 = (*v13)[23];
          }

          else
          {
            v19 = *(v16 + 1);
          }

          goto LABEL_36;
        }
      }

      else if ((*v13)[23])
      {
        goto LABEL_28;
      }

      v18 = "any";
      v19 = 3;
LABEL_36:
      v20 = llvm::raw_ostream::operator<<(&v23, v18, v19);
      v21 = *(v20 + 4);
      if (v21 >= *(v20 + 3))
      {
        llvm::raw_ostream::write(v20, 39);
      }

      else
      {
        *(v20 + 4) = v21 + 1;
        *v21 = 39;
      }

      ++v13;
    }
  }

LABEL_40:
  v22 = v27;
  if (v27 >= v26)
  {
    llvm::raw_ostream::write(&v23, 93);
  }

  else
  {
    v27 = (v27 + 1);
    *v22 = 93;
  }

  llvm::raw_ostream::~raw_ostream(&v23);
}

uint64_t mlir::AnalysisManager::nest(mlir::AnalysisManager *this, mlir::Operation *a2)
{
  v2 = a2;
  v19[4] = *MEMORY[0x277D85DE8];
  v4 = *(*this + 24);
  v5 = *(a2 + 2);
  if (v5)
  {
    v5 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v5)
    {
      v5 = *(v5 + 16);
    }
  }

  if (v4 == v5)
  {
    v15 = *MEMORY[0x277D85DE8];

    return mlir::AnalysisManager::nestImmediate(this, a2);
  }

  else
  {
    v17 = v19;
    v18 = 0x400000000;
    do
    {
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v17, v2);
      v6 = *(v2 + 2);
      if (v6 && (v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v2 = *(v7 + 16);
      }

      else
      {
        v2 = 0;
      }
    }

    while (v2 != v4);
    v8 = *this;
    v16 = v8;
    v9 = v17;
    if (v18)
    {
      v10 = 8 * v18;
      v11 = v17 - 8;
      do
      {
        v12 = mlir::AnalysisManager::nestImmediate(&v16, *&v11[v10]);
        v16 = v12;
        v10 -= 8;
      }

      while (v10);
      v8 = v12;
      v9 = v17;
    }

    if (v9 != v19)
    {
      free(v9);
    }

    v13 = *MEMORY[0x277D85DE8];
    return v8;
  }
}

void mlir::PassManager::~PassManager(mlir::PassManager *this)
{
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    mlir::detail::PassCrashReproducerGenerator::~PassCrashReproducerGenerator(v2);
    MEMORY[0x25F891040]();
  }

  std::unique_ptr<mlir::PassInstrumentor>::reset[abi:nn200100](this + 3, 0);
  std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](this, 0);
}

uint64_t mlir::PassManager::run(mlir::PassManager *this, mlir::Operation *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = *(this + 1);
  OpName = mlir::detail::OpPassManagerImpl::getOpName(*this, v4);
  if ((v6 & 1) == 0 || *(a2 + 6) == OpName)
  {
    v30 = 0u;
    v29 = &v30;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34[0] = &v35;
    v34[1] = 0;
    mlir::DialectRegistry::insert<mlir::BuiltinDialect>(&v29);
    v11 = *(*this + 40);
    v12 = *(*this + 48);
    while (v11 != v12)
    {
      v13 = *v11++;
      (*(*v13 + 24))(v13, &v29);
    }

    mlir::MLIRContext::appendDialectRegistry(v4, &v29);
    v15 = v29;
    if (v29 != &v30)
    {
      do
      {
        v16 = v15[55];
        if (v16 >= 0)
        {
          v17 = v15 + 32;
        }

        else
        {
          v17 = *(v15 + 4);
        }

        v18 = *(v15 + 5);
        if (v16 >= 0)
        {
          v19 = v15[55];
        }

        else
        {
          v19 = *(v15 + 5);
        }

        mlir::MLIRContext::getOrLoadDialect(v4, v17, v19, v14);
        v20 = *(v15 + 1);
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = *(v15 + 2);
            v22 = *v21 == v15;
            v15 = v21;
          }

          while (!v22);
        }

        v15 = v21;
      }

      while (v21 != &v30);
    }

    if (mlir::detail::OpPassManagerImpl::finalizePassList(*this, v4))
    {
      RegistryHash = mlir::MLIRContext::getRegistryHash(v4);
      v24 = mlir::OpPassManager::hash(this);
      if (RegistryHash == *(this + 5) && v24 == *(this + 6))
      {
        goto LABEL_31;
      }

      if (mlir::OpPassManager::initialize(this, v4, *(*this + 64) + 1))
      {
        *(this + 5) = RegistryHash;
LABEL_31:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v39 = 0;
        v40 = 0;
        v38 = a2;
        v41 = 0;
        v42[0] = &v43;
        v42[1] = 0;
        v25 = *(this + 4);
        v43 = *(this + 3) | 4;
        if (v25)
        {
          mlir::PassManager::runWithCrashRecovery(this, a2, &v35);
        }

        v26 = mlir::detail::OpToOpPassAdaptor::runPipeline(this, a2, &v35, (*(this + 56) & 2) != 0, *(*this + 64), 0, 0);
        if (*(this + 20) == 1)
        {
          mlir::PassManager::dumpStatistics(this);
        }

        llvm::SmallVector<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>,0u>::~SmallVector(v42);
        MEMORY[0x25F891030](v39, 8);
        llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::destroyAll(&v35);
        MEMORY[0x25F891030](v35, 8);
        goto LABEL_45;
      }
    }

    v26 = 0;
LABEL_45:
    llvm::SmallVector<std::pair<mlir::TypeID,std::unique_ptr<mlir::DialectExtensionBase>>,0u>::~SmallVector(v34);
    MEMORY[0x25F891030](v31, 8);
    std::__tree<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>>::destroy(&v29, v30);
    goto LABEL_46;
  }

  v7 = *(a2 + 3);
  LOWORD(v32) = 257;
  emitDiag(v7, 2, &v29, &v35);
  if (v35)
  {
    mlir::Diagnostic::operator<<<12ul>(&v36, "can't run '");
  }

  v8 = *this;
  v9 = *(*this + 23);
  if (v9 < 0)
  {
    if (*(v8 + 1))
    {
LABEL_7:
      v10 = *(v8 + 1);
      if (v9 < 0)
      {
        v8 = *v8;
        v9 = v10;
      }

      goto LABEL_36;
    }
  }

  else if (*(*this + 23))
  {
    goto LABEL_7;
  }

  v8 = "any";
  v9 = 3;
LABEL_36:
  if (v35)
  {
    LOWORD(v32) = 261;
    v29 = v8;
    *&v30 = v9;
    mlir::Diagnostic::operator<<(&v36, &v29);
    if (v35)
    {
      mlir::Diagnostic::operator<<<20ul>(&v36, "' pass manager on '");
      if (v35)
      {
        mlir::Diagnostic::operator<<(&v36, *(a2 + 6));
        if (v35)
        {
          mlir::Diagnostic::operator<<<5ul>(&v36, "' op");
        }
      }
    }
  }

  v26 = (v44 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
LABEL_46:
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t mlir::PassManager::addInstrumentation(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    operator new();
  }

  v3 = *a2;
  *a2 = 0;
  v6 = v3;
  mlir::PassInstrumentor::addInstrumentation(v2, &v6);
  result = v6;
  if (v6)
  {
    v5 = *(*v6 + 8);

    return v5();
  }

  return result;
}

void mlir::PassInstrumentor::addInstrumentation(std::recursive_mutex **a1, uint64_t *a2)
{
  v4 = *a1;
  std::recursive_mutex::lock(*a1);
  v5 = *a1;
  v7 = *&(*a1)[1].__m_.__opaque[8];
  v6 = *&(*a1)[1].__m_.__opaque[16];
  if (v7 >= v6)
  {
    v10 = *v5[1].__m_.__opaque;
    v11 = v7 - v10;
    v12 = (v7 - v10) >> 3;
    v13 = v12 + 1;
    if ((v12 + 1) >> 61)
    {
      std::vector<std::unique_ptr<mlir::PassInstrumentation>>::__throw_length_error[abi:nn200100]();
    }

    v14 = v6 - v10;
    if (v14 >> 2 > v13)
    {
      v13 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (!(v15 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v16 = v12;
    v17 = (8 * v12);
    v18 = *a2;
    *a2 = 0;
    v19 = &v17[-v16];
    *v17 = v18;
    v9 = v17 + 1;
    memcpy(v19, v10, v11);
    *v5[1].__m_.__opaque = v19;
    *&v5[1].__m_.__opaque[8] = v9;
    *&v5[1].__m_.__opaque[16] = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    v8 = *a2;
    *a2 = 0;
    *v7 = v8;
    v9 = v7 + 8;
  }

  *&v5[1].__m_.__opaque[8] = v9;

  std::recursive_mutex::unlock(v4);
}

uint64_t mlir::AnalysisManager::nestImmediate(mlir::AnalysisManager *this, mlir::Operation *a2)
{
  v5 = a2;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::try_emplace<>(*this, &v5, &v3);
  if (v4 == 1)
  {
    operator new();
  }

  return *(v3 + 8);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::try_emplace<>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::LookupBucketFor<mlir::Operation *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::InsertIntoBucketImpl<mlir::Operation *>(a1, a2, v10);
    v7 = result;
    *result = *a2;
    *(result + 8) = 0;
    v8 = 1;
  }

  v9 = *a1 + 16 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  return result;
}

void mlir::detail::NestedAnalysisMap::invalidate(uint64_t a1, llvm::SmallPtrSetImplBase *a2)
{
  v34[7] = *MEMORY[0x277D85DE8];
  v4 = mlir::detail::TypeIDResolver<mlir::detail::PreservedAnalyses::AllAnalysesType,void>::resolveTypeID();
  if (llvm::SmallPtrSetImplBase::contains_imp(a2, v4))
  {
LABEL_48:
    v28 = *MEMORY[0x277D85DE8];
    return;
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v30, v34, a2);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = 16 * v6;
    v8 = *(a1 + 56);
    do
    {
      if ((*(**(v5 + 1) + 16))(*(v5 + 1), &v30))
      {
        v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::doFind<mlir::TypeID>((a1 + 32), v5);
        if (v9)
        {
          *v9 = -8192;
          *(a1 + 40) = vadd_s32(*(a1 + 40), 0x1FFFFFFFFLL);
        }
      }

      else
      {
        if (v5 != v8)
        {
          *v8 = *v5;
          v10 = *(v5 + 1);
          *(v5 + 1) = 0;
          v11 = *(v8 + 1);
          *(v8 + 1) = v10;
          if (v11)
          {
            (*(*v11 + 8))(v11);
          }

          v12 = *(a1 + 56);
          v29 = 0;
          v13 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::LookupBucketFor<mlir::TypeID>((a1 + 32), v8, &v29);
          v14 = v29;
          if ((v13 & 1) == 0)
          {
            v14 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::InsertIntoBucketImpl<mlir::TypeID>(a1 + 32, v8, v29);
            *v14 = *v8;
            *(v14 + 2) = 0;
          }

          *(v14 + 2) = &v8[-v12] >> 4;
        }

        v8 += 16;
      }

      v5 += 16;
      v7 -= 16;
    }

    while (v7);
    v5 = *(a1 + 56);
    v15 = *(a1 + 64);
  }

  else
  {
    v15 = 0;
    v8 = *(a1 + 56);
  }

  v16 = &v5[16 * v15];
  if (v16 != v8)
  {
    do
    {
      v17 = *(v16 - 1);
      *(v16 - 1) = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }

      v16 -= 16;
    }

    while (v16 != v8);
    v5 = *(a1 + 56);
  }

  *(a1 + 64) = (v8 - v5) >> 4;
  if ((v33 & 0x100000000) == 0)
  {
    free(v30);
  }

  if (*(a2 + 3) != *(a2 + 4))
  {
    v30 = &v33;
    v32 = 8;
    v33 = a1;
    v19 = 1;
    do
    {
      v20 = *(v30 + --v19);
      v31 = v19;
      if (*(v20 + 8))
      {
        v21 = *v20;
        v22 = *(v20 + 16);
        if (v22)
        {
          v23 = 16 * v22;
          v24 = v21;
          while ((*v24 | 0x1000) == 0xFFFFFFFFFFFFF000)
          {
            v24 += 2;
            v23 -= 16;
            if (!v23)
            {
              goto LABEL_45;
            }
          }
        }

        else
        {
          v24 = v21;
        }

        v25 = &v21[2 * v22];
        if (v24 != v25)
        {
LABEL_37:
          mlir::detail::NestedAnalysisMap::invalidate(v24[1], a2);
          v26 = v24[1];
          if (*(v26 + 8))
          {
            v27 = v31;
            if (v31 >= v32)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, &v33, v31 + 1, 8);
              v27 = v31;
            }

            *(v30 + v27) = v26;
            ++v31;
          }

          while (1)
          {
            v24 += 2;
            if (v24 == v25)
            {
              break;
            }

            if ((*v24 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              if (v24 != v25)
              {
                goto LABEL_37;
              }

              break;
            }
          }

          v19 = v31;
        }
      }

LABEL_45:
      ;
    }

    while (v19);
    if (v30 != &v33)
    {
      free(v30);
    }

    goto LABEL_48;
  }

  v18 = *MEMORY[0x277D85DE8];

  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::clear(a1);
}

unsigned int *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::clear(unsigned int *result)
{
  v1 = result;
  v2 = result[2];
  if (!v2 && !result[3])
  {
    return result;
  }

  v3 = result[4];
  if (v3 <= 4 * v2 || v3 < 0x41)
  {
    if (!v3)
    {
LABEL_24:
      v1[1] = 0;
      return result;
    }

    v10 = 16 * v3;
    v11 = (*result + 8);
    while (1)
    {
      v12 = *(v11 - 1);
      if (v12 == -8192)
      {
        goto LABEL_22;
      }

      if (v12 != -4096)
      {
        break;
      }

LABEL_23:
      v11 += 2;
      v10 -= 16;
      if (!v10)
      {
        goto LABEL_24;
      }
    }

    result = std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](v11, 0);
LABEL_22:
    *(v11 - 1) = -4096;
    goto LABEL_23;
  }

  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::destroyAll(result);
  if (!v2)
  {
    if (*(v1 + 4))
    {
      result = MEMORY[0x25F891030](*v1, 8);
      *v1 = 0;
      v1[1] = 0;
      *(v1 + 4) = 0;
      return result;
    }

    goto LABEL_24;
  }

  v4 = 1 << (33 - __clz(v2 - 1));
  if (v4 <= 64)
  {
    v5 = 64;
  }

  else
  {
    v5 = v4;
  }

  if (v5 == *(v1 + 4))
  {
    v6 = 0;
    v1[1] = 0;
    v7 = vdupq_n_s64((v5 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL);
    v8 = (*v1 + 16);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
      if (v9.i8[0])
      {
        *(v8 - 2) = -4096;
      }

      if (v9.i8[4])
      {
        *v8 = -4096;
      }

      v6 += 2;
      v8 += 4;
    }

    while (((v5 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL) - ((v5 - 1) & 1) + 2 != v6);
  }

  else
  {
    MEMORY[0x25F891030](*v1, 8);
    v13 = (4 * v5 / 3 + 1) | ((4 * v5 / 3 + 1) >> 1);
    v14 = v13 | (v13 >> 2) | ((v13 | (v13 >> 2)) >> 4);
    LODWORD(v14) = (((v14 | (v14 >> 8)) >> 16) | v14 | (v14 >> 8)) + 1;
    *(v1 + 4) = v14;
    result = llvm::allocate_buffer((16 * v14), 8uLL);
    *v1 = result;
    v1[1] = 0;
    v15 = *(v1 + 4);
    if (v15)
    {
      v16 = 0;
      v17 = v15 + 0xFFFFFFFFFFFFFFFLL;
      v18 = v17 & 0xFFFFFFFFFFFFFFFLL;
      v19 = (v17 & 0xFFFFFFFFFFFFFFFLL) - (v17 & 1) + 2;
      v20 = vdupq_n_s64(v18);
      v21 = result + 4;
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(vdupq_n_s64(v16), xmmword_25D0A0500)));
        if (v22.i8[0])
        {
          *(v21 - 2) = -4096;
        }

        if (v22.i8[4])
        {
          *v21 = -4096;
        }

        v16 += 2;
        v21 += 4;
      }

      while (v19 != v16);
    }
  }

  return result;
}

void mlir::PassInstrumentor::~PassInstrumentor(mlir::PassInstrumentor *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    v2 = (v1 + 72);
    std::vector<std::unique_ptr<mlir::PassInstrumentation>>::__destroy_vector::operator()[abi:nn200100](&v2);
    std::recursive_mutex::~recursive_mutex(v1);
    MEMORY[0x25F891040]();
  }
}

void mlir::PassInstrumentor::runBeforeAnalysis(std::recursive_mutex **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  std::recursive_mutex::lock(*a1);
  v11 = *a1;
  v12 = *(*a1)[1].__m_.__opaque;
  v13 = *&v11[1].__m_.__opaque[8];
  while (v12 != v13)
  {
    v14 = *v12++;
    (*(*v14 + 56))(v14, a2, a3, a4, a5);
  }

  std::recursive_mutex::unlock(v10);
}

void mlir::PassInstrumentor::runAfterAnalysis(std::recursive_mutex **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  std::recursive_mutex::lock(*a1);
  v12 = *(*a1)[1].__m_.__opaque;
  for (i = *&(*a1)[1].__m_.__opaque[8]; i != v12; i -= 8)
  {
    v13 = *(i - 8);
    (*(*v13 + 64))(v13, a2, a3, a4, a5);
  }

  std::recursive_mutex::unlock(v10);
}

void mlir::detail::OpToOpPassAdaptor::~OpToOpPassAdaptor(char **this)
{
  *this = &unk_286E847B8;
  llvm::SmallVector<llvm::SmallVector<mlir::OpPassManager,1u>,8u>::~SmallVector(this + 45);
  llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(this + 42);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_286E847B8;
  llvm::SmallVector<llvm::SmallVector<mlir::OpPassManager,1u>,8u>::~SmallVector(this + 45);
  llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(this + 42);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::PassWrapper<mlir::detail::OpToOpPassAdaptor,mlir::OperationPass<void>>::getName()
{
  {
    llvm::getTypeName<mlir::detail::OpToOpPassAdaptor>(void)::Name = llvm::detail::getTypeNameImpl<mlir::detail::OpToOpPassAdaptor>();
    *algn_27FC19498 = v1;
  }

  return llvm::getTypeName<mlir::detail::OpToOpPassAdaptor>(void)::Name;
}

llvm::raw_ostream *llvm::support::detail::provider_format_adapter<llvm::StringLiteral const&>::format(uint64_t a1, llvm::raw_ostream *a2, uint64_t a3, unint64_t *a4)
{
  v5 = *(a1 + 8);
  if (a4)
  {
    v11 = 0;
    v12 = a3;
    v13 = a4;
    v6 = llvm::consumeUnsignedInteger(&v12, 0xA, &v11, a4);
    if (v13)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    if (v7)
    {
      v8 = -1;
    }

    else
    {
      v8 = v11;
    }
  }

  else
  {
    v8 = -1;
  }

  if (*(v5 + 8) >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v5 + 8);
  }

  return llvm::raw_ostream::operator<<(a2, *v5, v9);
}

uint64_t mlir::detail::OpPassManagerImpl::OpPassManagerImpl(uint64_t a1, _BYTE *a2, const void *a3, int a4)
{
  v8[0] = a2;
  v8[1] = a3;
  if (a3 == 3 && (*a2 == 28257 ? (v6 = a2[2] == 121) : (v6 = 0), v6))
  {
    std::string::basic_string[abi:nn200100]<0>(a1, "");
  }

  else
  {
    llvm::StringRef::str(v8, a1);
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = a4;
  return a1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::detail::PreservedAnalyses::AllAnalysesType,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::detail::PreservedAnalyses::AllAnalysesType>();
      mlir::detail::TypeIDResolver<mlir::detail::PreservedAnalyses::AllAnalysesType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[149];
}

uint64_t llvm::getTypeName<mlir::detail::PreservedAnalyses::AllAnalysesType>()
{
  {
    llvm::getTypeName<mlir::detail::PreservedAnalyses::AllAnalysesType>(void)::Name = llvm::detail::getTypeNameImpl<mlir::detail::PreservedAnalyses::AllAnalysesType>();
    unk_27FC194C0 = v1;
  }

  return llvm::getTypeName<mlir::detail::PreservedAnalyses::AllAnalysesType>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::detail::PreservedAnalyses::AllAnalysesType>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::PreservedAnalyses::AllAnalysesType]";
  v6 = 110;
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

uint64_t mlir::detail::OpToOpPassAdaptor::tryMergeInto(mlir::MLIRContext *,mlir::detail::OpToOpPassAdaptor&)::$_2::__invoke(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 23);
  if ((v3 & 0x8000000000000000) == 0)
  {
    if (*(*a1 + 23))
    {
      goto LABEL_3;
    }

    return 1;
  }

  if (!v2[1])
  {
    return 1;
  }

LABEL_3:
  v4 = v2[1];
  if (v3 < 0)
  {
    v2 = *v2;
    v3 = v4;
  }

  v10[0] = v2;
  v10[1] = v3;
  v11 = 1;
  v5 = *a2;
  v6 = *(*a2 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    if (*(v5 + 8))
    {
      goto LABEL_7;
    }

    return 0xFFFFFFFFLL;
  }

  if (!*(*a2 + 23))
  {
    return 0xFFFFFFFFLL;
  }

LABEL_7:
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *a2;
  }

  else
  {
    v7 = *v5;
  }

  if ((v6 & 0x80000000) == 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(v5 + 8);
  }

  return llvm::StringRef::compare(v10, v7, v8);
}

char **llvm::SmallVector<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>,0u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = v2 - 8;
    v5 = 16 * v3;
    do
    {
      v6 = *&v4[v5];
      *&v4[v5] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v5 -= 16;
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

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::destroyAll(uint64_t *result)
{
  v1 = *(result + 4);
  if (v1)
  {
    v2 = 16 * v1;
    v3 = (*result + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        result = std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](v3, 0);
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }

  return result;
}

char **llvm::SmallVector<llvm::SmallVector<mlir::OpPassManager,1u>,8u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[24 * v3 - 24];
    do
    {
      v5 = llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(v5) - 3;
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

char **llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = -8 * v3;
    v5 = &v2[8 * v3 - 8];
    do
    {
      std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](v5--, 0);
      v4 += 8;
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<mlir::Pass>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<mlir::Pass>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 40);
    std::vector<std::unique_ptr<mlir::Pass>>::__destroy_vector::operator()[abi:nn200100](&v3);
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    return MEMORY[0x25F891040](v2, 0x1032C402C5CA452);
  }

  return result;
}

void std::vector<std::unique_ptr<mlir::Pass>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<mlir::Pass>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

std::string *mlir::detail::OpPassManagerImpl::OpPassManagerImpl(std::string *this, const mlir::detail::OpPassManagerImpl *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 24);
  this[1].__r_.__value_.__r.__words[2] = 0;
  *&this[1].__r_.__value_.__l.__data_ = v5;
  this[2].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  while (v6 != v7)
  {
    v8 = *v6 + 144;
    (*(**v6 + 80))(&v11);
    mlir::detail::PassOptions::copyOptionValuesFrom(v11 + 144, v8);
    *(v11 + 328) = *v6;
    std::vector<std::unique_ptr<mlir::Pass>>::push_back[abi:nn200100](&this[1].__r_.__value_.__r.__words[2], &v11);
    v9 = v11;
    v11 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v6 += 8;
  }

  return this;
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(mlir::OpPassManager &,mlir::Operation *)>::callback_fn<mlir::detail::OpToOpPassAdaptor::run(mlir::Pass *,mlir::Operation *,mlir::AnalysisManager,BOOL,unsigned int)::$_0>(uint64_t a1, mlir::detail::OpPassManagerImpl **a2, mlir::Operation *this)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = **a1;
  if (v6 != this)
  {
    v7 = this;
    while (1)
    {
      v8 = *(v7 + 2);
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
          goto LABEL_11;
        }

        break;
      }
    }

    v21[16] = 257;
    mlir::Operation::emitOpError(this, v21, &v22);
    if (v22)
    {
      mlir::Diagnostic::operator<<<123ul>(v23, "Trying to schedule a dynamic pipeline on an operation that isn't nested under the current operation the pass is processing");
    }

    v12 = (v23[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
    goto LABEL_19;
  }

LABEL_11:
  if (!mlir::detail::OpPassManagerImpl::finalizePassList(*a2, *(***(this + 3) + 32)) || !mlir::OpPassManager::initialize(a2, *(***(this + 3) + 32), **(a1 + 8)))
  {
    v12 = 0;
LABEL_19:
    v13 = *MEMORY[0x277D85DE8];
    return v12;
  }

  v11 = *(a1 + 16);
  if (**a1 == this)
  {
    v15 = *v11;
  }

  else
  {
    mlir::AnalysisManager::nest(v11, this);
  }

  v16 = **(a1 + 24);
  v17 = **(a1 + 8);
  v18 = **(a1 + 32);
  v19 = *(a1 + 40);
  v20 = *MEMORY[0x277D85DE8];

  return mlir::detail::OpToOpPassAdaptor::runPipeline(a2, this);
}

uint64_t mlir::Diagnostic::operator<<<123ul>(uint64_t a1, char *__s)
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

void mlir::MLIRContext::executeActionInternal<mlir::PassExecutionAction,mlir::Pass &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[1] = &mlir::PassExecutionAction::resolveTypeID(void)::id;
  v6[2] = a4;
  v6[3] = a5;
  v6[4] = a6;
  v6[0] = &unk_286E84780;
  std::function<void ()(llvm::function_ref<void ()(void)>,mlir::tracing::Action const&)>::operator()(a1, a2, a3, v6);
}

void llvm::function_ref<void ()(void)>::callback_fn<mlir::detail::OpToOpPassAdaptor::run(mlir::Pass *,mlir::Operation *,mlir::AnalysisManager,BOOL,unsigned int)::$_1>(uint64_t **a1)
{
  v1 = a1;
  v173[4] = *MEMORY[0x277D85DE8];
  v2 = **a1;
  v3 = *(v2 + 8);
  v4 = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
  if (v2)
  {
    v5 = v3 == v4;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    (*(***v1 + 56))(**v1);
    goto LABEL_174;
  }

  v145 = v1;
  v154 = *(***((*(v2 + 40) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
  v155 = v2;
  v6 = *v154;
  v7 = v2;
  if (*(*v154 + 41) != 1)
  {
    v13 = *(v2 + 48);
    v173[0] = v13;
    {
      v15 = *llvm::get_threadid(void)::Self();
    }

    else
    {
      llvm::get_threadid(void)::$_0::operator()();
      v141 = llvm::get_threadid(void)::Self();
      *v141 = v142;
    }

    v16 = v2;
    p_p = v15;
    v157 = v2;
    v17 = *(v13 + 72);
    v18 = v17 & 0xFFFFFFFFFFFFFFF8;
    if ((v17 & 4) == 0 && v18)
    {
      do
      {
        v19 = *(v18 + 72);
        v18 = v19 & 0xFFFFFFFFFFFFFFF8;
      }

      while ((v19 & 4) == 0 && v18);
    }

    v20 = *(v2 + 40) & 0xFFFFFFFFFFFFFFF8;
    v21 = *(v20 + 44);
    v22 = v21 & 0x7FFFFF;
    if ((v21 & 0x7FFFFF) != 0)
    {
      v23 = ((v20 + 16 * ((v21 >> 23) & 1) + ((v21 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v20 + 40);
      v149 = v23 + 24 * v22;
      do
      {
        v24 = *(v23 + 8);
        for (i = v23; v24 != i; v23 = i)
        {
          v25 = v24 - 8;
          if (!v24)
          {
            v25 = 0;
          }

          v26 = v25 + 32;
          v27 = *(v25 + 40);
          if (v27 != v25 + 32)
          {
            do
            {
              v28 = *(v16 + 336);
              v29 = *(v16 + 344);
              if (v29)
              {
                v30 = *(v27 + 48);
                v31 = *(***(v27 + 24) + 32);
                v32 = 8 * v29;
                v33 = *(v16 + 336);
                while ((mlir::detail::OpPassManagerImpl::canScheduleOn(*v33, v31, v30) & 1) == 0)
                {
                  ++v33;
                  v32 -= 8;
                  if (!v32)
                  {
                    goto LABEL_38;
                  }
                }
              }

              else
              {
                v33 = *(v16 + 336);
              }

              if (v33 != (v28 + 8 * v29) && v33 != 0)
              {
                v35 = *(*v33 + 16);
                mlir::AnalysisManager::nest(v173, v27);
                if ((mlir::detail::OpToOpPassAdaptor::runPipeline(v33, v27) & 1) == 0)
                {
                  *(v155 + 40) |= 4uLL;
                }
              }

LABEL_38:
              v27 = *(v27 + 8);
              v16 = v155;
            }

            while (v27 != v26);
          }

          v24 = *(v24 + 8);
        }

        v23 += 24;
      }

      while (v23 != v149);
    }

    v1 = v145;
    goto LABEL_174;
  }

  v169 = *v1[1];
  v8 = *(v2 + 48);
  v168 = v8;
  if (!*(v2 + 368))
  {
    goto LABEL_42;
  }

  v9 = *(v2 + 360);
  v10 = *(v9 + 2);
  if (v10 != *(v2 + 344))
  {
    goto LABEL_42;
  }

  if (v10)
  {
    v11 = *v9;
    v12 = *(v2 + 336);
    while (*(*v11 + 48) - *(*v11 + 40) == *(*v12 + 48) - *(*v12 + 40))
    {
      v12 += 8;
      v11 += 8;
      if (!--v10)
      {
        goto LABEL_72;
      }
    }

LABEL_42:
    v36 = (*(**(v6 + 48) + 40))(*(v6 + 48));
    v37 = v36;
    v38 = v36;
    if (*(v7 + 372) >= v36)
    {
      v47 = *(v7 + 368);
      if (v47 >= v36)
      {
        v48 = v36;
      }

      else
      {
        v48 = *(v7 + 368);
      }

      if (v48)
      {
        v49 = *(v7 + 360);
        do
        {
          v49 = llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(v49, v7 + 336) + 24;
          --v48;
        }

        while (v48);
        v47 = *(v7 + 368);
      }

      v50 = v47 - v38;
      if (v47 >= v38)
      {
        if (v47 > v38)
        {
          v53 = 3 * v47;
          v54 = 24 * v38 - 8 * v53;
          v55 = (*(v155 + 360) + 8 * v53 - 24);
          do
          {
            v55 = llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(v55) - 3;
            v54 += 24;
          }

          while (v54);
        }
      }

      else
      {
        v51 = (*(v155 + 360) + 24 * v47);
        do
        {
          *v51 = v51 + 2;
          v51[1] = 0x100000000;
          if (*(v155 + 344))
          {
            v51 = llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(v51, v155 + 336);
          }

          v51 += 3;
        }

        while (!__CFADD__(v50++, 1));
      }

      v7 = v155;
      *(v155 + 368) = v37;
    }

    else
    {
      p_p = 0;
      v39 = (v7 + 376);
      v40 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(v7 + 360, (v7 + 376), v36, 24, &p_p);
      v41 = v40;
      do
      {
        *v40 = v40 + 2;
        v40[1] = 0x100000000;
        if (*(v7 + 344))
        {
          v40 = llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(v40, v7 + 336);
        }

        v40 += 3;
        --v38;
      }

      while (v38);
      v42 = *(v7 + 360);
      v43 = *(v7 + 368);
      if (v43)
      {
        v44 = -24 * v43;
        v45 = &v42[24 * v43 - 24];
        do
        {
          v45 = llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(v45) - 3;
          v44 += 24;
        }

        while (v44);
        v42 = *(v7 + 360);
      }

      v46 = p_p;
      if (v42 != v39)
      {
        free(v42);
      }

      *(v155 + 360) = v41;
      *(v155 + 372) = v46;
      v7 = v155;
      *(v155 + 368) = v37;
    }
  }

LABEL_72:
  v56 = *(v7 + 40) & 0xFFFFFFFFFFFFFFF8;
  v57 = *(v56 + 44);
  if ((v57 & 0x7FFFFF) != 0)
  {
    v58 = 0;
    v150 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = (((v56 + 16 * ((v57 >> 23) & 1) + ((v57 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v56 + 40));
    v146 = &v63[3 * (v57 & 0x7FFFFF)];
    while (1)
    {
      v147 = v63;
      v152 = v59;
      if (*v63 != v63)
      {
        for (j = v63[1]; j != v63; j = j[1])
        {
          v65 = (j - 1);
          if (!j)
          {
            v65 = 0;
          }

          if (v65[4] != (v65 + 4))
          {
            break;
          }
        }

        if (j != v63)
        {
          v66 = j - 1;
          if (!j)
          {
            v66 = 0;
          }

          v67 = v66[5];
          p_p = v63;
          v157 = j;
          v158 = v67;
          if (v67)
          {
            break;
          }
        }
      }

LABEL_142:
      v63 = v147 + 3;
      v59 = v152;
      if (v147 + 3 == v146)
      {
        v8 = v168;
        goto LABEL_145;
      }
    }

    while (1)
    {
      v68 = *(v67 + 6);
      v167[0] = 0;
      v69 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::optional<unsigned int>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::optional<unsigned int>>>,mlir::OperationName,std::optional<unsigned int>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::optional<unsigned int>>>::LookupBucketFor<mlir::OperationName>(v60, v58, v68, v167);
      v70 = v167[0];
      if ((v69 & 1) == 0)
      {
        break;
      }

LABEL_102:
      if (*(v70 + 12) == 1)
      {
        v86 = mlir::AnalysisManager::nest(&v168, v67);
        v87 = v62;
        v88 = v60;
        v89 = v87 - v61;
        v90 = 0xAAAAAAAAAAAAAAABLL * ((v87 - v61) >> 3);
        v91 = v90 + 1;
        if (v90 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo,std::allocator<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo>>::__throw_length_error[abi:nn200100]();
        }

        v92 = v61;
        if (0x5555555555555556 * (-v61 >> 3) > v91)
        {
          v91 = 0x5555555555555556 * (-v61 >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v61 >> 3) >= 0x555555555555555)
        {
          v93 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v93 = v91;
        }

        if (v93)
        {
          if (v93 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v94 = 24 * v90;
        *v94 = v70[2];
        *(v94 + 8) = v67;
        *(v94 + 16) = v86;
        memcpy((24 * v90 + 24 * (v89 / -24)), v92, v89);
        if (v92)
        {
          operator delete(v92);
        }

        v61 = 24 * v90 + 24 * (v89 / -24);
        v60 = v88;
        v62 = 24 * v90 + 24;
        v7 = v155;
      }

      mlir::Region::OpIterator::operator++(&p_p);
      v67 = v158;
      if (!v158)
      {
        goto LABEL_142;
      }
    }

    __p = v167[0];
    v71 = v152;
    v72 = v150;
    if (4 * v152 + 4 >= (3 * v58))
    {
      v73 = 2 * v58;
    }

    else
    {
      v73 = v58;
      if (v58 - v150 + ~v152 > v58 >> 3)
      {
        v74 = v58;
        v75 = v60;
LABEL_89:
        v76 = *v70 != -4096;
        *v70 = v68;
        *(v70 + 8) = 0;
        *(v70 + 12) = 0;
        v77 = *(v7 + 336);
        v78 = *(v7 + 344);
        v150 = v72 - v76;
        v152 = v71 + 1;
        if (v78)
        {
          v79 = v75;
          v148 = v62;
          v80 = v74;
          v81 = v61;
          v82 = *(v67 + 6);
          v83 = 8 * v78;
          v84 = v77;
          while ((mlir::detail::OpPassManagerImpl::canScheduleOn(*v84, v154, v82) & 1) == 0)
          {
            ++v84;
            v83 -= 8;
            if (!v83)
            {
              v60 = v79;
              v58 = v80;
              v61 = v81;
              v7 = v155;
              v62 = v148;
              goto LABEL_102;
            }
          }

          v61 = v81;
          v74 = v80;
          v62 = v148;
          v75 = v79;
          v7 = v155;
        }

        else
        {
          v84 = *(v7 + 336);
        }

        if (v84 != &v77[v78] && v84)
        {
          v85 = *(v7 + 336);
          if ((v70[3] & 1) == 0)
          {
            *(v70 + 12) = 1;
          }

          v70[2] = (v84 - v85) >> 3;
        }

        v60 = v75;
        v58 = v74;
        goto LABEL_102;
      }
    }

    v95 = (v73 - 1) | ((v73 - 1) >> 1);
    v96 = v95 | (v95 >> 2) | ((v95 | (v95 >> 2)) >> 4);
    v97 = ((v96 | (v96 >> 8)) >> 16) | v96 | (v96 >> 8);
    if ((v97 + 1) > 0x40)
    {
      v74 = (v97 + 1);
    }

    else
    {
      v74 = 64;
    }

    buffer = llvm::allocate_buffer((16 * v74), 8uLL);
    v153 = buffer;
    if (v60)
    {
      v99 = 0;
      v100 = (v74 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL;
      v101 = v100 - ((v74 + 0xFFFFFFFFFFFFFFFLL) & 1) + 2;
      v102 = vdupq_n_s64(v100);
      v103 = buffer + 16;
      do
      {
        v104 = vmovn_s64(vcgeq_u64(v102, vorrq_s8(vdupq_n_s64(v99), xmmword_25D0A0500)));
        if (v104.i8[0])
        {
          *(v103 - 2) = -4096;
        }

        if (v104.i8[4])
        {
          *v103 = -4096;
        }

        v99 += 2;
        v103 += 4;
      }

      while (v101 != v99);
      v105 = 0;
      if (v58)
      {
        v106 = 16 * v58;
        v107 = v60;
        do
        {
          v108 = *v107;
          if ((*v107 | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            v173[0] = 0;
            v109 = v105;
            llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::optional<unsigned int>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::optional<unsigned int>>>,mlir::OperationName,std::optional<unsigned int>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::optional<unsigned int>>>::LookupBucketFor<mlir::OperationName>(v153, v74, v108, v173);
            v110 = v173[0];
            *v173[0] = *v107;
            *(v110 + 8) = v107[1];
            v105 = v109 + 1;
          }

          v107 += 2;
          v106 -= 16;
        }

        while (v106);
      }

      v71 = v105;
      MEMORY[0x25F891030](v60, 8);
    }

    else
    {
      v111 = 0;
      v112 = (v74 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL;
      v113 = v112 - ((v74 + 0xFFFFFFFFFFFFFFFLL) & 1) + 2;
      v114 = vdupq_n_s64(v112);
      v115 = buffer + 16;
      do
      {
        v116 = vmovn_s64(vcgeq_u64(v114, vorrq_s8(vdupq_n_s64(v111), xmmword_25D0A0500)));
        if (v116.i8[0])
        {
          *(v115 - 2) = -4096;
        }

        if (v116.i8[4])
        {
          *v115 = -4096;
        }

        v111 += 2;
        v115 += 4;
      }

      while (v113 != v111);
      v71 = 0;
    }

    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::optional<unsigned int>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::optional<unsigned int>>>,mlir::OperationName,std::optional<unsigned int>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::optional<unsigned int>>>::LookupBucketFor<mlir::OperationName>(v153, v74, v68, &__p);
    v75 = v153;
    v72 = 0;
    v70 = __p;
    goto LABEL_89;
  }

  v60 = 0;
  v62 = 0;
  v61 = 0;
LABEL_145:
  {
    v118 = *llvm::get_threadid(void)::Self();
  }

  else
  {
    llvm::get_threadid(void)::$_0::operator()();
    v143 = llvm::get_threadid(void)::Self();
    *v143 = v144;
  }

  v167[0] = v118;
  v167[1] = v155;
  v119 = *(v8 + 72);
  v120 = v119 & 0xFFFFFFFFFFFFFFF8;
  if ((v119 & 4) == 0 && v120)
  {
    do
    {
      v121 = *(v120 + 72);
      v120 = v121 & 0xFFFFFFFFFFFFFFF8;
    }

    while ((v121 & 4) == 0 && v120);
  }

  v165 = 0;
  v166 = v120;
  v122 = *(v155 + 368);
  __p = 0;
  v164 = 0;
  if (v122)
  {
    operator new();
  }

  v162 = 0;
  p_p = &__p;
  v157 = v155;
  v158 = &v169;
  v159 = &v166;
  v160 = v167;
  v161 = &v162;
  p_p_p = &p_p;
  v172 = v61;
  v123 = v62;
  v124 = -1431655765 * ((v62 - v61) >> 3);
  v171 = v124;
  if (v124)
  {
    if (v124 != 1 && (*(*v154 + 41) & 1) != 0)
    {
      operator new();
    }

    if (v61 != v123)
    {
      v125 = v61;
      do
      {
        v126 = p_p_p;
        v127 = p_p_p[1];
        v128 = **p_p_p;
        v129 = (*p_p_p)[1];
        if (v128 == v129)
        {
          v131 = **p_p_p;
        }

        else
        {
          while (1)
          {
            v130 = 0;
            atomic_compare_exchange_strong(v128, &v130, 1u);
            if (!v130)
            {
              break;
            }

            if (++v128 == v129)
            {
              LODWORD(v128) = v129;
              break;
            }
          }

          LODWORD(v131) = v128;
          v128 = **v126;
        }

        v132 = (v131 - v128);
        v133 = *(v127[45] + 3 * v132) + 8 * *v125;
        v134 = *(v125 + 2);
        v135 = *v126[2];
        v136 = *(*v133 + 64);
        v137 = *v126[3];
        v138 = v126[4];
        if ((mlir::detail::OpToOpPassAdaptor::runPipeline(v133, *(v125 + 1)) & 1) == 0)
        {
          atomic_store(1u, v126[5]);
        }

        atomic_store(0, **v126 + v132);
        v125 = v172 + 6;
        v172 = v125;
      }

      while (v125 != v123);
    }
  }

  v139 = atomic_load(&v162);
  if (v139)
  {
    *(v155 + 40) |= 4uLL;
  }

  v1 = v145;
  if (__p)
  {
    v164 = __p;
    operator delete(__p);
  }

  MEMORY[0x25F891030](v60, 8);
  if (v61)
  {
    operator delete(v61);
  }

LABEL_174:
  *v1[2] = (*(**v1 + 40) & 4) != 0;
  v140 = *MEMORY[0x277D85DE8];
}

unsigned int *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::clear(unsigned int *result)
{
  if (*(result + 1))
  {
    v1 = result[4];
    if (v1 <= 4 * result[2] || v1 < 0x41)
    {
      if (v1)
      {
        v2 = 0;
        v3 = v1 + 0xFFFFFFFFFFFFFFFLL;
        v4 = v3 & 0xFFFFFFFFFFFFFFFLL;
        v5 = (v3 & 0xFFFFFFFFFFFFFFFLL) - (v3 & 1) + 2;
        v6 = vdupq_n_s64(v4);
        v7 = (*result + 16);
        do
        {
          v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(vdupq_n_s64(v2), xmmword_25D0A0500)));
          if (v8.i8[0])
          {
            *(v7 - 2) = -4096;
          }

          if (v8.i8[4])
          {
            *v7 = -4096;
          }

          v2 += 2;
          v7 += 4;
        }

        while (v5 != v2);
      }

      *(result + 1) = 0;
    }

    else
    {
      return llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::shrink_and_clear(result);
    }
  }

  return result;
}

unsigned int *llvm::SmallVectorImpl<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>>::clear(unsigned int *result)
{
  v1 = result;
  v2 = result[2];
  if (v2)
  {
    v3 = *result - 8;
    v4 = 16 * v2;
    do
    {
      result = *(v3 + v4);
      *(v3 + v4) = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      v4 -= 16;
    }

    while (v4);
  }

  v1[2] = 0;
  return result;
}

unsigned int *llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::shrink_and_clear(unsigned int *result)
{
  v1 = result;
  v2 = result[4];
  v3 = result[2];
  v4 = 1 << (33 - __clz(v3 - 1));
  if (v4 <= 64)
  {
    v4 = 64;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v2)
  {
    *(result + 1) = 0;
    if (v2)
    {
      v6 = 0;
      v7 = v2 + 0xFFFFFFFFFFFFFFFLL;
      v8 = v7 & 0xFFFFFFFFFFFFFFFLL;
      v9 = (v7 & 0xFFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = (*result + 16);
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
        if (v12.i8[0])
        {
          *(v11 - 2) = -4096;
        }

        if (v12.i8[4])
        {
          *v11 = -4096;
        }

        v6 += 2;
        v11 += 4;
      }

      while (v9 != v6);
    }
  }

  else
  {
    result = MEMORY[0x25F891030](*result, 8);
    if (v5)
    {
      v13 = (4 * v5 / 3u + 1) | ((4 * v5 / 3u + 1) >> 1);
      v14 = v13 | (v13 >> 2) | ((v13 | (v13 >> 2)) >> 4);
      LODWORD(v14) = (((v14 | (v14 >> 8)) >> 16) | v14 | (v14 >> 8)) + 1;
      v1[4] = v14;
      result = llvm::allocate_buffer((16 * v14), 8uLL);
      *v1 = result;
      *(v1 + 1) = 0;
      v15 = v1[4];
      if (v15)
      {
        v16 = 0;
        v17 = v15 + 0xFFFFFFFFFFFFFFFLL;
        v18 = v17 & 0xFFFFFFFFFFFFFFFLL;
        v19 = (v17 & 0xFFFFFFFFFFFFFFFLL) - (v17 & 1) + 2;
        v20 = vdupq_n_s64(v18);
        v21 = result + 4;
        do
        {
          v22 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(vdupq_n_s64(v16), xmmword_25D0A0500)));
          if (v22.i8[0])
          {
            *(v21 - 2) = -4096;
          }

          if (v22.i8[4])
          {
            *v21 = -4096;
          }

          v16 += 2;
          v21 += 4;
        }

        while (v19 != v16);
      }
    }

    else
    {
      *v1 = 0;
      *(v1 + 1) = 0;
      v1[4] = 0;
    }
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::growAndEmplaceBack<mlir::OpPassManager>(uint64_t a1, uint64_t *a2)
{
  v11 = 0;
  v4 = a1 + 16;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v11);
  v6 = &v5[*(a1 + 8)];
  *v6 = 0;
  v7 = *a2;
  *a2 = 0;
  std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](v6, v7);
  llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::moveElementsForGrow(a1, v5);
  v8 = v11;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  v9 = *(a1 + 8) + 1;
  *(a1 + 8) = v9;
  *(a1 + 12) = v8;
  return &v5[v9 - 1];
}

uint64_t *llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::moveElementsForGrow(uint64_t *result, uint64_t *a2)
{
  v2 = *(result + 2);
  if (v2)
  {
    v3 = a2;
    v4 = result;
    v5 = *result;
    v6 = 8 * v2;
    v7 = a2;
    do
    {
      *v7++ = 0;
      v8 = *v5;
      *v5++ = 0;
      result = std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](v3, v8);
      v3 = v7;
      v6 -= 8;
    }

    while (v6);
    v9 = *(v4 + 2);
    if (v9)
    {
      v10 = -8 * v9;
      v11 = (*v4 + 8 * v9 - 8);
      do
      {
        result = std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](v11--, 0);
        v10 += 8;
      }

      while (v10);
    }
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        mlir::OpPassManager::operator=(*a1, *a2);
      }

      v11 = *a1;
      for (i = (*a1 + 8 * v5); i != v11; std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](i, 0))
      {
        --i;
      }
    }

    else
    {
      if (*(a1 + 12) >= v4)
      {
        if (v5)
        {
          mlir::OpPassManager::operator=(*a1, *a2);
        }
      }

      else
      {
        if (v5)
        {
          v6 = -8 * v5;
          v7 = (*a1 + 8 * v5 - 8);
          do
          {
            std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](v7--, 0);
            v6 += 8;
          }

          while (v6);
        }

        *(a1 + 8) = 0;
        llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::grow(a1, v4);
      }

      if (*(a2 + 8))
      {
        v8 = *a1;
        v9 = *a2;
        **a1 = 0;
        mlir::OpPassManager::operator=(v8, v9);
      }
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v6);
  llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::optional<unsigned int>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::optional<unsigned int>>>,mlir::OperationName,std::optional<unsigned int>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::optional<unsigned int>>>::LookupBucketFor<mlir::OperationName>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

__n128 std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,void mlir::parallelForEach<std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0>(mlir::MLIRContext *,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &&)::{lambda(std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>&&)#1}>(mlir::MLIRContext *,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &)::{lambda(void)#1},std::allocator<llvm>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E848F8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,void mlir::parallelForEach<std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0>(mlir::MLIRContext *,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &&)::{lambda(std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>&&)#1}>(mlir::MLIRContext *,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &)::{lambda(void)#1},std::allocator<llvm>,void ()(void)>::operator()(uint64_t a1)
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
      v4 = **(a1 + 48);
      v5 = **(a1 + 40);
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

      v11 = 24 * add;
      v12 = (v10 - v7);
      v13 = (*&v6[45][24 * v12] + 8 * *(v4 + v11));
      if ((mlir::detail::OpToOpPassAdaptor::runPipeline(v13, *(v4 + v11 + 8), *(v4 + v11 + 16), *v5[2], *(*v13 + 16), *v5[3], v5[4]) & 1) == 0)
      {
        atomic_store(1u, v5[5]);
      }

      atomic_store(0, &(**v5)[v12]);
      mlir::detail::ParallelDiagnosticHandlerImpl::eraseOrderIDForThread(**(a1 + 32));
      v14 = atomic_load(*(a1 + 8));
    }

    while ((v14 & 1) == 0);
  }
}

mlir::PassInstrumentor *std::unique_ptr<mlir::PassInstrumentor>::reset[abi:nn200100](mlir::PassInstrumentor **a1, mlir::PassInstrumentor *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    mlir::PassInstrumentor::~PassInstrumentor(result);

    JUMPOUT(0x25F891040);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::LookupBucketFor<mlir::Operation *>(uint64_t *a1, void *a2, void *a3)
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::InsertIntoBucketImpl<mlir::Operation *>(uint64_t a1, void *a2, void *a3)
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

  llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::LookupBucketFor<mlir::Operation *>(a1, a2, &v8);
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

char *llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::grow(uint64_t a1, int a2)
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
      v18 = (v4 + 8);
      v19 = 16 * v3;
      do
      {
        if ((*(v18 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::LookupBucketFor<mlir::Operation *>(a1, v18 - 1, &v30);
          *v30 = *(v18 - 1);
          v20 = v30;
          v21 = *v18;
          *v18 = 0;
          v20[1] = v21;
          ++*(a1 + 8);
          std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](v18, 0);
        }

        v18 += 2;
        v19 -= 16;
      }

      while (v19);
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

uint64_t *std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    llvm::SmallVector<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>,0u>::~SmallVector((v2 + 56));
    MEMORY[0x25F891030](*(v2 + 32), 8);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::destroyAll(v2);
    MEMORY[0x25F891030](*v2, 8);

    JUMPOUT(0x25F891040);
  }

  return result;
}

void std::vector<std::unique_ptr<mlir::PassInstrumentation>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<mlir::PassInstrumentation>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<mlir::PassInstrumentation>>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t mlir::detail::RecoveryReproducerContext::RecoveryReproducerContext(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 24) = mlir::Operation::clone(a3, 3);
  *(a1 + 32) = a4;
  *(a1 + 40) = *(**(***(a3 + 24) + 32) + 41) ^ 1;
  *(a1 + 41) = a5;
  mlir::detail::RecoveryReproducerContext::enable(a1);
  return a1;
}

void mlir::detail::RecoveryReproducerContext::enable(mlir::detail::RecoveryReproducerContext *this)
{
  if (!atomic_load_explicit(qword_27FC1EE10, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27FC1EE10, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

  v2 = qword_27FC1EE10[0];
  std::recursive_mutex::lock(qword_27FC1EE10[0]);
  if (!atomic_load_explicit(&qword_27FC1EE28, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27FC1EE28, llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call, llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call);
  }

  if (!*(qword_27FC1EE28 + 32))
  {
    llvm::CrashRecoveryContext::Enable(v3);
  }

  if ((atomic_load_explicit(&_MergedGlobals_25, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_25))
  {
    llvm::sys::AddSignalHandler(mlir::detail::RecoveryReproducerContext::crashHandler, 0, v12);
    __cxa_guard_release(&_MergedGlobals_25);
  }

  if (!atomic_load_explicit(&qword_27FC1EE28, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27FC1EE28, llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call, llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call);
  }

  v4 = qword_27FC1EE28;
  v13 = this;
  if (*(qword_27FC1EE28 + 8))
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>,mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v14, qword_27FC1EE28, &v13);
    if (v14[16] == 1)
    {
      llvm::SmallVectorTemplateBase<mlir::detail::RecoveryReproducerContext *,true>::push_back(v4 + 24, this);
    }
  }

  else
  {
    v5 = (qword_27FC1EE28 + 24);
    v6 = *(qword_27FC1EE28 + 32);
    if (v6)
    {
      v7 = 8 * v6;
      v8 = *(qword_27FC1EE28 + 24);
      while (*v8 != this)
      {
        ++v8;
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v8 = *(qword_27FC1EE28 + 24);
    }

    if (v8 == (*(qword_27FC1EE28 + 24) + 8 * v6))
    {
LABEL_20:
      llvm::SmallVectorTemplateBase<mlir::detail::RecoveryReproducerContext *,true>::push_back(qword_27FC1EE28 + 24, this);
      v9 = *(v4 + 32);
      if (v9 >= 2)
      {
        v10 = *v5;
        v11 = 8 * v9;
        do
        {
          llvm::DenseMapBase<llvm::DenseMap<mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>,mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v14, v4, v10++);
          v11 -= 8;
        }

        while (v11);
      }
    }
  }

  std::recursive_mutex::unlock(v2);
}

void mlir::detail::RecoveryReproducerContext::~RecoveryReproducerContext(mlir::detail::RecoveryReproducerContext *this)
{
  v2 = *(this + 3);
  if (*(v2 + 2))
  {
    *(v2 + 2) = 0;
    v4 = *v2;
    v3 = *(v2 + 1);
    *v3 = *v2;
    *(v4 + 8) = v3;
    *v2 = 0;
    *(v2 + 1) = 0;
  }

  mlir::Operation::destroy(v2);
  mlir::detail::RecoveryReproducerContext::disable(this);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void mlir::detail::RecoveryReproducerContext::disable(mlir::detail::RecoveryReproducerContext *this)
{
  if (!atomic_load_explicit(qword_27FC1EE10, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27FC1EE10, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

  v2 = qword_27FC1EE10[0];
  std::recursive_mutex::lock(qword_27FC1EE10[0]);
  if (!atomic_load_explicit(&qword_27FC1EE28, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27FC1EE28, llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call, llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call);
  }

  v4 = qword_27FC1EE28;
  v5 = *(qword_27FC1EE28 + 8);
  if (v5)
  {
    v6 = *(qword_27FC1EE28 + 16);
    if (!v6)
    {
      goto LABEL_25;
    }

    v7 = *qword_27FC1EE28;
    v8 = v6 - 1;
    v9 = (v6 - 1) & ((this >> 4) ^ (this >> 9));
    v10 = *(*qword_27FC1EE28 + 8 * v9);
    if (v10 == this)
    {
LABEL_8:
      *(v7 + 8 * v9) = -8192;
      v11 = v5 - 1;
      v14 = *(v4 + 32);
      v13 = (v4 + 32);
      v12 = v14;
      v15 = *(v13 - 5) + 1;
      *(v13 - 6) = v11;
      *(v13 - 5) = v15;
      v3 = *(v13 - 1);
      v16 = &v3[v14];
      if (v14)
      {
        v17 = 8 * v12;
        while (*v3 != this)
        {
          ++v3;
          v17 -= 8;
          if (!v17)
          {
            v3 = v16;
            break;
          }
        }
      }

      v18 = v3 + 1;
      v19 = v16 - (v3 + 1);
      if (v16 == v3 + 1)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v22 = 1;
    while (v10 != -4096)
    {
      v23 = v9 + v22++;
      v9 = v23 & v8;
      v10 = *(v7 + 8 * v9);
      if (v10 == this)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v13 = (qword_27FC1EE28 + 32);
    v12 = *(qword_27FC1EE28 + 32);
    if (*(qword_27FC1EE28 + 32))
    {
      v20 = 8 * v12;
      v3 = *(qword_27FC1EE28 + 24);
      while (*v3 != this)
      {
        ++v3;
        v20 -= 8;
        if (!v20)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v3 = *(qword_27FC1EE28 + 24);
    }

    v21 = *(qword_27FC1EE28 + 24) + 8 * v12;
    if (v3 != v21)
    {
      v18 = v3 + 1;
      v19 = v21 - (v3 + 1);
      if (v21 == v3 + 1)
      {
LABEL_24:
        *v13 = v12 - 1;
        goto LABEL_25;
      }

LABEL_23:
      v3 = memmove(v3, v18, v19);
      LODWORD(v12) = *v13;
      goto LABEL_24;
    }
  }

LABEL_25:
  if (!atomic_load_explicit(&qword_27FC1EE28, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27FC1EE28, llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call, llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call);
  }

  if (!*(qword_27FC1EE28 + 32))
  {
    llvm::CrashRecoveryContext::Disable(v3);
  }

  std::recursive_mutex::unlock(v2);
}

void appendReproducer(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v46 = a5;
  v45 = a6;
  v38 = 0;
  v42 = 0;
  v43 = 1;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v37 = &unk_286E79D28;
  v44 = a1;
  llvm::raw_ostream::SetUnbuffered(&v37);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v9 = *(a3 + 24);
  if (v9)
  {
    (*(*v9 + 48))(&v33);
    v10 = v33;
    v11 = v40 - v41;
    if (v33)
    {
      if (v11 > 0x18)
      {
        v41 += 25;
        v12 = &v37;
      }

      else
      {
        v10 = v33;
      }

      v14 = (*(*v10 + 16))(v10);
      v16 = llvm::raw_ostream::operator<<(v12, v14, v15);
      v17 = *(v16 + 4);
      if (*(v16 + 3) == v17)
      {
      }

      else
      {
        *v17 = 96;
        ++*(v16 + 4);
      }

      v18 = *(*(a2 + 6) + 8);
      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      v29 = 773;
      v28[0] = v20;
      v28[1] = v19;
      v28[2] = "(";
      v30[0] = v28;
      v30[2] = a4;
      v31 = 1026;
      v26[0] = v30;
      v26[2] = ")";
      v27 = 770;
      llvm::Twine::str(v26, &__p);
      mlir::OpPrintingFlags::OpPrintingFlags(v26);
      mlir::AsmState::AsmState(v30, a2, v26);
    }

    if (v11 > 0x1F)
    {
      qmemcpy(v41, "failed to create output stream: ", 32);
      v41 += 32;
      v13 = &v37;
    }

    else
    {
      v13 = llvm::raw_ostream::write(&v37, "failed to create output stream: ", 0x20uLL);
    }

    if (v36 >= 0)
    {
      v21 = &v34;
    }

    else
    {
      v21 = v34;
    }

    if (v36 >= 0)
    {
      v22 = HIBYTE(v36);
    }

    else
    {
      v22 = v35;
    }

    llvm::raw_ostream::write(v13, v21, v22);
    v23 = v33;
    v33 = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(v34);
    }

    llvm::raw_ostream::~raw_ostream(&v37);
  }

  else
  {
    v24 = std::__throw_bad_function_call[abi:nn200100]();
    mlir::detail::RecoveryReproducerContext::crashHandler(v24, v25);
  }
}

void mlir::detail::RecoveryReproducerContext::crashHandler(mlir::detail::RecoveryReproducerContext *this, void *a2)
{
  v13[25] = *MEMORY[0x277D85DE8];
  if (!atomic_load_explicit(&qword_27FC1EE28, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27FC1EE28, llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call, llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call);
  }

  v2 = *(qword_27FC1EE28 + 32);
  if (v2)
  {
    v3 = *(qword_27FC1EE28 + 24);
    v4 = 8 * v2;
    do
    {
      v5 = *v3;
      __p[0] = 0;
      __p[1] = 0;
      v9 = 0;
      appendReproducer(__p, *(v5 + 24), *(v5 + 32), v5, *(v5 + 40), *(v5 + 41));
      v6 = *(*(v5 + 24) + 24);
      v11 = 257;
      emitDiag(v6, 2, v10, &v12);
      if (v12)
      {
        mlir::Diagnostic::operator<<<54ul>(v13, "A signal was caught while processing the MLIR module:");
        if (v12)
        {
          v11 = 260;
          v10[0] = __p;
          mlir::Diagnostic::operator<<(v13, v10);
          if (v12)
          {
            mlir::Diagnostic::operator<<<25ul>(v13, "; marking pass as failed");
          }
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
      if (SHIBYTE(v9) < 0)
      {
        operator delete(__p[0]);
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void mlir::detail::PassCrashReproducerGenerator::~PassCrashReproducerGenerator(mlir::detail::PassCrashReproducerGenerator *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    v2 = *(v1 + 128);
    if (v2 != (v1 + 144))
    {
      free(v2);
    }

    MEMORY[0x25F891030](*(v1 + 104), 8);
    llvm::SmallVector<std::unique_ptr<mlir::detail::RecoveryReproducerContext>,6u>::~SmallVector((v1 + 40));
    v3 = std::__function::__value_func<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)>::~__value_func[abi:nn200100](v1);
    MEMORY[0x25F891040](v3, 0x10A0C40A8F89FB5);
  }
}

mlir::detail::RecoveryReproducerContext **mlir::detail::PassCrashReproducerGenerator::finalize(mlir::detail::RecoveryReproducerContext **result, uint64_t a2, char a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *result;
  v4 = *(*result + 12);
  if (v4)
  {
    if ((a3 & 1) == 0)
    {
      v6 = result;
      v7 = *(a2 + 24);
      v18 = 257;
      emitDiag(v7, 2, v16, &v14);
      if (v14)
      {
        mlir::Diagnostic::operator<<<67ul>(v15, "Failures have been detected while processing an MLIR pass pipeline");
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(v16, &v14);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
      v8 = *v6;
      if (*(*v6 + 32))
      {
        v9 = *(*(v8 + 5) + 8 * *(v8 + 12) - 8);
        __p = 0;
        v12 = 0;
        v13 = 0;
        appendReproducer(&__p, *(v9 + 24), *(v9 + 32), v9, *(v9 + 40), *(v9 + 41));
        mlir::Diagnostic::attachNote(v17, 0, 0);
      }

      __p = 0;
      v12 = 0;
      v13 = 0;
      appendReproducer(&__p, *(**(v8 + 5) + 24), *(**(v8 + 5) + 32), **(v8 + 5), *(**(v8 + 5) + 40), *(**(v8 + 5) + 41));
      mlir::Diagnostic::attachNote(v17, 0, 0);
    }

    v5 = -8 * v4;
    result = (*(v3 + 5) + 8 * v4 - 8);
    do
    {
      result = std::unique_ptr<mlir::detail::RecoveryReproducerContext>::~unique_ptr[abi:nn200100](result) - 1;
      v5 += 8;
    }

    while (v5);
    *(v3 + 12) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t formatPassOpReproducerMessage(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = (*(*a2 + 16))(a2);
  v24 = 261;
  v22 = v7;
  v23 = v8;
  v9 = mlir::Diagnostic::operator<<(v6, &v22);
  v11 = mlir::Diagnostic::operator<<<2ul>(v10, "'");
  v12 = mlir::Diagnostic::operator<<(v11, a3[6]);
  mlir::Diagnostic::operator<<<12ul>(v12, "' operation");
  result = llvm::DefaultDoCastIfPossible<mlir::SymbolOpInterface,mlir::Operation *,llvm::CastInfo<mlir::SymbolOpInterface,mlir::Operation *,void>>::doCastIfPossible(a3, v13);
  if (result)
  {
    v16 = result;
    v17 = v15;
    v18 = mlir::Diagnostic::operator<<<4ul>(a1, ": @");
    v19 = (*v17)(v17, v16);
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    v24 = 261;
    v22 = v20;
    v23 = v21;
    return mlir::Diagnostic::operator<<(v18, &v22);
  }

  return result;
}

mlir::detail::RecoveryReproducerContext **std::unique_ptr<mlir::detail::RecoveryReproducerContext>::~unique_ptr[abi:nn200100](mlir::detail::RecoveryReproducerContext **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    mlir::detail::RecoveryReproducerContext::~RecoveryReproducerContext(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

void mlir::PassManager::runWithCrashRecovery(llvm::CrashRecoveryContext *a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v17 = a3;
  v4 = *(a1 + 4);
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = (*(a1 + 56) >> 1) & 1;
  llvm::CrashRecoveryContext::Enable(a1);
  v8 = *v4;
  *(v8 + 144) = v7;
  if ((*(v8 + 32) & 1) == 0)
  {
    v27 = 0uLL;
    v28 = 0;
    LODWORD(v20) = 0;
    v24 = 0;
    v25 = 1;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    v19 = &unk_286E79D28;
    v26 = &v27;
    llvm::raw_ostream::SetUnbuffered(&v19);
    if (v5 != v6)
    {
      v10 = *v5;
      v9 = v5 + 1;
      mlir::Pass::printAsTextualPipeline(v10, &v19);
      while (v9 != v6)
      {
        if ((v22 - v23) > 1)
        {
          *v23++ = 8236;
        }

        else
        {
          llvm::raw_ostream::write(&v19, ", ", 2uLL);
        }

        v11 = *v9++;
        mlir::Pass::printAsTextualPipeline(v11, &v19);
      }
    }

    v12 = *v4;
    operator new();
  }

  v18 = 0;
  HIDWORD(v21) = 0;
  LOBYTE(v22) = 0;
  v19 = 0;
  v20 = 0;
  LOBYTE(v21) = 0;
  __p[0] = &v18;
  __p[1] = a1;
  v14 = &v16;
  v15 = &v17;
  llvm::CrashRecoveryContext::RunSafelyOnThread();
}

void makeReproducerStreamFactory(const void *a1, const void *a2)
{
  v4[0] = a1;
  v4[1] = a2;
  llvm::StringRef::str(v4, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v2, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v2 = __p;
  }

  operator new();
}

void mlir::PassManager::enableCrashReproducerGeneration(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if (*(**(a1 + 8) + 41) == 1)
    {
      llvm::report_fatal_error("Local crash reproduction can't be setup on a pass-manager without disabling multi-threading first.", 1);
    }
  }

  operator new();
}

uint64_t mlir::AsmResourcePrinter::fromCallable<appendReproducer(std::string &,mlir::Operation *,std::function<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)> const&,std::string const&,BOOL,BOOL)::$_0>(llvm::StringRef,appendReproducer(std::string &,mlir::Operation *,std::function<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)> const&,std::string const&,BOOL,BOOL)::$_0 &&)::Printer::~Printer(uint64_t a1)
{
  *a1 = &unk_286E77200;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void mlir::AsmResourcePrinter::fromCallable<appendReproducer(std::string &,mlir::Operation *,std::function<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)> const&,std::string const&,BOOL,BOOL)::$_0>(llvm::StringRef,appendReproducer(std::string &,mlir::Operation *,std::function<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)> const&,std::string const&,BOOL,BOOL)::$_0 &&)::Printer::~Printer(uint64_t a1)
{
  *a1 = &unk_286E77200;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x25F891040);
}

uint64_t mlir::AsmResourcePrinter::fromCallable<appendReproducer(std::string &,mlir::Operation *,std::function<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)> const&,std::string const&,BOOL,BOOL)::$_0>(llvm::StringRef,appendReproducer(std::string &,mlir::Operation *,std::function<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)> const&,std::string const&,BOOL,BOOL)::$_0 &&)::Printer::buildResources(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = v5[1];
  }

  (*(*a3 + 24))(a3, "pipeline", 8, v7, v8);
  (*(*a3 + 16))(a3, "disable_threading", 17, **(a1 + 40));
  v9 = **(a1 + 48);
  v10 = *(*a3 + 16);

  return v10(a3, "verify_each", 11, v9);
}

uint64_t std::__function::__func<makeReproducerStreamFactory(llvm::StringRef)::$_0,std::allocator<makeReproducerStreamFactory(llvm::StringRef)::$_0>,std::unique_ptr<mlir::ReproducerStream> ()(std::string &)>::~__func(uint64_t a1)
{
  *a1 = &unk_286E849D8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<makeReproducerStreamFactory(llvm::StringRef)::$_0,std::allocator<makeReproducerStreamFactory(llvm::StringRef)::$_0>,std::unique_ptr<mlir::ReproducerStream> ()(std::string &)>::~__func(uint64_t a1)
{
  *a1 = &unk_286E849D8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x25F891040);
}

void std::__function::__func<makeReproducerStreamFactory(llvm::StringRef)::$_0,std::allocator<makeReproducerStreamFactory(llvm::StringRef)::$_0>,std::unique_ptr<mlir::ReproducerStream> ()(std::string &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_286E849D8;
  v2 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v3 = *(a1 + 8);
    v2->__r_.__value_.__r.__words[2] = *(a1 + 24);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

void std::__function::__func<makeReproducerStreamFactory(llvm::StringRef)::$_0,std::allocator<makeReproducerStreamFactory(llvm::StringRef)::$_0>,std::unique_ptr<mlir::ReproducerStream> ()(std::string &)>::destroy(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void std::__function::__func<makeReproducerStreamFactory(llvm::StringRef)::$_0,std::allocator<makeReproducerStreamFactory(llvm::StringRef)::$_0>,std::unique_ptr<mlir::ReproducerStream> ()(std::string &)>::destroy_deallocate(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

void std::__function::__func<makeReproducerStreamFactory(llvm::StringRef)::$_0,std::allocator<makeReproducerStreamFactory(llvm::StringRef)::$_0>,std::unique_ptr<mlir::ReproducerStream> ()(std::string &)>::operator()(uint64_t a1)
{
  v3 = *(a1 + 8);
  v1 = a1 + 8;
  v2 = v3;
  v4 = *(v1 + 23);
  if (v4 >= 0)
  {
    v5 = v1;
  }

  else
  {
    v5 = v2;
  }

  if (v4 >= 0)
  {
    v6 = *(v1 + 23);
  }

  else
  {
    v6 = *(v1 + 8);
  }

  mlir::openOutputFile(v5, v6);
}

void anonymous namespace::FileReproducerStream::~FileReproducerStream(_anonymous_namespace_::FileReproducerStream *this)
{
  *this = &unk_286E84A20;
  *(*(this + 1) + 24) = 1;
  std::unique_ptr<llvm::ToolOutputFile>::~unique_ptr[abi:nn200100](this + 1);
}

{
  *this = &unk_286E84A20;
  *(*(this + 1) + 24) = 1;
  std::unique_ptr<llvm::ToolOutputFile>::~unique_ptr[abi:nn200100](this + 1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FileReproducerStream::description(_anonymous_namespace_::FileReproducerStream *this)
{
  v1 = *(this + 1);
  v2 = *(v1 + 23);
  if (v2 >= 0)
  {
    result = *(this + 1);
  }

  else
  {
    result = *v1;
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 23);
  }

  else
  {
    v4 = *(v1 + 8);
  }

  return result;
}

void llvm::SmallVectorTemplateBase<mlir::detail::RecoveryReproducerContext *,true>::push_back(uint64_t a1, uint64_t a2)
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>,mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>::try_emplace<llvm::detail::DenseSetEmpty&>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>,mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>::LookupBucketFor<mlir::detail::RecoveryReproducerContext *>(*a2, *(a2 + 16), *a3, &v12);
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
    llvm::DenseMap<mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>::grow(a2, v8);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>,mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>::LookupBucketFor<mlir::detail::RecoveryReproducerContext *>(*a2, *(a2 + 16), *a3, &v13);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>,mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>::LookupBucketFor<mlir::detail::RecoveryReproducerContext *>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

char *llvm::DenseMap<mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>::grow(uint64_t a1, int a2)
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
          llvm::DenseMapBase<llvm::DenseMap<mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>,mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>::LookupBucketFor<mlir::detail::RecoveryReproducerContext *>(*a1, *(a1 + 16), v20, &v29);
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

void *llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[3];
    if (v2 != v1 + 5)
    {
      free(v2);
    }

    MEMORY[0x25F891030](*v1, 8);

    JUMPOUT(0x25F891040);
  }

  return result;
}

uint64_t std::__function::__value_func<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

char **llvm::SmallVector<std::unique_ptr<mlir::detail::RecoveryReproducerContext>,6u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = -8 * v3;
    v5 = &v2[8 * v3 - 8];
    do
    {
      v5 = std::unique_ptr<mlir::detail::RecoveryReproducerContext>::~unique_ptr[abi:nn200100](v5) - 1;
      v4 += 8;
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

void llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>,std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::clear(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3 > 4 * v2 && v3 >= 0x41)
    {
      v4 = 1 << (33 - __clz(v2 - 1));
      if (v4 <= 64)
      {
        v5 = 64;
      }

      else
      {
        v5 = v4;
      }

      goto LABEL_10;
    }

LABEL_12:
    if (v3)
    {
      v8 = *a1;
      v9 = *a1 + 16 * v3;
      do
      {
        *v8 = -4096;
        v8[1] = -4096;
        v8 += 2;
      }

      while (v8 != v9);
    }

    *(a1 + 8) = 0;
    return;
  }

  if (!*(a1 + 12))
  {
    return;
  }

  v3 = *(a1 + 16);
  if (v3 <= 0x40)
  {
    goto LABEL_12;
  }

  v5 = 0;
LABEL_10:
  if (v5 == v3)
  {
    *(a1 + 8) = 0;
    buffer = *a1;
    v7 = 16 * v3;
LABEL_20:

    memset_pattern16(buffer, &unk_25D0A07E0, v7);
    return;
  }

  MEMORY[0x25F891030](*a1, 8);
  if (!v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    return;
  }

  v10 = (4 * v5 / 3u + 1) | ((4 * v5 / 3u + 1) >> 1);
  v11 = v10 | (v10 >> 2) | ((v10 | (v10 >> 2)) >> 4);
  LODWORD(v11) = (((v11 | (v11 >> 8)) >> 16) | v11 | (v11 >> 8)) + 1;
  *(a1 + 16) = v11;
  buffer = llvm::allocate_buffer((16 * v11), 8uLL);
  *a1 = buffer;
  *(a1 + 8) = 0;
  v12 = *(a1 + 16);
  if (v12)
  {
    v7 = 16 * v12;
    goto LABEL_20;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>,std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::LookupBucketFor<std::pair<mlir::Pass *,mlir::Operation *>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v5 = 0xBF58476D1CE4E5B9 * ((a4 >> 4) ^ (a4 >> 9) | (((a3 >> 4) ^ (a3 >> 9)) << 32));
    v6 = a2 - 1;
    v7 = (a2 - 1) & ((v5 >> 31) ^ v5);
    v8 = (a1 + 16 * v7);
    v9 = *v8;
    v10 = v8[1];
    if (*v8 == a3 && v10 == a4)
    {
      v12 = 1;
    }

    else
    {
      v14 = 0;
      v15 = 1;
      while (v9 != -4096 || v10 != -4096)
      {
        if (v14)
        {
          v16 = 0;
        }

        else
        {
          v16 = v10 == -8192;
        }

        if (v16 && v9 == -8192)
        {
          v14 = v8;
        }

        v18 = v7 + v15++;
        v7 = v18 & v6;
        v8 = (a1 + 16 * (v18 & v6));
        v9 = *v8;
        v10 = v8[1];
        v12 = 1;
        if (*v8 == a3 && v10 == a4)
        {
          goto LABEL_9;
        }
      }

      v12 = 0;
      if (v14)
      {
        v8 = v14;
      }
    }
  }

  else
  {
    v8 = 0;
    v12 = 0;
  }

LABEL_9:
  *a5 = v8;
  return v12;
}

void llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::grow(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      memset_pattern16(buffer, &unk_25D0A07E0, 16 * v10);
    }

    if (v3)
    {
      v11 = 16 * v3;
      v12 = (v4 + 8);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        if ((v13 != -4096 || v14 != -4096) && (v13 != -8192 || v14 != -8192))
        {
          v17 = 0;
          llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>,std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::LookupBucketFor<std::pair<mlir::Pass *,mlir::Operation *>>(*a1, *(a1 + 16), v13, v14, &v17);
          v15 = v17;
          *v17 = *(v12 - 1);
          v15[1] = *v12;
          ++*(a1 + 8);
        }

        v12 += 2;
        v11 -= 16;
      }

      while (v11);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v16 = *(a1 + 16);
  if (v16)
  {

    memset_pattern16(buffer, &unk_25D0A07E0, 16 * v16);
  }
}

unint64_t llvm::SmallVectorTemplateCommon<std::unique_ptr<mlir::detail::RecoveryReproducerContext>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::detail::RecoveryReproducerContext>,false>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    if (*a1 <= a2 && *a1 + 8 * v3 > a2)
    {
      v6 = a2 - *a1;
      llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::detail::RecoveryReproducerContext>,false>::grow(a1, v3 + 1);
      return *a1 + v6;
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::detail::RecoveryReproducerContext>,false>::grow(a1, v3 + 1);
    }
  }

  return v2;
}

void llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::detail::RecoveryReproducerContext>,false>::grow(uint64_t a1, unint64_t a2)
{
  v14 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v14);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = 8 * v6;
    v8 = v4;
    v9 = *a1;
    do
    {
      v10 = *v9;
      *v9++ = 0;
      *v8++ = v10;
      v7 -= 8;
    }

    while (v7);
    v11 = -8 * v6;
    v12 = &v5[v6 - 1];
    do
    {
      v12 = std::unique_ptr<mlir::detail::RecoveryReproducerContext>::~unique_ptr[abi:nn200100](v12) - 1;
      v11 += 8;
    }

    while (v11);
    v5 = *a1;
  }

  v13 = v14;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v13;
}

uint64_t llvm::function_ref<void ()(void)>::callback_fn<mlir::PassManager::runWithCrashRecovery(mlir::Operation *,mlir::AnalysisManager)::$_0>(uint64_t a1)
{
  result = mlir::detail::OpToOpPassAdaptor::runPipeline(*(a1 + 8), **(a1 + 16), **(a1 + 24), (*(*(a1 + 8) + 56) & 2) != 0, *(**(a1 + 8) + 64), 0, 0);
  **a1 = result;
  return result;
}

mlir::detail::PassCrashReproducerGenerator *std::unique_ptr<mlir::detail::PassCrashReproducerGenerator>::reset[abi:nn200100](mlir::detail::PassCrashReproducerGenerator **a1, mlir::detail::PassCrashReproducerGenerator *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    mlir::detail::PassCrashReproducerGenerator::~PassCrashReproducerGenerator(result);

    JUMPOUT(0x25F891040);
  }

  return result;
}

void anonymous namespace::CrashReproducerInstrumentation::runBeforePass(_anonymous_namespace_::CrashReproducerInstrumentation *this, mlir::Pass *a2, mlir::Operation *a3)
{
  v38[6] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 1);
  if (v6 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID())
  {
    goto LABEL_30;
  }

  v7 = *(this + 1);
  v8 = *v7;
  v10 = (*v7 + 104);
  v9 = *v10;
  v26 = 0;
  if ((llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>,std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::LookupBucketFor<std::pair<mlir::Pass *,mlir::Operation *>>(v9, *(v8 + 120), a2, a3, &v26) & 1) == 0)
  {
    v11 = v26;
    v12 = *(v8 + 120);
    v36 = v26;
    v13 = *(v8 + 112);
    if (4 * v13 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v13 - *(v8 + 116) > v12 >> 3)
    {
      goto LABEL_5;
    }

    llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::grow(v10, v12);
    llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>,std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::LookupBucketFor<std::pair<mlir::Pass *,mlir::Operation *>>(*(v8 + 104), *(v8 + 120), a2, a3, &v36);
    v13 = *(v8 + 112);
    v11 = v36;
LABEL_5:
    *(v8 + 112) = v13 + 1;
    if (*v11 != -4096 || v11[1] != -4096)
    {
      --*(v8 + 116);
    }

    *v11 = a2;
    v11[1] = a3;
    v14 = *(v8 + 136);
    if (v14 >= *(v8 + 140))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v8 + 128, (v8 + 144), v14 + 1, 16);
      LODWORD(v14) = *(v8 + 136);
    }

    v15 = (*(v8 + 128) + 16 * v14);
    *v15 = a2;
    v15[1] = a3;
    ++*(v8 + 136);
  }

  v16 = *v7;
  if (*(*v7 + 32) == 1)
  {
    v17 = *(v16 + 48);
    if (v17)
    {
      mlir::detail::RecoveryReproducerContext::disable(*(*(v16 + 40) + 8 * v17 - 8));
    }

    v36 = v38;
    v37 = 0x600000000;
    for (i = *(a3 + 2); i; a3 = v20)
    {
      v19 = *(i + 24) & 0xFFFFFFFFFFFFFFF8;
      if (!v19)
      {
        break;
      }

      v20 = *(v19 + 16);
      if (!v20)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<mlir::OperationName,true>::push_back(&v36, *(a3 + 6));
      i = *(v20 + 2);
    }

    __p[0] = 0;
    __p[1] = 0;
    v35 = 0;
    v27 = 0;
    v31 = 0;
    v32 = 1;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v26 = &unk_286E79D28;
    v33 = __p;
    llvm::raw_ostream::SetUnbuffered(&v26);
    if (v37)
    {
      v21 = 8 * v37;
      v22 = v36 - 8;
      do
      {
        llvm::raw_ostream::operator<<(&v26, *(*(*&v22[v21] + 8) + 16), *(*(*&v22[v21] + 8) + 24));
        if (v29 == v30)
        {
          llvm::raw_ostream::write(&v26, "(", 1uLL);
        }

        else
        {
          *v30++ = 40;
        }

        v21 -= 8;
      }

      while (v21);
    }

    mlir::Pass::printAsTextualPipeline(a2, &v26);
    for (j = v37; j; --j)
    {
      if (v29 == v30)
      {
        llvm::raw_ostream::write(&v26, ")", 1uLL);
      }

      else
      {
        *v30++ = 41;
      }
    }

    v24 = *v7;
    operator new();
  }

LABEL_30:
  v25 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::CrashReproducerInstrumentation::runAfterPass(_anonymous_namespace_::CrashReproducerInstrumentation *this, mlir::Pass *a2, mlir::Operation *a3)
{
  v6 = *(a2 + 1);
  if (v6 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID())
  {
    v7 = *(this + 1);
    v8 = *v7;
    v9 = (*v7)[15].i32[0];
    if (v9)
    {
      v10 = v8[13];
      v11 = 0xBF58476D1CE4E5B9 * ((a3 >> 4) ^ (a3 >> 9) | (((a2 >> 4) ^ (a2 >> 9)) << 32));
      v12 = v9 - 1;
      v13 = v12 & ((v11 >> 31) ^ v11);
      v14 = (*&v10 + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      if (*v14 == a2 && v15 == a3)
      {
LABEL_8:
        *v14 = -8192;
        v14[1] = -8192;
        v8[14] = vadd_s32(v8[14], 0x1FFFFFFFFLL);
        v18 = v8[16];
        v19 = v8[17].u32[0];
        v20 = (*&v18 + 16 * v19);
        if (v19)
        {
          v21 = 16 * v19;
          while (**&v18 != a2 || *(*&v18 + 8) != a3)
          {
            *&v18 += 16;
            v21 -= 16;
            if (!v21)
            {
              v18 = v20;
              break;
            }
          }
        }

        v23 = (*&v18 + 16);
        if (*&v18 + 16 != *&v20)
        {
          v24 = *&v20 - *&v18 - 16;
          do
          {
            v25 = v23[1];
            *(v23 - 2) = *v23;
            *(v23 - 1) = v25;
            v23 += 2;
            v24 -= 16;
          }

          while (v24);
        }

        v8[17].i32[0] = v19 - 1;
      }

      else
      {
        v29 = 1;
        while (v16 != -4096 || v15 != -4096)
        {
          v30 = v13 + v29++;
          v13 = v30 & v12;
          v14 = (*&v10 + 16 * v13);
          v16 = *v14;
          v15 = v14[1];
          if (*v14 == a2 && v15 == a3)
          {
            goto LABEL_8;
          }
        }
      }
    }

    if (v8[4].i8[0] == 1)
    {
      v26 = v8[6].i32[0] - 1;
      v8[6].i32[0] = v26;
      std::unique_ptr<mlir::detail::RecoveryReproducerContext>::~unique_ptr[abi:nn200100]((*&v8[5] + 8 * v26));
      v27 = (*v7)[6].u32[0];
      if (v27)
      {
        v28 = *(*&(*v7)[5] + 8 * v27 - 8);

        mlir::detail::RecoveryReproducerContext::enable(v28);
      }
    }
  }
}

mlir::detail::RecoveryReproducerContext **anonymous namespace::CrashReproducerInstrumentation::runAfterPassFailed(mlir::detail::RecoveryReproducerContext **this, mlir::Pass *a2, mlir::Operation *a3)
{
  if ((this[2] & 1) == 0)
  {
    *(this + 16) = 1;
    return mlir::detail::PassCrashReproducerGenerator::finalize(this[1], a3, 0);
  }

  return this;
}

uint64_t mlir::applyPassManagerCLOptions(mlir *this, mlir::PassManager *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  if (atomic_load(options))
  {
    if (!atomic_load_explicit(options, memory_order_acquire))
    {
    }

    if (*(options[0] + 8))
    {
      if (!atomic_load_explicit(options, memory_order_acquire))
      {
      }

      v4 = *(options[0] + 143);
      if (v4 >= 0)
      {
        v5 = (options[0] + 120);
      }

      else
      {
        v5 = *(options[0] + 120);
      }

      if (v4 >= 0)
      {
        v6 = *(options[0] + 143);
      }

      else
      {
        v6 = *(options[0] + 128);
      }

      if (!atomic_load_explicit(options, memory_order_acquire))
      {
      }

      v7 = *(options[0] + 344);
      mlir::PassManager::enableCrashReproducerGeneration(this, v5, v6);
    }

    if (!atomic_load_explicit(options, memory_order_acquire))
    {
    }

    if (*(options[0] + 1688) == 1)
    {
      if (!atomic_load_explicit(options, memory_order_acquire))
      {
      }

      *(this + 4) = *(options[0] + 1872);
      *(this + 20) = 1;
    }

    if (!atomic_load_explicit(options, memory_order_acquire))
    {
    }

    if (*(options[0] + 1280) == 1)
    {
      v8 = **(this + 1);
      if (*(v8 + 41) == 1)
      {
        v9 = *(v8 + 616);
        v32 = 257;
        emitDiag(v9, 2, v30, &v23);
        if (v23)
        {
          mlir::Diagnostic::operator<<<101ul>(&v24, "IR print for module scope can't be setup on a pass-manager without disabling multi-threading first.\n");
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
        goto LABEL_29;
      }
    }

    if (!atomic_load_explicit(options, memory_order_acquire))
    {
    }

    v11 = options[0];
    v31 = 0;
    v29 = 0;
    if (*(options[0] + 544) == 1)
    {
      v23 = &unk_286E84AA8;
    }

    else
    {
      if (!*(*(options[0] + 408) + 8))
      {
LABEL_37:
        if ((*(v11 + 728) & 1) != 0 || *(v11 + 1096) == 1)
        {
          v23 = &unk_286E84B38;
        }

        else
        {
          if (!*(*(v11 + 416) + 8))
          {
LABEL_41:
            if (!(v31 | v29))
            {
              std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](v28);
              std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](v30);
              result = 1;
              goto LABEL_55;
            }

            if ((*(v11 + 1487) & 0x8000000000000000) != 0)
            {
              if (*(v11 + 1472))
              {
LABEL_44:
                std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::__value_func[abi:nn200100](v27, v30);
                std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::__value_func[abi:nn200100](v26, v28);
                v12 = *(v11 + 1280);
                v13 = *(v11 + 912);
                v14 = *(v11 + 1096);
                v15 = *(v11 + 1487);
                if (v15 < 0)
                {
                  v16 = *(v11 + 1464);
                }

                if (v15 >= 0)
                {
                  v17 = *(v11 + 1487);
                }

                else
                {
                  v17 = *(v11 + 1472);
                }

                mlir::OpPrintingFlags::OpPrintingFlags(&v23);
                mlir::PassManager::enableIRPrintingToFileTree();
              }
            }

            else if (*(v11 + 1487))
            {
              goto LABEL_44;
            }

            std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::__value_func[abi:nn200100](v27, v30);
            v18 = std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::__value_func[abi:nn200100](v26, v28);
            v19 = *(v11 + 1280);
            v20 = *(v11 + 912);
            v21 = *(v11 + 1096);
            llvm::errs(v18);
            mlir::OpPrintingFlags::OpPrintingFlags(&v23);
            mlir::PassManager::enableIRPrinting();
          }

          v23 = &unk_286E84B80;
          v24 = v11;
        }

        v25 = &v23;
        std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::swap[abi:nn200100](&v23, v28);
        std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](&v23);
        goto LABEL_41;
      }

      v23 = &unk_286E84AF0;
      v24 = options[0];
    }

    v25 = &v23;
    std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::swap[abi:nn200100](&v23, v30);
    std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](&v23);
    goto LABEL_37;
  }

LABEL_29:
  result = 0;
LABEL_55:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::swap[abi:nn200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_1,std::allocator<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_1>,BOOL ()(mlir::Pass *,mlir::Operation *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E84AF0;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_1,std::allocator<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_1>,BOOL ()(mlir::Pass *,mlir::Operation *)>::operator()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = (*(**a2 + 32))(*a2);
  v6 = mlir::PassInfo::lookup(v3, v4, v5);
  if (!v6)
  {
    return 0;
  }

  v7 = *(v2 + 408);
  v8 = *(v7 + 120);
  v9 = *(v7 + 128);
  if (v8 == v9)
  {
    return 0;
  }

  v10 = v8 + 24;
  do
  {
    v11 = *(v10 - 24) == v6;
    v12 = *(v10 - 24) == v6 || v10 == v9;
    v10 += 24;
  }

  while (!v12);
  return v11;
}

uint64_t std::__function::__func<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_3,std::allocator<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_3>,BOOL ()(mlir::Pass *,mlir::Operation *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E84B80;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_3,std::allocator<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_3>,BOOL ()(mlir::Pass *,mlir::Operation *)>::operator()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = (*(**a2 + 32))(*a2);
  v6 = mlir::PassInfo::lookup(v3, v4, v5);
  if (!v6)
  {
    return 0;
  }

  v7 = *(v2 + 416);
  v8 = *(v7 + 120);
  v9 = *(v7 + 128);
  if (v8 == v9)
  {
    return 0;
  }

  v10 = v8 + 24;
  do
  {
    v11 = *(v10 - 24) == v6;
    v12 = *(v10 - 24) == v6 || v10 == v9;
    v10 += 24;
  }

  while (!v12);
  return v11;
}

uint64_t llvm::object_deleter<anonymous namespace::PassManagerOptions>::call(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = (result + 1752);
    *(result + 1752) = &unk_286E84BC8;
    std::__function::__value_func<void ()(mlir::PassDisplayMode const&)>::~__value_func[abi:nn200100](result + 2312);
    *(v1 + 1896) = &unk_286E84C70;
    v3 = *(v1 + 1912);
    if (v3 != (v1 + 1928))
    {
      free(v3);
    }

    llvm::cl::Option::~Option(v2);
    *(v1 + 1568) = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](v1 + 1720);
    llvm::cl::Option::~Option((v1 + 1568));
    *(v1 + 1344) = &unk_286E792E0;
    std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](v1 + 1536);
    *(v1 + 1488) = &unk_286E75E90;
    if (*(v1 + 1519) < 0)
    {
      operator delete(*(v1 + 1496));
    }

    if (*(v1 + 1487) < 0)
    {
      operator delete(*(v1 + 1464));
    }

    llvm::cl::Option::~Option((v1 + 1344));
    *(v1 + 1160) = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](v1 + 1312);
    llvm::cl::Option::~Option((v1 + 1160));
    *(v1 + 976) = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](v1 + 1128);
    llvm::cl::Option::~Option((v1 + 976));
    *(v1 + 792) = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](v1 + 944);
    llvm::cl::Option::~Option((v1 + 792));
    *(v1 + 608) = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](v1 + 760);
    llvm::cl::Option::~Option((v1 + 608));
    *(v1 + 424) = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](v1 + 576);
    llvm::cl::Option::~Option((v1 + 424));
    std::unique_ptr<mlir::detail::PassPipelineCLParserImpl>::~unique_ptr[abi:nn200100]((v1 + 416));
    std::unique_ptr<mlir::detail::PassPipelineCLParserImpl>::~unique_ptr[abi:nn200100]((v1 + 408));
    *(v1 + 224) = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](v1 + 376);
    llvm::cl::Option::~Option((v1 + 224));
    *v1 = &unk_286E792E0;
    std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](v1 + 192);
    *(v1 + 144) = &unk_286E75E90;
    if (*(v1 + 175) < 0)
    {
      operator delete(*(v1 + 152));
    }

    if (*(v1 + 143) < 0)
    {
      operator delete(*(v1 + 120));
    }

    llvm::cl::Option::~Option(v1);

    JUMPOUT(0x25F891040);
  }

  return result;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [27],llvm::cl::desc,llvm::cl::initializer<BOOL>>(uint64_t a1, const char *a2, _OWORD *a3, _BYTE **a4)
{
  v8 = llvm::cl::Option::Option(a1, 0, 0);
  *(v8 + 120) = 0;
  *(v8 + 128) = &unk_286E76000;
  *(v8 + 136) = 0;
  *v8 = &unk_286E79348;
  *(v8 + 144) = &unk_286E79090;
  *(v8 + 152) = &unk_286E76020;
  *(v8 + 176) = v8 + 152;
  v9 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v9);
  *(a1 + 32) = *a3;
  v10 = *a4;
  *(a1 + 120) = **a4;
  *(a1 + 137) = 1;
  *(a1 + 136) = *v10;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::cl::opt<mlir::PassDisplayMode,false,llvm::cl::parser<mlir::PassDisplayMode>>::handleOccurrence(uint64_t a1, __int16 a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v7 = a1;
  v18 = 0;
  v8 = *(*(a1 + 152) + 24);
  if (v8)
  {
    a3 = a5;
  }

  if (v8)
  {
    a4 = a6;
  }

  v11 = *(a1 + 168);
  if (v11)
  {
    v12 = *(a1 + 160);
    while (1)
    {
      if (*(v12 + 8) == a4)
      {
        if (!a4)
        {
          break;
        }

        a1 = memcmp(*v12, a3, a4);
        if (!a1)
        {
          break;
        }
      }

      v12 += 48;
      if (!--v11)
      {
        goto LABEL_13;
      }
    }

    v15 = *(v12 + 40);
    v18 = v15;
  }

  else
  {
LABEL_13:
    v20 = 1283;
    v19[0] = "Cannot find option named '";
    v19[2] = a3;
    v19[3] = a4;
    v21[0] = v19;
    v21[2] = "'!";
    v22 = 770;
    v13 = llvm::errs(a1);
    if (llvm::cl::Option::error(v7, v21, 0, 0, v13))
    {
      return 1;
    }

    v15 = 0;
  }

  *(v7 + 120) = v15;
  *(v7 + 12) = a2;
  v16 = *(v7 + 584);
  if (v16)
  {
    (*(*v16 + 48))(v16, &v18);
    return 0;
  }

  else
  {
    v17 = std::__throw_bad_function_call[abi:nn200100]();
    return llvm::cl::opt<mlir::PassDisplayMode,false,llvm::cl::parser<mlir::PassDisplayMode>>::getValueExpectedFlagDefault(v17);
  }
}

uint64_t llvm::cl::opt<mlir::PassDisplayMode,false,llvm::cl::parser<mlir::PassDisplayMode>>::getValueExpectedFlagDefault(uint64_t a1)
{
  if (*(*(a1 + 152) + 24))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void llvm::cl::opt<mlir::PassDisplayMode,false,llvm::cl::parser<mlir::PassDisplayMode>>::~opt(uint64_t a1)
{
  *a1 = &unk_286E84BC8;
  std::__function::__value_func<void ()(mlir::PassDisplayMode const&)>::~__value_func[abi:nn200100](a1 + 560);
  *(a1 + 144) = &unk_286E84C70;
  v2 = *(a1 + 160);
  if (v2 != (a1 + 176))
  {
    free(v2);
  }

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286E84BC8;
  std::__function::__value_func<void ()(mlir::PassDisplayMode const&)>::~__value_func[abi:nn200100](a1 + 560);
  *(a1 + 144) = &unk_286E84C70;
  v2 = *(a1 + 160);
  if (v2 != (a1 + 176))
  {
    free(v2);
  }

  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

llvm::raw_ostream *llvm::cl::opt<mlir::PassDisplayMode,false,llvm::cl::parser<mlir::PassDisplayMode>>::printOptionValue(llvm::raw_ostream *result, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(result + 140) != 1 || *(result + 34) != *(result + 30))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(result + 30);
    v6 = &unk_286E84C30;
    v8 = 1;
    v7 = v5;
    return llvm::cl::generic_parser_base::printGenericOptionDiff((result + 144), result, &v6, (result + 128), a2);
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::PassDisplayMode,false,llvm::cl::parser<mlir::PassDisplayMode>>::setDefault(uint64_t result)
{
  if (*(result + 140) == 1)
  {
    v1 = *(result + 136);
  }

  else
  {
    v1 = 0;
  }

  *(result + 120) = v1;
  return result;
}

void *llvm::cl::parser<mlir::PassDisplayMode>::~parser(void *a1)
{
  *a1 = &unk_286E84C70;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

void llvm::cl::parser<mlir::PassDisplayMode>::~parser(void *a1)
{
  *a1 = &unk_286E84C70;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

uint64_t llvm::cl::parser<mlir::PassDisplayMode>::getOption(uint64_t a1, unsigned int a2)
{
  v2 = (*(a1 + 16) + 48 * a2);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t llvm::cl::parser<mlir::PassDisplayMode>::getDescription(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 48 * a2;
  result = *(v2 + 16);
  v4 = *(v2 + 24);
  return result;
}

void llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::PassDisplayMode>::OptionInfo,false>::grow(uint64_t a1, unint64_t a2)
{
  v13 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 48, &v13);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[48 * v6];
    v8 = v4 + 32;
    v9 = v4;
    do
    {
      v10 = *(v5 + 1);
      *v9 = *v5;
      *(v9 + 1) = v10;
      *(v9 + 4) = &unk_286E84C50;
      v11 = *(v5 + 10);
      v9[44] = v5[44];
      *(v9 + 10) = v11;
      *(v9 + 4) = &unk_286E84C30;
      v9 += 48;
      v5 += 48;
      v8 += 48;
    }

    while (v5 != v7);
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

uint64_t std::__function::__value_func<void ()(mlir::PassDisplayMode const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void mlir::PassRegistryEntry::printHelpStr(mlir::PassRegistryEntry *this, uint64_t a2)
{
  v4 = *(this + 23);
  if (v4 >= 0)
  {
    v5 = this;
  }

  else
  {
    v5 = *this;
  }

  if (v4 >= 0)
  {
    v6 = *(this + 23);
  }

  else
  {
    v6 = *(this + 1);
  }

  v7 = *(this + 47);
  if (v7 >= 0)
  {
    v8 = this + 24;
  }

  else
  {
    v8 = *(this + 3);
  }

  v9 = *(this + 4);
  if (v7 >= 0)
  {
    v10 = *(this + 47);
  }

  else
  {
    v10 = *(this + 4);
  }

  v11 = llvm::outs(this);
  llvm::raw_ostream::write(v11, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, 6uLL);
  v12 = *(v11 + 4);
  if (*(v11 + 3) - v12 > 1uLL)
  {
    *v12 = 11565;
    *(v11 + 4) += 2;
  }

  else
  {
    v11 = llvm::raw_ostream::write(v11, "--", 2uLL);
  }

  v16 = v5;
  v17 = v6;
  v18 = a2 - 10;
  v19 = 1;
  llvm::raw_ostream::operator<<(v11, &v16);
  v13 = *(v11 + 4);
  if (*(v11 + 3) - v13 > 3uLL)
  {
    *v13 = 538976301;
    *(v11 + 4) += 4;
  }

  else
  {
    v11 = llvm::raw_ostream::write(v11, "-   ", 4uLL);
  }

  v14 = llvm::raw_ostream::operator<<(v11, v8, v10);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 10);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 10;
  }

  v16 = 6;
  v17 = a2;
  std::function<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::operator()(*(this + 13), llvm::function_ref<void ()(mlir::detail::PassOptions const&)>::callback_fn<mlir::PassRegistryEntry::printHelpStr(unsigned long,unsigned long)::$_0>, &v16);
}

void std::function<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a2;
  v9[1] = a3;
  if (a1)
  {
    (*(*a1 + 48))(a1, v9);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    mlir::registerPassPipeline(v3, v4, v5, v6, v7, v8);
  }
}

void mlir::registerPassPipeline(void *a1, size_t a2, void *a3, size_t a4, uint64_t a5, uint64_t a6)
{
  v32 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::__value_func[abi:nn200100](v22, a6);
  if (v23)
  {
    if (v23 == v22)
    {
      v31 = v30;
      (*(*v23 + 24))();
    }

    else
    {
      v31 = v23;
      v23 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  mlir::PassRegistryEntry::PassRegistryEntry(__dst, a1, a2, a3, a4, a5, v30);
  std::__function::__value_func<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::~__value_func[abi:nn200100](v30);
  std::__function::__value_func<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::~__value_func[abi:nn200100](v22);
  if (!atomic_load_explicit(qword_27FC1EE70, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27FC1EE70, llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call);
  }

  v12 = qword_27FC1EE70[0];
  v13 = llvm::xxh3_64bits(a1, a2, v11);
  v14 = llvm::StringMapImpl::LookupBucketFor(v12, a1, a2, v13);
  v15 = *v12;
  v16 = *(*v12 + 8 * v14);
  if (v16)
  {
    if (v16 != -8)
    {
      goto LABEL_20;
    }

    --*(v12 + 4);
  }

  buffer = llvm::allocate_buffer((a2 + 121), 8uLL);
  v18 = buffer;
  v19 = buffer + 120;
  if (a2)
  {
    memcpy(buffer + 120, a1, a2);
  }

  v19[a2] = 0;
  *v18 = a2;
  v20 = (v18 + 8);
  if (SHIBYTE(v25) < 0)
  {
    std::string::__init_copy_ctor_external(v20, __dst[0], __dst[1]);
  }

  else
  {
    *&v20->__r_.__value_.__l.__data_ = *__dst;
    *(v18 + 3) = v25;
  }

  if (SHIBYTE(v27) < 0)
  {
    std::string::__init_copy_ctor_external((v18 + 32), __p, *(&__p + 1));
  }

  else
  {
    *(v18 + 2) = __p;
    *(v18 + 6) = v27;
  }

  std::__function::__value_func<llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::__value_func[abi:nn200100]((v18 + 56), v28);
  std::__function::__value_func<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::__value_func[abi:nn200100]((v18 + 88), v29);
  *(v15 + 8 * v14) = v18;
  ++*(v12 + 3);
  llvm::StringMapImpl::RehashTable(v12, v14);
LABEL_20:
  std::__function::__value_func<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::~__value_func[abi:nn200100](v29);
  std::__function::__value_func<llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::~__value_func[abi:nn200100](v28);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(__dst[0]);
  }

  v21 = *MEMORY[0x277D85DE8];
}

char *mlir::PassRegistryEntry::PassRegistryEntry(char *__dst, void *__src, size_t __len, void *a4, size_t a5, uint64_t a6, uint64_t a7)
{
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_14;
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  if (a5 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_14:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a5 >= 0x17)
  {
    operator new();
  }

  v14 = __dst + 24;
  __dst[47] = a5;
  if (a5)
  {
    memmove(v14, a4, a5);
  }

  v14[a5] = 0;
  std::__function::__value_func<llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::__value_func[abi:nn200100]((__dst + 48), a6);
  std::__function::__value_func<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::__value_func[abi:nn200100]((__dst + 80), a7);
  return __dst;
}

void mlir::registerPass(uint64_t a1)
{
  v14[5] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  if (v2)
  {
    (*(*v2 + 48))(&v8);
    (*(*v8 + 32))(v8);
    if (v3)
    {
      (*(*v8 + 40))(v8);
      std::__function::__value_func<std::unique_ptr<mlir::Pass> ()(void)>::__value_func[abi:nn200100](__dst, a1);
      operator new();
    }
  }

  else
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  v12 = "Trying to register '";
  v13 = 259;
  v4 = (*(*v8 + 16))(v8);
  v11 = 261;
  v10[0] = v4;
  v10[1] = v5;
  llvm::operator+(&v12, v10, v14);
  v7 = 259;
  llvm::operator+(v14, &v6, __dst);
  llvm::report_fatal_error(__dst, 1);
}