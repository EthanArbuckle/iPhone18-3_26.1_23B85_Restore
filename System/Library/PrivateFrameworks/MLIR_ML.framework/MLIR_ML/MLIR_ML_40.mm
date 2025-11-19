void mlir::pdl_to_pdl_interp::OptimalBranching::preOrderTraversal(uint64_t a1@<X0>, unint64_t *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  if (!a3)
  {
    a4[1] = 0;
    a4[2] = 0;
    operator new();
  }

  v7 = a2;
  v8 = &a2[a3];
  while (1)
  {
    v11 = *v7;
    v22 = v11;
    if (*(a1 + 24) == v11)
    {
      goto LABEL_5;
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 0x9DDFEA08EB382D69 * ((8 * v11 - 0xAE502812AA7333) ^ HIDWORD(v11));
      v15 = 0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v14 >> 47) ^ v14);
      LODWORD(v14) = -348639895 * ((v15 >> 47) ^ v15);
      v16 = v12 - 1;
      v17 = (v12 - 1) & v14;
      v18 = *(v13 + 16 * v17);
      if (v18 == v11)
      {
LABEL_9:
        v9 = *(v13 + 16 * v17 + 8);
        goto LABEL_4;
      }

      v19 = 1;
      while (v18 != -4096)
      {
        v20 = v17 + v19++;
        v17 = v20 & v16;
        v18 = *(v13 + 16 * v17);
        if (v18 == v11)
        {
          goto LABEL_9;
        }
      }
    }

    v9 = 0;
LABEL_4:
    v21 = v9;
    v10 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::operator[](v23, &v21);
    std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](v10, &v22);
LABEL_5:
    if (++v7 == v8)
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      if (!(a3 >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    v5 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)))) & (v2 - 1);
    v6 = (*a1 + 32 * v5);
    v7 = *v6;
    if (*a2 == *v6)
    {
      return v6 + 1;
    }

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
      v5 = v13 & (v2 - 1);
      v6 = (*a1 + 32 * v5);
      v7 = *v6;
      if (*a2 == *v6)
      {
        return v6 + 1;
      }
    }

    if (v10)
    {
      v6 = v10;
    }
  }

  else
  {
    v6 = 0;
  }

  v16 = v6;
  v9 = *(a1 + 8);
  if (4 * v9 + 4 >= 3 * v2)
  {
    v14 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v9 - *(a1 + 12) <= v2 >> 3)
  {
    v14 = a2;
LABEL_24:
    v15 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::LookupBucketFor<mlir::Value>(v15, v14, &v16);
    a1 = v15;
    a2 = v14;
    v6 = v16;
    ++*(v15 + 8);
    if (*v6 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v9 + 1;
  if (*v6 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v6 = *a2;
  v6[1] = 0;
  v6[2] = 0;
  v6[3] = 0;
  return v6 + 1;
}

uint64_t llvm::detail::DenseSetImpl<mlir::Value,llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,llvm::DenseMapInfo<mlir::Value,void>>::DenseSetImpl<mlir::Value const*>(uint64_t a1, void *a2, void *a3)
{
  v6 = (*a3 - *a2) >> 3;
  if ((v6 - 2147483649) < 0xFFFFFFFF80000000)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v7 = *a2;
    i = *a3;
    if (*a2 == *a3)
    {
      return a1;
    }

    goto LABEL_12;
  }

  v9 = 4 * (1 << -__clz(v6 - 1));
  v10 = (v9 / 3 + 1) | ((v9 / 3 + 1) >> 1);
  v11 = v10 | (v10 >> 2) | ((v10 | (v10 >> 2)) >> 4);
  LODWORD(v11) = (((v11 | (v11 >> 8)) >> 16) | v11 | (v11 >> 8)) + 1;
  *(a1 + 16) = v11;
  buffer = llvm::allocate_buffer(8 * v11, 8uLL);
  *a1 = buffer;
  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = (v13 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v15 = buffer;
    if (v14 < 3)
    {
      goto LABEL_9;
    }

    v16 = v14 + 1;
    v15 = &buffer->i8[8 * (v16 & 0x3FFFFFFFFFFFFFFCLL)];
    v17 = buffer + 1;
    v18 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v19 = v16 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v17[-1] = v18;
      *v17 = v18;
      v17 += 2;
      v19 -= 4;
    }

    while (v19);
    if (v16 != (v16 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_9:
      v20 = &buffer->i8[8 * v13];
      do
      {
        *v15 = -4096;
        v15 += 8;
      }

      while (v15 != v20);
    }
  }

  v7 = *a2;
  for (i = *a3; v7 != i; ++v7)
  {
LABEL_12:
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, v7, &v22);
  }

  return a1;
}

uint64_t llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::shrink_and_clear(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  v3 = 1 << (33 - __clz(v2 - 1));
  if (v3 <= 64)
  {
    v3 = 64;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 != v1)
  {
    llvm::deallocate_buffer(*result, (16 * v1));
  }

  *(result + 8) = 0;
  if (v1)
  {
    v5 = *result;
    v6 = (v1 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v6)
    {
      v7 = v6 + 1;
      v8 = (v6 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v9 = (v5 + 16 * v8);
      v10 = (v5 + 16);
      v11 = v8;
      do
      {
        *(v10 - 2) = -4096;
        *v10 = -4096;
        v10 += 4;
        v11 -= 2;
      }

      while (v11);
      if (v7 == v8)
      {
        return result;
      }
    }

    else
    {
      v9 = *result;
    }

    v12 = (v5 + 16 * v1);
    do
    {
      *v9 = -4096;
      v9 = (v9 + 16);
    }

    while (v9 != v12);
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = (32 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0xFFFFFFFFFFFFFFELL;
      v15 = &result[4 * v14];
      v16 = result + 4;
      v17 = v14;
      do
      {
        *(v16 - 4) = -4096;
        *v16 = -4096;
        v16 += 8;
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

    v18 = &result[4 * v11];
    do
    {
      *v15 = -4096;
      v15 += 4;
    }

    while (v15 != v18);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *result;
    v5 = (v3 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v5)
    {
      v6 = v5 + 1;
      v7 = (v5 + 1) & 0xFFFFFFFFFFFFFFELL;
      v8 = &v4[4 * v7];
      v9 = v4 + 4;
      v10 = v7;
      do
      {
        *(v9 - 4) = -4096;
        *v9 = -4096;
        v9 += 8;
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

    v11 = &v4[4 * v3];
    do
    {
      *v8 = -4096;
      v8 += 4;
    }

    while (v8 != v11);
  }

LABEL_10:
  while (a2 != a3)
  {
    v13 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
      v15 = 0x9DDFEA08EB382D69 * (HIDWORD(v13) ^ (v14 >> 47) ^ v14);
      LODWORD(v14) = -348639895 * ((v15 >> 47) ^ v15);
      v16 = *(result + 16) - 1;
      v17 = v16 & v14;
      v12 = (*result + 32 * v17);
      v18 = *v12;
      if (v13 != *v12)
      {
        v19 = 0;
        v20 = 1;
        while (v18 != -4096)
        {
          if (v19)
          {
            v21 = 0;
          }

          else
          {
            v21 = v18 == -8192;
          }

          if (v21)
          {
            v19 = v12;
          }

          v22 = v17 + v20++;
          v17 = v22 & v16;
          v12 = (*result + 32 * v17);
          v18 = *v12;
          if (v13 == *v12)
          {
            goto LABEL_14;
          }
        }

        if (v19)
        {
          v12 = v19;
        }
      }

LABEL_14:
      *v12 = v13;
      v12[1] = 0;
      v12[2] = 0;
      v12[3] = 0;
      *(v12 + 1) = *(a2 + 1);
      v12[3] = a2[3];
      a2[1] = 0;
      a2[2] = 0;
      a2[3] = 0;
      ++*(result + 8);
    }

    a2 += 4;
  }

  return result;
}

__n128 mlir::PassManager::IRPrinterConfig::IRPrinterConfig(uint64_t a1, char a2, char a3, char a4, uint64_t a5)
{
  *a1 = &unk_286867860;
  *(a1 + 8) = a2;
  *(a1 + 9) = a3;
  *(a1 + 10) = a4;
  result = *a5;
  v6 = *(a5 + 32);
  *(a1 + 32) = *(a5 + 16);
  *(a1 + 48) = v6;
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = &unk_286867860;
  *(a1 + 8) = a2;
  *(a1 + 9) = a3;
  *(a1 + 10) = a4;
  result = *a5;
  v6 = *(a5 + 32);
  *(a1 + 32) = *(a5 + 16);
  *(a1 + 48) = v6;
  *(a1 + 16) = result;
  return result;
}

void mlir::PassManager::enableIRPrinting(uint64_t a1, uint64_t a2)
{
  if (*(*a2 + 8) == 1)
  {
    if (mlir::MLIRContext::isMultithreadingEnabled(*(a1 + 8)))
    {
      llvm::report_fatal_error("IR printing can't be setup on a pass-manager without disabling multi-threading first.", 1);
    }
  }

  operator new();
}

void anonymous namespace::IRPrinterInstrumentation::~IRPrinterInstrumentation(llvm **this)
{
  *this = &unk_2868678A0;
  llvm::deallocate_buffer(this[2], (32 * *(this + 8)));
}

{
  *this = &unk_2868678A0;
  llvm::deallocate_buffer(this[2], (32 * *(this + 8)));
}

void sub_25664E960(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 1);
  *(v12 + 1) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  mlir::PassInstrumentation::~PassInstrumentation(v12);
}

void sub_25664E9F4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 1);
  *(v12 + 1) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  mlir::PassInstrumentation::~PassInstrumentation(v12);

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::IRPrinterInstrumentation::runBeforePass(uint64_t this, mlir::Pass *a2, mlir::Operation *a3)
{
  v9 = a2;
  v8 = a3;
  v3 = *(a2 + 1);
  {
    if (v3 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      return this;
    }
  }

  else
  {
    v6 = this;
    this = v6;
    if (v3 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      return this;
    }
  }

  v4 = *(this + 8);
  if (v4[9] == 1)
  {
    v5 = this;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>,mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>::try_emplace<mlir::Operation *&>((this + 16), &v9, &v8, v7);
    this = v5;
    v4 = *(v5 + 8);
  }

  v7[0] = &v9;
  v7[1] = &v8;
  v7[2] = this;
}

mlir::OperationFingerPrint *anonymous namespace::IRPrinterInstrumentation::runAfterPass(mlir::OperationFingerPrint *this, mlir::Pass *a2, mlir::Operation *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = a2;
  v3 = *(a2 + 1);
  {
    if (v3 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      return this;
    }
  }

  else
  {
    v17 = this;
    this = v17;
    if (v3 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      return this;
    }
  }

  v4 = *(this + 1);
  if (v4[10])
  {
    return this;
  }

  v5 = v19;
  if ((v4[9] & 1) == 0)
  {
    v13 = v18;
LABEL_21:
    v20 = &v19;
    v21 = &v18;
    v22 = this;
  }

  v6 = *(this + 2);
  v7 = *(this + 8);
  if (v7)
  {
    v8 = ((v19 >> 4) ^ (v19 >> 9)) & (v7 - 1);
    v9 = *(v6 + 32 * v8);
    v10 = this;
    if (v9 == v19)
    {
      goto LABEL_13;
    }

    v11 = 1;
    while (1)
    {
      this = v10;
      if (v9 == -4096)
      {
        break;
      }

      v12 = v8 + v11++;
      v8 = v12 & (v7 - 1);
      v9 = *(v6 + 32 * v8);
      if (v9 == v19)
      {
        goto LABEL_13;
      }
    }
  }

  v10 = this;
  v8 = v7;
LABEL_13:
  v14 = v6 + 32 * v8;
  v13 = v18;
  this = mlir::OperationFingerPrint::OperationFingerPrint(&v20, v18, 1);
  v16 = *(v14 + 8) == v20 && *(v14 + 16) == v21 && *(v14 + 24) == v22;
  *v14 = -8192;
  v10[3] = vadd_s32(v10[3], 0x1FFFFFFFFLL);
  if (!v16)
  {
    this = v10;
    v4 = v10[1];
    goto LABEL_21;
  }

  return this;
}

int32x2_t *anonymous namespace::IRPrinterInstrumentation::runAfterPassFailed(int32x2_t *this, mlir::Pass *a2, mlir::Operation *a3)
{
  v16 = a3;
  v17 = a2;
  v3 = *(a2 + 1);
  {
    if (v3 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      return this;
    }
  }

  else
  {
    v13 = v3;
    v14 = this;
    this = v14;
    if (v13 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      return this;
    }
  }

  v4 = this[1];
  if (v4[9])
  {
    v5 = this[4].i32[0];
    v6 = v17;
    if (v5)
    {
      v7 = this[2];
      v8 = v5 - 1;
      v9 = ((v17 >> 4) ^ (v17 >> 9)) & (v5 - 1);
      v10 = *(*&v7 + 32 * v9);
      if (v17 == v10)
      {
LABEL_6:
        *(*&v7 + 32 * v9) = -8192;
        this[3] = vadd_s32(this[3], 0x1FFFFFFFFLL);
      }

      else
      {
        v11 = 1;
        while (v10 != -4096)
        {
          v12 = v9 + v11++;
          v9 = v12 & v8;
          v10 = *(*&v7 + 32 * v9);
          if (v17 == v10)
          {
            goto LABEL_6;
          }
        }
      }
    }
  }

  else
  {
    v6 = v17;
  }

  v15[0] = &v17;
  v15[1] = &v16;
  v15[2] = this;
}

mlir::OperationFingerPrint *llvm::DenseMapBase<llvm::DenseMap<mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>,mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>::try_emplace<mlir::Operation *&>@<X0>(mlir::OperationFingerPrint *result@<X0>, void *a2@<X1>, mlir::Operation **a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result;
  v7 = *(result + 4);
  if (!v7)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v8 = *result;
  v9 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v7 - 1);
  v10 = (*result + 32 * v9);
  v11 = *v10;
  if (*a2 != *v10)
  {
    v14 = 0;
    v15 = 1;
    while (v11 != -4096)
    {
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v11 == -8192;
      }

      if (v16)
      {
        v14 = v10;
      }

      v17 = v9 + v15++;
      v9 = v17 & (v7 - 1);
      v10 = (v8 + 32 * v9);
      v11 = *v10;
      if (*a2 == *v10)
      {
        goto LABEL_3;
      }
    }

    if (v14)
    {
      v10 = v14;
    }

LABEL_5:
    v20 = v10;
    v13 = *(result + 2);
    if (4 * v13 + 4 >= 3 * v7)
    {
      v7 *= 2;
    }

    else if (v7 + ~v13 - *(result + 3) > v7 >> 3)
    {
      *(result + 2) = v13 + 1;
      if (*v10 == -4096)
      {
LABEL_9:
        *v10 = *a2;
        v12 = 1;
        result = mlir::OperationFingerPrint::OperationFingerPrint((v10 + 1), *a3, 1);
        v8 = *v5;
        v7 = *(v5 + 4);
        goto LABEL_10;
      }

LABEL_8:
      --*(v5 + 3);
      goto LABEL_9;
    }

    v18 = a2;
    v19 = a3;
    llvm::DenseMap<mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>::grow(result, v7);
    llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>,mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::LookupBucketFor<mlir::AsmDialectResourceHandle>(v5, v18, &v20);
    a2 = v18;
    a3 = v19;
    v10 = v20;
    ++*(v5 + 2);
    if (*v10 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v12 = 0;
LABEL_10:
  *a4 = v10;
  *(a4 + 8) = v8 + 32 * v7;
  *(a4 + 16) = v12;
  return result;
}

const char *llvm::getTypeName<mlir::detail::OpToOpPassAdaptor>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::OpToOpPassAdaptor]";
  v6 = 81;
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

void *llvm::DenseMap<mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &result[4 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = result + 4;
      v14 = v12 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 4) = -4096;
        *v13 = -4096;
        v13 += 8;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[4 * v11];
        do
        {
          *v10 = -4096;
          v10 += 4;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v24 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = *(a1 + 16) - 1;
          v26 = v25 & ((v24 >> 4) ^ (v24 >> 9));
          v22 = *a1 + 32 * v26;
          v27 = *v22;
          if (v24 != *v22)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -4096)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -8192;
              }

              if (v30)
              {
                v28 = v22;
              }

              v31 = v26 + v29++;
              v26 = v31 & v25;
              v22 = *a1 + 32 * v26;
              v27 = *v22;
              if (v24 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v28)
            {
              v22 = v28;
            }
          }

LABEL_24:
          *v22 = v24;
          v23 = *(v16 + 8);
          *(v22 + 24) = *(v16 + 6);
          *(v22 + 8) = v23;
          ++*(a1 + 8);
        }

        v16 = (v16 + 32);
      }

      while (v16 != (v4 + 32 * v3));
    }

    llvm::deallocate_buffer(v4, (32 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
    v10 = &result[4 * (v18 & 0xFFFFFFFFFFFFFFELL)];
    v19 = result + 4;
    v20 = v18 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 4) = -4096;
      *v19 = -4096;
      v19 += 8;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[4 * v17];
      do
      {
        *v10 = -4096;
        v10 += 4;
      }

      while (v10 != v21);
    }
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

  v8 = (*(***a1 + 16))(**a1);
  v9 = v7;
  v10 = *(v6 + 4);
  if (v7 <= *(v6 + 3) - v10)
  {
    if (v7)
    {
      memcpy(v10, v8, v7);
      v10 = (*(v6 + 4) + v9);
      *(v6 + 4) = v10;
    }
  }

  else
  {
    v6 = llvm::raw_ostream::write(v6, v8, v7);
    v10 = *(v6 + 4);
  }

  if (*(v6 + 3) - v10 > 1uLL)
  {
    *v10 = 10272;
    *(v6 + 4) += 2;
  }

  else
  {
    v6 = llvm::raw_ostream::write(v6, " (", 2uLL);
  }

  v12 = (*(***a1 + 32))(**a1);
  v13 = v11;
  v14 = *(v6 + 4);
  if (v11 <= *(v6 + 3) - v14)
  {
    if (v11)
    {
      memcpy(v14, v12, v11);
      v14 = (*(v6 + 4) + v13);
      *(v6 + 4) = v14;
    }
  }

  else
  {
    v6 = llvm::raw_ostream::write(v6, v12, v11);
    v14 = *(v6 + 4);
  }

  if (*(v6 + 3) == v14)
  {
    llvm::raw_ostream::write(v6, ")", 1uLL);
  }

  else
  {
    *v14 = 41;
    ++*(v6 + 4);
  }

  v15 = *a1[1];
  v16 = v4[1];
  v17 = *(v16 + 8);
  v18 = *(v16 + 32);
  v19[0] = *(v16 + 16);
  v19[1] = v18;
  v19[2] = *(v16 + 48);
  printIR(v15, v17, this, v19);
}

void printIR(uint64_t a1, char a2, void *a3, const mlir::OpPrintingFlags *a4)
{
  v5 = a3;
  v6 = a3[4];
  v7 = a3[3] - v6;
  v8 = a1;
  if (a2)
  {
    if (v7 > 2)
    {
      *(v6 + 2) = 39;
      *v6 = 10272;
      a3[4] += 3;
      v9 = a3;
    }

    else
    {
      v9 = llvm::raw_ostream::write(a3, " ('", 3uLL);
      a1 = v8;
    }

    v27 = *(a1 + 48);
    mlir::OperationName::print(&v27, v9);
    v10 = *(v9 + 4);
    if ((*(v9 + 3) - v10) > 0xA)
    {
      *(v10 + 7) = 1852795252;
      *v10 = *"' operation";
      *(v9 + 4) += 11;
      v11 = v8;
      if (!*(v8 + 47))
      {
        goto LABEL_18;
      }
    }

    else
    {
      llvm::raw_ostream::write(v9, "' operation", 0xBuLL);
      v11 = v8;
      if (!*(v8 + 47))
      {
        goto LABEL_18;
      }
    }

    InherentAttr = mlir::Operation::getInherentAttr(v8, "sym_name", 8);
    v11 = v8;
    if (v13)
    {
LABEL_19:
      if (InherentAttr)
      {
        v14 = *(*InherentAttr + 136);
        v15 = v14 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
        v16 = v14 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id ? InherentAttr : 0;
        v27 = v16;
        if (v15)
        {
          v17 = v5[4];
          if ((v5[3] - v17) > 2)
          {
            *(v17 + 2) = 64;
            *v17 = 8250;
            v5[4] += 3;
            v18 = v5;
          }

          else
          {
            v18 = llvm::raw_ostream::write(v5, ": @", 3uLL);
          }

          Value = mlir::StringAttr::getValue(&v27);
          v21 = v19;
          v22 = v18[4];
          if (v19 <= v18[3] - v22)
          {
            if (v19)
            {
              memcpy(v22, Value, v19);
              v18[4] += v21;
            }
          }

          else
          {
            llvm::raw_ostream::write(v18, Value, v19);
          }
        }
      }

      v23 = v5[4];
      if (v5[3] - v23 > 0xCuLL)
      {
        qmemcpy(v23, ") //----- //\n", 13);
        v5[4] += 13;
      }

      else
      {
        llvm::raw_ostream::write(v5, ") //----- //\n", 0xDuLL);
      }

      ParentOp = v8;
      do
      {
        v25 = ParentOp;
        v26 = *(ParentOp + 16);
        if (!v26)
        {
          break;
        }

        ParentOp = mlir::Block::getParentOp(v26);
      }

      while (ParentOp);
      mlir::Operation::print(v25, v5, a4);
    }

LABEL_18:
    InherentAttr = mlir::DictionaryAttr::get(v11 + 56, "sym_name", 8uLL);
    goto LABEL_19;
  }

  if (v7 > 0xB)
  {
    *(v6 + 8) = 170864416;
    *v6 = *" //----- //\n";
    a3[4] += 12;
    if (!*(a1 + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = llvm::raw_ostream::write(a3, " //----- //\n", 0xCuLL);
    a1 = v8;
    if (!*(v8 + 16))
    {
LABEL_13:

      mlir::Operation::print(a1, v5, a4);
    }
  }

  a4 = mlir::OpPrintingFlags::useLocalScope(a4);
  a1 = v8;
  goto LABEL_13;
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

  v8 = (*(***a1 + 16))(**a1);
  v9 = v7;
  v10 = *(v6 + 4);
  if (v7 <= *(v6 + 3) - v10)
  {
    if (v7)
    {
      memcpy(v10, v8, v7);
      v10 = (*(v6 + 4) + v9);
      *(v6 + 4) = v10;
    }
  }

  else
  {
    v6 = llvm::raw_ostream::write(v6, v8, v7);
    v10 = *(v6 + 4);
  }

  if (*(v6 + 3) - v10 > 1uLL)
  {
    *v10 = 10272;
    *(v6 + 4) += 2;
  }

  else
  {
    v6 = llvm::raw_ostream::write(v6, " (", 2uLL);
  }

  v12 = (*(***a1 + 32))(**a1);
  v13 = v11;
  v14 = *(v6 + 4);
  if (v11 <= *(v6 + 3) - v14)
  {
    if (v11)
    {
      memcpy(v14, v12, v11);
      v14 = (*(v6 + 4) + v13);
      *(v6 + 4) = v14;
    }
  }

  else
  {
    v6 = llvm::raw_ostream::write(v6, v12, v11);
    v14 = *(v6 + 4);
  }

  if (*(v6 + 3) == v14)
  {
    llvm::raw_ostream::write(v6, ")", 1uLL);
  }

  else
  {
    *v14 = 41;
    ++*(v6 + 4);
  }

  v15 = *a1[1];
  v16 = v4[1];
  v17 = *(v16 + 8);
  v18 = *(v16 + 32);
  v19[0] = *(v16 + 16);
  v19[1] = v18;
  v19[2] = *(v16 + 48);
  printIR(v15, v17, this, v19);
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
  *(&v16 + 1) = &unk_286867910;
  v17 = v5;
  v18 = v7;
  v19[0] = &unk_286867910;
  v19[1] = v8;
  v19[2] = v9;
  v20[0] = &v16 + 8;
  v20[1] = v19;
  llvm::raw_ostream::operator<<(a2, &v14);
  v10 = *a1[1];
  v11 = v4[1];
  v12 = *(v11 + 8);
  v13 = *(v11 + 32);
  v14 = *(v11 + 16);
  v15 = v13;
  v16 = *(v11 + 48);
  printIR(v10, v12, a2, &v14);
}

void *llvm::support::detail::provider_format_adapter<llvm::StringRef>::format(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v12 = 0;
    AsUnsignedInteger = llvm::getAsUnsignedInteger(a3, a4, 0xA, &v12);
    v7 = v12;
    if (AsUnsignedInteger)
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = -1;
  }

  v8 = *(a1 + 8);
  if (*(a1 + 16) >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = *(a1 + 16);
  }

  result = a2[4];
  if (v9 > a2[3] - result)
  {
    return llvm::raw_ostream::write(a2, v8, v9);
  }

  if (v9)
  {
    v11 = v9;
    result = memcpy(result, v8, v9);
    a2[4] += v11;
  }

  return result;
}

void anonymous namespace::BasicIRPrinterConfig::~BasicIRPrinterConfig(_anonymous_namespace_::BasicIRPrinterConfig *this)
{
  *this = &unk_286867958;
  v2 = this + 96;
  v3 = *(this + 15);
  if (v3 != v2)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(this + 11);
    if (v4 != (this + 64))
    {
      goto LABEL_5;
    }

LABEL_9:
    (*(*v4 + 32))(v4);
    return;
  }

  (*(*v3 + 32))(v3);
  v4 = *(this + 11);
  if (v4 == (this + 64))
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }
}

{
  *this = &unk_286867958;
  v2 = this + 96;
  v3 = *(this + 15);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(this + 11);
    if (v4 != (this + 64))
    {
LABEL_5:
      if (v4)
      {
        (*(*v4 + 40))(v4);
      }

LABEL_9:

      JUMPOUT(0x259C63180);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(this + 11);
    if (v4 != (this + 64))
    {
      goto LABEL_5;
    }
  }

  (*(*v4 + 32))(v4);
  goto LABEL_9;
}

uint64_t anonymous namespace::BasicIRPrinterConfig::printBeforeIfEnabled(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void), uint64_t a5)
{
  result = *(a1 + 88);
  if (result)
  {
    v9 = a3;
    v10 = a2;
    result = (*(*result + 48))(result, &v10, &v9);
    if (result)
    {
      return a4(a5, *(a1 + 128));
    }
  }

  return result;
}

uint64_t anonymous namespace::BasicIRPrinterConfig::printAfterIfEnabled(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void), uint64_t a5)
{
  result = *(a1 + 120);
  if (result)
  {
    v9 = a3;
    v10 = a2;
    result = (*(*result + 48))(result, &v10, &v9);
    if (result)
    {
      return a4(a5, *(a1 + 128));
    }
  }

  return result;
}

void anonymous namespace::FileTreeIRPrinterConfig::~FileTreeIRPrinterConfig(llvm **this)
{
  *this = &unk_2868679A0;
  llvm::deallocate_buffer(this[19], (16 * *(this + 42)));
}

{
  *this = &unk_2868679A0;
  llvm::deallocate_buffer(this[19], (16 * *(this + 42)));
}

uint64_t sub_256650094()
{
  if (*(v0 + 151) < 0)
  {
    operator delete(*(v0 + 128));
    v1 = *(v0 + 120);
    if (v1 != v0 + 96)
    {
LABEL_3:
      if (v1)
      {
        (*(*v1 + 40))(v1);
      }

      v2 = *(v0 + 88);
      if (v2 != v0 + 64)
      {
        goto LABEL_6;
      }

LABEL_11:
      (*(*v2 + 32))(v2);
      return v0;
    }
  }

  else
  {
    v1 = *(v0 + 120);
    if (v1 != v0 + 96)
    {
      goto LABEL_3;
    }
  }

  (*(*v1 + 32))(v1);
  v2 = *(v0 + 88);
  if (v2 == v0 + 64)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return v0;
}

void sub_2566501E0()
{
  if (*(v0 + 151) < 0)
  {
    operator delete(*(v0 + 128));
    v1 = *(v0 + 120);
    if (v1 != v0 + 96)
    {
LABEL_3:
      if (v1)
      {
        (*(*v1 + 40))(v1);
      }

      v2 = *(v0 + 88);
      if (v2 != v0 + 64)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v1 = *(v0 + 120);
    if (v1 != v0 + 96)
    {
      goto LABEL_3;
    }
  }

  (*(*v1 + 32))(v1);
  v2 = *(v0 + 88);
  if (v2 != v0 + 64)
  {
LABEL_6:
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

LABEL_11:

    JUMPOUT(0x259C63180);
  }

LABEL_10:
  (*(*v2 + 32))(v2);
  goto LABEL_11;
}

void anonymous namespace::FileTreeIRPrinterConfig::printBeforeIfEnabled(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  v6 = *(a1 + 88);
  if (v6)
  {
    v20 = a3;
    v21 = a2;
    if ((*(*v6 + 48))(v6, &v21, &v20))
    {
      v12 = (*(*a2 + 32))(a2);
      v15 = *(a1 + 128);
      v14 = a1 + 128;
      v13 = v15;
      v16 = *(v14 + 23);
      v17 = (v16 >= 0 ? v14 : v13);
      v18 = v16 >= 0 ? *(v14 + 23) : *(v14 + 8);
      createTreePrinterOutputPath(&v21, a3, v12, v11, v17, v18, v14 + 24);
      v19 = v21;
      if (v21)
      {
        a4(a5, *(v21 + 136));
        v19[24] = 1;
        if (v19[128] == 1)
        {
          llvm::raw_fd_ostream::~raw_fd_ostream((v19 + 32));
        }

        llvm::CleanupInstaller::~CleanupInstaller(v19);
        MEMORY[0x259C63180]();
      }
    }
  }
}

void anonymous namespace::FileTreeIRPrinterConfig::printAfterIfEnabled(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  v6 = *(a1 + 120);
  if (v6)
  {
    v20 = a3;
    v21 = a2;
    if ((*(*v6 + 48))(v6, &v21, &v20))
    {
      v12 = (*(*a2 + 32))(a2);
      v15 = *(a1 + 128);
      v14 = a1 + 128;
      v13 = v15;
      v16 = *(v14 + 23);
      v17 = (v16 >= 0 ? v14 : v13);
      v18 = v16 >= 0 ? *(v14 + 23) : *(v14 + 8);
      createTreePrinterOutputPath(&v21, a3, v12, v11, v17, v18, v14 + 24);
      v19 = v21;
      if (v21)
      {
        a4(a5, *(v21 + 136));
        v19[24] = 1;
        if (v19[128] == 1)
        {
          llvm::raw_fd_ostream::~raw_fd_ostream((v19 + 32));
        }

        llvm::CleanupInstaller::~CleanupInstaller(v19);
        MEMORY[0x259C63180]();
      }
    }
  }
}

void createTreePrinterOutputPath(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7)
{
  v7 = a7;
  v104[5] = *MEMORY[0x277D85DE8];
  v74[0] = a3;
  v74[1] = a4;
  v73 = a2;
  v102 = v104;
  v103 = 0x100000000;
  v98 = v100;
  v99 = 0xC00000000;
  v8 = *(a7 + 16);
  if (v8)
  {
    v9 = v8 - 1;
    v10 = v9 & ((a2 >> 4) ^ (a2 >> 9));
    v11 = *(*a7 + 16 * v10);
    if (v11 == a2)
    {
      goto LABEL_8;
    }

    v12 = 1;
    while (v11 != -4096)
    {
      v13 = v10 + v12++;
      v10 = v13 & v9;
      v11 = *(*a7 + 16 * v10);
      if (v11 == a2)
      {
        goto LABEL_8;
      }
    }
  }

  *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](a7, &v73) = -1;
  a2 = v73;
LABEL_8:
  v72 = a2;
  v14 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](v7, &v73);
  ++*v14;
  if (v72)
  {
    v15 = v7;
    do
    {
      v16 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](v7, &v72);
      if (v99 >= HIDWORD(v99))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(&v98->__r_.__value_.__l.__data_ + v99) = v16;
      LODWORD(v99) = v99 + 1;
      v17 = v72;
      if (!*(v72 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(v72, "sym_name", 8), (v19 & 1) == 0))
      {
        InherentAttr = mlir::DictionaryAttr::get(v17 + 56, "sym_name", 8uLL);
      }

      if (InherentAttr)
      {
        if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v20 = InherentAttr;
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }

      v71 = v20;
      v93 = *(*(v72 + 48) + 8);
      Value = mlir::StringAttr::getValue(&v93);
      if (Value)
      {
        v23 = v22;
        if (v22 > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_125:
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (v22 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v69) = v22;
        if (v22)
        {
          memmove(&__dst, Value, v22);
        }

        v7 = v15;
        *(&__dst + v23) = 0;
        v26 = HIBYTE(v69);
        v25 = __dst;
        v24 = v68;
      }

      else
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        __dst = 0;
        v68 = 0;
        v69 = 0;
        v7 = v15;
      }

      if ((v26 & 0x80u) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = v25;
      }

      if ((v26 & 0x80u) == 0)
      {
        v28 = v26;
      }

      else
      {
        v28 = v24;
      }

      llvm::split(p_dst, v28, 0x2Eu, v86);
      LOBYTE(v79) = v86[0];
      v80 = *&v86[8];
      v81 = v87;
      v82 = v88;
      if (v88 == v86)
      {
        *&v82 = &v79;
        *(&v82 + 1) = 1;
      }

      LOBYTE(v75) = v89;
      v76 = v90;
      v77 = v91;
      v78 = v92;
      if (v92 == &v89)
      {
        *&v78 = &v75;
        *(&v78 + 1) = 1;
      }

      LOBYTE(v93) = v86[0];
      v94 = *&v86[8];
      v95 = v87;
      v96 = v82;
      if (v82 == &v79)
      {
        *&v96 = &v93;
        *(&v96 + 1) = 1;
      }

      v83.__r_.__value_.__s.__data_[0] = v89;
      *&v83.__r_.__value_.__r.__words[1] = v90;
      v84 = v91;
      v85 = v78;
      if (v78 == &v75)
      {
        *&v85 = &v83;
        *(&v85 + 1) = 1;
      }

      llvm::detail::join_impl<llvm::SplittingIterator>(&v93, &v83, "_", 1uLL, &__p);
      if (SHIBYTE(v69) < 0)
      {
        operator delete(__dst);
        if (!v71)
        {
LABEL_49:
          *v86 = "no-symbol-name";
          *&v86[8] = 14;
          v30 = v103;
          if (v103 >= HIDWORD(v103))
          {
LABEL_50:
            llvm::SmallVectorTemplateBase<std::pair<std::string,llvm::StringRef>,false>::growAndEmplaceBack<std::string&,llvm::StringRef>();
          }

          goto LABEL_46;
        }
      }

      else if (!v71)
      {
        goto LABEL_49;
      }

      *v86 = mlir::StringAttr::getValue(&v71);
      *&v86[8] = v29;
      v30 = v103;
      if (v103 >= HIDWORD(v103))
      {
        goto LABEL_50;
      }

LABEL_46:
      v31 = &v102[40 * v30];
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v31, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v32 = *&__p.__r_.__value_.__l.__data_;
        *(v31 + 2) = *(&__p.__r_.__value_.__l + 2);
        *v31 = v32;
      }

      *(v31 + 24) = *v86;
      LODWORD(v103) = v103 + 1;
      ParentOp = *(v72 + 16);
      if (ParentOp)
      {
        ParentOp = mlir::Block::getParentOp(ParentOp);
      }

      v72 = ParentOp;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        ParentOp = v72;
      }
    }

    while (ParentOp);
  }

  v34 = v98;
  if (v99)
  {
    v35 = (v98 + 4 * v99 - 4);
    if (v35 > v98)
    {
      v36 = &v98->__r_.__value_.__s.__data_[4];
      do
      {
        v37 = *(v36 - 1);
        *(v36 - 1) = v35->__r_.__value_.__l.__data_;
        LODWORD(v35->__r_.__value_.__l.__data_) = v37;
        v35 = (v35 - 4);
        v38 = v36 >= v35;
        v36 += 4;
      }

      while (!v38);
    }
  }

  v39 = v102;
  v40 = &v102[40 * v103 - 40];
  if (v103)
  {
    v41 = v40 > v102;
  }

  else
  {
    v41 = 0;
  }

  if (v41)
  {
    do
    {
      v42 = *(v39 + 2);
      v43 = *v39;
      v44 = *(v40 + 2);
      *v39 = *v40;
      *(v39 + 2) = v44;
      *v40 = v43;
      *(v40 + 2) = v42;
      v45 = *(v39 + 24);
      *(v39 + 24) = *(v40 + 24);
      *(v40 + 24) = v45;
      v39 += 40;
      v40 -= 40;
    }

    while (v39 < v40);
    v34 = v98;
  }

  *v86 = "{0:$[_]}_{1}.mlir";
  *&v86[8] = 17;
  *&v86[16] = &v91;
  *&v87 = 2;
  BYTE8(v87) = 1;
  *&v88 = &unk_2868679E8;
  *(&v88 + 1) = v34;
  v89 = v34 + 4 * v99;
  *&v90 = &unk_286867A78;
  *(&v90 + 1) = v74;
  *&v91 = &v88;
  *(&v91 + 1) = &v90;
  memset(&v83, 0, sizeof(v83));
  LODWORD(v94) = 0;
  LOBYTE(v96) = 0;
  DWORD1(v96) = 1;
  *(&v94 + 1) = 0;
  v95 = 0uLL;
  v93 = &unk_2868A3EF8;
  *(&v96 + 1) = &v83;
  llvm::raw_ostream::SetBufferAndMode(&v93, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v93, v86);
  if (*(&v95 + 1) != *(&v94 + 1))
  {
    llvm::raw_ostream::flush_nonempty(&v93);
  }

  llvm::raw_ostream::~raw_ostream(&v93);
  v93 = &v94 + 8;
  *&v94 = 0x100000000;
  if (v103)
  {
    llvm::SmallVectorImpl<std::pair<std::string,llvm::StringRef>>::operator=(&v93, &v102);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v97, v83.__r_.__value_.__l.__data_, v83.__r_.__value_.__l.__size_);
    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v97 = v83;
  }

  if (v98 != v100)
  {
    free(v98);
  }

  v46 = v102;
  if (v103)
  {
    v47 = &v102[40 * v103 - 17];
    v48 = -40 * v103;
    v49 = v47;
    do
    {
      v50 = *v49;
      v49 -= 40;
      if (v50 < 0)
      {
        operator delete(*(v47 - 23));
      }

      v47 = v49;
      v48 += 40;
    }

    while (v48);
    v46 = v102;
  }

  if (v46 != v104)
  {
    free(v46);
  }

  *v86 = &v87;
  *&v86[8] = xmmword_257371870;
  if (a6 >= 0x81)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v51 = 0;
  v52 = &v87;
  if (a6)
  {
    memcpy(&v87, a5, a6);
    v52 = *v86;
    v51 = *&v86[8];
  }

  *&v86[8] = v51 + a6;
  if (createDirectoryOrPrintErr(v52, v51 + a6))
  {
    if (!v94)
    {
LABEL_109:
      v101 = 260;
      v98 = &v97;
      WORD4(v84) = 257;
      WORD4(v81) = 257;
      WORD4(v77) = 257;
      llvm::sys::path::append(v86, &v98, &v83, &v79, &v75);
      v98 = 0;
      v99 = 0;
      v100[0] = 0;
      mlir::openOutputFile();
    }

    v53 = 40 * v94;
    v54 = v93;
    while (1)
    {
      if (*(v54 + 23) >= 0)
      {
        v55 = *(v54 + 23);
      }

      else
      {
        v55 = v54[1];
      }

      if (v55 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_125;
      }

      if (v55 + 1 >= 0x17)
      {
        operator new();
      }

      v103 = 0;
      v104[0] = 0;
      v102 = 0;
      HIBYTE(v104[0]) = v55 + 1;
      if (v55)
      {
        if (*(v54 + 23) >= 0)
        {
          v56 = v54;
        }

        else
        {
          v56 = *v54;
        }

        memmove(&v102, v56, v55);
      }

      *(&v102 + v55) = 95;
      v57 = v54[3];
      v58 = v54[4];
      v98 = &v102;
      v100[0] = v57;
      v100[1] = v58;
      v101 = 1284;
      WORD4(v84) = 257;
      WORD4(v81) = 257;
      WORD4(v77) = 257;
      llvm::sys::path::append(v86, &v98, &v83, &v79, &v75);
      if (SHIBYTE(v104[0]) < 0)
      {
        operator delete(v102);
      }

      if ((createDirectoryOrPrintErr(*v86, *&v86[8]) & 1) == 0)
      {
        break;
      }

      v54 += 5;
      v53 -= 40;
      if (!v53)
      {
        goto LABEL_109;
      }
    }

    *a1 = 0;
  }

  else
  {
    *a1 = 0;
  }

  if (*v86 != &v87)
  {
    free(*v86);
  }

  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }

  v59 = v93;
  if (v94)
  {
    v60 = v93 + 40 * v94 - 17;
    v61 = -40 * v94;
    v62 = v60;
    do
    {
      v63 = *v62;
      v62 -= 40;
      if (v63 < 0)
      {
        operator delete(*(v60 - 23));
      }

      v60 = v62;
      v61 += 40;
    }

    while (v61);
    v59 = v93;
  }

  if (v59 != &v94 + 8)
  {
    free(v59);
  }
}

uint64_t createDirectoryOrPrintErr(const void *a1, std::string::size_type a2)
{
  v18 = 261;
  v17.__r_.__value_.__r.__words[0] = a1;
  v17.__r_.__value_.__l.__size_ = a2;
  directory = llvm::sys::fs::create_directory(&v17, 1, 0x1F8u);
  *&v19.__val_ = directory;
  v19.__cat_ = v5;
  if (!directory)
  {
    return 1;
  }

  v6 = llvm::errs(directory);
  v7 = v6[4];
  if (v6[3] - v7 > 0x1EuLL)
  {
    qmemcpy(v7, "Error while creating directory ", 31);
    v12 = v6[3];
    v8 = (v6[4] + 31);
    v6[4] = v8;
    if (a2 <= v12 - v8)
    {
LABEL_4:
      if (a2)
      {
        v9 = v6;
        memcpy(v8, a1, a2);
        v6 = v9;
        v8 = (v9[4] + a2);
        v9[4] = v8;
      }

      if (v6[3] - v8 <= 1uLL)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v6 = llvm::raw_ostream::write(v6, "Error while creating directory ", 0x1FuLL);
    v8 = v6[4];
    if (a2 <= v6[3] - v8)
    {
      goto LABEL_4;
    }
  }

  v6 = llvm::raw_ostream::write(v6, a1, a2);
  v8 = v6[4];
  if (v6[3] - v8 <= 1uLL)
  {
LABEL_7:
    v10 = llvm::raw_ostream::write(v6, ": ", 2uLL);
    goto LABEL_12;
  }

LABEL_11:
  *v8 = 8250;
  v10 = v6;
  v6[4] += 2;
LABEL_12:
  std::error_code::message(&v17, &v19);
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v17;
  }

  else
  {
    v13 = v17.__r_.__value_.__r.__words[0];
  }

  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v17.__r_.__value_.__l.__size_;
  }

  v15 = llvm::raw_ostream::write(v10, v13, size);
  v16 = v15[4];
  if (v15[3] == v16)
  {
    llvm::raw_ostream::write(v15, "\n", 1uLL);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }
  }

  else
  {
    *v16 = 10;
    ++v15[4];
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }
  }

  operator delete(v17.__r_.__value_.__l.__data_);
  return 0;
}

unint64_t llvm::split@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v22[0] = a3;
  v23 = 0uLL;
  *&v24 = a1;
  *(&v24 + 1) = a2;
  *&v25 = v22;
  *(&v25 + 1) = 1;
  v6 = llvm::StringRef::find(&v24, v22, 1uLL, 0);
  if (v6 == -1)
  {
    v11 = 0;
    v10 = 0;
    v8 = *(&v24 + 1);
    v7 = v24;
  }

  else
  {
    v7 = v24;
    if (v6 >= *(&v24 + 1))
    {
      v8 = *(&v24 + 1);
    }

    else
    {
      v8 = v6;
    }

    if (*(&v24 + 1) >= v6 + 1)
    {
      v9 = v6 + 1;
    }

    else
    {
      v9 = *(&v24 + 1);
    }

    v10 = v24 + v9;
    v11 = *(&v24 + 1) - v9;
  }

  *&v23 = v7;
  *(&v23 + 1) = v8;
  *&v24 = v10;
  *(&v24 + 1) = v11;
  v18[0] = a3;
  v19 = 0u;
  v20 = 0u;
  *&v21 = v18;
  *(&v21 + 1) = 1;
  result = llvm::StringRef::find(&v20, v18, 1uLL, 0);
  if (result == -1)
  {
    v17 = 0;
    v16 = 0;
    v14 = *(&v20 + 1);
    v13 = v20;
  }

  else
  {
    v13 = v20;
    if (result >= *(&v20 + 1))
    {
      v14 = *(&v20 + 1);
    }

    else
    {
      v14 = result;
    }

    if (*(&v20 + 1) >= result + 1)
    {
      v15 = result + 1;
    }

    else
    {
      v15 = *(&v20 + 1);
    }

    v16 = v20 + v15;
    v17 = *(&v20 + 1) - v15;
  }

  *&v19 = v13;
  *(&v19 + 1) = v14;
  *&v20 = v16;
  *(&v20 + 1) = v17;
  *a4 = v22[0];
  *(a4 + 8) = v23;
  *(a4 + 24) = v24;
  *(a4 + 40) = v25;
  if (v25 == v22)
  {
    *(a4 + 40) = a4;
    *(a4 + 48) = 1;
  }

  *(a4 + 56) = v18[0];
  *(a4 + 64) = v19;
  *(a4 + 80) = v20;
  *(a4 + 96) = v21;
  if (v21 == v18)
  {
    *(a4 + 96) = a4 + 56;
    *(a4 + 104) = 1;
  }

  return result;
}

unint64_t llvm::detail::join_impl<llvm::SplittingIterator>@<X0>(unint64_t result@<X0>, char *a2@<X1>, const std::string::value_type *a3@<X2>, std::string::size_type a4@<X3>, std::string *a5@<X8>)
{
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  v6 = (result + 8);
  v7 = (a2 + 8);
  if (*(result + 8) != *(a2 + 1))
  {
    v10 = result;
    v11 = *result;
    v44 = *result;
    v45 = *v6;
    v46 = *(result + 24);
    v13 = (result + 40);
    v47 = *(result + 40);
    v12 = v47;
    if (v47 == result)
    {
      *&v47 = &v44;
      *(&v47 + 1) = 1;
    }

    v14 = *a2;
    v40 = *a2;
    v15 = *(a2 + 24);
    v41 = *v7;
    v42 = v15;
    v43 = *(a2 + 40);
    if (*(a2 + 5) == a2)
    {
      *&v43 = &v40;
      *(&v43 + 1) = 1;
    }

    v52 = v11;
    v16 = *(result + 24);
    v53 = *v6;
    v54 = v16;
    v55 = v47;
    if (v47 == &v44)
    {
      *&v55 = &v52;
      *(&v55 + 1) = 1;
    }

    v48 = v14;
    v49 = *v7;
    v50 = *(a2 + 24);
    v51 = v43;
    if (v43 == &v40)
    {
      *&v51 = &v48;
      *(&v51 + 1) = 1;
    }

    v17 = -1;
    if (v53 != v49)
    {
      do
      {
        while (1)
        {
          v21 = *(&v55 + 1);
          v22 = llvm::StringRef::find(&v54, v55, *(&v55 + 1), 0);
          if (v22 != -1)
          {
            break;
          }

          v53 = v54;
          v54 = 0uLL;
          ++v17;
          if (v49 == v53)
          {
            goto LABEL_21;
          }
        }

        v18 = v54;
        if (v22 >= *(&v54 + 1))
        {
          v19 = *(&v54 + 1);
        }

        else
        {
          v19 = v22;
        }

        if (*(&v54 + 1) >= v22 + v21)
        {
          v20 = v22 + v21;
        }

        else
        {
          v20 = *(&v54 + 1);
        }

        *&v53 = v54;
        *(&v53 + 1) = v19;
        *&v54 = v54 + v20;
        *(&v54 + 1) -= v20;
        ++v17;
      }

      while (v49 != v18);
LABEL_21:
      v11 = *v10;
      v12 = *(v10 + 40);
    }

    v23 = v17 * a4;
    v52 = v11;
    v24 = *(v10 + 24);
    v53 = *v6;
    v54 = v24;
    v55 = *v13;
    if (v12 == v10)
    {
      *&v55 = &v52;
      *(&v55 + 1) = 1;
    }

    if (v53 != *v7)
    {
      v25 = *(&v53 + 1);
      do
      {
        v31 = *(&v55 + 1);
        v32 = llvm::StringRef::find(&v54, v55, *(&v55 + 1), 0);
        if (v32 == -1)
        {
          v30 = 0;
          v29 = 0;
          v27 = *(&v54 + 1);
          v26 = v54;
        }

        else
        {
          v26 = v54;
          if (v32 >= *(&v54 + 1))
          {
            v27 = *(&v54 + 1);
          }

          else
          {
            v27 = v32;
          }

          if (*(&v54 + 1) >= v32 + v31)
          {
            v28 = v32 + v31;
          }

          else
          {
            v28 = *(&v54 + 1);
          }

          v29 = v54 + v28;
          v30 = *(&v54 + 1) - v28;
        }

        v23 += v25;
        *&v53 = v26;
        *(&v53 + 1) = v27;
        *&v54 = v29;
        *(&v54 + 1) = v30;
        v25 = v27;
      }

      while (*v7 != v26);
    }

    std::string::reserve(a5, v23);
    while (1)
    {
      std::string::append(a5, *(v10 + 8), *(v10 + 16));
      v33 = *(v10 + 48);
      result = llvm::StringRef::find((v10 + 24), *(v10 + 40), v33, 0);
      if (result == -1)
      {
        v38 = *(v10 + 24);
        v39 = *(v10 + 32);
        *(v10 + 8) = v38;
        *(v10 + 16) = v39;
        *(v10 + 24) = 0;
        *(v10 + 32) = 0;
        if (*v7 == v38)
        {
          return result;
        }
      }

      else
      {
        v34 = *(v10 + 24);
        v35 = *(v10 + 32);
        if (result >= v35)
        {
          v36 = *(v10 + 32);
        }

        else
        {
          v36 = result;
        }

        if (v35 >= result + v33)
        {
          v37 = result + v33;
        }

        else
        {
          v37 = *(v10 + 32);
        }

        *(v10 + 8) = v34;
        *(v10 + 16) = v36;
        *(v10 + 24) = v34 + v37;
        *(v10 + 32) = v35 - v37;
        if (*v7 == v34)
        {
          return result;
        }
      }

      std::string::append(a5, a3, a4);
    }
  }

  return result;
}

void *llvm::format_provider<llvm::iterator_range<unsigned int *>,void>::format(unsigned int **a1, llvm::StringRef *a2, unsigned __int8 *a3, size_t a4)
{
  result = llvm::format_provider<llvm::iterator_range<unsigned int *>,void>::parseOptions(a3, a4, &v14);
  v7 = v14;
  v8 = v15;
  v9 = v16;
  v10 = v17;
  v11 = *a1;
  v12 = a1[1];
  if (v11 != v12)
  {
    v14 = &unk_286867A30;
    v15 = v11;
    result = llvm::format_provider<unsigned int,void>::format(v11++, a2, v16, v17);
  }

  if (v11 != v12)
  {
    if (v8)
    {
      do
      {
        v13 = *(a2 + 4);
        if (v8 <= *(a2 + 3) - v13)
        {
          memcpy(v13, v7, v8);
          *(a2 + 4) += v8;
        }

        else
        {
          llvm::raw_ostream::write(a2, v7, v8);
        }

        v14 = &unk_286867A30;
        v15 = v11;
        result = llvm::format_provider<unsigned int,void>::format(v11++, a2, v9, v10);
      }

      while (v11 != v12);
    }

    else
    {
      do
      {
        v14 = &unk_286867A30;
        v15 = v11;
        result = llvm::format_provider<unsigned int,void>::format(v11++, a2, v9, v10);
      }

      while (v11 != v12);
    }
  }

  return result;
}

unsigned __int8 *llvm::format_provider<llvm::iterator_range<unsigned int *>,void>::parseOptions@<X0>(unsigned __int8 *result@<X0>, size_t a2@<X1>, const char **a3@<X8>)
{
  if (!a2)
  {
    goto LABEL_8;
  }

  v3 = *result;
  if (v3 != 36)
  {
    v13 = ", ";
    v12 = 2;
    v4 = result;
    if (v3 != 64)
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  if (!--a2)
  {
LABEL_8:
    v10 = 0;
    v11 = "";
    v12 = 2;
    v13 = ", ";
    goto LABEL_35;
  }

  v4 = result + 1;
  v5 = result[1];
  switch(v5)
  {
    case '(':
      v6 = result;
      v7 = a2;
      v8 = a3;
      v9 = "()";
      break;
    case '[':
      v6 = result;
      v7 = a2;
      v8 = a3;
      v9 = "[]";
      break;
    case '<':
      v6 = result;
      v7 = a2;
      v8 = a3;
      v9 = "<>";
      break;
    default:
      v13 = ", ";
      v12 = 2;
      if (v5 != 64)
      {
        goto LABEL_34;
      }

      goto LABEL_29;
  }

  result = memchr(result + 1, v9[1], v7);
  v13 = ", ";
  v12 = 2;
  if (result)
  {
    v14 = result - v4;
    a3 = v8;
    a2 = v7;
    if (result - v4 != -1)
    {
      if (result == v4)
      {
        v15 = 1;
      }

      else
      {
        v15 = result - v4;
      }

      if (v15 >= v7)
      {
        v15 = v7;
      }

      v13 = (v6 + 2);
      v12 = v15 - 1;
      if (v7 >= v14 + 1)
      {
        v16 = v14 + 1;
      }

      else
      {
        v16 = v7;
      }

      a2 = v7 - v16;
      if (v7 == v16)
      {
        goto LABEL_34;
      }

      v4 += v16;
    }
  }

  else
  {
    a3 = v8;
    a2 = v7;
  }

  if (*v4 != 64)
  {
LABEL_34:
    v10 = 0;
    v11 = "";
    goto LABEL_35;
  }

LABEL_29:
  v17 = a2 - 1;
  if (a2 == 1)
  {
    goto LABEL_34;
  }

  v18 = v4 + 1;
  v19 = v4[1];
  switch(v19)
  {
    case '(':
      v20 = a3;
      v21 = "()";
      break;
    case '[':
      v20 = a3;
      v21 = "[]";
      break;
    case '<':
      v20 = a3;
      v21 = "<>";
      break;
    default:
      goto LABEL_34;
  }

  result = memchr(v4 + 1, v21[1], v17);
  v10 = 0;
  v11 = "";
  if (result)
  {
    a3 = v20;
    if (result - v18 != -1)
    {
      if (result == v18)
      {
        v22 = 1;
      }

      else
      {
        v22 = result - v18;
      }

      if (v22 >= v17)
      {
        v22 = v17;
      }

      v11 = (v4 + 2);
      v10 = v22 - 1;
    }
  }

  else
  {
    a3 = v20;
  }

LABEL_35:
  *a3 = v13;
  a3[1] = v12;
  a3[2] = v11;
  a3[3] = v10;
  return result;
}

void *llvm::format_provider<unsigned int,void>::format(unsigned int *a1, llvm::StringRef *a2, unsigned __int8 *a3, uint64_t a4)
{
  v15 = a3;
  v16 = a4;
  v6 = llvm::support::detail::HelperFunctions::consumeHexStyle(&v15, a2);
  if ((v6 & 0x100000000) == 0)
  {
    if (v16)
    {
      v8 = 0;
      v9 = *v15;
      if (v9 <= 0x63)
      {
        if (v9 != 68)
        {
          if (v9 != 78)
          {
            goto LABEL_20;
          }

          goto LABEL_17;
        }

LABEL_18:
        v8 = 0;
        ++v15;
        goto LABEL_19;
      }

      if (v9 == 100)
      {
        goto LABEL_18;
      }

      if (v9 == 110)
      {
LABEL_17:
        ++v15;
        v8 = 1;
LABEL_19:
        --v16;
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_20:
    v17 = 0;
    if (llvm::consumeUnsignedInteger(&v15, 0xA, &v17, v7))
    {
      v14 = 0;
    }

    else
    {
      v14 = v17;
    }

    return llvm::write_integer(a2, *a1, v14, v8);
  }

  v10 = v6;
  v17 = 0;
  if (llvm::consumeUnsignedInteger(&v15, 0xA, &v17, v7))
  {
    v11 = 0;
  }

  else
  {
    v11 = v17;
  }

  if (llvm::isPrefixedHexStyle(v10))
  {
    v12 = v11 + 2;
  }

  else
  {
    v12 = v11;
  }

  return llvm::write_hex(a2, *a1, v10, v12, 1);
}

void *llvm::support::detail::provider_format_adapter<llvm::StringRef &>::format(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  if (a4)
  {
    v12 = 0;
    AsUnsignedInteger = llvm::getAsUnsignedInteger(a3, a4, 0xA, &v12);
    v7 = v12;
    if (AsUnsignedInteger)
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = -1;
  }

  v8 = *v5;
  if (*(v5 + 8) >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = *(v5 + 8);
  }

  result = a2[4];
  if (v9 > a2[3] - result)
  {
    return llvm::raw_ostream::write(a2, v8, v9);
  }

  if (v9)
  {
    v11 = v9;
    result = memcpy(result, v8, v9);
    a2[4] += v11;
  }

  return result;
}

uint64_t *llvm::SmallVectorImpl<std::pair<std::string,llvm::StringRef>>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 2);
    v5 = *(a1 + 2);
    if (v5 >= v4)
    {
      if (v4)
      {
        v10 = *a2;
        v11 = *a2 + 40 * v4;
        v12 = *a1;
        do
        {
          std::string::operator=(v12, v10);
          *(v12 + 24) = *(v10 + 24);
          v10 += 40;
          v12 += 40;
        }

        while (v10 != v11);
        v13 = *a1;
        LODWORD(v5) = *(a1 + 2);
      }

      else
      {
        v13 = *a1;
        v12 = *a1;
      }

      v18 = (v13 + 40 * v5);
      while (v18 != v12)
      {
        v19 = *(v18 - 17);
        v18 -= 5;
        if (v19 < 0)
        {
          operator delete(*v18);
        }
      }

      goto LABEL_25;
    }

    if (*(a1 + 3) < v4)
    {
      if (v5)
      {
        v6 = *a1 + 40 * v5 - 17;
        v7 = -40 * v5;
        v8 = v6;
        do
        {
          v9 = *v8;
          v8 -= 40;
          if (v9 < 0)
          {
            operator delete(*(v6 - 23));
          }

          v6 = v8;
          v7 += 40;
        }

        while (v7);
      }

      *(a1 + 2) = 0;
      llvm::SmallVectorBase<unsigned int>::mallocForGrow();
    }

    v14 = *a1;
    if (v5)
    {
      v15 = *a2;
      v16 = *a2 + 40 * v5;
      do
      {
        std::string::operator=(v14, v15);
        *(v14 + 24) = *(v15 + 24);
        v15 += 40;
        v14 += 40;
      }

      while (v15 != v16);
      v14 = *a1;
      v17 = *(a2 + 2);
      if (v5 != v17)
      {
LABEL_27:
        v21 = *a2;
        v22 = 40 * v5;
        v23 = 40 * v17;
        do
        {
          v25 = (v14 + v22);
          v26 = (v21 + v22);
          if (*(v21 + v22 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(v25, *v26, *(v26 + 1));
          }

          else
          {
            v27 = *v26;
            v25->__r_.__value_.__r.__words[2] = *(v26 + 2);
            *&v25->__r_.__value_.__l.__data_ = v27;
          }

          v24 = v21 + v22;
          v21 += 40;
          *(v14 + v22 + 24) = *(v24 + 24);
          v14 += 40;
          v23 -= 40;
        }

        while (v22 != v23);
      }
    }

    else
    {
      v5 = 0;
      v17 = *(a2 + 2);
      if (*(a2 + 2))
      {
        goto LABEL_27;
      }
    }

LABEL_25:
    *(a1 + 2) = v4;
  }

  return a1;
}

void *mlir::PassExecutionAction::PassExecutionAction(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[1] = &mlir::PassExecutionAction::resolveTypeID(void)::id;
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  *result = &unk_286867AC0;
  return result;
}

{
  result[1] = &mlir::PassExecutionAction::resolveTypeID(void)::id;
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  *result = &unk_286867AC0;
  return result;
}

llvm::raw_ostream *mlir::PassExecutionAction::print(mlir::PassExecutionAction *this, llvm::raw_ostream *a2)
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
  v11[1] = 38;
  v11[2] = v16;
  v11[3] = 3;
  v12 = 1;
  v13[0] = &unk_286867CB0;
  v13[1] = &mlir::PassExecutionAction::tag;
  v14[0] = &unk_286867910;
  v14[1] = v4;
  v14[2] = v6;
  v15[0] = &unk_286867CF8;
  v15[1] = v9;
  v16[0] = v13;
  v16[1] = v14;
  v16[2] = v15;
  return llvm::raw_ostream::operator<<(a2, v11);
}

unint64_t mlir::PassExecutionAction::getOp(mlir::PassExecutionAction *this)
{
  v1 = (*(*this + 32))(this);
  if (!v2)
  {
    return 0;
  }

  if ((*v1 & 6) != 0)
  {
    return 0;
  }

  return *v1 & 0xFFFFFFFFFFFFFFF8;
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
  v14 = &unk_2868A3EF8;
  v21 = v22;
  llvm::raw_ostream::SetBufferAndMode(&v14, 0, 0, 0);
  if ((mlir::detail::PassOptions::parseFromString(a1 + 152, a2, a3, &v14) & 1) == 0)
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
  {
    if (v4 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      goto LABEL_3;
    }
  }

  else
  {
    mlir::Pass::printAsTextualPipeline();
    if (v4 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
LABEL_3:
      v5 = (*(*this + 32))(this);
      if (v6)
      {
        v7 = v5;
        v8 = v6;
        v9 = *(a2 + 4);
        if (v6 > *(a2 + 3) - v9)
        {
          v10 = a2;
          v11 = v7;
          v12 = v8;
LABEL_17:
          llvm::raw_ostream::write(v10, v11, v12);
          goto LABEL_18;
        }

        memcpy(v9, v7, v6);
        *(a2 + 4) += v8;
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

        v16 = (*(*this + 16))(this);
        v17 = v15;
        v18 = *(v14 + 4);
        if (v15 <= *(v14 + 3) - v18)
        {
          if (v15)
          {
            memcpy(v18, v16, v15);
            v18 = (*(v14 + 4) + v17);
            *(v14 + 4) = v18;
          }
        }

        else
        {
          v14 = llvm::raw_ostream::write(v14, v16, v15);
          v18 = *(v14 + 4);
        }

        if (*(v14 + 3) == v18)
        {
          v11 = ">";
          v10 = v14;
          v12 = 1;
          goto LABEL_17;
        }

        *v18 = 62;
        ++*(v14 + 4);
      }

LABEL_18:

      mlir::detail::PassOptions::print((this + 152), a2);
      return;
    }
  }

  v19 = *(this + 88);
  if (v19)
  {
    v20 = *(this + 43);
    mlir::OpPassManager::printAsTextualPipeline(v20, a2);
    if (v19 != 1)
    {
      v21 = v20 + 1;
      v22 = 8 * v19 - 8;
      do
      {
        while (1)
        {
          v23 = *(a2 + 4);
          if (*(a2 + 3) != v23)
          {
            break;
          }

          llvm::raw_ostream::write(a2, ",", 1uLL);
          mlir::OpPassManager::printAsTextualPipeline(v21++, a2);
          v22 -= 8;
          if (!v22)
          {
            return;
          }
        }

        *v23 = 44;
        ++*(a2 + 4);
        mlir::OpPassManager::printAsTextualPipeline(v21++, a2);
        v22 -= 8;
      }

      while (v22);
    }
  }
}

void mlir::detail::OpPassManagerImpl::mergeInto(mlir::detail::OpPassManagerImpl *this, mlir::detail::OpPassManagerImpl *a2)
{
  v3 = *(this + 5);
  v4 = *(this + 6);
  if (v3 != v4)
  {
    do
    {
      std::vector<std::unique_ptr<mlir::RewritePattern>>::push_back[abi:nn200100](a2 + 40, v3++);
    }

    while (v3 != v4);
    v3 = *(this + 5);
    v4 = *(this + 6);
  }

  while (v4 != v3)
  {
    v7 = *--v4;
    v6 = v7;
    *v4 = 0;
    if (v7)
    {
      (*(*v6 + 8))(v6);
    }
  }

  *(this + 6) = v3;
}

void mlir::detail::OpPassManagerImpl::nest()
{
  operator new();
}

{
  mlir::OpPassManager::OpPassManager();
}

{
  operator new();
}

void mlir::detail::OpPassManagerImpl::addPass(_BYTE *a1, uint64_t **a2)
{
  v3 = a1;
  v4 = a1[23];
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (a1[23])
    {
      goto LABEL_3;
    }

LABEL_13:
    v6 = *a2;
    goto LABEL_14;
  }

  if (!*(a1 + 1))
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v4 >= 0)
  {
    v5 = a1[23];
  }

  else
  {
    a1 = *a1;
    v5 = *(v3 + 1);
  }

  v6 = *a2;
  if ((*a2)[4])
  {
    v8 = v6[2];
    v7 = v6[3];
    if (v5 != v7 || v5 && memcmp(a1, v6[2], v5))
    {
      if (!*(v3 + 17))
      {
        mlir::OpPassManager::OpPassManager();
      }

      v36 = "Can't add pass '";
      v37 = 259;
      v21 = (*(*v6 + 16))(v6);
      v35 = 261;
      v34[0] = v21;
      v34[1] = v22;
      llvm::operator+(&v36, v34, v38);
      v32 = "' restricted to '";
      v33 = 259;
      llvm::operator+(v38, &v32, v39);
      v31 = 261;
      v30[0] = v8;
      v30[1] = v7;
      llvm::operator+(v39, v30, v40);
      v28 = "' on a PassManager intended to run on '";
      v29 = 259;
      llvm::operator+(v40, &v28, v41);
      v27 = 261;
      v26[0] = mlir::detail::OpPassManagerImpl::getOpAnchorName(v3);
      v26[1] = v23;
      llvm::operator+(v41, v26, v42);
      v24 = "', did you intend to nest?";
      v25 = 259;
      llvm::operator+(v42, &v24, v43);
      llvm::report_fatal_error(v43, 1);
    }
  }

LABEL_14:
  v10 = *(v3 + 6);
  v9 = *(v3 + 7);
  if (v10 >= v9)
  {
    v12 = *(v3 + 5);
    v13 = v10 - v12;
    v14 = (v10 - v12) >> 3;
    v15 = v14 + 1;
    if ((v14 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v16 = v9 - v12;
    if (v16 >> 2 > v15)
    {
      v15 = v16 >> 2;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      v17 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      if (!(v17 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v18 = v14;
    v19 = (8 * v14);
    *a2 = 0;
    v20 = &v19[-v18];
    *v19 = v6;
    v11 = v19 + 1;
    memcpy(v20, v12, v13);
    *(v3 + 5) = v20;
    *(v3 + 6) = v11;
    *(v3 + 7) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *a2 = 0;
    *v10 = v6;
    v11 = v10 + 8;
  }

  *(v3 + 6) = v11;
}

uint64_t *mlir::OpPassManager::addPass(_BYTE **a1, uint64_t **a2)
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
  if (v1 < 0)
  {
    return *this;
  }

  return this;
}

void *mlir::detail::OpPassManagerImpl::clear(void *this)
{
  v1 = this;
  v2 = this[5];
  v3 = this[6];
  while (v3 != v2)
  {
    v4 = *--v3;
    this = v4;
    *v3 = 0;
    if (v4)
    {
      this = (*(*this + 8))(this);
    }
  }

  v1[6] = v2;
  return this;
}

BOOL mlir::detail::OpPassManagerImpl::finalizePassList(mlir::detail::OpPassManagerImpl *this, mlir::MLIRContext *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = *(this + 5);
  v6 = *(this + 6);
  v4 = (this + 40);
  if (v5 == v6)
  {
    goto LABEL_24;
  }

  v7 = 0;
  do
  {
    v8 = v7;
    v7 = *v5;
    v9 = *(*v5 + 8);
    {
      if (v9 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v49 = v9;
      mlir::Pass::printAsTextualPipeline();
      if (v49 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
      {
LABEL_14:
        if (v8 && (mlir::detail::OpToOpPassAdaptor::tryMergeInto(v7, a2, v8) & 1) != 0)
        {
          v13 = *v5;
          *v5 = 0;
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }

          v7 = v8;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      v10 = *(v8 + 352);
      if (v10)
      {
        v11 = *(v8 + 344);
        v12 = 8 * v10;
        while ((mlir::detail::OpPassManagerImpl::finalizePassList(*v11, a2) & 1) != 0)
        {
          ++v11;
          v12 -= 8;
          if (!v12)
          {
            goto LABEL_3;
          }
        }

        return 0;
      }
    }

LABEL_3:
    v7 = 0;
LABEL_4:
    ++v5;
  }

  while (v5 != v6);
  if (v7)
  {
    v14 = *(v7 + 352);
    if (v14)
    {
      v15 = *(v7 + 344);
      v16 = 8 * v14;
      while ((mlir::detail::OpPassManagerImpl::finalizePassList(*v15, a2) & 1) != 0)
      {
        ++v15;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_24;
        }
      }

      return 0;
    }
  }

LABEL_24:
  llvm::erase_if<std::vector<std::unique_ptr<mlir::Pass>>,std::logical_not<std::unique_ptr<mlir::Pass>>>(v4);
  v17 = *(this + 23);
  if (v17 < 0)
  {
    if (!*(this + 1))
    {
      goto LABEL_39;
    }
  }

  else if (!*(this + 23))
  {
    goto LABEL_39;
  }

  if ((*(this + 32) & 1) == 0)
  {
    if (v17 >= 0)
    {
      v19 = this;
    }

    else
    {
      v19 = *this;
    }

    if (v17 >= 0)
    {
      v20 = *(this + 23);
    }

    else
    {
      v20 = *(this + 1);
    }

    mlir::OperationName::OperationName(&v53, v19, v20, a2);
    v21 = v53;
    if ((*(this + 32) & 1) == 0)
    {
      *(this + 32) = 1;
    }

    *(this + 3) = v21;
  }

LABEL_39:
  if ((*(this + 8) & 1) == 0)
  {
    return 1;
  }

  v22 = *(*(this + 3) + 16);
  if (v22 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(this + 3);
  }

  v24 = *(this + 5);
  v25 = *(this + 6);
  result = 1;
  if (v24 != v25 && v22 != &mlir::detail::TypeIDResolver<void,void>::id)
  {
    if ((*(**v24 + 72))())
    {
      v27 = v24 + 1;
      while (v27 != v25)
      {
        v28 = *v27++;
        if (((*(*v28 + 72))(v28, v23) & 1) == 0)
        {
          v24 = v27 - 1;
          goto LABEL_50;
        }
      }

      return 1;
    }

LABEL_50:
    v29 = mlir::UnknownLoc::get(a2, v26);
    mlir::emitError(v29, &v53);
    if (v53)
    {
      LODWORD(v50) = 3;
      *(&v50 + 1) = "unable to schedule pass '";
      v51 = 25;
      if (v56 >= v57)
      {
        if (v55 > &v50 || v55 + 24 * v56 <= &v50)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v30 = v55 + 24 * v56;
      v31 = v50;
      *(v30 + 2) = v51;
      *v30 = v31;
      ++v56;
    }

    v32 = (*(**v24 + 16))();
    if (v53)
    {
      v52 = 261;
      *&v50 = v32;
      *(&v50 + 1) = v33;
      mlir::Diagnostic::operator<<(v54, &v50);
      if (v53)
      {
        LODWORD(v50) = 3;
        *(&v50 + 1) = "' on a PassManager intended to run on '";
        v51 = 39;
        if (v56 >= v57)
        {
          if (v55 > &v50 || v55 + 24 * v56 <= &v50)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v34 = v55 + 24 * v56;
        v35 = v50;
        *(v34 + 2) = v51;
        *v34 = v35;
        ++v56;
      }
    }

    v36 = *(this + 23);
    if (v36 < 0)
    {
      if (!*(this + 1))
      {
        goto LABEL_67;
      }

LABEL_59:
      v37 = *this;
      if (v36 < 0)
      {
        v36 = *(this + 1);
      }

      else
      {
        v37 = this;
      }

      if (v53)
      {
LABEL_68:
        v52 = 261;
        *&v50 = v37;
        *(&v50 + 1) = v36;
        mlir::Diagnostic::operator<<(v54, &v50);
        if (v53)
        {
          LODWORD(v50) = 3;
          *(&v50 + 1) = "'!";
          v51 = 2;
          if (v56 >= v57)
          {
            if (v55 > &v50 || v55 + 24 * v56 <= &v50)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v38 = v55 + 24 * v56;
          v39 = v50;
          *(v38 + 2) = v51;
          *v38 = v39;
          ++v56;
        }
      }
    }

    else
    {
      if (*(this + 23))
      {
        goto LABEL_59;
      }

LABEL_67:
      v37 = "any";
      v36 = 3;
      if (v53)
      {
        goto LABEL_68;
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v53);
    v40 = result;
    if (v53)
    {
      mlir::InFlightDiagnostic::report(&v53);
      result = v40;
    }

    if (v64)
    {
      if (v63 != &v64)
      {
        free(v63);
        result = v40;
      }

      v41 = __p;
      if (__p)
      {
        v42 = v62;
        v43 = __p;
        if (v62 != __p)
        {
          do
          {
            v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
          }

          while (v42 != v41);
          v43 = __p;
        }

        v62 = v41;
        operator delete(v43);
        result = v40;
      }

      v44 = v59;
      if (v59)
      {
        v45 = v60;
        v46 = v59;
        if (v60 != v59)
        {
          do
          {
            v48 = *--v45;
            v47 = v48;
            *v45 = 0;
            if (v48)
            {
              MEMORY[0x259C63150](v47, 0x1000C8077774924);
            }
          }

          while (v45 != v44);
          v46 = v59;
        }

        v60 = v44;
        operator delete(v46);
        result = v40;
      }

      if (v55 != &v58)
      {
        free(v55);
        return v40;
      }
    }
  }

  return result;
}

uint64_t mlir::detail::OpToOpPassAdaptor::tryMergeInto(mlir::detail::OpToOpPassAdaptor *this, mlir::MLIRContext *a2, mlir::detail::OpToOpPassAdaptor *a3)
{
  v5 = *(this + 88);
  if (v5)
  {
    v6 = 8 * v5;
    v7 = *(this + 43);
    while (1)
    {
      v8 = *(*v7 + 23);
      if (v8 < 0)
      {
        v8 = (*v7)[1];
      }

      if (!v8)
      {
        break;
      }

      ++v7;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    v7 = *(this + 43);
  }

  if (v7 != (*(this + 43) + 8 * v5))
  {
    v9 = *(a3 + 88);
    if (v9)
    {
      v10 = *(a3 + 43);
      for (i = 8 * v9; i; i -= 8)
      {
        v12 = *v10;
        v13 = *(*v10 + 23);
        if (v13 < 0)
        {
          if (!v12[1])
          {
            goto LABEL_26;
          }
        }

        else if (!*(*v10 + 23))
        {
          goto LABEL_26;
        }

        if ((v12[4] & 1) == 0)
        {
          if (v13 >= 0)
          {
            v14 = *v10;
          }

          else
          {
            v14 = *v12;
          }

          if (v13 >= 0)
          {
            v15 = *(*v10 + 23);
          }

          else
          {
            v15 = v12[1];
          }

          mlir::OperationName::OperationName(&v69, v14, v15, a2);
          if ((v12[4] & 1) == 0)
          {
            *(v12 + 32) = 1;
          }

          v12[3] = v69;
        }

LABEL_26:
        if (v12[4] & 1) == 0 || (mlir::detail::OpPassManagerImpl::canScheduleOn(*v7, a2, v12[3]))
        {
          return 0;
        }

        ++v10;
      }
    }
  }

LABEL_29:
  v16 = *(a3 + 88);
  if (v16)
  {
    v17 = 8 * v16;
    v18 = *(a3 + 43);
    while (1)
    {
      v19 = *(*v18 + 23);
      if (v19 < 0)
      {
        v19 = (*v18)[1];
      }

      if (!v19)
      {
        break;
      }

      ++v18;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_57;
      }
    }
  }

  else
  {
    v18 = *(a3 + 43);
  }

  if (v18 == (*(a3 + 43) + 8 * v16))
  {
LABEL_57:
    v27 = *(this + 88);
    if (!v27)
    {
      goto LABEL_127;
    }

    v28 = *(this + 43);
    v68 = &v28[v27];
    while (1)
    {
      v29 = *v28;
      v30 = *(*v28 + 23);
      if (v30 < 0)
      {
        if (!*(v29 + 8))
        {
LABEL_102:
          v31 = "any";
          v32 = 3;
          v33 = *(a3 + 43);
          v34 = *(a3 + 88);
          if (v34)
          {
            goto LABEL_69;
          }

          goto LABEL_103;
        }
      }

      else if (!*(*v28 + 23))
      {
        goto LABEL_102;
      }

      if (v30 >= 0)
      {
        v31 = *v28;
      }

      else
      {
        v31 = *v29;
      }

      if (v30 >= 0)
      {
        v32 = *(*v28 + 23);
      }

      else
      {
        v32 = *(v29 + 8);
      }

      v33 = *(a3 + 43);
      v34 = *(a3 + 88);
      if (v34)
      {
LABEL_69:
        v35 = 8 * v34;
        v36 = v33;
        if (v32 == 3)
        {
          while (1)
          {
            v41 = *v36;
            v45 = (*v36)[23];
            if (v45 < 0)
            {
              if (!*(v41 + 1))
              {
LABEL_85:
                v41 = "any";
                goto LABEL_86;
              }
            }

            else if (!(*v36)[23])
            {
              goto LABEL_85;
            }

            v46 = *(v41 + 1);
            if (v45 >= 0)
            {
              v46 = (*v36)[23];
            }

            if (v46 != 3)
            {
              goto LABEL_90;
            }

            if (v45 < 0)
            {
              v41 = *v41;
            }

LABEL_86:
            v42 = *v41;
            v43 = *(v41 + 2);
            if (v42 == *v31 && v43 == v31[2])
            {
              goto LABEL_104;
            }

LABEL_90:
            ++v36;
            v35 -= 8;
            if (!v35)
            {
              goto LABEL_59;
            }
          }
        }

        while (2)
        {
          v37 = *v36;
          v38 = (*v36)[23];
          if (v38 < 0)
          {
            if (!*(v37 + 1))
            {
              goto LABEL_71;
            }
          }

          else if (!(*v36)[23])
          {
LABEL_71:
            ++v36;
            v35 -= 8;
            if (!v35)
            {
              goto LABEL_59;
            }

            continue;
          }

          break;
        }

        v39 = *(v37 + 1);
        if (v38 >= 0)
        {
          v39 = (*v36)[23];
        }

        if (v39 == v32)
        {
          if (!v32)
          {
            goto LABEL_104;
          }

          v40 = v38 >= 0 ? *v36 : *v37;
          if (!memcmp(v40, v31, v32))
          {
            goto LABEL_104;
          }
        }

        goto LABEL_71;
      }

LABEL_103:
      v36 = v33;
LABEL_104:
      if (v36 == &v33[v34] || !v36)
      {
LABEL_59:
        llvm::SmallVectorImpl<mlir::OpPassManager>::emplace_back<mlir::OpPassManager>(a3 + 43, v28++);
        if (v28 == v68)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v48 = *(v29 + 40);
        v47 = *(v29 + 48);
        if (v48 != v47)
        {
          v49 = *v36;
          v50 = *(v49 + 6);
          do
          {
            v52 = *(v49 + 7);
            if (v50 < v52)
            {
              v51 = *v48;
              *v48 = 0;
              *v50 = v51;
              v50 += 8;
            }

            else
            {
              v53 = *(v49 + 5);
              v54 = v50 - v53;
              v55 = (v50 - v53) >> 3;
              v56 = v55 + 1;
              if ((v55 + 1) >> 61)
              {
                std::string::__throw_length_error[abi:nn200100]();
              }

              v57 = v52 - v53;
              if (v57 >> 2 > v56)
              {
                v56 = v57 >> 2;
              }

              if (v57 >= 0x7FFFFFFFFFFFFFF8)
              {
                v58 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v58 = v56;
              }

              if (v58)
              {
                if (!(v58 >> 61))
                {
                  operator new();
                }

                std::string::__throw_length_error[abi:nn200100]();
              }

              v59 = (v50 - v53) >> 3;
              v60 = (8 * v55);
              v61 = *v48;
              *v48 = 0;
              v62 = (8 * v55 - 8 * v59);
              *v60 = v61;
              v50 = (v60 + 1);
              memcpy(v62, v53, v54);
              *(v49 + 5) = v62;
              *(v49 + 6) = v50;
              *(v49 + 7) = 0;
              if (v53)
              {
                operator delete(v53);
              }
            }

            *(v49 + 6) = v50;
            ++v48;
          }

          while (v48 != v47);
          v48 = *(v29 + 40);
          v47 = *(v29 + 48);
        }

        while (v47 != v48)
        {
          v64 = *--v47;
          v63 = v64;
          *v47 = 0;
          if (v64)
          {
            (*(*v63 + 8))(v63);
          }
        }

        *(v29 + 48) = v48;
        if (++v28 == v68)
        {
          goto LABEL_127;
        }
      }
    }
  }

  v20 = *(this + 88);
  if (v20)
  {
    v21 = *(this + 43);
    v22 = 8 * v20;
    while (1)
    {
      v23 = *v21;
      v24 = *(*v21 + 23);
      if (v24 < 0)
      {
        if (!v23[1])
        {
          goto LABEL_54;
        }
      }

      else if (!*(*v21 + 23))
      {
        goto LABEL_54;
      }

      if ((v23[4] & 1) == 0)
      {
        if (v24 >= 0)
        {
          v25 = *v21;
        }

        else
        {
          v25 = *v23;
        }

        if (v24 >= 0)
        {
          v26 = *(*v21 + 23);
        }

        else
        {
          v26 = v23[1];
        }

        mlir::OperationName::OperationName(&v69, v25, v26, a2);
        if ((v23[4] & 1) == 0)
        {
          *(v23 + 32) = 1;
        }

        v23[3] = v69;
      }

LABEL_54:
      if (v23[4] & 1) == 0 || (mlir::detail::OpPassManagerImpl::canScheduleOn(*v18, a2, v23[3]))
      {
        return 0;
      }

      ++v21;
      v22 -= 8;
      if (!v22)
      {
        goto LABEL_57;
      }
    }
  }

LABEL_127:
  llvm::SmallVectorImpl<mlir::OpPassManager>::clear(this + 344);
  v65 = *(a3 + 88);
  if (v65 >= 2)
  {
    qsort(*(a3 + 43), v65, 8uLL, mlir::detail::OpToOpPassAdaptor::tryMergeInto(mlir::MLIRContext *,mlir::detail::OpToOpPassAdaptor&)::$_2::__invoke);
  }

  return 1;
}

void *llvm::erase_if<std::vector<std::unique_ptr<mlir::Pass>>,std::logical_not<std::unique_ptr<mlir::Pass>>>(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    while (*v2)
    {
      if (++v2 == v3)
      {
        return result;
      }
    }

    if (v2 != v3)
    {
      v4 = v2 + 1;
      if (v2 + 1 != v3)
      {
        do
        {
          v5 = *v4;
          if (*v4)
          {
            *v4 = 0;
            result = *v2;
            *v2 = v5;
            if (result)
            {
              result = (*(*result + 8))(result);
            }

            ++v2;
          }

          ++v4;
        }

        while (v4 != v3);
        v3 = v1[1];
      }
    }
  }

  if (v2 != v3)
  {
    while (v3 != v2)
    {
      v6 = *--v3;
      result = v6;
      *v3 = 0;
      if (v6)
      {
        result = (*(*result + 8))(result);
      }
    }

    v1[1] = v2;
  }

  return result;
}

uint64_t mlir::detail::OpPassManagerImpl::canScheduleOn(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 23);
  if (v5 < 0)
  {
    if (!a1[1])
    {
      goto LABEL_15;
    }
  }

  else if (!*(a1 + 23))
  {
    goto LABEL_15;
  }

  if ((a1[4] & 1) == 0)
  {
    v6 = a3;
    if (v5 >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    if (v5 >= 0)
    {
      v8 = *(a1 + 23);
    }

    else
    {
      v8 = a1[1];
    }

    mlir::OperationName::OperationName(&v17, v7, v8, a2);
    v9 = v17;
    if ((a1[4] & 1) == 0)
    {
      *(a1 + 32) = 1;
    }

    a1[3] = v9;
    a3 = v6;
  }

LABEL_15:
  if (a1[4])
  {
    return a1[3] == a3;
  }

  v11 = *(a3 + 16);
  if (v11 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3;
  }

  if (v11 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return 0;
  }

  {
    mlir::detail::OpPassManagerImpl::canScheduleOn();
  }

  result = (*(*v12 + 32))(v12, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v13 = a1[5];
    v14 = a1[6];
    if (v13 == v14)
    {
      return 1;
    }

    else
    {
      v15 = v13 + 8;
      do
      {
        result = (*(**(v15 - 8) + 72))(*(v15 - 8), v12);
        if (result)
        {
          v16 = v15 == v14;
        }

        else
        {
          v16 = 1;
        }

        v15 += 8;
      }

      while (!v16);
    }
  }

  return result;
}

void mlir::OpPassManager::OpPassManager()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

uint64_t *mlir::OpPassManager::OpPassManager(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    v5 = *(v4 + 40);
    if (v5)
    {
      v6 = *(v4 + 48);
      v7 = *(v4 + 40);
      if (v6 != v5)
      {
        do
        {
          v9 = *--v6;
          v8 = v9;
          *v6 = 0;
          if (v9)
          {
            (*(*v8 + 8))(v8);
          }
        }

        while (v6 != v5);
        v7 = *(v4 + 40);
      }

      *(v4 + 48) = v5;
      operator delete(v7);
    }

    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x259C63180](v4, 0x1032C402C5CA452);
  }

  return a1;
}

{
  *a1 = 0;
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    v5 = *(v4 + 40);
    if (v5)
    {
      v6 = *(v4 + 48);
      v7 = *(v4 + 40);
      if (v6 != v5)
      {
        do
        {
          v9 = *--v6;
          v8 = v9;
          *v6 = 0;
          if (v9)
          {
            (*(*v8 + 8))(v8);
          }
        }

        while (v6 != v5);
        v7 = *(v4 + 40);
      }

      *(v4 + 48) = v5;
      operator delete(v7);
    }

    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x259C63180](v4, 0x1032C402C5CA452);
  }

  return a1;
}

uint64_t *mlir::OpPassManager::operator=(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    v5 = *(v4 + 40);
    if (v5)
    {
      v6 = *(v4 + 48);
      v7 = *(v4 + 40);
      if (v6 != v5)
      {
        do
        {
          v9 = *--v6;
          v8 = v9;
          *v6 = 0;
          if (v9)
          {
            (*(*v8 + 8))(v8);
          }
        }

        while (v6 != v5);
        v7 = *(v4 + 40);
      }

      *(v4 + 48) = v5;
      operator delete(v7);
    }

    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x259C63180](v4, 0x1032C402C5CA452);
  }

  return a1;
}

void mlir::OpPassManager::OpPassManager(mlir::OpPassManager *this, const mlir::OpPassManager *a2)
{
  *this = 0;
  mlir::OpPassManager::operator=();
}

{
  *this = 0;
  mlir::OpPassManager::operator=();
}

void mlir::OpPassManager::~OpPassManager(mlir::OpPassManager *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      v3 = *(v1 + 48);
      v4 = *(v1 + 40);
      if (v3 != v2)
      {
        do
        {
          v6 = *--v3;
          v5 = v6;
          *v3 = 0;
          if (v6)
          {
            (*(*v5 + 8))(v5);
          }
        }

        while (v3 != v2);
        v4 = *(v1 + 40);
      }

      *(v1 + 48) = v2;
      operator delete(v4);
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    MEMORY[0x259C63180](v1, 0x1032C402C5CA452);
  }
}

{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      v3 = *(v1 + 48);
      v4 = *(v1 + 40);
      if (v3 != v2)
      {
        do
        {
          v6 = *--v3;
          v5 = v6;
          *v3 = 0;
          if (v6)
          {
            (*(*v5 + 8))(v5);
          }
        }

        while (v3 != v2);
        v4 = *(v1 + 40);
      }

      *(v1 + 48) = v2;
      operator delete(v4);
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    MEMORY[0x259C63180](v1, 0x1032C402C5CA452);
  }
}

uint64_t mlir::OpPassManager::begin(mlir::OpPassManager *this)
{
  return *(*this + 40);
}

{
  return *(*this + 40);
}

uint64_t mlir::OpPassManager::end(mlir::OpPassManager *this)
{
  return *(*this + 48);
}

{
  return *(*this + 48);
}

void mlir::OpPassManager::nest()
{
  mlir::detail::OpPassManagerImpl::nest();
}

{
  mlir::detail::OpPassManagerImpl::nest();
}

uint64_t *mlir::OpPassManager::clear(uint64_t *this)
{
  v1 = *this;
  v2 = *(*this + 40);
  v3 = *(*this + 48);
  while (v3 != v2)
  {
    v4 = *--v3;
    this = v4;
    *v3 = 0;
    if (v4)
    {
      this = (*(*this + 8))(this);
    }
  }

  *(v1 + 48) = v2;
  return this;
}

uint64_t mlir::OpPassManager::getOpName@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  v3 = *(*this + 23);
  if (v3 < 0)
  {
    if (v2[1])
    {
      goto LABEL_3;
    }

LABEL_7:
    *a2 = 0;
    *(a2 + 16) = 0;
    return this;
  }

  if (!*(*this + 23))
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = v2[1];
  if (v3 < 0)
  {
    v2 = *v2;
    v3 = v4;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 1;
  return this;
}

uint64_t mlir::OpPassManager::getOpName(mlir::OpPassManager *this, mlir::MLIRContext *a2)
{
  v3 = *this;
  v4 = *(*this + 23);
  if (v4 < 0)
  {
    if (!v3[1])
    {
      return v3[3];
    }
  }

  else if (!*(*this + 23))
  {
    return v3[3];
  }

  if (v3[4])
  {
    return v3[3];
  }

  if (v4 >= 0)
  {
    v6 = *this;
  }

  else
  {
    v6 = *v3;
  }

  if (v4 >= 0)
  {
    v7 = *(*this + 23);
  }

  else
  {
    v7 = v3[1];
  }

  mlir::OperationName::OperationName(&v9, v6, v7, a2);
  v8 = v9;
  if ((v3[4] & 1) == 0)
  {
    *(v3 + 32) = 1;
  }

  v3[3] = v8;
  return v8;
}

const char *mlir::OpPassManager::getOpAnchorName(mlir::OpPassManager *this)
{
  v1 = *this;
  v2 = *(*this + 23);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (*(*this + 23))
    {
      goto LABEL_3;
    }

    return "any";
  }

  if (!v1[1])
  {
    return "any";
  }

LABEL_3:
  if (v2 >= 0)
  {
    return *this;
  }

  else
  {
    return *v1;
  }
}

void printAsTextualPipeline(llvm::raw_ostream *this, const void *a2, size_t a3, mlir::Pass ***a4)
{
  v7 = *(this + 3);
  v6 = *(this + 4);
  if (a3 <= v7 - v6)
  {
    if (a3)
    {
      memcpy(v6, a2, a3);
      v6 = (*(this + 4) + a3);
      *(this + 4) = v6;
    }

    v8 = this;
    if (*(this + 3) != v6)
    {
LABEL_3:
      *v6 = 40;
      ++*(v8 + 4);
      v9 = *a4;
      v10 = a4[1];
      if (*a4 == v10)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v8 = llvm::raw_ostream::write(this, a2, a3);
    v6 = *(v8 + 4);
    if (*(v8 + 3) != v6)
    {
      goto LABEL_3;
    }
  }

  llvm::raw_ostream::write(v8, "(", 1uLL);
  v9 = *a4;
  v10 = a4[1];
  if (*a4 == v10)
  {
    goto LABEL_14;
  }

LABEL_9:
  v13 = *v9;
  v12 = v9 + 1;
  mlir::Pass::printAsTextualPipeline(v13, this);
  while (v12 != v10)
  {
    while (1)
    {
      v15 = *(this + 4);
      if (*(this + 3) == v15)
      {
        break;
      }

      *v15 = 44;
      ++*(this + 4);
      v14 = *v12++;
      mlir::Pass::printAsTextualPipeline(v14, this);
      if (v12 == v10)
      {
        goto LABEL_14;
      }
    }

    llvm::raw_ostream::write(this, ",", 1uLL);
    v16 = *v12++;
    mlir::Pass::printAsTextualPipeline(v16, this);
  }

LABEL_14:
  v17 = *(this + 4);
  if (*(this + 3) == v17)
  {

    llvm::raw_ostream::write(this, ")", 1uLL);
  }

  else
  {
    *v17 = 41;
    ++*(this + 4);
  }
}

void *mlir::OpPassManager::printAsTextualPipeline(const char **this, llvm::raw_ostream *a2)
{
  v3 = *this;
  v4 = (*this)[23];
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((*this)[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    v5 = "any";
    v6 = 3;
    v7 = *(v3 + 5);
    v8 = *(v3 + 6);
    result = *(a2 + 4);
    if (*(a2 + 3) - result < 3uLL)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!*(v3 + 1))
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v4 >= 0)
  {
    v5 = *this;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >= 0)
  {
    v6 = (*this)[23];
  }

  else
  {
    v6 = *(v3 + 1);
  }

  v7 = *(v3 + 5);
  v8 = *(v3 + 6);
  result = *(a2 + 4);
  if (v6 > *(a2 + 3) - result)
  {
LABEL_10:
    v10 = llvm::raw_ostream::write(a2, v5, v6);
    result = *(v10 + 4);
    if (*(v10 + 3) != result)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_15:
  if (v6)
  {
    v11 = v6;
    memcpy(result, v5, v6);
    result = (*(a2 + 4) + v11);
    *(a2 + 4) = result;
  }

  v10 = a2;
  if (*(a2 + 3) != result)
  {
LABEL_11:
    *result = 40;
    ++*(v10 + 4);
    if (v7 == v8)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = llvm::raw_ostream::write(v10, "(", 1uLL);
  if (v7 == v8)
  {
    goto LABEL_24;
  }

LABEL_19:
  v13 = *v7;
  v12 = v7 + 1;
  for (result = mlir::Pass::printAsTextualPipeline(v13, a2); v12 != v8; result = mlir::Pass::printAsTextualPipeline(v16, a2))
  {
    while (1)
    {
      v15 = *(a2 + 4);
      if (*(a2 + 3) == v15)
      {
        break;
      }

      *v15 = 44;
      ++*(a2 + 4);
      v14 = *v12++;
      result = mlir::Pass::printAsTextualPipeline(v14, a2);
      if (v12 == v8)
      {
        goto LABEL_24;
      }
    }

    llvm::raw_ostream::write(a2, ",", 1uLL);
    v16 = *v12++;
  }

LABEL_24:
  v17 = *(a2 + 4);
  if (*(a2 + 3) == v17)
  {

    return llvm::raw_ostream::write(a2, ")", 1uLL);
  }

  else
  {
    *v17 = 41;
    ++*(a2 + 4);
  }

  return result;
}

void *mlir::OpPassManager::dump(mlir::OpPassManager *this)
{
  v2 = llvm::errs(this);
  v3 = *(v2 + 4);
  if ((*(v2 + 3) - v3) > 0x11)
  {
    *(v3 + 16) = 8296;
    *v3 = *"Pass Manager with ";
    *(v2 + 4) += 18;
  }

  else
  {
    v2 = llvm::raw_ostream::write(v2, "Pass Manager with ", 0x12uLL);
  }

  v4 = llvm::raw_ostream::operator<<(v2, (*(*this + 48) - *(*this + 40)) >> 3);
  v5 = *(v4 + 4);
  if ((*(v4 + 3) - v5) > 8)
  {
    *(v5 + 8) = 10;
    *v5 = *" passes:\n";
    *(v4 + 4) += 9;
  }

  else
  {
    v4 = llvm::raw_ostream::write(v4, " passes:\n", 9uLL);
  }

  v6 = llvm::errs(v4);
  v7 = mlir::OpPassManager::printAsTextualPipeline(this, v6);
  result = llvm::errs(v7);
  v9 = result[4];
  if (result[3] == v9)
  {

    return llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  else
  {
    *v9 = 10;
    ++result[4];
  }

  return result;
}

uint64_t mlir::OpPassManager::getDependentDialects(uint64_t result, uint64_t a2)
{
  v2 = *(*result + 40);
  for (i = *(*result + 48); v2 != i; result = (*(*v5 + 24))(v5, a2))
  {
    v5 = *v2++;
  }

  return result;
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
    v9 = *v5;
    v10 = *(*v5 + 8);
    {
      break;
    }

    v8 = v9;
    mlir::Pass::printAsTextualPipeline();
    v9 = v8;
    if (v10 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      goto LABEL_9;
    }

LABEL_5:
    if (((*(*v9 + 64))(v9, a2) & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    if (++v5 == v6)
    {
      return 1;
    }
  }

  if (v10 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
  {
    goto LABEL_5;
  }

LABEL_9:
  v11 = *(v9 + 352);
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = *(v9 + 344);
  v13 = 8 * v11;
  while ((mlir::OpPassManager::initialize(v12, a2, a3) & 1) != 0)
  {
    v12 = (v12 + 8);
    v13 -= 8;
    if (!v13)
    {
      goto LABEL_6;
    }
  }

  return 0;
}

unint64_t mlir::OpPassManager::hash(mlir::OpPassManager *this)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 40);
  v2 = *(*this + 48);
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0uLL;
    while (1)
    {
      v6 = *v1;
      v7 = *(*v1 + 8);
      {
        if (v7 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
        {
          goto LABEL_7;
        }
      }

      else
      {
        mlir::OpPassManager::hash();
        v4 = 0uLL;
        if (v7 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
        {
LABEL_7:
          v8 = *(v6 + 352);
          if (v8)
          {
            v9 = *(v6 + 344);
            v10 = 8 * v8;
            do
            {
              v11 = mlir::OpPassManager::hash(v9);
              v21 = 0;
              v19 = 0u;
              v20 = 0u;
              v17 = 0u;
              v18 = 0u;
              v15 = 0u;
              v16 = 0u;
              v22 = 0xFF51AFD7ED558CCDLL;
              v13 = v3;
              v14 = v11;
              llvm::hashing::detail::hash_combine_recursive_helper::combine(&v13, 0, &v15, &v18);
              v9 = (v9 + 8);
              v10 -= 8;
            }

            while (v10);
            v4 = 0uLL;
          }

          goto LABEL_4;
        }
      }

      v21 = 0;
      v19 = v4;
      v20 = v4;
      v17 = v4;
      v18 = v4;
      v15 = v4;
      v16 = v4;
      v22 = 0xFF51AFD7ED558CCDLL;
      v13 = v3;
      v14 = v6;
      v5 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v13, 0, &v15, &v18);
      v4 = 0uLL;
      v3 = v5;
LABEL_4:
      if (++v1 == v2)
      {
        return v3;
      }
    }
  }

  return 0;
}

BOOL mlir::detail::OpToOpPassAdaptor::run(void *a1, mlir::Operation *a2, mlir::detail::NestedAnalysisMap *a3, char a4, int a5)
{
  v90 = *MEMORY[0x277D85DE8];
  v75 = a1;
  v76 = a3;
  v74 = a2;
  v73 = a4;
  v72 = a5;
  v5 = *(a2 + 6);
  if (v5[2] == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v71 = 257;
    mlir::Operation::emitOpError(v80, a2, &v68);
    if (v80[0])
    {
      LODWORD(v77) = 3;
      *(&v77 + 1) = "trying to schedule a pass on an unregistered operation";
      v78 = 54;
      if (v82 >= HIDWORD(v82))
      {
        if (v81 > &v77 || &v81[24 * v82] <= &v77)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v24 = &v81[24 * v82];
      v25 = v77;
      *(v24 + 2) = v78;
      *v24 = v25;
      LODWORD(v82) = v82 + 1;
    }

    v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v80);
    if (v80[0])
    {
      mlir::InFlightDiagnostic::report(v80);
    }

    if (v89 == 1)
    {
      if (v88 != &v89)
      {
        free(v88);
      }

      v27 = v86;
      if (v86)
      {
        v28 = v87;
        v29 = v86;
        if (v87 != v86)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = v86;
        }

        v87 = v27;
        operator delete(v29);
      }

      v30 = v84;
      if (!v84)
      {
        goto LABEL_83;
      }

      v31 = v85;
      v32 = v84;
      if (v85 == v84)
      {
        goto LABEL_82;
      }

      do
      {
        v34 = *--v31;
        v33 = v34;
        *v31 = 0;
        if (v34)
        {
          MEMORY[0x259C63150](v33, 0x1000C8077774924);
        }
      }

      while (v31 != v30);
      goto LABEL_81;
    }
  }

  else
  {
    {
      v52 = v5;
      mlir::detail::OpToOpPassAdaptor::run();
      v5 = v52;
    }

    if ((*(*v5 + 4))(v5, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      v6 = v74;
      v7 = v75;
      if (*(*(v74 + 6) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(v74 + 6);
      }

      v9 = (*(*v75 + 72))(v75, v8);
      if (v9)
      {
        v10 = v76;
        v11 = *(v76 + 9);
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

        v67 = v12;
        *&v77 = llvm::get_threadid(v9);
        *(&v77 + 1) = v75;
        v80[0] = &v74;
        v80[1] = &v72;
        v80[2] = &v76;
        v81 = &v73;
        v82 = &v67;
        v83 = &v77;
        if (*(v75 + 120) == 1)
        {
          v14 = v75[8];
          if (v14 != v75[7])
          {
            free(v14);
            v6 = v74;
            v10 = v76;
            v12 = v67;
          }
        }

        v7[5] = v6 & 0xFFFFFFFFFFFFFFFBLL;
        v7[6] = v10;
        v7[7] = v7 + 11;
        v7[8] = v7 + 11;
        v7[9] = 2;
        *(v7 + 20) = 0;
        v7[13] = llvm::function_ref<llvm::LogicalResult ()(mlir::OpPassManager &,mlir::Operation *)>::callback_fn<mlir::detail::OpToOpPassAdaptor::run(mlir::Pass *,mlir::Operation *,mlir::AnalysisManager,BOOL,unsigned int)::$_0>;
        v7[14] = v80;
        *(v7 + 120) = 1;
        if (v12)
        {
          v15 = *v12;
          std::recursive_mutex::lock(*v12);
          v16 = *v12;
          v17 = *(*v12 + 72);
          v18 = *&v16[1].__m_.__opaque[8];
          while (v17 != v18)
          {
            v19 = *v17++;
            (*(*v19 + 32))(v19, v7, v6);
          }

          std::recursive_mutex::unlock(v15);
          v6 = v74;
        }

        v66 = 0;
        Context = mlir::Attribute::getContext((v6 + 24));
        v68 = &v75;
        v69 = &v73;
        v70 = &v66;
        v21 = v75;
        v79 = v74 & 0xFFFFFFFFFFFFFFF9;
        if (mlir::MLIRContext::hasActionHandler(Context))
        {
          mlir::MLIRContext::executeActionInternal<mlir::PassExecutionAction,mlir::Pass &>(Context, llvm::function_ref<void ()(void)>::callback_fn<mlir::detail::OpToOpPassAdaptor::run(mlir::Pass *,mlir::Operation *,mlir::AnalysisManager,BOOL,unsigned int)::$_1>, &v68, &v79, 1, v21);
          goto LABEL_101;
        }

        v22 = v75;
        v23 = v75[1];
        {
          if (v23 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
          {
LABEL_23:
            (*(**v68 + 56))();
LABEL_100:
            *v70 = (*(*v68 + 40) & 4) != 0;
LABEL_101:
            mlir::detail::NestedAnalysisMap::invalidate(v76, (v75 + 7));
            v55 = v66;
            if ((v66 & 1) == 0)
            {
              if (v73 == 1)
              {
                v56 = v75[1];
                {
                  v57 = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id;
                  if (mlir::detail::PreservedAnalyses::isAll(v75 + 7))
                  {
                    goto LABEL_105;
                  }
                }

                else
                {
                  mlir::OpPassManager::hash();
                  v57 = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id;
                  if (mlir::detail::PreservedAnalyses::isAll(v75 + 7))
                  {
LABEL_105:
                    v55 = v66;
                    v58 = v67;
                    if (!v67)
                    {
                      return (v55 & 1) == 0;
                    }

                    goto LABEL_109;
                  }
                }

                v55 = mlir::verify(v74, (v56 != v57)) ^ 1;
                v66 = v55 & 1;
                v58 = v67;
                if (!v67)
                {
                  return (v55 & 1) == 0;
                }

                goto LABEL_109;
              }

              v55 = 0;
            }

            v58 = v67;
            if (!v67)
            {
              return (v55 & 1) == 0;
            }

LABEL_109:
            v60 = v74;
            v59 = v75;
            v61 = *v58;
            std::recursive_mutex::lock(*v58);
            v63 = *(*v58)[1].__m_.__opaque;
            v62 = *&(*v58)[1].__m_.__opaque[8];
            if (v55)
            {
              while (v62 != v63)
              {
                v64 = *(v62 - 8);
                v62 -= 8;
                (*(*v64 + 48))(v64, v59, v60);
              }
            }

            else
            {
              while (v62 != v63)
              {
                v65 = *(v62 - 8);
                v62 -= 8;
                (*(*v65 + 40))(v65, v59, v60);
              }
            }

            std::recursive_mutex::unlock(v61);
            v55 = v66;
            return (v55 & 1) == 0;
          }
        }

        else
        {
          mlir::OpPassManager::hash();
          if (v23 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
          {
            goto LABEL_23;
          }
        }

        v53 = *v69;
        v54 = mlir::Attribute::getContext(((*(v22 + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
        if (mlir::MLIRContext::isMultithreadingEnabled(v54))
        {
          mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(v22, v53);
        }

        mlir::detail::OpToOpPassAdaptor::runOnOperationImpl(v22, v53);
        goto LABEL_100;
      }

      v71 = 257;
      mlir::Operation::emitOpError(v80, v74, &v68);
      if (v80[0])
      {
        LODWORD(v77) = 3;
        *(&v77 + 1) = "trying to schedule a pass on an unsupported operation";
        v78 = 53;
        if (v82 >= HIDWORD(v82))
        {
          if (v81 > &v77 || &v81[24 * v82] <= &v77)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v43 = &v81[24 * v82];
        v44 = v77;
        *(v43 + 2) = v78;
        *v43 = v44;
        LODWORD(v82) = v82 + 1;
      }

      v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v80);
      if (v80[0])
      {
        mlir::InFlightDiagnostic::report(v80);
      }

      if (v89 == 1)
      {
        if (v88 != &v89)
        {
          free(v88);
        }

        v45 = v86;
        if (v86)
        {
          v46 = v87;
          v47 = v86;
          if (v87 != v86)
          {
            do
            {
              v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
            }

            while (v46 != v45);
            v47 = v86;
          }

          v87 = v45;
          operator delete(v47);
        }

        v30 = v84;
        if (!v84)
        {
          goto LABEL_83;
        }

        v48 = v85;
        v32 = v84;
        if (v85 == v84)
        {
LABEL_82:
          v85 = v30;
          operator delete(v32);
LABEL_83:
          if (v81 != &v83)
          {
            free(v81);
          }

          return v26;
        }

        do
        {
          v50 = *--v48;
          v49 = v50;
          *v48 = 0;
          if (v50)
          {
            MEMORY[0x259C63150](v49, 0x1000C8077774924);
          }
        }

        while (v48 != v30);
LABEL_81:
        v32 = v84;
        goto LABEL_82;
      }
    }

    else
    {
      v71 = 257;
      mlir::Operation::emitOpError(v80, v74, &v68);
      if (v80[0])
      {
        LODWORD(v77) = 3;
        *(&v77 + 1) = "trying to schedule a pass on an operation not marked as 'IsolatedFromAbove'";
        v78 = 75;
        if (v82 >= HIDWORD(v82))
        {
          if (v81 > &v77 || &v81[24 * v82] <= &v77)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v35 = &v81[24 * v82];
        v36 = v77;
        *(v35 + 2) = v78;
        *v35 = v36;
        LODWORD(v82) = v82 + 1;
      }

      v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v80);
      if (v80[0])
      {
        mlir::InFlightDiagnostic::report(v80);
      }

      if (v89 == 1)
      {
        if (v88 != &v89)
        {
          free(v88);
        }

        v37 = v86;
        if (v86)
        {
          v38 = v87;
          v39 = v86;
          if (v87 != v86)
          {
            do
            {
              v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
            }

            while (v38 != v37);
            v39 = v86;
          }

          v87 = v37;
          operator delete(v39);
        }

        v30 = v84;
        if (!v84)
        {
          goto LABEL_83;
        }

        v40 = v85;
        v32 = v84;
        if (v85 == v84)
        {
          goto LABEL_82;
        }

        do
        {
          v42 = *--v40;
          v41 = v42;
          *v40 = 0;
          if (v42)
          {
            MEMORY[0x259C63150](v41, 0x1000C8077774924);
          }
        }

        while (v40 != v30);
        goto LABEL_81;
      }
    }
  }

  return v26;
}

void mlir::PassInstrumentor::runBeforePass(std::recursive_mutex **this, mlir::Pass *a2, Operation *a3)
{
  v6 = *this;
  std::recursive_mutex::lock(*this);
  v7 = *this;
  v8 = *(*this)[1].__m_.__opaque;
  v9 = *&v7[1].__m_.__opaque[8];
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(*v10 + 32))(v10, a2, a3);
  }

  std::recursive_mutex::unlock(v6);
}

BOOL mlir::detail::PreservedAnalyses::isAll(const void ***this)
{
  {
    v2 = mlir::detail::TypeIDResolver<mlir::detail::PreservedAnalyses::AllAnalysesType,void>::resolveTypeID(void)::id;
    v3 = *this;
    v4 = this[1];
    if (v4 != *this)
    {
      goto LABEL_3;
    }
  }

  else
  {
    mlir::detail::PreservedAnalyses::preserveAll();
    v2 = mlir::detail::TypeIDResolver<mlir::detail::PreservedAnalyses::AllAnalysesType,void>::resolveTypeID(void)::id;
    v3 = *this;
    v4 = this[1];
    if (v4 != *this)
    {
LABEL_3:
      v3 = llvm::SmallPtrSetImplBase::doFind(this, v2);
      v4 = *this;
      v5 = this[1];
      if (!v3)
      {
        v6 = 16;
        if (v5 == v4)
        {
          v6 = 20;
        }

        v3 = &v5[*(this + v6)];
      }

      goto LABEL_14;
    }
  }

  v7 = *(this + 5);
  if (v7)
  {
    v8 = 8 * v7;
    while (*v3 != v2)
    {
      ++v3;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v3 = &v4[v7];
  }

  v5 = v4;
LABEL_14:
  v9 = v5 == v4;
  v10 = 16;
  if (v9)
  {
    v10 = 20;
  }

  return v3 != &v5[*(this + v10)];
}

void mlir::PassInstrumentor::runAfterPassFailed(std::recursive_mutex **this, mlir::Pass *a2, Operation *a3)
{
  v6 = *this;
  std::recursive_mutex::lock(*this);
  v8 = *(*this)[1].__m_.__opaque;
  for (i = *&(*this)[1].__m_.__opaque[8]; i != v8; i -= 8)
  {
    v9 = *(i - 8);
    (*(*v9 + 48))(v9, a2, a3);
  }

  std::recursive_mutex::unlock(v6);
}

void mlir::PassInstrumentor::runAfterPass(std::recursive_mutex **this, mlir::Pass *a2, Operation *a3)
{
  v6 = *this;
  std::recursive_mutex::lock(*this);
  v8 = *(*this)[1].__m_.__opaque;
  for (i = *&(*this)[1].__m_.__opaque[8]; i != v8; i -= 8)
  {
    v9 = *(i - 8);
    (*(*v9 + 40))(v9, a2, a3);
  }

  std::recursive_mutex::unlock(v6);
}

uint64_t mlir::detail::OpToOpPassAdaptor::runPipeline(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::recursive_mutex **a6, uint64_t a7)
{
  v8 = a6;
  v44 = a3;
  if (!a6)
  {
    goto LABEL_19;
  }

  Context = mlir::Attribute::getContext((a2 + 24));
  v15 = *a1;
  v16 = *(*a1 + 23);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v42 = a1;
    if (!*(*a1 + 23))
    {
      goto LABEL_16;
    }

LABEL_6:
    if ((v15[4] & 1) == 0)
    {
      if (v16 >= 0)
      {
        v17 = *a1;
      }

      else
      {
        v17 = *v15;
      }

      if (v16 >= 0)
      {
        v18 = *(*a1 + 23);
      }

      else
      {
        v18 = v15[1];
      }

      mlir::OperationName::OperationName(&v45, v17, v18, Context);
      v19 = v45;
      if ((v15[4] & 1) == 0)
      {
        *(v15 + 32) = 1;
      }

      v15[3] = v19;
    }

    goto LABEL_16;
  }

  v42 = a1;
  if (v15[1])
  {
    goto LABEL_6;
  }

LABEL_16:
  v20 = v15[3];
  v21 = *(v15 + 32);
  v22 = *a6;
  std::recursive_mutex::lock(*a6);
  v24 = *(*a6)[1].__m_.__opaque;
  v23 = *&(*a6)[1].__m_.__opaque[8];
  while (v24 != v23)
  {
    v25 = *v24++;
    (*(*v25 + 16))(v25, v20, v21, a7);
  }

  std::recursive_mutex::unlock(v22);
  a1 = v42;
  v8 = a6;
LABEL_19:
  v26 = *(*a1 + 40);
  v27 = *(*a1 + 48);
  if (v26 == v27)
  {
LABEL_22:
    if (!v8)
    {
LABEL_41:
      v31 = 1;
      goto LABEL_42;
    }

    v28 = mlir::Attribute::getContext((a2 + 24));
    v29 = *a1;
    v30 = *(*a1 + 23);
    if (v30 < 0)
    {
      if (!v29[1])
      {
LABEL_38:
        v35 = v29[3];
        v36 = *(v29 + 32);
        v37 = *v8;
        std::recursive_mutex::lock(*v8);
        v39 = *(*v8)[1].__m_.__opaque;
        for (i = *&(*v8)[1].__m_.__opaque[8]; i != v39; i -= 8)
        {
          v40 = *(i - 8);
          (*(*v40 + 24))(v40, v35, v36, a7);
        }

        std::recursive_mutex::unlock(v37);
        goto LABEL_41;
      }
    }

    else if (!*(*a1 + 23))
    {
      goto LABEL_38;
    }

    if ((v29[4] & 1) == 0)
    {
      if (v30 >= 0)
      {
        v32 = *a1;
      }

      else
      {
        v32 = *v29;
      }

      if (v30 >= 0)
      {
        v33 = *(*a1 + 23);
      }

      else
      {
        v33 = v29[1];
      }

      mlir::OperationName::OperationName(&v45, v32, v33, v28);
      v34 = v45;
      if ((v29[4] & 1) == 0)
      {
        *(v29 + 32) = 1;
      }

      v29[3] = v34;
    }

    goto LABEL_38;
  }

  while ((mlir::detail::OpToOpPassAdaptor::run(*v26, a2, a3, a4, a5) & 1) != 0)
  {
    if (++v26 == v27)
    {
      goto LABEL_22;
    }
  }

  v31 = 0;
LABEL_42:
  mlir::AnalysisManager::clear(&v44);
  return v31;
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
  v2 = a1;
  {
    v4 = a2;
    mlir::Pass::printAsTextualPipeline();
    a2 = v4;
    v2 = a1;
  }

  *(v2 + 8) = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0;
  *(v2 + 184) = v2 + 200;
  *(v2 + 192) = 0x400000000;
  *(v2 + 232) = v2 + 248;
  *(v2 + 240) = 0x400000000;
  *(v2 + 280) = 0;
  *(v2 + 288) = 0;
  *(v2 + 296) = 0x1000000000;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *v2 = &unk_286867AF8;
  *(v2 + 336) = 0;
  *(v2 + 344) = v2 + 360;
  *(v2 + 352) = 0x100000000;
  *(v2 + 368) = v2 + 384;
  *(v2 + 376) = 0x800000000;
  llvm::SmallVectorImpl<mlir::OpPassManager>::emplace_back<mlir::OpPassManager>((v2 + 344), a2);
  return v2;
}

uint64_t llvm::SmallVectorImpl<mlir::OpPassManager>::emplace_back<mlir::OpPassManager>(uint64_t *a1, uint64_t *a2)
{
  v3 = *(a1 + 2);
  if (v3 >= *(a1 + 3))
  {

    llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::growAndEmplaceBack<mlir::OpPassManager>();
  }

  v4 = *a1;
  *(*a1 + 8 * v3) = 0;
  v5 = *a2;
  *a2 = 0;
  v6 = *(v4 + 8 * v3);
  *(v4 + 8 * v3) = v5;
  if (v6)
  {
    v7 = *(v6 + 40);
    if (v7)
    {
      v8 = *(v6 + 48);
      v9 = *(v6 + 40);
      if (v8 != v7)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            (*(*v10 + 8))(v10);
          }
        }

        while (v8 != v7);
        v9 = *(v6 + 40);
      }

      *(v6 + 48) = v7;
      operator delete(v9);
    }

    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    MEMORY[0x259C63180](v6, 0x1032C402C5CA452);
    v3 = *(a1 + 2);
    v4 = *a1;
  }

  v12 = v3 + 1;
  *(a1 + 2) = v12;
  return v4 + 8 * v12 - 8;
}

uint64_t mlir::detail::OpToOpPassAdaptor::getDependentDialects(uint64_t result, uint64_t a2)
{
  v2 = *(result + 352);
  if (v2)
  {
    v4 = *(result + 344);
    v5 = v4 + 8 * v2;
    v6 = *(*v4 + 40);
    i = *(*v4 + 48);
    if (v6 != i)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v4 += 8;
      if (v4 == v5)
      {
        break;
      }

      v6 = *(*v4 + 40);
      for (i = *(*v4 + 48); v6 != i; result = (*(*v8 + 24))(v8, a2))
      {
LABEL_5:
        v8 = *v6++;
      }
    }
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<mlir::OpPassManager>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2)
  {
    v3 = *result;
    v4 = (*result + 8 * v2);
    do
    {
      v6 = *--v4;
      v5 = v6;
      *v4 = 0;
      if (v6)
      {
        v7 = *(v5 + 40);
        if (v7)
        {
          v8 = *(v5 + 48);
          v9 = *(v5 + 40);
          if (v8 != v7)
          {
            do
            {
              v11 = *--v8;
              v10 = v11;
              *v8 = 0;
              if (v11)
              {
                (*(*v10 + 8))(v10);
              }
            }

            while (v8 != v7);
            v9 = *(v5 + 40);
          }

          *(v5 + 48) = v7;
          operator delete(v9);
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        result = MEMORY[0x259C63180](v5, 0x1032C402C5CA452);
      }
    }

    while (v4 != v3);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t mlir::detail::OpToOpPassAdaptor::runOnOperation(mlir::detail::OpToOpPassAdaptor *this, unsigned int a2)
{
  Context = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  if (mlir::MLIRContext::isMultithreadingEnabled(Context))
  {

    mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(this, a2);
  }

  return mlir::detail::OpToOpPassAdaptor::runOnOperationImpl(this, a2);
}

void mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(mlir::detail::OpToOpPassAdaptor *this, char a2)
{
  v103 = *MEMORY[0x277D85DE8];
  v97 = a2;
  v3 = *(this + 5);
  v4 = *(this + 6);
  v96 = v4;
  Context = mlir::Attribute::getContext(((v3 & 0xFFFFFFFFFFFFFFF8) + 24));
  v80 = this;
  v81 = Context;
  if (*(this + 94))
  {
    v6 = *(this + 46);
    v7 = *(v6 + 2);
    if (v7 == *(this + 88))
    {
      if (!v7)
      {
LABEL_9:
        v93 = 0;
        v94 = 0;
        v95 = 0;
        v12 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
        v13 = *(v12 + 44);
        if ((v13 & 0x7FFFFF) == 0)
        {
          v15 = 0;
          v14 = 0;
          threadid = llvm::get_threadid(Context);
          v87 = this;
          v59 = *(v4 + 72);
          v58 = v59 & 0xFFFFFFFFFFFFFFF8;
          if ((v59 & 4) != 0)
          {
            goto LABEL_113;
          }

LABEL_110:
          if (v58)
          {
            do
            {
              v60 = *(v58 + 72);
              v58 = v60 & 0xFFFFFFFFFFFFFFF8;
            }

            while ((v60 & 4) == 0 && v58);
          }

LABEL_113:
          v84 = 0;
          v85 = v58;
          v61 = *(v80 + 94);
          __p = 0;
          v83 = 0;
          if (v61)
          {
            operator new();
          }

          *&v88 = &__p;
          *(&v88 + 1) = v80;
          v89 = &v97;
          v90 = &v85;
          p_threadid = &threadid;
          v100 = v14;
          v62 = -1431655765 * ((v15 - v14) >> 3);
          v99 = v62;
          if (v62)
          {
            if (mlir::MLIRContext::isMultithreadingEnabled(v81) && v62 != 1)
            {
              mlir::ParallelDiagnosticHandler::ParallelDiagnosticHandler(v98, v81);
            }

            if (v14 != v15)
            {
              p_p = &__p;
              v64 = &v97;
              v65 = &v85;
              v66 = &threadid;
              v67 = v14;
              while (1)
              {
                v68 = *(&v88 + 1);
                v69 = *p_p;
                v70 = p_p[1];
                if (v69 == v70)
                {
                  v72 = v69;
                }

                else
                {
                  do
                  {
                    v71 = 0;
                    atomic_compare_exchange_strong(v69, &v71, 1u);
                    if (!v71)
                    {
                      goto LABEL_125;
                    }

                    ++v69;
                  }

                  while (v69 != v70);
                  LODWORD(v69) = v70;
LABEL_125:
                  v72 = v69;
                  v64 = v89;
                  v65 = v90;
                  v69 = *v88;
                  v66 = p_threadid;
                }

                v73 = (v72 - v69);
                v74 = (*(*(v68 + 368) + 24 * v73) + 8 * *v67);
                v75 = mlir::detail::OpToOpPassAdaptor::runPipeline(v74, *(v67 + 1), *(v67 + 2), *v64, *(*v74 + 64), *v65, v66);
                p_p = v88;
                atomic_store(0, (*v88 + v73));
                if ((v75 & 1) == 0)
                {
                  break;
                }

                v67 = v100 + 6;
                v100 = v67;
                if (v67 == v15)
                {
                  goto LABEL_131;
                }
              }

              *(v80 + 5) |= 4uLL;
            }
          }

LABEL_131:
          if (__p)
          {
            v83 = __p;
            operator delete(__p);
          }

          llvm::deallocate_buffer(v93, (16 * v95));
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = (((v12 + 16 * ((v13 >> 23) & 1) + ((v13 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v12 + 40));
        v76 = v17 + 24 * (v13 & 0x7FFFFF);
        while (1)
        {
          mlir::Region::OpIterator::OpIterator(&v101, v17, 0);
          v77 = v17;
          mlir::Region::OpIterator::OpIterator(&v90, v17, 1);
          v18 = v102;
          v89 = v102;
          v88 = v101;
          v19 = v92;
          v78 = v92;
          if (v102 != v92)
          {
            break;
          }

LABEL_11:
          v17 = (v77 + 24);
          if (v77 + 24 == v76)
          {
            v56 = v96;
            threadid = llvm::get_threadid(v18);
            v87 = v80;
            v57 = *(v56 + 72);
            v58 = v57 & 0xFFFFFFFFFFFFFFF8;
            if ((v57 & 4) != 0)
            {
              goto LABEL_113;
            }

            goto LABEL_110;
          }
        }

LABEL_16:
        ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v18);
        v21 = *(ValuePtr + 6);
        v22 = v95;
        if (!v95)
        {
          goto LABEL_89;
        }

        v23 = ((v21 >> 4) ^ (v21 >> 9)) & (v95 - 1);
        v24 = v93 + 16 * v23;
        v25 = *v24;
        if (v21 == *v24)
        {
          goto LABEL_70;
        }

        v26 = 0;
        v27 = 1;
        while (v25 != -4096)
        {
          if (v26)
          {
            v28 = 0;
          }

          else
          {
            v28 = v25 == -8192;
          }

          if (v28)
          {
            v26 = v24;
          }

          v29 = v23 + v27++;
          v23 = v29 & (v95 - 1);
          v24 = v93 + 16 * v23;
          v25 = *v24;
          if (v21 == *v24)
          {
            goto LABEL_70;
          }
        }

        if (v26)
        {
          v24 = v26;
        }

        if (4 * v94 + 4 < 3 * v95)
        {
          if (v95 + ~v94 - HIDWORD(v94) > v95 >> 3)
          {
            LODWORD(v94) = v94 + 1;
            if (*v24 == -4096)
            {
LABEL_31:
              *v24 = v21;
              v24[8] = 0;
              v24[12] = 0;
              v30 = *(v80 + 43);
              v31 = *(v80 + 88);
              v32 = &v30[v31];
              if (!v31)
              {
                goto LABEL_61;
              }

              v79 = v15;
              v33 = v16;
              v34 = *(ValuePtr + 6);
              while (1)
              {
                v35 = *v30;
                v36 = *(*v30 + 23);
                if (v36 < 0)
                {
                  if (!v35[1])
                  {
                    goto LABEL_49;
                  }
                }

                else if (!*(*v30 + 23))
                {
                  goto LABEL_49;
                }

                if ((v35[4] & 1) == 0)
                {
                  if (v36 >= 0)
                  {
                    v37 = *v30;
                  }

                  else
                  {
                    v37 = *v35;
                  }

                  if (v36 >= 0)
                  {
                    v38 = *(*v30 + 23);
                  }

                  else
                  {
                    v38 = v35[1];
                  }

                  mlir::OperationName::OperationName(&__p, v37, v38, v81);
                  if ((v35[4] & 1) == 0)
                  {
                    *(v35 + 32) = 1;
                  }

                  v35[3] = __p;
                }

LABEL_49:
                if (v35[4])
                {
                  if (v35[3] == v34)
                  {
                    goto LABEL_60;
                  }
                }

                else
                {
                  v39 = *(v34 + 16);
                  if (v39 == &mlir::detail::TypeIDResolver<void,void>::id)
                  {
                    v40 = 0;
                  }

                  else
                  {
                    v40 = v34;
                  }

                  if (v39 != &mlir::detail::TypeIDResolver<void,void>::id)
                  {
                    {
                      mlir::detail::OpPassManagerImpl::canScheduleOn();
                    }

                    if ((*(*v40 + 32))(v40, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
                    {
                      v42 = v35[5];
                      v41 = v35[6];
                      if (v42 == v41)
                      {
LABEL_60:
                        v16 = v33;
                        v15 = v79;
LABEL_61:
                        if (v30 == v32)
                        {
                          v19 = v78;
LABEL_70:
                          if (v24[12] == 1)
                          {
                            goto LABEL_71;
                          }

                          goto LABEL_15;
                        }

                        if (v30)
                        {
                          v43 = *(v80 + 43);
                          v19 = v78;
                          if ((v24[12] & 1) == 0)
                          {
                            v24[12] = 1;
                          }

                          *(v24 + 2) = (v30 - v43) >> 3;
                          if (v24[12] == 1)
                          {
LABEL_71:
                            v44 = mlir::AnalysisManager::nest(&v96, ValuePtr);
                            if (v15 < v16)
                            {
                              *v15 = *(v24 + 2);
                              *(v15 + 8) = ValuePtr;
                              *(v15 + 16) = v44;
                              v15 += 24;
                            }

                            else
                            {
                              v45 = v15 - v14;
                              v46 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 3) + 1;
                              if (v46 > 0xAAAAAAAAAAAAAAALL)
                              {
                                std::string::__throw_length_error[abi:nn200100]();
                              }

                              if (0x5555555555555556 * ((v16 - v14) >> 3) > v46)
                              {
                                v46 = 0x5555555555555556 * ((v16 - v14) >> 3);
                              }

                              if (0xAAAAAAAAAAAAAAABLL * ((v16 - v14) >> 3) >= 0x555555555555555)
                              {
                                v47 = 0xAAAAAAAAAAAAAAALL;
                              }

                              else
                              {
                                v47 = v46;
                              }

                              if (v47)
                              {
                                if (v47 <= 0xAAAAAAAAAAAAAAALL)
                                {
                                  operator new();
                                }

                                std::string::__throw_length_error[abi:nn200100]();
                              }

                              v48 = 8 * ((v15 - v14) >> 3);
                              v16 = 0;
                              *v48 = *(v24 + 2);
                              *(v48 + 8) = ValuePtr;
                              *(v48 + 16) = v44;
                              v15 = v48 + 24;
                              v49 = (v48 + 24 * (v45 / -24));
                              memcpy(v49, v14, v45);
                              if (v14)
                              {
                                operator delete(v14);
                              }

                              v14 = v49;
                            }
                          }
                        }

                        else
                        {
                          v19 = v78;
                          if (v24[12] == 1)
                          {
                            goto LABEL_71;
                          }
                        }

LABEL_15:
                        mlir::Region::OpIterator::operator++(&v101);
                        v18 = v102;
                        if (v102 == v19)
                        {
                          goto LABEL_11;
                        }

                        goto LABEL_16;
                      }

                      while (((*(**v42 + 72))(*v42, v40) & 1) != 0)
                      {
                        if (++v42 == v41)
                        {
                          goto LABEL_60;
                        }
                      }
                    }
                  }
                }

                if (++v30 == v32)
                {
                  v16 = v33;
                  v19 = v78;
                  v15 = v79;
                  if (v24[12] == 1)
                  {
                    goto LABEL_71;
                  }

                  goto LABEL_15;
                }
              }
            }

LABEL_30:
            --HIDWORD(v94);
            goto LABEL_31;
          }
        }

        else
        {
LABEL_89:
          v22 = 2 * v95;
        }

        llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::grow(&v93, v22);
        if (v95)
        {
          v50 = (v95 - 1) & ((v21 >> 4) ^ (v21 >> 9));
          v24 = v93 + 16 * v50;
          v51 = *v24;
          if (v21 != *v24)
          {
            v52 = 0;
            v53 = 1;
            while (v51 != -4096)
            {
              if (v52)
              {
                v54 = 0;
              }

              else
              {
                v54 = v51 == -8192;
              }

              if (v54)
              {
                v52 = v24;
              }

              v55 = v50 + v53++;
              v50 = v55 & (v95 - 1);
              v24 = v93 + 16 * v50;
              v51 = *v24;
              if (v21 == *v24)
              {
                goto LABEL_102;
              }
            }

            if (v52)
            {
              v24 = v52;
            }
          }
        }

        else
        {
          v24 = 0;
        }

LABEL_102:
        LODWORD(v94) = v94 + 1;
        if (*v24 == -4096)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      v8 = *v6;
      v9 = *(this + 43);
      while (*(*v8 + 48) - *(*v8 + 40) == *(*v9 + 48) - *(*v9 + 40))
      {
        v9 += 8;
        v8 += 8;
        if (!--v7)
        {
          goto LABEL_9;
        }
      }
    }
  }

  ThreadPool = mlir::MLIRContext::getThreadPool(Context);
  v11 = (*(*ThreadPool + 40))(ThreadPool);
  Context = llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpPassManager,1u>>::assign(this + 46, v11, this + 344);
  goto LABEL_9;
}

uint64_t mlir::detail::OpToOpPassAdaptor::runOnOperationImpl(mlir::detail::OpToOpPassAdaptor *this, unsigned int a2)
{
  v38 = *(this + 6);
  result = llvm::get_threadid(this);
  v37[0] = result;
  v37[1] = this;
  v35 = this;
  v4 = *(v38 + 72);
  v5 = v4 & 0xFFFFFFFFFFFFFFF8;
  if ((v4 & 4) == 0 && v5)
  {
    do
    {
      v6 = *(v5 + 72);
      v5 = v6 & 0xFFFFFFFFFFFFFFF8;
    }

    while ((v6 & 4) == 0 && v5);
  }

  v7 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 44);
  v9 = v8 & 0x7FFFFF;
  if ((v8 & 0x7FFFFF) != 0)
  {
    v10 = ((v7 + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v7 + 40);
    v31 = v10 + 24 * v9;
    while (1)
    {
      v11 = *(v10 + 8);
      v32 = v10;
      if (v11 != v10)
      {
        break;
      }

LABEL_8:
      v10 += 24;
      if (v10 == v31)
      {
        return result;
      }
    }

    while (1)
    {
      v12 = v11 - 8;
      v33 = v11;
      if (!v11)
      {
        v12 = 0;
      }

      v13 = *(v12 + 40);
      v36 = v12 + 32;
      if (v13 != v12 + 32)
      {
        break;
      }

LABEL_10:
      v10 = v32;
      v11 = *(v33 + 8);
      if (v11 == v32)
      {
        goto LABEL_8;
      }
    }

    while (1)
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v13);
      v15 = *(v35 + 43);
      v16 = *(v35 + 88);
      v17 = ValuePtr[6];
      result = mlir::Attribute::getContext((ValuePtr + 3));
      v18 = &v15[v16];
      if (v16)
      {
        break;
      }

LABEL_45:
      if (v15 != v18 && v15 != 0)
      {
        v29 = *(*v15 + 64);
        v30 = mlir::AnalysisManager::nest(&v38, ValuePtr);
        result = mlir::detail::OpToOpPassAdaptor::runPipeline(v15, ValuePtr, v30, a2, v29, v5, v37);
        if ((result & 1) == 0)
        {
          *(v35 + 5) |= 4uLL;
          return result;
        }
      }

LABEL_15:
      v13 = *(v13 + 8);
      if (v13 == v36)
      {
        goto LABEL_10;
      }
    }

    v19 = result;
    while (1)
    {
      v20 = *v15;
      v21 = *(*v15 + 23);
      if (v21 < 0)
      {
        if (!*(v20 + 8))
        {
          goto LABEL_34;
        }
      }

      else if (!*(*v15 + 23))
      {
        goto LABEL_34;
      }

      if ((*(v20 + 32) & 1) == 0)
      {
        if (v21 >= 0)
        {
          v22 = *v15;
        }

        else
        {
          v22 = *v20;
        }

        if (v21 >= 0)
        {
          v23 = *(*v15 + 23);
        }

        else
        {
          v23 = *(v20 + 8);
        }

        result = mlir::OperationName::OperationName(&v39, v22, v23, v19);
        if ((*(v20 + 32) & 1) == 0)
        {
          *(v20 + 32) = 1;
        }

        *(v20 + 24) = v39;
      }

LABEL_34:
      if (*(v20 + 32))
      {
        if (*(v20 + 24) == v17)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v24 = *(v17 + 16);
        if (v24 == &mlir::detail::TypeIDResolver<void,void>::id)
        {
          v25 = 0;
        }

        else
        {
          v25 = v17;
        }

        if (v24 != &mlir::detail::TypeIDResolver<void,void>::id)
        {
          {
            mlir::detail::OpPassManagerImpl::canScheduleOn();
          }

          result = (*(*v25 + 32))(v25, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id);
          if (result)
          {
            v26 = *(v20 + 40);
            v27 = *(v20 + 48);
            if (v26 == v27)
            {
              goto LABEL_45;
            }

            while (1)
            {
              result = (*(**v26 + 72))(*v26, v25);
              if ((result & 1) == 0)
              {
                break;
              }

              if (++v26 == v27)
              {
                goto LABEL_45;
              }
            }
          }
        }
      }

      if (++v15 == v18)
      {
        goto LABEL_15;
      }
    }
  }

  return result;
}

uint64_t mlir::AnalysisManager::nest(mlir::AnalysisManager *this, mlir::Operation *a2)
{
  v3 = a2;
  v18 = *MEMORY[0x277D85DE8];
  v4 = *(*this + 24);
  ParentOp = *(a2 + 2);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(*(a2 + 2));
    v3 = a2;
  }

  if (v4 == ParentOp)
  {
    v12[0] = v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::try_emplace<>(*this, v12, &v15);
    if (v17[0] == 1)
    {
      operator new();
    }

    return *(v15 + 1);
  }

  else
  {
    v15 = v17;
    v16 = 0x400000000;
    do
    {
      if (v16 >= HIDWORD(v16))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v15 + v16) = v3;
      LODWORD(v16) = v16 + 1;
      v3 = *(v3 + 2);
      if (v3)
      {
        v3 = mlir::Block::getParentOp(v3);
      }
    }

    while (v3 != v4);
    v7 = *this;
    v8 = v15;
    if (v16)
    {
      v9 = 8 * v16;
      v10 = v15 - 8;
      do
      {
        v14 = *&v10[v9];
        llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::try_emplace<>(v7, &v14, v12);
        if (v13 == 1)
        {
          operator new();
        }

        v7 = *(v12[0] + 8);
        v9 -= 8;
      }

      while (v9);
      v8 = v15;
    }

    if (v8 != v17)
    {
      free(v8);
    }
  }

  return v7;
}

char **llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpPassManager,1u>>::assign(char **result, unint64_t a2, uint64_t a3)
{
  v5 = result;
  if (*(result + 3) < a2)
  {

    llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpPassManager,1u>,false>::growAndAssign();
  }

  v6 = *(result + 2);
  if (v6 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = *(result + 2);
  }

  if (v7)
  {
    v8 = *result;
    do
    {
      result = llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(v8, a3);
      v8 += 24;
      --v7;
    }

    while (v7);
    v6 = *(v5 + 2);
  }

  v9 = v6 - a2;
  if (v6 >= a2)
  {
    if (v6 > a2)
    {
      v12 = 24 * v6;
      v13 = 24 * a2 - v12;
      result = &(*v5)[v12 - 24];
      do
      {
        result = llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(result) - 3;
        v13 += 24;
      }

      while (v13);
    }
  }

  else
  {
    v10 = &(*v5)[24 * v6];
    do
    {
      *v10 = v10 + 16;
      *(v10 + 1) = 0x100000000;
      if (*(a3 + 8))
      {
        result = llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(v10, a3);
      }

      v10 += 24;
    }

    while (!__CFADD__(v9++, 1));
  }

  *(v5 + 2) = a2;
  return result;
}

void mlir::PassManager::PassManager()
{
  mlir::OpPassManager::OpPassManager();
}

{
  mlir::OpPassManager::OpPassManager();
}

{
  operator new();
}

void mlir::PassManager::~PassManager(mlir::PassManager *this)
{
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    mlir::detail::PassCrashReproducerGenerator::~PassCrashReproducerGenerator(v2);
    MEMORY[0x259C63180]();
  }

  std::unique_ptr<mlir::PassInstrumentor>::reset[abi:nn200100](this + 3, 0);
  v3 = *this;
  *this = 0;
  if (v3)
  {
    v4 = *(v3 + 40);
    if (v4)
    {
      v5 = *(v3 + 48);
      v6 = *(v3 + 40);
      if (v5 != v4)
      {
        do
        {
          v8 = *--v5;
          v7 = v8;
          *v5 = 0;
          if (v8)
          {
            (*(*v7 + 8))(v7);
          }
        }

        while (v5 != v4);
        v6 = *(v3 + 40);
      }

      *(v3 + 48) = v4;
      operator delete(v6);
    }

    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    MEMORY[0x259C63180](v3, 0x1032C402C5CA452);
  }
}

uint64_t mlir::PassManager::enableVerifier(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(this + 56) = *(this + 56) & 0xFD | v2;
  return this;
}

BOOL mlir::PassManager::run(mlir::PassManager *this, mlir::Operation *a2)
{
  v81 = *MEMORY[0x277D85DE8];
  v5 = *this;
  v4 = *(this + 1);
  v6 = *(*this + 23);
  if (v6 < 0)
  {
    if (!v5[1])
    {
      goto LABEL_15;
    }
  }

  else if (!*(*this + 23))
  {
    goto LABEL_15;
  }

  if ((v5[4] & 1) == 0)
  {
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
      v8 = *(*this + 23);
    }

    else
    {
      v8 = v5[1];
    }

    mlir::OperationName::OperationName(&v65, v7, v8, v4);
    v9 = v65;
    if ((v5[4] & 1) == 0)
    {
      *(v5 + 32) = 1;
    }

    v5[3] = v9;
  }

LABEL_15:
  if ((v5[4] & 1) == 0 || *(a2 + 6) == v5[3])
  {
    mlir::DialectRegistry::DialectRegistry(&v57);
    v15 = *(*this + 40);
    v16 = *(*this + 48);
    while (v15 != v16)
    {
      v17 = *v15++;
      (*(*v17 + 24))(v17, &v57);
    }

    mlir::MLIRContext::appendDialectRegistry(v4, &v57);
    v18 = v57;
    if (v57 != (&v57 + 8))
    {
      do
      {
        v26 = *(v18 + 55);
        if (v26 >= 0)
        {
          v27 = v18 + 2;
        }

        else
        {
          v27 = *(v18 + 4);
        }

        if (v26 >= 0)
        {
          v28 = *(v18 + 55);
        }

        else
        {
          v28 = *(v18 + 5);
        }

        mlir::MLIRContext::getOrLoadDialect(v4, v27, v28);
        v29 = *(v18 + 1);
        if (v29)
        {
          do
          {
            v30 = v29;
            v29 = *v29;
          }

          while (v29);
        }

        else
        {
          do
          {
            v30 = *(v18 + 2);
            v31 = *v30 == v18;
            v18 = v30;
          }

          while (!v31);
        }

        v18 = v30;
      }

      while (v30 != (&v57 + 8));
    }

    if (mlir::detail::OpPassManagerImpl::finalizePassList(*this, v4))
    {
      mlir::MLIRContext::enterMultiThreadedExecution(v4);
      RegistryHash = mlir::MLIRContext::getRegistryHash(v4);
      v20 = mlir::OpPassManager::hash(this);
      if (RegistryHash == *(this + 5) && v20 == *(this + 6))
      {
LABEL_34:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        v69 = 0;
        v70 = 0;
        v68 = a2;
        v71 = 0;
        v21 = *(this + 4);
        v22 = *(this + 3) | 4;
        v73 = 0;
        v74[0] = v22;
        v72 = v74;
        if (v21)
        {
          mlir::PassManager::runWithCrashRecovery(this, a2, &v65);
        }

        v47 = *(this + 56);
        v48 = *this;
        v49 = *(*this + 64);
        v64 = &v65;
        v50 = *(v48 + 40);
        v51 = *(v48 + 48);
        if (v50 != v51)
        {
          v52 = (v47 >> 1) & 1;
          do
          {
            if (!mlir::detail::OpToOpPassAdaptor::run(*v50, a2, &v65, v52, v49))
            {
              break;
            }

            ++v50;
          }

          while (v50 != v51);
        }

        mlir::AnalysisManager::clear(&v64);
        mlir::MLIRContext::exitMultiThreadedExecution(v4);
        if (*(this + 20) != 1)
        {
          v23 = v72;
          if (v73)
          {
            v24 = v72 - 8;
            v25 = 16 * v73;
            do
            {
              v32 = *&v24[v25];
              *&v24[v25] = 0;
              if (v32)
              {
                (*(*v32 + 8))(v32);
              }

              v25 -= 16;
            }

            while (v25);
            v23 = v72;
          }

          if (v23 != v74)
          {
            free(v23);
          }

          llvm::deallocate_buffer(v69, (16 * v71));
        }

        mlir::PassManager::dumpStatistics(this);
      }

      if (mlir::OpPassManager::initialize(this, v4, *(*this + 64) + 1))
      {
        *(this + 5) = RegistryHash;
        goto LABEL_34;
      }
    }

    v33 = v62;
    if (v63)
    {
      v53 = v62 - 8;
      v54 = 16 * v63;
      do
      {
        v55 = *&v53[v54];
        *&v53[v54] = 0;
        if (v55)
        {
          (*(*v55 + 8))(v55);
        }

        v54 -= 16;
      }

      while (v54);
      v33 = v62;
    }

    if (v33 != &v64)
    {
      free(v33);
    }

    llvm::deallocate_buffer(v59, (16 * v61));
  }

  mlir::emitError(*(a2 + 3), &v65);
  if (v65)
  {
    LODWORD(v57) = 3;
    *(&v57 + 1) = "can't run '";
    v58 = 11;
    if (v69 >= HIDWORD(v69))
    {
      if (v68 > &v57 || v68 + 24 * v69 <= &v57)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v68 + 24 * v69;
    v11 = v57;
    *(v10 + 2) = v58;
    *v10 = v11;
    LODWORD(v69) = v69 + 1;
  }

  v12 = *this;
  v13 = *(*this + 23);
  if ((v13 & 0x8000000000000000) == 0)
  {
    if (*(*this + 23))
    {
      goto LABEL_22;
    }

LABEL_62:
    v12 = "any";
    v13 = 3;
    if (!v65)
    {
      goto LABEL_69;
    }

    goto LABEL_63;
  }

  if (!*(v12 + 1))
  {
    goto LABEL_62;
  }

LABEL_22:
  v14 = *(v12 + 1);
  if (v13 < 0)
  {
    v12 = *v12;
    v13 = v14;
  }

  if (v65)
  {
LABEL_63:
    v60 = 261;
    *&v57 = v12;
    *(&v57 + 1) = v13;
    mlir::Diagnostic::operator<<(&v66, &v57);
    if (v65)
    {
      LODWORD(v57) = 3;
      *(&v57 + 1) = "' pass manager on '";
      v58 = 19;
      if (v69 >= HIDWORD(v69))
      {
        if (v68 > &v57 || v68 + 24 * v69 <= &v57)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v34 = v68 + 24 * v69;
      v35 = v57;
      *(v34 + 2) = v58;
      *v34 = v35;
      LODWORD(v69) = v69 + 1;
      if (v65)
      {
        mlir::Diagnostic::operator<<(&v66, *(a2 + 6));
        if (v65)
        {
          LODWORD(v57) = 3;
          *(&v57 + 1) = "' op";
          v58 = 4;
          if (v69 >= HIDWORD(v69))
          {
            if (v68 > &v57 || v68 + 24 * v69 <= &v57)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v36 = v68 + 24 * v69;
          v37 = v57;
          *(v36 + 2) = v58;
          *v36 = v37;
          LODWORD(v69) = v69 + 1;
        }
      }
    }
  }

LABEL_69:
  v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
  if (v65)
  {
    mlir::InFlightDiagnostic::report(&v65);
  }

  if (v80 == 1)
  {
    if (v79 != &v80)
    {
      free(v79);
    }

    v39 = __p;
    if (__p)
    {
      v40 = v78;
      v41 = __p;
      if (v78 != __p)
      {
        do
        {
          v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
        }

        while (v40 != v39);
        v41 = __p;
      }

      v78 = v39;
      operator delete(v41);
    }

    v42 = v75;
    if (v75)
    {
      v43 = v76;
      v44 = v75;
      if (v76 != v75)
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
        v44 = v75;
      }

      v76 = v42;
      operator delete(v44);
    }

    if (v68 != &v70)
    {
      free(v68);
    }
  }

  return v38;
}

uint64_t mlir::PassManager::runPasses(unsigned __int8 *a1, mlir::Operation *a2, mlir::detail::NestedAnalysisMap *a3)
{
  v3 = a1[56];
  v4 = *a1;
  v5 = *(*a1 + 64);
  v13 = a3;
  v6 = *(v4 + 40);
  v7 = *(v4 + 48);
  if (v6 == v7)
  {
LABEL_5:
    v11 = 1;
  }

  else
  {
    v10 = (v3 >> 1) & 1;
    while (mlir::detail::OpToOpPassAdaptor::run(*v6, a2, a3, v10, v5))
    {
      if (++v6 == v7)
      {
        goto LABEL_5;
      }
    }

    v11 = 0;
  }

  mlir::AnalysisManager::clear(&v13);
  return v11;
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
      std::string::__throw_length_error[abi:nn200100]();
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

      std::string::__throw_length_error[abi:nn200100]();
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::try_emplace<>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v8 = (*result + 16 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v12 = 0;
    v13 = 1;
    while (v9 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == -8192;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 16 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }

LABEL_5:
    v18 = v8;
    v11 = *(result + 8);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 12) > v4 >> 3)
    {
      *(result + 8) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        *v8 = *a2;
        v8[1] = 0;
        v5 = *result;
        v4 = *(result + 16);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v16 = result;
    v17 = a3;
    llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::LookupBucketFor<mlir::Dialect const*>(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 8);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 16 * v4;
  *(a3 + 16) = v10;
  return result;
}

void mlir::detail::NestedAnalysisMap::invalidate(mlir::detail::NestedAnalysisMap *this, const mlir::detail::PreservedAnalyses *a2)
{
  v20[6] = *MEMORY[0x277D85DE8];
  if (!mlir::detail::PreservedAnalyses::isAll(a2))
  {
    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v17, v20, a2);
    _ZN4llvm9MapVectorIN4mlir6TypeIDENSt3__110unique_ptrINS1_6detail15AnalysisConceptENS3_14default_deleteIS6_EEEENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorINS3_4pairIS2_S9_EELj0EEEE9remove_ifIZNS5_11AnalysisMap10invalidateERKNS5_17PreservedAnalysesEEUlRT_E_EEvSR_(this + 32, &v17);
    if (v18 != v17)
    {
      free(v18);
    }

    if (*(a2 + 5) == *(a2 + 6))
    {
      v4 = *(this + 2);
      if (v4 || *(this + 3))
      {
        v5 = *(this + 4);
        if (v5 > 4 * v4 && v5 >= 0x41)
        {
          llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::shrink_and_clear(this);
          return;
        }

        if (v5)
        {
          v14 = (*this + 8);
          for (i = 16 * v5; i; i -= 16)
          {
            v16 = *(v14 - 1);
            if (v16 != -8192)
            {
              if (v16 == -4096)
              {
                goto LABEL_36;
              }

              std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](v14, 0);
            }

            *(v14 - 1) = -4096;
LABEL_36:
            v14 += 2;
          }
        }

        *(this + 1) = 0;
      }
    }

    else
    {
      v17 = v19;
      HIDWORD(v18) = 8;
      v19[0] = this;
      v6 = 1;
      do
      {
        v7 = *(v17 + --v6);
        LODWORD(v18) = v6;
        if (*(v7 + 2))
        {
          v8 = *v7;
          v9 = *(v7 + 4);
          if (v9)
          {
            v10 = 16 * v9;
            v11 = v8;
            while ((*v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
            {
              v11 += 16;
              v10 -= 16;
              if (!v10)
              {
                goto LABEL_12;
              }
            }
          }

          else
          {
            v11 = v8;
          }

          v12 = v8 + 16 * v9;
          if (v11 != v12)
          {
            do
            {
              mlir::detail::NestedAnalysisMap::invalidate(*(v11 + 8), a2);
              v13 = *(v11 + 8);
              if (*(v13 + 8))
              {
                if (v18 >= HIDWORD(v18))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                *(v17 + v18) = v13;
                LODWORD(v18) = v18 + 1;
              }

              do
              {
                v11 += 16;
              }

              while (v11 != v12 && (*v11 | 0x1000) == 0xFFFFFFFFFFFFF000);
            }

            while (v11 != v12);
            v6 = v18;
          }
        }

LABEL_12:
        ;
      }

      while (v6);
      if (v17 != v19)
      {
        free(v17);
      }
    }
  }
}

void mlir::PassInstrumentor::PassInstrumentor(mlir::PassInstrumentor *this)
{
  operator new();
}

{
  operator new();
}

void mlir::PassInstrumentor::~PassInstrumentor(mlir::PassInstrumentor *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      v3 = *(v1 + 80);
      v4 = *(v1 + 72);
      if (v3 != v2)
      {
        do
        {
          v6 = *--v3;
          v5 = v6;
          *v3 = 0;
          if (v6)
          {
            (*(*v5 + 8))(v5);
          }
        }

        while (v3 != v2);
        v4 = *(v1 + 72);
      }

      *(v1 + 80) = v2;
      operator delete(v4);
    }

    std::recursive_mutex::~recursive_mutex(v1);
    MEMORY[0x259C63180]();
  }
}

{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      v3 = *(v1 + 80);
      v4 = *(v1 + 72);
      if (v3 != v2)
      {
        do
        {
          v6 = *--v3;
          v5 = v6;
          *v3 = 0;
          if (v6)
          {
            (*(*v5 + 8))(v5);
          }
        }

        while (v3 != v2);
        v4 = *(v1 + 72);
      }

      *(v1 + 80) = v2;
      operator delete(v4);
    }

    std::recursive_mutex::~recursive_mutex(v1);
    MEMORY[0x259C63180]();
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

void mlir::detail::OpToOpPassAdaptor::~OpToOpPassAdaptor(mlir::detail::OpToOpPassAdaptor *this)
{
  *this = &unk_286867AF8;
  v2 = *(this + 46);
  v3 = *(this + 94);
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
    v2 = *(this + 46);
  }

  if (v2 != this + 384)
  {
    free(v2);
  }

  llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(this + 43);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_286867AF8;
  v2 = *(this + 46);
  v3 = *(this + 94);
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
    v2 = *(this + 46);
  }

  if (v2 != this + 384)
  {
    free(v2);
  }

  llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(this + 43);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x259C63180);
}

const char *mlir::PassWrapper<mlir::detail::OpToOpPassAdaptor,mlir::OperationPass<void>>::getName()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::OpToOpPassAdaptor]";
  v6 = 81;
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

void *llvm::support::detail::provider_format_adapter<llvm::StringLiteral const&>::format(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  if (a4)
  {
    v12 = 0;
    AsUnsignedInteger = llvm::getAsUnsignedInteger(a3, a4, 0xA, &v12);
    v7 = v12;
    if (AsUnsignedInteger)
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = -1;
  }

  v8 = *v5;
  if (*(v5 + 8) >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = *(v5 + 8);
  }

  result = a2[4];
  if (v9 > a2[3] - result)
  {
    return llvm::raw_ostream::write(a2, v8, v9);
  }

  if (v9)
  {
    v11 = v9;
    result = memcpy(result, v8, v9);
    a2[4] += v11;
  }

  return result;
}

uint64_t mlir::detail::OpToOpPassAdaptor::tryMergeInto(mlir::MLIRContext *,mlir::detail::OpToOpPassAdaptor&)::$_2::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 23);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = *(v2 + 8);
  }

  else
  {
    v4 = *(*a1 + 23);
  }

  if (!v4)
  {
    return 1;
  }

  if ((v3 & 0x80000000) == 0)
  {
    v5 = *a1;
  }

  else
  {
    v5 = *v2;
  }

  if ((v3 & 0x80000000) == 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = *(v2 + 8);
  }

  v7 = *a2;
  v8 = *(*a2 + 23);
  if ((v8 & 0x8000000000000000) == 0)
  {
    if (*(*a2 + 23))
    {
      goto LABEL_13;
    }

    return 0xFFFFFFFFLL;
  }

  if (!v7[1])
  {
    return 0xFFFFFFFFLL;
  }

LABEL_13:
  if (v8 >= 0)
  {
    v9 = *(*a2 + 23);
  }

  else
  {
    v9 = v7[1];
  }

  if (v9 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v9;
  }

  if (v10)
  {
    v11 = v8 >= 0 ? *a2 : *v7;
    v12 = memcmp(v5, v11, v10);
    if (v12)
    {
      return (v12 >> 31) | 1u;
    }
  }

  if (v6 == v9)
  {
    return 0;
  }

  if (v6 < v9)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

void std::__tree<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>>::destroy(a1, a2[1]);
    v4 = a2[11];
    if (v4 == a2 + 8)
    {
      (*(*v4 + 32))(v4);
      if ((*(a2 + 55) & 0x80000000) == 0)
      {
LABEL_6:
        v5 = a2;

LABEL_8:
        operator delete(v5);
        return;
      }
    }

    else
    {
      if (v4)
      {
        (*(*v4 + 40))(v4);
      }

      if ((*(a2 + 55) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    operator delete(a2[4]);
    v5 = a2;

    goto LABEL_8;
  }
}

uint64_t _ZN4llvm9MapVectorIN4mlir6TypeIDENSt3__110unique_ptrINS1_6detail15AnalysisConceptENS3_14default_deleteIS6_EEEENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorINS3_4pairIS2_S9_EELj0EEEE9remove_ifIZNS5_11AnalysisMap10invalidateERKNS5_17PreservedAnalysesEEUlRT_E_EEvSR_(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 24);
  v4 = *(result + 32);
  if (v4)
  {
    v6 = *&v3 + 16 * v4;
    v7 = *(result + 24);
    do
    {
      result = (*(**(*&v3 + 8) + 16))(*(*&v3 + 8), a2);
      if (result)
      {
        v9 = v2[2].i32[0];
        if (v9)
        {
          v10 = *v2;
          v11 = v9 - 1;
          v12 = ((**&v3 >> 4) ^ (**&v3 >> 9)) & (v9 - 1);
          v13 = *(*v2 + 16 * (((**&v3 >> 4) ^ (**&v3 >> 9)) & v11));
          if (**&v3 == v13)
          {
LABEL_9:
            *(*&v10 + 16 * v12) = -8192;
            v2[1] = vadd_s32(v2[1], 0x1FFFFFFFFLL);
          }

          else
          {
            v17 = 1;
            while (v13 != -4096)
            {
              v18 = v12 + v17++;
              v12 = v18 & v11;
              v13 = *(*&v10 + 16 * v12);
              if (**&v3 == v13)
              {
                goto LABEL_9;
              }
            }
          }
        }
      }

      else
      {
        if (*&v3 != v7)
        {
          v14 = **&v3;
          v15 = *(*&v3 + 8);
          *(*&v3 + 8) = 0;
          v16 = v7[1];
          *v7 = v14;
          v7[1] = v15;
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }

          v8 = (v7 - *&v2[3]) >> 4;
          result = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::operator[](v2, v7);
          *result = v8;
        }

        v7 += 2;
      }

      *&v3 += 16;
    }

    while (*&v3 != v6);
    v3 = v2[3];
    v19 = (*&v3 + 16 * v2[4].u32[0]);
    if (v19 != v7)
    {
      do
      {
        result = *(v19 - 1);
        *(v19 - 1) = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        v19 -= 2;
      }

      while (v19 != v7);
      v3 = v2[3];
    }
  }

  else
  {
    v7 = *(result + 24);
  }

  v2[4].i32[0] = (v7 - *&v3) >> 4;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = *a1 + 16 * v4;
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 8;
    }

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
      v4 = v12 & v3;
      v5 = *a1 + 16 * (v12 & v3);
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 8;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::LookupBucketFor<mlir::Dialect const*>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  *(v5 + 8) = 0;
  return v5 + 8;
}

char **llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[8 * v3];
    do
    {
      v6 = *(v4 - 1);
      v4 -= 8;
      v5 = v6;
      *v4 = 0;
      if (v6)
      {
        v7 = *(v5 + 40);
        if (v7)
        {
          v8 = *(v5 + 48);
          v9 = *(v5 + 40);
          if (v8 != v7)
          {
            do
            {
              v11 = *--v8;
              v10 = v11;
              *v8 = 0;
              if (v11)
              {
                (*(*v10 + 8))(v10);
              }
            }

            while (v8 != v7);
            v9 = *(v5 + 40);
          }

          *(v5 + 48) = v7;
          operator delete(v9);
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x259C63180](v5, 0x1032C402C5CA452);
      }
    }

    while (v4 != v2);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

uint64_t *llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::shrink_and_clear(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  v3 = *(result + 2);
  v4 = (16 * v2);
  if (v2)
  {
    v5 = (*result + 8);
    v6 = 16 * v2;
    do
    {
      if ((*(v5 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        result = std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](v5, 0);
      }

      v5 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  if (!v3)
  {
    if (!*(v1 + 4))
    {
      v1[1] = 0;
      return result;
    }

LABEL_17:
    llvm::deallocate_buffer(*v1, v4);
  }

  v7 = 1 << (33 - __clz(v3 - 1));
  if (v7 <= 64)
  {
    v8 = 64;
  }

  else
  {
    v8 = v7;
  }

  if (v8 != *(v1 + 4))
  {
    goto LABEL_17;
  }

  v1[1] = 0;
  v9 = *v1;
  v10 = (v8 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (!v10)
  {
    v13 = *v1;
LABEL_20:
    v16 = (v9 + 16 * v8);
    do
    {
      *v13 = -4096;
      v13 = (v13 + 16);
    }

    while (v13 != v16);
    return result;
  }

  v11 = v10 + 1;
  v12 = (v10 + 1) & 0x1FFFFFFFFFFFFFFELL;
  v13 = (v9 + 16 * v12);
  v14 = (v9 + 16);
  v15 = v12;
  do
  {
    *(v14 - 2) = -4096;
    *v14 = -4096;
    v14 += 4;
    v15 -= 2;
  }

  while (v15);
  if (v11 != v12)
  {
    goto LABEL_20;
  }

  return result;
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
    v8 = *v6 + 152;
    (*(**v6 + 80))(&v11);
    mlir::detail::PassOptions::copyOptionValuesFrom(v11 + 152, v8);
    *(v11 + 336) = *v6;
    std::vector<std::unique_ptr<mlir::RewritePattern>>::push_back[abi:nn200100](&this[1].__r_.__value_.__r.__words[2], &v11);
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

uint64_t llvm::function_ref<llvm::LogicalResult ()(mlir::OpPassManager &,mlir::Operation *)>::callback_fn<mlir::detail::OpToOpPassAdaptor::run(mlir::Pass *,mlir::Operation *,mlir::AnalysisManager,BOOL,unsigned int)::$_0>(uint64_t a1, mlir::OpPassManager *a2, Operation *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = **a1;
  if (v6 != a3 && (mlir::Operation::isProperAncestor(v6, a3) & 1) == 0)
  {
    v29 = 257;
    mlir::Operation::emitOpError(v32, a3, &v28);
    if (v32[0])
    {
      LODWORD(v30) = 3;
      *(&v30 + 1) = "Trying to schedule a dynamic pipeline on an operation that isn't nested under the current operation the pass is processing";
      v31 = 122;
      if (v34 >= v35)
      {
        if (v33 > &v30 || v33 + 24 * v34 <= &v30)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v33 + 24 * v34;
      v14 = v30;
      *(v13 + 2) = v31;
      *v13 = v14;
      ++v34;
    }

    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
    if (v32[0])
    {
      mlir::InFlightDiagnostic::report(v32);
    }

    if (v42 == 1)
    {
      if (v41 != &v42)
      {
        free(v41);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v40;
        v17 = __p;
        if (v40 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v40 = v15;
        operator delete(v17);
      }

      v18 = v37;
      if (v37)
      {
        v19 = v38;
        v20 = v37;
        if (v38 != v37)
        {
          do
          {
            v22 = *--v19;
            v21 = v22;
            *v19 = 0;
            if (v22)
            {
              MEMORY[0x259C63150](v21, 0x1000C8077774924);
            }
          }

          while (v19 != v18);
          v20 = v37;
        }

        v38 = v18;
        operator delete(v20);
      }

      if (v33 != &v36)
      {
        free(v33);
      }
    }

    return v12;
  }

  v7 = *a2;
  Context = mlir::Attribute::getContext((a3 + 24));
  if (!mlir::detail::OpPassManagerImpl::finalizePassList(v7, Context))
  {
    return 0;
  }

  v9 = mlir::Attribute::getContext((a3 + 24));
  if ((mlir::OpPassManager::initialize(a2, v9, **(a1 + 8)) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 16);
  if (**a1 == a3)
  {
    v11 = *v10;
  }

  else
  {
    v11 = mlir::AnalysisManager::nest(v10, a3);
  }

  v23 = **(a1 + 24);
  v24 = **(a1 + 8);
  v25 = **(a1 + 32);
  v26 = *(a1 + 40);

  return mlir::detail::OpToOpPassAdaptor::runPipeline(a2, a3, v11, v23, v24, v25, v26);
}

uint64_t mlir::MLIRContext::executeActionInternal<mlir::PassExecutionAction,mlir::Pass &>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[1] = &mlir::PassExecutionAction::resolveTypeID(void)::id;
  v7[2] = a4;
  v7[3] = a5;
  v7[4] = a6;
  v7[0] = &unk_286867AC0;
  return mlir::MLIRContext::executeActionInternal(a1, a2, a3, v7);
}

uint64_t llvm::function_ref<void ()(void)>::callback_fn<mlir::detail::OpToOpPassAdaptor::run(mlir::Pass *,mlir::Operation *,mlir::AnalysisManager,BOOL,unsigned int)::$_1>(unsigned __int8 **a1)
{
  v2 = **a1;
  v3 = *(v2 + 1);
  {
    if (v3 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
LABEL_3:
      result = (*(***a1 + 56))(**a1);
      goto LABEL_8;
    }
  }

  else
  {
    mlir::Pass::printAsTextualPipeline();
    if (v3 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      goto LABEL_3;
    }
  }

  v5 = *a1[1];
  Context = mlir::Attribute::getContext(((*(v2 + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  if (mlir::MLIRContext::isMultithreadingEnabled(Context))
  {
    mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(v2, v5);
  }

  result = mlir::detail::OpToOpPassAdaptor::runOnOperationImpl(v2, v5);
LABEL_8:
  *a1[2] = (*(**a1 + 40) & 4) != 0;
  return result;
}

uint64_t *mlir::AnalysisManager::clear(uint64_t *this)
{
  v1 = this;
  v2 = *this;
  if (*(*this + 40))
  {
    v3 = *(v2 + 48);
    if (v3 > 4 * *(*this + 40) && v3 >= 0x41)
    {
      this = llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::shrink_and_clear(v2 + 32);
      goto LABEL_5;
    }

    if (v3)
    {
      v5 = *(v2 + 32);
      v6 = (v3 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v6)
      {
        v7 = v6 + 1;
        v8 = (v6 + 1) & 0x1FFFFFFFFFFFFFFELL;
        v9 = (v5 + 16 * v8);
        v10 = (v5 + 16);
        v11 = v8;
        do
        {
          *(v10 - 2) = -4096;
          *v10 = -4096;
          v10 += 4;
          v11 -= 2;
        }

        while (v11);
        if (v7 == v8)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v9 = *(v2 + 32);
      }

      v12 = (v5 + 16 * v3);
      do
      {
        *v9 = -4096;
        v9 += 2;
      }

      while (v9 != v12);
    }

LABEL_16:
    *(v2 + 40) = 0;
    v4 = *(v2 + 64);
    if (!v4)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

LABEL_5:
  v4 = *(v2 + 64);
  if (!v4)
  {
    goto LABEL_21;
  }

LABEL_17:
  v13 = *(v2 + 56) - 8;
  v14 = 16 * v4;
  do
  {
    this = *(v13 + v14);
    *(v13 + v14) = 0;
    if (this)
    {
      this = (*(*this + 8))(this);
    }

    v14 -= 16;
  }

  while (v14);
LABEL_21:
  *(v2 + 64) = 0;
  v15 = *v1;
  v16 = *(v15 + 2);
  if (!v16 && !*(v15 + 3))
  {
    return this;
  }

  v17 = *(v15 + 4);
  if (v17 <= 4 * v16 || v17 < 0x41)
  {
    if (!v17)
    {
LABEL_35:
      v15[1] = 0;
      return this;
    }

    v18 = (*v15 + 8);
    v19 = 16 * v17;
    while (1)
    {
      v20 = *(v18 - 1);
      if (v20 != -8192)
      {
        if (v20 == -4096)
        {
          goto LABEL_31;
        }

        this = std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](v18, 0);
      }

      *(v18 - 1) = -4096;
LABEL_31:
      v18 += 2;
      v19 -= 16;
      if (!v19)
      {
        goto LABEL_35;
      }
    }
  }

  return llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::shrink_and_clear(v15);
}

uint64_t llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::moveElementsForGrow(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v4 = result;
    v5 = *result;
    v6 = *result + 8 * v2;
    do
    {
      *a2 = 0;
      v7 = *v5;
      *v5 = 0;
      v8 = *a2;
      *a2 = v7;
      if (v8)
      {
        v9 = *(v8 + 40);
        if (v9)
        {
          v10 = *(v8 + 48);
          v11 = *(v8 + 40);
          if (v10 != v9)
          {
            do
            {
              v13 = *--v10;
              v12 = v13;
              *v10 = 0;
              if (v13)
              {
                (*(*v12 + 8))(v12);
              }
            }

            while (v10 != v9);
            v11 = *(v8 + 40);
          }

          *(v8 + 48) = v9;
          operator delete(v11);
        }

        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
        }

        result = MEMORY[0x259C63180](v8, 0x1032C402C5CA452);
      }

      ++a2;
      ++v5;
    }

    while (v5 != v6);
    v14 = *(v4 + 8);
    if (v14)
    {
      v15 = *v4;
      v16 = (*v4 + 8 * v14);
      do
      {
        v18 = *--v16;
        v17 = v18;
        *v16 = 0;
        if (v18)
        {
          v19 = *(v17 + 40);
          if (v19)
          {
            v20 = *(v17 + 48);
            v21 = *(v17 + 40);
            if (v20 != v19)
            {
              do
              {
                v23 = *--v20;
                v22 = v23;
                *v20 = 0;
                if (v23)
                {
                  (*(*v22 + 8))(v22);
                }
              }

              while (v20 != v19);
              v21 = *(v17 + 40);
            }

            *(v17 + 48) = v19;
            operator delete(v21);
          }

          if (*(v17 + 23) < 0)
          {
            operator delete(*v17);
          }

          result = MEMORY[0x259C63180](v17, 0x1032C402C5CA452);
        }
      }

      while (v16 != v15);
    }
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    v4 = *(a1 + 8);
    if (v4 >= v3)
    {
      if (v3)
      {
        mlir::OpPassManager::operator=();
      }

      v5 = *a1;
      v6 = (*a1 + 8 * v4);
      if (v6 != *a1)
      {
        do
        {
          v8 = *--v6;
          v7 = v8;
          *v6 = 0;
          if (v8)
          {
            v9 = *(v7 + 40);
            if (v9)
            {
              v10 = *(v7 + 48);
              v11 = *(v7 + 40);
              if (v10 != v9)
              {
                do
                {
                  v13 = *--v10;
                  v12 = v13;
                  *v10 = 0;
                  if (v13)
                  {
                    (*(*v12 + 8))(v12);
                  }
                }

                while (v10 != v9);
                v11 = *(v7 + 40);
              }

              *(v7 + 48) = v9;
              operator delete(v11);
            }

            if (*(v7 + 23) < 0)
            {
              operator delete(*v7);
            }

            MEMORY[0x259C63180](v7, 0x1032C402C5CA452);
          }
        }

        while (v6 != v5);
      }
    }

    else
    {
      if (*(a1 + 12) < v3)
      {
        llvm::SmallVectorImpl<mlir::OpPassManager>::clear(a1);
        llvm::SmallVectorBase<unsigned int>::mallocForGrow();
      }

      if (v4)
      {
        mlir::OpPassManager::operator=();
      }

      if (*(a2 + 8))
      {
        **a1 = 0;
        mlir::OpPassManager::operator=();
      }
    }

    *(a1 + 8) = v3;
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a2 != a2 + 16)
    {
      llvm::SmallVectorImpl<mlir::OpPassManager>::assignRemote(a1, a2);
      return a1;
    }

    v5 = *(a2 + 8);
    v6 = *(a1 + 8);
    if (v6 < v5)
    {
      if (*(a1 + 12) < v5)
      {
        llvm::SmallVectorImpl<mlir::OpPassManager>::clear(a1);
        llvm::SmallVectorBase<unsigned int>::mallocForGrow();
      }

      v11 = *a1;
      if (v6)
      {
        std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,mlir::OpPassManager *,mlir::OpPassManager *,mlir::OpPassManager *,0>(v4, &v4[8 * v6], *a1);
        v11 = *a1;
        v12 = *(a2 + 8);
        if (v6 != v12)
        {
LABEL_31:
          v21 = *a2 + 8 * v12;
          v22 = 8 * v6;
          v23 = &v11[8 * v6];
          v24 = (*a2 + v22);
          do
          {
            *v23 = 0;
            v25 = *v24;
            *v24 = 0;
            v26 = *v23;
            *v23 = v25;
            if (v26)
            {
              v27 = *(v26 + 40);
              if (v27)
              {
                v28 = *(v26 + 48);
                v29 = *(v26 + 40);
                if (v28 != v27)
                {
                  do
                  {
                    v31 = *--v28;
                    v30 = v31;
                    *v28 = 0;
                    if (v31)
                    {
                      (*(*v30 + 8))(v30);
                    }
                  }

                  while (v28 != v27);
                  v29 = *(v26 + 40);
                }

                *(v26 + 48) = v27;
                operator delete(v29);
              }

              if (*(v26 + 23) < 0)
              {
                operator delete(*v26);
              }

              MEMORY[0x259C63180](v26, 0x1032C402C5CA452);
            }

            v23 += 8;
            ++v24;
          }

          while (v24 != v21);
        }
      }

      else
      {
        v6 = 0;
        v12 = *(a2 + 8);
        if (*(a2 + 8))
        {
          goto LABEL_31;
        }
      }

LABEL_29:
      *(a1 + 8) = v5;
      llvm::SmallVectorImpl<mlir::OpPassManager>::clear(a2);
      return a1;
    }

    v7 = *a1;
    if (v5)
    {
      std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,mlir::OpPassManager *,mlir::OpPassManager *,mlir::OpPassManager *,0>(v4, &v4[8 * v5], v7);
      v9 = v8;
      v10 = (*a1 + 8 * *(a1 + 8));
      if (v10 == v8)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v9 = *a1;
      v10 = &v7[8 * v6];
      if (v10 == v7)
      {
        goto LABEL_29;
      }
    }

    do
    {
      v14 = *(v10 - 1);
      v10 -= 8;
      v13 = v14;
      *v10 = 0;
      if (v14)
      {
        v15 = *(v13 + 40);
        if (v15)
        {
          v16 = *(v13 + 48);
          v17 = *(v13 + 40);
          if (v16 != v15)
          {
            do
            {
              v19 = *--v16;
              v18 = v19;
              *v16 = 0;
              if (v19)
              {
                (*(*v18 + 8))(v18);
              }
            }

            while (v16 != v15);
            v17 = *(v13 + 40);
          }

          *(v13 + 48) = v15;
          operator delete(v17);
        }

        if (*(v13 + 23) < 0)
        {
          operator delete(*v13);
        }

        MEMORY[0x259C63180](v13, 0x1032C402C5CA452);
      }
    }

    while (v10 != v9);
    goto LABEL_29;
  }

  return a1;
}